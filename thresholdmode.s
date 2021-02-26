GPIOICR EQU 0x4002541C
GPIORIS EQU 0x40025414
RCGCADC EQU 0x400FE638
ADCACTSS	EQU 0x40038000
ADCEMUX EQU 0x40038014
ADCSSMUX3 EQU 0x400380A0
ADCSSCTL3 EQU 0x400380A4
ADCPC EQU 0x40038FC4
ADCPSSI EQU 0x40038028
ADCRIS EQU 0x40038004
ADCSSFIFO3 EQU 0x400380A8
ADCISC EQU 0x4003800C	
GPIO_PORTF_DATA		EQU 0x400253FC
TIMER2_CTL			EQU 0x4003200C	
GPIO_PORTA_DATA EQU 0x400043FC
		 AREA        sdata, DATA, READONLY
         THUMB
mm      DCB " mm "	
		DCB 0x04
NO		DCB "-> Normal Op."
		DCB 0x04
TH		DCB "-> Thre. Adj."
		DCB 0x04
BarThres DCB "*************"
		DCB 0x04
STAR	DCB "***"
		DCB 0x04
			AREA 	main, CODE, READONLY
			THUMB
			EXPORT 	ThresholdMode
			EXTERN	delay50m
			EXTERN CONVRT
			EXTERN lcdout
			EXTERN string
				
ThresholdMode	PROC
			PUSH {R4,R5,R6,R7,LR} 
			
			;in first entrance to isr, put some delay for proper pushing detection
			BL delay50m	
			BL delay50m	
			BL delay50m	
			BL delay50m	
			BL delay50m	

start		LDR R1,=GPIORIS
			LDR R0,[R1]
 			CMP R0,#0x10  ; SW1 pressed = ThresholdMode
			BNE.W reset  ; ADDED ".W" BECAUSE THE OFFSET WAS TOO LARGE FOR 16 BIT INSTRUCTION
			
		; WRITE -> THRESHOLD ADJUSTMENT OPERATION ON THE SCREEN	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; H=0
		BL		lcdout	
		MOV		R4,#0x42				; set Y address to 2
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
				
		LDR R5,=TH
		BL string
		; WRITE "*********" INSTEAD OF THE CAR REPRESENTATIVE BAR
			LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; H=0
		BL		lcdout	
		MOV		R4,#0x43				; set Y address to 3
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
				
		LDR R5,=BarThres
		BL string
					
		; WRITE "*** mm" INSTEAD OF THE LAST MEASUREMENT VALUE ON THE SCREEN
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; ensure H=0
		BL		lcdout	
		MOV		R4,#0x40				; set Y address to 1
		BL		lcdout
		MOV		R4,#0x9F				; set X address to 0
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
				
		LDR R5,=STAR
		BL string
		LDR R5,=mm
		BL string
		
			LDR R1 , =ADCPSSI
			LDR R0 , [ R1 ]
			ORR R0 , #0x08 ;start sampling
			STR R0 , [ R1 ]	
		
loop LDR R1, =ADCRIS ;check interrupt flag
	LDRB R0, [R1]
	BIC R0, #0xF7 ; clear all bits except for bit3
	CMP R0, #0x08
	BNE loop 
	LDR R1, =ADCSSFIFO3
	LDR R4,[R1] ; 12 digit value stored in R4 
	
	MOV R6,#1000
	MOV R7,#244 ; 244/1000 = 999 max mm /4095 max value represented by 12 bits
	MUL R4,R7
	UDIV R4,R6 ; R4 has DECIMAL (999 decimal for 999mm etc)

	MOV R11,R4 ; R11 has decimal 3 digit will be compared (threshold)
		
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; ensure H=0
		BL		lcdout	
		MOV		R4,#0x41				; set Y address to 1
		BL		lcdout
		MOV		R4,#0x9F				; set X address
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
	; print the value
	MOV R4,R11
	LDR R5,=0x20000500
	BL CONVRT
	LDR R5,=mm
	BL string	

	
	LDR R1, =ADCISC ;clear flag
	LDR R0, [R1]
	ORR R0, #0x08
	STRB R0, [R1]
	LDR R1,=GPIO_PORTF_DATA
noin	
	LDR R0,[R1]		;;Debouncing pressing
	BL delay50m	
	LDR R2,[R1]		
	CMP R0,R2		
	BNE noin		
	
	CMP R0,#0x01
	BNE start
noin2	
	LDR R0,[R1]		;;Debouncing releasing
	BL delay50m	
	LDR R2,[R1]		
	CMP R0,R2		
	BNE noin2
	CMP R0,#0x11
	BNE noin2
	B exit
	
			
reset			
			LDR R1 , =TIMER2_CTL
			LDR R2 , [ R1 ]
			ORR R2 , R2 , #0x03 ; s e t bi t 0 t o e n a bl e
			STR R2 , [ R1 ] ; and b i t 1 t o s t a l l on debug
			CPSIE I ; enable interrupts
			MOV R10,#1

exit	
			LDR R1,=GPIOICR
			LDR R0,[R1]
			ORR R0,R0,#0x11 ; clear flag for both
			STR R0,[R1]
			
		; WRITE -> NORMAL OPERATION ON THE SCREEN	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; ensure H=0
		BL		lcdout	
		MOV		R4,#0x42				; set Y address to 2
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
				
		LDR R5,=NO
		BL string	
				
			
		; SET CURSOR BACK TO MEASUREMENT VALUE PLACE
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; ensure H=0
		BL		lcdout	
		MOV		R4,#0x40				; set Y address to 0
		BL		lcdout
		MOV		R4,#0x9F				; set X address 
		BL		lcdout	
		; SET TO DATA TRANSFER MODE
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
			POP {R4,R5,R6,R7,LR} 
			BX LR 
			ENDP