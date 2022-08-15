	.text
	.file	"test.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test" "test.c" md5 0xc5d0df64e1ff873f94aa4d4359d35ec8
	.loc	0 3 0                           // test.c:3:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: i <- 0
	.loc	0 6 5 prologue_end              // test.c:6:5
	cmp	w3, #1
	b.lt	.LBB0_4
.Ltmp0:
// %bb.1:                               // %for.body.preheader
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	x13, #-1
.Ltmp1:
	.loc	0 6 23                          // test.c:6:23
	mov	w8, w3
.Ltmp2:
	.loc	0 6 5                           // test.c:6:5
	add	x9, x2, #32
	add	x10, x1, #32
	add	x11, x0, #32
	mov	w12, #15
	ptrue	p0.s
	mov	z0.s, w13
	index	z1.s, #0, #1
	ptrue	p2.s, vl1
	cmpeq	p1.s, p0/z, z1.s, z0.s
.Ltmp3:
.LBB0_2:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- [DW_OP_constu 4, DW_OP_minus, DW_OP_stack_value] $x12
	.loc	0 7 19 is_stmt 1                // test.c:7:19
	sub	w13, w12, #6
	tst	x13, #0x1
	sub	w13, w12, #1
	cset	w15, eq
.Ltmp4:
	//DEBUG_VALUE: i <- [DW_OP_constu 5, DW_OP_minus, DW_OP_stack_value] $x12
	tst	x13, #0x1
	sub	w13, w12, #4
	cset	w14, eq
	tst	x13, #0x1
	cset	w13, eq
.Ltmp5:
	//DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $x12
	.loc	0 6 5                           // test.c:6:5
	cmp	x8, x12
	b.eq	.LBB0_4
.Ltmp6:
// %bb.3:                               // %if.then
                                        //   in Loop: Header=BB0_2 Depth=1
	//DEBUG_VALUE: i <- [DW_OP_constu 3, DW_OP_minus, DW_OP_stack_value] $x12
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	fmov	s0, w14
	add	x12, x12, #4
	and	z0.s, z0.s, #0x1
	cmpne	p3.s, p0/z, z0.s, #0
	mov	z0.s, p3/z, #1                  // =0x1
	mov	z0.s, p1/m, w15
	and	z0.s, z0.s, #0x1
	cmpne	p3.s, p0/z, z0.s, #0
	mov	z0.s, p3/z, #1                  // =0x1
	mov	z0.s, p2/m, w14
	and	z0.s, z0.s, #0x1
	cmpne	p3.s, p0/z, z0.s, #0
	mov	z0.s, p3/z, #1                  // =0x1
	mov	z0.s, p1/m, w13
	and	z0.s, z0.s, #0x1
	cmpne	p3.s, p0/z, z0.s, #0
	ld1w	{ z0.s }, p3/z, [x11]
	ld1w	{ z1.s }, p3/z, [x10]
	add	x10, x10, #16
	add	x11, x11, #16
	mul	z1.s, p3/m, z1.s, z0.s
	st1w	{ z1.s }, p3, [x9]
	add	x9, x9, #16
	b	.LBB0_2
