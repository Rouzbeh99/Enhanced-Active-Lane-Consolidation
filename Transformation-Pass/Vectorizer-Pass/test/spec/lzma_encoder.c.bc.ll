; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size, i32 noundef %limit) local_unnamed_addr #0 !dbg !111 {
entry:
  %len = alloca i32, align 4
  %back = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !167, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %mf, metadata !168, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %out, metadata !169, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !170, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !171, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i32 %limit, metadata !172, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !173, metadata !DIExpression()), !dbg !282
  %is_initialized = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, !dbg !283
  %0 = load i8, ptr %is_initialized, align 1, !dbg !283, !tbaa !285, !range !295
  %tobool.not = icmp eq i8 %0, 0, !dbg !283
  br i1 %tobool.not, label %land.lhs.true, label %if.end, !dbg !296

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !297, metadata !DIExpression()) #11, !dbg !304
  call void @llvm.dbg.value(metadata ptr %mf, metadata !302, metadata !DIExpression()) #11, !dbg !304
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !303, metadata !DIExpression()) #11, !dbg !304
  %read_pos.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5, !dbg !306
  %1 = load i32, ptr %read_pos.i, align 8, !dbg !306, !tbaa !308
  %read_limit.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 7, !dbg !311
  %2 = load i32, ptr %read_limit.i, align 8, !dbg !311, !tbaa !312
  %cmp.i = icmp eq i32 %1, %2, !dbg !313
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !314

if.then.i:                                        ; preds = %land.lhs.true
  %action.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !315
  %3 = load i32, ptr %action.i, align 8, !dbg !315, !tbaa !318
  %cmp1.i = icmp eq i32 %3, 0, !dbg !319
  br i1 %cmp1.i, label %cleanup40, label %encode_init.exit.thread, !dbg !320

if.else.i:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %mf, metadata !321, metadata !DIExpression()) #11, !dbg !325
  call void @llvm.dbg.value(metadata i32 1, metadata !324, metadata !DIExpression()) #11, !dbg !325
  %skip.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !328
  %4 = load ptr, ptr %skip.i.i, align 8, !dbg !328, !tbaa !331
  tail call void %4(ptr noundef nonnull %mf, i32 noundef 1) #11, !dbg !332
  %read_ahead.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6, !dbg !333
  store i32 0, ptr %read_ahead.i.i, align 4, !dbg !334, !tbaa !335
  %is_match.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, !dbg !336
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !345
  call void @llvm.dbg.value(metadata ptr %is_match.i, metadata !343, metadata !DIExpression()) #11, !dbg !345
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !345
  %count.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 4, !dbg !347
  %5 = load i64, ptr %count.i.i, align 8, !dbg !347, !tbaa !348
  %arrayidx.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %5, !dbg !349
  store i32 0, ptr %arrayidx.i.i, align 4, !dbg !350, !tbaa !351
  %6 = load i64, ptr %count.i.i, align 8, !dbg !352, !tbaa !348
  %arrayidx2.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %6, !dbg !353
  store ptr %is_match.i, ptr %arrayidx2.i.i, align 8, !dbg !354, !tbaa !355
  %inc.i.i = add i64 %6, 1, !dbg !356
  store i64 %inc.i.i, ptr %count.i.i, align 8, !dbg !356, !tbaa !348
  %literal.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, !dbg !357
  %7 = load ptr, ptr %mf, align 8, !dbg !358, !tbaa !359
  %8 = load i8, ptr %7, align 1, !dbg !360, !tbaa !351
  %conv.i = zext i8 %8 to i32, !dbg !360
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !361, metadata !DIExpression()) #11, !dbg !373
  call void @llvm.dbg.value(metadata ptr %literal.i, metadata !366, metadata !DIExpression()) #11, !dbg !373
  call void @llvm.dbg.value(metadata i32 8, metadata !367, metadata !DIExpression()) #11, !dbg !373
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !368, metadata !DIExpression()) #11, !dbg !373
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()) #11, !dbg !373
  br label %do.body.i.i, !dbg !375

do.body.i.i:                                      ; preds = %do.body.i.i, %if.else.i
  %9 = phi i64 [ %inc.i.i, %if.else.i ], [ %inc.i.i.i, %do.body.i.i ], !dbg !376
  %model_index.0.i.i = phi i32 [ 1, %if.else.i ], [ %add.i18.i, %do.body.i.i ], !dbg !373
  %bit_count.addr.0.i.i = phi i32 [ 8, %if.else.i ], [ %dec.i.i, %do.body.i.i ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !373
  call void @llvm.dbg.value(metadata i32 %model_index.0.i.i, metadata !369, metadata !DIExpression()) #11, !dbg !373
  %dec.i.i = add nsw i32 %bit_count.addr.0.i.i, -1, !dbg !378
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !373
  %shr.i.i = lshr i32 %conv.i, %dec.i.i, !dbg !379
  %and.i.i = and i32 %shr.i.i, 1, !dbg !380
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !370, metadata !DIExpression()) #11, !dbg !381
  %idxprom.i.i = zext i32 %model_index.0.i.i to i64, !dbg !382
  %arrayidx.i17.i = getelementptr inbounds i16, ptr %literal.i, i64 %idxprom.i.i, !dbg !382
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !383
  call void @llvm.dbg.value(metadata ptr %arrayidx.i17.i, metadata !343, metadata !DIExpression()) #11, !dbg !383
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !344, metadata !DIExpression()) #11, !dbg !383
  %arrayidx.i.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %9, !dbg !384
  store i32 %and.i.i, ptr %arrayidx.i.i.i, align 4, !dbg !385, !tbaa !351
  %10 = load i64, ptr %count.i.i, align 8, !dbg !386, !tbaa !348
  %arrayidx2.i.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %10, !dbg !387
  store ptr %arrayidx.i17.i, ptr %arrayidx2.i.i.i, align 8, !dbg !388, !tbaa !355
  %inc.i.i.i = add i64 %10, 1, !dbg !389
  store i64 %inc.i.i.i, ptr %count.i.i, align 8, !dbg !389, !tbaa !348
  %shl.i.i = shl i32 %model_index.0.i.i, 1, !dbg !390
  %add.i18.i = or i32 %and.i.i, %shl.i.i, !dbg !391
  call void @llvm.dbg.value(metadata i32 %add.i18.i, metadata !369, metadata !DIExpression()) #11, !dbg !373
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0, !dbg !392
  br i1 %cmp.not.i.i, label %encode_init.exit.thread, label %do.body.i.i, !dbg !393, !llvm.loop !394

encode_init.exit.thread:                          ; preds = %do.body.i.i, %if.then.i
  store i8 1, ptr %is_initialized, align 1, !dbg !398, !tbaa !285
  br label %if.end, !dbg !399

if.end:                                           ; preds = %encode_init.exit.thread, %entry
  %11 = getelementptr i8, ptr %mf, i64 24, !dbg !400
  %mf.val = load i32, ptr %11, align 8, !dbg !400, !tbaa !308
  %12 = getelementptr i8, ptr %mf, i64 28, !dbg !400
  %mf.val73 = load i32, ptr %12, align 4, !dbg !400, !tbaa !335
  call void @llvm.dbg.value(metadata ptr undef, metadata !401, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata !DIArgList(i32 %mf.val, i32 %mf.val73), metadata !278, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !282
  %call2104 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !410
  br i1 %call2104, label %cleanup40, label %if.end4.lr.ph, !dbg !412

if.end4.lr.ph:                                    ; preds = %if.end
  %sub.i = sub i32 %mf.val, %mf.val73, !dbg !413
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !278, metadata !DIExpression()), !dbg !282
  %cmp.not = icmp eq i32 %limit, -1
  %read_pos = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 5
  %read_ahead = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6
  %13 = getelementptr i8, ptr %pcoder, i64 8
  %read_limit = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 7
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20
  %fast_mode = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6
  %pos_mask.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9
  %state.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %count.i.i76 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 4
  %reps.i65.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %arrayidx36.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 2
  %arrayidx38.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 3
  %arrayidx40.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 1
  %rep_len_encoder.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23
  %literal_pos_mask.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11
  %literal_context_bits.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10
  br label %if.end4, !dbg !412

if.end4:                                          ; preds = %if.end4.lr.ph, %encode_symbol.exit
  %position.0105 = phi i32 [ %sub.i, %if.end4.lr.ph ], [ %add26, %encode_symbol.exit ]
  call void @llvm.dbg.value(metadata i32 %position.0105, metadata !278, metadata !DIExpression()), !dbg !282
  %.pre = load i32, ptr %read_pos, align 8, !dbg !414, !tbaa !308
  br i1 %cmp.not, label %if.end11, label %land.lhs.true5, !dbg !415

land.lhs.true5:                                   ; preds = %if.end4
  %14 = load i32, ptr %read_ahead, align 4, !dbg !417, !tbaa !335
  %sub = sub i32 %.pre, %14, !dbg !418
  %cmp6.not = icmp ult i32 %sub, %limit, !dbg !419
  br i1 %cmp6.not, label %lor.lhs.false, label %while.end, !dbg !420

lor.lhs.false:                                    ; preds = %land.lhs.true5
  %15 = load i64, ptr %out_pos, align 8, !dbg !421, !tbaa !422
  %pcoder.val = load i64, ptr %13, align 8, !dbg !423, !tbaa !424
  call void @llvm.dbg.value(metadata ptr undef, metadata !425, metadata !DIExpression()), !dbg !432
  %sub.i74 = add i64 %15, 4, !dbg !434
  %add = add i64 %sub.i74, %pcoder.val, !dbg !435
  %cmp9 = icmp ugt i64 %add, 61438, !dbg !436
  br i1 %cmp9, label %while.end, label %if.end11, !dbg !437

if.end11:                                         ; preds = %if.end4, %lor.lhs.false
  %16 = load i32, ptr %read_limit, align 8, !dbg !438, !tbaa !312
  %cmp13.not = icmp ult i32 %.pre, %16, !dbg !440
  br i1 %cmp13.not, label %if.end22, label %if.then14, !dbg !441

if.then14:                                        ; preds = %if.end11
  %17 = load i32, ptr %action, align 8, !dbg !442, !tbaa !318
  %cmp15 = icmp eq i32 %17, 0, !dbg !445
  br i1 %cmp15, label %cleanup40, label %if.end17, !dbg !446

if.end17:                                         ; preds = %if.then14
  %18 = load i32, ptr %read_ahead, align 4, !dbg !447, !tbaa !335
  %cmp19 = icmp eq i32 %18, 0, !dbg !449
  br i1 %cmp19, label %while.end, label %if.end22, !dbg !450

if.end22:                                         ; preds = %if.end17, %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11, !dbg !451
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %back) #11, !dbg !452
  %19 = load i8, ptr %fast_mode, align 4, !dbg !453, !tbaa !455, !range !295
  %tobool23.not = icmp eq i8 %19, 0, !dbg !453
  call void @llvm.dbg.value(metadata ptr %len, metadata !279, metadata !DIExpression(DW_OP_deref)), !dbg !414
  call void @llvm.dbg.value(metadata ptr %len, metadata !279, metadata !DIExpression(DW_OP_deref)), !dbg !414
  call void @llvm.dbg.value(metadata ptr %back, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !414
  call void @llvm.dbg.value(metadata ptr %back, metadata !281, metadata !DIExpression(DW_OP_deref)), !dbg !414
  br i1 %tobool23.not, label %if.else, label %if.then24, !dbg !456

if.then24:                                        ; preds = %if.end22
  call void @lzma_lzma_optimum_fast(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len) #11, !dbg !457
  br label %if.end25, !dbg !457

if.else:                                          ; preds = %if.end22
  call void @lzma_lzma_optimum_normal(ptr noundef nonnull %pcoder, ptr noundef nonnull %mf, ptr noundef nonnull %back, ptr noundef nonnull %len, i32 noundef %position.0105) #11, !dbg !458
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %20 = load i32, ptr %back, align 4, !dbg !459, !tbaa !460
  call void @llvm.dbg.value(metadata i32 %20, metadata !281, metadata !DIExpression()), !dbg !414
  %21 = load i32, ptr %len, align 4, !dbg !461, !tbaa !460
  call void @llvm.dbg.value(metadata i32 %21, metadata !279, metadata !DIExpression()), !dbg !414
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !462, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata ptr %mf, metadata !467, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata i32 %20, metadata !468, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata i32 %21, metadata !469, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata i32 %position.0105, metadata !470, metadata !DIExpression()) #11, !dbg !473
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !471, metadata !DIExpression()) #11, !dbg !473
  %22 = load i32, ptr %pos_mask.i, align 8, !dbg !475, !tbaa !476
  %and.i = and i32 %22, %position.0105, !dbg !477
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !472, metadata !DIExpression()) #11, !dbg !473
  %cmp.i75 = icmp eq i32 %20, -1, !dbg !478
  %23 = load i32, ptr %state.i, align 8, !dbg !480, !tbaa !481
  %idxprom.i = zext i32 %23 to i64, !dbg !480
  %idxprom1.i = zext i32 %and.i to i64, !dbg !480
  %arrayidx2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %idxprom.i, i64 %idxprom1.i, !dbg !480
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !482
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !485
  call void @llvm.dbg.value(metadata ptr %arrayidx2.i, metadata !343, metadata !DIExpression()) #11, !dbg !482
  call void @llvm.dbg.value(metadata ptr %arrayidx2.i, metadata !343, metadata !DIExpression()) #11, !dbg !485
  %24 = load i64, ptr %count.i.i76, align 8, !dbg !480, !tbaa !348
  %arrayidx.i.i77 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %24, !dbg !480
  br i1 %cmp.i75, label %if.then.i85, label %if.else.i87, !dbg !488

if.then.i85:                                      ; preds = %if.end25
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !482
  store i32 0, ptr %arrayidx.i.i77, align 4, !dbg !489, !tbaa !351
  %25 = load i64, ptr %count.i.i76, align 8, !dbg !490, !tbaa !348
  %arrayidx2.i.i78 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %25, !dbg !491
  store ptr %arrayidx2.i, ptr %arrayidx2.i.i78, align 8, !dbg !492, !tbaa !355
  %inc.i.i79 = add i64 %25, 1, !dbg !493
  store i64 %inc.i.i79, ptr %count.i.i76, align 8, !dbg !493, !tbaa !348
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !494, metadata !DIExpression()) #11, !dbg !508
  call void @llvm.dbg.value(metadata ptr %mf, metadata !499, metadata !DIExpression()) #11, !dbg !508
  call void @llvm.dbg.value(metadata i32 %position.0105, metadata !500, metadata !DIExpression()) #11, !dbg !508
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !501, metadata !DIExpression()) #11, !dbg !508
  %26 = load ptr, ptr %mf, align 8, !dbg !510, !tbaa !359
  %27 = load i32, ptr %read_pos, align 8, !dbg !511, !tbaa !308
  %28 = load i32, ptr %read_ahead, align 4, !dbg !512, !tbaa !335
  %sub.i.i = sub i32 %27, %28, !dbg !513
  %idxprom.i.i81 = zext i32 %sub.i.i to i64, !dbg !514
  %arrayidx.i49.i = getelementptr inbounds i8, ptr %26, i64 %idxprom.i.i81, !dbg !514
  %29 = load i8, ptr %arrayidx.i49.i, align 1, !dbg !514, !tbaa !351
  call void @llvm.dbg.value(metadata i8 %29, metadata !502, metadata !DIExpression()) #11, !dbg !508
  %30 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !515, !tbaa !516
  %and.i.i82 = and i32 %30, %position.0105, !dbg !515
  %31 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !515, !tbaa !517
  %shl.i.i83 = shl i32 %and.i.i82, %31, !dbg !515
  %sub5.i.i = add i32 %sub.i.i, -1, !dbg !515
  %idxprom6.i.i = zext i32 %sub5.i.i to i64, !dbg !515
  %arrayidx7.i.i = getelementptr inbounds i8, ptr %26, i64 %idxprom6.i.i, !dbg !515
  %32 = load i8, ptr %arrayidx7.i.i, align 1, !dbg !515, !tbaa !351
  %conv.i.i = zext i8 %32 to i32, !dbg !515
  %sub9.i.i = sub i32 8, %31, !dbg !515
  %shr.i.i84 = lshr i32 %conv.i.i, %sub9.i.i, !dbg !515
  %add.i.i = add i32 %shr.i.i84, %shl.i.i83, !dbg !515
  %idxprom10.i.i = zext i32 %add.i.i to i64, !dbg !515
  %arrayidx11.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i64 %idxprom10.i.i, !dbg !515
  call void @llvm.dbg.value(metadata ptr %arrayidx11.i.i, metadata !504, metadata !DIExpression()) #11, !dbg !508
  %33 = load i32, ptr %state.i, align 8, !dbg !518, !tbaa !481
  %cmp.i.i = icmp ult i32 %33, 7, !dbg !518
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !519

if.then.i.i:                                      ; preds = %if.then.i85
  %conv13.i.i = zext i8 %29 to i32, !dbg !520
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !361, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata ptr %arrayidx11.i.i, metadata !366, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata i32 8, metadata !367, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata i32 %conv13.i.i, metadata !368, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()) #11, !dbg !522
  br label %do.body.i.i.i, !dbg !524

do.body.i.i.i:                                    ; preds = %do.body.i.i.i, %if.then.i.i
  %34 = phi i64 [ %inc.i.i79, %if.then.i.i ], [ %inc.i.i.i.i, %do.body.i.i.i ], !dbg !525
  %model_index.0.i.i.i = phi i32 [ 1, %if.then.i.i ], [ %add.i.i.i, %do.body.i.i.i ], !dbg !522
  %bit_count.addr.0.i.i.i = phi i32 [ 8, %if.then.i.i ], [ %dec.i.i.i, %do.body.i.i.i ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !522
  call void @llvm.dbg.value(metadata i32 %model_index.0.i.i.i, metadata !369, metadata !DIExpression()) #11, !dbg !522
  %dec.i.i.i = add nsw i32 %bit_count.addr.0.i.i.i, -1, !dbg !527
  call void @llvm.dbg.value(metadata i32 %dec.i.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !522
  %shr.i.i.i = lshr i32 %conv13.i.i, %dec.i.i.i, !dbg !528
  %and.i.i.i = and i32 %shr.i.i.i, 1, !dbg !529
  call void @llvm.dbg.value(metadata i32 %and.i.i.i, metadata !370, metadata !DIExpression()) #11, !dbg !530
  %idxprom.i.i.i = zext i32 %model_index.0.i.i.i to i64, !dbg !531
  %arrayidx.i.i.i86 = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i.i.i, !dbg !531
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !532
  call void @llvm.dbg.value(metadata ptr %arrayidx.i.i.i86, metadata !343, metadata !DIExpression()) #11, !dbg !532
  call void @llvm.dbg.value(metadata i32 %and.i.i.i, metadata !344, metadata !DIExpression()) #11, !dbg !532
  %arrayidx.i.i.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %34, !dbg !533
  store i32 %and.i.i.i, ptr %arrayidx.i.i.i.i, align 4, !dbg !534, !tbaa !351
  %35 = load i64, ptr %count.i.i76, align 8, !dbg !535, !tbaa !348
  %arrayidx2.i.i.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %35, !dbg !536
  store ptr %arrayidx.i.i.i86, ptr %arrayidx2.i.i.i.i, align 8, !dbg !537, !tbaa !355
  %inc.i.i.i.i = add i64 %35, 1, !dbg !538
  store i64 %inc.i.i.i.i, ptr %count.i.i76, align 8, !dbg !538, !tbaa !348
  %shl.i.i.i = shl i32 %model_index.0.i.i.i, 1, !dbg !539
  %add.i.i.i = or i32 %and.i.i.i, %shl.i.i.i, !dbg !540
  call void @llvm.dbg.value(metadata i32 %add.i.i.i, metadata !369, metadata !DIExpression()) #11, !dbg !522
  %cmp.not.i.i.i = icmp eq i32 %dec.i.i.i, 0, !dbg !541
  br i1 %cmp.not.i.i.i, label %if.end.i.i, label %do.body.i.i.i, !dbg !542, !llvm.loop !543

if.else.i.i:                                      ; preds = %if.then.i85
  %36 = load i32, ptr %reps.i65.i, align 4, !dbg !545, !tbaa !460
  %37 = xor i32 %36, -1, !dbg !546
  %sub20.i.i = add i32 %sub.i.i, %37, !dbg !547
  %idxprom21.i.i = zext i32 %sub20.i.i to i64, !dbg !548
  %arrayidx22.i.i = getelementptr inbounds i8, ptr %26, i64 %idxprom21.i.i, !dbg !548
  %38 = load i8, ptr %arrayidx22.i.i, align 1, !dbg !548, !tbaa !351
  call void @llvm.dbg.value(metadata i8 %38, metadata !505, metadata !DIExpression()) #11, !dbg !549
  %conv24.i.i = zext i8 %38 to i32, !dbg !550
  %conv25.i.i = zext i8 %29 to i32, !dbg !551
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !552, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata ptr %arrayidx11.i.i, metadata !555, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata i32 %conv24.i.i, metadata !556, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata i32 %conv25.i.i, metadata !557, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata i32 256, metadata !558, metadata !DIExpression()) #11, !dbg !563
  %add.i63.i.i = or i32 %conv25.i.i, 256, !dbg !565
  call void @llvm.dbg.value(metadata i32 %add.i63.i.i, metadata !557, metadata !DIExpression()) #11, !dbg !563
  br label %do.body.i74.i.i, !dbg !566

do.body.i74.i.i:                                  ; preds = %do.body.i74.i.i, %if.else.i.i
  %39 = phi i64 [ %inc.i.i79, %if.else.i.i ], [ %inc.i.i73.i.i, %do.body.i74.i.i ], !dbg !567
  %offset.0.i.i.i = phi i32 [ 256, %if.else.i.i ], [ %and6.i.i.i, %do.body.i74.i.i ], !dbg !563
  %symbol.addr.0.i.i.i = phi i32 [ %add.i63.i.i, %if.else.i.i ], [ %shl5.i.i.i, %do.body.i74.i.i ], !dbg !563
  %match_byte.addr.0.i.i.i = phi i32 [ %conv24.i.i, %if.else.i.i ], [ %shl.i66.i.i, %do.body.i74.i.i ]
  call void @llvm.dbg.value(metadata i32 %match_byte.addr.0.i.i.i, metadata !556, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i.i, metadata !557, metadata !DIExpression()) #11, !dbg !563
  call void @llvm.dbg.value(metadata i32 %offset.0.i.i.i, metadata !558, metadata !DIExpression()) #11, !dbg !563
  %shl.i66.i.i = shl i32 %match_byte.addr.0.i.i.i, 1, !dbg !569
  call void @llvm.dbg.value(metadata i32 %shl.i66.i.i, metadata !556, metadata !DIExpression()) #11, !dbg !563
  %and.i67.i.i = and i32 %shl.i66.i.i, %offset.0.i.i.i, !dbg !570
  call void @llvm.dbg.value(metadata i32 %and.i67.i.i, metadata !559, metadata !DIExpression()) #11, !dbg !571
  %shr.i68.i.i = lshr i32 %symbol.addr.0.i.i.i, 8, !dbg !572
  %add1.i.i.i = add i32 %shr.i68.i.i, %offset.0.i.i.i, !dbg !573
  %add2.i.i.i = add i32 %add1.i.i.i, %and.i67.i.i, !dbg !574
  call void @llvm.dbg.value(metadata i32 %add2.i.i.i, metadata !561, metadata !DIExpression()) #11, !dbg !571
  %shr3.i.i.i = lshr i32 %symbol.addr.0.i.i.i, 7, !dbg !575
  %and4.i.i.i = and i32 %shr3.i.i.i, 1, !dbg !576
  call void @llvm.dbg.value(metadata i32 %and4.i.i.i, metadata !562, metadata !DIExpression()) #11, !dbg !571
  %idxprom.i69.i.i = zext i32 %add2.i.i.i to i64, !dbg !577
  %arrayidx.i70.i.i = getelementptr inbounds i16, ptr %arrayidx11.i.i, i64 %idxprom.i69.i.i, !dbg !577
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !578
  call void @llvm.dbg.value(metadata ptr %arrayidx.i70.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !578
  call void @llvm.dbg.value(metadata i32 %and4.i.i.i, metadata !344, metadata !DIExpression()) #11, !dbg !578
  %arrayidx.i.i71.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %39, !dbg !579
  store i32 %and4.i.i.i, ptr %arrayidx.i.i71.i.i, align 4, !dbg !580, !tbaa !351
  %40 = load i64, ptr %count.i.i76, align 8, !dbg !581, !tbaa !348
  %arrayidx2.i.i72.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %40, !dbg !582
  store ptr %arrayidx.i70.i.i, ptr %arrayidx2.i.i72.i.i, align 8, !dbg !583, !tbaa !355
  %inc.i.i73.i.i = add i64 %40, 1, !dbg !584
  store i64 %inc.i.i73.i.i, ptr %count.i.i76, align 8, !dbg !584, !tbaa !348
  %shl5.i.i.i = shl nuw nsw i32 %symbol.addr.0.i.i.i, 1, !dbg !585
  call void @llvm.dbg.value(metadata i32 %shl5.i.i.i, metadata !557, metadata !DIExpression()) #11, !dbg !563
  %41 = xor i32 %shl5.i.i.i, %shl.i66.i.i, !dbg !586
  %neg.i.i.i = xor i32 %41, -1, !dbg !586
  %and6.i.i.i = and i32 %offset.0.i.i.i, %neg.i.i.i, !dbg !587
  call void @llvm.dbg.value(metadata i32 %and6.i.i.i, metadata !558, metadata !DIExpression()) #11, !dbg !563
  %cmp.i.i.i = icmp ult i32 %symbol.addr.0.i.i.i, 32768, !dbg !588
  br i1 %cmp.i.i.i, label %do.body.i74.i.i, label %if.end.i.i, !dbg !589, !llvm.loop !590

if.end.i.i:                                       ; preds = %do.body.i74.i.i, %do.body.i.i.i
  %42 = load i32, ptr %state.i, align 8, !dbg !592, !tbaa !481
  %cmp27.i.i = icmp ult i32 %42, 4, !dbg !592
  br i1 %cmp27.i.i, label %literal.exit.i, label %cond.false.i.i, !dbg !592

cond.false.i.i:                                   ; preds = %if.end.i.i
  %cmp30.i.i = icmp ult i32 %42, 10, !dbg !592
  br i1 %cmp30.i.i, label %cond.true32.i.i, label %cond.false35.i.i, !dbg !592

cond.true32.i.i:                                  ; preds = %cond.false.i.i
  %sub34.i.i = add nsw i32 %42, -3, !dbg !592
  br label %literal.exit.i, !dbg !592

cond.false35.i.i:                                 ; preds = %cond.false.i.i
  %sub37.i.i = add i32 %42, -6, !dbg !592
  br label %literal.exit.i, !dbg !592

literal.exit.i:                                   ; preds = %cond.false35.i.i, %cond.true32.i.i, %if.end.i.i
  %cond39.i.i = phi i32 [ 0, %if.end.i.i ], [ %sub34.i.i, %cond.true32.i.i ], [ %sub37.i.i, %cond.false35.i.i ], !dbg !592
  store i32 %cond39.i.i, ptr %state.i, align 8, !dbg !592, !tbaa !481
  br label %encode_symbol.exit, !dbg !593

if.else.i87:                                      ; preds = %if.end25
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()) #11, !dbg !485
  store i32 1, ptr %arrayidx.i.i77, align 4, !dbg !594, !tbaa !351
  %43 = load i64, ptr %count.i.i76, align 8, !dbg !595, !tbaa !348
  %arrayidx2.i52.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %43, !dbg !596
  store ptr %arrayidx2.i, ptr %arrayidx2.i52.i, align 8, !dbg !597, !tbaa !355
  %inc.i53.i = add i64 %43, 1, !dbg !598
  store i64 %inc.i53.i, ptr %count.i.i76, align 8, !dbg !598, !tbaa !348
  %cmp10.i = icmp ult i32 %20, 4, !dbg !599
  %44 = load i32, ptr %state.i, align 8, !dbg !601, !tbaa !481
  %idxprom14.i = zext i32 %44 to i64, !dbg !601
  %arrayidx15.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %idxprom14.i, !dbg !601
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !602
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !605
  call void @llvm.dbg.value(metadata ptr %arrayidx15.i, metadata !343, metadata !DIExpression()) #11, !dbg !602
  call void @llvm.dbg.value(metadata ptr %arrayidx15.i, metadata !343, metadata !DIExpression()) #11, !dbg !605
  %arrayidx.i55.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i53.i, !dbg !601
  br i1 %cmp10.i, label %if.then11.i, label %if.else16.i, !dbg !608

if.then11.i:                                      ; preds = %if.else.i87
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()) #11, !dbg !602
  store i32 1, ptr %arrayidx.i55.i, align 4, !dbg !609, !tbaa !351
  %45 = load i64, ptr %count.i.i76, align 8, !dbg !610, !tbaa !348
  %arrayidx2.i56.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %45, !dbg !611
  store ptr %arrayidx15.i, ptr %arrayidx2.i56.i, align 8, !dbg !612, !tbaa !355
  %inc.i57.i = add i64 %45, 1, !dbg !613
  store i64 %inc.i57.i, ptr %count.i.i76, align 8, !dbg !613, !tbaa !348
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !614, metadata !DIExpression()) #11, !dbg !626
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !619, metadata !DIExpression()) #11, !dbg !626
  call void @llvm.dbg.value(metadata i32 %20, metadata !620, metadata !DIExpression()) #11, !dbg !626
  call void @llvm.dbg.value(metadata i32 %21, metadata !621, metadata !DIExpression()) #11, !dbg !626
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !622, metadata !DIExpression()) #11, !dbg !626
  %cmp.i58.i = icmp eq i32 %20, 0, !dbg !628
  br i1 %cmp.i58.i, label %if.then.i64.i, label %if.else.i66.i, !dbg !629

if.then.i64.i:                                    ; preds = %if.then11.i
  %46 = load i32, ptr %state.i, align 8, !dbg !630, !tbaa !481
  %idxprom.i60.i = zext i32 %46 to i64, !dbg !632
  %arrayidx.i61.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom.i60.i, !dbg !632
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !633
  call void @llvm.dbg.value(metadata ptr %arrayidx.i61.i, metadata !343, metadata !DIExpression()) #11, !dbg !633
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !633
  %arrayidx.i.i62.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i57.i, !dbg !635
  store i32 0, ptr %arrayidx.i.i62.i, align 4, !dbg !636, !tbaa !351
  %47 = load i64, ptr %count.i.i76, align 8, !dbg !637, !tbaa !348
  %arrayidx2.i.i.i88 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %47, !dbg !638
  store ptr %arrayidx.i61.i, ptr %arrayidx2.i.i.i88, align 8, !dbg !639, !tbaa !355
  %inc.i.i.i89 = add i64 %47, 1, !dbg !640
  store i64 %inc.i.i.i89, ptr %count.i.i76, align 8, !dbg !640, !tbaa !348
  %48 = load i32, ptr %state.i, align 8, !dbg !641, !tbaa !481
  %idxprom3.i.i = zext i32 %48 to i64, !dbg !642
  %arrayidx6.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom3.i.i, i64 %idxprom1.i, !dbg !642
  %cmp7.i.i = icmp ne i32 %21, 1, !dbg !643
  %conv.i63.i = zext i1 %cmp7.i.i to i32, !dbg !643
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !644
  call void @llvm.dbg.value(metadata ptr %arrayidx6.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !644
  call void @llvm.dbg.value(metadata i32 %conv.i63.i, metadata !344, metadata !DIExpression()) #11, !dbg !644
  %arrayidx.i106.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i.i.i89, !dbg !646
  store i32 %conv.i63.i, ptr %arrayidx.i106.i.i, align 4, !dbg !647, !tbaa !351
  %49 = load i64, ptr %count.i.i76, align 8, !dbg !648, !tbaa !348
  %arrayidx2.i107.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %49, !dbg !649
  store ptr %arrayidx6.i.i, ptr %arrayidx2.i107.i.i, align 8, !dbg !650, !tbaa !355
  %inc.i108.i.i = add i64 %49, 1, !dbg !651
  store i64 %inc.i108.i.i, ptr %count.i.i76, align 8, !dbg !651, !tbaa !348
  br label %if.end50.i.i, !dbg !652

if.else.i66.i:                                    ; preds = %if.then11.i
  %idxprom8.i.i = zext i32 %20 to i64, !dbg !653
  %arrayidx9.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %idxprom8.i.i, !dbg !653
  %50 = load i32, ptr %arrayidx9.i.i, align 4, !dbg !653, !tbaa !460
  call void @llvm.dbg.value(metadata i32 %50, metadata !623, metadata !DIExpression()) #11, !dbg !654
  %51 = load i32, ptr %state.i, align 8, !dbg !655, !tbaa !481
  %idxprom13.i.i = zext i32 %51 to i64, !dbg !656
  %arrayidx14.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom13.i.i, !dbg !656
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !657
  call void @llvm.dbg.value(metadata ptr %arrayidx14.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !657
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()) #11, !dbg !657
  %arrayidx.i110.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i57.i, !dbg !659
  store i32 1, ptr %arrayidx.i110.i.i, align 4, !dbg !660, !tbaa !351
  %52 = load i64, ptr %count.i.i76, align 8, !dbg !661, !tbaa !348
  %arrayidx2.i111.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %52, !dbg !662
  store ptr %arrayidx14.i.i, ptr %arrayidx2.i111.i.i, align 8, !dbg !663, !tbaa !355
  %inc.i112.i.i = add i64 %52, 1, !dbg !664
  store i64 %inc.i112.i.i, ptr %count.i.i76, align 8, !dbg !664, !tbaa !348
  %cmp15.i.i = icmp eq i32 %20, 1, !dbg !665
  %53 = load i32, ptr %state.i, align 8, !dbg !667, !tbaa !481
  %idxprom20.i.i = zext i32 %53 to i64, !dbg !667
  %arrayidx21.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 16, i64 %idxprom20.i.i, !dbg !667
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !668
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !671
  call void @llvm.dbg.value(metadata ptr %arrayidx21.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !668
  call void @llvm.dbg.value(metadata ptr %arrayidx21.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !671
  %arrayidx.i114.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i112.i.i, !dbg !667
  br i1 %cmp15.i.i, label %if.then17.i.i, label %if.else22.i.i, !dbg !674

if.then17.i.i:                                    ; preds = %if.else.i66.i
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !668
  store i32 0, ptr %arrayidx.i114.i.i, align 4, !dbg !675, !tbaa !351
  %54 = load i64, ptr %count.i.i76, align 8, !dbg !676, !tbaa !348
  %arrayidx2.i115.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %54, !dbg !677
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i115.i.i, align 8, !dbg !678, !tbaa !355
  %inc.i116.i.i = add i64 %54, 1, !dbg !679
  store i64 %inc.i116.i.i, ptr %count.i.i76, align 8, !dbg !679, !tbaa !348
  br label %if.end43.i.i, !dbg !680

if.else22.i.i:                                    ; preds = %if.else.i66.i
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()) #11, !dbg !671
  store i32 1, ptr %arrayidx.i114.i.i, align 4, !dbg !681, !tbaa !351
  %55 = load i64, ptr %count.i.i76, align 8, !dbg !682, !tbaa !348
  %arrayidx2.i119.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %55, !dbg !683
  store ptr %arrayidx21.i.i, ptr %arrayidx2.i119.i.i, align 8, !dbg !684, !tbaa !355
  %inc.i120.i.i = add i64 %55, 1, !dbg !685
  store i64 %inc.i120.i.i, ptr %count.i.i76, align 8, !dbg !685, !tbaa !348
  %56 = load i32, ptr %state.i, align 8, !dbg !686, !tbaa !481
  %idxprom30.i.i = zext i32 %56 to i64, !dbg !687
  %arrayidx31.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 17, i64 %idxprom30.i.i, !dbg !687
  %sub.i67.i = add nsw i32 %20, -2, !dbg !688
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !689
  call void @llvm.dbg.value(metadata ptr %arrayidx31.i.i, metadata !343, metadata !DIExpression()) #11, !dbg !689
  call void @llvm.dbg.value(metadata i32 %sub.i67.i, metadata !344, metadata !DIExpression()) #11, !dbg !689
  %arrayidx.i122.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i120.i.i, !dbg !691
  store i32 %sub.i67.i, ptr %arrayidx.i122.i.i, align 4, !dbg !692, !tbaa !351
  %57 = load i64, ptr %count.i.i76, align 8, !dbg !693, !tbaa !348
  %arrayidx2.i123.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %57, !dbg !694
  store ptr %arrayidx31.i.i, ptr %arrayidx2.i123.i.i, align 8, !dbg !695, !tbaa !355
  %inc.i124.i.i = add i64 %57, 1, !dbg !696
  store i64 %inc.i124.i.i, ptr %count.i.i76, align 8, !dbg !696, !tbaa !348
  %cmp32.i.i = icmp eq i32 %20, 3, !dbg !697
  br i1 %cmp32.i.i, label %if.then34.i.i, label %if.end.i68.i, !dbg !699

if.then34.i.i:                                    ; preds = %if.else22.i.i
  %58 = load i32, ptr %arrayidx36.i.i, align 4, !dbg !700, !tbaa !460
  store i32 %58, ptr %arrayidx38.i.i, align 4, !dbg !701, !tbaa !460
  br label %if.end.i68.i, !dbg !702

if.end.i68.i:                                     ; preds = %if.then34.i.i, %if.else22.i.i
  %59 = load i32, ptr %arrayidx40.i.i, align 4, !dbg !703, !tbaa !460
  store i32 %59, ptr %arrayidx36.i.i, align 4, !dbg !704, !tbaa !460
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end.i68.i, %if.then17.i.i
  %60 = load i32, ptr %reps.i65.i, align 4, !dbg !705, !tbaa !460
  store i32 %60, ptr %arrayidx40.i.i, align 4, !dbg !706, !tbaa !460
  store i32 %50, ptr %reps.i65.i, align 4, !dbg !707, !tbaa !460
  br label %if.end50.i.i

if.end50.i.i:                                     ; preds = %if.end43.i.i, %if.then.i64.i
  %cmp51.i.i = icmp eq i32 %21, 1, !dbg !708
  br i1 %cmp51.i.i, label %rep_match.exit.i, label %if.else58.i.i, !dbg !710

if.else58.i.i:                                    ; preds = %if.end50.i.i
  %61 = load i8, ptr %fast_mode, align 4, !dbg !711, !tbaa !455, !range !295
  %tobool.i.i = icmp ne i8 %61, 0, !dbg !711
  call fastcc void @length(ptr noundef nonnull %pcoder, ptr noundef nonnull %rep_len_encoder.i.i, i32 noundef %and.i, i32 noundef %21, i1 noundef zeroext %tobool.i.i) #11, !dbg !713
  br label %rep_match.exit.i

rep_match.exit.i:                                 ; preds = %if.else58.i.i, %if.end50.i.i
  %.sink.i.i = phi i32 [ 8, %if.else58.i.i ], [ 9, %if.end50.i.i ]
  %62 = load i32, ptr %state.i, align 8, !dbg !714, !tbaa !481
  %cmp61.i.i = icmp ult i32 %62, 7, !dbg !714
  %cond63.i.i = select i1 %cmp61.i.i, i32 %.sink.i.i, i32 11, !dbg !714
  store i32 %cond63.i.i, ptr %state.i, align 8, !dbg !714, !tbaa !481
  br label %encode_symbol.exit, !dbg !715

if.else16.i:                                      ; preds = %if.else.i87
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !605
  store i32 0, ptr %arrayidx.i55.i, align 4, !dbg !716, !tbaa !351
  %63 = load i64, ptr %count.i.i76, align 8, !dbg !717, !tbaa !348
  %arrayidx2.i71.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %63, !dbg !718
  store ptr %arrayidx15.i, ptr %arrayidx2.i71.i, align 8, !dbg !719, !tbaa !355
  %inc.i72.i = add i64 %63, 1, !dbg !720
  store i64 %inc.i72.i, ptr %count.i.i76, align 8, !dbg !720, !tbaa !348
  %sub.i90 = add i32 %20, -4, !dbg !721
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i, i32 noundef %sub.i90, i32 noundef %21) #11, !dbg !722
  br label %encode_symbol.exit

encode_symbol.exit:                               ; preds = %literal.exit.i, %rep_match.exit.i, %if.else16.i
  %64 = load i32, ptr %read_ahead, align 4, !dbg !723, !tbaa !335
  %sub23.i = sub i32 %64, %21, !dbg !723
  store i32 %sub23.i, ptr %read_ahead, align 4, !dbg !723, !tbaa !335
  call void @llvm.dbg.value(metadata i32 %21, metadata !279, metadata !DIExpression()), !dbg !414
  %add26 = add i32 %21, %position.0105, !dbg !724
  call void @llvm.dbg.value(metadata i32 %add26, metadata !278, metadata !DIExpression()), !dbg !282
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %back) #11, !dbg !725
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11, !dbg !725
  %call2 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !410
  br i1 %call2, label %cleanup40, label %if.end4, !dbg !412, !llvm.loop !726

