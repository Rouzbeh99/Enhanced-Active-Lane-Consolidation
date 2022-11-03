	.text
	.file	"test.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "test.c" md5 0x31b0f111804ac48347421d407d07b919
	.loc	0 6 0                           // test.c:6:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:n <- $w4
	.loc	0 10 5 prologue_end             // test.c:10:5
	cmp	w4, #1
.Ltmp0:
	.loc	0 9 5                           // test.c:9:5
	//APP
	.inst	0x2520e020
	//NO_APP
.Ltmp1:
	//DEBUG_VALUE: i <- 0
	.loc	0 10 5                          // test.c:10:5
	b.lt	.LBB0_14
.Ltmp2:
// %bb.1:                               // %for.body.preheader
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 10 23 is_stmt 0               // test.c:10:23
	mov	w8, w4
.Ltmp3:
	.loc	0 10 5                          // test.c:10:5
	cntd	x10
	cmp	x8, x10
	b.lo	.LBB0_8
.Ltmp4:
// %bb.2:                               // %pre.alc
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 5                           // test.c:0:5
	udiv	x11, x8, x10
	ptrue	p0.d
	ld1w	{ z0.d }, p0/z, [x3]
	mov	x9, xzr
	ptrue	p1.d, vl2
	and	z0.d, z0.d, #0xffffffff
	cmpeq	p2.d, p0/z, z0.d, #0
	index	z0.d, #0, #1
	msub	x11, x11, x10, x8
	cntp	x12, p2, p2.d
	b	.LBB0_5
