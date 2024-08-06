
_manual:

;MyProject.c,11 :: 		void manual(){
;MyProject.c,12 :: 		while(man == 1)
L_manual0:
	BTFSS      PORTA+0, 1
	GOTO       L_manual1
;MyProject.c,14 :: 		portb = 0;
	CLRF       PORTB+0
;MyProject.c,15 :: 		if(porta.B2 == 1){
	BTFSS      PORTA+0, 2
	GOTO       L_manual2
;MyProject.c,16 :: 		if(red_w == 1)
	BTFSS      PORTD+0, 0
	GOTO       L_manual3
;MyProject.c,18 :: 		yellow_s=1;
	BSF        PORTD+0, 4
;MyProject.c,19 :: 		green_s=0;
	BCF        PORTD+0, 5
;MyProject.c,20 :: 		for(i = 3; i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_manual4:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual32
	MOVLW      1
	SUBWF      _i+0, 0
L__manual32:
	BTFSS      STATUS+0, 0
	GOTO       L_manual5
;MyProject.c,21 :: 		portb = arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,22 :: 		delay_ms(wait);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual7:
	DECFSZ     R13+0, 1
	GOTO       L_manual7
	DECFSZ     R12+0, 1
	GOTO       L_manual7
	DECFSZ     R11+0, 1
	GOTO       L_manual7
	NOP
	NOP
;MyProject.c,20 :: 		for(i = 3; i>=1;i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,23 :: 		}
	GOTO       L_manual4
L_manual5:
;MyProject.c,24 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,25 :: 		yellow_s = 0;
	BCF        PORTD+0, 4
;MyProject.c,26 :: 		red_s=1;
	BSF        PORTD+0, 3
;MyProject.c,27 :: 		red_w = 0;
	BCF        PORTD+0, 0
;MyProject.c,28 :: 		green_w = 1;
	BSF        PORTD+0, 2
;MyProject.c,29 :: 		}
	GOTO       L_manual8
L_manual3:
;MyProject.c,32 :: 		yellow_w=1;
	BSF        PORTD+0, 1
;MyProject.c,33 :: 		green_w=0;
	BCF        PORTD+0, 2
;MyProject.c,34 :: 		for(i = 3; i>=1;i--){
	MOVLW      3
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_manual9:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__manual33
	MOVLW      1
	SUBWF      _i+0, 0
L__manual33:
	BTFSS      STATUS+0, 0
	GOTO       L_manual10
;MyProject.c,35 :: 		portb = arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,36 :: 		delay_ms(wait);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_manual12:
	DECFSZ     R13+0, 1
	GOTO       L_manual12
	DECFSZ     R12+0, 1
	GOTO       L_manual12
	DECFSZ     R11+0, 1
	GOTO       L_manual12
	NOP
	NOP
;MyProject.c,34 :: 		for(i = 3; i>=1;i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,37 :: 		}
	GOTO       L_manual9
L_manual10:
;MyProject.c,38 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,39 :: 		yellow_w= 0;
	BCF        PORTD+0, 1
;MyProject.c,40 :: 		red_w=1;
	BSF        PORTD+0, 0
;MyProject.c,41 :: 		red_s = 0;
	BCF        PORTD+0, 3
;MyProject.c,42 :: 		green_s = 1;
	BSF        PORTD+0, 5
;MyProject.c,43 :: 		}
L_manual8:
;MyProject.c,44 :: 		while(porta.B2 == 1);
L_manual13:
	BTFSS      PORTA+0, 2
	GOTO       L_manual14
	GOTO       L_manual13
L_manual14:
;MyProject.c,45 :: 		}
L_manual2:
;MyProject.c,46 :: 		}
	GOTO       L_manual0
L_manual1:
;MyProject.c,47 :: 		return;
;MyProject.c,48 :: 		}
L_end_manual:
	RETURN
; end of _manual

_south_red:

;MyProject.c,49 :: 		void south_red(){
;MyProject.c,50 :: 		for( i = 23; i >=1;i-- ){
	MOVLW      23
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_south_red15:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__south_red35
	MOVLW      1
	SUBWF      _i+0, 0
L__south_red35:
	BTFSS      STATUS+0, 0
	GOTO       L_south_red16
;MyProject.c,52 :: 		red_s=1;
	BSF        PORTD+0, 3
;MyProject.c,53 :: 		yellow_s=0;
	BCF        PORTD+0, 4
;MyProject.c,54 :: 		green_s = 0;
	BCF        PORTD+0, 5
;MyProject.c,55 :: 		red_w = 0;
	BCF        PORTD+0, 0
;MyProject.c,56 :: 		yellow_w = 0;
	BCF        PORTD+0, 1
;MyProject.c,57 :: 		green_w = 1;
	BSF        PORTD+0, 2
;MyProject.c,58 :: 		if( i <= 3)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__south_red36
	MOVF       _i+0, 0
	SUBLW      3
L__south_red36:
	BTFSS      STATUS+0, 0
	GOTO       L_south_red18
;MyProject.c,60 :: 		red_s=1;
	BSF        PORTD+0, 3
;MyProject.c,61 :: 		yellow_s=0;
	BCF        PORTD+0, 4
;MyProject.c,62 :: 		green_s = 0;
	BCF        PORTD+0, 5
;MyProject.c,63 :: 		red_w = 0;
	BCF        PORTD+0, 0
;MyProject.c,64 :: 		yellow_w = 1;
	BSF        PORTD+0, 1
;MyProject.c,65 :: 		green_w = 0;
	BCF        PORTD+0, 2
;MyProject.c,66 :: 		}
L_south_red18:
;MyProject.c,67 :: 		if(man == 1)
	BTFSS      PORTA+0, 1
	GOTO       L_south_red19
;MyProject.c,69 :: 		manual();
	CALL       _manual+0
;MyProject.c,70 :: 		return;
	GOTO       L_end_south_red
;MyProject.c,71 :: 		}
L_south_red19:
;MyProject.c,72 :: 		portb=arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,73 :: 		delay_ms(wait);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_south_red20:
	DECFSZ     R13+0, 1
	GOTO       L_south_red20
	DECFSZ     R12+0, 1
	GOTO       L_south_red20
	DECFSZ     R11+0, 1
	GOTO       L_south_red20
	NOP
	NOP
