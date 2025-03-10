#ifndef GUARD_CODE_080001F4_H
#define GUARD_CODE_080001F4_H

#include "global.h"

typedef s32 (*struct_03000000_func)(void *);

struct struct_03000000 {
	struct_03000000_func unk0;
	void *unk4;
	struct_03000000_func unk8;
	void *unkC;
	struct_03000000_func unk10;
	void *unk14;
	u16 unk18;
};

extern u8 D_03004498;
extern s32 D_030046a0;
extern s32 *D_030046a8;

extern void *interrupt_handler;
extern void *interrupt_handler_intern;
extern void *D_0804f300;
extern void *D_03004460;
extern struct struct_03000000 *D_08935fac;
extern struct struct_03000000 *D_08935fb0;
extern struct struct_03000000 D_089dd97c;
extern struct struct_03000000 D_089dda4c;

extern void func_080001f8(void);
extern void func_08000224(void);
extern void func_080002c4(void);
extern void func_0800046c(struct struct_03000000 *);
extern void func_08000490(void);
extern void func_08000568(struct struct_03000000 *);
extern void func_08000584(struct struct_03000000 *);
extern void func_08000598(void);
extern struct struct_03000000 **func_080005b8(struct struct_03000000 *);
extern struct struct_03000000 *func_080005e0(struct struct_03000000 *);
extern struct struct_03000000 *func_080005f4(struct struct_03000000 *);
extern struct struct_03000000 *func_08000608(void);
extern struct struct_03000000 *func_0800061c(void);
extern struct struct_03000000 **func_08000630(struct struct_03000000 *);
extern void func_08000674(struct struct_03000000 *);
extern void func_080006b0(struct struct_03000000 *, struct struct_03000000 *);
extern void func_080006d0(struct struct_03000000 *, struct struct_03000000 *);
extern void func_080006f0(struct struct_03000000 *, struct struct_03000000 *);
extern struct struct_03000000 *func_0800070c(void);

#endif
