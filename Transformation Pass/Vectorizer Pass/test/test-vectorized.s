	.text
	.file	"test.c"
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
	.cfi_startproc
// %bb.0:                               // %entry
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
	cmp	w3, #1
	b.lt	.LBB0_6
// %bb.1:                               // %for.body.preheader
	mov	w8, w3
	cnth	x10
	cmp	x10, x8
	b.ls	.LBB0_3
// %bb.2:
	mov	x9, xzr
	b	.LBB0_8
.LBB0_3:                                // %vector.ph
	udiv	x9, x8, x10
	rdvl	x12, #1
	lsr	x12, x12, #4
	mov	x11, xzr
	and	x12, x12, #0xffffffff
	index	z1.d, #0, #1
	lsl	x15, x12, #4
	cntw	x16
	add	x13, x2, x15
	add	x14, x1, x15
	add	x15, x0, x15
	mov	z2.d, z1.d
	mov	z0.d, x16
	incd	z2.d
	mul	x9, x9, x10
	ptrue	p0.d
	sub	x12, x8, x9
.LBB0_4:                                // %vector.body
                                        // =>This Inner Loop Header: Depth=1
	add	z3.d, z2.d, z0.d
	add	z4.d, z1.d, z0.d
	mov	z5.d, z4.d
	mov	z6.d, z3.d
	and	z1.d, z1.d, #0x1
	and	z2.d, z2.d, #0x1
	and	z5.d, z5.d, #0x1
	and	z6.d, z6.d, #0x1
	cmpne	p1.d, p0/z, z1.d, #0
	cmpne	p2.d, p0/z, z2.d, #0
	cmpne	p3.d, p0/z, z5.d, #0
	cmpne	p4.d, p0/z, z6.d, #0
	uzp1	p1.s, p1.s, p2.s
	uzp1	p2.s, p3.s, p4.s
	ld1w	{ z1.s }, p1/z, [x0, x11, lsl #2]
	ld1w	{ z2.s }, p1/z, [x1, x11, lsl #2]
	ld1w	{ z5.s }, p2/z, [x15, x11, lsl #2]
	ld1w	{ z6.s }, p2/z, [x14, x11, lsl #2]
	mul	z1.s, z2.s, z1.s
	mul	z2.s, z6.s, z5.s
	st1w	{ z1.s }, p1, [x2, x11, lsl #2]
	st1w	{ z2.s }, p2, [x13, x11, lsl #2]
	add	x11, x11, x10
	cmp	x11, x9
	add	z1.d, z4.d, z0.d
	add	z2.d, z3.d, z0.d
	b.ne	.LBB0_4
// %bb.5:                               // %middle.block
	cbnz	x12, .LBB0_8
.LBB0_6:                                // %for.cond.cleanup
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	ret
.LBB0_7:                                // %for.inc
                                        //   in Loop: Header=BB0_8 Depth=1
	add	x9, x9, #1
	cmp	x8, x9
	b.eq	.LBB0_6
.LBB0_8:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	tbz	w9, #0, .LBB0_7
// %bb.9:                               // %if.then
                                        //   in Loop: Header=BB0_8 Depth=1
	lsl	x10, x9, #2
	ldr	w11, [x0, x10]
	ldr	w12, [x1, x10]
	mul	w11, w12, w11
	str	w11, [x2, x10]
	b	.LBB0_7
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
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
	sub	sp, sp, #1536, lsl #12          // =6291456
	mov	x0, sp
	mov	w1, wzr
	mov	w2, #2097152
	bl	memset
	mov	w14, #524288
	cnth	x8
	rdvl	x9, #1
	add	x13, sp, #512, lsl #12          // =2097152
	udiv	x11, x14, x8
	lsr	x9, x9, #4
	and	x16, x9, #0xffffffff
	add	x15, sp, #1024, lsl #12         // =4194304
	lsl	x17, x16, #4
	mov	x12, xzr
	add	x16, x13, x17
	add	x17, x15, x17
	cntw	x10
	index	z2.s, #0, #1
	mov	z0.s, w10
	ptrue	p0.s
	mov	z1.s, #2                        // =0x2
	mul	x11, x11, x8
	sub	x14, x14, x11
.LBB1_1:                                // %vector.body
                                        // =>This Inner Loop Header: Depth=1
	add	z3.s, z2.s, z0.s
	st1w	{ z2.s }, p0, [x15, x12, lsl #2]
	st1w	{ z1.s }, p0, [x13, x12, lsl #2]
	st1w	{ z3.s }, p0, [x17, x12, lsl #2]
	st1w	{ z1.s }, p0, [x16, x12, lsl #2]
	add	x12, x12, x8
	cmp	x12, x11
	add	z2.s, z3.s, z0.s
	b.ne	.LBB1_1
// %bb.2:                               // %middle.block
	cbz	x14, .LBB1_5
// %bb.3:
	add	x12, sp, #1024, lsl #12         // =4194304
	add	x13, sp, #512, lsl #12          // =2097152
	mov	w14, #2
.LBB1_4:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	lsl	x15, x11, #2
	str	w11, [x12, x15]
	add	x11, x11, #1
	cmp	x11, #128, lsl #12              // =524288
	str	w14, [x13, x15]
	b.ne	.LBB1_4
.LBB1_5:                                // %for.cond.cleanup
	mov	w16, #524288
	and	x17, x9, #0xffffffff
	mov	x13, sp
	add	x14, sp, #512, lsl #12          // =2097152
	udiv	x11, x16, x8
	add	x15, sp, #1024, lsl #12         // =4194304
	lsl	x0, x17, #4
	mov	x12, xzr
	//APP
	dmb	sy
	orr	x3, x3, x3

	//NO_APP
	index	z1.d, #0, #1
	add	x17, x13, x0
	add	x18, x14, x0
	add	x0, x15, x0
	mov	z2.d, z1.d
	mov	z0.d, x10
	incd	z2.d
	ptrue	p1.d
	mul	x11, x11, x8
	sub	x16, x16, x11
.LBB1_6:                                // %vector.body50
                                        // =>This Inner Loop Header: Depth=1
	add	z3.d, z2.d, z0.d
	and	z2.d, z2.d, #0x1
	add	z4.d, z1.d, z0.d
	and	z1.d, z1.d, #0x1
	cmpne	p3.d, p1/z, z2.d, #0
	ld1w	{ z2.s }, p0/z, [x15, x12, lsl #2]
	ld1w	{ z6.s }, p0/z, [x14, x12, lsl #2]
	ld1w	{ z7.s }, p0/z, [x0, x12, lsl #2]
	ld1w	{ z16.s }, p0/z, [x18, x12, lsl #2]
	mov	z5.d, z4.d
	cmpne	p2.d, p1/z, z1.d, #0
	mov	z1.d, z3.d
	and	z5.d, z5.d, #0x1
	and	z1.d, z1.d, #0x1
	cmpne	p4.d, p1/z, z5.d, #0
	uzp1	p2.s, p2.s, p3.s
	cmpne	p3.d, p1/z, z1.d, #0
	mul	z1.s, z6.s, z2.s
	uzp1	p3.s, p4.s, p3.s
	mul	z2.s, z16.s, z7.s
	st1w	{ z1.s }, p2, [x13, x12, lsl #2]
	st1w	{ z2.s }, p3, [x17, x12, lsl #2]
	add	x12, x12, x8
	add	z1.d, z4.d, z0.d
	cmp	x12, x11
	add	z2.d, z3.d, z0.d
	b.ne	.LBB1_6
// %bb.7:                               // %middle.block42
	cbz	x16, .LBB1_12
// %bb.8:                               // %for.body.i.preheader
	add	x10, sp, #1024, lsl #12         // =4194304
	add	x12, sp, #512, lsl #12          // =2097152
	mov	x13, sp
	b	.LBB1_10
.LBB1_9:                                // %for.inc.i
                                        //   in Loop: Header=BB1_10 Depth=1
	add	x11, x11, #1
	cmp	x11, #128, lsl #12              // =524288
	b.eq	.LBB1_12
.LBB1_10:                               // %for.body.i
                                        // =>This Inner Loop Header: Depth=1
	tbz	w11, #0, .LBB1_9
// %bb.11:                              // %if.then.i
                                        //   in Loop: Header=BB1_10 Depth=1
	lsl	x14, x11, #2
	ldr	w15, [x10, x14]
	ldr	w16, [x12, x14]
	mul	w15, w16, w15
	str	w15, [x13, x14]
	b	.LBB1_9
.LBB1_12:                               // %foo.exit
	mov	w12, #524288
	mov	x13, sp
	mov	x11, xzr
	//APP
	dmb	sy
	orr	x4, x4, x4

	//NO_APP
	udiv	x10, x12, x8
	add	x9, x13, w9, uxtw #4
	mov	z0.s, #0                        // =0x0
	mov	z1.d, z0.d
	mul	x10, x10, x8
	sub	x12, x12, x10
.LBB1_13:                               // %vector.body71
                                        // =>This Inner Loop Header: Depth=1
	ld1w	{ z2.s }, p0/z, [x13, x11, lsl #2]
	ld1w	{ z3.s }, p0/z, [x9, x11, lsl #2]
	add	x11, x11, x8
	cmp	x11, x10
	add	z0.s, z2.s, z0.s
	add	z1.s, z3.s, z1.s
	b.ne	.LBB1_13
// %bb.14:                              // %middle.block63
	add	z0.s, z1.s, z0.s
	uaddv	d0, p0, z0.s
	fmov	x1, d0
	cbz	x12, .LBB1_17
// %bb.15:
	mov	x8, sp
.LBB1_16:                               // %for.body11
                                        // =>This Inner Loop Header: Depth=1
	ldr	w9, [x8, x10, lsl #2]
	add	x10, x10, #1
	cmp	x10, #128, lsl #12              // =524288
	add	w1, w9, w1
	b.ne	.LBB1_16
.LBB1_17:                               // %for.cond.cleanup10
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
                                        // kill: def $w1 killed $w1 killed $x1
	bl	printf
	mov	w0, wzr
	add	sp, sp, #1536, lsl #12          // =6291456
	.cfi_def_cfa wsp, 32
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w28
	.cfi_restore w30
	.cfi_restore w29
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d \n"
	.size	.L.str, 5

	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
