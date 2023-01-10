; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma_encoder_optimum_fast.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_coder_s = type { %struct.lzma_range_encoder, i32, [4 x i32], [274 x %struct.lzma_match], i32, i32, i8, i8, i8, i32, i32, i32, [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_encoder, %struct.lzma_length_encoder, [4 x [64 x i32]], [4 x [128 x i32]], i32, i32, [16 x i32], i32, i32, i32, [4096 x %struct.lzma_optimal] }
%struct.lzma_range_encoder = type { i64, i64, i32, i8, i64, i64, [58 x i32], [58 x ptr] }
%struct.lzma_match = type { i32, i32 }
%struct.lzma_length_encoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16], [16 x [272 x i32]], i32, [16 x i32] }
%struct.lzma_optimal = type { i32, i8, i8, i32, i32, i32, i32, i32, [4 x i32] }

; Function Attrs: nounwind uwtable
define dso_local void @lzma_lzma_optimum_fast(ptr noundef %pcoder, ptr noalias noundef %mf, ptr noalias nocapture noundef writeonly %back_res, ptr noalias nocapture noundef writeonly %len_res) local_unnamed_addr #0 !dbg !73 {
entry:
  %matches_count = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !126, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata ptr %mf, metadata !127, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata ptr %back_res, metadata !128, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata ptr %len_res, metadata !129, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !130, metadata !DIExpression()), !dbg !263
  %nice_len1 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 18, !dbg !264
  %0 = load i32, ptr %nice_len1, align 8, !dbg !264, !tbaa !265
  call void @llvm.dbg.value(metadata i32 %0, metadata !235, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %matches_count) #4, !dbg !271
  %read_ahead = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 6, !dbg !272
  %1 = load i32, ptr %read_ahead, align 4, !dbg !272, !tbaa !274
  %cmp = icmp eq i32 %1, 0, !dbg !275
  br i1 %cmp, label %if.then, label %if.else, !dbg !276

if.then:                                          ; preds = %entry
  %matches = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !277
  call void @llvm.dbg.value(metadata ptr %matches_count, metadata !238, metadata !DIExpression(DW_OP_deref)), !dbg !263
  %call = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count, ptr noundef nonnull %matches) #4, !dbg !279
  call void @llvm.dbg.value(metadata i32 %call, metadata !237, metadata !DIExpression()), !dbg !263
  br label %if.end, !dbg !280

if.else:                                          ; preds = %entry
  %longest_match_length = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !281
  %2 = load i32, ptr %longest_match_length, align 8, !dbg !281, !tbaa !283
  call void @llvm.dbg.value(metadata i32 %2, metadata !237, metadata !DIExpression()), !dbg !263
  %matches_count2 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !290
  %3 = load i32, ptr %matches_count2, align 4, !dbg !290, !tbaa !291
  call void @llvm.dbg.value(metadata i32 %3, metadata !238, metadata !DIExpression()), !dbg !263
  store i32 %3, ptr %matches_count, align 4, !dbg !292, !tbaa !293
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %len_main.0 = phi i32 [ %call, %if.then ], [ %2, %if.else ], !dbg !294
  call void @llvm.dbg.value(metadata i32 %len_main.0, metadata !237, metadata !DIExpression()), !dbg !263
  %mf.val = load ptr, ptr %mf, align 8, !dbg !295, !tbaa !296
  %4 = getelementptr i8, ptr %mf, i64 24, !dbg !295
  %mf.val393 = load i32, ptr %4, align 8, !dbg !295, !tbaa !297
  call void @llvm.dbg.value(metadata ptr undef, metadata !298, metadata !DIExpression()), !dbg !305
  %idx.ext.i = zext i32 %mf.val393 to i64, !dbg !307
  %add.ptr.i = getelementptr inbounds i8, ptr %mf.val, i64 %idx.ext.i, !dbg !307
  %add.ptr = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1, !dbg !308
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !239, metadata !DIExpression()), !dbg !263
  %5 = getelementptr i8, ptr %mf, i64 36, !dbg !309
  %mf.val397 = load i32, ptr %5, align 4, !dbg !309, !tbaa !310
  call void @llvm.dbg.value(metadata ptr undef, metadata !311, metadata !DIExpression()), !dbg !316
  %sub.i = sub i32 1, %mf.val393, !dbg !318
  %add = add i32 %sub.i, %mf.val397, !dbg !309
  %6 = call i32 @llvm.umin.i32(i32 %add, i32 273), !dbg !309
  call void @llvm.dbg.value(metadata i32 %6, metadata !242, metadata !DIExpression()), !dbg !263
  %cmp8 = icmp ult i32 %6, 2, !dbg !319
  br i1 %cmp8, label %if.then9, label %for.cond.preheader, !dbg !321

for.cond.preheader:                               ; preds = %if.end
  %7 = load i8, ptr %add.ptr, align 1, !tbaa !322
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !263
  %cmp28435.not = icmp eq i32 %6, 2
  br i1 %cmp28435.not, label %for.cond.preheader.split, label %for.body.us.preheader, !dbg !324

for.body.us.preheader:                            ; preds = %for.cond.preheader
  %add.ptr12.us = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %wide.trip.count = zext i32 %6 to i64
  br label %for.body.us, !dbg !327

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc48.us
  %indvars.iv494 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next495, %for.inc48.us ]
  %rep_len.0441.us = phi i32 [ 0, %for.body.us.preheader ], [ %rep_len.3.ph.us, %for.inc48.us ]
  %rep_index.0438.us = phi i32 [ 0, %for.body.us.preheader ], [ %rep_index.3.ph.us, %for.inc48.us ]
  call void @llvm.dbg.value(metadata i32 %rep_len.0441.us, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv494, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %rep_index.0438.us, metadata !244, metadata !DIExpression()), !dbg !263
  %arrayidx.us = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv494, !dbg !328
  %8 = load i32, ptr %arrayidx.us, align 4, !dbg !328, !tbaa !293
  %idx.ext.us = zext i32 %8 to i64, !dbg !329
  %idx.neg.us = sub nsw i64 0, %idx.ext.us, !dbg !329
  %add.ptr13.us = getelementptr inbounds i8, ptr %add.ptr12.us, i64 %idx.neg.us, !dbg !330
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us, metadata !247, metadata !DIExpression()), !dbg !331
  %9 = load i8, ptr %add.ptr13.us, align 1, !dbg !332, !tbaa !322
  %cmp17.not.us = icmp eq i8 %7, %9, !dbg !332
  br i1 %cmp17.not.us, label %lor.lhs.false.us, label %for.inc48.us, !dbg !332

lor.lhs.false.us:                                 ; preds = %for.body.us
  %10 = load i8, ptr %add.ptr.i, align 1, !dbg !332, !tbaa !322
  %arrayidx21.us = getelementptr inbounds i8, ptr %add.ptr13.us, i64 1, !dbg !332
  %11 = load i8, ptr %arrayidx21.us, align 1, !dbg !332, !tbaa !322
  %cmp23.not.us = icmp eq i8 %10, %11, !dbg !332
  br i1 %cmp23.not.us, label %land.rhs.us, label %for.inc48.us, !dbg !334

land.rhs.us:                                      ; preds = %lor.lhs.false.us, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ 2, %lor.lhs.false.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !251, metadata !DIExpression()), !dbg !331
  %arrayidx31.us = getelementptr inbounds i8, ptr %add.ptr, i64 %indvars.iv, !dbg !335
  %12 = load i8, ptr %arrayidx31.us, align 1, !dbg !335, !tbaa !322
  %arrayidx34.us = getelementptr inbounds i8, ptr %add.ptr13.us, i64 %indvars.iv, !dbg !336
  %13 = load i8, ptr %arrayidx34.us, align 1, !dbg !336, !tbaa !322
  %cmp36.us = icmp eq i8 %12, %13, !dbg !337
  br i1 %cmp36.us, label %for.inc.us, label %for.end.us.split.loop.exit, !dbg !338

for.end.us.split.loop.exit:                       ; preds = %land.rhs.us
  %14 = trunc i64 %indvars.iv to i32, !dbg !338
  br label %for.end.us, !dbg !339

for.end.us:                                       ; preds = %for.inc.us, %for.end.us.split.loop.exit
  %len.0.lcssa.us = phi i32 [ %14, %for.end.us.split.loop.exit ], [ %6, %for.inc.us ], !dbg !341
  %cmp39.not.us = icmp ult i32 %len.0.lcssa.us, %0, !dbg !339
  br i1 %cmp39.not.us, label %if.end42.us, label %if.then41, !dbg !342

