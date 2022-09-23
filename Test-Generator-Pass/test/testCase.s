	.text
	.file	"testCase.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/test" "testCase.c" md5 0x9ebce2e5df555f7ca91a1cb1694a1449
	.loc	0 4 0                           // testCase.c:4:0
	.cfi_startproc
// %bb.0:                               // %entry
	.loc	0 6 1 prologue_end              // testCase.c:6:1
	ptrue	p0.s, vl4
	ld1w	{ z0.s }, p0/z, [x0]
	ld1w	{ z1.s }, p0/z, [x1]
	mul	z0.s, p0/m, z0.s, z1.s
	st1w	{ z0.s }, p0, [x2]
	ret
.Ltmp0:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	0 8 0                           // testCase.c:8:0
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	str	x21, [sp, #64]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x8, xzr
.Ltmp1:
	.loc	0 9 5 prologue_end              // testCase.c:9:5
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
.Ltmp2:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:__vla_expr2 <- 4
	//DEBUG_VALUE: main:__vla_expr1 <- 4
	//DEBUG_VALUE: main:__vla_expr0 <- 4
	//DEBUG_VALUE: main:n <- 4
	.loc	0 0 5 is_stmt 0                 // testCase.c:0:5
	sub	x9, x29, #16
	add	x10, sp, #16
.Ltmp3:
	.loc	0 19 14 is_stmt 1               // testCase.c:19:14
	str	wzr, [sp, #12]
	stur	xzr, [sp, #4]
.Ltmp4:
.LBB1_1:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 4
	//DEBUG_VALUE: main:__vla_expr0 <- 4
	//DEBUG_VALUE: main:__vla_expr1 <- 4
	//DEBUG_VALUE: main:__vla_expr2 <- 4
	//DEBUG_VALUE: i <- $x8
	.loc	0 17 14                         // testCase.c:17:14
	lsl	x11, x8, #2
	str	w8, [x9, x11]
	.loc	0 18 14                         // testCase.c:18:14
	str	w8, [x10, x11]
.Ltmp5:
	.loc	0 16 28                         // testCase.c:16:28
	add	x8, x8, #1
.Ltmp6:
	//DEBUG_VALUE: i <- $x8
	.loc	0 16 5 is_stmt 0                // testCase.c:16:5
	cmp	x8, #4
	b.ne	.LBB1_1
.Ltmp7:
// %bb.2:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:n <- 4
	//DEBUG_VALUE: main:__vla_expr0 <- 4
	//DEBUG_VALUE: main:__vla_expr1 <- 4
	//DEBUG_VALUE: main:__vla_expr2 <- 4
	//DEBUG_VALUE: foo:a <- [DW_OP_constu 16, DW_OP_minus, DW_OP_stack_value] $fp
	//DEBUG_VALUE: foo:b <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $sp
	//DEBUG_VALUE: foo:c <- $sp
	.loc	0 5 12 is_stmt 1                // testCase.c:5:12
	ldur	w8, [x29, #-16]
.Ltmp8:
	.loc	0 25 9                          // testCase.c:25:9
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
.Ltmp9:
	.loc	0 5 19                          // testCase.c:5:19
	ldr	w9, [sp, #16]
.Ltmp10:
	.loc	0 25 9                          // testCase.c:25:9
	mov	x0, x19
.Ltmp11:
	.loc	0 5 17                          // testCase.c:5:17
	add	w1, w9, w8
	.loc	0 5 10 is_stmt 0                // testCase.c:5:10
	str	w1, [sp]
.Ltmp12:
	//DEBUG_VALUE: i <- 0
	.loc	0 25 9 is_stmt 1                // testCase.c:25:9
	bl	printf
.Ltmp13:
	.loc	0 0 9 is_stmt 0                 // testCase.c:0:9
	mov	w20, #4
.Ltmp14:
	//DEBUG_VALUE: i <- 1
	mov	x21, sp
.Ltmp15:
.LBB1_3:                                // %for.body11.for.body11_crit_edge
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 4
	//DEBUG_VALUE: main:__vla_expr0 <- 4
	//DEBUG_VALUE: main:__vla_expr1 <- 4
	//DEBUG_VALUE: main:__vla_expr2 <- 4
	.loc	0 25 23                         // testCase.c:25:23
	ldr	w1, [x21, x20]
.Ltmp16:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_minus, DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x20
	.loc	0 25 9                          // testCase.c:25:9
	mov	x0, x19
	bl	printf
.Ltmp17:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_minus, DW_OP_consts 4, DW_OP_div, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] $x20
	.loc	0 24 23 is_stmt 1               // testCase.c:24:23
	add	x20, x20, #4
.Ltmp18:
	.loc	0 24 5 is_stmt 0                // testCase.c:24:5
	cmp	x20, #16
	b.ne	.LBB1_3
.Ltmp19:
// %bb.4:                               // %for.cond.cleanup10
	//DEBUG_VALUE: main:n <- 4
	//DEBUG_VALUE: main:__vla_expr0 <- 4
	//DEBUG_VALUE: main:__vla_expr1 <- 4
	//DEBUG_VALUE: main:__vla_expr2 <- 4
	.loc	0 27 5 is_stmt 1                // testCase.c:27:5
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	.loc	0 30 1                          // testCase.c:30:1
	mov	w0, wzr
	.cfi_def_cfa wsp, 96
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	ldr	x21, [sp, #64]                  // 8-byte Folded Reload
	add	sp, sp, #96
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp20:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	6                               // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
	.word	.Ldebug_loc4-.Lloclists_table_base0
	.word	.Ldebug_loc5-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	2                               // Loc expr size
	.byte	52                              // DW_OP_lit4
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	2                               // Loc expr size
	.byte	52                              // DW_OP_lit4
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	2                               // Loc expr size
	.byte	52                              // DW_OP_lit4
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	1                               // 1
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          //   ending offset
	.byte	12                              // Loc expr size
	.byte	132                             // DW_OP_breg20
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	28                              // DW_OP_minus
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	17                              // DW_OP_consts
	.byte	1                               // 1
	.byte	34                              // DW_OP_plus
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp18-.Lfunc_begin0          //   ending offset
	.byte	12                              // Loc expr size
	.byte	132                             // DW_OP_breg20
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	28                              // DW_OP_minus
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	17                              // DW_OP_consts
	.byte	2                               // 2
	.byte	34                              // DW_OP_plus
	.byte	159                             // DW_OP_stack_value
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
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
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
	.byte	5                               // Abbreviation Code
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
	.byte	6                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
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
	.byte	8                               // Abbreviation Code
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
	.byte	9                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	52                              // DW_AT_artificial
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
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
	.byte	11                              // Abbreviation Code
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
	.byte	12                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	29                              // DW_TAG_inlined_subroutine
	.byte	1                               // DW_CHILDREN_yes
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	85                              // DW_AT_ranges
	.byte	35                              // DW_FORM_rnglistx
	.byte	88                              // DW_AT_call_file
	.byte	11                              // DW_FORM_data1
	.byte	89                              // DW_AT_call_line
	.byte	11                              // DW_FORM_data1
	.byte	87                              // DW_AT_call_column
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	85                              // DW_AT_ranges
	.byte	35                              // DW_FORM_rnglistx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x125 DW_TAG_compile_unit
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
	.byte	2                               // Abbrev [2] 0x2b:0x1c DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_call_all_calls
	.word	71                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x37:0x5 DW_TAG_formal_parameter
	.word	75                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x3c:0x5 DW_TAG_formal_parameter
	.word	83                              // DW_AT_abstract_origin
	.byte	3                               // Abbrev [3] 0x41:0x5 DW_TAG_formal_parameter
	.word	91                              // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	4                               // Abbrev [4] 0x47:0x1d DW_TAG_subprogram
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
                                        // DW_AT_inline
	.byte	5                               // Abbrev [5] 0x4b:0x8 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	100                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x53:0x8 DW_TAG_formal_parameter
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	100                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x5b:0x8 DW_TAG_formal_parameter
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	100                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x64:0x5 DW_TAG_pointer_type
	.word	105                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x69:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	8                               // Abbrev [8] 0x6d:0x8e DW_TAG_subprogram
	.byte	1                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	8                               // DW_AT_decl_line
	.word	105                             // DW_AT_type
                                        // DW_AT_external
	.byte	9                               // Abbrev [9] 0x7c:0x7 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	14                              // DW_AT_name
	.word	300                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	10                              // Abbrev [10] 0x83:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	112
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.word	251                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0x8e:0x7 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.word	300                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	10                              // Abbrev [10] 0x95:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	16
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.word	270                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xa0:0x7 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.word	300                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	10                              // Abbrev [10] 0xa7:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.word	285                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0xb2:0x9 DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	15                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.word	105                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0xbb:0x10 DW_TAG_lexical_block
	.byte	2                               // DW_AT_low_pc
	.word	.Ltmp7-.Ltmp3                   // DW_AT_high_pc
	.byte	11                              // Abbrev [11] 0xc1:0x9 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	105                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0xcb:0x23 DW_TAG_inlined_subroutine
	.word	71                              // DW_AT_abstract_origin
	.byte	0                               // DW_AT_ranges
	.byte	0                               // DW_AT_call_file
	.byte	22                              // DW_AT_call_line
	.byte	5                               // DW_AT_call_column
	.byte	14                              // Abbrev [14] 0xd4:0x9 DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	145
	.byte	112
	.byte	159
	.word	75                              // DW_AT_abstract_origin
	.byte	14                              // Abbrev [14] 0xdd:0x9 DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	143
	.byte	16
	.byte	159
	.word	83                              // DW_AT_abstract_origin
	.byte	14                              // Abbrev [14] 0xe6:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	111
	.word	91                              // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0xee:0xc DW_TAG_lexical_block
	.byte	1                               // DW_AT_ranges
	.byte	11                              // Abbrev [11] 0xf0:0x9 DW_TAG_variable
	.byte	5                               // DW_AT_location
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.word	105                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	16                              // Abbrev [16] 0xfb:0xf DW_TAG_array_type
	.word	105                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x100:0x9 DW_TAG_subrange_type
	.word	266                             // DW_AT_type
	.word	124                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x10a:0x4 DW_TAG_base_type
	.byte	9                               // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	16                              // Abbrev [16] 0x10e:0xf DW_TAG_array_type
	.word	105                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x113:0x9 DW_TAG_subrange_type
	.word	266                             // DW_AT_type
	.word	142                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	16                              // Abbrev [16] 0x11d:0xf DW_TAG_array_type
	.word	105                             // DW_AT_type
	.byte	17                              // Abbrev [17] 0x122:0x9 DW_TAG_subrange_type
	.word	266                             // DW_AT_type
	.word	160                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	7                               // Abbrev [7] 0x12c:0x4 DW_TAG_base_type
	.byte	12                              // DW_AT_name
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
	.word	2                               // Offset entry count
.Lrnglists_table_base0:
	.word	.Ldebug_ranges0-.Lrnglists_table_base0
	.word	.Ldebug_ranges1-.Lrnglists_table_base0
.Ldebug_ranges0:
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp9-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp12-.Lfunc_begin0          //   ending offset
	.byte	0                               // DW_RLE_end_of_list
.Ldebug_ranges1:
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          //   ending offset
	.byte	0                               // DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	68                              // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" // string offset=0
.Linfo_string1:
	.asciz	"testCase.c"                    // string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/test" // string offset=120
.Linfo_string3:
	.asciz	"foo"                           // string offset=198
.Linfo_string4:
	.asciz	"a"                             // string offset=202
.Linfo_string5:
	.asciz	"int"                           // string offset=204
.Linfo_string6:
	.asciz	"b"                             // string offset=208
.Linfo_string7:
	.asciz	"c"                             // string offset=210
.Linfo_string8:
	.asciz	"main"                          // string offset=212
.Linfo_string9:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=217
.Linfo_string10:
	.asciz	"i"                             // string offset=237
.Linfo_string11:
	.asciz	"__vla_expr2"                   // string offset=239
.Linfo_string12:
	.asciz	"unsigned long"                 // string offset=251
.Linfo_string13:
	.asciz	"__vla_expr1"                   // string offset=265
.Linfo_string14:
	.asciz	"__vla_expr0"                   // string offset=277
.Linfo_string15:
	.asciz	"n"                             // string offset=289
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
	.xword	.Lfunc_begin1
	.xword	.Ltmp3
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
