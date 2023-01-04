	.text
	.file	"test.c"
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "test.c" md5 0xd791212f2aade6c4ac1fc5f2b8ccd3f2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function getTimeMiliSeconds
.LCPI0_0:
	.xword	0x3eb0c6f7a0b5ed8d              // double 9.9999999999999995E-7
	.text
	.globl	getTimeMiliSeconds
	.p2align	2
	.type	getTimeMiliSeconds,@function
getTimeMiliSeconds:                     // @getTimeMiliSeconds
.Lfunc_begin0:
	.loc	0 15 0                          // test.c:15:0
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp0:
	.loc	0 17 5 prologue_end             // test.c:17:5
	mov	x1, sp
	mov	w0, #2
	bl	clock_gettime
.Ltmp1:
	.loc	0 18 32                         // test.c:18:32
	ldp	d1, d0, [sp]
	adrp	x8, .LCPI0_0
	ldr	d2, [x8, :lo12:.LCPI0_0]
	mov	x8, #70368744177664
	scvtf	d0, d0
	movk	x8, #16527, lsl #48
	.loc	0 18 12 is_stmt 0               // test.c:18:12
	scvtf	d1, d1
	.loc	0 18 43                         // test.c:18:43
	fmul	d0, d0, d2
	fmov	d2, x8
	.loc	0 18 30                         // test.c:18:30
	fmadd	d0, d1, d2, d0
	.cfi_def_cfa wsp, 32
	.loc	0 18 5                          // test.c:18:5
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp2:
.Lfunc_end0:
	.size	getTimeMiliSeconds, .Lfunc_end0-getTimeMiliSeconds
	.cfi_endproc
	.file	1 "/usr/include" "time.h" md5 0x2dc9fb937b28c900f98919b5c35320c2
	.file	2 "/usr/include/bits" "types.h" md5 0xf6304b1a6dcfc6bee76e9a51043b5090
	.file	3 "/usr/include/bits/types" "clockid_t.h" md5 0x099a80153c2ad48bc7f5f4a188cb6d24
	.file	4 "/usr/include/bits/types" "struct_timespec.h" md5 0x33f28095c70788baa6982a79b13f774b
                                        // -- End function
	.globl	foo                             // -- Begin function foo
	.p2align	2
	.type	foo,@function
