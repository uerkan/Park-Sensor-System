GPIO_PORTF_DATA		EQU 0x400253FC
GPIOLOCK EQU  0x40025520
GPIOCOMMIT EQU 0x40025524
GPIOIS EQU 0x40025404
GPIOIEV EQU 0x4002540C	
GPIOIM EQU 0x40025410
NVIC_PRI7_R EQU 0xE000E41C ;23-21 bits for PORT F	
SYSCTL_RCGCSSI			EQU	0x400FE61C	; SSI Gate Control
SSI0_CR0				EQU	0x40008000
SSI0_CR1				EQU	0x40008004
SSI0_DR					EQU	0x40008008
SSI0_SR					EQU	0x4000800C
SSI0_CPSR				EQU	0x40008010
SSI0_CC					EQU	0x40008FC8
	
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
GPIO_PORTA_DATA EQU 0x400043FC
GPIO_PORTA_DIR EQU 0x40004400
GPIO_PORTA_AFSEL EQU 0x40004420
GPIO_PORTA_DEN EQU 0x4000451C
GPIO_PORTA_PCTL EQU 0x4000452C
GPIO_PORTA_AMSEL 	EQU 0x40004528	; Analog enable
	
GPIO_PORTE_DATA EQU 0x400243FC ; data a d d r e s s t o a l l pi n s
GPIO_PORTE_DIR EQU 0x40024400
GPIO_PORTE_AFSEL EQU 0x40024420
GPIO_PORTE_DEN EQU 0x4002451C
GPIO_PORTE_AMSEL EQU 0x40024528
GPIO_PORTB_DATA EQU 0x400053FC
GPIO_PORTB_DIR EQU 0x40005400
GPIO_PORTB_DEN EQU 0x4000551C
GPIO_PORTB_AFSEL EQU  0x40005420 ; Alt f u n c ti o n e n a bl e
GPIO_PORTB_AMSEL EQU 0x40005528 ; Analog e n a bl e
GPIO_PORTB_PCTL EQU 0x4000552C ; Choose a l t e r n a t e f u n c t i o n s
GPIO_PORTD_DATA EQU 0x400073FC
GPIO_PORTD_DIR EQU 0x40007400
GPIO_PORTD_DEN EQU 0x4000751C
GPIO_PORTD_AFSEL EQU  0x40007420 ; Alt f u n c ti o n e n a bl e
GPIO_PORTD_AMSEL EQU 0x40007528 ; Analog e n a bl e
GPIO_PORTD_PCTL EQU 0x4000752C ; Choose a l t e r n a t e f u n c t i o n s
TIMER1_CFG EQU  0x40031000
TIMER1_TAMR EQU 0x40031004
TIMER1_CTL	EQU 0x4003100C
TIMER1_TAILR	EQU 0x40031028
TIMER1_TAR	EQU	0x40031048
TIMER1_TAPR			EQU 0x40031038
TIMER1_RIS EQU 0x4003101C
TIMER1_ICR EQU 0x40031024

NVIC_EN0_INT19		EQU 0x00080000 ; Interrupt 19 enable
NVIC_EN0			EQU 0xE000E100 ; IRQ 0 to 31 Set Enable Register
NVIC_PRI5			EQU 0xE000E414 ; IRQ 20 to 23 Priority Register

;===================
; Sensor: PB6 TRIG, PB4 ECHO ** MOTOR IN1,2,3,4 = PD0-PD3 **  
; 3.3V			(VCC) connected to 3.3V
; Ground 		(GND) CONNECTED TO Grpund
; SSI0Fss  		(SCE) connected to PA3
; Reset         (RST) connected to PA7
; Data/Command  (D/C) connected to PA6
; SSI0Tx        (DN)  connected to PA5
; SSI0Clk       (SCL) connected to PA2
;===================
;NOTE; 
TIMER2_CFG			EQU 0x40032000
TIMER2_TAMR			EQU 0x40032004
TIMER2_CTL			EQU 0x4003200C
TIMER2_IMR			EQU 0x40032018
TIMER2_RIS			EQU 0x4003201C ; Timer Interrupt Status
TIMER2_ICR			EQU 0x40032024 ; Timer Interrupt Clear
TIMER2_TAILR		EQU 0x40032028 ; Timer interval
TIMER2_TAPR			EQU 0x40032038
TIMER2_TAR			EQU	0x40032048 ; Timer register

