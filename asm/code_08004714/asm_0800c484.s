asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800c484 \n\
/* 0800c484 */ PUSH {LR} \n\
/* 0800c486 */ BL func_080009a0 \n\
/* 0800c48a */ POP {R0} \n\
/* 0800c48c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
