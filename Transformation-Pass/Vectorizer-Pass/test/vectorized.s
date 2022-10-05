	.text
	.file	"tsvc-functions.c"
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "tsvc-functions.c" md5 0xc6f620ae9f6e00b4e2b646d0818f2f39
	.globl	s253                            // -- Begin function s253
	.p2align	2
	.type	s253,@function
s253:                                   // @s253
.Lfunc_begin0:
	.loc	0 24 0                          // tsvc-functions.c:24:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: s253:func_args <- $x0
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 96
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w25, -56
	.cfi_offset w26, -64
	.cfi_offset w27, -72
	.cfi_offset w28, -80
	.cfi_offset w30, -88
	.cfi_offset w29, -96
	mov	x19, x0
.Ltmp0:
	//DEBUG_VALUE: s253:func_args <- $x19
	//DEBUG_VALUE: s253:func_args <- $x19
	.loc	0 29 5 prologue_end             // tsvc-functions.c:29:5
	adrp	x0, .L__func__.s253
	add	x0, x0, :lo12:.L__func__.s253
	bl	initialise_arrays
.Ltmp1:
	.loc	0 30 5                          // tsvc-functions.c:30:5
	mov	x0, x19
	mov	x1, xzr
	str	x19, [sp, #8]                   // 8-byte Folded Spill
.Ltmp2:
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	bl	gettimeofday
.Ltmp3:
	//DEBUG_VALUE: nl <- 0
	.loc	0 0 5 is_stmt 0                 // tsvc-functions.c:0:5
	rdvl	x8, #1
	mov	w24, #34464
	mov	w28, wzr
	lsr	x19, x8, #4
	adrp	x20, c
	add	x20, x20, :lo12:c
	adrp	x21, d
	add	x21, x21, :lo12:d
	adrp	x22, a
	add	x22, x22, :lo12:a
	adrp	x23, b
	add	x23, x23, :lo12:b
	adrp	x25, aa
	add	x25, x25, :lo12:aa
	movk	w24, #1, lsl #16
	adrp	x26, bb
	add	x26, x26, :lo12:bb
	adrp	x27, cc
	add	x27, x27, :lo12:cc
	ptrue	p1.s
	b	.LBB0_2
.Ltmp4:
.LBB0_1:                                // %for.cond.cleanup4
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	0 41 9 is_stmt 1                // tsvc-functions.c:41:9
	mov	x0, x22
	mov	x1, x23
	mov	x2, x20
	mov	x3, x21
	adrp	x4, e
	add	x4, x4, :lo12:e
	mov	x5, x25
	mov	x6, x26
	mov	x7, x27
	str	wzr, [sp]
	bl	dummy
.Ltmp5:
	.loc	0 33 41                         // tsvc-functions.c:33:41
	add	w28, w28, #1
.Ltmp6:
	//DEBUG_VALUE: nl <- $w28
	.loc	0 0 41 is_stmt 0                // tsvc-functions.c:0:41
	ptrue	p1.s
.Ltmp7:
	.loc	0 33 5                          // tsvc-functions.c:33:5
	cmp	w28, w24
	b.eq	.LBB0_11
.Ltmp8:
.LBB0_2:                                // %for.cond2.preheader
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_4 Depth 2
                                        //     Child Loop BB0_9 Depth 2
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: i <- 0
	.loc	0 34 9 is_stmt 1                // tsvc-functions.c:34:9
	mov	w8, #32001
	cmp	x8, w19, uxtw #2
	b.ls	.LBB0_6
.Ltmp9:
// %bb.3:                               // %Pre.Vectorization
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	0 0 9 is_stmt 0                 // tsvc-functions.c:0:9
	and	x11, x19, #0xffffffff
	mov	w14, #32000
	lsl	x9, x11, #2
	mov	x8, xzr
	mov	x12, x22
	lsl	x13, x11, #4
	udiv	x10, x14, x9
	mov	x15, x20
	mul	x10, x10, x9
	sub	x11, x14, x10
	mov	x14, x21
.Ltmp10:
.LBB0_4:                                // %vectorizing.block
                                        //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	ld1w	{ z0.s }, p1/z, [x12]
	ld1w	{ z1.s }, p1/z, [x23, x8, lsl #2]
	add	x8, x8, x9
	cmpgt	p0.s, p1/z, z0.s, z1.s
	ld1w	{ z2.s }, p0/z, [x14]
	ld1w	{ z3.s }, p0/z, [x15]
	add	x14, x14, x13
	cmp	x8, x10
	mul	z2.s, p0/m, z2.s, z1.s
	sub	z0.s, p0/m, z0.s, z2.s
	mov	z1.d, z0.d
	add	z1.s, p0/m, z1.s, z3.s
	st1w	{ z1.s }, p0, [x15]
	st1w	{ z0.s }, p0, [x12]
	add	x15, x15, x13
	add	x12, x12, x13
	b.lo	.LBB0_4
.Ltmp11:
// %bb.5:                               // %middle.block
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	cbnz	x11, .LBB0_7
	b	.LBB0_1
.Ltmp12:
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	mov	x8, xzr
.Ltmp13:
.LBB0_7:                                // %for.body5.preheader
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	0 34 9                          // tsvc-functions.c:34:9
	mov	x9, #-32000
	lsl	x12, x8, #2
	add	x9, x8, x9
	add	x8, x20, x12
	add	x10, x21, x12
	add	x11, x23, x12
	add	x12, x22, x12
	b	.LBB0_9
.Ltmp14:
.LBB0_8:                                // %for.inc
                                        //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: i <- [DW_OP_plus_uconst 32000, DW_OP_stack_value] $x9
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: i <- [DW_OP_plus_uconst 32001, DW_OP_stack_value] $x9
	.loc	0 34 27                         // tsvc-functions.c:34:27
	adds	x9, x9, #1
.Ltmp15:
	add	x8, x8, #4
	add	x10, x10, #4
	add	x11, x11, #4
	add	x12, x12, #4
.Ltmp16:
	.loc	0 34 9                          // tsvc-functions.c:34:9
	b.hs	.LBB0_1
.Ltmp17:
.LBB0_9:                                // %for.body5
                                        //   Parent Loop BB0_2 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	//DEBUG_VALUE: i <- [DW_OP_plus_uconst 32000, DW_OP_stack_value] $x9
	.loc	0 35 17 is_stmt 1               // tsvc-functions.c:35:17
	ldr	w13, [x12]
	.loc	0 35 24 is_stmt 0               // tsvc-functions.c:35:24
	ldr	w14, [x11]
.Ltmp18:
	.loc	0 35 17                         // tsvc-functions.c:35:17
	cmp	w13, w14
	b.le	.LBB0_8
.Ltmp19:
// %bb.10:                              // %if.then
                                        //   in Loop: Header=BB0_9 Depth=2
	//DEBUG_VALUE: i <- [DW_OP_plus_uconst 32000, DW_OP_stack_value] $x9
	//DEBUG_VALUE: nl <- $w28
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	0 36 35 is_stmt 1               // tsvc-functions.c:36:35
	ldr	w15, [x10]
	.loc	0 37 22                         // tsvc-functions.c:37:22
	ldr	w16, [x8]
	.loc	0 36 26                         // tsvc-functions.c:36:26
	msub	w13, w15, w14, w13
.Ltmp20:
	//DEBUG_VALUE: s253:s <- $w13
	.loc	0 37 22                         // tsvc-functions.c:37:22
	add	w14, w13, w16
	.loc	0 38 22                         // tsvc-functions.c:38:22
	str	w13, [x12]
	.loc	0 37 22                         // tsvc-functions.c:37:22
	str	w14, [x8]
	b	.LBB0_8
.Ltmp21:
.LBB0_11:                               // %for.cond.cleanup
	//DEBUG_VALUE: s253:func_args <- [DW_OP_plus_uconst 8] [$sp+0]
	.loc	0 0 22 is_stmt 0                // tsvc-functions.c:0:22
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	.loc	0 44 5 is_stmt 1                // tsvc-functions.c:44:5
	mov	x1, xzr
	.loc	0 44 30 is_stmt 0               // tsvc-functions.c:44:30
	add	x0, x8, #16
	.loc	0 44 5                          // tsvc-functions.c:44:5
	bl	gettimeofday
.Ltmp22:
	.loc	0 45 12 is_stmt 1               // tsvc-functions.c:45:12
	adrp	x0, .L__func__.s253
	add	x0, x0, :lo12:.L__func__.s253
	.cfi_def_cfa wsp, 112
	ldp	x20, x19, [sp, #96]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #112
.Ltmp23:
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w25
	.cfi_restore w26
	.cfi_restore w27
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	b	calc_checksum
.Ltmp24:
.Lfunc_end0:
	.size	s253, .Lfunc_end0-s253
	.cfi_endproc
	.file	1 "." "common.h" md5 0x5e4aaa336c606013c82cfcd9c7a7c62d
	.file	2 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys" "time.h" md5 0x99ab902f1529d4d72694df20fbf7a8ec
	.file	3 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits" "types.h" md5 0xf6304b1a6dcfc6bee76e9a51043b5090
	.file	4 "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types" "struct_timeval.h" md5 0x7798c68081a8161421218378689a8d48
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	0 49 0                          // tsvc-functions.c:49:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: main:argc <- $w0
	//DEBUG_VALUE: main:argv <- $x1
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp25:
	//DEBUG_VALUE: main:n1 <- 1
	//DEBUG_VALUE: main:n3 <- 1
	//DEBUG_VALUE: main:ip <- [DW_OP_plus_uconst 8, DW_OP_deref] $sp
	//DEBUG_VALUE: main:s1 <- [DW_OP_plus_uconst 4, DW_OP_deref] $sp
	//DEBUG_VALUE: main:s2 <- [DW_OP_deref] $sp
	.loc	0 54 5 prologue_end             // tsvc-functions.c:54:5
	add	x0, sp, #8
.Ltmp26:
	//DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $w0
	add	x1, sp, #4
.Ltmp27:
	//DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $x1
	mov	x2, sp
	bl	init
.Ltmp28:
	.loc	0 55 5                          // tsvc-functions.c:55:5
	adrp	x0, .Lstr
	add	x0, x0, :lo12:.Lstr
	bl	puts
.Ltmp29:
	.loc	0 57 6                          // tsvc-functions.c:57:6
	adrp	x0, s253
	add	x0, x0, :lo12:s253
	mov	x1, xzr
	bl	time_function
.Ltmp30:
	.loc	0 58 1                          // tsvc-functions.c:58:1
	mov	w0, wzr
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
.Ltmp31:
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp32:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L__func__.s253,@object         // @__func__.s253
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.s253:
	.asciz	"s253"
	.size	.L__func__.s253, 5

	.type	a,@object                       // @a
	.bss
	.globl	a
	.p2align	6
a:
	.zero	128000
	.size	a, 128000

	.type	b,@object                       // @b
	.globl	b
	.p2align	6
b:
	.zero	128000
	.size	b, 128000

	.type	d,@object                       // @d
	.globl	d
	.p2align	6
d:
	.zero	128000
	.size	d, 128000

	.type	c,@object                       // @c
	.globl	c
	.p2align	6
c:
	.zero	128000
	.size	c, 128000

	.type	e,@object                       // @e
	.globl	e
	.p2align	6
e:
	.zero	128000
	.size	e, 128000

	.type	aa,@object                      // @aa
	.globl	aa
	.p2align	6
aa:
	.zero	262144
	.size	aa, 262144

	.type	bb,@object                      // @bb
	.globl	bb
	.p2align	6
bb:
	.zero	262144
	.size	bb, 262144

	.type	cc,@object                      // @cc
	.globl	cc
	.p2align	6
cc:
	.zero	262144
	.size	cc, 262144

	.type	flat_2d_array,@object           // @flat_2d_array
	.globl	flat_2d_array
	.p2align	6
flat_2d_array:
	.zero	262144
	.size	flat_2d_array, 262144

	.type	x,@object                       // @x
	.globl	x
	.p2align	6
x:
	.zero	128000
	.size	x, 128000

	.type	tt,@object                      // @tt
	.globl	tt
	.p2align	6
tt:
	.zero	262144
	.size	tt, 262144

	.type	indx,@object                    // @indx
	.globl	indx
	.p2align	6
indx:
	.zero	128000
	.size	indx, 128000

	.type	xx,@object                      // @xx
	.globl	xx
	.p2align	3
xx:
	.xword	0
	.size	xx, 8

	.type	yy,@object                      // @yy
	.globl	yy
	.p2align	3
yy:
	.xword	0
	.size	yy, 8

	.type	.Lstr,@object                   // @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"Loop \tTime(sec) \tChecksum"
	.size	.Lstr, 26

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	8                               // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
	.word	.Ldebug_loc4-.Lloclists_table_base0
	.word	.Ldebug_loc5-.Lloclists_table_base0
	.word	.Ldebug_loc6-.Lloclists_table_base0
	.word	.Ldebug_loc7-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	8                               // 8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          //   ending offset
	.byte	5                               // Loc expr size
	.byte	121                             // DW_OP_breg9
	.byte	129                             // 32001
	.byte	250                             // 
	.byte	1                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          //   ending offset
	.byte	5                               // Loc expr size
	.byte	121                             // DW_OP_breg9
	.byte	128                             // 32000
	.byte	250                             // 
	.byte	1                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp20-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	93                              // DW_OP_reg13
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	8                               // 8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	4                               // 4
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	143                             // DW_OP_breg31
	.byte	0                               // 0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	37                              // DW_FORM_strx1
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	114                             // DW_AT_str_offsets_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	37                              // DW_FORM_strx1
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	115                             // DW_AT_addr_base
	.byte	23                              // DW_FORM_sec_offset
	.ascii	"\214\001"                      // DW_AT_loclists_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.ascii	"\210\001"                      // DW_AT_alignment
	.byte	15                              // DW_FORM_udata
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	5                               // DW_FORM_data2
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	122                             // DW_AT_call_all_calls
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.ascii	"\202\001"                      // DW_AT_call_tail_call
	.byte	25                              // DW_FORM_flag_present
	.ascii	"\201\001"                      // DW_AT_call_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	20                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	23                              // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	24                              // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	25                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	28                              // DW_AT_const_value
	.byte	13                              // DW_FORM_sdata
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	26                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	5                               // DWARF version number
	.byte	1                               // DWARF Unit Type
	.byte	8                               // Address Size (in bytes)
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	1                               // Abbrev [1] 0xc:0x2c4 DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	14                              // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x27:0xc DW_TAG_variable
	.byte	3                               // DW_AT_name
	.word	51                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               // Abbrev [3] 0x33:0xf DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	4                               // Abbrev [4] 0x38:0x9 DW_TAG_subrange_type
	.word	70                              // DW_AT_type
	.word	65536                           // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x42:0x4 DW_TAG_base_type
	.byte	4                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	6                               // Abbrev [6] 0x46:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	2                               // Abbrev [2] 0x4a:0xc DW_TAG_variable
	.byte	6                               // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	1
	.byte	3                               // Abbrev [3] 0x56:0xd DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	7                               // Abbrev [7] 0x5b:0x7 DW_TAG_subrange_type
	.word	70                              // DW_AT_type
	.hword	32000                           // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x63:0xc DW_TAG_variable
	.byte	7                               // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               // Abbrev [2] 0x6f:0xc DW_TAG_variable
	.byte	8                               // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	3
	.byte	2                               // Abbrev [2] 0x7b:0xc DW_TAG_variable
	.byte	9                               // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	4
	.byte	2                               // Abbrev [2] 0x87:0xc DW_TAG_variable
	.byte	10                              // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	5
	.byte	2                               // Abbrev [2] 0x93:0xc DW_TAG_variable
	.byte	11                              // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	6
	.byte	2                               // Abbrev [2] 0x9f:0xc DW_TAG_variable
	.byte	12                              // DW_AT_name
	.word	171                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	7
	.byte	3                               // Abbrev [3] 0xab:0x14 DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	7                               // Abbrev [7] 0xb0:0x7 DW_TAG_subrange_type
	.word	70                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	7                               // Abbrev [7] 0xb7:0x7 DW_TAG_subrange_type
	.word	70                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xbf:0xc DW_TAG_variable
	.byte	13                              // DW_AT_name
	.word	171                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	8
	.byte	2                               // Abbrev [2] 0xcb:0xc DW_TAG_variable
	.byte	14                              // DW_AT_name
	.word	171                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	9
	.byte	2                               // Abbrev [2] 0xd7:0xc DW_TAG_variable
	.byte	15                              // DW_AT_name
	.word	171                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	10
	.byte	2                               // Abbrev [2] 0xe3:0xc DW_TAG_variable
	.byte	16                              // DW_AT_name
	.word	86                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	17                              // DW_AT_decl_line
	.byte	64                              // DW_AT_alignment
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	11
	.byte	8                               // Abbrev [8] 0xef:0xb DW_TAG_variable
	.byte	17                              // DW_AT_name
	.word	250                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	12
	.byte	9                               // Abbrev [9] 0xfa:0x5 DW_TAG_restrict_type
	.word	255                             // DW_AT_type
	.byte	10                              // Abbrev [10] 0xff:0x5 DW_TAG_pointer_type
	.word	66                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0x104:0xb DW_TAG_variable
	.byte	18                              // DW_AT_name
	.word	255                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	13
	.byte	11                              // Abbrev [11] 0x10f:0x1 DW_TAG_pointer_type
	.byte	12                              // Abbrev [12] 0x110:0x61 DW_TAG_subprogram
	.byte	14                              // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	31                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x11f:0x9 DW_TAG_formal_parameter
	.byte	0                               // DW_AT_location
	.byte	33                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
	.word	671                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x128:0x9 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	40                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	15                              // Abbrev [15] 0x131:0x21 DW_TAG_lexical_block
	.byte	15                              // DW_AT_low_pc
	.word	.Ltmp21-.Ltmp4                  // DW_AT_high_pc
	.byte	16                              // Abbrev [16] 0x137:0xa DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	108
	.byte	38                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	33                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	15                              // Abbrev [15] 0x141:0x10 DW_TAG_lexical_block
	.byte	16                              // DW_AT_low_pc
	.word	.Ltmp21-.Ltmp8                  // DW_AT_high_pc
	.byte	14                              // Abbrev [14] 0x147:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	39                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	34                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	17                              // Abbrev [17] 0x152:0x6 DW_TAG_call_site
	.word	369                             // DW_AT_call_origin
	.byte	17                              // DW_AT_call_return_pc
	.byte	17                              // Abbrev [17] 0x158:0x6 DW_TAG_call_site
	.word	397                             // DW_AT_call_origin
	.byte	18                              // DW_AT_call_return_pc
	.byte	17                              // Abbrev [17] 0x15e:0x6 DW_TAG_call_site
	.word	475                             // DW_AT_call_origin
	.byte	19                              // DW_AT_call_return_pc
	.byte	17                              // Abbrev [17] 0x164:0x6 DW_TAG_call_site
	.word	397                             // DW_AT_call_origin
	.byte	20                              // DW_AT_call_return_pc
	.byte	18                              // Abbrev [18] 0x16a:0x6 DW_TAG_call_site
	.word	547                             // DW_AT_call_origin
                                        // DW_AT_call_tail_call
	.byte	21                              // DW_AT_call_pc
	.byte	0                               // End Of Children Mark
	.byte	19                              // Abbrev [19] 0x171:0xe DW_TAG_subprogram
	.byte	19                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	20                              // Abbrev [20] 0x179:0x5 DW_TAG_formal_parameter
	.word	383                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x17f:0x5 DW_TAG_pointer_type
	.word	388                             // DW_AT_type
	.byte	21                              // Abbrev [21] 0x184:0x5 DW_TAG_const_type
	.word	393                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x189:0x4 DW_TAG_base_type
	.byte	20                              // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	19                              // Abbrev [19] 0x18d:0x13 DW_TAG_subprogram
	.byte	21                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	66                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	20                              // Abbrev [20] 0x195:0x5 DW_TAG_formal_parameter
	.word	416                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x19a:0x5 DW_TAG_formal_parameter
	.word	470                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	9                               // Abbrev [9] 0x1a0:0x5 DW_TAG_restrict_type
	.word	421                             // DW_AT_type
	.byte	10                              // Abbrev [10] 0x1a5:0x5 DW_TAG_pointer_type
	.word	426                             // DW_AT_type
	.byte	22                              // Abbrev [22] 0x1aa:0x18 DW_TAG_structure_type
	.byte	27                              // DW_AT_name
	.byte	16                              // DW_AT_byte_size
	.byte	4                               // DW_AT_decl_file
	.byte	8                               // DW_AT_decl_line
	.byte	23                              // Abbrev [23] 0x1af:0x9 DW_TAG_member
	.byte	22                              // DW_AT_name
	.word	450                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	23                              // Abbrev [23] 0x1b8:0x9 DW_TAG_member
	.byte	25                              // DW_AT_name
	.word	462                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	11                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	24                              // Abbrev [24] 0x1c2:0x8 DW_TAG_typedef
	.word	458                             // DW_AT_type
	.byte	24                              // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	160                             // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x1ca:0x4 DW_TAG_base_type
	.byte	23                              // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	24                              // Abbrev [24] 0x1ce:0x8 DW_TAG_typedef
	.word	458                             // DW_AT_type
	.byte	26                              // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	162                             // DW_AT_decl_line
	.byte	9                               // Abbrev [9] 0x1d6:0x5 DW_TAG_restrict_type
	.word	271                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x1db:0x36 DW_TAG_subprogram
	.byte	28                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	20                              // Abbrev [20] 0x1e3:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1e8:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1ed:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1f2:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1f7:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x1fc:0x5 DW_TAG_formal_parameter
	.word	529                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x201:0x5 DW_TAG_formal_parameter
	.word	529                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x206:0x5 DW_TAG_formal_parameter
	.word	529                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x20b:0x5 DW_TAG_formal_parameter
	.word	66                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x211:0x5 DW_TAG_pointer_type
	.word	534                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x216:0xd DW_TAG_array_type
	.word	66                              // DW_AT_type
	.byte	7                               // Abbrev [7] 0x21b:0x7 DW_TAG_subrange_type
	.word	70                              // DW_AT_type
	.hword	256                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	19                              // Abbrev [19] 0x223:0xe DW_TAG_subprogram
	.byte	29                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	28                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	20                              // Abbrev [20] 0x22b:0x5 DW_TAG_formal_parameter
	.word	383                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x231:0x55 DW_TAG_subprogram
	.byte	22                              // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	32                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	49                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	66                              // DW_AT_type
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x240:0x9 DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	41                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	49                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	13                              // Abbrev [13] 0x249:0x9 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	42                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	49                              // DW_AT_decl_line
	.word	709                             // DW_AT_type
	.byte	25                              // Abbrev [25] 0x252:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_const_value
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	50                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	25                              // Abbrev [25] 0x25b:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_const_value
	.byte	44                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	51                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x264:0x9 DW_TAG_variable
	.byte	5                               // DW_AT_location
	.byte	45                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	52                              // DW_AT_decl_line
	.word	255                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x26d:0x9 DW_TAG_variable
	.byte	6                               // DW_AT_location
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	53                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x276:0x9 DW_TAG_variable
	.byte	7                               // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	53                              // DW_AT_decl_line
	.word	66                              // DW_AT_type
	.byte	17                              // Abbrev [17] 0x27f:0x6 DW_TAG_call_site
	.word	646                             // DW_AT_call_origin
	.byte	23                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	26                              // Abbrev [26] 0x286:0x14 DW_TAG_subprogram
	.byte	30                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	25                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	20                              // Abbrev [20] 0x28a:0x5 DW_TAG_formal_parameter
	.word	666                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x28f:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x294:0x5 DW_TAG_formal_parameter
	.word	255                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x29a:0x5 DW_TAG_pointer_type
	.word	255                             // DW_AT_type
	.byte	10                              // Abbrev [10] 0x29f:0x5 DW_TAG_pointer_type
	.word	676                             // DW_AT_type
	.byte	22                              // Abbrev [22] 0x2a4:0x21 DW_TAG_structure_type
	.byte	37                              // DW_AT_name
	.byte	40                              // DW_AT_byte_size
	.byte	1                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	23                              // Abbrev [23] 0x2a9:0x9 DW_TAG_member
	.byte	34                              // DW_AT_name
	.word	426                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	11                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	23                              // Abbrev [23] 0x2b2:0x9 DW_TAG_member
	.byte	35                              // DW_AT_name
	.word	426                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	16                              // DW_AT_data_member_location
	.byte	23                              // Abbrev [23] 0x2bb:0x9 DW_TAG_member
	.byte	36                              // DW_AT_name
	.word	470                             // DW_AT_type
	.byte	1                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.byte	32                              // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x2c5:0x5 DW_TAG_pointer_type
	.word	714                             // DW_AT_type
	.byte	10                              // Abbrev [10] 0x2ca:0x5 DW_TAG_pointer_type
	.word	393                             // DW_AT_type
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	196                             // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" // string offset=0
.Linfo_string1:
	.asciz	"tsvc-functions.c"              // string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" // string offset=126
.Linfo_string3:
	.asciz	"flat_2d_array"                 // string offset=220
.Linfo_string4:
	.asciz	"int"                           // string offset=234
.Linfo_string5:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=238
.Linfo_string6:
	.asciz	"x"                             // string offset=258
.Linfo_string7:
	.asciz	"a"                             // string offset=260
.Linfo_string8:
	.asciz	"b"                             // string offset=262
.Linfo_string9:
	.asciz	"c"                             // string offset=264
.Linfo_string10:
	.asciz	"d"                             // string offset=266
.Linfo_string11:
	.asciz	"e"                             // string offset=268
.Linfo_string12:
	.asciz	"aa"                            // string offset=270
.Linfo_string13:
	.asciz	"bb"                            // string offset=273
.Linfo_string14:
	.asciz	"cc"                            // string offset=276
.Linfo_string15:
	.asciz	"tt"                            // string offset=279
.Linfo_string16:
	.asciz	"indx"                          // string offset=282
.Linfo_string17:
	.asciz	"xx"                            // string offset=287
.Linfo_string18:
	.asciz	"yy"                            // string offset=290
.Linfo_string19:
	.asciz	"initialise_arrays"             // string offset=293
.Linfo_string20:
	.asciz	"char"                          // string offset=311
.Linfo_string21:
	.asciz	"gettimeofday"                  // string offset=316
.Linfo_string22:
	.asciz	"tv_sec"                        // string offset=329
.Linfo_string23:
	.asciz	"long"                          // string offset=336
.Linfo_string24:
	.asciz	"__time_t"                      // string offset=341
.Linfo_string25:
	.asciz	"tv_usec"                       // string offset=350
.Linfo_string26:
	.asciz	"__suseconds_t"                 // string offset=358
.Linfo_string27:
	.asciz	"timeval"                       // string offset=372
.Linfo_string28:
	.asciz	"dummy"                         // string offset=380
.Linfo_string29:
	.asciz	"calc_checksum"                 // string offset=386
.Linfo_string30:
	.asciz	"init"                          // string offset=400
.Linfo_string31:
	.asciz	"s253"                          // string offset=405
.Linfo_string32:
	.asciz	"main"                          // string offset=410
.Linfo_string33:
	.asciz	"func_args"                     // string offset=415
.Linfo_string34:
	.asciz	"t1"                            // string offset=425
.Linfo_string35:
	.asciz	"t2"                            // string offset=428
.Linfo_string36:
	.asciz	"arg_info"                      // string offset=431
.Linfo_string37:
	.asciz	"args_t"                        // string offset=440
.Linfo_string38:
	.asciz	"nl"                            // string offset=447
.Linfo_string39:
	.asciz	"i"                             // string offset=450
.Linfo_string40:
	.asciz	"s"                             // string offset=452
.Linfo_string41:
	.asciz	"argc"                          // string offset=454
.Linfo_string42:
	.asciz	"argv"                          // string offset=459
.Linfo_string43:
	.asciz	"n1"                            // string offset=464
.Linfo_string44:
	.asciz	"n3"                            // string offset=467
.Linfo_string45:
	.asciz	"ip"                            // string offset=470
.Linfo_string46:
	.asciz	"s1"                            // string offset=473
.Linfo_string47:
	.asciz	"s2"                            // string offset=476
	.section	.debug_str_offsets,"",@progbits
	.word	.Linfo_string0
	.word	.Linfo_string1
	.word	.Linfo_string2
	.word	.Linfo_string3
	.word	.Linfo_string4
	.word	.Linfo_string5
	.word	.Linfo_string6
	.word	.Linfo_string7
	.word	.Linfo_string8
	.word	.Linfo_string9
	.word	.Linfo_string10
	.word	.Linfo_string11
	.word	.Linfo_string12
	.word	.Linfo_string13
	.word	.Linfo_string14
	.word	.Linfo_string15
	.word	.Linfo_string16
	.word	.Linfo_string17
	.word	.Linfo_string18
	.word	.Linfo_string19
	.word	.Linfo_string20
	.word	.Linfo_string21
	.word	.Linfo_string22
	.word	.Linfo_string23
	.word	.Linfo_string24
	.word	.Linfo_string25
	.word	.Linfo_string26
	.word	.Linfo_string27
	.word	.Linfo_string28
	.word	.Linfo_string29
	.word	.Linfo_string30
	.word	.Linfo_string31
	.word	.Linfo_string32
	.word	.Linfo_string33
	.word	.Linfo_string34
	.word	.Linfo_string35
	.word	.Linfo_string36
	.word	.Linfo_string37
	.word	.Linfo_string38
	.word	.Linfo_string39
	.word	.Linfo_string40
	.word	.Linfo_string41
	.word	.Linfo_string42
	.word	.Linfo_string43
	.word	.Linfo_string44
	.word	.Linfo_string45
	.word	.Linfo_string46
	.word	.Linfo_string47
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	flat_2d_array
	.xword	x
	.xword	a
	.xword	b
	.xword	c
	.xword	d
	.xword	e
	.xword	aa
	.xword	bb
	.xword	cc
	.xword	tt
	.xword	indx
	.xword	xx
	.xword	yy
	.xword	.Lfunc_begin0
	.xword	.Ltmp4
	.xword	.Ltmp8
	.xword	.Ltmp1
	.xword	.Ltmp3
	.xword	.Ltmp5
	.xword	.Ltmp22
	.xword	.Ltmp23
	.xword	.Lfunc_begin1
	.xword	.Ltmp28
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
