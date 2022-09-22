	.text
	.file	"test.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test" "test.c" md5 0xbc781f2842685dbfa8e2a90da871e3ed
	.loc	0 4 0                           // test.c:4:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:n <- $w3
	.loc	0 6 5 prologue_end              // test.c:6:5
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
.Ltmp0:
	//DEBUG_VALUE: i <- 0
	.loc	0 7 5                           // test.c:7:5
	cmp	w3, #1
	b.lt	.LBB0_5
.Ltmp1:
// %bb.1:                               // %for.body.preheader
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x8, xzr
.Ltmp2:
	.loc	0 7 23                          // test.c:7:23
	mov	w9, w3
	b	.LBB0_3
.Ltmp3:
.LBB0_2:                                // %for.inc
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 7 28                          // test.c:7:28
	add	x8, x8, #1
.Ltmp4:
	//DEBUG_VALUE: i <- $x8
	.loc	0 7 5                           // test.c:7:5
	cmp	x9, x8
	b.eq	.LBB0_5
.Ltmp5:
.LBB0_3:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- $x8
	.loc	0 8 13 is_stmt 1                // test.c:8:13
	tbz	w8, #0, .LBB0_2
.Ltmp6:
// %bb.4:                               // %if.then
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 9 20                          // test.c:9:20
	lsl	x10, x8, #2
	ldr	w11, [x0, x10]
	.loc	0 9 27 is_stmt 0                // test.c:9:27
	ldr	w12, [x1, x10]
	.loc	0 9 25                          // test.c:9:25
	mul	w11, w12, w11
	.loc	0 9 18                          // test.c:9:18
	str	w11, [x2, x10]
	b	.LBB0_2
.Ltmp7:
.LBB0_5:                                // %for.cond.cleanup
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 12 5 is_stmt 1                // test.c:12:5
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	.loc	0 13 1                          // test.c:13:1
	ret
.Ltmp8:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	0 16 0                          // test.c:16:0
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	sp, sp, #6, lsl #12             // =24576
.Ltmp9:
	//DEBUG_VALUE: main:n <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: i <- 0
	.loc	0 30 14 prologue_end            // test.c:30:14
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #8192
	bl	memset
.Ltmp10:
	.loc	0 0 14 is_stmt 0                // test.c:0:14
	mov	x8, xzr
	add	x9, sp, #4, lsl #12             // =16384
	add	x10, sp, #2, lsl #12            // =8192
	mov	w11, #2
.Ltmp11:
.LBB1_1:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	//DEBUG_VALUE: i <- $x8
	.loc	0 28 14 is_stmt 1               // test.c:28:14
	lsl	x12, x8, #2
	str	w8, [x9, x12]
.Ltmp12:
	.loc	0 27 28                         // test.c:27:28
	add	x8, x8, #1
.Ltmp13:
	//DEBUG_VALUE: i <- $x8
	.loc	0 27 5 is_stmt 0                // test.c:27:5
	cmp	x8, #2048
.Ltmp14:
	.loc	0 29 14 is_stmt 1               // test.c:29:14
	str	w11, [x10, x12]
.Ltmp15:
	.loc	0 27 5                          // test.c:27:5
	b.ne	.LBB1_1
.Ltmp16:
// %bb.2:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x8, xzr
.Ltmp17:
	//DEBUG_VALUE: foo:n <- 2048
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 8192, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 8192, DW_OP_minus, DW_OP_stack_value] $fp
	.loc	0 6 5 is_stmt 1                 // test.c:6:5
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
	//DEBUG_VALUE: i <- 0
	add	x9, sp, #4, lsl #12             // =16384
	add	x10, sp, #2, lsl #12            // =8192
	mov	x11, sp
	b	.LBB1_4
.Ltmp18:
.LBB1_3:                                // %for.inc.i
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 8192, DW_OP_minus, DW_OP_stack_value] $fp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 8192, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 2048
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	.loc	0 7 28                          // test.c:7:28
	add	x8, x8, #1
.Ltmp19:
	//DEBUG_VALUE: i <- $x8
	.loc	0 7 5 is_stmt 0                 // test.c:7:5
	cmp	x8, #2048
	b.eq	.LBB1_6
.Ltmp20:
.LBB1_4:                                // %for.body.i
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 8192, DW_OP_minus, DW_OP_stack_value] $fp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 8192, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 2048
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	//DEBUG_VALUE: i <- $x8
	.loc	0 8 13 is_stmt 1                // test.c:8:13
	tbz	w8, #0, .LBB1_3