if.end42.us:                                      ; preds = %for.end.us
  %cmp43.us = icmp ugt i32 %len.0.lcssa.us, %rep_len.0441.us, !dbg !343
  %15 = trunc i64 %indvars.iv494 to i32, !dbg !345
  %spec.select.us = select i1 %cmp43.us, i32 %15, i32 %rep_index.0438.us, !dbg !345
  %16 = call i32 @llvm.umax.i32(i32 %len.0.lcssa.us, i32 %rep_len.0441.us), !dbg !345
  call void @llvm.dbg.value(metadata i32 %16, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %spec.select.us, metadata !244, metadata !DIExpression()), !dbg !263
  br label %for.inc48.us, !dbg !346

for.inc48.us:                                     ; preds = %if.end42.us, %lor.lhs.false.us, %for.body.us
  %rep_index.3.ph.us = phi i32 [ %spec.select.us, %if.end42.us ], [ %rep_index.0438.us, %for.body.us ], [ %rep_index.0438.us, %lor.lhs.false.us ]
  %rep_len.3.ph.us = phi i32 [ %16, %if.end42.us ], [ %rep_len.0441.us, %for.body.us ], [ %rep_len.0441.us, %lor.lhs.false.us ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !263
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1, !dbg !347
  call void @llvm.dbg.value(metadata i32 %rep_len.3.ph.us, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next495, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %rep_index.3.ph.us, metadata !244, metadata !DIExpression()), !dbg !263
  %exitcond497.not = icmp eq i64 %indvars.iv.next495, 4, !dbg !348
  br i1 %exitcond497.not, label %for.end52, label %for.body.us, !dbg !327, !llvm.loop !349

for.inc.us:                                       ; preds = %land.rhs.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !353
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !251, metadata !DIExpression()), !dbg !331
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !354
  br i1 %exitcond.not, label %for.end.us, label %land.rhs.us, !dbg !324, !llvm.loop !355

for.cond.preheader.split:                         ; preds = %for.cond.preheader
  %cmp39.not = icmp ugt i32 %0, 2
  %add.ptr12.us453 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  br i1 %cmp39.not, label %for.body.us445, label %for.body, !dbg !342

for.body.us445:                                   ; preds = %for.cond.preheader.split, %for.inc48.us462
  %indvars.iv502 = phi i64 [ %indvars.iv.next503, %for.inc48.us462 ], [ 0, %for.cond.preheader.split ]
  %rep_len.0441.us446 = phi i32 [ %rep_len.3.ph.us464, %for.inc48.us462 ], [ 0, %for.cond.preheader.split ]
  %rep_index.0438.us448 = phi i32 [ %rep_index.3.ph.us463, %for.inc48.us462 ], [ 0, %for.cond.preheader.split ]
  call void @llvm.dbg.value(metadata i32 %rep_len.0441.us446, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv502, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %rep_index.0438.us448, metadata !244, metadata !DIExpression()), !dbg !263
  %arrayidx.us450 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv502, !dbg !328
  %17 = load i32, ptr %arrayidx.us450, align 4, !dbg !328, !tbaa !293
  %idx.ext.us451 = zext i32 %17 to i64, !dbg !329
  %idx.neg.us452 = sub nsw i64 0, %idx.ext.us451, !dbg !329
  %add.ptr13.us454 = getelementptr inbounds i8, ptr %add.ptr12.us453, i64 %idx.neg.us452, !dbg !330
  call void @llvm.dbg.value(metadata ptr %add.ptr13.us454, metadata !247, metadata !DIExpression()), !dbg !331
  %18 = load i8, ptr %add.ptr13.us454, align 1, !dbg !332, !tbaa !322
  %cmp17.not.us455 = icmp eq i8 %7, %18, !dbg !332
  br i1 %cmp17.not.us455, label %lor.lhs.false.us456, label %for.inc48.us462, !dbg !332

lor.lhs.false.us456:                              ; preds = %for.body.us445
  %19 = load i8, ptr %add.ptr.i, align 1, !dbg !332, !tbaa !322
  %arrayidx21.us457 = getelementptr inbounds i8, ptr %add.ptr13.us454, i64 1, !dbg !332
  %20 = load i8, ptr %arrayidx21.us457, align 1, !dbg !332, !tbaa !322
  %cmp23.not.us458 = icmp eq i8 %19, %20, !dbg !332
  br i1 %cmp23.not.us458, label %for.cond27.preheader.us467, label %for.inc48.us462, !dbg !334

for.inc48.us462:                                  ; preds = %for.cond27.preheader.us467, %lor.lhs.false.us456, %for.body.us445
  %rep_index.3.ph.us463 = phi i32 [ %spec.select.us461, %for.cond27.preheader.us467 ], [ %rep_index.0438.us448, %for.body.us445 ], [ %rep_index.0438.us448, %lor.lhs.false.us456 ]
  %rep_len.3.ph.us464 = phi i32 [ 2, %for.cond27.preheader.us467 ], [ %rep_len.0441.us446, %for.body.us445 ], [ %rep_len.0441.us446, %lor.lhs.false.us456 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !263
  %indvars.iv.next503 = add nuw nsw i64 %indvars.iv502, 1, !dbg !347
  call void @llvm.dbg.value(metadata i32 %rep_len.3.ph.us464, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next503, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 %rep_index.3.ph.us463, metadata !244, metadata !DIExpression()), !dbg !263
  %exitcond505.not = icmp eq i64 %indvars.iv.next503, 4, !dbg !348
  br i1 %exitcond505.not, label %for.end52, label %for.body.us445, !dbg !327, !llvm.loop !349

for.cond27.preheader.us467:                       ; preds = %lor.lhs.false.us456
  call void @llvm.dbg.value(metadata i32 2, metadata !251, metadata !DIExpression()), !dbg !331
  %cmp43.us460 = icmp ult i32 %rep_len.0441.us446, 2, !dbg !343
  %21 = trunc i64 %indvars.iv502 to i32, !dbg !345
  %spec.select.us461 = select i1 %cmp43.us460, i32 %21, i32 %rep_index.0438.us448, !dbg !345
  call void @llvm.dbg.value(metadata i32 2, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %spec.select.us461, metadata !244, metadata !DIExpression()), !dbg !263
  br label %for.inc48.us462, !dbg !346

if.then9:                                         ; preds = %if.end
  store i32 -1, ptr %back_res, align 4, !dbg !357, !tbaa !293
  store i32 1, ptr %len_res, align 4, !dbg !359, !tbaa !293
  br label %cleanup260, !dbg !360

for.body:                                         ; preds = %for.cond.preheader.split, %for.inc48
  %indvars.iv498 = phi i64 [ %indvars.iv.next499, %for.inc48 ], [ 0, %for.cond.preheader.split ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv498, metadata !245, metadata !DIExpression()), !dbg !323
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !263
  %arrayidx = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv498, !dbg !328
  %22 = load i32, ptr %arrayidx, align 4, !dbg !328, !tbaa !293
  %idx.ext = zext i32 %22 to i64, !dbg !329
  %idx.neg = sub nsw i64 0, %idx.ext, !dbg !329
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12.us453, i64 %idx.neg, !dbg !330
  call void @llvm.dbg.value(metadata ptr %add.ptr13, metadata !247, metadata !DIExpression()), !dbg !331
  %23 = load i8, ptr %add.ptr13, align 1, !dbg !332, !tbaa !322
  %cmp17.not = icmp eq i8 %7, %23, !dbg !332
  br i1 %cmp17.not, label %lor.lhs.false, label %for.inc48, !dbg !332

lor.lhs.false:                                    ; preds = %for.body
  %24 = load i8, ptr %add.ptr.i, align 1, !dbg !332, !tbaa !322
  %arrayidx21 = getelementptr inbounds i8, ptr %add.ptr13, i64 1, !dbg !332
  %25 = load i8, ptr %arrayidx21, align 1, !dbg !332, !tbaa !322
  %cmp23.not = icmp eq i8 %24, %25, !dbg !332
  br i1 %cmp23.not, label %if.then41.thread, label %for.inc48, !dbg !334

if.then41.thread:                                 ; preds = %lor.lhs.false
  %.us-phi528 = trunc i64 %indvars.iv498 to i32, !dbg !361
  store i32 %.us-phi528, ptr %back_res, align 4, !dbg !361, !tbaa !293
  store i32 2, ptr %len_res, align 4, !dbg !363, !tbaa !293
  call void @llvm.dbg.value(metadata ptr %mf, metadata !364, metadata !DIExpression()) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub, metadata !367, metadata !DIExpression()) #4, !dbg !368
  br label %if.then.i, !dbg !370

if.then41:                                        ; preds = %for.end.us
  %.us-phi = trunc i64 %indvars.iv494 to i32, !dbg !361
  store i32 %.us-phi, ptr %back_res, align 4, !dbg !361, !tbaa !293
  store i32 %len.0.lcssa.us, ptr %len_res, align 4, !dbg !363, !tbaa !293
  %sub = add i32 %len.0.lcssa.us, -1, !dbg !371
  call void @llvm.dbg.value(metadata ptr %mf, metadata !364, metadata !DIExpression()) #4, !dbg !368
  call void @llvm.dbg.value(metadata i32 %sub, metadata !367, metadata !DIExpression()) #4, !dbg !368
  %cmp.not.i = icmp eq i32 %sub, 0, !dbg !372
  br i1 %cmp.not.i, label %cleanup260, label %if.then.i, !dbg !370