while.end:                                        ; preds = %if.end17, %land.lhs.true5, %lor.lhs.false
  %is_flushed = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, !dbg !728
  %65 = load i8, ptr %is_flushed, align 2, !dbg !728, !tbaa !730, !range !295
  %tobool27.not = icmp eq i8 %65, 0, !dbg !728
  br i1 %tobool27.not, label %if.then28, label %if.end38, !dbg !731

if.then28:                                        ; preds = %while.end
  store i8 1, ptr %is_flushed, align 2, !dbg !732, !tbaa !730
  br i1 %cmp.not, label %if.then31, label %for.body.i.preheader, !dbg !734

if.then31:                                        ; preds = %if.then28
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !735, metadata !DIExpression()) #11, !dbg !743
  call void @llvm.dbg.value(metadata i32 %position.0105, metadata !740, metadata !DIExpression()) #11, !dbg !743
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !741, metadata !DIExpression()) #11, !dbg !743
  %66 = load i32, ptr %pos_mask.i, align 8, !dbg !746, !tbaa !476
  %and.i92 = and i32 %66, %position.0105, !dbg !747
  call void @llvm.dbg.value(metadata i32 %and.i92, metadata !742, metadata !DIExpression()) #11, !dbg !743
  %67 = load i32, ptr %state.i, align 8, !dbg !748, !tbaa !481
  %idxprom.i94 = zext i32 %67 to i64, !dbg !749
  %idxprom1.i95 = zext i32 %and.i92 to i64, !dbg !749
  %arrayidx2.i96 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %idxprom.i94, i64 %idxprom1.i95, !dbg !749
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !750
  call void @llvm.dbg.value(metadata ptr %arrayidx2.i96, metadata !343, metadata !DIExpression()) #11, !dbg !750
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()) #11, !dbg !750
  %68 = load i64, ptr %count.i.i76, align 8, !dbg !752, !tbaa !348
  %arrayidx.i.i98 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %68, !dbg !753
  store i32 1, ptr %arrayidx.i.i98, align 4, !dbg !754, !tbaa !351
  %69 = load i64, ptr %count.i.i76, align 8, !dbg !755, !tbaa !348
  %arrayidx2.i.i99 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %69, !dbg !756
  store ptr %arrayidx2.i96, ptr %arrayidx2.i.i99, align 8, !dbg !757, !tbaa !355
  %inc.i.i100 = add i64 %69, 1, !dbg !758
  store i64 %inc.i.i100, ptr %count.i.i76, align 8, !dbg !758, !tbaa !348
  %70 = load i32, ptr %state.i, align 8, !dbg !759, !tbaa !481
  %idxprom5.i = zext i32 %70 to i64, !dbg !760
  %arrayidx6.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %idxprom5.i, !dbg !760
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()) #11, !dbg !761
  call void @llvm.dbg.value(metadata ptr %arrayidx6.i, metadata !343, metadata !DIExpression()) #11, !dbg !761
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()) #11, !dbg !761
  %arrayidx.i16.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i.i100, !dbg !763
  store i32 0, ptr %arrayidx.i16.i, align 4, !dbg !764, !tbaa !351
  %71 = load i64, ptr %count.i.i76, align 8, !dbg !765, !tbaa !348
  %arrayidx2.i17.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %71, !dbg !766
  store ptr %arrayidx6.i, ptr %arrayidx2.i17.i, align 8, !dbg !767, !tbaa !355
  %inc.i18.i = add i64 %71, 1, !dbg !768
  store i64 %inc.i18.i, ptr %count.i.i76, align 8, !dbg !768, !tbaa !348
  call fastcc void @match(ptr noundef nonnull %pcoder, i32 noundef %and.i92, i32 noundef -1, i32 noundef 2) #11, !dbg !769
  br label %for.body.i.preheader, !dbg !770

for.body.i.preheader:                             ; preds = %if.then31, %if.then28
  br label %for.body.i, !dbg !771

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.04.i = phi i64 [ %inc1.i, %for.body.i ], [ 0, %for.body.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.04.i, metadata !778, metadata !DIExpression()), !dbg !780
  %72 = load i64, ptr %count.i.i76, align 8, !dbg !781, !tbaa !348
  %inc.i = add i64 %72, 1, !dbg !781
  store i64 %inc.i, ptr %count.i.i76, align 8, !dbg !781, !tbaa !348
  %arrayidx.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %72, !dbg !783
  store i32 4, ptr %arrayidx.i, align 4, !dbg !784, !tbaa !351
  %inc1.i = add nuw nsw i64 %i.04.i, 1, !dbg !785
  call void @llvm.dbg.value(metadata i64 %inc1.i, metadata !778, metadata !DIExpression()), !dbg !780
  %exitcond.not.i = icmp eq i64 %inc1.i, 5, !dbg !786
  br i1 %exitcond.not.i, label %rc_flush.exit, label %for.body.i, !dbg !771, !llvm.loop !787

rc_flush.exit:                                    ; preds = %for.body.i
  %call35 = call fastcc zeroext i1 @rc_encode(ptr noundef nonnull %pcoder, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size), !dbg !789
  br i1 %call35, label %cleanup40, label %if.end38, !dbg !791

if.end38:                                         ; preds = %rc_flush.exit, %while.end
  store i8 0, ptr %is_flushed, align 2, !dbg !792, !tbaa !730
  br label %cleanup40, !dbg !793

cleanup40:                                        ; preds = %if.then14, %encode_symbol.exit, %if.end, %if.then.i, %if.end38, %rc_flush.exit
  %retval.1 = phi i32 [ 1, %if.end38 ], [ 0, %rc_flush.exit ], [ 0, %if.then.i ], [ 0, %if.end ], [ 0, %encode_symbol.exit ], [ 0, %if.then14 ], !dbg !282
  ret i32 %retval.1, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nofree nosync nounwind uwtable
define internal fastcc zeroext i1 @rc_encode(ptr noundef %rc, ptr nocapture noundef writeonly %out, ptr nocapture noundef %out_pos, i64 noundef %out_size) unnamed_addr #3 !dbg !795 {
entry:
  call void @llvm.dbg.value(metadata ptr %rc, metadata !799, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata ptr %out, metadata !800, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !801, metadata !DIExpression()), !dbg !810
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !802, metadata !DIExpression()), !dbg !810
  %pos = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 5
  %count = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 4
  %0 = load i64, ptr %pos, align 8, !dbg !811, !tbaa !812
  %1 = load i64, ptr %count, align 8, !dbg !813, !tbaa !348
  %cmp139 = icmp ult i64 %0, %1, !dbg !814
  br i1 %cmp139, label %while.body.lr.ph, label %while.end, !dbg !815

while.body.lr.ph:                                 ; preds = %entry
  %range = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 2
  %cache.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 3
  %cache_size.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 1
  %.pre = load i32, ptr %range, align 8, !dbg !816, !tbaa !818
  br label %while.body, !dbg !815

while.body:                                       ; preds = %while.body.lr.ph, %sw.epilog
  %2 = phi i64 [ %0, %while.body.lr.ph ], [ %inc58, %sw.epilog ]
  %3 = phi i32 [ %.pre, %while.body.lr.ph ], [ %41, %sw.epilog ], !dbg !816
  %cmp1 = icmp ult i32 %3, 16777216, !dbg !819
  br i1 %cmp1, label %if.then, label %if.end4, !dbg !820

if.then:                                          ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %rc, metadata !821, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr %out, metadata !824, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !826, metadata !DIExpression()), !dbg !827
  %4 = load i64, ptr %rc, align 8, !dbg !831, !tbaa !833
  %5 = and i64 %4, -16777216, !dbg !834
  %6 = icmp eq i64 %5, 4278190080, !dbg !834
  br i1 %6, label %entry.if.end22_crit_edge.i, label %do.body.i, !dbg !834

entry.if.end22_crit_edge.i:                       ; preds = %if.then
  %.pre.i = load i64, ptr %cache_size.i, align 8, !dbg !835, !tbaa !424
  %phi.bo.i = add i64 %.pre.i, 1, !dbg !834
  br label %if.end, !dbg !834

do.body.i:                                        ; preds = %if.then, %if.end.i
  %7 = load i64, ptr %out_pos, align 8, !dbg !836, !tbaa !422
  %cmp6.i = icmp eq i64 %7, %out_size, !dbg !840
  br i1 %cmp6.i, label %return, label %if.end.i, !dbg !841

if.end.i:                                         ; preds = %do.body.i
  %8 = load i8, ptr %cache.i, align 4, !dbg !842, !tbaa !843
  %9 = load i64, ptr %rc, align 8, !dbg !844, !tbaa !833
  %shr11.i = lshr i64 %9, 32, !dbg !845
  %conv12.i = trunc i64 %shr11.i to i8, !dbg !846
  %add.i = add i8 %8, %conv12.i, !dbg !847
  %arrayidx.i = getelementptr inbounds i8, ptr %out, i64 %7, !dbg !848
  store i8 %add.i, ptr %arrayidx.i, align 1, !dbg !849, !tbaa !351
  %10 = load i64, ptr %out_pos, align 8, !dbg !850, !tbaa !422
  %inc.i = add i64 %10, 1, !dbg !850
  store i64 %inc.i, ptr %out_pos, align 8, !dbg !850, !tbaa !422
  store i8 -1, ptr %cache.i, align 4, !dbg !851, !tbaa !843
  %11 = load i64, ptr %cache_size.i, align 8, !dbg !852, !tbaa !424
  %dec.i = add i64 %11, -1, !dbg !852
  store i64 %dec.i, ptr %cache_size.i, align 8, !dbg !852, !tbaa !424
  %cmp16.not.i = icmp eq i64 %dec.i, 0, !dbg !853
  br i1 %cmp16.not.i, label %do.end.i, label %do.body.i, !dbg !854, !llvm.loop !855

do.end.i:                                         ; preds = %if.end.i
  %12 = load i64, ptr %rc, align 8, !dbg !858, !tbaa !833
  %shr19.i = lshr i64 %12, 24, !dbg !859
  %conv20.i = trunc i64 %shr19.i to i8, !dbg !860
  store i8 %conv20.i, ptr %cache.i, align 4, !dbg !861, !tbaa !843
  %.pre141 = load i32, ptr %range, align 8, !dbg !862, !tbaa !818
  %.pre142.pre = load i64, ptr %pos, align 8, !dbg !863, !tbaa !812
  br label %if.end, !dbg !864

if.end:                                           ; preds = %do.end.i, %entry.if.end22_crit_edge.i
  %.pre142 = phi i64 [ %2, %entry.if.end22_crit_edge.i ], [ %.pre142.pre, %do.end.i ], !dbg !863
  %13 = phi i32 [ %3, %entry.if.end22_crit_edge.i ], [ %.pre141, %do.end.i ], !dbg !862
  %14 = phi i64 [ %4, %entry.if.end22_crit_edge.i ], [ %12, %do.end.i ], !dbg !865
  %15 = phi i64 [ %phi.bo.i, %entry.if.end22_crit_edge.i ], [ 1, %do.end.i ]
  store i64 %15, ptr %cache_size.i, align 8, !dbg !835, !tbaa !424
  %and26.i = shl i64 %14, 8, !dbg !866
  %shl.i = and i64 %and26.i, 4294967040, !dbg !866
  store i64 %shl.i, ptr %rc, align 8, !dbg !867, !tbaa !833
  %shl = shl i32 %13, 8, !dbg !862
  store i32 %shl, ptr %range, align 8, !dbg !862, !tbaa !818
  br label %if.end4, !dbg !868

if.end4:                                          ; preds = %if.end, %while.body
  %16 = phi i64 [ %.pre142, %if.end ], [ %2, %while.body ], !dbg !863
  %17 = phi i32 [ %shl, %if.end ], [ %3, %while.body ]
  %arrayidx = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %16, !dbg !869
  %18 = load i32, ptr %arrayidx, align 4, !dbg !869, !tbaa !351
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
    i32 2, label %sw.bb38
    i32 3, label %sw.bb41
    i32 4, label %sw.bb48
  ], !dbg !870

sw.bb:                                            ; preds = %if.end4
  %arrayidx7 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %16, !dbg !871
  %19 = load ptr, ptr %arrayidx7, align 8, !dbg !871, !tbaa !355
  %20 = load i16, ptr %19, align 2, !dbg !872, !tbaa !873
  call void @llvm.dbg.value(metadata i16 %20, metadata !803, metadata !DIExpression()), !dbg !874
  %shr = lshr i32 %17, 11, !dbg !875
  %conv = zext i16 %20 to i32, !dbg !876
  %mul = mul i32 %shr, %conv, !dbg !877
  store i32 %mul, ptr %range, align 8, !dbg !878, !tbaa !818
  %sub = sub nsw i32 2048, %conv, !dbg !879
  %shr11 = lshr i32 %sub, 5, !dbg !880
  %21 = trunc i32 %shr11 to i16, !dbg !881
  %conv13 = add i16 %20, %21, !dbg !881
  call void @llvm.dbg.value(metadata i16 %conv13, metadata !803, metadata !DIExpression()), !dbg !874
  store i16 %conv13, ptr %19, align 2, !dbg !882, !tbaa !873
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end4
  %arrayidx21 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %16, !dbg !883
  %22 = load ptr, ptr %arrayidx21, align 8, !dbg !883, !tbaa !355
  %23 = load i16, ptr %22, align 2, !dbg !884, !tbaa !873
  call void @llvm.dbg.value(metadata i16 %23, metadata !807, metadata !DIExpression()), !dbg !885
  %conv22 = zext i16 %23 to i32, !dbg !886
  %shr24 = lshr i32 %17, 11, !dbg !887
  %mul25 = mul i32 %shr24, %conv22, !dbg !888
  call void @llvm.dbg.value(metadata i32 %mul25, metadata !809, metadata !DIExpression()), !dbg !885
  %conv26 = zext i32 %mul25 to i64, !dbg !889
  %24 = load i64, ptr %rc, align 8, !dbg !890, !tbaa !833
  %add27 = add i64 %24, %conv26, !dbg !890
  store i64 %add27, ptr %rc, align 8, !dbg !890, !tbaa !833
  %sub29 = sub i32 %17, %mul25, !dbg !891
  store i32 %sub29, ptr %range, align 8, !dbg !891, !tbaa !818
  %25 = lshr i16 %23, 5, !dbg !892
  %sub33 = sub i16 %23, %25, !dbg !893
  call void @llvm.dbg.value(metadata i16 %sub33, metadata !807, metadata !DIExpression()), !dbg !885
  store i16 %sub33, ptr %22, align 2, !dbg !894, !tbaa !873
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end4
  %shr40 = lshr i32 %17, 1, !dbg !895
  store i32 %shr40, ptr %range, align 8, !dbg !895, !tbaa !818
  br label %sw.epilog, !dbg !896

sw.bb41:                                          ; preds = %if.end4
  %shr43 = lshr i32 %17, 1, !dbg !897
  store i32 %shr43, ptr %range, align 8, !dbg !897, !tbaa !818
  %conv45 = zext i32 %shr43 to i64, !dbg !898
  %26 = load i64, ptr %rc, align 8, !dbg !899, !tbaa !833
  %add47 = add i64 %26, %conv45, !dbg !899
  store i64 %add47, ptr %rc, align 8, !dbg !899, !tbaa !833
  br label %sw.epilog, !dbg !900

sw.bb48:                                          ; preds = %if.end4
  store i32 -1, ptr %range, align 8, !dbg !901, !tbaa !818
  %.pre143 = load i64, ptr %rc, align 8, !dbg !902, !tbaa !833
  br label %do.body, !dbg !906

do.body:                                          ; preds = %do.cond, %sw.bb48
  %27 = phi i64 [ %inc, %do.cond ], [ %16, %sw.bb48 ]
  %28 = phi i64 [ %shl.i124, %do.cond ], [ %.pre143, %sw.bb48 ], !dbg !902
  call void @llvm.dbg.value(metadata ptr %rc, metadata !821, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %out, metadata !824, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !825, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !826, metadata !DIExpression()), !dbg !907
  %29 = and i64 %28, -16777216, !dbg !908
  %30 = icmp eq i64 %29, 4278190080, !dbg !908
  br i1 %30, label %entry.if.end22_crit_edge.i105, label %do.body.i110, !dbg !908

entry.if.end22_crit_edge.i105:                    ; preds = %do.body
  %.pre.i103 = load i64, ptr %cache_size.i, align 8, !dbg !909, !tbaa !424
  %phi.bo.i104 = add i64 %.pre.i103, 1, !dbg !908
  br label %do.cond, !dbg !908

do.body.i110:                                     ; preds = %do.body, %if.end.i118
  %31 = load i64, ptr %out_pos, align 8, !dbg !910, !tbaa !422
  %cmp6.i109 = icmp eq i64 %31, %out_size, !dbg !911
  br i1 %cmp6.i109, label %return, label %if.end.i118, !dbg !912

if.end.i118:                                      ; preds = %do.body.i110
  %32 = load i8, ptr %cache.i, align 4, !dbg !913, !tbaa !843
  %33 = load i64, ptr %rc, align 8, !dbg !914, !tbaa !833
  %shr11.i111 = lshr i64 %33, 32, !dbg !915
  %conv12.i112 = trunc i64 %shr11.i111 to i8, !dbg !916
  %add.i113 = add i8 %32, %conv12.i112, !dbg !917
  %arrayidx.i114 = getelementptr inbounds i8, ptr %out, i64 %31, !dbg !918
  store i8 %add.i113, ptr %arrayidx.i114, align 1, !dbg !919, !tbaa !351
  %34 = load i64, ptr %out_pos, align 8, !dbg !920, !tbaa !422
  %inc.i115 = add i64 %34, 1, !dbg !920
  store i64 %inc.i115, ptr %out_pos, align 8, !dbg !920, !tbaa !422
  store i8 -1, ptr %cache.i, align 4, !dbg !921, !tbaa !843
  %35 = load i64, ptr %cache_size.i, align 8, !dbg !922, !tbaa !424
  %dec.i116 = add i64 %35, -1, !dbg !922
  store i64 %dec.i116, ptr %cache_size.i, align 8, !dbg !922, !tbaa !424
  %cmp16.not.i117 = icmp eq i64 %dec.i116, 0, !dbg !923
  br i1 %cmp16.not.i117, label %do.end.i121, label %do.body.i110, !dbg !924, !llvm.loop !925

do.end.i121:                                      ; preds = %if.end.i118
  %36 = load i64, ptr %rc, align 8, !dbg !928, !tbaa !833
  %shr19.i119 = lshr i64 %36, 24, !dbg !929
  %conv20.i120 = trunc i64 %shr19.i119 to i8, !dbg !930
  store i8 %conv20.i120, ptr %cache.i, align 4, !dbg !931, !tbaa !843
  %.pre144 = load i64, ptr %pos, align 8, !dbg !932, !tbaa !812
  br label %do.cond, !dbg !933

do.cond:                                          ; preds = %do.end.i121, %entry.if.end22_crit_edge.i105
  %37 = phi i64 [ %27, %entry.if.end22_crit_edge.i105 ], [ %.pre144, %do.end.i121 ], !dbg !932
  %38 = phi i64 [ %28, %entry.if.end22_crit_edge.i105 ], [ %36, %do.end.i121 ], !dbg !934
  %39 = phi i64 [ %phi.bo.i104, %entry.if.end22_crit_edge.i105 ], [ 1, %do.end.i121 ]
  store i64 %39, ptr %cache_size.i, align 8, !dbg !909, !tbaa !424
  %and26.i123 = shl i64 %38, 8, !dbg !935
  %shl.i124 = and i64 %and26.i123, 4294967040, !dbg !935
  store i64 %shl.i124, ptr %rc, align 8, !dbg !936, !tbaa !833
  %inc = add i64 %37, 1, !dbg !932
  store i64 %inc, ptr %pos, align 8, !dbg !932, !tbaa !812
  %40 = load i64, ptr %count, align 8, !dbg !937, !tbaa !348
  %cmp55 = icmp ult i64 %inc, %40, !dbg !938
  br i1 %cmp55, label %do.body, label %do.end, !dbg !939, !llvm.loop !940

do.end:                                           ; preds = %do.cond
  call void @llvm.dbg.value(metadata ptr %rc, metadata !942, metadata !DIExpression()) #11, !dbg !945
  store i64 0, ptr %rc, align 8, !dbg !947, !tbaa !833
  store i64 1, ptr %cache_size.i, align 8, !dbg !948, !tbaa !424
  store i32 -1, ptr %range, align 8, !dbg !949, !tbaa !818
  store i8 0, ptr %cache.i, align 4, !dbg !950, !tbaa !843
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false) #11, !dbg !951
  br label %return, !dbg !952

sw.epilog:                                        ; preds = %if.end4, %sw.bb41, %sw.bb38, %sw.bb17, %sw.bb
  %41 = phi i32 [ %17, %if.end4 ], [ %shr43, %sw.bb41 ], [ %shr40, %sw.bb38 ], [ %sub29, %sw.bb17 ], [ %mul, %sw.bb ]
  %inc58 = add i64 %16, 1, !dbg !953
  store i64 %inc58, ptr %pos, align 8, !dbg !953, !tbaa !812
  %42 = load i64, ptr %count, align 8, !dbg !813, !tbaa !348
  %cmp = icmp ult i64 %inc58, %42, !dbg !814
  br i1 %cmp, label %while.body, label %while.end, !dbg !815, !llvm.loop !954

while.end:                                        ; preds = %sw.epilog, %entry
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count, i8 0, i64 16, i1 false), !dbg !956
  br label %return, !dbg !957

return:                                           ; preds = %do.body.i, %do.body.i110, %while.end, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %while.end ], [ true, %do.body.i110 ], [ true, %do.body.i ], !dbg !810
  ret i1 %retval.0, !dbg !958
}

declare !dbg !959 void @lzma_lzma_optimum_fast(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !965 void @lzma_lzma_optimum_normal(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_reset(ptr noundef %pcoder, ptr nocapture noundef readonly %options) local_unnamed_addr #5 !dbg !968 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1005, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %options, metadata !1006, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1007, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata ptr %options, metadata !1026, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata ptr %options, metadata !1034, metadata !DIExpression()), !dbg !1037
  %lc.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !1039
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1039, !tbaa !1040
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1042
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup, !dbg !1043

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !1044
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1044, !tbaa !1045
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1046
  %add.i.i = add i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1047
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup, !dbg !1047

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !1048
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1048, !tbaa !1049
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1050
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %cleanup, !dbg !1051

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !1052
  %3 = load i32, ptr %nice_len.i, align 4, !dbg !1052, !tbaa !1053
  %4 = add i32 %3, -2, !dbg !1054
  %5 = icmp ult i32 %4, 272, !dbg !1054
  br i1 %5, label %is_options_valid.exit, label %cleanup, !dbg !1054

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 6, !dbg !1055
  %6 = load i32, ptr %mode.i, align 8, !dbg !1055, !tbaa !1056
  %7 = add i32 %6, -1, !dbg !1057
  %8 = icmp ult i32 %7, 2, !dbg !1057
  br i1 %8, label %if.end, label %cleanup, !dbg !1058

if.end:                                           ; preds = %is_options_valid.exit
  %notmask = shl nsw i32 -1, %2, !dbg !1059
  %sub = xor i32 %notmask, -1, !dbg !1059
  %pos_mask = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, !dbg !1060
  store i32 %sub, ptr %pos_mask, align 8, !dbg !1061, !tbaa !476
  %literal_context_bits = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !1062
  store i32 %0, ptr %literal_context_bits, align 4, !dbg !1063, !tbaa !517
  %notmask127 = shl nsw i32 -1, %1, !dbg !1064
  %sub2 = xor i32 %notmask127, -1, !dbg !1064
  %literal_pos_mask = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, !dbg !1065
  store i32 %sub2, ptr %literal_pos_mask, align 8, !dbg !1066, !tbaa !516
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !942, metadata !DIExpression()) #11, !dbg !1067
  store i64 0, ptr %pcoder, align 8, !dbg !1069, !tbaa !833
  %cache_size.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 1, !dbg !1070
  store i64 1, ptr %cache_size.i, align 8, !dbg !1071, !tbaa !424
  %range.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 2, !dbg !1072
  store i32 -1, ptr %range.i, align 8, !dbg !1073, !tbaa !818
  %cache.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 3, !dbg !1074
  store i8 0, ptr %cache.i, align 4, !dbg !1075, !tbaa !843
  %count.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 4, !dbg !1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %count.i, i8 0, i64 16, i1 false) #11, !dbg !1077
  %state = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !1078
  call void @llvm.dbg.value(metadata i64 0, metadata !1008, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 undef, metadata !1008, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 undef, metadata !1008, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1079
  %literal = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, !dbg !1080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %state, i8 0, i64 20, i1 false), !dbg !1081
  %9 = load i32, ptr %lc.i.i, align 4, !dbg !1082, !tbaa !1040
  %10 = load i32, ptr %lp.i.i, align 8, !dbg !1083, !tbaa !1045
  call void @llvm.dbg.value(metadata ptr %literal, metadata !1084, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %9, metadata !1092, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %10, metadata !1093, metadata !DIExpression()), !dbg !1100
  %add.i = add i32 %10, %9, !dbg !1102
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 %add.i), metadata !1094, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !1100
  call void @llvm.dbg.value(metadata i32 0, metadata !1095, metadata !DIExpression()), !dbg !1103
  br label %for.cond1.preheader.i, !dbg !1104

for.cond1.preheader.i:                            ; preds = %for.cond.cleanup3.i, %if.end
  %i.015.i = phi i32 [ 0, %if.end ], [ %inc8.i, %for.cond.cleanup3.i ]
  call void @llvm.dbg.value(metadata i32 %i.015.i, metadata !1095, metadata !DIExpression()), !dbg !1103
  %idxprom.i = zext i32 %i.015.i to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !1097, metadata !DIExpression()), !dbg !1105
  br label %for.body4.i, !dbg !1106

for.cond.cleanup3.i:                              ; preds = %for.body4.i
  %inc8.i = add i32 %i.015.i, 1, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %inc8.i, metadata !1095, metadata !DIExpression()), !dbg !1103
  %i.0.highbits.i = lshr i32 %inc8.i, %add.i, !dbg !1108
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0, !dbg !1108
  br i1 %cmp.i, label %for.cond1.preheader.i, label %for.cond6.preheader, !dbg !1104, !llvm.loop !1109

for.cond6.preheader:                              ; preds = %for.cond.cleanup3.i
  %conv = zext i32 %sub to i64
  call void @llvm.dbg.value(metadata i64 0, metadata !1010, metadata !DIExpression()), !dbg !1111
  br label %for.cond10.preheader, !dbg !1112

for.body4.i:                                      ; preds = %for.body4.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body4.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !1097, metadata !DIExpression()), !dbg !1105
  %arrayidx6.i = getelementptr inbounds [768 x i16], ptr %literal, i64 %idxprom.i, i64 %indvars.iv.i, !dbg !1113
  store i16 1024, ptr %arrayidx6.i, align 2, !dbg !1113, !tbaa !873
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !1097, metadata !DIExpression()), !dbg !1105
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 768, !dbg !1116
  br i1 %exitcond.not.i, label %for.cond.cleanup3.i, label %for.body4.i, !dbg !1106, !llvm.loop !1117

for.cond10.preheader:                             ; preds = %for.cond6.preheader, %for.cond.cleanup14
  %i5.0163 = phi i64 [ 0, %for.cond6.preheader ], [ %inc28, %for.cond.cleanup14 ]
  call void @llvm.dbg.value(metadata i64 %i5.0163, metadata !1010, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1012, metadata !DIExpression()), !dbg !1119
  br label %for.body15, !dbg !1120

for.cond.cleanup14:                               ; preds = %for.body15
  %arrayidx23 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %i5.0163, !dbg !1121
  store i16 1024, ptr %arrayidx23, align 2, !dbg !1121, !tbaa !873
  %arrayidx24 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %i5.0163, !dbg !1122
  store i16 1024, ptr %arrayidx24, align 2, !dbg !1122, !tbaa !873
  %arrayidx25 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 16, i64 %i5.0163, !dbg !1123
  store i16 1024, ptr %arrayidx25, align 2, !dbg !1123, !tbaa !873
  %arrayidx26 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 17, i64 %i5.0163, !dbg !1124
  store i16 1024, ptr %arrayidx26, align 2, !dbg !1124, !tbaa !873
  %inc28 = add nuw nsw i64 %i5.0163, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i64 %inc28, metadata !1010, metadata !DIExpression()), !dbg !1111
  %exitcond168.not = icmp eq i64 %inc28, 12, !dbg !1126
  br i1 %exitcond168.not, label %for.body35, label %for.cond10.preheader, !dbg !1112, !llvm.loop !1127

for.body15:                                       ; preds = %for.cond10.preheader, %for.body15
  %j.0162 = phi i64 [ 0, %for.cond10.preheader ], [ %inc21, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %j.0162, metadata !1012, metadata !DIExpression()), !dbg !1119
  %arrayidx17 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %i5.0163, i64 %j.0162, !dbg !1129
  store i16 1024, ptr %arrayidx17, align 2, !dbg !1129, !tbaa !873
  %arrayidx19 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %i5.0163, i64 %j.0162, !dbg !1132
  store i16 1024, ptr %arrayidx19, align 2, !dbg !1132, !tbaa !873
  %inc21 = add nuw nsw i64 %j.0162, 1, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !1012, metadata !DIExpression()), !dbg !1119
  %exitcond = icmp eq i64 %j.0162, %conv, !dbg !1134
  br i1 %exitcond, label %for.cond.cleanup14, label %for.body15, !dbg !1120, !llvm.loop !1135

for.body35:                                       ; preds = %for.cond.cleanup14, %for.body35
  %i30.0164 = phi i64 [ %inc38, %for.body35 ], [ 0, %for.cond.cleanup14 ]
  call void @llvm.dbg.value(metadata i64 %i30.0164, metadata !1016, metadata !DIExpression()), !dbg !1137
  %arrayidx36 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 20, i64 %i30.0164, !dbg !1138
  store i16 1024, ptr %arrayidx36, align 2, !dbg !1138, !tbaa !873
  %inc38 = add nuw nsw i64 %i30.0164, 1, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !1016, metadata !DIExpression()), !dbg !1137
  %exitcond169.not = icmp eq i64 %inc38, 114, !dbg !1141
  br i1 %exitcond169.not, label %for.cond46.preheader, label %for.body35, !dbg !1142, !llvm.loop !1143

for.cond46.preheader:                             ; preds = %for.body35, %for.cond.cleanup49
  %i40.0166 = phi i64 [ %inc57, %for.cond.cleanup49 ], [ 0, %for.body35 ]
  call void @llvm.dbg.value(metadata i64 %i40.0166, metadata !1018, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata i32 0, metadata !1020, metadata !DIExpression()), !dbg !1146
  br label %for.body50, !dbg !1147

for.cond.cleanup49:                               ; preds = %for.body50
  %inc57 = add nuw nsw i64 %i40.0166, 1, !dbg !1148
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !1018, metadata !DIExpression()), !dbg !1145
  %exitcond172.not = icmp eq i64 %inc57, 4, !dbg !1149
  br i1 %exitcond172.not, label %for.body64, label %for.cond46.preheader, !dbg !1150, !llvm.loop !1151

for.body50:                                       ; preds = %for.cond46.preheader, %for.body50
  %indvars.iv = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next, %for.body50 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1020, metadata !DIExpression()), !dbg !1146
  %arrayidx52 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 19, i64 %i40.0166, i64 %indvars.iv, !dbg !1153
  store i16 1024, ptr %arrayidx52, align 2, !dbg !1153, !tbaa !873
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1153
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1020, metadata !DIExpression()), !dbg !1146
  %exitcond171.not = icmp eq i64 %indvars.iv.next, 64, !dbg !1153
  br i1 %exitcond171.not, label %for.cond.cleanup49, label %for.body50, !dbg !1147, !llvm.loop !1155

for.cond.cleanup63:                               ; preds = %for.body64
  %match_len_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, !dbg !1156
  %11 = load i32, ptr %pb.i.i, align 4, !dbg !1157, !tbaa !1049
  %shl71 = shl nuw i32 1, %11, !dbg !1158
  %fast_mode = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !1159
  %12 = load i8, ptr %fast_mode, align 4, !dbg !1159, !tbaa !455, !range !295
  call void @llvm.dbg.value(metadata ptr %match_len_encoder, metadata !1160, metadata !DIExpression()) #11, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %shl71, metadata !1167, metadata !DIExpression()) #11, !dbg !1182
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !1168, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !1182
  store i16 1024, ptr %match_len_encoder, align 4, !dbg !1184, !tbaa !1185
  %choice2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 1, !dbg !1186
  store i16 1024, ptr %choice2.i, align 2, !dbg !1186, !tbaa !1187
  call void @llvm.dbg.value(metadata i64 0, metadata !1169, metadata !DIExpression()) #11, !dbg !1188
  %conv.i = zext i32 %shl71 to i64
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.cond.cleanup12.i, %for.cond.cleanup63
  %pos_state.065.i = phi i64 [ %inc21.i, %for.cond.cleanup12.i ], [ 0, %for.cond.cleanup63 ]
  call void @llvm.dbg.value(metadata i64 %pos_state.065.i, metadata !1169, metadata !DIExpression()) #11, !dbg !1188
  call void @llvm.dbg.value(metadata i32 0, metadata !1171, metadata !DIExpression()) #11, !dbg !1189
  br label %for.body6.i, !dbg !1190