.Ltmp7:
.LBB0_4:                                // %for.cond.cleanup
	//DEBUG_VALUE: foo:n <- $w3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 11 1 is_stmt 1                // test.c:11:1
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
	.loc	0 13 0                          // test.c:13:0
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	str	x21, [sp, #48]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
.Ltmp9:
	//DEBUG_VALUE: main:n <- 8
	.loc	0 17 9 prologue_end             // test.c:17:9
	movi	v0.2d, #0000000000000000
	mov	x8, xzr
	mov	x9, sp
	adrp	x10, .L__const.main.a
	add	x10, x10, :lo12:.L__const.main.a
	adrp	x11, .L__const.main.b
	add	x11, x11, :lo12:.L__const.main.b
	stp	q0, q0, [sp]
	//DEBUG_VALUE: foo:b <- undef
	//DEBUG_VALUE: foo:a <- undef
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: foo:n <- 8
	//DEBUG_VALUE: foo:c <- $sp
	b	.LBB1_2
.Ltmp10:
.LBB1_1:                                // %for.inc.i
                                        //   in Loop: Header=BB1_2 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 8
	//DEBUG_VALUE: main:n <- 8
	.loc	0 6 28                          // test.c:6:28
	add	x8, x8, #1
.Ltmp11:
	//DEBUG_VALUE: i <- $x8
	.loc	0 6 5 is_stmt 0                 // test.c:6:5
	cmp	x8, #8
	b.eq	.LBB1_4
.Ltmp12:
.LBB1_2:                                // %for.body.i
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 8
	//DEBUG_VALUE: main:n <- 8
	//DEBUG_VALUE: i <- $x8
	.loc	0 7 13 is_stmt 1                // test.c:7:13
	tbz	w8, #0, .LBB1_1
.Ltmp13:
// %bb.3:                               // %if.then.i
                                        //   in Loop: Header=BB1_2 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 8
	//DEBUG_VALUE: main:n <- 8
	.loc	0 8 20                          // test.c:8:20
	lsl	x12, x8, #2
	ldr	w13, [x10, x12]
	.loc	0 8 27 is_stmt 0                // test.c:8:27
	ldr	w14, [x11, x12]
	.loc	0 8 25                          // test.c:8:25
	mul	w13, w14, w13
	.loc	0 8 18                          // test.c:8:18
	str	w13, [x9, x12]
	b	.LBB1_1
.Ltmp14:
.LBB1_4:                                // %for.body.preheader
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: foo:c <- $sp
	//DEBUG_VALUE: foo:n <- 8
	//DEBUG_VALUE: main:n <- 8
	.loc	0 0 18                          // test.c:0:18
	mov	x20, xzr
	mov	x21, sp
	adrp	x19, .L.str
	add	x19, x19, :lo12:.L.str
.Ltmp15:
.LBB1_5:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 8
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x20
	.loc	0 22 23 is_stmt 1               // test.c:22:23
	ldr	w1, [x21, x20]
	.loc	0 22 9 is_stmt 0                // test.c:22:9
	mov	x0, x19
	bl	printf
.Ltmp16:
	//DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x20
	.loc	0 21 23 is_stmt 1               // test.c:21:23
	add	x20, x20, #4
.Ltmp17:
	.loc	0 21 5 is_stmt 0                // test.c:21:5
	cmp	x20, #32
	b.ne	.LBB1_5
.Ltmp18:
// %bb.6:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:n <- 8
	.loc	0 24 5 is_stmt 1                // test.c:24:5
	mov	w0, #10
	bl	putchar
.Ltmp19:
	.loc	0 25 5                          // test.c:25:5
	mov	w0, wzr
	.cfi_def_cfa wsp, 80
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #48]                  // 8-byte Folded Reload
	add	sp, sp, #80
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
	.type	.L__const.main.a,@object        // @__const.main.a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2
.L__const.main.a:
	.word	1                               // 0x1
	.word	4294967295                      // 0xffffffff
	.word	2                               // 0x2
	.word	4294967294                      // 0xfffffffe
	.word	3                               // 0x3
	.word	4294967293                      // 0xfffffffd
	.word	4                               // 0x4
	.word	4294967292                      // 0xfffffffc
	.size	.L__const.main.a, 32

	.type	.L__const.main.b,@object        // @__const.main.b
	.p2align	2
.L__const.main.b:
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.word	2                               // 0x2
	.size	.L__const.main.b, 32

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
	.word	2                               // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	124                             // DW_OP_breg12
	.byte	124                             // -4
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	124                             // DW_OP_breg12
	.byte	123                             // -5
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	124                             // DW_OP_breg12
	.byte	125                             // -3
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp16-.Lfunc_begin0          //   ending offset
	.byte	6                               // Loc expr size
	.byte	132                             // DW_OP_breg20
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp17-.Lfunc_begin0          //   ending offset
	.byte	9                               // Loc expr size
	.byte	132                             // DW_OP_breg20
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	4                               // 4
	.byte	27                              // DW_OP_div
	.byte	17                              // DW_OP_consts
	.byte	1                               // 1
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
	.byte	15                              // Abbreviation Code
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
	.byte	16                              // Abbreviation Code
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
	.byte	17                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	28                              // DW_AT_const_value
	.byte	13                              // DW_FORM_sdata
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	49                              // DW_AT_abstract_origin
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
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
	.byte	20                              // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x10c DW_TAG_compile_unit
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
	.byte	0                               // DW_AT_low_pc
	.word	.Ltmp6-.Lfunc_begin0            // DW_AT_high_pc
	.byte	5                               // Abbrev [5] 0x55:0x6 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.word	130                             // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x5d:0x2f DW_TAG_subprogram
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	3                               // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
                                        // DW_AT_inline
	.byte	7                               // Abbrev [7] 0x61:0x8 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	3                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x69:0x8 DW_TAG_formal_parameter
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	3                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x71:0x8 DW_TAG_formal_parameter
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	3                               // DW_AT_decl_line
	.word	140                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x79:0x8 DW_TAG_formal_parameter
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	3                               // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x81:0xa DW_TAG_lexical_block
	.byte	9                               // Abbrev [9] 0x82:0x8 DW_TAG_variable
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
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
	.byte	13                              // Abbrev [13] 0x9a:0x6d DW_TAG_subprogram
	.byte	1                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0xa9:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	17                              // DW_AT_decl_line
	.word	263                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0xb4:0x9 DW_TAG_variable
	.byte	8                               // DW_AT_const_value
	.byte	8                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xbd:0x8 DW_TAG_variable
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.word	263                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0xc5:0x8 DW_TAG_variable
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	263                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0xcd:0x29 DW_TAG_inlined_subroutine
	.word	93                              // DW_AT_abstract_origin
	.byte	2                               // DW_AT_low_pc
	.word	.Ltmp14-.Ltmp10                 // DW_AT_high_pc
	.byte	0                               // DW_AT_call_file
	.byte	19                              // DW_AT_call_line
	.byte	5                               // DW_AT_call_column
	.byte	3                               // Abbrev [3] 0xda:0x7 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	111
	.word	113                             // DW_AT_abstract_origin
	.byte	17                              // Abbrev [17] 0xe1:0x6 DW_TAG_formal_parameter
	.byte	8                               // DW_AT_const_value
	.word	121                             // DW_AT_abstract_origin
	.byte	4                               // Abbrev [4] 0xe7:0xe DW_TAG_lexical_block
	.byte	2                               // DW_AT_low_pc
	.word	.Ltmp14-.Ltmp10                 // DW_AT_high_pc
	.byte	18                              // Abbrev [18] 0xed:0x7 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	88
	.word	130                             // DW_AT_abstract_origin
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	4                               // Abbrev [4] 0xf6:0x10 DW_TAG_lexical_block
	.byte	3                               // DW_AT_low_pc
	.word	.Ltmp18-.Ltmp15                 // DW_AT_high_pc
	.byte	19                              // Abbrev [19] 0xfc:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	21                              // DW_AT_decl_line
	.word	150                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	20                              // Abbrev [20] 0x107:0xc DW_TAG_array_type
	.word	150                             // DW_AT_type
	.byte	21                              // Abbrev [21] 0x10c:0x6 DW_TAG_subrange_type
	.word	275                             // DW_AT_type
	.byte	8                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x113:0x4 DW_TAG_base_type
	.byte	11                              // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	52                              // Length of String Offsets Set
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
	.xword	.Lfunc_begin1
	.xword	.Ltmp10
	.xword	.Ltmp15
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