;===================
; Timer 0 registers
;===================

TIMER0_CFG			EQU 0x40030000
TIMER0_TAMR			EQU 0x40030004
TIMER0_CTL			EQU 0x4003000C
TIMER0_IMR			EQU 0x40030018
TIMER0_RIS			EQU 0x4003001C ; Timer Interrupt Status
TIMER0_ICR			EQU 0x40030024 ; Timer Interrupt Clear
TIMER0_TAILR		EQU 0x40030028 ; Timer interval
TIMER0_TAPR			EQU 0x40030038
TIMER0_TAR			EQU	0x40030048 ; Timer register
TIMER0_MATCHR		EQU	0x40030030	
	
PER EQU 0x00000FFFF ; 
MATCH EQU 0x000003E8; 62.5 us 
TOP EQU 0x000FFFFF
TEN EQU 0x00002710; ;10 ms  
FIVE EQU 0x00001388 ;5 ms 
SIX EQU 0x00001770;6 ms 
SEVEN EQU 0x00001B58;7 ms 
EIGHT EQU 0x00001F40;8 ms 
NINE EQU 0x00002328;9 ms 
ELEVEN EQU 0x00002AF8;11 ms 
TWELVE EQU 0x00002EE0;12 ms 
THIRTEEN EQU 0x000032C8;12 ms 
FOURTEEN EQU 0x000036B0;14 ms 
FIFTEEN EQU 0x00003A98	;15 ms 

;=======================
; GPIO Port F registers
;=======================
GPIO_PORTF_AFSEL	EQU 0x40025420 ; Alt Function enable
GPIO_PORTF_DEN 		EQU 0x4002551C ; Digital Enable
GPIO_PORTF_PCTL 	EQU 0x4002552C ; Alternate Functions
GPIO_PORTF_DIR 		EQU 0x40025400
GPIO_PORTF_AMSEL 	EQU 0x40025528 
GPIO_PORTF_PUR	EQU 0x40025510
;=================
;System Registers
;=================
SYSCTL_RCGCGPIO 	EQU 0x400FE608 ; GPIO Gate Control
SYSCTL_RCGCTIMER 	EQU 0x400FE604 ; GPTM Gate Control
		 AREA        sdata, DATA, READONLY
         THUMB
MSG 	DCB  "MEAS:"
		DCB 0x04
MSG1    DCB "THRE:"	
		DCB 0x04
mm      DCB " mm "	
		DCB 0x04
NO		DCB "-> Normal Op."
		DCB 0x04
BO 		DCB "-> Brakes On."		
		DCB 0x04
CAR		DCB "CAR"
		DCB 0x04
		area a_text, readonly, code
        thumb
		extern InChar
        export __main
		EXTERN OutStr
		EXTERN delay50m
		EXTERN CONVRT
		EXTERN lcdout
		EXTERN string
		EXTERN OutChar

	