for.body6.i:                                      ; preds = %for.body6.i, %for.cond2.preheader.i
  %indvars.iv.i128 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i129, %for.body6.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i128, metadata !1171, metadata !DIExpression()) #11, !dbg !1189
  %arrayidx7.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 2, i64 %pos_state.065.i, i64 %indvars.iv.i128, !dbg !1191
  store i16 1024, ptr %arrayidx7.i, align 2, !dbg !1191, !tbaa !873
  %indvars.iv.next.i129 = add nuw nsw i64 %indvars.iv.i128, 1, !dbg !1191
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i129, metadata !1171, metadata !DIExpression()) #11, !dbg !1189
  %exitcond.not.i130 = icmp eq i64 %indvars.iv.next.i129, 8, !dbg !1191
  br i1 %exitcond.not.i130, label %for.body13.i, label %for.body6.i, !dbg !1190, !llvm.loop !1193

for.cond.cleanup12.i:                             ; preds = %for.body13.i
  %inc21.i = add nuw nsw i64 %pos_state.065.i, 1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %inc21.i, metadata !1169, metadata !DIExpression()) #11, !dbg !1188
  %exitcond74.not.i = icmp eq i64 %inc21.i, %conv.i, !dbg !1195
  br i1 %exitcond74.not.i, label %for.body28.i, label %for.cond2.preheader.i, !dbg !1196, !llvm.loop !1197

for.body13.i:                                     ; preds = %for.body6.i, %for.body13.i
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.body13.i ], [ 0, %for.body6.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv70.i, metadata !1175, metadata !DIExpression()) #11, !dbg !1199
  %arrayidx16.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 3, i64 %pos_state.065.i, i64 %indvars.iv70.i, !dbg !1200
  store i16 1024, ptr %arrayidx16.i, align 2, !dbg !1200, !tbaa !873
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1, !dbg !1200
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next71.i, metadata !1175, metadata !DIExpression()) #11, !dbg !1199
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next71.i, 8, !dbg !1200
  br i1 %exitcond73.not.i, label %for.cond.cleanup12.i, label %for.body13.i, !dbg !1202, !llvm.loop !1203

for.cond.cleanup27.i:                             ; preds = %for.body28.i
  %tobool.not = icmp eq i8 %12, 0, !dbg !1159
  call void @llvm.dbg.value(metadata i64 0, metadata !1179, metadata !DIExpression()) #11, !dbg !1204
  br i1 %tobool.not, label %for.body40.i, label %length_encoder_reset.exit, !dbg !1205

for.body28.i:                                     ; preds = %for.cond.cleanup12.i, %for.body28.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %for.body28.i ], [ 0, %for.cond.cleanup12.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv75.i, metadata !1177, metadata !DIExpression()) #11, !dbg !1206
  %arrayidx30.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 4, i64 %indvars.iv75.i, !dbg !1207
  store i16 1024, ptr %arrayidx30.i, align 2, !dbg !1207, !tbaa !873
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next76.i, metadata !1177, metadata !DIExpression()) #11, !dbg !1206
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next76.i, 256, !dbg !1207
  br i1 %exitcond78.not.i, label %for.cond.cleanup27.i, label %for.body28.i, !dbg !1209, !llvm.loop !1210

for.body40.i:                                     ; preds = %for.cond.cleanup27.i, %for.body40.i
  %pos_state34.068.i = phi i64 [ %inc43.i, %for.body40.i ], [ 0, %for.cond.cleanup27.i ]
  call void @llvm.dbg.value(metadata i64 %pos_state34.068.i, metadata !1179, metadata !DIExpression()) #11, !dbg !1204
  %conv41.i = trunc i64 %pos_state34.068.i to i32, !dbg !1211
  tail call fastcc void @length_update_prices(ptr noundef nonnull %match_len_encoder, i32 noundef %conv41.i) #11, !dbg !1213
  %inc43.i = add nuw nsw i64 %pos_state34.068.i, 1, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %inc43.i, metadata !1179, metadata !DIExpression()) #11, !dbg !1204
  %exitcond79.not.i = icmp eq i64 %inc43.i, %conv.i, !dbg !1215
  br i1 %exitcond79.not.i, label %length_encoder_reset.exit.loopexit, label %for.body40.i, !dbg !1216, !llvm.loop !1217

length_encoder_reset.exit.loopexit:               ; preds = %for.body40.i
  %.pre = load i32, ptr %pb.i.i, align 4, !dbg !1219, !tbaa !1049
  %.pre177 = load i8, ptr %fast_mode, align 4, !dbg !1220, !tbaa !455, !range !295
  %.pre178 = shl nuw i32 1, %.pre, !dbg !1221
  %.pre179 = zext i32 %.pre178 to i64
  br label %length_encoder_reset.exit, !dbg !1222

length_encoder_reset.exit:                        ; preds = %length_encoder_reset.exit.loopexit, %for.cond.cleanup27.i
  %conv.i132.pre-phi = phi i64 [ %.pre179, %length_encoder_reset.exit.loopexit ], [ %conv.i, %for.cond.cleanup27.i ]
  %13 = phi i8 [ %.pre177, %length_encoder_reset.exit.loopexit ], [ %12, %for.cond.cleanup27.i ], !dbg !1220
  %rep_len_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %rep_len_encoder, metadata !1160, metadata !DIExpression()) #11, !dbg !1223
  call void @llvm.dbg.value(metadata i32 undef, metadata !1167, metadata !DIExpression()) #11, !dbg !1223
  call void @llvm.dbg.value(metadata i1 %tobool75.not, metadata !1168, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !1223
  store i16 1024, ptr %rep_len_encoder, align 4, !dbg !1225, !tbaa !1185
  %choice2.i131 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 1, !dbg !1226
  store i16 1024, ptr %choice2.i131, align 2, !dbg !1226, !tbaa !1187
  call void @llvm.dbg.value(metadata i64 0, metadata !1169, metadata !DIExpression()) #11, !dbg !1227
  br label %for.cond2.preheader.i134

for.cond2.preheader.i134:                         ; preds = %for.cond.cleanup12.i143, %length_encoder_reset.exit
  %pos_state.065.i133 = phi i64 [ %inc21.i141, %for.cond.cleanup12.i143 ], [ 0, %length_encoder_reset.exit ]
  call void @llvm.dbg.value(metadata i64 %pos_state.065.i133, metadata !1169, metadata !DIExpression()) #11, !dbg !1227
  call void @llvm.dbg.value(metadata i32 0, metadata !1171, metadata !DIExpression()) #11, !dbg !1228
  br label %for.body6.i140, !dbg !1229

for.body6.i140:                                   ; preds = %for.body6.i140, %for.cond2.preheader.i134
  %indvars.iv.i136 = phi i64 [ 0, %for.cond2.preheader.i134 ], [ %indvars.iv.next.i138, %for.body6.i140 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i136, metadata !1171, metadata !DIExpression()) #11, !dbg !1228
  %arrayidx7.i137 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 2, i64 %pos_state.065.i133, i64 %indvars.iv.i136, !dbg !1230
  store i16 1024, ptr %arrayidx7.i137, align 2, !dbg !1230, !tbaa !873
  %indvars.iv.next.i138 = add nuw nsw i64 %indvars.iv.i136, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i138, metadata !1171, metadata !DIExpression()) #11, !dbg !1228
  %exitcond.not.i139 = icmp eq i64 %indvars.iv.next.i138, 8, !dbg !1230
  br i1 %exitcond.not.i139, label %for.body13.i148, label %for.body6.i140, !dbg !1229, !llvm.loop !1231

for.cond.cleanup12.i143:                          ; preds = %for.body13.i148
  %inc21.i141 = add nuw nsw i64 %pos_state.065.i133, 1, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %inc21.i141, metadata !1169, metadata !DIExpression()) #11, !dbg !1227
  %exitcond74.not.i142 = icmp eq i64 %inc21.i141, %conv.i132.pre-phi, !dbg !1233
  br i1 %exitcond74.not.i142, label %for.body28.i154, label %for.cond2.preheader.i134, !dbg !1234, !llvm.loop !1235

for.body13.i148:                                  ; preds = %for.body6.i140, %for.body13.i148
  %indvars.iv70.i144 = phi i64 [ %indvars.iv.next71.i146, %for.body13.i148 ], [ 0, %for.body6.i140 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv70.i144, metadata !1175, metadata !DIExpression()) #11, !dbg !1237
  %arrayidx16.i145 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 3, i64 %pos_state.065.i133, i64 %indvars.iv70.i144, !dbg !1238
  store i16 1024, ptr %arrayidx16.i145, align 2, !dbg !1238, !tbaa !873
  %indvars.iv.next71.i146 = add nuw nsw i64 %indvars.iv70.i144, 1, !dbg !1238
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next71.i146, metadata !1175, metadata !DIExpression()) #11, !dbg !1237
  %exitcond73.not.i147 = icmp eq i64 %indvars.iv.next71.i146, 8, !dbg !1238
  br i1 %exitcond73.not.i147, label %for.cond.cleanup12.i143, label %for.body13.i148, !dbg !1239, !llvm.loop !1240

for.cond.cleanup27.i149:                          ; preds = %for.body28.i154
  %tobool75.not = icmp eq i8 %13, 0, !dbg !1220
  call void @llvm.dbg.value(metadata i64 0, metadata !1179, metadata !DIExpression()) #11, !dbg !1241
  br i1 %tobool75.not, label %for.body40.i159, label %length_encoder_reset.exit160, !dbg !1242

for.body28.i154:                                  ; preds = %for.cond.cleanup12.i143, %for.body28.i154
  %indvars.iv75.i150 = phi i64 [ %indvars.iv.next76.i152, %for.body28.i154 ], [ 0, %for.cond.cleanup12.i143 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv75.i150, metadata !1177, metadata !DIExpression()) #11, !dbg !1243
  %arrayidx30.i151 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 4, i64 %indvars.iv75.i150, !dbg !1244
  store i16 1024, ptr %arrayidx30.i151, align 2, !dbg !1244, !tbaa !873
  %indvars.iv.next76.i152 = add nuw nsw i64 %indvars.iv75.i150, 1, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next76.i152, metadata !1177, metadata !DIExpression()) #11, !dbg !1243
  %exitcond78.not.i153 = icmp eq i64 %indvars.iv.next76.i152, 256, !dbg !1244
  br i1 %exitcond78.not.i153, label %for.cond.cleanup27.i149, label %for.body28.i154, !dbg !1245, !llvm.loop !1246

for.body40.i159:                                  ; preds = %for.cond.cleanup27.i149, %for.body40.i159
  %pos_state34.068.i155 = phi i64 [ %inc43.i157, %for.body40.i159 ], [ 0, %for.cond.cleanup27.i149 ]
  call void @llvm.dbg.value(metadata i64 %pos_state34.068.i155, metadata !1179, metadata !DIExpression()) #11, !dbg !1241
  %conv41.i156 = trunc i64 %pos_state34.068.i155 to i32, !dbg !1247
  tail call fastcc void @length_update_prices(ptr noundef nonnull %rep_len_encoder, i32 noundef %conv41.i156) #11, !dbg !1248
  %inc43.i157 = add nuw nsw i64 %pos_state34.068.i155, 1, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %inc43.i157, metadata !1179, metadata !DIExpression()) #11, !dbg !1241
  %exitcond79.not.i158 = icmp eq i64 %inc43.i157, %conv.i132.pre-phi, !dbg !1250
  br i1 %exitcond79.not.i158, label %length_encoder_reset.exit160, label %for.body40.i159, !dbg !1251, !llvm.loop !1252

length_encoder_reset.exit160:                     ; preds = %for.body40.i159, %for.cond.cleanup27.i149
  %match_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 27, !dbg !1254
  store i32 2147483647, ptr %match_price_count, align 4, !dbg !1255, !tbaa !1256
  %align_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 29, !dbg !1257
  store i32 2147483647, ptr %align_price_count, align 8, !dbg !1258, !tbaa !1259
  %opts_end_index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 30, !dbg !1260
  store i32 0, ptr %opts_end_index, align 4, !dbg !1261, !tbaa !1262
  %opts_current_index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 31, !dbg !1263
  store i32 0, ptr %opts_current_index, align 8, !dbg !1264, !tbaa !1265
  br label %cleanup, !dbg !1266

for.body64:                                       ; preds = %for.cond.cleanup49, %for.body64
  %indvars.iv173 = phi i64 [ %indvars.iv.next174, %for.body64 ], [ 0, %for.cond.cleanup49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv173, metadata !1023, metadata !DIExpression()), !dbg !1267
  %arrayidx66 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 21, i64 %indvars.iv173, !dbg !1268
  store i16 1024, ptr %arrayidx66, align 2, !dbg !1268, !tbaa !873
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1, !dbg !1268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next174, metadata !1023, metadata !DIExpression()), !dbg !1267
  %exitcond176.not = icmp eq i64 %indvars.iv.next174, 16, !dbg !1268
  br i1 %exitcond176.not, label %for.cond.cleanup63, label %for.body64, !dbg !1270, !llvm.loop !1271

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %length_encoder_reset.exit160
  %retval.0 = phi i32 [ 0, %length_encoder_reset.exit160 ], [ 8, %is_options_valid.exit ], [ 8, %land.lhs.true.i ], [ 8, %is_lclppb_valid.exit.i ], [ 8, %land.lhs.true.i.i ], [ 8, %entry ], !dbg !1025
  ret i32 %retval.0, !dbg !1272
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_create(ptr nocapture noundef %coder_ptr, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) local_unnamed_addr #0 !dbg !1273 {
entry:
  call void @llvm.dbg.value(metadata ptr %coder_ptr, metadata !1304, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1305, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %options, metadata !1306, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !1307, metadata !DIExpression()), !dbg !1312
  %0 = load ptr, ptr %coder_ptr, align 8, !dbg !1313, !tbaa !355
  %cmp = icmp eq ptr %0, null, !dbg !1315
  br i1 %cmp, label %if.then, label %if.end3, !dbg !1316

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 249576, ptr noundef %allocator) #11, !dbg !1317
  store ptr %call, ptr %coder_ptr, align 8, !dbg !1319, !tbaa !355
  %cmp1 = icmp eq ptr %call, null, !dbg !1320
  br i1 %cmp1, label %return, label %if.end3, !dbg !1322

if.end3:                                          ; preds = %if.then, %entry
  %1 = phi ptr [ %call, %if.then ], [ %0, %entry ], !dbg !1323
  call void @llvm.dbg.value(metadata ptr %1, metadata !1308, metadata !DIExpression()), !dbg !1312
  %mode = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 6, !dbg !1324
  %2 = load i32, ptr %mode, align 8, !dbg !1324, !tbaa !1056
  switch i32 %2, label %return [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ], !dbg !1325

sw.bb:                                            ; preds = %if.end3
  %fast_mode = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 6, !dbg !1326
  store i8 1, ptr %fast_mode, align 4, !dbg !1327, !tbaa !455
  br label %sw.epilog, !dbg !1328

sw.bb4:                                           ; preds = %if.end3
  %fast_mode5 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 6, !dbg !1329
  store i8 0, ptr %fast_mode5, align 4, !dbg !1330, !tbaa !455
  call void @llvm.dbg.value(metadata i32 0, metadata !1309, metadata !DIExpression()), !dbg !1331
  %3 = load i32, ptr %options, align 8, !tbaa !1332
  br label %while.cond, !dbg !1333

while.cond:                                       ; preds = %while.cond, %sw.bb4
  %log_size.0 = phi i32 [ 0, %sw.bb4 ], [ %inc, %while.cond ], !dbg !1331
  call void @llvm.dbg.value(metadata i32 %log_size.0, metadata !1309, metadata !DIExpression()), !dbg !1331
  %shl = shl nuw i32 1, %log_size.0, !dbg !1334
  %cmp6 = icmp ult i32 %shl, %3, !dbg !1335
  %inc = add i32 %log_size.0, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1309, metadata !DIExpression()), !dbg !1331
  br i1 %cmp6, label %while.cond, label %while.end, !dbg !1333, !llvm.loop !1337

while.end:                                        ; preds = %while.cond
  %mul = shl i32 %log_size.0, 1, !dbg !1339
  %dist_table_size = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 26, !dbg !1340
  store i32 %mul, ptr %dist_table_size, align 8, !dbg !1341, !tbaa !1342
  %nice_len = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !1343
  %4 = load i32, ptr %nice_len, align 4, !dbg !1343, !tbaa !1053
  %sub = add i32 %4, -1, !dbg !1344
  %table_size = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 22, i32 6, !dbg !1345
  store i32 %sub, ptr %table_size, align 4, !dbg !1346, !tbaa !1347
  %table_size10 = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 23, i32 6, !dbg !1348
  store i32 %sub, ptr %table_size10, align 4, !dbg !1349, !tbaa !1350
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.end, %sw.bb
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 1, !dbg !1351
  %5 = load ptr, ptr %preset_dict, align 8, !dbg !1351, !tbaa !1352
  %cmp11.not = icmp eq ptr %5, null, !dbg !1353
  %preset_dict_size.i.phi.trans.insert = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 2
  %.pre = load i32, ptr %preset_dict_size.i.phi.trans.insert, align 8, !dbg !1312, !tbaa !1354
  br i1 %cmp11.not, label %land.end, label %land.rhs, !dbg !1355

land.rhs:                                         ; preds = %sw.epilog
  %cmp12 = icmp ne i32 %.pre, 0, !dbg !1356
  %phi.cast = zext i1 %cmp12 to i8
  br label %land.end

land.end:                                         ; preds = %sw.epilog, %land.rhs
  %6 = phi i8 [ %phi.cast, %land.rhs ], [ 0, %sw.epilog ]
  %is_initialized = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 7, !dbg !1357
  store i8 %6, ptr %is_initialized, align 1, !dbg !1358, !tbaa !285
  %is_flushed = getelementptr inbounds %struct.lzma_coder_s, ptr %1, i64 0, i32 8, !dbg !1359
  store i8 0, ptr %is_flushed, align 2, !dbg !1360, !tbaa !730
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !1361, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.value(metadata ptr %options, metadata !1366, metadata !DIExpression()), !dbg !1367
  store i64 4096, ptr %lz_options, align 8, !dbg !1369, !tbaa !1370
  %7 = load i32, ptr %options, align 8, !dbg !1372, !tbaa !1332
  %conv.i = zext i32 %7 to i64, !dbg !1373
  %dict_size1.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !1374
  store i64 %conv.i, ptr %dict_size1.i, align 8, !dbg !1375, !tbaa !1376
  %after_size.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2, !dbg !1377
  store i64 4097, ptr %after_size.i, align 8, !dbg !1378, !tbaa !1379
  %match_len_max.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 3, !dbg !1380
  store i64 273, ptr %match_len_max.i, align 8, !dbg !1381, !tbaa !1382
  %nice_len.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !1383
  %8 = load i32, ptr %nice_len.i, align 4, !dbg !1383, !tbaa !1053
  %conv2.i = zext i32 %8 to i64, !dbg !1384
  %nice_len3.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 4, !dbg !1385
  store i64 %conv2.i, ptr %nice_len3.i, align 8, !dbg !1386, !tbaa !1387
  %mf.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 8, !dbg !1388
  %9 = load i32, ptr %mf.i, align 8, !dbg !1388, !tbaa !1389
  %match_finder.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 5, !dbg !1390
  store i32 %9, ptr %match_finder.i, align 8, !dbg !1391, !tbaa !1392
  %depth.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 9, !dbg !1393
  %10 = load i32, ptr %depth.i, align 4, !dbg !1393, !tbaa !1394
  %depth4.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 6, !dbg !1395
  store i32 %10, ptr %depth4.i, align 4, !dbg !1396, !tbaa !1397
  %preset_dict5.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 7, !dbg !1398
  store ptr %5, ptr %preset_dict5.i, align 8, !dbg !1399, !tbaa !1400
  %preset_dict_size6.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 8, !dbg !1401
  store i32 %.pre, ptr %preset_dict_size6.i, align 8, !dbg !1402, !tbaa !1403
  %call13 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef nonnull %1, ptr noundef nonnull %options), !dbg !1404
  br label %return, !dbg !1405

return:                                           ; preds = %land.end, %if.end3, %if.then
  %retval.1 = phi i32 [ 5, %if.then ], [ %call13, %land.end ], [ 8, %if.end3 ], !dbg !1312
  ret i32 %retval.1, !dbg !1406
}

declare !dbg !1407 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !1410 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !1470, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1471, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata ptr %filters, metadata !1472, metadata !DIExpression()), !dbg !1473
  %call = tail call i32 @lzma_lz_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma_encoder_init) #11, !dbg !1474
  ret i32 %call, !dbg !1475
}

declare !dbg !1476 i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @lzma_encoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) #0 !dbg !1498 {
entry:
  call void @llvm.dbg.value(metadata ptr %lz, metadata !1500, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !1501, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %options, metadata !1502, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !1503, metadata !DIExpression()), !dbg !1504
  %code = getelementptr inbounds %struct.lzma_lz_encoder, ptr %lz, i64 0, i32 1, !dbg !1505
  store ptr @lzma_encode, ptr %code, align 8, !dbg !1506, !tbaa !1507
  %call = tail call i32 @lzma_lzma_encoder_create(ptr noundef %lz, ptr noundef %allocator, ptr noundef %options, ptr noundef %lz_options), !dbg !1509
  ret i32 %call, !dbg !1510
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma_encoder_memusage(ptr nocapture noundef readonly %options) local_unnamed_addr #0 !dbg !1511 {
entry:
  %lz_options = alloca %struct.lzma_lz_options, align 8
  call void @llvm.dbg.value(metadata ptr %options, metadata !1515, metadata !DIExpression()), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %options, metadata !1026, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %options, metadata !1034, metadata !DIExpression()), !dbg !1523
  %lc.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !1525
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1525, !tbaa !1040
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1526
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %return, !dbg !1527

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !1528
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1528, !tbaa !1045
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1529
  %add.i.i = add i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1530
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %return, !dbg !1530

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !1531
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1531, !tbaa !1049
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1532
  br i1 %cmp6.i.i, label %land.lhs.true.i, label %return, !dbg !1533

land.lhs.true.i:                                  ; preds = %is_lclppb_valid.exit.i
  %nice_len.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !1534
  %3 = load i32, ptr %nice_len.i, align 4, !dbg !1534, !tbaa !1053
  %4 = add i32 %3, -2, !dbg !1535
  %5 = icmp ult i32 %4, 272, !dbg !1535
  br i1 %5, label %is_options_valid.exit, label %return, !dbg !1535

is_options_valid.exit:                            ; preds = %land.lhs.true.i
  %mode.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 6, !dbg !1536
  %6 = load i32, ptr %mode.i, align 8, !dbg !1536, !tbaa !1056
  %7 = add i32 %6, -1, !dbg !1537
  %8 = icmp ult i32 %7, 2, !dbg !1537
  br i1 %8, label %if.end, label %return, !dbg !1538

if.end:                                           ; preds = %is_options_valid.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %lz_options) #11, !dbg !1539
  call void @llvm.dbg.declare(metadata ptr %lz_options, metadata !1516, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !1361, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata ptr %options, metadata !1366, metadata !DIExpression()), !dbg !1541
  store i64 4096, ptr %lz_options, align 8, !dbg !1543, !tbaa !1370
  %9 = load i32, ptr %options, align 8, !dbg !1544, !tbaa !1332
  %conv.i = zext i32 %9 to i64, !dbg !1545
  %dict_size1.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !1546
  store i64 %conv.i, ptr %dict_size1.i, align 8, !dbg !1547, !tbaa !1376
  %after_size.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2, !dbg !1548
  store i64 4097, ptr %after_size.i, align 8, !dbg !1549, !tbaa !1379
  %match_len_max.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 3, !dbg !1550
  store i64 273, ptr %match_len_max.i, align 8, !dbg !1551, !tbaa !1382
  %conv2.i = zext i32 %3 to i64, !dbg !1552
  %nice_len3.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 4, !dbg !1553
  store i64 %conv2.i, ptr %nice_len3.i, align 8, !dbg !1554, !tbaa !1387
  %mf.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 8, !dbg !1555
  %10 = load i32, ptr %mf.i, align 8, !dbg !1555, !tbaa !1389
  %match_finder.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 5, !dbg !1556
  store i32 %10, ptr %match_finder.i, align 8, !dbg !1557, !tbaa !1392
  %depth.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 9, !dbg !1558
  %11 = load i32, ptr %depth.i, align 4, !dbg !1558, !tbaa !1394
  %depth4.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 6, !dbg !1559
  store i32 %11, ptr %depth4.i, align 4, !dbg !1560, !tbaa !1397
  %preset_dict.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 1, !dbg !1561
  %12 = load ptr, ptr %preset_dict.i, align 8, !dbg !1561, !tbaa !1352
  %preset_dict5.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 7, !dbg !1562
  store ptr %12, ptr %preset_dict5.i, align 8, !dbg !1563, !tbaa !1400
  %preset_dict_size.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 2, !dbg !1564
  %13 = load i32, ptr %preset_dict_size.i, align 8, !dbg !1564, !tbaa !1354
  %preset_dict_size6.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 8, !dbg !1565
  store i32 %13, ptr %preset_dict_size6.i, align 8, !dbg !1566, !tbaa !1403
  %call1 = call i64 @lzma_lz_encoder_memusage(ptr noundef nonnull %lz_options) #11, !dbg !1567
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1517, metadata !DIExpression()), !dbg !1519
  %cmp = icmp eq i64 %call1, -1, !dbg !1568
  %add = add i64 %call1, 249576
  %spec.select = select i1 %cmp, i64 -1, i64 %add, !dbg !1570
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %lz_options) #11, !dbg !1571
  br label %return

return:                                           ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %land.lhs.true.i, %is_options_valid.exit, %if.end
  %retval.1 = phi i64 [ %spec.select, %if.end ], [ -1, %is_options_valid.exit ], [ -1, %land.lhs.true.i ], [ -1, %is_lclppb_valid.exit.i ], [ -1, %land.lhs.true.i.i ], [ -1, %entry ], !dbg !1519
  ret i64 %retval.1, !dbg !1571
}

declare !dbg !1572 i64 @lzma_lz_encoder_memusage(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local zeroext i1 @lzma_lzma_lclppb_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %byte) local_unnamed_addr #6 !dbg !1577 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !1581, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata ptr %byte, metadata !1582, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata ptr %options, metadata !1034, metadata !DIExpression()), !dbg !1584
  %lc.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !1587
  %0 = load i32, ptr %lc.i, align 4, !dbg !1587, !tbaa !1040
  %cmp.i = icmp ult i32 %0, 5, !dbg !1588
  br i1 %cmp.i, label %land.lhs.true.i, label %return, !dbg !1589

land.lhs.true.i:                                  ; preds = %entry
  %lp.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !1590
  %1 = load i32, ptr %lp.i, align 8, !dbg !1590, !tbaa !1045
  %cmp1.i = icmp ult i32 %1, 5, !dbg !1591
  %add.i = add i32 %1, %0
  %cmp5.i = icmp ult i32 %add.i, 5
  %or.cond.i = select i1 %cmp1.i, i1 %cmp5.i, i1 false, !dbg !1592
  br i1 %or.cond.i, label %is_lclppb_valid.exit, label %return, !dbg !1592

is_lclppb_valid.exit:                             ; preds = %land.lhs.true.i
  %pb.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !1593
  %2 = load i32, ptr %pb.i, align 4, !dbg !1593, !tbaa !1049
  %cmp6.i = icmp ult i32 %2, 5, !dbg !1594
  br i1 %cmp6.i, label %if.end, label %return, !dbg !1595

if.end:                                           ; preds = %is_lclppb_valid.exit
  %mul = mul nuw nsw i32 %2, 5, !dbg !1596
  %add = add nuw nsw i32 %mul, %1, !dbg !1597
  %mul1 = mul nuw nsw i32 %add, 9, !dbg !1598
  %add2 = add nuw nsw i32 %mul1, %0, !dbg !1599
  %conv = trunc i32 %add2 to i8, !dbg !1600
  store i8 %conv, ptr %byte, align 1, !dbg !1601, !tbaa !351
  br label %return, !dbg !1602

return:                                           ; preds = %entry, %land.lhs.true.i, %is_lclppb_valid.exit, %if.end
  %3 = phi i1 [ true, %is_lclppb_valid.exit ], [ false, %if.end ], [ true, %land.lhs.true.i ], [ true, %entry ]
  ret i1 %3, !dbg !1603
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @lzma_lzma_props_encode(ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #6 !dbg !1604 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !1608, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %out, metadata !1609, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %options, metadata !1610, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata ptr %options, metadata !1581, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata ptr %out, metadata !1582, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata ptr %options, metadata !1034, metadata !DIExpression()), !dbg !1616
  %lc.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !1618
  %0 = load i32, ptr %lc.i.i, align 4, !dbg !1618, !tbaa !1040
  %cmp.i.i = icmp ult i32 %0, 5, !dbg !1619
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cleanup, !dbg !1620

land.lhs.true.i.i:                                ; preds = %entry
  %lp.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !1621
  %1 = load i32, ptr %lp.i.i, align 8, !dbg !1621, !tbaa !1045
  %cmp1.i.i = icmp ult i32 %1, 5, !dbg !1622
  %add.i.i = add i32 %1, %0
  %cmp5.i.i = icmp ult i32 %add.i.i, 5
  %or.cond.i.i = select i1 %cmp1.i.i, i1 %cmp5.i.i, i1 false, !dbg !1623
  br i1 %or.cond.i.i, label %is_lclppb_valid.exit.i, label %cleanup, !dbg !1623

is_lclppb_valid.exit.i:                           ; preds = %land.lhs.true.i.i
  %pb.i.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !1624
  %2 = load i32, ptr %pb.i.i, align 4, !dbg !1624, !tbaa !1049
  %cmp6.i.i = icmp ult i32 %2, 5, !dbg !1625
  br i1 %cmp6.i.i, label %if.end, label %cleanup, !dbg !1626

if.end:                                           ; preds = %is_lclppb_valid.exit.i
  %mul.i = mul nuw nsw i32 %2, 5, !dbg !1627
  %add.i = add nuw nsw i32 %mul.i, %1, !dbg !1628
  %mul1.i = mul nuw nsw i32 %add.i, 9, !dbg !1629
  %add2.i = add nuw nsw i32 %mul1.i, %0, !dbg !1630
  %conv.i = trunc i32 %add2.i to i8, !dbg !1631
  store i8 %conv.i, ptr %out, align 1, !dbg !1632, !tbaa !351
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 1, !dbg !1633
  %3 = load i32, ptr %options, align 8, !dbg !1634, !tbaa !1332
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1635, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i32 %3, metadata !1641, metadata !DIExpression()), !dbg !1642
  %conv.i3 = trunc i32 %3 to i8, !dbg !1644
  store i8 %conv.i3, ptr %add.ptr, align 1, !dbg !1645, !tbaa !351
  %shr.i = lshr i32 %3, 8, !dbg !1646
  %conv1.i = trunc i32 %shr.i to i8, !dbg !1647
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 2, !dbg !1648
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !1649, !tbaa !351
  %shr3.i = lshr i32 %3, 16, !dbg !1650
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !1651
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 3, !dbg !1652
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !1653, !tbaa !351
  %shr6.i = lshr i32 %3, 24, !dbg !1654
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !1655
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 4, !dbg !1656
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !1657, !tbaa !351
  br label %cleanup, !dbg !1658

cleanup:                                          ; preds = %entry, %land.lhs.true.i.i, %is_lclppb_valid.exit.i, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %is_lclppb_valid.exit.i ], [ 11, %land.lhs.true.i.i ], [ 11, %entry ], !dbg !1612
  ret i32 %retval.0, !dbg !1659
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i8 @lzma_mode_is_supported(i32 noundef %mode) local_unnamed_addr #7 !dbg !1660 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1665, metadata !DIExpression()), !dbg !1666
  %cmp = icmp eq i32 %mode, 1, !dbg !1667
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1668

lor.rhs:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %mode, 2, !dbg !1669
  %phi.cast = zext i1 %cmp1 to i8, !dbg !1668
  br label %lor.end, !dbg !1668

lor.end:                                          ; preds = %lor.rhs, %entry
  %0 = phi i8 [ 1, %entry ], [ %phi.cast, %lor.rhs ]
  ret i8 %0, !dbg !1670
}

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind uwtable
define internal fastcc void @match(ptr noundef %pcoder, i32 noundef %pos_state, i32 noundef %distance, i32 noundef %len) unnamed_addr #8 !dbg !1671 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1673, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %pos_state, metadata !1674, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %distance, metadata !1675, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %len, metadata !1676, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1677, metadata !DIExpression()), !dbg !1685
  %state = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !1686
  %0 = load i32, ptr %state, align 8, !dbg !1686, !tbaa !481
  %cmp = icmp ult i32 %0, 7, !dbg !1686
  %cond = select i1 %cmp, i32 7, i32 10, !dbg !1686
  store i32 %cond, ptr %state, align 8, !dbg !1686, !tbaa !481
  %match_len_encoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, !dbg !1687
  %fast_mode = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !1688
  %1 = load i8, ptr %fast_mode, align 4, !dbg !1688, !tbaa !455, !range !295
  %tobool = icmp ne i8 %1, 0, !dbg !1688
  tail call fastcc void @length(ptr noundef %pcoder, ptr noundef nonnull %match_len_encoder, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %tobool), !dbg !1689
  call void @llvm.dbg.value(metadata i32 %distance, metadata !1690, metadata !DIExpression()), !dbg !1696
  %cmp.i = icmp ult i32 %distance, 8192, !dbg !1698
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !1700

if.then.i:                                        ; preds = %entry
  %idxprom.i = zext i32 %distance to i64, !dbg !1701
  %arrayidx.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom.i, !dbg !1701
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !1701, !tbaa !351
  %conv.i = zext i8 %2 to i32, !dbg !1701
  br label %get_pos_slot.exit, !dbg !1702

if.end.i:                                         ; preds = %entry
  %cmp1.i = icmp ult i32 %distance, 33554432, !dbg !1703
  br i1 %cmp1.i, label %if.then3.i, label %if.end7.i, !dbg !1705

if.then3.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %distance, 12, !dbg !1706
  %idxprom4.i = zext i32 %shr.i to i64, !dbg !1706
  %arrayidx5.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom4.i, !dbg !1706
  %3 = load i8, ptr %arrayidx5.i, align 1, !dbg !1706, !tbaa !351
  %conv6.i = zext i8 %3 to i32, !dbg !1706
  %add.i = add nuw nsw i32 %conv6.i, 24, !dbg !1706
  br label %get_pos_slot.exit, !dbg !1707

if.end7.i:                                        ; preds = %if.end.i
  %shr8.i = lshr i32 %distance, 24, !dbg !1708
  %idxprom9.i = zext i32 %shr8.i to i64, !dbg !1708
  %arrayidx10.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom9.i, !dbg !1708
  %4 = load i8, ptr %arrayidx10.i, align 1, !dbg !1708, !tbaa !351
  %conv11.i = zext i8 %4 to i32, !dbg !1708
  %add12.i = add nuw nsw i32 %conv11.i, 48, !dbg !1708
  br label %get_pos_slot.exit, !dbg !1709

get_pos_slot.exit:                                ; preds = %if.then.i, %if.then3.i, %if.end7.i
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ %add.i, %if.then3.i ], [ %add12.i, %if.end7.i ], !dbg !1696
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !1678, metadata !DIExpression()), !dbg !1685
  %cmp2 = icmp ult i32 %len, 6, !dbg !1710
  br i1 %cmp2, label %cond.true, label %cond.end, !dbg !1710

cond.true:                                        ; preds = %get_pos_slot.exit
  %sub = add nsw i32 %len, -2, !dbg !1710
  %phi.cast = zext i32 %sub to i64, !dbg !1710
  br label %cond.end, !dbg !1710

cond.end:                                         ; preds = %get_pos_slot.exit, %cond.true
  %cond3 = phi i64 [ %phi.cast, %cond.true ], [ 3, %get_pos_slot.exit ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1679, metadata !DIExpression()), !dbg !1685
  %arrayidx = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 19, i64 %cond3, !dbg !1711
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !361, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !366, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 6, metadata !367, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !368, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()), !dbg !1712
  %count.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 4
  %.pre.i = load i64, ptr %count.i.i, align 8, !dbg !1714, !tbaa !348
  br label %do.body.i, !dbg !1716

