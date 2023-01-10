; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma_encoder_optimum_normal.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@lzma_rc_prices = external local_unnamed_addr constant [128 x i8], align 16
@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_normal(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res, i32 noundef %position) local_unnamed_addr #0 !dbg !73 {
entry:
  %matches_count.i = alloca i32, align 4
  %rep_lens.i = alloca [4 x i32], align 16
  %reps = alloca [4 x i32], align 16
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !126, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %mf, metadata !127, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %back_res, metadata !128, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %len_res, metadata !129, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %position, metadata !130, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !131, metadata !DIExpression()), !dbg !239
  %opts_end_index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 30, !dbg !240
  %0 = load i32, ptr %opts_end_index, align 4, !dbg !240, !tbaa !242
  %opts_current_index = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 31, !dbg !252
  %1 = load i32, ptr %opts_current_index, align 8, !dbg !252, !tbaa !253
  %cmp.not = icmp eq i32 %0, %1, !dbg !254
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !255

if.then:                                          ; preds = %entry
  %idxprom = zext i32 %1 to i64, !dbg !256
  %pos_prev = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom, i32 6, !dbg !258
  %2 = load i32, ptr %pos_prev, align 4, !dbg !258, !tbaa !259
  %sub = sub i32 %2, %1, !dbg !261
  store i32 %sub, ptr %len_res, align 4, !dbg !262, !tbaa !263
  %back_prev = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom, i32 7, !dbg !264
  %3 = load i32, ptr %back_prev, align 4, !dbg !264, !tbaa !265
  store i32 %3, ptr %back_res, align 4, !dbg !266, !tbaa !263
  store i32 %2, ptr %opts_current_index, align 8, !dbg !267, !tbaa !253
  br label %cleanup45, !dbg !268

if.end:                                           ; preds = %entry
  %read_ahead = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6, !dbg !269
  %4 = load i32, ptr %read_ahead, align 4, !dbg !269, !tbaa !271
  %cmp13 = icmp eq i32 %4, 0, !dbg !274
  br i1 %cmp13, label %if.then14, label %if.else.i, !dbg !275

if.then14:                                        ; preds = %if.end
  %match_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 27, !dbg !276
  %5 = load i32, ptr %match_price_count, align 4, !dbg !276, !tbaa !279
  %cmp15 = icmp ugt i32 %5, 127, !dbg !280
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !281

if.then16:                                        ; preds = %if.then14
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !282, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !287, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !313
  %dist_table_size.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 26
  call void @llvm.dbg.value(metadata i32 0, metadata !288, metadata !DIExpression()), !dbg !313
  br label %for.body.i, !dbg !314

for.cond42.preheader.i:                           ; preds = %for.cond.cleanup27.i
  %pos_special.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 20
  call void @llvm.dbg.value(metadata i32 4, metadata !300, metadata !DIExpression()), !dbg !315
  %add.ptr.i = getelementptr inbounds i16, ptr %pos_special.i, i64 -1
  br label %for.body45.i, !dbg !316

for.body.i:                                       ; preds = %for.cond.cleanup27.i, %if.then16
  %indvars.iv150.i = phi i64 [ 0, %if.then16 ], [ %indvars.iv.next151.i, %for.cond.cleanup27.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv150.i, metadata !288, metadata !DIExpression()), !dbg !313
  %arrayidx.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 24, i64 %indvars.iv150.i, !dbg !317
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !290, metadata !DIExpression()), !dbg !318
  call void @llvm.dbg.value(metadata i32 0, metadata !294, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata i32 0, metadata !294, metadata !DIExpression()), !dbg !319
  %6 = load i32, ptr %dist_table_size.i, align 8, !dbg !320, !tbaa !322
  %cmp3134.not.i = icmp eq i32 %6, 0, !dbg !323
  br i1 %cmp3134.not.i, label %for.body28.i.preheader, label %for.body5.lr.ph.i, !dbg !324

for.body28.i.preheader:                           ; preds = %for.body17.i, %for.cond13.preheader.i, %for.body.i
  br label %for.body28.i, !dbg !325

for.body5.lr.ph.i:                                ; preds = %for.body.i
  %arrayidx8.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 19, i64 %indvars.iv150.i
  br label %for.body5.i, !dbg !324

for.cond13.preheader.i:                           ; preds = %rc_bittree_price.exit.i
  call void @llvm.dbg.value(metadata i32 14, metadata !296, metadata !DIExpression()), !dbg !326
  %cmp15136.i = icmp ugt i32 %10, 14, !dbg !327
  br i1 %cmp15136.i, label %for.body17.i, label %for.body28.i.preheader, !dbg !329

for.body5.i:                                      ; preds = %rc_bittree_price.exit.i, %for.body5.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body5.lr.ph.i ], [ %indvars.iv.next.i, %rc_bittree_price.exit.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !294, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.value(metadata ptr %arrayidx8.i, metadata !330, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 6, metadata !339, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !340, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 0, metadata !341, metadata !DIExpression()), !dbg !344
  %7 = trunc i64 %indvars.iv.i to i32, !dbg !346
  %add.i.i = add i32 %7, 64, !dbg !346
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !340, metadata !DIExpression()), !dbg !344
  br label %do.body.i.i, !dbg !347

do.body.i.i:                                      ; preds = %do.body.i.i, %for.body5.i
  %price.0.i.i = phi i32 [ 0, %for.body5.i ], [ %add1.i.i, %do.body.i.i ], !dbg !344
  %symbol.addr.0.i.i = phi i32 [ %add.i.i, %for.body5.i ], [ %shr.i.i, %do.body.i.i ], !dbg !344
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i, metadata !340, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %price.0.i.i, metadata !341, metadata !DIExpression()), !dbg !344
  %and.i.i = and i32 %symbol.addr.0.i.i, 1, !dbg !348
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !342, metadata !DIExpression()), !dbg !349
  %shr.i.i = lshr i32 %symbol.addr.0.i.i, 1, !dbg !350
  call void @llvm.dbg.value(metadata i32 %shr.i.i, metadata !340, metadata !DIExpression()), !dbg !344
  %idxprom.i.i = zext i32 %shr.i.i to i64, !dbg !351
  %arrayidx.i.i = getelementptr inbounds i16, ptr %arrayidx8.i, i64 %idxprom.i.i, !dbg !351
  %8 = load i16, ptr %arrayidx.i.i, align 2, !dbg !351, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %8, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !358, metadata !DIExpression()), !dbg !359
  %conv.i.i.i = zext i16 %8 to i32, !dbg !361
  %sub.i.i.i = sub nsw i32 0, %and.i.i, !dbg !362
  %and.i.i.i = and i32 %sub.i.i.i, 2032, !dbg !363
  %xor.i.i.i = xor i32 %and.i.i.i, %conv.i.i.i, !dbg !364
  %shr.i.i.i = lshr i32 %xor.i.i.i, 4, !dbg !365
  %idxprom.i.i.i = zext i32 %shr.i.i.i to i64, !dbg !366
  %arrayidx.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i, !dbg !366
  %9 = load i8, ptr %arrayidx.i.i.i, align 1, !dbg !366, !tbaa !367
  %conv1.i.i.i = zext i8 %9 to i32, !dbg !366
  %add1.i.i = add i32 %price.0.i.i, %conv1.i.i.i, !dbg !368
  call void @llvm.dbg.value(metadata i32 %add1.i.i, metadata !341, metadata !DIExpression()), !dbg !344
  %cmp.not.i.i = icmp eq i32 %shr.i.i, 1, !dbg !369
  br i1 %cmp.not.i.i, label %rc_bittree_price.exit.i, label %do.body.i.i, !dbg !370, !llvm.loop !371

rc_bittree_price.exit.i:                          ; preds = %do.body.i.i
  %arrayidx11.i = getelementptr inbounds i32, ptr %arrayidx.i, i64 %indvars.iv.i, !dbg !375
  store i32 %add1.i.i, ptr %arrayidx11.i, align 4, !dbg !376, !tbaa !263
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !377
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !294, metadata !DIExpression()), !dbg !319
  %10 = load i32, ptr %dist_table_size.i, align 8, !dbg !320, !tbaa !322
  %11 = zext i32 %10 to i64, !dbg !323
  %cmp3.i = icmp ult i64 %indvars.iv.next.i, %11, !dbg !323
  br i1 %cmp3.i, label %for.body5.i, label %for.cond13.preheader.i, !dbg !324, !llvm.loop !378

for.body17.i:                                     ; preds = %for.cond13.preheader.i, %for.body17.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %for.body17.i ], [ 14, %for.cond13.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv143.i, metadata !296, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i64 %indvars.iv143.i, metadata !380, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_plus_uconst, 268435451, DW_OP_stack_value)), !dbg !385
  %12 = trunc i64 %indvars.iv143.i to i32, !dbg !387
  %13 = shl i32 %12, 3, !dbg !387
  %14 = add i32 %13, -80, !dbg !387
  %shl.i.i = and i32 %14, -16, !dbg !387
  %arrayidx21.i = getelementptr inbounds i32, ptr %arrayidx.i, i64 %indvars.iv143.i, !dbg !388
  %15 = load i32, ptr %arrayidx21.i, align 4, !dbg !389, !tbaa !263
  %add.i = add i32 %shl.i.i, %15, !dbg !389
  store i32 %add.i, ptr %arrayidx21.i, align 4, !dbg !389, !tbaa !263
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1, !dbg !390
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next144.i, metadata !296, metadata !DIExpression()), !dbg !326
  %16 = load i32, ptr %dist_table_size.i, align 8, !dbg !391, !tbaa !322
  %17 = zext i32 %16 to i64, !dbg !327
  %cmp15.i = icmp ult i64 %indvars.iv.next144.i, %17, !dbg !327
  br i1 %cmp15.i, label %for.body17.i, label %for.body28.i.preheader, !dbg !329, !llvm.loop !392

for.cond.cleanup27.i:                             ; preds = %for.body28.i
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1, !dbg !394
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next151.i, metadata !288, metadata !DIExpression()), !dbg !313
  %exitcond153.not.i = icmp eq i64 %indvars.iv.next151.i, 4, !dbg !395
  br i1 %exitcond153.not.i, label %for.cond42.preheader.i, label %for.body.i, !dbg !314, !llvm.loop !396

for.body28.i:                                     ; preds = %for.body28.i.preheader, %for.body28.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %for.body28.i ], [ 0, %for.body28.i.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv147.i, metadata !298, metadata !DIExpression()), !dbg !398
  %arrayidx30.i = getelementptr inbounds i32, ptr %arrayidx.i, i64 %indvars.iv147.i, !dbg !399
  %18 = load i32, ptr %arrayidx30.i, align 4, !dbg !399, !tbaa !263
  %arrayidx34.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 25, i64 %indvars.iv150.i, i64 %indvars.iv147.i, !dbg !401
  store i32 %18, ptr %arrayidx34.i, align 4, !dbg !402, !tbaa !263
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1, !dbg !403
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next148.i, metadata !298, metadata !DIExpression()), !dbg !398
  %exitcond.not.i = icmp eq i64 %indvars.iv.next148.i, 4, !dbg !404
  br i1 %exitcond.not.i, label %for.cond.cleanup27.i, label %for.body28.i, !dbg !325, !llvm.loop !405

for.body45.i:                                     ; preds = %for.cond.cleanup59.i, %for.cond42.preheader.i
  %indvars.iv158.i = phi i64 [ 4, %for.cond42.preheader.i ], [ %indvars.iv.next159.i, %for.cond.cleanup59.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv158.i, metadata !300, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i64 %indvars.iv158.i, metadata !407, metadata !DIExpression()), !dbg !413
  %arrayidx.i114.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %indvars.iv158.i, !dbg !415
  %19 = load i8, ptr %arrayidx.i114.i, align 1, !dbg !415, !tbaa !367
  %conv.i.i = zext i8 %19 to i32, !dbg !415
  call void @llvm.dbg.value(metadata i32 %conv.i.i, metadata !302, metadata !DIExpression()), !dbg !417
  %shr48.i = lshr i32 %conv.i.i, 1, !dbg !418
  %sub49.i = add nsw i32 %shr48.i, -1, !dbg !419
  call void @llvm.dbg.value(metadata i32 %sub49.i, metadata !306, metadata !DIExpression()), !dbg !417
  %and.i = and i32 %conv.i.i, 1, !dbg !420
  %or.i = or i32 %and.i, 2, !dbg !421
  %shl.i = shl i32 %or.i, %sub49.i, !dbg !422
  call void @llvm.dbg.value(metadata i32 %shl.i, metadata !307, metadata !DIExpression()), !dbg !417
  %idx.ext.i = zext i32 %shl.i to i64, !dbg !423
  %idx.ext51.i = zext i8 %19 to i64, !dbg !424
  %idx.neg.i = sub nsw i64 0, %idx.ext51.i, !dbg !424
  %add.ptr52.i = getelementptr inbounds i16, ptr %add.ptr.i, i64 %idx.ext.i, !dbg !424
  %add.ptr53.i = getelementptr inbounds i16, ptr %add.ptr52.i, i64 %idx.neg.i, !dbg !425
  %20 = trunc i64 %indvars.iv158.i to i32, !dbg !426
  %sub54.i = sub i32 %20, %shl.i, !dbg !426
  call void @llvm.dbg.value(metadata ptr %add.ptr53.i, metadata !427, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %sub49.i, metadata !432, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %sub54.i, metadata !433, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 0, metadata !434, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 1, metadata !435, metadata !DIExpression()), !dbg !438
  br label %do.body.i133.i, !dbg !440

do.body.i133.i:                                   ; preds = %do.body.i133.i, %for.body45.i
  %symbol.addr.0.i115.i = phi i32 [ %sub54.i, %for.body45.i ], [ %shr.i118.i, %do.body.i133.i ]
  %price.0.i116.i = phi i32 [ 0, %for.body45.i ], [ %add.i129.i, %do.body.i133.i ], !dbg !438
  %model_index.0.i.i = phi i32 [ 1, %for.body45.i ], [ %add1.i131.i, %do.body.i133.i ], !dbg !438
  %bit_levels.addr.0.i.i = phi i32 [ %sub49.i, %for.body45.i ], [ %dec.i.i, %do.body.i133.i ]
  call void @llvm.dbg.value(metadata i32 %bit_levels.addr.0.i.i, metadata !432, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %model_index.0.i.i, metadata !435, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %price.0.i116.i, metadata !434, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i115.i, metadata !433, metadata !DIExpression()), !dbg !438
  %and.i117.i = and i32 %symbol.addr.0.i115.i, 1, !dbg !441
  call void @llvm.dbg.value(metadata i32 %and.i117.i, metadata !436, metadata !DIExpression()), !dbg !442
  %shr.i118.i = lshr i32 %symbol.addr.0.i115.i, 1, !dbg !443
  call void @llvm.dbg.value(metadata i32 %shr.i118.i, metadata !433, metadata !DIExpression()), !dbg !438
  %idxprom.i119.i = zext i32 %model_index.0.i.i to i64, !dbg !444
  %arrayidx.i120.i = getelementptr inbounds i16, ptr %add.ptr53.i, i64 %idxprom.i119.i, !dbg !444
  %21 = load i16, ptr %arrayidx.i120.i, align 2, !dbg !444, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %21, metadata !353, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata i32 %and.i117.i, metadata !358, metadata !DIExpression()), !dbg !445
  %conv.i.i121.i = zext i16 %21 to i32, !dbg !447
  %sub.i.i122.i = sub nsw i32 0, %and.i117.i, !dbg !448
  %and.i.i123.i = and i32 %sub.i.i122.i, 2032, !dbg !449
  %xor.i.i124.i = xor i32 %and.i.i123.i, %conv.i.i121.i, !dbg !450
  %shr.i.i125.i = lshr i32 %xor.i.i124.i, 4, !dbg !451
  %idxprom.i.i126.i = zext i32 %shr.i.i125.i to i64, !dbg !452
  %arrayidx.i.i127.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i126.i, !dbg !452
  %22 = load i8, ptr %arrayidx.i.i127.i, align 1, !dbg !452, !tbaa !367
  %conv1.i.i128.i = zext i8 %22 to i32, !dbg !452
  %add.i129.i = add i32 %price.0.i116.i, %conv1.i.i128.i, !dbg !453
  call void @llvm.dbg.value(metadata i32 %add.i129.i, metadata !434, metadata !DIExpression()), !dbg !438
  %shl.i130.i = shl i32 %model_index.0.i.i, 1, !dbg !454
  %add1.i131.i = or i32 %shl.i130.i, %and.i117.i, !dbg !455
  call void @llvm.dbg.value(metadata i32 %add1.i131.i, metadata !435, metadata !DIExpression()), !dbg !438
  %dec.i.i = add i32 %bit_levels.addr.0.i.i, -1, !dbg !456
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !432, metadata !DIExpression()), !dbg !438
  %cmp.not.i132.i = icmp eq i32 %dec.i.i, 0, !dbg !457
  br i1 %cmp.not.i132.i, label %for.body60.i, label %do.body.i133.i, !dbg !458, !llvm.loop !459

for.cond.cleanup59.i:                             ; preds = %for.body60.i
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1, !dbg !461
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next159.i, metadata !300, metadata !DIExpression()), !dbg !315
  %exitcond161.not.i = icmp eq i64 %indvars.iv.next159.i, 128, !dbg !462
  br i1 %exitcond161.not.i, label %fill_distances_prices.exit, label %for.body45.i, !dbg !316, !llvm.loop !463

for.body60.i:                                     ; preds = %do.body.i133.i, %for.body60.i
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %for.body60.i ], [ 0, %do.body.i133.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv154.i, metadata !309, metadata !DIExpression()), !dbg !465
  %arrayidx65.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 24, i64 %indvars.iv154.i, i64 %idx.ext51.i, !dbg !466
  %23 = load i32, ptr %arrayidx65.i, align 4, !dbg !466, !tbaa !263
  %add66.i = add i32 %23, %add.i129.i, !dbg !468
  %arrayidx71.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 25, i64 %indvars.iv154.i, i64 %indvars.iv158.i, !dbg !469
  store i32 %add66.i, ptr %arrayidx71.i, align 4, !dbg !470, !tbaa !263
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1, !dbg !471
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next155.i, metadata !309, metadata !DIExpression()), !dbg !465
  %exitcond157.not.i = icmp eq i64 %indvars.iv.next155.i, 4, !dbg !472
  br i1 %exitcond157.not.i, label %for.cond.cleanup59.i, label %for.body60.i, !dbg !473, !llvm.loop !474

fill_distances_prices.exit:                       ; preds = %for.cond.cleanup59.i
  store i32 0, ptr %match_price_count, align 4, !dbg !476, !tbaa !279
  br label %if.end17, !dbg !477

if.end17:                                         ; preds = %fill_distances_prices.exit, %if.then14
  %align_price_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 29, !dbg !478
  %24 = load i32, ptr %align_price_count, align 8, !dbg !478, !tbaa !480
  %cmp18 = icmp ugt i32 %24, 15, !dbg !481
  br i1 %cmp18, label %if.then19, label %if.then.i, !dbg !482

if.then19:                                        ; preds = %if.end17
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !483, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !486, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.value(metadata i32 0, metadata !487, metadata !DIExpression()), !dbg !491
  %pos_align.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 21
  br label %for.body.i93, !dbg !492

for.body.i93:                                     ; preds = %rc_bittree_reverse_price.exit.i, %if.then19
  %indvars.iv.i92 = phi i64 [ 0, %if.then19 ], [ %indvars.iv.next.i117, %rc_bittree_reverse_price.exit.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i92, metadata !487, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.value(metadata ptr %pos_align.i, metadata !427, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 4, metadata !432, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i92, metadata !433, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 0, metadata !434, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 1, metadata !435, metadata !DIExpression()), !dbg !493
  %25 = trunc i64 %indvars.iv.i92 to i32, !dbg !496
  br label %do.body.i.i115, !dbg !496

do.body.i.i115:                                   ; preds = %do.body.i.i115, %for.body.i93
  %symbol.addr.0.i.i94 = phi i32 [ %25, %for.body.i93 ], [ %shr.i.i99, %do.body.i.i115 ]
  %price.0.i.i95 = phi i32 [ 0, %for.body.i93 ], [ %add.i.i110, %do.body.i.i115 ], !dbg !493
  %model_index.0.i.i96 = phi i32 [ 1, %for.body.i93 ], [ %add1.i.i112, %do.body.i.i115 ], !dbg !493
  %bit_levels.addr.0.i.i97 = phi i32 [ 4, %for.body.i93 ], [ %dec.i.i113, %do.body.i.i115 ]
  call void @llvm.dbg.value(metadata i32 %bit_levels.addr.0.i.i97, metadata !432, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 %model_index.0.i.i96, metadata !435, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 %price.0.i.i95, metadata !434, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i94, metadata !433, metadata !DIExpression()), !dbg !493
  %and.i.i98 = and i32 %symbol.addr.0.i.i94, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 %and.i.i98, metadata !436, metadata !DIExpression()), !dbg !498
  %shr.i.i99 = lshr i32 %symbol.addr.0.i.i94, 1, !dbg !499
  call void @llvm.dbg.value(metadata i32 %shr.i.i99, metadata !433, metadata !DIExpression()), !dbg !493
  %idxprom.i.i100 = zext i32 %model_index.0.i.i96 to i64, !dbg !500
  %arrayidx.i.i101 = getelementptr inbounds i16, ptr %pos_align.i, i64 %idxprom.i.i100, !dbg !500
  %26 = load i16, ptr %arrayidx.i.i101, align 2, !dbg !500, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %26, metadata !353, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.value(metadata i32 %and.i.i98, metadata !358, metadata !DIExpression()), !dbg !501
  %conv.i.i.i102 = zext i16 %26 to i32, !dbg !503
  %sub.i.i.i103 = sub nsw i32 0, %and.i.i98, !dbg !504
  %and.i.i.i104 = and i32 %sub.i.i.i103, 2032, !dbg !505
  %xor.i.i.i105 = xor i32 %and.i.i.i104, %conv.i.i.i102, !dbg !506
  %shr.i.i.i106 = lshr i32 %xor.i.i.i105, 4, !dbg !507
  %idxprom.i.i.i107 = zext i32 %shr.i.i.i106 to i64, !dbg !508
  %arrayidx.i.i.i108 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i107, !dbg !508
  %27 = load i8, ptr %arrayidx.i.i.i108, align 1, !dbg !508, !tbaa !367
  %conv1.i.i.i109 = zext i8 %27 to i32, !dbg !508
  %add.i.i110 = add i32 %price.0.i.i95, %conv1.i.i.i109, !dbg !509
  call void @llvm.dbg.value(metadata i32 %add.i.i110, metadata !434, metadata !DIExpression()), !dbg !493
  %shl.i.i111 = shl i32 %model_index.0.i.i96, 1, !dbg !510
  %add1.i.i112 = or i32 %shl.i.i111, %and.i.i98, !dbg !511
  call void @llvm.dbg.value(metadata i32 %add1.i.i112, metadata !435, metadata !DIExpression()), !dbg !493
  %dec.i.i113 = add nsw i32 %bit_levels.addr.0.i.i97, -1, !dbg !512
  call void @llvm.dbg.value(metadata i32 %dec.i.i113, metadata !432, metadata !DIExpression()), !dbg !493
  %cmp.not.i.i114 = icmp eq i32 %dec.i.i113, 0, !dbg !513
  br i1 %cmp.not.i.i114, label %rc_bittree_reverse_price.exit.i, label %do.body.i.i115, !dbg !514, !llvm.loop !515

rc_bittree_reverse_price.exit.i:                  ; preds = %do.body.i.i115
  %arrayidx.i116 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 28, i64 %indvars.iv.i92, !dbg !517
  store i32 %add.i.i110, ptr %arrayidx.i116, align 4, !dbg !518, !tbaa !263
  %indvars.iv.next.i117 = add nuw nsw i64 %indvars.iv.i92, 1, !dbg !519
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i117, metadata !487, metadata !DIExpression()), !dbg !491
  %exitcond.not.i118 = icmp eq i64 %indvars.iv.next.i117, 16, !dbg !520
  br i1 %exitcond.not.i118, label %fill_align_prices.exit, label %for.body.i93, !dbg !492, !llvm.loop !521

fill_align_prices.exit:                           ; preds = %rc_bittree_reverse_price.exit.i
  store i32 0, ptr %align_price_count, align 8, !dbg !523, !tbaa !480
  br label %if.then.i, !dbg !524

if.then.i:                                        ; preds = %fill_align_prices.exit, %if.end17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525), !dbg !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529), !dbg !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !531), !dbg !528
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !533, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %mf, metadata !538, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %back_res, metadata !539, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %len_res, metadata !540, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata i32 %position, metadata !541, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !542, metadata !DIExpression()) #6, !dbg !588
  %nice_len1.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !590
  %28 = load i32, ptr %nice_len1.i, align 8, !dbg !590, !tbaa !591, !alias.scope !525, !noalias !592
  call void @llvm.dbg.value(metadata i32 %28, metadata !543, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !593, !noalias !594
  %matches.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !595
  call void @llvm.dbg.value(metadata ptr %matches_count.i, metadata !545, metadata !DIExpression(DW_OP_deref)) #6, !dbg !588
  %call.i = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count.i, ptr noundef nonnull %matches.i) #6, !dbg !598, !noalias !592
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !544, metadata !DIExpression()) #6, !dbg !588
  br label %if.end.i, !dbg !599

if.else.i:                                        ; preds = %if.end
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600), !dbg !528
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !533, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %mf, metadata !538, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %back_res, metadata !539, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %len_res, metadata !540, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata i32 %position, metadata !541, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !542, metadata !DIExpression()) #6, !dbg !588
  %nice_len1.i310 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !590
  %29 = load i32, ptr %nice_len1.i310, align 8, !dbg !590, !tbaa !591, !alias.scope !600, !noalias !602
  call void @llvm.dbg.value(metadata i32 %28, metadata !543, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !593, !noalias !605
  %longest_match_length.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !606
  %30 = load i32, ptr %longest_match_length.i, align 8, !dbg !606, !tbaa !608, !noalias !594
  call void @llvm.dbg.value(metadata i32 %30, metadata !544, metadata !DIExpression()) #6, !dbg !588
  %matches_count2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !609
  %31 = load i32, ptr %matches_count2.i, align 4, !dbg !609, !tbaa !610, !noalias !594
  call void @llvm.dbg.value(metadata i32 %31, metadata !545, metadata !DIExpression()) #6, !dbg !588
  store i32 %31, ptr %matches_count.i, align 4, !dbg !611, !tbaa !263, !noalias !594
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %32 = phi i32 [ %28, %if.then.i ], [ %29, %if.else.i ]
  %nice_len1.i311 = phi ptr [ %nice_len1.i, %if.then.i ], [ %nice_len1.i310, %if.else.i ]
  %len_main.0.i = phi i32 [ %call.i, %if.then.i ], [ %30, %if.else.i ], !dbg !612
  call void @llvm.dbg.value(metadata i32 %len_main.0.i, metadata !544, metadata !DIExpression()) #6, !dbg !588
  %33 = getelementptr i8, ptr %mf, i64 24, !dbg !613
  %mf.val485.i = load i32, ptr %33, align 8, !dbg !613, !tbaa !614, !alias.scope !525, !noalias !592
  %34 = getelementptr i8, ptr %mf, i64 36, !dbg !613
  %mf.val486.i = load i32, ptr %34, align 4, !dbg !613, !tbaa !615, !alias.scope !525, !noalias !592
  call void @llvm.dbg.value(metadata ptr undef, metadata !616, metadata !DIExpression()) #6, !dbg !623
  %sub.i.i = sub i32 %mf.val486.i, %mf.val485.i, !dbg !625
  %add.i119 = add i32 %sub.i.i, 1, !dbg !613
  %cmp4.i = icmp ult i32 %add.i119, 273, !dbg !613
  br i1 %cmp4.i, label %cond.end.i, label %if.end9.i, !dbg !613

cond.end.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !616, metadata !DIExpression()) #6, !dbg !626
  call void @llvm.dbg.value(metadata i32 %add.i119, metadata !546, metadata !DIExpression()) #6, !dbg !588
  %cmp7.i = icmp ult i32 %add.i119, 2, !dbg !628
  br i1 %cmp7.i, label %helper1.exit.thread, label %if.end9.i, !dbg !630

helper1.exit.thread:                              ; preds = %cond.end.i
  store i32 -1, ptr %back_res, align 4, !dbg !631, !tbaa !263, !alias.scope !529, !noalias !633
  store i32 1, ptr %len_res, align 4, !dbg !634, !tbaa !263, !alias.scope !531, !noalias !635
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !636, !noalias !594
  call void @llvm.dbg.value(metadata i32 %83, metadata !236, metadata !DIExpression()), !dbg !239
  br label %cleanup45, !dbg !637

if.end9.i:                                        ; preds = %cond.end.i, %if.end.i
  %cond540.i = phi i32 [ %add.i119, %cond.end.i ], [ 273, %if.end.i ]
  %mf.val487.i = load ptr, ptr %mf, align 8, !dbg !638, !tbaa !639, !alias.scope !525, !noalias !592
  call void @llvm.dbg.value(metadata ptr undef, metadata !640, metadata !DIExpression()) #6, !dbg !645
  %idx.ext.i.i = zext i32 %mf.val485.i to i64, !dbg !647
  %add.ptr.i.i = getelementptr inbounds i8, ptr %mf.val487.i, i64 %idx.ext.i.i, !dbg !647
  %add.ptr.i120 = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -1, !dbg !648
  call void @llvm.dbg.value(metadata ptr %add.ptr.i120, metadata !547, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !649, !noalias !594
  call void @llvm.dbg.declare(metadata ptr %rep_lens.i, metadata !551, metadata !DIExpression()) #6, !dbg !650
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata i32 0, metadata !553, metadata !DIExpression()) #6, !dbg !651
  %35 = load i8, ptr %add.ptr.i120, align 1, !tbaa !367, !noalias !592
  %cmp30546.i = icmp ugt i32 %cond540.i, 2
  %add.ptr12.i = getelementptr inbounds i8, ptr %add.ptr.i120, i64 -1
  %wide.trip.count.i = zext i32 %cond540.i to i64
  br label %for.body.i124, !dbg !652

for.cond.cleanup.i:                               ; preds = %cleanup.i
  %idxprom53.i = zext i32 %rep_max_index.2.i to i64, !dbg !653
  %arrayidx54.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom53.i, !dbg !653
  %36 = load i32, ptr %arrayidx54.i, align 4, !dbg !653, !tbaa !263, !noalias !594
  %cmp55.not.i = icmp ult i32 %36, %32, !dbg !655
  br i1 %cmp55.not.i, label %if.end60.i, label %if.then57.i, !dbg !656

for.body.i124:                                    ; preds = %cleanup.i, %if.end9.i
  %indvars.iv560.i = phi i64 [ 0, %if.end9.i ], [ %indvars.iv.next561.i, %cleanup.i ]
  %rep_max_index.0552.i = phi i32 [ 0, %if.end9.i ], [ %rep_max_index.2.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata i32 %rep_max_index.0552.i, metadata !552, metadata !DIExpression()) #6, !dbg !588
  call void @llvm.dbg.value(metadata i64 %indvars.iv560.i, metadata !553, metadata !DIExpression()) #6, !dbg !651
  %arrayidx.i121 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv560.i, !dbg !657
  %37 = load i32, ptr %arrayidx.i121, align 4, !dbg !657, !tbaa !263, !noalias !594
  %idx.ext.i122 = zext i32 %37 to i64, !dbg !658
  %idx.neg.i123 = sub nsw i64 0, %idx.ext.i122, !dbg !658
  %add.ptr13.i = getelementptr inbounds i8, ptr %add.ptr12.i, i64 %idx.neg.i123, !dbg !659
  call void @llvm.dbg.value(metadata ptr %add.ptr13.i, metadata !555, metadata !DIExpression()) #6, !dbg !660
  %38 = load i8, ptr %add.ptr13.i, align 1, !dbg !661, !tbaa !367, !noalias !592
  %cmp17.not.i = icmp eq i8 %35, %38, !dbg !661
  br i1 %cmp17.not.i, label %lor.lhs.false.i, label %if.then25.i, !dbg !661

lor.lhs.false.i:                                  ; preds = %for.body.i124
  %39 = load i8, ptr %add.ptr.i.i, align 1, !dbg !661, !tbaa !367, !noalias !592
  %arrayidx21.i125 = getelementptr inbounds i8, ptr %add.ptr13.i, i64 1, !dbg !661
  %40 = load i8, ptr %arrayidx21.i125, align 1, !dbg !661, !tbaa !367, !noalias !592
  %cmp23.not.i = icmp eq i8 %39, %40, !dbg !661
  br i1 %cmp23.not.i, label %for.cond29.preheader.i, label %if.then25.i, !dbg !663

for.cond29.preheader.i:                           ; preds = %lor.lhs.false.i
  call void @llvm.dbg.value(metadata i32 2, metadata !558, metadata !DIExpression()) #6, !dbg !660
  br i1 %cmp30546.i, label %land.rhs.i, label %for.end.i, !dbg !664

if.then25.i:                                      ; preds = %lor.lhs.false.i, %for.body.i124
  %arrayidx27.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %indvars.iv560.i, !dbg !667
  store i32 0, ptr %arrayidx27.i, align 4, !dbg !669, !tbaa !263, !noalias !594
  br label %cleanup.i, !dbg !670

land.rhs.i:                                       ; preds = %for.cond29.preheader.i, %for.inc.i
  %indvars.iv.i126 = phi i64 [ %indvars.iv.next.i127, %for.inc.i ], [ 2, %for.cond29.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i126, metadata !558, metadata !DIExpression()) #6, !dbg !660
  %arrayidx33.i = getelementptr inbounds i8, ptr %add.ptr.i120, i64 %indvars.iv.i126, !dbg !671
  %41 = load i8, ptr %arrayidx33.i, align 1, !dbg !671, !tbaa !367, !noalias !592
  %arrayidx36.i = getelementptr inbounds i8, ptr %add.ptr13.i, i64 %indvars.iv.i126, !dbg !672
  %42 = load i8, ptr %arrayidx36.i, align 1, !dbg !672, !tbaa !367, !noalias !592
  %cmp38.i = icmp eq i8 %41, %42, !dbg !673
  br i1 %cmp38.i, label %for.inc.i, label %for.end.loopexit.split.loop.exit579.i, !dbg !674

for.inc.i:                                        ; preds = %land.rhs.i
  %indvars.iv.next.i127 = add nuw nsw i64 %indvars.iv.i126, 1, !dbg !675
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i127, metadata !558, metadata !DIExpression()) #6, !dbg !660
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next.i127, %wide.trip.count.i, !dbg !676
  br i1 %exitcond.not.i128, label %for.end.i, label %land.rhs.i, !dbg !664, !llvm.loop !677

for.end.loopexit.split.loop.exit579.i:            ; preds = %land.rhs.i
  %43 = trunc i64 %indvars.iv.i126 to i32, !dbg !674
  br label %for.end.i, !dbg !679

for.end.i:                                        ; preds = %for.inc.i, %for.end.loopexit.split.loop.exit579.i, %for.cond29.preheader.i
  %len_test.0.lcssa.i = phi i32 [ 2, %for.cond29.preheader.i ], [ %43, %for.end.loopexit.split.loop.exit579.i ], [ %cond540.i, %for.inc.i ], !dbg !680
  %arrayidx42.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %indvars.iv560.i, !dbg !679
  store i32 %len_test.0.lcssa.i, ptr %arrayidx42.i, align 4, !dbg !681, !tbaa !263, !noalias !594
  %idxprom43.i = zext i32 %rep_max_index.0552.i to i64, !dbg !682
  %arrayidx44.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %idxprom43.i, !dbg !682
  %44 = load i32, ptr %arrayidx44.i, align 4, !dbg !682, !tbaa !263, !noalias !594
  %cmp45.i = icmp ugt i32 %len_test.0.lcssa.i, %44, !dbg !684
  %45 = trunc i64 %indvars.iv560.i to i32, !dbg !685
  %spec.select.i = select i1 %cmp45.i, i32 %45, i32 %rep_max_index.0552.i, !dbg !685
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !552, metadata !DIExpression()) #6, !dbg !588
  br label %cleanup.i, !dbg !686

cleanup.i:                                        ; preds = %for.end.i, %if.then25.i
  %rep_max_index.2.i = phi i32 [ %rep_max_index.0552.i, %if.then25.i ], [ %spec.select.i, %for.end.i ], !dbg !588
  call void @llvm.dbg.value(metadata i32 %rep_max_index.2.i, metadata !552, metadata !DIExpression()) #6, !dbg !588
  %indvars.iv.next561.i = add nuw nsw i64 %indvars.iv560.i, 1, !dbg !687
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next561.i, metadata !553, metadata !DIExpression()) #6, !dbg !651
  %exitcond563.not.i = icmp eq i64 %indvars.iv.next561.i, 4, !dbg !688
  br i1 %exitcond563.not.i, label %for.cond.cleanup.i, label %for.body.i124, !dbg !652, !llvm.loop !689

if.then57.i:                                      ; preds = %for.cond.cleanup.i
  store i32 %rep_max_index.2.i, ptr %back_res, align 4, !dbg !691, !tbaa !263, !alias.scope !529, !noalias !633
  store i32 %36, ptr %len_res, align 4, !dbg !693, !tbaa !263, !alias.scope !531, !noalias !635
  %sub.i = add i32 %36, -1, !dbg !694
  call void @llvm.dbg.value(metadata ptr %mf, metadata !695, metadata !DIExpression()) #6, !dbg !699
  call void @llvm.dbg.value(metadata i32 %sub.i, metadata !698, metadata !DIExpression()) #6, !dbg !699
  %cmp.not.i.i129 = icmp eq i32 %sub.i, 0, !dbg !701
  br i1 %cmp.not.i.i129, label %helper1.exit.thread315, label %if.then.i.i, !dbg !703

if.then.i.i:                                      ; preds = %if.then57.i
  %skip.i.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !704
  %46 = load ptr, ptr %skip.i.i, align 8, !dbg !704, !tbaa !706, !alias.scope !525, !noalias !592
  call void %46(ptr noundef nonnull %mf, i32 noundef %sub.i) #6, !dbg !707, !noalias !592
  %47 = load i32, ptr %read_ahead, align 4, !dbg !708, !tbaa !271, !alias.scope !525, !noalias !592
  %add.i.i130 = add i32 %47, %sub.i, !dbg !708
  store i32 %add.i.i130, ptr %read_ahead, align 4, !dbg !708, !tbaa !271, !alias.scope !525, !noalias !592
  br label %helper1.exit.thread315, !dbg !709

if.end60.i:                                       ; preds = %for.cond.cleanup.i
  %cmp61.not.i = icmp ult i32 %len_main.0.i, %32, !dbg !710
  br i1 %cmp61.not.i, label %if.end70.i, label %if.then63.i, !dbg !712

if.then63.i:                                      ; preds = %if.end60.i
  %48 = load i32, ptr %matches_count.i, align 4, !dbg !713, !tbaa !263, !noalias !594
  call void @llvm.dbg.value(metadata i32 %48, metadata !545, metadata !DIExpression()) #6, !dbg !588
  %sub65.i = add i32 %48, -1, !dbg !715
  %idxprom66.i = zext i32 %sub65.i to i64, !dbg !716
  %dist.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom66.i, i32 1, !dbg !717
  %49 = load i32, ptr %dist.i, align 4, !dbg !717, !tbaa !718, !noalias !594
  %add68.i = add i32 %49, 4, !dbg !720
  store i32 %add68.i, ptr %back_res, align 4, !dbg !721, !tbaa !263, !alias.scope !529, !noalias !633
  store i32 %len_main.0.i, ptr %len_res, align 4, !dbg !722, !tbaa !263, !alias.scope !531, !noalias !635
  %sub69.i = add i32 %len_main.0.i, -1, !dbg !723
  call void @llvm.dbg.value(metadata ptr %mf, metadata !695, metadata !DIExpression()) #6, !dbg !724
  call void @llvm.dbg.value(metadata i32 %sub69.i, metadata !698, metadata !DIExpression()) #6, !dbg !724
  %cmp.not.i490.i = icmp eq i32 %sub69.i, 0, !dbg !726
  br i1 %cmp.not.i490.i, label %helper1.exit.thread315, label %if.then.i494.i, !dbg !727

if.then.i494.i:                                   ; preds = %if.then63.i
  %skip.i491.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !728
  %50 = load ptr, ptr %skip.i491.i, align 8, !dbg !728, !tbaa !706, !alias.scope !525, !noalias !592
  call void %50(ptr noundef nonnull %mf, i32 noundef %sub69.i) #6, !dbg !729, !noalias !592
  %51 = load i32, ptr %read_ahead, align 4, !dbg !730, !tbaa !271, !alias.scope !525, !noalias !592
  %add.i493.i = add i32 %51, %sub69.i, !dbg !730
  store i32 %add.i493.i, ptr %read_ahead, align 4, !dbg !730, !tbaa !271, !alias.scope !525, !noalias !592
  br label %helper1.exit.thread315, !dbg !731

if.end70.i:                                       ; preds = %if.end60.i
  call void @llvm.dbg.value(metadata i8 %35, metadata !559, metadata !DIExpression()) #6, !dbg !588
  %reps71.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !732
  %52 = load i32, ptr %reps71.i, align 4, !dbg !733, !tbaa !263, !noalias !594
  %idx.ext73.i = zext i32 %52 to i64, !dbg !734
  %idx.neg74.i = sub nsw i64 0, %idx.ext73.i, !dbg !734
  %add.ptr75.i = getelementptr inbounds i8, ptr %add.ptr.i120, i64 %idx.neg74.i, !dbg !734
  %add.ptr76.i = getelementptr inbounds i8, ptr %add.ptr75.i, i64 -1, !dbg !735
  %53 = load i8, ptr %add.ptr76.i, align 1, !dbg !736, !tbaa !367, !noalias !592
  call void @llvm.dbg.value(metadata i8 %53, metadata !560, metadata !DIExpression()) #6, !dbg !588
  %cmp77.i = icmp ugt i32 %len_main.0.i, 1, !dbg !737
  %cmp81.not.i = icmp eq i8 %35, %53
  %or.cond.i = select i1 %cmp77.i, i1 true, i1 %cmp81.not.i, !dbg !739
  %or.cond.not.i = xor i1 %or.cond.i, true, !dbg !739
  %cmp86.i = icmp ult i32 %36, 2
  %or.cond482.i = select i1 %or.cond.not.i, i1 %cmp86.i, i1 false, !dbg !739
  br i1 %or.cond482.i, label %if.then88.i, label %if.end89.i, !dbg !739

if.then88.i:                                      ; preds = %if.end70.i
  store i32 -1, ptr %back_res, align 4, !dbg !740, !tbaa !263, !alias.scope !529, !noalias !633
  store i32 1, ptr %len_res, align 4, !dbg !742, !tbaa !263, !alias.scope !531, !noalias !635
  br label %helper1.exit.thread315, !dbg !743

if.end89.i:                                       ; preds = %if.end70.i
  %state.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !744
  %54 = load i32, ptr %state.i, align 8, !dbg !744, !tbaa !745, !noalias !594
  %opts.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, !dbg !746
  store i32 %54, ptr %opts.i, align 4, !dbg !747, !tbaa !748, !noalias !594
  %pos_mask.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, !dbg !749
  %55 = load i32, ptr %pos_mask.i, align 8, !dbg !749, !tbaa !750, !noalias !594
  %and.i131 = and i32 %55, %position, !dbg !751
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !561, metadata !DIExpression()) #6, !dbg !588
  %idxprom93.i = zext i32 %54 to i64, !dbg !752
  %idxprom95.i = zext i32 %and.i131 to i64, !dbg !752
  %arrayidx96.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %idxprom93.i, i64 %idxprom95.i, !dbg !752
  %56 = load i16, ptr %arrayidx96.i, align 2, !dbg !752, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %56, metadata !753, metadata !DIExpression()) #6, !dbg !758
  %57 = lshr i16 %56, 4, !dbg !760
  %58 = zext i16 %57 to i64
  %arrayidx.i.i132 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %58, !dbg !761
  %59 = load i8, ptr %arrayidx.i.i132, align 1, !dbg !761, !tbaa !367, !noalias !592
  %conv1.i.i = zext i8 %59 to i32, !dbg !761
  %arrayidx98.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 -2, !dbg !762
  %60 = load i8, ptr %arrayidx98.i, align 1, !dbg !762, !tbaa !367, !noalias !592
  %conv99.i = zext i8 %60 to i32, !dbg !762
  %cmp101.i = icmp ugt i32 %54, 6, !dbg !763
  %conv104.i = zext i8 %35 to i32, !dbg !764
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !765, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %position, metadata !774, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %conv99.i, metadata !775, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i1 %cmp101.i, metadata !776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !792
  call void @llvm.dbg.value(metadata i8 %53, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %conv104.i, metadata !778, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !779, metadata !DIExpression()) #6, !dbg !792
  %literal_pos_mask.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, !dbg !794
  %61 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !794, !tbaa !795, !noalias !594
  %and.i.i133 = and i32 %61, %position, !dbg !794
  %literal_context_bits.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !794
  %62 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !794, !tbaa !796, !noalias !594
  %shl.i.i134 = shl i32 %and.i.i133, %62, !dbg !794
  %sub.i496.i = sub i32 8, %62, !dbg !794
  %shr.i.i135 = lshr i32 %conv99.i, %sub.i496.i, !dbg !794
  %add.i497.i = add i32 %shr.i.i135, %shl.i.i134, !dbg !794
  %idxprom.i.i136 = zext i32 %add.i497.i to i64, !dbg !794
  %arrayidx.i498.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i64 %idxprom.i.i136, !dbg !794
  call void @llvm.dbg.value(metadata ptr %arrayidx.i498.i, metadata !783, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()) #6, !dbg !792
  %add2.i.i = or i32 %conv104.i, 256, !dbg !797
  br i1 %cmp101.i, label %do.body.i.preheader.i, label %do.body.i.i.i, !dbg !798

do.body.i.preheader.i:                            ; preds = %if.end89.i
  %conv103.i = zext i8 %53 to i32, !dbg !799
  call void @llvm.dbg.value(metadata i32 %conv103.i, metadata !777, metadata !DIExpression()) #6, !dbg !792
  br label %do.body.i.i146, !dbg !800

do.body.i.i.i:                                    ; preds = %if.end89.i, %do.body.i.i.i
  %price.0.i.i.i = phi i32 [ %add1.i.i.i, %do.body.i.i.i ], [ 0, %if.end89.i ], !dbg !801
  %symbol.addr.0.i.i.i = phi i32 [ %shr.i.i.i138, %do.body.i.i.i ], [ %add2.i.i, %if.end89.i ], !dbg !801
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i.i, metadata !340, metadata !DIExpression()) #6, !dbg !801
  call void @llvm.dbg.value(metadata i32 %price.0.i.i.i, metadata !341, metadata !DIExpression()) #6, !dbg !801
  %and.i.i.i137 = and i32 %symbol.addr.0.i.i.i, 1, !dbg !804
  call void @llvm.dbg.value(metadata i32 %and.i.i.i137, metadata !342, metadata !DIExpression()) #6, !dbg !805
  %shr.i.i.i138 = lshr i32 %symbol.addr.0.i.i.i, 1, !dbg !806
  call void @llvm.dbg.value(metadata i32 %shr.i.i.i138, metadata !340, metadata !DIExpression()) #6, !dbg !801
  %idxprom.i.i.i139 = zext i32 %shr.i.i.i138 to i64, !dbg !807
  %arrayidx.i.i.i140 = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom.i.i.i139, !dbg !807
  %63 = load i16, ptr %arrayidx.i.i.i140, align 2, !dbg !807, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %63, metadata !353, metadata !DIExpression()) #6, !dbg !808
  call void @llvm.dbg.value(metadata i32 %and.i.i.i137, metadata !358, metadata !DIExpression()) #6, !dbg !808
  %conv.i.i.i.i = zext i16 %63 to i32, !dbg !810
  %sub.i.i.i.i = sub nsw i32 0, %and.i.i.i137, !dbg !811
  %and.i.i.i.i = and i32 %sub.i.i.i.i, 2032, !dbg !812
  %xor.i.i.i.i = xor i32 %and.i.i.i.i, %conv.i.i.i.i, !dbg !813
  %shr.i.i.i.i = lshr i32 %xor.i.i.i.i, 4, !dbg !814
  %idxprom.i.i.i.i = zext i32 %shr.i.i.i.i to i64, !dbg !815
  %arrayidx.i.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i.i, !dbg !815
  %64 = load i8, ptr %arrayidx.i.i.i.i, align 1, !dbg !815, !tbaa !367, !noalias !592
  %conv1.i.i.i.i = zext i8 %64 to i32, !dbg !815
  %add1.i.i.i = add i32 %price.0.i.i.i, %conv1.i.i.i.i, !dbg !816
  call void @llvm.dbg.value(metadata i32 %add1.i.i.i, metadata !341, metadata !DIExpression()) #6, !dbg !801
  %cmp.not.i.i.i = icmp eq i32 %shr.i.i.i138, 1, !dbg !817
  br i1 %cmp.not.i.i.i, label %get_literal_price.exit.i, label %do.body.i.i.i, !dbg !818, !llvm.loop !819

do.body.i.i146:                                   ; preds = %do.body.i.i146, %do.body.i.preheader.i
  %offset.0.i.i = phi i32 [ %and15.i.i, %do.body.i.i146 ], [ 256, %do.body.i.preheader.i ], !dbg !822
  %price.0.i.i141 = phi i32 [ %add13.i.i, %do.body.i.i146 ], [ 0, %do.body.i.preheader.i ], !dbg !792
  %symbol.addr.0.i.i142 = phi i32 [ %shl14.i.i, %do.body.i.i146 ], [ %add2.i.i, %do.body.i.preheader.i ], !dbg !822
  %match_byte.addr.0.i.i = phi i32 [ %shl3.i.i, %do.body.i.i146 ], [ %conv103.i, %do.body.i.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %match_byte.addr.0.i.i, metadata !777, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i142, metadata !778, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %price.0.i.i141, metadata !784, metadata !DIExpression()) #6, !dbg !792
  call void @llvm.dbg.value(metadata i32 %offset.0.i.i, metadata !785, metadata !DIExpression()) #6, !dbg !822
  %shl3.i.i = shl i32 %match_byte.addr.0.i.i, 1, !dbg !823
  call void @llvm.dbg.value(metadata i32 %shl3.i.i, metadata !777, metadata !DIExpression()) #6, !dbg !792
  %and4.i.i = and i32 %shl3.i.i, %offset.0.i.i, !dbg !824
  call void @llvm.dbg.value(metadata i32 %and4.i.i, metadata !788, metadata !DIExpression()) #6, !dbg !825
  %shr6.i.i = lshr i32 %symbol.addr.0.i.i142, 8, !dbg !826
  %add5.i.i = add i32 %shr6.i.i, %offset.0.i.i, !dbg !827
  %add7.i.i = add i32 %add5.i.i, %and4.i.i, !dbg !828
  call void @llvm.dbg.value(metadata i32 %add7.i.i, metadata !790, metadata !DIExpression()) #6, !dbg !825
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i142, metadata !791, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !825
  %idxprom10.i.i = zext i32 %add7.i.i to i64, !dbg !829
  %arrayidx11.i.i = getelementptr inbounds i16, ptr %arrayidx.i498.i, i64 %idxprom10.i.i, !dbg !829
  %65 = load i16, ptr %arrayidx11.i.i, align 2, !dbg !829, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %65, metadata !353, metadata !DIExpression()) #6, !dbg !830
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i142, metadata !358, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !830
  %conv.i.i.i143 = zext i16 %65 to i64, !dbg !832
  %.mask.i.i = and i32 %symbol.addr.0.i.i142, 128, !dbg !833
  %isneg.not.i.i = icmp eq i32 %.mask.i.i, 0, !dbg !833
  %and.i31.i.i = select i1 %isneg.not.i.i, i64 0, i64 2032, !dbg !833
  %xor.i.i.i144 = xor i64 %and.i31.i.i, %conv.i.i.i143, !dbg !834
  %shr.i32.i.i = lshr i64 %xor.i.i.i144, 4, !dbg !835
  %arrayidx.i34.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i, !dbg !836
  %66 = load i8, ptr %arrayidx.i34.i.i, align 1, !dbg !836, !tbaa !367, !noalias !592
  %conv1.i.i.i145 = zext i8 %66 to i32, !dbg !836
  %add13.i.i = add i32 %price.0.i.i141, %conv1.i.i.i145, !dbg !837
  call void @llvm.dbg.value(metadata i32 %add13.i.i, metadata !784, metadata !DIExpression()) #6, !dbg !792
  %shl14.i.i = shl nuw nsw i32 %symbol.addr.0.i.i142, 1, !dbg !838
  call void @llvm.dbg.value(metadata i32 %shl14.i.i, metadata !778, metadata !DIExpression()) #6, !dbg !792
  %67 = xor i32 %shl14.i.i, %shl3.i.i, !dbg !839
  %neg.i.i = xor i32 %67, -1, !dbg !839
  %and15.i.i = and i32 %offset.0.i.i, %neg.i.i, !dbg !840
  call void @llvm.dbg.value(metadata i32 %and15.i.i, metadata !785, metadata !DIExpression()) #6, !dbg !822
  %cmp.i.i = icmp ult i32 %symbol.addr.0.i.i142, 32768, !dbg !841
  br i1 %cmp.i.i, label %do.body.i.i146, label %get_literal_price.exit.i, !dbg !842, !llvm.loop !843

get_literal_price.exit.i:                         ; preds = %do.body.i.i.i, %do.body.i.i146
  %price.1.i.i = phi i32 [ %add13.i.i, %do.body.i.i146 ], [ %add1.i.i.i, %do.body.i.i.i ], !dbg !797
  call void @llvm.dbg.value(metadata i32 %price.1.i.i, metadata !784, metadata !DIExpression()) #6, !dbg !792
  %add106.i = add i32 %price.1.i.i, %conv1.i.i, !dbg !845
  %price.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 1, i32 5, !dbg !846
  store i32 %add106.i, ptr %price.i, align 4, !dbg !847, !tbaa !848, !noalias !594
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !849, metadata !DIExpression(DW_OP_plus_uconst, 69392, DW_OP_stack_value)) #6, !dbg !855
  %back_prev.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 1, i32 7, !dbg !857
  store i32 -1, ptr %back_prev.i.i, align 4, !dbg !858, !tbaa !265, !noalias !594
  %prev_1_is_literal.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 1, i32 1, !dbg !859
  store i8 0, ptr %prev_1_is_literal.i.i, align 4, !dbg !860, !tbaa !861, !noalias !594
  call void @llvm.dbg.value(metadata i16 %56, metadata !862, metadata !DIExpression()) #6, !dbg !865
  %68 = xor i16 %57, 127, !dbg !867
  %idxprom.i499.i = zext i16 %68 to i64, !dbg !868
  %arrayidx.i500.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i499.i, !dbg !868
  %69 = load i8, ptr %arrayidx.i500.i, align 1, !dbg !868, !tbaa !367, !noalias !592
  %conv1.i501.i = zext i8 %69 to i32, !dbg !868
  call void @llvm.dbg.value(metadata i32 %conv1.i501.i, metadata !562, metadata !DIExpression()) #6, !dbg !588
  %arrayidx120.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %idxprom93.i, !dbg !869
  %70 = load i16, ptr %arrayidx120.i, align 2, !dbg !869, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %70, metadata !862, metadata !DIExpression()) #6, !dbg !870
  %71 = lshr i16 %70, 4, !dbg !872
  %72 = xor i16 %71, 127, !dbg !872
  %idxprom.i502.i = zext i16 %72 to i64, !dbg !873
  %arrayidx.i503.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i502.i, !dbg !873
  %73 = load i8, ptr %arrayidx.i503.i, align 1, !dbg !873, !tbaa !367, !noalias !592
  %conv1.i504.i = zext i8 %73 to i32, !dbg !873
  %add122.i = add nuw nsw i32 %conv1.i504.i, %conv1.i501.i, !dbg !874
  call void @llvm.dbg.value(metadata i32 %add122.i, metadata !563, metadata !DIExpression()) #6, !dbg !588
  br i1 %cmp81.not.i, label %if.then127.i, label %if.end143.i, !dbg !875

if.then127.i:                                     ; preds = %get_literal_price.exit.i
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !876, metadata !DIExpression()) #6, !dbg !885
  call void @llvm.dbg.value(metadata i32 %54, metadata !882, metadata !DIExpression()) #6, !dbg !885
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !883, metadata !DIExpression()) #6, !dbg !885
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !884, metadata !DIExpression()) #6, !dbg !885
  %arrayidx.i506.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom93.i, !dbg !887
  %74 = load i16, ptr %arrayidx.i506.i, align 2, !dbg !887, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %74, metadata !753, metadata !DIExpression()) #6, !dbg !888
  %75 = lshr i16 %74, 4, !dbg !890
  %76 = zext i16 %75 to i64
  %arrayidx.i.i507.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %76, !dbg !891
  %77 = load i8, ptr %arrayidx.i.i507.i, align 1, !dbg !891, !tbaa !367, !noalias !592
  %conv1.i.i508.i = zext i8 %77 to i32, !dbg !891
  %arrayidx4.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom93.i, i64 %idxprom95.i, !dbg !892
  %78 = load i16, ptr %arrayidx4.i.i, align 2, !dbg !892, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %78, metadata !753, metadata !DIExpression()) #6, !dbg !893
  %79 = lshr i16 %78, 4, !dbg !895
  %80 = zext i16 %79 to i64
  %arrayidx.i8.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %80, !dbg !896
  %81 = load i8, ptr %arrayidx.i8.i.i, align 1, !dbg !896, !tbaa !367, !noalias !592
  %conv1.i9.i.i = zext i8 %81 to i32, !dbg !896
  %add.i509.i = add nuw nsw i32 %add122.i, %conv1.i.i508.i, !dbg !897
  %add130.i = add nuw nsw i32 %add.i509.i, %conv1.i9.i.i, !dbg !898
  call void @llvm.dbg.value(metadata i32 %add130.i, metadata !564, metadata !DIExpression()) #6, !dbg !899
  %cmp134.i = icmp ult i32 %add130.i, %add106.i, !dbg !900
  br i1 %cmp134.i, label %if.then136.i, label %if.end143.i, !dbg !902

if.then136.i:                                     ; preds = %if.then127.i
  store i32 %add130.i, ptr %price.i, align 4, !dbg !903, !tbaa !848, !noalias !594
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !905, metadata !DIExpression(DW_OP_plus_uconst, 69392, DW_OP_stack_value)) #6, !dbg !908
  store i32 0, ptr %back_prev.i.i, align 4, !dbg !910, !tbaa !265, !noalias !594
  br label %if.end143.i, !dbg !911

if.end143.i:                                      ; preds = %if.then136.i, %if.then127.i, %get_literal_price.exit.i
  %82 = phi i32 [ -1, %if.then127.i ], [ 0, %if.then136.i ], [ -1, %get_literal_price.exit.i ]
  %83 = call i32 @llvm.umax.i32(i32 %len_main.0.i, i32 %36) #6, !dbg !912
  call void @llvm.dbg.value(metadata i32 %83, metadata !567, metadata !DIExpression()) #6, !dbg !588
  %cmp154.i = icmp ult i32 %83, 2, !dbg !913
  br i1 %cmp154.i, label %if.then156.i, label %if.end159.i, !dbg !915

if.then156.i:                                     ; preds = %if.end143.i
  store i32 %82, ptr %back_res, align 4, !dbg !916, !tbaa !263, !alias.scope !529, !noalias !633
  store i32 1, ptr %len_res, align 4, !dbg !918, !tbaa !263, !alias.scope !531, !noalias !635
  br label %helper1.exit.thread315, !dbg !919

if.end159.i:                                      ; preds = %if.end143.i
  %pos_prev.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 1, i32 6, !dbg !920
  store i32 0, ptr %pos_prev.i, align 4, !dbg !921, !tbaa !259, !noalias !594
  call void @llvm.dbg.value(metadata i32 0, metadata !568, metadata !DIExpression()) #6, !dbg !922
  br label %for.body167.i, !dbg !923

for.body167.i:                                    ; preds = %for.body167.i, %if.end159.i
  %indvars.iv565.i = phi i64 [ 0, %if.end159.i ], [ %indvars.iv.next566.i, %for.body167.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv565.i, metadata !568, metadata !DIExpression()) #6, !dbg !922
  %arrayidx170.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv565.i, !dbg !924
  %84 = load i32, ptr %arrayidx170.i, align 4, !dbg !924, !tbaa !263, !noalias !594
  %arrayidx174.i = getelementptr inbounds %struct.lzma_optimal, ptr %opts.i, i64 0, i32 8, i64 %indvars.iv565.i, !dbg !926
  store i32 %84, ptr %arrayidx174.i, align 4, !dbg !927, !tbaa !263, !noalias !594
  %indvars.iv.next566.i = add nuw nsw i64 %indvars.iv565.i, 1, !dbg !928
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next566.i, metadata !568, metadata !DIExpression()) #6, !dbg !922
  %exitcond568.not.i = icmp eq i64 %indvars.iv.next566.i, 4, !dbg !929
  br i1 %exitcond568.not.i, label %do.body.preheader.i, label %for.body167.i, !dbg !923, !llvm.loop !930

do.body.preheader.i:                              ; preds = %for.body167.i
  %85 = zext i32 %83 to i64, !dbg !932
  br label %do.body.i, !dbg !932

do.body.i:                                        ; preds = %do.body.i, %do.body.preheader.i
  %indvars.iv569.i = phi i64 [ %85, %do.body.preheader.i ], [ %indvars.iv.next570.i, %do.body.i ], !dbg !588
  call void @llvm.dbg.value(metadata i64 %indvars.iv569.i, metadata !570, metadata !DIExpression()) #6, !dbg !588
  %price182.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv569.i, i32 5, !dbg !933
  store i32 1073741824, ptr %price182.i, align 4, !dbg !935, !tbaa !848, !noalias !594
  %indvars.iv.next570.i = add nsw i64 %indvars.iv569.i, -1, !dbg !936
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next570.i, metadata !570, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !588
  %86 = and i64 %indvars.iv.next570.i, 4294967294, !dbg !937
  %cmp183.not.i = icmp eq i64 %86, 0, !dbg !937
  br i1 %cmp183.not.i, label %for.cond186.preheader.i, label %do.body.i, !dbg !938, !llvm.loop !939

for.cond186.preheader.i:                          ; preds = %do.body.i
  call void @llvm.dbg.value(metadata i32 0, metadata !571, metadata !DIExpression()) #6, !dbg !941
  %arrayidx.i516.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom93.i
  %arrayidx13.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 16, i64 %idxprom93.i
  %arrayidx23.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 17, i64 %idxprom93.i
  %arrayidx4.i520.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom93.i, i64 %idxprom95.i
  br label %for.body190.i, !dbg !942

for.cond.cleanup189.i:                            ; preds = %cleanup232.i
  call void @llvm.dbg.value(metadata i16 %70, metadata !753, metadata !DIExpression()) #6, !dbg !943
  %87 = zext i16 %71 to i64
  %arrayidx.i512.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %87, !dbg !945
  %88 = load i8, ptr %arrayidx.i512.i, align 1, !dbg !945, !tbaa !367, !noalias !592
  %conv1.i513.i = zext i8 %88 to i32, !dbg !945
  call void @llvm.dbg.value(metadata i32 undef, metadata !579, metadata !DIExpression()) #6, !dbg !588
  %89 = load i32, ptr %rep_lens.i, align 16, !dbg !946, !tbaa !263, !noalias !594
  %add250.i = add i32 %89, 1
  %cmp246.inv.i = icmp ult i32 %89, 2, !dbg !946
  %spec.select483.i = select i1 %cmp246.inv.i, i32 2, i32 %add250.i, !dbg !946
  call void @llvm.dbg.value(metadata i32 %spec.select483.i, metadata !570, metadata !DIExpression()) #6, !dbg !588
  %cmp254.not.i = icmp ugt i32 %spec.select483.i, %len_main.0.i, !dbg !947
  br i1 %cmp254.not.i, label %helper1.exit, label %while.cond.i, !dbg !948

for.body190.i:                                    ; preds = %cleanup232.i, %for.cond186.preheader.i
  %indvars.iv572.i = phi i64 [ 0, %for.cond186.preheader.i ], [ %indvars.iv.next573.i, %cleanup232.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv572.i, metadata !571, metadata !DIExpression()) #6, !dbg !941
  %arrayidx192.i = getelementptr inbounds [4 x i32], ptr %rep_lens.i, i64 0, i64 %indvars.iv572.i, !dbg !949
  %90 = load i32, ptr %arrayidx192.i, align 4, !dbg !949, !tbaa !263, !noalias !594
  call void @llvm.dbg.value(metadata i32 %90, metadata !573, metadata !DIExpression()) #6, !dbg !950
  %cmp193.i = icmp ult i32 %90, 2, !dbg !951
  br i1 %cmp193.i, label %cleanup232.i, label %if.end196.i, !dbg !953

if.end196.i:                                      ; preds = %for.body190.i
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !954, metadata !DIExpression()) #6, !dbg !964
  call void @llvm.dbg.value(metadata i64 %indvars.iv572.i, metadata !959, metadata !DIExpression()) #6, !dbg !964
  call void @llvm.dbg.value(metadata i32 %54, metadata !960, metadata !DIExpression()) #6, !dbg !964
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !961, metadata !DIExpression()) #6, !dbg !964
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !962, metadata !DIExpression()) #6, !dbg !964
  %cmp.i514.i = icmp eq i64 %indvars.iv572.i, 0, !dbg !966
  %91 = load i16, ptr %arrayidx.i516.i, align 2, !dbg !968, !tbaa !352, !noalias !594
  %92 = lshr i16 %91, 4, !dbg !968
  br i1 %cmp.i514.i, label %if.then.i522.i, label %if.else.i.i, !dbg !969

if.then.i522.i:                                   ; preds = %if.end196.i
  call void @llvm.dbg.value(metadata i16 %91, metadata !753, metadata !DIExpression()) #6, !dbg !970
  %93 = zext i16 %92 to i64
  %arrayidx.i.i517.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %93, !dbg !973
  %94 = load i8, ptr %arrayidx.i.i517.i, align 1, !dbg !973, !tbaa !367, !noalias !592
  %conv1.i.i518.i = zext i8 %94 to i32, !dbg !973
  call void @llvm.dbg.value(metadata i32 %conv1.i.i518.i, metadata !963, metadata !DIExpression()) #6, !dbg !964
  %95 = load i16, ptr %arrayidx4.i520.i, align 2, !dbg !974, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %95, metadata !862, metadata !DIExpression()) #6, !dbg !975
  %96 = lshr i16 %95, 4, !dbg !977
  %97 = xor i16 %96, 127, !dbg !977
  %idxprom.i.i521.i = zext i16 %97 to i64, !dbg !978
  %arrayidx.i43.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i521.i, !dbg !978
  %98 = load i8, ptr %arrayidx.i43.i.i, align 1, !dbg !978, !tbaa !367, !noalias !592
  %conv1.i44.i.i = zext i8 %98 to i32, !dbg !978
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !964
  br label %get_pure_rep_price.exit.i, !dbg !979

if.else.i.i:                                      ; preds = %if.end196.i
  call void @llvm.dbg.value(metadata i16 %91, metadata !862, metadata !DIExpression()) #6, !dbg !980
  %99 = xor i16 %92, 127, !dbg !983
  %idxprom.i45.i.i = zext i16 %99 to i64, !dbg !984
  %arrayidx.i46.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i45.i.i, !dbg !984
  %100 = load i8, ptr %arrayidx.i46.i.i, align 1, !dbg !984, !tbaa !367, !noalias !592
  %conv1.i47.i.i = zext i8 %100 to i32, !dbg !984
  call void @llvm.dbg.value(metadata i32 %conv1.i47.i.i, metadata !963, metadata !DIExpression()) #6, !dbg !964
  %cmp10.i.i = icmp eq i64 %indvars.iv572.i, 1, !dbg !985
  %101 = load i16, ptr %arrayidx13.i.i, align 2, !dbg !987, !tbaa !352, !noalias !594
  %102 = lshr i16 %101, 4, !dbg !987
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else16.i.i, !dbg !988

if.then11.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.dbg.value(metadata i16 %101, metadata !753, metadata !DIExpression()) #6, !dbg !989
  %103 = zext i16 %102 to i64
  %arrayidx.i48.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %103, !dbg !992
  %104 = load i8, ptr %arrayidx.i48.i.i, align 1, !dbg !992, !tbaa !367, !noalias !592
  %conv1.i49.i.i = zext i8 %104 to i32, !dbg !992
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !964
  br label %get_pure_rep_price.exit.i, !dbg !993

if.else16.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.dbg.value(metadata i16 %101, metadata !862, metadata !DIExpression()) #6, !dbg !994
  %105 = xor i16 %102, 127, !dbg !997
  %idxprom.i50.i.i = zext i16 %105 to i64, !dbg !998
  %arrayidx.i51.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i50.i.i, !dbg !998
  %106 = load i8, ptr %arrayidx.i51.i.i, align 1, !dbg !998, !tbaa !367, !noalias !592
  %conv1.i52.i.i = zext i8 %106 to i32, !dbg !998
  %add21.i.i = add nuw nsw i32 %conv1.i52.i.i, %conv1.i47.i.i, !dbg !999
  call void @llvm.dbg.value(metadata i32 %add21.i.i, metadata !963, metadata !DIExpression()) #6, !dbg !964
  %107 = load i16, ptr %arrayidx23.i.i, align 2, !dbg !1000, !tbaa !352, !noalias !594
  call void @llvm.dbg.value(metadata i16 %107, metadata !353, metadata !DIExpression()) #6, !dbg !1001
  call void @llvm.dbg.value(metadata i64 %indvars.iv572.i, metadata !358, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1001
  %conv.i.i523.i = zext i16 %107 to i64, !dbg !1003
  %108 = sub nsw i64 2, %indvars.iv572.i, !dbg !1004
  %and.i.i524.i = and i64 %108, 2032, !dbg !1004
  %xor.i.i525.i = xor i64 %and.i.i524.i, %conv.i.i523.i, !dbg !1005
  %shr.i.i526.i = lshr i64 %xor.i.i525.i, 4, !dbg !1006
  %arrayidx.i54.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i526.i, !dbg !1007
  %109 = load i8, ptr %arrayidx.i54.i.i, align 1, !dbg !1007, !tbaa !367, !noalias !592
  %conv1.i55.i.i = zext i8 %109 to i32, !dbg !1007
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !964
  br label %get_pure_rep_price.exit.i

get_pure_rep_price.exit.i:                        ; preds = %if.else16.i.i, %if.then11.i.i, %if.then.i522.i
  %conv1.i47.sink.i.i = phi i32 [ %conv1.i47.i.i, %if.then11.i.i ], [ %conv1.i55.i.i, %if.else16.i.i ], [ %conv1.i.i518.i, %if.then.i522.i ]
  %conv1.i49.sink.i.i = phi i32 [ %conv1.i49.i.i, %if.then11.i.i ], [ %add21.i.i, %if.else16.i.i ], [ %conv1.i44.i.i, %if.then.i522.i ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !964
  call void @llvm.dbg.value(metadata i32 undef, metadata !576, metadata !DIExpression()) #6, !dbg !950
  %add15.i.i = add nuw nsw i32 %conv1.i47.sink.i.i, %add122.i
  %add200.i = add nsw i32 %add15.i.i, %conv1.i49.sink.i.i
  %110 = trunc i64 %indvars.iv572.i to i32
  br label %do.body201.i, !dbg !1008

do.body201.i:                                     ; preds = %if.end226.i, %get_pure_rep_price.exit.i
  %rep_len.0.i = phi i32 [ %90, %get_pure_rep_price.exit.i ], [ %dec228.i, %if.end226.i ], !dbg !950
  call void @llvm.dbg.value(metadata i32 %rep_len.0.i, metadata !573, metadata !DIExpression()) #6, !dbg !950
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %rep_len.0.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !1018, metadata !DIExpression()) #6, !dbg !1019
  %sub.i528.i = add i32 %rep_len.0.i, -2, !dbg !1021
  %idxprom1.i.i = zext i32 %sub.i528.i to i64, !dbg !1022
  %arrayidx2.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom95.i, i64 %idxprom1.i.i, !dbg !1022
  %111 = load i32, ptr %arrayidx2.i.i, align 4, !dbg !1022, !tbaa !263, !noalias !594
  %add203.i = add i32 %add200.i, %111, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %add203.i, metadata !577, metadata !DIExpression()) #6, !dbg !1024
  %idxprom205.i = zext i32 %rep_len.0.i to i64, !dbg !1025
  %price207.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom205.i, i32 5, !dbg !1027
  %112 = load i32, ptr %price207.i, align 4, !dbg !1027, !tbaa !848, !noalias !594
  %cmp208.i = icmp ult i32 %add203.i, %112, !dbg !1028
  br i1 %cmp208.i, label %if.then210.i, label %if.end226.i, !dbg !1029

if.then210.i:                                     ; preds = %do.body201.i
  store i32 %add203.i, ptr %price207.i, align 4, !dbg !1030, !tbaa !848, !noalias !594
  %pos_prev218.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom205.i, i32 6, !dbg !1032
  store i32 0, ptr %pos_prev218.i, align 4, !dbg !1033, !tbaa !259, !noalias !594
  %back_prev222.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom205.i, i32 7, !dbg !1034
  store i32 %110, ptr %back_prev222.i, align 4, !dbg !1035, !tbaa !265, !noalias !594
  %prev_1_is_literal.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom205.i, i32 1, !dbg !1036
  store i8 0, ptr %prev_1_is_literal.i, align 4, !dbg !1037, !tbaa !861, !noalias !594
  br label %if.end226.i, !dbg !1038

if.end226.i:                                      ; preds = %if.then210.i, %do.body201.i
  %dec228.i = add i32 %rep_len.0.i, -1, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %dec228.i, metadata !573, metadata !DIExpression()) #6, !dbg !950
  %cmp229.i = icmp ugt i32 %dec228.i, 1, !dbg !1040
  br i1 %cmp229.i, label %do.body201.i, label %cleanup232.i, !dbg !1041, !llvm.loop !1042

cleanup232.i:                                     ; preds = %if.end226.i, %for.body190.i
  %indvars.iv.next573.i = add nuw nsw i64 %indvars.iv572.i, 1, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next573.i, metadata !571, metadata !DIExpression()) #6, !dbg !941
  %exitcond577.not.i = icmp eq i64 %indvars.iv.next573.i, 4, !dbg !1045
  br i1 %exitcond577.not.i, label %for.cond.cleanup189.i, label %for.body190.i, !dbg !942, !llvm.loop !1046

while.cond.i:                                     ; preds = %for.cond.cleanup189.i, %while.cond.i
  %i257.0.i = phi i32 [ %inc264.i, %while.cond.i ], [ 0, %for.cond.cleanup189.i ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %i257.0.i, metadata !580, metadata !DIExpression()) #6, !dbg !1048
  %idxprom259.i = zext i32 %i257.0.i to i64, !dbg !1049
  %arrayidx260.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom259.i, !dbg !1049
  %113 = load i32, ptr %arrayidx260.i, align 4, !dbg !1050, !tbaa !1051, !noalias !594
  %cmp262.i = icmp ugt i32 %spec.select483.i, %113, !dbg !1052
  %inc264.i = add i32 %i257.0.i, 1, !dbg !1053
  call void @llvm.dbg.value(metadata i32 %inc264.i, metadata !580, metadata !DIExpression()) #6, !dbg !1048
  br i1 %cmp262.i, label %while.cond.i, label %for.cond265.preheader.i, !dbg !1054, !llvm.loop !1055

for.cond265.preheader.i:                          ; preds = %while.cond.i
  %add11.i.i = add nuw nsw i32 %conv1.i513.i, %conv1.i501.i
  %114 = load i32, ptr %matches_count.i, align 4, !noalias !594
  br label %for.cond265.i, !dbg !1057

for.cond265.i:                                    ; preds = %for.inc316.i, %for.cond265.preheader.i
  %len.1.i = phi i32 [ %inc317.i, %for.inc316.i ], [ %spec.select483.i, %for.cond265.preheader.i ], !dbg !588
  %i257.1.i = phi i32 [ %i257.2.i, %for.inc316.i ], [ %i257.0.i, %for.cond265.preheader.i ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 %i257.1.i, metadata !580, metadata !DIExpression()) #6, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !570, metadata !DIExpression()) #6, !dbg !588
  %idxprom268.i = zext i32 %i257.1.i to i64, !dbg !1058
  %arrayidx269.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom268.i, !dbg !1058
  %dist270.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom268.i, i32 1, !dbg !1059
  %115 = load i32, ptr %dist270.i, align 4, !dbg !1059, !tbaa !718, !noalias !594
  call void @llvm.dbg.value(metadata i32 %115, metadata !583, metadata !DIExpression()) #6, !dbg !1060
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1061, metadata !DIExpression()) #6, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %115, metadata !1066, metadata !DIExpression()) #6, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !1067, metadata !DIExpression()) #6, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !1068, metadata !DIExpression()) #6, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1069, metadata !DIExpression()) #6, !dbg !1075
  %cmp.i529.i = icmp ult i32 %len.1.i, 6, !dbg !1077
  br i1 %cmp.i529.i, label %cond.true.i.i, label %cond.end.i.i, !dbg !1077

cond.true.i.i:                                    ; preds = %for.cond265.i
  %sub.i530.i = add nsw i32 %len.1.i, -2, !dbg !1077
  %phi.cast.i.i = zext i32 %sub.i530.i to i64, !dbg !1077
  br label %cond.end.i.i, !dbg !1077

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.cond265.i
  %cond.i.i = phi i64 [ %phi.cast.i.i, %cond.true.i.i ], [ 3, %for.cond265.i ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1070, metadata !DIExpression()) #6, !dbg !1075
  %cmp1.i.i = icmp ult i32 %115, 128, !dbg !1078
  br i1 %cmp1.i.i, label %if.then.i531.i, label %if.else.i532.i, !dbg !1079

if.then.i531.i:                                   ; preds = %cond.end.i.i
  %idxprom2.i.i = zext i32 %115 to i64, !dbg !1080
  %arrayidx3.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 25, i64 %cond.i.i, i64 %idxprom2.i.i, !dbg !1080
  %116 = load i32, ptr %arrayidx3.i.i, align 4, !dbg !1080, !tbaa !263, !noalias !594
  call void @llvm.dbg.value(metadata i32 %116, metadata !1071, metadata !DIExpression()) #6, !dbg !1075
  br label %get_pos_len_price.exit.i, !dbg !1082

if.else.i532.i:                                   ; preds = %cond.end.i.i
  call void @llvm.dbg.value(metadata i32 %115, metadata !1083, metadata !DIExpression()) #6, !dbg !1086
  %cmp.i.i.i = icmp ult i32 %115, 524288, !dbg !1088
  br i1 %cmp.i.i.i, label %get_pos_slot_2.exit.i.i, label %if.end.i.i.i, !dbg !1090

if.end.i.i.i:                                     ; preds = %if.else.i532.i
  %cmp1.i.i.i = icmp sgt i32 %115, -1, !dbg !1091
  %..i.i.i = select i1 %cmp1.i.i.i, i32 18, i32 30, !dbg !1086
  %.21.i.i.i = select i1 %cmp1.i.i.i, i64 36, i64 60, !dbg !1086
  br label %get_pos_slot_2.exit.i.i, !dbg !1086

get_pos_slot_2.exit.i.i:                          ; preds = %if.end.i.i.i, %if.else.i532.i
  %.sink20.i.i.i = phi i32 [ 6, %if.else.i532.i ], [ %..i.i.i, %if.end.i.i.i ]
  %.sink.i.i.i = phi i64 [ 12, %if.else.i532.i ], [ %.21.i.i.i, %if.end.i.i.i ]
  %shr10.i.i.i = lshr i32 %115, %.sink20.i.i.i, !dbg !1086
  %idxprom11.i.i.i = zext i32 %shr10.i.i.i to i64, !dbg !1086
  %arrayidx12.i.i.i = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i, !dbg !1086
  %117 = load i8, ptr %arrayidx12.i.i.i, align 1, !dbg !1086, !tbaa !367, !noalias !592
  %conv13.i.i.i = zext i8 %117 to i64, !dbg !1086
  %add14.i.i.i = add nuw nsw i64 %.sink.i.i.i, %conv13.i.i.i, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %add14.i.i.i, metadata !1072, metadata !DIExpression()) #6, !dbg !1093
  %arrayidx7.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 24, i64 %cond.i.i, i64 %add14.i.i.i, !dbg !1094
  %118 = load i32, ptr %arrayidx7.i.i, align 4, !dbg !1094, !tbaa !263, !noalias !594
  %and.i533.i = and i32 %115, 15, !dbg !1095
  %idxprom8.i.i = zext i32 %and.i533.i to i64, !dbg !1096
  %arrayidx9.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 28, i64 %idxprom8.i.i, !dbg !1096
  %119 = load i32, ptr %arrayidx9.i.i, align 4, !dbg !1096, !tbaa !263, !noalias !594
  %add.i534.i = add i32 %119, %118, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %add.i534.i, metadata !1071, metadata !DIExpression()) #6, !dbg !1075
  br label %get_pos_len_price.exit.i

get_pos_len_price.exit.i:                         ; preds = %get_pos_slot_2.exit.i.i, %if.then.i531.i
  %price.0.i535.i = phi i32 [ %116, %if.then.i531.i ], [ %add.i534.i, %get_pos_slot_2.exit.i.i ], !dbg !1098
  call void @llvm.dbg.value(metadata i32 %price.0.i535.i, metadata !1071, metadata !DIExpression()) #6, !dbg !1075
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 29184, DW_OP_stack_value)) #6, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %len.1.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %and.i131, metadata !1018, metadata !DIExpression()) #6, !dbg !1099
  %sub.i.i537.i = add i32 %len.1.i, -2, !dbg !1101
  %idxprom1.i.i.i = zext i32 %sub.i.i537.i to i64, !dbg !1102
  %arrayidx2.i.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 5, i64 %idxprom95.i, i64 %idxprom1.i.i.i, !dbg !1102
  %120 = load i32, ptr %arrayidx2.i.i.i, align 4, !dbg !1102, !tbaa !263, !noalias !594
  call void @llvm.dbg.value(metadata i32 undef, metadata !1071, metadata !DIExpression()) #6, !dbg !1075
  %add244.i = add i32 %add11.i.i, %price.0.i535.i, !dbg !1103
  %add273.i = add i32 %add244.i, %120, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %add273.i, metadata !587, metadata !DIExpression()) #6, !dbg !1060
  %idxprom275.i = zext i32 %len.1.i to i64, !dbg !1105
  %price277.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom275.i, i32 5, !dbg !1107
  %121 = load i32, ptr %price277.i, align 4, !dbg !1107, !tbaa !848, !noalias !594
  %cmp278.i = icmp ult i32 %add273.i, %121, !dbg !1108
  br i1 %cmp278.i, label %if.then280.i, label %if.end298.i, !dbg !1109

if.then280.i:                                     ; preds = %get_pos_len_price.exit.i
  store i32 %add273.i, ptr %price277.i, align 4, !dbg !1110, !tbaa !848, !noalias !594
  %pos_prev288.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom275.i, i32 6, !dbg !1112
  store i32 0, ptr %pos_prev288.i, align 4, !dbg !1113, !tbaa !259, !noalias !594
  %add289.i = add i32 %115, 4, !dbg !1114
  %back_prev293.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom275.i, i32 7, !dbg !1115
  store i32 %add289.i, ptr %back_prev293.i, align 4, !dbg !1116, !tbaa !265, !noalias !594
  %prev_1_is_literal297.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom275.i, i32 1, !dbg !1117
  store i8 0, ptr %prev_1_is_literal297.i, align 4, !dbg !1118, !tbaa !861, !noalias !594
  br label %if.end298.i, !dbg !1119

if.end298.i:                                      ; preds = %if.then280.i, %get_pos_len_price.exit.i
  %122 = load i32, ptr %arrayidx269.i, align 4, !dbg !1120, !tbaa !1051, !noalias !594
  %cmp303.i = icmp eq i32 %len.1.i, %122, !dbg !1122
  br i1 %cmp303.i, label %if.then305.i, label %for.inc316.i, !dbg !1123

if.then305.i:                                     ; preds = %if.end298.i
  %inc306.i = add i32 %i257.1.i, 1, !dbg !1124
  call void @llvm.dbg.value(metadata i32 %inc306.i, metadata !580, metadata !DIExpression()) #6, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %114, metadata !545, metadata !DIExpression()) #6, !dbg !588
  %cmp307.i = icmp eq i32 %inc306.i, %114, !dbg !1126
  br i1 %cmp307.i, label %helper1.exit, label %for.inc316.i, !dbg !1127

for.inc316.i:                                     ; preds = %if.then305.i, %if.end298.i
  %i257.2.i = phi i32 [ %inc306.i, %if.then305.i ], [ %i257.1.i, %if.end298.i ], !dbg !1048
  call void @llvm.dbg.value(metadata i32 undef, metadata !580, metadata !DIExpression()) #6, !dbg !1048
  %inc317.i = add i32 %len.1.i, 1, !dbg !1128
  call void @llvm.dbg.value(metadata i32 %inc317.i, metadata !570, metadata !DIExpression()) #6, !dbg !588
  br label %for.cond265.i, !dbg !1129, !llvm.loop !1130

helper1.exit.thread315:                           ; preds = %if.then88.i, %if.then156.i, %if.then57.i, %if.then.i.i, %if.then63.i, %if.then.i494.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !636, !noalias !594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !636, !noalias !594
  call void @llvm.dbg.value(metadata i32 %83, metadata !236, metadata !DIExpression()), !dbg !239
  br label %cleanup45, !dbg !637

helper1.exit:                                     ; preds = %if.then305.i, %for.cond.cleanup189.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rep_lens.i) #6, !dbg !636, !noalias !594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count.i) #6, !dbg !636, !noalias !594
  call void @llvm.dbg.value(metadata i32 %83, metadata !236, metadata !DIExpression()), !dbg !239
  %cmp22 = icmp eq i32 %83, -1, !dbg !1132
  br i1 %cmp22, label %cleanup45, label %if.end24, !dbg !637

if.end24:                                         ; preds = %helper1.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reps) #6, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %reps, metadata !237, metadata !DIExpression()), !dbg !1135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %reps, ptr noundef nonnull align 4 dereferenceable(16) %reps71.i, i64 16, i1 false), !dbg !1136
  call void @llvm.dbg.value(metadata i32 1, metadata !238, metadata !DIExpression()), !dbg !239
  %matches_count = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !1137
  %matches = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !1141
  call void @llvm.dbg.value(metadata i32 %83, metadata !236, metadata !DIExpression()), !dbg !239
  %cmp27325 = icmp ugt i32 %83, 1, !dbg !1142
  br i1 %cmp27325, label %for.body.lr.ph, label %for.end, !dbg !1143

for.body.lr.ph:                                   ; preds = %if.end24
  %longest_match_length = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5
  %arrayidx583.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 5
  %arrayidx.i.i1450.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 5
  %arrayidx832.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 4
  %arrayidx.i.i1522.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 4
  %uglygep = getelementptr inbounds i8, ptr %reps, i64 4, !dbg !1143
  %uglygep350 = getelementptr i8, ptr %pcoder, i64 69376, !dbg !1143
  br label %for.body, !dbg !1143

for.body:                                         ; preds = %for.body.lr.ph, %helper2.exit
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %helper2.exit ]
  %indvar = phi i64 [ 0, %for.body.lr.ph ], [ %indvar.next, %helper2.exit ]
  %len_end.0326 = phi i32 [ %83, %for.body.lr.ph ], [ %retval.0.i, %helper2.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %len_end.0326, metadata !236, metadata !DIExpression()), !dbg !239
  %123 = mul nuw nsw i64 %indvar, 44, !dbg !1144
  %124 = add nuw nsw i64 %123, 69420, !dbg !1144
  %uglygep357 = getelementptr i8, ptr %pcoder, i64 %124, !dbg !1144
  %call29 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #6, !dbg !1144
  store i32 %call29, ptr %longest_match_length, align 8, !dbg !1145, !tbaa !608
  %125 = load i32, ptr %nice_len1.i311, align 8, !dbg !1146, !tbaa !591
  %cmp31.not = icmp ult i32 %call29, %125, !dbg !1148
  %126 = trunc i64 %indvars.iv to i32, !dbg !1149
  br i1 %cmp31.not, label %if.end33, label %for.end.loopexit, !dbg !1149

if.end33:                                         ; preds = %for.body
  %mf.val90 = load ptr, ptr %mf, align 8, !dbg !1150, !tbaa !639
  %mf.val91 = load i32, ptr %33, align 8, !dbg !1150, !tbaa !614
  call void @llvm.dbg.value(metadata ptr undef, metadata !640, metadata !DIExpression()), !dbg !1151
  %idx.ext.i147 = zext i32 %mf.val91 to i64, !dbg !1153
  %add.ptr.i148 = getelementptr inbounds i8, ptr %mf.val90, i64 -1, !dbg !1153
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i148, i64 %idx.ext.i147, !dbg !1154
  %add = add i32 %126, %position, !dbg !1155
  %mf.val89 = load i32, ptr %34, align 4, !dbg !1156, !tbaa !615
  call void @llvm.dbg.value(metadata ptr undef, metadata !616, metadata !DIExpression()), !dbg !1157
  %sub.i149 = sub i32 1, %mf.val91, !dbg !1159
  %add38 = add i32 %sub.i149, %mf.val89, !dbg !1156
  %sub39 = sub i32 4095, %126, !dbg !1156
  %127 = call i32 @llvm.umin.i32(i32 %add38, i32 %sub39), !dbg !1156
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1160, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %reps, metadata !1165, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1166, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %len_end.0326, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %add, metadata !1168, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1169, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %125, metadata !1170, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %127, metadata !1171, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1172, metadata !DIExpression()) #6, !dbg !1255
  %128 = load i32, ptr %matches_count, align 4, !dbg !1257, !tbaa !610
  call void @llvm.dbg.value(metadata i32 %128, metadata !1173, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %call29, metadata !1174, metadata !DIExpression()) #6, !dbg !1255
  %arrayidx.i152 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, !dbg !1258
  %pos_prev2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 6, !dbg !1259
  %129 = load i32, ptr %pos_prev2.i, align 4, !dbg !1259, !tbaa !259
  call void @llvm.dbg.value(metadata i32 %129, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  %prev_1_is_literal.i153 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 1, !dbg !1260
  %130 = load i8, ptr %prev_1_is_literal.i153, align 4, !dbg !1260, !tbaa !861, !range !1262
  %tobool.not.i = icmp eq i8 %130, 0, !dbg !1260
  br i1 %tobool.not.i, label %if.end44.thread.i, label %if.then.i154, !dbg !1263

if.then.i154:                                     ; preds = %if.end33
  %dec.i = add i32 %129, -1, !dbg !1264
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  %prev_2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 2, !dbg !1266
  %131 = load i8, ptr %prev_2.i, align 1, !dbg !1266, !tbaa !1268, !range !1262
  %tobool9.not.i = icmp eq i8 %131, 0, !dbg !1266
  br i1 %tobool9.not.i, label %if.end30.i, label %if.then10.i, !dbg !1269

if.then10.i:                                      ; preds = %if.then.i154
  %pos_prev_2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 3, !dbg !1270
  %132 = load i32, ptr %pos_prev_2.i, align 4, !dbg !1270, !tbaa !1272
  %idxprom15.i = zext i32 %132 to i64, !dbg !1273
  %arrayidx16.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom15.i, !dbg !1273
  %133 = load i32, ptr %arrayidx16.i, align 4, !dbg !1274, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %133, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %back_prev_2.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 4, !dbg !1275
  %134 = load i32, ptr %back_prev_2.i, align 4, !dbg !1275, !tbaa !1277
  %cmp.i155 = icmp ult i32 %134, 4, !dbg !1278
  %cmp22.i = icmp ult i32 %133, 7, !dbg !1279
  call void @llvm.dbg.value(metadata i32 undef, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %..i = select i1 %cmp.i155, i32 8, i32 7
  %.1723.i = select i1 %cmp.i155, i32 11, i32 10
  br i1 %cmp22.i, label %cond.true33.i, label %cond.false34.i

if.end30.i:                                       ; preds = %if.then.i154
  %idxprom27.i = zext i32 %dec.i to i64, !dbg !1280
  %arrayidx28.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom27.i, !dbg !1280
  %135 = load i32, ptr %arrayidx28.i, align 4, !dbg !1282, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %135, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %cmp31.i = icmp ult i32 %135, 4, !dbg !1283
  br i1 %cmp31.i, label %if.end44.thread1696.i, label %cond.false.i, !dbg !1283

cond.false.i:                                     ; preds = %if.end30.i
  %cmp32.i = icmp ult i32 %135, 10, !dbg !1283
  br i1 %cmp32.i, label %cond.true33.i, label %cond.false34.i, !dbg !1283

cond.true33.i:                                    ; preds = %cond.false.i, %if.then10.i
  %state.015331569.i = phi i32 [ %135, %cond.false.i ], [ %..i, %if.then10.i ]
  %sub.i156 = add nsw i32 %state.015331569.i, -3, !dbg !1283
  br label %if.end44.i, !dbg !1283

cond.false34.i:                                   ; preds = %cond.false.i, %if.then10.i
  %state.015331575.i = phi i32 [ %135, %cond.false.i ], [ %.1723.i, %if.then10.i ]
  %sub35.i = add i32 %state.015331575.i, -6, !dbg !1283
  br label %if.end44.i, !dbg !1283

if.end44.i:                                       ; preds = %cond.false34.i, %cond.true33.i
  %state.1.i = phi i32 [ %sub.i156, %cond.true33.i ], [ %sub35.i, %cond.false34.i ], !dbg !1284
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %state.1.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %136 = zext i32 %129 to i64, !dbg !1285
  %cmp46.i = icmp eq i64 %indvars.iv, %136, !dbg !1285
  br i1 %cmp46.i, label %if.then47.i, label %land.lhs.true.i, !dbg !1286

if.end44.thread1696.i:                            ; preds = %if.end30.i
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %state.1.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %137 = zext i32 %129 to i64, !dbg !1285
  %cmp461698.i = icmp eq i64 %indvars.iv, %137, !dbg !1285
  br i1 %cmp461698.i, label %if.then47.thread.i, label %if.else91.i, !dbg !1286

if.end44.thread.i:                                ; preds = %if.end33
  %idxprom41.i = zext i32 %129 to i64, !dbg !1287
  %arrayidx42.i157 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom41.i, !dbg !1287
  %138 = load i32, ptr %arrayidx42.i157, align 4, !dbg !1289, !tbaa !748
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %state.1.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %139 = add nsw i64 %indvars.iv, -1, !dbg !1290
  %cmp461537.i = icmp eq i64 %139, %idxprom41.i, !dbg !1285
  br i1 %cmp461537.i, label %if.then47.i, label %if.else91.i, !dbg !1286

if.then47.i:                                      ; preds = %if.end44.thread.i, %if.end44.i
  %state.11538.i = phi i32 [ %138, %if.end44.thread.i ], [ %state.1.i, %if.end44.i ]
  %back_prev.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 7, !dbg !1291
  %140 = load i32, ptr %back_prev.i, align 4, !dbg !1291, !tbaa !265
  %cmp51.i = icmp eq i32 %140, 0, !dbg !1291
  br i1 %cmp51.i, label %if.then52.i, label %if.else55.i, !dbg !1294

if.then47.thread.i:                               ; preds = %if.end44.thread1696.i
  %back_prev1707.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 7, !dbg !1291
  %141 = load i32, ptr %back_prev1707.i, align 4, !dbg !1291, !tbaa !265
  %cmp511708.i = icmp eq i32 %141, 0, !dbg !1291
  br i1 %cmp511708.i, label %if.then52.thread.i, label %if.end157.i, !dbg !1294

if.then52.i:                                      ; preds = %if.then47.i
  %cmp53.i = icmp ult i32 %state.11538.i, 7, !dbg !1295
  br i1 %cmp53.i, label %if.then52.thread.i, label %if.end157.i, !dbg !1295

if.then52.thread.i:                               ; preds = %if.then52.i, %if.then47.thread.i
  br label %if.end157.i, !dbg !1295

if.else55.i:                                      ; preds = %if.then47.i
  %cmp56.i = icmp ult i32 %state.11538.i, 4, !dbg !1296
  br i1 %cmp56.i, label %if.end157.i, label %cond.false58.i, !dbg !1296

cond.false58.i:                                   ; preds = %if.else55.i
  %cmp59.i = icmp ult i32 %state.11538.i, 10, !dbg !1296
  br i1 %cmp59.i, label %cond.true60.i, label %cond.false62.i, !dbg !1296

cond.true60.i:                                    ; preds = %cond.false58.i
  %sub61.i = add nsw i32 %state.11538.i, -3, !dbg !1296
  br label %if.end157.i, !dbg !1296

cond.false62.i:                                   ; preds = %cond.false58.i
  %sub63.i = add i32 %state.11538.i, -6, !dbg !1296
  br label %if.end157.i, !dbg !1296

land.lhs.true.i:                                  ; preds = %if.end44.i
  br i1 %tobool9.not.i, label %if.else91.i, label %if.end104.i, !dbg !1297

if.else91.i:                                      ; preds = %land.lhs.true.i, %if.end44.thread.i, %if.end44.thread1696.i
  %pos_prev.015411544.i = phi i32 [ %dec.i, %land.lhs.true.i ], [ %129, %if.end44.thread.i ], [ %dec.i, %if.end44.thread1696.i ]
  %state.11540.i = phi i32 [ %state.1.i, %land.lhs.true.i ], [ %138, %if.end44.thread.i ], [ 0, %if.end44.thread1696.i ]
  %back_prev95.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 7, !dbg !1298
  %142 = load i32, ptr %back_prev95.i, align 4, !dbg !1298, !tbaa !265
  call void @llvm.dbg.value(metadata i32 %142, metadata !1177, metadata !DIExpression()) #6, !dbg !1301
  %cmp96.i = icmp ult i32 %142, 4, !dbg !1302
  %cmp98.i = icmp ult i32 %state.11540.i, 7, !dbg !1304
  br i1 %cmp96.i, label %if.end104.thread.i, label %if.end104.thread1552.i, !dbg !1305

if.end104.thread.i:                               ; preds = %if.else91.i
  %cond99.i = select i1 %cmp98.i, i32 8, i32 11, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %143, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %cond90.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %144, metadata !1177, metadata !DIExpression()) #6, !dbg !1301
  br label %if.then106.i, !dbg !1307

if.end104.thread1552.i:                           ; preds = %if.else91.i
  %cond102.i = select i1 %cmp98.i, i32 7, i32 10, !dbg !1308
  call void @llvm.dbg.value(metadata i32 %143, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %cond90.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %144, metadata !1177, metadata !DIExpression()) #6, !dbg !1301
  br label %if.else137.i, !dbg !1307

if.end104.i:                                      ; preds = %land.lhs.true.i
  %pos_prev_284.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 3, !dbg !1309
  %143 = load i32, ptr %pos_prev_284.i, align 4, !dbg !1309, !tbaa !1272
  call void @llvm.dbg.value(metadata i32 %143, metadata !1175, metadata !DIExpression()) #6, !dbg !1255
  %back_prev_288.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 4, !dbg !1311
  %144 = load i32, ptr %back_prev_288.i, align 4, !dbg !1311, !tbaa !1277
  call void @llvm.dbg.value(metadata i32 %144, metadata !1177, metadata !DIExpression()) #6, !dbg !1301
  %cmp89.i = icmp ult i32 %state.1.i, 7, !dbg !1312
  %cond90.i = select i1 %cmp89.i, i32 8, i32 11, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %cond90.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  %cmp105.i = icmp ult i32 %144, 4, !dbg !1313
  br i1 %cmp105.i, label %if.then106.i, label %if.else137.i, !dbg !1307

if.then106.i:                                     ; preds = %if.end104.i, %if.end104.thread.i
  %pos_prev.11551.i = phi i32 [ %pos_prev.015411544.i, %if.end104.thread.i ], [ %143, %if.end104.i ]
  %state.21550.i = phi i32 [ %cond99.i, %if.end104.thread.i ], [ %cond90.i, %if.end104.i ]
  %pos.01549.i = phi i32 [ %142, %if.end104.thread.i ], [ %144, %if.end104.i ]
  %idxprom108.i = zext i32 %pos_prev.11551.i to i64, !dbg !1314
  %idxprom110.i = zext i32 %pos.01549.i to i64, !dbg !1314
  %arrayidx111.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom108.i, i32 8, i64 %idxprom110.i, !dbg !1314
  %145 = load i32, ptr %arrayidx111.i, align 4, !dbg !1314, !tbaa !263
  store i32 %145, ptr %reps, align 16, !dbg !1315, !tbaa !263
  call void @llvm.dbg.value(metadata i32 1, metadata !1180, metadata !DIExpression()) #6, !dbg !1316
  %cmp113.not1579.i = icmp eq i32 %pos.01549.i, 0, !dbg !1317
  br i1 %cmp113.not1579.i, label %if.then106.i.for.body125.preheader.i_crit_edge, label %for.body.preheader.i, !dbg !1320

if.then106.i.for.body125.preheader.i_crit_edge:   ; preds = %if.then106.i
  %.pre360 = mul nuw nsw i64 %idxprom108.i, 44, !dbg !1321
  br label %for.body125.preheader.i, !dbg !1320

for.body.preheader.i:                             ; preds = %if.then106.i
  %146 = add nuw nsw i32 %pos.01549.i, 1, !dbg !1320
  %wide.trip.count.i158 = zext i32 %146 to i64, !dbg !1317
  %147 = mul nuw nsw i64 %idxprom108.i, 44, !dbg !1320
  %uglygep353 = getelementptr i8, ptr %uglygep350, i64 %147, !dbg !1320
  %148 = shl nuw nsw i64 %wide.trip.count.i158, 2, !dbg !1320
  %149 = add nsw i64 %148, -4, !dbg !1320
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %uglygep, ptr align 4 %uglygep353, i64 %149, i1 false), !dbg !1323, !tbaa !263
  call void @llvm.dbg.value(metadata i32 %146, metadata !1180, metadata !DIExpression()) #6, !dbg !1316
  %cmp1241581.i = icmp ult i32 %pos.01549.i, 3, !dbg !1324
  br i1 %cmp1241581.i, label %for.body125.preheader.i, label %if.end157.i, !dbg !1321

for.body125.preheader.i:                          ; preds = %if.then106.i.for.body125.preheader.i_crit_edge, %for.body.preheader.i
  %.pre-phi = phi i64 [ %.pre360, %if.then106.i.for.body125.preheader.i_crit_edge ], [ %147, %for.body.preheader.i ], !dbg !1321
  %i.0.lcssa1703.i = phi i32 [ 1, %if.then106.i.for.body125.preheader.i_crit_edge ], [ %146, %for.body.preheader.i ]
  %150 = zext i32 %i.0.lcssa1703.i to i64, !dbg !1321
  %151 = shl nuw nsw i64 %150, 2, !dbg !1321
  %uglygep354 = getelementptr i8, ptr %reps, i64 %151, !dbg !1321
  %152 = add nuw nsw i64 %.pre-phi, %151, !dbg !1321
  %uglygep356 = getelementptr i8, ptr %uglygep350, i64 %152, !dbg !1321
  %153 = sub nuw nsw i32 2, %pos.01549.i, !dbg !1321
  %154 = zext i32 %153 to i64, !dbg !1321
  %155 = shl nuw nsw i64 %154, 2, !dbg !1321
  %156 = add nuw nsw i64 %155, 4, !dbg !1321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %uglygep354, ptr noundef nonnull align 4 dereferenceable(1) %uglygep356, i64 %156, i1 false), !dbg !1326, !tbaa !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !1180, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1316
  br label %if.end157.i, !dbg !1327

if.else137.i:                                     ; preds = %if.end104.i, %if.end104.thread1552.i
  %pos_prev.11559.i = phi i32 [ %pos_prev.015411544.i, %if.end104.thread1552.i ], [ %143, %if.end104.i ]
  %state.21558.i = phi i32 [ %cond102.i, %if.end104.thread1552.i ], [ %cond90.i, %if.end104.i ]
  %pos.01557.i = phi i32 [ %142, %if.end104.thread1552.i ], [ %144, %if.end104.i ]
  %sub138.i = add i32 %pos.01557.i, -4, !dbg !1328
  store i32 %sub138.i, ptr %reps, align 16, !dbg !1329, !tbaa !263
  call void @llvm.dbg.value(metadata i32 1, metadata !1183, metadata !DIExpression()) #6, !dbg !1330
  %idxprom145.i = zext i32 %pos_prev.11559.i to i64
  %157 = mul nuw nsw i64 %idxprom145.i, 44, !dbg !1331
  %uglygep351 = getelementptr i8, ptr %uglygep350, i64 %157, !dbg !1331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %uglygep, ptr noundef nonnull align 4 dereferenceable(12) %uglygep351, i64 12, i1 false), !dbg !1332, !tbaa !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !1183, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1330
  br label %if.end157.i, !dbg !1327

if.end157.i:                                      ; preds = %if.else137.i, %for.body125.preheader.i, %for.body.preheader.i, %cond.false62.i, %cond.true60.i, %if.else55.i, %if.then52.thread.i, %if.then52.i, %if.then47.thread.i
  %state.3.i = phi i32 [ 0, %if.else55.i ], [ %sub61.i, %cond.true60.i ], [ %sub63.i, %cond.false62.i ], [ %state.21550.i, %for.body.preheader.i ], [ 0, %if.then47.thread.i ], [ 9, %if.then52.thread.i ], [ 11, %if.then52.i ], [ %state.21550.i, %for.body125.preheader.i ], [ %state.21558.i, %if.else137.i ], !dbg !1334
  call void @llvm.dbg.value(metadata i32 %state.3.i, metadata !1176, metadata !DIExpression()) #6, !dbg !1255
  store i32 %state.3.i, ptr %arrayidx.i152, align 4, !dbg !1327, !tbaa !748
  call void @llvm.dbg.value(metadata i32 0, metadata !1186, metadata !DIExpression()) #6, !dbg !1335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %uglygep357, ptr noundef nonnull align 16 dereferenceable(16) %reps, i64 16, i1 false), !dbg !1336, !tbaa !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !1186, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1335
  %price.i164 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv, i32 5, !dbg !1338
  %158 = load i32, ptr %price.i164, align 4, !dbg !1338, !tbaa !848
  call void @llvm.dbg.value(metadata i32 %158, metadata !1188, metadata !DIExpression()) #6, !dbg !1255
  %159 = load i8, ptr %add.ptr, align 1, !dbg !1339, !tbaa !367
  call void @llvm.dbg.value(metadata i8 %159, metadata !1189, metadata !DIExpression()) #6, !dbg !1255
  %160 = load i32, ptr %reps, align 16, !dbg !1340, !tbaa !263
  %idx.ext.i165 = zext i32 %160 to i64, !dbg !1341
  %idx.neg.i166 = sub nsw i64 0, %idx.ext.i165, !dbg !1341
  %add.ptr.i167 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1341
  %add.ptr182.i = getelementptr inbounds i8, ptr %add.ptr.i167, i64 %idx.neg.i166, !dbg !1342
  %161 = load i8, ptr %add.ptr182.i, align 1, !dbg !1343, !tbaa !367
  call void @llvm.dbg.value(metadata i8 %161, metadata !1190, metadata !DIExpression()) #6, !dbg !1255
  %162 = load i32, ptr %pos_mask.i, align 8, !dbg !1344, !tbaa !750
  %and.i169 = and i32 %162, %add, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !1191, metadata !DIExpression()) #6, !dbg !1255
  %idxprom183.i = zext i32 %state.3.i to i64, !dbg !1346
  %idxprom185.i = zext i32 %and.i169 to i64, !dbg !1346
  %arrayidx186.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %idxprom183.i, i64 %idxprom185.i, !dbg !1346
  %163 = load i16, ptr %arrayidx186.i, align 2, !dbg !1346, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %163, metadata !753, metadata !DIExpression()) #6, !dbg !1347
  %164 = lshr i16 %163, 4, !dbg !1349
  %165 = zext i16 %164 to i64
  %arrayidx.i.i170 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %165, !dbg !1350
  %166 = load i8, ptr %arrayidx.i.i170, align 1, !dbg !1350, !tbaa !367
  %conv1.i.i171 = zext i8 %166 to i32, !dbg !1350
  %add.i172 = add i32 %158, %conv1.i.i171, !dbg !1351
  %arrayidx187.i = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !1352
  %167 = load i8, ptr %arrayidx187.i, align 1, !dbg !1352, !tbaa !367
  %conv.i = zext i8 %167 to i32, !dbg !1352
  %cmp188.i = icmp ult i32 %state.3.i, 7, !dbg !1353
  %conv191.i = zext i8 %159 to i32, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !765, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %add, metadata !774, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !775, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i1 %cmp188.i, metadata !776, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i8 %161, metadata !777, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %conv191.i, metadata !778, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !779, metadata !DIExpression()) #6, !dbg !1355
  %168 = load i32, ptr %literal_pos_mask.i.i, align 8, !dbg !1357, !tbaa !795
  %and.i.i174 = and i32 %168, %add, !dbg !1357
  %169 = load i32, ptr %literal_context_bits.i.i, align 4, !dbg !1357, !tbaa !796
  %shl.i.i176 = shl i32 %and.i.i174, %169, !dbg !1357
  %sub.i.i177 = sub i32 8, %169, !dbg !1357
  %shr.i.i178 = lshr i32 %conv.i, %sub.i.i177, !dbg !1357
  %add.i.i179 = add i32 %shr.i.i178, %shl.i.i176, !dbg !1357
  %idxprom.i.i180 = zext i32 %add.i.i179 to i64, !dbg !1357
  %arrayidx.i1355.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i64 %idxprom.i.i180, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %arrayidx.i1355.i, metadata !783, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()) #6, !dbg !1355
  %add2.i.i181 = or i32 %conv191.i, 256, !dbg !1358
  br i1 %cmp188.i, label %do.body.i.i.i199, label %do.body.i.preheader.i182, !dbg !1359

do.body.i.preheader.i182:                         ; preds = %if.end157.i
  %conv190.i = zext i8 %161 to i32, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %conv190.i, metadata !777, metadata !DIExpression()) #6, !dbg !1355
  br label %do.body.i.i224, !dbg !1361

do.body.i.i.i199:                                 ; preds = %if.end157.i, %do.body.i.i.i199
  %price.0.i.i.i183 = phi i32 [ %add1.i.i.i197, %do.body.i.i.i199 ], [ 0, %if.end157.i ], !dbg !1362
  %symbol.addr.0.i.i.i184 = phi i32 [ %shr.i.i.i186, %do.body.i.i.i199 ], [ %add2.i.i181, %if.end157.i ], !dbg !1362
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i.i184, metadata !340, metadata !DIExpression()) #6, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %price.0.i.i.i183, metadata !341, metadata !DIExpression()) #6, !dbg !1362
  %and.i.i.i185 = and i32 %symbol.addr.0.i.i.i184, 1, !dbg !1364
  call void @llvm.dbg.value(metadata i32 %and.i.i.i185, metadata !342, metadata !DIExpression()) #6, !dbg !1365
  %shr.i.i.i186 = lshr i32 %symbol.addr.0.i.i.i184, 1, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %shr.i.i.i186, metadata !340, metadata !DIExpression()) #6, !dbg !1362
  %idxprom.i.i.i187 = zext i32 %shr.i.i.i186 to i64, !dbg !1367
  %arrayidx.i.i.i188 = getelementptr inbounds i16, ptr %arrayidx.i1355.i, i64 %idxprom.i.i.i187, !dbg !1367
  %170 = load i16, ptr %arrayidx.i.i.i188, align 2, !dbg !1367, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %170, metadata !353, metadata !DIExpression()) #6, !dbg !1368
  call void @llvm.dbg.value(metadata i32 %and.i.i.i185, metadata !358, metadata !DIExpression()) #6, !dbg !1368
  %conv.i.i.i.i189 = zext i16 %170 to i32, !dbg !1370
  %sub.i.i.i.i190 = sub nsw i32 0, %and.i.i.i185, !dbg !1371
  %and.i.i.i.i191 = and i32 %sub.i.i.i.i190, 2032, !dbg !1372
  %xor.i.i.i.i192 = xor i32 %and.i.i.i.i191, %conv.i.i.i.i189, !dbg !1373
  %shr.i.i.i.i193 = lshr i32 %xor.i.i.i.i192, 4, !dbg !1374
  %idxprom.i.i.i.i194 = zext i32 %shr.i.i.i.i193 to i64, !dbg !1375
  %arrayidx.i.i.i.i195 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i.i194, !dbg !1375
  %171 = load i8, ptr %arrayidx.i.i.i.i195, align 1, !dbg !1375, !tbaa !367
  %conv1.i.i.i.i196 = zext i8 %171 to i32, !dbg !1375
  %add1.i.i.i197 = add i32 %price.0.i.i.i183, %conv1.i.i.i.i196, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %add1.i.i.i197, metadata !341, metadata !DIExpression()) #6, !dbg !1362
  %cmp.not.i.i.i198 = icmp eq i32 %shr.i.i.i186, 1, !dbg !1377
  br i1 %cmp.not.i.i.i198, label %get_literal_price.exit.i226, label %do.body.i.i.i199, !dbg !1378, !llvm.loop !1379

do.body.i.i224:                                   ; preds = %do.body.i.i224, %do.body.i.preheader.i182
  %offset.0.i.i200 = phi i32 [ %and15.i.i222, %do.body.i.i224 ], [ 256, %do.body.i.preheader.i182 ], !dbg !1382
  %price.0.i.i201 = phi i32 [ %add13.i.i219, %do.body.i.i224 ], [ 0, %do.body.i.preheader.i182 ], !dbg !1355
  %symbol.addr.0.i.i202 = phi i32 [ %shl14.i.i220, %do.body.i.i224 ], [ %add2.i.i181, %do.body.i.preheader.i182 ], !dbg !1382
  %match_byte.addr.0.i.i203 = phi i32 [ %shl3.i.i204, %do.body.i.i224 ], [ %conv190.i, %do.body.i.preheader.i182 ]
  call void @llvm.dbg.value(metadata i32 %match_byte.addr.0.i.i203, metadata !777, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i202, metadata !778, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %price.0.i.i201, metadata !784, metadata !DIExpression()) #6, !dbg !1355
  call void @llvm.dbg.value(metadata i32 %offset.0.i.i200, metadata !785, metadata !DIExpression()) #6, !dbg !1382
  %shl3.i.i204 = shl i32 %match_byte.addr.0.i.i203, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i32 %shl3.i.i204, metadata !777, metadata !DIExpression()) #6, !dbg !1355
  %and4.i.i205 = and i32 %shl3.i.i204, %offset.0.i.i200, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %and4.i.i205, metadata !788, metadata !DIExpression()) #6, !dbg !1385
  %shr6.i.i206 = lshr i32 %symbol.addr.0.i.i202, 8, !dbg !1386
  %add5.i.i207 = add i32 %shr6.i.i206, %offset.0.i.i200, !dbg !1387
  %add7.i.i208 = add i32 %add5.i.i207, %and4.i.i205, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %add7.i.i208, metadata !790, metadata !DIExpression()) #6, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i202, metadata !791, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1385
  %idxprom10.i.i209 = zext i32 %add7.i.i208 to i64, !dbg !1389
  %arrayidx11.i.i210 = getelementptr inbounds i16, ptr %arrayidx.i1355.i, i64 %idxprom10.i.i209, !dbg !1389
  %172 = load i16, ptr %arrayidx11.i.i210, align 2, !dbg !1389, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %172, metadata !353, metadata !DIExpression()) #6, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i.i202, metadata !358, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1390
  %conv.i.i.i211 = zext i16 %172 to i64, !dbg !1392
  %.mask.i.i212 = and i32 %symbol.addr.0.i.i202, 128, !dbg !1393
  %isneg.not.i.i213 = icmp eq i32 %.mask.i.i212, 0, !dbg !1393
  %and.i31.i.i214 = select i1 %isneg.not.i.i213, i64 0, i64 2032, !dbg !1393
  %xor.i.i.i215 = xor i64 %and.i31.i.i214, %conv.i.i.i211, !dbg !1394
  %shr.i32.i.i216 = lshr i64 %xor.i.i.i215, 4, !dbg !1395
  %arrayidx.i34.i.i217 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i.i216, !dbg !1396
  %173 = load i8, ptr %arrayidx.i34.i.i217, align 1, !dbg !1396, !tbaa !367
  %conv1.i.i.i218 = zext i8 %173 to i32, !dbg !1396
  %add13.i.i219 = add i32 %price.0.i.i201, %conv1.i.i.i218, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %add13.i.i219, metadata !784, metadata !DIExpression()) #6, !dbg !1355
  %shl14.i.i220 = shl nuw nsw i32 %symbol.addr.0.i.i202, 1, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %shl14.i.i220, metadata !778, metadata !DIExpression()) #6, !dbg !1355
  %174 = xor i32 %shl14.i.i220, %shl3.i.i204, !dbg !1399
  %neg.i.i221 = xor i32 %174, -1, !dbg !1399
  %and15.i.i222 = and i32 %offset.0.i.i200, %neg.i.i221, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %and15.i.i222, metadata !785, metadata !DIExpression()) #6, !dbg !1382
  %cmp.i.i223 = icmp ult i32 %symbol.addr.0.i.i202, 32768, !dbg !1401
  br i1 %cmp.i.i223, label %do.body.i.i224, label %get_literal_price.exit.i226, !dbg !1402, !llvm.loop !1403

get_literal_price.exit.i226:                      ; preds = %do.body.i.i224, %do.body.i.i.i199
  %price.1.i.i225 = phi i32 [ %add1.i.i.i197, %do.body.i.i.i199 ], [ %add13.i.i219, %do.body.i.i224 ], !dbg !1358
  call void @llvm.dbg.value(metadata i32 %price.1.i.i225, metadata !784, metadata !DIExpression()) #6, !dbg !1355
  %add193.i = add i32 %add.i172, %price.1.i.i225, !dbg !1405
  call void @llvm.dbg.value(metadata i32 %add193.i, metadata !1192, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i8 0, metadata !1193, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1406
  %indvars = trunc i64 %indvars.iv.next to i32, !dbg !1406
  %price198.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 5, !dbg !1408
  %175 = load i32, ptr %price198.i, align 4, !dbg !1408, !tbaa !848
  %cmp199.i = icmp ult i32 %add193.i, %175, !dbg !1409
  br i1 %cmp199.i, label %if.then201.i, label %if.end216.i, !dbg !1410

if.then201.i:                                     ; preds = %get_literal_price.exit.i226
  store i32 %add193.i, ptr %price198.i, align 4, !dbg !1411, !tbaa !848
  %pos_prev211.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 6, !dbg !1413
  store i32 %126, ptr %pos_prev211.i, align 4, !dbg !1414, !tbaa !259
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pcoder, i64 %indvars.iv.next), metadata !849, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 44, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 69348, DW_OP_stack_value)) #6, !dbg !1415
  %back_prev.i.i228 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 7, !dbg !1417
  store i32 -1, ptr %back_prev.i.i228, align 4, !dbg !1418, !tbaa !265
  %prev_1_is_literal.i.i229 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 1, !dbg !1419
  store i8 0, ptr %prev_1_is_literal.i.i229, align 4, !dbg !1420, !tbaa !861
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()) #6, !dbg !1255
  br label %if.end216.i, !dbg !1421

if.end216.i:                                      ; preds = %if.then201.i, %get_literal_price.exit.i226
  %176 = phi i32 [ %add193.i, %if.then201.i ], [ %175, %get_literal_price.exit.i226 ]
  %next_is_literal.0.i = phi i8 [ 1, %if.then201.i ], [ 0, %get_literal_price.exit.i226 ], !dbg !1255
  call void @llvm.dbg.value(metadata i8 %next_is_literal.0.i, metadata !1193, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i16 %163, metadata !862, metadata !DIExpression()) #6, !dbg !1422
  %177 = xor i16 %164, 127, !dbg !1424
  %idxprom.i1356.i = zext i16 %177 to i64, !dbg !1425
  %arrayidx.i1357.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1356.i, !dbg !1425
  %178 = load i8, ptr %arrayidx.i1357.i, align 1, !dbg !1425, !tbaa !367
  %conv1.i1358.i = zext i8 %178 to i32, !dbg !1425
  %add223.i = add i32 %158, %conv1.i1358.i, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %add223.i, metadata !1194, metadata !DIExpression()) #6, !dbg !1255
  %arrayidx225.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %idxprom183.i, !dbg !1427
  %179 = load i16, ptr %arrayidx225.i, align 2, !dbg !1427, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %179, metadata !862, metadata !DIExpression()) #6, !dbg !1428
  %180 = lshr i16 %179, 4, !dbg !1430
  %181 = xor i16 %180, 127, !dbg !1430
  %idxprom.i1359.i = zext i16 %181 to i64, !dbg !1431
  %arrayidx.i1360.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1359.i, !dbg !1431
  %182 = load i8, ptr %arrayidx.i1360.i, align 1, !dbg !1431, !tbaa !367
  %conv1.i1361.i = zext i8 %182 to i32, !dbg !1431
  %add227.i = add i32 %add223.i, %conv1.i1361.i, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %add227.i, metadata !1195, metadata !DIExpression()) #6, !dbg !1255
  %cmp230.i = icmp eq i8 %161, %159, !dbg !1433
  br i1 %cmp230.i, label %land.lhs.true232.i, label %if.end274.i, !dbg !1434

land.lhs.true232.i:                               ; preds = %if.end216.i
  %pos_prev237.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 6, !dbg !1435
  %183 = load i32, ptr %pos_prev237.i, align 4, !dbg !1435, !tbaa !259
  %184 = zext i32 %183 to i64, !dbg !1436
  %cmp238.i = icmp ugt i64 %indvars.iv, %184, !dbg !1436
  br i1 %cmp238.i, label %land.lhs.true240.i, label %if.then248.i, !dbg !1437

land.lhs.true240.i:                               ; preds = %land.lhs.true232.i
  %back_prev245.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 7, !dbg !1438
  %185 = load i32, ptr %back_prev245.i, align 4, !dbg !1438, !tbaa !265
  %cmp246.i = icmp eq i32 %185, 0, !dbg !1439
  br i1 %cmp246.i, label %if.end274.i, label %if.then248.i, !dbg !1440

if.then248.i:                                     ; preds = %land.lhs.true240.i, %land.lhs.true232.i
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !876, metadata !DIExpression()) #6, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %state.3.i, metadata !882, metadata !DIExpression()) #6, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !883, metadata !DIExpression()) #6, !dbg !1441
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !884, metadata !DIExpression()) #6, !dbg !1441
  %arrayidx.i1363.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom183.i, !dbg !1443
  %186 = load i16, ptr %arrayidx.i1363.i, align 2, !dbg !1443, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %186, metadata !753, metadata !DIExpression()) #6, !dbg !1444
  %187 = lshr i16 %186, 4, !dbg !1446
  %188 = zext i16 %187 to i64
  %arrayidx.i.i1364.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %188, !dbg !1447
  %189 = load i8, ptr %arrayidx.i.i1364.i, align 1, !dbg !1447, !tbaa !367
  %conv1.i.i1365.i = zext i8 %189 to i32, !dbg !1447
  %arrayidx4.i.i230 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom183.i, i64 %idxprom185.i, !dbg !1448
  %190 = load i16, ptr %arrayidx4.i.i230, align 2, !dbg !1448, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %190, metadata !753, metadata !DIExpression()) #6, !dbg !1449
  %191 = lshr i16 %190, 4, !dbg !1451
  %192 = zext i16 %191 to i64
  %arrayidx.i8.i.i231 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %192, !dbg !1452
  %193 = load i8, ptr %arrayidx.i8.i.i231, align 1, !dbg !1452, !tbaa !367
  %conv1.i9.i.i232 = zext i8 %193 to i32, !dbg !1452
  %add.i1366.i = add i32 %add227.i, %conv1.i.i1365.i, !dbg !1453
  %add250.i233 = add i32 %add.i1366.i, %conv1.i9.i.i232, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %add250.i233, metadata !1196, metadata !DIExpression()) #6, !dbg !1455
  %cmp256.not.i = icmp ugt i32 %add250.i233, %176, !dbg !1456
  br i1 %cmp256.not.i, label %if.end274.i, label %if.then258.i, !dbg !1458

if.then258.i:                                     ; preds = %if.then248.i
  store i32 %add250.i233, ptr %price198.i, align 4, !dbg !1459, !tbaa !848
  store i32 %126, ptr %pos_prev237.i, align 4, !dbg !1461, !tbaa !259
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pcoder, i64 %indvars.iv.next), metadata !905, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 44, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 69348, DW_OP_stack_value)) #6, !dbg !1462
  %back_prev.i1367.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 7, !dbg !1464
  store i32 0, ptr %back_prev.i1367.i, align 4, !dbg !1465, !tbaa !265
  %prev_1_is_literal.i1368.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next, i32 1, !dbg !1466
  store i8 0, ptr %prev_1_is_literal.i1368.i, align 4, !dbg !1467, !tbaa !861
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()) #6, !dbg !1255
  br label %if.end274.i, !dbg !1468

if.end274.i:                                      ; preds = %if.then258.i, %if.then248.i, %land.lhs.true240.i, %if.end216.i
  %next_is_literal.2.i = phi i8 [ %next_is_literal.0.i, %land.lhs.true240.i ], [ %next_is_literal.0.i, %if.end216.i ], [ 1, %if.then258.i ], [ %next_is_literal.0.i, %if.then248.i ], !dbg !1255
  call void @llvm.dbg.value(metadata i8 %next_is_literal.2.i, metadata !1193, metadata !DIExpression()) #6, !dbg !1255
  %cmp275.i = icmp ult i32 %127, 2, !dbg !1469
  br i1 %cmp275.i, label %helper2.exit, label %if.end278.i, !dbg !1471

if.end278.i:                                      ; preds = %if.end274.i
  %194 = call i32 @llvm.umin.i32(i32 %127, i32 %125) #6, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %194, metadata !1199, metadata !DIExpression()) #6, !dbg !1255
  %tobool285.not.i = icmp ne i8 %next_is_literal.2.i, 0, !dbg !1473
  %or.cond.i234 = select i1 %tobool285.not.i, i1 true, i1 %cmp230.i, !dbg !1474
  br i1 %or.cond.i234, label %if.end393.i, label %if.then291.i, !dbg !1474

if.then291.i:                                     ; preds = %if.end278.i
  call void @llvm.dbg.value(metadata ptr %add.ptr182.i, metadata !1200, metadata !DIExpression()) #6, !dbg !1475
  %add297.i = add i32 %125, 1, !dbg !1476
  %195 = call i32 @llvm.umin.i32(i32 %add297.i, i32 %127) #6, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %195, metadata !1203, metadata !DIExpression()) #6, !dbg !1475
  call void @llvm.dbg.value(metadata i32 1, metadata !1204, metadata !DIExpression()) #6, !dbg !1475
  %cmp3051584.i = icmp ugt i32 %195, 1, !dbg !1477
  br i1 %cmp3051584.i, label %land.rhs.preheader.i, label %if.end393.i, !dbg !1478

land.rhs.preheader.i:                             ; preds = %if.then291.i
  %wide.trip.count1645.i = zext i32 %195 to i64, !dbg !1477
  br label %land.rhs.i235, !dbg !1479

land.rhs.i235:                                    ; preds = %while.body.i, %land.rhs.preheader.i
  %indvars.iv1642.i = phi i64 [ 1, %land.rhs.preheader.i ], [ %indvars.iv.next1643.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1642.i, metadata !1204, metadata !DIExpression()) #6, !dbg !1475
  %arrayidx308.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1642.i, !dbg !1480
  %196 = load i8, ptr %arrayidx308.i, align 1, !dbg !1480, !tbaa !367
  %arrayidx311.i = getelementptr inbounds i8, ptr %add.ptr182.i, i64 %indvars.iv1642.i, !dbg !1481
  %197 = load i8, ptr %arrayidx311.i, align 1, !dbg !1481, !tbaa !367
  %cmp313.i = icmp eq i8 %196, %197, !dbg !1482
  br i1 %cmp313.i, label %while.body.i, label %while.end.split.loop.exit.i, !dbg !1479

while.body.i:                                     ; preds = %land.rhs.i235
  %indvars.iv.next1643.i = add nuw nsw i64 %indvars.iv1642.i, 1, !dbg !1483
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1643.i, metadata !1204, metadata !DIExpression()) #6, !dbg !1475
  %exitcond1646.not.i = icmp eq i64 %indvars.iv.next1643.i, %wide.trip.count1645.i, !dbg !1477
  br i1 %exitcond1646.not.i, label %while.end.i, label %land.rhs.i235, !dbg !1478, !llvm.loop !1484

while.end.split.loop.exit.i:                      ; preds = %land.rhs.i235
  %198 = trunc i64 %indvars.iv1642.i to i32, !dbg !1479
  br label %while.end.i, !dbg !1486

while.end.i:                                      ; preds = %while.body.i, %while.end.split.loop.exit.i
  %len_test.0.lcssa.i236 = phi i32 [ %198, %while.end.split.loop.exit.i ], [ %195, %while.body.i ], !dbg !1475
  call void @llvm.dbg.value(metadata i32 %len_test.0.lcssa.i236, metadata !1204, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1475
  %199 = add i32 %len_test.0.lcssa.i236, -3, !dbg !1486
  %cmp317.i = icmp ult i32 %199, -2, !dbg !1486
  br i1 %cmp317.i, label %if.then319.i, label %if.end393.i, !dbg !1487

if.then319.i:                                     ; preds = %while.end.i
  call void @llvm.dbg.value(metadata i32 %state.3.i, metadata !1205, metadata !DIExpression()) #6, !dbg !1488
  %cmp320.i = icmp ult i32 %state.3.i, 4, !dbg !1489
  br i1 %cmp320.i, label %cond.end332.i, label %cond.false323.i, !dbg !1489

cond.false323.i:                                  ; preds = %if.then319.i
  %cmp324.i = icmp ult i32 %state.3.i, 10, !dbg !1489
  br i1 %cmp324.i, label %cond.true326.i, label %cond.false328.i, !dbg !1489

cond.true326.i:                                   ; preds = %cond.false323.i
  %sub327.i = add nsw i32 %state.3.i, -3, !dbg !1489
  br label %cond.end332.i, !dbg !1489

cond.false328.i:                                  ; preds = %cond.false323.i
  %sub329.i = add i32 %state.3.i, -6, !dbg !1489
  br label %cond.end332.i, !dbg !1489

cond.end332.i:                                    ; preds = %cond.false328.i, %cond.true326.i, %if.then319.i
  %cond333.i = phi i32 [ 0, %if.then319.i ], [ %sub327.i, %cond.true326.i ], [ %sub329.i, %cond.false328.i ], !dbg !1489
  call void @llvm.dbg.value(metadata i32 %cond333.i, metadata !1205, metadata !DIExpression()) #6, !dbg !1488
  %add334.i = add i32 %add, 1, !dbg !1490
  %and336.i = and i32 %162, %add334.i, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %and336.i, metadata !1208, metadata !DIExpression()) #6, !dbg !1488
  %idxprom338.i = zext i32 %cond333.i to i64, !dbg !1492
  %idxprom340.i = zext i32 %and336.i to i64, !dbg !1492
  %arrayidx341.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %idxprom338.i, i64 %idxprom340.i, !dbg !1492
  %200 = load i16, ptr %arrayidx341.i, align 2, !dbg !1492, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %200, metadata !862, metadata !DIExpression()) #6, !dbg !1493
  %201 = lshr i16 %200, 4, !dbg !1495
  %202 = xor i16 %201, 127, !dbg !1495
  %idxprom.i1369.i = zext i16 %202 to i64, !dbg !1496
  %arrayidx.i1370.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1369.i, !dbg !1496
  %203 = load i8, ptr %arrayidx.i1370.i, align 1, !dbg !1496, !tbaa !367
  %conv1.i1371.i = zext i8 %203 to i32, !dbg !1496
  %arrayidx346.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, i64 %idxprom338.i, !dbg !1497
  %204 = load i16, ptr %arrayidx346.i, align 2, !dbg !1497, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %204, metadata !862, metadata !DIExpression()) #6, !dbg !1498
  %205 = lshr i16 %204, 4, !dbg !1500
  %206 = xor i16 %205, 127, !dbg !1500
  %idxprom.i1372.i = zext i16 %206 to i64, !dbg !1501
  %arrayidx.i1373.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1372.i, !dbg !1501
  %207 = load i8, ptr %arrayidx.i1373.i, align 1, !dbg !1501, !tbaa !367
  %conv1.i1374.i = zext i8 %207 to i32, !dbg !1501
  call void @llvm.dbg.value(metadata i32 undef, metadata !1209, metadata !DIExpression()) #6, !dbg !1488
  %add350.i = add i32 %len_test.0.lcssa.i236, %126, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %add350.i, metadata !1210, metadata !DIExpression()) #6, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %len_end.0326, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %cmp3521588.i = icmp ugt i32 %add350.i, %len_end.0326, !dbg !1503
  br i1 %cmp3521588.i, label %while.body354.preheader.i, label %cond.end332.while.end360_crit_edge.i, !dbg !1504

cond.end332.while.end360_crit_edge.i:             ; preds = %cond.end332.i
  %.pre1695.i = zext i32 %add350.i to i64, !dbg !1505
  br label %while.end360.i, !dbg !1504

while.body354.preheader.i:                        ; preds = %cond.end332.i
  %208 = zext i32 %len_end.0326 to i64, !dbg !1504
  %wide.trip.count1650.i = zext i32 %add350.i to i64, !dbg !1503
  br label %while.body354.i, !dbg !1504

while.body354.i:                                  ; preds = %while.body354.i, %while.body354.preheader.i
  %indvars.iv1647.i = phi i64 [ %208, %while.body354.preheader.i ], [ %indvars.iv.next1648.i, %while.body354.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1647.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1648.i = add nuw nsw i64 %indvars.iv1647.i, 1, !dbg !1507
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1648.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %price359.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next1648.i, i32 5, !dbg !1508
  store i32 1073741824, ptr %price359.i, align 4, !dbg !1509, !tbaa !848
  %exitcond1651.not.i = icmp eq i64 %indvars.iv.next1648.i, %wide.trip.count1650.i, !dbg !1503
  br i1 %exitcond1651.not.i, label %while.end360.i, label %while.body354.i, !dbg !1504, !llvm.loop !1510

while.end360.i:                                   ; preds = %while.body354.i, %cond.end332.while.end360_crit_edge.i
  %idxprom364.pre-phi.i = phi i64 [ %.pre1695.i, %cond.end332.while.end360_crit_edge.i ], [ %wide.trip.count1650.i, %while.body354.i ], !dbg !1505
  %len_end.addr.0.lcssa.i = phi i32 [ %len_end.0326, %cond.end332.while.end360_crit_edge.i ], [ %add350.i, %while.body354.i ]
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1512, metadata !DIExpression()) #6, !dbg !1522
  call void @llvm.dbg.value(metadata i32 0, metadata !1517, metadata !DIExpression()) #6, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %len_test.0.lcssa.i236, metadata !1518, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %cond333.i, metadata !1519, metadata !DIExpression()) #6, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %and336.i, metadata !1520, metadata !DIExpression()) #6, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1521, metadata !DIExpression()) #6, !dbg !1522
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %len_test.0.lcssa.i236, metadata !1017, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %and336.i, metadata !1018, metadata !DIExpression()) #6, !dbg !1524
  %idxprom1.i.i.i237 = zext i32 %199 to i64, !dbg !1526
  %arrayidx2.i.i.i238 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom340.i, i64 %idxprom1.i.i.i237, !dbg !1526
  %209 = load i32, ptr %arrayidx2.i.i.i238, align 4, !dbg !1526, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !954, metadata !DIExpression()) #6, !dbg !1527
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()) #6, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %cond333.i, metadata !960, metadata !DIExpression()) #6, !dbg !1527
  call void @llvm.dbg.value(metadata i32 %and336.i, metadata !961, metadata !DIExpression()) #6, !dbg !1527
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !962, metadata !DIExpression()) #6, !dbg !1527
  %arrayidx.i.i1376.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom338.i, !dbg !1529
  %210 = load i16, ptr %arrayidx.i.i1376.i, align 2, !dbg !1529, !tbaa !352
  %211 = lshr i16 %210, 4, !dbg !1529
  call void @llvm.dbg.value(metadata i16 %210, metadata !753, metadata !DIExpression()) #6, !dbg !1530
  %212 = zext i16 %211 to i64
  %arrayidx.i.i.i1377.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %212, !dbg !1532
  %213 = load i8, ptr %arrayidx.i.i.i1377.i, align 1, !dbg !1532, !tbaa !367
  %conv1.i.i.i1378.i = zext i8 %213 to i32, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %conv1.i.i.i1378.i, metadata !963, metadata !DIExpression()) #6, !dbg !1527
  %arrayidx4.i.i.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom338.i, i64 %idxprom340.i, !dbg !1533
  %214 = load i16, ptr %arrayidx4.i.i.i, align 2, !dbg !1533, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %214, metadata !862, metadata !DIExpression()) #6, !dbg !1534
  %215 = lshr i16 %214, 4, !dbg !1536
  %216 = xor i16 %215, 127, !dbg !1536
  %idxprom.i.i.i1379.i = zext i16 %216 to i64, !dbg !1537
  %arrayidx.i43.i.i.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1379.i, !dbg !1537
  %217 = load i8, ptr %arrayidx.i43.i.i.i, align 1, !dbg !1537, !tbaa !367
  %conv1.i44.i.i.i = zext i8 %217 to i32, !dbg !1537
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1527
  %add15.i.i.i = add i32 %add193.i, %conv1.i1371.i, !dbg !1529
  %add.i1380.i = add i32 %add15.i.i.i, %conv1.i1374.i, !dbg !1538
  %add343.i = add i32 %add.i1380.i, %209, !dbg !1539
  %add348.i = add i32 %add343.i, %conv1.i.i.i1378.i, !dbg !1540
  %add362.i = add i32 %add348.i, %conv1.i44.i.i.i, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %add362.i, metadata !1211, metadata !DIExpression()) #6, !dbg !1488
  %price366.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom364.pre-phi.i, i32 5, !dbg !1542
  %218 = load i32, ptr %price366.i, align 4, !dbg !1542, !tbaa !848
  %cmp367.i = icmp ult i32 %add362.i, %218, !dbg !1543
  br i1 %cmp367.i, label %if.then369.i, label %if.end393.i, !dbg !1544

if.then369.i:                                     ; preds = %while.end360.i
  store i32 %add362.i, ptr %price366.i, align 4, !dbg !1545, !tbaa !848
  %pos_prev378.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom364.pre-phi.i, i32 6, !dbg !1547
  store i32 %indvars, ptr %pos_prev378.i, align 4, !dbg !1548, !tbaa !259
  %back_prev382.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom364.pre-phi.i, i32 7, !dbg !1549
  store i32 0, ptr %back_prev382.i, align 4, !dbg !1550, !tbaa !265
  %prev_1_is_literal386.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom364.pre-phi.i, i32 1, !dbg !1551
  store i8 1, ptr %prev_1_is_literal386.i, align 4, !dbg !1552, !tbaa !861
  %prev_2390.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom364.pre-phi.i, i32 2, !dbg !1553
  store i8 0, ptr %prev_2390.i, align 1, !dbg !1554, !tbaa !1268
  br label %if.end393.i, !dbg !1555

if.end393.i:                                      ; preds = %if.then369.i, %while.end360.i, %while.end.i, %if.then291.i, %if.end278.i
  %len_end.addr.2.i = phi i32 [ %len_end.0326, %if.end278.i ], [ %len_end.0326, %while.end.i ], [ %len_end.addr.0.lcssa.i, %if.then369.i ], [ %len_end.addr.0.lcssa.i, %while.end360.i ], [ %len_end.0326, %if.then291.i ]
  call void @llvm.dbg.value(metadata i32 %len_end.addr.2.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 2, metadata !1212, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 0, metadata !1213, metadata !DIExpression()) #6, !dbg !1556
  %arrayidx412.i = getelementptr inbounds i8, ptr %add.ptr, i64 1
  %cmp4221591.i = icmp ugt i32 %194, 2
  %arrayidx.i1383.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, i64 %idxprom183.i
  %arrayidx13.i.i239 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 16, i64 %idxprom183.i
  %arrayidx23.i.i240 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 17, i64 %idxprom183.i
  %arrayidx4.i1387.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 %idxprom183.i, i64 %idxprom185.i
  %cond527.i = select i1 %cmp188.i, i64 8, i64 11
  %wide.trip.count1655.i = zext i32 %194 to i64
  br label %for.body398.i, !dbg !1557

for.cond.cleanup397.i:                            ; preds = %cleanup.i268
  %cmp646.i = icmp ugt i32 %call29, %194, !dbg !1558
  br i1 %cmp646.i, label %while.cond649.i, label %if.end662.i, !dbg !1560

for.body398.i:                                    ; preds = %cleanup.i268.for.body398.i_crit_edge, %if.end393.i
  %219 = phi i32 [ %160, %if.end393.i ], [ %.pre, %cleanup.i268.for.body398.i_crit_edge ], !dbg !1561
  %indvars.iv1672.i = phi i64 [ 0, %if.end393.i ], [ %indvars.iv.next1673.i, %cleanup.i268.for.body398.i_crit_edge ]
  %len_end.addr.31610.i = phi i32 [ %len_end.addr.2.i, %if.end393.i ], [ %len_end.addr.7.i, %cleanup.i268.for.body398.i_crit_edge ]
  %start_len.01609.i = phi i32 [ 2, %if.end393.i ], [ %start_len.2.i, %cleanup.i268.for.body398.i_crit_edge ]
  call void @llvm.dbg.value(metadata i32 %len_end.addr.31610.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %start_len.01609.i, metadata !1212, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i64 %indvars.iv1672.i, metadata !1213, metadata !DIExpression()) #6, !dbg !1556
  %idx.ext402.i = zext i32 %219 to i64, !dbg !1562
  %idx.neg403.i = sub nsw i64 0, %idx.ext402.i, !dbg !1562
  %add.ptr405.i = getelementptr inbounds i8, ptr %arrayidx187.i, i64 %idx.neg403.i, !dbg !1563
  call void @llvm.dbg.value(metadata ptr %add.ptr405.i, metadata !1215, metadata !DIExpression()) #6, !dbg !1564
  %220 = load i8, ptr %add.ptr, align 1, !dbg !1565, !tbaa !367
  %221 = load i8, ptr %add.ptr405.i, align 1, !dbg !1565, !tbaa !367
  %cmp410.not.i = icmp eq i8 %220, %221, !dbg !1565
  br i1 %cmp410.not.i, label %lor.lhs.false.i241, label %cleanup.i268, !dbg !1565

lor.lhs.false.i241:                               ; preds = %for.body398.i
  %222 = load i8, ptr %arrayidx412.i, align 1, !dbg !1565, !tbaa !367
  %arrayidx414.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 1, !dbg !1565
  %223 = load i8, ptr %arrayidx414.i, align 1, !dbg !1565, !tbaa !367
  %cmp416.not.i = icmp eq i8 %222, %223, !dbg !1565
  br i1 %cmp416.not.i, label %for.cond421.preheader.i, label %cleanup.i268, !dbg !1567

for.cond421.preheader.i:                          ; preds = %lor.lhs.false.i241
  call void @llvm.dbg.value(metadata i32 2, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  br i1 %cmp4221591.i, label %land.rhs424.i, label %for.end437.i, !dbg !1568

land.rhs424.i:                                    ; preds = %for.cond421.preheader.i, %for.inc435.i
  %indvars.iv1652.i = phi i64 [ %indvars.iv.next1653.i, %for.inc435.i ], [ 2, %for.cond421.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1652.i, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  %arrayidx426.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1652.i, !dbg !1571
  %224 = load i8, ptr %arrayidx426.i, align 1, !dbg !1571, !tbaa !367
  %arrayidx429.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1652.i, !dbg !1572
  %225 = load i8, ptr %arrayidx429.i, align 1, !dbg !1572, !tbaa !367
  %cmp431.i = icmp eq i8 %224, %225, !dbg !1573
  br i1 %cmp431.i, label %for.inc435.i, label %for.end437.loopexit.split.loop.exit1719.i, !dbg !1574

for.inc435.i:                                     ; preds = %land.rhs424.i
  %indvars.iv.next1653.i = add nuw nsw i64 %indvars.iv1652.i, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1653.i, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  %exitcond1656.not.i = icmp eq i64 %indvars.iv.next1653.i, %wide.trip.count1655.i, !dbg !1576
  br i1 %exitcond1656.not.i, label %for.end437.i, label %land.rhs424.i, !dbg !1568, !llvm.loop !1577

for.end437.loopexit.split.loop.exit1719.i:        ; preds = %land.rhs424.i
  %226 = trunc i64 %indvars.iv1652.i to i32, !dbg !1574
  br label %for.end437.i

for.end437.i:                                     ; preds = %for.inc435.i, %for.end437.loopexit.split.loop.exit1719.i, %for.cond421.preheader.i
  %len_test420.0.lcssa.i = phi i32 [ 2, %for.cond421.preheader.i ], [ %226, %for.end437.loopexit.split.loop.exit1719.i ], [ %194, %for.inc435.i ], !dbg !1579
  %add439.i = add i32 %len_test420.0.lcssa.i, %126
  call void @llvm.dbg.value(metadata i32 %len_end.addr.31610.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %cmp4401595.i = icmp ult i32 %len_end.addr.31610.i, %add439.i, !dbg !1580
  br i1 %cmp4401595.i, label %while.body442.preheader.i, label %while.end448.i, !dbg !1581

while.body442.preheader.i:                        ; preds = %for.end437.i
  %227 = zext i32 %len_end.addr.31610.i to i64, !dbg !1581
  %wide.trip.count1660.i = zext i32 %add439.i to i64, !dbg !1580
  br label %while.body442.i, !dbg !1581

while.body442.i:                                  ; preds = %while.body442.i, %while.body442.preheader.i
  %indvars.iv1657.i = phi i64 [ %227, %while.body442.preheader.i ], [ %indvars.iv.next1658.i, %while.body442.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1657.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1658.i = add nuw nsw i64 %indvars.iv1657.i, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1658.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %price447.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next1658.i, i32 5, !dbg !1583
  store i32 1073741824, ptr %price447.i, align 4, !dbg !1584, !tbaa !848
  %exitcond1661.not.i = icmp eq i64 %indvars.iv.next1658.i, %wide.trip.count1660.i, !dbg !1580
  br i1 %exitcond1661.not.i, label %while.end448.i, label %while.body442.i, !dbg !1581, !llvm.loop !1585

while.end448.i:                                   ; preds = %while.body442.i, %for.end437.i
  %len_end.addr.4.lcssa.i = phi i32 [ %len_end.addr.31610.i, %for.end437.i ], [ %add439.i, %while.body442.i ]
  call void @llvm.dbg.value(metadata i32 %len_test420.0.lcssa.i, metadata !1219, metadata !DIExpression()) #6, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !954, metadata !DIExpression()) #6, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %indvars.iv1672.i, metadata !959, metadata !DIExpression()) #6, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %state.3.i, metadata !960, metadata !DIExpression()) #6, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !961, metadata !DIExpression()) #6, !dbg !1587
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !962, metadata !DIExpression()) #6, !dbg !1587
  %cmp.i1381.i = icmp eq i64 %indvars.iv1672.i, 0, !dbg !1589
  %228 = load i16, ptr %arrayidx.i1383.i, align 2, !dbg !1590, !tbaa !352
  %229 = lshr i16 %228, 4, !dbg !1590
  br i1 %cmp.i1381.i, label %if.then.i.i244, label %if.else.i.i249, !dbg !1591

if.then.i.i244:                                   ; preds = %while.end448.i
  call void @llvm.dbg.value(metadata i16 %228, metadata !753, metadata !DIExpression()) #6, !dbg !1592
  %230 = zext i16 %229 to i64
  %arrayidx.i.i1384.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %230, !dbg !1594
  %231 = load i8, ptr %arrayidx.i.i1384.i, align 1, !dbg !1594, !tbaa !367
  %conv1.i.i1385.i = zext i8 %231 to i32, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %conv1.i.i1385.i, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  %232 = load i16, ptr %arrayidx4.i1387.i, align 2, !dbg !1595, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %232, metadata !862, metadata !DIExpression()) #6, !dbg !1596
  %233 = lshr i16 %232, 4, !dbg !1598
  %234 = xor i16 %233, 127, !dbg !1598
  %idxprom.i.i1388.i = zext i16 %234 to i64, !dbg !1599
  %arrayidx.i43.i.i242 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i1388.i, !dbg !1599
  %235 = load i8, ptr %arrayidx.i43.i.i242, align 1, !dbg !1599, !tbaa !367
  %conv1.i44.i.i243 = zext i8 %235 to i32, !dbg !1599
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  br label %get_pure_rep_price.exit.i263, !dbg !1600

if.else.i.i249:                                   ; preds = %while.end448.i
  call void @llvm.dbg.value(metadata i16 %228, metadata !862, metadata !DIExpression()) #6, !dbg !1601
  %236 = xor i16 %229, 127, !dbg !1603
  %idxprom.i45.i.i245 = zext i16 %236 to i64, !dbg !1604
  %arrayidx.i46.i.i246 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i45.i.i245, !dbg !1604
  %237 = load i8, ptr %arrayidx.i46.i.i246, align 1, !dbg !1604, !tbaa !367
  %conv1.i47.i.i247 = zext i8 %237 to i32, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %conv1.i47.i.i247, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  %cmp10.i.i248 = icmp eq i64 %indvars.iv1672.i, 1, !dbg !1605
  %238 = load i16, ptr %arrayidx13.i.i239, align 2, !dbg !1606, !tbaa !352
  %239 = lshr i16 %238, 4, !dbg !1606
  br i1 %cmp10.i.i248, label %if.then11.i.i252, label %if.else16.i.i259, !dbg !1607

if.then11.i.i252:                                 ; preds = %if.else.i.i249
  call void @llvm.dbg.value(metadata i16 %238, metadata !753, metadata !DIExpression()) #6, !dbg !1608
  %240 = zext i16 %239 to i64
  %arrayidx.i48.i.i250 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %240, !dbg !1610
  %241 = load i8, ptr %arrayidx.i48.i.i250, align 1, !dbg !1610, !tbaa !367
  %conv1.i49.i.i251 = zext i8 %241 to i32, !dbg !1610
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  br label %get_pure_rep_price.exit.i263, !dbg !1611

if.else16.i.i259:                                 ; preds = %if.else.i.i249
  call void @llvm.dbg.value(metadata i16 %238, metadata !862, metadata !DIExpression()) #6, !dbg !1612
  %242 = xor i16 %239, 127, !dbg !1614
  %idxprom.i50.i.i253 = zext i16 %242 to i64, !dbg !1615
  %arrayidx.i51.i.i254 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i50.i.i253, !dbg !1615
  %243 = load i8, ptr %arrayidx.i51.i.i254, align 1, !dbg !1615, !tbaa !367
  %conv1.i52.i.i255 = zext i8 %243 to i32, !dbg !1615
  %add21.i.i256 = add nuw nsw i32 %conv1.i52.i.i255, %conv1.i47.i.i247, !dbg !1616
  call void @llvm.dbg.value(metadata i32 %add21.i.i256, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  %244 = load i16, ptr %arrayidx23.i.i240, align 2, !dbg !1617, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %244, metadata !353, metadata !DIExpression()) #6, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %indvars.iv1672.i, metadata !358, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)) #6, !dbg !1618
  %conv.i.i1389.i = zext i16 %244 to i64, !dbg !1620
  %245 = sub nsw i64 2, %indvars.iv1672.i, !dbg !1621
  %and.i.i1391.i = and i64 %245, 2032, !dbg !1621
  %xor.i.i1392.i = xor i64 %and.i.i1391.i, %conv.i.i1389.i, !dbg !1622
  %shr.i.i1393.i = lshr i64 %xor.i.i1392.i, 4, !dbg !1623
  %arrayidx.i54.i.i257 = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i.i1393.i, !dbg !1624
  %246 = load i8, ptr %arrayidx.i54.i.i257, align 1, !dbg !1624, !tbaa !367
  %conv1.i55.i.i258 = zext i8 %246 to i32, !dbg !1624
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  br label %get_pure_rep_price.exit.i263

get_pure_rep_price.exit.i263:                     ; preds = %if.else16.i.i259, %if.then11.i.i252, %if.then.i.i244
  %conv1.i47.sink.i.i260 = phi i32 [ %conv1.i47.i.i247, %if.then11.i.i252 ], [ %conv1.i55.i.i258, %if.else16.i.i259 ], [ %conv1.i.i1385.i, %if.then.i.i244 ]
  %conv1.i49.sink.i.i261 = phi i32 [ %conv1.i49.i.i251, %if.then11.i.i252 ], [ %add21.i.i256, %if.else16.i.i259 ], [ %conv1.i44.i.i243, %if.then.i.i244 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1587
  %add15.i.i262 = add i32 %conv1.i47.sink.i.i260, %add227.i, !dbg !1590
  %add451.i = add i32 %add15.i.i262, %conv1.i49.sink.i.i261, !dbg !1625
  call void @llvm.dbg.value(metadata i32 %add451.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1564
  %247 = trunc i64 %indvars.iv1672.i to i32
  br label %do.body.i266, !dbg !1626

do.body.i266:                                     ; preds = %if.end483.i, %get_pure_rep_price.exit.i263
  %len_test420.1.i = phi i32 [ %len_test420.0.lcssa.i, %get_pure_rep_price.exit.i263 ], [ %dec484.i, %if.end483.i ], !dbg !1564
  call void @llvm.dbg.value(metadata i32 %len_test420.1.i, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %len_test420.1.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !1018, metadata !DIExpression()) #6, !dbg !1627
  %sub.i1395.i = add i32 %len_test420.1.i, -2, !dbg !1629
  %idxprom1.i.i264 = zext i32 %sub.i1395.i to i64, !dbg !1630
  %arrayidx2.i.i265 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom185.i, i64 %idxprom1.i.i264, !dbg !1630
  %248 = load i32, ptr %arrayidx2.i.i265, align 4, !dbg !1630, !tbaa !263
  %add454.i = add i32 %248, %add451.i, !dbg !1631
  call void @llvm.dbg.value(metadata i32 %add454.i, metadata !1221, metadata !DIExpression()) #6, !dbg !1632
  %add456.i = add i32 %len_test420.1.i, %126, !dbg !1633
  %idxprom457.i = zext i32 %add456.i to i64, !dbg !1635
  %price459.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom457.i, i32 5, !dbg !1636
  %249 = load i32, ptr %price459.i, align 4, !dbg !1636, !tbaa !848
  %cmp460.i = icmp ult i32 %add454.i, %249, !dbg !1637
  br i1 %cmp460.i, label %if.then462.i, label %if.end483.i, !dbg !1638

if.then462.i:                                     ; preds = %do.body.i266
  store i32 %add454.i, ptr %price459.i, align 4, !dbg !1639, !tbaa !848
  %pos_prev472.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom457.i, i32 6, !dbg !1641
  store i32 %126, ptr %pos_prev472.i, align 4, !dbg !1642, !tbaa !259
  %back_prev477.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom457.i, i32 7, !dbg !1643
  store i32 %247, ptr %back_prev477.i, align 4, !dbg !1644, !tbaa !265
  %prev_1_is_literal482.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom457.i, i32 1, !dbg !1645
  store i8 0, ptr %prev_1_is_literal482.i, align 4, !dbg !1646, !tbaa !861
  br label %if.end483.i, !dbg !1647

if.end483.i:                                      ; preds = %if.then462.i, %do.body.i266
  %dec484.i = add i32 %len_test420.1.i, -1, !dbg !1648
  call void @llvm.dbg.value(metadata i32 %dec484.i, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  %cmp485.i = icmp ugt i32 %dec484.i, 1, !dbg !1649
  br i1 %cmp485.i, label %do.body.i266, label %do.end.i, !dbg !1650, !llvm.loop !1651

do.end.i:                                         ; preds = %if.end483.i
  call void @llvm.dbg.value(metadata i32 %len_test420.0.lcssa.i, metadata !1218, metadata !DIExpression()) #6, !dbg !1564
  %add490.i = add i32 %len_test420.0.lcssa.i, 1
  %spec.select.i267 = select i1 %cmp.i1381.i, i32 %add490.i, i32 %start_len.01609.i, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %spec.select.i267, metadata !1212, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %add490.i, metadata !1223, metadata !DIExpression()) #6, !dbg !1564
  %add494.i = add i32 %add490.i, %125, !dbg !1654
  %250 = call i32 @llvm.umin.i32(i32 %add494.i, i32 %127) #6, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %250, metadata !1224, metadata !DIExpression()) #6, !dbg !1564
  %cmp5031599.i = icmp ult i32 %add490.i, %250, !dbg !1655
  br i1 %cmp5031599.i, label %land.rhs505.preheader.i, label %for.end518.i, !dbg !1658

land.rhs505.preheader.i:                          ; preds = %do.end.i
  %251 = zext i32 %add490.i to i64, !dbg !1659
  br label %land.rhs505.i, !dbg !1659

land.rhs505.i:                                    ; preds = %for.inc516.i, %land.rhs505.preheader.i
  %indvars.iv1662.i = phi i64 [ %251, %land.rhs505.preheader.i ], [ %indvars.iv.next1663.i, %for.inc516.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1662.i, metadata !1223, metadata !DIExpression()) #6, !dbg !1564
  %arrayidx507.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1662.i, !dbg !1660
  %252 = load i8, ptr %arrayidx507.i, align 1, !dbg !1660, !tbaa !367
  %arrayidx510.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %indvars.iv1662.i, !dbg !1661
  %253 = load i8, ptr %arrayidx510.i, align 1, !dbg !1661, !tbaa !367
  %cmp512.i = icmp eq i8 %252, %253, !dbg !1662
  br i1 %cmp512.i, label %for.inc516.i, label %for.end518.loopexit.split.loop.exit1721.i, !dbg !1659

for.inc516.i:                                     ; preds = %land.rhs505.i
  %indvars.iv.next1663.i = add nuw nsw i64 %indvars.iv1662.i, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1663.i, metadata !1223, metadata !DIExpression()) #6, !dbg !1564
  %lftr.wideiv1665.i = trunc i64 %indvars.iv.next1663.i to i32, !dbg !1655
  %exitcond1666.not.i = icmp eq i32 %250, %lftr.wideiv1665.i, !dbg !1655
  br i1 %exitcond1666.not.i, label %for.end518.i, label %land.rhs505.i, !dbg !1658, !llvm.loop !1664

for.end518.loopexit.split.loop.exit1721.i:        ; preds = %land.rhs505.i
  %254 = trunc i64 %indvars.iv1662.i to i32, !dbg !1659
  br label %for.end518.i, !dbg !1666

for.end518.i:                                     ; preds = %for.inc516.i, %for.end518.loopexit.split.loop.exit1721.i, %do.end.i
  %len_test_2.0.lcssa.i = phi i32 [ %add490.i, %do.end.i ], [ %254, %for.end518.loopexit.split.loop.exit1721.i ], [ %250, %for.inc516.i ], !dbg !1564
  %sub520.i = sub i32 %len_test_2.0.lcssa.i, %add490.i, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %sub520.i, metadata !1223, metadata !DIExpression()) #6, !dbg !1564
  %cmp521.i = icmp ugt i32 %sub520.i, 1, !dbg !1667
  br i1 %cmp521.i, label %if.then523.i, label %cleanup.i268, !dbg !1668

if.then523.i:                                     ; preds = %for.end518.i
  call void @llvm.dbg.value(metadata i64 %cond527.i, metadata !1225, metadata !DIExpression()) #6, !dbg !1669
  %add529.i = add i32 %len_test420.0.lcssa.i, %add, !dbg !1670
  %and531.i = and i32 %add529.i, %162, !dbg !1671
  call void @llvm.dbg.value(metadata i32 %and531.i, metadata !1228, metadata !DIExpression()) #6, !dbg !1669
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %len_test420.0.lcssa.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1672
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !1018, metadata !DIExpression()) #6, !dbg !1672
  %sub.i1397.i = add i32 %len_test420.0.lcssa.i, -2, !dbg !1674
  %idxprom1.i1398.i = zext i32 %sub.i1397.i to i64, !dbg !1675
  %arrayidx2.i1399.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom185.i, i64 %idxprom1.i1398.i, !dbg !1675
  %255 = load i32, ptr %arrayidx2.i1399.i, align 4, !dbg !1675, !tbaa !263
  %idxprom538.i = zext i32 %and531.i to i64, !dbg !1676
  %arrayidx539.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %cond527.i, i64 %idxprom538.i, !dbg !1676
  %256 = load i16, ptr %arrayidx539.i, align 2, !dbg !1676, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %256, metadata !753, metadata !DIExpression()) #6, !dbg !1677
  %257 = lshr i16 %256, 4, !dbg !1679
  %258 = zext i16 %257 to i64
  %arrayidx.i1400.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %258, !dbg !1680
  %259 = load i8, ptr %arrayidx.i1400.i, align 1, !dbg !1680, !tbaa !367
  %sub543.i = add i32 %len_test420.0.lcssa.i, -1, !dbg !1681
  %idxprom544.i = zext i32 %sub543.i to i64, !dbg !1682
  %arrayidx545.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom544.i, !dbg !1682
  %260 = load i8, ptr %arrayidx545.i, align 1, !dbg !1682, !tbaa !367
  %conv546.i = zext i8 %260 to i32, !dbg !1682
  %idxprom547.i = zext i32 %len_test420.0.lcssa.i to i64, !dbg !1683
  %arrayidx548.i = getelementptr inbounds i8, ptr %add.ptr405.i, i64 %idxprom547.i, !dbg !1683
  %261 = load i8, ptr %arrayidx548.i, align 1, !dbg !1683, !tbaa !367
  %conv549.i = zext i8 %261 to i32, !dbg !1683
  %arrayidx551.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom547.i, !dbg !1684
  %262 = load i8, ptr %arrayidx551.i, align 1, !dbg !1684, !tbaa !367
  %conv552.i = zext i8 %262 to i32, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !765, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %add529.i, metadata !774, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %conv546.i, metadata !775, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i1 true, metadata !776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %conv549.i, metadata !777, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %conv552.i, metadata !778, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !779, metadata !DIExpression()) #6, !dbg !1685
  %and.i1403.i = and i32 %add529.i, %168, !dbg !1687
  %shl.i1405.i = shl i32 %and.i1403.i, %169, !dbg !1687
  %shr.i1407.i = lshr i32 %conv546.i, %sub.i.i177, !dbg !1687
  %add.i1408.i = add i32 %shr.i1407.i, %shl.i1405.i, !dbg !1687
  %idxprom.i1409.i = zext i32 %add.i1408.i to i64, !dbg !1687
  %arrayidx.i1410.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i64 %idxprom.i1409.i, !dbg !1687
  call void @llvm.dbg.value(metadata ptr %arrayidx.i1410.i, metadata !783, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()) #6, !dbg !1685
  %add2.i1411.i = or i32 %conv552.i, 256, !dbg !1688
  br label %do.body.i1436.i

do.body.i1436.i:                                  ; preds = %do.body.i1436.i, %if.then523.i
  %offset.0.i1412.i = phi i32 [ %and15.i1434.i, %do.body.i1436.i ], [ 256, %if.then523.i ], !dbg !1689
  %price.0.i1413.i = phi i32 [ %add13.i1431.i, %do.body.i1436.i ], [ 0, %if.then523.i ], !dbg !1685
  %symbol.addr.0.i1414.i = phi i32 [ %shl14.i1432.i, %do.body.i1436.i ], [ %add2.i1411.i, %if.then523.i ], !dbg !1689
  %match_byte.addr.0.i1415.i = phi i32 [ %shl3.i1416.i, %do.body.i1436.i ], [ %conv549.i, %if.then523.i ]
  call void @llvm.dbg.value(metadata i32 %match_byte.addr.0.i1415.i, metadata !777, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1414.i, metadata !778, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %price.0.i1413.i, metadata !784, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %offset.0.i1412.i, metadata !785, metadata !DIExpression()) #6, !dbg !1689
  %shl3.i1416.i = shl i32 %match_byte.addr.0.i1415.i, 1, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %shl3.i1416.i, metadata !777, metadata !DIExpression()) #6, !dbg !1685
  %and4.i1417.i = and i32 %shl3.i1416.i, %offset.0.i1412.i, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %and4.i1417.i, metadata !788, metadata !DIExpression()) #6, !dbg !1692
  %shr6.i1418.i = lshr i32 %symbol.addr.0.i1414.i, 8, !dbg !1693
  %add5.i1419.i = add i32 %shr6.i1418.i, %offset.0.i1412.i, !dbg !1694
  %add7.i1420.i = add i32 %add5.i1419.i, %and4.i1417.i, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %add7.i1420.i, metadata !790, metadata !DIExpression()) #6, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1414.i, metadata !791, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1692
  %idxprom10.i1421.i = zext i32 %add7.i1420.i to i64, !dbg !1696
  %arrayidx11.i1422.i = getelementptr inbounds i16, ptr %arrayidx.i1410.i, i64 %idxprom10.i1421.i, !dbg !1696
  %263 = load i16, ptr %arrayidx11.i1422.i, align 2, !dbg !1696, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %263, metadata !353, metadata !DIExpression()) #6, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1414.i, metadata !358, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1697
  %conv.i.i1423.i = zext i16 %263 to i64, !dbg !1699
  %.mask.i1424.i = and i32 %symbol.addr.0.i1414.i, 128, !dbg !1700
  %isneg.not.i1425.i = icmp eq i32 %.mask.i1424.i, 0, !dbg !1700
  %and.i31.i1426.i = select i1 %isneg.not.i1425.i, i64 0, i64 2032, !dbg !1700
  %xor.i.i1427.i = xor i64 %and.i31.i1426.i, %conv.i.i1423.i, !dbg !1701
  %shr.i32.i1428.i = lshr i64 %xor.i.i1427.i, 4, !dbg !1702
  %arrayidx.i34.i1429.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1428.i, !dbg !1703
  %264 = load i8, ptr %arrayidx.i34.i1429.i, align 1, !dbg !1703, !tbaa !367
  %conv1.i.i1430.i = zext i8 %264 to i32, !dbg !1703
  %add13.i1431.i = add i32 %price.0.i1413.i, %conv1.i.i1430.i, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %add13.i1431.i, metadata !784, metadata !DIExpression()) #6, !dbg !1685
  %shl14.i1432.i = shl nuw nsw i32 %symbol.addr.0.i1414.i, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %shl14.i1432.i, metadata !778, metadata !DIExpression()) #6, !dbg !1685
  %265 = xor i32 %shl14.i1432.i, %shl3.i1416.i, !dbg !1706
  %neg.i1433.i = xor i32 %265, -1, !dbg !1706
  %and15.i1434.i = and i32 %offset.0.i1412.i, %neg.i1433.i, !dbg !1707
  call void @llvm.dbg.value(metadata i32 %and15.i1434.i, metadata !785, metadata !DIExpression()) #6, !dbg !1689
  %cmp.i1435.i = icmp ult i32 %symbol.addr.0.i1414.i, 32768, !dbg !1708
  br i1 %cmp.i1435.i, label %do.body.i1436.i, label %get_literal_price.exit1438.i, !dbg !1709, !llvm.loop !1710

get_literal_price.exit1438.i:                     ; preds = %do.body.i1436.i
  %conv1.i1401.i = zext i8 %259 to i32, !dbg !1680
  call void @llvm.dbg.value(metadata i32 %add13.i1431.i, metadata !784, metadata !DIExpression()) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i32 undef, metadata !1229, metadata !DIExpression()) #6, !dbg !1669
  call void @llvm.dbg.value(metadata i32 5, metadata !1225, metadata !DIExpression()) #6, !dbg !1669
  %add570.i = add i32 %add529.i, 1, !dbg !1713
  %and572.i = and i32 %add570.i, %162, !dbg !1714
  call void @llvm.dbg.value(metadata i32 %and572.i, metadata !1228, metadata !DIExpression()) #6, !dbg !1669
  %idxprom577.i = zext i32 %and572.i to i64, !dbg !1715
  %arrayidx578.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 5, i64 %idxprom577.i, !dbg !1715
  %266 = load i16, ptr %arrayidx578.i, align 2, !dbg !1715, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %266, metadata !862, metadata !DIExpression()) #6, !dbg !1716
  %267 = lshr i16 %266, 4, !dbg !1718
  %268 = xor i16 %267, 127, !dbg !1718
  %idxprom.i1439.i = zext i16 %268 to i64, !dbg !1719
  %arrayidx.i1440.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1439.i, !dbg !1719
  %269 = load i8, ptr %arrayidx.i1440.i, align 1, !dbg !1719, !tbaa !367
  %conv1.i1441.i = zext i8 %269 to i32, !dbg !1719
  %270 = load i16, ptr %arrayidx583.i, align 2, !dbg !1720, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %270, metadata !862, metadata !DIExpression()) #6, !dbg !1721
  %271 = lshr i16 %270, 4, !dbg !1723
  %272 = xor i16 %271, 127, !dbg !1723
  %idxprom.i1442.i = zext i16 %272 to i64, !dbg !1724
  %arrayidx.i1443.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1442.i, !dbg !1724
  %273 = load i8, ptr %arrayidx.i1443.i, align 1, !dbg !1724, !tbaa !367
  %conv1.i1444.i = zext i8 %273 to i32, !dbg !1724
  call void @llvm.dbg.value(metadata i32 undef, metadata !1230, metadata !DIExpression()) #6, !dbg !1669
  %add588.i = add i32 %add439.i, 1, !dbg !1725
  %add589.i = add i32 %sub520.i, %add588.i, !dbg !1726
  call void @llvm.dbg.value(metadata i32 %add589.i, metadata !1231, metadata !DIExpression()) #6, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %len_end.addr.4.lcssa.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %cmp5911603.i = icmp ult i32 %len_end.addr.4.lcssa.i, %add589.i, !dbg !1727
  br i1 %cmp5911603.i, label %while.body593.preheader.i, label %get_literal_price.exit1438.while.end599_crit_edge.i, !dbg !1728

get_literal_price.exit1438.while.end599_crit_edge.i: ; preds = %get_literal_price.exit1438.i
  %.pre.i = zext i32 %add589.i to i64, !dbg !1729
  br label %while.end599.i, !dbg !1728

while.body593.preheader.i:                        ; preds = %get_literal_price.exit1438.i
  %274 = zext i32 %len_end.addr.4.lcssa.i to i64, !dbg !1728
  %wide.trip.count1670.i = zext i32 %add589.i to i64, !dbg !1727
  br label %while.body593.i, !dbg !1728

while.body593.i:                                  ; preds = %while.body593.i, %while.body593.preheader.i
  %indvars.iv1667.i = phi i64 [ %274, %while.body593.preheader.i ], [ %indvars.iv.next1668.i, %while.body593.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1667.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1668.i = add nuw nsw i64 %indvars.iv1667.i, 1, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1668.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %price598.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next1668.i, i32 5, !dbg !1732
  store i32 1073741824, ptr %price598.i, align 4, !dbg !1733, !tbaa !848
  %exitcond1671.not.i = icmp eq i64 %indvars.iv.next1668.i, %wide.trip.count1670.i, !dbg !1727
  br i1 %exitcond1671.not.i, label %while.end599.i, label %while.body593.i, !dbg !1728, !llvm.loop !1734

while.end599.i:                                   ; preds = %while.body593.i, %get_literal_price.exit1438.while.end599_crit_edge.i
  %idxprom604.pre-phi.i = phi i64 [ %.pre.i, %get_literal_price.exit1438.while.end599_crit_edge.i ], [ %wide.trip.count1670.i, %while.body593.i ], !dbg !1729
  %len_end.addr.5.lcssa.i = phi i32 [ %len_end.addr.4.lcssa.i, %get_literal_price.exit1438.while.end599_crit_edge.i ], [ %add589.i, %while.body593.i ]
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1512, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata i32 0, metadata !1517, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %sub520.i, metadata !1518, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata i32 5, metadata !1519, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %and572.i, metadata !1520, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1521, metadata !DIExpression()) #6, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %sub520.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %and572.i, metadata !1018, metadata !DIExpression()) #6, !dbg !1738
  %sub.i.i1446.i = add i32 %sub520.i, -2, !dbg !1740
  %idxprom1.i.i1447.i = zext i32 %sub.i.i1446.i to i64, !dbg !1741
  %arrayidx2.i.i1448.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom577.i, i64 %idxprom1.i.i1447.i, !dbg !1741
  %275 = load i32, ptr %arrayidx2.i.i1448.i, align 4, !dbg !1741, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !954, metadata !DIExpression()) #6, !dbg !1742
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()) #6, !dbg !1742
  call void @llvm.dbg.value(metadata i32 5, metadata !960, metadata !DIExpression()) #6, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %and572.i, metadata !961, metadata !DIExpression()) #6, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !962, metadata !DIExpression()) #6, !dbg !1742
  %276 = load i16, ptr %arrayidx.i.i1450.i, align 2, !dbg !1744, !tbaa !352
  %277 = lshr i16 %276, 4, !dbg !1744
  call void @llvm.dbg.value(metadata i16 %276, metadata !753, metadata !DIExpression()) #6, !dbg !1745
  %278 = zext i16 %277 to i64
  %arrayidx.i.i.i1451.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %278, !dbg !1747
  %279 = load i8, ptr %arrayidx.i.i.i1451.i, align 1, !dbg !1747, !tbaa !367
  %conv1.i.i.i1452.i = zext i8 %279 to i32, !dbg !1747
  call void @llvm.dbg.value(metadata i32 %conv1.i.i.i1452.i, metadata !963, metadata !DIExpression()) #6, !dbg !1742
  %arrayidx4.i.i1453.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 5, i64 %idxprom577.i, !dbg !1748
  %280 = load i16, ptr %arrayidx4.i.i1453.i, align 2, !dbg !1748, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %280, metadata !862, metadata !DIExpression()) #6, !dbg !1749
  %281 = lshr i16 %280, 4, !dbg !1751
  %282 = xor i16 %281, 127, !dbg !1751
  %idxprom.i.i.i1454.i = zext i16 %282 to i64, !dbg !1752
  %arrayidx.i43.i.i1455.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1454.i, !dbg !1752
  %283 = load i8, ptr %arrayidx.i43.i.i1455.i, align 1, !dbg !1752, !tbaa !367
  %conv1.i44.i.i1456.i = zext i8 %283 to i32, !dbg !1752
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1742
  %add15.i.i1457.i = add i32 %255, %add451.i, !dbg !1744
  %add.i1458.i = add i32 %add15.i.i1457.i, %conv1.i1401.i, !dbg !1753
  %add534.i = add i32 %add.i1458.i, %add13.i1431.i, !dbg !1754
  %add541.i = add i32 %add534.i, %conv1.i1441.i, !dbg !1755
  %add554.i = add i32 %add541.i, %conv1.i1444.i, !dbg !1756
  %add580.i = add i32 %add554.i, %275, !dbg !1757
  %add585.i = add i32 %add580.i, %conv1.i.i.i1452.i, !dbg !1758
  %add602.i = add i32 %add585.i, %conv1.i44.i.i1456.i, !dbg !1759
  call void @llvm.dbg.value(metadata i32 %add602.i, metadata !1232, metadata !DIExpression()) #6, !dbg !1669
  %price606.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 5, !dbg !1760
  %284 = load i32, ptr %price606.i, align 4, !dbg !1760, !tbaa !848
  %cmp607.i = icmp ult i32 %add602.i, %284, !dbg !1761
  br i1 %cmp607.i, label %if.then609.i, label %cleanup.i268, !dbg !1762

if.then609.i:                                     ; preds = %while.end599.i
  store i32 %add602.i, ptr %price606.i, align 4, !dbg !1763, !tbaa !848
  %pos_prev619.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 6, !dbg !1765
  store i32 %add588.i, ptr %pos_prev619.i, align 4, !dbg !1766, !tbaa !259
  %back_prev623.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 7, !dbg !1767
  store i32 0, ptr %back_prev623.i, align 4, !dbg !1768, !tbaa !265
  %prev_1_is_literal627.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 1, !dbg !1769
  store i8 1, ptr %prev_1_is_literal627.i, align 4, !dbg !1770, !tbaa !861
  %prev_2631.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 2, !dbg !1771
  store i8 1, ptr %prev_2631.i, align 1, !dbg !1772, !tbaa !1268
  %pos_prev_2635.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 3, !dbg !1773
  store i32 %126, ptr %pos_prev_2635.i, align 4, !dbg !1774, !tbaa !1272
  %back_prev_2639.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom604.pre-phi.i, i32 4, !dbg !1775
  store i32 %247, ptr %back_prev_2639.i, align 4, !dbg !1776, !tbaa !1277
  br label %cleanup.i268, !dbg !1777

cleanup.i268:                                     ; preds = %if.then609.i, %while.end599.i, %for.end518.i, %lor.lhs.false.i241, %for.body398.i
  %start_len.2.i = phi i32 [ %start_len.01609.i, %lor.lhs.false.i241 ], [ %start_len.01609.i, %for.body398.i ], [ %spec.select.i267, %while.end599.i ], [ %spec.select.i267, %if.then609.i ], [ %spec.select.i267, %for.end518.i ], !dbg !1255
  %len_end.addr.7.i = phi i32 [ %len_end.addr.31610.i, %lor.lhs.false.i241 ], [ %len_end.addr.31610.i, %for.body398.i ], [ %len_end.addr.5.lcssa.i, %while.end599.i ], [ %len_end.addr.5.lcssa.i, %if.then609.i ], [ %len_end.addr.4.lcssa.i, %for.end518.i ]
  call void @llvm.dbg.value(metadata i32 %len_end.addr.7.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %start_len.2.i, metadata !1212, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 1, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1673.i, metadata !1213, metadata !DIExpression()) #6, !dbg !1556
  %exitcond1676.not.i = icmp eq i64 %indvars.iv.next1673.i, 4, !dbg !1779
  br i1 %exitcond1676.not.i, label %for.cond.cleanup397.i, label %cleanup.i268.for.body398.i_crit_edge, !dbg !1557, !llvm.loop !1780

cleanup.i268.for.body398.i_crit_edge:             ; preds = %cleanup.i268
  %arrayidx401.i.phi.trans.insert = getelementptr inbounds i32, ptr %reps, i64 %indvars.iv.next1673.i
  %.pre = load i32, ptr %arrayidx401.i.phi.trans.insert, align 4, !dbg !1561, !tbaa !263
  br label %for.body398.i, !dbg !1557

while.cond649.i:                                  ; preds = %for.cond.cleanup397.i, %while.cond649.i
  %matches_count.0.i = phi i32 [ %inc655.i, %while.cond649.i ], [ 0, %for.cond.cleanup397.i ], !dbg !1782
  call void @llvm.dbg.value(metadata i32 %matches_count.0.i, metadata !1173, metadata !DIExpression()) #6, !dbg !1255
  %idxprom650.i = zext i32 %matches_count.0.i to i64, !dbg !1784
  %arrayidx651.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom650.i, !dbg !1784
  %285 = load i32, ptr %arrayidx651.i, align 4, !dbg !1785, !tbaa !1051
  %cmp652.i = icmp ugt i32 %194, %285, !dbg !1786
  %inc655.i = add i32 %matches_count.0.i, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i32 %inc655.i, metadata !1173, metadata !DIExpression()) #6, !dbg !1255
  br i1 %cmp652.i, label %while.cond649.i, label %while.end656.i, !dbg !1788, !llvm.loop !1789

while.end656.i:                                   ; preds = %while.cond649.i
  %idxprom650.i.le = zext i32 %matches_count.0.i to i64, !dbg !1784
  %arrayidx651.i.le = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom650.i.le, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %inc655.i, metadata !1173, metadata !DIExpression()) #6, !dbg !1255
  store i32 %194, ptr %arrayidx651.i.le, align 4, !dbg !1791, !tbaa !1051
  br label %if.end662.i, !dbg !1792

if.end662.i:                                      ; preds = %while.end656.i, %for.cond.cleanup397.i
  %new_len.0.i = phi i32 [ %194, %while.end656.i ], [ %call29, %for.cond.cleanup397.i ], !dbg !1255
  %matches_count.1.i = phi i32 [ %inc655.i, %while.end656.i ], [ %128, %for.cond.cleanup397.i ], !dbg !1255
  call void @llvm.dbg.value(metadata i32 %matches_count.1.i, metadata !1173, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %new_len.0.i, metadata !1174, metadata !DIExpression()) #6, !dbg !1255
  %cmp663.not.i = icmp ult i32 %new_len.0.i, %start_len.2.i, !dbg !1793
  br i1 %cmp663.not.i, label %helper2.exit, label %if.then665.i, !dbg !1794

if.then665.i:                                     ; preds = %if.end662.i
  call void @llvm.dbg.value(metadata i16 %179, metadata !753, metadata !DIExpression()) #6, !dbg !1795
  %286 = zext i16 %180 to i64
  %arrayidx.i1459.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %286, !dbg !1797
  %287 = load i8, ptr %arrayidx.i1459.i, align 1, !dbg !1797, !tbaa !367
  %conv1.i1460.i = zext i8 %287 to i32, !dbg !1797
  call void @llvm.dbg.value(metadata i32 undef, metadata !1233, metadata !DIExpression()) #6, !dbg !1798
  %add672.i = add i32 %new_len.0.i, %126
  call void @llvm.dbg.value(metadata i32 %len_end.addr.7.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %cmp6731612.i = icmp ult i32 %len_end.addr.7.i, %add672.i, !dbg !1799
  br i1 %cmp6731612.i, label %while.body675.preheader.i, label %while.cond683.preheader.i, !dbg !1800

while.body675.preheader.i:                        ; preds = %if.then665.i
  %288 = zext i32 %len_end.addr.7.i to i64, !dbg !1800
  %wide.trip.count1680.i = zext i32 %add672.i to i64, !dbg !1799
  br label %while.body675.i, !dbg !1800

while.cond683.preheader.i:                        ; preds = %while.body675.i, %if.then665.i
  %len_end.addr.8.lcssa.i = phi i32 [ %len_end.addr.7.i, %if.then665.i ], [ %add672.i, %while.body675.i ]
  br label %while.cond683.i, !dbg !1801

while.body675.i:                                  ; preds = %while.body675.i, %while.body675.preheader.i
  %indvars.iv1677.i = phi i64 [ %288, %while.body675.preheader.i ], [ %indvars.iv.next1678.i, %while.body675.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1677.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1678.i = add nuw nsw i64 %indvars.iv1677.i, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1678.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %price680.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next1678.i, i32 5, !dbg !1803
  store i32 1073741824, ptr %price680.i, align 4, !dbg !1804, !tbaa !848
  %exitcond1681.not.i = icmp eq i64 %indvars.iv.next1678.i, %wide.trip.count1680.i, !dbg !1799
  br i1 %exitcond1681.not.i, label %while.cond683.preheader.i, label %while.body675.i, !dbg !1800, !llvm.loop !1805

while.cond683.i:                                  ; preds = %while.cond683.i, %while.cond683.preheader.i
  %i682.0.i = phi i32 [ %inc691.i, %while.cond683.i ], [ 0, %while.cond683.preheader.i ], !dbg !1798
  call void @llvm.dbg.value(metadata i32 %i682.0.i, metadata !1236, metadata !DIExpression()) #6, !dbg !1798
  %idxprom685.i = zext i32 %i682.0.i to i64, !dbg !1807
  %arrayidx686.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom685.i, !dbg !1807
  %289 = load i32, ptr %arrayidx686.i, align 4, !dbg !1808, !tbaa !1051
  %cmp688.i = icmp ugt i32 %start_len.2.i, %289, !dbg !1809
  %inc691.i = add i32 %i682.0.i, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %inc691.i, metadata !1236, metadata !DIExpression()) #6, !dbg !1798
  br i1 %cmp688.i, label %while.cond683.i, label %for.cond694.preheader.i, !dbg !1801, !llvm.loop !1811

for.cond694.preheader.i:                          ; preds = %while.cond683.i
  %add11.i.i269 = add i32 %add223.i, %conv1.i1460.i
  %cond779.i = select i1 %cmp188.i, i64 7, i64 10
  br label %for.cond694.i.outer, !dbg !1813

for.cond694.i.outer:                              ; preds = %if.end890.i, %for.cond694.preheader.i
  %indvars.iv1682.in.i.ph = phi i32 [ %indvars.iv1682.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %i682.1.i.ph = phi i32 [ %inc891.i, %if.end890.i ], [ %i682.0.i, %for.cond694.preheader.i ]
  %len_test693.0.i.ph = phi i32 [ %add744.i, %if.end890.i ], [ %start_len.2.i, %for.cond694.preheader.i ]
  %len_end.addr.9.i.ph = phi i32 [ %len_end.addr.11.i, %if.end890.i ], [ %len_end.addr.8.lcssa.i, %for.cond694.preheader.i ]
  %idxprom696.i = zext i32 %i682.1.i.ph to i64
  %arrayidx697.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom696.i
  %dist.i270 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom696.i, i32 1
  %290 = load i32, ptr %dist.i270, align 4, !tbaa !718
  %cmp1.i.i274 = icmp ult i32 %290, 128
  %cmp.i.i.i278 = icmp ult i32 %290, 524288
  %cmp1.i.i.i279 = icmp sgt i32 %290, -1
  %..i.i.i280 = select i1 %cmp1.i.i.i279, i32 18, i32 30
  %.21.i.i.i281 = select i1 %cmp1.i.i.i279, i64 36, i64 60
  %and.i1465.i = and i32 %290, 15
  %idxprom8.i.i291 = zext i32 %and.i1465.i to i64
  %arrayidx9.i.i292 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 28, i64 %idxprom8.i.i291
  %idxprom2.i.i276 = zext i32 %290 to i64
  %add719.i = add i32 %290, 4
  %291 = load i32, ptr %arrayidx697.i, align 4, !tbaa !1051
  br label %for.cond694.i, !dbg !1813

for.cond694.i:                                    ; preds = %for.cond694.i.outer, %if.end730.for.inc906_crit_edge.i
  %indvars.iv1682.in.i = phi i32 [ %indvars.iv1682.i, %if.end730.for.inc906_crit_edge.i ], [ %indvars.iv1682.in.i.ph, %for.cond694.i.outer ]
  %len_test693.0.i = phi i32 [ %.pre1694.i, %if.end730.for.inc906_crit_edge.i ], [ %len_test693.0.i.ph, %for.cond694.i.outer ], !dbg !1814
  %indvars.iv1682.i = add i32 %indvars.iv1682.in.i, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %len_end.addr.9.i.ph, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %len_test693.0.i, metadata !1237, metadata !DIExpression()) #6, !dbg !1814
  call void @llvm.dbg.value(metadata i32 %i682.1.i.ph, metadata !1236, metadata !DIExpression()) #6, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %290, metadata !1239, metadata !DIExpression()) #6, !dbg !1815
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1061, metadata !DIExpression()) #6, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %290, metadata !1066, metadata !DIExpression()) #6, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %len_test693.0.i, metadata !1067, metadata !DIExpression()) #6, !dbg !1816
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !1068, metadata !DIExpression()) #6, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1069, metadata !DIExpression()) #6, !dbg !1816
  %cmp.i1461.i = icmp ult i32 %len_test693.0.i, 6, !dbg !1818
  br i1 %cmp.i1461.i, label %cond.true.i.i272, label %cond.end.i.i275, !dbg !1818

cond.true.i.i272:                                 ; preds = %for.cond694.i
  %sub.i1462.i = add nsw i32 %len_test693.0.i, -2, !dbg !1818
  %phi.cast.i.i271 = zext i32 %sub.i1462.i to i64, !dbg !1818
  br label %cond.end.i.i275, !dbg !1818

cond.end.i.i275:                                  ; preds = %cond.true.i.i272, %for.cond694.i
  %cond.i.i273 = phi i64 [ %phi.cast.i.i271, %cond.true.i.i272 ], [ 3, %for.cond694.i ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1070, metadata !DIExpression()) #6, !dbg !1816
  br i1 %cmp1.i.i274, label %if.then.i1463.i, label %if.else.i1464.i, !dbg !1819

if.then.i1463.i:                                  ; preds = %cond.end.i.i275
  %arrayidx3.i.i277 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 25, i64 %cond.i.i273, i64 %idxprom2.i.i276, !dbg !1820
  %292 = load i32, ptr %arrayidx3.i.i277, align 4, !dbg !1820, !tbaa !263
  call void @llvm.dbg.value(metadata i32 %292, metadata !1071, metadata !DIExpression()) #6, !dbg !1816
  br label %get_pos_len_price.exit.i294, !dbg !1821

if.else.i1464.i:                                  ; preds = %cond.end.i.i275
  call void @llvm.dbg.value(metadata i32 %290, metadata !1083, metadata !DIExpression()) #6, !dbg !1822
  %spec.select = select i1 %cmp.i.i.i278, i32 6, i32 %..i.i.i280, !dbg !1824
  %spec.select390 = select i1 %cmp.i.i.i278, i64 12, i64 %.21.i.i.i281, !dbg !1824
  %shr10.i.i.i285 = lshr i32 %290, %spec.select, !dbg !1822
  %idxprom11.i.i.i286 = zext i32 %shr10.i.i.i285 to i64, !dbg !1822
  %arrayidx12.i.i.i287 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %idxprom11.i.i.i286, !dbg !1822
  %293 = load i8, ptr %arrayidx12.i.i.i287, align 1, !dbg !1822, !tbaa !367
  %conv13.i.i.i288 = zext i8 %293 to i64, !dbg !1822
  %add14.i.i.i289 = add nuw nsw i64 %spec.select390, %conv13.i.i.i288, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %add14.i.i.i289, metadata !1072, metadata !DIExpression()) #6, !dbg !1825
  %arrayidx7.i.i290 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 24, i64 %cond.i.i273, i64 %add14.i.i.i289, !dbg !1826
  %294 = load i32, ptr %arrayidx7.i.i290, align 4, !dbg !1826, !tbaa !263
  %295 = load i32, ptr %arrayidx9.i.i292, align 4, !dbg !1827, !tbaa !263
  %add.i1466.i = add i32 %295, %294, !dbg !1828
  call void @llvm.dbg.value(metadata i32 %add.i1466.i, metadata !1071, metadata !DIExpression()) #6, !dbg !1816
  br label %get_pos_len_price.exit.i294

get_pos_len_price.exit.i294:                      ; preds = %if.else.i1464.i, %if.then.i1463.i
  %price.0.i1467.i = phi i32 [ %292, %if.then.i1463.i ], [ %add.i1466.i, %if.else.i1464.i ], !dbg !1829
  call void @llvm.dbg.value(metadata i32 %price.0.i1467.i, metadata !1071, metadata !DIExpression()) #6, !dbg !1816
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 29184, DW_OP_stack_value)) #6, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %len_test693.0.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1830
  call void @llvm.dbg.value(metadata i32 %and.i169, metadata !1018, metadata !DIExpression()) #6, !dbg !1830
  %sub.i.i1469.i = add i32 %len_test693.0.i, -2, !dbg !1832
  %idxprom1.i.i1470.i = zext i32 %sub.i.i1469.i to i64, !dbg !1833
  %arrayidx2.i.i1471.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, i32 5, i64 %idxprom185.i, i64 %idxprom1.i.i1470.i, !dbg !1833
  %296 = load i32, ptr %arrayidx2.i.i1471.i, align 4, !dbg !1833, !tbaa !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !1071, metadata !DIExpression()) #6, !dbg !1816
  %add670.i = add i32 %add11.i.i269, %price.0.i1467.i, !dbg !1834
  %add700.i = add i32 %add670.i, %296, !dbg !1835
  call void @llvm.dbg.value(metadata i32 %add700.i, metadata !1242, metadata !DIExpression()) #6, !dbg !1815
  %add702.i = add i32 %len_test693.0.i, %126, !dbg !1836
  %idxprom703.i = zext i32 %add702.i to i64, !dbg !1838
  %price705.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom703.i, i32 5, !dbg !1839
  %297 = load i32, ptr %price705.i, align 4, !dbg !1839, !tbaa !848
  %cmp706.i = icmp ult i32 %add700.i, %297, !dbg !1840
  br i1 %cmp706.i, label %if.then708.i, label %if.end730.i, !dbg !1841

if.then708.i:                                     ; preds = %get_pos_len_price.exit.i294
  store i32 %add700.i, ptr %price705.i, align 4, !dbg !1842, !tbaa !848
  %pos_prev718.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom703.i, i32 6, !dbg !1844
  store i32 %126, ptr %pos_prev718.i, align 4, !dbg !1845, !tbaa !259
  %back_prev724.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom703.i, i32 7, !dbg !1846
  store i32 %add719.i, ptr %back_prev724.i, align 4, !dbg !1847, !tbaa !265
  %prev_1_is_literal729.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom703.i, i32 1, !dbg !1848
  store i8 0, ptr %prev_1_is_literal729.i, align 4, !dbg !1849, !tbaa !861
  br label %if.end730.i, !dbg !1850

if.end730.i:                                      ; preds = %if.then708.i, %get_pos_len_price.exit.i294
  %cmp735.i = icmp eq i32 %len_test693.0.i, %291, !dbg !1851
  br i1 %cmp735.i, label %if.then737.i, label %if.end730.for.inc906_crit_edge.i, !dbg !1852

if.end730.for.inc906_crit_edge.i:                 ; preds = %if.end730.i
  %.pre1694.i = add i32 %len_test693.0.i, 1, !dbg !1853
  br label %for.cond694.i, !dbg !1852, !llvm.loop !1854

if.then737.i:                                     ; preds = %if.end730.i
  %298 = zext i32 %indvars.iv1682.i to i64, !dbg !1856
  %idx.ext739.i = zext i32 %290 to i64, !dbg !1857
  %idx.neg740.i = sub nsw i64 0, %idx.ext739.i, !dbg !1857
  %add.ptr742.i = getelementptr inbounds i8, ptr %arrayidx187.i, i64 %idx.neg740.i, !dbg !1858
  call void @llvm.dbg.value(metadata ptr %add.ptr742.i, metadata !1243, metadata !DIExpression()) #6, !dbg !1859
  %add744.i = add i32 %len_test693.0.i, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %add744.i, metadata !1246, metadata !DIExpression()) #6, !dbg !1859
  %add746.i = add i32 %add744.i, %125, !dbg !1861
  %299 = call i32 @llvm.umin.i32(i32 %add746.i, i32 %127) #6, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %299, metadata !1247, metadata !DIExpression()) #6, !dbg !1859
  %cmp7551615.i = icmp ult i32 %add744.i, %299, !dbg !1862
  br i1 %cmp7551615.i, label %land.rhs757.preheader.i, label %for.end770.i, !dbg !1865

land.rhs757.preheader.i:                          ; preds = %if.then737.i
  %300 = zext i32 %299 to i64, !dbg !1866
  br label %land.rhs757.i, !dbg !1866

land.rhs757.i:                                    ; preds = %for.inc768.i, %land.rhs757.preheader.i
  %indvars.iv1684.i = phi i64 [ %298, %land.rhs757.preheader.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1684.i, metadata !1246, metadata !DIExpression()) #6, !dbg !1859
  %arrayidx759.i = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv1684.i, !dbg !1867
  %301 = load i8, ptr %arrayidx759.i, align 1, !dbg !1867, !tbaa !367
  %arrayidx762.i = getelementptr inbounds i8, ptr %add.ptr742.i, i64 %indvars.iv1684.i, !dbg !1868
  %302 = load i8, ptr %arrayidx762.i, align 1, !dbg !1868, !tbaa !367
  %cmp764.i = icmp eq i8 %301, %302, !dbg !1869
  br i1 %cmp764.i, label %for.inc768.i, label %for.end770.loopexit.i, !dbg !1866

for.inc768.i:                                     ; preds = %land.rhs757.i
  %indvars.iv.next1685.i = add nuw nsw i64 %indvars.iv1684.i, 1, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1685.i, metadata !1246, metadata !DIExpression()) #6, !dbg !1859
  %cmp755.i = icmp ult i64 %indvars.iv.next1685.i, %300, !dbg !1862
  br i1 %cmp755.i, label %land.rhs757.i, label %for.end770.loopexit.i, !dbg !1865, !llvm.loop !1871

for.end770.loopexit.i:                            ; preds = %for.inc768.i, %land.rhs757.i
  %len_test_2743.0.lcssa.ph.in.i = phi i64 [ %indvars.iv1684.i, %land.rhs757.i ], [ %indvars.iv.next1685.i, %for.inc768.i ]
  %len_test_2743.0.lcssa.ph.i = trunc i64 %len_test_2743.0.lcssa.ph.in.i to i32, !dbg !1873
  br label %for.end770.i, !dbg !1874

for.end770.i:                                     ; preds = %for.end770.loopexit.i, %if.then737.i
  %len_test_2743.0.lcssa.i = phi i32 [ %add744.i, %if.then737.i ], [ %len_test_2743.0.lcssa.ph.i, %for.end770.loopexit.i ], !dbg !1859
  %sub772.i = sub i32 %len_test_2743.0.lcssa.i, %add744.i, !dbg !1874
  call void @llvm.dbg.value(metadata i32 %sub772.i, metadata !1246, metadata !DIExpression()) #6, !dbg !1859
  %cmp773.i = icmp ugt i32 %sub772.i, 1, !dbg !1875
  br i1 %cmp773.i, label %if.then775.i, label %if.end890.i, !dbg !1876

if.then775.i:                                     ; preds = %for.end770.i
  call void @llvm.dbg.value(metadata i64 %cond779.i, metadata !1248, metadata !DIExpression()) #6, !dbg !1877
  %add781.i = add i32 %len_test693.0.i, %add, !dbg !1878
  %and783.i = and i32 %add781.i, %162, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %and783.i, metadata !1251, metadata !DIExpression()) #6, !dbg !1877
  %idxprom788.i = zext i32 %and783.i to i64, !dbg !1880
  %arrayidx789.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 %cond779.i, i64 %idxprom788.i, !dbg !1880
  %303 = load i16, ptr %arrayidx789.i, align 2, !dbg !1880, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %303, metadata !753, metadata !DIExpression()) #6, !dbg !1881
  %304 = lshr i16 %303, 4, !dbg !1883
  %305 = zext i16 %304 to i64
  %arrayidx.i1472.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %305, !dbg !1884
  %306 = load i8, ptr %arrayidx.i1472.i, align 1, !dbg !1884, !tbaa !367
  %sub793.i = add i32 %len_test693.0.i, -1, !dbg !1885
  %idxprom794.i = zext i32 %sub793.i to i64, !dbg !1886
  %arrayidx795.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom794.i, !dbg !1886
  %307 = load i8, ptr %arrayidx795.i, align 1, !dbg !1886, !tbaa !367
  %conv796.i = zext i8 %307 to i32, !dbg !1886
  %idxprom797.i = zext i32 %len_test693.0.i to i64, !dbg !1887
  %arrayidx798.i = getelementptr inbounds i8, ptr %add.ptr742.i, i64 %idxprom797.i, !dbg !1887
  %308 = load i8, ptr %arrayidx798.i, align 1, !dbg !1887, !tbaa !367
  %conv799.i = zext i8 %308 to i32, !dbg !1887
  %arrayidx801.i = getelementptr inbounds i8, ptr %add.ptr, i64 %idxprom797.i, !dbg !1888
  %309 = load i8, ptr %arrayidx801.i, align 1, !dbg !1888, !tbaa !367
  %conv802.i = zext i8 %309 to i32, !dbg !1888
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !765, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %add781.i, metadata !774, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %conv796.i, metadata !775, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i1 true, metadata !776, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %conv799.i, metadata !777, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %conv802.i, metadata !778, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !779, metadata !DIExpression()) #6, !dbg !1889
  %and.i1475.i = and i32 %add781.i, %168, !dbg !1891
  %shl.i1477.i = shl i32 %and.i1475.i, %169, !dbg !1891
  %shr.i1479.i = lshr i32 %conv796.i, %sub.i.i177, !dbg !1891
  %add.i1480.i = add i32 %shr.i1479.i, %shl.i1477.i, !dbg !1891
  %idxprom.i1481.i = zext i32 %add.i1480.i to i64, !dbg !1891
  %arrayidx.i1482.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i64 %idxprom.i1481.i, !dbg !1891
  call void @llvm.dbg.value(metadata ptr %arrayidx.i1482.i, metadata !783, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 0, metadata !784, metadata !DIExpression()) #6, !dbg !1889
  %add2.i1483.i = or i32 %conv802.i, 256, !dbg !1892
  br label %do.body.i1508.i

do.body.i1508.i:                                  ; preds = %do.body.i1508.i, %if.then775.i
  %offset.0.i1484.i = phi i32 [ %and15.i1506.i, %do.body.i1508.i ], [ 256, %if.then775.i ], !dbg !1893
  %price.0.i1485.i = phi i32 [ %add13.i1503.i, %do.body.i1508.i ], [ 0, %if.then775.i ], !dbg !1889
  %symbol.addr.0.i1486.i = phi i32 [ %shl14.i1504.i, %do.body.i1508.i ], [ %add2.i1483.i, %if.then775.i ], !dbg !1893
  %match_byte.addr.0.i1487.i = phi i32 [ %shl3.i1488.i, %do.body.i1508.i ], [ %conv799.i, %if.then775.i ]
  call void @llvm.dbg.value(metadata i32 %match_byte.addr.0.i1487.i, metadata !777, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1486.i, metadata !778, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %price.0.i1485.i, metadata !784, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %offset.0.i1484.i, metadata !785, metadata !DIExpression()) #6, !dbg !1893
  %shl3.i1488.i = shl i32 %match_byte.addr.0.i1487.i, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i32 %shl3.i1488.i, metadata !777, metadata !DIExpression()) #6, !dbg !1889
  %and4.i1489.i = and i32 %shl3.i1488.i, %offset.0.i1484.i, !dbg !1895
  call void @llvm.dbg.value(metadata i32 %and4.i1489.i, metadata !788, metadata !DIExpression()) #6, !dbg !1896
  %shr6.i1490.i = lshr i32 %symbol.addr.0.i1486.i, 8, !dbg !1897
  %add5.i1491.i = add i32 %shr6.i1490.i, %offset.0.i1484.i, !dbg !1898
  %add7.i1492.i = add i32 %add5.i1491.i, %and4.i1489.i, !dbg !1899
  call void @llvm.dbg.value(metadata i32 %add7.i1492.i, metadata !790, metadata !DIExpression()) #6, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1486.i, metadata !791, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1896
  %idxprom10.i1493.i = zext i32 %add7.i1492.i to i64, !dbg !1900
  %arrayidx11.i1494.i = getelementptr inbounds i16, ptr %arrayidx.i1482.i, i64 %idxprom10.i1493.i, !dbg !1900
  %310 = load i16, ptr %arrayidx11.i1494.i, align 2, !dbg !1900, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %310, metadata !353, metadata !DIExpression()) #6, !dbg !1901
  call void @llvm.dbg.value(metadata i32 %symbol.addr.0.i1486.i, metadata !358, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)) #6, !dbg !1901
  %conv.i.i1495.i = zext i16 %310 to i64, !dbg !1903
  %.mask.i1496.i = and i32 %symbol.addr.0.i1486.i, 128, !dbg !1904
  %isneg.not.i1497.i = icmp eq i32 %.mask.i1496.i, 0, !dbg !1904
  %and.i31.i1498.i = select i1 %isneg.not.i1497.i, i64 0, i64 2032, !dbg !1904
  %xor.i.i1499.i = xor i64 %and.i31.i1498.i, %conv.i.i1495.i, !dbg !1905
  %shr.i32.i1500.i = lshr i64 %xor.i.i1499.i, 4, !dbg !1906
  %arrayidx.i34.i1501.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %shr.i32.i1500.i, !dbg !1907
  %311 = load i8, ptr %arrayidx.i34.i1501.i, align 1, !dbg !1907, !tbaa !367
  %conv1.i.i1502.i = zext i8 %311 to i32, !dbg !1907
  %add13.i1503.i = add i32 %price.0.i1485.i, %conv1.i.i1502.i, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %add13.i1503.i, metadata !784, metadata !DIExpression()) #6, !dbg !1889
  %shl14.i1504.i = shl nuw nsw i32 %symbol.addr.0.i1486.i, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %shl14.i1504.i, metadata !778, metadata !DIExpression()) #6, !dbg !1889
  %312 = xor i32 %shl14.i1504.i, %shl3.i1488.i, !dbg !1910
  %neg.i1505.i = xor i32 %312, -1, !dbg !1910
  %and15.i1506.i = and i32 %offset.0.i1484.i, %neg.i1505.i, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %and15.i1506.i, metadata !785, metadata !DIExpression()) #6, !dbg !1893
  %cmp.i1507.i = icmp ult i32 %symbol.addr.0.i1486.i, 32768, !dbg !1912
  br i1 %cmp.i1507.i, label %do.body.i1508.i, label %get_literal_price.exit1510.i, !dbg !1913, !llvm.loop !1914

get_literal_price.exit1510.i:                     ; preds = %do.body.i1508.i
  %conv1.i1473.i = zext i8 %306 to i32, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %add13.i1503.i, metadata !784, metadata !DIExpression()) #6, !dbg !1889
  call void @llvm.dbg.value(metadata i32 undef, metadata !1252, metadata !DIExpression()) #6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 4, metadata !1248, metadata !DIExpression()) #6, !dbg !1877
  %add819.i = add i32 %and783.i, 1, !dbg !1917
  %and821.i = and i32 %add819.i, %162, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %and821.i, metadata !1251, metadata !DIExpression()) #6, !dbg !1877
  %idxprom826.i = zext i32 %and821.i to i64, !dbg !1919
  %arrayidx827.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, i64 4, i64 %idxprom826.i, !dbg !1919
  %313 = load i16, ptr %arrayidx827.i, align 2, !dbg !1919, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %313, metadata !862, metadata !DIExpression()) #6, !dbg !1920
  %314 = lshr i16 %313, 4, !dbg !1922
  %315 = xor i16 %314, 127, !dbg !1922
  %idxprom.i1511.i = zext i16 %315 to i64, !dbg !1923
  %arrayidx.i1512.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1511.i, !dbg !1923
  %316 = load i8, ptr %arrayidx.i1512.i, align 1, !dbg !1923, !tbaa !367
  %conv1.i1513.i = zext i8 %316 to i32, !dbg !1923
  %317 = load i16, ptr %arrayidx832.i, align 2, !dbg !1924, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %317, metadata !862, metadata !DIExpression()) #6, !dbg !1925
  %318 = lshr i16 %317, 4, !dbg !1927
  %319 = xor i16 %318, 127, !dbg !1927
  %idxprom.i1514.i = zext i16 %319 to i64, !dbg !1928
  %arrayidx.i1515.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i1514.i, !dbg !1928
  %320 = load i8, ptr %arrayidx.i1515.i, align 1, !dbg !1928, !tbaa !367
  %conv1.i1516.i = zext i8 %320 to i32, !dbg !1928
  call void @llvm.dbg.value(metadata i32 undef, metadata !1253, metadata !DIExpression()) #6, !dbg !1877
  %add837.i = add i32 %add702.i, 1, !dbg !1929
  %add838.i = add i32 %sub772.i, %add837.i, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %add838.i, metadata !1254, metadata !DIExpression()) #6, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %len_end.addr.9.i.ph, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %cmp8401619.i = icmp ult i32 %len_end.addr.9.i.ph, %add838.i, !dbg !1931
  br i1 %cmp8401619.i, label %while.body842.preheader.i, label %get_literal_price.exit1510.while.end848_crit_edge.i, !dbg !1932

get_literal_price.exit1510.while.end848_crit_edge.i: ; preds = %get_literal_price.exit1510.i
  %.pre1693.i = zext i32 %add838.i to i64, !dbg !1933
  br label %while.end848.i, !dbg !1932

while.body842.preheader.i:                        ; preds = %get_literal_price.exit1510.i
  %321 = zext i32 %len_end.addr.9.i.ph to i64, !dbg !1932
  %wide.trip.count1691.i = zext i32 %add838.i to i64, !dbg !1931
  br label %while.body842.i, !dbg !1932

while.body842.i:                                  ; preds = %while.body842.i, %while.body842.preheader.i
  %indvars.iv1687.i = phi i64 [ %321, %while.body842.preheader.i ], [ %indvars.iv.next1688.i, %while.body842.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1687.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %indvars.iv.next1688.i = add nuw nsw i64 %indvars.iv1687.i, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next1688.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %price847.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %indvars.iv.next1688.i, i32 5, !dbg !1936
  store i32 1073741824, ptr %price847.i, align 4, !dbg !1937, !tbaa !848
  %exitcond1692.not.i = icmp eq i64 %indvars.iv.next1688.i, %wide.trip.count1691.i, !dbg !1931
  br i1 %exitcond1692.not.i, label %while.end848.i, label %while.body842.i, !dbg !1932, !llvm.loop !1938

while.end848.i:                                   ; preds = %while.body842.i, %get_literal_price.exit1510.while.end848_crit_edge.i
  %idxprom852.pre-phi.i = phi i64 [ %.pre1693.i, %get_literal_price.exit1510.while.end848_crit_edge.i ], [ %wide.trip.count1691.i, %while.body842.i ], !dbg !1933
  %len_end.addr.10.lcssa.i = phi i32 [ %len_end.addr.9.i.ph, %get_literal_price.exit1510.while.end848_crit_edge.i ], [ %add838.i, %while.body842.i ]
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1512, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata i32 0, metadata !1517, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %sub772.i, metadata !1518, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata i32 4, metadata !1519, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata i32 %and821.i, metadata !1520, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1521, metadata !DIExpression()) #6, !dbg !1940
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 47688, DW_OP_stack_value)) #6, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %sub772.i, metadata !1017, metadata !DIExpression()) #6, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %and821.i, metadata !1018, metadata !DIExpression()) #6, !dbg !1942
  %sub.i.i1518.i = add i32 %sub772.i, -2, !dbg !1944
  %idxprom1.i.i1519.i = zext i32 %sub.i.i1518.i to i64, !dbg !1945
  %arrayidx2.i.i1520.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, i32 5, i64 %idxprom826.i, i64 %idxprom1.i.i1519.i, !dbg !1945
  %322 = load i32, ptr %arrayidx2.i.i1520.i, align 4, !dbg !1945, !tbaa !263
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !954, metadata !DIExpression()) #6, !dbg !1946
  call void @llvm.dbg.value(metadata i32 0, metadata !959, metadata !DIExpression()) #6, !dbg !1946
  call void @llvm.dbg.value(metadata i32 4, metadata !960, metadata !DIExpression()) #6, !dbg !1946
  call void @llvm.dbg.value(metadata i32 %and821.i, metadata !961, metadata !DIExpression()) #6, !dbg !1946
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !962, metadata !DIExpression()) #6, !dbg !1946
  %323 = load i16, ptr %arrayidx.i.i1522.i, align 2, !dbg !1948, !tbaa !352
  %324 = lshr i16 %323, 4, !dbg !1948
  call void @llvm.dbg.value(metadata i16 %323, metadata !753, metadata !DIExpression()) #6, !dbg !1949
  %325 = zext i16 %324 to i64
  %arrayidx.i.i.i1523.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %325, !dbg !1951
  %326 = load i8, ptr %arrayidx.i.i.i1523.i, align 1, !dbg !1951, !tbaa !367
  %conv1.i.i.i1524.i = zext i8 %326 to i32, !dbg !1951
  call void @llvm.dbg.value(metadata i32 %conv1.i.i.i1524.i, metadata !963, metadata !DIExpression()) #6, !dbg !1946
  %arrayidx4.i.i1525.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, i64 4, i64 %idxprom826.i, !dbg !1952
  %327 = load i16, ptr %arrayidx4.i.i1525.i, align 2, !dbg !1952, !tbaa !352
  call void @llvm.dbg.value(metadata i16 %327, metadata !862, metadata !DIExpression()) #6, !dbg !1953
  %328 = lshr i16 %327, 4, !dbg !1955
  %329 = xor i16 %328, 127, !dbg !1955
  %idxprom.i.i.i1526.i = zext i16 %329 to i64, !dbg !1956
  %arrayidx.i43.i.i1527.i = getelementptr inbounds [128 x i8], ptr @lzma_rc_prices, i64 0, i64 %idxprom.i.i.i1526.i, !dbg !1956
  %330 = load i8, ptr %arrayidx.i43.i.i1527.i, align 1, !dbg !1956, !tbaa !367
  %conv1.i44.i.i1528.i = zext i8 %330 to i32, !dbg !1956
  call void @llvm.dbg.value(metadata i32 undef, metadata !963, metadata !DIExpression()) #6, !dbg !1946
  %add15.i.i1529.i = add i32 %add700.i, %conv1.i1473.i, !dbg !1948
  %add.i1530.i = add i32 %add15.i.i1529.i, %add13.i1503.i, !dbg !1957
  %add791.i = add i32 %add.i1530.i, %conv1.i1513.i, !dbg !1958
  %add804.i = add i32 %add791.i, %conv1.i1516.i, !dbg !1959
  %add829.i = add i32 %add804.i, %322, !dbg !1960
  %add834.i = add i32 %add829.i, %conv1.i.i.i1524.i, !dbg !1961
  %add850.i = add i32 %add834.i, %conv1.i44.i.i1528.i, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %add850.i, metadata !1242, metadata !DIExpression()) #6, !dbg !1815
  %price854.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 5, !dbg !1963
  %331 = load i32, ptr %price854.i, align 4, !dbg !1963, !tbaa !848
  %cmp855.i = icmp ult i32 %add850.i, %331, !dbg !1964
  br i1 %cmp855.i, label %if.then857.i, label %if.end890.i, !dbg !1965

if.then857.i:                                     ; preds = %while.end848.i
  store i32 %add850.i, ptr %price854.i, align 4, !dbg !1966, !tbaa !848
  %pos_prev867.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 6, !dbg !1968
  store i32 %add837.i, ptr %pos_prev867.i, align 4, !dbg !1969, !tbaa !259
  %back_prev871.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 7, !dbg !1970
  store i32 0, ptr %back_prev871.i, align 4, !dbg !1971, !tbaa !265
  %prev_1_is_literal875.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 1, !dbg !1972
  store i8 1, ptr %prev_1_is_literal875.i, align 4, !dbg !1973, !tbaa !861
  %prev_2879.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 2, !dbg !1974
  store i8 1, ptr %prev_2879.i, align 1, !dbg !1975, !tbaa !1268
  %pos_prev_2883.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 3, !dbg !1976
  store i32 %126, ptr %pos_prev_2883.i, align 4, !dbg !1977, !tbaa !1272
  %add884.i = add i32 %290, 4, !dbg !1978
  %back_prev_2888.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom852.pre-phi.i, i32 4, !dbg !1979
  store i32 %add884.i, ptr %back_prev_2888.i, align 4, !dbg !1980, !tbaa !1277
  br label %if.end890.i, !dbg !1981

if.end890.i:                                      ; preds = %if.then857.i, %while.end848.i, %for.end770.i
  %len_end.addr.11.i = phi i32 [ %len_end.addr.9.i.ph, %for.end770.i ], [ %len_end.addr.10.lcssa.i, %if.then857.i ], [ %len_end.addr.10.lcssa.i, %while.end848.i ]
  call void @llvm.dbg.value(metadata i32 %len_end.addr.11.i, metadata !1167, metadata !DIExpression()) #6, !dbg !1255
  %inc891.i = add i32 %i682.1.i.ph, 1, !dbg !1982
  call void @llvm.dbg.value(metadata i32 %inc891.i, metadata !1236, metadata !DIExpression()) #6, !dbg !1798
  %cmp892.i = icmp eq i32 %inc891.i, %matches_count.1.i, !dbg !1984
  br i1 %cmp892.i, label %helper2.exit, label %for.cond694.i.outer, !llvm.loop !1854

helper2.exit:                                     ; preds = %if.end890.i, %if.end274.i, %if.end662.i
  %retval.0.i = phi i32 [ %len_end.0326, %if.end274.i ], [ %len_end.addr.7.i, %if.end662.i ], [ %len_end.addr.11.i, %if.end890.i ], !dbg !1255
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %retval.0.i, metadata !236, metadata !DIExpression()), !dbg !239
  %332 = zext i32 %retval.0.i to i64, !dbg !1142
  %cmp27 = icmp ult i64 %indvars.iv.next, %332, !dbg !1142
  %indvar.next = add nuw nsw i64 %indvar, 1, !dbg !1143
  br i1 %cmp27, label %for.body, label %for.end.loopexit, !dbg !1143, !llvm.loop !1985

for.end.loopexit:                                 ; preds = %helper2.exit, %for.body
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv, %for.body ], [ %indvars.iv.next, %helper2.exit ]
  %indvars.le = trunc i64 %indvars.iv.next.lcssa.sink to i32, !dbg !1987
  br label %for.end, !dbg !1988

for.end:                                          ; preds = %for.end.loopexit, %if.end24
  %cur.0.lcssa = phi i32 [ 1, %if.end24 ], [ %indvars.le, %for.end.loopexit ], !dbg !1989
  call void @llvm.experimental.noalias.scope.decl(metadata !1990), !dbg !1988
  call void @llvm.experimental.noalias.scope.decl(metadata !1993), !dbg !1988
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !1995, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata ptr %len_res, metadata !2000, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata ptr %back_res, metadata !2001, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %cur.0.lcssa, metadata !2002, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2003, metadata !DIExpression()), !dbg !2009
  store i32 %cur.0.lcssa, ptr %opts_end_index, align 4, !dbg !2011, !tbaa !242, !noalias !2012
  %idxprom.i295 = zext i32 %cur.0.lcssa to i64, !dbg !2013
  %pos_prev.i296 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom.i295, i32 6, !dbg !2014
  %333 = load i32, ptr %pos_prev.i296, align 4, !dbg !2014, !tbaa !259, !noalias !2012
  call void @llvm.dbg.value(metadata i32 %333, metadata !2004, metadata !DIExpression()), !dbg !2009
  %back_prev.i297 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom.i295, i32 7, !dbg !2015
  %334 = load i32, ptr %back_prev.i297, align 4, !dbg !2015, !tbaa !265, !noalias !2012
  call void @llvm.dbg.value(metadata i32 %334, metadata !2005, metadata !DIExpression()), !dbg !2009
  br label %do.body.i300, !dbg !2016

do.body.i300:                                     ; preds = %if.end40.i, %for.end
  %back_mem.0.i = phi i32 [ %334, %for.end ], [ %340, %if.end40.i ], !dbg !2009
  %pos_mem.0.i = phi i32 [ %333, %for.end ], [ %339, %if.end40.i ], !dbg !2009
  %cur.addr.0.i = phi i32 [ %cur.0.lcssa, %for.end ], [ %pos_mem.0.i, %if.end40.i ]
  call void @llvm.dbg.value(metadata i32 %cur.addr.0.i, metadata !2002, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %pos_mem.0.i, metadata !2004, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i32 %back_mem.0.i, metadata !2005, metadata !DIExpression()), !dbg !2009
  %idxprom5.i = zext i32 %cur.addr.0.i to i64, !dbg !2017
  %prev_1_is_literal.i298 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom5.i, i32 1, !dbg !2019
  %335 = load i8, ptr %prev_1_is_literal.i298, align 4, !dbg !2019, !tbaa !861, !range !1262, !noalias !2012
  %tobool.not.i299 = icmp eq i8 %335, 0, !dbg !2019
  %idxprom43.phi.trans.insert.i = zext i32 %pos_mem.0.i to i64
  %back_prev45.phi.trans.insert.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom43.phi.trans.insert.i, i32 7
  br i1 %tobool.not.i299, label %do.body.if.end40_crit_edge.i, label %if.then.i305, !dbg !2020

do.body.if.end40_crit_edge.i:                     ; preds = %do.body.i300
  %.pre.i301 = load i32, ptr %back_prev45.phi.trans.insert.i, align 4, !dbg !2021, !tbaa !265, !noalias !2012
  %pos_prev49.phi.trans.insert.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom43.phi.trans.insert.i, i32 6
  %.pre105.i = load i32, ptr %pos_prev49.phi.trans.insert.i, align 4, !dbg !2022, !tbaa !259, !noalias !2012
  br label %if.end40.i, !dbg !2020

if.then.i305:                                     ; preds = %do.body.i300
  call void @llvm.dbg.value(metadata !DIArgList(ptr %pcoder, i64 %idxprom43.phi.trans.insert.i), metadata !849, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 44, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 69348, DW_OP_stack_value)), !dbg !2023
  %prev_1_is_literal.i.i302 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom43.phi.trans.insert.i, i32 1, !dbg !2026
  store i8 0, ptr %prev_1_is_literal.i.i302, align 4, !dbg !2027, !tbaa !861, !noalias !2012
  %sub.i303 = add i32 %pos_mem.0.i, -1, !dbg !2028
  %prev_2.i304 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom5.i, i32 2, !dbg !2029
  %336 = load i8, ptr %prev_2.i304, align 1, !dbg !2029, !tbaa !1268, !range !1262, !noalias !2012
  %tobool17.not.i = icmp eq i8 %336, 0, !dbg !2029
  br i1 %tobool17.not.i, label %if.end40.i, label %if.then18.i, !dbg !2031

if.then18.i:                                      ; preds = %if.then.i305
  %idxprom21.i = zext i32 %sub.i303 to i64, !dbg !2032
  %prev_1_is_literal23.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom21.i, i32 1, !dbg !2034
  store i8 0, ptr %prev_1_is_literal23.i, align 4, !dbg !2035, !tbaa !861, !noalias !2012
  %pos_prev_2.i306 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom5.i, i32 3, !dbg !2036
  %337 = load i32, ptr %pos_prev_2.i306, align 4, !dbg !2036, !tbaa !1272, !noalias !2012
  %pos_prev31.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom21.i, i32 6, !dbg !2037
  store i32 %337, ptr %pos_prev31.i, align 4, !dbg !2038, !tbaa !259, !noalias !2012
  %back_prev_2.i307 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom5.i, i32 4, !dbg !2039
  %338 = load i32, ptr %back_prev_2.i307, align 4, !dbg !2039, !tbaa !1277, !noalias !2012
  %back_prev39.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom21.i, i32 7, !dbg !2040
  store i32 %338, ptr %back_prev39.i, align 4, !dbg !2041, !tbaa !265, !noalias !2012
  br label %if.end40.i, !dbg !2042

if.end40.i:                                       ; preds = %if.then18.i, %if.then.i305, %do.body.if.end40_crit_edge.i
  %339 = phi i32 [ %.pre105.i, %do.body.if.end40_crit_edge.i ], [ %sub.i303, %if.then.i305 ], [ %sub.i303, %if.then18.i ], !dbg !2022
  %340 = phi i32 [ %.pre.i301, %do.body.if.end40_crit_edge.i ], [ -1, %if.then.i305 ], [ -1, %if.then18.i ], !dbg !2021
  call void @llvm.dbg.value(metadata i32 %pos_mem.0.i, metadata !2006, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %back_mem.0.i, metadata !2008, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata i32 %340, metadata !2005, metadata !DIExpression()), !dbg !2009
  %pos_prev49.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 32, i64 %idxprom43.phi.trans.insert.i, i32 6, !dbg !2022
  call void @llvm.dbg.value(metadata i32 %339, metadata !2004, metadata !DIExpression()), !dbg !2009
  store i32 %back_mem.0.i, ptr %back_prev45.phi.trans.insert.i, align 4, !dbg !2044, !tbaa !265, !noalias !2012
  store i32 %cur.addr.0.i, ptr %pos_prev49.i, align 4, !dbg !2045, !tbaa !259, !noalias !2012
  call void @llvm.dbg.value(metadata i32 %pos_mem.0.i, metadata !2002, metadata !DIExpression()), !dbg !2009
  %cmp.not.i = icmp eq i32 %pos_mem.0.i, 0, !dbg !2046
  br i1 %cmp.not.i, label %backward.exit, label %do.body.i300, !dbg !2047, !llvm.loop !2048

backward.exit:                                    ; preds = %if.end40.i
  %pos_prev60.i = getelementptr inbounds %struct.lzma_optimal, ptr %opts.i, i64 0, i32 6, !dbg !2050
  %341 = load i32, ptr %pos_prev60.i, align 4, !dbg !2050, !tbaa !259, !noalias !2012
  store i32 %341, ptr %opts_current_index, align 8, !dbg !2051, !tbaa !253, !noalias !2012
  store i32 %341, ptr %len_res, align 4, !dbg !2052, !tbaa !263, !alias.scope !1990, !noalias !1993
  %back_prev66.i = getelementptr inbounds %struct.lzma_optimal, ptr %opts.i, i64 0, i32 7, !dbg !2053
  %342 = load i32, ptr %back_prev66.i, align 4, !dbg !2053, !tbaa !265, !noalias !2012
  store i32 %342, ptr %back_res, align 4, !dbg !2054, !tbaa !263, !alias.scope !1993, !noalias !1990
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reps) #6, !dbg !2055
  br label %cleanup45

cleanup45:                                        ; preds = %helper1.exit.thread315, %helper1.exit.thread, %backward.exit, %helper1.exit, %if.then
  ret void, !dbg !2055
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !2056 i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_normal.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "028fd9e067aa234247a048911b07b4da")
!2 = !{!3, !11, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!8 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!9 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!10 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 40, baseType: !5, size: 32, elements: !45)
!12 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e02ad9079871d268a82b8ebf2e7d385d")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 27, size: 5888, elements: !14)
!14 = !{!15, !21, !22, !25, !29, !32, !33, !37}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !13, file: !12, line: 28, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 27, baseType: !18)
!17 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !19, line: 45, baseType: !20)
!19 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cache_size", scope: !13, file: !12, line: 29, baseType: !16, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !13, file: !12, line: 30, baseType: !23, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !17, line: 26, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !19, line: 42, baseType: !5)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !13, file: !12, line: 31, baseType: !26, size: 8, offset: 160)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !17, line: 24, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !19, line: 38, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !12, line: 34, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !20)
!31 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !13, file: !12, line: 37, baseType: !30, size: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "symbols", scope: !13, file: !12, line: 46, baseType: !34, size: 1856, offset: 320)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1856, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 58)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !13, file: !12, line: 49, baseType: !38, size: 3712, offset: 2176)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 3712, elements: !35)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !41, line: 71, baseType: !42)
!41 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !17, line: 25, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !19, line: 40, baseType: !44)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RC_BIT_0", value: 0)
!47 = !DIEnumerator(name: "RC_BIT_1", value: 1)
!48 = !DIEnumerator(name: "RC_DIRECT_0", value: 2)
!49 = !DIEnumerator(name: "RC_DIRECT_1", value: 3)
!50 = !DIEnumerator(name: "RC_FLUSH", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 56, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!54 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!55 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!56 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!57 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!58 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!59 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!60 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!61 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!62 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!63 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!64 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!65 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!66 = !{i32 7, !"Dwarf Version", i32 5}
!67 = !{i32 2, !"Debug Info Version", i32 3}
!68 = !{i32 1, !"wchar_size", i32 4}
!69 = !{i32 7, !"PIC Level", i32 2}
!70 = !{i32 7, !"PIE Level", i32 2}
!71 = !{i32 7, !"uwtable", i32 2}
!72 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!73 = distinct !DISubprogram(name: "lzma_lzma_optimum_normal", scope: !74, file: !74, line: 824, type: !75, scopeLine: 827, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!74 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_normal.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "028fd9e067aa234247a048911b07b4da")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !80, !124, !124, !23}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !79, line: 78, baseType: null)
!79 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mf", file: !83, line: 28, baseType: !84)
!83 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "780f78e6e21a3ca52f57df68bfdc6f53")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_mf_s", file: !83, line: 29, size: 960, elements: !85)
!85 = !{!86, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !107, !111, !113, !114, !115, !116, !117, !118, !119, !120, !122, !123}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !84, file: !83, line: 35, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !84, file: !83, line: 39, baseType: !23, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_before", scope: !84, file: !83, line: 45, baseType: !23, size: 32, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "keep_size_after", scope: !84, file: !83, line: 51, baseType: !23, size: 32, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !84, file: !83, line: 58, baseType: !23, size: 32, offset: 160)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !84, file: !83, line: 63, baseType: !23, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "read_ahead", scope: !84, file: !83, line: 67, baseType: !23, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "read_limit", scope: !84, file: !83, line: 75, baseType: !23, size: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !84, file: !83, line: 80, baseType: !23, size: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !84, file: !83, line: 84, baseType: !23, size: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "find", scope: !84, file: !83, line: 92, baseType: !98, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!23, !81, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match", file: !83, line: 25, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !83, line: 22, size: 64, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !103, file: !83, line: 23, baseType: !23, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !103, file: !83, line: 24, baseType: !23, size: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !84, file: !83, line: 97, baseType: !108, size: 64, offset: 448)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !81, !23}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !84, file: !83, line: 99, baseType: !112, size: 64, offset: 512)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !84, file: !83, line: 100, baseType: !112, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_pos", scope: !84, file: !83, line: 101, baseType: !23, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cyclic_size", scope: !84, file: !83, line: 102, baseType: !23, size: 32, offset: 672)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mask", scope: !84, file: !83, line: 103, baseType: !23, size: 32, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !84, file: !83, line: 106, baseType: !23, size: 32, offset: 736)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !84, file: !83, line: 109, baseType: !23, size: 32, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_max", scope: !84, file: !83, line: 114, baseType: !23, size: 32, offset: 800)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !84, file: !83, line: 119, baseType: !121, size: 32, offset: 832)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "hash_size_sum", scope: !84, file: !83, line: 122, baseType: !23, size: 32, offset: 864)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sons_count", scope: !84, file: !83, line: 125, baseType: !23, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!125 = !{!126, !127, !128, !129, !130, !131, !236, !237, !238}
!126 = !DILocalVariable(name: "pcoder", arg: 1, scope: !73, file: !74, line: 824, type: !77)
!127 = !DILocalVariable(name: "mf", arg: 2, scope: !73, file: !74, line: 824, type: !80)
!128 = !DILocalVariable(name: "back_res", arg: 3, scope: !73, file: !74, line: 825, type: !124)
!129 = !DILocalVariable(name: "len_res", arg: 4, scope: !73, file: !74, line: 825, type: !124)
!130 = !DILocalVariable(name: "position", arg: 5, scope: !73, file: !74, line: 826, type: !23)
!131 = !DILocalVariable(name: "coder", scope: !73, file: !74, line: 828, type: !132)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !135, line: 72, size: 1996608, elements: !136)
!135 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!136 = !{!137, !139, !141, !145, !149, !150, !151, !153, !154, !155, !156, !157, !158, !163, !167, !170, !171, !172, !173, !174, !178, !182, !185, !207, !208, !210, !214, !215, !216, !217, !218, !219, !220}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !134, file: !135, line: 74, baseType: !138, size: 5888)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !12, line: 51, baseType: !13)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !134, file: !135, line: 77, baseType: !140, size: 32, offset: 5888)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !52, line: 69, baseType: !51)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !134, file: !135, line: 80, baseType: !142, size: 128, offset: 5920)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 4)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !134, file: !135, line: 83, baseType: !146, size: 17536, offset: 6048)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 17536, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 274)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !134, file: !135, line: 86, baseType: !23, size: 32, offset: 23584)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !134, file: !135, line: 90, baseType: !23, size: 32, offset: 23616)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !134, file: !135, line: 93, baseType: !152, size: 8, offset: 23648)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !134, file: !135, line: 97, baseType: !152, size: 8, offset: 23656)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !134, file: !135, line: 101, baseType: !152, size: 8, offset: 23664)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !134, file: !135, line: 103, baseType: !23, size: 32, offset: 23680)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !134, file: !135, line: 104, baseType: !23, size: 32, offset: 23712)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !134, file: !135, line: 105, baseType: !23, size: 32, offset: 23744)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !134, file: !135, line: 108, baseType: !159, size: 196608, offset: 23776)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 196608, elements: !160)
!160 = !{!161, !162}
!161 = !DISubrange(count: 16)
!162 = !DISubrange(count: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !134, file: !135, line: 109, baseType: !164, size: 3072, offset: 220384)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !165)
!165 = !{!166, !161}
!166 = !DISubrange(count: 12)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !134, file: !135, line: 110, baseType: !168, size: 192, offset: 223456)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !169)
!169 = !{!166}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !134, file: !135, line: 111, baseType: !168, size: 192, offset: 223648)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !134, file: !135, line: 112, baseType: !168, size: 192, offset: 223840)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !134, file: !135, line: 113, baseType: !168, size: 192, offset: 224032)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !134, file: !135, line: 114, baseType: !164, size: 3072, offset: 224224)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !134, file: !135, line: 115, baseType: !175, size: 4096, offset: 227296)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !176)
!176 = !{!144, !177}
!177 = !DISubrange(count: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !134, file: !135, line: 116, baseType: !179, size: 1824, offset: 231392)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1824, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 114)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !134, file: !135, line: 117, baseType: !183, size: 256, offset: 233216)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !184)
!184 = !{!161}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !134, file: !135, line: 121, baseType: !186, size: 148032, offset: 233472)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !135, line: 51, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 40, size: 148032, elements: !188)
!188 = !{!189, !190, !191, !195, !196, !200, !204, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !187, file: !135, line: 41, baseType: !40, size: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !187, file: !135, line: 42, baseType: !40, size: 16, offset: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !187, file: !135, line: 43, baseType: !192, size: 2048, offset: 32)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !193)
!193 = !{!161, !194}
!194 = !DISubrange(count: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !187, file: !135, line: 44, baseType: !192, size: 2048, offset: 2080)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !187, file: !135, line: 45, baseType: !197, size: 4096, offset: 4128)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !187, file: !135, line: 47, baseType: !201, size: 139264, offset: 8224)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 139264, elements: !202)
!202 = !{!161, !203}
!203 = !DISubrange(count: 272)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !187, file: !135, line: 48, baseType: !23, size: 32, offset: 147488)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !187, file: !135, line: 49, baseType: !206, size: 512, offset: 147520)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !184)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !134, file: !135, line: 122, baseType: !186, size: 148032, offset: 381504)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !134, file: !135, line: 125, baseType: !209, size: 8192, offset: 529536)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !176)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !134, file: !135, line: 126, baseType: !211, size: 16384, offset: 537728)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !212)
!212 = !{!144, !213}
!213 = !DISubrange(count: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !134, file: !135, line: 127, baseType: !23, size: 32, offset: 554112)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !134, file: !135, line: 128, baseType: !23, size: 32, offset: 554144)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !134, file: !135, line: 130, baseType: !206, size: 512, offset: 554176)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !134, file: !135, line: 131, baseType: !23, size: 32, offset: 554688)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !134, file: !135, line: 134, baseType: !23, size: 32, offset: 554720)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !134, file: !135, line: 135, baseType: !23, size: 32, offset: 554752)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !134, file: !135, line: 136, baseType: !221, size: 1441792, offset: 554784)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 1441792, elements: !234)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !135, line: 69, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 54, size: 352, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !223, file: !135, line: 55, baseType: !140, size: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !223, file: !135, line: 57, baseType: !152, size: 8, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !223, file: !135, line: 58, baseType: !152, size: 8, offset: 40)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !223, file: !135, line: 60, baseType: !23, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !223, file: !135, line: 61, baseType: !23, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !223, file: !135, line: 63, baseType: !23, size: 32, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !223, file: !135, line: 64, baseType: !23, size: 32, offset: 160)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !223, file: !135, line: 65, baseType: !23, size: 32, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !223, file: !135, line: 67, baseType: !142, size: 128, offset: 224)
!234 = !{!235}
!235 = !DISubrange(count: 4096)
!236 = !DILocalVariable(name: "len_end", scope: !73, file: !74, line: 855, type: !23)
!237 = !DILocalVariable(name: "reps", scope: !73, file: !74, line: 859, type: !142)
!238 = !DILocalVariable(name: "cur", scope: !73, file: !74, line: 862, type: !23)
!239 = !DILocation(line: 0, scope: !73)
!240 = !DILocation(line: 830, column: 13, scope: !241)
!241 = distinct !DILexicalBlock(scope: !73, file: !74, line: 830, column: 6)
!242 = !{!243, !248, i64 69340}
!243 = !{!"lzma_coder_s", !244, i64 0, !246, i64 736, !246, i64 740, !246, i64 756, !248, i64 2948, !248, i64 2952, !249, i64 2956, !249, i64 2957, !249, i64 2958, !248, i64 2960, !248, i64 2964, !248, i64 2968, !246, i64 2972, !246, i64 27548, !246, i64 27932, !246, i64 27956, !246, i64 27980, !246, i64 28004, !246, i64 28028, !246, i64 28412, !246, i64 28924, !246, i64 29152, !250, i64 29184, !250, i64 47688, !246, i64 66192, !246, i64 67216, !248, i64 69264, !248, i64 69268, !246, i64 69272, !248, i64 69336, !248, i64 69340, !248, i64 69344, !246, i64 69348}
!244 = !{!"", !245, i64 0, !245, i64 8, !248, i64 16, !246, i64 20, !245, i64 24, !245, i64 32, !246, i64 40, !246, i64 272}
!245 = !{!"long", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"int", !246, i64 0}
!249 = !{!"_Bool", !246, i64 0}
!250 = !{!"", !251, i64 0, !251, i64 2, !246, i64 4, !246, i64 260, !246, i64 516, !246, i64 1028, !248, i64 18436, !246, i64 18440}
!251 = !{!"short", !246, i64 0}
!252 = !DILocation(line: 830, column: 38, scope: !241)
!253 = !{!243, !248, i64 69344}
!254 = !DILocation(line: 830, column: 28, scope: !241)
!255 = !DILocation(line: 830, column: 6, scope: !73)
!256 = !DILocation(line: 832, column: 14, scope: !257)
!257 = distinct !DILexicalBlock(scope: !241, file: !74, line: 830, column: 58)
!258 = !DILocation(line: 832, column: 53, scope: !257)
!259 = !{!260, !248, i64 20}
!260 = !{!"", !246, i64 0, !249, i64 4, !249, i64 5, !248, i64 8, !248, i64 12, !248, i64 16, !248, i64 20, !248, i64 24, !246, i64 28}
!261 = !DILocation(line: 833, column: 5, scope: !257)
!262 = !DILocation(line: 832, column: 12, scope: !257)
!263 = !{!248, !248, i64 0}
!264 = !DILocation(line: 834, column: 54, scope: !257)
!265 = !{!260, !248, i64 24}
!266 = !DILocation(line: 834, column: 13, scope: !257)
!267 = !DILocation(line: 835, column: 29, scope: !257)
!268 = !DILocation(line: 837, column: 3, scope: !257)
!269 = !DILocation(line: 843, column: 10, scope: !270)
!270 = distinct !DILexicalBlock(scope: !73, file: !74, line: 843, column: 6)
!271 = !{!272, !248, i64 28}
!272 = !{!"lzma_mf_s", !273, i64 0, !248, i64 8, !248, i64 12, !248, i64 16, !248, i64 20, !248, i64 24, !248, i64 28, !248, i64 32, !248, i64 36, !248, i64 40, !273, i64 48, !273, i64 56, !273, i64 64, !273, i64 72, !248, i64 80, !248, i64 84, !248, i64 88, !248, i64 92, !248, i64 96, !248, i64 100, !246, i64 104, !248, i64 108, !248, i64 112}
!273 = !{!"any pointer", !246, i64 0}
!274 = !DILocation(line: 843, column: 21, scope: !270)
!275 = !DILocation(line: 843, column: 6, scope: !73)
!276 = !DILocation(line: 844, column: 14, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !74, line: 844, column: 7)
!278 = distinct !DILexicalBlock(scope: !270, file: !74, line: 843, column: 27)
!279 = !{!243, !248, i64 69268}
!280 = !DILocation(line: 844, column: 32, scope: !277)
!281 = !DILocation(line: 844, column: 7, scope: !278)
!282 = !DILocalVariable(name: "pcoder", arg: 1, scope: !283, file: !74, line: 137, type: !77)
!283 = distinct !DISubprogram(name: "fill_distances_prices", scope: !74, file: !74, line: 137, type: !284, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !77}
!286 = !{!282, !287, !288, !290, !294, !296, !298, !300, !302, !306, !307, !308, !309}
!287 = !DILocalVariable(name: "coder", scope: !283, file: !74, line: 139, type: !133)
!288 = !DILocalVariable(name: "len_to_pos_state", scope: !289, file: !74, line: 140, type: !23)
!289 = distinct !DILexicalBlock(scope: !283, file: !74, line: 140, column: 2)
!290 = !DILocalVariable(name: "pos_slot_prices", scope: !291, file: !74, line: 144, type: !293)
!291 = distinct !DILexicalBlock(scope: !292, file: !74, line: 142, column: 24)
!292 = distinct !DILexicalBlock(scope: !289, file: !74, line: 140, column: 2)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!294 = !DILocalVariable(name: "pos_slot", scope: !295, file: !74, line: 148, type: !23)
!295 = distinct !DILexicalBlock(scope: !291, file: !74, line: 148, column: 3)
!296 = !DILocalVariable(name: "pos_slot", scope: !297, file: !74, line: 157, type: !23)
!297 = distinct !DILexicalBlock(scope: !291, file: !74, line: 157, column: 3)
!298 = !DILocalVariable(name: "i", scope: !299, file: !74, line: 165, type: !23)
!299 = distinct !DILexicalBlock(scope: !291, file: !74, line: 165, column: 3)
!300 = !DILocalVariable(name: "i", scope: !301, file: !74, line: 173, type: !23)
!301 = distinct !DILexicalBlock(scope: !283, file: !74, line: 173, column: 2)
!302 = !DILocalVariable(name: "pos_slot", scope: !303, file: !74, line: 174, type: !305)
!303 = distinct !DILexicalBlock(scope: !304, file: !74, line: 173, column: 68)
!304 = distinct !DILexicalBlock(scope: !301, file: !74, line: 173, column: 2)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!306 = !DILocalVariable(name: "footer_bits", scope: !303, file: !74, line: 175, type: !305)
!307 = !DILocalVariable(name: "base", scope: !303, file: !74, line: 176, type: !305)
!308 = !DILocalVariable(name: "price", scope: !303, file: !74, line: 177, type: !305)
!309 = !DILocalVariable(name: "len_to_pos_state", scope: !310, file: !74, line: 181, type: !23)
!310 = distinct !DILexicalBlock(scope: !303, file: !74, line: 181, column: 3)
!311 = !DILocation(line: 0, scope: !283, inlinedAt: !312)
!312 = distinct !DILocation(line: 845, column: 4, scope: !277)
!313 = !DILocation(line: 0, scope: !289, inlinedAt: !312)
!314 = !DILocation(line: 140, column: 2, scope: !289, inlinedAt: !312)
!315 = !DILocation(line: 0, scope: !301, inlinedAt: !312)
!316 = !DILocation(line: 173, column: 2, scope: !301, inlinedAt: !312)
!317 = !DILocation(line: 145, column: 7, scope: !291, inlinedAt: !312)
!318 = !DILocation(line: 0, scope: !291, inlinedAt: !312)
!319 = !DILocation(line: 0, scope: !295, inlinedAt: !312)
!320 = !DILocation(line: 149, column: 23, scope: !321, inlinedAt: !312)
!321 = distinct !DILexicalBlock(scope: !295, file: !74, line: 148, column: 3)
!322 = !{!243, !248, i64 69264}
!323 = !DILocation(line: 149, column: 14, scope: !321, inlinedAt: !312)
!324 = !DILocation(line: 148, column: 3, scope: !295, inlinedAt: !312)
!325 = !DILocation(line: 165, column: 3, scope: !299, inlinedAt: !312)
!326 = !DILocation(line: 0, scope: !297, inlinedAt: !312)
!327 = !DILocation(line: 158, column: 14, scope: !328, inlinedAt: !312)
!328 = distinct !DILexicalBlock(scope: !297, file: !74, line: 157, column: 3)
!329 = !DILocation(line: 157, column: 3, scope: !297, inlinedAt: !312)
!330 = !DILocalVariable(name: "probs", arg: 1, scope: !331, file: !332, line: 52, type: !335)
!331 = distinct !DISubprogram(name: "rc_bittree_price", scope: !332, file: !332, line: 52, type: !333, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !338)
!332 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/price.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97acd9ecb91079df77ddfdfaeeb4fcaf")
!333 = !DISubroutineType(types: !334)
!334 = !{!23, !335, !305, !23}
!335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!338 = !{!330, !339, !340, !341, !342}
!339 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !331, file: !332, line: 53, type: !305)
!340 = !DILocalVariable(name: "symbol", arg: 3, scope: !331, file: !332, line: 53, type: !23)
!341 = !DILocalVariable(name: "price", scope: !331, file: !332, line: 55, type: !23)
!342 = !DILocalVariable(name: "bit", scope: !343, file: !332, line: 59, type: !305)
!343 = distinct !DILexicalBlock(scope: !331, file: !332, line: 58, column: 5)
!344 = !DILocation(line: 0, scope: !331, inlinedAt: !345)
!345 = distinct !DILocation(line: 150, column: 32, scope: !321, inlinedAt: !312)
!346 = !DILocation(line: 56, column: 9, scope: !331, inlinedAt: !345)
!347 = !DILocation(line: 58, column: 2, scope: !331, inlinedAt: !345)
!348 = !DILocation(line: 59, column: 31, scope: !343, inlinedAt: !345)
!349 = !DILocation(line: 0, scope: !343, inlinedAt: !345)
!350 = !DILocation(line: 60, column: 10, scope: !343, inlinedAt: !345)
!351 = !DILocation(line: 61, column: 25, scope: !343, inlinedAt: !345)
!352 = !{!251, !251, i64 0}
!353 = !DILocalVariable(name: "prob", arg: 1, scope: !354, file: !332, line: 29, type: !337)
!354 = distinct !DISubprogram(name: "rc_bit_price", scope: !332, file: !332, line: 29, type: !355, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!23, !337, !305}
!357 = !{!353, !358}
!358 = !DILocalVariable(name: "bit", arg: 2, scope: !354, file: !332, line: 29, type: !305)
!359 = !DILocation(line: 0, scope: !354, inlinedAt: !360)
!360 = distinct !DILocation(line: 61, column: 12, scope: !343, inlinedAt: !345)
!361 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !360)
!362 = !DILocation(line: 31, column: 46, scope: !354, inlinedAt: !360)
!363 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !360)
!364 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !360)
!365 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !360)
!366 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !360)
!367 = !{!246, !246, i64 0}
!368 = !DILocation(line: 61, column: 9, scope: !343, inlinedAt: !345)
!369 = !DILocation(line: 62, column: 18, scope: !331, inlinedAt: !345)
!370 = !DILocation(line: 62, column: 2, scope: !343, inlinedAt: !345)
!371 = distinct !{!371, !347, !372, !373, !374}
!372 = !DILocation(line: 62, column: 22, scope: !331, inlinedAt: !345)
!373 = !{!"llvm.loop.mustprogress"}
!374 = !{!"llvm.loop.unroll.disable"}
!375 = !DILocation(line: 150, column: 4, scope: !321, inlinedAt: !312)
!376 = !DILocation(line: 150, column: 30, scope: !321, inlinedAt: !312)
!377 = !DILocation(line: 149, column: 40, scope: !321, inlinedAt: !312)
!378 = distinct !{!378, !324, !379, !373, !374}
!379 = !DILocation(line: 152, column: 29, scope: !295, inlinedAt: !312)
!380 = !DILocalVariable(name: "bits", arg: 1, scope: !381, file: !332, line: 87, type: !305)
!381 = distinct !DISubprogram(name: "rc_direct_price", scope: !332, file: !332, line: 87, type: !382, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!23, !305}
!384 = !{!380}
!385 = !DILocation(line: 0, scope: !381, inlinedAt: !386)
!386 = distinct !DILocation(line: 159, column: 33, scope: !328, inlinedAt: !312)
!387 = !DILocation(line: 89, column: 15, scope: !381, inlinedAt: !386)
!388 = !DILocation(line: 159, column: 4, scope: !328, inlinedAt: !312)
!389 = !DILocation(line: 159, column: 30, scope: !328, inlinedAt: !312)
!390 = !DILocation(line: 158, column: 40, scope: !328, inlinedAt: !312)
!391 = !DILocation(line: 158, column: 23, scope: !328, inlinedAt: !312)
!392 = distinct !{!392, !329, !393, !373, !374}
!393 = !DILocation(line: 160, column: 40, scope: !297, inlinedAt: !312)
!394 = !DILocation(line: 142, column: 4, scope: !292, inlinedAt: !312)
!395 = !DILocation(line: 141, column: 21, scope: !292, inlinedAt: !312)
!396 = distinct !{!396, !314, !397, !373, !374}
!397 = !DILocation(line: 168, column: 2, scope: !289, inlinedAt: !312)
!398 = !DILocation(line: 0, scope: !299, inlinedAt: !312)
!399 = !DILocation(line: 167, column: 8, scope: !400, inlinedAt: !312)
!400 = distinct !DILexicalBlock(scope: !299, file: !74, line: 165, column: 3)
!401 = !DILocation(line: 166, column: 4, scope: !400, inlinedAt: !312)
!402 = !DILocation(line: 167, column: 6, scope: !400, inlinedAt: !312)
!403 = !DILocation(line: 165, column: 51, scope: !400, inlinedAt: !312)
!404 = !DILocation(line: 165, column: 26, scope: !400, inlinedAt: !312)
!405 = distinct !{!405, !325, !406, !373, !374}
!406 = !DILocation(line: 167, column: 25, scope: !299, inlinedAt: !312)
!407 = !DILocalVariable(name: "pos", arg: 1, scope: !408, file: !409, line: 108, type: !23)
!408 = distinct !DISubprogram(name: "get_pos_slot", scope: !409, file: !409, line: 108, type: !410, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !412)
!409 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/fastpos.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cbaa9cd9040be4a8dee21ea4da47c8df")
!410 = !DISubroutineType(types: !411)
!411 = !{!23, !23}
!412 = !{!407}
!413 = !DILocation(line: 0, scope: !408, inlinedAt: !414)
!414 = distinct !DILocation(line: 174, column: 29, scope: !303, inlinedAt: !312)
!415 = !DILocation(line: 113, column: 10, scope: !416, inlinedAt: !414)
!416 = distinct !DILexicalBlock(scope: !408, file: !409, line: 112, column: 6)
!417 = !DILocation(line: 0, scope: !303, inlinedAt: !312)
!418 = !DILocation(line: 175, column: 43, scope: !303, inlinedAt: !312)
!419 = !DILocation(line: 175, column: 49, scope: !303, inlinedAt: !312)
!420 = !DILocation(line: 176, column: 40, scope: !303, inlinedAt: !312)
!421 = !DILocation(line: 176, column: 28, scope: !303, inlinedAt: !312)
!422 = !DILocation(line: 176, column: 46, scope: !303, inlinedAt: !312)
!423 = !DILocation(line: 178, column: 24, scope: !303, inlinedAt: !312)
!424 = !DILocation(line: 178, column: 31, scope: !303, inlinedAt: !312)
!425 = !DILocation(line: 178, column: 42, scope: !303, inlinedAt: !312)
!426 = !DILocation(line: 179, column: 20, scope: !303, inlinedAt: !312)
!427 = !DILocalVariable(name: "probs", arg: 1, scope: !428, file: !332, line: 69, type: !335)
!428 = distinct !DISubprogram(name: "rc_bittree_reverse_price", scope: !332, file: !332, line: 69, type: !429, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{!23, !335, !23, !23}
!431 = !{!427, !432, !433, !434, !435, !436}
!432 = !DILocalVariable(name: "bit_levels", arg: 2, scope: !428, file: !332, line: 70, type: !23)
!433 = !DILocalVariable(name: "symbol", arg: 3, scope: !428, file: !332, line: 70, type: !23)
!434 = !DILocalVariable(name: "price", scope: !428, file: !332, line: 72, type: !23)
!435 = !DILocalVariable(name: "model_index", scope: !428, file: !332, line: 73, type: !23)
!436 = !DILocalVariable(name: "bit", scope: !437, file: !332, line: 76, type: !305)
!437 = distinct !DILexicalBlock(scope: !428, file: !332, line: 75, column: 5)
!438 = !DILocation(line: 0, scope: !428, inlinedAt: !439)
!439 = distinct !DILocation(line: 177, column: 26, scope: !303, inlinedAt: !312)
!440 = !DILocation(line: 75, column: 2, scope: !428, inlinedAt: !439)
!441 = !DILocation(line: 76, column: 31, scope: !437, inlinedAt: !439)
!442 = !DILocation(line: 0, scope: !437, inlinedAt: !439)
!443 = !DILocation(line: 77, column: 10, scope: !437, inlinedAt: !439)
!444 = !DILocation(line: 78, column: 25, scope: !437, inlinedAt: !439)
!445 = !DILocation(line: 0, scope: !354, inlinedAt: !446)
!446 = distinct !DILocation(line: 78, column: 12, scope: !437, inlinedAt: !439)
!447 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !446)
!448 = !DILocation(line: 31, column: 46, scope: !354, inlinedAt: !446)
!449 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !446)
!450 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !446)
!451 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !446)
!452 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !446)
!453 = !DILocation(line: 78, column: 9, scope: !437, inlinedAt: !439)
!454 = !DILocation(line: 79, column: 30, scope: !437, inlinedAt: !439)
!455 = !DILocation(line: 79, column: 36, scope: !437, inlinedAt: !439)
!456 = !DILocation(line: 80, column: 11, scope: !428, inlinedAt: !439)
!457 = !DILocation(line: 80, column: 24, scope: !428, inlinedAt: !439)
!458 = !DILocation(line: 80, column: 2, scope: !437, inlinedAt: !439)
!459 = distinct !{!459, !440, !460, !373, !374}
!460 = !DILocation(line: 80, column: 28, scope: !428, inlinedAt: !439)
!461 = !DILocation(line: 173, column: 63, scope: !304, inlinedAt: !312)
!462 = !DILocation(line: 173, column: 45, scope: !304, inlinedAt: !312)
!463 = distinct !{!463, !316, !464, !373, !374}
!464 = !DILocation(line: 187, column: 2, scope: !301, inlinedAt: !312)
!465 = !DILocation(line: 0, scope: !310, inlinedAt: !312)
!466 = !DILocation(line: 185, column: 16, scope: !467, inlinedAt: !312)
!467 = distinct !DILexicalBlock(scope: !310, file: !74, line: 181, column: 3)
!468 = !DILocation(line: 185, column: 14, scope: !467, inlinedAt: !312)
!469 = !DILocation(line: 184, column: 4, scope: !467, inlinedAt: !312)
!470 = !DILocation(line: 185, column: 6, scope: !467, inlinedAt: !312)
!471 = !DILocation(line: 183, column: 5, scope: !467, inlinedAt: !312)
!472 = !DILocation(line: 182, column: 22, scope: !467, inlinedAt: !312)
!473 = !DILocation(line: 181, column: 3, scope: !310, inlinedAt: !312)
!474 = distinct !{!474, !473, !475, !373, !374}
!475 = !DILocation(line: 186, column: 33, scope: !310, inlinedAt: !312)
!476 = !DILocation(line: 189, column: 27, scope: !283, inlinedAt: !312)
!477 = !DILocation(line: 845, column: 4, scope: !277)
!478 = !DILocation(line: 847, column: 14, scope: !479)
!479 = distinct !DILexicalBlock(scope: !278, file: !74, line: 847, column: 7)
!480 = !{!243, !248, i64 69336}
!481 = !DILocation(line: 847, column: 32, scope: !479)
!482 = !DILocation(line: 847, column: 7, scope: !278)
!483 = !DILocalVariable(name: "pcoder", arg: 1, scope: !484, file: !74, line: 195, type: !77)
!484 = distinct !DISubprogram(name: "fill_align_prices", scope: !74, file: !74, line: 195, type: !284, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !485)
!485 = !{!483, !486, !487}
!486 = !DILocalVariable(name: "coder", scope: !484, file: !74, line: 197, type: !133)
!487 = !DILocalVariable(name: "i", scope: !488, file: !74, line: 198, type: !23)
!488 = distinct !DILexicalBlock(scope: !484, file: !74, line: 198, column: 2)
!489 = !DILocation(line: 0, scope: !484, inlinedAt: !490)
!490 = distinct !DILocation(line: 848, column: 4, scope: !479)
!491 = !DILocation(line: 0, scope: !488, inlinedAt: !490)
!492 = !DILocation(line: 198, column: 2, scope: !488, inlinedAt: !490)
!493 = !DILocation(line: 0, scope: !428, inlinedAt: !494)
!494 = distinct !DILocation(line: 199, column: 28, scope: !495, inlinedAt: !490)
!495 = distinct !DILexicalBlock(scope: !488, file: !74, line: 198, column: 2)
!496 = !DILocation(line: 75, column: 2, scope: !428, inlinedAt: !494)
!497 = !DILocation(line: 76, column: 31, scope: !437, inlinedAt: !494)
!498 = !DILocation(line: 0, scope: !437, inlinedAt: !494)
!499 = !DILocation(line: 77, column: 10, scope: !437, inlinedAt: !494)
!500 = !DILocation(line: 78, column: 25, scope: !437, inlinedAt: !494)
!501 = !DILocation(line: 0, scope: !354, inlinedAt: !502)
!502 = distinct !DILocation(line: 78, column: 12, scope: !437, inlinedAt: !494)
!503 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !502)
!504 = !DILocation(line: 31, column: 46, scope: !354, inlinedAt: !502)
!505 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !502)
!506 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !502)
!507 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !502)
!508 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !502)
!509 = !DILocation(line: 78, column: 9, scope: !437, inlinedAt: !494)
!510 = !DILocation(line: 79, column: 30, scope: !437, inlinedAt: !494)
!511 = !DILocation(line: 79, column: 36, scope: !437, inlinedAt: !494)
!512 = !DILocation(line: 80, column: 11, scope: !428, inlinedAt: !494)
!513 = !DILocation(line: 80, column: 24, scope: !428, inlinedAt: !494)
!514 = !DILocation(line: 80, column: 2, scope: !437, inlinedAt: !494)
!515 = distinct !{!515, !496, !516, !373, !374}
!516 = !DILocation(line: 80, column: 28, scope: !428, inlinedAt: !494)
!517 = !DILocation(line: 199, column: 3, scope: !495, inlinedAt: !490)
!518 = !DILocation(line: 199, column: 26, scope: !495, inlinedAt: !490)
!519 = !DILocation(line: 198, column: 45, scope: !495, inlinedAt: !490)
!520 = !DILocation(line: 198, column: 25, scope: !495, inlinedAt: !490)
!521 = distinct !{!521, !492, !522, !373, !374}
!522 = !DILocation(line: 200, column: 36, scope: !488, inlinedAt: !490)
!523 = !DILocation(line: 202, column: 27, scope: !484, inlinedAt: !490)
!524 = !DILocation(line: 848, column: 4, scope: !479)
!525 = !{!526}
!526 = distinct !{!526, !527, !"helper1: %mf"}
!527 = distinct !{!527, !"helper1"}
!528 = !DILocation(line: 855, column: 21, scope: !73)
!529 = !{!530}
!530 = distinct !{!530, !527, !"helper1: %back_res"}
!531 = !{!532}
!532 = distinct !{!532, !527, !"helper1: %len_res"}
!533 = !DILocalVariable(name: "pcoder", arg: 1, scope: !534, file: !74, line: 281, type: !77)
!534 = distinct !DISubprogram(name: "helper1", scope: !74, file: !74, line: 281, type: !535, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !537)
!535 = !DISubroutineType(types: !536)
!536 = !{!23, !77, !80, !124, !124, !23}
!537 = !{!533, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !551, !552, !553, !555, !558, !559, !560, !561, !562, !563, !564, !567, !568, !570, !571, !573, !576, !577, !579, !580, !583, !587}
!538 = !DILocalVariable(name: "mf", arg: 2, scope: !534, file: !74, line: 281, type: !80)
!539 = !DILocalVariable(name: "back_res", arg: 3, scope: !534, file: !74, line: 282, type: !124)
!540 = !DILocalVariable(name: "len_res", arg: 4, scope: !534, file: !74, line: 282, type: !124)
!541 = !DILocalVariable(name: "position", arg: 5, scope: !534, file: !74, line: 283, type: !23)
!542 = !DILocalVariable(name: "coder", scope: !534, file: !74, line: 285, type: !132)
!543 = !DILocalVariable(name: "nice_len", scope: !534, file: !74, line: 286, type: !305)
!544 = !DILocalVariable(name: "len_main", scope: !534, file: !74, line: 288, type: !23)
!545 = !DILocalVariable(name: "matches_count", scope: !534, file: !74, line: 289, type: !23)
!546 = !DILocalVariable(name: "buf_avail", scope: !534, file: !74, line: 299, type: !305)
!547 = !DILocalVariable(name: "buf", scope: !534, file: !74, line: 306, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!551 = !DILocalVariable(name: "rep_lens", scope: !534, file: !74, line: 308, type: !142)
!552 = !DILocalVariable(name: "rep_max_index", scope: !534, file: !74, line: 309, type: !23)
!553 = !DILocalVariable(name: "i", scope: !554, file: !74, line: 311, type: !23)
!554 = distinct !DILexicalBlock(scope: !534, file: !74, line: 311, column: 2)
!555 = !DILocalVariable(name: "buf_back", scope: !556, file: !74, line: 312, type: !548)
!556 = distinct !DILexicalBlock(scope: !557, file: !74, line: 311, column: 47)
!557 = distinct !DILexicalBlock(scope: !554, file: !74, line: 311, column: 2)
!558 = !DILocalVariable(name: "len_test", scope: !556, file: !74, line: 319, type: !23)
!559 = !DILocalVariable(name: "current_byte", scope: !534, file: !74, line: 345, type: !550)
!560 = !DILocalVariable(name: "match_byte", scope: !534, file: !74, line: 346, type: !550)
!561 = !DILocalVariable(name: "pos_state", scope: !534, file: !74, line: 357, type: !305)
!562 = !DILocalVariable(name: "match_price", scope: !534, file: !74, line: 367, type: !305)
!563 = !DILocalVariable(name: "rep_match_price", scope: !534, file: !74, line: 369, type: !305)
!564 = !DILocalVariable(name: "short_rep_price", scope: !565, file: !74, line: 373, type: !305)
!565 = distinct !DILexicalBlock(scope: !566, file: !74, line: 372, column: 34)
!566 = distinct !DILexicalBlock(scope: !534, file: !74, line: 372, column: 6)
!567 = !DILocalVariable(name: "len_end", scope: !534, file: !74, line: 383, type: !305)
!568 = !DILocalVariable(name: "i", scope: !569, file: !74, line: 393, type: !23)
!569 = distinct !DILexicalBlock(scope: !534, file: !74, line: 393, column: 2)
!570 = !DILocalVariable(name: "len", scope: !534, file: !74, line: 396, type: !23)
!571 = !DILocalVariable(name: "i", scope: !572, file: !74, line: 402, type: !23)
!572 = distinct !DILexicalBlock(scope: !534, file: !74, line: 402, column: 2)
!573 = !DILocalVariable(name: "rep_len", scope: !574, file: !74, line: 403, type: !23)
!574 = distinct !DILexicalBlock(scope: !575, file: !74, line: 402, column: 47)
!575 = distinct !DILexicalBlock(scope: !572, file: !74, line: 402, column: 2)
!576 = !DILocalVariable(name: "price", scope: !574, file: !74, line: 407, type: !305)
!577 = !DILocalVariable(name: "cur_and_len_price", scope: !578, file: !74, line: 411, type: !305)
!578 = distinct !DILexicalBlock(scope: !574, file: !74, line: 410, column: 6)
!579 = !DILocalVariable(name: "normal_match_price", scope: !534, file: !74, line: 426, type: !305)
!580 = !DILocalVariable(name: "i", scope: !581, file: !74, line: 431, type: !23)
!581 = distinct !DILexicalBlock(scope: !582, file: !74, line: 430, column: 23)
!582 = distinct !DILexicalBlock(scope: !534, file: !74, line: 430, column: 6)
!583 = !DILocalVariable(name: "dist", scope: !584, file: !74, line: 436, type: !305)
!584 = distinct !DILexicalBlock(scope: !585, file: !74, line: 435, column: 18)
!585 = distinct !DILexicalBlock(scope: !586, file: !74, line: 435, column: 3)
!586 = distinct !DILexicalBlock(scope: !581, file: !74, line: 435, column: 3)
!587 = !DILocalVariable(name: "cur_and_len_price", scope: !584, file: !74, line: 437, type: !305)
!588 = !DILocation(line: 0, scope: !534, inlinedAt: !589)
!589 = distinct !DILocation(line: 855, column: 21, scope: !73)
!590 = !DILocation(line: 286, column: 32, scope: !534, inlinedAt: !589)
!591 = !{!272, !248, i64 96}
!592 = !{!530, !532}
!593 = !DILocation(line: 289, column: 2, scope: !534, inlinedAt: !589)
!594 = !{!526, !530, !532}
!595 = !DILocation(line: 292, column: 49, scope: !596, inlinedAt: !589)
!596 = distinct !DILexicalBlock(scope: !597, file: !74, line: 291, column: 27)
!597 = distinct !DILexicalBlock(scope: !534, file: !74, line: 291, column: 6)
!598 = !DILocation(line: 292, column: 14, scope: !596, inlinedAt: !589)
!599 = !DILocation(line: 293, column: 2, scope: !596, inlinedAt: !589)
!600 = !{!601}
!601 = distinct !{!601, !527, !"helper1: %mf:thread"}
!602 = !{!603, !604}
!603 = distinct !{!603, !527, !"helper1: %back_res:thread"}
!604 = distinct !{!604, !527, !"helper1: %len_res:thread"}
!605 = !{!601, !603, !604}
!606 = !DILocation(line: 295, column: 21, scope: !607, inlinedAt: !589)
!607 = distinct !DILexicalBlock(scope: !597, file: !74, line: 293, column: 9)
!608 = !{!243, !248, i64 2952}
!609 = !DILocation(line: 296, column: 26, scope: !607, inlinedAt: !589)
!610 = !{!243, !248, i64 2948}
!611 = !DILocation(line: 296, column: 17, scope: !607, inlinedAt: !589)
!612 = !DILocation(line: 0, scope: !597, inlinedAt: !589)
!613 = !DILocation(line: 299, column: 29, scope: !534, inlinedAt: !589)
!614 = !{!272, !248, i64 24}
!615 = !{!272, !248, i64 36}
!616 = !DILocalVariable(name: "mf", arg: 1, scope: !617, file: !83, line: 230, type: !620)
!617 = distinct !DISubprogram(name: "mf_avail", scope: !83, file: !83, line: 230, type: !618, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !622)
!618 = !DISubroutineType(types: !619)
!619 = !{!23, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!622 = !{!616}
!623 = !DILocation(line: 0, scope: !617, inlinedAt: !624)
!624 = distinct !DILocation(line: 299, column: 29, scope: !534, inlinedAt: !589)
!625 = !DILocation(line: 232, column: 23, scope: !617, inlinedAt: !624)
!626 = !DILocation(line: 0, scope: !617, inlinedAt: !627)
!627 = distinct !DILocation(line: 299, column: 29, scope: !534, inlinedAt: !589)
!628 = !DILocation(line: 300, column: 16, scope: !629, inlinedAt: !589)
!629 = distinct !DILexicalBlock(scope: !534, file: !74, line: 300, column: 6)
!630 = !DILocation(line: 300, column: 6, scope: !534, inlinedAt: !589)
!631 = !DILocation(line: 301, column: 13, scope: !632, inlinedAt: !589)
!632 = distinct !DILexicalBlock(scope: !629, file: !74, line: 300, column: 21)
!633 = !{!526, !532}
!634 = !DILocation(line: 302, column: 12, scope: !632, inlinedAt: !589)
!635 = !{!526, !530}
!636 = !DILocation(line: 456, column: 1, scope: !534, inlinedAt: !589)
!637 = !DILocation(line: 856, column: 6, scope: !73)
!638 = !DILocation(line: 306, column: 29, scope: !534, inlinedAt: !589)
!639 = !{!272, !273, i64 0}
!640 = !DILocalVariable(name: "mf", arg: 1, scope: !641, file: !83, line: 222, type: !620)
!641 = distinct !DISubprogram(name: "mf_ptr", scope: !83, file: !83, line: 222, type: !642, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{!549, !620}
!644 = !{!640}
!645 = !DILocation(line: 0, scope: !641, inlinedAt: !646)
!646 = distinct !DILocation(line: 306, column: 29, scope: !534, inlinedAt: !589)
!647 = !DILocation(line: 224, column: 20, scope: !641, inlinedAt: !646)
!648 = !DILocation(line: 306, column: 40, scope: !534, inlinedAt: !589)
!649 = !DILocation(line: 308, column: 2, scope: !534, inlinedAt: !589)
!650 = !DILocation(line: 308, column: 11, scope: !534, inlinedAt: !589)
!651 = !DILocation(line: 0, scope: !554, inlinedAt: !589)
!652 = !DILocation(line: 311, column: 2, scope: !554, inlinedAt: !589)
!653 = !DILocation(line: 329, column: 6, scope: !654, inlinedAt: !589)
!654 = distinct !DILexicalBlock(scope: !534, file: !74, line: 329, column: 6)
!655 = !DILocation(line: 329, column: 30, scope: !654, inlinedAt: !589)
!656 = !DILocation(line: 329, column: 6, scope: !534, inlinedAt: !589)
!657 = !DILocation(line: 312, column: 41, scope: !556, inlinedAt: !589)
!658 = !DILocation(line: 312, column: 39, scope: !556, inlinedAt: !589)
!659 = !DILocation(line: 312, column: 56, scope: !556, inlinedAt: !589)
!660 = !DILocation(line: 0, scope: !556, inlinedAt: !589)
!661 = !DILocation(line: 314, column: 7, scope: !662, inlinedAt: !589)
!662 = distinct !DILexicalBlock(scope: !556, file: !74, line: 314, column: 7)
!663 = !DILocation(line: 314, column: 7, scope: !556, inlinedAt: !589)
!664 = !DILocation(line: 321, column: 5, scope: !665, inlinedAt: !589)
!665 = distinct !DILexicalBlock(scope: !666, file: !74, line: 320, column: 3)
!666 = distinct !DILexicalBlock(scope: !556, file: !74, line: 320, column: 3)
!667 = !DILocation(line: 315, column: 4, scope: !668, inlinedAt: !589)
!668 = distinct !DILexicalBlock(scope: !662, file: !74, line: 314, column: 36)
!669 = !DILocation(line: 315, column: 16, scope: !668, inlinedAt: !589)
!670 = !DILocation(line: 316, column: 4, scope: !668, inlinedAt: !589)
!671 = !DILocation(line: 321, column: 8, scope: !665, inlinedAt: !589)
!672 = !DILocation(line: 321, column: 25, scope: !665, inlinedAt: !589)
!673 = !DILocation(line: 321, column: 22, scope: !665, inlinedAt: !589)
!674 = !DILocation(line: 320, column: 3, scope: !666, inlinedAt: !589)
!675 = !DILocation(line: 322, column: 5, scope: !665, inlinedAt: !589)
!676 = !DILocation(line: 320, column: 31, scope: !665, inlinedAt: !589)
!677 = distinct !{!677, !674, !678, !373, !374}
!678 = !DILocation(line: 322, column: 17, scope: !666, inlinedAt: !589)
!679 = !DILocation(line: 324, column: 3, scope: !556, inlinedAt: !589)
!680 = !DILocation(line: 0, scope: !666, inlinedAt: !589)
!681 = !DILocation(line: 324, column: 15, scope: !556, inlinedAt: !589)
!682 = !DILocation(line: 325, column: 18, scope: !683, inlinedAt: !589)
!683 = distinct !DILexicalBlock(scope: !556, file: !74, line: 325, column: 7)
!684 = !DILocation(line: 325, column: 16, scope: !683, inlinedAt: !589)
!685 = !DILocation(line: 325, column: 7, scope: !556, inlinedAt: !589)
!686 = !DILocation(line: 327, column: 2, scope: !557, inlinedAt: !589)
!687 = !DILocation(line: 311, column: 42, scope: !557, inlinedAt: !589)
!688 = !DILocation(line: 311, column: 25, scope: !557, inlinedAt: !589)
!689 = distinct !{!689, !652, !690, !373, !374}
!690 = !DILocation(line: 327, column: 2, scope: !554, inlinedAt: !589)
!691 = !DILocation(line: 330, column: 13, scope: !692, inlinedAt: !589)
!692 = distinct !DILexicalBlock(scope: !654, file: !74, line: 329, column: 43)
!693 = !DILocation(line: 331, column: 12, scope: !692, inlinedAt: !589)
!694 = !DILocation(line: 332, column: 24, scope: !692, inlinedAt: !589)
!695 = !DILocalVariable(name: "mf", arg: 1, scope: !696, file: !83, line: 268, type: !81)
!696 = distinct !DISubprogram(name: "mf_skip", scope: !83, file: !83, line: 268, type: !109, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !697)
!697 = !{!695, !698}
!698 = !DILocalVariable(name: "amount", arg: 2, scope: !696, file: !83, line: 268, type: !23)
!699 = !DILocation(line: 0, scope: !696, inlinedAt: !700)
!700 = distinct !DILocation(line: 332, column: 3, scope: !692, inlinedAt: !589)
!701 = !DILocation(line: 270, column: 13, scope: !702, inlinedAt: !700)
!702 = distinct !DILexicalBlock(scope: !696, file: !83, line: 270, column: 6)
!703 = !DILocation(line: 270, column: 6, scope: !696, inlinedAt: !700)
!704 = !DILocation(line: 271, column: 7, scope: !705, inlinedAt: !700)
!705 = distinct !DILexicalBlock(scope: !702, file: !83, line: 270, column: 19)
!706 = !{!272, !273, i64 56}
!707 = !DILocation(line: 271, column: 3, scope: !705, inlinedAt: !700)
!708 = !DILocation(line: 272, column: 18, scope: !705, inlinedAt: !700)
!709 = !DILocation(line: 273, column: 2, scope: !705, inlinedAt: !700)
!710 = !DILocation(line: 337, column: 15, scope: !711, inlinedAt: !589)
!711 = distinct !DILexicalBlock(scope: !534, file: !74, line: 337, column: 6)
!712 = !DILocation(line: 337, column: 6, scope: !534, inlinedAt: !589)
!713 = !DILocation(line: 338, column: 30, scope: !714, inlinedAt: !589)
!714 = distinct !DILexicalBlock(scope: !711, file: !74, line: 337, column: 28)
!715 = !DILocation(line: 338, column: 44, scope: !714, inlinedAt: !589)
!716 = !DILocation(line: 338, column: 15, scope: !714, inlinedAt: !589)
!717 = !DILocation(line: 338, column: 49, scope: !714, inlinedAt: !589)
!718 = !{!719, !248, i64 4}
!719 = !{!"", !248, i64 0, !248, i64 4}
!720 = !DILocation(line: 339, column: 5, scope: !714, inlinedAt: !589)
!721 = !DILocation(line: 338, column: 13, scope: !714, inlinedAt: !589)
!722 = !DILocation(line: 340, column: 12, scope: !714, inlinedAt: !589)
!723 = !DILocation(line: 341, column: 24, scope: !714, inlinedAt: !589)
!724 = !DILocation(line: 0, scope: !696, inlinedAt: !725)
!725 = distinct !DILocation(line: 341, column: 3, scope: !714, inlinedAt: !589)
!726 = !DILocation(line: 270, column: 13, scope: !702, inlinedAt: !725)
!727 = !DILocation(line: 270, column: 6, scope: !696, inlinedAt: !725)
!728 = !DILocation(line: 271, column: 7, scope: !705, inlinedAt: !725)
!729 = !DILocation(line: 271, column: 3, scope: !705, inlinedAt: !725)
!730 = !DILocation(line: 272, column: 18, scope: !705, inlinedAt: !725)
!731 = !DILocation(line: 273, column: 2, scope: !705, inlinedAt: !725)
!732 = !DILocation(line: 346, column: 44, scope: !534, inlinedAt: !589)
!733 = !DILocation(line: 346, column: 37, scope: !534, inlinedAt: !589)
!734 = !DILocation(line: 346, column: 35, scope: !534, inlinedAt: !589)
!735 = !DILocation(line: 346, column: 52, scope: !534, inlinedAt: !589)
!736 = !DILocation(line: 346, column: 29, scope: !534, inlinedAt: !589)
!737 = !DILocation(line: 348, column: 15, scope: !738, inlinedAt: !589)
!738 = distinct !DILexicalBlock(scope: !534, file: !74, line: 348, column: 6)
!739 = !DILocation(line: 348, column: 19, scope: !738, inlinedAt: !589)
!740 = !DILocation(line: 350, column: 13, scope: !741, inlinedAt: !589)
!741 = distinct !DILexicalBlock(scope: !738, file: !74, line: 349, column: 36)
!742 = !DILocation(line: 351, column: 12, scope: !741, inlinedAt: !589)
!743 = !DILocation(line: 352, column: 3, scope: !741, inlinedAt: !589)
!744 = !DILocation(line: 355, column: 32, scope: !534, inlinedAt: !589)
!745 = !{!243, !246, i64 736}
!746 = !DILocation(line: 355, column: 9, scope: !534, inlinedAt: !589)
!747 = !DILocation(line: 355, column: 23, scope: !534, inlinedAt: !589)
!748 = !{!260, !246, i64 0}
!749 = !DILocation(line: 357, column: 47, scope: !534, inlinedAt: !589)
!750 = !{!243, !248, i64 2960}
!751 = !DILocation(line: 357, column: 38, scope: !534, inlinedAt: !589)
!752 = !DILocation(line: 360, column: 5, scope: !534, inlinedAt: !589)
!753 = !DILocalVariable(name: "prob", arg: 1, scope: !754, file: !332, line: 37, type: !337)
!754 = distinct !DISubprogram(name: "rc_bit_0_price", scope: !332, file: !332, line: 37, type: !755, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!755 = !DISubroutineType(types: !756)
!756 = !{!23, !337}
!757 = !{!753}
!758 = !DILocation(line: 0, scope: !754, inlinedAt: !759)
!759 = distinct !DILocation(line: 359, column: 25, scope: !534, inlinedAt: !589)
!760 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !759)
!761 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !759)
!762 = !DILocation(line: 361, column: 41, scope: !534, inlinedAt: !589)
!763 = !DILocation(line: 362, column: 6, scope: !534, inlinedAt: !589)
!764 = !DILocation(line: 363, column: 17, scope: !534, inlinedAt: !589)
!765 = !DILocalVariable(name: "pcoder", arg: 1, scope: !766, file: !74, line: 21, type: !769)
!766 = distinct !DISubprogram(name: "get_literal_price", scope: !74, file: !74, line: 21, type: !767, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !773)
!767 = !DISubroutineType(types: !768)
!768 = !{!23, !769, !305, !305, !772, !23, !23}
!769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!773 = !{!765, !774, !775, !776, !777, !778, !779, !783, !784, !785, !788, !790, !791}
!774 = !DILocalVariable(name: "pos", arg: 2, scope: !766, file: !74, line: 21, type: !305)
!775 = !DILocalVariable(name: "prev_byte", arg: 3, scope: !766, file: !74, line: 22, type: !305)
!776 = !DILocalVariable(name: "match_mode", arg: 4, scope: !766, file: !74, line: 22, type: !772)
!777 = !DILocalVariable(name: "match_byte", arg: 5, scope: !766, file: !74, line: 23, type: !23)
!778 = !DILocalVariable(name: "symbol", arg: 6, scope: !766, file: !74, line: 23, type: !23)
!779 = !DILocalVariable(name: "coder", scope: !766, file: !74, line: 25, type: !780)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!783 = !DILocalVariable(name: "subcoder", scope: !766, file: !74, line: 26, type: !335)
!784 = !DILocalVariable(name: "price", scope: !766, file: !74, line: 30, type: !23)
!785 = !DILocalVariable(name: "offset", scope: !786, file: !74, line: 35, type: !23)
!786 = distinct !DILexicalBlock(scope: !787, file: !74, line: 34, column: 9)
!787 = distinct !DILexicalBlock(scope: !766, file: !74, line: 32, column: 6)
!788 = !DILocalVariable(name: "match_bit", scope: !789, file: !74, line: 41, type: !305)
!789 = distinct !DILexicalBlock(scope: !786, file: !74, line: 38, column: 6)
!790 = !DILocalVariable(name: "subcoder_index", scope: !789, file: !74, line: 42, type: !305)
!791 = !DILocalVariable(name: "bit", scope: !789, file: !74, line: 44, type: !305)
!792 = !DILocation(line: 0, scope: !766, inlinedAt: !793)
!793 = distinct !DILocation(line: 361, column: 6, scope: !534, inlinedAt: !589)
!794 = !DILocation(line: 26, column: 38, scope: !766, inlinedAt: !793)
!795 = !{!243, !248, i64 2968}
!796 = !{!243, !248, i64 2964}
!797 = !DILocation(line: 0, scope: !787, inlinedAt: !793)
!798 = !DILocation(line: 32, column: 6, scope: !766, inlinedAt: !793)
!799 = !DILocation(line: 363, column: 5, scope: !534, inlinedAt: !589)
!800 = !DILocation(line: 38, column: 3, scope: !786, inlinedAt: !793)
!801 = !DILocation(line: 0, scope: !331, inlinedAt: !802)
!802 = distinct !DILocation(line: 33, column: 11, scope: !803, inlinedAt: !793)
!803 = distinct !DILexicalBlock(scope: !787, file: !74, line: 32, column: 19)
!804 = !DILocation(line: 59, column: 31, scope: !343, inlinedAt: !802)
!805 = !DILocation(line: 0, scope: !343, inlinedAt: !802)
!806 = !DILocation(line: 60, column: 10, scope: !343, inlinedAt: !802)
!807 = !DILocation(line: 61, column: 25, scope: !343, inlinedAt: !802)
!808 = !DILocation(line: 0, scope: !354, inlinedAt: !809)
!809 = distinct !DILocation(line: 61, column: 12, scope: !343, inlinedAt: !802)
!810 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !809)
!811 = !DILocation(line: 31, column: 46, scope: !354, inlinedAt: !809)
!812 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !809)
!813 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !809)
!814 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !809)
!815 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !809)
!816 = !DILocation(line: 61, column: 9, scope: !343, inlinedAt: !802)
!817 = !DILocation(line: 62, column: 18, scope: !331, inlinedAt: !802)
!818 = !DILocation(line: 62, column: 2, scope: !343, inlinedAt: !802)
!819 = distinct !{!819, !820, !821, !373, !374}
!820 = !DILocation(line: 58, column: 2, scope: !331, inlinedAt: !802)
!821 = !DILocation(line: 62, column: 22, scope: !331, inlinedAt: !802)
!822 = !DILocation(line: 0, scope: !786, inlinedAt: !793)
!823 = !DILocation(line: 39, column: 15, scope: !789, inlinedAt: !793)
!824 = !DILocation(line: 41, column: 42, scope: !789, inlinedAt: !793)
!825 = !DILocation(line: 0, scope: !789, inlinedAt: !793)
!826 = !DILocation(line: 43, column: 37, scope: !789, inlinedAt: !793)
!827 = !DILocation(line: 43, column: 15, scope: !789, inlinedAt: !793)
!828 = !DILocation(line: 43, column: 27, scope: !789, inlinedAt: !793)
!829 = !DILocation(line: 45, column: 26, scope: !789, inlinedAt: !793)
!830 = !DILocation(line: 0, scope: !354, inlinedAt: !831)
!831 = distinct !DILocation(line: 45, column: 13, scope: !789, inlinedAt: !793)
!832 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !831)
!833 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !831)
!834 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !831)
!835 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !831)
!836 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !831)
!837 = !DILocation(line: 45, column: 10, scope: !789, inlinedAt: !793)
!838 = !DILocation(line: 47, column: 11, scope: !789, inlinedAt: !793)
!839 = !DILocation(line: 48, column: 14, scope: !789, inlinedAt: !793)
!840 = !DILocation(line: 48, column: 11, scope: !789, inlinedAt: !793)
!841 = !DILocation(line: 50, column: 19, scope: !786, inlinedAt: !793)
!842 = !DILocation(line: 50, column: 3, scope: !789, inlinedAt: !793)
!843 = distinct !{!843, !800, !844, !373, !374}
!844 = !DILocation(line: 50, column: 40, scope: !786, inlinedAt: !793)
!845 = !DILocation(line: 361, column: 4, scope: !534, inlinedAt: !589)
!846 = !DILocation(line: 359, column: 17, scope: !534, inlinedAt: !589)
!847 = !DILocation(line: 359, column: 23, scope: !534, inlinedAt: !589)
!848 = !{!260, !248, i64 16}
!849 = !DILocalVariable(name: "optimal", arg: 1, scope: !850, file: !74, line: 212, type: !853)
!850 = distinct !DISubprogram(name: "make_literal", scope: !74, file: !74, line: 212, type: !851, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !854)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !853}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!854 = !{!849}
!855 = !DILocation(line: 0, scope: !850, inlinedAt: !856)
!856 = distinct !DILocation(line: 365, column: 2, scope: !534, inlinedAt: !589)
!857 = !DILocation(line: 214, column: 11, scope: !850, inlinedAt: !856)
!858 = !DILocation(line: 214, column: 21, scope: !850, inlinedAt: !856)
!859 = !DILocation(line: 215, column: 11, scope: !850, inlinedAt: !856)
!860 = !DILocation(line: 215, column: 29, scope: !850, inlinedAt: !856)
!861 = !{!260, !249, i64 4}
!862 = !DILocalVariable(name: "prob", arg: 1, scope: !863, file: !332, line: 44, type: !337)
!863 = distinct !DISubprogram(name: "rc_bit_1_price", scope: !332, file: !332, line: 44, type: !755, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !864)
!864 = !{!862}
!865 = !DILocation(line: 0, scope: !863, inlinedAt: !866)
!866 = distinct !DILocation(line: 367, column: 31, scope: !534, inlinedAt: !589)
!867 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !866)
!868 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !866)
!869 = !DILocation(line: 370, column: 21, scope: !534, inlinedAt: !589)
!870 = !DILocation(line: 0, scope: !863, inlinedAt: !871)
!871 = distinct !DILocation(line: 370, column: 6, scope: !534, inlinedAt: !589)
!872 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !871)
!873 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !871)
!874 = !DILocation(line: 370, column: 4, scope: !534, inlinedAt: !589)
!875 = !DILocation(line: 372, column: 6, scope: !534, inlinedAt: !589)
!876 = !DILocalVariable(name: "pcoder", arg: 1, scope: !877, file: !74, line: 68, type: !769)
!877 = distinct !DISubprogram(name: "get_short_rep_price", scope: !74, file: !74, line: 68, type: !878, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !881)
!878 = !DISubroutineType(types: !879)
!879 = !{!23, !769, !880, !305}
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!881 = !{!876, !882, !883, !884}
!882 = !DILocalVariable(name: "state", arg: 2, scope: !877, file: !74, line: 69, type: !880)
!883 = !DILocalVariable(name: "pos_state", arg: 3, scope: !877, file: !74, line: 69, type: !305)
!884 = !DILocalVariable(name: "coder", scope: !877, file: !74, line: 71, type: !780)
!885 = !DILocation(line: 0, scope: !877, inlinedAt: !886)
!886 = distinct !DILocation(line: 374, column: 7, scope: !565, inlinedAt: !589)
!887 = !DILocation(line: 72, column: 24, scope: !877, inlinedAt: !886)
!888 = !DILocation(line: 0, scope: !754, inlinedAt: !889)
!889 = distinct !DILocation(line: 72, column: 9, scope: !877, inlinedAt: !886)
!890 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !889)
!891 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !889)
!892 = !DILocation(line: 73, column: 20, scope: !877, inlinedAt: !886)
!893 = !DILocation(line: 0, scope: !754, inlinedAt: !894)
!894 = distinct !DILocation(line: 73, column: 5, scope: !877, inlinedAt: !886)
!895 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !894)
!896 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !894)
!897 = !DILocation(line: 73, column: 3, scope: !877, inlinedAt: !886)
!898 = !DILocation(line: 374, column: 5, scope: !565, inlinedAt: !589)
!899 = !DILocation(line: 0, scope: !565, inlinedAt: !589)
!900 = !DILocation(line: 377, column: 23, scope: !901, inlinedAt: !589)
!901 = distinct !DILexicalBlock(scope: !565, file: !74, line: 377, column: 7)
!902 = !DILocation(line: 377, column: 7, scope: !565, inlinedAt: !589)
!903 = !DILocation(line: 378, column: 25, scope: !904, inlinedAt: !589)
!904 = distinct !DILexicalBlock(scope: !901, file: !74, line: 377, column: 47)
!905 = !DILocalVariable(name: "optimal", arg: 1, scope: !906, file: !74, line: 220, type: !853)
!906 = distinct !DISubprogram(name: "make_short_rep", scope: !74, file: !74, line: 220, type: !851, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !907)
!907 = !{!905}
!908 = !DILocation(line: 0, scope: !906, inlinedAt: !909)
!909 = distinct !DILocation(line: 379, column: 4, scope: !904, inlinedAt: !589)
!910 = !DILocation(line: 222, column: 21, scope: !906, inlinedAt: !909)
!911 = !DILocation(line: 380, column: 3, scope: !904, inlinedAt: !589)
!912 = !DILocation(line: 383, column: 27, scope: !534, inlinedAt: !589)
!913 = !DILocation(line: 385, column: 14, scope: !914, inlinedAt: !589)
!914 = distinct !DILexicalBlock(scope: !534, file: !74, line: 385, column: 6)
!915 = !DILocation(line: 385, column: 6, scope: !534, inlinedAt: !589)
!916 = !DILocation(line: 386, column: 13, scope: !917, inlinedAt: !589)
!917 = distinct !DILexicalBlock(scope: !914, file: !74, line: 385, column: 19)
!918 = !DILocation(line: 387, column: 12, scope: !917, inlinedAt: !589)
!919 = !DILocation(line: 388, column: 3, scope: !917, inlinedAt: !589)
!920 = !DILocation(line: 391, column: 17, scope: !534, inlinedAt: !589)
!921 = !DILocation(line: 391, column: 26, scope: !534, inlinedAt: !589)
!922 = !DILocation(line: 0, scope: !569, inlinedAt: !589)
!923 = !DILocation(line: 393, column: 2, scope: !569, inlinedAt: !589)
!924 = !DILocation(line: 394, column: 29, scope: !925, inlinedAt: !589)
!925 = distinct !DILexicalBlock(scope: !569, file: !74, line: 393, column: 2)
!926 = !DILocation(line: 394, column: 3, scope: !925, inlinedAt: !589)
!927 = !DILocation(line: 394, column: 27, scope: !925, inlinedAt: !589)
!928 = !DILocation(line: 393, column: 42, scope: !925, inlinedAt: !589)
!929 = !DILocation(line: 393, column: 25, scope: !925, inlinedAt: !589)
!930 = distinct !{!930, !923, !931, !373, !374}
!931 = !DILocation(line: 394, column: 42, scope: !569, inlinedAt: !589)
!932 = !DILocation(line: 397, column: 2, scope: !534, inlinedAt: !589)
!933 = !DILocation(line: 398, column: 20, scope: !934, inlinedAt: !589)
!934 = distinct !DILexicalBlock(scope: !534, file: !74, line: 397, column: 5)
!935 = !DILocation(line: 398, column: 26, scope: !934, inlinedAt: !589)
!936 = !DILocation(line: 399, column: 11, scope: !534, inlinedAt: !589)
!937 = !DILocation(line: 399, column: 17, scope: !534, inlinedAt: !589)
!938 = !DILocation(line: 399, column: 2, scope: !934, inlinedAt: !589)
!939 = distinct !{!939, !932, !940, !373, !374}
!940 = !DILocation(line: 399, column: 21, scope: !534, inlinedAt: !589)
!941 = !DILocation(line: 0, scope: !572, inlinedAt: !589)
!942 = !DILocation(line: 402, column: 2, scope: !572, inlinedAt: !589)
!943 = !DILocation(line: 0, scope: !754, inlinedAt: !944)
!944 = distinct !DILocation(line: 427, column: 6, scope: !534, inlinedAt: !589)
!945 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !944)
!946 = !DILocation(line: 429, column: 8, scope: !534, inlinedAt: !589)
!947 = !DILocation(line: 430, column: 10, scope: !582, inlinedAt: !589)
!948 = !DILocation(line: 430, column: 6, scope: !534, inlinedAt: !589)
!949 = !DILocation(line: 403, column: 22, scope: !574, inlinedAt: !589)
!950 = !DILocation(line: 0, scope: !574, inlinedAt: !589)
!951 = !DILocation(line: 404, column: 15, scope: !952, inlinedAt: !589)
!952 = distinct !DILexicalBlock(scope: !574, file: !74, line: 404, column: 7)
!953 = !DILocation(line: 404, column: 7, scope: !574, inlinedAt: !589)
!954 = !DILocalVariable(name: "pcoder", arg: 1, scope: !955, file: !74, line: 78, type: !769)
!955 = distinct !DISubprogram(name: "get_pure_rep_price", scope: !74, file: !74, line: 78, type: !956, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !958)
!956 = !DISubroutineType(types: !957)
!957 = !{!23, !769, !305, !880, !23}
!958 = !{!954, !959, !960, !961, !962, !963}
!959 = !DILocalVariable(name: "rep_index", arg: 2, scope: !955, file: !74, line: 78, type: !305)
!960 = !DILocalVariable(name: "state", arg: 3, scope: !955, file: !74, line: 79, type: !880)
!961 = !DILocalVariable(name: "pos_state", arg: 4, scope: !955, file: !74, line: 79, type: !23)
!962 = !DILocalVariable(name: "coder", scope: !955, file: !74, line: 81, type: !780)
!963 = !DILocalVariable(name: "price", scope: !955, file: !74, line: 82, type: !23)
!964 = !DILocation(line: 0, scope: !955, inlinedAt: !965)
!965 = distinct !DILocation(line: 407, column: 44, scope: !574, inlinedAt: !589)
!966 = !DILocation(line: 84, column: 16, scope: !967, inlinedAt: !965)
!967 = distinct !DILexicalBlock(scope: !955, file: !74, line: 84, column: 6)
!968 = !DILocation(line: 0, scope: !967, inlinedAt: !965)
!969 = !DILocation(line: 84, column: 6, scope: !955, inlinedAt: !965)
!970 = !DILocation(line: 0, scope: !754, inlinedAt: !971)
!971 = distinct !DILocation(line: 85, column: 11, scope: !972, inlinedAt: !965)
!972 = distinct !DILexicalBlock(scope: !967, file: !74, line: 84, column: 22)
!973 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !971)
!974 = !DILocation(line: 86, column: 27, scope: !972, inlinedAt: !965)
!975 = !DILocation(line: 0, scope: !863, inlinedAt: !976)
!976 = distinct !DILocation(line: 86, column: 12, scope: !972, inlinedAt: !965)
!977 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !976)
!978 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !976)
!979 = !DILocation(line: 87, column: 2, scope: !972, inlinedAt: !965)
!980 = !DILocation(line: 0, scope: !863, inlinedAt: !981)
!981 = distinct !DILocation(line: 88, column: 11, scope: !982, inlinedAt: !965)
!982 = distinct !DILexicalBlock(scope: !967, file: !74, line: 87, column: 9)
!983 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !981)
!984 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !981)
!985 = !DILocation(line: 90, column: 17, scope: !986, inlinedAt: !965)
!986 = distinct !DILexicalBlock(scope: !982, file: !74, line: 90, column: 7)
!987 = !DILocation(line: 0, scope: !986, inlinedAt: !965)
!988 = !DILocation(line: 90, column: 7, scope: !982, inlinedAt: !965)
!989 = !DILocation(line: 0, scope: !754, inlinedAt: !990)
!990 = distinct !DILocation(line: 91, column: 13, scope: !991, inlinedAt: !965)
!991 = distinct !DILexicalBlock(scope: !986, file: !74, line: 90, column: 23)
!992 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !990)
!993 = !DILocation(line: 92, column: 3, scope: !991, inlinedAt: !965)
!994 = !DILocation(line: 0, scope: !863, inlinedAt: !995)
!995 = distinct !DILocation(line: 93, column: 13, scope: !996, inlinedAt: !965)
!996 = distinct !DILexicalBlock(scope: !986, file: !74, line: 92, column: 10)
!997 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !995)
!998 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !995)
!999 = !DILocation(line: 93, column: 10, scope: !996, inlinedAt: !965)
!1000 = !DILocation(line: 94, column: 26, scope: !996, inlinedAt: !965)
!1001 = !DILocation(line: 0, scope: !354, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 94, column: 13, scope: !996, inlinedAt: !965)
!1003 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1002)
!1004 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1002)
!1005 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1002)
!1006 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1002)
!1007 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1002)
!1008 = !DILocation(line: 410, column: 3, scope: !574, inlinedAt: !589)
!1009 = !DILocalVariable(name: "lencoder", arg: 1, scope: !1010, file: !74, line: 58, type: !1013)
!1010 = distinct !DISubprogram(name: "get_len_price", scope: !74, file: !74, line: 58, type: !1011, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1016)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!23, !1013, !305, !305}
!1013 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!1016 = !{!1009, !1017, !1018}
!1017 = !DILocalVariable(name: "len", arg: 2, scope: !1010, file: !74, line: 59, type: !305)
!1018 = !DILocalVariable(name: "pos_state", arg: 3, scope: !1010, file: !74, line: 59, type: !305)
!1019 = !DILocation(line: 0, scope: !1010, inlinedAt: !1020)
!1020 = distinct !DILocation(line: 412, column: 8, scope: !578, inlinedAt: !589)
!1021 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1020)
!1022 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1020)
!1023 = !DILocation(line: 412, column: 6, scope: !578, inlinedAt: !589)
!1024 = !DILocation(line: 0, scope: !578, inlinedAt: !589)
!1025 = !DILocation(line: 416, column: 28, scope: !1026, inlinedAt: !589)
!1026 = distinct !DILexicalBlock(scope: !578, file: !74, line: 416, column: 8)
!1027 = !DILocation(line: 416, column: 49, scope: !1026, inlinedAt: !589)
!1028 = !DILocation(line: 416, column: 26, scope: !1026, inlinedAt: !589)
!1029 = !DILocation(line: 416, column: 8, scope: !578, inlinedAt: !589)
!1030 = !DILocation(line: 417, column: 32, scope: !1031, inlinedAt: !589)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !74, line: 416, column: 56)
!1032 = !DILocation(line: 418, column: 26, scope: !1031, inlinedAt: !589)
!1033 = !DILocation(line: 418, column: 35, scope: !1031, inlinedAt: !589)
!1034 = !DILocation(line: 419, column: 26, scope: !1031, inlinedAt: !589)
!1035 = !DILocation(line: 419, column: 36, scope: !1031, inlinedAt: !589)
!1036 = !DILocation(line: 420, column: 26, scope: !1031, inlinedAt: !589)
!1037 = !DILocation(line: 420, column: 44, scope: !1031, inlinedAt: !589)
!1038 = !DILocation(line: 421, column: 4, scope: !1031, inlinedAt: !589)
!1039 = !DILocation(line: 422, column: 12, scope: !574, inlinedAt: !589)
!1040 = !DILocation(line: 422, column: 22, scope: !574, inlinedAt: !589)
!1041 = !DILocation(line: 422, column: 3, scope: !578, inlinedAt: !589)
!1042 = distinct !{!1042, !1008, !1043, !373, !374}
!1043 = !DILocation(line: 422, column: 26, scope: !574, inlinedAt: !589)
!1044 = !DILocation(line: 402, column: 42, scope: !575, inlinedAt: !589)
!1045 = !DILocation(line: 402, column: 25, scope: !575, inlinedAt: !589)
!1046 = distinct !{!1046, !942, !1047, !373, !374}
!1047 = !DILocation(line: 423, column: 2, scope: !572, inlinedAt: !589)
!1048 = !DILocation(line: 0, scope: !581, inlinedAt: !589)
!1049 = !DILocation(line: 432, column: 16, scope: !581, inlinedAt: !589)
!1050 = !DILocation(line: 432, column: 34, scope: !581, inlinedAt: !589)
!1051 = !{!719, !248, i64 0}
!1052 = !DILocation(line: 432, column: 14, scope: !581, inlinedAt: !589)
!1053 = !DILocation(line: 433, column: 4, scope: !581, inlinedAt: !589)
!1054 = !DILocation(line: 432, column: 3, scope: !581, inlinedAt: !589)
!1055 = distinct !{!1055, !1054, !1056, !373, !374}
!1056 = !DILocation(line: 433, column: 6, scope: !581, inlinedAt: !589)
!1057 = !DILocation(line: 435, column: 3, scope: !586, inlinedAt: !589)
!1058 = !DILocation(line: 436, column: 26, scope: !584, inlinedAt: !589)
!1059 = !DILocation(line: 436, column: 44, scope: !584, inlinedAt: !589)
!1060 = !DILocation(line: 0, scope: !584, inlinedAt: !589)
!1061 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1062, file: !74, line: 115, type: !769)
!1062 = distinct !DISubprogram(name: "get_pos_len_price", scope: !74, file: !74, line: 115, type: !1063, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!23, !769, !305, !305, !305}
!1065 = !{!1061, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DILocalVariable(name: "pos", arg: 2, scope: !1062, file: !74, line: 115, type: !305)
!1067 = !DILocalVariable(name: "len", arg: 3, scope: !1062, file: !74, line: 116, type: !305)
!1068 = !DILocalVariable(name: "pos_state", arg: 4, scope: !1062, file: !74, line: 116, type: !305)
!1069 = !DILocalVariable(name: "coder", scope: !1062, file: !74, line: 118, type: !780)
!1070 = !DILocalVariable(name: "len_to_pos_state", scope: !1062, file: !74, line: 119, type: !305)
!1071 = !DILocalVariable(name: "price", scope: !1062, file: !74, line: 120, type: !23)
!1072 = !DILocalVariable(name: "pos_slot", scope: !1073, file: !74, line: 125, type: !305)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !74, line: 124, column: 9)
!1074 = distinct !DILexicalBlock(scope: !1062, file: !74, line: 122, column: 6)
!1075 = !DILocation(line: 0, scope: !1062, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 438, column: 8, scope: !584, inlinedAt: !589)
!1077 = !DILocation(line: 119, column: 36, scope: !1062, inlinedAt: !1076)
!1078 = !DILocation(line: 122, column: 10, scope: !1074, inlinedAt: !1076)
!1079 = !DILocation(line: 122, column: 6, scope: !1062, inlinedAt: !1076)
!1080 = !DILocation(line: 123, column: 11, scope: !1081, inlinedAt: !1076)
!1081 = distinct !DILexicalBlock(scope: !1074, file: !74, line: 122, column: 28)
!1082 = !DILocation(line: 124, column: 2, scope: !1081, inlinedAt: !1076)
!1083 = !DILocalVariable(name: "pos", arg: 1, scope: !1084, file: !409, line: 124, type: !23)
!1084 = distinct !DISubprogram(name: "get_pos_slot_2", scope: !409, file: !409, line: 124, type: !410, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1085)
!1085 = !{!1083}
!1086 = !DILocation(line: 0, scope: !1084, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 125, column: 29, scope: !1073, inlinedAt: !1076)
!1088 = !DILocation(line: 128, column: 10, scope: !1089, inlinedAt: !1087)
!1089 = distinct !DILexicalBlock(scope: !1084, file: !409, line: 128, column: 6)
!1090 = !DILocation(line: 128, column: 6, scope: !1084, inlinedAt: !1087)
!1091 = !DILocation(line: 131, column: 10, scope: !1092, inlinedAt: !1087)
!1092 = distinct !DILexicalBlock(scope: !1084, file: !409, line: 131, column: 6)
!1093 = !DILocation(line: 0, scope: !1073, inlinedAt: !1076)
!1094 = !DILocation(line: 126, column: 11, scope: !1073, inlinedAt: !1076)
!1095 = !DILocation(line: 127, column: 31, scope: !1073, inlinedAt: !1076)
!1096 = !DILocation(line: 127, column: 7, scope: !1073, inlinedAt: !1076)
!1097 = !DILocation(line: 127, column: 5, scope: !1073, inlinedAt: !1076)
!1098 = !DILocation(line: 0, scope: !1074, inlinedAt: !1076)
!1099 = !DILocation(line: 0, scope: !1010, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 130, column: 11, scope: !1062, inlinedAt: !1076)
!1101 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1100)
!1102 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1100)
!1103 = !DILocation(line: 427, column: 4, scope: !534, inlinedAt: !589)
!1104 = !DILocation(line: 438, column: 6, scope: !584, inlinedAt: !589)
!1105 = !DILocation(line: 441, column: 28, scope: !1106, inlinedAt: !589)
!1106 = distinct !DILexicalBlock(scope: !584, file: !74, line: 441, column: 8)
!1107 = !DILocation(line: 441, column: 45, scope: !1106, inlinedAt: !589)
!1108 = !DILocation(line: 441, column: 26, scope: !1106, inlinedAt: !589)
!1109 = !DILocation(line: 441, column: 8, scope: !584, inlinedAt: !589)
!1110 = !DILocation(line: 442, column: 28, scope: !1111, inlinedAt: !589)
!1111 = distinct !DILexicalBlock(scope: !1106, file: !74, line: 441, column: 52)
!1112 = !DILocation(line: 443, column: 22, scope: !1111, inlinedAt: !589)
!1113 = !DILocation(line: 443, column: 31, scope: !1111, inlinedAt: !589)
!1114 = !DILocation(line: 445, column: 14, scope: !1111, inlinedAt: !589)
!1115 = !DILocation(line: 444, column: 22, scope: !1111, inlinedAt: !589)
!1116 = !DILocation(line: 445, column: 7, scope: !1111, inlinedAt: !589)
!1117 = !DILocation(line: 446, column: 22, scope: !1111, inlinedAt: !589)
!1118 = !DILocation(line: 446, column: 40, scope: !1111, inlinedAt: !589)
!1119 = !DILocation(line: 447, column: 4, scope: !1111, inlinedAt: !589)
!1120 = !DILocation(line: 449, column: 33, scope: !1121, inlinedAt: !589)
!1121 = distinct !DILexicalBlock(scope: !584, file: !74, line: 449, column: 8)
!1122 = !DILocation(line: 449, column: 12, scope: !1121, inlinedAt: !589)
!1123 = !DILocation(line: 449, column: 8, scope: !584, inlinedAt: !589)
!1124 = !DILocation(line: 450, column: 9, scope: !1125, inlinedAt: !589)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !74, line: 450, column: 9)
!1126 = !DILocation(line: 450, column: 13, scope: !1125, inlinedAt: !589)
!1127 = !DILocation(line: 450, column: 9, scope: !1121, inlinedAt: !589)
!1128 = !DILocation(line: 435, column: 11, scope: !585, inlinedAt: !589)
!1129 = !DILocation(line: 435, column: 3, scope: !585, inlinedAt: !589)
!1130 = distinct !{!1130, !1057, !1131, !374}
!1131 = !DILocation(line: 452, column: 3, scope: !586, inlinedAt: !589)
!1132 = !DILocation(line: 856, column: 14, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !73, file: !74, line: 856, column: 6)
!1134 = !DILocation(line: 859, column: 2, scope: !73)
!1135 = !DILocation(line: 859, column: 11, scope: !73)
!1136 = !DILocation(line: 860, column: 2, scope: !73)
!1137 = !DILocation(line: 867, column: 17, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !74, line: 863, column: 38)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !74, line: 863, column: 2)
!1140 = distinct !DILexicalBlock(scope: !73, file: !74, line: 863, column: 2)
!1141 = !DILocation(line: 867, column: 39, scope: !1138)
!1142 = !DILocation(line: 863, column: 20, scope: !1139)
!1143 = !DILocation(line: 863, column: 2, scope: !1140)
!1144 = !DILocation(line: 866, column: 33, scope: !1138)
!1145 = !DILocation(line: 866, column: 31, scope: !1138)
!1146 = !DILocation(line: 869, column: 42, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !74, line: 869, column: 7)
!1148 = !DILocation(line: 869, column: 35, scope: !1147)
!1149 = !DILocation(line: 869, column: 7, scope: !1138)
!1150 = !DILocation(line: 872, column: 34, scope: !1138)
!1151 = !DILocation(line: 0, scope: !641, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 872, column: 34, scope: !1138)
!1153 = !DILocation(line: 224, column: 20, scope: !641, inlinedAt: !1152)
!1154 = !DILocation(line: 872, column: 45, scope: !1138)
!1155 = !DILocation(line: 873, column: 14, scope: !1138)
!1156 = !DILocation(line: 874, column: 5, scope: !1138)
!1157 = !DILocation(line: 0, scope: !617, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 874, column: 5, scope: !1138)
!1159 = !DILocation(line: 232, column: 23, scope: !617, inlinedAt: !1158)
!1160 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1161, file: !74, line: 460, type: !77)
!1161 = distinct !DISubprogram(name: "helper2", scope: !74, file: !74, line: 460, type: !1162, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!23, !77, !112, !549, !23, !23, !305, !305, !305}
!1164 = !{!1160, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1180, !1183, !1186, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1199, !1200, !1203, !1204, !1205, !1208, !1209, !1210, !1211, !1212, !1213, !1215, !1218, !1219, !1220, !1221, !1223, !1224, !1225, !1228, !1229, !1230, !1231, !1232, !1233, !1236, !1237, !1239, !1242, !1243, !1246, !1247, !1248, !1251, !1252, !1253, !1254}
!1165 = !DILocalVariable(name: "reps", arg: 2, scope: !1161, file: !74, line: 460, type: !112)
!1166 = !DILocalVariable(name: "buf", arg: 3, scope: !1161, file: !74, line: 460, type: !549)
!1167 = !DILocalVariable(name: "len_end", arg: 4, scope: !1161, file: !74, line: 461, type: !23)
!1168 = !DILocalVariable(name: "position", arg: 5, scope: !1161, file: !74, line: 461, type: !23)
!1169 = !DILocalVariable(name: "cur", arg: 6, scope: !1161, file: !74, line: 461, type: !305)
!1170 = !DILocalVariable(name: "nice_len", arg: 7, scope: !1161, file: !74, line: 462, type: !305)
!1171 = !DILocalVariable(name: "buf_avail_full", arg: 8, scope: !1161, file: !74, line: 462, type: !305)
!1172 = !DILocalVariable(name: "coder", scope: !1161, file: !74, line: 464, type: !133)
!1173 = !DILocalVariable(name: "matches_count", scope: !1161, file: !74, line: 465, type: !23)
!1174 = !DILocalVariable(name: "new_len", scope: !1161, file: !74, line: 466, type: !23)
!1175 = !DILocalVariable(name: "pos_prev", scope: !1161, file: !74, line: 467, type: !23)
!1176 = !DILocalVariable(name: "state", scope: !1161, file: !74, line: 468, type: !140)
!1177 = !DILocalVariable(name: "pos", scope: !1178, file: !74, line: 497, type: !23)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !74, line: 496, column: 9)
!1179 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 491, column: 6)
!1180 = !DILocalVariable(name: "i", scope: !1181, file: !74, line: 514, type: !23)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !74, line: 511, column: 28)
!1182 = distinct !DILexicalBlock(scope: !1178, file: !74, line: 511, column: 7)
!1183 = !DILocalVariable(name: "i", scope: !1184, file: !74, line: 524, type: !23)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !74, line: 524, column: 4)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !74, line: 521, column: 10)
!1186 = !DILocalVariable(name: "i", scope: !1187, file: !74, line: 531, type: !23)
!1187 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 531, column: 2)
!1188 = !DILocalVariable(name: "cur_price", scope: !1161, file: !74, line: 534, type: !305)
!1189 = !DILocalVariable(name: "current_byte", scope: !1161, file: !74, line: 536, type: !550)
!1190 = !DILocalVariable(name: "match_byte", scope: !1161, file: !74, line: 537, type: !550)
!1191 = !DILocalVariable(name: "pos_state", scope: !1161, file: !74, line: 539, type: !305)
!1192 = !DILocalVariable(name: "cur_and_1_price", scope: !1161, file: !74, line: 541, type: !305)
!1193 = !DILocalVariable(name: "next_is_literal", scope: !1161, file: !74, line: 546, type: !152)
!1194 = !DILocalVariable(name: "match_price", scope: !1161, file: !74, line: 555, type: !305)
!1195 = !DILocalVariable(name: "rep_match_price", scope: !1161, file: !74, line: 557, type: !305)
!1196 = !DILocalVariable(name: "short_rep_price", scope: !1197, file: !74, line: 564, type: !305)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !74, line: 562, column: 46)
!1198 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 560, column: 6)
!1199 = !DILocalVariable(name: "buf_avail", scope: !1161, file: !74, line: 578, type: !305)
!1200 = !DILocalVariable(name: "buf_back", scope: !1201, file: !74, line: 582, type: !548)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !74, line: 580, column: 54)
!1202 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 580, column: 6)
!1203 = !DILocalVariable(name: "limit", scope: !1201, file: !74, line: 583, type: !305)
!1204 = !DILocalVariable(name: "len_test", scope: !1201, file: !74, line: 585, type: !23)
!1205 = !DILocalVariable(name: "state_2", scope: !1206, file: !74, line: 592, type: !140)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !74, line: 591, column: 22)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !74, line: 591, column: 7)
!1208 = !DILocalVariable(name: "pos_state_next", scope: !1206, file: !74, line: 595, type: !305)
!1209 = !DILocalVariable(name: "next_rep_match_price", scope: !1206, file: !74, line: 596, type: !305)
!1210 = !DILocalVariable(name: "offset", scope: !1206, file: !74, line: 601, type: !305)
!1211 = !DILocalVariable(name: "cur_and_len_price", scope: !1206, file: !74, line: 606, type: !305)
!1212 = !DILocalVariable(name: "start_len", scope: !1161, file: !74, line: 622, type: !23)
!1213 = !DILocalVariable(name: "rep_index", scope: !1214, file: !74, line: 624, type: !23)
!1214 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 624, column: 2)
!1215 = !DILocalVariable(name: "buf_back", scope: !1216, file: !74, line: 625, type: !548)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !74, line: 624, column: 71)
!1217 = distinct !DILexicalBlock(scope: !1214, file: !74, line: 624, column: 2)
!1218 = !DILocalVariable(name: "len_test", scope: !1216, file: !74, line: 629, type: !23)
!1219 = !DILocalVariable(name: "len_test_temp", scope: !1216, file: !74, line: 637, type: !305)
!1220 = !DILocalVariable(name: "price", scope: !1216, file: !74, line: 638, type: !305)
!1221 = !DILocalVariable(name: "cur_and_len_price", scope: !1222, file: !74, line: 642, type: !305)
!1222 = distinct !DILexicalBlock(scope: !1216, file: !74, line: 641, column: 6)
!1223 = !DILocalVariable(name: "len_test_2", scope: !1216, file: !74, line: 660, type: !23)
!1224 = !DILocalVariable(name: "limit", scope: !1216, file: !74, line: 661, type: !305)
!1225 = !DILocalVariable(name: "state_2", scope: !1226, file: !74, line: 670, type: !140)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !74, line: 669, column: 24)
!1227 = distinct !DILexicalBlock(scope: !1216, file: !74, line: 669, column: 7)
!1228 = !DILocalVariable(name: "pos_state_next", scope: !1226, file: !74, line: 673, type: !23)
!1229 = !DILocalVariable(name: "cur_and_len_literal_price", scope: !1226, file: !74, line: 675, type: !305)
!1230 = !DILocalVariable(name: "next_rep_match_price", scope: !1226, file: !74, line: 687, type: !305)
!1231 = !DILocalVariable(name: "offset", scope: !1226, file: !74, line: 692, type: !305)
!1232 = !DILocalVariable(name: "cur_and_len_price", scope: !1226, file: !74, line: 697, type: !305)
!1233 = !DILocalVariable(name: "normal_match_price", scope: !1234, file: !74, line: 728, type: !305)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !74, line: 727, column: 28)
!1235 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 727, column: 6)
!1236 = !DILocalVariable(name: "i", scope: !1234, file: !74, line: 734, type: !23)
!1237 = !DILocalVariable(name: "len_test", scope: !1238, file: !74, line: 738, type: !23)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !74, line: 738, column: 3)
!1239 = !DILocalVariable(name: "cur_back", scope: !1240, file: !74, line: 739, type: !305)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !74, line: 738, column: 53)
!1241 = distinct !DILexicalBlock(scope: !1238, file: !74, line: 738, column: 3)
!1242 = !DILocalVariable(name: "cur_and_len_price", scope: !1240, file: !74, line: 740, type: !23)
!1243 = !DILocalVariable(name: "buf_back", scope: !1244, file: !74, line: 754, type: !548)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !74, line: 752, column: 43)
!1245 = distinct !DILexicalBlock(scope: !1240, file: !74, line: 752, column: 8)
!1246 = !DILocalVariable(name: "len_test_2", scope: !1244, file: !74, line: 755, type: !23)
!1247 = !DILocalVariable(name: "limit", scope: !1244, file: !74, line: 756, type: !305)
!1248 = !DILocalVariable(name: "state_2", scope: !1249, file: !74, line: 766, type: !140)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !74, line: 765, column: 26)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !74, line: 765, column: 9)
!1251 = !DILocalVariable(name: "pos_state_next", scope: !1249, file: !74, line: 768, type: !23)
!1252 = !DILocalVariable(name: "cur_and_len_literal_price", scope: !1249, file: !74, line: 771, type: !305)
!1253 = !DILocalVariable(name: "next_rep_match_price", scope: !1249, file: !74, line: 784, type: !305)
!1254 = !DILocalVariable(name: "offset", scope: !1249, file: !74, line: 791, type: !305)
!1255 = !DILocation(line: 0, scope: !1161, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 872, column: 13, scope: !1138)
!1257 = !DILocation(line: 465, column: 34, scope: !1161, inlinedAt: !1256)
!1258 = !DILocation(line: 467, column: 22, scope: !1161, inlinedAt: !1256)
!1259 = !DILocation(line: 467, column: 39, scope: !1161, inlinedAt: !1256)
!1260 = !DILocation(line: 470, column: 23, scope: !1261, inlinedAt: !1256)
!1261 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 470, column: 6)
!1262 = !{i8 0, i8 2}
!1263 = !DILocation(line: 470, column: 6, scope: !1161, inlinedAt: !1256)
!1264 = !DILocation(line: 471, column: 3, scope: !1265, inlinedAt: !1256)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !74, line: 470, column: 42)
!1266 = !DILocation(line: 473, column: 24, scope: !1267, inlinedAt: !1256)
!1267 = distinct !DILexicalBlock(scope: !1265, file: !74, line: 473, column: 7)
!1268 = !{!260, !249, i64 5}
!1269 = !DILocation(line: 473, column: 7, scope: !1265, inlinedAt: !1256)
!1270 = !DILocation(line: 474, column: 41, scope: !1271, inlinedAt: !1256)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !74, line: 473, column: 32)
!1272 = !{!260, !248, i64 8}
!1273 = !DILocation(line: 474, column: 12, scope: !1271, inlinedAt: !1256)
!1274 = !DILocation(line: 474, column: 53, scope: !1271, inlinedAt: !1256)
!1275 = !DILocation(line: 476, column: 25, scope: !1276, inlinedAt: !1256)
!1276 = distinct !DILexicalBlock(scope: !1271, file: !74, line: 476, column: 8)
!1277 = !{!260, !248, i64 12}
!1278 = !DILocation(line: 476, column: 37, scope: !1276, inlinedAt: !1256)
!1279 = !DILocation(line: 0, scope: !1276, inlinedAt: !1256)
!1280 = !DILocation(line: 482, column: 12, scope: !1281, inlinedAt: !1256)
!1281 = distinct !DILexicalBlock(scope: !1267, file: !74, line: 481, column: 10)
!1282 = !DILocation(line: 482, column: 34, scope: !1281, inlinedAt: !1256)
!1283 = !DILocation(line: 485, column: 3, scope: !1265, inlinedAt: !1256)
!1284 = !DILocation(line: 0, scope: !1261, inlinedAt: !1256)
!1285 = !DILocation(line: 491, column: 15, scope: !1179, inlinedAt: !1256)
!1286 = !DILocation(line: 491, column: 6, scope: !1161, inlinedAt: !1256)
!1287 = !DILocation(line: 488, column: 11, scope: !1288, inlinedAt: !1256)
!1288 = distinct !DILexicalBlock(scope: !1261, file: !74, line: 487, column: 9)
!1289 = !DILocation(line: 488, column: 33, scope: !1288, inlinedAt: !1256)
!1290 = !DILocation(line: 491, column: 22, scope: !1179, inlinedAt: !1256)
!1291 = !DILocation(line: 492, column: 7, scope: !1292, inlinedAt: !1256)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !74, line: 492, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1179, file: !74, line: 491, column: 27)
!1294 = !DILocation(line: 492, column: 7, scope: !1293, inlinedAt: !1256)
!1295 = !DILocation(line: 493, column: 4, scope: !1292, inlinedAt: !1256)
!1296 = !DILocation(line: 495, column: 4, scope: !1292, inlinedAt: !1256)
!1297 = !DILocation(line: 498, column: 7, scope: !1178, inlinedAt: !1256)
!1298 = !DILocation(line: 504, column: 27, scope: !1299, inlinedAt: !1256)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !74, line: 503, column: 10)
!1300 = distinct !DILexicalBlock(scope: !1178, file: !74, line: 498, column: 7)
!1301 = !DILocation(line: 0, scope: !1178, inlinedAt: !1256)
!1302 = !DILocation(line: 505, column: 12, scope: !1303, inlinedAt: !1256)
!1303 = distinct !DILexicalBlock(scope: !1299, file: !74, line: 505, column: 8)
!1304 = !DILocation(line: 0, scope: !1303, inlinedAt: !1256)
!1305 = !DILocation(line: 505, column: 8, scope: !1299, inlinedAt: !1256)
!1306 = !DILocation(line: 506, column: 5, scope: !1303, inlinedAt: !1256)
!1307 = !DILocation(line: 511, column: 7, scope: !1178, inlinedAt: !1256)
!1308 = !DILocation(line: 508, column: 5, scope: !1303, inlinedAt: !1256)
!1309 = !DILocation(line: 500, column: 32, scope: !1310, inlinedAt: !1256)
!1310 = distinct !DILexicalBlock(scope: !1300, file: !74, line: 499, column: 33)
!1311 = !DILocation(line: 501, column: 27, scope: !1310, inlinedAt: !1256)
!1312 = !DILocation(line: 502, column: 4, scope: !1310, inlinedAt: !1256)
!1313 = !DILocation(line: 511, column: 11, scope: !1182, inlinedAt: !1256)
!1314 = !DILocation(line: 512, column: 14, scope: !1181, inlinedAt: !1256)
!1315 = !DILocation(line: 512, column: 12, scope: !1181, inlinedAt: !1256)
!1316 = !DILocation(line: 0, scope: !1181, inlinedAt: !1256)
!1317 = !DILocation(line: 515, column: 18, scope: !1318, inlinedAt: !1256)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !74, line: 515, column: 4)
!1319 = distinct !DILexicalBlock(scope: !1181, file: !74, line: 515, column: 4)
!1320 = !DILocation(line: 515, column: 4, scope: !1319, inlinedAt: !1256)
!1321 = !DILocation(line: 518, column: 4, scope: !1322, inlinedAt: !1256)
!1322 = distinct !DILexicalBlock(scope: !1181, file: !74, line: 518, column: 4)
!1323 = !DILocation(line: 516, column: 13, scope: !1318, inlinedAt: !1256)
!1324 = !DILocation(line: 518, column: 13, scope: !1325, inlinedAt: !1256)
!1325 = distinct !DILexicalBlock(scope: !1322, file: !74, line: 518, column: 4)
!1326 = !DILocation(line: 519, column: 13, scope: !1325, inlinedAt: !1256)
!1327 = !DILocation(line: 529, column: 25, scope: !1161, inlinedAt: !1256)
!1328 = !DILocation(line: 522, column: 18, scope: !1185, inlinedAt: !1256)
!1329 = !DILocation(line: 522, column: 12, scope: !1185, inlinedAt: !1256)
!1330 = !DILocation(line: 0, scope: !1184, inlinedAt: !1256)
!1331 = !DILocation(line: 524, column: 4, scope: !1184, inlinedAt: !1256)
!1332 = !DILocation(line: 525, column: 13, scope: !1333, inlinedAt: !1256)
!1333 = distinct !DILexicalBlock(scope: !1184, file: !74, line: 524, column: 4)
!1334 = !DILocation(line: 0, scope: !1179, inlinedAt: !1256)
!1335 = !DILocation(line: 0, scope: !1187, inlinedAt: !1256)
!1336 = !DILocation(line: 532, column: 29, scope: !1337, inlinedAt: !1256)
!1337 = distinct !DILexicalBlock(scope: !1187, file: !74, line: 531, column: 2)
!1338 = !DILocation(line: 534, column: 46, scope: !1161, inlinedAt: !1256)
!1339 = !DILocation(line: 536, column: 31, scope: !1161, inlinedAt: !1256)
!1340 = !DILocation(line: 537, column: 37, scope: !1161, inlinedAt: !1256)
!1341 = !DILocation(line: 537, column: 35, scope: !1161, inlinedAt: !1256)
!1342 = !DILocation(line: 537, column: 45, scope: !1161, inlinedAt: !1256)
!1343 = !DILocation(line: 537, column: 29, scope: !1161, inlinedAt: !1256)
!1344 = !DILocation(line: 539, column: 47, scope: !1161, inlinedAt: !1256)
!1345 = !DILocation(line: 539, column: 38, scope: !1161, inlinedAt: !1256)
!1346 = !DILocation(line: 542, column: 21, scope: !1161, inlinedAt: !1256)
!1347 = !DILocation(line: 0, scope: !754, inlinedAt: !1348)
!1348 = distinct !DILocation(line: 542, column: 6, scope: !1161, inlinedAt: !1256)
!1349 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !1348)
!1350 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1348)
!1351 = !DILocation(line: 542, column: 4, scope: !1161, inlinedAt: !1256)
!1352 = !DILocation(line: 543, column: 41, scope: !1161, inlinedAt: !1256)
!1353 = !DILocation(line: 544, column: 5, scope: !1161, inlinedAt: !1256)
!1354 = !DILocation(line: 544, column: 42, scope: !1161, inlinedAt: !1256)
!1355 = !DILocation(line: 0, scope: !766, inlinedAt: !1356)
!1356 = distinct !DILocation(line: 543, column: 6, scope: !1161, inlinedAt: !1256)
!1357 = !DILocation(line: 26, column: 38, scope: !766, inlinedAt: !1356)
!1358 = !DILocation(line: 0, scope: !787, inlinedAt: !1356)
!1359 = !DILocation(line: 32, column: 6, scope: !766, inlinedAt: !1356)
!1360 = !DILocation(line: 544, column: 30, scope: !1161, inlinedAt: !1256)
!1361 = !DILocation(line: 38, column: 3, scope: !786, inlinedAt: !1356)
!1362 = !DILocation(line: 0, scope: !331, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 33, column: 11, scope: !803, inlinedAt: !1356)
!1364 = !DILocation(line: 59, column: 31, scope: !343, inlinedAt: !1363)
!1365 = !DILocation(line: 0, scope: !343, inlinedAt: !1363)
!1366 = !DILocation(line: 60, column: 10, scope: !343, inlinedAt: !1363)
!1367 = !DILocation(line: 61, column: 25, scope: !343, inlinedAt: !1363)
!1368 = !DILocation(line: 0, scope: !354, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 61, column: 12, scope: !343, inlinedAt: !1363)
!1370 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1369)
!1371 = !DILocation(line: 31, column: 46, scope: !354, inlinedAt: !1369)
!1372 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1369)
!1373 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1369)
!1374 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1369)
!1375 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1369)
!1376 = !DILocation(line: 61, column: 9, scope: !343, inlinedAt: !1363)
!1377 = !DILocation(line: 62, column: 18, scope: !331, inlinedAt: !1363)
!1378 = !DILocation(line: 62, column: 2, scope: !343, inlinedAt: !1363)
!1379 = distinct !{!1379, !1380, !1381, !373, !374}
!1380 = !DILocation(line: 58, column: 2, scope: !331, inlinedAt: !1363)
!1381 = !DILocation(line: 62, column: 22, scope: !331, inlinedAt: !1363)
!1382 = !DILocation(line: 0, scope: !786, inlinedAt: !1356)
!1383 = !DILocation(line: 39, column: 15, scope: !789, inlinedAt: !1356)
!1384 = !DILocation(line: 41, column: 42, scope: !789, inlinedAt: !1356)
!1385 = !DILocation(line: 0, scope: !789, inlinedAt: !1356)
!1386 = !DILocation(line: 43, column: 37, scope: !789, inlinedAt: !1356)
!1387 = !DILocation(line: 43, column: 15, scope: !789, inlinedAt: !1356)
!1388 = !DILocation(line: 43, column: 27, scope: !789, inlinedAt: !1356)
!1389 = !DILocation(line: 45, column: 26, scope: !789, inlinedAt: !1356)
!1390 = !DILocation(line: 0, scope: !354, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 45, column: 13, scope: !789, inlinedAt: !1356)
!1392 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1391)
!1393 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1391)
!1394 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1391)
!1395 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1391)
!1396 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1391)
!1397 = !DILocation(line: 45, column: 10, scope: !789, inlinedAt: !1356)
!1398 = !DILocation(line: 47, column: 11, scope: !789, inlinedAt: !1356)
!1399 = !DILocation(line: 48, column: 14, scope: !789, inlinedAt: !1356)
!1400 = !DILocation(line: 48, column: 11, scope: !789, inlinedAt: !1356)
!1401 = !DILocation(line: 50, column: 19, scope: !786, inlinedAt: !1356)
!1402 = !DILocation(line: 50, column: 3, scope: !789, inlinedAt: !1356)
!1403 = distinct !{!1403, !1361, !1404, !373, !374}
!1404 = !DILocation(line: 50, column: 40, scope: !786, inlinedAt: !1356)
!1405 = !DILocation(line: 543, column: 4, scope: !1161, inlinedAt: !1256)
!1406 = !DILocation(line: 548, column: 40, scope: !1407, inlinedAt: !1256)
!1407 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 548, column: 6)
!1408 = !DILocation(line: 548, column: 45, scope: !1407, inlinedAt: !1256)
!1409 = !DILocation(line: 548, column: 22, scope: !1407, inlinedAt: !1256)
!1410 = !DILocation(line: 548, column: 6, scope: !1161, inlinedAt: !1256)
!1411 = !DILocation(line: 549, column: 30, scope: !1412, inlinedAt: !1256)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !74, line: 548, column: 52)
!1413 = !DILocation(line: 550, column: 24, scope: !1412, inlinedAt: !1256)
!1414 = !DILocation(line: 550, column: 33, scope: !1412, inlinedAt: !1256)
!1415 = !DILocation(line: 0, scope: !850, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 551, column: 3, scope: !1412, inlinedAt: !1256)
!1417 = !DILocation(line: 214, column: 11, scope: !850, inlinedAt: !1416)
!1418 = !DILocation(line: 214, column: 21, scope: !850, inlinedAt: !1416)
!1419 = !DILocation(line: 215, column: 11, scope: !850, inlinedAt: !1416)
!1420 = !DILocation(line: 215, column: 29, scope: !850, inlinedAt: !1416)
!1421 = !DILocation(line: 553, column: 2, scope: !1412, inlinedAt: !1256)
!1422 = !DILocation(line: 0, scope: !863, inlinedAt: !1423)
!1423 = distinct !DILocation(line: 556, column: 6, scope: !1161, inlinedAt: !1256)
!1424 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1423)
!1425 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1423)
!1426 = !DILocation(line: 556, column: 4, scope: !1161, inlinedAt: !1256)
!1427 = !DILocation(line: 558, column: 21, scope: !1161, inlinedAt: !1256)
!1428 = !DILocation(line: 0, scope: !863, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 558, column: 6, scope: !1161, inlinedAt: !1256)
!1430 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1429)
!1431 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1429)
!1432 = !DILocation(line: 558, column: 4, scope: !1161, inlinedAt: !1256)
!1433 = !DILocation(line: 560, column: 17, scope: !1198, inlinedAt: !1256)
!1434 = !DILocation(line: 561, column: 4, scope: !1198, inlinedAt: !1256)
!1435 = !DILocation(line: 561, column: 30, scope: !1198, inlinedAt: !1256)
!1436 = !DILocation(line: 561, column: 39, scope: !1198, inlinedAt: !1256)
!1437 = !DILocation(line: 562, column: 5, scope: !1198, inlinedAt: !1256)
!1438 = !DILocation(line: 562, column: 29, scope: !1198, inlinedAt: !1256)
!1439 = !DILocation(line: 562, column: 39, scope: !1198, inlinedAt: !1256)
!1440 = !DILocation(line: 560, column: 6, scope: !1161, inlinedAt: !1256)
!1441 = !DILocation(line: 0, scope: !877, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 565, column: 7, scope: !1197, inlinedAt: !1256)
!1443 = !DILocation(line: 72, column: 24, scope: !877, inlinedAt: !1442)
!1444 = !DILocation(line: 0, scope: !754, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 72, column: 9, scope: !877, inlinedAt: !1442)
!1446 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !1445)
!1447 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1445)
!1448 = !DILocation(line: 73, column: 20, scope: !877, inlinedAt: !1442)
!1449 = !DILocation(line: 0, scope: !754, inlinedAt: !1450)
!1450 = distinct !DILocation(line: 73, column: 5, scope: !877, inlinedAt: !1442)
!1451 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !1450)
!1452 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1450)
!1453 = !DILocation(line: 73, column: 3, scope: !877, inlinedAt: !1442)
!1454 = !DILocation(line: 565, column: 5, scope: !1197, inlinedAt: !1256)
!1455 = !DILocation(line: 0, scope: !1197, inlinedAt: !1256)
!1456 = !DILocation(line: 567, column: 23, scope: !1457, inlinedAt: !1256)
!1457 = distinct !DILexicalBlock(scope: !1197, file: !74, line: 567, column: 7)
!1458 = !DILocation(line: 567, column: 7, scope: !1197, inlinedAt: !1256)
!1459 = !DILocation(line: 568, column: 31, scope: !1460, inlinedAt: !1256)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !74, line: 567, column: 54)
!1461 = !DILocation(line: 569, column: 34, scope: !1460, inlinedAt: !1256)
!1462 = !DILocation(line: 0, scope: !906, inlinedAt: !1463)
!1463 = distinct !DILocation(line: 570, column: 4, scope: !1460, inlinedAt: !1256)
!1464 = !DILocation(line: 222, column: 11, scope: !906, inlinedAt: !1463)
!1465 = !DILocation(line: 222, column: 21, scope: !906, inlinedAt: !1463)
!1466 = !DILocation(line: 223, column: 11, scope: !906, inlinedAt: !1463)
!1467 = !DILocation(line: 223, column: 29, scope: !906, inlinedAt: !1463)
!1468 = !DILocation(line: 572, column: 3, scope: !1460, inlinedAt: !1256)
!1469 = !DILocation(line: 575, column: 21, scope: !1470, inlinedAt: !1256)
!1470 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 575, column: 6)
!1471 = !DILocation(line: 575, column: 6, scope: !1161, inlinedAt: !1256)
!1472 = !DILocation(line: 578, column: 29, scope: !1161, inlinedAt: !1256)
!1473 = !DILocation(line: 580, column: 7, scope: !1202, inlinedAt: !1256)
!1474 = !DILocation(line: 580, column: 23, scope: !1202, inlinedAt: !1256)
!1475 = !DILocation(line: 0, scope: !1201, inlinedAt: !1256)
!1476 = !DILocation(line: 583, column: 26, scope: !1201, inlinedAt: !1256)
!1477 = !DILocation(line: 586, column: 19, scope: !1201, inlinedAt: !1256)
!1478 = !DILocation(line: 586, column: 27, scope: !1201, inlinedAt: !1256)
!1479 = !DILocation(line: 586, column: 3, scope: !1201, inlinedAt: !1256)
!1480 = !DILocation(line: 586, column: 30, scope: !1201, inlinedAt: !1256)
!1481 = !DILocation(line: 586, column: 47, scope: !1201, inlinedAt: !1256)
!1482 = !DILocation(line: 586, column: 44, scope: !1201, inlinedAt: !1256)
!1483 = !DILocation(line: 587, column: 4, scope: !1201, inlinedAt: !1256)
!1484 = distinct !{!1484, !1479, !1485, !373, !374}
!1485 = !DILocation(line: 587, column: 6, scope: !1201, inlinedAt: !1256)
!1486 = !DILocation(line: 591, column: 16, scope: !1207, inlinedAt: !1256)
!1487 = !DILocation(line: 591, column: 7, scope: !1201, inlinedAt: !1256)
!1488 = !DILocation(line: 0, scope: !1206, inlinedAt: !1256)
!1489 = !DILocation(line: 593, column: 4, scope: !1206, inlinedAt: !1256)
!1490 = !DILocation(line: 595, column: 46, scope: !1206, inlinedAt: !1256)
!1491 = !DILocation(line: 595, column: 51, scope: !1206, inlinedAt: !1256)
!1492 = !DILocation(line: 597, column: 23, scope: !1206, inlinedAt: !1256)
!1493 = !DILocation(line: 0, scope: !863, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 597, column: 8, scope: !1206, inlinedAt: !1256)
!1495 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1494)
!1496 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1494)
!1497 = !DILocation(line: 598, column: 23, scope: !1206, inlinedAt: !1256)
!1498 = !DILocation(line: 0, scope: !863, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 598, column: 8, scope: !1206, inlinedAt: !1256)
!1500 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1499)
!1501 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1499)
!1502 = !DILocation(line: 601, column: 36, scope: !1206, inlinedAt: !1256)
!1503 = !DILocation(line: 603, column: 19, scope: !1206, inlinedAt: !1256)
!1504 = !DILocation(line: 603, column: 4, scope: !1206, inlinedAt: !1256)
!1505 = !DILocation(line: 610, column: 28, scope: !1506, inlinedAt: !1256)
!1506 = distinct !DILexicalBlock(scope: !1206, file: !74, line: 610, column: 8)
!1507 = !DILocation(line: 604, column: 17, scope: !1206, inlinedAt: !1256)
!1508 = !DILocation(line: 604, column: 28, scope: !1206, inlinedAt: !1256)
!1509 = !DILocation(line: 604, column: 34, scope: !1206, inlinedAt: !1256)
!1510 = distinct !{!1510, !1504, !1511, !373, !374}
!1511 = !DILocation(line: 604, column: 36, scope: !1206, inlinedAt: !1256)
!1512 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1513, file: !74, line: 104, type: !769)
!1513 = distinct !DISubprogram(name: "get_rep_price", scope: !74, file: !74, line: 104, type: !1514, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1516)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!23, !769, !305, !305, !880, !305}
!1516 = !{!1512, !1517, !1518, !1519, !1520, !1521}
!1517 = !DILocalVariable(name: "rep_index", arg: 2, scope: !1513, file: !74, line: 104, type: !305)
!1518 = !DILocalVariable(name: "len", arg: 3, scope: !1513, file: !74, line: 105, type: !305)
!1519 = !DILocalVariable(name: "state", arg: 4, scope: !1513, file: !74, line: 105, type: !880)
!1520 = !DILocalVariable(name: "pos_state", arg: 5, scope: !1513, file: !74, line: 106, type: !305)
!1521 = !DILocalVariable(name: "coder", scope: !1513, file: !74, line: 108, type: !780)
!1522 = !DILocation(line: 0, scope: !1513, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 607, column: 8, scope: !1206, inlinedAt: !1256)
!1524 = !DILocation(line: 0, scope: !1010, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 109, column: 9, scope: !1513, inlinedAt: !1523)
!1526 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1525)
!1527 = !DILocation(line: 0, scope: !955, inlinedAt: !1528)
!1528 = distinct !DILocation(line: 110, column: 5, scope: !1513, inlinedAt: !1523)
!1529 = !DILocation(line: 0, scope: !967, inlinedAt: !1528)
!1530 = !DILocation(line: 0, scope: !754, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 85, column: 11, scope: !972, inlinedAt: !1528)
!1532 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1531)
!1533 = !DILocation(line: 86, column: 27, scope: !972, inlinedAt: !1528)
!1534 = !DILocation(line: 0, scope: !863, inlinedAt: !1535)
!1535 = distinct !DILocation(line: 86, column: 12, scope: !972, inlinedAt: !1528)
!1536 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1535)
!1537 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1535)
!1538 = !DILocation(line: 110, column: 3, scope: !1513, inlinedAt: !1523)
!1539 = !DILocation(line: 597, column: 6, scope: !1206, inlinedAt: !1256)
!1540 = !DILocation(line: 598, column: 6, scope: !1206, inlinedAt: !1256)
!1541 = !DILocation(line: 607, column: 6, scope: !1206, inlinedAt: !1256)
!1542 = !DILocation(line: 610, column: 48, scope: !1506, inlinedAt: !1256)
!1543 = !DILocation(line: 610, column: 26, scope: !1506, inlinedAt: !1256)
!1544 = !DILocation(line: 610, column: 8, scope: !1206, inlinedAt: !1256)
!1545 = !DILocation(line: 611, column: 31, scope: !1546, inlinedAt: !1256)
!1546 = distinct !DILexicalBlock(scope: !1506, file: !74, line: 610, column: 55)
!1547 = !DILocation(line: 612, column: 25, scope: !1546, inlinedAt: !1256)
!1548 = !DILocation(line: 612, column: 34, scope: !1546, inlinedAt: !1256)
!1549 = !DILocation(line: 613, column: 25, scope: !1546, inlinedAt: !1256)
!1550 = !DILocation(line: 613, column: 35, scope: !1546, inlinedAt: !1256)
!1551 = !DILocation(line: 614, column: 25, scope: !1546, inlinedAt: !1256)
!1552 = !DILocation(line: 614, column: 43, scope: !1546, inlinedAt: !1256)
!1553 = !DILocation(line: 615, column: 25, scope: !1546, inlinedAt: !1256)
!1554 = !DILocation(line: 615, column: 32, scope: !1546, inlinedAt: !1256)
!1555 = !DILocation(line: 616, column: 4, scope: !1546, inlinedAt: !1256)
!1556 = !DILocation(line: 0, scope: !1214, inlinedAt: !1256)
!1557 = !DILocation(line: 624, column: 2, scope: !1214, inlinedAt: !1256)
!1558 = !DILocation(line: 716, column: 14, scope: !1559, inlinedAt: !1256)
!1559 = distinct !DILexicalBlock(scope: !1161, file: !74, line: 716, column: 6)
!1560 = !DILocation(line: 716, column: 6, scope: !1161, inlinedAt: !1256)
!1561 = !DILocation(line: 625, column: 41, scope: !1216, inlinedAt: !1256)
!1562 = !DILocation(line: 625, column: 39, scope: !1216, inlinedAt: !1256)
!1563 = !DILocation(line: 625, column: 57, scope: !1216, inlinedAt: !1256)
!1564 = !DILocation(line: 0, scope: !1216, inlinedAt: !1256)
!1565 = !DILocation(line: 626, column: 7, scope: !1566, inlinedAt: !1256)
!1566 = distinct !DILexicalBlock(scope: !1216, file: !74, line: 626, column: 7)
!1567 = !DILocation(line: 626, column: 7, scope: !1216, inlinedAt: !1256)
!1568 = !DILocation(line: 631, column: 5, scope: !1569, inlinedAt: !1256)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !74, line: 630, column: 3)
!1570 = distinct !DILexicalBlock(scope: !1216, file: !74, line: 630, column: 3)
!1571 = !DILocation(line: 631, column: 8, scope: !1569, inlinedAt: !1256)
!1572 = !DILocation(line: 631, column: 25, scope: !1569, inlinedAt: !1256)
!1573 = !DILocation(line: 631, column: 22, scope: !1569, inlinedAt: !1256)
!1574 = !DILocation(line: 630, column: 3, scope: !1570, inlinedAt: !1256)
!1575 = !DILocation(line: 632, column: 5, scope: !1569, inlinedAt: !1256)
!1576 = !DILocation(line: 630, column: 31, scope: !1569, inlinedAt: !1256)
!1577 = distinct !{!1577, !1574, !1578, !373, !374}
!1578 = !DILocation(line: 632, column: 17, scope: !1570, inlinedAt: !1256)
!1579 = !DILocation(line: 0, scope: !1570, inlinedAt: !1256)
!1580 = !DILocation(line: 634, column: 18, scope: !1216, inlinedAt: !1256)
!1581 = !DILocation(line: 634, column: 3, scope: !1216, inlinedAt: !1256)
!1582 = !DILocation(line: 635, column: 16, scope: !1216, inlinedAt: !1256)
!1583 = !DILocation(line: 635, column: 27, scope: !1216, inlinedAt: !1256)
!1584 = !DILocation(line: 635, column: 33, scope: !1216, inlinedAt: !1256)
!1585 = distinct !{!1585, !1581, !1586, !373, !374}
!1586 = !DILocation(line: 635, column: 35, scope: !1216, inlinedAt: !1256)
!1587 = !DILocation(line: 0, scope: !955, inlinedAt: !1588)
!1588 = distinct !DILocation(line: 638, column: 44, scope: !1216, inlinedAt: !1256)
!1589 = !DILocation(line: 84, column: 16, scope: !967, inlinedAt: !1588)
!1590 = !DILocation(line: 0, scope: !967, inlinedAt: !1588)
!1591 = !DILocation(line: 84, column: 6, scope: !955, inlinedAt: !1588)
!1592 = !DILocation(line: 0, scope: !754, inlinedAt: !1593)
!1593 = distinct !DILocation(line: 85, column: 11, scope: !972, inlinedAt: !1588)
!1594 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1593)
!1595 = !DILocation(line: 86, column: 27, scope: !972, inlinedAt: !1588)
!1596 = !DILocation(line: 0, scope: !863, inlinedAt: !1597)
!1597 = distinct !DILocation(line: 86, column: 12, scope: !972, inlinedAt: !1588)
!1598 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1597)
!1599 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1597)
!1600 = !DILocation(line: 87, column: 2, scope: !972, inlinedAt: !1588)
!1601 = !DILocation(line: 0, scope: !863, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 88, column: 11, scope: !982, inlinedAt: !1588)
!1603 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1602)
!1604 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1602)
!1605 = !DILocation(line: 90, column: 17, scope: !986, inlinedAt: !1588)
!1606 = !DILocation(line: 0, scope: !986, inlinedAt: !1588)
!1607 = !DILocation(line: 90, column: 7, scope: !982, inlinedAt: !1588)
!1608 = !DILocation(line: 0, scope: !754, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 91, column: 13, scope: !991, inlinedAt: !1588)
!1610 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1609)
!1611 = !DILocation(line: 92, column: 3, scope: !991, inlinedAt: !1588)
!1612 = !DILocation(line: 0, scope: !863, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 93, column: 13, scope: !996, inlinedAt: !1588)
!1614 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1613)
!1615 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1613)
!1616 = !DILocation(line: 93, column: 10, scope: !996, inlinedAt: !1588)
!1617 = !DILocation(line: 94, column: 26, scope: !996, inlinedAt: !1588)
!1618 = !DILocation(line: 0, scope: !354, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 94, column: 13, scope: !996, inlinedAt: !1588)
!1620 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1619)
!1621 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1619)
!1622 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1619)
!1623 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1619)
!1624 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1619)
!1625 = !DILocation(line: 638, column: 42, scope: !1216, inlinedAt: !1256)
!1626 = !DILocation(line: 641, column: 3, scope: !1216, inlinedAt: !1256)
!1627 = !DILocation(line: 0, scope: !1010, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 643, column: 8, scope: !1222, inlinedAt: !1256)
!1629 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1628)
!1630 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1628)
!1631 = !DILocation(line: 643, column: 6, scope: !1222, inlinedAt: !1256)
!1632 = !DILocation(line: 0, scope: !1222, inlinedAt: !1256)
!1633 = !DILocation(line: 646, column: 44, scope: !1634, inlinedAt: !1256)
!1634 = distinct !DILexicalBlock(scope: !1222, file: !74, line: 646, column: 8)
!1635 = !DILocation(line: 646, column: 28, scope: !1634, inlinedAt: !1256)
!1636 = !DILocation(line: 646, column: 56, scope: !1634, inlinedAt: !1256)
!1637 = !DILocation(line: 646, column: 26, scope: !1634, inlinedAt: !1256)
!1638 = !DILocation(line: 646, column: 8, scope: !1222, inlinedAt: !1256)
!1639 = !DILocation(line: 647, column: 39, scope: !1640, inlinedAt: !1256)
!1640 = distinct !DILexicalBlock(scope: !1634, file: !74, line: 646, column: 63)
!1641 = !DILocation(line: 648, column: 33, scope: !1640, inlinedAt: !1256)
!1642 = !DILocation(line: 648, column: 42, scope: !1640, inlinedAt: !1256)
!1643 = !DILocation(line: 649, column: 33, scope: !1640, inlinedAt: !1256)
!1644 = !DILocation(line: 649, column: 43, scope: !1640, inlinedAt: !1256)
!1645 = !DILocation(line: 650, column: 33, scope: !1640, inlinedAt: !1256)
!1646 = !DILocation(line: 650, column: 51, scope: !1640, inlinedAt: !1256)
!1647 = !DILocation(line: 651, column: 4, scope: !1640, inlinedAt: !1256)
!1648 = !DILocation(line: 652, column: 12, scope: !1216, inlinedAt: !1256)
!1649 = !DILocation(line: 652, column: 23, scope: !1216, inlinedAt: !1256)
!1650 = !DILocation(line: 652, column: 3, scope: !1222, inlinedAt: !1256)
!1651 = distinct !{!1651, !1626, !1652, !373, !374}
!1652 = !DILocation(line: 652, column: 27, scope: !1216, inlinedAt: !1256)
!1653 = !DILocation(line: 656, column: 7, scope: !1216, inlinedAt: !1256)
!1654 = !DILocation(line: 661, column: 26, scope: !1216, inlinedAt: !1256)
!1655 = !DILocation(line: 663, column: 21, scope: !1656, inlinedAt: !1256)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !74, line: 663, column: 3)
!1657 = distinct !DILexicalBlock(scope: !1216, file: !74, line: 663, column: 3)
!1658 = !DILocation(line: 664, column: 5, scope: !1656, inlinedAt: !1256)
!1659 = !DILocation(line: 663, column: 3, scope: !1657, inlinedAt: !1256)
!1660 = !DILocation(line: 664, column: 8, scope: !1656, inlinedAt: !1256)
!1661 = !DILocation(line: 664, column: 27, scope: !1656, inlinedAt: !1256)
!1662 = !DILocation(line: 664, column: 24, scope: !1656, inlinedAt: !1256)
!1663 = !DILocation(line: 665, column: 5, scope: !1656, inlinedAt: !1256)
!1664 = distinct !{!1664, !1659, !1665, !373, !374}
!1665 = !DILocation(line: 665, column: 19, scope: !1657, inlinedAt: !1256)
!1666 = !DILocation(line: 667, column: 14, scope: !1216, inlinedAt: !1256)
!1667 = !DILocation(line: 669, column: 18, scope: !1227, inlinedAt: !1256)
!1668 = !DILocation(line: 669, column: 7, scope: !1216, inlinedAt: !1256)
!1669 = !DILocation(line: 0, scope: !1226, inlinedAt: !1256)
!1670 = !DILocation(line: 673, column: 40, scope: !1226, inlinedAt: !1256)
!1671 = !DILocation(line: 673, column: 52, scope: !1226, inlinedAt: !1256)
!1672 = !DILocation(line: 0, scope: !1010, inlinedAt: !1673)
!1673 = distinct !DILocation(line: 676, column: 8, scope: !1226, inlinedAt: !1256)
!1674 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1673)
!1675 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1673)
!1676 = !DILocation(line: 678, column: 23, scope: !1226, inlinedAt: !1256)
!1677 = !DILocation(line: 0, scope: !754, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 678, column: 8, scope: !1226, inlinedAt: !1256)
!1679 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !1678)
!1680 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1678)
!1681 = !DILocation(line: 680, column: 20, scope: !1226, inlinedAt: !1256)
!1682 = !DILocation(line: 680, column: 7, scope: !1226, inlinedAt: !1256)
!1683 = !DILocation(line: 681, column: 7, scope: !1226, inlinedAt: !1256)
!1684 = !DILocation(line: 681, column: 27, scope: !1226, inlinedAt: !1256)
!1685 = !DILocation(line: 0, scope: !766, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 679, column: 8, scope: !1226, inlinedAt: !1256)
!1687 = !DILocation(line: 26, column: 38, scope: !766, inlinedAt: !1686)
!1688 = !DILocation(line: 0, scope: !787, inlinedAt: !1686)
!1689 = !DILocation(line: 0, scope: !786, inlinedAt: !1686)
!1690 = !DILocation(line: 39, column: 15, scope: !789, inlinedAt: !1686)
!1691 = !DILocation(line: 41, column: 42, scope: !789, inlinedAt: !1686)
!1692 = !DILocation(line: 0, scope: !789, inlinedAt: !1686)
!1693 = !DILocation(line: 43, column: 37, scope: !789, inlinedAt: !1686)
!1694 = !DILocation(line: 43, column: 15, scope: !789, inlinedAt: !1686)
!1695 = !DILocation(line: 43, column: 27, scope: !789, inlinedAt: !1686)
!1696 = !DILocation(line: 45, column: 26, scope: !789, inlinedAt: !1686)
!1697 = !DILocation(line: 0, scope: !354, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 45, column: 13, scope: !789, inlinedAt: !1686)
!1699 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1698)
!1700 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1698)
!1701 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1698)
!1702 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1698)
!1703 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1698)
!1704 = !DILocation(line: 45, column: 10, scope: !789, inlinedAt: !1686)
!1705 = !DILocation(line: 47, column: 11, scope: !789, inlinedAt: !1686)
!1706 = !DILocation(line: 48, column: 14, scope: !789, inlinedAt: !1686)
!1707 = !DILocation(line: 48, column: 11, scope: !789, inlinedAt: !1686)
!1708 = !DILocation(line: 50, column: 19, scope: !786, inlinedAt: !1686)
!1709 = !DILocation(line: 50, column: 3, scope: !789, inlinedAt: !1686)
!1710 = distinct !{!1710, !1711, !1712, !373, !374}
!1711 = !DILocation(line: 38, column: 3, scope: !786, inlinedAt: !1686)
!1712 = !DILocation(line: 50, column: 40, scope: !786, inlinedAt: !1686)
!1713 = !DILocation(line: 685, column: 42, scope: !1226, inlinedAt: !1256)
!1714 = !DILocation(line: 685, column: 47, scope: !1226, inlinedAt: !1256)
!1715 = !DILocation(line: 688, column: 23, scope: !1226, inlinedAt: !1256)
!1716 = !DILocation(line: 0, scope: !863, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 688, column: 8, scope: !1226, inlinedAt: !1256)
!1718 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1717)
!1719 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1717)
!1720 = !DILocation(line: 689, column: 23, scope: !1226, inlinedAt: !1256)
!1721 = !DILocation(line: 0, scope: !863, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 689, column: 8, scope: !1226, inlinedAt: !1256)
!1723 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1722)
!1724 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1722)
!1725 = !DILocation(line: 692, column: 43, scope: !1226, inlinedAt: !1256)
!1726 = !DILocation(line: 692, column: 47, scope: !1226, inlinedAt: !1256)
!1727 = !DILocation(line: 694, column: 19, scope: !1226, inlinedAt: !1256)
!1728 = !DILocation(line: 694, column: 4, scope: !1226, inlinedAt: !1256)
!1729 = !DILocation(line: 701, column: 28, scope: !1730, inlinedAt: !1256)
!1730 = distinct !DILexicalBlock(scope: !1226, file: !74, line: 701, column: 8)
!1731 = !DILocation(line: 695, column: 17, scope: !1226, inlinedAt: !1256)
!1732 = !DILocation(line: 695, column: 28, scope: !1226, inlinedAt: !1256)
!1733 = !DILocation(line: 695, column: 34, scope: !1226, inlinedAt: !1256)
!1734 = distinct !{!1734, !1728, !1735, !373, !374}
!1735 = !DILocation(line: 695, column: 36, scope: !1226, inlinedAt: !1256)
!1736 = !DILocation(line: 0, scope: !1513, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 698, column: 8, scope: !1226, inlinedAt: !1256)
!1738 = !DILocation(line: 0, scope: !1010, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 109, column: 9, scope: !1513, inlinedAt: !1737)
!1740 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1739)
!1741 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1739)
!1742 = !DILocation(line: 0, scope: !955, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 110, column: 5, scope: !1513, inlinedAt: !1737)
!1744 = !DILocation(line: 0, scope: !967, inlinedAt: !1743)
!1745 = !DILocation(line: 0, scope: !754, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 85, column: 11, scope: !972, inlinedAt: !1743)
!1747 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1746)
!1748 = !DILocation(line: 86, column: 27, scope: !972, inlinedAt: !1743)
!1749 = !DILocation(line: 0, scope: !863, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 86, column: 12, scope: !972, inlinedAt: !1743)
!1751 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1750)
!1752 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1750)
!1753 = !DILocation(line: 110, column: 3, scope: !1513, inlinedAt: !1737)
!1754 = !DILocation(line: 676, column: 6, scope: !1226, inlinedAt: !1256)
!1755 = !DILocation(line: 678, column: 6, scope: !1226, inlinedAt: !1256)
!1756 = !DILocation(line: 679, column: 6, scope: !1226, inlinedAt: !1256)
!1757 = !DILocation(line: 688, column: 6, scope: !1226, inlinedAt: !1256)
!1758 = !DILocation(line: 689, column: 6, scope: !1226, inlinedAt: !1256)
!1759 = !DILocation(line: 698, column: 6, scope: !1226, inlinedAt: !1256)
!1760 = !DILocation(line: 701, column: 48, scope: !1730, inlinedAt: !1256)
!1761 = !DILocation(line: 701, column: 26, scope: !1730, inlinedAt: !1256)
!1762 = !DILocation(line: 701, column: 8, scope: !1226, inlinedAt: !1256)
!1763 = !DILocation(line: 702, column: 31, scope: !1764, inlinedAt: !1256)
!1764 = distinct !DILexicalBlock(scope: !1730, file: !74, line: 701, column: 55)
!1765 = !DILocation(line: 703, column: 25, scope: !1764, inlinedAt: !1256)
!1766 = !DILocation(line: 703, column: 34, scope: !1764, inlinedAt: !1256)
!1767 = !DILocation(line: 704, column: 25, scope: !1764, inlinedAt: !1256)
!1768 = !DILocation(line: 704, column: 35, scope: !1764, inlinedAt: !1256)
!1769 = !DILocation(line: 705, column: 25, scope: !1764, inlinedAt: !1256)
!1770 = !DILocation(line: 705, column: 43, scope: !1764, inlinedAt: !1256)
!1771 = !DILocation(line: 706, column: 25, scope: !1764, inlinedAt: !1256)
!1772 = !DILocation(line: 706, column: 32, scope: !1764, inlinedAt: !1256)
!1773 = !DILocation(line: 707, column: 25, scope: !1764, inlinedAt: !1256)
!1774 = !DILocation(line: 707, column: 36, scope: !1764, inlinedAt: !1256)
!1775 = !DILocation(line: 708, column: 25, scope: !1764, inlinedAt: !1256)
!1776 = !DILocation(line: 708, column: 37, scope: !1764, inlinedAt: !1256)
!1777 = !DILocation(line: 709, column: 4, scope: !1764, inlinedAt: !1256)
!1778 = !DILocation(line: 624, column: 58, scope: !1217, inlinedAt: !1256)
!1779 = !DILocation(line: 624, column: 41, scope: !1217, inlinedAt: !1256)
!1780 = distinct !{!1780, !1557, !1781, !373, !374}
!1781 = !DILocation(line: 712, column: 2, scope: !1214, inlinedAt: !1256)
!1782 = !DILocation(line: 0, scope: !1783, inlinedAt: !1256)
!1783 = distinct !DILexicalBlock(scope: !1559, file: !74, line: 716, column: 27)
!1784 = !DILocation(line: 720, column: 20, scope: !1783, inlinedAt: !1256)
!1785 = !DILocation(line: 720, column: 50, scope: !1783, inlinedAt: !1256)
!1786 = !DILocation(line: 720, column: 18, scope: !1783, inlinedAt: !1256)
!1787 = !DILocation(line: 721, column: 4, scope: !1783, inlinedAt: !1256)
!1788 = !DILocation(line: 720, column: 3, scope: !1783, inlinedAt: !1256)
!1789 = distinct !{!1789, !1788, !1790, !373, !374}
!1790 = !DILocation(line: 721, column: 6, scope: !1783, inlinedAt: !1256)
!1791 = !DILocation(line: 723, column: 39, scope: !1783, inlinedAt: !1256)
!1792 = !DILocation(line: 724, column: 2, scope: !1783, inlinedAt: !1256)
!1793 = !DILocation(line: 727, column: 14, scope: !1235, inlinedAt: !1256)
!1794 = !DILocation(line: 727, column: 6, scope: !1161, inlinedAt: !1256)
!1795 = !DILocation(line: 0, scope: !754, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 729, column: 7, scope: !1234, inlinedAt: !1256)
!1797 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1796)
!1798 = !DILocation(line: 0, scope: !1234, inlinedAt: !1256)
!1799 = !DILocation(line: 731, column: 18, scope: !1234, inlinedAt: !1256)
!1800 = !DILocation(line: 731, column: 3, scope: !1234, inlinedAt: !1256)
!1801 = !DILocation(line: 735, column: 3, scope: !1234, inlinedAt: !1256)
!1802 = !DILocation(line: 732, column: 16, scope: !1234, inlinedAt: !1256)
!1803 = !DILocation(line: 732, column: 27, scope: !1234, inlinedAt: !1256)
!1804 = !DILocation(line: 732, column: 33, scope: !1234, inlinedAt: !1256)
!1805 = distinct !{!1805, !1800, !1806, !373, !374}
!1806 = !DILocation(line: 732, column: 35, scope: !1234, inlinedAt: !1256)
!1807 = !DILocation(line: 735, column: 22, scope: !1234, inlinedAt: !1256)
!1808 = !DILocation(line: 735, column: 40, scope: !1234, inlinedAt: !1256)
!1809 = !DILocation(line: 735, column: 20, scope: !1234, inlinedAt: !1256)
!1810 = !DILocation(line: 736, column: 4, scope: !1234, inlinedAt: !1256)
!1811 = distinct !{!1811, !1801, !1812, !373, !374}
!1812 = !DILocation(line: 736, column: 6, scope: !1234, inlinedAt: !1256)
!1813 = !DILocation(line: 738, column: 3, scope: !1238, inlinedAt: !1256)
!1814 = !DILocation(line: 0, scope: !1238, inlinedAt: !1256)
!1815 = !DILocation(line: 0, scope: !1240, inlinedAt: !1256)
!1816 = !DILocation(line: 0, scope: !1062, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 741, column: 8, scope: !1240, inlinedAt: !1256)
!1818 = !DILocation(line: 119, column: 36, scope: !1062, inlinedAt: !1817)
!1819 = !DILocation(line: 122, column: 6, scope: !1062, inlinedAt: !1817)
!1820 = !DILocation(line: 123, column: 11, scope: !1081, inlinedAt: !1817)
!1821 = !DILocation(line: 124, column: 2, scope: !1081, inlinedAt: !1817)
!1822 = !DILocation(line: 0, scope: !1084, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 125, column: 29, scope: !1073, inlinedAt: !1817)
!1824 = !DILocation(line: 128, column: 6, scope: !1084, inlinedAt: !1823)
!1825 = !DILocation(line: 0, scope: !1073, inlinedAt: !1817)
!1826 = !DILocation(line: 126, column: 11, scope: !1073, inlinedAt: !1817)
!1827 = !DILocation(line: 127, column: 7, scope: !1073, inlinedAt: !1817)
!1828 = !DILocation(line: 127, column: 5, scope: !1073, inlinedAt: !1817)
!1829 = !DILocation(line: 0, scope: !1074, inlinedAt: !1817)
!1830 = !DILocation(line: 0, scope: !1010, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 130, column: 11, scope: !1062, inlinedAt: !1817)
!1832 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1831)
!1833 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1831)
!1834 = !DILocation(line: 729, column: 5, scope: !1234, inlinedAt: !1256)
!1835 = !DILocation(line: 741, column: 6, scope: !1240, inlinedAt: !1256)
!1836 = !DILocation(line: 744, column: 44, scope: !1837, inlinedAt: !1256)
!1837 = distinct !DILexicalBlock(scope: !1240, file: !74, line: 744, column: 8)
!1838 = !DILocation(line: 744, column: 28, scope: !1837, inlinedAt: !1256)
!1839 = !DILocation(line: 744, column: 56, scope: !1837, inlinedAt: !1256)
!1840 = !DILocation(line: 744, column: 26, scope: !1837, inlinedAt: !1256)
!1841 = !DILocation(line: 744, column: 8, scope: !1240, inlinedAt: !1256)
!1842 = !DILocation(line: 745, column: 39, scope: !1843, inlinedAt: !1256)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !74, line: 744, column: 63)
!1844 = !DILocation(line: 746, column: 33, scope: !1843, inlinedAt: !1256)
!1845 = !DILocation(line: 746, column: 42, scope: !1843, inlinedAt: !1256)
!1846 = !DILocation(line: 747, column: 33, scope: !1843, inlinedAt: !1256)
!1847 = !DILocation(line: 748, column: 7, scope: !1843, inlinedAt: !1256)
!1848 = !DILocation(line: 749, column: 33, scope: !1843, inlinedAt: !1256)
!1849 = !DILocation(line: 749, column: 51, scope: !1843, inlinedAt: !1256)
!1850 = !DILocation(line: 750, column: 4, scope: !1843, inlinedAt: !1256)
!1851 = !DILocation(line: 752, column: 17, scope: !1245, inlinedAt: !1256)
!1852 = !DILocation(line: 752, column: 8, scope: !1240, inlinedAt: !1256)
!1853 = !DILocation(line: 738, column: 41, scope: !1241, inlinedAt: !1256)
!1854 = distinct !{!1854, !1813, !1855, !374}
!1855 = !DILocation(line: 816, column: 3, scope: !1238, inlinedAt: !1256)
!1856 = !DILocation(line: 739, column: 30, scope: !1240, inlinedAt: !1256)
!1857 = !DILocation(line: 754, column: 41, scope: !1244, inlinedAt: !1256)
!1858 = !DILocation(line: 754, column: 52, scope: !1244, inlinedAt: !1256)
!1859 = !DILocation(line: 0, scope: !1244, inlinedAt: !1256)
!1860 = !DILocation(line: 755, column: 36, scope: !1244, inlinedAt: !1256)
!1861 = !DILocation(line: 756, column: 28, scope: !1244, inlinedAt: !1256)
!1862 = !DILocation(line: 759, column: 23, scope: !1863, inlinedAt: !1256)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !74, line: 759, column: 5)
!1864 = distinct !DILexicalBlock(scope: !1244, file: !74, line: 759, column: 5)
!1865 = !DILocation(line: 759, column: 31, scope: !1863, inlinedAt: !1256)
!1866 = !DILocation(line: 759, column: 5, scope: !1864, inlinedAt: !1256)
!1867 = !DILocation(line: 760, column: 7, scope: !1863, inlinedAt: !1256)
!1868 = !DILocation(line: 760, column: 26, scope: !1863, inlinedAt: !1256)
!1869 = !DILocation(line: 760, column: 23, scope: !1863, inlinedAt: !1256)
!1870 = !DILocation(line: 761, column: 7, scope: !1863, inlinedAt: !1256)
!1871 = distinct !{!1871, !1866, !1872, !373, !374}
!1872 = !DILocation(line: 761, column: 21, scope: !1864, inlinedAt: !1256)
!1873 = !DILocation(line: 0, scope: !1864, inlinedAt: !1256)
!1874 = !DILocation(line: 763, column: 16, scope: !1244, inlinedAt: !1256)
!1875 = !DILocation(line: 765, column: 20, scope: !1250, inlinedAt: !1256)
!1876 = !DILocation(line: 765, column: 9, scope: !1244, inlinedAt: !1256)
!1877 = !DILocation(line: 0, scope: !1249, inlinedAt: !1256)
!1878 = !DILocation(line: 769, column: 20, scope: !1249, inlinedAt: !1256)
!1879 = !DILocation(line: 769, column: 32, scope: !1249, inlinedAt: !1256)
!1880 = !DILocation(line: 773, column: 9, scope: !1249, inlinedAt: !1256)
!1881 = !DILocation(line: 0, scope: !754, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 772, column: 10, scope: !1249, inlinedAt: !1256)
!1883 = !DILocation(line: 39, column: 29, scope: !754, inlinedAt: !1882)
!1884 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1882)
!1885 = !DILocation(line: 776, column: 22, scope: !1249, inlinedAt: !1256)
!1886 = !DILocation(line: 776, column: 9, scope: !1249, inlinedAt: !1256)
!1887 = !DILocation(line: 778, column: 9, scope: !1249, inlinedAt: !1256)
!1888 = !DILocation(line: 779, column: 9, scope: !1249, inlinedAt: !1256)
!1889 = !DILocation(line: 0, scope: !766, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 774, column: 10, scope: !1249, inlinedAt: !1256)
!1891 = !DILocation(line: 26, column: 38, scope: !766, inlinedAt: !1890)
!1892 = !DILocation(line: 0, scope: !787, inlinedAt: !1890)
!1893 = !DILocation(line: 0, scope: !786, inlinedAt: !1890)
!1894 = !DILocation(line: 39, column: 15, scope: !789, inlinedAt: !1890)
!1895 = !DILocation(line: 41, column: 42, scope: !789, inlinedAt: !1890)
!1896 = !DILocation(line: 0, scope: !789, inlinedAt: !1890)
!1897 = !DILocation(line: 43, column: 37, scope: !789, inlinedAt: !1890)
!1898 = !DILocation(line: 43, column: 15, scope: !789, inlinedAt: !1890)
!1899 = !DILocation(line: 43, column: 27, scope: !789, inlinedAt: !1890)
!1900 = !DILocation(line: 45, column: 26, scope: !789, inlinedAt: !1890)
!1901 = !DILocation(line: 0, scope: !354, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 45, column: 13, scope: !789, inlinedAt: !1890)
!1903 = !DILocation(line: 31, column: 25, scope: !354, inlinedAt: !1902)
!1904 = !DILocation(line: 32, column: 4, scope: !354, inlinedAt: !1902)
!1905 = !DILocation(line: 31, column: 30, scope: !354, inlinedAt: !1902)
!1906 = !DILocation(line: 32, column: 33, scope: !354, inlinedAt: !1902)
!1907 = !DILocation(line: 31, column: 9, scope: !354, inlinedAt: !1902)
!1908 = !DILocation(line: 45, column: 10, scope: !789, inlinedAt: !1890)
!1909 = !DILocation(line: 47, column: 11, scope: !789, inlinedAt: !1890)
!1910 = !DILocation(line: 48, column: 14, scope: !789, inlinedAt: !1890)
!1911 = !DILocation(line: 48, column: 11, scope: !789, inlinedAt: !1890)
!1912 = !DILocation(line: 50, column: 19, scope: !786, inlinedAt: !1890)
!1913 = !DILocation(line: 50, column: 3, scope: !789, inlinedAt: !1890)
!1914 = distinct !{!1914, !1915, !1916, !373, !374}
!1915 = !DILocation(line: 38, column: 3, scope: !786, inlinedAt: !1890)
!1916 = !DILocation(line: 50, column: 40, scope: !786, inlinedAt: !1890)
!1917 = !DILocation(line: 782, column: 39, scope: !1249, inlinedAt: !1256)
!1918 = !DILocation(line: 782, column: 44, scope: !1249, inlinedAt: !1256)
!1919 = !DILocation(line: 787, column: 9, scope: !1249, inlinedAt: !1256)
!1920 = !DILocation(line: 0, scope: !863, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 786, column: 10, scope: !1249, inlinedAt: !1256)
!1922 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1921)
!1923 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1921)
!1924 = !DILocation(line: 788, column: 25, scope: !1249, inlinedAt: !1256)
!1925 = !DILocation(line: 0, scope: !863, inlinedAt: !1926)
!1926 = distinct !DILocation(line: 788, column: 10, scope: !1249, inlinedAt: !1256)
!1927 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1926)
!1928 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1926)
!1929 = !DILocation(line: 791, column: 45, scope: !1249, inlinedAt: !1256)
!1930 = !DILocation(line: 791, column: 49, scope: !1249, inlinedAt: !1256)
!1931 = !DILocation(line: 793, column: 21, scope: !1249, inlinedAt: !1256)
!1932 = !DILocation(line: 793, column: 6, scope: !1249, inlinedAt: !1256)
!1933 = !DILocation(line: 800, column: 30, scope: !1934, inlinedAt: !1256)
!1934 = distinct !DILexicalBlock(scope: !1249, file: !74, line: 800, column: 10)
!1935 = !DILocation(line: 794, column: 19, scope: !1249, inlinedAt: !1256)
!1936 = !DILocation(line: 794, column: 30, scope: !1249, inlinedAt: !1256)
!1937 = !DILocation(line: 794, column: 36, scope: !1249, inlinedAt: !1256)
!1938 = distinct !{!1938, !1932, !1939, !373, !374}
!1939 = !DILocation(line: 794, column: 38, scope: !1249, inlinedAt: !1256)
!1940 = !DILocation(line: 0, scope: !1513, inlinedAt: !1941)
!1941 = distinct !DILocation(line: 797, column: 10, scope: !1249, inlinedAt: !1256)
!1942 = !DILocation(line: 0, scope: !1010, inlinedAt: !1943)
!1943 = distinct !DILocation(line: 109, column: 9, scope: !1513, inlinedAt: !1941)
!1944 = !DILocation(line: 63, column: 41, scope: !1010, inlinedAt: !1943)
!1945 = !DILocation(line: 63, column: 9, scope: !1010, inlinedAt: !1943)
!1946 = !DILocation(line: 0, scope: !955, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 110, column: 5, scope: !1513, inlinedAt: !1941)
!1948 = !DILocation(line: 0, scope: !967, inlinedAt: !1947)
!1949 = !DILocation(line: 0, scope: !754, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 85, column: 11, scope: !972, inlinedAt: !1947)
!1951 = !DILocation(line: 39, column: 9, scope: !754, inlinedAt: !1950)
!1952 = !DILocation(line: 86, column: 27, scope: !972, inlinedAt: !1947)
!1953 = !DILocation(line: 0, scope: !863, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 86, column: 12, scope: !972, inlinedAt: !1947)
!1955 = !DILocation(line: 47, column: 4, scope: !863, inlinedAt: !1954)
!1956 = !DILocation(line: 46, column: 9, scope: !863, inlinedAt: !1954)
!1957 = !DILocation(line: 110, column: 3, scope: !1513, inlinedAt: !1941)
!1958 = !DILocation(line: 772, column: 8, scope: !1249, inlinedAt: !1256)
!1959 = !DILocation(line: 774, column: 8, scope: !1249, inlinedAt: !1256)
!1960 = !DILocation(line: 786, column: 8, scope: !1249, inlinedAt: !1256)
!1961 = !DILocation(line: 788, column: 8, scope: !1249, inlinedAt: !1256)
!1962 = !DILocation(line: 797, column: 8, scope: !1249, inlinedAt: !1256)
!1963 = !DILocation(line: 800, column: 50, scope: !1934, inlinedAt: !1256)
!1964 = !DILocation(line: 800, column: 28, scope: !1934, inlinedAt: !1256)
!1965 = !DILocation(line: 800, column: 10, scope: !1249, inlinedAt: !1256)
!1966 = !DILocation(line: 801, column: 33, scope: !1967, inlinedAt: !1256)
!1967 = distinct !DILexicalBlock(scope: !1934, file: !74, line: 800, column: 57)
!1968 = !DILocation(line: 802, column: 27, scope: !1967, inlinedAt: !1256)
!1969 = !DILocation(line: 802, column: 36, scope: !1967, inlinedAt: !1256)
!1970 = !DILocation(line: 803, column: 27, scope: !1967, inlinedAt: !1256)
!1971 = !DILocation(line: 803, column: 37, scope: !1967, inlinedAt: !1256)
!1972 = !DILocation(line: 804, column: 27, scope: !1967, inlinedAt: !1256)
!1973 = !DILocation(line: 804, column: 45, scope: !1967, inlinedAt: !1256)
!1974 = !DILocation(line: 805, column: 27, scope: !1967, inlinedAt: !1256)
!1975 = !DILocation(line: 805, column: 34, scope: !1967, inlinedAt: !1256)
!1976 = !DILocation(line: 806, column: 27, scope: !1967, inlinedAt: !1256)
!1977 = !DILocation(line: 806, column: 38, scope: !1967, inlinedAt: !1256)
!1978 = !DILocation(line: 808, column: 20, scope: !1967, inlinedAt: !1256)
!1979 = !DILocation(line: 807, column: 27, scope: !1967, inlinedAt: !1256)
!1980 = !DILocation(line: 808, column: 9, scope: !1967, inlinedAt: !1256)
!1981 = !DILocation(line: 809, column: 6, scope: !1967, inlinedAt: !1256)
!1982 = !DILocation(line: 813, column: 9, scope: !1983, inlinedAt: !1256)
!1983 = distinct !DILexicalBlock(scope: !1244, file: !74, line: 813, column: 9)
!1984 = !DILocation(line: 813, column: 13, scope: !1983, inlinedAt: !1256)
!1985 = distinct !{!1985, !1143, !1986, !373, !374}
!1986 = !DILocation(line: 875, column: 2, scope: !1140)
!1987 = !DILocation(line: 0, scope: !1138)
!1988 = !DILocation(line: 877, column: 2, scope: !73)
!1989 = !DILocation(line: 0, scope: !1140)
!1990 = !{!1991}
!1991 = distinct !{!1991, !1992, !"backward: %len_res"}
!1992 = distinct !{!1992, !"backward"}
!1993 = !{!1994}
!1994 = distinct !{!1994, !1992, !"backward: %back_res"}
!1995 = !DILocalVariable(name: "pcoder", arg: 1, scope: !1996, file: !74, line: 232, type: !77)
!1996 = distinct !DISubprogram(name: "backward", scope: !74, file: !74, line: 232, type: !1997, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !77, !124, !124, !23}
!1999 = !{!1995, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2008}
!2000 = !DILocalVariable(name: "len_res", arg: 2, scope: !1996, file: !74, line: 232, type: !124)
!2001 = !DILocalVariable(name: "back_res", arg: 3, scope: !1996, file: !74, line: 233, type: !124)
!2002 = !DILocalVariable(name: "cur", arg: 4, scope: !1996, file: !74, line: 233, type: !23)
!2003 = !DILocalVariable(name: "coder", scope: !1996, file: !74, line: 235, type: !132)
!2004 = !DILocalVariable(name: "pos_mem", scope: !1996, file: !74, line: 238, type: !23)
!2005 = !DILocalVariable(name: "back_mem", scope: !1996, file: !74, line: 239, type: !23)
!2006 = !DILocalVariable(name: "pos_prev", scope: !2007, file: !74, line: 256, type: !305)
!2007 = distinct !DILexicalBlock(scope: !1996, file: !74, line: 241, column: 5)
!2008 = !DILocalVariable(name: "back_cur", scope: !2007, file: !74, line: 257, type: !305)
!2009 = !DILocation(line: 0, scope: !1996, inlinedAt: !2010)
!2010 = distinct !DILocation(line: 877, column: 2, scope: !73)
!2011 = !DILocation(line: 236, column: 24, scope: !1996, inlinedAt: !2010)
!2012 = !{!1991, !1994}
!2013 = !DILocation(line: 238, column: 21, scope: !1996, inlinedAt: !2010)
!2014 = !DILocation(line: 238, column: 38, scope: !1996, inlinedAt: !2010)
!2015 = !DILocation(line: 239, column: 39, scope: !1996, inlinedAt: !2010)
!2016 = !DILocation(line: 241, column: 2, scope: !1996, inlinedAt: !2010)
!2017 = !DILocation(line: 242, column: 7, scope: !2018, inlinedAt: !2010)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !74, line: 242, column: 7)
!2019 = !DILocation(line: 242, column: 24, scope: !2018, inlinedAt: !2010)
!2020 = !DILocation(line: 242, column: 7, scope: !2007, inlinedAt: !2010)
!2021 = !DILocation(line: 259, column: 36, scope: !2007, inlinedAt: !2010)
!2022 = !DILocation(line: 260, column: 35, scope: !2007, inlinedAt: !2010)
!2023 = !DILocation(line: 0, scope: !850, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 243, column: 4, scope: !2025, inlinedAt: !2010)
!2025 = distinct !DILexicalBlock(scope: !2018, file: !74, line: 242, column: 43)
!2026 = !DILocation(line: 215, column: 11, scope: !850, inlinedAt: !2024)
!2027 = !DILocation(line: 215, column: 29, scope: !850, inlinedAt: !2024)
!2028 = !DILocation(line: 244, column: 44, scope: !2025, inlinedAt: !2010)
!2029 = !DILocation(line: 246, column: 25, scope: !2030, inlinedAt: !2010)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !74, line: 246, column: 8)
!2031 = !DILocation(line: 246, column: 8, scope: !2025, inlinedAt: !2010)
!2032 = !DILocation(line: 247, column: 5, scope: !2033, inlinedAt: !2010)
!2033 = distinct !DILexicalBlock(scope: !2030, file: !74, line: 246, column: 33)
!2034 = !DILocation(line: 247, column: 30, scope: !2033, inlinedAt: !2010)
!2035 = !DILocation(line: 248, column: 7, scope: !2033, inlinedAt: !2010)
!2036 = !DILocation(line: 250, column: 26, scope: !2033, inlinedAt: !2010)
!2037 = !DILocation(line: 249, column: 30, scope: !2033, inlinedAt: !2010)
!2038 = !DILocation(line: 250, column: 7, scope: !2033, inlinedAt: !2010)
!2039 = !DILocation(line: 252, column: 26, scope: !2033, inlinedAt: !2010)
!2040 = !DILocation(line: 251, column: 30, scope: !2033, inlinedAt: !2010)
!2041 = !DILocation(line: 252, column: 7, scope: !2033, inlinedAt: !2010)
!2042 = !DILocation(line: 253, column: 4, scope: !2033, inlinedAt: !2010)
!2043 = !DILocation(line: 0, scope: !2007, inlinedAt: !2010)
!2044 = !DILocation(line: 262, column: 35, scope: !2007, inlinedAt: !2010)
!2045 = !DILocation(line: 263, column: 34, scope: !2007, inlinedAt: !2010)
!2046 = !DILocation(line: 266, column: 15, scope: !1996, inlinedAt: !2010)
!2047 = !DILocation(line: 266, column: 2, scope: !2007, inlinedAt: !2010)
!2048 = distinct !{!2048, !2016, !2049, !373, !374}
!2049 = !DILocation(line: 266, column: 19, scope: !1996, inlinedAt: !2010)
!2050 = !DILocation(line: 268, column: 45, scope: !1996, inlinedAt: !2010)
!2051 = !DILocation(line: 268, column: 28, scope: !1996, inlinedAt: !2010)
!2052 = !DILocation(line: 269, column: 11, scope: !1996, inlinedAt: !2010)
!2053 = !DILocation(line: 270, column: 29, scope: !1996, inlinedAt: !2010)
!2054 = !DILocation(line: 270, column: 12, scope: !1996, inlinedAt: !2010)
!2055 = !DILocation(line: 879, column: 1, scope: !73)
!2056 = !DISubprogram(name: "lzma_mf_find", scope: !83, file: !83, line: 310, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!23, !81, !112, !101}
!2059 = !{}
