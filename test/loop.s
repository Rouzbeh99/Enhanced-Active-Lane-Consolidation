	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 6	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"loop.c"
	.globl	dijkstra                        @ -- Begin function dijkstra
	.p2align	2
	.type	dijkstra,%function
	.code	32                              @ @dijkstra
dijkstra:
.Lfunc_begin0:
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test" "loop.c" md5 0xaf3fcd32aac6a83366ba5cfdb83941b7
	.loc	0 22 0                          @ loop.c:22:0
	.fnstart
	.cfi_sections .debug_frame
	.cfi_startproc
@ %bb.0:                                @ %entry
	@DEBUG_VALUE: dijkstra:n <- $r0
	@DEBUG_VALUE: dijkstra:s <- $r1
	@DEBUG_VALUE: dijkstra:e <- $r2
	.save	{r4, r5, r6, r7, r11, lr}
	push	{r4, r5, r6, r7, r11, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset lr, -4
	.cfi_offset r11, -8
	.cfi_offset r7, -12
	.cfi_offset r6, -16
	.cfi_offset r5, -20
	.cfi_offset r4, -24
	.pad	#2048
	sub	sp, sp, #2048
	.cfi_def_cfa_offset 2072
	mov	r5, sp
	mov	r6, r2
.Ltmp0:
	@DEBUG_VALUE: dijkstra:e <- $r6
	@DEBUG_VALUE: dijkstra:e <- $r6
	mov	r7, r1
.Ltmp1:
	@DEBUG_VALUE: dijkstra:s <- $r7
	@DEBUG_VALUE: dijkstra:s <- $r7
	mov	r4, r0
.Ltmp2:
	@DEBUG_VALUE: dijkstra:n <- $r4
	@DEBUG_VALUE: dijkstra:n <- $r4
	.loc	0 24 9 prologue_end             @ loop.c:24:9
	mov	r0, r5
	mov	r1, #0
	mov	r2, #2048
	bl	memset
.Ltmp3:
	@DEBUG_VALUE: i <- 0
	@DEBUG_VALUE: dijkstra:vis <- undef
	@DEBUG_VALUE: dijkstra:max <- 1000000
	.loc	0 27 5                          @ loop.c:27:5
	cmp	r4, #1
	blt	.LBB0_3
.Ltmp4:
@ %bb.1:                                @ %for.body.preheader
	@DEBUG_VALUE: dijkstra:max <- 1000000
	@DEBUG_VALUE: i <- 0
	@DEBUG_VALUE: dijkstra:n <- $r4
	@DEBUG_VALUE: dijkstra:s <- $r7
	@DEBUG_VALUE: dijkstra:e <- $r6
	.loc	0 0 5 is_stmt 0                 @ loop.c:0:5
	mov	r1, #576
	.loc	0 27 5                          @ loop.c:27:5
	add	r0, r6, r7, lsl #11
	orr	r1, r1, #999424
	mov	r2, r5
	mov	r3, r4
.Ltmp5:
.LBB0_2:                                @ %for.body
                                        @ =>This Inner Loop Header: Depth=1
	@DEBUG_VALUE: dijkstra:max <- 1000000
	@DEBUG_VALUE: dijkstra:n <- $r4
	@DEBUG_VALUE: dijkstra:e <- $r6
	@DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $r3, $r4
	.loc	0 28 13 is_stmt 1               @ loop.c:28:13
	ldr	r7, [r0], #4
.Ltmp6:
	@DEBUG_VALUE: dijkstra:s <- [DW_OP_LLVM_entry_value 1] $r1
	.loc	0 28 13 is_stmt 0               @ loop.c:28:13
	cmp	r7, #0
	moveq	r7, r1
.Ltmp7:
	.loc	0 29 20 is_stmt 1               @ loop.c:29:20
	str	r7, [r2], #4
.Ltmp8:
	@DEBUG_VALUE: i <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $r3, $r4
	.loc	0 27 23                         @ loop.c:27:23
	subs	r3, r3, #1
.Ltmp9:
	.loc	0 27 5 is_stmt 0                @ loop.c:27:5
	bne	.LBB0_2
.Ltmp10:
.LBB0_3:                                @ %for.cond.cleanup
	@DEBUG_VALUE: dijkstra:max <- 1000000
	@DEBUG_VALUE: dijkstra:n <- $r4
	@DEBUG_VALUE: dijkstra:e <- $r6
	.loc	0 34 12 is_stmt 1               @ loop.c:34:12
	add	r0, r5, r4, lsl #2
	ldr	r0, [r0, #-4]
	.loc	0 34 5 is_stmt 0                @ loop.c:34:5
	add	sp, sp, #2048
	pop	{r4, r5, r6, r7, r11, pc}
.Ltmp11:
.Lfunc_end0:
	.size	dijkstra, .Lfunc_end0-dijkstra
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                            @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                              @ @main
main:
.Lfunc_begin1:
	.loc	0 37 0 is_stmt 1                @ loop.c:37:0
	.fnstart
	.cfi_startproc
@ %bb.0:                                @ %entry
	.loc	0 43 1 prologue_end             @ loop.c:43:1
	mov	r0, #0
	bx	lr
.Ltmp12:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.debug_loclists,"",%progbits
	.long	.Ldebug_list_header_end0-.Ldebug_list_header_start0 @ Length
.Ldebug_list_header_start0:
	.short	5                               @ Version
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
	.long	5                               @ Offset entry count
.Lloclists_table_base0:
	.long	.Ldebug_loc0-.Lloclists_table_base0
	.long	.Ldebug_loc1-.Lloclists_table_base0
	.long	.Ldebug_loc2-.Lloclists_table_base0
	.long	.Ldebug_loc3-.Lloclists_table_base0
	.long	.Ldebug_loc4-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp2-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	80                              @ DW_OP_reg0
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp2-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	84                              @ DW_OP_reg4
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	81                              @ DW_OP_reg1
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	87                              @ DW_OP_reg7
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp10-.Lfunc_begin0          @   ending offset
	.byte	4                               @ Loc expr size
	.byte	163                             @ DW_OP_entry_value
	.byte	1                               @ 1
	.byte	81                              @ DW_OP_reg1
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    @   starting offset
	.uleb128 .Ltmp0-.Lfunc_begin0           @   ending offset
	.byte	1                               @ Loc expr size
	.byte	82                              @ DW_OP_reg2
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp0-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp11-.Lfunc_begin0          @   ending offset
	.byte	1                               @ Loc expr size
	.byte	86                              @ DW_OP_reg6
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           @   ending offset
	.byte	3                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	0                               @ 0
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp8-.Lfunc_begin0           @   ending offset
	.byte	9                               @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	159                             @ DW_OP_stack_value
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp8-.Lfunc_begin0           @   starting offset
	.uleb128 .Ltmp9-.Lfunc_begin0           @   ending offset
	.byte	12                              @ Loc expr size
	.byte	115                             @ DW_OP_breg3
	.byte	0                               @ 0
	.byte	116                             @ DW_OP_breg4
	.byte	0                               @ 0
	.byte	28                              @ DW_OP_minus
	.byte	17                              @ DW_OP_consts
	.byte	127                             @ -1
	.byte	27                              @ DW_OP_div
	.byte	17                              @ DW_OP_consts
	.byte	1                               @ 1
	.byte	34                              @ DW_OP_plus
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               @ DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           @   starting offset
	.uleb128 .Lfunc_end0-.Lfunc_begin0      @   ending offset
	.byte	5                               @ Loc expr size
	.byte	17                              @ DW_OP_consts
	.byte	192                             @ 1000000
	.byte	132                             @ 
	.byte	61                              @ 
	.byte	159                             @ DW_OP_stack_value
	.byte	0                               @ DW_LLE_end_of_list
.Ldebug_list_header_end0:
	.section	.debug_abbrev,"",%progbits
	.byte	1                               @ Abbreviation Code
	.byte	17                              @ DW_TAG_compile_unit
	.byte	1                               @ DW_CHILDREN_yes
	.byte	37                              @ DW_AT_producer
	.byte	37                              @ DW_FORM_strx1
	.byte	19                              @ DW_AT_language
	.byte	5                               @ DW_FORM_data2
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	114                             @ DW_AT_str_offsets_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	16                              @ DW_AT_stmt_list
	.byte	23                              @ DW_FORM_sec_offset
	.byte	27                              @ DW_AT_comp_dir
	.byte	37                              @ DW_FORM_strx1
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	115                             @ DW_AT_addr_base
	.byte	23                              @ DW_FORM_sec_offset
	.ascii	"\214\001"                      @ DW_AT_loclists_base
	.byte	23                              @ DW_FORM_sec_offset
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	2                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	122                             @ DW_AT_call_all_calls
	.byte	25                              @ DW_FORM_flag_present
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	39                              @ DW_AT_prototyped
	.byte	25                              @ DW_FORM_flag_present
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	3                               @ Abbreviation Code
	.byte	5                               @ DW_TAG_formal_parameter
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	4                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	24                              @ DW_FORM_exprloc
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	5                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	2                               @ DW_AT_location
	.byte	34                              @ DW_FORM_loclistx
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	6                               @ Abbreviation Code
	.byte	52                              @ DW_TAG_variable
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	7                               @ Abbreviation Code
	.byte	11                              @ DW_TAG_lexical_block
	.byte	1                               @ DW_CHILDREN_yes
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	8                               @ Abbreviation Code
	.byte	46                              @ DW_TAG_subprogram
	.byte	0                               @ DW_CHILDREN_no
	.byte	17                              @ DW_AT_low_pc
	.byte	27                              @ DW_FORM_addrx
	.byte	18                              @ DW_AT_high_pc
	.byte	6                               @ DW_FORM_data4
	.byte	64                              @ DW_AT_frame_base
	.byte	24                              @ DW_FORM_exprloc
	.byte	122                             @ DW_AT_call_all_calls
	.byte	25                              @ DW_FORM_flag_present
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	58                              @ DW_AT_decl_file
	.byte	11                              @ DW_FORM_data1
	.byte	59                              @ DW_AT_decl_line
	.byte	11                              @ DW_FORM_data1
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	63                              @ DW_AT_external
	.byte	25                              @ DW_FORM_flag_present
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	9                               @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	10                              @ Abbreviation Code
	.byte	1                               @ DW_TAG_array_type
	.byte	1                               @ DW_CHILDREN_yes
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	11                              @ Abbreviation Code
	.byte	33                              @ DW_TAG_subrange_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	55                              @ DW_AT_count
	.byte	5                               @ DW_FORM_data2
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	12                              @ Abbreviation Code
	.byte	36                              @ DW_TAG_base_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	3                               @ DW_AT_name
	.byte	37                              @ DW_FORM_strx1
	.byte	11                              @ DW_AT_byte_size
	.byte	11                              @ DW_FORM_data1
	.byte	62                              @ DW_AT_encoding
	.byte	11                              @ DW_FORM_data1
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	13                              @ Abbreviation Code
	.byte	15                              @ DW_TAG_pointer_type
	.byte	0                               @ DW_CHILDREN_no
	.byte	73                              @ DW_AT_type
	.byte	19                              @ DW_FORM_ref4
	.byte	0                               @ EOM(1)
	.byte	0                               @ EOM(2)
	.byte	0                               @ EOM(3)
	.section	.debug_info,"",%progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 @ Length of Unit
.Ldebug_info_start0:
	.short	5                               @ DWARF version number
	.byte	1                               @ DWARF Unit Type
	.byte	4                               @ Address Size (in bytes)
	.long	.debug_abbrev                   @ Offset Into Abbrev. Section
	.byte	1                               @ Abbrev [1] 0xc:0x9c DW_TAG_compile_unit
	.byte	0                               @ DW_AT_producer
	.short	12                              @ DW_AT_language
	.byte	1                               @ DW_AT_name
	.long	.Lstr_offsets_base0             @ DW_AT_str_offsets_base
	.long	.Lline_table_start0             @ DW_AT_stmt_list
	.byte	2                               @ DW_AT_comp_dir
	.byte	0                               @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       @ DW_AT_high_pc
	.long	.Laddr_table_base0              @ DW_AT_addr_base
	.long	.Lloclists_table_base0          @ DW_AT_loclists_base
	.byte	2                               @ Abbrev [2] 0x27:0x57 DW_TAG_subprogram
	.byte	0                               @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_call_all_calls
	.byte	3                               @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
                                        @ DW_AT_prototyped
	.long	141                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	3                               @ Abbrev [3] 0x36:0x9 DW_TAG_formal_parameter
	.byte	0                               @ DW_AT_location
	.byte	8                               @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	141                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x3f:0x9 DW_TAG_formal_parameter
	.byte	1                               @ DW_AT_location
	.byte	9                               @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	141                             @ DW_AT_type
	.byte	3                               @ Abbrev [3] 0x48:0x9 DW_TAG_formal_parameter
	.byte	2                               @ DW_AT_location
	.byte	10                              @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	22                              @ DW_AT_decl_line
	.long	162                             @ DW_AT_type
	.byte	4                               @ Abbrev [4] 0x51:0xb DW_TAG_variable
	.byte	2                               @ DW_AT_location
	.byte	145
	.byte	0
	.byte	6                               @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	24                              @ DW_AT_decl_line
	.long	145                             @ DW_AT_type
	.byte	5                               @ Abbrev [5] 0x5c:0x9 DW_TAG_variable
	.byte	4                               @ DW_AT_location
	.byte	12                              @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	25                              @ DW_AT_decl_line
	.long	141                             @ DW_AT_type
	.byte	6                               @ Abbrev [6] 0x65:0x8 DW_TAG_variable
	.byte	13                              @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	23                              @ DW_AT_decl_line
	.long	145                             @ DW_AT_type
	.byte	7                               @ Abbrev [7] 0x6d:0x10 DW_TAG_lexical_block
	.byte	1                               @ DW_AT_low_pc
	.long	.Ltmp10-.Ltmp3                  @ DW_AT_high_pc
	.byte	5                               @ Abbrev [5] 0x73:0x9 DW_TAG_variable
	.byte	3                               @ DW_AT_location
	.byte	11                              @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	27                              @ DW_AT_decl_line
	.long	141                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
	.byte	0                               @ End Of Children Mark
	.byte	8                               @ Abbrev [8] 0x7e:0xf DW_TAG_subprogram
	.byte	2                               @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       @ DW_AT_high_pc
	.byte	1                               @ DW_AT_frame_base
	.byte	93
                                        @ DW_AT_call_all_calls
	.byte	5                               @ DW_AT_name
	.byte	0                               @ DW_AT_decl_file
	.byte	37                              @ DW_AT_decl_line
	.long	141                             @ DW_AT_type
                                        @ DW_AT_external
	.byte	9                               @ Abbrev [9] 0x8d:0x4 DW_TAG_base_type
	.byte	4                               @ DW_AT_name
	.byte	5                               @ DW_AT_encoding
	.byte	4                               @ DW_AT_byte_size
	.byte	10                              @ Abbrev [10] 0x91:0xd DW_TAG_array_type
	.long	141                             @ DW_AT_type
	.byte	11                              @ Abbrev [11] 0x96:0x7 DW_TAG_subrange_type
	.long	158                             @ DW_AT_type
	.short	512                             @ DW_AT_count
	.byte	0                               @ End Of Children Mark
	.byte	12                              @ Abbrev [12] 0x9e:0x4 DW_TAG_base_type
	.byte	7                               @ DW_AT_name
	.byte	8                               @ DW_AT_byte_size
	.byte	7                               @ DW_AT_encoding
	.byte	13                              @ Abbrev [13] 0xa2:0x5 DW_TAG_pointer_type
	.long	145                             @ DW_AT_type
	.byte	0                               @ End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",%progbits
	.long	60                              @ Length of String Offsets Set
	.short	5
	.short	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)" @ string offset=0
.Linfo_string1:
	.asciz	"loop.c"                        @ string offset=109
.Linfo_string2:
	.asciz	"/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test" @ string offset=116
.Linfo_string3:
	.asciz	"dijkstra"                      @ string offset=174
.Linfo_string4:
	.asciz	"int"                           @ string offset=183
.Linfo_string5:
	.asciz	"main"                          @ string offset=187
.Linfo_string6:
	.asciz	"dis"                           @ string offset=192
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           @ string offset=196
.Linfo_string8:
	.asciz	"n"                             @ string offset=216
.Linfo_string9:
	.asciz	"s"                             @ string offset=218
.Linfo_string10:
	.asciz	"e"                             @ string offset=220
.Linfo_string11:
	.asciz	"i"                             @ string offset=222
.Linfo_string12:
	.asciz	"max"                           @ string offset=224
.Linfo_string13:
	.asciz	"vis"                           @ string offset=228
	.section	.debug_str_offsets,"",%progbits
	.long	.Linfo_string0
	.long	.Linfo_string1
	.long	.Linfo_string2
	.long	.Linfo_string3
	.long	.Linfo_string4
	.long	.Linfo_string5
	.long	.Linfo_string6
	.long	.Linfo_string7
	.long	.Linfo_string8
	.long	.Linfo_string9
	.long	.Linfo_string10
	.long	.Linfo_string11
	.long	.Linfo_string12
	.long	.Linfo_string13
	.section	.debug_addr,"",%progbits
	.long	.Ldebug_addr_end0-.Ldebug_addr_start0 @ Length of contribution
.Ldebug_addr_start0:
	.short	5                               @ DWARF version number
	.byte	4                               @ Address size
	.byte	0                               @ Segment selector size
.Laddr_table_base0:
	.long	.Lfunc_begin0
	.long	.Ltmp3
	.long	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 1	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
