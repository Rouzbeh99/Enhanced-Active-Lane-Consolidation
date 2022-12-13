	.text
	.file	"test.c"
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "test.c" md5 0xbeab8233bb95bfe1c9164deb7ec2fe7b
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin0:
	.loc	0 13 0                          // test.c:13:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: j <- 0
	.loc	0 20 9 prologue_end             // test.c:20:9
	cmp	w4, #1
	b.lt	.LBB0_17
.Ltmp0:
// %bb.1:                               // %for.cond1.preheader.us.preheader
	//DEBUG_VALUE: j <- 0
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	mov	w8, wzr
	mov	w9, w4
	mov	w12, #-3
	cntw	x10
	cnth	x11
	ptrue	p0.s
	index	z0.s, #0, #1
	index	z1.s, #0, #2
	mov	z3.s, #-3                       // =0xfffffffffffffffd
	movprfx	z2, z0
	mul	z2.s, p0/m, z2.s, z0.s
	b	.LBB0_3
.Ltmp1:
.LBB0_2:                                // %for.cond1.for.cond.cleanup3_crit_edge.us
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 19 30 is_stmt 1               // test.c:19:30
	add	w8, w8, #1
.Ltmp2:
	//DEBUG_VALUE: j <- $w8
	.loc	0 19 5 is_stmt 0                // test.c:19:5
	cmp	w8, #10
	b.eq	.LBB0_17
.Ltmp3:
.LBB0_3:                                // %for.cond1.preheader.us
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
                                        //     Child Loop BB0_15 Depth 2
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: i <- 0
	.loc	0 20 9 is_stmt 1                // test.c:20:9
	cmp	w11, w4
	b.ls	.LBB0_5
.Ltmp4:
// %bb.4:                               //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	mov	x13, xzr
	b	.LBB0_13
.Ltmp5:
.LBB0_5:                                // %pre.alc
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	udiv	w13, w4, w10
	ld1b	{ z4.s }, p0/z, [x3]
	and	z4.s, z4.s, #0xff
	cmpne	p1.s, p0/z, z4.s, #0
	cntp	x16, p1, p1.s
	mul	w15, w13, w10
	mov	w13, w10
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
	sub	w14, w4, w15
	b	.LBB0_8