;MyProject.c,50 :: 		for( i = 23; i >=1;i-- ){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,75 :: 		}
	GOTO       L_south_red15
L_south_red16:
;MyProject.c,76 :: 		}
L_end_south_red:
	RETURN
; end of _south_red

_west_red:

;MyProject.c,77 :: 		void west_red(){
;MyProject.c,78 :: 		for(i = 15; i >= 1;i--){
	MOVLW      15
	MOVWF      _i+0
	MOVLW      0
	MOVWF      _i+1
L_west_red21:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__west_red38
	MOVLW      1
	SUBWF      _i+0, 0
L__west_red38:
	BTFSS      STATUS+0, 0
	GOTO       L_west_red22
;MyProject.c,80 :: 		red_s=0;
	BCF        PORTD+0, 3
;MyProject.c,81 :: 		yellow_s=0;
	BCF        PORTD+0, 4
;MyProject.c,82 :: 		green_s = 1;
	BSF        PORTD+0, 5
;MyProject.c,83 :: 		red_w = 1;
	BSF        PORTD+0, 0
;MyProject.c,84 :: 		yellow_w = 0;
	BCF        PORTD+0, 1
;MyProject.c,85 :: 		green_w = 0;
	BCF        PORTD+0, 2
;MyProject.c,86 :: 		if( i <= 3)
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__west_red39
	MOVF       _i+0, 0
	SUBLW      3
L__west_red39:
	BTFSS      STATUS+0, 0
	GOTO       L_west_red24
;MyProject.c,88 :: 		red_s=0;
	BCF        PORTD+0, 3
;MyProject.c,89 :: 		yellow_s=1;
	BSF        PORTD+0, 4
;MyProject.c,90 :: 		green_s = 0;
	BCF        PORTD+0, 5
;MyProject.c,91 :: 		red_w = 1;
	BSF        PORTD+0, 0
;MyProject.c,92 :: 		yellow_w = 0;
	BCF        PORTD+0, 1
;MyProject.c,93 :: 		green_w = 0;
	BCF        PORTD+0, 2
;MyProject.c,94 :: 		}
L_west_red24:
;MyProject.c,95 :: 		if(man == 1)
	BTFSS      PORTA+0, 1
	GOTO       L_west_red25
;MyProject.c,97 :: 		manual();
	CALL       _manual+0
;MyProject.c,98 :: 		return;
	GOTO       L_end_west_red
;MyProject.c,99 :: 		}
L_west_red25:
;MyProject.c,100 :: 		portb=arr[i];
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      _arr+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;MyProject.c,101 :: 		delay_ms(wait);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_west_red26:
	DECFSZ     R13+0, 1
	GOTO       L_west_red26
	DECFSZ     R12+0, 1
	GOTO       L_west_red26
	DECFSZ     R11+0, 1
	GOTO       L_west_red26
	NOP
	NOP
;MyProject.c,78 :: 		for(i = 15; i >= 1;i--){
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;MyProject.c,102 :: 		}
	GOTO       L_west_red21
L_west_red22:
;MyProject.c,103 :: 		}
L_end_west_red:
	RETURN
; end of _west_red

_main:

;MyProject.c,104 :: 		void main() {
;MyProject.c,105 :: 		adcon1=7;
	MOVLW      7
	MOVWF      ADCON1+0
;MyProject.c,106 :: 		trisa=0;
	CLRF       TRISA+0
;MyProject.c,107 :: 		trisb=0;
	CLRF       TRISB+0
;MyProject.c,108 :: 		trisc= 0;
	CLRF       TRISC+0
;MyProject.c,109 :: 		trisd=0;
	CLRF       TRISD+0
;MyProject.c,110 :: 		porta=0;
	CLRF       PORTA+0
;MyProject.c,111 :: 		portb=0;
	CLRF       PORTB+0
;MyProject.c,112 :: 		portc=0;
	CLRF       PORTC+0
;MyProject.c,113 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,114 :: 		while(porta.B0 == 0);
L_main27:
	BTFSC      PORTA+0, 0
	GOTO       L_main28
	GOTO       L_main27
L_main28:
;MyProject.c,115 :: 		portc= 0xff;
	MOVLW      255
	MOVWF      PORTC+0
;MyProject.c,116 :: 		while(1){
L_main29:
;MyProject.c,117 :: 		west_red();
	CALL       _west_red+0
;MyProject.c,118 :: 		south_red();
	CALL       _south_red+0
;MyProject.c,119 :: 		}
	GOTO       L_main29
;MyProject.c,120 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
