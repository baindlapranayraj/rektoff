	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0
	.private_extern	__ZN3std2rt10lang_start17h4003e0ffd23c54a1E
	.globl	__ZN3std2rt10lang_start17h4003e0ffd23c54a1E
	.p2align	2
__ZN3std2rt10lang_start17h4003e0ffd23c54a1E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	str	x1, [sp]
	mov	x0, x2
	ldr	x2, [sp]
	str	x0, [sp, #8]
	mov	x4, x3
	ldr	x3, [sp, #8]
	sub	x0, x29, #8
	stur	x8, [x29, #-8]
	adrp	x1, l___unnamed_1@PAGE
	add	x1, x1, l___unnamed_1@PAGEOFF
	bl	__ZN3std2rt19lang_start_internal17hd55fd6ef897020fbE
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9097b0aeb619ec9bE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h36f928e8b415ca90E
	bl	__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17haafe231a3a3c0846E
	and	w0, w0, #0xff
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN3std3sys9backtrace28__rust_begin_short_backtrace17h36f928e8b415ca90E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ops8function6FnOnce9call_once17h605c1581190a03f1E
	; InlineAsm Start
	; InlineAsm End
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6c783fc65cc8bfeaE:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0b094a955fdfb891E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hd07aeb0ba0c708f1E:
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception0
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x29, x30, [sp, #224]
	add	x29, sp, #224
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	sub	x8, x29, #56
	str	x8, [sp, #16]
	str	x0, [sp, #24]
	str	x1, [sp, #32]
	str	x2, [sp, #40]
	str	x3, [sp, #48]
	str	x4, [sp, #56]
	cbnz	x4, LBB4_2
	b	LBB4_1
LBB4_1:
	ldr	x8, [sp, #48]
	mov	w9, #1
	strb	w9, [sp, #71]
	str	x8, [sp, #72]
	ldrb	w9, [sp, #71]
	mov	w10, #1
	and	w9, w9, w10
	strb	w9, [sp, #87]
	fmov	d0, x8
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	stur	s0, [x29, #-60]
	ldur	w8, [x29, #-60]
	subs	w8, w8, #1
	b.eq	LBB4_3
	b	LBB4_4
LBB4_2:
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #40]
	subs	x9, x9, #0
	cset	w9, eq
	strb	w9, [sp, #71]
	str	x8, [sp, #72]
	ldrb	w9, [sp, #71]
	mov	w10, #1
	and	w9, w9, w10
	strb	w9, [sp, #87]
	fmov	d0, x8
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	stur	s0, [x29, #-60]
	ldur	w8, [x29, #-60]
	subs	w8, w8, #1
	b.eq	LBB4_8
	b	LBB4_4
LBB4_3:
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #24]
	stur	x9, [x29, #-80]
	subs	x8, x8, #1
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-72]
	and	x8, x8, x9
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-88]
	cbz	x8, LBB4_5
	b	LBB4_6
LBB4_4:
	add	x0, sp, #88
	adrp	x8, l___unnamed_2@PAGE
	add	x8, x8, l___unnamed_2@PAGEOFF
	str	x8, [sp, #88]
	mov	w8, #1
	str	x8, [sp, #96]
	adrp	x8, l___unnamed_3@PAGE
	adrp	x9, l___unnamed_3@PAGE
	add	x9, x9, l___unnamed_3@PAGEOFF
	ldr	x10, [x8, l___unnamed_3@PAGEOFF]
	mov	w8, #8
	ldr	x9, [x9, #8]
	str	x10, [sp, #120]
	str	x9, [sp, #128]
	str	x8, [sp, #104]
	str	xzr, [sp, #112]
Ltmp0:
	adrp	x1, l___unnamed_4@PAGE
	add	x1, x1, l___unnamed_4@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17ha0b5c5252c2f1706E
Ltmp1:
	b	LBB4_26
LBB4_5:
	b	LBB4_7
LBB4_6:
	b	LBB4_11
LBB4_7:
	b	LBB4_12
LBB4_8:
	ldr	x8, [sp, #48]
	ldr	x9, [sp, #24]
	stur	x9, [x29, #-80]
	subs	x8, x8, #1
	stur	x8, [x29, #-72]
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-72]
	and	x8, x8, x9
	stur	x8, [x29, #-88]
	ldur	x8, [x29, #-88]
	cbnz	x8, LBB4_6
	b	LBB4_9
LBB4_9:
	ldrb	w8, [sp, #87]
	tbnz	w8, #0, LBB4_7
	b	LBB4_10
LBB4_10:
	ldur	x8, [x29, #-80]
	cbnz	x8, LBB4_12
	b	LBB4_11
LBB4_11:
	b	LBB4_25
LBB4_12:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #48]
	ldrb	w10, [sp, #71]
	str	w10, [sp, #12]
	fmov	d0, x9
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	str	s0, [x8, #52]
	ldr	w8, [x8, #52]
	subs	w8, w8, #1
	b.ne	LBB4_14
	b	LBB4_13
LBB4_13:
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-72]
	and	x8, x8, x9
	cbz	x8, LBB4_15
	b	LBB4_16
LBB4_14:
	ldr	x10, [sp, #16]
	sub	x0, x29, #56
	adrp	x8, l___unnamed_2@PAGE
	add	x8, x8, l___unnamed_2@PAGEOFF
	stur	x8, [x29, #-56]
	mov	w8, #1
	stur	x8, [x29, #-48]
	adrp	x8, l___unnamed_3@PAGE
	adrp	x9, l___unnamed_3@PAGE
	add	x9, x9, l___unnamed_3@PAGEOFF
	ldr	x11, [x8, l___unnamed_3@PAGEOFF]
	mov	w8, #8
	ldr	x9, [x9, #8]
	str	x11, [x10, #32]
	str	x9, [x10, #40]
	stur	x8, [x29, #-40]
	stur	xzr, [x29, #-32]
Ltmp2:
	adrp	x1, l___unnamed_4@PAGE
	add	x1, x1, l___unnamed_4@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17ha0b5c5252c2f1706E
Ltmp3:
	b	LBB4_26
LBB4_15:
	ldr	w8, [sp, #12]
	tbnz	w8, #0, LBB4_18
	b	LBB4_17
LBB4_16:
	b	LBB4_19
LBB4_17:
	ldr	x8, [sp, #32]
	cbnz	x8, LBB4_20
	b	LBB4_19
LBB4_18:
	b	LBB4_20
LBB4_19:
	b	LBB4_25
LBB4_20:
Ltmp4:
	ldr	x3, [sp, #56]
	ldr	x2, [sp, #40]
	ldr	x1, [sp, #32]
	ldr	x0, [sp, #24]
	bl	__ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hba4e2c90e7bd8e05E
	str	w0, [sp, #8]
Ltmp5:
	b	LBB4_22
LBB4_21:
Ltmp6:
	bl	__ZN4core9panicking19panic_cannot_unwind17h14da2d2699e88696E
LBB4_22:
	ldr	w8, [sp, #8]
	tbnz	w8, #0, LBB4_24
	b	LBB4_23
LBB4_23:
	adrp	x0, l___unnamed_5@PAGE
	add	x0, x0, l___unnamed_5@PAGEOFF
	mov	w8, #166
	mov	x1, x8
	bl	__ZN4core9panicking14panic_nounwind17h072d1e65f18d6201E
LBB4_24:
	.cfi_def_cfa wsp, 240
	ldp	x29, x30, [sp, #224]
	add	sp, sp, #240
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB4_25:
	.cfi_restore_state
	b	LBB4_23
LBB4_26:
	brk	#0x1
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception0:
	.byte	255
	.byte	155
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0
	.uleb128 Ltmp5-Ltmp0
	.uleb128 Ltmp6-Lfunc_begin0
	.byte	1
Lcst_end0:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase0:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core10intrinsics9cold_path17h0f5941cc0558d2b2E:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt2rt8Argument11new_display17hf866e5a36c64a379E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x1, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6c783fc65cc8bfeaE@PAGE
	add	x1, x1, __ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h6c783fc65cc8bfeaE@PAGEOFF
	bl	__ZN4core3fmt2rt8Argument3new17h711c0415adbdb4ffE
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt2rt8Argument11new_display17hfeb9863b5cc90787E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x1, __ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0b094a955fdfb891E@PAGE
	add	x1, x1, __ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0b094a955fdfb891E@PAGEOFF
	bl	__ZN4core3fmt2rt8Argument3new17h00875f7e88da6b16E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt2rt8Argument3new17h00875f7e88da6b16E:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt2rt8Argument3new17h711c0415adbdb4ffE:
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [x8]
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments6new_v117h6cf6d7d3c8fb114aE:
	.cfi_startproc
	mov	x9, x8
	str	x0, [x9]
	mov	w8, #2
	str	x8, [x9, #8]
	adrp	x10, l___unnamed_3@PAGE
	adrp	x8, l___unnamed_3@PAGE
	add	x8, x8, l___unnamed_3@PAGEOFF
	ldr	x10, [x10, l___unnamed_3@PAGEOFF]
	ldr	x8, [x8, #8]
	str	x10, [x9, #32]
	str	x8, [x9, #40]
	str	x1, [x9, #16]
	mov	w8, #1
	str	x8, [x9, #24]
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3fmt9Arguments9new_const17h0c70fb0f648ee55cE:
	.cfi_startproc
	str	x0, [x8]
	mov	w9, #1
	str	x9, [x8, #8]
	adrp	x9, l___unnamed_3@PAGE
	adrp	x10, l___unnamed_3@PAGE
	add	x10, x10, l___unnamed_3@PAGEOFF
	ldr	x11, [x9, l___unnamed_3@PAGEOFF]
	mov	w9, #8
	ldr	x10, [x10, #8]
	str	x11, [x8, #32]
	str	x10, [x8, #40]
	str	x9, [x8, #16]
	str	xzr, [x8, #24]
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf886b4233c8dc6a5E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	ldr	x0, [x0]
	bl	__ZN4core3ops8function6FnOnce9call_once17ha62263a06eaf3dd5E
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17h605c1581190a03f1E:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	blr	x0
	.cfi_def_cfa wsp, 32
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ops8function6FnOnce9call_once17ha62263a06eaf3dd5E:
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception1
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #16
	str	x8, [sp, #16]
Ltmp9:
	bl	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9097b0aeb619ec9bE
	str	w0, [sp, #12]
Ltmp10:
	b	LBB14_3
LBB14_1:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
LBB14_2:
Ltmp11:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB14_1
LBB14_3:
	ldr	w0, [sp, #12]
	.cfi_def_cfa wsp, 64
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table14:
Lexception1:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp9-Lfunc_begin1
	.uleb128 Ltmp10-Ltmp9
	.uleb128 Ltmp11-Lfunc_begin1
	.byte	0
	.uleb128 Ltmp10-Lfunc_begin1
	.uleb128 Lfunc_end1-Ltmp10
	.byte	0
	.byte	0
Lcst_end1:
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2b6d686dd38033c3E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca660f0eecacbbf5E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hca660f0eecacbbf5E:
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception2
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp, #8]
Ltmp12:
	bl	__ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9c3b7a12be175c23E
Ltmp13:
	b	LBB16_3
LBB16_1:
Ltmp15:
	ldr	x0, [sp, #8]
	bl	__ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h1d178c8d38870007E
Ltmp16:
	b	LBB16_5
LBB16_2:
Ltmp14:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #24]
	b	LBB16_1
LBB16_3:
	ldr	x0, [sp, #8]
	bl	__ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h1d178c8d38870007E
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB16_4:
	.cfi_restore_state
Ltmp17:
	bl	__ZN4core9panicking16panic_in_cleanup17h7339610fb5fc966cE
LBB16_5:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception2:
	.byte	255
	.byte	155
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp12-Lfunc_begin2
	.uleb128 Ltmp13-Ltmp12
	.uleb128 Ltmp14-Lfunc_begin2
	.byte	0
	.uleb128 Ltmp15-Lfunc_begin2
	.uleb128 Ltmp16-Ltmp15
	.uleb128 Ltmp17-Lfunc_begin2
	.byte	1
	.uleb128 Ltmp16-Lfunc_begin2
	.uleb128 Lfunc_end2-Ltmp16
	.byte	0
	.byte	0
Lcst_end2:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase1:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h1d178c8d38870007E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h65bf36338478a7f4E
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17hd27bf5df636f3b13E:
	.cfi_startproc
	ret
	.cfi_endproc

	.p2align	2
__ZN4core4hint16assert_unchecked18precondition_check17h8fd94cc194ab9e97E:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	tbnz	w0, #0, LBB19_2
	b	LBB19_1
LBB19_1:
	adrp	x0, l___unnamed_6@PAGE
	add	x0, x0, l___unnamed_6@PAGEOFF
	mov	w8, #104
	mov	x1, x8
	bl	__ZN4core9panicking14panic_nounwind17h072d1e65f18d6201E
LBB19_2:
	.cfi_def_cfa wsp, 16
	ldp	x29, x30, [sp], #16
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4core5slice3raw14from_raw_parts18precondition_check17he9a1c0cf74d27f8aE:
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception3
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	str	x0, [sp]
	str	x1, [sp, #8]
	str	x2, [sp, #16]
	str	x3, [sp, #24]
	fmov	d0, x2
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	stur	s0, [x29, #-4]
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	b.ne	LBB20_2
	b	LBB20_1
LBB20_1:
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	subs	x9, x9, #1
	and	x8, x8, x9
	cbz	x8, LBB20_3
	b	LBB20_4
LBB20_2:
	add	x0, sp, #32
	adrp	x8, l___unnamed_2@PAGE
	add	x8, x8, l___unnamed_2@PAGEOFF
	str	x8, [sp, #32]
	mov	w8, #1
	str	x8, [sp, #40]
	adrp	x8, l___unnamed_3@PAGE
	adrp	x9, l___unnamed_3@PAGE
	add	x9, x9, l___unnamed_3@PAGEOFF
	ldr	x10, [x8, l___unnamed_3@PAGEOFF]
	mov	w8, #8
	ldr	x9, [x9, #8]
	str	x10, [sp, #64]
	str	x9, [sp, #72]
	str	x8, [sp, #48]
	str	xzr, [sp, #56]
Ltmp18:
	adrp	x1, l___unnamed_4@PAGE
	add	x1, x1, l___unnamed_4@PAGEOFF
	bl	__ZN4core9panicking9panic_fmt17ha0b5c5252c2f1706E
Ltmp19:
	b	LBB20_13
LBB20_3:
	ldr	x8, [sp]
	cbnz	x8, LBB20_6
	b	LBB20_5
LBB20_4:
	b	LBB20_5
LBB20_5:
	b	LBB20_16
LBB20_6:
	ldr	x8, [sp, #8]
	cbnz	x8, LBB20_8
	b	LBB20_7
LBB20_7:
	mov	x8, #-1
	stur	x8, [x29, #-16]
	b	LBB20_9
LBB20_8:
	ldr	x8, [sp, #8]
	cbz	x8, LBB20_11
	b	LBB20_10
LBB20_9:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	subs	x8, x8, x9
	b.ls	LBB20_15
	b	LBB20_14
LBB20_10:
	ldr	x9, [sp, #8]
	mov	x8, #9223372036854775807
	udiv	x8, x8, x9
	stur	x8, [x29, #-16]
	b	LBB20_9
LBB20_11:
Ltmp20:
	adrp	x0, l___unnamed_7@PAGE
	add	x0, x0, l___unnamed_7@PAGEOFF
	bl	__ZN4core9panicking11panic_const23panic_const_div_by_zero17he01ffb20ed1c332bE
Ltmp21:
	b	LBB20_13
LBB20_12:
Ltmp22:
	bl	__ZN4core9panicking19panic_cannot_unwind17h14da2d2699e88696E
LBB20_13:
	brk	#0x1
LBB20_14:
	b	LBB20_16
LBB20_15:
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB20_16:
	.cfi_restore_state
	adrp	x0, l___unnamed_8@PAGE
	add	x0, x0, l___unnamed_8@PAGEOFF
	mov	w8, #162
	mov	x1, x8
	bl	__ZN4core9panicking14panic_nounwind17h072d1e65f18d6201E
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table20:
Lexception3:
	.byte	255
	.byte	155
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp18-Lfunc_begin3
	.uleb128 Ltmp21-Ltmp18
	.uleb128 Ltmp22-Lfunc_begin3
	.byte	1
Lcst_end3:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase2:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4core9ub_checks23maybe_is_nonoverlapping7runtime17hba4e2c90e7bd8e05E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	umulh	x8, x2, x3
	mul	x9, x2, x3
	str	x9, [sp, #32]
	cbnz	x8, LBB21_2
	b	LBB21_1
LBB21_1:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x10, [sp, #32]
	stur	x10, [x29, #-16]
	mov	w10, #1
	stur	x10, [x29, #-24]
	ldur	x10, [x29, #-16]
	str	x10, [sp, #8]
	subs	x8, x8, x9
	b.lo	LBB21_4
	b	LBB21_3
LBB21_2:
	adrp	x0, l___unnamed_9@PAGE
	add	x0, x0, l___unnamed_9@PAGEOFF
	mov	w8, #61
	mov	x1, x8
	bl	__ZN4core9panicking14panic_nounwind17h072d1e65f18d6201E
LBB21_3:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB21_5
LBB21_4:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	stur	x8, [x29, #-8]
	b	LBB21_5
LBB21_5:
	ldr	x9, [sp, #8]
	ldur	x8, [x29, #-8]
	subs	x8, x8, x9
	cset	w0, hs
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hf31e44182579c676E:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]
	str	x0, [sp, #16]
	mov	x0, x1
	str	x0, [sp, #24]
	mov	w8, #1
	mov	x2, x8
	mov	x1, x2
	adrp	x3, l___unnamed_10@PAGE
	add	x3, x3, l___unnamed_10@PAGEOFF
	bl	__ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0cc074c43a8fe3f7E
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-16]
	stur	xzr, [x29, #-8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	b	LBB22_1
LBB22_1:
	ldr	x4, [sp, #24]
	ldr	x1, [sp, #32]
	ldr	x0, [sp, #16]
	mov	w8, #1
	mov	x3, x8
	mov	x2, x3
	bl	__ZN4core10intrinsics19copy_nonoverlapping18precondition_check17hd07aeb0ba0c708f1E
	b	LBB22_2
LBB22_2:
	ldr	x8, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x0, [sp, #32]
	lsr	x2, x8, #0
	bl	_memcpy
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #8]
	stur	x8, [x29, #-8]
	ldur	q0, [x29, #-24]
	str	q0, [x9]
	ldur	x8, [x29, #-8]
	str	x8, [x9, #16]
	.cfi_def_cfa wsp, 80
	ldp	x29, x30, [sp, #64]
	add	sp, sp, #80
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17haafe231a3a3c0846E:
	.cfi_startproc
	mov	w0, #0
	ret
	.cfi_endproc

	.p2align	2
__ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h0cc074c43a8fe3f7E:
	.cfi_startproc
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	mov	x8, x2
	ldr	x2, [sp, #24]
	str	x8, [sp, #32]
	mov	x1, x3
	ldr	x3, [sp, #32]
	str	x1, [sp, #40]
	add	x8, sp, #48
	mov	w9, #0
	and	w1, w9, #0x1
	bl	__ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17hba33529122a3f65dE
	ldr	x8, [sp, #48]
	cbnz	x8, LBB24_2
	b	LBB24_1
LBB24_1:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	x11, [sp, #56]
	ldr	x10, [sp, #64]
	stur	x11, [x29, #-40]
	stur	x10, [x29, #-32]
	stur	x9, [x29, #-24]
	stur	x8, [x29, #-16]
	cbz	x8, LBB24_3
	b	LBB24_4
LBB24_2:
	ldr	x2, [sp, #40]
	ldr	x0, [sp, #56]
	ldr	x1, [sp, #64]
	bl	__ZN5alloc7raw_vec12handle_error17h3a2b2a11ce049f14E
LBB24_3:
	mov	x8, #-1
	stur	x8, [x29, #-8]
	b	LBB24_5
LBB24_4:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	LBB24_5
LBB24_5:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	subs	x9, x9, #0
	subs	x8, x8, x9
	cset	w8, ls
	str	w8, [sp, #12]
	b	LBB24_6
LBB24_6:
	ldr	w0, [sp, #12]
	bl	__ZN4core4hint16assert_unchecked18precondition_check17h8fd94cc194ab9e97E
	b	LBB24_7
LBB24_7:
	ldur	x0, [x29, #-40]
	ldur	x1, [x29, #-32]
	.cfi_def_cfa wsp, 128
	ldp	x29, x30, [sp, #112]
	add	sp, sp, #128
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h0b094a955fdfb891E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #8]
	ldr	x8, [x0, #8]
	str	x8, [sp, #16]
	ldr	x8, [x0, #16]
	stur	x8, [x29, #-8]
	b	LBB25_1
LBB25_1:
	ldur	x3, [x29, #-8]
	ldr	x0, [sp, #16]
	mov	w8, #1
	mov	x2, x8
	mov	x1, x2
	bl	__ZN4core5slice3raw14from_raw_parts18precondition_check17he9a1c0cf74d27f8aE
	b	LBB25_2
LBB25_2:
	ldr	x2, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x0, [sp, #16]
	bl	__ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hbba14ab48b78580bE
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h5c040eb6c62aa9c9E:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]
	add	x8, sp, #8
	bl	__ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17hf31e44182579c676E
	ldr	x9, [sp]
	ldur	q0, [sp, #8]
	str	q0, [x9]
	ldr	x8, [sp, #24]
	str	x8, [x9, #16]
	.cfi_def_cfa wsp, 48
	ldp	x29, x30, [sp, #32]
	add	sp, sp, #48
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.p2align	2
__ZN4main4main17h32d243274e2ed5edE:
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, _rust_eh_personality
	.cfi_lsda 16, Lexception4
	sub	sp, sp, #192
	.cfi_def_cfa_offset 192
	stp	x29, x30, [sp, #176]
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_remember_state
	add	x8, sp, #8
	adrp	x0, l___unnamed_11@PAGE
	add	x0, x0, l___unnamed_11@PAGEOFF
	mov	w9, #6
	mov	x1, x9
	bl	__ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h5c040eb6c62aa9c9E
Ltmp23:
	add	x8, sp, #32
	adrp	x0, l___unnamed_12@PAGE
	add	x0, x0, l___unnamed_12@PAGEOFF
	bl	__ZN4core3fmt9Arguments9new_const17h0c70fb0f648ee55cE
Ltmp24:
	b	LBB27_3
LBB27_1:
Ltmp36:
	add	x0, sp, #8
	bl	__ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2b6d686dd38033c3E
Ltmp37:
	b	LBB27_10
LBB27_2:
Ltmp35:
	stur	x0, [x29, #-16]
	mov	x8, x1
	stur	w8, [x29, #-8]
	b	LBB27_1
LBB27_3:
Ltmp25:
	add	x0, sp, #32
	bl	__ZN3std2io5stdio6_print17hb25b47d52463b4cdE
Ltmp26:
	b	LBB27_4
LBB27_4:
Ltmp27:
	sub	x8, x29, #32
	add	x0, sp, #8
	bl	__ZN4core3fmt2rt8Argument11new_display17hfeb9863b5cc90787E
Ltmp28:
	b	LBB27_5
LBB27_5:
	ldur	q0, [x29, #-32]
	sub	x1, x29, #48
	stur	q0, [x29, #-48]
Ltmp29:
	add	x8, sp, #80
	adrp	x0, l___unnamed_13@PAGE
	add	x0, x0, l___unnamed_13@PAGEOFF
	bl	__ZN4core3fmt9Arguments6new_v117h6cf6d7d3c8fb114aE
Ltmp30:
	b	LBB27_6
LBB27_6:
Ltmp31:
	add	x0, sp, #80
	bl	__ZN3std2io5stdio6_print17hb25b47d52463b4cdE
Ltmp32:
	b	LBB27_7
LBB27_7:
Ltmp33:
	add	x0, sp, #8
	bl	__ZN4main9time_pass17h8c7cb1972d16558fE
Ltmp34:
	b	LBB27_8
LBB27_8:
	add	x0, sp, #8
	bl	__ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h2b6d686dd38033c3E
	.cfi_def_cfa wsp, 192
	ldp	x29, x30, [sp, #176]
	add	sp, sp, #192
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
LBB27_9:
	.cfi_restore_state
Ltmp38:
	bl	__ZN4core9panicking16panic_in_cleanup17h7339610fb5fc966cE
LBB27_10:
	ldur	x0, [x29, #-16]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table27:
Lexception4:
	.byte	255
	.byte	155
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4
	.uleb128 Ltmp23-Lfunc_begin4
	.byte	0
	.byte	0
	.uleb128 Ltmp23-Lfunc_begin4
	.uleb128 Ltmp24-Ltmp23
	.uleb128 Ltmp35-Lfunc_begin4
	.byte	0
	.uleb128 Ltmp36-Lfunc_begin4
	.uleb128 Ltmp37-Ltmp36
	.uleb128 Ltmp38-Lfunc_begin4
	.byte	1
	.uleb128 Ltmp25-Lfunc_begin4
	.uleb128 Ltmp34-Ltmp25
	.uleb128 Ltmp35-Lfunc_begin4
	.byte	0
	.uleb128 Ltmp34-Lfunc_begin4
	.uleb128 Lfunc_end4-Ltmp34
	.byte	0
	.byte	0
Lcst_end4:
	.byte	127
	.byte	0
	.p2align	2, 0x0
Lttbase3:
	.byte	0
	.p2align	2, 0x0

	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN4main9time_pass17h8c7cb1972d16558fE:
	.cfi_startproc
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	sub	x8, x29, #16
	bl	__ZN4core3fmt2rt8Argument11new_display17hf866e5a36c64a379E
	ldur	q0, [x29, #-16]
	sub	x1, x29, #32
	stur	q0, [x29, #-32]
	add	x8, sp, #16
	str	x8, [sp]
	adrp	x0, l___unnamed_14@PAGE
	add	x0, x0, l___unnamed_14@PAGEOFF
	bl	__ZN4core3fmt9Arguments6new_v117h6cf6d7d3c8fb114aE
	ldr	x0, [sp]
	bl	__ZN3std2io5stdio6_print17hb25b47d52463b4cdE
	.cfi_def_cfa wsp, 112
	ldp	x29, x30, [sp, #96]
	add	sp, sp, #112
	.cfi_def_cfa_offset 0
	.cfi_restore w30
	.cfi_restore w29
	ret
	.cfi_endproc

	.globl	_main
	.p2align	2
_main:
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x2, x1
	mov	x8, x0
	sxtw	x1, w8
	adrp	x0, __ZN4main4main17h32d243274e2ed5edE@PAGE
	add	x0, x0, __ZN4main4main17h32d243274e2ed5edE@PAGEOFF
	mov	w3, #0
	bl	__ZN3std2rt10lang_start17h4003e0ffd23c54a1E
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_1:
	.asciz	"\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.quad	__ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hf886b4233c8dc6a5E
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9097b0aeb619ec9bE
	.quad	__ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h9097b0aeb619ec9bE

	.section	__TEXT,__const
l___unnamed_15:
	.ascii	"is_aligned_to: align is not a power-of-two"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_2:
	.quad	l___unnamed_15
	.asciz	"*\000\000\000\000\000\000"

	.section	__TEXT,__literal16,16byte_literals
	.p2align	3, 0x0
l___unnamed_3:
	.space	8
	.space	8

	.section	__TEXT,__const
l___unnamed_16:
	.ascii	"/Users/pranayraj/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ptr/const_ptr.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_4:
	.quad	l___unnamed_16
	.asciz	"v\000\000\000\000\000\000\000\310\005\000\000\r\000\000"

	.section	__TEXT,__const
l___unnamed_5:
	.ascii	"unsafe precondition(s) violated: ptr::copy_nonoverlapping requires that both pointer arguments are aligned and non-null and the specified memory ranges do not overlap"

l___unnamed_6:
	.ascii	"unsafe precondition(s) violated: hint::assert_unchecked must never be called when the condition is false"

l___unnamed_17:
	.ascii	"/Users/pranayraj/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/core/src/ub_checks.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_7:
	.quad	l___unnamed_17
	.asciz	"r\000\000\000\000\000\000\000\206\000\000\0006\000\000"

	.section	__TEXT,__const
l___unnamed_8:
	.ascii	"unsafe precondition(s) violated: slice::from_raw_parts requires the pointer to be aligned and non-null, and the total size of the slice not to exceed `isize::MAX`"

l___unnamed_9:
	.ascii	"is_nonoverlapping: `size_of::<T>() * count` overflows a usize"

l___unnamed_18:
	.ascii	"/Users/pranayraj/.rustup/toolchains/stable-aarch64-apple-darwin/lib/rustlib/src/rust/library/alloc/src/slice.rs"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_10:
	.quad	l___unnamed_18
	.asciz	"o\000\000\000\000\000\000\000\241\000\000\000\031\000\000"

	.section	__TEXT,__const
l___unnamed_11:
	.ascii	"chinna"

l___unnamed_19:
	.ascii	"Say my name:\n"

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_12:
	.quad	l___unnamed_19
	.asciz	"\r\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_20:
	.byte	10

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_13:
	.quad	1
	.space	8
	.quad	l___unnamed_20
	.asciz	"\001\000\000\000\000\000\000"

	.section	__TEXT,__const
l___unnamed_21:
	.ascii	"Time passing with this guy: "

	.section	__DATA,__const
	.p2align	3, 0x0
l___unnamed_14:
	.quad	l___unnamed_21
	.asciz	"\034\000\000\000\000\000\000"
	.quad	l___unnamed_20
	.asciz	"\001\000\000\000\000\000\000"

.subsections_via_symbols
