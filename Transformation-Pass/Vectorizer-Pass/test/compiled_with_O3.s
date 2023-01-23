	.text
	.file	"test.c"
	.file	0 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test" "test.c" md5 0x0bac8bb2e28d0b449a0dc3cb3874ce07
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
	.globl	simple_if                       // -- Begin function simple_if
	.p2align	2
	.type	simple_if,@function
simple_if:                              // @simple_if
.Lfunc_begin1:
	.loc	0 31 0 is_stmt 1                // test.c:31:0
	.cfi_startproc
// %bb.0:                               // %entry
	//DEBUG_VALUE: simple_if:a <- $x0
	//DEBUG_VALUE: simple_if:b <- $x1
	//DEBUG_VALUE: simple_if:c <- $x2
	//DEBUG_VALUE: simple_if:cond <- $x3
	//DEBUG_VALUE: simple_if:n <- $w4
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
	mov	w23, w4
.Ltmp3:
	//DEBUG_VALUE: simple_if:n <- $w23
	//DEBUG_VALUE: simple_if:n <- $w23
	mov	x19, x3
.Ltmp4:
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:cond <- $x19
	mov	x20, x2
.Ltmp5:
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:c <- $x20
	mov	x21, x1
.Ltmp6:
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:b <- $x21
	mov	x22, x0
.Ltmp7:
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:a <- $x22
	.loc	0 35 16 prologue_end            // test.c:35:16
	bl	getTimeMiliSeconds
.Ltmp8:
	.loc	0 37 30                         // test.c:37:30
	adrp	x24, EventSet
.Ltmp9:
	.loc	0 35 16                         // test.c:35:16
	fmov	d8, d0
.Ltmp10:
	//DEBUG_VALUE: simple_if:t <- $d8
	.loc	0 37 30                         // test.c:37:30
	ldr	w0, [x24, :lo12:EventSet]
	.loc	0 37 19 is_stmt 0               // test.c:37:19
	bl	PAPI_start
.Ltmp11:
	//DEBUG_VALUE: simple_if:status <- $w0
	.loc	0 37 9                          // test.c:37:9
	cbnz	w0, .LBB1_8
.Ltmp12:
// %bb.1:                               // %for.cond.preheader
	//DEBUG_VALUE: simple_if:status <- $w0
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	//DEBUG_VALUE: i <- 0
	.loc	0 40 5 is_stmt 1                // test.c:40:5
	cmp	w23, #1
	b.lt	.LBB1_6
.Ltmp13:
// %bb.2:                               // %for.body.preheader
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: simple_if:status <- $w0
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	w8, wzr
	mov	x9, xzr
.Ltmp14:
	.loc	0 40 23                         // test.c:40:23
	mov	w10, w23
	mov	w11, #2
	mov	w12, #1
	mov	w13, #-3
	mov	w14, #1
	b	.LBB1_4
.Ltmp15:
.LBB1_3:                                // %for.inc
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- $x9
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 40 28                         // test.c:40:28
	add	x9, x9, #1
.Ltmp16:
	//DEBUG_VALUE: i <- $x9
	.loc	0 40 23                         // test.c:40:23
	add	w11, w11, #5
	add	w14, w14, #3
	add	w8, w8, #2
	add	w12, w12, #1
.Ltmp17:
	.loc	0 40 5                          // test.c:40:5
	cmp	x10, x9
	b.eq	.LBB1_6
.Ltmp18:
.LBB1_4:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	//DEBUG_VALUE: i <- $x9
	.loc	0 41 13 is_stmt 1               // test.c:41:13
	ldrb	w15, [x19, x9]
.Ltmp19:
	.loc	0 41 13 is_stmt 0               // test.c:41:13
	cbz	w15, .LBB1_3
.Ltmp20:
// %bb.5:                               // %if.then4
                                        //   in Loop: Header=BB1_4 Depth=1
	//DEBUG_VALUE: i <- $x9
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 42 36 is_stmt 1               // test.c:42:36
	lsl	x15, x9, #2
	ldr	w16, [x20, x15]
	.loc	0 42 45 is_stmt 0               // test.c:42:45
	ldr	w17, [x21, x15]
	.loc	0 43 18 is_stmt 1               // test.c:43:18
	lsl	w18, w16, #1
	.loc	0 45 27                         // test.c:45:27
	sub	w1, w13, w16
	add	w0, w18, w16
	.loc	0 43 18                         // test.c:43:18
	neg	w18, w18
	neg	w0, w0
	.loc	0 45 27                         // test.c:45:27
	mul	w2, w1, w9
	madd	w0, w17, w9, w0
	.loc	0 46 40                         // test.c:46:40
	mul	w1, w9, w1
	add	w0, w8, w0
	madd	w1, w17, w14, w1
	.loc	0 44 33                         // test.c:44:33
	add	w0, w2, w0, lsl #1
	.loc	0 46 71                         // test.c:46:71
	mul	w2, w9, w9
	.loc	0 45 18                         // test.c:45:18
	add	w0, w0, #2
	.loc	0 43 18                         // test.c:43:18
	madd	w17, w17, w12, w18
	.loc	0 46 56                         // test.c:46:56
	sub	w3, w16, w0
	.loc	0 46 40 is_stmt 0               // test.c:46:40
	sub	w16, w1, w16, lsl #3
	add	w16, w11, w16
	.loc	0 43 18 is_stmt 1               // test.c:43:18
	add	w17, w8, w17
	.loc	0 46 67                         // test.c:46:67
	add	w18, w2, w3, lsl #1
	.loc	0 45 18                         // test.c:45:18
	str	w0, [x21, x15]
	.loc	0 43 18                         // test.c:43:18
	str	w17, [x22, x15]
	.loc	0 46 44                         // test.c:46:44
	sub	w18, w18, w18, lsl #2
	.loc	0 47 18                         // test.c:47:18
	add	w16, w18, w16, lsl #1
	str	w16, [x20, x15]
	b	.LBB1_3