.Ltmp5:
.LBB0_3:                                // %linearized
                                        //   in Loop: Header=BB0_5 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	ld1w	{ z1.d }, p0/z, [x0, x9, lsl #2]
	ld1w	{ z2.d }, p0/z, [x1, x9, lsl #2]
	mul	z1.d, z2.d, z1.d
	st1w	{ z1.d }, p0, [x2, x9, lsl #2]
.Ltmp6:
.LBB0_4:                                // %new.latch
                                        //   in Loop: Header=BB0_5 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	add	x9, x9, x10
	cmp	x9, x11
	b.ls	.LBB0_9
.Ltmp7:
.LBB0_5:                                // %alc.header
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	ld1w	{ z1.d }, p0/z, [x3, x9, lsl #2]
	mov	x13, x12
	and	z1.d, z1.d, #0xffffffff
	cmpeq	p3.d, p0/z, z1.d, #0
	incp	x13, p3.d
	cmp	x13, x10
	b.hi	.LBB0_3
.Ltmp8:
// %bb.6:                               // %lane.gather
                                        //   in Loop: Header=BB0_5 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	cmp	x13, x10
	b.lo	.LBB0_4
.Ltmp9:
// %bb.7:                               // %uniform.block
                                        //   in Loop: Header=BB0_5 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	index	z1.d, x9, x10
	compact	z0.d, p2, z0.d
	compact	z1.d, p3, z1.d
	whilelt	p2.d, xzr, x12
	splice	z0.d, p2, z0.d, z1.d
	add	x9, x9, x10
	ld1w	{ z1.d }, p1/z, [x0, z0.d, lsl #2]
	ld1w	{ z2.d }, p1/z, [x1, z0.d, lsl #2]
	mul	z1.d, z2.d, z1.d
	st1w	{ z1.d }, p1, [x2, z0.d, lsl #2]
	ld1w	{ z0.d }, p0/z, [x3, x9, lsl #2]
	and	z0.d, z0.d, #0xffffffff
	cmpeq	p2.d, p0/z, z0.d, #0
	index	z0.d, x9, #1
	cntp	x12, p2, p2.d
	b	.LBB0_4
.Ltmp10:
.LBB0_8:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	mov	x9, xzr
	b	.LBB0_10
.Ltmp11:
.LBB0_9:                                // %middel.block
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	cbz	x11, .LBB0_14
.Ltmp12:
.LBB0_10:                               // %for.body.preheader1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 10 5                          // test.c:10:5
	lsl	x12, x9, #2
	sub	x8, x8, x9
	add	x9, x2, x12
	add	x10, x1, x12
	add	x11, x0, x12
	add	x12, x3, x12
	b	.LBB0_12
.Ltmp13:
.LBB0_11:                               // %for.inc
                                        //   in Loop: Header=BB0_12 Depth=1
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_convert 64 7, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 0, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 10 23                         // test.c:10:23
	subs	x8, x8, #1
	add	x9, x9, #4
	add	x10, x10, #4
	add	x11, x11, #4
	add	x12, x12, #4
.Ltmp14:
	.loc	0 10 5                          // test.c:10:5
	b.eq	.LBB0_14
.Ltmp15:
.LBB0_12:                               // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_LLVM_convert 64 7, DW_OP_consts 18446744073709551615, DW_OP_LLVM_arg 0, DW_OP_mul, DW_OP_plus, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_stack_value] undef
	.loc	0 11 13 is_stmt 1               // test.c:11:13
	ldr	w13, [x12]
.Ltmp16:
	.loc	0 11 13 is_stmt 0               // test.c:11:13
	cbz	w13, .LBB0_11
.Ltmp17:
// %bb.13:                              // %if.then
                                        //   in Loop: Header=BB0_12 Depth=1
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 12 20 is_stmt 1               // test.c:12:20
	ldr	w13, [x11]
	.loc	0 12 27 is_stmt 0               // test.c:12:27
	ldr	w14, [x10]
	.loc	0 12 25                         // test.c:12:25
	mul	w13, w14, w13
	.loc	0 12 18                         // test.c:12:18
	str	w13, [x9]
	b	.LBB0_11
.Ltmp18:
.LBB0_14:                               // %for.cond.cleanup
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 15 5 is_stmt 1                // test.c:15:5
	//APP
	.inst	0x2520e040
	//NO_APP
.Ltmp19:
	.loc	0 17 1                          // test.c:17:1
	ret
.Ltmp20:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	0 20 0                          // test.c:20:0
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x28, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	sp, sp, #32, lsl #12            // =131072
.Ltmp21:
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr3 <- 8192
	//DEBUG_VALUE: i <- 0
	.loc	0 32 14 prologue_end            // test.c:32:14
	add	x0, sp, #8, lsl #12             // =32768
	mov	w1, wzr
	mov	w2, #32768
	bl	memset
.Ltmp22:
	.loc	0 0 14 is_stmt 0                // test.c:0:14
	mov	w12, #52429
	mov	w13, #39322
	mov	x8, xzr
	add	x9, sp, #24, lsl #12            // =98304
	add	x10, sp, #16, lsl #12           // =65536
	mov	w11, #2
	movk	w12, #52428, lsl #16
	movk	w13, #6553, lsl #16
	mov	x14, sp
.Ltmp23:
.LBB1_1:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr3 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: i <- $x8
	.loc	0 33 21 is_stmt 1               // test.c:33:21
	and	w15, w8, #0xffff
	.loc	0 30 14                         // test.c:30:14
	lsl	x16, x8, #2
	.loc	0 33 25                         // test.c:33:25
	mul	w15, w15, w12
	.loc	0 30 14                         // test.c:30:14
	str	w8, [x9, x16]
.Ltmp24:
	.loc	0 29 28                         // test.c:29:28
	add	x8, x8, #1
.Ltmp25:
	//DEBUG_VALUE: i <- $x8
	.loc	0 31 14                         // test.c:31:14
	str	w11, [x10, x16]
	.loc	0 33 25                         // test.c:33:25
	ror	w15, w15, #1
	cmp	w15, w13
	cset	w15, lo
.Ltmp26:
	.loc	0 29 5                          // test.c:29:5
	cmp	x8, #2, lsl #12                 // =8192
.Ltmp27:
	.loc	0 33 17                         // test.c:33:17
	str	w15, [x14, x16]
.Ltmp28:
	.loc	0 29 5                          // test.c:29:5
	b.ne	.LBB1_1
.Ltmp29:
// %bb.2:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:__vla_expr3 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	.loc	0 37 5                          // test.c:37:5
	add	x0, sp, #24, lsl #12            // =98304
	add	x1, sp, #16, lsl #12            // =65536
	add	x2, sp, #8, lsl #12             // =32768
	mov	x3, sp
	mov	w4, #8192
	add	x19, sp, #8, lsl #12            // =32768
	bl	foo
.Ltmp30:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x8, xzr
	mov	w1, wzr
.Ltmp31:
.LBB1_3:                                // %for.body16
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr3 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x8
	.loc	0 42 16 is_stmt 1               // test.c:42:16
	ldr	w9, [x19, x8]
.Ltmp32:
	.loc	0 41 23                         // test.c:41:23
	add	x8, x8, #4
.Ltmp33:
	.loc	0 41 5 is_stmt 0                // test.c:41:5
	cmp	x8, #8, lsl #12                 // =32768
.Ltmp34:
	.loc	0 42 13 is_stmt 1               // test.c:42:13
	add	w1, w9, w1
.Ltmp35:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 41 5                          // test.c:41:5
	b.ne	.LBB1_3
.Ltmp36:
// %bb.4:                               // %for.cond.cleanup15
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:__vla_expr3 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	.loc	0 45 5                          // test.c:45:5
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
.Ltmp37:
	.loc	0 49 1                          // test.c:49:1
	mov	w0, wzr
	add	sp, sp, #32, lsl #12            // =131072
	.cfi_def_cfa wsp, 32
	ldp	x28, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp38:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d \n"
	.size	.L.str, 5

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	4                               // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	6                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          //   ending offset
	.byte	9                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	17                              // DW_OP_consts
	.byte	1                               // 1
	.byte	34                              // DW_OP_plus
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp30-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
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
	.byte	116                             // DW_AT_rnglists_base
	.byte	23                              // DW_FORM_sec_offset
	.ascii	"\214\001"                      // DW_AT_loclists_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
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
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
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
	.byte	4                               // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	85                              // DW_AT_ranges
	.byte	35                              // DW_FORM_rnglistx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
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
	.byte	6                               // Abbreviation Code
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
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	28                              // DW_AT_const_value
	.byte	15                              // DW_FORM_udata
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	52                              // DW_AT_artificial
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
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
	.byte	9                               // Abbreviation Code
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
	.byte	10                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
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
	.byte	13                              // Abbreviation Code
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
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
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	5                               // DWARF version number
	.byte	1                               // DWARF Unit Type
	.byte	8                               // Address Size (in bytes)
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	1                               // Abbrev [1] 0xc:0x158 DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lrnglists_table_base0          // DW_AT_rnglists_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x2b:0x4a DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_call_all_calls
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x36:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	80
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.word	277                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x40:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.word	277                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x4a:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	82
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.word	277                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x54:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	83
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.word	277                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x5e:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	84
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x68:0xc DW_TAG_lexical_block
	.byte	0                               // DW_AT_ranges
	.byte	5                               // Abbrev [5] 0x6a:0x9 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x75:0x9c DW_TAG_subprogram
	.byte	1                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
                                        // DW_AT_external
	.byte	7                               // Abbrev [7] 0x84:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	13                              // DW_AT_name
	.word	351                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0x8c:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	145
	.ascii	"\200\200~"
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.word	287                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x99:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	15                              // DW_AT_name
	.word	351                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0xa1:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	143
	.ascii	"\200\200\004"
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	25                              // DW_AT_decl_line
	.word	306                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0xae:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	16                              // DW_AT_name
	.word	351                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0xb6:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	143
	.ascii	"\200\200\002"
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	26                              // DW_AT_decl_line
	.word	321                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0xc3:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	17                              // DW_AT_name
	.word	351                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0xcb:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
	.word	336                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xd6:0xb DW_TAG_variable
	.asciz	"\200\300"                      // DW_AT_const_value
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	22                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0xe1:0x9 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	18                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	10                              // Abbrev [10] 0xea:0x10 DW_TAG_lexical_block
	.byte	2                               // DW_AT_low_pc
	.word	.Ltmp29-.Ltmp21                 // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0xf0:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0xfa:0x10 DW_TAG_lexical_block
	.byte	3                               // DW_AT_low_pc
	.word	.Ltmp36-.Ltmp31                 // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0x100:0x9 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
	.word	273                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x10a:0x6 DW_TAG_call_site
	.word	43                              // DW_AT_call_origin
	.byte	4                               // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x111:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	13                              // Abbrev [13] 0x115:0x5 DW_TAG_restrict_type
	.word	282                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x11a:0x5 DW_TAG_pointer_type
	.word	273                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x11f:0xf DW_TAG_array_type
	.word	273                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x124:0x9 DW_TAG_subrange_type
	.word	302                             // DW_AT_type
	.word	132                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	17                              // Abbrev [17] 0x12e:0x4 DW_TAG_base_type
	.byte	12                              // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	15                              // Abbrev [15] 0x132:0xf DW_TAG_array_type
	.word	273                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x137:0x9 DW_TAG_subrange_type
	.word	302                             // DW_AT_type
	.word	153                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x141:0xf DW_TAG_array_type
	.word	273                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x146:0x9 DW_TAG_subrange_type
	.word	302                             // DW_AT_type
	.word	174                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x150:0xf DW_TAG_array_type
	.word	273                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x155:0x9 DW_TAG_subrange_type
	.word	302                             // DW_AT_type
	.word	195                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x15f:0x4 DW_TAG_base_type
	.byte	14                              // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_rnglists,"",@progbits
	.word	.Ldebug_list_header_end1-.Ldebug_list_header_start1 // Length
.Ldebug_list_header_start1:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	1                               // Offset entry count
.Lrnglists_table_base0:
	.word	.Ldebug_ranges0-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          //   ending offset
	.byte	0                               // DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	80                              // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" // string offset=0
.Linfo_string1:
	.asciz	"test.c"                        // string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" // string offset=116
.Linfo_string3:
	.asciz	"foo"                           // string offset=210
.Linfo_string4:
	.asciz	"main"                          // string offset=214
.Linfo_string5:
	.asciz	"int"                           // string offset=219
.Linfo_string6:
	.asciz	"a"                             // string offset=223
.Linfo_string7:
	.asciz	"b"                             // string offset=225
.Linfo_string8:
	.asciz	"c"                             // string offset=227
.Linfo_string9:
	.asciz	"cond"                          // string offset=229
.Linfo_string10:
	.asciz	"n"                             // string offset=234
.Linfo_string11:
	.asciz	"i"                             // string offset=236
.Linfo_string12:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=238
.Linfo_string13:
	.asciz	"__vla_expr0"                   // string offset=258
.Linfo_string14:
	.asciz	"unsigned long"                 // string offset=270
.Linfo_string15:
	.asciz	"__vla_expr1"                   // string offset=284
.Linfo_string16:
	.asciz	"__vla_expr2"                   // string offset=296
.Linfo_string17:
	.asciz	"__vla_expr3"                   // string offset=308
.Linfo_string18:
	.asciz	"sum"                           // string offset=320
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
	.xword	.Lfunc_begin1
	.xword	.Ltmp21
	.xword	.Ltmp31
	.xword	.Ltmp30
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