pwm_init proc

			PUSH {LR}
			LDR R1 , =RCGCADC
			LDR R0 , [ R1 ]
			ORR R0 , #0x01 ;enable clock for adc0
			STR R0 , [ R1 ]	
			NOP
			NOP
			NOP
			LDR R1, =SYSCTL_RCGCGPIO ; start GPIO clock
			LDR R0, [R1]
			ORR R0, R0, #0x3B ; set bits for port D	, E	, B, F, A
			STR R0, [R1]
			NOP ; allow clock to settle
			NOP
			NOP
	;===================
	; Configure PORTE.3 for potentiometer
	;===================
			LDR R1 , =GPIO_PORTE_DIR ; config of port E starts
			LDR R0 , [ R1 ]
			ORR R0 , #0x00 ;PE3 input
			STR R0 , [ R1 ]
			LDR R1 , =GPIO_PORTE_AFSEL 
			LDR R0 , [ R1 ]
			ORR R0 , #0x08 ;PE3 alternate function
			STR R0 , [ R1 ]
			LDR R1 , =GPIO_PORTE_AMSEL
			LDR R0 , [ R1 ]
			ORR R0 , #0x08 ;PE3 analog
			STR R0 , [ R1 ] ; config of port E ends
	;===================
	; Configure ADC0
	;===================		
			LDR R1 , =ADCACTSS
			LDR R0 , [ R1 ]
			BIC R0 , #0x08 ;disable sequencer3
			STR R0 , [ R1 ]		
			LDR R1 , =ADCEMUX
			LDR R0 , [ R1 ]
			BIC R0 , #0xF000 ;15:12 bits cleared
			STR R0 , [ R1 ]		
			LDR R1 , =ADCSSCTL3
			LDR R0 , [ R1 ]
			ORR R0 , #0x06 ;IEN0 and END0 set
			STR R0 , [ R1 ]	
			LDR R1 , =ADCPC
			LDR R0 , [ R1 ]
			ORR R0 , #0x01 ;125 ksps sampling rate
			STR R0 , [ R1 ]			
			LDR R1 , =ADCACTSS
			LDR R0 , [ R1 ]
			ORR R0 , #0x08 ;enable sequencer3
			STR R0 , [ R1 ]	
	;===================
	; Configure PORTF for SW1 and SW2
	;===================			
			LDR R1, = GPIOLOCK
			MOV32 R0,#0x4C4F434B ; unlock
			STR R0,[R1]
			LDR R1, = GPIOCOMMIT
			LDR R0, [R1]
			ORR R0, R0, #0x01 
			STR R0, [R1]
			LDR R1, =GPIO_PORTF_AMSEL ; disable analog
			MOV R0, #0
			STR R0, [R1]
			LDR R1, =GPIO_PORTF_DEN ; enable port digital
			LDR R0, [R1]
			ORR R0, R0, #0x11
			STR R0, [R1]
			LDR R1,=GPIO_PORTF_PUR
			MOV R0,#0x10 ; pull up resistor for pin 4
			STRB R0,[R1]
			LDR R1, =GPIOIS ;
			LDR R0, [R1]
			BIC R0, R0, #0xFF ; edge sensitive
			STR R0, [R1]
			LDR R1, =GPIOIEV ;
			LDR R0, [R1]
			BIC R0, R0, #0xFF ; rising edge detection
			STR R0, [R1]
			LDR R1, =GPIOIM; 
			LDR R0, [R1]
			ORR R0, R0, #0x11 ; interrupt from both pf0 and pf4 is enabled
			STR R0, [R1]
			LDR R1, =NVIC_PRI7_R; enable port digital
			LDR R0, [R1]
			AND R0, R0, #0xFF00FFFF ; clear interrupt 30 priority
			ORR R0, R0, #0x00400000 ; set interrupt 30 priority to 2
			STR R0, [R1]
			LDR R1, =NVIC_EN0
			MOVT R2, #0x4000 ; set bit 30 to enable interrupt 30
			STR R2, [R1]
			
	;===================
	; Configure PORT  A for SSI
	;===================	
		LDR		R1,=GPIO_PORTA_DIR		; make PA2,3,5,6,7 output
		MOV 	R0, #0xEC				; and make PA4 input
		STR		R0,[R1]
		LDR		R1,=GPIO_PORTA_AFSEL	; enable alt funct on PA2,3,4,5
		MOV 	R0, #0x3C				;
		STR		R0,[R1]
		LDR		R1,=GPIO_PORTA_DEN		; enable digital I/O at PA2,3,4,5,6,7
		MOV 	R0, #0xFC				;
		STR		R0,[R1]					
		LDR		R1,=GPIO_PORTA_PCTL 	; configure PA2,3,4,5 as SSI
		LDR 	R0, =0x00222200			; set 2,3,4 and 5 nibble		
		STR		R0,[R1]
		LDR		R1,=GPIO_PORTA_AMSEL	; disable analog functionality
		LDR		R0, [R1]
		BIC 	R0, #0xFC				;
		STR		R0,[R1]
		
		LDR 	R1,=SYSCTL_RCGCSSI		; start SSI clock
		LDR 	R0,[R1]                   
		ORR 	R0, #0x01				; set bit 0 for SSI0
		STR 	R0,[R1]    
		NOP
		NOP
		NOP
		NOP

		LDR		R1,=SSI0_CR1			; disable SSI during setup and also set to Master
		MOV		R0, #0x00				
		STR		R0,[R1]
		
		LDR		R1,=SSI0_CC				; use 16MHz	clock PIOSC	
		MOV		R0,#0x05				
		STR		R0,[R1]
		LDR		R1,=SSI0_CR0			; set SCR bits to 0x01
		LDR		R0,[R1]
		ORR		R0, #0x0100				;
		STR		R0,[R1]
		LDR		R1,=SSI0_CPSR			; set CPSDVSR to 0x04
		MOV 	R0, #0x04				;
		STR		R0,[R1]
		LDR		R1,=SSI0_CR0			; capture on first clock edge, steady state low
		LDR		R0,[R1]					; Freescale frame format
		BIC		R0, #0x3F				; clear bits 5:4 	
		ORR		R0, #0x07				; choose 8-bit data 
		STR		R0,[R1]
		LDR		R1,=SSI0_CR1			; enable SSI
		LDR		R0,[R1]
		ORR 	R0, #0x02				
		STR		R0,[R1]

		LDR		R1,=GPIO_PORTA_DATA	
		LDR		R0, [R1]
		BIC 	R0, #0x80					; clear reset	
		STR		R0,[R1]
		
		BL delay50m
		
		LDR		R1,=GPIO_PORTA_DATA		; 
		ORR 	R0, #0x80				; set reset
		STR		R0,[R1]					;
	;===================

	; Configure PORT  D for motor
	;===================				
			
		LDR R1, =GPIO_PORTD_DIR ; set direction of Pd0-pd3
		LDR R0, [R1]
		ORR R0, R0, #0x0F ; Pd0-Pd3 are outputs. 
		STR R0, [R1]
			; No alternate function
		LDR R1 , =GPIO_PORTD_AFSEL
		LDR R0 , [ R1 ]
		BIC R0 , R0 , #0x0F
		STR R0 , [ R1 ]