do.body.i:                                        ; preds = %do.body.i, %cond.end
  %5 = phi i64 [ %.pre.i, %cond.end ], [ %inc.i.i, %do.body.i ], !dbg !1714
  %model_index.0.i = phi i32 [ 1, %cond.end ], [ %add.i74, %do.body.i ], !dbg !1712
  %bit_count.addr.0.i = phi i32 [ 6, %cond.end ], [ %dec.i, %do.body.i ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i, metadata !367, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i32 %model_index.0.i, metadata !369, metadata !DIExpression()), !dbg !1712
  %dec.i = add nsw i32 %bit_count.addr.0.i, -1, !dbg !1717
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !367, metadata !DIExpression()), !dbg !1712
  %shr.i71 = lshr i32 %retval.0.i, %dec.i, !dbg !1718
  %and.i = and i32 %shr.i71, 1, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !370, metadata !DIExpression()), !dbg !1720
  %idxprom.i72 = zext i32 %model_index.0.i to i64, !dbg !1721
  %arrayidx.i73 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i72, !dbg !1721
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata ptr %arrayidx.i73, metadata !343, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !344, metadata !DIExpression()), !dbg !1722
  %arrayidx.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %5, !dbg !1723
  store i32 %and.i, ptr %arrayidx.i.i, align 4, !dbg !1724, !tbaa !351
  %6 = load i64, ptr %count.i.i, align 8, !dbg !1725, !tbaa !348
  %arrayidx2.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %6, !dbg !1726
  store ptr %arrayidx.i73, ptr %arrayidx2.i.i, align 8, !dbg !1727, !tbaa !355
  %inc.i.i = add i64 %6, 1, !dbg !1728
  store i64 %inc.i.i, ptr %count.i.i, align 8, !dbg !1728, !tbaa !348
  %shl.i = shl i32 %model_index.0.i, 1, !dbg !1729
  %add.i74 = or i32 %and.i, %shl.i, !dbg !1730
  call void @llvm.dbg.value(metadata i32 %add.i74, metadata !369, metadata !DIExpression()), !dbg !1712
  %cmp.not.i = icmp eq i32 %dec.i, 0, !dbg !1731
  br i1 %cmp.not.i, label %rc_bittree.exit, label %do.body.i, !dbg !1732, !llvm.loop !1733

rc_bittree.exit:                                  ; preds = %do.body.i
  %cmp6 = icmp ugt i32 %retval.0.i, 3, !dbg !1735
  br i1 %cmp6, label %if.then, label %if.end22, !dbg !1736

if.then:                                          ; preds = %rc_bittree.exit
  %shr = lshr i32 %retval.0.i, 1, !dbg !1737
  %sub7 = add nsw i32 %shr, -1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !1680, metadata !DIExpression()), !dbg !1739
  %and = and i32 %retval.0.i, 1, !dbg !1740
  %or = or i32 %and, 2, !dbg !1741
  %shl = shl i32 %or, %sub7, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %shl, metadata !1683, metadata !DIExpression()), !dbg !1739
  %sub8 = sub i32 %distance, %shl, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %sub8, metadata !1684, metadata !DIExpression()), !dbg !1739
  %cmp9 = icmp ult i32 %retval.0.i, 14, !dbg !1744
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1746

if.then10:                                        ; preds = %if.then
  %pos_special = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 20, !dbg !1747
  %idx.ext = zext i32 %shl to i64, !dbg !1749
  %add.ptr = getelementptr inbounds i16, ptr %pos_special, i64 %idx.ext, !dbg !1749
  %idx.ext13 = zext i32 %retval.0.i to i64, !dbg !1750
  %idx.neg = sub nsw i64 0, %idx.ext13, !dbg !1750
  %add.ptr14 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.neg, !dbg !1750
  %add.ptr15 = getelementptr inbounds i16, ptr %add.ptr14, i64 -1, !dbg !1751
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1752, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata ptr %add.ptr15, metadata !1755, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %sub7, metadata !1756, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %sub8, metadata !1757, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 1, metadata !1758, metadata !DIExpression()), !dbg !1761
  br label %do.body.i90, !dbg !1763

do.body.i90:                                      ; preds = %do.body.i90, %if.then10
  %7 = phi i64 [ %inc.i.i, %if.then10 ], [ %inc.i.i85, %do.body.i90 ], !dbg !1764
  %symbol.addr.0.i = phi i32 [ %sub8, %if.then10 ], [ %shr.i80, %do.body.i90 ]
  %model_index.0.i77 = phi i32 [ 1, %if.then10 ], [ %add.i87, %do.body.i90 ], !dbg !1761
  %bit_count.addr.0.i78 = phi i32 [ %sub7, %if.then10 ], [ %dec.i88, %do.body.i90 ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i78, metadata !1756, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %model_index.0.i77, metadata !1758, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i, metadata !1757, metadata !DIExpression()), !dbg !1761
  %and.i79 = and i32 %symbol.addr.0.i, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %and.i79, metadata !1759, metadata !DIExpression()), !dbg !1767
  %shr.i80 = lshr i32 %symbol.addr.0.i, 1, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %shr.i80, metadata !1757, metadata !DIExpression()), !dbg !1761
  %idxprom.i81 = zext i32 %model_index.0.i77 to i64, !dbg !1769
  %arrayidx.i82 = getelementptr inbounds i16, ptr %add.ptr15, i64 %idxprom.i81, !dbg !1769
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata ptr %arrayidx.i82, metadata !343, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i32 %and.i79, metadata !344, metadata !DIExpression()), !dbg !1770
  %arrayidx.i.i83 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %7, !dbg !1771
  store i32 %and.i79, ptr %arrayidx.i.i83, align 4, !dbg !1772, !tbaa !351
  %8 = load i64, ptr %count.i.i, align 8, !dbg !1773, !tbaa !348
  %arrayidx2.i.i84 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %8, !dbg !1774
  store ptr %arrayidx.i82, ptr %arrayidx2.i.i84, align 8, !dbg !1775, !tbaa !355
  %inc.i.i85 = add i64 %8, 1, !dbg !1776
  store i64 %inc.i.i85, ptr %count.i.i, align 8, !dbg !1776, !tbaa !348
  %shl.i86 = shl i32 %model_index.0.i77, 1, !dbg !1777
  %add.i87 = or i32 %shl.i86, %and.i79, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %add.i87, metadata !1758, metadata !DIExpression()), !dbg !1761
  %dec.i88 = add nsw i32 %bit_count.addr.0.i78, -1, !dbg !1779
  call void @llvm.dbg.value(metadata i32 %dec.i88, metadata !1756, metadata !DIExpression()), !dbg !1761
  %cmp.not.i89 = icmp eq i32 %dec.i88, 0, !dbg !1780
  br i1 %cmp.not.i89, label %if.end22, label %do.body.i90, !dbg !1781, !llvm.loop !1782

if.else:                                          ; preds = %if.then
  %shr17 = lshr i32 %sub8, 4, !dbg !1784
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1786, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %shr17, metadata !1791, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i32 %shr, metadata !1792, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1793
  %dec.i92117 = add nsw i32 %shr, -6, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %dec.i92117, metadata !1792, metadata !DIExpression()), !dbg !1793
  %shr.i93118 = lshr i32 %shr17, %dec.i92117, !dbg !1797
  %and.i94119 = and i32 %shr.i93118, 1, !dbg !1798
  %add.i95120 = or i32 %and.i94119, 2, !dbg !1799
  %inc.i121 = add i64 %6, 2, !dbg !1800
  store i64 %inc.i121, ptr %count.i.i, align 8, !dbg !1800, !tbaa !348
  %arrayidx.i96122 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %inc.i.i, !dbg !1801
  store i32 %add.i95120, ptr %arrayidx.i96122, align 4, !dbg !1802, !tbaa !351
  %cmp.not.i97123 = icmp eq i32 %dec.i92117, 0, !dbg !1803
  br i1 %cmp.not.i97123, label %rc_direct.exit, label %do.body.i98.do.body.i98_crit_edge, !dbg !1804, !llvm.loop !1805

do.body.i98.do.body.i98_crit_edge:                ; preds = %if.else, %do.body.i98.do.body.i98_crit_edge
  %dec.i92124 = phi i32 [ %dec.i92, %do.body.i98.do.body.i98_crit_edge ], [ %dec.i92117, %if.else ]
  %.pre = load i64, ptr %count.i.i, align 8, !dbg !1800, !tbaa !348
  call void @llvm.dbg.value(metadata i32 %dec.i92124, metadata !1792, metadata !DIExpression()), !dbg !1793
  %dec.i92 = add nsw i32 %dec.i92124, -1, !dbg !1795
  call void @llvm.dbg.value(metadata i32 %dec.i92, metadata !1792, metadata !DIExpression()), !dbg !1793
  %shr.i93 = lshr i32 %shr17, %dec.i92, !dbg !1797
  %and.i94 = and i32 %shr.i93, 1, !dbg !1798
  %add.i95 = or i32 %and.i94, 2, !dbg !1799
  %inc.i = add i64 %.pre, 1, !dbg !1800
  store i64 %inc.i, ptr %count.i.i, align 8, !dbg !1800, !tbaa !348
  %arrayidx.i96 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %.pre, !dbg !1801
  store i32 %add.i95, ptr %arrayidx.i96, align 4, !dbg !1802, !tbaa !351
  %cmp.not.i97 = icmp eq i32 %dec.i92, 0, !dbg !1803
  br i1 %cmp.not.i97, label %rc_direct.exit, label %do.body.i98.do.body.i98_crit_edge, !dbg !1804, !llvm.loop !1805

rc_direct.exit:                                   ; preds = %do.body.i98.do.body.i98_crit_edge, %if.else
  %pos_align = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 21, !dbg !1808
  %and21 = and i32 %sub8, 15, !dbg !1809
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1752, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %pos_align, metadata !1755, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 4, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %and21, metadata !1757, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 1, metadata !1758, metadata !DIExpression()), !dbg !1810
  %.pre.i100 = load i64, ptr %count.i.i, align 8, !dbg !1812, !tbaa !348
  br label %do.body.i115, !dbg !1814

do.body.i115:                                     ; preds = %do.body.i115, %rc_direct.exit
  %9 = phi i64 [ %.pre.i100, %rc_direct.exit ], [ %inc.i.i110, %do.body.i115 ], !dbg !1812
  %symbol.addr.0.i101 = phi i32 [ %and21, %rc_direct.exit ], [ %shr.i105, %do.body.i115 ]
  %model_index.0.i102 = phi i32 [ 1, %rc_direct.exit ], [ %add.i112, %do.body.i115 ], !dbg !1810
  %bit_count.addr.0.i103 = phi i32 [ 4, %rc_direct.exit ], [ %dec.i113, %do.body.i115 ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i103, metadata !1756, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %model_index.0.i102, metadata !1758, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i101, metadata !1757, metadata !DIExpression()), !dbg !1810
  %and.i104 = and i32 %symbol.addr.0.i101, 1, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %and.i104, metadata !1759, metadata !DIExpression()), !dbg !1816
  %shr.i105 = lshr i32 %symbol.addr.0.i101, 1, !dbg !1817
  call void @llvm.dbg.value(metadata i32 %shr.i105, metadata !1757, metadata !DIExpression()), !dbg !1810
  %idxprom.i106 = zext i32 %model_index.0.i102 to i64, !dbg !1818
  %arrayidx.i107 = getelementptr inbounds i16, ptr %pos_align, i64 %idxprom.i106, !dbg !1818
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !337, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr %arrayidx.i107, metadata !343, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i32 %and.i104, metadata !344, metadata !DIExpression()), !dbg !1819
  %arrayidx.i.i108 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 6, i64 %9, !dbg !1820
  store i32 %and.i104, ptr %arrayidx.i.i108, align 4, !dbg !1821, !tbaa !351
  %10 = load i64, ptr %count.i.i, align 8, !dbg !1822, !tbaa !348
  %arrayidx2.i.i109 = getelementptr inbounds %struct.lzma_range_encoder, ptr %pcoder, i64 0, i32 7, i64 %10, !dbg !1823
  store ptr %arrayidx.i107, ptr %arrayidx2.i.i109, align 8, !dbg !1824, !tbaa !355
  %inc.i.i110 = add i64 %10, 1, !dbg !1825
  store i64 %inc.i.i110, ptr %count.i.i, align 8, !dbg !1825, !tbaa !348
  %shl.i111 = shl i32 %model_index.0.i102, 1, !dbg !1826
  %add.i112 = or i32 %shl.i111, %and.i104, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %add.i112, metadata !1758, metadata !DIExpression()), !dbg !1810
  %dec.i113 = add nsw i32 %bit_count.addr.0.i103, -1, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %dec.i113, metadata !1756, metadata !DIExpression()), !dbg !1810
  %cmp.not.i114 = icmp eq i32 %dec.i113, 0, !dbg !1829
  br i1 %cmp.not.i114, label %rc_bittree_reverse.exit116, label %do.body.i115, !dbg !1830, !llvm.loop !1831

rc_bittree_reverse.exit116:                       ; preds = %do.body.i115
  %align_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 29, !dbg !1833
  %11 = load i32, ptr %align_price_count, align 8, !dbg !1834, !tbaa !1259
  %inc = add i32 %11, 1, !dbg !1834
  store i32 %inc, ptr %align_price_count, align 8, !dbg !1834, !tbaa !1259
  br label %if.end22

if.end22:                                         ; preds = %do.body.i90, %rc_bittree_reverse.exit116, %rc_bittree.exit
  %reps = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !1835
  %arrayidx23 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 2, !dbg !1836
  %12 = load i32, ptr %arrayidx23, align 4, !dbg !1836, !tbaa !460
  %arrayidx25 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 3, !dbg !1837
  store i32 %12, ptr %arrayidx25, align 4, !dbg !1838, !tbaa !460
  %arrayidx27 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 1, !dbg !1839
  %13 = load i32, ptr %arrayidx27, align 4, !dbg !1839, !tbaa !460
  store i32 %13, ptr %arrayidx23, align 4, !dbg !1840, !tbaa !460
  %14 = load i32, ptr %reps, align 4, !dbg !1841, !tbaa !460
  store i32 %14, ptr %arrayidx27, align 4, !dbg !1842, !tbaa !460
  store i32 %distance, ptr %reps, align 4, !dbg !1843, !tbaa !460
  %match_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 27, !dbg !1844
  %15 = load i32, ptr %match_price_count, align 4, !dbg !1845, !tbaa !1256
  %inc36 = add i32 %15, 1, !dbg !1845
  store i32 %inc36, ptr %match_price_count, align 4, !dbg !1845, !tbaa !1256
  ret void, !dbg !1846
}

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind uwtable
define internal fastcc void @length(ptr noundef %rc, ptr noundef %lc, i32 noundef %pos_state, i32 noundef %len, i1 noundef zeroext %fast_mode) unnamed_addr #8 !dbg !1847 {
entry:
  call void @llvm.dbg.value(metadata ptr %rc, metadata !1851, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata ptr %lc, metadata !1852, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32 %pos_state, metadata !1853, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i32 %len, metadata !1854, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i1 %fast_mode, metadata !1855, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1856
  %sub = add i32 %len, -2, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1854, metadata !DIExpression()), !dbg !1856
  %cmp = icmp ult i32 %sub, 8, !dbg !1858
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr %lc, metadata !343, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %lc, metadata !343, metadata !DIExpression()), !dbg !1863
  %count.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 4, !dbg !1866
  %0 = load i64, ptr %count.i, align 8, !dbg !1866, !tbaa !348
  %arrayidx.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %0, !dbg !1866
  br i1 %cmp, label %if.then, label %if.else, !dbg !1867

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !1860
  store i32 0, ptr %arrayidx.i, align 4, !dbg !1868, !tbaa !351
  %1 = load i64, ptr %count.i, align 8, !dbg !1869, !tbaa !348
  %arrayidx2.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %1, !dbg !1870
  store ptr %lc, ptr %arrayidx2.i, align 8, !dbg !1871, !tbaa !355
  %inc.i = add i64 %1, 1, !dbg !1872
  store i64 %inc.i, ptr %count.i, align 8, !dbg !1872, !tbaa !348
  %idxprom = zext i32 %pos_state to i64, !dbg !1873
  %arrayidx = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 2, i64 %idxprom, !dbg !1873
  call void @llvm.dbg.value(metadata ptr %rc, metadata !361, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !366, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 3, metadata !367, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %sub, metadata !368, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()), !dbg !1874
  br label %do.body.i, !dbg !1876

do.body.i:                                        ; preds = %do.body.i, %if.then
  %2 = phi i64 [ %inc.i, %if.then ], [ %inc.i.i, %do.body.i ], !dbg !1877
  %model_index.0.i = phi i32 [ 1, %if.then ], [ %add.i, %do.body.i ], !dbg !1874
  %bit_count.addr.0.i = phi i32 [ 3, %if.then ], [ %dec.i, %do.body.i ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i, metadata !367, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i32 %model_index.0.i, metadata !369, metadata !DIExpression()), !dbg !1874
  %dec.i = add nsw i32 %bit_count.addr.0.i, -1, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !367, metadata !DIExpression()), !dbg !1874
  %shr.i = lshr i32 %sub, %dec.i, !dbg !1880
  %and.i = and i32 %shr.i, 1, !dbg !1881
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !370, metadata !DIExpression()), !dbg !1882
  %idxprom.i = zext i32 %model_index.0.i to i64, !dbg !1883
  %arrayidx.i44 = getelementptr inbounds i16, ptr %arrayidx, i64 %idxprom.i, !dbg !1883
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr %arrayidx.i44, metadata !343, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !344, metadata !DIExpression()), !dbg !1884
  %arrayidx.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %2, !dbg !1885
  store i32 %and.i, ptr %arrayidx.i.i, align 4, !dbg !1886, !tbaa !351
  %3 = load i64, ptr %count.i, align 8, !dbg !1887, !tbaa !348
  %arrayidx2.i.i = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %3, !dbg !1888
  store ptr %arrayidx.i44, ptr %arrayidx2.i.i, align 8, !dbg !1889, !tbaa !355
  %inc.i.i = add i64 %3, 1, !dbg !1890
  store i64 %inc.i.i, ptr %count.i, align 8, !dbg !1890, !tbaa !348
  %shl.i = shl i32 %model_index.0.i, 1, !dbg !1891
  %add.i = or i32 %and.i, %shl.i, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !369, metadata !DIExpression()), !dbg !1874
  %cmp.not.i = icmp eq i32 %dec.i, 0, !dbg !1893
  br i1 %cmp.not.i, label %if.end12, label %do.body.i, !dbg !1894, !llvm.loop !1895

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()), !dbg !1863
  store i32 1, ptr %arrayidx.i, align 4, !dbg !1897, !tbaa !351
  %4 = load i64, ptr %count.i, align 8, !dbg !1898, !tbaa !348
  %arrayidx2.i47 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %4, !dbg !1899
  store ptr %lc, ptr %arrayidx2.i47, align 8, !dbg !1900, !tbaa !355
  %inc.i48 = add i64 %4, 1, !dbg !1901
  store i64 %inc.i48, ptr %count.i, align 8, !dbg !1901, !tbaa !348
  %sub2 = add i32 %len, -10, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %sub2, metadata !1854, metadata !DIExpression()), !dbg !1856
  %cmp3 = icmp ult i32 %sub2, 8, !dbg !1903
  %choice2 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 1, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata ptr %choice2, metadata !343, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %choice2, metadata !343, metadata !DIExpression()), !dbg !1909
  %arrayidx.i50 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %inc.i48, !dbg !1905
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !1912

if.then4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !1906
  store i32 0, ptr %arrayidx.i50, align 4, !dbg !1913, !tbaa !351
  %5 = load i64, ptr %count.i, align 8, !dbg !1914, !tbaa !348
  %arrayidx2.i51 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %5, !dbg !1915
  store ptr %choice2, ptr %arrayidx2.i51, align 8, !dbg !1916, !tbaa !355
  %inc.i52 = add i64 %5, 1, !dbg !1917
  store i64 %inc.i52, ptr %count.i, align 8, !dbg !1917, !tbaa !348
  %idxprom5 = zext i32 %pos_state to i64, !dbg !1918
  %arrayidx6 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 3, i64 %idxprom5, !dbg !1918
  call void @llvm.dbg.value(metadata ptr %rc, metadata !361, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !366, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 3, metadata !367, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 %sub2, metadata !368, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()), !dbg !1919
  br label %do.body.i68, !dbg !1921

do.body.i68:                                      ; preds = %do.body.i68, %if.then4
  %6 = phi i64 [ %inc.i52, %if.then4 ], [ %inc.i.i64, %do.body.i68 ], !dbg !1922
  %model_index.0.i55 = phi i32 [ 1, %if.then4 ], [ %add.i66, %do.body.i68 ], !dbg !1919
  %bit_count.addr.0.i56 = phi i32 [ 3, %if.then4 ], [ %dec.i57, %do.body.i68 ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i56, metadata !367, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 %model_index.0.i55, metadata !369, metadata !DIExpression()), !dbg !1919
  %dec.i57 = add nsw i32 %bit_count.addr.0.i56, -1, !dbg !1924
  call void @llvm.dbg.value(metadata i32 %dec.i57, metadata !367, metadata !DIExpression()), !dbg !1919
  %shr.i58 = lshr i32 %sub2, %dec.i57, !dbg !1925
  %and.i59 = and i32 %shr.i58, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %and.i59, metadata !370, metadata !DIExpression()), !dbg !1927
  %idxprom.i60 = zext i32 %model_index.0.i55 to i64, !dbg !1928
  %arrayidx.i61 = getelementptr inbounds i16, ptr %arrayidx6, i64 %idxprom.i60, !dbg !1928
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata ptr %arrayidx.i61, metadata !343, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i32 %and.i59, metadata !344, metadata !DIExpression()), !dbg !1929
  %arrayidx.i.i62 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %6, !dbg !1930
  store i32 %and.i59, ptr %arrayidx.i.i62, align 4, !dbg !1931, !tbaa !351
  %7 = load i64, ptr %count.i, align 8, !dbg !1932, !tbaa !348
  %arrayidx2.i.i63 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %7, !dbg !1933
  store ptr %arrayidx.i61, ptr %arrayidx2.i.i63, align 8, !dbg !1934, !tbaa !355
  %inc.i.i64 = add i64 %7, 1, !dbg !1935
  store i64 %inc.i.i64, ptr %count.i, align 8, !dbg !1935, !tbaa !348
  %shl.i65 = shl i32 %model_index.0.i55, 1, !dbg !1936
  %add.i66 = or i32 %and.i59, %shl.i65, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %add.i66, metadata !369, metadata !DIExpression()), !dbg !1919
  %cmp.not.i67 = icmp eq i32 %dec.i57, 0, !dbg !1938
  br i1 %cmp.not.i67, label %if.end12, label %do.body.i68, !dbg !1939, !llvm.loop !1940

if.else8:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !344, metadata !DIExpression()), !dbg !1909
  store i32 1, ptr %arrayidx.i50, align 4, !dbg !1942, !tbaa !351
  %8 = load i64, ptr %count.i, align 8, !dbg !1943, !tbaa !348
  %arrayidx2.i72 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %8, !dbg !1944
  store ptr %choice2, ptr %arrayidx2.i72, align 8, !dbg !1945, !tbaa !355
  %inc.i73 = add i64 %8, 1, !dbg !1946
  store i64 %inc.i73, ptr %count.i, align 8, !dbg !1946, !tbaa !348
  %sub10 = add i32 %len, -18, !dbg !1947
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !1854, metadata !DIExpression()), !dbg !1856
  %high = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 4, !dbg !1948
  call void @llvm.dbg.value(metadata ptr %rc, metadata !361, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata ptr %high, metadata !366, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 8, metadata !367, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %sub10, metadata !368, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 1, metadata !369, metadata !DIExpression()), !dbg !1949
  br label %do.body.i89, !dbg !1951

do.body.i89:                                      ; preds = %do.body.i89, %if.else8
  %9 = phi i64 [ %inc.i73, %if.else8 ], [ %inc.i.i85, %do.body.i89 ], !dbg !1952
  %model_index.0.i76 = phi i32 [ 1, %if.else8 ], [ %add.i87, %do.body.i89 ], !dbg !1949
  %bit_count.addr.0.i77 = phi i32 [ 8, %if.else8 ], [ %dec.i78, %do.body.i89 ]
  call void @llvm.dbg.value(metadata i32 %bit_count.addr.0.i77, metadata !367, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %model_index.0.i76, metadata !369, metadata !DIExpression()), !dbg !1949
  %dec.i78 = add nsw i32 %bit_count.addr.0.i77, -1, !dbg !1954
  call void @llvm.dbg.value(metadata i32 %dec.i78, metadata !367, metadata !DIExpression()), !dbg !1949
  %shr.i79 = lshr i32 %sub10, %dec.i78, !dbg !1955
  %and.i80 = and i32 %shr.i79, 1, !dbg !1956
  call void @llvm.dbg.value(metadata i32 %and.i80, metadata !370, metadata !DIExpression()), !dbg !1957
  %idxprom.i81 = zext i32 %model_index.0.i76 to i64, !dbg !1958
  %arrayidx.i82 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i81, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %rc, metadata !337, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata ptr %arrayidx.i82, metadata !343, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %and.i80, metadata !344, metadata !DIExpression()), !dbg !1959
  %arrayidx.i.i83 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 6, i64 %9, !dbg !1960
  store i32 %and.i80, ptr %arrayidx.i.i83, align 4, !dbg !1961, !tbaa !351
  %10 = load i64, ptr %count.i, align 8, !dbg !1962, !tbaa !348
  %arrayidx2.i.i84 = getelementptr inbounds %struct.lzma_range_encoder, ptr %rc, i64 0, i32 7, i64 %10, !dbg !1963
  store ptr %arrayidx.i82, ptr %arrayidx2.i.i84, align 8, !dbg !1964, !tbaa !355
  %inc.i.i85 = add i64 %10, 1, !dbg !1965
  store i64 %inc.i.i85, ptr %count.i, align 8, !dbg !1965, !tbaa !348
  %shl.i86 = shl i32 %model_index.0.i76, 1, !dbg !1966
  %add.i87 = or i32 %and.i80, %shl.i86, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %add.i87, metadata !369, metadata !DIExpression()), !dbg !1949
  %cmp.not.i88 = icmp eq i32 %dec.i78, 0, !dbg !1968
  br i1 %cmp.not.i88, label %if.end12, label %do.body.i89, !dbg !1969, !llvm.loop !1970

if.end12:                                         ; preds = %do.body.i89, %do.body.i68, %do.body.i
  br i1 %fast_mode, label %if.end19, label %if.then13, !dbg !1972

if.then13:                                        ; preds = %if.end12
  %idxprom14 = zext i32 %pos_state to i64, !dbg !1973
  %arrayidx15 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 7, i64 %idxprom14, !dbg !1973
  %11 = load i32, ptr %arrayidx15, align 4, !dbg !1976, !tbaa !460
  %dec = add i32 %11, -1, !dbg !1976
  store i32 %dec, ptr %arrayidx15, align 4, !dbg !1976, !tbaa !460
  %cmp16 = icmp eq i32 %dec, 0, !dbg !1977
  br i1 %cmp16, label %if.then17, label %if.end19, !dbg !1978

if.then17:                                        ; preds = %if.then13
  tail call fastcc void @length_update_prices(ptr noundef nonnull %lc, i32 noundef %pos_state), !dbg !1979
  br label %if.end19, !dbg !1979

if.end19:                                         ; preds = %if.then13, %if.then17, %if.end12
  ret void, !dbg !1980
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal fastcc void @length_update_prices(ptr nocapture noundef %lc, i32 noundef %pos_state) unnamed_addr #9 !dbg !1981 {
entry:
  call void @llvm.dbg.value(metadata ptr %lc, metadata !1985, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %pos_state, metadata !1986, metadata !DIExpression()), !dbg !1995
  %table_size1 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 6, !dbg !1996
  %0 = load i32, ptr %table_size1, align 4, !dbg !1996, !tbaa !1997
  call void @llvm.dbg.value(metadata i32 %0, metadata !1987, metadata !DIExpression()), !dbg !1995
  %idxprom = zext i32 %pos_state to i64, !dbg !1998
  %arrayidx = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 7, i64 %idxprom, !dbg !1998
  store i32 %0, ptr %arrayidx, align 4, !dbg !1999, !tbaa !460
  %1 = load i16, ptr %lc, align 4, !dbg !2000, !tbaa !1185
  call void @llvm.dbg.value(metadata i16 %1, metadata !2001, metadata !DIExpression()), !dbg !2008
  %2 = lshr i16 %1, 4, !dbg !2010
  %3 = zext i16 %2 to i64
  %arrayidx.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %3, !dbg !2011
  %4 = load i8, ptr %arrayidx.i, align 1, !dbg !2011, !tbaa !351
  %conv1.i = zext i8 %4 to i32, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %conv1.i, metadata !1988, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i16 %1, metadata !2012, metadata !DIExpression()), !dbg !2015
  %5 = xor i16 %2, 127, !dbg !2017
  %idxprom.i = zext i16 %5 to i64, !dbg !2018
  %arrayidx.i81 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i, !dbg !2018
  %6 = load i8, ptr %arrayidx.i81, align 1, !dbg !2018, !tbaa !351
  %conv1.i82 = zext i8 %6 to i32, !dbg !2018
  call void @llvm.dbg.value(metadata i32 %conv1.i82, metadata !1989, metadata !DIExpression()), !dbg !1995
  %choice24 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 1, !dbg !2019
  %7 = load i16, ptr %choice24, align 2, !dbg !2019, !tbaa !1187
  call void @llvm.dbg.value(metadata i16 %7, metadata !2001, metadata !DIExpression()), !dbg !2020
  %8 = lshr i16 %7, 4, !dbg !2022
  %9 = zext i16 %8 to i64
  %arrayidx.i83 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %9, !dbg !2023
  %10 = load i8, ptr %arrayidx.i83, align 1, !dbg !2023, !tbaa !351
  %conv1.i84 = zext i8 %10 to i32, !dbg !2023
  %add = add nuw nsw i32 %conv1.i84, %conv1.i82, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %add, metadata !1990, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i16 %7, metadata !2012, metadata !DIExpression()), !dbg !2025
  %11 = xor i16 %8, 127, !dbg !2027
  %idxprom.i85 = zext i16 %11 to i64, !dbg !2028
  %arrayidx.i86 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i85, !dbg !2028
  %12 = load i8, ptr %arrayidx.i86, align 1, !dbg !2028, !tbaa !351
  %conv1.i87 = zext i8 %12 to i32, !dbg !2028
  %add8 = add nuw nsw i32 %conv1.i87, %conv1.i82, !dbg !2029
  call void @llvm.dbg.value(metadata i32 %add8, metadata !1991, metadata !DIExpression()), !dbg !1995
  %arrayidx11 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 5, i64 %idxprom, !dbg !2030
  call void @llvm.dbg.value(metadata ptr %arrayidx11, metadata !1992, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()), !dbg !1995
  %cmp127.not = icmp eq i32 %0, 0, !dbg !2031
  br i1 %cmp127.not, label %for.cond20.preheader, label %for.body.lr.ph, !dbg !2034

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx14 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 2, i64 %idxprom
  %13 = add i32 %0, -1, !dbg !2034
  %umin = call i32 @llvm.umin.i32(i32 %13, i32 7), !dbg !2034
  %14 = add nuw nsw i32 %umin, 1, !dbg !2034
  %wide.trip.count = zext i32 %14 to i64, !dbg !2034
  br label %for.body, !dbg !2034

for.cond20.preheader:                             ; preds = %rc_bittree_price.exit, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %14, %rc_bittree_price.exit ], !dbg !2035
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !1994, metadata !DIExpression()), !dbg !1995
  %cmp21129 = icmp ult i32 %i.0.lcssa, %0, !dbg !2036
  br i1 %cmp21129, label %for.body25.lr.ph, label %for.cond36.preheader, !dbg !2039

for.body25.lr.ph:                                 ; preds = %for.cond20.preheader
  %arrayidx27 = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 3, i64 %idxprom
  %15 = zext i32 %i.0.lcssa to i64, !dbg !2039
  %16 = zext i32 %0 to i64, !dbg !2039
  br label %for.body25, !dbg !2039

for.body:                                         ; preds = %for.body.lr.ph, %rc_bittree_price.exit
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %rc_bittree_price.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %arrayidx14, metadata !2040, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 3, metadata !2047, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2048, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2052
  %17 = trunc i64 %indvars.iv to i32, !dbg !2054
  %18 = add i32 %17, 8, !dbg !2054
  br label %do.body.i, !dbg !2054

do.body.i:                                        ; preds = %do.body.i, %for.body
  %price.0.i = phi i32 [ 0, %for.body ], [ %add1.i, %do.body.i ], !dbg !2052
  %symbol.addr.0.i = phi i32 [ %18, %for.body ], [ %shr.i, %do.body.i ], !dbg !2052
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i, metadata !2048, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 %price.0.i, metadata !2049, metadata !DIExpression()), !dbg !2052
  %and.i = and i32 %symbol.addr.0.i, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !2050, metadata !DIExpression()), !dbg !2056
  %shr.i = lshr i32 %symbol.addr.0.i, 1, !dbg !2057
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !2048, metadata !DIExpression()), !dbg !2052
  %idxprom.i88 = zext i32 %shr.i to i64, !dbg !2058
  %arrayidx.i89 = getelementptr inbounds i16, ptr %arrayidx14, i64 %idxprom.i88, !dbg !2058
  %19 = load i16, ptr %arrayidx.i89, align 2, !dbg !2058, !tbaa !873
  call void @llvm.dbg.value(metadata i16 %19, metadata !2059, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 %and.i, metadata !2064, metadata !DIExpression()), !dbg !2065
  %conv.i.i = zext i16 %19 to i32, !dbg !2067
  %sub.i.i = sub nsw i32 0, %and.i, !dbg !2068
  %and.i.i = and i32 %sub.i.i, 2032, !dbg !2069
  %xor.i.i = xor i32 %and.i.i, %conv.i.i, !dbg !2070
  %shr.i.i = lshr i32 %xor.i.i, 4, !dbg !2071
  %idxprom.i.i = zext i32 %shr.i.i to i64, !dbg !2072
  %arrayidx.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i, !dbg !2072
  %20 = load i8, ptr %arrayidx.i.i, align 1, !dbg !2072, !tbaa !351
  %conv1.i.i = zext i8 %20 to i32, !dbg !2072
  %add1.i = add i32 %price.0.i, %conv1.i.i, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %add1.i, metadata !2049, metadata !DIExpression()), !dbg !2052
  %cmp.not.i = icmp eq i32 %shr.i, 1, !dbg !2074
  br i1 %cmp.not.i, label %rc_bittree_price.exit, label %do.body.i, !dbg !2075, !llvm.loop !2076

rc_bittree_price.exit:                            ; preds = %do.body.i
  %add17 = add i32 %add1.i, %conv1.i, !dbg !2078
  %arrayidx19 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv, !dbg !2079
  store i32 %add17, ptr %arrayidx19, align 4, !dbg !2080, !tbaa !460
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1994, metadata !DIExpression()), !dbg !1995
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2034
  br i1 %exitcond.not, label %for.cond20.preheader, label %for.body, !dbg !2034, !llvm.loop !2082

for.cond36.preheader.loopexit:                    ; preds = %rc_bittree_price.exit107
  %21 = trunc i64 %indvars.iv.next139 to i32, !dbg !2085
  br label %for.cond36.preheader, !dbg !2085

for.cond36.preheader:                             ; preds = %for.cond36.preheader.loopexit, %for.cond20.preheader
  %i.1.lcssa = phi i32 [ %i.0.lcssa, %for.cond20.preheader ], [ %21, %for.cond36.preheader.loopexit ], !dbg !1995
  call void @llvm.dbg.value(metadata i32 %i.1.lcssa, metadata !1994, metadata !DIExpression()), !dbg !1995
  %cmp37134 = icmp ult i32 %i.1.lcssa, %0, !dbg !2085
  br i1 %cmp37134, label %for.body38.lr.ph, label %for.end48, !dbg !2088

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %high = getelementptr inbounds %struct.lzma_length_encoder, ptr %lc, i64 0, i32 4
  %22 = zext i32 %i.1.lcssa to i64, !dbg !2088
  %wide.trip.count144 = zext i32 %0 to i64, !dbg !2085
  br label %for.body38, !dbg !2088

for.body25:                                       ; preds = %for.body25.lr.ph, %rc_bittree_price.exit107
  %indvars.iv138 = phi i64 [ %15, %for.body25.lr.ph ], [ %indvars.iv.next139, %rc_bittree_price.exit107 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv138, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %arrayidx27, metadata !2040, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 3, metadata !2047, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i64 %indvars.iv138, metadata !2048, metadata !DIExpression()), !dbg !2089
  %23 = trunc i64 %indvars.iv138 to i32, !dbg !2091
  br label %do.body.i106, !dbg !2091

