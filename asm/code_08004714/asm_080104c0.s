asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_080104c0 \n\
/* 080104c0 */ PUSH {LR} \n\
/* 080104c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080104c4 */ BL func_0800c604 \n\
/* 080104c8 */ BL func_0800c3b8 \n\
/* 080104cc */ LSLS R0, R0, 0x10 \n\
/* 080104ce */ LSRS R0, R0, 0x10 \n\
/* 080104d0 */ LDR R1, =D_089cd1a4 \n\
/* 080104d2 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 080104d4 */ LSLS R2, R2, 0x6 \n\
/* 080104d6 */ BL func_08002ee0 \n\
/* 080104da */ LDR R1, =(func_08010494 + 1) \n\
/* 080104dc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080104de */ BL func_08005d38 \n\
/* 080104e2 */ POP {R0} \n\
/* 080104e4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