; clear AMSEL to disable analog
		LDR R1 , =GPIO_PORTD_AMSEL
		MOV R0 , #0
		STR R0 , [ R1 ]
		LDR R1, =GPIO_PORTD_DEN ; enable port digital
		LDR R0, [R1]
		ORR R0, R0, #0x0F
		STR R0, [R1]
;===================

; Configure PORTB.6 and Portb4 for sensor
;===================	
		LDR R1, =GPIO_PORTB_DIR ; set direction of Pb4 and pb6
		LDR R0, [R1]
		ORR R0, R0, #0x00 ; PB4 and PB6 is input default. 
		STR R0, [R1]
			; Set bit 6 for alternate function on PB4 and pb6
		LDR R1 , =GPIO_PORTB_AFSEL
		LDR R0 , [ R1 ]
		ORR R0 , R0 , #0x50
		STR R0 , [ R1 ]
; Set bits of PCTL to 7 to enable TIMER1A on PB4 and TIMER0A on PB6
		LDR R1 , =GPIO_PORTB_PCTL
		LDR R0 , [ R1 ]
		ORR R0 , R0 , #0x00070000
		ORR R0 , R0 , #0x07000000
		STR R0 , [ R1 ]
; clear AMSEL to disable analog
		LDR R1 , =GPIO_PORTB_AMSEL
		MOV R0 , #0
		STR R0 , [ R1 ]
		LDR R1, =GPIO_PORTB_DEN ; enable port digital
		LDR R0, [R1]
		ORR R0, R0, #0x50
		STR R0, [R1]
	;===================

	; TIMERS (Timer0 for pwm, Timer1 for edge time, Timer2 for periodic modes)
	;===================	
		BL delay50m ;wait 100msec
		
		LDR R1, =SYSCTL_RCGCTIMER ; Start Timer2, timer1  timer0
		LDR R2, [R1]
		ORR R2, R2, #0x07
		STR R2, [R1]
		NOP ; allow clock to settle
		NOP
		NOP
		LDR R1, =TIMER1_CTL ; disable timer during setup
		LDR R2, [R1]
		BIC R2, R2, #0x01
		STR R2, [R1]
		LDR R1, =TIMER1_CFG ; set 16 bit mode
		MOV R2, #0x04
		STR R2, [R1]
		LDR R1, =TIMER1_TAMR
		MOV R2, #0x07 ; set to edge time, count down,capture
		STR R2, [R1]
		LDR R1, =TIMER1_CTL
		LDR R2, [R1]
		ORR R2, R2, #0x0C ; detect both edges
		STR R2, [R1] 
           LDR R1, =TIMER1_TAPR
           MOV R2, #15 ; divide clock by 16 to extend upper limit
           STR R2, [R1] 
		LDR R1, =TIMER1_TAILR 
		LDR R2, =TOP
		STR R2, [R1]

			LDR R1, =TIMER0_CTL ; disable timer during setup
			LDR R2, [R1]
			BIC R2, R2, #0x01
			STR R2, [R1]
			LDR R1, =TIMER0_CFG ; set 16 bit mode
			MOV R2, #0x04
			STR R2, [R1]
			LDR R1, =TIMER0_TAMR
			MOV R2, #0x0A ; pwm, periodic timer, count down
			STR R2, [R1]
