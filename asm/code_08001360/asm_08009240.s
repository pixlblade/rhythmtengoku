asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08009240 \n\
/* 08009240 */ PUSH {LR} \n\
/* 08009242 */ LDR R1, =0x03001108 @ !PossiblePointer \n\
/* 08009244 */ LDR R0, =0x0300110c @ !PossiblePointer \n\
/* 08009246 */ LDR R0, [R0] \n\
/* 08009248 */ LDR R1, [R1] \n\
/* 0800924a */ BL func_0804eaf0 \n\
/* 0800924e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009250 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08009252 */ BL func_080091c4 \n\
/* 08009256 */ BL func_0800917c \n\
/* 0800925a */ POP {R0} \n\
/* 0800925c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");