if.then.i:                                        ; preds = %if.then41.thread, %if.then41
  %sub531 = phi i32 [ 1, %if.then41.thread ], [ %sub, %if.then41 ]
  %skip.i = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !374
  %26 = load ptr, ptr %skip.i, align 8, !dbg !374, !tbaa !376
  call void %26(ptr noundef nonnull %mf, i32 noundef %sub531) #4, !dbg !377
  %27 = load i32, ptr %read_ahead, align 4, !dbg !378, !tbaa !274
  %add.i = add i32 %27, %sub531, !dbg !378
  store i32 %add.i, ptr %read_ahead, align 4, !dbg !378, !tbaa !274
  br label %cleanup260, !dbg !379

for.inc48:                                        ; preds = %lor.lhs.false, %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !244, metadata !DIExpression()), !dbg !263
  %indvars.iv.next499 = add nuw nsw i64 %indvars.iv498, 1, !dbg !347
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next499, metadata !245, metadata !DIExpression()), !dbg !323
  %exitcond501.not = icmp eq i64 %indvars.iv.next499, 4, !dbg !348
  br i1 %exitcond501.not, label %for.end52, label %for.body, !dbg !327, !llvm.loop !349

for.end52:                                        ; preds = %for.inc48.us, %for.inc48, %for.inc48.us462
  %.us-phi443 = phi i32 [ %rep_index.3.ph.us463, %for.inc48.us462 ], [ 0, %for.inc48 ], [ %rep_index.3.ph.us, %for.inc48.us ]
  %.us-phi444 = phi i32 [ %rep_len.3.ph.us464, %for.inc48.us462 ], [ 0, %for.inc48 ], [ %rep_len.3.ph.us, %for.inc48.us ]
  call void @llvm.dbg.value(metadata i32 %.us-phi444, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %.us-phi443, metadata !244, metadata !DIExpression()), !dbg !263
  %cmp53.not = icmp ult i32 %len_main.0, %0, !dbg !380
  br i1 %cmp53.not, label %if.end62, label %if.then55, !dbg !382

if.then55:                                        ; preds = %for.end52
  %28 = load i32, ptr %matches_count, align 4, !dbg !383, !tbaa !293
  call void @llvm.dbg.value(metadata i32 %28, metadata !238, metadata !DIExpression()), !dbg !263
  %sub57 = add i32 %28, -1, !dbg !385
  %idxprom58 = zext i32 %sub57 to i64, !dbg !386
  %dist = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom58, i32 1, !dbg !387
  %29 = load i32, ptr %dist, align 4, !dbg !387, !tbaa !388
  %add60 = add i32 %29, 4, !dbg !390
  store i32 %add60, ptr %back_res, align 4, !dbg !391, !tbaa !293
  store i32 %len_main.0, ptr %len_res, align 4, !dbg !392, !tbaa !293
  %sub61 = add i32 %len_main.0, -1, !dbg !393
  call void @llvm.dbg.value(metadata ptr %mf, metadata !364, metadata !DIExpression()) #4, !dbg !394
  call void @llvm.dbg.value(metadata i32 %sub61, metadata !367, metadata !DIExpression()) #4, !dbg !394
  %cmp.not.i399 = icmp eq i32 %sub61, 0, !dbg !396
  br i1 %cmp.not.i399, label %cleanup260, label %if.then.i403, !dbg !397

if.then.i403:                                     ; preds = %if.then55
  %skip.i400 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !398
  %30 = load ptr, ptr %skip.i400, align 8, !dbg !398, !tbaa !376
  call void %30(ptr noundef nonnull %mf, i32 noundef %sub61) #4, !dbg !399
  %31 = load i32, ptr %read_ahead, align 4, !dbg !400, !tbaa !274
  %add.i402 = add i32 %31, %sub61, !dbg !400
  store i32 %add.i402, ptr %read_ahead, align 4, !dbg !400, !tbaa !274
  br label %cleanup260, !dbg !401

if.end62:                                         ; preds = %for.end52
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()), !dbg !263
  %cmp63 = icmp ugt i32 %len_main.0, 1, !dbg !402
  br i1 %cmp63, label %if.then65, label %if.end108, !dbg !404

if.then65:                                        ; preds = %if.end62
  %32 = load i32, ptr %matches_count, align 4, !dbg !405, !tbaa !293
  call void @llvm.dbg.value(metadata i32 %32, metadata !238, metadata !DIExpression()), !dbg !263
  %sub67 = add i32 %32, -1, !dbg !407
  %idxprom68 = zext i32 %sub67 to i64, !dbg !408
  call void @llvm.dbg.value(metadata i32 undef, metadata !252, metadata !DIExpression()), !dbg !263
  %back_main.0.in473 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom68, i32 1, !dbg !409
  %back_main.0474 = load i32, ptr %back_main.0.in473, align 4, !dbg !409, !tbaa !388
  call void @llvm.dbg.value(metadata i32 %len_main.0, metadata !237, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %back_main.0474, metadata !252, metadata !DIExpression()), !dbg !263
  %cmp71475 = icmp ugt i32 %32, 1, !dbg !410
  br i1 %cmp71475, label %land.rhs73.preheader, label %while.end, !dbg !411

land.rhs73.preheader:                             ; preds = %if.then65
  %33 = zext i32 %32 to i64, !dbg !412
  br label %land.rhs73, !dbg !412

land.rhs73:                                       ; preds = %land.rhs73.preheader, %if.end91
  %indvars.iv506 = phi i64 [ %33, %land.rhs73.preheader ], [ %indvars.iv.next507, %if.end91 ]
  %back_main.0477 = phi i32 [ %back_main.0474, %land.rhs73.preheader ], [ %36, %if.end91 ]
  %len_main.1476 = phi i32 [ %len_main.0, %land.rhs73.preheader ], [ %35, %if.end91 ]
  call void @llvm.dbg.value(metadata i32 %len_main.1476, metadata !237, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv506, metadata !238, metadata !DIExpression()), !dbg !263
  %34 = add nsw i64 %indvars.iv506, -2, !dbg !413
  %arrayidx77 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %34, !dbg !414
  %35 = load i32, ptr %arrayidx77, align 4, !dbg !415, !tbaa !416
  %add79 = add i32 %35, 1, !dbg !417
  %cmp80 = icmp eq i32 %len_main.1476, %add79, !dbg !418
  br i1 %cmp80, label %while.body, label %while.end, !dbg !412

while.body:                                       ; preds = %land.rhs73
  %shr = lshr i32 %back_main.0477, 7, !dbg !419
  %dist87 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %34, i32 1, !dbg !419
  %36 = load i32, ptr %dist87, align 4, !dbg !419, !tbaa !388
  %cmp88 = icmp ugt i32 %shr, %36, !dbg !419
  br i1 %cmp88, label %if.end91, label %while.end, !dbg !422

if.end91:                                         ; preds = %while.body
  %indvars.iv.next507 = add nsw i64 %indvars.iv506, -1, !dbg !423
  %indvars = trunc i64 %indvars.iv.next507 to i32, !dbg !423
  call void @llvm.dbg.value(metadata i32 %indvars, metadata !238, metadata !DIExpression()), !dbg !263
  store i32 %indvars, ptr %matches_count, align 4, !dbg !423, !tbaa !293
  call void @llvm.dbg.value(metadata i32 %35, metadata !237, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %36, metadata !252, metadata !DIExpression()), !dbg !263
  %cmp71 = icmp ugt i32 %indvars, 1, !dbg !410
  br i1 %cmp71, label %land.rhs73, label %while.end, !dbg !411, !llvm.loop !424

while.end:                                        ; preds = %land.rhs73, %while.body, %if.end91, %if.then65
  %len_main.1.lcssa = phi i32 [ %len_main.0, %if.then65 ], [ %35, %if.end91 ], [ %len_main.1476, %while.body ], [ %len_main.1476, %land.rhs73 ], !dbg !263
  %back_main.0.lcssa = phi i32 [ %back_main.0474, %if.then65 ], [ %36, %if.end91 ], [ %back_main.0477, %while.body ], [ %back_main.0477, %land.rhs73 ], !dbg !409
  %cmp102 = icmp eq i32 %len_main.1.lcssa, 2, !dbg !426
  %cmp104 = icmp ugt i32 %back_main.0.lcssa, 127
  %or.cond = select i1 %cmp102, i1 %cmp104, i1 false, !dbg !428
  %spec.select389 = select i1 %or.cond, i32 1, i32 %len_main.1.lcssa, !dbg !428
  br label %if.end108, !dbg !428