;			LDR R1, =TIMER0_TAPR
;           MOV R2, #15 ; divide clock by 16 
 ;          STR R2, [R1] 
			LDR R1, =TIMER0_TAILR ; start from per, input is 0
			LDR R2, =PER
			STR R2, [R1]
			LDR R1, =TIMER0_MATCHR ; make the input 1 after match (inverted)
			LDR R2, =MATCH
			STR R2, [R1]
			
			LDR R1, =TIMER2_CTL ; disable timer during setup
			LDR R2, [R1]
			BIC R2, R2, #0x01
			STR R2, [R1]
			LDR R1, =TIMER2_CFG ; set 16 bit mode
			MOV R2, #0x04
			STR R2, [R1]
			LDR R1, =TIMER2_TAMR
			MOV R2, #0x02 ; set to periodic, count down
			STR R2, [R1]
			LDR R1, =TIMER2_TAILR ; initialize match clocks
			LDR R2, =EIGHT
			STR R2, [R1]
			LDR R1, =TIMER2_TAPR
			MOV R2, #15 ; divide clock by 16 to
			STR R2, [R1] 
			LDR R1, =TIMER2_IMR ; enable timeout interrupt
			MOV R2, #0x01
			STR R2, [R1]
			LDR R1, =NVIC_PRI5
			LDR R2, [R1]
			AND R2, R2, #0x00FFFFFF ; clear interrupt 23 priority
			ORR R2, R2, #0x60000000 ; set interrupt 23 priority to 3
			STR R2, [R1]
			LDR R1, =NVIC_EN0
			MOVT R2, #0x0080 ; set bit 23 to enable interrupt 23
			STR R2, [R1]

			LDR R1 , =TIMER2_CTL
			LDR R2 , [ R1 ]
			ORR R2 , R2 , #0x03 ; s e t bi t 0 t o e n a bl e
			STR R2 , [ R1 ] ; and b i t 1 t o s t a l l on debug
	
			LDR R1, =TIMER0_CTL ; ENABLE timer 
			LDR R2, [R1]
			ORR R2, R2, #0x43
			STR R2, [R1]
			
