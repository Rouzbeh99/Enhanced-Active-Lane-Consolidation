	.text
	.file	"test.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "test.c" md5 0x581f4bd3471b88da4f71fdf0d07a3a26
	.loc	0 4 0                           // test.c:4:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: i <- 0
	.loc	0 7 5 prologue_end              // test.c:7:5
	cmp	w3, #1
	b.lt	.LBB0_5
.Ltmp0:
// %bb.1:                               // %for.body.preheader
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x8, xzr
.Ltmp1:
	.loc	0 7 23                          // test.c:7:23
	mov	w9, w3
	b	.LBB0_3
.Ltmp2:
.LBB0_2:                                // %for.inc
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 7 28                          // test.c:7:28
	add	x8, x8, #1
.Ltmp3:
	//DEBUG_VALUE: i <- $x8
	.loc	0 7 5                           // test.c:7:5
	cmp	x9, x8
	b.eq	.LBB0_5
.Ltmp4:
.LBB0_3:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- $x8
	.loc	0 8 13 is_stmt 1                // test.c:8:13
	tbz	w8, #0, .LBB0_2
.Ltmp5:
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
.Ltmp6:
.LBB0_5:                                // %for.cond.cleanup
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 13 1 is_stmt 1                // test.c:13:1
	ret
.Ltmp7:
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
	stp	x28, x19, [sp, #16]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w28, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	sub	sp, sp, #24, lsl #12            // =98304
.Ltmp8:
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: i <- 0
	.loc	0 27 14 prologue_end            // test.c:27:14
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #32768
	bl	memset
.Ltmp9:
	.loc	0 0 14 is_stmt 0                // test.c:0:14
	mov	x8, xzr
	add	x9, sp, #16, lsl #12            // =65536
	add	x10, sp, #8, lsl #12            // =32768
	mov	w11, #2
.Ltmp10:
.LBB1_1:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: i <- $x8
	.loc	0 25 14 is_stmt 1               // test.c:25:14
	lsl	x12, x8, #2
	str	w8, [x9, x12]
.Ltmp11:
	.loc	0 24 28                         // test.c:24:28
	add	x8, x8, #1
.Ltmp12:
	//DEBUG_VALUE: i <- $x8
	.loc	0 24 5 is_stmt 0                // test.c:24:5
	cmp	x8, #2, lsl #12                 // =8192
.Ltmp13:
	.loc	0 26 14 is_stmt 1               // test.c:26:14
	str	w11, [x10, x12]
.Ltmp14:
	.loc	0 24 5                          // test.c:24:5
	b.ne	.LBB1_1
.Ltmp15:
// %bb.2:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	.loc	0 31 5                          // test.c:31:5
	add	x0, sp, #16, lsl #12            // =65536
	add	x1, sp, #8, lsl #12             // =32768
	mov	x2, sp
	mov	w3, #8192
	mov	x19, sp
	bl	foo
.Ltmp16:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x8, xzr
	mov	w1, wzr
.Ltmp17:
.LBB1_3:                                // %for.body11
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x8
	.loc	0 36 16 is_stmt 1               // test.c:36:16
	ldr	w9, [x19, x8]
.Ltmp18:
	.loc	0 35 23                         // test.c:35:23
	add	x8, x8, #4
.Ltmp19:
	.loc	0 35 5 is_stmt 0                // test.c:35:5
	cmp	x8, #8, lsl #12                 // =32768
.Ltmp20:
	.loc	0 36 13 is_stmt 1               // test.c:36:13
	add	w1, w9, w1
.Ltmp21:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x8
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 35 5                          // test.c:35:5
	b.ne	.LBB1_3
.Ltmp22:
// %bb.4:                               // %for.cond.cleanup10
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:__vla_expr2 <- 8192
	//DEBUG_VALUE: main:__vla_expr1 <- 8192
	//DEBUG_VALUE: main:__vla_expr0 <- 8192
	//DEBUG_VALUE: main:n <- 8192
	.loc	0 38 5                          // test.c:38:5
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
.Ltmp23:
	.loc	0 42 1                          // test.c:42:1
	mov	w0, wzr
	add	sp, sp, #24, lsl #12            // =98304
	.cfi_def_cfa wsp, 32
	ldp	x28, x19, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp24:
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
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp19-.Lfunc_begin0          //   ending offset
	.byte	6                               // Loc expr size
	.byte	120                             // DW_OP_breg8
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp21-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp22-.Lfunc_begin0          //   ending offset
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
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp17-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          //   ending offset
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
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
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
	.byte	12                              // Abbreviation Code
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x12a DW_TAG_compile_unit
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
	.byte	2                               // Abbrev [2] 0x27:0x44 DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_call_all_calls
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	3                               // Abbrev [3] 0x32:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	80
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	246                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x3c:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	246                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x46:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	82
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	246                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0x50:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	83
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x5a:0x10 DW_TAG_lexical_block
	.byte	0                               // DW_AT_low_pc
	.word	.Ltmp6-.Lfunc_begin0            // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0x60:0x9 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x6b:0x87 DW_TAG_subprogram
	.byte	1                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	242                             // DW_AT_type
                                        // DW_AT_external
	.byte	7                               // Abbrev [7] 0x7a:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	12                              // DW_AT_name
	.word	305                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0x82:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	145
	.ascii	"\200\200~"
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.word	256                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x8f:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	14                              // DW_AT_name
	.word	305                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0x97:0xd DW_TAG_variable
	.byte	4                               // DW_AT_location
	.byte	143
	.ascii	"\200\200\002"
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	21                              // DW_AT_decl_line
	.word	275                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0xa4:0x8 DW_TAG_variable
	.ascii	"\200@"                         // DW_AT_const_value
	.byte	15                              // DW_AT_name
	.word	305                             // DW_AT_type
                                        // DW_AT_artificial
	.byte	8                               // Abbrev [8] 0xac:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	22                              // DW_AT_decl_line
	.word	290                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xb7:0xb DW_TAG_variable
	.asciz	"\200\300"                      // DW_AT_const_value
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	18                              // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0xc2:0x9 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	16                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	33                              // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0xcb:0x10 DW_TAG_lexical_block
	.byte	2                               // DW_AT_low_pc
	.word	.Ltmp15-.Ltmp8                  // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0xd1:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	4                               // Abbrev [4] 0xdb:0x10 DW_TAG_lexical_block
	.byte	3                               // DW_AT_low_pc
	.word	.Ltmp22-.Ltmp17                 // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0xe1:0x9 DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	35                              // DW_AT_decl_line
	.word	242                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	10                              // Abbrev [10] 0xeb:0x6 DW_TAG_call_site
	.word	39                              // DW_AT_call_origin
	.byte	4                               // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0xf2:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	12                              // Abbrev [12] 0xf6:0x5 DW_TAG_restrict_type
	.word	251                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0xfb:0x5 DW_TAG_pointer_type
	.word	242                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x100:0xf DW_TAG_array_type
	.word	242                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x105:0x9 DW_TAG_subrange_type
	.word	271                             // DW_AT_type
	.word	122                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	16                              // Abbrev [16] 0x10f:0x4 DW_TAG_base_type
	.byte	11                              // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	14                              // Abbrev [14] 0x113:0xf DW_TAG_array_type
	.word	242                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x118:0x9 DW_TAG_subrange_type
	.word	271                             // DW_AT_type
	.word	143                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	14                              // Abbrev [14] 0x122:0xf DW_TAG_array_type
	.word	242                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x127:0x9 DW_TAG_subrange_type
	.word	271                             // DW_AT_type
	.word	164                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x131:0x4 DW_TAG_base_type
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
	.asciz	"n"                             // string offset=229
.Linfo_string10:
	.asciz	"i"                             // string offset=231
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
	.xword	.Lfunc_begin1
	.xword	.Ltmp8
	.xword	.Ltmp17
	.xword	.Ltmp16
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
