asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800914c \n\
/* 0800914c */ LSLS R2, R0, 0x0 \n\
/* 0800914e */ LSRS R0, R0, 0x18 \n\
/* 08009150 */ LDR R1, =0x030010fc @ !PossiblePointer \n\
/* 08009152 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08009154 */ STR R0, [R1] \n\
/* 08009156 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");