foo:                                    // @foo
.Lfunc_begin1:
	.loc	0 30 0 is_stmt 1                // test.c:30:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: foo:a <- $x0
	//DEBUG_VALUE: foo:b <- $x1
	//DEBUG_VALUE: foo:c <- $x2
	//DEBUG_VALUE: foo:cond <- $x3
	//DEBUG_VALUE: foo:n <- $w4
	str	d8, [sp, #-80]!                 // 8-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -80
	.cfi_remember_state
	mov	w19, w4
.Ltmp3:
	//DEBUG_VALUE: foo:n <- $w19
	//DEBUG_VALUE: foo:n <- $w19
	mov	x20, x3
.Ltmp4:
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:cond <- $x20
	mov	x21, x2
.Ltmp5:
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:c <- $x21
	mov	x22, x1
.Ltmp6:
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:b <- $x22
	mov	x23, x0
.Ltmp7:
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:a <- $x23
	.loc	0 34 16 prologue_end            // test.c:34:16
	bl	getTimeMiliSeconds
.Ltmp8:
	.loc	0 36 30                         // test.c:36:30
	adrp	x24, EventSet
.Ltmp9:
	.loc	0 34 16                         // test.c:34:16
	fmov	d8, d0
.Ltmp10:
	//DEBUG_VALUE: foo:t <- $d8
	.loc	0 36 30                         // test.c:36:30
	ldr	w0, [x24, :lo12:EventSet]
	.loc	0 36 19 is_stmt 0               // test.c:36:19
	bl	PAPI_start
.Ltmp11:
	//DEBUG_VALUE: foo:status <- $w0
	.loc	0 36 9                          // test.c:36:9
	cbnz	w0, .LBB1_20
.Ltmp12:
// %bb.1:                               // %for.cond.preheader
	//DEBUG_VALUE: foo:status <- $w0
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	//DEBUG_VALUE: j <- 0
	.loc	0 39 9 is_stmt 1                // test.c:39:9
	cmp	w19, #1
	b.lt	.LBB1_18
.Ltmp13:
// %bb.2:                               // %for.cond4.preheader.us.preheader
	//DEBUG_VALUE: j <- 0
	//DEBUG_VALUE: foo:status <- $w0
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	cntw	x9
	mov	w8, wzr
	udiv	w10, w19, w9
	mov	w11, w19
	mov	w12, #-3
	cnth	x14
	ptrue	p0.s
	index	z0.s, #0, #1
	mov	z1.s, #-3                       // =0xfffffffffffffffd
	mul	w10, w10, w9
	sub	w13, w19, w10
	b	.LBB1_4
.Ltmp14:
.LBB1_3:                                // %for.cond4.for.cond.cleanup6_crit_edge.us
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 38 29 is_stmt 1               // test.c:38:29
	add	w8, w8, #1
.Ltmp15:
	//DEBUG_VALUE: j <- $w8
	.loc	0 38 5 is_stmt 0                // test.c:38:5
	cmp	w8, #10
	b.eq	.LBB1_18
.Ltmp16:
.LBB1_4:                                // %for.cond4.preheader.us
                                        // =>This Loop Header: Depth=1
                                        //     Child Loop BB1_7 Depth 2
                                        //     Child Loop BB1_16 Depth 2
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: i <- 0
	.loc	0 39 9 is_stmt 1                // test.c:39:9
	cmp	w14, w19
	b.ls	.LBB1_6
.Ltmp17:
// %bb.5:                               //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	mov	x15, xzr
	b	.LBB1_14
.Ltmp18:
.LBB1_6:                                // %pre.alc
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	ld1b	{ z2.s }, p0/z, [x20]
	mov	w15, w9
	and	z2.s, z2.s, #0xff
	cmpne	p1.s, p0/z, z2.s, #0
	mov	z2.d, z0.d
	cntp	x16, p1, p1.s
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
.Ltmp19:
.LBB1_7:                                // %alc.header
                                        //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 40 17 is_stmt 1               // test.c:40:17
	sxtw	x17, w15
	ld1b	{ z3.s }, p0/z, [x20, x17]
	and	z3.s, z3.s, #0xff
	cmpne	p2.s, p0/z, z3.s, #0
	index	z3.s, w15, #1
	cntp	x18, p2, p2.s
	add	w18, w16, w18
	cmp	w18, w9
	b.ls	.LBB1_10
.Ltmp20:
// %bb.8:                               // %linearized
                                        //   in Loop: Header=BB1_7 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 0 17 is_stmt 0                // test.c:0:17
	ld1w	{ z4.s }, p2/z, [x21, x17, lsl #2]
	ld1w	{ z5.s }, p2/z, [x22, x17, lsl #2]
	lsl	z6.s, z4.s, #1
	adr	z7.s, [z5.s, z3.s, lsl #1]
	sub	z6.s, z7.s, z6.s
	sub	z7.s, z1.s, z4.s
	mla	z6.s, p0/m, z5.s, z3.s
	add	z5.s, z5.s, z4.s
	mul	z7.s, p0/m, z7.s, z3.s
	sub	z5.s, z6.s, z5.s
	adr	z5.s, [z7.s, z5.s, lsl #1]
	movprfx	z7, z3
	mul	z7.s, p0/m, z7.s, z3.s
	add	z5.s, z5.s, #2                  // =0x2
	sub	z3.s, z6.s, z3.s
	sub	z4.s, z4.s, z5.s
	add	z3.s, z3.s, z5.s
	adr	z4.s, [z7.s, z4.s, lsl #1]
	st1w	{ z6.s }, p2, [x23, x17, lsl #2]
	mul	z4.s, z4.s, #-3
	st1w	{ z5.s }, p2, [x22, x17, lsl #2]
	adr	z3.s, [z4.s, z3.s, lsl #1]
	st1w	{ z3.s }, p2, [x21, x17, lsl #2]
.Ltmp21:
.LBB1_9:                                // %new.latch
                                        //   in Loop: Header=BB1_7 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	add	w15, w15, w9
	cmp	w15, w10
	b.lo	.LBB1_7
	b	.LBB1_13
.Ltmp22:
.LBB1_10:                               // %lane.gather
                                        //   in Loop: Header=BB1_7 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	compact	z2.s, p1, z2.s
	whilelt	p1.s, wzr, w16
	compact	z3.s, p2, z3.s
	cmp	w18, w9
	splice	z2.s, p1, z2.s, z3.s
	b.lo	.LBB1_12
.Ltmp23:
// %bb.11:                              // %uniform.block
                                        //   in Loop: Header=BB1_7 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	ld1w	{ z3.s }, p0/z, [x21, z2.s, sxtw #2]
	ld1w	{ z4.s }, p0/z, [x22, z2.s, sxtw #2]
	add	w17, w15, w9
	.loc	0 40 17                         // test.c:40:17
	sxtw	x15, w17
	lsl	z5.s, z3.s, #1
	adr	z6.s, [z4.s, z2.s, lsl #1]
	sub	z5.s, z6.s, z5.s
	sub	z6.s, z1.s, z3.s
	mla	z5.s, p0/m, z4.s, z2.s
	add	z4.s, z4.s, z3.s
	mul	z6.s, p0/m, z6.s, z2.s
	sub	z4.s, z5.s, z4.s
	adr	z4.s, [z6.s, z4.s, lsl #1]
	movprfx	z6, z2
	mul	z6.s, p0/m, z6.s, z2.s
	add	z4.s, z4.s, #2                  // =0x2
	st1w	{ z5.s }, p0, [x23, z2.s, sxtw #2]
	sub	z3.s, z3.s, z4.s
	st1w	{ z4.s }, p0, [x22, z2.s, sxtw #2]
	adr	z3.s, [z6.s, z3.s, lsl #1]
	sub	z6.s, z5.s, z2.s
	mul	z3.s, z3.s, #-3
	add	z6.s, z6.s, z4.s
	adr	z3.s, [z3.s, z6.s, lsl #1]
	st1w	{ z3.s }, p0, [x21, z2.s, sxtw #2]
	ld1b	{ z2.s }, p0/z, [x20, x15]
	mov	w15, w17
	and	z2.s, z2.s, #0xff
	cmpne	p1.s, p0/z, z2.s, #0
	index	z2.s, w17, #1
	cntp	x16, p1, p1.s
                                        // kill: def $w16 killed $w16 killed $x16 def $x16
	b	.LBB1_9
.Ltmp24:
.LBB1_12:                               //   in Loop: Header=BB1_7 Depth=2
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 0 17                          // test.c:0:17
	whilelt	p1.s, wzr, w18
	cntp	x16, p1, p1.s
	b	.LBB1_9
.Ltmp25:
.LBB1_13:                               // %middel.block
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	ld1w	{ z3.s }, p1/z, [x21, z2.s, sxtw #2]
	ld1w	{ z4.s }, p1/z, [x22, z2.s, sxtw #2]
	lsl	z5.s, z3.s, #1
	adr	z6.s, [z4.s, z2.s, lsl #1]
	sub	z5.s, z6.s, z5.s
	sub	z6.s, z1.s, z3.s
	mla	z5.s, p0/m, z4.s, z2.s
	add	z4.s, z4.s, z3.s
	mul	z6.s, p0/m, z6.s, z2.s
	sub	z4.s, z5.s, z4.s
	adr	z4.s, [z6.s, z4.s, lsl #1]
	movprfx	z6, z2
	mul	z6.s, p0/m, z6.s, z2.s
	add	z4.s, z4.s, #2                  // =0x2
	st1w	{ z5.s }, p1, [x23, z2.s, sxtw #2]
	sub	z3.s, z3.s, z4.s
	st1w	{ z4.s }, p1, [x22, z2.s, sxtw #2]
	adr	z3.s, [z6.s, z3.s, lsl #1]
	sub	z6.s, z5.s, z2.s
	mul	z3.s, z3.s, #-3
	add	z6.s, z6.s, z4.s
	adr	z3.s, [z3.s, z6.s, lsl #1]
	st1w	{ z3.s }, p1, [x21, z2.s, sxtw #2]
	cbz	w13, .LBB1_3
.Ltmp26:
.LBB1_14:                               // %for.body7.us.preheader
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 39 9 is_stmt 1                // test.c:39:9
	and	x17, x15, #0x7fffffff
	add	w16, w15, #1
	lsl	x17, x17, #1
	b	.LBB1_16
.Ltmp27:
.LBB1_15:                               // %for.inc.us
                                        //   in Loop: Header=BB1_16 Depth=2
	//DEBUG_VALUE: i <- $x15
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 39 32 is_stmt 0               // test.c:39:32
	add	x15, x15, #1
.Ltmp28:
	//DEBUG_VALUE: i <- $x15
	.loc	0 39 27                         // test.c:39:27
	add	w16, w16, #1
	add	x17, x17, #2
.Ltmp29:
	.loc	0 39 9                          // test.c:39:9
	cmp	x11, x15
	b.eq	.LBB1_3
.Ltmp30:
.LBB1_16:                               // %for.body7.us
                                        //   Parent Loop BB1_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	//DEBUG_VALUE: i <- $x15
	.loc	0 40 17 is_stmt 1               // test.c:40:17
	ldrb	w18, [x20, x15]
.Ltmp31:
	.loc	0 40 17 is_stmt 0               // test.c:40:17
	cbz	w18, .LBB1_15
.Ltmp32:
// %bb.17:                              // %if.then8.us
                                        //   in Loop: Header=BB1_16 Depth=2
	//DEBUG_VALUE: i <- $x15
	//DEBUG_VALUE: j <- $w8
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 41 40 is_stmt 1               // test.c:41:40
	lsl	x18, x15, #2
	ldr	w0, [x21, x18]
	.loc	0 41 49 is_stmt 0               // test.c:41:49
	ldr	w1, [x22, x18]
	.loc	0 42 22 is_stmt 1               // test.c:42:22
	lsl	w2, w0, #1
	.loc	0 44 31                         // test.c:44:31
	sub	w4, w12, w0
	add	w3, w2, w0
	.loc	0 42 22                         // test.c:42:22
	neg	w2, w2
	neg	w3, w3
	.loc	0 44 31                         // test.c:44:31
	mul	w4, w4, w15
	madd	w3, w1, w15, w3
	.loc	0 42 22                         // test.c:42:22
	madd	w1, w1, w16, w2
	add	w3, w17, w3
	.loc	0 43 37                         // test.c:43:37
	add	w3, w4, w3, lsl #1
	.loc	0 44 22                         // test.c:44:22
	add	w2, w3, #2
	.loc	0 45 75                         // test.c:45:75
	mul	w3, w15, w15
	.loc	0 45 60 is_stmt 0               // test.c:45:60
	sub	w0, w0, w2
	.loc	0 44 22 is_stmt 1               // test.c:44:22
	str	w2, [x22, x18]
	.loc	0 45 71                         // test.c:45:71
	add	w0, w3, w0, lsl #1
	.loc	0 45 44 is_stmt 0               // test.c:45:44
	add	w3, w15, w1
	add	w3, w3, w2
	.loc	0 42 22 is_stmt 1               // test.c:42:22
	add	w1, w17, w1
	.loc	0 45 48                         // test.c:45:48
	sub	w0, w0, w0, lsl #2
	.loc	0 46 22                         // test.c:46:22
	add	w0, w0, w3, lsl #1
	.loc	0 42 22                         // test.c:42:22
	str	w1, [x23, x18]
	.loc	0 46 22                         // test.c:46:22
	str	w0, [x21, x18]
	b	.LBB1_15
.Ltmp33:
.LBB1_18:                               // %for.cond.cleanup
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 52 29                         // test.c:52:29
	ldr	w0, [x24, :lo12:EventSet]
	.loc	0 52 19 is_stmt 0               // test.c:52:19
	adrp	x1, CounterValues
	add	x1, x1, :lo12:CounterValues
	bl	PAPI_stop
.Ltmp34:
	//DEBUG_VALUE: foo:status <- $w0
	.loc	0 52 9                          // test.c:52:9
	cbnz	w0, .LBB1_21
.Ltmp35:
// %bb.19:                              // %if.end84
	//DEBUG_VALUE: foo:status <- $w0
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 54 21 is_stmt 1               // test.c:54:21
	bl	getTimeMiliSeconds
.Ltmp36:
	.loc	0 54 42 is_stmt 0               // test.c:54:42
	fsub	d0, d0, d8
	.loc	0 54 19                         // test.c:54:19
	adrp	x8, ExecutionTime
	str	d0, [x8, :lo12:ExecutionTime]
	.cfi_def_cfa wsp, 80
	.loc	0 55 1 is_stmt 1                // test.c:55:1
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
.Ltmp37:
	//DEBUG_VALUE: foo:cond <- [DW_OP_LLVM_entry_value 1] $x3
	//DEBUG_VALUE: foo:n <- [DW_OP_LLVM_entry_value 1] $w4
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
.Ltmp38:
	//DEBUG_VALUE: foo:b <- [DW_OP_LLVM_entry_value 1] $x1
	//DEBUG_VALUE: foo:c <- [DW_OP_LLVM_entry_value 1] $x2
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
.Ltmp39:
	//DEBUG_VALUE: foo:a <- [DW_OP_LLVM_entry_value 1] $x0
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	d8, [sp], #80                   // 8-byte Folded Reload
.Ltmp40:
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	.cfi_restore b8
	ret
.Ltmp41:
.LBB1_20:                               // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: foo:status <- $w0
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 36 53                         // test.c:36:53
	adrp	x9, :got:stderr
.Ltmp42:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w8, w0
.Ltmp43:
	//DEBUG_VALUE: foo:status <- $w8
	.loc	0 36 53                         // test.c:36:53
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w19, w8
.Ltmp44:
	//DEBUG_VALUE: foo:n <- [DW_OP_LLVM_entry_value 1] $w4
	mov	w2, w8
	mov	w4, #36
	ldr	x0, [x9]
	b	.LBB1_22
.Ltmp45:
.LBB1_21:                               // %if.then82
	//DEBUG_VALUE: foo:status <- $w0
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	//DEBUG_VALUE: foo:n <- $w19
	.loc	0 52 67 is_stmt 1               // test.c:52:67
	adrp	x8, :got:stderr
.Ltmp46:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp47:
	//DEBUG_VALUE: foo:n <- [DW_OP_LLVM_entry_value 1] $w4
	//DEBUG_VALUE: foo:status <- $w19
	//DEBUG_VALUE: foo:status <- $w19
	.loc	0 52 67                         // test.c:52:67
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x8, [x8, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #52
	ldr	x0, [x8]
.Ltmp48:
.LBB1_22:                               // %if.then82
	//DEBUG_VALUE: foo:n <- [DW_OP_LLVM_entry_value 1] $w4
	//DEBUG_VALUE: foo:t <- $d8
	//DEBUG_VALUE: foo:a <- $x23
	//DEBUG_VALUE: foo:b <- $x22
	//DEBUG_VALUE: foo:c <- $x21
	//DEBUG_VALUE: foo:cond <- $x20
	.loc	0 0 0                           // test.c:0:0
	bl	fprintf
.Ltmp49:
	mov	w0, w19
	bl	exit
.Ltmp50:
.Lfunc_end1:
	.size	foo, .Lfunc_end1-foo
	.cfi_endproc
	.file	5 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation" "PAPI/papi-install/include/papi.h" md5 0x0d2c40ce608b3a2c077982ffb1e7b529
                                        // -- End function
	.globl	checked_malloc_int_array        // -- Begin function checked_malloc_int_array
	.p2align	2
	.type	checked_malloc_int_array,@function
checked_malloc_int_array:               // @checked_malloc_int_array
.Lfunc_begin2:
	.loc	0 62 0 is_stmt 1                // test.c:62:0
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
.Ltmp51:
	.loc	0 63 43 prologue_end            // test.c:63:43
	sbfiz	x0, x0, #2, #32
.Ltmp52:
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 63 24 is_stmt 0               // test.c:63:24
	bl	malloc
.Ltmp53:
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	.loc	0 64 9 is_stmt 1                // test.c:64:9
	cbz	x0, .LBB2_2
.Ltmp54:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 68 5                          // test.c:68:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp55:
.LBB2_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 65 9                          // test.c:65:9
	adrp	x0, .Lstr.10
.Ltmp56:
	add	x0, x0, :lo12:.Lstr.10
	bl	puts
.Ltmp57:
	.loc	0 66 9                          // test.c:66:9
	mov	w0, #1
	bl	exit
.Ltmp58:
.Lfunc_end2:
	.size	checked_malloc_int_array, .Lfunc_end2-checked_malloc_int_array
	.cfi_endproc
                                        // -- End function
	.globl	checked_malloc_bool_array       // -- Begin function checked_malloc_bool_array
	.p2align	2
	.type	checked_malloc_bool_array,@function
checked_malloc_bool_array:              // @checked_malloc_bool_array
.Lfunc_begin3:
	.loc	0 71 0                          // test.c:71:0
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
.Ltmp59:
	.loc	0 72 48 prologue_end            // test.c:72:48
	sxtw	x0, w0
.Ltmp60:
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 72 26 is_stmt 0               // test.c:72:26
	bl	malloc
.Ltmp61:
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	.loc	0 73 9 is_stmt 1                // test.c:73:9
	cbz	x0, .LBB3_2
.Ltmp62:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 77 5                          // test.c:77:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp63:
.LBB3_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 74 9                          // test.c:74:9
	adrp	x0, .Lstr.10
.Ltmp64:
	add	x0, x0, :lo12:.Lstr.10
	bl	puts
.Ltmp65:
	.loc	0 75 9                          // test.c:75:9
	mov	w0, #1
	bl	exit
.Ltmp66:
.Lfunc_end3:
	.size	checked_malloc_bool_array, .Lfunc_end3-checked_malloc_bool_array
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin4:
	.loc	0 80 0                          // test.c:80:0
	.cfi_startproc
// %bb.0:                               // %entry
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	stp	x24, x23, [sp, #144]            // 16-byte Folded Spill
	stp	x22, x21, [sp, #160]            // 16-byte Folded Spill
	stp	x20, x19, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_remember_state
.Ltmp67:
	.loc	0 84 9 prologue_end             // test.c:84:9
	mov	w0, #117440512
	mov	w19, #117440512
	bl	PAPI_library_init
.Ltmp68:
	.loc	0 84 9 is_stmt 0                // test.c:84:9
	cmp	w0, w19
	b.ne	.LBB4_10
// %bb.1:                               // %if.end
.Ltmp69:
	.loc	0 90 19 is_stmt 1               // test.c:90:19
	adrp	x0, EventSet
	add	x0, x0, :lo12:EventSet
	bl	PAPI_create_eventset
.Ltmp70:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 90 9 is_stmt 0                // test.c:90:9
	cbnz	w0, .LBB4_11
.Ltmp71:
// %bb.2:                               // %if.end6
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 93 35 is_stmt 1               // test.c:93:35
	adrp	x19, EventSet
	.loc	0 93 19 is_stmt 0               // test.c:93:19
	adrp	x1, EventCodes
	add	x1, x1, :lo12:EventCodes
	mov	w2, #4
	.loc	0 93 35                         // test.c:93:35
	ldr	w0, [x19, :lo12:EventSet]
.Ltmp72:
	.loc	0 93 19                         // test.c:93:19
	bl	PAPI_add_events
.Ltmp73:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 93 9                          // test.c:93:9
	cbnz	w0, .LBB4_12
.Ltmp74:
// %bb.3:                               // %if.end11
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 97 9 is_stmt 1                // test.c:97:9
	mov	w0, #19264
.Ltmp75:
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	mov	w20, #19264
	.loc	0 97 9                          // test.c:97:9
	movk	w0, #76, lsl #16
	movk	w20, #76, lsl #16
.Ltmp76:
	//DEBUG_VALUE: main:n <- 5000000
	bl	checked_malloc_int_array
.Ltmp77:
	.loc	0 97 7                          // test.c:97:7
	adrp	x21, a
	str	x0, [x21, :lo12:a]
	.loc	0 98 9 is_stmt 1                // test.c:98:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp78:
	.loc	0 98 7 is_stmt 0                // test.c:98:7
	adrp	x22, b
	str	x0, [x22, :lo12:b]
	.loc	0 99 9 is_stmt 1                // test.c:99:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp79:
	.loc	0 99 7 is_stmt 0                // test.c:99:7
	adrp	x23, c
	str	x0, [x23, :lo12:c]
	.loc	0 100 12 is_stmt 1              // test.c:100:12
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_bool_array
.Ltmp80:
	.loc	0 100 10 is_stmt 0              // test.c:100:10
	adrp	x24, cond
	.loc	0 102 13 is_stmt 1              // test.c:102:13
	strb	wzr, [x0]
	.loc	0 100 10                        // test.c:100:10
	str	x0, [x24, :lo12:cond]
	.loc	0 104 11                        // test.c:104:11
	mov	x0, xzr
	bl	time
.Ltmp81:
                                        // kill: def $w0 killed $w0 killed $x0
	.loc	0 104 5 is_stmt 0               // test.c:104:5
	bl	srand
.Ltmp82:
	//DEBUG_VALUE: i <- 0
	.loc	0 0 5                           // test.c:0:5
	mov	w9, #34079
	mov	x8, xzr
	ldr	x0, [x21, :lo12:a]
	movk	w9, #20971, lsl #16
	ldr	x1, [x22, :lo12:b]
	mov	w10, #-100
	ldr	x2, [x23, :lo12:c]
	mov	w11, #2
	ldr	x3, [x24, :lo12:cond]
.Ltmp83:
.LBB4_4:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: i <- $x8
	.loc	0 107 9 is_stmt 1               // test.c:107:9
	and	x12, x8, #0xffffffff
	.loc	0 107 14 is_stmt 0              // test.c:107:14
	lsl	x13, x8, #2
	.loc	0 107 9                         // test.c:107:9
	mul	x12, x12, x9
	.loc	0 107 14                        // test.c:107:14
	str	w8, [x0, x13]
	.loc	0 107 9                         // test.c:107:9
	lsr	x12, x12, #37
	.loc	0 108 14 is_stmt 1              // test.c:108:14
	str	w11, [x1, x13]
	.loc	0 109 14                        // test.c:109:14
	str	wzr, [x2, x13]
	.loc	0 110 28                        // test.c:110:28
	madd	w12, w12, w10, w8
	cmp	w12, #40
	cset	w12, lo
	.loc	0 110 17 is_stmt 0              // test.c:110:17
	strb	w12, [x3, x8]
.Ltmp84:
	.loc	0 106 28 is_stmt 1              // test.c:106:28
	add	x8, x8, #1
.Ltmp85:
	//DEBUG_VALUE: i <- $x8
	.loc	0 106 5 is_stmt 0               // test.c:106:5
	cmp	x20, x8
	b.ne	.LBB4_4
.Ltmp86:
// %bb.5:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 113 5 is_stmt 1               // test.c:113:5
	mov	w4, #19264
	movk	w4, #76, lsl #16
	bl	foo
.Ltmp87:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	w1, wzr
	ldr	x8, [x23, :lo12:c]
.Ltmp88:
.LBB4_6:                                // %for.body33
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x20
	.loc	0 118 16 is_stmt 1              // test.c:118:16
	ldr	w9, [x8], #4
.Ltmp89:
	.loc	0 117 23                        // test.c:117:23
	subs	x20, x20, #1
.Ltmp90:
	.loc	0 118 13                        // test.c:118:13
	add	w1, w9, w1
.Ltmp91:
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x20
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 117 5                         // test.c:117:5
	b.ne	.LBB4_6
.Ltmp92:
// %bb.7:                               // %for.cond.cleanup32
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 121 5                         // test.c:121:5
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
.Ltmp93:
	.loc	0 123 10                        // test.c:123:10
	ldr	x0, [x21, :lo12:a]
	.loc	0 123 5 is_stmt 0               // test.c:123:5
	bl	free
.Ltmp94:
	.loc	0 124 10 is_stmt 1              // test.c:124:10
	ldr	x0, [x22, :lo12:b]
	.loc	0 124 5 is_stmt 0               // test.c:124:5
	bl	free
.Ltmp95:
	.loc	0 125 10 is_stmt 1              // test.c:125:10
	ldr	x0, [x23, :lo12:c]
	.loc	0 125 5 is_stmt 0               // test.c:125:5
	bl	free
.Ltmp96:
	.loc	0 126 10 is_stmt 1              // test.c:126:10
	ldr	x0, [x24, :lo12:cond]
	.loc	0 126 5 is_stmt 0               // test.c:126:5
	bl	free
.Ltmp97:
	.loc	0 128 53 is_stmt 1              // test.c:128:53
	adrp	x20, CounterValues
	add	x20, x20, :lo12:CounterValues
	.loc	0 128 5 is_stmt 0               // test.c:128:5
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	.loc	0 128 53                        // test.c:128:53
	ldr	x1, [x20]
	.loc	0 128 5                         // test.c:128:5
	bl	printf
.Ltmp98:
	.loc	0 129 36 is_stmt 1              // test.c:129:36
	ldr	x1, [x20, #8]
	.loc	0 129 5 is_stmt 0               // test.c:129:5
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
.Ltmp99:
	.loc	0 130 50 is_stmt 1              // test.c:130:50
	ldr	x1, [x20, #16]
	.loc	0 130 5 is_stmt 0               // test.c:130:5
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	printf
.Ltmp100:
	.loc	0 131 49 is_stmt 1              // test.c:131:49
	ldr	x1, [x20, #24]
	.loc	0 131 5 is_stmt 0               // test.c:131:5
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	printf
.Ltmp101:
	.loc	0 132 40 is_stmt 1              // test.c:132:40
	adrp	x8, ExecutionTime
	.loc	0 132 5 is_stmt 0               // test.c:132:5
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	.loc	0 132 40                        // test.c:132:40
	ldr	d0, [x8, :lo12:ExecutionTime]
	.loc	0 132 5                         // test.c:132:5
	bl	printf
.Ltmp102:
	.loc	0 134 38 is_stmt 1              // test.c:134:38
	ldr	w0, [x19, :lo12:EventSet]
	.loc	0 134 19 is_stmt 0              // test.c:134:19
	adrp	x1, EventCodes
	add	x1, x1, :lo12:EventCodes
	mov	w2, #4
	bl	PAPI_remove_events
.Ltmp103:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 134 9                         // test.c:134:9
	cbnz	w0, .LBB4_13
.Ltmp104:
// %bb.8:                               // %if.end50
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 137 19 is_stmt 1              // test.c:137:19
	adrp	x0, EventSet
.Ltmp105:
	add	x0, x0, :lo12:EventSet
	bl	PAPI_destroy_eventset
.Ltmp106:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 137 9 is_stmt 0               // test.c:137:9
	cbnz	w0, .LBB4_14
.Ltmp107:
// %bb.9:                               // %if.end56
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 140 5 is_stmt 1               // test.c:140:5
	bl	PAPI_shutdown
.Ltmp108:
	.loc	0 142 5                         // test.c:142:5
	mov	w0, wzr
	.cfi_def_cfa wsp, 192
	ldp	x20, x19, [sp, #176]            // 16-byte Folded Reload
	ldp	x22, x21, [sp, #160]            // 16-byte Folded Reload
	ldp	x24, x23, [sp, #144]            // 16-byte Folded Reload
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w19
	.cfi_restore w20
	.cfi_restore w21
	.cfi_restore w22
	.cfi_restore w23
	.cfi_restore w24
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp109:
.LBB4_10:                               // %if.then
	.cfi_restore_state
	.loc	0 85 17                         // test.c:85:17
	adrp	x8, :got:stderr
	.loc	0 85 9 is_stmt 0                // test.c:85:9
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	x2, sp
	.loc	0 85 17                         // test.c:85:17
	ldr	x8, [x8, :got_lo12:stderr]
	ldr	x0, [x8]
	.loc	0 85 9                          // test.c:85:9
	bl	fprintf
.Ltmp110:
	.loc	0 86 9 is_stmt 1                // test.c:86:9
	mov	w0, #1
	bl	exit
.Ltmp111:
.LBB4_11:                               // %if.then4
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 90 64                         // test.c:90:64
	adrp	x9, :got:stderr
.Ltmp112:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp113:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 90 64                         // test.c:90:64
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #90
	b	.LBB4_15
.Ltmp114:
.LBB4_12:                               // %if.then9
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 93 81 is_stmt 1               // test.c:93:81
	adrp	x9, :got:stderr
.Ltmp115:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w8, w0
.Ltmp116:
	//DEBUG_VALUE: main:status <- $w8
	.loc	0 93 81                         // test.c:93:81
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w19, w8
	mov	w2, w8
	mov	w4, #93
	b	.LBB4_15
.Ltmp117:
.LBB4_13:                               // %if.then48
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 134 84 is_stmt 1              // test.c:134:84
	adrp	x9, :got:stderr
.Ltmp118:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp119:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 134 84                        // test.c:134:84
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #134
	b	.LBB4_15
.Ltmp120:
.LBB4_14:                               // %if.then54
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 137 65 is_stmt 1              // test.c:137:65
	adrp	x9, :got:stderr
.Ltmp121:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp122:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 137 65                        // test.c:137:65
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #137
.Ltmp123:
.LBB4_15:                               // %if.then4
	.loc	0 0 0                           // test.c:0:0
	ldr	x0, [x9]
	bl	fprintf
.Ltmp124:
	mov	w0, w19
	bl	exit
.Ltmp125:
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cfi_endproc
	.file	6 "/usr/include/bits/types" "time_t.h" md5 0x49b4e16ef1215de5afdbb283400ab90c
	.file	7 "/usr/include" "stdlib.h" md5 0xf0db66726d35051e5af2525f5b33bd81
                                        // -- End function
	.type	EventSet,@object                // @EventSet
	.data
	.globl	EventSet
	.p2align	2
EventSet:
	.word	4294967295                      // 0xffffffff
	.size	EventSet, 4

	.type	CounterValues,@object           // @CounterValues
	.bss
	.globl	CounterValues
	.p2align	3
CounterValues:
	.zero	32
	.size	CounterValues, 32

	.type	EventCodes,@object              // @EventCodes
	.data
	.globl	EventCodes
	.p2align	2
EventCodes:
	.word	2147483698                      // 0x80000032
	.word	2147483707                      // 0x8000003b
	.word	2147483648                      // 0x80000000
	.word	2147483694                      // 0x8000002e
	.size	EventCodes, 16

	.type	ExecutionTime,@object           // @ExecutionTime
	.bss
	.globl	ExecutionTime
	.p2align	3
ExecutionTime:
	.xword	0x0000000000000000              // double 0
	.size	ExecutionTime, 8

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Error %d %s:line %d: \n"
	.size	.L.str, 23

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"test.c"
	.size	.L.str.1, 7

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Error: %s\n"
	.size	.L.str.3, 11

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

	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"%d \n"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\nTotal instructions executed: %lld\n"
	.size	.L.str.5, 36

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"Total cycles: %lld\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"Total L1 data cache misses: %lld\n"
	.size	.L.str.7, 34

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"Total branch mispredicted: %lld\n"
	.size	.L.str.8, 33

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"Execution time: %lf ms\n"
	.size	.L.str.9, 24

	.type	.Lstr.10,@object                // @str.10
.Lstr.10:
	.asciz	"error: failed to allocate memory"
	.size	.Lstr.10, 33

	.section	.debug_loclists,"",@progbits
	.word	.Ldebug_list_header_end0-.Ldebug_list_header_start0 // Length
.Ldebug_list_header_start0:
	.hword	5                               // Version
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
	.word	17                              // Offset entry count
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
	.word	.Ldebug_loc9-.Lloclists_table_base0
	.word	.Ldebug_loc10-.Lloclists_table_base0
	.word	.Ldebug_loc11-.Lloclists_table_base0
	.word	.Ldebug_loc12-.Lloclists_table_base0
	.word	.Ldebug_loc13-.Lloclists_table_base0
	.word	.Ldebug_loc14-.Lloclists_table_base0
	.word	.Ldebug_loc15-.Lloclists_table_base0
	.word	.Ldebug_loc16-.Lloclists_table_base0
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp39-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp39-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp38-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp38-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	83                              // DW_OP_reg3
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	84                              // DW_OP_reg4
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp37-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp37-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp41-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	84                              // DW_OP_reg4
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp44-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	84                              // DW_OP_reg4
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	84                              // DW_OP_reg4
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	72                              // 72
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	72                              // 72
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp34-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp43-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp43-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp45-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp45-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp47-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp47-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp14-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp14-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	95                              // DW_OP_reg15
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp52-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp53-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp56-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp60-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp64-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp70-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp72-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp73-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp75-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp103-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp106-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp111-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp113-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp113-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp114-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp114-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp116-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp116-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp117-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp119-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp119-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp120-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp120-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp122-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp122-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp109-.Lfunc_begin0         //   ending offset
	.byte	6                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp117-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp123-.Lfunc_begin0         //   ending offset
	.byte	6                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc15:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp90-.Lfunc_begin0          //   ending offset
	.byte	12                              // Loc expr size
	.byte	132                             // DW_OP_breg20
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
	.uleb128 .Ltmp91-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp92-.Lfunc_begin0          //   ending offset
	.byte	15                              // Loc expr size
	.byte	132                             // DW_OP_breg20
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
.Ldebug_loc16:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp87-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp88-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp88-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          //   ending offset
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
	.byte	4                               // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
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
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
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
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
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
	.byte	13                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
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
	.byte	15                              // Abbreviation Code
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
	.byte	16                              // Abbreviation Code
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
	.byte	17                              // Abbreviation Code
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
	.byte	18                              // Abbreviation Code
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
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	85                              // DW_AT_ranges
	.byte	35                              // DW_FORM_rnglistx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	22                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
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
	.byte	23                              // Abbreviation Code
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
	.byte	24                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	25                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	60                              // DW_AT_declaration
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	26                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x35c DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	8                               // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lrnglists_table_base0          // DW_AT_rnglists_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x2b:0xb DW_TAG_variable
	.byte	3                               // DW_AT_name
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	22                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               // Abbrev [3] 0x36:0x4 DW_TAG_base_type
	.byte	4                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x3a:0xb DW_TAG_variable
	.byte	5                               // DW_AT_name
	.word	69                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               // Abbrev [4] 0x45:0xc DW_TAG_array_type
	.word	81                              // DW_AT_type
	.byte	5                               // Abbrev [5] 0x4a:0x6 DW_TAG_subrange_type
	.word	85                              // DW_AT_type
	.byte	4                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x51:0x4 DW_TAG_base_type
	.byte	6                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	6                               // Abbrev [6] 0x55:0x4 DW_TAG_base_type
	.byte	7                               // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	2                               // Abbrev [2] 0x59:0xb DW_TAG_variable
	.byte	8                               // DW_AT_name
	.word	100                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	26                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               // Abbrev [4] 0x64:0xc DW_TAG_array_type
	.word	54                              // DW_AT_type
	.byte	5                               // Abbrev [5] 0x69:0x6 DW_TAG_subrange_type
	.word	85                              // DW_AT_type
	.byte	4                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x70:0xb DW_TAG_variable
	.byte	9                               // DW_AT_name
	.word	123                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               // Abbrev [3] 0x7b:0x4 DW_TAG_base_type
	.byte	10                              // DW_AT_name
	.byte	4                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x7f:0xb DW_TAG_variable
	.byte	11                              // DW_AT_name
	.word	138                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	4
	.byte	7                               // Abbrev [7] 0x8a:0x5 DW_TAG_pointer_type
	.word	54                              // DW_AT_type
	.byte	2                               // Abbrev [2] 0x8f:0xb DW_TAG_variable
	.byte	12                              // DW_AT_name
	.word	138                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	58                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	5
	.byte	2                               // Abbrev [2] 0x9a:0xb DW_TAG_variable
	.byte	13                              // DW_AT_name
	.word	138                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	59                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	6
	.byte	2                               // Abbrev [2] 0xa5:0xb DW_TAG_variable
	.byte	14                              // DW_AT_name
	.word	176                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	60                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	7
	.byte	7                               // Abbrev [7] 0xb0:0x5 DW_TAG_pointer_type
	.word	181                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0xb5:0x4 DW_TAG_base_type
	.byte	15                              // DW_AT_name
	.byte	2                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	8                               // Abbrev [8] 0xb9:0x1 DW_TAG_pointer_type
	.byte	9                               // Abbrev [9] 0xba:0x21 DW_TAG_subprogram
	.byte	8                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	37                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.word	123                             // DW_AT_type
                                        // DW_AT_external
	.byte	10                              // Abbrev [10] 0xc9:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	42                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	259                             // DW_AT_type
	.byte	11                              // Abbrev [11] 0xd4:0x6 DW_TAG_call_site
	.word	219                             // DW_AT_call_origin
	.byte	9                               // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0xdb:0x13 DW_TAG_subprogram
	.byte	16                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	213                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0xe3:0x5 DW_TAG_formal_parameter
	.word	238                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0xe8:0x5 DW_TAG_formal_parameter
	.word	254                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	14                              // Abbrev [14] 0xee:0x8 DW_TAG_typedef
	.word	246                             // DW_AT_type
	.byte	18                              // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.byte	14                              // Abbrev [14] 0xf6:0x8 DW_TAG_typedef
	.word	54                              // DW_AT_type
	.byte	17                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	168                             // DW_AT_decl_line
	.byte	7                               // Abbrev [7] 0xfe:0x5 DW_TAG_pointer_type
	.word	259                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x103:0x18 DW_TAG_structure_type
	.byte	24                              // DW_AT_name
	.byte	16                              // DW_AT_byte_size
	.byte	4                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	16                              // Abbrev [16] 0x108:0x9 DW_TAG_member
	.byte	19                              // DW_AT_name
	.word	283                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	16                              // Abbrev [16] 0x111:0x9 DW_TAG_member
	.byte	22                              // DW_AT_name
	.word	295                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	14                              // Abbrev [14] 0x11b:0x8 DW_TAG_typedef
	.word	291                             // DW_AT_type
	.byte	21                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	160                             // DW_AT_decl_line
	.byte	3                               // Abbrev [3] 0x123:0x4 DW_TAG_base_type
	.byte	20                              // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	14                              // Abbrev [14] 0x127:0x8 DW_TAG_typedef
	.word	291                             // DW_AT_type
	.byte	23                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	196                             // DW_AT_decl_line
	.byte	17                              // Abbrev [17] 0x12f:0x7f DW_TAG_subprogram
	.byte	10                              // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	38                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x13a:0x9 DW_TAG_formal_parameter
	.byte	0                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	845                             // DW_AT_type
	.byte	18                              // Abbrev [18] 0x143:0x9 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	12                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	845                             // DW_AT_type
	.byte	18                              // Abbrev [18] 0x14c:0x9 DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	29                              // DW_AT_decl_line
	.word	845                             // DW_AT_type
	.byte	18                              // Abbrev [18] 0x155:0x9 DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	14                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	850                             // DW_AT_type
	.byte	18                              // Abbrev [18] 0x15e:0x9 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	19                              // Abbrev [19] 0x167:0x9 DW_TAG_variable
	.byte	5                               // DW_AT_location
	.byte	44                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	34                              // DW_AT_decl_line
	.word	123                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x170:0x9 DW_TAG_variable
	.byte	6                               // DW_AT_location
	.byte	45                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	32                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	20                              // Abbrev [20] 0x179:0x1c DW_TAG_lexical_block
	.byte	11                              // DW_AT_low_pc
	.word	.Ltmp33-.Ltmp12                 // DW_AT_high_pc
	.byte	19                              // Abbrev [19] 0x17f:0x9 DW_TAG_variable
	.byte	7                               // DW_AT_location
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	38                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	21                              // Abbrev [21] 0x188:0xc DW_TAG_lexical_block
	.byte	0                               // DW_AT_ranges
	.byte	19                              // Abbrev [19] 0x18a:0x9 DW_TAG_variable
	.byte	8                               // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	39                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x195:0x6 DW_TAG_call_site
	.word	186                             // DW_AT_call_origin
	.byte	12                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x19b:0x6 DW_TAG_call_site
	.word	430                             // DW_AT_call_origin
	.byte	13                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x1a1:0x6 DW_TAG_call_site
	.word	445                             // DW_AT_call_origin
	.byte	14                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x1a7:0x6 DW_TAG_call_site
	.word	186                             // DW_AT_call_origin
	.byte	15                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x1ae:0xf DW_TAG_subprogram
	.byte	25                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1204                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x1b7:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x1bd:0x14 DW_TAG_subprogram
	.byte	26                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1206                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x1c6:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	13                              // Abbrev [13] 0x1cb:0x5 DW_TAG_formal_parameter
	.word	465                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	7                               // Abbrev [7] 0x1d1:0x5 DW_TAG_pointer_type
	.word	81                              // DW_AT_type
	.byte	23                              // Abbrev [23] 0x1d6:0x22 DW_TAG_subprogram
	.byte	16                              // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	39                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	62                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	138                             // DW_AT_type
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x1e5:0x9 DW_TAG_formal_parameter
	.byte	9                               // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	62                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	19                              // Abbrev [19] 0x1ee:0x9 DW_TAG_variable
	.byte	10                              // DW_AT_location
	.byte	48                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	63                              // DW_AT_decl_line
	.word	138                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x1f8:0x22 DW_TAG_subprogram
	.byte	17                              // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	40                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	71                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	176                             // DW_AT_type
                                        // DW_AT_external
	.byte	18                              // Abbrev [18] 0x207:0x9 DW_TAG_formal_parameter
	.byte	11                              // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	71                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	19                              // Abbrev [19] 0x210:0x9 DW_TAG_variable
	.byte	12                              // DW_AT_location
	.byte	48                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	72                              // DW_AT_decl_line
	.word	176                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	9                               // Abbrev [9] 0x21a:0xa5 DW_TAG_subprogram
	.byte	18                              // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	41                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	80                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
                                        // DW_AT_external
	.byte	10                              // Abbrev [10] 0x229:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	49                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	82                              // DW_AT_decl_line
	.word	855                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x234:0x9 DW_TAG_variable
	.byte	13                              // DW_AT_location
	.byte	45                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	81                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	19                              // Abbrev [19] 0x23d:0x9 DW_TAG_variable
	.byte	14                              // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	95                              // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	19                              // Abbrev [19] 0x246:0x9 DW_TAG_variable
	.byte	16                              // DW_AT_location
	.byte	51                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	115                             // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	20                              // Abbrev [20] 0x24f:0x11 DW_TAG_lexical_block
	.byte	19                              // DW_AT_low_pc
	.word	.Ltmp86-.Ltmp83                 // DW_AT_high_pc
	.byte	10                              // Abbrev [10] 0x255:0xa DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	88
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	106                             // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	20                              // Abbrev [20] 0x260:0x10 DW_TAG_lexical_block
	.byte	20                              // DW_AT_low_pc
	.word	.Ltmp92-.Ltmp88                 // DW_AT_high_pc
	.byte	19                              // Abbrev [19] 0x266:0x9 DW_TAG_variable
	.byte	15                              // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	117                             // DW_AT_decl_line
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	11                              // Abbrev [11] 0x270:0x6 DW_TAG_call_site
	.word	703                             // DW_AT_call_origin
	.byte	21                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x276:0x6 DW_TAG_call_site
	.word	718                             // DW_AT_call_origin
	.byte	22                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x27c:0x6 DW_TAG_call_site
	.word	733                             // DW_AT_call_origin
	.byte	23                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x282:0x6 DW_TAG_call_site
	.word	470                             // DW_AT_call_origin
	.byte	24                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x288:0x6 DW_TAG_call_site
	.word	470                             // DW_AT_call_origin
	.byte	25                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x28e:0x6 DW_TAG_call_site
	.word	470                             // DW_AT_call_origin
	.byte	26                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x294:0x6 DW_TAG_call_site
	.word	504                             // DW_AT_call_origin
	.byte	27                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x29a:0x6 DW_TAG_call_site
	.word	758                             // DW_AT_call_origin
	.byte	28                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x2a0:0x6 DW_TAG_call_site
	.word	785                             // DW_AT_call_origin
	.byte	29                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x2a6:0x6 DW_TAG_call_site
	.word	303                             // DW_AT_call_origin
	.byte	30                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x2ac:0x6 DW_TAG_call_site
	.word	800                             // DW_AT_call_origin
	.byte	31                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x2b2:0x6 DW_TAG_call_site
	.word	825                             // DW_AT_call_origin
	.byte	32                              // DW_AT_call_return_pc
	.byte	11                              // Abbrev [11] 0x2b8:0x6 DW_TAG_call_site
	.word	840                             // DW_AT_call_origin
	.byte	33                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2bf:0xf DW_TAG_subprogram
	.byte	27                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1172                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x2c8:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2ce:0xf DW_TAG_subprogram
	.byte	28                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1147                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x2d7:0x5 DW_TAG_formal_parameter
	.word	138                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2dd:0x19 DW_TAG_subprogram
	.byte	29                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1143                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x2e6:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	13                              // Abbrev [13] 0x2eb:0x5 DW_TAG_formal_parameter
	.word	138                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x2f0:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x2f6:0xe DW_TAG_subprogram
	.byte	30                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	75                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	772                             // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x2fe:0x5 DW_TAG_formal_parameter
	.word	780                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	14                              // Abbrev [14] 0x304:0x8 DW_TAG_typedef
	.word	283                             // DW_AT_type
	.byte	31                              // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.byte	7                               // Abbrev [7] 0x30c:0x5 DW_TAG_pointer_type
	.word	772                             // DW_AT_type
	.byte	24                              // Abbrev [24] 0x311:0xb DW_TAG_subprogram
	.byte	32                              // DW_AT_name
	.byte	7                               // DW_AT_decl_file
	.hword	455                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x316:0x5 DW_TAG_formal_parameter
	.word	796                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x31c:0x4 DW_TAG_base_type
	.byte	33                              // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	22                              // Abbrev [22] 0x320:0x19 DW_TAG_subprogram
	.byte	34                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1192                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x329:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	13                              // Abbrev [13] 0x32e:0x5 DW_TAG_formal_parameter
	.word	138                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x333:0x5 DW_TAG_formal_parameter
	.word	54                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x339:0xf DW_TAG_subprogram
	.byte	35                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1149                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	54                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	13                              // Abbrev [13] 0x342:0x5 DW_TAG_formal_parameter
	.word	138                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	25                              // Abbrev [25] 0x348:0x5 DW_TAG_subprogram
	.byte	36                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1202                            // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	26                              // Abbrev [26] 0x34d:0x5 DW_TAG_restrict_type
	.word	138                             // DW_AT_type
	.byte	26                              // Abbrev [26] 0x352:0x5 DW_TAG_restrict_type
	.word	176                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x357:0xc DW_TAG_array_type
	.word	867                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x35c:0x6 DW_TAG_subrange_type
	.word	85                              // DW_AT_type
	.byte	128                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x363:0x4 DW_TAG_base_type
	.byte	50                              // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
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
	.uleb128 .Ltmp12-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp13-.Lfunc_begin0          //   ending offset
	.byte	4                               // DW_RLE_offset_pair
	.uleb128 .Ltmp16-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	0                               // DW_RLE_end_of_list
.Ldebug_list_header_end1:
	.section	.debug_str_offsets,"",@progbits
	.word	212                             // Length of String Offsets Set
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
	.asciz	"EventSet"                      // string offset=210
.Linfo_string4:
	.asciz	"int"                           // string offset=219
.Linfo_string5:
	.asciz	"CounterValues"                 // string offset=223
.Linfo_string6:
	.asciz	"long long"                     // string offset=237
.Linfo_string7:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=247
.Linfo_string8:
	.asciz	"EventCodes"                    // string offset=267
.Linfo_string9:
	.asciz	"ExecutionTime"                 // string offset=278
.Linfo_string10:
	.asciz	"double"                        // string offset=292
.Linfo_string11:
	.asciz	"a"                             // string offset=299
.Linfo_string12:
	.asciz	"b"                             // string offset=301
.Linfo_string13:
	.asciz	"c"                             // string offset=303
.Linfo_string14:
	.asciz	"cond"                          // string offset=305
.Linfo_string15:
	.asciz	"_Bool"                         // string offset=310
.Linfo_string16:
	.asciz	"clock_gettime"                 // string offset=316
.Linfo_string17:
	.asciz	"__clockid_t"                   // string offset=330
.Linfo_string18:
	.asciz	"clockid_t"                     // string offset=342
.Linfo_string19:
	.asciz	"tv_sec"                        // string offset=352
.Linfo_string20:
	.asciz	"long"                          // string offset=359
.Linfo_string21:
	.asciz	"__time_t"                      // string offset=364
.Linfo_string22:
	.asciz	"tv_nsec"                       // string offset=373
.Linfo_string23:
	.asciz	"__syscall_slong_t"             // string offset=381
.Linfo_string24:
	.asciz	"timespec"                      // string offset=399
.Linfo_string25:
	.asciz	"PAPI_start"                    // string offset=408
.Linfo_string26:
	.asciz	"PAPI_stop"                     // string offset=419
.Linfo_string27:
	.asciz	"PAPI_library_init"             // string offset=429
.Linfo_string28:
	.asciz	"PAPI_create_eventset"          // string offset=447
.Linfo_string29:
	.asciz	"PAPI_add_events"               // string offset=468
.Linfo_string30:
	.asciz	"time"                          // string offset=484
.Linfo_string31:
	.asciz	"time_t"                        // string offset=489
.Linfo_string32:
	.asciz	"srand"                         // string offset=496
.Linfo_string33:
	.asciz	"unsigned int"                  // string offset=502
.Linfo_string34:
	.asciz	"PAPI_remove_events"            // string offset=515
.Linfo_string35:
	.asciz	"PAPI_destroy_eventset"         // string offset=534
.Linfo_string36:
	.asciz	"PAPI_shutdown"                 // string offset=556
.Linfo_string37:
	.asciz	"getTimeMiliSeconds"            // string offset=570
.Linfo_string38:
	.asciz	"foo"                           // string offset=589
.Linfo_string39:
	.asciz	"checked_malloc_int_array"      // string offset=593
.Linfo_string40:
	.asciz	"checked_malloc_bool_array"     // string offset=618
.Linfo_string41:
	.asciz	"main"                          // string offset=644
.Linfo_string42:
	.asciz	"ts"                            // string offset=649
.Linfo_string43:
	.asciz	"n"                             // string offset=652
.Linfo_string44:
	.asciz	"t"                             // string offset=654
.Linfo_string45:
	.asciz	"status"                        // string offset=656
.Linfo_string46:
	.asciz	"j"                             // string offset=663
.Linfo_string47:
	.asciz	"i"                             // string offset=665
.Linfo_string48:
	.asciz	"ptr"                           // string offset=667
.Linfo_string49:
	.asciz	"errstring"                     // string offset=671
.Linfo_string50:
	.asciz	"char"                          // string offset=681
.Linfo_string51:
	.asciz	"sum"                           // string offset=686
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
	.word	.Linfo_string48
	.word	.Linfo_string49
	.word	.Linfo_string50
	.word	.Linfo_string51
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	EventSet
	.xword	CounterValues
	.xword	EventCodes
	.xword	ExecutionTime
	.xword	a
	.xword	b
	.xword	c
	.xword	cond
	.xword	.Lfunc_begin0
	.xword	.Ltmp1
	.xword	.Lfunc_begin1
	.xword	.Ltmp12
	.xword	.Ltmp8
	.xword	.Ltmp11
	.xword	.Ltmp34
	.xword	.Ltmp36
	.xword	.Lfunc_begin2
	.xword	.Lfunc_begin3
	.xword	.Lfunc_begin4
	.xword	.Ltmp83
	.xword	.Ltmp88
	.xword	.Ltmp68
	.xword	.Ltmp70
	.xword	.Ltmp73
	.xword	.Ltmp77
	.xword	.Ltmp78
	.xword	.Ltmp79
	.xword	.Ltmp80
	.xword	.Ltmp81
	.xword	.Ltmp82
	.xword	.Ltmp87
	.xword	.Ltmp103
	.xword	.Ltmp106
	.xword	.Ltmp108
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