; Enable timer
		LDR R1, =TIMER1_CTL
		LDR R2, [R1]
		ORR R2, R2, #0x03 ; set bit0 to enable
		STR R2, [R1] ; and bit 1 to stall on debug, bit 2-3 to detect both edges

			POP {LR}

		bx lr
		endp
		LTORG	;to prevent too distant error
		
__main proc
		BL pwm_init
		CPSIE I ; e n a bl e i n t e r r u p t s
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]

		MOV		R4,#0x21
		BL		lcdout	
		;set contrast
		MOV		R4,#0xB8
		BL		lcdout
		;set temp coefficient
		MOV		R4,#0x04
		BL		lcdout
		; voltage bias 0x13 
		MOV		R4,#0x13
		BL		lcdout
		;change H=0
		MOV		R4,#0x20
		BL		lcdout
		;set control mode to normal
		MOV		R4,#0x0C
		BL		lcdout
		
		MOV		R4,#0x20				; H=0
		BL		lcdout	
		MOV		R4,#0x40				; set Y address to 0
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	

		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
		MOV		R0,#504					; 504 bytes in full image
		MOV		R4,#0x00				; clear by writing 0x00
clearscreen		
		BL		lcdout
		SUBS	R0,#1
		BNE		clearscreen



		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; H=0
		BL		lcdout	
		MOV		R4,#0x40				; set Y address to 0
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	

		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
				
		LDR R5,=MSG
		BL string
		
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; H=0
		BL		lcdout	
		MOV		R4,#0x41				; set Y address to 1
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout	
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
		
		
		LDR R5,=MSG1
		BL string
		
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
		
		
wr_meas		
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
	
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
		
		
		
start	
		LDR R8,=GPIO_PORTB_DATA	
		
		LDR R5,=TIMER1_ICR ; clear flag
		LDR R0,[R5]
		ORR R0,#0x04
		STRB R0,[R5]
		MOV R10,#0 ; Reset Control Register
		
		LDR R1,=TIMER1_RIS
no		LDRB R2, [R1]
		CMP R2,#0x04 ;if CAERIS set
		BNE no
		LDR R9,[R8] ; get input ports data
		BIC R9,#0xFFFFFFEF
		CMP R9,#0x10 ; if positive edge save value of TAR to R4
		BNE start
		LDR R6,=TIMER1_TAR ;Get current TAR value
		LDR R4,[R6]
		
		
		LDR R5,=TIMER1_ICR ; clear flag
		LDR R0,[R5]
		ORR R0,#0x04
		STRB R0,[R5]
		
		
		LDR R1,=TIMER1_RIS
no2		LDRB R2, [R1]
		CMP R2,#0x04 ;;if CAERIS set
		BNE no2
		LDR R6,=TIMER1_TAR
		LDR R3,[R6] ;get TAR value
		CMP R3,R4
		BHI start
		SUB R9,R4,R3 ;This tar value represents time captured on negative edge, Therefore subtract from previous pos edge to get pulse width on R9.


		;multiply with 62.5 (PIOSC). Divide by 1000 to convert it to us. Multiply by 0.34/2 to get the distance in milimeters. Save it to R4. 
		
		
		MOV R8,#10000
		MOV R2,#17
		MOV R1,#625 ; Approximately 62.5
		LDR R5,=0x20000500
		MUL R4,R1,R9  ; in the order of nanosec
		MUL R4,R2 
		UDIV R4,R8
		MOV R8,#100
		UDIV R4,R8 ;Milimeters
		MOV32 R5,#0x3E7 ; 999mm limit
		CMP R4,R5
		BHI start ; >999mm

		
		LDR R5,=0x20000500
		BL CONVRT
		LDR R5,=mm
		BL string
		
		CMP R4,R11 ; check threshold
		BLO.W brake ;".W" added to make offset encodable in 32-bit Thumb branch
		
		SUB R3,R4,R11 ; Current measurement - Threshold
		MOV R1,#100
		UDIV R12,R1 ; first digit of previous measurement
		UDIV R2,R4,R1 ; first digit of current measurement
		CMP R2,R12
		BEQ bar
		; if 100mm interval exceeded with respect to previous measurement, change the speed of motor. Closer = slower.