.Ltmp21:
.LBB1_6:                                // %for.cond.cleanup
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 53 29                         // test.c:53:29
	ldr	w0, [x24, :lo12:EventSet]
	.loc	0 53 19 is_stmt 0               // test.c:53:19
	adrp	x1, CounterValues
	add	x1, x1, :lo12:CounterValues
	bl	PAPI_stop
.Ltmp22:
	//DEBUG_VALUE: simple_if:status <- $w0
	.loc	0 53 9                          // test.c:53:9
	cbnz	w0, .LBB1_9
.Ltmp23:
// %bb.7:                               // %if.end77
	//DEBUG_VALUE: simple_if:status <- $w0
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 55 21 is_stmt 1               // test.c:55:21
	bl	getTimeMiliSeconds
.Ltmp24:
	.loc	0 55 42 is_stmt 0               // test.c:55:42
	fsub	d0, d0, d8
	.loc	0 55 19                         // test.c:55:19
	adrp	x8, ExecutionTime
	str	d0, [x8, :lo12:ExecutionTime]
	.cfi_def_cfa wsp, 80
	.loc	0 56 1 is_stmt 1                // test.c:56:1
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
.Ltmp25:
	//DEBUG_VALUE: simple_if:c <- [DW_OP_LLVM_entry_value 1] $x2
	//DEBUG_VALUE: simple_if:cond <- [DW_OP_LLVM_entry_value 1] $x3
	ldp	x22, x21, [sp, #48]             // 16-byte Folded Reload
.Ltmp26:
	//DEBUG_VALUE: simple_if:a <- [DW_OP_LLVM_entry_value 1] $x0
	//DEBUG_VALUE: simple_if:b <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x24, x23, [sp, #32]             // 16-byte Folded Reload
.Ltmp27:
	//DEBUG_VALUE: simple_if:n <- [DW_OP_LLVM_entry_value 1] $w4
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	d8, [sp], #80                   // 8-byte Folded Reload
.Ltmp28:
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
.Ltmp29:
.LBB1_8:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: simple_if:status <- $w0
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 37 53                         // test.c:37:53
	adrp	x9, :got:stderr
.Ltmp30:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w8, w0
.Ltmp31:
	//DEBUG_VALUE: simple_if:status <- $w8
	.loc	0 37 53                         // test.c:37:53
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w19, w8
.Ltmp32:
	//DEBUG_VALUE: simple_if:cond <- [DW_OP_LLVM_entry_value 1] $x3
	mov	w2, w8
	mov	w4, #37
	ldr	x0, [x9]
	b	.LBB1_10
.Ltmp33:
.LBB1_9:                                // %if.then75
	//DEBUG_VALUE: simple_if:status <- $w0
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:cond <- $x19
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 53 67 is_stmt 1               // test.c:53:67
	adrp	x8, :got:stderr
.Ltmp34:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp35:
	//DEBUG_VALUE: simple_if:cond <- [DW_OP_LLVM_entry_value 1] $x3
	//DEBUG_VALUE: simple_if:status <- $w19
	//DEBUG_VALUE: simple_if:status <- $w19
	.loc	0 53 67                         // test.c:53:67
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x8, [x8, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #53
	ldr	x0, [x8]
.Ltmp36:
.LBB1_10:                               // %if.then75
	//DEBUG_VALUE: simple_if:cond <- [DW_OP_LLVM_entry_value 1] $x3
	//DEBUG_VALUE: simple_if:t <- $d8
	//DEBUG_VALUE: simple_if:a <- $x22
	//DEBUG_VALUE: simple_if:b <- $x21
	//DEBUG_VALUE: simple_if:c <- $x20
	//DEBUG_VALUE: simple_if:n <- $w23
	.loc	0 0 0                           // test.c:0:0
	bl	fprintf
.Ltmp37:
	mov	w0, w19
	bl	exit
.Ltmp38:
.Lfunc_end1:
	.size	simple_if, .Lfunc_end1-simple_if
	.cfi_endproc
	.file	5 "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation" "PAPI/papi-install/include/papi.h" md5 0x0d2c40ce608b3a2c077982ffb1e7b529
                                        // -- End function
	.globl	checked_malloc_int_array        // -- Begin function checked_malloc_int_array
	.p2align	2
	.type	checked_malloc_int_array,@function
checked_malloc_int_array:               // @checked_malloc_int_array
.Lfunc_begin2:
	.loc	0 263 0 is_stmt 1               // test.c:263:0
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
.Ltmp39:
	.loc	0 264 43 prologue_end           // test.c:264:43
	sbfiz	x0, x0, #2, #32
.Ltmp40:
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 264 24 is_stmt 0              // test.c:264:24
	bl	malloc
.Ltmp41:
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	.loc	0 265 9 is_stmt 1               // test.c:265:9
	cbz	x0, .LBB2_2
.Ltmp42:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 269 5                         // test.c:269:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp43:
.LBB2_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_int_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_int_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 266 9                         // test.c:266:9
	adrp	x0, .Lstr.10
.Ltmp44:
	add	x0, x0, :lo12:.Lstr.10
	bl	puts
.Ltmp45:
	.loc	0 267 9                         // test.c:267:9
	mov	w0, #1
	bl	exit
.Ltmp46:
.Lfunc_end2:
	.size	checked_malloc_int_array, .Lfunc_end2-checked_malloc_int_array
	.cfi_endproc
                                        // -- End function
	.globl	checked_malloc_bool_array       // -- Begin function checked_malloc_bool_array
	.p2align	2
	.type	checked_malloc_bool_array,@function
checked_malloc_bool_array:              // @checked_malloc_bool_array
.Lfunc_begin3:
	.loc	0 272 0                         // test.c:272:0
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
.Ltmp47:
	.loc	0 273 48 prologue_end           // test.c:273:48
	sxtw	x0, w0
.Ltmp48:
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 273 26 is_stmt 0              // test.c:273:26
	bl	malloc
.Ltmp49:
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	.loc	0 274 9 is_stmt 1               // test.c:274:9
	cbz	x0, .LBB3_2
.Ltmp50:
// %bb.1:                               // %if.end
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.cfi_def_cfa wsp, 16
	.loc	0 278 5                         // test.c:278:5
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
.Ltmp51:
.LBB3_2:                                // %if.then
	.cfi_restore_state
	//DEBUG_VALUE: checked_malloc_bool_array:ptr <- $x0
	//DEBUG_VALUE: checked_malloc_bool_array:n <- [DW_OP_LLVM_entry_value 1] $w0
	.loc	0 275 9                         // test.c:275:9
	adrp	x0, .Lstr.10
.Ltmp52:
	add	x0, x0, :lo12:.Lstr.10
	bl	puts
.Ltmp53:
	.loc	0 276 9                         // test.c:276:9
	mov	w0, #1
	bl	exit
.Ltmp54:
.Lfunc_end3:
	.size	checked_malloc_bool_array, .Lfunc_end3-checked_malloc_bool_array
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin4:
	.loc	0 281 0                         // test.c:281:0
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
.Ltmp55:
	.loc	0 285 9 prologue_end            // test.c:285:9
	mov	w0, #117440512
	mov	w19, #117440512
	bl	PAPI_library_init
.Ltmp56:
	.loc	0 285 9 is_stmt 0               // test.c:285:9
	cmp	w0, w19
	b.ne	.LBB4_10
// %bb.1:                               // %if.end
.Ltmp57:
	.loc	0 291 19 is_stmt 1              // test.c:291:19
	adrp	x0, EventSet
	add	x0, x0, :lo12:EventSet
	bl	PAPI_create_eventset
.Ltmp58:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 291 9 is_stmt 0               // test.c:291:9
	cbnz	w0, .LBB4_11
.Ltmp59:
// %bb.2:                               // %if.end6
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 294 35 is_stmt 1              // test.c:294:35
	adrp	x19, EventSet
	.loc	0 294 19 is_stmt 0              // test.c:294:19
	adrp	x1, EventCodes
	add	x1, x1, :lo12:EventCodes
	mov	w2, #4
	.loc	0 294 35                        // test.c:294:35
	ldr	w0, [x19, :lo12:EventSet]
.Ltmp60:
	.loc	0 294 19                        // test.c:294:19
	bl	PAPI_add_events
.Ltmp61:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 294 9                         // test.c:294:9
	cbnz	w0, .LBB4_12
.Ltmp62:
// %bb.3:                               // %if.end11
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 298 9 is_stmt 1               // test.c:298:9
	mov	w0, #19264
.Ltmp63:
	.loc	0 0 9 is_stmt 0                 // test.c:0:9
	mov	w20, #19264
	.loc	0 298 9                         // test.c:298:9
	movk	w0, #76, lsl #16
	movk	w20, #76, lsl #16
.Ltmp64:
	//DEBUG_VALUE: main:n <- 5000000
	bl	checked_malloc_int_array
.Ltmp65:
	.loc	0 298 7                         // test.c:298:7
	adrp	x21, a
	str	x0, [x21, :lo12:a]
	.loc	0 299 9 is_stmt 1               // test.c:299:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp66:
	.loc	0 299 7 is_stmt 0               // test.c:299:7
	adrp	x22, b
	str	x0, [x22, :lo12:b]
	.loc	0 300 9 is_stmt 1               // test.c:300:9
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_int_array
.Ltmp67:
	.loc	0 300 7 is_stmt 0               // test.c:300:7
	adrp	x23, c
	str	x0, [x23, :lo12:c]
	.loc	0 301 12 is_stmt 1              // test.c:301:12
	mov	w0, #19264
	movk	w0, #76, lsl #16
	bl	checked_malloc_bool_array
.Ltmp68:
	.loc	0 301 10 is_stmt 0              // test.c:301:10
	adrp	x24, cond
	.loc	0 303 13 is_stmt 1              // test.c:303:13
	strb	wzr, [x0]
	.loc	0 301 10                        // test.c:301:10
	str	x0, [x24, :lo12:cond]
	.loc	0 305 11                        // test.c:305:11
	mov	x0, xzr
	bl	time
.Ltmp69:
                                        // kill: def $w0 killed $w0 killed $x0
	.loc	0 305 5 is_stmt 0               // test.c:305:5
	bl	srand
.Ltmp70:
	//DEBUG_VALUE: i <- 0
	.loc	0 0 5                           // test.c:0:5
	mov	w9, #52429
	mov	x8, xzr
	ldr	x0, [x21, :lo12:a]
	movk	w9, #52428, lsl #16
	ldr	x1, [x22, :lo12:b]
	mov	w10, #-10
	ldr	x2, [x23, :lo12:c]
	mov	w11, #2
	ldr	x3, [x24, :lo12:cond]
.Ltmp71:
.LBB4_4:                                // %for.body
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: i <- $x8
	.loc	0 308 9 is_stmt 1               // test.c:308:9
	and	x12, x8, #0xffffffff
	.loc	0 308 14 is_stmt 0              // test.c:308:14
	lsl	x13, x8, #2
	.loc	0 308 9                         // test.c:308:9
	mul	x12, x12, x9
	.loc	0 308 14                        // test.c:308:14
	str	w8, [x0, x13]
	.loc	0 308 9                         // test.c:308:9
	lsr	x12, x12, #35
	.loc	0 309 14 is_stmt 1              // test.c:309:14
	str	w11, [x1, x13]
	.loc	0 310 14                        // test.c:310:14
	str	wzr, [x2, x13]
	.loc	0 311 27                        // test.c:311:27
	madd	w12, w12, w10, w8
	cmp	w12, #0
	cset	w12, eq
	.loc	0 311 17 is_stmt 0              // test.c:311:17
	strb	w12, [x3, x8]
.Ltmp72:
	.loc	0 307 28 is_stmt 1              // test.c:307:28
	add	x8, x8, #1
.Ltmp73:
	//DEBUG_VALUE: i <- $x8
	.loc	0 307 5 is_stmt 0               // test.c:307:5
	cmp	x20, x8
	b.ne	.LBB4_4
.Ltmp74:
// %bb.5:                               // %for.cond.cleanup
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 314 5 is_stmt 1               // test.c:314:5
	mov	w4, #19264
	movk	w4, #76, lsl #16
	bl	simple_if
.Ltmp75:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: main:sum <- 0
	.loc	0 0 5 is_stmt 0                 // test.c:0:5
	mov	w1, wzr
	ldr	x8, [x23, :lo12:c]
.Ltmp76:
.LBB4_6:                                // %for.body33
                                        // =>This Inner Loop Header: Depth=1
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_stack_value] $x20
	.loc	0 321 16 is_stmt 1              // test.c:321:16
	ldr	w9, [x8], #4
.Ltmp77:
	.loc	0 320 23                        // test.c:320:23
	subs	x20, x20, #1
.Ltmp78:
	.loc	0 321 13                        // test.c:321:13
	add	w1, w9, w1
.Ltmp79:
	//DEBUG_VALUE: i <- [DW_OP_consts 5000000, DW_OP_minus, DW_OP_consts 18446744073709551615, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x20
	//DEBUG_VALUE: main:sum <- $w1
	.loc	0 320 5                         // test.c:320:5
	b.ne	.LBB4_6
.Ltmp80:
// %bb.7:                               // %for.cond.cleanup32
	//DEBUG_VALUE: main:sum <- $w1
	//DEBUG_VALUE: main:n <- 5000000
	.loc	0 324 5                         // test.c:324:5
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
.Ltmp81:
	.loc	0 326 10                        // test.c:326:10
	ldr	x0, [x21, :lo12:a]
	.loc	0 326 5 is_stmt 0               // test.c:326:5
	bl	free
.Ltmp82:
	.loc	0 327 10 is_stmt 1              // test.c:327:10
	ldr	x0, [x22, :lo12:b]
	.loc	0 327 5 is_stmt 0               // test.c:327:5
	bl	free
.Ltmp83:
	.loc	0 328 10 is_stmt 1              // test.c:328:10
	ldr	x0, [x23, :lo12:c]
	.loc	0 328 5 is_stmt 0               // test.c:328:5
	bl	free
.Ltmp84:
	.loc	0 329 10 is_stmt 1              // test.c:329:10
	ldr	x0, [x24, :lo12:cond]
	.loc	0 329 5 is_stmt 0               // test.c:329:5
	bl	free
.Ltmp85:
	.loc	0 331 53 is_stmt 1              // test.c:331:53
	adrp	x20, CounterValues
	add	x20, x20, :lo12:CounterValues
	.loc	0 331 5 is_stmt 0               // test.c:331:5
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	.loc	0 331 53                        // test.c:331:53
	ldr	x1, [x20]
	.loc	0 331 5                         // test.c:331:5
	bl	printf
.Ltmp86:
	.loc	0 332 36 is_stmt 1              // test.c:332:36
	ldr	x1, [x20, #8]
	.loc	0 332 5 is_stmt 0               // test.c:332:5
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	printf
.Ltmp87:
	.loc	0 333 50 is_stmt 1              // test.c:333:50
	ldr	x1, [x20, #16]
	.loc	0 333 5 is_stmt 0               // test.c:333:5
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	bl	printf
.Ltmp88:
	.loc	0 334 49 is_stmt 1              // test.c:334:49
	ldr	x1, [x20, #24]
	.loc	0 334 5 is_stmt 0               // test.c:334:5
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	bl	printf
.Ltmp89:
	.loc	0 335 40 is_stmt 1              // test.c:335:40
	adrp	x8, ExecutionTime
	.loc	0 335 5 is_stmt 0               // test.c:335:5
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	.loc	0 335 40                        // test.c:335:40
	ldr	d0, [x8, :lo12:ExecutionTime]
	.loc	0 335 5                         // test.c:335:5
	bl	printf
.Ltmp90:
	.loc	0 337 38 is_stmt 1              // test.c:337:38
	ldr	w0, [x19, :lo12:EventSet]
	.loc	0 337 19 is_stmt 0              // test.c:337:19
	adrp	x1, EventCodes
	add	x1, x1, :lo12:EventCodes
	mov	w2, #4
	bl	PAPI_remove_events
.Ltmp91:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 337 9                         // test.c:337:9
	cbnz	w0, .LBB4_13
.Ltmp92:
// %bb.8:                               // %if.end50
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 340 19 is_stmt 1              // test.c:340:19
	adrp	x0, EventSet
.Ltmp93:
	add	x0, x0, :lo12:EventSet
	bl	PAPI_destroy_eventset
.Ltmp94:
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 340 9 is_stmt 0               // test.c:340:9
	cbnz	w0, .LBB4_14
.Ltmp95:
// %bb.9:                               // %if.end56
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 343 5 is_stmt 1               // test.c:343:5
	bl	PAPI_shutdown
.Ltmp96:
	.loc	0 345 5                         // test.c:345:5
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
.Ltmp97:
.LBB4_10:                               // %if.then
	.cfi_restore_state
	.loc	0 286 17                        // test.c:286:17
	adrp	x8, :got:stderr
	.loc	0 286 9 is_stmt 0               // test.c:286:9
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	mov	x2, sp
	.loc	0 286 17                        // test.c:286:17
	ldr	x8, [x8, :got_lo12:stderr]
	ldr	x0, [x8]
	.loc	0 286 9                         // test.c:286:9
	bl	fprintf
.Ltmp98:
	.loc	0 287 9 is_stmt 1               // test.c:287:9
	mov	w0, #1
	bl	exit
.Ltmp99:
.LBB4_11:                               // %if.then4
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 291 64                        // test.c:291:64
	adrp	x9, :got:stderr
.Ltmp100:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp101:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 291 64                        // test.c:291:64
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #291
	b	.LBB4_15
.Ltmp102:
.LBB4_12:                               // %if.then9
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 294 81 is_stmt 1              // test.c:294:81
	adrp	x9, :got:stderr
.Ltmp103:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w8, w0
.Ltmp104:
	//DEBUG_VALUE: main:status <- $w8
	.loc	0 294 81                        // test.c:294:81
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w19, w8
	mov	w2, w8
	mov	w4, #294
	b	.LBB4_15
.Ltmp105:
.LBB4_13:                               // %if.then48
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 337 84 is_stmt 1              // test.c:337:84
	adrp	x9, :got:stderr
.Ltmp106:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp107:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 337 84                        // test.c:337:84
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #337
	b	.LBB4_15
.Ltmp108:
.LBB4_14:                               // %if.then54
	//DEBUG_VALUE: main:n <- 5000000
	//DEBUG_VALUE: main:status <- $w0
	.loc	0 340 65 is_stmt 1              // test.c:340:65
	adrp	x9, :got:stderr
.Ltmp109:
	.loc	0 0 0 is_stmt 0                 // test.c:0:0
	mov	w19, w0
.Ltmp110:
	//DEBUG_VALUE: main:status <- $w19
	//DEBUG_VALUE: main:status <- $w19
	.loc	0 340 65                        // test.c:340:65
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x3, .L.str.1
	add	x3, x3, :lo12:.L.str.1
	ldr	x9, [x9, :got_lo12:stderr]
	mov	w2, w19
	mov	w4, #340
.Ltmp111:
.LBB4_15:                               // %if.then4
	.loc	0 0 0                           // test.c:0:0
	ldr	x0, [x9]
	bl	fprintf
.Ltmp112:
	mov	w0, w19
	bl	exit
.Ltmp113:
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
	.word	16                              // Offset entry count
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
.Ldebug_loc0:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp7-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp7-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	102                             // DW_OP_reg22
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc1:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp6-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp6-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp26-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp26-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	81                              // DW_OP_reg1
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc2:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp5-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	82                              // DW_OP_reg2
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp5-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	82                              // DW_OP_reg2
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	100                             // DW_OP_reg20
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc3:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp4-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	83                              // DW_OP_reg3
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp4-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp25-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp25-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	83                              // DW_OP_reg3
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp32-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp32-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	83                              // DW_OP_reg3
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	83                              // DW_OP_reg3
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc4:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin1-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp3-.Lfunc_begin0           //   ending offset
	.byte	1                               // Loc expr size
	.byte	84                              // DW_OP_reg4
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp3-.Lfunc_begin0           //   starting offset
	.uleb128 .Ltmp27-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp27-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp29-.Lfunc_begin0          //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	84                              // DW_OP_reg4
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	1                               // Loc expr size
	.byte	103                             // DW_OP_reg23
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc5:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp10-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp28-.Lfunc_begin0          //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	72                              // 72
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end1-.Lfunc_begin0      //   ending offset
	.byte	2                               // Loc expr size
	.byte	144                             // DW_OP_regx
	.byte	72                              // 72
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc6:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp11-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp22-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp24-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp29-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp31-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp31-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp33-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp33-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp35-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp35-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp36-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc7:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp12-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp15-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp15-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp21-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	89                              // DW_OP_reg9
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc8:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin2-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp40-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp40-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end2-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc9:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp41-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp44-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc10:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Lfunc_begin3-.Lfunc_begin0    //   starting offset
	.uleb128 .Ltmp48-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp48-.Lfunc_begin0          //   starting offset
	.uleb128 .Lfunc_end3-.Lfunc_begin0      //   ending offset
	.byte	4                               // Loc expr size
	.byte	163                             // DW_OP_entry_value
	.byte	1                               // 1
	.byte	80                              // DW_OP_reg0
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc11:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp49-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp52-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc12:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp58-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp60-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp61-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp63-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp91-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp93-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp94-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp96-.Lfunc_begin0          //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp99-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp101-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp101-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp102-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp102-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp104-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp104-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp105-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	88                              // DW_OP_reg8
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp107-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp107-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp108-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp108-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp110-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp110-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         //   ending offset
	.byte	1                               // Loc expr size
	.byte	99                              // DW_OP_reg19
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc13:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp64-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp97-.Lfunc_begin0          //   ending offset
	.byte	6                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp105-.Lfunc_begin0         //   starting offset
	.uleb128 .Ltmp111-.Lfunc_begin0         //   ending offset
	.byte	6                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	192                             // 5000000
	.byte	150                             // 
	.byte	177                             // 
	.byte	2                               // 
	.byte	159                             // DW_OP_stack_value
	.byte	0                               // DW_LLE_end_of_list
.Ldebug_loc14:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp78-.Lfunc_begin0          //   ending offset
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
	.uleb128 .Ltmp79-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp80-.Lfunc_begin0          //   ending offset
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
.Ldebug_loc15:
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp75-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp76-.Lfunc_begin0          //   ending offset
	.byte	3                               // Loc expr size
	.byte	17                              // DW_OP_consts
	.byte	0                               // 0
	.byte	159                             // DW_OP_stack_value
	.byte	4                               // DW_LLE_offset_pair
	.uleb128 .Ltmp76-.Lfunc_begin0          //   starting offset
	.uleb128 .Ltmp81-.Lfunc_begin0          //   ending offset
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
	.byte	5                               // DW_FORM_data2
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
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
	.byte	11                              // Abbreviation Code
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
	.byte	12                              // Abbreviation Code
	.byte	72                              // DW_TAG_call_site
	.byte	0                               // DW_CHILDREN_no
	.byte	127                             // DW_AT_call_origin
	.byte	19                              // DW_FORM_ref4
	.byte	125                             // DW_AT_call_return_pc
	.byte	27                              // DW_FORM_addrx
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
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
	.byte	14                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
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
	.byte	16                              // Abbreviation Code
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
	.byte	17                              // Abbreviation Code
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
	.byte	18                              // Abbreviation Code
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
	.byte	19                              // Abbreviation Code
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
	.byte	20                              // Abbreviation Code
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
	.byte	21                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
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
	.byte	5                               // DW_FORM_data2
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	24                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	25                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	34                              // DW_FORM_loclistx
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	26                              // Abbreviation Code
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
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	27                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	5                               // DW_FORM_data2
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	28                              // Abbreviation Code
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
	.byte	29                              // Abbreviation Code
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
	.byte	30                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0x35d DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	8                               // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.word	.Lloclists_table_base0          // DW_AT_loclists_base
	.byte	2                               // Abbrev [2] 0x27:0xb DW_TAG_variable
	.byte	3                               // DW_AT_name
	.word	50                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	22                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	0
	.byte	3                               // Abbrev [3] 0x32:0x4 DW_TAG_base_type
	.byte	4                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x36:0xb DW_TAG_variable
	.byte	5                               // DW_AT_name
	.word	65                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	24                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	1
	.byte	4                               // Abbrev [4] 0x41:0xc DW_TAG_array_type
	.word	77                              // DW_AT_type
	.byte	5                               // Abbrev [5] 0x46:0x6 DW_TAG_subrange_type
	.word	81                              // DW_AT_type
	.byte	4                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x4d:0x4 DW_TAG_base_type
	.byte	6                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	6                               // Abbrev [6] 0x51:0x4 DW_TAG_base_type
	.byte	7                               // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	2                               // Abbrev [2] 0x55:0xb DW_TAG_variable
	.byte	8                               // DW_AT_name
	.word	96                              // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	26                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	2
	.byte	4                               // Abbrev [4] 0x60:0xc DW_TAG_array_type
	.word	50                              // DW_AT_type
	.byte	5                               // Abbrev [5] 0x65:0x6 DW_TAG_subrange_type
	.word	81                              // DW_AT_type
	.byte	4                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x6c:0xb DW_TAG_variable
	.byte	9                               // DW_AT_name
	.word	119                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.byte	27                              // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	3
	.byte	3                               // Abbrev [3] 0x77:0x4 DW_TAG_base_type
	.byte	10                              // DW_AT_name
	.byte	4                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // Abbrev [7] 0x7b:0xc DW_TAG_variable
	.byte	11                              // DW_AT_name
	.word	135                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.hword	258                             // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	4
	.byte	8                               // Abbrev [8] 0x87:0x5 DW_TAG_pointer_type
	.word	50                              // DW_AT_type
	.byte	7                               // Abbrev [7] 0x8c:0xc DW_TAG_variable
	.byte	12                              // DW_AT_name
	.word	135                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.hword	259                             // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	5
	.byte	7                               // Abbrev [7] 0x98:0xc DW_TAG_variable
	.byte	13                              // DW_AT_name
	.word	135                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.hword	260                             // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	6
	.byte	7                               // Abbrev [7] 0xa4:0xc DW_TAG_variable
	.byte	14                              // DW_AT_name
	.word	176                             // DW_AT_type
                                        // DW_AT_external
	.byte	0                               // DW_AT_decl_file
	.hword	261                             // DW_AT_decl_line
	.byte	2                               // DW_AT_location
	.byte	161
	.byte	7
	.byte	8                               // Abbrev [8] 0xb0:0x5 DW_TAG_pointer_type
	.word	181                             // DW_AT_type
	.byte	3                               // Abbrev [3] 0xb5:0x4 DW_TAG_base_type
	.byte	15                              // DW_AT_name
	.byte	2                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	9                               // Abbrev [9] 0xb9:0x1 DW_TAG_pointer_type
	.byte	10                              // Abbrev [10] 0xba:0x21 DW_TAG_subprogram
	.byte	8                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	37                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	15                              // DW_AT_decl_line
	.word	119                             // DW_AT_type
                                        // DW_AT_external
	.byte	11                              // Abbrev [11] 0xc9:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	42                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	259                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0xd4:0x6 DW_TAG_call_site
	.word	219                             // DW_AT_call_origin
	.byte	9                               // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0xdb:0x13 DW_TAG_subprogram
	.byte	16                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	213                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0xe3:0x5 DW_TAG_formal_parameter
	.word	238                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0xe8:0x5 DW_TAG_formal_parameter
	.word	254                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0xee:0x8 DW_TAG_typedef
	.word	246                             // DW_AT_type
	.byte	18                              // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.byte	15                              // Abbrev [15] 0xf6:0x8 DW_TAG_typedef
	.word	50                              // DW_AT_type
	.byte	17                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	168                             // DW_AT_decl_line
	.byte	8                               // Abbrev [8] 0xfe:0x5 DW_TAG_pointer_type
	.word	259                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x103:0x18 DW_TAG_structure_type
	.byte	24                              // DW_AT_name
	.byte	16                              // DW_AT_byte_size
	.byte	4                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	17                              // Abbrev [17] 0x108:0x9 DW_TAG_member
	.byte	19                              // DW_AT_name
	.word	283                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	17                              // Abbrev [17] 0x111:0x9 DW_TAG_member
	.byte	22                              // DW_AT_name
	.word	295                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x11b:0x8 DW_TAG_typedef
	.word	291                             // DW_AT_type
	.byte	21                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	160                             // DW_AT_decl_line
	.byte	3                               // Abbrev [3] 0x123:0x4 DW_TAG_base_type
	.byte	20                              // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	15                              // Abbrev [15] 0x127:0x8 DW_TAG_typedef
	.word	291                             // DW_AT_type
	.byte	23                              // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	196                             // DW_AT_decl_line
	.byte	18                              // Abbrev [18] 0x12f:0x73 DW_TAG_subprogram
	.byte	10                              // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	38                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	19                              // Abbrev [19] 0x13a:0x9 DW_TAG_formal_parameter
	.byte	0                               // DW_AT_location
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	846                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x143:0x9 DW_TAG_formal_parameter
	.byte	1                               // DW_AT_location
	.byte	12                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	846                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x14c:0x9 DW_TAG_formal_parameter
	.byte	2                               // DW_AT_location
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	30                              // DW_AT_decl_line
	.word	846                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x155:0x9 DW_TAG_formal_parameter
	.byte	3                               // DW_AT_location
	.byte	14                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	31                              // DW_AT_decl_line
	.word	851                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x15e:0x9 DW_TAG_formal_parameter
	.byte	4                               // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	31                              // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	20                              // Abbrev [20] 0x167:0x9 DW_TAG_variable
	.byte	5                               // DW_AT_location
	.byte	44                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	35                              // DW_AT_decl_line
	.word	119                             // DW_AT_type
	.byte	20                              // Abbrev [20] 0x170:0x9 DW_TAG_variable
	.byte	6                               // DW_AT_location
	.byte	45                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	33                              // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	21                              // Abbrev [21] 0x179:0x10 DW_TAG_lexical_block
	.byte	11                              // DW_AT_low_pc
	.word	.Ltmp21-.Ltmp12                 // DW_AT_high_pc
	.byte	20                              // Abbrev [20] 0x17f:0x9 DW_TAG_variable
	.byte	7                               // DW_AT_location
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	40                              // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x189:0x6 DW_TAG_call_site
	.word	186                             // DW_AT_call_origin
	.byte	12                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x18f:0x6 DW_TAG_call_site
	.word	418                             // DW_AT_call_origin
	.byte	13                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x195:0x6 DW_TAG_call_site
	.word	433                             // DW_AT_call_origin
	.byte	14                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x19b:0x6 DW_TAG_call_site
	.word	186                             // DW_AT_call_origin
	.byte	15                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x1a2:0xf DW_TAG_subprogram
	.byte	25                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1204                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x1ab:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x1b1:0x14 DW_TAG_subprogram
	.byte	26                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1206                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x1ba:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x1bf:0x5 DW_TAG_formal_parameter
	.word	453                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	8                               // Abbrev [8] 0x1c5:0x5 DW_TAG_pointer_type
	.word	77                              // DW_AT_type
	.byte	23                              // Abbrev [23] 0x1ca:0x25 DW_TAG_subprogram
	.byte	16                              // DW_AT_low_pc
	.word	.Lfunc_end2-.Lfunc_begin2       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	39                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	263                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	135                             // DW_AT_type
                                        // DW_AT_external
	.byte	24                              // Abbrev [24] 0x1da:0xa DW_TAG_formal_parameter
	.byte	8                               // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	263                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	25                              // Abbrev [25] 0x1e4:0xa DW_TAG_variable
	.byte	9                               // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	264                             // DW_AT_decl_line
	.word	135                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	23                              // Abbrev [23] 0x1ef:0x25 DW_TAG_subprogram
	.byte	17                              // DW_AT_low_pc
	.word	.Lfunc_end3-.Lfunc_begin3       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	40                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	272                             // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	176                             // DW_AT_type
                                        // DW_AT_external
	.byte	24                              // Abbrev [24] 0x1ff:0xa DW_TAG_formal_parameter
	.byte	10                              // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	272                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	25                              // Abbrev [25] 0x209:0xa DW_TAG_variable
	.byte	11                              // DW_AT_location
	.byte	47                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	273                             // DW_AT_decl_line
	.word	176                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	26                              // Abbrev [26] 0x214:0xac DW_TAG_subprogram
	.byte	18                              // DW_AT_low_pc
	.word	.Lfunc_end4-.Lfunc_begin4       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
                                        // DW_AT_call_all_calls
	.byte	41                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	281                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
                                        // DW_AT_external
	.byte	27                              // Abbrev [27] 0x224:0xc DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	0
	.byte	48                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	283                             // DW_AT_decl_line
	.word	856                             // DW_AT_type
	.byte	25                              // Abbrev [25] 0x230:0xa DW_TAG_variable
	.byte	12                              // DW_AT_location
	.byte	45                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	282                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	25                              // Abbrev [25] 0x23a:0xa DW_TAG_variable
	.byte	13                              // DW_AT_location
	.byte	43                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	296                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	25                              // Abbrev [25] 0x244:0xa DW_TAG_variable
	.byte	15                              // DW_AT_location
	.byte	50                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	318                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	21                              // Abbrev [21] 0x24e:0x12 DW_TAG_lexical_block
	.byte	19                              // DW_AT_low_pc
	.word	.Ltmp74-.Ltmp71                 // DW_AT_high_pc
	.byte	27                              // Abbrev [27] 0x254:0xb DW_TAG_variable
	.byte	1                               // DW_AT_location
	.byte	88
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	307                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	21                              // Abbrev [21] 0x260:0x11 DW_TAG_lexical_block
	.byte	20                              // DW_AT_low_pc
	.word	.Ltmp80-.Ltmp76                 // DW_AT_high_pc
	.byte	25                              // Abbrev [25] 0x266:0xa DW_TAG_variable
	.byte	14                              // DW_AT_location
	.byte	46                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.hword	320                             // DW_AT_decl_line
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	12                              // Abbrev [12] 0x271:0x6 DW_TAG_call_site
	.word	704                             // DW_AT_call_origin
	.byte	21                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x277:0x6 DW_TAG_call_site
	.word	719                             // DW_AT_call_origin
	.byte	22                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x27d:0x6 DW_TAG_call_site
	.word	734                             // DW_AT_call_origin
	.byte	23                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x283:0x6 DW_TAG_call_site
	.word	458                             // DW_AT_call_origin
	.byte	24                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x289:0x6 DW_TAG_call_site
	.word	458                             // DW_AT_call_origin
	.byte	25                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x28f:0x6 DW_TAG_call_site
	.word	458                             // DW_AT_call_origin
	.byte	26                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x295:0x6 DW_TAG_call_site
	.word	495                             // DW_AT_call_origin
	.byte	27                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x29b:0x6 DW_TAG_call_site
	.word	759                             // DW_AT_call_origin
	.byte	28                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x2a1:0x6 DW_TAG_call_site
	.word	786                             // DW_AT_call_origin
	.byte	29                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x2a7:0x6 DW_TAG_call_site
	.word	303                             // DW_AT_call_origin
	.byte	30                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x2ad:0x6 DW_TAG_call_site
	.word	801                             // DW_AT_call_origin
	.byte	31                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x2b3:0x6 DW_TAG_call_site
	.word	826                             // DW_AT_call_origin
	.byte	32                              // DW_AT_call_return_pc
	.byte	12                              // Abbrev [12] 0x2b9:0x6 DW_TAG_call_site
	.word	841                             // DW_AT_call_origin
	.byte	33                              // DW_AT_call_return_pc
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2c0:0xf DW_TAG_subprogram
	.byte	27                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1172                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x2c9:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2cf:0xf DW_TAG_subprogram
	.byte	28                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1147                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x2d8:0x5 DW_TAG_formal_parameter
	.word	135                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x2de:0x19 DW_TAG_subprogram
	.byte	29                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1143                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x2e7:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x2ec:0x5 DW_TAG_formal_parameter
	.word	135                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x2f1:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	13                              // Abbrev [13] 0x2f7:0xe DW_TAG_subprogram
	.byte	30                              // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	75                              // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	773                             // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x2ff:0x5 DW_TAG_formal_parameter
	.word	781                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	15                              // Abbrev [15] 0x305:0x8 DW_TAG_typedef
	.word	283                             // DW_AT_type
	.byte	31                              // DW_AT_name
	.byte	6                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.byte	8                               // Abbrev [8] 0x30d:0x5 DW_TAG_pointer_type
	.word	773                             // DW_AT_type
	.byte	28                              // Abbrev [28] 0x312:0xb DW_TAG_subprogram
	.byte	32                              // DW_AT_name
	.byte	7                               // DW_AT_decl_file
	.hword	455                             // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x317:0x5 DW_TAG_formal_parameter
	.word	797                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x31d:0x4 DW_TAG_base_type
	.byte	33                              // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	22                              // Abbrev [22] 0x321:0x19 DW_TAG_subprogram
	.byte	34                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1192                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x32a:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	14                              // Abbrev [14] 0x32f:0x5 DW_TAG_formal_parameter
	.word	135                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x334:0x5 DW_TAG_formal_parameter
	.word	50                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	22                              // Abbrev [22] 0x33a:0xf DW_TAG_subprogram
	.byte	35                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1149                            // DW_AT_decl_line
                                        // DW_AT_prototyped
	.word	50                              // DW_AT_type
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	14                              // Abbrev [14] 0x343:0x5 DW_TAG_formal_parameter
	.word	135                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	29                              // Abbrev [29] 0x349:0x5 DW_TAG_subprogram
	.byte	36                              // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.hword	1202                            // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_declaration
                                        // DW_AT_external
	.byte	30                              // Abbrev [30] 0x34e:0x5 DW_TAG_restrict_type
	.word	135                             // DW_AT_type
	.byte	30                              // Abbrev [30] 0x353:0x5 DW_TAG_restrict_type
	.word	176                             // DW_AT_type
	.byte	4                               // Abbrev [4] 0x358:0xc DW_TAG_array_type
	.word	868                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x35d:0x6 DW_TAG_subrange_type
	.word	81                              // DW_AT_type
	.byte	128                             // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x364:0x4 DW_TAG_base_type
	.byte	49                              // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	208                             // Length of String Offsets Set
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
	.asciz	"simple_if"                     // string offset=589
.Linfo_string39:
	.asciz	"checked_malloc_int_array"      // string offset=599
.Linfo_string40:
	.asciz	"checked_malloc_bool_array"     // string offset=624
.Linfo_string41:
	.asciz	"main"                          // string offset=650
.Linfo_string42:
	.asciz	"ts"                            // string offset=655
.Linfo_string43:
	.asciz	"n"                             // string offset=658
.Linfo_string44:
	.asciz	"t"                             // string offset=660
.Linfo_string45:
	.asciz	"status"                        // string offset=662
.Linfo_string46:
	.asciz	"i"                             // string offset=669
.Linfo_string47:
	.asciz	"ptr"                           // string offset=671
.Linfo_string48:
	.asciz	"errstring"                     // string offset=675
.Linfo_string49:
	.asciz	"char"                          // string offset=685
.Linfo_string50:
	.asciz	"sum"                           // string offset=690
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
	.xword	.Ltmp22
	.xword	.Ltmp24
	.xword	.Lfunc_begin2
	.xword	.Lfunc_begin3
	.xword	.Lfunc_begin4
	.xword	.Ltmp71
	.xword	.Ltmp76
	.xword	.Ltmp56
	.xword	.Ltmp58
	.xword	.Ltmp61
	.xword	.Ltmp65
	.xword	.Ltmp66
	.xword	.Ltmp67
	.xword	.Ltmp68
	.xword	.Ltmp69
	.xword	.Ltmp70
	.xword	.Ltmp75
	.xword	.Ltmp91
	.xword	.Ltmp94
	.xword	.Ltmp96
.Ldebug_addr_end0:
	.ident	"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