.Ltmp6:
.LBB0_6:                                // %linearized
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	ld1w	{ z4.s }, p2/z, [x2, x17, lsl #2]
	ld1w	{ z5.s }, p2/z, [x1, x17, lsl #2]
	index	z6.s, w13, #1
	lsl	z7.s, z4.s, #1
	adr	z16.s, [z5.s, z6.s, lsl #1]
	sub	z7.s, z16.s, z7.s
	sub	z16.s, z3.s, z4.s
	mla	z7.s, p0/m, z5.s, z6.s
	add	z5.s, z5.s, z4.s
	mul	z16.s, p0/m, z16.s, z6.s
	sub	z5.s, z7.s, z5.s
	adr	z5.s, [z16.s, z5.s, lsl #1]
	movprfx	z16, z6
	mul	z16.s, p0/m, z16.s, z6.s
	add	z5.s, z5.s, #2                  // =0x2
	sub	z6.s, z7.s, z6.s
	sub	z4.s, z4.s, z5.s
	add	z6.s, z6.s, z5.s
	adr	z4.s, [z16.s, z4.s, lsl #1]
	st1w	{ z7.s }, p2, [x0, x17, lsl #2]
	mul	z4.s, z4.s, #-3
	st1w	{ z5.s }, p2, [x1, x17, lsl #2]
	adr	z4.s, [z4.s, z6.s, lsl #1]
	st1w	{ z4.s }, p2, [x2, x17, lsl #2]
.Ltmp7:
.LBB0_7:                                // %new.latch
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	add	w13, w13, w10
	cmp	w13, w15
	b.hs	.LBB0_12
.Ltmp8:
.LBB0_8:                                // %alc.header
                                        //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 21 17 is_stmt 1               // test.c:21:17
	sxtw	x17, w13
	ld1b	{ z4.s }, p0/z, [x3, x17]
	and	z4.s, z4.s, #0xff
	cmpne	p2.s, p0/z, z4.s, #0
	cntp	x18, p2, p2.s
	add	w18, w16, w18
	cmp	w18, w10
	b.hi	.LBB0_6
.Ltmp9:
// %bb.9:                               // %lane.gather
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 17 is_stmt 0                // test.c:0:17
	cmp	w18, w10
	b.ne	.LBB0_11
.Ltmp10:
// %bb.10:                              // %uniform.block
                                        //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	ld1w	{ z4.s }, p0/z, [x2, z0.s, sxtw #2]
	ld1w	{ z5.s }, p0/z, [x1, z0.s, sxtw #2]
	add	w13, w13, w10
	.loc	0 21 17                         // test.c:21:17
	sxtw	x16, w13
                                        // kill: def $w13 killed $w13 killed $x13 def $x13
	lsl	z6.s, z4.s, #1
	add	z7.s, z5.s, z1.s
	sub	z6.s, z7.s, z6.s
	sub	z7.s, z3.s, z4.s
	mla	z6.s, p0/m, z5.s, z0.s
	add	z5.s, z5.s, z4.s
	mul	z7.s, p0/m, z7.s, z0.s
	sub	z5.s, z6.s, z5.s
	adr	z5.s, [z7.s, z5.s, lsl #1]
	sub	z7.s, z6.s, z0.s
	add	z5.s, z5.s, #2                  // =0x2
	st1w	{ z6.s }, p0, [x0, z0.s, sxtw #2]
	sub	z4.s, z4.s, z5.s
	add	z7.s, z7.s, z5.s
	adr	z4.s, [z2.s, z4.s, lsl #1]
	st1w	{ z5.s }, p0, [x1, z0.s, sxtw #2]
	mul	z4.s, z4.s, #-3
	adr	z4.s, [z4.s, z7.s, lsl #1]
	st1w	{ z4.s }, p0, [x2, z0.s, sxtw #2]
	ld1b	{ z4.s }, p0/z, [x3, x16]
	and	z4.s, z4.s, #0xff
	cmpne	p1.s, p0/z, z4.s, #0
	cntp	x16, p1, p1.s
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
	b	.LBB0_7
.Ltmp11:
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 0 17                          // test.c:0:17
	whilelt	p1.s, wzr, w18
	cntp	x16, p1, p1.s
	b	.LBB0_7
.Ltmp12:
.LBB0_12:                               // %middel.block
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	ld1w	{ z4.s }, p1/z, [x2, z0.s, sxtw #2]
	ld1w	{ z5.s }, p1/z, [x1, z0.s, sxtw #2]
	lsl	z6.s, z4.s, #1
	add	z7.s, z5.s, z1.s
	sub	z6.s, z7.s, z6.s
	sub	z7.s, z3.s, z4.s
	mla	z6.s, p0/m, z5.s, z0.s
	add	z5.s, z5.s, z4.s
	mul	z7.s, p0/m, z7.s, z0.s
	sub	z5.s, z6.s, z5.s
	adr	z5.s, [z7.s, z5.s, lsl #1]
	sub	z7.s, z6.s, z0.s
	add	z5.s, z5.s, #2                  // =0x2
	st1w	{ z6.s }, p1, [x0, z0.s, sxtw #2]
	sub	z4.s, z4.s, z5.s
	add	z7.s, z7.s, z5.s
	adr	z4.s, [z2.s, z4.s, lsl #1]
	st1w	{ z5.s }, p1, [x1, z0.s, sxtw #2]
	mul	z4.s, z4.s, #-3
	adr	z4.s, [z4.s, z7.s, lsl #1]
	st1w	{ z4.s }, p1, [x2, z0.s, sxtw #2]
	cbz	w14, .LBB0_2
.Ltmp13:
.LBB0_13:                               // %for.body4.us.preheader
                                        //   in Loop: Header=BB0_3 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 20 9 is_stmt 1                // test.c:20:9
	and	x15, x13, #0x7fffffff
	add	w14, w13, #1
	lsl	x15, x15, #1
	b	.LBB0_15
.Ltmp14:
.LBB0_14:                               // %for.inc.us
                                        //   in Loop: Header=BB0_15 Depth=2
	//DEBUG_VALUE: i <- $x13
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 20 32 is_stmt 0               // test.c:20:32
	add	x13, x13, #1
.Ltmp15:
	//DEBUG_VALUE: i <- $x13
	.loc	0 20 27                         // test.c:20:27
	add	w14, w14, #1
	add	x15, x15, #2
.Ltmp16:
	.loc	0 20 9                          // test.c:20:9
	cmp	x9, x13
	b.eq	.LBB0_2
.Ltmp17:
.LBB0_15:                               // %for.body4.us
                                        //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: i <- $x13
	.loc	0 21 17 is_stmt 1               // test.c:21:17
	ldrb	w16, [x3, x13]
.Ltmp18:
	.loc	0 21 17 is_stmt 0               // test.c:21:17
	cbz	w16, .LBB0_14
.Ltmp19:
// %bb.16:                              // %if.then.us
                                        //   in Loop: Header=BB0_15 Depth=2
	//DEBUG_VALUE: i <- $x13
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 22 40 is_stmt 1               // test.c:22:40
	lsl	x16, x13, #2
	ldr	w17, [x2, x16]
	.loc	0 22 49 is_stmt 0               // test.c:22:49
	ldr	w18, [x1, x16]
	.loc	0 23 22 is_stmt 1               // test.c:23:22
	lsl	w5, w17, #1
	.loc	0 25 31                         // test.c:25:31
	sub	w7, w12, w17
	add	w6, w5, w17
	.loc	0 23 22                         // test.c:23:22
	neg	w5, w5
	neg	w6, w6
	.loc	0 25 31                         // test.c:25:31
	mul	w7, w7, w13
	madd	w6, w18, w13, w6
	.loc	0 23 22                         // test.c:23:22
	madd	w18, w18, w14, w5
	add	w6, w15, w6
	.loc	0 24 37                         // test.c:24:37
	add	w6, w7, w6, lsl #1
	.loc	0 25 22                         // test.c:25:22
	add	w5, w6, #2
	.loc	0 26 75                         // test.c:26:75
	mul	w6, w13, w13
	.loc	0 26 60 is_stmt 0               // test.c:26:60
	sub	w17, w17, w5
	.loc	0 25 22 is_stmt 1               // test.c:25:22
	str	w5, [x1, x16]
	.loc	0 26 71                         // test.c:26:71
	add	w17, w6, w17, lsl #1
	.loc	0 26 44 is_stmt 0               // test.c:26:44
	add	w6, w13, w18
	add	w6, w6, w5
	.loc	0 23 22 is_stmt 1               // test.c:23:22
	add	w18, w15, w18
	.loc	0 26 48                         // test.c:26:48
	sub	w17, w17, w17, lsl #2
	.loc	0 27 22                         // test.c:27:22
	add	w17, w17, w6, lsl #1
	.loc	0 23 22                         // test.c:23:22
	str	w18, [x0, x16]
	.loc	0 27 22                         // test.c:27:22
	str	w17, [x2, x16]
	b	.LBB0_14
.Ltmp20:
.LBB0_17:                               // %for.cond.cleanup
	//DEBUG_VALUE: foo:n <- $w4
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:a <- $x0
	.loc	0 34 1                          // test.c:34:1
	ret
.Ltmp21:
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        // -- End function
	.globl	checked_malloc_int_array        // -- Begin function checked_malloc_int_array
	.p2align	2
	.type	checked_malloc_int_array,@function
checked_malloc_int_array:               // @checked_malloc_int_array
.Lfunc_begin1:
	.loc	0 41 0                          // test.c:41:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: checked_malloc_int_array:n <- $w0
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
                                        // kill: def $w0 killed $w0 def $x0
.Ltmp22:
	.loc	0 42 43 prologue_end            // test.c:42:43
	sbfiz	x0, x0, #2, #32
.Ltmp23:
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 42 24 is_stmt 0               // test.c:42:24
	bl	malloc
.Ltmp24:
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	.loc	0 43 9 is_stmt 1                // test.c:43:9
	cbz	x0, .LBB1_2
.Ltmp25:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 47 5                          // test.c:47:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp26:
.LBB1_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 44 9                          // test.c:44:9
	adrp	x0, .Lstr.2
.Ltmp27:
	add	x0, x0, :lo12:.Lstr.2
	bl	puts
.Ltmp28:
	.loc	0 45 9                          // test.c:45:9
	mov	w0, #1
	bl	exit
.Ltmp29:
.Lfunc_end1:
	.size	checked_malloc_int_array, .Lfunc_end1-checked_malloc_int_array
	.cfi_endproc
                                        // -- End function
	.globl	checked_malloc_bool_array       // -- Begin function checked_malloc_bool_array
	.p2align	2
	.type	checked_malloc_bool_array,@function
checked_malloc_bool_array:              // @checked_malloc_bool_array
.Lfunc_begin2:
	.loc	0 50 0                          // test.c:50:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: checked_malloc_bool_array:n <- $w0
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
                                        // kill: def $w0 killed $w0 def $x0
.Ltmp30:
	.loc	0 51 48 prologue_end            // test.c:51:48
	sxtw	x0, w0
.Ltmp31:
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 51 26 is_stmt 0               // test.c:51:26
	bl	malloc
.Ltmp32:
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	.loc	0 52 9 is_stmt 1                // test.c:52:9
	cbz	x0, .LBB2_2
.Ltmp33:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 56 5                          // test.c:56:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp34:
.LBB2_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 53 9                          // test.c:53:9
	adrp	x0, .Lstr.2
.Ltmp35:
	add	x0, x0, :lo12:.Lstr.2
	bl	puts
.Ltmp36:
	.loc	0 54 9                          // test.c:54:9
	mov	w0, #1
	bl	exit
.Ltmp37:
.Lfunc_end2:
	.size	checked_malloc_bool_array, .Lfunc_end2-checked_malloc_bool_array
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin3:
	.loc	0 59 0                          // test.c:59:0
	.cfi_startproc
// %bb.0:                               // %entry
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x22, x21, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
.Ltmp38:
	.loc	0 63 9 prologue_end             // test.c:63:9
	mov	w0, #19264
	mov	w19, #19264
	movk	w0, #76, lsl #16
	movk	w19, #76, lsl #16
.Ltmp39:
	//DEBUG_VALUE: main:n <- 5000000
	bl	checked_malloc_int_array
.Ltmp40:
	.loc	0 63 7 is_stmt 0                // test.c:63:7
	adrp	x21, a
	str	x0, [x21, :lo12:a]
	.loc	0 64 9 is_stmt 1                // test.c:64:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp41:
	.loc	0 64 7 is_stmt 0                // test.c:64:7
	adrp	x22, b
	str	x0, [x22, :lo12:b]
	.loc	0 65 9 is_stmt 1                // test.c:65:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp42:
	.loc	0 65 7 is_stmt 0                // test.c:65:7
	adrp	x20, c
	str	x0, [x20, :lo12:c]
	.loc	0 66 12 is_stmt 1               // test.c:66:12
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_bool_array
.Ltmp43:
	.loc	0 0 12 is_stmt 0                // test.c:0:12
	mov	w9, #52429
	.loc	0 66 12                         // test.c:66:12
	mov	x3, x0
	mov	x8, xzr
	ldr	x0, [x21, :lo12:a]
	.loc	0 66 10                         // test.c:66:10
	adrp	x12, cond
	ldr	x1, [x22, :lo12:b]
	ldr	x2, [x20, :lo12:c]
	//DEBUG_VALUE: i <- 0
	movk	w9, #52428, lsl #16
	mov	w10, #-10
	mov	w11, #2
	str	x3, [x12, :lo12:cond]
	b	.LBB3_2
.Ltmp44:
.LBB3_1:                                // %cond.false
                                        //   in Loop: Header=BB3_2 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 0 0                           // test.c:0:0
	and	x12, x8, #0xffffffff
	mul	x12, x12, x9
	lsr	x12, x12, #35
	mul	w12, w12, w10
	.loc	0 72 41 is_stmt 1               // test.c:72:41
	cmn	w8, w12
	cset	w12, eq
	.loc	0 72 17 is_stmt 0               // test.c:72:17
	strb	w12, [x3, x8]
.Ltmp45:
	.loc	0 68 28 is_stmt 1               // test.c:68:28
	add	x8, x8, #1
.Ltmp46:
	//DEBUG_VALUE: i <- $x8
	.loc	0 68 5 is_stmt 0                // test.c:68:5
	cmp	x19, x8
	b.eq	.LBB3_4
.Ltmp47:
.LBB3_2:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: i <- $x8
	.loc	0 69 14 is_stmt 1               // test.c:69:14
	lsl	x12, x8, #2
	str	w8, [x0, x12]
	.loc	0 70 14                         // test.c:70:14
	str	w11, [x1, x12]
	.loc	0 71 14                         // test.c:71:14
	str	wzr, [x2, x12]
	.loc	0 72 20                         // test.c:72:20
	cbnz	x8, .LBB3_1
.Ltmp48:
// %bb.3:                               //   in Loop: Header=BB3_2 Depth=1
	//DEBUG_VALUE: i <- $x8
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 0 20 is_stmt 0                // test.c:0:20
	mov	w12, wzr
	.loc	0 72 17                         // test.c:72:17
	strb	w12, [x3, x8]
.Ltmp49:
	.loc	0 68 28 is_stmt 1               // test.c:68:28
	add	x8, x8, #1
.Ltmp50:
	//DEBUG_VALUE: i <- $x8
	.loc	0 68 5 is_stmt 0                // test.c:68:5
	cmp	x19, x8
	b.ne	.LBB3_2
.Ltmp51:
.LBB3_4:                                // %for.cond.cleanup
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 75 5 is_stmt 1                // test.c:75:5
	mov	w4, #19264
	movk	w4, #76, lsl #16
	bl	foo
.Ltmp52:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	w1, wzr
	ldr	x8, [x20, :lo12:c]
.Ltmp53:
.LBB3_5:                                // %for.body17
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x19
	.loc	0 80 16 is_stmt 1               // test.c:80:16
	ldr	w9, [x8], #4
.Ltmp54:
	.loc	0 79 23                         // test.c:79:23
	subs	x19, x19, #1
.Ltmp55:
	.loc	0 80 13                         // test.c:80:13
	add	w1, w9, w1
.Ltmp56:
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x19
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 79 5                          // test.c:79:5
	b.ne	.LBB3_5
.Ltmp57:
// %bb.6:                               // %for.cond.cleanup16
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 83 5                          // test.c:83:5
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
.Ltmp58:
	.loc	0 85 5                          // test.c:85:5
	mov	w0, wzr
	.cfi_def_cfa wsp, 48
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp59:
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        // -- End function
	.type	a,@object                       // @a
	.bss
	.globl	a
	.p2align	3
a:
	.xword	0
	.size	a, 8

	.type	b,@object                       // @b
	.globl	b
	.p2align	3
b:
	.xword	0
	.size	b, 8

	.type	c,@object                       // @c
	.globl	c
	.p2align	3
c:
	.xword	0
	.size	c, 8

	.type	cond,@object                    // @cond
	.globl	cond
	.p2align	3
cond:
	.xword	0
	.size	cond, 8

	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"%d \n"
	.size	.L.str.1, 5

	.type	.Lstr.2,@object                 // @str.2
.Lstr.2:
	.asciz	"error: failed to allocate memory"
	.size	.Lstr.2, 33

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	9                               // Offset entry count
.Lloclists_table_base0:
	.word	.Ldebug_loc0-.Lloclists_table_base0
	.word	.Ldebug_loc1-.Lloclists_table_base0
	.word	.Ldebug_loc2-.Lloclists_table_base0
	.word	.Ldebug_loc3-.Lloclists_table_base0
	.word	.Ldebug_loc4-.Lloclists_table_base0
	.word	.Ldebug_loc5-.Lloclists_table_base0
	.word	.Ldebug_loc6-.Lloclists_table_base0
	.word	.Ldebug_loc7-.Lloclists_table_base0
	.word	.Ldebug_loc8-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp1-.Lfunc_begin0           //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp1-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	93                              // DW_OP_reg13
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp23-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp23-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp24-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      //   ending offset
	.byte	6                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp55-.Lfunc_begin0          //   ending offset
	.byte	12                              // Loc expr size
	.byte	131                             // DW_OP_breg19
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	28                              // DW_OP_minus
	.byte	17                              // DW_OP_consts
	.byte	127                             // -1
	.byte	27                              // DW_OP_div
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp56-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp57-.Lfunc_begin0          //   ending offset
	.byte	15                              // Loc expr size
	.byte	131                             // DW_OP_breg19
	.byte	0                               // 0
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	28                              // DW_OP_minus
	.byte	17                              // DW_OP_consts
	.byte	127                             // -1
	.byte	27                              // DW_OP_div
	.byte	17                              // DW_OP_consts
	.byte	1                               // 1
	.byte	34                              // DW_OP_plus
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp53-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp58-.Lfunc_begin0          //   ending offset
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
	.byte	3                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
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
	.byte	5                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
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
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
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
	.byte	8                               // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
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
	.byte	10                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	85                              // DW_AT_ranges
	.byte	35                              // DW_FORM_rnglistx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
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
	.byte	12                              // Abbreviation Code
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
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.byte	55                              // DW_TAG_restrict_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
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
	.byte	1                               // Abbrev [1] 0xc:0x168 DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	4                               // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lrnglists_table_base0          // DW_AT_rnglists_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               // DW_AT_name
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	36                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               // Abbrev [3] 0x36:0x5 DW_TAG_pointer_type
	.word	59                              // DW_AT_type
	.byte	4                               // Abbrev [4] 0x3b:0x4 DW_TAG_base_type
	.byte	4                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x3f:0xb DW_TAG_variable
	.byte	5                               // DW_AT_name
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	37                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	1
	.byte	2                               // Abbrev [2] 0x4a:0xb DW_TAG_variable
	.byte	6                               // DW_AT_name
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	38                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	2
	.byte	2                               // Abbrev [2] 0x55:0xb DW_TAG_variable
	.byte	7                               // DW_AT_name
	.word	96                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               // Abbrev [3] 0x60:0x5 DW_TAG_pointer_type
	.word	101                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x65:0x4 DW_TAG_base_type
	.byte	8                               // DW_AT_name
	.byte	2                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	5                               // Abbrev [5] 0x69:0x1 DW_TAG_pointer_type
	.byte	6                               // Abbrev [6] 0x6a:0x5a DW_TAG_subprogram
	.byte	4                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	111
                                        // DW_AT_call_all_calls
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	7                               // Abbrev [7] 0x75:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	80
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.word	361                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x7f:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	81
	.byte	5                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.word	361                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x89:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	82
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.word	361                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x93:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	83
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.word	366                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x9d:0xa DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	84
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0xa7:0x1c DW_TAG_lexical_block
	.byte	4                               // DW_AT_low_pc
	.word	.Ltmp20-.Lfunc_begin0           // DW_AT_high_pc
	.byte	9                               // Abbrev [9] 0xad:0x9 DW_TAG_variable
	.byte	0                               // DW_AT_location
	.byte	14                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	10                              // Abbrev [10] 0xb6:0xc DW_TAG_lexical_block
	.byte	0                               // DW_AT_ranges
	.byte	9                               // Abbrev [9] 0xb8:0x9 DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	15                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0xc4:0x22 DW_TAG_subprogram
	.byte	5                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	10                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0xd3:0x9 DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	41                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	9                               // Abbrev [9] 0xdc:0x9 DW_TAG_variable
	.byte	3                               // DW_AT_location
	.byte	16                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	42                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0xe6:0x22 DW_TAG_subprogram
	.byte	6                               // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	50                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	96                              // DW_AT_type
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0xf5:0x9 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	50                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	9                               // Abbrev [9] 0xfe:0x9 DW_TAG_variable
	.byte	5                               // DW_AT_location
	.byte	16                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	51                              // DW_AT_decl_line
	.word	96                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x108:0x61 DW_TAG_subprogram
	.byte	7                               // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	12                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	59                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
                                        // DW_AT_external
	.byte	9                               // Abbrev [9] 0x117:0x9 DW_TAG_variable
	.byte	6                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	61                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	9                               // Abbrev [9] 0x120:0x9 DW_TAG_variable
	.byte	8                               // DW_AT_location
	.byte	17                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	77                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0x129:0x11 DW_TAG_lexical_block
	.byte	8                               // DW_AT_low_pc
	.word	.Ltmp51-.Ltmp44                 // DW_AT_high_pc
	.byte	14                              // Abbrev [14] 0x12f:0xa DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	88
	.byte	15                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	68                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0x13a:0x10 DW_TAG_lexical_block
	.byte	9                               // DW_AT_low_pc
	.word	.Ltmp57-.Ltmp53                 // DW_AT_high_pc
	.byte	9                               // Abbrev [9] 0x140:0x9 DW_TAG_variable
	.byte	7                               // DW_AT_location
	.byte	15                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	79                              // DW_AT_decl_line
	.word	59                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x14a:0x6 DW_TAG_call_site
	.word	196                             // DW_AT_call_origin
	.byte	10                              // DW_AT_call_return_pc
	.byte	15                              // Abbrev [15] 0x150:0x6 DW_TAG_call_site
	.word	196                             // DW_AT_call_origin
	.byte	11                              // DW_AT_call_return_pc
	.byte	15                              // Abbrev [15] 0x156:0x6 DW_TAG_call_site
	.word	196                             // DW_AT_call_origin
	.byte	12                              // DW_AT_call_return_pc
	.byte	15                              // Abbrev [15] 0x15c:0x6 DW_TAG_call_site
	.word	230                             // DW_AT_call_origin
	.byte	13                              // DW_AT_call_return_pc
	.byte	15                              // Abbrev [15] 0x162:0x6 DW_TAG_call_site
	.word	106                             // DW_AT_call_origin
	.byte	14                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	16                              // Abbrev [16] 0x169:0x5 DW_TAG_restrict_type
	.word	54                              // DW_AT_type
	.byte	16                              // Abbrev [16] 0x16e:0x5 DW_TAG_restrict_type
	.word	96                              // DW_AT_type
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
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp20-.Lfunc_begin0          //   ending offset
	.byte	0                               // DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	76                              // Length of String Offsets Set
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
	.asciz	"a"                             // string offset=210
.Linfo_string4:
	.asciz	"int"                           // string offset=212
.Linfo_string5:
	.asciz	"b"                             // string offset=216
.Linfo_string6:
	.asciz	"c"                             // string offset=218
.Linfo_string7:
	.asciz	"cond"                          // string offset=220
.Linfo_string8:
	.asciz	"_Bool"                         // string offset=225
.Linfo_string9:
	.asciz	"foo"                           // string offset=231
.Linfo_string10:
	.asciz	"checked_malloc_int_array"      // string offset=235
.Linfo_string11:
	.asciz	"checked_malloc_bool_array"     // string offset=260
.Linfo_string12:
	.asciz	"main"                          // string offset=286
.Linfo_string13:
	.asciz	"n"                             // string offset=291
.Linfo_string14:
	.asciz	"j"                             // string offset=293
.Linfo_string15:
	.asciz	"i"                             // string offset=295
.Linfo_string16:
	.asciz	"ptr"                           // string offset=297
.Linfo_string17:
	.asciz	"sum"                           // string offset=301
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
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	a
	.xword	b
	.xword	c
	.xword	cond
	.xword	.Lfunc_begin0
	.xword	.Lfunc_begin1
	.xword	.Lfunc_begin2
	.xword	.Lfunc_begin3
	.xword	.Ltmp44
	.xword	.Ltmp53
	.xword	.Ltmp40
	.xword	.Ltmp41
	.xword	.Ltmp42
	.xword	.Ltmp43
	.xword	.Ltmp52
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