if.end108:                                        ; preds = %while.end, %if.end62
  %back_main.1 = phi i32 [ 0, %if.end62 ], [ %back_main.0.lcssa, %while.end ], !dbg !263
  %len_main.2 = phi i32 [ %len_main.0, %if.end62 ], [ %spec.select389, %while.end ], !dbg !263
  call void @llvm.dbg.value(metadata i32 %len_main.2, metadata !237, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 %back_main.1, metadata !252, metadata !DIExpression()), !dbg !263
  %cmp109 = icmp ugt i32 %.us-phi444, 1, !dbg !429
  br i1 %cmp109, label %if.then111, label %if.end132, !dbg !431

if.then111:                                       ; preds = %if.end108
  %add112 = add i32 %.us-phi444, 1, !dbg !432
  %cmp113.not = icmp ult i32 %add112, %len_main.2, !dbg !435
  br i1 %cmp113.not, label %lor.lhs.false115, label %mf_skip.exit410, !dbg !436

lor.lhs.false115:                                 ; preds = %if.then111
  %add116 = add i32 %.us-phi444, 2, !dbg !437
  %cmp117 = icmp uge i32 %add116, %len_main.2, !dbg !438
  %cmp120 = icmp ugt i32 %back_main.1, 512
  %or.cond269 = select i1 %cmp117, i1 %cmp120, i1 false, !dbg !439
  br i1 %or.cond269, label %mf_skip.exit410, label %lor.lhs.false122, !dbg !439

lor.lhs.false122:                                 ; preds = %lor.lhs.false115
  %add123 = add i32 %.us-phi444, 3, !dbg !440
  %cmp124 = icmp uge i32 %add123, %len_main.2, !dbg !441
  %cmp127 = icmp ugt i32 %back_main.1, 32768
  %or.cond270 = select i1 %cmp124, i1 %cmp127, i1 false, !dbg !442
  br i1 %or.cond270, label %mf_skip.exit410, label %if.end132, !dbg !442

mf_skip.exit410:                                  ; preds = %lor.lhs.false122, %lor.lhs.false115, %if.then111
  store i32 %.us-phi443, ptr %back_res, align 4, !dbg !443, !tbaa !293
  store i32 %.us-phi444, ptr %len_res, align 4, !dbg !445, !tbaa !293
  %sub130 = add i32 %.us-phi444, -1, !dbg !446
  call void @llvm.dbg.value(metadata ptr %mf, metadata !364, metadata !DIExpression()) #4, !dbg !447
  call void @llvm.dbg.value(metadata i32 %sub130, metadata !367, metadata !DIExpression()) #4, !dbg !447
  %skip.i406 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !449
  %37 = load ptr, ptr %skip.i406, align 8, !dbg !449, !tbaa !376
  call void %37(ptr noundef nonnull %mf, i32 noundef %sub130) #4, !dbg !450
  %38 = load i32, ptr %read_ahead, align 4, !dbg !451, !tbaa !274
  %add.i408 = add i32 %38, %sub130, !dbg !451
  store i32 %add.i408, ptr %read_ahead, align 4, !dbg !451, !tbaa !274
  br label %cleanup260, !dbg !452

if.end132:                                        ; preds = %lor.lhs.false122, %if.end108
  %cmp133 = icmp ult i32 %len_main.2, 2, !dbg !453
  %cmp136 = icmp ult i32 %6, 3
  %or.cond271 = select i1 %cmp133, i1 true, i1 %cmp136, !dbg !455
  br i1 %or.cond271, label %if.then138, label %if.end139, !dbg !455

if.then138:                                       ; preds = %if.end132
  store i32 -1, ptr %back_res, align 4, !dbg !456, !tbaa !293
  store i32 1, ptr %len_res, align 4, !dbg !458, !tbaa !293
  br label %cleanup260, !dbg !459

if.end139:                                        ; preds = %if.end132
  %matches_count140 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !460
  %matches141 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !461
  %call143 = call i32 @lzma_mf_find(ptr noundef nonnull %mf, ptr noundef nonnull %matches_count140, ptr noundef nonnull %matches141) #4, !dbg !462
  %longest_match_length144 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !463
  store i32 %call143, ptr %longest_match_length144, align 8, !dbg !464, !tbaa !283
  %cmp146 = icmp ugt i32 %call143, 1, !dbg !465
  br i1 %cmp146, label %if.then148, label %if.end192, !dbg !466

if.then148:                                       ; preds = %if.end139
  %39 = load i32, ptr %matches_count140, align 4, !dbg !467, !tbaa !291
  %sub151 = add i32 %39, -1, !dbg !468
  %idxprom152 = zext i32 %sub151 to i64, !dbg !469
  %dist154 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom152, i32 1, !dbg !470
  %40 = load i32, ptr %dist154, align 4, !dbg !470, !tbaa !388
  call void @llvm.dbg.value(metadata i32 %40, metadata !253, metadata !DIExpression()), !dbg !471
  %cmp156.not = icmp uge i32 %call143, %len_main.2, !dbg !472
  %cmp159 = icmp ult i32 %40, %back_main.1
  %or.cond390 = select i1 %cmp156.not, i1 %cmp159, i1 false, !dbg !474
  br i1 %or.cond390, label %if.then187, label %lor.lhs.false161, !dbg !474

lor.lhs.false161:                                 ; preds = %if.then148
  %add163 = add i32 %len_main.2, 1, !dbg !475
  %cmp164 = icmp eq i32 %call143, %add163, !dbg !476
  %shr167 = lshr i32 %40, 7
  %cmp168 = icmp ule i32 %shr167, %back_main.1
  %or.cond391 = select i1 %cmp164, i1 %cmp168, i1 false, !dbg !477
  %cmp173 = icmp ugt i32 %call143, %add163
  %or.cond431 = or i1 %cmp173, %or.cond391, !dbg !477
  br i1 %or.cond431, label %if.then187, label %lor.lhs.false175, !dbg !477

lor.lhs.false175:                                 ; preds = %lor.lhs.false161
  %add177 = add i32 %call143, 1, !dbg !478
  %cmp178 = icmp uge i32 %add177, %len_main.2, !dbg !479
  %cmp181 = icmp ugt i32 %len_main.2, 2
  %or.cond272 = and i1 %cmp181, %cmp178, !dbg !480
  %shr184 = lshr i32 %back_main.1, 7
  %cmp185 = icmp ugt i32 %shr184, %40
  %or.cond392 = select i1 %or.cond272, i1 %cmp185, i1 false, !dbg !480
  br i1 %or.cond392, label %if.then187, label %if.end192, !dbg !480

if.then187:                                       ; preds = %lor.lhs.false175, %lor.lhs.false161, %if.then148
  store i32 -1, ptr %back_res, align 4, !dbg !481, !tbaa !293
  store i32 1, ptr %len_res, align 4, !dbg !483, !tbaa !293
  br label %cleanup260

if.end192:                                        ; preds = %lor.lhs.false175, %if.end139
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !239, metadata !DIExpression()), !dbg !263
  %sub193 = add i32 %len_main.2, -1, !dbg !484
  call void @llvm.dbg.value(metadata i32 %sub193, metadata !256, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !257, metadata !DIExpression()), !dbg !485
  %41 = load i8, ptr %add.ptr.i, align 1, !tbaa !322
  %arrayidx215 = getelementptr inbounds i8, ptr %add.ptr.i, i64 1
  %cmp225483 = icmp ugt i32 %sub193, 2
  %add.ptr206.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 -1
  br i1 %cmp225483, label %for.body199.us.preheader, label %for.body199, !dbg !486

for.body199.us.preheader:                         ; preds = %if.end192
  %wide.trip.count519 = zext i32 %sub193 to i64
  br label %for.body199.us, !dbg !489

for.body199.us:                                   ; preds = %for.body199.us.preheader, %for.inc249.us
  %indvars.iv521 = phi i64 [ 0, %for.body199.us.preheader ], [ %indvars.iv.next522, %for.inc249.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv521, metadata !257, metadata !DIExpression()), !dbg !485
  %arrayidx203.us = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv521, !dbg !490
  %42 = load i32, ptr %arrayidx203.us, align 4, !dbg !490, !tbaa !293
  %idx.ext204.us = zext i32 %42 to i64, !dbg !491
  %idx.neg205.us = sub nsw i64 0, %idx.ext204.us, !dbg !491
  %add.ptr207.us = getelementptr inbounds i8, ptr %add.ptr206.us, i64 %idx.neg205.us, !dbg !492
  call void @llvm.dbg.value(metadata ptr %add.ptr207.us, metadata !259, metadata !DIExpression()), !dbg !493
  %43 = load i8, ptr %add.ptr207.us, align 1, !dbg !494, !tbaa !322
  %cmp212.not.us = icmp eq i8 %41, %43, !dbg !494
  br i1 %cmp212.not.us, label %lor.lhs.false214.us, label %for.inc249.us, !dbg !494