do.body.i106:                                     ; preds = %do.body.i106, %for.body25
  %price.0.i90 = phi i32 [ 0, %for.body25 ], [ %add1.i104, %do.body.i106 ], !dbg !2089
  %symbol.addr.0.i91 = phi i32 [ %23, %for.body25 ], [ %shr.i93, %do.body.i106 ], !dbg !2089
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i91, metadata !2048, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i32 %price.0.i90, metadata !2049, metadata !DIExpression()), !dbg !2089
  %and.i92 = and i32 %symbol.addr.0.i91, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %and.i92, metadata !2050, metadata !DIExpression()), !dbg !2093
  %shr.i93 = lshr i32 %symbol.addr.0.i91, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i32 %shr.i93, metadata !2048, metadata !DIExpression()), !dbg !2089
  %idxprom.i94 = zext i32 %shr.i93 to i64, !dbg !2095
  %arrayidx.i95 = getelementptr inbounds i16, ptr %arrayidx27, i64 %idxprom.i94, !dbg !2095
  %24 = load i16, ptr %arrayidx.i95, align 2, !dbg !2095, !tbaa !873
  call void @llvm.dbg.value(metadata i16 %24, metadata !2059, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 %and.i92, metadata !2064, metadata !DIExpression()), !dbg !2096
  %conv.i.i96 = zext i16 %24 to i32, !dbg !2098
  %sub.i.i97 = sub nsw i32 0, %and.i92, !dbg !2099
  %and.i.i98 = and i32 %sub.i.i97, 2032, !dbg !2100
  %xor.i.i99 = xor i32 %and.i.i98, %conv.i.i96, !dbg !2101
  %shr.i.i100 = lshr i32 %xor.i.i99, 4, !dbg !2102
  %idxprom.i.i101 = zext i32 %shr.i.i100 to i64, !dbg !2103
  %arrayidx.i.i102 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i101, !dbg !2103
  %25 = load i8, ptr %arrayidx.i.i102, align 1, !dbg !2103, !tbaa !351
  %conv1.i.i103 = zext i8 %25 to i32, !dbg !2103
  %add1.i104 = add i32 %price.0.i90, %conv1.i.i103, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %add1.i104, metadata !2049, metadata !DIExpression()), !dbg !2089
  %cmp.not.i105 = icmp eq i32 %shr.i93, 1, !dbg !2105
  br i1 %cmp.not.i105, label %rc_bittree_price.exit107, label %do.body.i106, !dbg !2106, !llvm.loop !2107

rc_bittree_price.exit107:                         ; preds = %do.body.i106
  %add30 = add i32 %add, %add1.i104, !dbg !2109
  %arrayidx32 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv138, !dbg !2110
  store i32 %add30, ptr %arrayidx32, align 4, !dbg !2111, !tbaa !460
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next139, metadata !1994, metadata !DIExpression()), !dbg !1995
  %cmp21 = icmp ult i64 %indvars.iv.next139, %16, !dbg !2036
  %cmp23 = icmp ult i64 %indvars.iv138, 15
  %or.cond49 = and i1 %cmp21, %cmp23, !dbg !2039
  br i1 %or.cond49, label %for.body25, label %for.cond36.preheader.loopexit, !dbg !2039, !llvm.loop !2113

for.body38:                                       ; preds = %for.body38.lr.ph, %rc_bittree_price.exit126
  %indvars.iv141 = phi i64 [ %22, %for.body38.lr.ph ], [ %indvars.iv.next142, %rc_bittree_price.exit126 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv141, metadata !1994, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata ptr %high, metadata !2040, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 8, metadata !2047, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i64 %indvars.iv141, metadata !2048, metadata !DIExpression(DW_OP_constu, 16, DW_OP_minus, DW_OP_stack_value)), !dbg !2116
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2116
  %26 = trunc i64 %indvars.iv141 to i32, !dbg !2118
  %add.i108 = add i32 %26, 240, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %add.i108, metadata !2048, metadata !DIExpression()), !dbg !2116
  br label %do.body.i125, !dbg !2119

do.body.i125:                                     ; preds = %do.body.i125, %for.body38
  %price.0.i109 = phi i32 [ 0, %for.body38 ], [ %add1.i123, %do.body.i125 ], !dbg !2116
  %symbol.addr.0.i110 = phi i32 [ %add.i108, %for.body38 ], [ %shr.i112, %do.body.i125 ], !dbg !2116
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i110, metadata !2048, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 %price.0.i109, metadata !2049, metadata !DIExpression()), !dbg !2116
  %and.i111 = and i32 %symbol.addr.0.i110, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i32 %and.i111, metadata !2050, metadata !DIExpression()), !dbg !2121
  %shr.i112 = lshr i32 %symbol.addr.0.i110, 1, !dbg !2122
  call void @llvm.dbg.value(metadata i32 %shr.i112, metadata !2048, metadata !DIExpression()), !dbg !2116
  %idxprom.i113 = zext i32 %shr.i112 to i64, !dbg !2123
  %arrayidx.i114 = getelementptr inbounds i16, ptr %high, i64 %idxprom.i113, !dbg !2123
  %27 = load i16, ptr %arrayidx.i114, align 2, !dbg !2123, !tbaa !873
  call void @llvm.dbg.value(metadata i16 %27, metadata !2059, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 %and.i111, metadata !2064, metadata !DIExpression()), !dbg !2124
  %conv.i.i115 = zext i16 %27 to i32, !dbg !2126
  %sub.i.i116 = sub nsw i32 0, %and.i111, !dbg !2127
  %and.i.i117 = and i32 %sub.i.i116, 2032, !dbg !2128
  %xor.i.i118 = xor i32 %and.i.i117, %conv.i.i115, !dbg !2129
  %shr.i.i119 = lshr i32 %xor.i.i118, 4, !dbg !2130
  %idxprom.i.i120 = zext i32 %shr.i.i119 to i64, !dbg !2131
  %arrayidx.i.i121 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i120, !dbg !2131
  %28 = load i8, ptr %arrayidx.i.i121, align 1, !dbg !2131, !tbaa !351
  %conv1.i.i122 = zext i8 %28 to i32, !dbg !2131
  %add1.i123 = add i32 %price.0.i109, %conv1.i.i122, !dbg !2132
  call void @llvm.dbg.value(metadata i32 %add1.i123, metadata !2049, metadata !DIExpression()), !dbg !2116
  %cmp.not.i124 = icmp eq i32 %shr.i112, 1, !dbg !2133
  br i1 %cmp.not.i124, label %rc_bittree_price.exit126, label %do.body.i125, !dbg !2134, !llvm.loop !2135

rc_bittree_price.exit126:                         ; preds = %do.body.i125
  %add43 = add i32 %add8, %add1.i123, !dbg !2137
  %arrayidx45 = getelementptr inbounds i32, ptr %arrayidx11, i64 %indvars.iv141, !dbg !2138
  store i32 %add43, ptr %arrayidx45, align 4, !dbg !2139, !tbaa !460
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next142, metadata !1994, metadata !DIExpression()), !dbg !1995
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %wide.trip.count144, !dbg !2085
  br i1 %exitcond145.not, label %for.end48, label %for.body38, !dbg !2088, !llvm.loop !2141

for.end48:                                        ; preds = %rc_bittree_price.exit126, %for.cond36.preheader
  ret void, !dbg !2143
}

