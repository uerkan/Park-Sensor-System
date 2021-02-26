	AREA   main, READONLY, CODE
	THUMB
	EXPORT delay50m
Num EQU 0x061A80 ; DELAY 100ms
		
delay50m PROC

		PUSH {R1}
		PUSH {R2}
		MOV R1,#0x00
		MOV32 R2,#Num
loop	CMP R1,R2		;16MHz CLOCK FREQUENCY. LOOP TAKES 4 CYCLES
		ADD R1,R1,#1       ;16000000/4=4000000 loop for 1 sec delay
		BNE loop		;
		POP {R2}
		POP {R1}
		BX LR
		ENDP
		ALIGN 
		END ; 0x61A80 for 100ms