lor.lhs.false214.us:                              ; preds = %for.body199.us
  %44 = load i8, ptr %arrayidx215, align 1, !dbg !494, !tbaa !322
  %arrayidx217.us = getelementptr inbounds i8, ptr %add.ptr207.us, i64 1, !dbg !494
  %45 = load i8, ptr %arrayidx217.us, align 1, !dbg !494, !tbaa !322
  %cmp219.not.us = icmp eq i8 %44, %45, !dbg !494
  br i1 %cmp219.not.us, label %land.rhs227.us, label %for.inc249.us, !dbg !496

for.cond224.us:                                   ; preds = %land.rhs227.us
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 undef, metadata !262, metadata !DIExpression()), !dbg !493
  %exitcond520.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count519, !dbg !498
  br i1 %exitcond520.not, label %cleanup251, label %land.rhs227.us, !dbg !486, !llvm.loop !499

land.rhs227.us:                                   ; preds = %lor.lhs.false214.us, %for.cond224.us
  %indvars.iv515 = phi i64 [ %indvars.iv.next516, %for.cond224.us ], [ 2, %lor.lhs.false214.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv515, metadata !262, metadata !DIExpression()), !dbg !493
  %arrayidx229.us = getelementptr inbounds i8, ptr %add.ptr.i, i64 %indvars.iv515, !dbg !502
  %46 = load i8, ptr %arrayidx229.us, align 1, !dbg !502, !tbaa !322
  %arrayidx232.us = getelementptr inbounds i8, ptr %add.ptr207.us, i64 %indvars.iv515, !dbg !503
  %47 = load i8, ptr %arrayidx232.us, align 1, !dbg !503, !tbaa !322
  %cmp234.us = icmp eq i8 %46, %47, !dbg !504
  call void @llvm.dbg.value(metadata i64 %indvars.iv515, metadata !262, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !493
  br i1 %cmp234.us, label %for.cond224.us, label %for.inc249.us, !dbg !500

for.inc249.us:                                    ; preds = %land.rhs227.us, %lor.lhs.false214.us, %for.body199.us
  %indvars.iv.next522 = add nuw nsw i64 %indvars.iv521, 1, !dbg !505
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next522, metadata !257, metadata !DIExpression()), !dbg !485
  %exitcond525.not = icmp eq i64 %indvars.iv.next522, 4, !dbg !506
  br i1 %exitcond525.not, label %for.end253, label %for.body199.us, !dbg !489, !llvm.loop !507

for.body199:                                      ; preds = %if.end192, %for.inc249
  %indvars.iv510 = phi i64 [ %indvars.iv.next511, %for.inc249 ], [ 0, %if.end192 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv510, metadata !257, metadata !DIExpression()), !dbg !485
  %arrayidx203 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv510, !dbg !490
  %48 = load i32, ptr %arrayidx203, align 4, !dbg !490, !tbaa !293
  %idx.ext204 = zext i32 %48 to i64, !dbg !491
  %idx.neg205 = sub nsw i64 0, %idx.ext204, !dbg !491
  %add.ptr207 = getelementptr inbounds i8, ptr %add.ptr206.us, i64 %idx.neg205, !dbg !492
  call void @llvm.dbg.value(metadata ptr %add.ptr207, metadata !259, metadata !DIExpression()), !dbg !493
  %49 = load i8, ptr %add.ptr207, align 1, !dbg !494, !tbaa !322
  %cmp212.not = icmp eq i8 %41, %49, !dbg !494
  br i1 %cmp212.not, label %lor.lhs.false214, label %for.inc249, !dbg !494

lor.lhs.false214:                                 ; preds = %for.body199
  %50 = load i8, ptr %arrayidx215, align 1, !dbg !494, !tbaa !322
  %arrayidx217 = getelementptr inbounds i8, ptr %add.ptr207, i64 1, !dbg !494
  %51 = load i8, ptr %arrayidx217, align 1, !dbg !494, !tbaa !322
  %cmp219.not = icmp eq i8 %50, %51, !dbg !494
  br i1 %cmp219.not, label %cleanup251, label %for.inc249, !dbg !496

for.inc249:                                       ; preds = %lor.lhs.false214, %for.body199
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1, !dbg !505
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next511, metadata !257, metadata !DIExpression()), !dbg !485
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, 4, !dbg !506
  br i1 %exitcond514.not, label %for.end253, label %for.body199, !dbg !489, !llvm.loop !507

cleanup251:                                       ; preds = %lor.lhs.false214, %for.cond224.us
  store i32 -1, ptr %back_res, align 4, !dbg !509, !tbaa !293
  store i32 1, ptr %len_res, align 4, !dbg !512, !tbaa !293
  br label %cleanup260

for.end253:                                       ; preds = %for.inc249, %for.inc249.us
  %add254 = add i32 %back_main.1, 4, !dbg !513
  store i32 %add254, ptr %back_res, align 4, !dbg !514, !tbaa !293
  store i32 %len_main.2, ptr %len_res, align 4, !dbg !515, !tbaa !293
  %sub255 = add i32 %len_main.2, -2, !dbg !516
  call void @llvm.dbg.value(metadata ptr %mf, metadata !364, metadata !DIExpression()) #4, !dbg !517
  call void @llvm.dbg.value(metadata i32 %sub255, metadata !367, metadata !DIExpression()) #4, !dbg !517
  %cmp.not.i411 = icmp eq i32 %sub255, 0, !dbg !519
  br i1 %cmp.not.i411, label %cleanup260, label %if.then.i415, !dbg !520

if.then.i415:                                     ; preds = %for.end253
  %skip.i412 = getelementptr inbounds %struct.lzma_mf_s, ptr %mf, i64 0, i32 11, !dbg !521
  %52 = load ptr, ptr %skip.i412, align 8, !dbg !521, !tbaa !376
  call void %52(ptr noundef nonnull %mf, i32 noundef %sub255) #4, !dbg !522
  %53 = load i32, ptr %read_ahead, align 4, !dbg !523, !tbaa !274
  %add.i414 = add i32 %53, %sub255, !dbg !523
  store i32 %add.i414, ptr %read_ahead, align 4, !dbg !523, !tbaa !274
  br label %cleanup260, !dbg !524

