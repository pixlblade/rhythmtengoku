asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801d5c0 \n\
/* 0801d5c0 */ PUSH {LR} \n\
/* 0801d5c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801d5c4 */ BL func_0800c604 \n\
/* 0801d5c8 */ BL func_0800c3b8 \n\
/* 0801d5cc */ LSLS R0, R0, 0x10 \n\
/* 0801d5ce */ LSRS R0, R0, 0x10 \n\
/* 0801d5d0 */ LDR R1, =D_030046a4 \n\
/* 0801d5d2 */ LDR R1, [R1] \n\
/* 0801d5d4 */ LDR R1, [R1, 0x14] \n\
/* 0801d5d6 */ LDR R1, [R1, 0x8] \n\
/* 0801d5d8 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801d5da */ LSLS R2, R2, 0x6 \n\
/* 0801d5dc */ BL func_08002ee0 \n\
/* 0801d5e0 */ LDR R1, =(func_0801d594 + 1) \n\
/* 0801d5e2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801d5e4 */ BL func_08005d38 \n\
/* 0801d5e8 */ POP {R0} \n\
/* 0801d5ea */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