A		;Notice that R3 = Current measurement - Threshold
		LDR R1, =TIMER2_TAILR 
		CMP R3,#100
		LDRLO R2, =FIFTEEN ;15ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#200
		LDRLO R2, =FOURTEEN ;14ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#300
		LDRLO R2, =THIRTEEN ;13ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#400		
		LDRLO R2, =TWELVE ;12ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#500		
		LDRLO R2, =ELEVEN ;11ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#600
		LDRLO R2, =TEN ;10ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#700
		LDRLO R2, =NINE ;9ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#800
		LDRLO R2, =EIGHT ;8ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#900
		LDRLO R2, =SEVEN ;7ms period
		STRLO R2, [R1]
		BLO bar
		CMP R3,#1000
		LDRLO R2, =SIX ;6ms period
		STRLO R2, [R1]			
		
bar		MOV R12,R4
		;OUTPUT DISTANCE BAR ON THE SCREEN USING THE CURRENT MEASUREMENT AND THRESHOLD
		MOV R3,R11
		MOV R6,R4
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				;H=0
		BL		lcdout	
		MOV		R4,#0x43				; set Y address to 3
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout
		
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
		
		LDR R5,=CAR
		BL string
		
		MOV R0,#100
		MOV R1,#1
		UDIV R3,R0 ; 1st digit of Threshold Value 
		
loop3
		CMP R3,#0
		BEQ ex1
		MOV R4,#0x2D ; "-" character
		BL OutChar
		SUB R3,R1
		B loop3
ex1		
		UDIV R3,R11,R0 ; 1st digit of Threshold Value 
		UDIV R7,R6,R0
		SUB R7,R3 ; Current Measurement/100 - Threshold/100
		CMP R7,#0
		BEQ loop4
		MOV R4,#0x58 ; "X" character
		BL OutChar

loop4
		CMP R7,#1
		BLS ex2
		MOV R4,#0x2D ; "-" character
		BL OutChar
		SUB R7,R1
		B loop4
ex2				
		MOV R2,#10
		UDIV R6,R0 ; Current measurement/100 (first digit)
		SUB R6,R2,R6 ; 10- current measurement's first digit
loop5
		CMP R6,#0
		BEQ ex3
		MOV R4,#0x49 ; "I" character
		BL OutChar
		SUB R6,R1
		B loop5
ex3			

		B wr_meas
brake 	
		MOV R3,R11 
		LDR R1, =TIMER2_CTL ; disable timer during setup
		LDR R2, [R1]
		BIC R2, R2, #0x01
		STR R2, [R1]
		
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
				
		LDR R5,=BO
		BL string	
		
				
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 low for Command
		LDR		R0,[R1]
		BIC 	R0, #0x40				;
		STR		R0,[R1]
		MOV		R4,#0x20				; ensure H=0
		BL		lcdout	
		MOV		R4,#0x43				; set Y address to 3
		BL		lcdout
		MOV		R4,#0x80				; set X address to 0
		BL		lcdout
		
		LDR		R1,=GPIO_PORTA_DATA		; set PA6 high for Data
		LDR		R0,[R1]
		ORR		R0,#0x40
		STR		R0,[R1]
		
		LDR R5,=CAR
		BL string
		MOV R0,#100
		MOV R1,#1
		UDIV R3,R0
		MOV R0,#10
		SUB R0,R3
loop	
		CMP R3,#0
		BEQ loop2
		MOV R4,#0x2D ; "-" character
		BL OutChar
		SUB R3,R1
		B loop
		
loop2	CMP R0,#0
		BEQ check_reset
		MOV R4,#0x49 ; "I" character
		BL OutChar
		SUB R0,R1
		B loop2
		
		
check_reset	
		CMP R10,#1 ; Reset Control Register
		BEQ start
		B check_reset
		
at	b at
	
    endp
    end