.Ltmp21:
// %bb.5:                               // %if.then.i
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 8192, DW_OP_minus, DW_OP_stack_value] $fp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 8192, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 2048
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	.loc	0 9 20                          // test.c:9:20
	lsl	x12, x8, #2
	ldr	w13, [x9, x12]
	.loc	0 9 27 is_stmt 0                // test.c:9:27
	ldr	w14, [x10, x12]
	.loc	0 9 25                          // test.c:9:25
	mul	w13, w14, w13
	.loc	0 9 18                          // test.c:9:18
	str	w13, [x11, x12]
	b	.LBB1_3
.Ltmp22:
.LBB1_6:                                // %foo.exit
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 8192, DW_OP_minus, DW_OP_stack_value] $fp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 8192, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 2048
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	.loc	0 0 18                          // test.c:0:18
	mov	x8, xzr
	mov	w1, wzr
	.loc	0 12 5 is_stmt 1                // test.c:12:5
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	//DEBUG_VALUE: i <- 0
.Ltmp23:
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x9, sp
.Ltmp24:
.LBB1_7:                                // %for.body11
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x8
	.loc	0 39 16 is_stmt 1               // test.c:39:16
	ldr	w10, [x9, x8]
.Ltmp25:
	.loc	0 38 23                         // test.c:38:23
	add	x8, x8, #4
.Ltmp26:
	.loc	0 38 5 is_stmt 0                // test.c:38:5
	cmp	x8, #2, lsl #12                 // =8192
.Ltmp27:
	.loc	0 39 13 is_stmt 1               // test.c:39:13
	add	w1, w10, w1
.Ltmp28:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 38 5                          // test.c:38:5
	b.ne	.LBB1_7
