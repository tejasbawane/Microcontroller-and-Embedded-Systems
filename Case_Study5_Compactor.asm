MOV R0, #40H       
MOV R1, #40H       

COMPACT_LOOP:
    
    MOV A, @R0      
    
    XRL A, #0FFH   
    JZ SKIP_DATA   
    
    MOV A, @R0
    MOV @R1, A
    INC R1          
    
SKIP_DATA:
    INC R0         
    
    CJNE R0, #60H, COMPACT_LOOP

FILL_ZERO:
   
    CJNE R1, #60H, CONTINUE_ZERO
    SJMP FINISH

CONTINUE_ZERO:
    MOV @R1, #00H   
    INC R1
    SJMP FILL_ZERO

FINISH:
    SJMP FINISH