cleanup260:                                       ; preds = %if.then41, %if.then.i, %if.then.i415, %for.end253, %cleanup251, %if.then.i403, %if.then55, %if.then187, %if.then138, %mf_skip.exit410, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %matches_count) #4, !dbg !525
  ret void, !dbg !525
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !526 i32 @lzma_mf_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_fast.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "2f7decb644128e554449599785f4e3e7")
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
!73 = distinct !DISubprogram(name: "lzma_lzma_optimum_fast", scope: !74, file: !74, line: 20, type: !75, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!74 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_optimum_fast.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2f7decb644128e554449599785f4e3e7")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !80, !124, !124}
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
!125 = !{!126, !127, !128, !129, !130, !235, !237, !238, !239, !242, !243, !244, !245, !247, !251, !252, !253, !256, !257, !259, !262}
!126 = !DILocalVariable(name: "pcoder", arg: 1, scope: !73, file: !74, line: 20, type: !77)
!127 = !DILocalVariable(name: "mf", arg: 2, scope: !73, file: !74, line: 20, type: !80)
!128 = !DILocalVariable(name: "back_res", arg: 3, scope: !73, file: !74, line: 21, type: !124)
!129 = !DILocalVariable(name: "len_res", arg: 4, scope: !73, file: !74, line: 21, type: !124)
!130 = !DILocalVariable(name: "coder", scope: !73, file: !74, line: 23, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !134, line: 72, size: 1996608, elements: !135)
!134 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0c1b7b41ddfbed104b8c32f19cfcc2b2")
!135 = !{!136, !138, !140, !144, !148, !149, !150, !152, !153, !154, !155, !156, !157, !162, !166, !169, !170, !171, !172, !173, !177, !181, !184, !206, !207, !209, !213, !214, !215, !216, !217, !218, !219}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !133, file: !134, line: 74, baseType: !137, size: 5888)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_encoder", file: !12, line: 51, baseType: !13)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !133, file: !134, line: 77, baseType: !139, size: 32, offset: 5888)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !52, line: 69, baseType: !51)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reps", scope: !133, file: !134, line: 80, baseType: !141, size: 128, offset: 5920)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !133, file: !134, line: 83, baseType: !145, size: 17536, offset: 6048)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 17536, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 274)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "matches_count", scope: !133, file: !134, line: 86, baseType: !23, size: 32, offset: 23584)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "longest_match_length", scope: !133, file: !134, line: 90, baseType: !23, size: 32, offset: 23616)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fast_mode", scope: !133, file: !134, line: 93, baseType: !151, size: 8, offset: 23648)
!151 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialized", scope: !133, file: !134, line: 97, baseType: !151, size: 8, offset: 23656)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !133, file: !134, line: 101, baseType: !151, size: 8, offset: 23664)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !133, file: !134, line: 103, baseType: !23, size: 32, offset: 23680)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !133, file: !134, line: 104, baseType: !23, size: 32, offset: 23712)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !133, file: !134, line: 105, baseType: !23, size: 32, offset: 23744)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !133, file: !134, line: 108, baseType: !158, size: 196608, offset: 23776)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 196608, elements: !159)
!159 = !{!160, !161}
!160 = !DISubrange(count: 16)
!161 = !DISubrange(count: 768)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !133, file: !134, line: 109, baseType: !163, size: 3072, offset: 220384)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3072, elements: !164)
!164 = !{!165, !160}
!165 = !DISubrange(count: 12)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !133, file: !134, line: 110, baseType: !167, size: 192, offset: 223456)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 192, elements: !168)
!168 = !{!165}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !133, file: !134, line: 111, baseType: !167, size: 192, offset: 223648)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !133, file: !134, line: 112, baseType: !167, size: 192, offset: 223840)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !133, file: !134, line: 113, baseType: !167, size: 192, offset: 224032)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !133, file: !134, line: 114, baseType: !163, size: 3072, offset: 224224)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !133, file: !134, line: 115, baseType: !174, size: 4096, offset: 227296)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !175)
!175 = !{!143, !176}
!176 = !DISubrange(count: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !133, file: !134, line: 116, baseType: !178, size: 1824, offset: 231392)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 1824, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 114)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !133, file: !134, line: 117, baseType: !182, size: 256, offset: 233216)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !183)
!183 = !{!160}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_encoder", scope: !133, file: !134, line: 121, baseType: !185, size: 148032, offset: 233472)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_encoder", file: !134, line: 51, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 40, size: 148032, elements: !187)
!187 = !{!188, !189, !190, !194, !195, !199, !203, !204}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !186, file: !134, line: 41, baseType: !40, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !186, file: !134, line: 42, baseType: !40, size: 16, offset: 16)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !186, file: !134, line: 43, baseType: !191, size: 2048, offset: 32)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, elements: !192)
!192 = !{!160, !193}
!193 = !DISubrange(count: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !186, file: !134, line: 44, baseType: !191, size: 2048, offset: 2080)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !186, file: !134, line: 45, baseType: !196, size: 4096, offset: 4128)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4096, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prices", scope: !186, file: !134, line: 47, baseType: !200, size: 139264, offset: 8224)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 139264, elements: !201)
!201 = !{!160, !202}
!202 = !DISubrange(count: 272)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "table_size", scope: !186, file: !134, line: 48, baseType: !23, size: 32, offset: 147488)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !186, file: !134, line: 49, baseType: !205, size: 512, offset: 147520)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !183)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_encoder", scope: !133, file: !134, line: 122, baseType: !185, size: 148032, offset: 381504)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot_prices", scope: !133, file: !134, line: 125, baseType: !208, size: 8192, offset: 529536)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8192, elements: !175)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "distances_prices", scope: !133, file: !134, line: 126, baseType: !210, size: 16384, offset: 537728)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 16384, elements: !211)
!211 = !{!143, !212}
!212 = !DISubrange(count: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dist_table_size", scope: !133, file: !134, line: 127, baseType: !23, size: 32, offset: 554112)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "match_price_count", scope: !133, file: !134, line: 128, baseType: !23, size: 32, offset: 554144)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "align_prices", scope: !133, file: !134, line: 130, baseType: !205, size: 512, offset: 554176)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "align_price_count", scope: !133, file: !134, line: 131, baseType: !23, size: 32, offset: 554688)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "opts_end_index", scope: !133, file: !134, line: 134, baseType: !23, size: 32, offset: 554720)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "opts_current_index", scope: !133, file: !134, line: 135, baseType: !23, size: 32, offset: 554752)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !133, file: !134, line: 136, baseType: !220, size: 1441792, offset: 554784)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 1441792, elements: !233)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_optimal", file: !134, line: 69, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 54, size: 352, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !222, file: !134, line: 55, baseType: !139, size: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "prev_1_is_literal", scope: !222, file: !134, line: 57, baseType: !151, size: 8, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "prev_2", scope: !222, file: !134, line: 58, baseType: !151, size: 8, offset: 40)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev_2", scope: !222, file: !134, line: 60, baseType: !23, size: 32, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev_2", scope: !222, file: !134, line: 61, baseType: !23, size: 32, offset: 96)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "price", scope: !222, file: !134, line: 63, baseType: !23, size: 32, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pos_prev", scope: !222, file: !134, line: 64, baseType: !23, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "back_prev", scope: !222, file: !134, line: 65, baseType: !23, size: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "backs", scope: !222, file: !134, line: 67, baseType: !141, size: 128, offset: 224)
!233 = !{!234}
!234 = !DISubrange(count: 4096)
!235 = !DILocalVariable(name: "nice_len", scope: !73, file: !74, line: 24, type: !236)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!237 = !DILocalVariable(name: "len_main", scope: !73, file: !74, line: 26, type: !23)
!238 = !DILocalVariable(name: "matches_count", scope: !73, file: !74, line: 27, type: !23)
!239 = !DILocalVariable(name: "buf", scope: !73, file: !74, line: 36, type: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!242 = !DILocalVariable(name: "buf_avail", scope: !73, file: !74, line: 37, type: !236)
!243 = !DILocalVariable(name: "rep_len", scope: !73, file: !74, line: 47, type: !23)
!244 = !DILocalVariable(name: "rep_index", scope: !73, file: !74, line: 48, type: !23)
!245 = !DILocalVariable(name: "i", scope: !246, file: !74, line: 50, type: !23)
!246 = distinct !DILexicalBlock(scope: !73, file: !74, line: 50, column: 2)
!247 = !DILocalVariable(name: "buf_back", scope: !248, file: !74, line: 52, type: !250)
!248 = distinct !DILexicalBlock(scope: !249, file: !74, line: 50, column: 47)
!249 = distinct !DILexicalBlock(scope: !246, file: !74, line: 50, column: 2)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!251 = !DILocalVariable(name: "len", scope: !248, file: !74, line: 61, type: !23)
!252 = !DILocalVariable(name: "back_main", scope: !73, file: !74, line: 90, type: !23)
!253 = !DILocalVariable(name: "new_dist", scope: !254, file: !74, line: 135, type: !236)
!254 = distinct !DILexicalBlock(scope: !255, file: !74, line: 134, column: 40)
!255 = distinct !DILexicalBlock(scope: !73, file: !74, line: 134, column: 6)
!256 = !DILocalVariable(name: "limit", scope: !73, file: !74, line: 157, type: !236)
!257 = !DILocalVariable(name: "i", scope: !258, file: !74, line: 159, type: !23)
!258 = distinct !DILexicalBlock(scope: !73, file: !74, line: 159, column: 2)
!259 = !DILocalVariable(name: "buf_back", scope: !260, file: !74, line: 160, type: !250)
!260 = distinct !DILexicalBlock(scope: !261, file: !74, line: 159, column: 47)
!261 = distinct !DILexicalBlock(scope: !258, file: !74, line: 159, column: 2)
!262 = !DILocalVariable(name: "len", scope: !260, file: !74, line: 165, type: !23)
!263 = !DILocation(line: 0, scope: !73)
!264 = !DILocation(line: 24, column: 32, scope: !73)
!265 = !{!266, !270, i64 96}
!266 = !{!"lzma_mf_s", !267, i64 0, !270, i64 8, !270, i64 12, !270, i64 16, !270, i64 20, !270, i64 24, !270, i64 28, !270, i64 32, !270, i64 36, !270, i64 40, !267, i64 48, !267, i64 56, !267, i64 64, !267, i64 72, !270, i64 80, !270, i64 84, !270, i64 88, !270, i64 92, !270, i64 96, !270, i64 100, !268, i64 104, !270, i64 108, !270, i64 112}
!267 = !{!"any pointer", !268, i64 0}
!268 = !{!"omnipotent char", !269, i64 0}
!269 = !{!"Simple C/C++ TBAA"}
!270 = !{!"int", !268, i64 0}
!271 = !DILocation(line: 27, column: 2, scope: !73)
!272 = !DILocation(line: 28, column: 10, scope: !273)
!273 = distinct !DILexicalBlock(scope: !73, file: !74, line: 28, column: 6)
!274 = !{!266, !270, i64 28}
!275 = !DILocation(line: 28, column: 21, scope: !273)
!276 = !DILocation(line: 28, column: 6, scope: !73)
!277 = !DILocation(line: 29, column: 49, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !74, line: 28, column: 27)
!279 = !DILocation(line: 29, column: 14, scope: !278)
!280 = !DILocation(line: 30, column: 2, scope: !278)
!281 = !DILocation(line: 32, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !273, file: !74, line: 30, column: 9)
!283 = !{!284, !270, i64 2952}
!284 = !{!"lzma_coder_s", !285, i64 0, !268, i64 736, !268, i64 740, !268, i64 756, !270, i64 2948, !270, i64 2952, !287, i64 2956, !287, i64 2957, !287, i64 2958, !270, i64 2960, !270, i64 2964, !270, i64 2968, !268, i64 2972, !268, i64 27548, !268, i64 27932, !268, i64 27956, !268, i64 27980, !268, i64 28004, !268, i64 28028, !268, i64 28412, !268, i64 28924, !268, i64 29152, !288, i64 29184, !288, i64 47688, !268, i64 66192, !268, i64 67216, !270, i64 69264, !270, i64 69268, !268, i64 69272, !270, i64 69336, !270, i64 69340, !270, i64 69344, !268, i64 69348}
!285 = !{!"", !286, i64 0, !286, i64 8, !270, i64 16, !268, i64 20, !286, i64 24, !286, i64 32, !268, i64 40, !268, i64 272}
!286 = !{!"long", !268, i64 0}
!287 = !{!"_Bool", !268, i64 0}
!288 = !{!"", !289, i64 0, !289, i64 2, !268, i64 4, !268, i64 260, !268, i64 516, !268, i64 1028, !270, i64 18436, !268, i64 18440}
!289 = !{!"short", !268, i64 0}
!290 = !DILocation(line: 33, column: 26, scope: !282)
!291 = !{!284, !270, i64 2948}
!292 = !DILocation(line: 33, column: 17, scope: !282)
!293 = !{!270, !270, i64 0}
!294 = !DILocation(line: 0, scope: !273)
!295 = !DILocation(line: 36, column: 23, scope: !73)
!296 = !{!266, !267, i64 0}
!297 = !{!266, !270, i64 24}
!298 = !DILocalVariable(name: "mf", arg: 1, scope: !299, file: !83, line: 222, type: !302)
!299 = distinct !DISubprogram(name: "mf_ptr", scope: !83, file: !83, line: 222, type: !300, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !304)
!300 = !DISubroutineType(types: !301)
!301 = !{!240, !302}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!304 = !{!298}
!305 = !DILocation(line: 0, scope: !299, inlinedAt: !306)
!306 = distinct !DILocation(line: 36, column: 23, scope: !73)
!307 = !DILocation(line: 224, column: 20, scope: !299, inlinedAt: !306)
!308 = !DILocation(line: 36, column: 34, scope: !73)
!309 = !DILocation(line: 37, column: 29, scope: !73)
!310 = !{!266, !270, i64 36}
!311 = !DILocalVariable(name: "mf", arg: 1, scope: !312, file: !83, line: 230, type: !302)
!312 = distinct !DISubprogram(name: "mf_avail", scope: !83, file: !83, line: 230, type: !313, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{!23, !302}
!315 = !{!311}
!316 = !DILocation(line: 0, scope: !312, inlinedAt: !317)
!317 = distinct !DILocation(line: 37, column: 29, scope: !73)
!318 = !DILocation(line: 232, column: 23, scope: !312, inlinedAt: !317)
!319 = !DILocation(line: 39, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !73, file: !74, line: 39, column: 6)
!321 = !DILocation(line: 39, column: 6, scope: !73)
!322 = !{!268, !268, i64 0}
!323 = !DILocation(line: 0, scope: !246)
!324 = !DILocation(line: 63, column: 5, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !74, line: 62, column: 3)
!326 = distinct !DILexicalBlock(scope: !248, file: !74, line: 62, column: 3)
!327 = !DILocation(line: 50, column: 2, scope: !246)
!328 = !DILocation(line: 52, column: 41, scope: !248)
!329 = !DILocation(line: 52, column: 39, scope: !248)
!330 = !DILocation(line: 52, column: 56, scope: !248)
!331 = !DILocation(line: 0, scope: !248)
!332 = !DILocation(line: 56, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !248, file: !74, line: 56, column: 7)
!334 = !DILocation(line: 56, column: 7, scope: !248)
!335 = !DILocation(line: 63, column: 8, scope: !325)
!336 = !DILocation(line: 63, column: 20, scope: !325)
!337 = !DILocation(line: 63, column: 17, scope: !325)
!338 = !DILocation(line: 62, column: 3, scope: !326)
!339 = !DILocation(line: 67, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !248, file: !74, line: 67, column: 7)
!341 = !DILocation(line: 0, scope: !326)
!342 = !DILocation(line: 67, column: 7, scope: !248)
!343 = !DILocation(line: 74, column: 11, scope: !344)
!344 = distinct !DILexicalBlock(scope: !248, file: !74, line: 74, column: 7)
!345 = !DILocation(line: 74, column: 7, scope: !248)
!346 = !DILocation(line: 78, column: 2, scope: !249)
!347 = !DILocation(line: 50, column: 42, scope: !249)
!348 = !DILocation(line: 50, column: 25, scope: !249)
!349 = distinct !{!349, !327, !350, !351, !352}
!350 = !DILocation(line: 78, column: 2, scope: !246)
!351 = !{!"llvm.loop.mustprogress"}
!352 = !{!"llvm.loop.unroll.disable"}
!353 = !DILocation(line: 63, column: 35, scope: !325)
!354 = !DILocation(line: 62, column: 21, scope: !325)
!355 = distinct !{!355, !338, !356, !351, !352}
!356 = !DILocation(line: 63, column: 42, scope: !326)
!357 = !DILocation(line: 41, column: 13, scope: !358)
!358 = distinct !DILexicalBlock(scope: !320, file: !74, line: 39, column: 21)
!359 = !DILocation(line: 42, column: 12, scope: !358)
!360 = !DILocation(line: 43, column: 3, scope: !358)
!361 = !DILocation(line: 68, column: 14, scope: !362)
!362 = distinct !DILexicalBlock(scope: !340, file: !74, line: 67, column: 24)
!363 = !DILocation(line: 69, column: 13, scope: !362)
!364 = !DILocalVariable(name: "mf", arg: 1, scope: !365, file: !83, line: 268, type: !81)
!365 = distinct !DISubprogram(name: "mf_skip", scope: !83, file: !83, line: 268, type: !109, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!366 = !{!364, !367}
!367 = !DILocalVariable(name: "amount", arg: 2, scope: !365, file: !83, line: 268, type: !23)
!368 = !DILocation(line: 0, scope: !365, inlinedAt: !369)
!369 = distinct !DILocation(line: 70, column: 4, scope: !362)
!370 = !DILocation(line: 270, column: 6, scope: !365, inlinedAt: !369)
!371 = !DILocation(line: 70, column: 20, scope: !362)
!372 = !DILocation(line: 270, column: 13, scope: !373, inlinedAt: !369)
!373 = distinct !DILexicalBlock(scope: !365, file: !83, line: 270, column: 6)
!374 = !DILocation(line: 271, column: 7, scope: !375, inlinedAt: !369)
!375 = distinct !DILexicalBlock(scope: !373, file: !83, line: 270, column: 19)
!376 = !{!266, !267, i64 56}
!377 = !DILocation(line: 271, column: 3, scope: !375, inlinedAt: !369)
!378 = !DILocation(line: 272, column: 18, scope: !375, inlinedAt: !369)
!379 = !DILocation(line: 273, column: 2, scope: !375, inlinedAt: !369)
!380 = !DILocation(line: 82, column: 15, scope: !381)
!381 = distinct !DILexicalBlock(scope: !73, file: !74, line: 82, column: 6)
!382 = !DILocation(line: 82, column: 6, scope: !73)
!383 = !DILocation(line: 83, column: 30, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !74, line: 82, column: 28)
!385 = !DILocation(line: 83, column: 44, scope: !384)
!386 = !DILocation(line: 83, column: 15, scope: !384)
!387 = !DILocation(line: 83, column: 49, scope: !384)
!388 = !{!389, !270, i64 4}
!389 = !{!"", !270, i64 0, !270, i64 4}
!390 = !DILocation(line: 84, column: 5, scope: !384)
!391 = !DILocation(line: 83, column: 13, scope: !384)
!392 = !DILocation(line: 85, column: 12, scope: !384)
!393 = !DILocation(line: 86, column: 24, scope: !384)
!394 = !DILocation(line: 0, scope: !365, inlinedAt: !395)
!395 = distinct !DILocation(line: 86, column: 3, scope: !384)
!396 = !DILocation(line: 270, column: 13, scope: !373, inlinedAt: !395)
!397 = !DILocation(line: 270, column: 6, scope: !365, inlinedAt: !395)
!398 = !DILocation(line: 271, column: 7, scope: !375, inlinedAt: !395)
!399 = !DILocation(line: 271, column: 3, scope: !375, inlinedAt: !395)
!400 = !DILocation(line: 272, column: 18, scope: !375, inlinedAt: !395)
!401 = !DILocation(line: 273, column: 2, scope: !375, inlinedAt: !395)
!402 = !DILocation(line: 91, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !73, file: !74, line: 91, column: 6)
!404 = !DILocation(line: 91, column: 6, scope: !73)
!405 = !DILocation(line: 92, column: 30, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !74, line: 91, column: 21)
!407 = !DILocation(line: 92, column: 44, scope: !406)
!408 = !DILocation(line: 92, column: 15, scope: !406)
!409 = !DILocation(line: 0, scope: !406)
!410 = !DILocation(line: 94, column: 24, scope: !406)
!411 = !DILocation(line: 94, column: 28, scope: !406)
!412 = !DILocation(line: 94, column: 3, scope: !406)
!413 = !DILocation(line: 95, column: 34, scope: !406)
!414 = !DILocation(line: 95, column: 5, scope: !406)
!415 = !DILocation(line: 95, column: 39, scope: !406)
!416 = !{!389, !270, i64 0}
!417 = !DILocation(line: 95, column: 43, scope: !406)
!418 = !DILocation(line: 94, column: 40, scope: !406)
!419 = !DILocation(line: 96, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !74, line: 96, column: 8)
!421 = distinct !DILexicalBlock(scope: !406, file: !74, line: 95, column: 48)
!422 = !DILocation(line: 96, column: 8, scope: !421)
!423 = !DILocation(line: 101, column: 4, scope: !421)
!424 = distinct !{!424, !412, !425, !351, !352}
!425 = !DILocation(line: 104, column: 3, scope: !406)
!426 = !DILocation(line: 106, column: 16, scope: !427)
!427 = distinct !DILexicalBlock(scope: !406, file: !74, line: 106, column: 7)
!428 = !DILocation(line: 106, column: 21, scope: !427)
!429 = !DILocation(line: 110, column: 14, scope: !430)
!430 = distinct !DILexicalBlock(scope: !73, file: !74, line: 110, column: 6)
!431 = !DILocation(line: 110, column: 6, scope: !73)
!432 = !DILocation(line: 111, column: 15, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !74, line: 111, column: 7)
!434 = distinct !DILexicalBlock(scope: !430, file: !74, line: 110, column: 20)
!435 = !DILocation(line: 111, column: 19, scope: !433)
!436 = !DILocation(line: 112, column: 5, scope: !433)
!437 = !DILocation(line: 112, column: 17, scope: !433)
!438 = !DILocation(line: 112, column: 21, scope: !433)
!439 = !DILocation(line: 113, column: 6, scope: !433)
!440 = !DILocation(line: 114, column: 17, scope: !433)
!441 = !DILocation(line: 114, column: 21, scope: !433)
!442 = !DILocation(line: 115, column: 6, scope: !433)
!443 = !DILocation(line: 116, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !74, line: 115, column: 43)
!445 = !DILocation(line: 117, column: 13, scope: !444)
!446 = !DILocation(line: 118, column: 24, scope: !444)
!447 = !DILocation(line: 0, scope: !365, inlinedAt: !448)
!448 = distinct !DILocation(line: 118, column: 4, scope: !444)
!449 = !DILocation(line: 271, column: 7, scope: !375, inlinedAt: !448)
!450 = !DILocation(line: 271, column: 3, scope: !375, inlinedAt: !448)
!451 = !DILocation(line: 272, column: 18, scope: !375, inlinedAt: !448)
!452 = !DILocation(line: 119, column: 4, scope: !444)
!453 = !DILocation(line: 123, column: 15, scope: !454)
!454 = distinct !DILexicalBlock(scope: !73, file: !74, line: 123, column: 6)
!455 = !DILocation(line: 123, column: 19, scope: !454)
!456 = !DILocation(line: 124, column: 13, scope: !457)
!457 = distinct !DILexicalBlock(scope: !454, file: !74, line: 123, column: 38)
!458 = !DILocation(line: 125, column: 12, scope: !457)
!459 = !DILocation(line: 126, column: 3, scope: !457)
!460 = !DILocation(line: 132, column: 12, scope: !73)
!461 = !DILocation(line: 132, column: 34, scope: !73)
!462 = !DILocation(line: 131, column: 32, scope: !73)
!463 = !DILocation(line: 131, column: 9, scope: !73)
!464 = !DILocation(line: 131, column: 30, scope: !73)
!465 = !DILocation(line: 134, column: 34, scope: !255)
!466 = !DILocation(line: 134, column: 6, scope: !73)
!467 = !DILocation(line: 136, column: 12, scope: !254)
!468 = !DILocation(line: 136, column: 26, scope: !254)
!469 = !DILocation(line: 135, column: 29, scope: !254)
!470 = !DILocation(line: 136, column: 31, scope: !254)
!471 = !DILocation(line: 0, scope: !254)
!472 = !DILocation(line: 138, column: 36, scope: !473)
!473 = distinct !DILexicalBlock(scope: !254, file: !74, line: 138, column: 7)
!474 = !DILocation(line: 139, column: 6, scope: !473)
!475 = !DILocation(line: 140, column: 49, scope: !473)
!476 = !DILocation(line: 140, column: 37, scope: !473)
!477 = !DILocation(line: 141, column: 6, scope: !473)
!478 = !DILocation(line: 143, column: 37, scope: !473)
!479 = !DILocation(line: 143, column: 41, scope: !473)
!480 = !DILocation(line: 144, column: 6, scope: !473)
!481 = !DILocation(line: 146, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !473, file: !74, line: 145, column: 44)
!483 = !DILocation(line: 147, column: 13, scope: !482)
!484 = !DILocation(line: 157, column: 34, scope: !73)
!485 = !DILocation(line: 0, scope: !258)
!486 = !DILocation(line: 167, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !74, line: 166, column: 3)
!488 = distinct !DILexicalBlock(scope: !260, file: !74, line: 166, column: 3)
!489 = !DILocation(line: 159, column: 2, scope: !258)
!490 = !DILocation(line: 160, column: 41, scope: !260)
!491 = !DILocation(line: 160, column: 39, scope: !260)
!492 = !DILocation(line: 160, column: 56, scope: !260)
!493 = !DILocation(line: 0, scope: !260)
!494 = !DILocation(line: 162, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !260, file: !74, line: 162, column: 7)
!496 = !DILocation(line: 162, column: 7, scope: !260)
!497 = !DILocation(line: 167, column: 35, scope: !487)
!498 = !DILocation(line: 166, column: 21, scope: !487)
!499 = distinct !{!499, !500, !501, !351, !352}
!500 = !DILocation(line: 166, column: 3, scope: !488)
!501 = !DILocation(line: 167, column: 42, scope: !488)
!502 = !DILocation(line: 167, column: 8, scope: !487)
!503 = !DILocation(line: 167, column: 20, scope: !487)
!504 = !DILocation(line: 167, column: 17, scope: !487)
!505 = !DILocation(line: 159, column: 42, scope: !261)
!506 = !DILocation(line: 159, column: 25, scope: !261)
!507 = distinct !{!507, !489, !508, !351, !352}
!508 = !DILocation(line: 174, column: 2, scope: !258)
!509 = !DILocation(line: 170, column: 14, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !74, line: 169, column: 21)
!511 = distinct !DILexicalBlock(scope: !260, file: !74, line: 169, column: 7)
!512 = !DILocation(line: 171, column: 13, scope: !510)
!513 = !DILocation(line: 176, column: 24, scope: !73)
!514 = !DILocation(line: 176, column: 12, scope: !73)
!515 = !DILocation(line: 177, column: 11, scope: !73)
!516 = !DILocation(line: 178, column: 23, scope: !73)
!517 = !DILocation(line: 0, scope: !365, inlinedAt: !518)
!518 = distinct !DILocation(line: 178, column: 2, scope: !73)
!519 = !DILocation(line: 270, column: 13, scope: !373, inlinedAt: !518)
!520 = !DILocation(line: 270, column: 6, scope: !365, inlinedAt: !518)
!521 = !DILocation(line: 271, column: 7, scope: !375, inlinedAt: !518)
!522 = !DILocation(line: 271, column: 3, scope: !375, inlinedAt: !518)
!523 = !DILocation(line: 272, column: 18, scope: !375, inlinedAt: !518)
!524 = !DILocation(line: 273, column: 2, scope: !375, inlinedAt: !518)
!525 = !DILocation(line: 180, column: 1, scope: !73)
!526 = !DISubprogram(name: "lzma_mf_find", scope: !83, file: !83, line: 310, type: !527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !529)
!527 = !DISubroutineType(types: !528)
!528 = !{!23, !81, !112, !101}
!529 = !{}