; Function Attrs: nounwind uwtable
define internal i32 @lzma_encode(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %out, ptr noalias nocapture noundef %out_pos, i64 noundef %out_size) #0 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2148, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %mf, metadata !2149, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %out, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !2152, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2153, metadata !DIExpression()), !dbg !2154
  %action = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 20, !dbg !2155
  %0 = load i32, ptr %action, align 8, !dbg !2155, !tbaa !318
  %cmp = icmp eq i32 %0, 1, !dbg !2155
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2157

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_lzma_encode(ptr noundef %pcoder, ptr noundef nonnull %mf, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size, i32 noundef -1), !dbg !2158
  br label %cleanup, !dbg !2159

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 8, %entry ], !dbg !2154
  ret i32 %retval.0, !dbg !2160
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly inlinehint nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !102, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "05efdea695ffcfbe246da60087a9dd58")
!2 = !{!3, !19, !25, !65, !80, !85, !92, !95}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !27, file: !26, line: 40, baseType: !5, size: 32, elements: !59)
!26 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e02ad9079871d268a82b8ebf2e7d385d")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 27, size: 5888, elements: !28)
!28 = !{!29, !35, !36, !39, !43, !46, !47, !51}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !27, file: !26, line: 28, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !31, line: 27, baseType: !32)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !33, line: 45, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !27, file: !26, line: 29, baseType: !30, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !27, file: !26, line: 30, baseType: !37, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !31, line: 26, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !33, line: 42, baseType: !5)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !27, file: !26, line: 31, baseType: !40, size: 8, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !31, line: 24, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !33, line: 38, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !27, file: !26, line: 34, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !34)
!45 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!46 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !27, file: !26, line: 37, baseType: !44, size: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !27, file: !26, line: 46, baseType: !48, size: 1856, offset: 320)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1856, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 58)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !27, file: !26, line: 49, baseType: !52, size: 3712, offset: 2176)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 3712, elements: !49)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !55, line: 71, baseType: !56)
!55 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !31, line: 25, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !33, line: 40, baseType: !58)
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "RC_BIT_0", value: 0)
!61 = !DIEnumerator(name: "RC_BIT_1", value: 1)
!62 = !DIEnumerator(name: "RC_DIRECT_0", value: 2)
!63 = !DIEnumerator(name: "RC_DIRECT_1", value: 3)
!64 = !DIEnumerator(name: "RC_FLUSH", value: 4)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 56, baseType: !5, size: 32, elements: !67)
!66 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!68 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!69 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!70 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!71 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!72 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!73 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!74 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!75 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!76 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!77 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!78 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!79 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 138, baseType: !5, size: 32, elements: !82)
!81 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!82 = !{!83, !84}
!83 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!84 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 58, baseType: !5, size: 32, elements: !86)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!88 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!89 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!90 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!91 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !93)
!93 = !{!94}
!94 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 27, baseType: !5, size: 32, elements: !97)
!96 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!99 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!100 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!101 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!102 = !{!103, !30, !37, !40}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !{i32 7, !"Dwarf Version", i32 5}
!105 = !{i32 2, !"Debug Info Version", i32 3}
!106 = !{i32 1, !"wchar_size", i32 4}
!107 = !{i32 7, !"PIC Level", i32 2}
!108 = !{i32 7, !"PIE Level", i32 2}
!109 = !{i32 7, !"uwtable", i32 2}
!110 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!111 = distinct !DISubprogram(name: "lzma_lzma_encode", scope: !112, file: !112, line: 318, type: !113, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !166)
!112 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05efdea695ffcfbe246da60087a9dd58")
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !116, !119, !163, !164, !44, !37}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !118, line: 78, baseType: null)
!118 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !122, line: 28, baseType: !123)
!122 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !122, line: 29, size: 960, elements: !124)
!124 = !{!125, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !146, !150, !152, !153, !154, !155, !156, !157, !158, !159, !161, !162}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !123, file: !122, line: 35, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !123, file: !122, line: 39, baseType: !37, size: 32, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !123, file: !122, line: 45, baseType: !37, size: 32, offset: 96)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !123, file: !122, line: 51, baseType: !37, size: 32, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !123, file: !122, line: 58, baseType: !37, size: 32, offset: 160)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !123, file: !122, line: 63, baseType: !37, size: 32, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !123, file: !122, line: 67, baseType: !37, size: 32, offset: 224)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !123, file: !122, line: 75, baseType: !37, size: 32, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !123, file: !122, line: 80, baseType: !37, size: 32, offset: 288)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !123, file: !122, line: 84, baseType: !37, size: 32, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !123, file: !122, line: 92, baseType: !137, size: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!37, !120, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !122, line: 25, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 22, size: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !142, file: !122, line: 23, baseType: !37, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !142, file: !122, line: 24, baseType: !37, size: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !123, file: !122, line: 97, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !120, !37}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !123, file: !122, line: 99, baseType: !151, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !123, file: !122, line: 100, baseType: !151, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !123, file: !122, line: 101, baseType: !37, size: 32, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !123, file: !122, line: 102, baseType: !37, size: 32, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !123, file: !122, line: 103, baseType: !37, size: 32, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !123, file: !122, line: 106, baseType: !37, size: 32, offset: 736)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !123, file: !122, line: 109, baseType: !37, size: 32, offset: 768)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !123, file: !122, line: 114, baseType: !37, size: 32, offset: 800)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !123, file: !122, line: 119, baseType: !160, size: 32, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !123, file: !122, line: 122, baseType: !37, size: 32, offset: 864)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !123, file: !122, line: 125, baseType: !37, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!164 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !278, !279, !281}
!167 = !DILocalVariable(name: "pcoder", arg: 1, scope: !111, file: !112, line: 318, type: !116)
!168 = !DILocalVariable(name: "mf", arg: 2, scope: !111, file: !112, line: 318, type: !119)
!169 = !DILocalVariable(name: "out", arg: 3, scope: !111, file: !112, line: 319, type: !163)
!170 = !DILocalVariable(name: "out_pos", arg: 4, scope: !111, file: !112, line: 319, type: !164)
!171 = !DILocalVariable(name: "out_size", arg: 5, scope: !111, file: !112, line: 320, type: !44)
!172 = !DILocalVariable(name: "limit", arg: 6, scope: !111, file: !112, line: 320, type: !37)
!173 = !DILocalVariable(name: "coder", scope: !111, file: !112, line: 322, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !177, line: 72, size: 1996608, elements: !178)
!177 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!178 = !{!179, !181, !183, !187, !191, !192, !193, !195, !196, !197, !198, !199, !200, !205, !209, !212, !213, !214, !215, !216, !220, !224, !227, !249, !250, !252, !256, !257, !258, !259, !260, !261, !262}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !176, file: !177, line: 74, baseType: !180, size: 5888)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !26, line: 51, baseType: !27)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !176, file: !177, line: 77, baseType: !182, size: 32, offset: 5888)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !66, line: 69, baseType: !65)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !176, file: !177, line: 80, baseType: !184, size: 128, offset: 5920)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 4)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !176, file: !177, line: 83, baseType: !188, size: 17536, offset: 6048)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 17536, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 274)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !176, file: !177, line: 86, baseType: !37, size: 32, offset: 23584)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !176, file: !177, line: 90, baseType: !37, size: 32, offset: 23616)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !176, file: !177, line: 93, baseType: !194, size: 8, offset: 23648)
!194 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !176, file: !177, line: 97, baseType: !194, size: 8, offset: 23656)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !176, file: !177, line: 101, baseType: !194, size: 8, offset: 23664)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !176, file: !177, line: 103, baseType: !37, size: 32, offset: 23680)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !176, file: !177, line: 104, baseType: !37, size: 32, offset: 23712)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !176, file: !177, line: 105, baseType: !37, size: 32, offset: 23744)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !176, file: !177, line: 108, baseType: !201, size: 196608, offset: 23776)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 196608, elements: !202)
!202 = !{!203, !204}
!203 = !DISubrange(count: 16)
!204 = !DISubrange(count: 768)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !176, file: !177, line: 109, baseType: !206, size: 3072, offset: 220384)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 3072, elements: !207)
!207 = !{!208, !203}
!208 = !DISubrange(count: 12)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !176, file: !177, line: 110, baseType: !210, size: 192, offset: 223456)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 192, elements: !211)
!211 = !{!208}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !176, file: !177, line: 111, baseType: !210, size: 192, offset: 223648)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !176, file: !177, line: 112, baseType: !210, size: 192, offset: 223840)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !176, file: !177, line: 113, baseType: !210, size: 192, offset: 224032)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !176, file: !177, line: 114, baseType: !206, size: 3072, offset: 224224)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !176, file: !177, line: 115, baseType: !217, size: 4096, offset: 227296)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 4096, elements: !218)
!218 = !{!186, !219}
!219 = !DISubrange(count: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !176, file: !177, line: 116, baseType: !221, size: 1824, offset: 231392)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 1824, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 114)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !176, file: !177, line: 117, baseType: !225, size: 256, offset: 233216)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 256, elements: !226)
!226 = !{!203}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !176, file: !177, line: 121, baseType: !228, size: 148032, offset: 233472)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !177, line: 51, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 40, size: 148032, elements: !230)
!230 = !{!231, !232, !233, !237, !238, !242, !246, !247}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !229, file: !177, line: 41, baseType: !54, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !229, file: !177, line: 42, baseType: !54, size: 16, offset: 16)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !229, file: !177, line: 43, baseType: !234, size: 2048, offset: 32)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !235)
!235 = !{!203, !236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !229, file: !177, line: 44, baseType: !234, size: 2048, offset: 2080)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !229, file: !177, line: 45, baseType: !239, size: 4096, offset: 4128)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 4096, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !229, file: !177, line: 47, baseType: !243, size: 139264, offset: 8224)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 139264, elements: !244)
!244 = !{!203, !245}
!245 = !DISubrange(count: 272)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !229, file: !177, line: 48, baseType: !37, size: 32, offset: 147488)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !229, file: !177, line: 49, baseType: !248, size: 512, offset: 147520)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !226)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !176, file: !177, line: 122, baseType: !228, size: 148032, offset: 381504)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !176, file: !177, line: 125, baseType: !251, size: 8192, offset: 529536)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !218)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !176, file: !177, line: 126, baseType: !253, size: 16384, offset: 537728)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 16384, elements: !254)
!254 = !{!186, !255}
!255 = !DISubrange(count: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !176, file: !177, line: 127, baseType: !37, size: 32, offset: 554112)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !176, file: !177, line: 128, baseType: !37, size: 32, offset: 554144)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !176, file: !177, line: 130, baseType: !248, size: 512, offset: 554176)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !176, file: !177, line: 131, baseType: !37, size: 32, offset: 554688)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !176, file: !177, line: 134, baseType: !37, size: 32, offset: 554720)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !176, file: !177, line: 135, baseType: !37, size: 32, offset: 554752)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !176, file: !177, line: 136, baseType: !263, size: 1441792, offset: 554784)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 1441792, elements: !276)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !177, line: 69, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !177, line: 54, size: 352, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !265, file: !177, line: 55, baseType: !182, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !265, file: !177, line: 57, baseType: !194, size: 8, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !265, file: !177, line: 58, baseType: !194, size: 8, offset: 40)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !265, file: !177, line: 60, baseType: !37, size: 32, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !265, file: !177, line: 61, baseType: !37, size: 32, offset: 96)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !265, file: !177, line: 63, baseType: !37, size: 32, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !265, file: !177, line: 64, baseType: !37, size: 32, offset: 160)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !265, file: !177, line: 65, baseType: !37, size: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !265, file: !177, line: 67, baseType: !184, size: 128, offset: 224)
!276 = !{!277}
!277 = !DISubrange(count: 4096)
!278 = !DILocalVariable(name: "position", scope: !111, file: !112, line: 328, type: !37)
!279 = !DILocalVariable(name: "len", scope: !280, file: !112, line: 369, type: !37)
!280 = distinct !DILexicalBlock(scope: !111, file: !112, line: 330, column: 15)
!281 = !DILocalVariable(name: "back", scope: !280, file: !112, line: 370, type: !37)
!282 = !DILocation(line: 0, scope: !111)
!283 = !DILocation(line: 324, column: 14, scope: !284)
!284 = distinct !DILexicalBlock(scope: !111, file: !112, line: 324, column: 6)
!285 = !{!286, !292, i64 2957}
!286 = !{!"lzma_coder_s", !287, i64 0, !289, i64 736, !289, i64 740, !289, i64 756, !291, i64 2948, !291, i64 2952, !292, i64 2956, !292, i64 2957, !292, i64 2958, !291, i64 2960, !291, i64 2964, !291, i64 2968, !289, i64 2972, !289, i64 27548, !289, i64 27932, !289, i64 27956, !289, i64 27980, !289, i64 28004, !289, i64 28028, !289, i64 28412, !289, i64 28924, !289, i64 29152, !293, i64 29184, !293, i64 47688, !289, i64 66192, !289, i64 67216, !291, i64 69264, !291, i64 69268, !289, i64 69272, !291, i64 69336, !291, i64 69340, !291, i64 69344, !289, i64 69348}
!287 = !{!"", !288, i64 0, !288, i64 8, !291, i64 16, !289, i64 20, !288, i64 24, !288, i64 32, !289, i64 40, !289, i64 272}
!288 = !{!"long", !289, i64 0}
!289 = !{!"omnipotent char", !290, i64 0}
!290 = !{!"Simple C/C++ TBAA"}
!291 = !{!"int", !289, i64 0}
!292 = !{!"_Bool", !289, i64 0}
!293 = !{!"", !294, i64 0, !294, i64 2, !289, i64 4, !289, i64 260, !289, i64 516, !289, i64 1028, !291, i64 18436, !289, i64 18440}
!294 = !{!"short", !289, i64 0}
!295 = !{i8 0, i8 2}
!296 = !DILocation(line: 324, column: 29, scope: !284)
!297 = !DILocalVariable(name: "pcoder", arg: 1, scope: !298, file: !112, line: 272, type: !116)
!298 = distinct !DISubprogram(name: "encode_init", scope: !112, file: !112, line: 272, type: !299, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!194, !116, !120}
!301 = !{!297, !302, !303}
!302 = !DILocalVariable(name: "mf", arg: 2, scope: !298, file: !112, line: 272, type: !120)
!303 = !DILocalVariable(name: "coder", scope: !298, file: !112, line: 274, type: !175)
!304 = !DILocation(line: 0, scope: !298, inlinedAt: !305)
!305 = distinct !DILocation(line: 324, column: 33, scope: !284)
!306 = !DILocation(line: 277, column: 10, scope: !307, inlinedAt: !305)
!307 = distinct !DILexicalBlock(scope: !298, file: !112, line: 277, column: 6)
!308 = !{!309, !291, i64 24}
!309 = !{!"lzma_mf_s", !310, i64 0, !291, i64 8, !291, i64 12, !291, i64 16, !291, i64 20, !291, i64 24, !291, i64 28, !291, i64 32, !291, i64 36, !291, i64 40, !310, i64 48, !310, i64 56, !310, i64 64, !310, i64 72, !291, i64 80, !291, i64 84, !291, i64 88, !291, i64 92, !291, i64 96, !291, i64 100, !289, i64 104, !291, i64 108, !291, i64 112}
!310 = !{!"any pointer", !289, i64 0}
!311 = !DILocation(line: 277, column: 26, scope: !307, inlinedAt: !305)
!312 = !{!309, !291, i64 32}
!313 = !DILocation(line: 277, column: 19, scope: !307, inlinedAt: !305)
!314 = !DILocation(line: 277, column: 6, scope: !298, inlinedAt: !305)
!315 = !DILocation(line: 278, column: 11, scope: !316, inlinedAt: !305)
!316 = distinct !DILexicalBlock(scope: !317, file: !112, line: 278, column: 7)
!317 = distinct !DILexicalBlock(scope: !307, file: !112, line: 277, column: 38)
!318 = !{!309, !289, i64 104}
!319 = !DILocation(line: 278, column: 18, scope: !316, inlinedAt: !305)
!320 = !DILocation(line: 278, column: 7, scope: !317, inlinedAt: !305)
!321 = !DILocalVariable(name: "mf", arg: 1, scope: !322, file: !122, line: 268, type: !120)
!322 = distinct !DISubprogram(name: "mf_skip", scope: !122, file: !122, line: 268, type: !148, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !323)
!323 = !{!321, !324}
!324 = !DILocalVariable(name: "amount", arg: 2, scope: !322, file: !122, line: 268, type: !37)
!325 = !DILocation(line: 0, scope: !322, inlinedAt: !326)
!326 = distinct !DILocation(line: 287, column: 3, scope: !327, inlinedAt: !305)
!327 = distinct !DILexicalBlock(scope: !307, file: !112, line: 284, column: 9)
!328 = !DILocation(line: 271, column: 7, scope: !329, inlinedAt: !326)
!329 = distinct !DILexicalBlock(scope: !330, file: !122, line: 270, column: 19)
!330 = distinct !DILexicalBlock(scope: !322, file: !122, line: 270, column: 6)
!331 = !{!309, !310, i64 56}
!332 = !DILocation(line: 271, column: 3, scope: !329, inlinedAt: !326)
!333 = !DILocation(line: 272, column: 7, scope: !329, inlinedAt: !326)
!334 = !DILocation(line: 288, column: 18, scope: !327, inlinedAt: !305)
!335 = !{!309, !291, i64 28}
!336 = !DILocation(line: 289, column: 30, scope: !327, inlinedAt: !305)
!337 = !DILocalVariable(name: "rc", arg: 1, scope: !338, file: !26, line: 67, type: !341)
!338 = distinct !DISubprogram(name: "rc_bit", scope: !26, file: !26, line: 67, type: !339, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !342)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341, !53, !37}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!342 = !{!337, !343, !344}
!343 = !DILocalVariable(name: "prob", arg: 2, scope: !338, file: !26, line: 67, type: !53)
!344 = !DILocalVariable(name: "bit", arg: 3, scope: !338, file: !26, line: 67, type: !37)
!345 = !DILocation(line: 0, scope: !338, inlinedAt: !346)
!346 = distinct !DILocation(line: 289, column: 3, scope: !327, inlinedAt: !305)
!347 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !346)
!348 = !{!287, !288, i64 24}
!349 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !346)
!350 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !346)
!351 = !{!289, !289, i64 0}
!352 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !346)
!353 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !346)
!354 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !346)
!355 = !{!310, !310, i64 0}
!356 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !346)
!357 = !DILocation(line: 290, column: 33, scope: !327, inlinedAt: !305)
!358 = !DILocation(line: 290, column: 52, scope: !327, inlinedAt: !305)
!359 = !{!309, !310, i64 0}
!360 = !DILocation(line: 290, column: 48, scope: !327, inlinedAt: !305)
!361 = !DILocalVariable(name: "rc", arg: 1, scope: !362, file: !26, line: 76, type: !341)
!362 = distinct !DISubprogram(name: "rc_bittree", scope: !26, file: !26, line: 76, type: !363, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !341, !53, !37, !37}
!365 = !{!361, !366, !367, !368, !369, !370}
!366 = !DILocalVariable(name: "probs", arg: 2, scope: !362, file: !26, line: 76, type: !53)
!367 = !DILocalVariable(name: "bit_count", arg: 3, scope: !362, file: !26, line: 77, type: !37)
!368 = !DILocalVariable(name: "symbol", arg: 4, scope: !362, file: !26, line: 77, type: !37)
!369 = !DILocalVariable(name: "model_index", scope: !362, file: !26, line: 79, type: !37)
!370 = !DILocalVariable(name: "bit", scope: !371, file: !26, line: 82, type: !372)
!371 = distinct !DILexicalBlock(scope: !362, file: !26, line: 81, column: 5)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!373 = !DILocation(line: 0, scope: !362, inlinedAt: !374)
!374 = distinct !DILocation(line: 290, column: 3, scope: !327, inlinedAt: !305)
!375 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !374)
!376 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !377)
!377 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !374)
!378 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !374)
!379 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !374)
!380 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !374)
!381 = !DILocation(line: 0, scope: !371, inlinedAt: !374)
!382 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !374)
!383 = !DILocation(line: 0, scope: !338, inlinedAt: !377)
!384 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !377)
!385 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !377)
!386 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !377)
!387 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !377)
!388 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !377)
!389 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !377)
!390 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !374)
!391 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !374)
!392 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !374)
!393 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !374)
!394 = distinct !{!394, !375, !395, !396, !397}
!395 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !374)
!396 = !{!"llvm.loop.mustprogress"}
!397 = !{!"llvm.loop.unroll.disable"}
!398 = !DILocation(line: 294, column: 24, scope: !298, inlinedAt: !305)
!399 = !DILocation(line: 324, column: 6, scope: !111)
!400 = !DILocation(line: 328, column: 22, scope: !111)
!401 = !DILocalVariable(name: "mf", arg: 1, scope: !402, file: !122, line: 253, type: !405)
!402 = distinct !DISubprogram(name: "mf_position", scope: !122, file: !122, line: 253, type: !403, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !407)
!403 = !DISubroutineType(types: !404)
!404 = !{!37, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!407 = !{!401}
!408 = !DILocation(line: 0, scope: !402, inlinedAt: !409)
!409 = distinct !DILocation(line: 328, column: 22, scope: !111)
!410 = !DILocation(line: 337, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !280, file: !112, line: 337, column: 7)
!412 = !DILocation(line: 337, column: 7, scope: !280)
!413 = !DILocation(line: 255, column: 22, scope: !402, inlinedAt: !409)
!414 = !DILocation(line: 0, scope: !280)
!415 = !DILocation(line: 346, column: 5, scope: !416)
!416 = distinct !DILexicalBlock(scope: !280, file: !112, line: 345, column: 7)
!417 = !DILocation(line: 346, column: 28, scope: !416)
!418 = !DILocation(line: 346, column: 22, scope: !416)
!419 = !DILocation(line: 346, column: 39, scope: !416)
!420 = !DILocation(line: 347, column: 6, scope: !416)
!421 = !DILocation(line: 347, column: 9, scope: !416)
!422 = !{!288, !288, i64 0}
!423 = !DILocation(line: 347, column: 20, scope: !416)
!424 = !{!287, !288, i64 8}
!425 = !DILocalVariable(name: "rc", arg: 1, scope: !426, file: !26, line: 226, type: !429)
!426 = distinct !DISubprogram(name: "rc_pending", scope: !26, file: !26, line: 226, type: !427, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!427 = !DISubroutineType(types: !428)
!428 = !{!30, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!431 = !{!425}
!432 = !DILocation(line: 0, scope: !426, inlinedAt: !433)
!433 = distinct !DILocation(line: 347, column: 20, scope: !416)
!434 = !DILocation(line: 228, column: 28, scope: !426, inlinedAt: !433)
!435 = !DILocation(line: 347, column: 18, scope: !416)
!436 = !DILocation(line: 348, column: 7, scope: !416)
!437 = !DILocation(line: 345, column: 7, scope: !280)
!438 = !DILocation(line: 353, column: 27, scope: !439)
!439 = distinct !DILexicalBlock(scope: !280, file: !112, line: 353, column: 7)
!440 = !DILocation(line: 353, column: 20, scope: !439)
!441 = !DILocation(line: 353, column: 7, scope: !280)
!442 = !DILocation(line: 354, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !112, line: 354, column: 8)
!444 = distinct !DILexicalBlock(scope: !439, file: !112, line: 353, column: 39)
!445 = !DILocation(line: 354, column: 19, scope: !443)
!446 = !DILocation(line: 354, column: 8, scope: !444)
!447 = !DILocation(line: 357, column: 12, scope: !448)
!448 = distinct !DILexicalBlock(scope: !444, file: !112, line: 357, column: 8)
!449 = !DILocation(line: 357, column: 23, scope: !448)
!450 = !DILocation(line: 357, column: 8, scope: !444)
!451 = !DILocation(line: 369, column: 3, scope: !280)
!452 = !DILocation(line: 370, column: 3, scope: !280)
!453 = !DILocation(line: 372, column: 14, scope: !454)
!454 = distinct !DILexicalBlock(scope: !280, file: !112, line: 372, column: 7)
!455 = !{!286, !292, i64 2956}
!456 = !DILocation(line: 372, column: 7, scope: !280)
!457 = !DILocation(line: 373, column: 4, scope: !454)
!458 = !DILocation(line: 375, column: 4, scope: !454)
!459 = !DILocation(line: 378, column: 28, scope: !280)
!460 = !{!291, !291, i64 0}
!461 = !DILocation(line: 378, column: 34, scope: !280)
!462 = !DILocalVariable(name: "pcoder", arg: 1, scope: !463, file: !112, line: 237, type: !116)
!463 = distinct !DISubprogram(name: "encode_symbol", scope: !112, file: !112, line: 237, type: !464, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !116, !120, !37, !37, !37}
!466 = !{!462, !467, !468, !469, !470, !471, !472}
!467 = !DILocalVariable(name: "mf", arg: 2, scope: !463, file: !112, line: 237, type: !120)
!468 = !DILocalVariable(name: "back", arg: 3, scope: !463, file: !112, line: 238, type: !37)
!469 = !DILocalVariable(name: "len", arg: 4, scope: !463, file: !112, line: 238, type: !37)
!470 = !DILocalVariable(name: "position", arg: 5, scope: !463, file: !112, line: 238, type: !37)
!471 = !DILocalVariable(name: "coder", scope: !463, file: !112, line: 240, type: !175)
!472 = !DILocalVariable(name: "pos_state", scope: !463, file: !112, line: 241, type: !372)
!473 = !DILocation(line: 0, scope: !463, inlinedAt: !474)
!474 = distinct !DILocation(line: 378, column: 3, scope: !280)
!475 = !DILocation(line: 241, column: 47, scope: !463, inlinedAt: !474)
!476 = !{!286, !291, i64 2960}
!477 = !DILocation(line: 241, column: 38, scope: !463, inlinedAt: !474)
!478 = !DILocation(line: 243, column: 11, scope: !479, inlinedAt: !474)
!479 = distinct !DILexicalBlock(scope: !463, file: !112, line: 243, column: 6)
!480 = !DILocation(line: 0, scope: !479, inlinedAt: !474)
!481 = !{!286, !289, i64 736}
!482 = !DILocation(line: 0, scope: !338, inlinedAt: !483)
!483 = distinct !DILocation(line: 246, column: 3, scope: !484, inlinedAt: !474)
!484 = distinct !DILexicalBlock(scope: !479, file: !112, line: 243, column: 26)
!485 = !DILocation(line: 0, scope: !338, inlinedAt: !486)
!486 = distinct !DILocation(line: 251, column: 3, scope: !487, inlinedAt: !474)
!487 = distinct !DILexicalBlock(scope: !479, file: !112, line: 249, column: 9)
!488 = !DILocation(line: 243, column: 6, scope: !463, inlinedAt: !474)
!489 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !483)
!490 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !483)
!491 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !483)
!492 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !483)
!493 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !483)
!494 = !DILocalVariable(name: "pcoder", arg: 1, scope: !495, file: !112, line: 46, type: !116)
!495 = distinct !DISubprogram(name: "literal", scope: !112, file: !112, line: 46, type: !496, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !116, !120, !37}
!498 = !{!494, !499, !500, !501, !502, !504, !505}
!499 = !DILocalVariable(name: "mf", arg: 2, scope: !495, file: !112, line: 46, type: !120)
!500 = !DILocalVariable(name: "position", arg: 3, scope: !495, file: !112, line: 46, type: !37)
!501 = !DILocalVariable(name: "coder", scope: !495, file: !112, line: 48, type: !175)
!502 = !DILocalVariable(name: "cur_byte", scope: !495, file: !112, line: 50, type: !503)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!504 = !DILocalVariable(name: "subcoder", scope: !495, file: !112, line: 52, type: !53)
!505 = !DILocalVariable(name: "match_byte", scope: !506, file: !112, line: 64, type: !503)
!506 = distinct !DILexicalBlock(scope: !507, file: !112, line: 60, column: 9)
!507 = distinct !DILexicalBlock(scope: !495, file: !112, line: 56, column: 6)
!508 = !DILocation(line: 0, scope: !495, inlinedAt: !509)
!509 = distinct !DILocation(line: 248, column: 3, scope: !484, inlinedAt: !474)
!510 = !DILocation(line: 50, column: 31, scope: !495, inlinedAt: !509)
!511 = !DILocation(line: 51, column: 8, scope: !495, inlinedAt: !509)
!512 = !DILocation(line: 51, column: 23, scope: !495, inlinedAt: !509)
!513 = !DILocation(line: 51, column: 17, scope: !495, inlinedAt: !509)
!514 = !DILocation(line: 50, column: 27, scope: !495, inlinedAt: !509)
!515 = !DILocation(line: 52, column: 26, scope: !495, inlinedAt: !509)
!516 = !{!286, !291, i64 2968}
!517 = !{!286, !291, i64 2964}
!518 = !DILocation(line: 56, column: 6, scope: !507, inlinedAt: !509)
!519 = !DILocation(line: 56, column: 6, scope: !495, inlinedAt: !509)
!520 = !DILocation(line: 59, column: 39, scope: !521, inlinedAt: !509)
!521 = distinct !DILexicalBlock(scope: !507, file: !112, line: 56, column: 38)
!522 = !DILocation(line: 0, scope: !362, inlinedAt: !523)
!523 = distinct !DILocation(line: 59, column: 3, scope: !521, inlinedAt: !509)
!524 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !523)
!525 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !526)
!526 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !523)
!527 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !523)
!528 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !523)
!529 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !523)
!530 = !DILocation(line: 0, scope: !371, inlinedAt: !523)
!531 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !523)
!532 = !DILocation(line: 0, scope: !338, inlinedAt: !526)
!533 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !526)
!534 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !526)
!535 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !526)
!536 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !526)
!537 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !526)
!538 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !526)
!539 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !523)
!540 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !523)
!541 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !523)
!542 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !523)
!543 = distinct !{!543, !524, !544, !396, !397}
!544 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !523)
!545 = !DILocation(line: 65, column: 20, scope: !506, inlinedAt: !509)
!546 = !DILocation(line: 65, column: 35, scope: !506, inlinedAt: !509)
!547 = !DILocation(line: 66, column: 5, scope: !506, inlinedAt: !509)
!548 = !DILocation(line: 64, column: 30, scope: !506, inlinedAt: !509)
!549 = !DILocation(line: 0, scope: !506, inlinedAt: !509)
!550 = !DILocation(line: 67, column: 41, scope: !506, inlinedAt: !509)
!551 = !DILocation(line: 67, column: 53, scope: !506, inlinedAt: !509)
!552 = !DILocalVariable(name: "rc", arg: 1, scope: !553, file: !112, line: 24, type: !341)
!553 = distinct !DISubprogram(name: "literal_matched", scope: !112, file: !112, line: 24, type: !363, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !554)
!554 = !{!552, !555, !556, !557, !558, !559, !561, !562}
!555 = !DILocalVariable(name: "subcoder", arg: 2, scope: !553, file: !112, line: 24, type: !53)
!556 = !DILocalVariable(name: "match_byte", arg: 3, scope: !553, file: !112, line: 25, type: !37)
!557 = !DILocalVariable(name: "symbol", arg: 4, scope: !553, file: !112, line: 25, type: !37)
!558 = !DILocalVariable(name: "offset", scope: !553, file: !112, line: 27, type: !37)
!559 = !DILocalVariable(name: "match_bit", scope: !560, file: !112, line: 32, type: !372)
!560 = distinct !DILexicalBlock(scope: !553, file: !112, line: 30, column: 5)
!561 = !DILocalVariable(name: "subcoder_index", scope: !560, file: !112, line: 33, type: !372)
!562 = !DILocalVariable(name: "bit", scope: !560, file: !112, line: 35, type: !372)
!563 = !DILocation(line: 0, scope: !553, inlinedAt: !564)
!564 = distinct !DILocation(line: 67, column: 3, scope: !506, inlinedAt: !509)
!565 = !DILocation(line: 28, column: 9, scope: !553, inlinedAt: !564)
!566 = !DILocation(line: 30, column: 2, scope: !553, inlinedAt: !564)
!567 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !568)
!568 = distinct !DILocation(line: 36, column: 3, scope: !560, inlinedAt: !564)
!569 = !DILocation(line: 31, column: 14, scope: !560, inlinedAt: !564)
!570 = !DILocation(line: 32, column: 41, scope: !560, inlinedAt: !564)
!571 = !DILocation(line: 0, scope: !560, inlinedAt: !564)
!572 = !DILocation(line: 34, column: 36, scope: !560, inlinedAt: !564)
!573 = !DILocation(line: 34, column: 14, scope: !560, inlinedAt: !564)
!574 = !DILocation(line: 34, column: 26, scope: !560, inlinedAt: !564)
!575 = !DILocation(line: 35, column: 32, scope: !560, inlinedAt: !564)
!576 = !DILocation(line: 35, column: 38, scope: !560, inlinedAt: !564)
!577 = !DILocation(line: 36, column: 15, scope: !560, inlinedAt: !564)
!578 = !DILocation(line: 0, scope: !338, inlinedAt: !568)
!579 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !568)
!580 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !568)
!581 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !568)
!582 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !568)
!583 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !568)
!584 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !568)
!585 = !DILocation(line: 38, column: 10, scope: !560, inlinedAt: !564)
!586 = !DILocation(line: 39, column: 13, scope: !560, inlinedAt: !564)
!587 = !DILocation(line: 39, column: 10, scope: !560, inlinedAt: !564)
!588 = !DILocation(line: 41, column: 18, scope: !553, inlinedAt: !564)
!589 = !DILocation(line: 41, column: 2, scope: !560, inlinedAt: !564)
!590 = distinct !{!590, !566, !591, !396, !397}
!591 = !DILocation(line: 41, column: 39, scope: !553, inlinedAt: !564)
!592 = !DILocation(line: 70, column: 2, scope: !495, inlinedAt: !509)
!593 = !DILocation(line: 249, column: 2, scope: !484, inlinedAt: !474)
!594 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !486)
!595 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !486)
!596 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !486)
!597 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !486)
!598 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !486)
!599 = !DILocation(line: 254, column: 12, scope: !600, inlinedAt: !474)
!600 = distinct !DILexicalBlock(scope: !487, file: !112, line: 254, column: 7)
!601 = !DILocation(line: 0, scope: !600, inlinedAt: !474)
!602 = !DILocation(line: 0, scope: !338, inlinedAt: !603)
!603 = distinct !DILocation(line: 257, column: 4, scope: !604, inlinedAt: !474)
!604 = distinct !DILexicalBlock(scope: !600, file: !112, line: 254, column: 29)
!605 = !DILocation(line: 0, scope: !338, inlinedAt: !606)
!606 = distinct !DILocation(line: 261, column: 4, scope: !607, inlinedAt: !474)
!607 = distinct !DILexicalBlock(scope: !600, file: !112, line: 259, column: 10)
!608 = !DILocation(line: 254, column: 7, scope: !487, inlinedAt: !474)
!609 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !603)
!610 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !603)
!611 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !603)
!612 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !603)
!613 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !603)
!614 = !DILocalVariable(name: "pcoder", arg: 1, scope: !615, file: !112, line: 192, type: !116)
!615 = distinct !DISubprogram(name: "rep_match", scope: !112, file: !112, line: 192, type: !616, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !618)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !116, !372, !372, !372}
!618 = !{!614, !619, !620, !621, !622, !623}
!619 = !DILocalVariable(name: "pos_state", arg: 2, scope: !615, file: !112, line: 192, type: !372)
!620 = !DILocalVariable(name: "rep", arg: 3, scope: !615, file: !112, line: 193, type: !372)
!621 = !DILocalVariable(name: "len", arg: 4, scope: !615, file: !112, line: 193, type: !372)
!622 = !DILocalVariable(name: "coder", scope: !615, file: !112, line: 195, type: !175)
!623 = !DILocalVariable(name: "distance", scope: !624, file: !112, line: 202, type: !372)
!624 = distinct !DILexicalBlock(scope: !625, file: !112, line: 201, column: 9)
!625 = distinct !DILexicalBlock(scope: !615, file: !112, line: 196, column: 6)
!626 = !DILocation(line: 0, scope: !615, inlinedAt: !627)
!627 = distinct !DILocation(line: 258, column: 4, scope: !604, inlinedAt: !474)
!628 = !DILocation(line: 196, column: 10, scope: !625, inlinedAt: !627)
!629 = !DILocation(line: 196, column: 6, scope: !615, inlinedAt: !627)
!630 = !DILocation(line: 197, column: 45, scope: !631, inlinedAt: !627)
!631 = distinct !DILexicalBlock(scope: !625, file: !112, line: 196, column: 16)
!632 = !DILocation(line: 197, column: 23, scope: !631, inlinedAt: !627)
!633 = !DILocation(line: 0, scope: !338, inlinedAt: !634)
!634 = distinct !DILocation(line: 197, column: 3, scope: !631, inlinedAt: !627)
!635 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !634)
!636 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !634)
!637 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !634)
!638 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !634)
!639 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !634)
!640 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !634)
!641 = !DILocation(line: 199, column: 33, scope: !631, inlinedAt: !627)
!642 = !DILocation(line: 199, column: 6, scope: !631, inlinedAt: !627)
!643 = !DILocation(line: 200, column: 9, scope: !631, inlinedAt: !627)
!644 = !DILocation(line: 0, scope: !338, inlinedAt: !645)
!645 = distinct !DILocation(line: 198, column: 3, scope: !631, inlinedAt: !627)
!646 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !645)
!647 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !645)
!648 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !645)
!649 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !645)
!650 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !645)
!651 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !645)
!652 = !DILocation(line: 201, column: 2, scope: !631, inlinedAt: !627)
!653 = !DILocation(line: 202, column: 29, scope: !624, inlinedAt: !627)
!654 = !DILocation(line: 0, scope: !624, inlinedAt: !627)
!655 = !DILocation(line: 203, column: 45, scope: !624, inlinedAt: !627)
!656 = !DILocation(line: 203, column: 23, scope: !624, inlinedAt: !627)
!657 = !DILocation(line: 0, scope: !338, inlinedAt: !658)
!658 = distinct !DILocation(line: 203, column: 3, scope: !624, inlinedAt: !627)
!659 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !658)
!660 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !658)
!661 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !658)
!662 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !658)
!663 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !658)
!664 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !658)
!665 = !DILocation(line: 205, column: 11, scope: !666, inlinedAt: !627)
!666 = distinct !DILexicalBlock(scope: !624, file: !112, line: 205, column: 7)
!667 = !DILocation(line: 0, scope: !666, inlinedAt: !627)
!668 = !DILocation(line: 0, scope: !338, inlinedAt: !669)
!669 = distinct !DILocation(line: 206, column: 4, scope: !670, inlinedAt: !627)
!670 = distinct !DILexicalBlock(scope: !666, file: !112, line: 205, column: 17)
!671 = !DILocation(line: 0, scope: !338, inlinedAt: !672)
!672 = distinct !DILocation(line: 208, column: 4, scope: !673, inlinedAt: !627)
!673 = distinct !DILexicalBlock(scope: !666, file: !112, line: 207, column: 10)
!674 = !DILocation(line: 205, column: 7, scope: !624, inlinedAt: !627)
!675 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !669)
!676 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !669)
!677 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !669)
!678 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !669)
!679 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !669)
!680 = !DILocation(line: 207, column: 3, scope: !670, inlinedAt: !627)
!681 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !672)
!682 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !672)
!683 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !672)
!684 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !672)
!685 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !672)
!686 = !DILocation(line: 209, column: 46, scope: !673, inlinedAt: !627)
!687 = !DILocation(line: 209, column: 24, scope: !673, inlinedAt: !627)
!688 = !DILocation(line: 210, column: 10, scope: !673, inlinedAt: !627)
!689 = !DILocation(line: 0, scope: !338, inlinedAt: !690)
!690 = distinct !DILocation(line: 209, column: 4, scope: !673, inlinedAt: !627)
!691 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !690)
!692 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !690)
!693 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !690)
!694 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !690)
!695 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !690)
!696 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !690)
!697 = !DILocation(line: 212, column: 12, scope: !698, inlinedAt: !627)
!698 = distinct !DILexicalBlock(scope: !673, file: !112, line: 212, column: 8)
!699 = !DILocation(line: 212, column: 8, scope: !673, inlinedAt: !627)
!700 = !DILocation(line: 213, column: 22, scope: !698, inlinedAt: !627)
!701 = !DILocation(line: 213, column: 20, scope: !698, inlinedAt: !627)
!702 = !DILocation(line: 213, column: 5, scope: !698, inlinedAt: !627)
!703 = !DILocation(line: 215, column: 21, scope: !673, inlinedAt: !627)
!704 = !DILocation(line: 215, column: 19, scope: !673, inlinedAt: !627)
!705 = !DILocation(line: 218, column: 20, scope: !624, inlinedAt: !627)
!706 = !DILocation(line: 218, column: 18, scope: !624, inlinedAt: !627)
!707 = !DILocation(line: 219, column: 18, scope: !624, inlinedAt: !627)
!708 = !DILocation(line: 222, column: 10, scope: !709, inlinedAt: !627)
!709 = distinct !DILexicalBlock(scope: !615, file: !112, line: 222, column: 6)
!710 = !DILocation(line: 222, column: 6, scope: !615, inlinedAt: !627)
!711 = !DILocation(line: 226, column: 12, scope: !712, inlinedAt: !627)
!712 = distinct !DILexicalBlock(scope: !709, file: !112, line: 224, column: 9)
!713 = !DILocation(line: 225, column: 3, scope: !712, inlinedAt: !627)
!714 = !DILocation(line: 0, scope: !709, inlinedAt: !627)
!715 = !DILocation(line: 259, column: 3, scope: !604, inlinedAt: !474)
!716 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !606)
!717 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !606)
!718 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !606)
!719 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !606)
!720 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !606)
!721 = !DILocation(line: 262, column: 33, scope: !607, inlinedAt: !474)
!722 = !DILocation(line: 262, column: 4, scope: !607, inlinedAt: !474)
!723 = !DILocation(line: 267, column: 17, scope: !463, inlinedAt: !474)
!724 = !DILocation(line: 380, column: 12, scope: !280)
!725 = !DILocation(line: 381, column: 2, scope: !111)
!726 = distinct !{!726, !727, !725, !397}
!727 = !DILocation(line: 330, column: 2, scope: !111)
!728 = !DILocation(line: 383, column: 14, scope: !729)
!729 = distinct !DILexicalBlock(scope: !111, file: !112, line: 383, column: 6)
!730 = !{!286, !292, i64 2958}
!731 = !DILocation(line: 383, column: 6, scope: !111)
!732 = !DILocation(line: 384, column: 21, scope: !733)
!733 = distinct !DILexicalBlock(scope: !729, file: !112, line: 383, column: 26)
!734 = !DILocation(line: 388, column: 7, scope: !733)
!735 = !DILocalVariable(name: "pcoder", arg: 1, scope: !736, file: !112, line: 301, type: !116)
!736 = distinct !DISubprogram(name: "encode_eopm", scope: !112, file: !112, line: 301, type: !737, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !116, !37}
!739 = !{!735, !740, !741, !742}
!740 = !DILocalVariable(name: "position", arg: 2, scope: !736, file: !112, line: 301, type: !37)
!741 = !DILocalVariable(name: "coder", scope: !736, file: !112, line: 303, type: !175)
!742 = !DILocalVariable(name: "pos_state", scope: !736, file: !112, line: 304, type: !372)
!743 = !DILocation(line: 0, scope: !736, inlinedAt: !744)
!744 = distinct !DILocation(line: 389, column: 4, scope: !745)
!745 = distinct !DILexicalBlock(scope: !733, file: !112, line: 388, column: 7)
!746 = !DILocation(line: 304, column: 47, scope: !736, inlinedAt: !744)
!747 = !DILocation(line: 304, column: 38, scope: !736, inlinedAt: !744)
!748 = !DILocation(line: 305, column: 45, scope: !736, inlinedAt: !744)
!749 = !DILocation(line: 305, column: 22, scope: !736, inlinedAt: !744)
!750 = !DILocation(line: 0, scope: !338, inlinedAt: !751)
!751 = distinct !DILocation(line: 305, column: 2, scope: !736, inlinedAt: !744)
!752 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !751)
!753 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !751)
!754 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !751)
!755 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !751)
!756 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !751)
!757 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !751)
!758 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !751)
!759 = !DILocation(line: 306, column: 43, scope: !736, inlinedAt: !744)
!760 = !DILocation(line: 306, column: 22, scope: !736, inlinedAt: !744)
!761 = !DILocation(line: 0, scope: !338, inlinedAt: !762)
!762 = distinct !DILocation(line: 306, column: 2, scope: !736, inlinedAt: !744)
!763 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !762)
!764 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !762)
!765 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !762)
!766 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !762)
!767 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !762)
!768 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !762)
!769 = !DILocation(line: 307, column: 2, scope: !736, inlinedAt: !744)
!770 = !DILocation(line: 389, column: 4, scope: !745)
!771 = !DILocation(line: 118, column: 2, scope: !772, inlinedAt: !779)
!772 = distinct !DILexicalBlock(scope: !773, file: !26, line: 118, column: 2)
!773 = distinct !DISubprogram(name: "rc_flush", scope: !26, file: !26, line: 116, type: !774, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !776)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !341}
!776 = !{!777, !778}
!777 = !DILocalVariable(name: "rc", arg: 1, scope: !773, file: !26, line: 116, type: !341)
!778 = !DILocalVariable(name: "i", scope: !772, file: !26, line: 118, type: !44)
!779 = distinct !DILocation(line: 392, column: 3, scope: !733)
!780 = !DILocation(line: 0, scope: !772, inlinedAt: !779)
!781 = !DILocation(line: 119, column: 24, scope: !782, inlinedAt: !779)
!782 = distinct !DILexicalBlock(scope: !772, file: !26, line: 118, column: 2)
!783 = !DILocation(line: 119, column: 3, scope: !782, inlinedAt: !779)
!784 = !DILocation(line: 119, column: 28, scope: !782, inlinedAt: !779)
!785 = !DILocation(line: 118, column: 28, scope: !782, inlinedAt: !779)
!786 = !DILocation(line: 118, column: 23, scope: !782, inlinedAt: !779)
!787 = distinct !{!787, !771, !788, !396, !397}
!788 = !DILocation(line: 119, column: 30, scope: !772, inlinedAt: !779)
!789 = !DILocation(line: 398, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !733, file: !112, line: 398, column: 7)
!791 = !DILocation(line: 398, column: 7, scope: !733)
!792 = !DILocation(line: 405, column: 20, scope: !111)
!793 = !DILocation(line: 407, column: 2, scope: !111)
!794 = !DILocation(line: 408, column: 1, scope: !111)
!795 = distinct !DISubprogram(name: "rc_encode", scope: !26, file: !26, line: 150, type: !796, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{!194, !341, !126, !165, !44}
!798 = !{!799, !800, !801, !802, !803, !807, !809}
!799 = !DILocalVariable(name: "rc", arg: 1, scope: !795, file: !26, line: 150, type: !341)
!800 = !DILocalVariable(name: "out", arg: 2, scope: !795, file: !26, line: 151, type: !126)
!801 = !DILocalVariable(name: "out_pos", arg: 3, scope: !795, file: !26, line: 151, type: !165)
!802 = !DILocalVariable(name: "out_size", arg: 4, scope: !795, file: !26, line: 151, type: !44)
!803 = !DILocalVariable(name: "prob", scope: !804, file: !26, line: 167, type: !54)
!804 = distinct !DILexicalBlock(scope: !805, file: !26, line: 166, column: 18)
!805 = distinct !DILexicalBlock(scope: !806, file: !26, line: 165, column: 33)
!806 = distinct !DILexicalBlock(scope: !795, file: !26, line: 155, column: 30)
!807 = !DILocalVariable(name: "prob", scope: !808, file: !26, line: 176, type: !54)
!808 = distinct !DILexicalBlock(scope: !805, file: !26, line: 175, column: 18)
!809 = !DILocalVariable(name: "bound", scope: !808, file: !26, line: 177, type: !372)
!810 = !DILocation(line: 0, scope: !795)
!811 = !DILocation(line: 155, column: 13, scope: !795)
!812 = !{!287, !288, i64 32}
!813 = !DILocation(line: 155, column: 23, scope: !795)
!814 = !DILocation(line: 155, column: 17, scope: !795)
!815 = !DILocation(line: 155, column: 2, scope: !795)
!816 = !DILocation(line: 157, column: 11, scope: !817)
!817 = distinct !DILexicalBlock(scope: !806, file: !26, line: 157, column: 7)
!818 = !{!287, !291, i64 16}
!819 = !DILocation(line: 157, column: 17, scope: !817)
!820 = !DILocation(line: 157, column: 7, scope: !806)
!821 = !DILocalVariable(name: "rc", arg: 1, scope: !822, file: !26, line: 124, type: !341)
!822 = distinct !DISubprogram(name: "rc_shift_low", scope: !26, file: !26, line: 124, type: !796, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !823)
!823 = !{!821, !824, !825, !826}
!824 = !DILocalVariable(name: "out", arg: 2, scope: !822, file: !26, line: 125, type: !126)
!825 = !DILocalVariable(name: "out_pos", arg: 3, scope: !822, file: !26, line: 125, type: !165)
!826 = !DILocalVariable(name: "out_size", arg: 4, scope: !822, file: !26, line: 125, type: !44)
!827 = !DILocation(line: 0, scope: !822, inlinedAt: !828)
!828 = distinct !DILocation(line: 158, column: 8, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !26, line: 158, column: 8)
!830 = distinct !DILexicalBlock(scope: !817, file: !26, line: 157, column: 33)
!831 = !DILocation(line: 127, column: 21, scope: !832, inlinedAt: !828)
!832 = distinct !DILexicalBlock(scope: !822, file: !26, line: 127, column: 6)
!833 = !{!287, !288, i64 0}
!834 = !DILocation(line: 128, column: 4, scope: !832, inlinedAt: !828)
!835 = !DILocation(line: 142, column: 2, scope: !822, inlinedAt: !828)
!836 = !DILocation(line: 130, column: 8, scope: !837, inlinedAt: !828)
!837 = distinct !DILexicalBlock(scope: !838, file: !26, line: 130, column: 8)
!838 = distinct !DILexicalBlock(scope: !839, file: !26, line: 129, column: 6)
!839 = distinct !DILexicalBlock(scope: !832, file: !26, line: 128, column: 39)
!840 = !DILocation(line: 130, column: 17, scope: !837, inlinedAt: !828)
!841 = !DILocation(line: 130, column: 8, scope: !838, inlinedAt: !828)
!842 = !DILocation(line: 133, column: 24, scope: !838, inlinedAt: !828)
!843 = !{!287, !289, i64 20}
!844 = !DILocation(line: 133, column: 46, scope: !838, inlinedAt: !828)
!845 = !DILocation(line: 133, column: 50, scope: !838, inlinedAt: !828)
!846 = !DILocation(line: 133, column: 32, scope: !838, inlinedAt: !828)
!847 = !DILocation(line: 133, column: 30, scope: !838, inlinedAt: !828)
!848 = !DILocation(line: 133, column: 4, scope: !838, inlinedAt: !828)
!849 = !DILocation(line: 133, column: 18, scope: !838, inlinedAt: !828)
!850 = !DILocation(line: 134, column: 4, scope: !838, inlinedAt: !828)
!851 = !DILocation(line: 135, column: 14, scope: !838, inlinedAt: !828)
!852 = !DILocation(line: 137, column: 12, scope: !839, inlinedAt: !828)
!853 = !DILocation(line: 137, column: 29, scope: !839, inlinedAt: !828)
!854 = !DILocation(line: 137, column: 3, scope: !838, inlinedAt: !828)
!855 = distinct !{!855, !856, !857, !396, !397}
!856 = !DILocation(line: 129, column: 3, scope: !839, inlinedAt: !828)
!857 = !DILocation(line: 137, column: 33, scope: !839, inlinedAt: !828)
!858 = !DILocation(line: 139, column: 20, scope: !839, inlinedAt: !828)
!859 = !DILocation(line: 139, column: 24, scope: !839, inlinedAt: !828)
!860 = !DILocation(line: 139, column: 15, scope: !839, inlinedAt: !828)
!861 = !DILocation(line: 139, column: 13, scope: !839, inlinedAt: !828)
!862 = !DILocation(line: 161, column: 14, scope: !830)
!863 = !DILocation(line: 165, column: 27, scope: !806)
!864 = !DILocation(line: 140, column: 2, scope: !839, inlinedAt: !828)
!865 = !DILocation(line: 143, column: 17, scope: !822, inlinedAt: !828)
!866 = !DILocation(line: 143, column: 35, scope: !822, inlinedAt: !828)
!867 = !DILocation(line: 143, column: 10, scope: !822, inlinedAt: !828)
!868 = !DILocation(line: 162, column: 3, scope: !830)
!869 = !DILocation(line: 165, column: 11, scope: !806)
!870 = !DILocation(line: 165, column: 3, scope: !806)
!871 = !DILocation(line: 167, column: 24, scope: !804)
!872 = !DILocation(line: 167, column: 23, scope: !804)
!873 = !{!294, !294, i64 0}
!874 = !DILocation(line: 0, scope: !804)
!875 = !DILocation(line: 168, column: 27, scope: !804)
!876 = !DILocation(line: 169, column: 8, scope: !804)
!877 = !DILocation(line: 169, column: 6, scope: !804)
!878 = !DILocation(line: 168, column: 14, scope: !804)
!879 = !DILocation(line: 170, column: 32, scope: !804)
!880 = !DILocation(line: 170, column: 40, scope: !804)
!881 = !DILocation(line: 170, column: 9, scope: !804)
!882 = !DILocation(line: 171, column: 24, scope: !804)
!883 = !DILocation(line: 176, column: 24, scope: !808)
!884 = !DILocation(line: 176, column: 23, scope: !808)
!885 = !DILocation(line: 0, scope: !808)
!886 = !DILocation(line: 177, column: 27, scope: !808)
!887 = !DILocation(line: 178, column: 6, scope: !808)
!888 = !DILocation(line: 177, column: 32, scope: !808)
!889 = !DILocation(line: 179, column: 15, scope: !808)
!890 = !DILocation(line: 179, column: 12, scope: !808)
!891 = !DILocation(line: 180, column: 14, scope: !808)
!892 = !DILocation(line: 181, column: 17, scope: !808)
!893 = !DILocation(line: 181, column: 9, scope: !808)
!894 = !DILocation(line: 182, column: 24, scope: !808)
!895 = !DILocation(line: 187, column: 14, scope: !805)
!896 = !DILocation(line: 188, column: 4, scope: !805)
!897 = !DILocation(line: 191, column: 14, scope: !805)
!898 = !DILocation(line: 192, column: 15, scope: !805)
!899 = !DILocation(line: 192, column: 12, scope: !805)
!900 = !DILocation(line: 193, column: 4, scope: !805)
!901 = !DILocation(line: 197, column: 14, scope: !805)
!902 = !DILocation(line: 127, column: 21, scope: !832, inlinedAt: !903)
!903 = distinct !DILocation(line: 201, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !26, line: 201, column: 9)
!905 = distinct !DILexicalBlock(scope: !805, file: !26, line: 200, column: 7)
!906 = !DILocation(line: 200, column: 4, scope: !805)
!907 = !DILocation(line: 0, scope: !822, inlinedAt: !903)
!908 = !DILocation(line: 128, column: 4, scope: !832, inlinedAt: !903)
!909 = !DILocation(line: 142, column: 2, scope: !822, inlinedAt: !903)
!910 = !DILocation(line: 130, column: 8, scope: !837, inlinedAt: !903)
!911 = !DILocation(line: 130, column: 17, scope: !837, inlinedAt: !903)
!912 = !DILocation(line: 130, column: 8, scope: !838, inlinedAt: !903)
!913 = !DILocation(line: 133, column: 24, scope: !838, inlinedAt: !903)
!914 = !DILocation(line: 133, column: 46, scope: !838, inlinedAt: !903)
!915 = !DILocation(line: 133, column: 50, scope: !838, inlinedAt: !903)
!916 = !DILocation(line: 133, column: 32, scope: !838, inlinedAt: !903)
!917 = !DILocation(line: 133, column: 30, scope: !838, inlinedAt: !903)
!918 = !DILocation(line: 133, column: 4, scope: !838, inlinedAt: !903)
!919 = !DILocation(line: 133, column: 18, scope: !838, inlinedAt: !903)
!920 = !DILocation(line: 134, column: 4, scope: !838, inlinedAt: !903)
!921 = !DILocation(line: 135, column: 14, scope: !838, inlinedAt: !903)
!922 = !DILocation(line: 137, column: 12, scope: !839, inlinedAt: !903)
!923 = !DILocation(line: 137, column: 29, scope: !839, inlinedAt: !903)
!924 = !DILocation(line: 137, column: 3, scope: !838, inlinedAt: !903)
!925 = distinct !{!925, !926, !927, !396, !397}
!926 = !DILocation(line: 129, column: 3, scope: !839, inlinedAt: !903)
!927 = !DILocation(line: 137, column: 33, scope: !839, inlinedAt: !903)
!928 = !DILocation(line: 139, column: 20, scope: !839, inlinedAt: !903)
!929 = !DILocation(line: 139, column: 24, scope: !839, inlinedAt: !903)
!930 = !DILocation(line: 139, column: 15, scope: !839, inlinedAt: !903)
!931 = !DILocation(line: 139, column: 13, scope: !839, inlinedAt: !903)
!932 = !DILocation(line: 203, column: 13, scope: !805)
!933 = !DILocation(line: 140, column: 2, scope: !839, inlinedAt: !903)
!934 = !DILocation(line: 143, column: 17, scope: !822, inlinedAt: !903)
!935 = !DILocation(line: 143, column: 35, scope: !822, inlinedAt: !903)
!936 = !DILocation(line: 143, column: 10, scope: !822, inlinedAt: !903)
!937 = !DILocation(line: 203, column: 29, scope: !805)
!938 = !DILocation(line: 203, column: 23, scope: !805)
!939 = !DILocation(line: 203, column: 4, scope: !905)
!940 = distinct !{!940, !906, !941, !396, !397}
!941 = !DILocation(line: 203, column: 34, scope: !805)
!942 = !DILocalVariable(name: "rc", arg: 1, scope: !943, file: !26, line: 55, type: !341)
!943 = distinct !DISubprogram(name: "rc_reset", scope: !26, file: !26, line: 55, type: !774, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !944)
!944 = !{!942}
!945 = !DILocation(line: 0, scope: !943, inlinedAt: !946)
!946 = distinct !DILocation(line: 207, column: 4, scope: !805)
!947 = !DILocation(line: 57, column: 10, scope: !943, inlinedAt: !946)
!948 = !DILocation(line: 58, column: 17, scope: !943, inlinedAt: !946)
!949 = !DILocation(line: 59, column: 12, scope: !943, inlinedAt: !946)
!950 = !DILocation(line: 60, column: 12, scope: !943, inlinedAt: !946)
!951 = !DILocation(line: 61, column: 12, scope: !943, inlinedAt: !946)
!952 = !DILocation(line: 208, column: 4, scope: !805)
!953 = !DILocation(line: 215, column: 3, scope: !806)
!954 = distinct !{!954, !815, !955, !396, !397}
!955 = !DILocation(line: 216, column: 2, scope: !795)
!956 = !DILocation(line: 219, column: 10, scope: !795)
!957 = !DILocation(line: 221, column: 2, scope: !795)
!958 = !DILocation(line: 222, column: 1, scope: !795)
!959 = !DISubprogram(name: "lzma_lzma_optimum_fast", scope: !177, file: !177, line: 140, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !962, !119, !963, !963}
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !116)
!963 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!964 = !{}
!965 = !DISubprogram(name: "lzma_lzma_optimum_normal", scope: !177, file: !177, line: 144, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !962, !119, !963, !963, !37}
!968 = distinct !DISubprogram(name: "lzma_lzma_encoder_reset", scope: !112, file: !112, line: 484, type: !969, scopeLine: 485, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1004)
!969 = !DISubroutineType(types: !970)
!970 = !{!115, !116, !971}
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !81, line: 399, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 185, size: 896, elements: !975)
!975 = !{!976, !977, !979, !980, !981, !982, !983, !985, !986, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !999, !1000, !1001, !1002, !1003}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !974, file: !81, line: 217, baseType: !37, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !974, file: !81, line: 240, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !974, file: !81, line: 254, baseType: !37, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !974, file: !81, line: 281, baseType: !37, size: 32, offset: 160)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !974, file: !81, line: 293, baseType: !37, size: 32, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !974, file: !81, line: 316, baseType: !37, size: 32, offset: 224)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !974, file: !81, line: 322, baseType: !984, size: 32, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !81, line: 155, baseType: !80)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !974, file: !81, line: 342, baseType: !37, size: 32, offset: 288)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !974, file: !81, line: 345, baseType: !987, size: 32, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !81, line: 111, baseType: !85)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !974, file: !81, line: 375, baseType: !37, size: 32, offset: 352)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !974, file: !81, line: 384, baseType: !37, size: 32, offset: 384)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !974, file: !81, line: 385, baseType: !37, size: 32, offset: 416)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !974, file: !81, line: 386, baseType: !37, size: 32, offset: 448)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !974, file: !81, line: 387, baseType: !37, size: 32, offset: 480)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !974, file: !81, line: 388, baseType: !37, size: 32, offset: 512)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !974, file: !81, line: 389, baseType: !37, size: 32, offset: 544)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !974, file: !81, line: 390, baseType: !37, size: 32, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !974, file: !81, line: 391, baseType: !37, size: 32, offset: 608)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !974, file: !81, line: 392, baseType: !998, size: 32, offset: 640)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !92)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !974, file: !81, line: 393, baseType: !998, size: 32, offset: 672)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !974, file: !81, line: 394, baseType: !998, size: 32, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !974, file: !81, line: 395, baseType: !998, size: 32, offset: 736)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !974, file: !81, line: 396, baseType: !103, size: 64, offset: 768)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !974, file: !81, line: 397, baseType: !103, size: 64, offset: 832)
!1004 = !{!1005, !1006, !1007, !1008, !1010, !1012, !1016, !1018, !1020, !1023}
!1005 = !DILocalVariable(name: "pcoder", arg: 1, scope: !968, file: !112, line: 484, type: !116)
!1006 = !DILocalVariable(name: "options", arg: 2, scope: !968, file: !112, line: 484, type: !971)
!1007 = !DILocalVariable(name: "coder", scope: !968, file: !112, line: 486, type: !175)
!1008 = !DILocalVariable(name: "i", scope: !1009, file: !112, line: 499, type: !44)
!1009 = distinct !DILexicalBlock(scope: !968, file: !112, line: 499, column: 2)
!1010 = !DILocalVariable(name: "i", scope: !1011, file: !112, line: 505, type: !44)
!1011 = distinct !DILexicalBlock(scope: !968, file: !112, line: 505, column: 2)
!1012 = !DILocalVariable(name: "j", scope: !1013, file: !112, line: 506, type: !44)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !112, line: 506, column: 3)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !112, line: 505, column: 38)
!1015 = distinct !DILexicalBlock(scope: !1011, file: !112, line: 505, column: 2)
!1016 = !DILocalVariable(name: "i", scope: !1017, file: !112, line: 517, type: !44)
!1017 = distinct !DILexicalBlock(scope: !968, file: !112, line: 517, column: 2)
!1018 = !DILocalVariable(name: "i", scope: !1019, file: !112, line: 521, type: !44)
!1019 = distinct !DILexicalBlock(scope: !968, file: !112, line: 521, column: 2)
!1020 = !DILocalVariable(name: "bt_i", scope: !1021, file: !112, line: 522, type: !37)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !112, line: 522, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !112, line: 521, column: 2)
!1023 = !DILocalVariable(name: "bt_i", scope: !1024, file: !112, line: 524, type: !37)
!1024 = distinct !DILexicalBlock(scope: !968, file: !112, line: 524, column: 2)
!1025 = !DILocation(line: 0, scope: !968)
!1026 = !DILocalVariable(name: "options", arg: 1, scope: !1027, file: !112, line: 430, type: !971)
!1027 = distinct !DISubprogram(name: "is_options_valid", scope: !112, file: !112, line: 430, type: !1028, scopeLine: 431, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{!194, !971}
!1030 = !{!1026}
!1031 = !DILocation(line: 0, scope: !1027, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 487, column: 7, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !968, file: !112, line: 487, column: 6)
!1034 = !DILocalVariable(name: "options", arg: 1, scope: !1035, file: !66, line: 33, type: !971)
!1035 = distinct !DISubprogram(name: "is_lclppb_valid", scope: !66, file: !66, line: 33, type: !1028, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1036)
!1036 = !{!1034}
!1037 = !DILocation(line: 0, scope: !1035, inlinedAt: !1038)
!1038 = distinct !DILocation(line: 434, column: 9, scope: !1027, inlinedAt: !1032)
!1039 = !DILocation(line: 35, column: 18, scope: !1035, inlinedAt: !1038)
!1040 = !{!1041, !291, i64 20}
!1041 = !{!"", !291, i64 0, !310, i64 8, !291, i64 16, !291, i64 20, !291, i64 24, !291, i64 28, !289, i64 32, !291, i64 36, !289, i64 40, !291, i64 44, !291, i64 48, !291, i64 52, !291, i64 56, !291, i64 60, !291, i64 64, !291, i64 68, !291, i64 72, !291, i64 76, !289, i64 80, !289, i64 84, !289, i64 88, !289, i64 92, !310, i64 96, !310, i64 104}
!1042 = !DILocation(line: 35, column: 21, scope: !1035, inlinedAt: !1038)
!1043 = !DILocation(line: 35, column: 38, scope: !1035, inlinedAt: !1038)
!1044 = !DILocation(line: 35, column: 50, scope: !1035, inlinedAt: !1038)
!1045 = !{!1041, !291, i64 24}
!1046 = !DILocation(line: 35, column: 53, scope: !1035, inlinedAt: !1038)
!1047 = !DILocation(line: 36, column: 4, scope: !1035, inlinedAt: !1038)
!1048 = !DILocation(line: 37, column: 16, scope: !1035, inlinedAt: !1038)
!1049 = !{!1041, !291, i64 28}
!1050 = !DILocation(line: 37, column: 19, scope: !1035, inlinedAt: !1038)
!1051 = !DILocation(line: 435, column: 4, scope: !1027, inlinedAt: !1032)
!1052 = !DILocation(line: 435, column: 16, scope: !1027, inlinedAt: !1032)
!1053 = !{!1041, !291, i64 36}
!1054 = !DILocation(line: 436, column: 4, scope: !1027, inlinedAt: !1032)
!1055 = !DILocation(line: 437, column: 17, scope: !1027, inlinedAt: !1032)
!1056 = !{!1041, !289, i64 32}
!1057 = !DILocation(line: 438, column: 5, scope: !1027, inlinedAt: !1032)
!1058 = !DILocation(line: 487, column: 6, scope: !968)
!1059 = !DILocation(line: 490, column: 40, scope: !968)
!1060 = !DILocation(line: 490, column: 9, scope: !968)
!1061 = !DILocation(line: 490, column: 18, scope: !968)
!1062 = !DILocation(line: 491, column: 9, scope: !968)
!1063 = !DILocation(line: 491, column: 30, scope: !968)
!1064 = !DILocation(line: 492, column: 48, scope: !968)
!1065 = !DILocation(line: 492, column: 9, scope: !968)
!1066 = !DILocation(line: 492, column: 26, scope: !968)
!1067 = !DILocation(line: 0, scope: !943, inlinedAt: !1068)
!1068 = distinct !DILocation(line: 495, column: 2, scope: !968)
!1069 = !DILocation(line: 57, column: 10, scope: !943, inlinedAt: !1068)
!1070 = !DILocation(line: 58, column: 6, scope: !943, inlinedAt: !1068)
!1071 = !DILocation(line: 58, column: 17, scope: !943, inlinedAt: !1068)
!1072 = !DILocation(line: 59, column: 6, scope: !943, inlinedAt: !1068)
!1073 = !DILocation(line: 59, column: 12, scope: !943, inlinedAt: !1068)
!1074 = !DILocation(line: 60, column: 6, scope: !943, inlinedAt: !1068)
!1075 = !DILocation(line: 60, column: 12, scope: !943, inlinedAt: !1068)
!1076 = !DILocation(line: 61, column: 6, scope: !943, inlinedAt: !1068)
!1077 = !DILocation(line: 61, column: 12, scope: !943, inlinedAt: !1068)
!1078 = !DILocation(line: 498, column: 9, scope: !968)
!1079 = !DILocation(line: 0, scope: !1009)
!1080 = !DILocation(line: 502, column: 22, scope: !968)
!1081 = !DILocation(line: 498, column: 15, scope: !968)
!1082 = !DILocation(line: 502, column: 40, scope: !968)
!1083 = !DILocation(line: 502, column: 53, scope: !968)
!1084 = !DILocalVariable(name: "probs", arg: 1, scope: !1085, file: !66, line: 129, type: !1088)
!1085 = distinct !DISubprogram(name: "literal_init", scope: !66, file: !66, line: 129, type: !1086, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1091)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1088, !37, !37}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 12288, elements: !1090)
!1090 = !{!204}
!1091 = !{!1084, !1092, !1093, !1094, !1095, !1097}
!1092 = !DILocalVariable(name: "lc", arg: 2, scope: !1085, file: !66, line: 130, type: !37)
!1093 = !DILocalVariable(name: "lp", arg: 3, scope: !1085, file: !66, line: 130, type: !37)
!1094 = !DILocalVariable(name: "coders", scope: !1085, file: !66, line: 134, type: !372)
!1095 = !DILocalVariable(name: "i", scope: !1096, file: !66, line: 136, type: !37)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !66, line: 136, column: 2)
!1097 = !DILocalVariable(name: "j", scope: !1098, file: !66, line: 137, type: !37)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !66, line: 137, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !66, line: 136, column: 2)
!1100 = !DILocation(line: 0, scope: !1085, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 502, column: 2, scope: !968)
!1102 = !DILocation(line: 134, column: 36, scope: !1085, inlinedAt: !1101)
!1103 = !DILocation(line: 0, scope: !1096, inlinedAt: !1101)
!1104 = !DILocation(line: 136, column: 2, scope: !1096, inlinedAt: !1101)
!1105 = !DILocation(line: 0, scope: !1098, inlinedAt: !1101)
!1106 = !DILocation(line: 137, column: 3, scope: !1098, inlinedAt: !1101)
!1107 = !DILocation(line: 136, column: 35, scope: !1099, inlinedAt: !1101)
!1108 = !DILocation(line: 136, column: 25, scope: !1099, inlinedAt: !1101)
!1109 = distinct !{!1109, !1104, !1110, !396, !397}
!1110 = !DILocation(line: 138, column: 4, scope: !1096, inlinedAt: !1101)
!1111 = !DILocation(line: 0, scope: !1011)
!1112 = !DILocation(line: 505, column: 2, scope: !1011)
!1113 = !DILocation(line: 138, column: 4, scope: !1114, inlinedAt: !1101)
!1114 = distinct !DILexicalBlock(scope: !1098, file: !66, line: 137, column: 3)
!1115 = !DILocation(line: 137, column: 48, scope: !1114, inlinedAt: !1101)
!1116 = !DILocation(line: 137, column: 26, scope: !1114, inlinedAt: !1101)
!1117 = distinct !{!1117, !1106, !1118, !396, !397}
!1118 = !DILocation(line: 138, column: 4, scope: !1098, inlinedAt: !1101)
!1119 = !DILocation(line: 0, scope: !1013)
!1120 = !DILocation(line: 506, column: 3, scope: !1013)
!1121 = !DILocation(line: 511, column: 3, scope: !1014)
!1122 = !DILocation(line: 512, column: 3, scope: !1014)
!1123 = !DILocation(line: 513, column: 3, scope: !1014)
!1124 = !DILocation(line: 514, column: 3, scope: !1014)
!1125 = !DILocation(line: 505, column: 33, scope: !1015)
!1126 = !DILocation(line: 505, column: 23, scope: !1015)
!1127 = distinct !{!1127, !1112, !1128, !396, !397}
!1128 = !DILocation(line: 515, column: 2, scope: !1011)
!1129 = !DILocation(line: 507, column: 4, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !112, line: 506, column: 49)
!1131 = distinct !DILexicalBlock(scope: !1013, file: !112, line: 506, column: 3)
!1132 = !DILocation(line: 508, column: 4, scope: !1130)
!1133 = !DILocation(line: 506, column: 44, scope: !1131)
!1134 = !DILocation(line: 506, column: 24, scope: !1131)
!1135 = distinct !{!1135, !1120, !1136, !396, !397}
!1136 = !DILocation(line: 509, column: 3, scope: !1013)
!1137 = !DILocation(line: 0, scope: !1017)
!1138 = !DILocation(line: 518, column: 3, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1017, file: !112, line: 517, column: 2)
!1140 = !DILocation(line: 517, column: 63, scope: !1139)
!1141 = !DILocation(line: 517, column: 23, scope: !1139)
!1142 = !DILocation(line: 517, column: 2, scope: !1017)
!1143 = distinct !{!1143, !1142, !1144, !396, !397}
!1144 = !DILocation(line: 518, column: 3, scope: !1017)
!1145 = !DILocation(line: 0, scope: !1019)
!1146 = !DILocation(line: 0, scope: !1021)
!1147 = !DILocation(line: 522, column: 3, scope: !1021)
!1148 = !DILocation(line: 521, column: 44, scope: !1022)
!1149 = !DILocation(line: 521, column: 23, scope: !1022)
!1150 = !DILocation(line: 521, column: 2, scope: !1019)
!1151 = distinct !{!1151, !1150, !1152, !396, !397}
!1152 = !DILocation(line: 522, column: 3, scope: !1019)
!1153 = !DILocation(line: 522, column: 3, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1021, file: !112, line: 522, column: 3)
!1155 = distinct !{!1155, !1147, !1147, !396, !397}
!1156 = !DILocation(line: 527, column: 31, scope: !968)
!1157 = !DILocation(line: 528, column: 19, scope: !968)
!1158 = !DILocation(line: 528, column: 7, scope: !968)
!1159 = !DILocation(line: 528, column: 30, scope: !968)
!1160 = !DILocalVariable(name: "lencoder", arg: 1, scope: !1161, file: !112, line: 461, type: !1164)
!1161 = distinct !DISubprogram(name: "length_encoder_reset", scope: !112, file: !112, line: 461, type: !1162, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1166)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1164, !372, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1166 = !{!1160, !1167, !1168, !1169, !1171, !1175, !1177, !1179}
!1167 = !DILocalVariable(name: "num_pos_states", arg: 2, scope: !1161, file: !112, line: 462, type: !372)
!1168 = !DILocalVariable(name: "fast_mode", arg: 3, scope: !1161, file: !112, line: 462, type: !1165)
!1169 = !DILocalVariable(name: "pos_state", scope: !1170, file: !112, line: 467, type: !44)
!1170 = distinct !DILexicalBlock(scope: !1161, file: !112, line: 467, column: 2)
!1171 = !DILocalVariable(name: "bt_i", scope: !1172, file: !112, line: 468, type: !37)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !112, line: 468, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !112, line: 467, column: 70)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !112, line: 467, column: 2)
!1175 = !DILocalVariable(name: "bt_i", scope: !1176, file: !112, line: 469, type: !37)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !112, line: 469, column: 3)
!1177 = !DILocalVariable(name: "bt_i", scope: !1178, file: !112, line: 472, type: !37)
!1178 = distinct !DILexicalBlock(scope: !1161, file: !112, line: 472, column: 2)
!1179 = !DILocalVariable(name: "pos_state", scope: !1180, file: !112, line: 475, type: !44)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !112, line: 475, column: 3)
!1181 = distinct !DILexicalBlock(scope: !1161, file: !112, line: 474, column: 6)
!1182 = !DILocation(line: 0, scope: !1161, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 527, column: 2, scope: !968)
!1184 = !DILocation(line: 464, column: 2, scope: !1161, inlinedAt: !1183)
!1185 = !{!293, !294, i64 0}
!1186 = !DILocation(line: 465, column: 2, scope: !1161, inlinedAt: !1183)
!1187 = !{!293, !294, i64 2}
!1188 = !DILocation(line: 0, scope: !1170, inlinedAt: !1183)
!1189 = !DILocation(line: 0, scope: !1172, inlinedAt: !1183)
!1190 = !DILocation(line: 468, column: 3, scope: !1172, inlinedAt: !1183)
!1191 = !DILocation(line: 468, column: 3, scope: !1192, inlinedAt: !1183)
!1192 = distinct !DILexicalBlock(scope: !1172, file: !112, line: 468, column: 3)
!1193 = distinct !{!1193, !1190, !1190, !396, !397}
!1194 = !DILocation(line: 467, column: 57, scope: !1174, inlinedAt: !1183)
!1195 = !DILocation(line: 467, column: 39, scope: !1174, inlinedAt: !1183)
!1196 = !DILocation(line: 467, column: 2, scope: !1170, inlinedAt: !1183)
!1197 = distinct !{!1197, !1196, !1198, !396, !397}
!1198 = !DILocation(line: 470, column: 2, scope: !1170, inlinedAt: !1183)
!1199 = !DILocation(line: 0, scope: !1176, inlinedAt: !1183)
!1200 = !DILocation(line: 469, column: 3, scope: !1201, inlinedAt: !1183)
!1201 = distinct !DILexicalBlock(scope: !1176, file: !112, line: 469, column: 3)
!1202 = !DILocation(line: 469, column: 3, scope: !1176, inlinedAt: !1183)
!1203 = distinct !{!1203, !1202, !1202, !396, !397}
!1204 = !DILocation(line: 0, scope: !1180, inlinedAt: !1183)
!1205 = !DILocation(line: 474, column: 6, scope: !1161, inlinedAt: !1183)
!1206 = !DILocation(line: 0, scope: !1178, inlinedAt: !1183)
!1207 = !DILocation(line: 472, column: 2, scope: !1208, inlinedAt: !1183)
!1208 = distinct !DILexicalBlock(scope: !1178, file: !112, line: 472, column: 2)
!1209 = !DILocation(line: 472, column: 2, scope: !1178, inlinedAt: !1183)
!1210 = distinct !{!1210, !1209, !1209, !396, !397}
!1211 = !DILocation(line: 477, column: 35, scope: !1212, inlinedAt: !1183)
!1212 = distinct !DILexicalBlock(scope: !1180, file: !112, line: 475, column: 3)
!1213 = !DILocation(line: 477, column: 4, scope: !1212, inlinedAt: !1183)
!1214 = !DILocation(line: 476, column: 5, scope: !1212, inlinedAt: !1183)
!1215 = !DILocation(line: 475, column: 40, scope: !1212, inlinedAt: !1183)
!1216 = !DILocation(line: 475, column: 3, scope: !1180, inlinedAt: !1183)
!1217 = distinct !{!1217, !1216, !1218, !396, !397}
!1218 = !DILocation(line: 477, column: 44, scope: !1180, inlinedAt: !1183)
!1219 = !DILocation(line: 531, column: 19, scope: !968)
!1220 = !DILocation(line: 531, column: 30, scope: !968)
!1221 = !DILocation(line: 531, column: 7, scope: !968)
!1222 = !DILocation(line: 530, column: 31, scope: !968)
!1223 = !DILocation(line: 0, scope: !1161, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 530, column: 2, scope: !968)
!1225 = !DILocation(line: 464, column: 2, scope: !1161, inlinedAt: !1224)
!1226 = !DILocation(line: 465, column: 2, scope: !1161, inlinedAt: !1224)
!1227 = !DILocation(line: 0, scope: !1170, inlinedAt: !1224)
!1228 = !DILocation(line: 0, scope: !1172, inlinedAt: !1224)
!1229 = !DILocation(line: 468, column: 3, scope: !1172, inlinedAt: !1224)
!1230 = !DILocation(line: 468, column: 3, scope: !1192, inlinedAt: !1224)
!1231 = distinct !{!1231, !1229, !1229, !396, !397}
!1232 = !DILocation(line: 467, column: 57, scope: !1174, inlinedAt: !1224)
!1233 = !DILocation(line: 467, column: 39, scope: !1174, inlinedAt: !1224)
!1234 = !DILocation(line: 467, column: 2, scope: !1170, inlinedAt: !1224)
!1235 = distinct !{!1235, !1234, !1236, !396, !397}
!1236 = !DILocation(line: 470, column: 2, scope: !1170, inlinedAt: !1224)
!1237 = !DILocation(line: 0, scope: !1176, inlinedAt: !1224)
!1238 = !DILocation(line: 469, column: 3, scope: !1201, inlinedAt: !1224)
!1239 = !DILocation(line: 469, column: 3, scope: !1176, inlinedAt: !1224)
!1240 = distinct !{!1240, !1239, !1239, !396, !397}
!1241 = !DILocation(line: 0, scope: !1180, inlinedAt: !1224)
!1242 = !DILocation(line: 474, column: 6, scope: !1161, inlinedAt: !1224)
!1243 = !DILocation(line: 0, scope: !1178, inlinedAt: !1224)
!1244 = !DILocation(line: 472, column: 2, scope: !1208, inlinedAt: !1224)
!1245 = !DILocation(line: 472, column: 2, scope: !1178, inlinedAt: !1224)
!1246 = distinct !{!1246, !1245, !1245, !396, !397}
!1247 = !DILocation(line: 477, column: 35, scope: !1212, inlinedAt: !1224)
!1248 = !DILocation(line: 477, column: 4, scope: !1212, inlinedAt: !1224)
!1249 = !DILocation(line: 476, column: 5, scope: !1212, inlinedAt: !1224)
!1250 = !DILocation(line: 475, column: 40, scope: !1212, inlinedAt: !1224)
!1251 = !DILocation(line: 475, column: 3, scope: !1180, inlinedAt: !1224)
!1252 = distinct !{!1252, !1251, !1253, !396, !397}
!1253 = !DILocation(line: 477, column: 44, scope: !1180, inlinedAt: !1224)
!1254 = !DILocation(line: 546, column: 9, scope: !968)
!1255 = !DILocation(line: 546, column: 27, scope: !968)
!1256 = !{!286, !291, i64 69268}
!1257 = !DILocation(line: 547, column: 9, scope: !968)
!1258 = !DILocation(line: 547, column: 27, scope: !968)
!1259 = !{!286, !291, i64 69336}
!1260 = !DILocation(line: 549, column: 9, scope: !968)
!1261 = !DILocation(line: 549, column: 24, scope: !968)
!1262 = !{!286, !291, i64 69340}
!1263 = !DILocation(line: 550, column: 9, scope: !968)
!1264 = !DILocation(line: 550, column: 28, scope: !968)
!1265 = !{!286, !291, i64 69344}
!1266 = !DILocation(line: 552, column: 2, scope: !968)
!1267 = !DILocation(line: 0, scope: !1024)
!1268 = !DILocation(line: 524, column: 2, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1024, file: !112, line: 524, column: 2)
!1270 = !DILocation(line: 524, column: 2, scope: !1024)
!1271 = distinct !{!1271, !1270, !1270, !396, !397}
!1272 = !DILocation(line: 553, column: 1, scope: !968)
!1273 = distinct !DISubprogram(name: "lzma_lzma_encoder_create", scope: !112, file: !112, line: 557, type: !1274, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1303)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!115, !1276, !1277, !971, !1290}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !1280)
!1280 = !{!1281, !1285, !1289}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1279, file: !4, line: 376, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!103, !103, !44, !44}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1279, file: !4, line: 390, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !103, !103}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !1279, file: !4, line: 401, baseType: !103, size: 64, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !122, line: 161, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 129, size: 512, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "before_size", scope: !1292, file: !122, line: 132, baseType: !44, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !1292, file: !122, line: 135, baseType: !44, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "after_size", scope: !1292, file: !122, line: 139, baseType: !44, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !1292, file: !122, line: 144, baseType: !44, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !1292, file: !122, line: 148, baseType: !44, size: 64, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "match_finder", scope: !1292, file: !122, line: 151, baseType: !987, size: 32, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1292, file: !122, line: 154, baseType: !37, size: 32, offset: 352)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !1292, file: !122, line: 157, baseType: !978, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !1292, file: !122, line: 159, baseType: !37, size: 32, offset: 448)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309}
!1304 = !DILocalVariable(name: "coder_ptr", arg: 1, scope: !1273, file: !112, line: 557, type: !1276)
!1305 = !DILocalVariable(name: "allocator", arg: 2, scope: !1273, file: !112, line: 557, type: !1277)
!1306 = !DILocalVariable(name: "options", arg: 3, scope: !1273, file: !112, line: 558, type: !971)
!1307 = !DILocalVariable(name: "lz_options", arg: 4, scope: !1273, file: !112, line: 558, type: !1290)
!1308 = !DILocalVariable(name: "coder", scope: !1273, file: !112, line: 567, type: !175)
!1309 = !DILocalVariable(name: "log_size", scope: !1310, file: !112, line: 583, type: !37)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !112, line: 578, column: 26)
!1311 = distinct !DILexicalBlock(scope: !1273, file: !112, line: 573, column: 25)
!1312 = !DILocation(line: 0, scope: !1273)
!1313 = !DILocation(line: 561, column: 6, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1273, file: !112, line: 561, column: 6)
!1315 = !DILocation(line: 561, column: 17, scope: !1314)
!1316 = !DILocation(line: 561, column: 6, scope: !1273)
!1317 = !DILocation(line: 562, column: 16, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1314, file: !112, line: 561, column: 26)
!1319 = !DILocation(line: 562, column: 14, scope: !1318)
!1320 = !DILocation(line: 563, column: 18, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !112, line: 563, column: 7)
!1322 = !DILocation(line: 563, column: 7, scope: !1318)
!1323 = !DILocation(line: 567, column: 31, scope: !1273)
!1324 = !DILocation(line: 573, column: 19, scope: !1273)
!1325 = !DILocation(line: 573, column: 2, scope: !1273)
!1326 = !DILocation(line: 575, column: 11, scope: !1311)
!1327 = !DILocation(line: 575, column: 21, scope: !1311)
!1328 = !DILocation(line: 576, column: 4, scope: !1311)
!1329 = !DILocation(line: 579, column: 11, scope: !1310)
!1330 = !DILocation(line: 579, column: 21, scope: !1310)
!1331 = !DILocation(line: 0, scope: !1310)
!1332 = !{!1041, !291, i64 0}
!1333 = !DILocation(line: 584, column: 4, scope: !1310)
!1334 = !DILocation(line: 584, column: 24, scope: !1310)
!1335 = !DILocation(line: 584, column: 37, scope: !1310)
!1336 = !DILocation(line: 585, column: 5, scope: !1310)
!1337 = distinct !{!1337, !1333, !1338, !396, !397}
!1338 = !DILocation(line: 585, column: 7, scope: !1310)
!1339 = !DILocation(line: 587, column: 38, scope: !1310)
!1340 = !DILocation(line: 587, column: 11, scope: !1310)
!1341 = !DILocation(line: 587, column: 27, scope: !1310)
!1342 = !{!286, !291, i64 69264}
!1343 = !DILocation(line: 591, column: 16, scope: !1310)
!1344 = !DILocation(line: 591, column: 29, scope: !1310)
!1345 = !DILocation(line: 590, column: 29, scope: !1310)
!1346 = !DILocation(line: 591, column: 5, scope: !1310)
!1347 = !{!286, !291, i64 47620}
!1348 = !DILocation(line: 592, column: 27, scope: !1310)
!1349 = !DILocation(line: 593, column: 5, scope: !1310)
!1350 = !{!286, !291, i64 66124}
!1351 = !DILocation(line: 605, column: 35, scope: !1273)
!1352 = !{!1041, !310, i64 8}
!1353 = !DILocation(line: 605, column: 47, scope: !1273)
!1354 = !{!1041, !291, i64 16}
!1355 = !DILocation(line: 606, column: 4, scope: !1273)
!1356 = !DILocation(line: 606, column: 33, scope: !1273)
!1357 = !DILocation(line: 605, column: 9, scope: !1273)
!1358 = !DILocation(line: 605, column: 24, scope: !1273)
!1359 = !DILocation(line: 607, column: 9, scope: !1273)
!1360 = !DILocation(line: 607, column: 20, scope: !1273)
!1361 = !DILocalVariable(name: "lz_options", arg: 1, scope: !1362, file: !112, line: 443, type: !1290)
!1362 = distinct !DISubprogram(name: "set_lz_options", scope: !112, file: !112, line: 443, type: !1363, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !1290, !971}
!1365 = !{!1361, !1366}
!1366 = !DILocalVariable(name: "options", arg: 2, scope: !1362, file: !112, line: 443, type: !971)
!1367 = !DILocation(line: 0, scope: !1362, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 609, column: 2, scope: !1273)
!1369 = !DILocation(line: 447, column: 26, scope: !1362, inlinedAt: !1368)
!1370 = !{!1371, !288, i64 0}
!1371 = !{!"", !288, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !289, i64 40, !291, i64 44, !310, i64 48, !291, i64 56}
!1372 = !DILocation(line: 448, column: 35, scope: !1362, inlinedAt: !1368)
!1373 = !DILocation(line: 448, column: 26, scope: !1362, inlinedAt: !1368)
!1374 = !DILocation(line: 448, column: 14, scope: !1362, inlinedAt: !1368)
!1375 = !DILocation(line: 448, column: 24, scope: !1362, inlinedAt: !1368)
!1376 = !{!1371, !288, i64 8}
!1377 = !DILocation(line: 449, column: 14, scope: !1362, inlinedAt: !1368)
!1378 = !DILocation(line: 449, column: 25, scope: !1362, inlinedAt: !1368)
!1379 = !{!1371, !288, i64 16}
!1380 = !DILocation(line: 450, column: 14, scope: !1362, inlinedAt: !1368)
!1381 = !DILocation(line: 450, column: 28, scope: !1362, inlinedAt: !1368)
!1382 = !{!1371, !288, i64 24}
!1383 = !DILocation(line: 451, column: 34, scope: !1362, inlinedAt: !1368)
!1384 = !DILocation(line: 451, column: 25, scope: !1362, inlinedAt: !1368)
!1385 = !DILocation(line: 451, column: 14, scope: !1362, inlinedAt: !1368)
!1386 = !DILocation(line: 451, column: 23, scope: !1362, inlinedAt: !1368)
!1387 = !{!1371, !288, i64 32}
!1388 = !DILocation(line: 452, column: 38, scope: !1362, inlinedAt: !1368)
!1389 = !{!1041, !289, i64 40}
!1390 = !DILocation(line: 452, column: 14, scope: !1362, inlinedAt: !1368)
!1391 = !DILocation(line: 452, column: 27, scope: !1362, inlinedAt: !1368)
!1392 = !{!1371, !289, i64 40}
!1393 = !DILocation(line: 453, column: 31, scope: !1362, inlinedAt: !1368)
!1394 = !{!1041, !291, i64 44}
!1395 = !DILocation(line: 453, column: 14, scope: !1362, inlinedAt: !1368)
!1396 = !DILocation(line: 453, column: 20, scope: !1362, inlinedAt: !1368)
!1397 = !{!1371, !291, i64 44}
!1398 = !DILocation(line: 454, column: 14, scope: !1362, inlinedAt: !1368)
!1399 = !DILocation(line: 454, column: 26, scope: !1362, inlinedAt: !1368)
!1400 = !{!1371, !310, i64 48}
!1401 = !DILocation(line: 455, column: 14, scope: !1362, inlinedAt: !1368)
!1402 = !DILocation(line: 455, column: 31, scope: !1362, inlinedAt: !1368)
!1403 = !{!1371, !291, i64 56}
!1404 = !DILocation(line: 611, column: 9, scope: !1273)
!1405 = !DILocation(line: 611, column: 2, scope: !1273)
!1406 = !DILocation(line: 612, column: 1, scope: !1273)
!1407 = !DISubprogram(name: "lzma_alloc", scope: !118, file: !118, line: 211, type: !1408, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!103, !44, !1277}
!1410 = distinct !DISubprogram(name: "lzma_lzma_encoder_init", scope: !112, file: !112, line: 626, type: !1411, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1469)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!115, !1413, !1277, !1459}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !118, line: 80, baseType: !1415)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !118, line: 124, size: 512, elements: !1416)
!1416 = !{!1417, !1418, !1421, !1424, !1430, !1435, !1442, !1447}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !1415, file: !118, line: 126, baseType: !116, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1415, file: !118, line: 130, baseType: !1419, size: 64, offset: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !1420, line: 63, baseType: !30)
!1420 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1415, file: !118, line: 136, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !1423, line: 90, baseType: !34)
!1423 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1415, file: !118, line: 139, baseType: !1425, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !118, line: 94, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!115, !116, !1277, !1429, !164, !44, !163, !164, !44, !160}
!1429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !978)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1415, file: !118, line: 144, baseType: !1431, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !118, line: 102, baseType: !1432)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{null, !116, !1277}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !1415, file: !118, line: 148, baseType: !1436, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !96, line: 55, baseType: !95)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !1415, file: !118, line: 152, baseType: !1443, size: 64, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!115, !116, !1446, !1446, !30}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1415, file: !118, line: 157, baseType: !1448, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!115, !116, !1277, !1451, !1451}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !1454, line: 65, baseType: !1455)
!1454 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1454, line: 43, size: 128, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1455, file: !1454, line: 54, baseType: !1419, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1455, file: !1454, line: 63, baseType: !103, size: 64, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !118, line: 82, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !118, line: 109, size: 192, elements: !1463)
!1463 = !{!1464, !1465, !1468}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1462, file: !118, line: 112, baseType: !1419, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1462, file: !118, line: 116, baseType: !1466, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !118, line: 86, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1462, file: !118, line: 119, baseType: !103, size: 64, offset: 128)
!1469 = !{!1470, !1471, !1472}
!1470 = !DILocalVariable(name: "next", arg: 1, scope: !1410, file: !112, line: 626, type: !1413)
!1471 = !DILocalVariable(name: "allocator", arg: 2, scope: !1410, file: !112, line: 626, type: !1277)
!1472 = !DILocalVariable(name: "filters", arg: 3, scope: !1410, file: !112, line: 627, type: !1459)
!1473 = !DILocation(line: 0, scope: !1410)
!1474 = !DILocation(line: 629, column: 9, scope: !1410)
!1475 = !DILocation(line: 629, column: 2, scope: !1410)
!1476 = !DISubprogram(name: "lzma_lz_encoder_init", scope: !122, file: !122, line: 298, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!115, !1413, !1277, !1459, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!115, !1482, !1277, !1496, !1290}
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_encoder", file: !122, line: 208, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 192, size: 256, elements: !1485)
!1485 = !{!1486, !1487, !1491, !1492}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !1484, file: !122, line: 194, baseType: !116, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1484, file: !122, line: 197, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!115, !962, !119, !163, !164, !44}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1484, file: !122, line: 202, baseType: !1432, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "options_update", scope: !1484, file: !122, line: 205, baseType: !1493, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!115, !116, !1451}
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1498 = distinct !DISubprogram(name: "lzma_encoder_init", scope: !112, file: !112, line: 616, type: !1480, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1499)
!1499 = !{!1500, !1501, !1502, !1503}
!1500 = !DILocalVariable(name: "lz", arg: 1, scope: !1498, file: !112, line: 616, type: !1482)
!1501 = !DILocalVariable(name: "allocator", arg: 2, scope: !1498, file: !112, line: 616, type: !1277)
!1502 = !DILocalVariable(name: "options", arg: 3, scope: !1498, file: !112, line: 617, type: !1496)
!1503 = !DILocalVariable(name: "lz_options", arg: 4, scope: !1498, file: !112, line: 617, type: !1290)
!1504 = !DILocation(line: 0, scope: !1498)
!1505 = !DILocation(line: 619, column: 6, scope: !1498)
!1506 = !DILocation(line: 619, column: 11, scope: !1498)
!1507 = !{!1508, !310, i64 8}
!1508 = !{!"", !310, i64 0, !310, i64 8, !310, i64 16, !310, i64 24}
!1509 = !DILocation(line: 620, column: 9, scope: !1498)
!1510 = !DILocation(line: 620, column: 2, scope: !1498)
!1511 = distinct !DISubprogram(name: "lzma_lzma_encoder_memusage", scope: !112, file: !112, line: 635, type: !1512, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!30, !1496}
!1514 = !{!1515, !1516, !1517}
!1515 = !DILocalVariable(name: "options", arg: 1, scope: !1511, file: !112, line: 635, type: !1496)
!1516 = !DILocalVariable(name: "lz_options", scope: !1511, file: !112, line: 640, type: !1291)
!1517 = !DILocalVariable(name: "lz_memusage", scope: !1511, file: !112, line: 643, type: !1518)
!1518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!1519 = !DILocation(line: 0, scope: !1511)
!1520 = !DILocation(line: 0, scope: !1027, inlinedAt: !1521)
!1521 = distinct !DILocation(line: 637, column: 7, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1511, file: !112, line: 637, column: 6)
!1523 = !DILocation(line: 0, scope: !1035, inlinedAt: !1524)
!1524 = distinct !DILocation(line: 434, column: 9, scope: !1027, inlinedAt: !1521)
!1525 = !DILocation(line: 35, column: 18, scope: !1035, inlinedAt: !1524)
!1526 = !DILocation(line: 35, column: 21, scope: !1035, inlinedAt: !1524)
!1527 = !DILocation(line: 35, column: 38, scope: !1035, inlinedAt: !1524)
!1528 = !DILocation(line: 35, column: 50, scope: !1035, inlinedAt: !1524)
!1529 = !DILocation(line: 35, column: 53, scope: !1035, inlinedAt: !1524)
!1530 = !DILocation(line: 36, column: 4, scope: !1035, inlinedAt: !1524)
!1531 = !DILocation(line: 37, column: 16, scope: !1035, inlinedAt: !1524)
!1532 = !DILocation(line: 37, column: 19, scope: !1035, inlinedAt: !1524)
!1533 = !DILocation(line: 435, column: 4, scope: !1027, inlinedAt: !1521)
!1534 = !DILocation(line: 435, column: 16, scope: !1027, inlinedAt: !1521)
!1535 = !DILocation(line: 436, column: 4, scope: !1027, inlinedAt: !1521)
!1536 = !DILocation(line: 437, column: 17, scope: !1027, inlinedAt: !1521)
!1537 = !DILocation(line: 438, column: 5, scope: !1027, inlinedAt: !1521)
!1538 = !DILocation(line: 637, column: 6, scope: !1511)
!1539 = !DILocation(line: 640, column: 2, scope: !1511)
!1540 = !DILocation(line: 640, column: 18, scope: !1511)
!1541 = !DILocation(line: 0, scope: !1362, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 641, column: 2, scope: !1511)
!1543 = !DILocation(line: 447, column: 26, scope: !1362, inlinedAt: !1542)
!1544 = !DILocation(line: 448, column: 35, scope: !1362, inlinedAt: !1542)
!1545 = !DILocation(line: 448, column: 26, scope: !1362, inlinedAt: !1542)
!1546 = !DILocation(line: 448, column: 14, scope: !1362, inlinedAt: !1542)
!1547 = !DILocation(line: 448, column: 24, scope: !1362, inlinedAt: !1542)
!1548 = !DILocation(line: 449, column: 14, scope: !1362, inlinedAt: !1542)
!1549 = !DILocation(line: 449, column: 25, scope: !1362, inlinedAt: !1542)
!1550 = !DILocation(line: 450, column: 14, scope: !1362, inlinedAt: !1542)
!1551 = !DILocation(line: 450, column: 28, scope: !1362, inlinedAt: !1542)
!1552 = !DILocation(line: 451, column: 25, scope: !1362, inlinedAt: !1542)
!1553 = !DILocation(line: 451, column: 14, scope: !1362, inlinedAt: !1542)
!1554 = !DILocation(line: 451, column: 23, scope: !1362, inlinedAt: !1542)
!1555 = !DILocation(line: 452, column: 38, scope: !1362, inlinedAt: !1542)
!1556 = !DILocation(line: 452, column: 14, scope: !1362, inlinedAt: !1542)
!1557 = !DILocation(line: 452, column: 27, scope: !1362, inlinedAt: !1542)
!1558 = !DILocation(line: 453, column: 31, scope: !1362, inlinedAt: !1542)
!1559 = !DILocation(line: 453, column: 14, scope: !1362, inlinedAt: !1542)
!1560 = !DILocation(line: 453, column: 20, scope: !1362, inlinedAt: !1542)
!1561 = !DILocation(line: 454, column: 37, scope: !1362, inlinedAt: !1542)
!1562 = !DILocation(line: 454, column: 14, scope: !1362, inlinedAt: !1542)
!1563 = !DILocation(line: 454, column: 26, scope: !1362, inlinedAt: !1542)
!1564 = !DILocation(line: 455, column: 42, scope: !1362, inlinedAt: !1542)
!1565 = !DILocation(line: 455, column: 14, scope: !1362, inlinedAt: !1542)
!1566 = !DILocation(line: 455, column: 31, scope: !1362, inlinedAt: !1542)
!1567 = !DILocation(line: 643, column: 31, scope: !1511)
!1568 = !DILocation(line: 644, column: 18, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1511, file: !112, line: 644, column: 6)
!1570 = !DILocation(line: 644, column: 6, scope: !1511)
!1571 = !DILocation(line: 648, column: 1, scope: !1511)
!1572 = !DISubprogram(name: "lzma_lz_encoder_memusage", scope: !122, file: !122, line: 306, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !964)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!30, !1575}
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1577 = distinct !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !112, file: !112, line: 652, type: !1578, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!194, !971, !126}
!1580 = !{!1581, !1582}
!1581 = !DILocalVariable(name: "options", arg: 1, scope: !1577, file: !112, line: 652, type: !971)
!1582 = !DILocalVariable(name: "byte", arg: 2, scope: !1577, file: !112, line: 652, type: !126)
!1583 = !DILocation(line: 0, scope: !1577)
!1584 = !DILocation(line: 0, scope: !1035, inlinedAt: !1585)
!1585 = distinct !DILocation(line: 654, column: 7, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1577, file: !112, line: 654, column: 6)
!1587 = !DILocation(line: 35, column: 18, scope: !1035, inlinedAt: !1585)
!1588 = !DILocation(line: 35, column: 21, scope: !1035, inlinedAt: !1585)
!1589 = !DILocation(line: 35, column: 38, scope: !1035, inlinedAt: !1585)
!1590 = !DILocation(line: 35, column: 50, scope: !1035, inlinedAt: !1585)
!1591 = !DILocation(line: 35, column: 53, scope: !1035, inlinedAt: !1585)
!1592 = !DILocation(line: 36, column: 4, scope: !1035, inlinedAt: !1585)
!1593 = !DILocation(line: 37, column: 16, scope: !1035, inlinedAt: !1585)
!1594 = !DILocation(line: 37, column: 19, scope: !1035, inlinedAt: !1585)
!1595 = !DILocation(line: 654, column: 6, scope: !1577)
!1596 = !DILocation(line: 657, column: 23, scope: !1577)
!1597 = !DILocation(line: 657, column: 27, scope: !1577)
!1598 = !DILocation(line: 657, column: 42, scope: !1577)
!1599 = !DILocation(line: 657, column: 46, scope: !1577)
!1600 = !DILocation(line: 657, column: 10, scope: !1577)
!1601 = !DILocation(line: 657, column: 8, scope: !1577)
!1602 = !DILocation(line: 660, column: 2, scope: !1577)
!1603 = !DILocation(line: 661, column: 1, scope: !1577)
!1604 = distinct !DISubprogram(name: "lzma_lzma_props_encode", scope: !112, file: !112, line: 666, type: !1605, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1607)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!115, !1496, !126}
!1607 = !{!1608, !1609, !1610}
!1608 = !DILocalVariable(name: "options", arg: 1, scope: !1604, file: !112, line: 666, type: !1496)
!1609 = !DILocalVariable(name: "out", arg: 2, scope: !1604, file: !112, line: 666, type: !126)
!1610 = !DILocalVariable(name: "opt", scope: !1604, file: !112, line: 668, type: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!1612 = !DILocation(line: 0, scope: !1604)
!1613 = !DILocation(line: 0, scope: !1577, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 670, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !112, line: 670, column: 6)
!1616 = !DILocation(line: 0, scope: !1035, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 654, column: 7, scope: !1586, inlinedAt: !1614)
!1618 = !DILocation(line: 35, column: 18, scope: !1035, inlinedAt: !1617)
!1619 = !DILocation(line: 35, column: 21, scope: !1035, inlinedAt: !1617)
!1620 = !DILocation(line: 35, column: 38, scope: !1035, inlinedAt: !1617)
!1621 = !DILocation(line: 35, column: 50, scope: !1035, inlinedAt: !1617)
!1622 = !DILocation(line: 35, column: 53, scope: !1035, inlinedAt: !1617)
!1623 = !DILocation(line: 36, column: 4, scope: !1035, inlinedAt: !1617)
!1624 = !DILocation(line: 37, column: 16, scope: !1035, inlinedAt: !1617)
!1625 = !DILocation(line: 37, column: 19, scope: !1035, inlinedAt: !1617)
!1626 = !DILocation(line: 654, column: 6, scope: !1577, inlinedAt: !1614)
!1627 = !DILocation(line: 657, column: 23, scope: !1577, inlinedAt: !1614)
!1628 = !DILocation(line: 657, column: 27, scope: !1577, inlinedAt: !1614)
!1629 = !DILocation(line: 657, column: 42, scope: !1577, inlinedAt: !1614)
!1630 = !DILocation(line: 657, column: 46, scope: !1577, inlinedAt: !1614)
!1631 = !DILocation(line: 657, column: 10, scope: !1577, inlinedAt: !1614)
!1632 = !DILocation(line: 657, column: 8, scope: !1577, inlinedAt: !1614)
!1633 = !DILocation(line: 673, column: 26, scope: !1604)
!1634 = !DILocation(line: 673, column: 36, scope: !1604)
!1635 = !DILocalVariable(name: "buf", arg: 1, scope: !1636, file: !1637, line: 351, type: !126)
!1636 = distinct !DISubprogram(name: "unaligned_write32le", scope: !1637, file: !1637, line: 351, type: !1638, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1640)
!1637 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !126, !37}
!1640 = !{!1635, !1641}
!1641 = !DILocalVariable(name: "num", arg: 2, scope: !1636, file: !1637, line: 351, type: !37)
!1642 = !DILocation(line: 0, scope: !1636, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 673, column: 2, scope: !1604)
!1644 = !DILocation(line: 353, column: 11, scope: !1636, inlinedAt: !1643)
!1645 = !DILocation(line: 353, column: 9, scope: !1636, inlinedAt: !1643)
!1646 = !DILocation(line: 354, column: 15, scope: !1636, inlinedAt: !1643)
!1647 = !DILocation(line: 354, column: 11, scope: !1636, inlinedAt: !1643)
!1648 = !DILocation(line: 354, column: 2, scope: !1636, inlinedAt: !1643)
!1649 = !DILocation(line: 354, column: 9, scope: !1636, inlinedAt: !1643)
!1650 = !DILocation(line: 355, column: 15, scope: !1636, inlinedAt: !1643)
!1651 = !DILocation(line: 355, column: 11, scope: !1636, inlinedAt: !1643)
!1652 = !DILocation(line: 355, column: 2, scope: !1636, inlinedAt: !1643)
!1653 = !DILocation(line: 355, column: 9, scope: !1636, inlinedAt: !1643)
!1654 = !DILocation(line: 356, column: 15, scope: !1636, inlinedAt: !1643)
!1655 = !DILocation(line: 356, column: 11, scope: !1636, inlinedAt: !1643)
!1656 = !DILocation(line: 356, column: 2, scope: !1636, inlinedAt: !1643)
!1657 = !DILocation(line: 356, column: 9, scope: !1636, inlinedAt: !1643)
!1658 = !DILocation(line: 675, column: 2, scope: !1604)
!1659 = !DILocation(line: 676, column: 1, scope: !1604)
!1660 = distinct !DISubprogram(name: "lzma_mode_is_supported", scope: !112, file: !112, line: 681, type: !1661, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1664)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1663, !984}
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !42)
!1664 = !{!1665}
!1665 = !DILocalVariable(name: "mode", arg: 1, scope: !1660, file: !112, line: 681, type: !984)
!1666 = !DILocation(line: 0, scope: !1660)
!1667 = !DILocation(line: 683, column: 14, scope: !1660)
!1668 = !DILocation(line: 683, column: 32, scope: !1660)
!1669 = !DILocation(line: 683, column: 40, scope: !1660)
!1670 = !DILocation(line: 683, column: 2, scope: !1660)
!1671 = distinct !DISubprogram(name: "match", scope: !112, file: !112, line: 144, type: !616, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1672)
!1672 = !{!1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1683, !1684}
!1673 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1671, file: !112, line: 144, type: !116)
!1674 = !DILocalVariable(name: "pos_state", arg: 2, scope: !1671, file: !112, line: 144, type: !372)
!1675 = !DILocalVariable(name: "distance", arg: 3, scope: !1671, file: !112, line: 145, type: !372)
!1676 = !DILocalVariable(name: "len", arg: 4, scope: !1671, file: !112, line: 145, type: !372)
!1677 = !DILocalVariable(name: "coder", scope: !1671, file: !112, line: 147, type: !175)
!1678 = !DILocalVariable(name: "pos_slot", scope: !1671, file: !112, line: 153, type: !372)
!1679 = !DILocalVariable(name: "len_to_pos_state", scope: !1671, file: !112, line: 154, type: !372)
!1680 = !DILocalVariable(name: "footer_bits", scope: !1681, file: !112, line: 159, type: !372)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !112, line: 158, column: 41)
!1682 = distinct !DILexicalBlock(scope: !1671, file: !112, line: 158, column: 6)
!1683 = !DILocalVariable(name: "base", scope: !1681, file: !112, line: 160, type: !372)
!1684 = !DILocalVariable(name: "pos_reduced", scope: !1681, file: !112, line: 161, type: !372)
!1685 = !DILocation(line: 0, scope: !1671)
!1686 = !DILocation(line: 148, column: 2, scope: !1671)
!1687 = !DILocation(line: 150, column: 29, scope: !1671)
!1688 = !DILocation(line: 151, column: 11, scope: !1671)
!1689 = !DILocation(line: 150, column: 2, scope: !1671)
!1690 = !DILocalVariable(name: "pos", arg: 1, scope: !1691, file: !1692, line: 108, type: !37)
!1691 = distinct !DISubprogram(name: "get_pos_slot", scope: !1692, file: !1692, line: 108, type: !1693, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1695)
!1692 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/fastpos.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!37, !37}
!1695 = !{!1690}
!1696 = !DILocation(line: 0, scope: !1691, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 153, column: 28, scope: !1671)
!1698 = !DILocation(line: 112, column: 10, scope: !1699, inlinedAt: !1697)
!1699 = distinct !DILexicalBlock(scope: !1691, file: !1692, line: 112, column: 6)
!1700 = !DILocation(line: 112, column: 6, scope: !1691, inlinedAt: !1697)
!1701 = !DILocation(line: 113, column: 10, scope: !1699, inlinedAt: !1697)
!1702 = !DILocation(line: 113, column: 3, scope: !1699, inlinedAt: !1697)
!1703 = !DILocation(line: 115, column: 10, scope: !1704, inlinedAt: !1697)
!1704 = distinct !DILexicalBlock(scope: !1691, file: !1692, line: 115, column: 6)
!1705 = !DILocation(line: 115, column: 6, scope: !1691, inlinedAt: !1697)
!1706 = !DILocation(line: 116, column: 10, scope: !1704, inlinedAt: !1697)
!1707 = !DILocation(line: 116, column: 3, scope: !1704, inlinedAt: !1697)
!1708 = !DILocation(line: 118, column: 9, scope: !1691, inlinedAt: !1697)
!1709 = !DILocation(line: 118, column: 2, scope: !1691, inlinedAt: !1697)
!1710 = !DILocation(line: 154, column: 36, scope: !1671)
!1711 = !DILocation(line: 155, column: 25, scope: !1671)
!1712 = !DILocation(line: 0, scope: !362, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 155, column: 2, scope: !1671)
!1714 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !1713)
!1716 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !1713)
!1717 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !1713)
!1718 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !1713)
!1719 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !1713)
!1720 = !DILocation(line: 0, scope: !371, inlinedAt: !1713)
!1721 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !1713)
!1722 = !DILocation(line: 0, scope: !338, inlinedAt: !1715)
!1723 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1715)
!1724 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1715)
!1725 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1715)
!1726 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1715)
!1727 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1715)
!1728 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1715)
!1729 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !1713)
!1730 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !1713)
!1731 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !1713)
!1732 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !1713)
!1733 = distinct !{!1733, !1716, !1734, !396, !397}
!1734 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !1713)
!1735 = !DILocation(line: 158, column: 15, scope: !1682)
!1736 = !DILocation(line: 158, column: 6, scope: !1671)
!1737 = !DILocation(line: 159, column: 42, scope: !1681)
!1738 = !DILocation(line: 159, column: 48, scope: !1681)
!1739 = !DILocation(line: 0, scope: !1681)
!1740 = !DILocation(line: 160, column: 40, scope: !1681)
!1741 = !DILocation(line: 160, column: 28, scope: !1681)
!1742 = !DILocation(line: 160, column: 46, scope: !1681)
!1743 = !DILocation(line: 161, column: 41, scope: !1681)
!1744 = !DILocation(line: 163, column: 16, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1681, file: !112, line: 163, column: 7)
!1746 = !DILocation(line: 163, column: 7, scope: !1681)
!1747 = !DILocation(line: 167, column: 12, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !112, line: 163, column: 39)
!1749 = !DILocation(line: 167, column: 24, scope: !1748)
!1750 = !DILocation(line: 167, column: 31, scope: !1748)
!1751 = !DILocation(line: 167, column: 42, scope: !1748)
!1752 = !DILocalVariable(name: "rc", arg: 1, scope: !1753, file: !26, line: 90, type: !341)
!1753 = distinct !DISubprogram(name: "rc_bittree_reverse", scope: !26, file: !26, line: 90, type: !363, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1754)
!1754 = !{!1752, !1755, !1756, !1757, !1758, !1759}
!1755 = !DILocalVariable(name: "probs", arg: 2, scope: !1753, file: !26, line: 90, type: !53)
!1756 = !DILocalVariable(name: "bit_count", arg: 3, scope: !1753, file: !26, line: 91, type: !37)
!1757 = !DILocalVariable(name: "symbol", arg: 4, scope: !1753, file: !26, line: 91, type: !37)
!1758 = !DILocalVariable(name: "model_index", scope: !1753, file: !26, line: 93, type: !37)
!1759 = !DILocalVariable(name: "bit", scope: !1760, file: !26, line: 96, type: !372)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !26, line: 95, column: 5)
!1761 = !DILocation(line: 0, scope: !1753, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 166, column: 4, scope: !1748)
!1763 = !DILocation(line: 95, column: 2, scope: !1753, inlinedAt: !1762)
!1764 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 98, column: 3, scope: !1760, inlinedAt: !1762)
!1766 = !DILocation(line: 96, column: 31, scope: !1760, inlinedAt: !1762)
!1767 = !DILocation(line: 0, scope: !1760, inlinedAt: !1762)
!1768 = !DILocation(line: 97, column: 10, scope: !1760, inlinedAt: !1762)
!1769 = !DILocation(line: 98, column: 15, scope: !1760, inlinedAt: !1762)
!1770 = !DILocation(line: 0, scope: !338, inlinedAt: !1765)
!1771 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1765)
!1772 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1765)
!1773 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1765)
!1774 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1765)
!1775 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1765)
!1776 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1765)
!1777 = !DILocation(line: 99, column: 30, scope: !1760, inlinedAt: !1762)
!1778 = !DILocation(line: 99, column: 36, scope: !1760, inlinedAt: !1762)
!1779 = !DILocation(line: 100, column: 11, scope: !1753, inlinedAt: !1762)
!1780 = !DILocation(line: 100, column: 23, scope: !1753, inlinedAt: !1762)
!1781 = !DILocation(line: 100, column: 2, scope: !1760, inlinedAt: !1762)
!1782 = distinct !{!1782, !1763, !1783, !396, !397}
!1783 = !DILocation(line: 100, column: 27, scope: !1753, inlinedAt: !1762)
!1784 = !DILocation(line: 170, column: 38, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1745, file: !112, line: 169, column: 10)
!1786 = !DILocalVariable(name: "rc", arg: 1, scope: !1787, file: !26, line: 105, type: !341)
!1787 = distinct !DISubprogram(name: "rc_direct", scope: !26, file: !26, line: 105, type: !1788, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !341, !37, !37}
!1790 = !{!1786, !1791, !1792}
!1791 = !DILocalVariable(name: "value", arg: 2, scope: !1787, file: !26, line: 106, type: !37)
!1792 = !DILocalVariable(name: "bit_count", arg: 3, scope: !1787, file: !26, line: 106, type: !37)
!1793 = !DILocation(line: 0, scope: !1787, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 170, column: 4, scope: !1785)
!1795 = !DILocation(line: 110, column: 32, scope: !1796, inlinedAt: !1794)
!1796 = distinct !DILexicalBlock(scope: !1787, file: !26, line: 108, column: 5)
!1797 = !DILocation(line: 110, column: 29, scope: !1796, inlinedAt: !1794)
!1798 = !DILocation(line: 110, column: 45, scope: !1796, inlinedAt: !1794)
!1799 = !DILocation(line: 110, column: 19, scope: !1796, inlinedAt: !1794)
!1800 = !DILocation(line: 109, column: 24, scope: !1796, inlinedAt: !1794)
!1801 = !DILocation(line: 109, column: 3, scope: !1796, inlinedAt: !1794)
!1802 = !DILocation(line: 110, column: 5, scope: !1796, inlinedAt: !1794)
!1803 = !DILocation(line: 111, column: 21, scope: !1787, inlinedAt: !1794)
!1804 = !DILocation(line: 111, column: 2, scope: !1796, inlinedAt: !1794)
!1805 = distinct !{!1805, !1806, !1807, !396, !397}
!1806 = !DILocation(line: 108, column: 2, scope: !1787, inlinedAt: !1794)
!1807 = !DILocation(line: 111, column: 25, scope: !1787, inlinedAt: !1794)
!1808 = !DILocation(line: 173, column: 25, scope: !1785)
!1809 = !DILocation(line: 174, column: 30, scope: !1785)
!1810 = !DILocation(line: 0, scope: !1753, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 172, column: 4, scope: !1785)
!1812 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 98, column: 3, scope: !1760, inlinedAt: !1811)
!1814 = !DILocation(line: 95, column: 2, scope: !1753, inlinedAt: !1811)
!1815 = !DILocation(line: 96, column: 31, scope: !1760, inlinedAt: !1811)
!1816 = !DILocation(line: 0, scope: !1760, inlinedAt: !1811)
!1817 = !DILocation(line: 97, column: 10, scope: !1760, inlinedAt: !1811)
!1818 = !DILocation(line: 98, column: 15, scope: !1760, inlinedAt: !1811)
!1819 = !DILocation(line: 0, scope: !338, inlinedAt: !1813)
!1820 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1813)
!1821 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1813)
!1822 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1813)
!1823 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1813)
!1824 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1813)
!1825 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1813)
!1826 = !DILocation(line: 99, column: 30, scope: !1760, inlinedAt: !1811)
!1827 = !DILocation(line: 99, column: 36, scope: !1760, inlinedAt: !1811)
!1828 = !DILocation(line: 100, column: 11, scope: !1753, inlinedAt: !1811)
!1829 = !DILocation(line: 100, column: 23, scope: !1753, inlinedAt: !1811)
!1830 = !DILocation(line: 100, column: 2, scope: !1760, inlinedAt: !1811)
!1831 = distinct !{!1831, !1814, !1832, !396, !397}
!1832 = !DILocation(line: 100, column: 27, scope: !1753, inlinedAt: !1811)
!1833 = !DILocation(line: 175, column: 13, scope: !1785)
!1834 = !DILocation(line: 175, column: 4, scope: !1785)
!1835 = !DILocation(line: 179, column: 26, scope: !1671)
!1836 = !DILocation(line: 179, column: 19, scope: !1671)
!1837 = !DILocation(line: 179, column: 2, scope: !1671)
!1838 = !DILocation(line: 179, column: 17, scope: !1671)
!1839 = !DILocation(line: 180, column: 19, scope: !1671)
!1840 = !DILocation(line: 180, column: 17, scope: !1671)
!1841 = !DILocation(line: 181, column: 19, scope: !1671)
!1842 = !DILocation(line: 181, column: 17, scope: !1671)
!1843 = !DILocation(line: 182, column: 17, scope: !1671)
!1844 = !DILocation(line: 183, column: 11, scope: !1671)
!1845 = !DILocation(line: 183, column: 2, scope: !1671)
!1846 = !DILocation(line: 184, column: 1, scope: !1671)
!1847 = distinct !DISubprogram(name: "length", scope: !112, file: !112, line: 108, type: !1848, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1850)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !341, !1164, !372, !37, !1165}
!1850 = !{!1851, !1852, !1853, !1854, !1855}
!1851 = !DILocalVariable(name: "rc", arg: 1, scope: !1847, file: !112, line: 108, type: !341)
!1852 = !DILocalVariable(name: "lc", arg: 2, scope: !1847, file: !112, line: 108, type: !1164)
!1853 = !DILocalVariable(name: "pos_state", arg: 3, scope: !1847, file: !112, line: 109, type: !372)
!1854 = !DILocalVariable(name: "len", arg: 4, scope: !1847, file: !112, line: 109, type: !37)
!1855 = !DILocalVariable(name: "fast_mode", arg: 5, scope: !1847, file: !112, line: 109, type: !1165)
!1856 = !DILocation(line: 0, scope: !1847)
!1857 = !DILocation(line: 112, column: 6, scope: !1847)
!1858 = !DILocation(line: 114, column: 10, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1847, file: !112, line: 114, column: 6)
!1860 = !DILocation(line: 0, scope: !338, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 115, column: 3, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !112, line: 114, column: 29)
!1863 = !DILocation(line: 0, scope: !338, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 118, column: 3, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1859, file: !112, line: 117, column: 9)
!1866 = !DILocation(line: 0, scope: !1859)
!1867 = !DILocation(line: 114, column: 6, scope: !1847)
!1868 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1861)
!1869 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1861)
!1870 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1861)
!1871 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1861)
!1872 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1861)
!1873 = !DILocation(line: 116, column: 18, scope: !1862)
!1874 = !DILocation(line: 0, scope: !362, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 116, column: 3, scope: !1862)
!1876 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !1875)
!1877 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !1875)
!1879 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !1875)
!1880 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !1875)
!1881 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !1875)
!1882 = !DILocation(line: 0, scope: !371, inlinedAt: !1875)
!1883 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !1875)
!1884 = !DILocation(line: 0, scope: !338, inlinedAt: !1878)
!1885 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1878)
!1886 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1878)
!1887 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1878)
!1888 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1878)
!1889 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1878)
!1890 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1878)
!1891 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !1875)
!1892 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !1875)
!1893 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !1875)
!1894 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !1875)
!1895 = distinct !{!1895, !1876, !1896, !396, !397}
!1896 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !1875)
!1897 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1864)
!1898 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1864)
!1899 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1864)
!1900 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1864)
!1901 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1864)
!1902 = !DILocation(line: 119, column: 7, scope: !1865)
!1903 = !DILocation(line: 121, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1865, file: !112, line: 121, column: 7)
!1905 = !DILocation(line: 0, scope: !1904)
!1906 = !DILocation(line: 0, scope: !338, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 122, column: 4, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !112, line: 121, column: 30)
!1909 = !DILocation(line: 0, scope: !338, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 125, column: 4, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1904, file: !112, line: 124, column: 10)
!1912 = !DILocation(line: 121, column: 7, scope: !1865)
!1913 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1907)
!1914 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1907)
!1915 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1907)
!1916 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1907)
!1917 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1907)
!1918 = !DILocation(line: 123, column: 19, scope: !1908)
!1919 = !DILocation(line: 0, scope: !362, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 123, column: 4, scope: !1908)
!1921 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !1920)
!1922 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !1920)
!1924 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !1920)
!1925 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !1920)
!1926 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !1920)
!1927 = !DILocation(line: 0, scope: !371, inlinedAt: !1920)
!1928 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !1920)
!1929 = !DILocation(line: 0, scope: !338, inlinedAt: !1923)
!1930 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1923)
!1931 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1923)
!1932 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1923)
!1933 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1923)
!1934 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1923)
!1935 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1923)
!1936 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !1920)
!1937 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !1920)
!1938 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !1920)
!1939 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !1920)
!1940 = distinct !{!1940, !1921, !1941, !396, !397}
!1941 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !1920)
!1942 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1910)
!1943 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1910)
!1944 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1910)
!1945 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1910)
!1946 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1910)
!1947 = !DILocation(line: 126, column: 8, scope: !1911)
!1948 = !DILocation(line: 127, column: 23, scope: !1911)
!1949 = !DILocation(line: 0, scope: !362, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 127, column: 4, scope: !1911)
!1951 = !DILocation(line: 81, column: 2, scope: !362, inlinedAt: !1950)
!1952 = !DILocation(line: 69, column: 18, scope: !338, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 83, column: 3, scope: !371, inlinedAt: !1950)
!1954 = !DILocation(line: 82, column: 35, scope: !371, inlinedAt: !1950)
!1955 = !DILocation(line: 82, column: 32, scope: !371, inlinedAt: !1950)
!1956 = !DILocation(line: 82, column: 48, scope: !371, inlinedAt: !1950)
!1957 = !DILocation(line: 0, scope: !371, inlinedAt: !1950)
!1958 = !DILocation(line: 83, column: 15, scope: !371, inlinedAt: !1950)
!1959 = !DILocation(line: 0, scope: !338, inlinedAt: !1953)
!1960 = !DILocation(line: 69, column: 2, scope: !338, inlinedAt: !1953)
!1961 = !DILocation(line: 69, column: 25, scope: !338, inlinedAt: !1953)
!1962 = !DILocation(line: 70, column: 16, scope: !338, inlinedAt: !1953)
!1963 = !DILocation(line: 70, column: 2, scope: !338, inlinedAt: !1953)
!1964 = !DILocation(line: 70, column: 23, scope: !338, inlinedAt: !1953)
!1965 = !DILocation(line: 71, column: 2, scope: !338, inlinedAt: !1953)
!1966 = !DILocation(line: 84, column: 30, scope: !371, inlinedAt: !1950)
!1967 = !DILocation(line: 84, column: 36, scope: !371, inlinedAt: !1950)
!1968 = !DILocation(line: 85, column: 21, scope: !362, inlinedAt: !1950)
!1969 = !DILocation(line: 85, column: 2, scope: !371, inlinedAt: !1950)
!1970 = distinct !{!1970, !1951, !1971, !396, !397}
!1971 = !DILocation(line: 85, column: 25, scope: !362, inlinedAt: !1950)
!1972 = !DILocation(line: 133, column: 6, scope: !1847)
!1973 = !DILocation(line: 134, column: 9, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !112, line: 134, column: 7)
!1975 = distinct !DILexicalBlock(scope: !1847, file: !112, line: 133, column: 6)
!1976 = !DILocation(line: 134, column: 7, scope: !1974)
!1977 = !DILocation(line: 134, column: 33, scope: !1974)
!1978 = !DILocation(line: 134, column: 7, scope: !1975)
!1979 = !DILocation(line: 135, column: 4, scope: !1974)
!1980 = !DILocation(line: 136, column: 1, scope: !1847)
!1981 = distinct !DISubprogram(name: "length_update_prices", scope: !112, file: !112, line: 79, type: !1982, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1164, !372}
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1994}
!1985 = !DILocalVariable(name: "lc", arg: 1, scope: !1981, file: !112, line: 79, type: !1164)
!1986 = !DILocalVariable(name: "pos_state", arg: 2, scope: !1981, file: !112, line: 79, type: !372)
!1987 = !DILocalVariable(name: "table_size", scope: !1981, file: !112, line: 81, type: !372)
!1988 = !DILocalVariable(name: "a0", scope: !1981, file: !112, line: 84, type: !372)
!1989 = !DILocalVariable(name: "a1", scope: !1981, file: !112, line: 85, type: !372)
!1990 = !DILocalVariable(name: "b0", scope: !1981, file: !112, line: 86, type: !372)
!1991 = !DILocalVariable(name: "b1", scope: !1981, file: !112, line: 87, type: !372)
!1992 = !DILocalVariable(name: "prices", scope: !1981, file: !112, line: 88, type: !1993)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1994 = !DILocalVariable(name: "i", scope: !1981, file: !112, line: 90, type: !37)
!1995 = !DILocation(line: 0, scope: !1981)
!1996 = !DILocation(line: 81, column: 34, scope: !1981)
!1997 = !{!293, !291, i64 18436}
!1998 = !DILocation(line: 82, column: 2, scope: !1981)
!1999 = !DILocation(line: 82, column: 26, scope: !1981)
!2000 = !DILocation(line: 84, column: 41, scope: !1981)
!2001 = !DILocalVariable(name: "prob", arg: 1, scope: !2002, file: !2003, line: 37, type: !2006)
!2002 = distinct !DISubprogram(name: "rc_bit_0_price", scope: !2003, file: !2003, line: 37, type: !2004, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2007)
!2003 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/price.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97acd9ecb91079df77ddfdfaeeb4fcaf")
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!37, !2006}
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!2007 = !{!2001}
!2008 = !DILocation(line: 0, scope: !2002, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 84, column: 22, scope: !1981)
!2010 = !DILocation(line: 39, column: 29, scope: !2002, inlinedAt: !2009)
!2011 = !DILocation(line: 39, column: 9, scope: !2002, inlinedAt: !2009)
!2012 = !DILocalVariable(name: "prob", arg: 1, scope: !2013, file: !2003, line: 44, type: !2006)
!2013 = distinct !DISubprogram(name: "rc_bit_1_price", scope: !2003, file: !2003, line: 44, type: !2004, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2014)
!2014 = !{!2012}
!2015 = !DILocation(line: 0, scope: !2013, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 85, column: 22, scope: !1981)
!2017 = !DILocation(line: 47, column: 4, scope: !2013, inlinedAt: !2016)
!2018 = !DILocation(line: 46, column: 9, scope: !2013, inlinedAt: !2016)
!2019 = !DILocation(line: 86, column: 46, scope: !1981)
!2020 = !DILocation(line: 0, scope: !2002, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 86, column: 27, scope: !1981)
!2022 = !DILocation(line: 39, column: 29, scope: !2002, inlinedAt: !2021)
!2023 = !DILocation(line: 39, column: 9, scope: !2002, inlinedAt: !2021)
!2024 = !DILocation(line: 86, column: 25, scope: !1981)
!2025 = !DILocation(line: 0, scope: !2013, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 87, column: 27, scope: !1981)
!2027 = !DILocation(line: 47, column: 4, scope: !2013, inlinedAt: !2026)
!2028 = !DILocation(line: 46, column: 9, scope: !2013, inlinedAt: !2026)
!2029 = !DILocation(line: 87, column: 25, scope: !1981)
!2030 = !DILocation(line: 88, column: 27, scope: !1981)
!2031 = !DILocation(line: 91, column: 16, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !112, line: 91, column: 2)
!2033 = distinct !DILexicalBlock(scope: !1981, file: !112, line: 91, column: 2)
!2034 = !DILocation(line: 91, column: 29, scope: !2032)
!2035 = !DILocation(line: 0, scope: !2033)
!2036 = !DILocation(line: 95, column: 11, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !112, line: 95, column: 2)
!2038 = distinct !DILexicalBlock(scope: !1981, file: !112, line: 95, column: 2)
!2039 = !DILocation(line: 95, column: 24, scope: !2037)
!2040 = !DILocalVariable(name: "probs", arg: 1, scope: !2041, file: !2003, line: 52, type: !2044)
!2041 = distinct !DISubprogram(name: "rc_bittree_price", scope: !2003, file: !2003, line: 52, type: !2042, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2046)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!37, !2044, !372, !37}
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2046 = !{!2040, !2047, !2048, !2049, !2050}
!2047 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !2041, file: !2003, line: 53, type: !372)
!2048 = !DILocalVariable(name: "symbol", arg: 3, scope: !2041, file: !2003, line: 53, type: !37)
!2049 = !DILocalVariable(name: "price", scope: !2041, file: !2003, line: 55, type: !37)
!2050 = !DILocalVariable(name: "bit", scope: !2051, file: !2003, line: 59, type: !372)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !2003, line: 58, column: 5)
!2052 = !DILocation(line: 0, scope: !2041, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 92, column: 20, scope: !2032)
!2054 = !DILocation(line: 58, column: 2, scope: !2041, inlinedAt: !2053)
!2055 = !DILocation(line: 59, column: 31, scope: !2051, inlinedAt: !2053)
!2056 = !DILocation(line: 0, scope: !2051, inlinedAt: !2053)
!2057 = !DILocation(line: 60, column: 10, scope: !2051, inlinedAt: !2053)
!2058 = !DILocation(line: 61, column: 25, scope: !2051, inlinedAt: !2053)
!2059 = !DILocalVariable(name: "prob", arg: 1, scope: !2060, file: !2003, line: 29, type: !2006)
!2060 = distinct !DISubprogram(name: "rc_bit_price", scope: !2003, file: !2003, line: 29, type: !2061, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!37, !2006, !372}
!2063 = !{!2059, !2064}
!2064 = !DILocalVariable(name: "bit", arg: 2, scope: !2060, file: !2003, line: 29, type: !372)
!2065 = !DILocation(line: 0, scope: !2060, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 61, column: 12, scope: !2051, inlinedAt: !2053)
!2067 = !DILocation(line: 31, column: 25, scope: !2060, inlinedAt: !2066)
!2068 = !DILocation(line: 31, column: 46, scope: !2060, inlinedAt: !2066)
!2069 = !DILocation(line: 32, column: 4, scope: !2060, inlinedAt: !2066)
!2070 = !DILocation(line: 31, column: 30, scope: !2060, inlinedAt: !2066)
!2071 = !DILocation(line: 32, column: 33, scope: !2060, inlinedAt: !2066)
!2072 = !DILocation(line: 31, column: 9, scope: !2060, inlinedAt: !2066)
!2073 = !DILocation(line: 61, column: 9, scope: !2051, inlinedAt: !2053)
!2074 = !DILocation(line: 62, column: 18, scope: !2041, inlinedAt: !2053)
!2075 = !DILocation(line: 62, column: 2, scope: !2051, inlinedAt: !2053)
!2076 = distinct !{!2076, !2054, !2077, !396, !397}
!2077 = !DILocation(line: 62, column: 22, scope: !2041, inlinedAt: !2053)
!2078 = !DILocation(line: 92, column: 18, scope: !2032)
!2079 = !DILocation(line: 92, column: 3, scope: !2032)
!2080 = !DILocation(line: 92, column: 13, scope: !2032)
!2081 = !DILocation(line: 91, column: 53, scope: !2032)
!2082 = distinct !{!2082, !2083, !2084, !396, !397}
!2083 = !DILocation(line: 91, column: 2, scope: !2033)
!2084 = !DILocation(line: 93, column: 20, scope: !2033)
!2085 = !DILocation(line: 99, column: 11, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !112, line: 99, column: 2)
!2087 = distinct !DILexicalBlock(scope: !1981, file: !112, line: 99, column: 2)
!2088 = !DILocation(line: 99, column: 2, scope: !2087)
!2089 = !DILocation(line: 0, scope: !2041, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 96, column: 20, scope: !2037)
!2091 = !DILocation(line: 58, column: 2, scope: !2041, inlinedAt: !2090)
!2092 = !DILocation(line: 59, column: 31, scope: !2051, inlinedAt: !2090)
!2093 = !DILocation(line: 0, scope: !2051, inlinedAt: !2090)
!2094 = !DILocation(line: 60, column: 10, scope: !2051, inlinedAt: !2090)
!2095 = !DILocation(line: 61, column: 25, scope: !2051, inlinedAt: !2090)
!2096 = !DILocation(line: 0, scope: !2060, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 61, column: 12, scope: !2051, inlinedAt: !2090)
!2098 = !DILocation(line: 31, column: 25, scope: !2060, inlinedAt: !2097)
!2099 = !DILocation(line: 31, column: 46, scope: !2060, inlinedAt: !2097)
!2100 = !DILocation(line: 32, column: 4, scope: !2060, inlinedAt: !2097)
!2101 = !DILocation(line: 31, column: 30, scope: !2060, inlinedAt: !2097)
!2102 = !DILocation(line: 32, column: 33, scope: !2060, inlinedAt: !2097)
!2103 = !DILocation(line: 31, column: 9, scope: !2060, inlinedAt: !2097)
!2104 = !DILocation(line: 61, column: 9, scope: !2051, inlinedAt: !2090)
!2105 = !DILocation(line: 62, column: 18, scope: !2041, inlinedAt: !2090)
!2106 = !DILocation(line: 62, column: 2, scope: !2051, inlinedAt: !2090)
!2107 = distinct !{!2107, !2091, !2108, !396, !397}
!2108 = !DILocation(line: 62, column: 22, scope: !2041, inlinedAt: !2090)
!2109 = !DILocation(line: 96, column: 18, scope: !2037)
!2110 = !DILocation(line: 96, column: 3, scope: !2037)
!2111 = !DILocation(line: 96, column: 13, scope: !2037)
!2112 = !DILocation(line: 95, column: 66, scope: !2037)
!2113 = distinct !{!2113, !2114, !2115, !396, !397}
!2114 = !DILocation(line: 95, column: 2, scope: !2038)
!2115 = !DILocation(line: 97, column: 38, scope: !2038)
!2116 = !DILocation(line: 0, scope: !2041, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 100, column: 20, scope: !2086)
!2118 = !DILocation(line: 56, column: 9, scope: !2041, inlinedAt: !2117)
!2119 = !DILocation(line: 58, column: 2, scope: !2041, inlinedAt: !2117)
!2120 = !DILocation(line: 59, column: 31, scope: !2051, inlinedAt: !2117)
!2121 = !DILocation(line: 0, scope: !2051, inlinedAt: !2117)
!2122 = !DILocation(line: 60, column: 10, scope: !2051, inlinedAt: !2117)
!2123 = !DILocation(line: 61, column: 25, scope: !2051, inlinedAt: !2117)
!2124 = !DILocation(line: 0, scope: !2060, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 61, column: 12, scope: !2051, inlinedAt: !2117)
!2126 = !DILocation(line: 31, column: 25, scope: !2060, inlinedAt: !2125)
!2127 = !DILocation(line: 31, column: 46, scope: !2060, inlinedAt: !2125)
!2128 = !DILocation(line: 32, column: 4, scope: !2060, inlinedAt: !2125)
!2129 = !DILocation(line: 31, column: 30, scope: !2060, inlinedAt: !2125)
!2130 = !DILocation(line: 32, column: 33, scope: !2060, inlinedAt: !2125)
!2131 = !DILocation(line: 31, column: 9, scope: !2060, inlinedAt: !2125)
!2132 = !DILocation(line: 61, column: 9, scope: !2051, inlinedAt: !2117)
!2133 = !DILocation(line: 62, column: 18, scope: !2041, inlinedAt: !2117)
!2134 = !DILocation(line: 62, column: 2, scope: !2051, inlinedAt: !2117)
!2135 = distinct !{!2135, !2119, !2136, !396, !397}
!2136 = !DILocation(line: 62, column: 22, scope: !2041, inlinedAt: !2117)
!2137 = !DILocation(line: 100, column: 18, scope: !2086)
!2138 = !DILocation(line: 100, column: 3, scope: !2086)
!2139 = !DILocation(line: 100, column: 13, scope: !2086)
!2140 = !DILocation(line: 99, column: 25, scope: !2086)
!2141 = distinct !{!2141, !2088, !2142, !396, !397}
!2142 = !DILocation(line: 101, column: 42, scope: !2087)
!2143 = !DILocation(line: 104, column: 1, scope: !1981)
!2144 = distinct !DISubprogram(name: "lzma_encode", scope: !112, file: !112, line: 412, type: !2145, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!115, !116, !119, !163, !164, !44}
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153}
!2148 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2144, file: !112, line: 412, type: !116)
!2149 = !DILocalVariable(name: "mf", arg: 2, scope: !2144, file: !112, line: 412, type: !119)
!2150 = !DILocalVariable(name: "out", arg: 3, scope: !2144, file: !112, line: 413, type: !163)
!2151 = !DILocalVariable(name: "out_pos", arg: 4, scope: !2144, file: !112, line: 413, type: !164)
!2152 = !DILocalVariable(name: "out_size", arg: 5, scope: !2144, file: !112, line: 414, type: !44)
!2153 = !DILocalVariable(name: "coder", scope: !2144, file: !112, line: 416, type: !174)
!2154 = !DILocation(line: 0, scope: !2144)
!2155 = !DILocation(line: 418, column: 6, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2144, file: !112, line: 418, column: 6)
!2157 = !DILocation(line: 418, column: 6, scope: !2144)
!2158 = !DILocation(line: 421, column: 9, scope: !2144)
!2159 = !DILocation(line: 421, column: 2, scope: !2144)
!2160 = !DILocation(line: 422, column: 1, scope: !2144)
