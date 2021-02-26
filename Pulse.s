
; Uses Timer2A for full step motor

GPIO_PORTD_DATA EQU 0x400073FC	
; 16/32 Timer Registers
TIMER2_CFG			EQU 0x40032000
TIMER2_TAMR			EQU 0x40032004
TIMER2_CTL			EQU 0x4003200C
TIMER2_IMR			EQU 0x40032018
TIMER2_RIS			EQU 0x4003201C ; Timer Interrupt Status
TIMER2_ICR			EQU 0x40032024 ; Timer Interrupt Clear
TIMER2_TAILR		EQU 0x40032028 ; Timer interval
TIMER2_TAPR			EQU 0x40032038
TIMER2_TAR			EQU	0x40032048 ; Timer register
	
;GPIO Registers
GPIO_PORTF_DATA		EQU 0x400253FC ; Access to all bits
GPIO_PORTF_DIR 		EQU 0x40025400 ; Port Direction
GPIO_PORTF_AFSEL	EQU 0x40025420 ; Alt Function enable
GPIO_PORTF_DEN 		EQU 0x4002551C ; Digital Enable
GPIO_PORTF_AMSEL 	EQU 0x40025528 ; Analog enable
GPIO_PORTF_PCTL 	EQU 0x4002552C ; Alternate Functions
;System Registers
SYSCTL_RCGCGPIO 	EQU 0x400FE608 ; GPIO Gate Control
SYSCTL_RCGCTIMER 	EQU 0x400FE604 ; GPTM Gate Control

;---------------------------------------------------

;---------------------------------------------------
					
			AREA 	routines, CODE, READONLY
			THUMB
			EXPORT 	My_Timer0A_Handler
			EXTERN	delay50m	
;---------------------------------------------------					
My_Timer0A_Handler	PROC
	PUSH {R5}
	LDR R0,=GPIO_PORTD_DATA
	LDR R1,[R0]
	CMP R1,#0x00 ;inital state
	MOVEQ R2,#0x08
	STRBEQ R2,[R0] ;turns one step
	BEQ exit
	CMP R1,#0x08
	MOVEQ R2,#0x04 ;turns one step
	STRBEQ R2,[R0]
	BEQ exit
	CMP R1,#0x04
	MOVEQ R2,#0x02 ;turns one step
	STRBEQ R2,[R0]
	BEQ exit
	CMP R1,#0x02
	MOVEQ R2,#0x01 ;turns one step
	STRBEQ R2,[R0]
	BEQ exit
	CMP R1,#0x01
	MOVEQ R2,#0x08
	STRBEQ R2,[R0] ;turns one step
	BEQ exit
exit
		LDR R5,=TIMER2_ICR ; clear flag
		LDR R0,[R5]
		ORR R0,#0x01
		STRB R0,[R5]
		POP {R5}
		BX LR
	ENDP
;---------------------------------------------------