.Ltmp29:
// %bb.8:                               // %for.cond.cleanup10
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:__vla_expr2 <- 2048
	//DEBUG_VALUE: main:__vla_expr1 <- 2048
	//DEBUG_VALUE: main:__vla_expr0 <- 2048
	//DEBUG_VALUE: main:n <- 2048
	.loc	0 41 5                          // test.c:41:5
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
.Ltmp30:
	.loc	0 45 1                          // test.c:45:1
	mov	w0, wzr
	add	sp, sp, #6, lsl #12             // =24576
	.cfi_def_cfa wsp, 32
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp31:
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
	.uleb128 .Ltmp0-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          //   ending offset
	.byte	6                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp28-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
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
	.uleb128 .Ltmp23-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp30-.Lfunc_begin0          //   ending offset
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
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
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
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	32                              // DW_AT_inline
	.byte	33                              // DW_FORM_implicit_const
	.byte	1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
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
	.byte	8                               // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
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
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
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
	.byte	14                              // Abbreviation Code
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
	.byte	15                              // Abbreviation Code
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
	.byte	16                              // Abbreviation Code
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
	.byte	17                              // Abbreviation Code
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
	.byte	18                              // Abbreviation Code
	.byte	29                              // DW_TAG_inlined_subroutine
	.byte	1                               // DW_CHILDREN_yes
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	88                              // DW_AT_call_file
	.byte	11                              // DW_FORM_data1
	.byte	89                              // DW_AT_call_line
	.byte	11                              // DW_FORM_data1
	.byte	87                              // DW_AT_call_column
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	28                              // DW_AT_const_value
	.byte	13                              // DW_FORM_sdata
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	20                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	23                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x182 DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x27:0x36 DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_call_all_calls
	.word	93                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x33:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	80
	.word	97                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x3a:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.word	105                             // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x41:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	82
	.word	113                             // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x48:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	83
	.word	121                             // DW_AT_abstract_origin
	.byte	4                               // Abbrev [4] 0x4f:0xd DW_TAG_lexical_block
	.byte	1                               // DW_AT_low_pc
	.word	.Ltmp7-.Ltmp0                   // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0x55:0x6 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.word	130                             // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x5d:0x2f DW_TAG_subprogram
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
                                        // DW_AT_inline
	.byte	7                               // Abbrev [7] 0x61:0x8 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x69:0x8 DW_TAG_formal_parameter
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x71:0x8 DW_TAG_formal_parameter
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x79:0x8 DW_TAG_formal_parameter
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x81:0xa DW_TAG_lexical_block
	.byte	9                               // Abbrev [9] 0x82:0x8 DW_TAG_variable
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0x8c:0x5 DW_TAG_restrict_type
	.word	145                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0x91:0x5 DW_TAG_pointer_type
	.word	150                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0x96:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	13                              // Abbrev [13] 0x9a:0xbe DW_TAG_subprogram
	.byte	2                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0xa9:0x8 DW_TAG_variable
	.ascii	"\200\020"                      // DW_AT_const_value
	.byte	12                              // DW_AT_name
	.word	393                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	15                              // Abbrev [15] 0xb1:0xc DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	145
	.ascii	"\200@"
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	23                              // DW_AT_decl_line
	.word	344                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0xbd:0x8 DW_TAG_variable
	.ascii	"\200\020"                      // DW_AT_const_value
	.byte	14                              // DW_AT_name
	.word	393                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	15                              // Abbrev [15] 0xc5:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	143
	.asciz	"\200\300"
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.word	363                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0xd2:0x8 DW_TAG_variable
	.ascii	"\200\020"                      // DW_AT_const_value
	.byte	15                              // DW_AT_name
	.word	393                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	15                              // Abbrev [15] 0xda:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	25                              // DW_AT_decl_line
	.word	378                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0xe5:0xa DW_TAG_variable
	.ascii	"\200\020"                      // DW_AT_const_value
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	21                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0xef:0x9 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	16                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	36                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0xf8:0x10 DW_TAG_lexical_block
	.byte	3                               // DW_AT_low_pc
	.word	.Ltmp16-.Ltmp9                  // DW_AT_high_pc
	.byte	17                              // Abbrev [17] 0xfe:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x108:0x3f DW_TAG_inlined_subroutine
	.word	93                              // DW_AT_abstract_origin
	.byte	4                               // DW_AT_low_pc
	.word	.Ltmp24-.Ltmp17                 // DW_AT_high_pc
	.byte	0                               // DW_AT_call_file
	.byte	34                              // DW_AT_call_line
	.byte	5                               // DW_AT_call_column
	.byte	3                               // Abbrev [3] 0x115:0xa DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	145
	.ascii	"\200@"
	.byte	159
	.word	97                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x11f:0xb DW_TAG_formal_parameter
	.byte	5                               // DW_AT_location
	.byte	143
	.asciz	"\200\300"
	.byte	159
	.word	105                             // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x12a:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	111
	.word	113                             // DW_AT_abstract_origin
	.byte	19                              // Abbrev [19] 0x131:0x7 DW_TAG_formal_parameter
	.ascii	"\200\020"                      // DW_AT_const_value
	.word	121                             // DW_AT_abstract_origin
	.byte	4                               // Abbrev [4] 0x138:0xe DW_TAG_lexical_block
	.byte	5                               // DW_AT_low_pc
	.word	.Ltmp22-.Ltmp18                 // DW_AT_high_pc
	.byte	20                              // Abbrev [20] 0x13e:0x7 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	88
	.word	130                             // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	4                               // Abbrev [4] 0x147:0x10 DW_TAG_lexical_block
	.byte	6                               // DW_AT_low_pc
	.word	.Ltmp29-.Ltmp24                 // DW_AT_high_pc
	.byte	17                              // Abbrev [17] 0x14d:0x9 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	38                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	21                              // Abbrev [21] 0x158:0xf DW_TAG_array_type
	.word	150                             // DW_AT_type
	.byte	22                              // Abbrev [22] 0x15d:0x9 DW_TAG_subrange_type
	.word	359                             // DW_AT_type
	.word	169                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x167:0x4 DW_TAG_base_type
	.byte	11                              // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	21                              // Abbrev [21] 0x16b:0xf DW_TAG_array_type
	.word	150                             // DW_AT_type
	.byte	22                              // Abbrev [22] 0x170:0x9 DW_TAG_subrange_type
	.word	359                             // DW_AT_type
	.word	189                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	21                              // Abbrev [21] 0x17a:0xf DW_TAG_array_type
	.word	150                             // DW_AT_type
	.byte	22                              // Abbrev [22] 0x17f:0x9 DW_TAG_subrange_type
	.word	359                             // DW_AT_type
	.word	210                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x189:0x4 DW_TAG_base_type
	.byte	13                              // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	72                              // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" // string offset=0
.Linfo_string1:
	.asciz	"test.c"                        // string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test" // string offset=116
.Linfo_string3:
	.asciz	"foo"                           // string offset=210
.Linfo_string4:
	.asciz	"a"                             // string offset=214
.Linfo_string5:
	.asciz	"int"                           // string offset=216
.Linfo_string6:
	.asciz	"b"                             // string offset=220
.Linfo_string7:
	.asciz	"c"                             // string offset=222
.Linfo_string8:
	.asciz	"n"                             // string offset=224
.Linfo_string9:
	.asciz	"i"                             // string offset=226
.Linfo_string10:
	.asciz	"main"                          // string offset=228
.Linfo_string11:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=233
.Linfo_string12:
	.asciz	"__vla_expr0"                   // string offset=253
.Linfo_string13:
	.asciz	"unsigned long"                 // string offset=265
.Linfo_string14:
	.asciz	"__vla_expr1"                   // string offset=279
.Linfo_string15:
	.asciz	"__vla_expr2"                   // string offset=291
.Linfo_string16:
	.asciz	"sum"                           // string offset=303
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
	.xword	.Ltmp0
	.xword	.Lfunc_begin1
	.xword	.Ltmp9
	.xword	.Ltmp17
	.xword	.Ltmp18
	.xword	.Ltmp24
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
