ORG 0000H
MOV 50H, #60H     
MOV 60H, #0AAH    

MOV R0, #50H      
MOV A, @R0        

MOV R1, A         
MOV A, @R1        
SJMP $            
END