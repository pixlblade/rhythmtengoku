asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ca20 \n\
/* 0801ca20 */ PUSH {LR} \n\
/* 0801ca22 */ LDR R0, =D_08a9b078 \n\
/* 0801ca24 */ BL func_08002a18 \n\
/* 0801ca28 */ BL func_08002828 \n\
/* 0801ca2c */ POP {R0} \n\
/* 0801ca2e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
