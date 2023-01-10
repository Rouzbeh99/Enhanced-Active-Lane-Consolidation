; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, ptr, i64 }
%struct.lzma_coder_s = type { [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_decoder, %struct.lzma_length_decoder, %struct.lzma_range_decoder, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr, i32, i32, i32, i32 }
%struct.lzma_length_decoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.lzma_range_decoder = type { i32, i32, i32 }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }

@lzma_decode.next_state = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_decoder_create(ptr nocapture noundef %lz, ptr noundef %allocator, ptr nocapture noundef readonly %opt, ptr nocapture noundef writeonly %lz_options) local_unnamed_addr #0 !dbg !320 {
entry:
  call void @llvm.dbg.value(metadata ptr %lz, metadata !368, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !369, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %opt, metadata !370, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !371, metadata !DIExpression()), !dbg !405
  %0 = load ptr, ptr %lz, align 8, !dbg !406, !tbaa !408
  %cmp = icmp eq ptr %0, null, !dbg !413
  br i1 %cmp, label %if.then, label %if.end5, !dbg !414

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %allocator) #9, !dbg !415
  store ptr %call, ptr %lz, align 8, !dbg !417, !tbaa !408
  %cmp3 = icmp eq ptr %call, null, !dbg !418
  br i1 %cmp3, label %return, label %if.end, !dbg !420

if.end:                                           ; preds = %if.then
  %code = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 1, !dbg !421
  store ptr @lzma_decode, ptr %code, align 8, !dbg !422, !tbaa !423
  %reset = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 2, !dbg !424
  store ptr @lzma_decoder_reset, ptr %reset, align 8, !dbg !425, !tbaa !426
  %set_uncompressed = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 3, !dbg !427
  store ptr @lzma_decoder_uncompressed, ptr %set_uncompressed, align 8, !dbg !428, !tbaa !429
  br label %if.end5, !dbg !430

if.end5:                                          ; preds = %if.end, %entry
  call void @llvm.dbg.value(metadata ptr %opt, metadata !372, metadata !DIExpression()), !dbg !405
  %1 = load i32, ptr %opt, align 8, !dbg !431, !tbaa !432
  %conv = zext i32 %1 to i64, !dbg !435
  store i64 %conv, ptr %lz_options, align 8, !dbg !436, !tbaa !437
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 1, !dbg !440
  %2 = load ptr, ptr %preset_dict, align 8, !dbg !440, !tbaa !441
  %preset_dict7 = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !442
  store ptr %2, ptr %preset_dict7, align 8, !dbg !443, !tbaa !444
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 2, !dbg !445
  %3 = load i32, ptr %preset_dict_size, align 8, !dbg !445, !tbaa !446
  %conv8 = zext i32 %3 to i64, !dbg !447
  %preset_dict_size9 = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2, !dbg !448
  store i64 %conv8, ptr %preset_dict_size9, align 8, !dbg !449, !tbaa !450
  br label %return

return:                                           ; preds = %if.then, %if.end5
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 5, %if.then ], !dbg !405
  ret i32 %retval.0, !dbg !451
}

declare !dbg !452 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind uwtable
define internal i32 @lzma_decode(ptr noundef %pcoder, ptr noalias nocapture noundef %dictptr, ptr noalias noundef readonly %in, ptr noalias nocapture noundef %in_pos, i64 noundef %in_size) #2 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !258, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %dictptr, metadata !259, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %in, metadata !260, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !261, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !262, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !263, metadata !DIExpression()), !dbg !456
  %rc = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, !dbg !457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459), !dbg !462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463), !dbg !462
  call void @llvm.dbg.value(metadata ptr %rc, metadata !465, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata ptr %in, metadata !471, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !472, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !473, metadata !DIExpression()), !dbg !474
  %init_bytes_left.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i32 2
  %init_bytes_left.promoted.i = load i32, ptr %init_bytes_left.i, align 4, !tbaa !476, !noalias !478
  %cmp.not10.i = icmp eq i32 %init_bytes_left.promoted.i, 0, !dbg !479
  br i1 %cmp.not10.i, label %entry.if.end_crit_edge, label %while.body.lr.ph.i, !dbg !480

entry.if.end_crit_edge:                           ; preds = %entry
  %rc1.sroa.500.0.rc2.sroa_idx.phi.trans.insert = getelementptr inbounds i8, ptr %rc, i64 4
  %rc1.sroa.500.0.copyload.pre = load i32, ptr %rc1.sroa.500.0.rc2.sroa_idx.phi.trans.insert, align 4, !dbg !481, !tbaa.struct !482
  %.pre = load i64, ptr %in_pos, align 8, !dbg !481, !tbaa !484
  br label %if.end, !dbg !480

while.body.lr.ph.i:                               ; preds = %entry
  %code.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i32 1
  %in_pos.promoted.i = load i64, ptr %in_pos, align 8, !tbaa !484, !alias.scope !463, !noalias !459
  br label %while.body.i, !dbg !480

while.body.i:                                     ; preds = %if.end.i, %while.body.lr.ph.i
  %0 = phi i64 [ %in_pos.promoted.i, %while.body.lr.ph.i ], [ %inc.i, %if.end.i ]
  %dec911.i = phi i32 [ %init_bytes_left.promoted.i, %while.body.lr.ph.i ], [ %dec.i, %if.end.i ]
  %cmp1.i = icmp eq i64 %0, %in_size, !dbg !485
  br i1 %cmp1.i, label %cleanup, label %if.end.i, !dbg !488

if.end.i:                                         ; preds = %while.body.i
  %1 = load i32, ptr %code.i, align 4, !dbg !489, !tbaa !490, !noalias !478
  %shl.i = shl i32 %1, 8, !dbg !491
  %arrayidx.i = getelementptr inbounds i8, ptr %in, i64 %0, !dbg !492
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !492, !tbaa !493, !alias.scope !459, !noalias !463
  %conv.i = zext i8 %2 to i32, !dbg !492
  %or.i = or i32 %shl.i, %conv.i, !dbg !494
  store i32 %or.i, ptr %code.i, align 4, !dbg !495, !tbaa !490, !noalias !478
  %inc.i = add i64 %0, 1, !dbg !496
  store i64 %inc.i, ptr %in_pos, align 8, !dbg !496, !tbaa !484, !alias.scope !463, !noalias !459
  %dec.i = add i32 %dec911.i, -1, !dbg !497
  store i32 %dec.i, ptr %init_bytes_left.i, align 4, !dbg !497, !tbaa !476, !noalias !478
  %cmp.not.i = icmp eq i32 %dec.i, 0, !dbg !479
  br i1 %cmp.not.i, label %if.end, label %while.body.i, !dbg !480, !llvm.loop !498

if.end:                                           ; preds = %if.end.i, %entry.if.end_crit_edge
  %3 = phi i64 [ %.pre, %entry.if.end_crit_edge ], [ %inc.i, %if.end.i ], !dbg !481
  %rc1.sroa.500.0.copyload = phi i32 [ %rc1.sroa.500.0.copyload.pre, %entry.if.end_crit_edge ], [ %or.i, %if.end.i ], !dbg !481
  %dict.sroa.0.0.copyload = load ptr, ptr %dictptr, align 8, !dbg !502, !tbaa.struct !503
  call void @llvm.dbg.value(metadata ptr %dict.sroa.0.0.copyload, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !456
  %dict.sroa.12.0.dictptr.sroa_idx = getelementptr inbounds i8, ptr %dictptr, i64 8, !dbg !502
  %dict.sroa.12.0.copyload = load i64, ptr %dict.sroa.12.0.dictptr.sroa_idx, align 8, !dbg !502, !tbaa.struct !507
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.0.copyload, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %dict.sroa.36.0.dictptr.sroa_idx = getelementptr inbounds i8, ptr %dictptr, i64 16, !dbg !502
  %dict.sroa.36.0.copyload = load i64, ptr %dict.sroa.36.0.dictptr.sroa_idx, align 8, !dbg !502, !tbaa.struct !508
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.0.copyload, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  %dict.sroa.45.0.dictptr.sroa_idx = getelementptr inbounds i8, ptr %dictptr, i64 24, !dbg !502
  %dict.sroa.45.0.copyload = load i64, ptr %dict.sroa.45.0.dictptr.sroa_idx, align 8, !dbg !502, !tbaa.struct !509
  call void @llvm.dbg.value(metadata i64 %dict.sroa.45.0.copyload, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !456
  %dict.sroa.51.0.dictptr.sroa_idx = getelementptr inbounds i8, ptr %dictptr, i64 32, !dbg !502
  %dict.sroa.51.0.copyload = load i64, ptr %dict.sroa.51.0.dictptr.sroa_idx, align 8, !dbg !502, !tbaa.struct !510
  call void @llvm.dbg.value(metadata i64 %dict.sroa.51.0.copyload, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 undef, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.0.copyload, metadata !267, metadata !DIExpression()), !dbg !456
  %rc1.sroa.0.0.copyload = load i32, ptr %rc, align 4, !dbg !481, !tbaa.struct !511
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.0.copyload, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %rc1.sroa.500.0.rc2.sroa_idx = getelementptr inbounds i8, ptr %rc, i64 4, !dbg !481
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.0.copyload, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %rc1.sroa.856.0.rc2.sroa_idx = getelementptr inbounds i8, ptr %rc, i64 8, !dbg !481
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %3, metadata !270, metadata !DIExpression()), !dbg !456
  %state3 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, !dbg !512
  %4 = load i32, ptr %state3, align 8, !dbg !512, !tbaa !513
  call void @llvm.dbg.value(metadata i32 %4, metadata !272, metadata !DIExpression()), !dbg !456
  %rep04 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 14, !dbg !517
  %5 = load i32, ptr %rep04, align 4, !dbg !517, !tbaa !518
  call void @llvm.dbg.value(metadata i32 %5, metadata !273, metadata !DIExpression()), !dbg !456
  %rep15 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 15, !dbg !519
  %6 = load i32, ptr %rep15, align 8, !dbg !519, !tbaa !520
  call void @llvm.dbg.value(metadata i32 %6, metadata !274, metadata !DIExpression()), !dbg !456
  %rep26 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 16, !dbg !521
  %7 = load i32, ptr %rep26, align 4, !dbg !521, !tbaa !522
  call void @llvm.dbg.value(metadata i32 %7, metadata !275, metadata !DIExpression()), !dbg !456
  %rep37 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 17, !dbg !523
  %8 = load i32, ptr %rep37, align 8, !dbg !523, !tbaa !524
  call void @llvm.dbg.value(metadata i32 %8, metadata !276, metadata !DIExpression()), !dbg !456
  %pos_mask8 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, !dbg !525
  %9 = load i32, ptr %pos_mask8, align 4, !dbg !525, !tbaa !526
  call void @llvm.dbg.value(metadata i32 %9, metadata !277, metadata !DIExpression()), !dbg !456
  %probs9 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, !dbg !527
  %10 = load ptr, ptr %probs9, align 8, !dbg !527, !tbaa !528
  call void @llvm.dbg.value(metadata ptr %10, metadata !279, metadata !DIExpression()), !dbg !456
  %symbol10 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 24, !dbg !529
  %11 = load i32, ptr %symbol10, align 8, !dbg !529, !tbaa !530
  call void @llvm.dbg.value(metadata i32 %11, metadata !280, metadata !DIExpression()), !dbg !456
  %limit11 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 25, !dbg !531
  %12 = load i32, ptr %limit11, align 4, !dbg !531, !tbaa !532
  call void @llvm.dbg.value(metadata i32 %12, metadata !281, metadata !DIExpression()), !dbg !456
  %offset12 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 26, !dbg !533
  %13 = load i32, ptr %offset12, align 8, !dbg !533, !tbaa !534
  call void @llvm.dbg.value(metadata i32 %13, metadata !282, metadata !DIExpression()), !dbg !456
  %len13 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 27, !dbg !535
  %14 = load i32, ptr %len13, align 4, !dbg !535, !tbaa !536
  call void @llvm.dbg.value(metadata i32 %14, metadata !283, metadata !DIExpression()), !dbg !456
  %literal_pos_mask14 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 20, !dbg !537
  %15 = load i32, ptr %literal_pos_mask14, align 4, !dbg !537, !tbaa !538
  call void @llvm.dbg.value(metadata i32 %15, metadata !284, metadata !DIExpression()), !dbg !456
  %literal_context_bits15 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 19, !dbg !539
  %16 = load i32, ptr %literal_context_bits15, align 8, !dbg !539, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %16, metadata !285, metadata !DIExpression()), !dbg !456
  %17 = trunc i64 %dict.sroa.12.0.copyload to i32, !dbg !541
  %conv17 = and i32 %9, %17, !dbg !541
  call void @llvm.dbg.value(metadata i32 %conv17, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 0, metadata !287, metadata !DIExpression()), !dbg !456
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 21, !dbg !542
  %18 = load i64, ptr %uncompressed_size, align 8, !dbg !542, !tbaa !543
  %cmp.not = icmp ne i64 %18, -1, !dbg !544
  call void @llvm.dbg.value(metadata i1 %cmp.not, metadata !288, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !456
  %sub = sub i64 %dict.sroa.45.0.copyload, %dict.sroa.12.0.copyload
  %cmp23 = icmp ult i64 %18, %sub
  %or.cond7952 = select i1 %cmp.not, i1 %cmp23, i1 false, !dbg !545
  %add = add i64 %18, %dict.sroa.12.0.copyload
  %spec.select7962 = select i1 %or.cond7952, i64 %add, i64 %dict.sroa.45.0.copyload, !dbg !545
  call void @llvm.dbg.value(metadata i64 %spec.select7962, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !456
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, !dbg !547
  %19 = load i32, ptr %sequence, align 8, !dbg !547, !tbaa !548
  switch i32 %19, label %do.body5579 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %do.body101
    i32 3, label %do.body171
    i32 4, label %do.body242
    i32 5, label %do.body313
    i32 6, label %do.body384
    i32 7, label %do.body455
    i32 8, label %do.body526
    i32 9, label %do.body597
    i32 10, label %sw.bb670
    i32 11, label %sw.bb747
    i32 12, label %sw.bb825
    i32 13, label %sw.bb903
    i32 14, label %sw.bb981
    i32 15, label %sw.bb1059
    i32 16, label %sw.bb1137
    i32 17, label %sw.bb1215
    i32 18, label %sw.bb1295
    i32 19, label %do.body1325
    i32 20, label %do.body1377
    i32 21, label %do.body1423
    i32 22, label %do.body1513
    i32 23, label %do.body1604
    i32 24, label %do.body1713
    i32 25, label %do.body1760
    i32 26, label %do.body1850
    i32 27, label %do.body1941
    i32 28, label %do.body2052
    i32 29, label %do.body2132
    i32 30, label %do.body2213
    i32 31, label %do.body2294
    i32 32, label %do.body2375
    i32 33, label %do.body2456
    i32 34, label %do.body2537
    i32 35, label %do.body2618
    i32 36, label %do.body2714
    i32 37, label %do.body2785
    i32 38, label %do.body2856
    i32 39, label %do.body2927
    i32 40, label %do.body2998
    i32 41, label %do.body3069
    i32 42, label %sw.bb3155
    i32 43, label %sw.bb3526
    i32 44, label %do.body3576
    i32 45, label %do.body3652
    i32 46, label %do.body3729
    i32 47, label %do.body3806
    i32 48, label %do.body3887
    i32 49, label %do.body3939
    i32 51, label %do.body3988
    i32 50, label %sw.bb4045
    i32 52, label %do.body4094
    i32 53, label %do.body4162
    i32 54, label %do.body4239
    i32 55, label %do.body4286
    i32 56, label %do.body4377
    i32 57, label %do.body4468
    i32 58, label %do.body4577
    i32 59, label %do.body4625
    i32 60, label %do.body4716
    i32 61, label %do.body4807
    i32 62, label %do.body4918
    i32 63, label %do.body4999
    i32 64, label %do.body5080
    i32 65, label %do.body5161
    i32 66, label %do.body5242
    i32 67, label %do.body5323
    i32 68, label %do.body5404
    i32 69, label %do.body5485
    i32 70, label %sw.bb5573
  ], !dbg !549

while.body:                                       ; preds = %if.end.i7873, %if.end.i7853, %if.end71.i
  %dict.sroa.36.0 = phi i64 [ %314, %if.end71.i ], [ %93, %if.end.i7853 ], [ %234, %if.end.i7873 ], !dbg !550
  %dict.sroa.12.0 = phi i64 [ %dict.sroa.12.79, %if.end71.i ], [ %inc.i7851, %if.end.i7853 ], [ %inc.i7869, %if.end.i7873 ], !dbg !569
  %len.0 = phi i32 [ 0, %if.end71.i ], [ %len.19, %if.end.i7853 ], [ %len.54, %if.end.i7873 ], !dbg !572
  %rep0.0 = phi i32 [ %rep0.84, %if.end71.i ], [ %rep0.19, %if.end.i7853 ], [ %rep0.64, %if.end.i7873 ], !dbg !573
  %rep1.0 = phi i32 [ %rep1.74, %if.end71.i ], [ %rep1.19, %if.end.i7853 ], [ %rep1.54, %if.end.i7873 ], !dbg !574
  %rep2.0 = phi i32 [ %rep2.74, %if.end71.i ], [ %rep2.19, %if.end.i7853 ], [ %rep2.54, %if.end.i7873 ], !dbg !575
  %rep3.0 = phi i32 [ %rep3.74, %if.end71.i ], [ %rep3.19, %if.end.i7853 ], [ %rep3.54, %if.end.i7873 ], !dbg !576
  %state.0 = phi i32 [ %state.74, %if.end71.i ], [ %state.19, %if.end.i7853 ], [ %state.54, %if.end.i7873 ], !dbg !456
  %probs.0 = phi ptr [ %probs.73, %if.end71.i ], [ %probs.19, %if.end.i7853 ], [ %probs.53, %if.end.i7873 ], !dbg !456
  %symbol.0 = phi i32 [ %symbol.94, %if.end71.i ], [ %symbol.26, %if.end.i7853 ], [ %symbol.72, %if.end.i7873 ], !dbg !456
  %limit.0 = phi i32 [ %limit.79, %if.end71.i ], [ %limit.19, %if.end.i7853 ], [ %limit.59, %if.end.i7873 ], !dbg !577
  %offset.0 = phi i32 [ %offset.85, %if.end71.i ], [ %offset.26, %if.end.i7853 ], [ %offset.65, %if.end.i7873 ], !dbg !578
  %rc_in_pos.0 = phi i64 [ %rc_in_pos.150, %if.end71.i ], [ %rc_in_pos.36, %if.end.i7853 ], [ %rc_in_pos.112, %if.end.i7873 ], !dbg !456
  %rc1.sroa.0.0 = phi i32 [ %rc1.sroa.0.169, %if.end71.i ], [ %rc1.sroa.0.43, %if.end.i7853 ], [ %rc1.sroa.0.128, %if.end.i7873 ], !dbg !456
  %rc1.sroa.500.0 = phi i32 [ %rc1.sroa.500.169, %if.end71.i ], [ %rc1.sroa.500.43, %if.end.i7853 ], [ %rc1.sroa.500.128, %if.end.i7873 ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.0, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.0, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.0, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.0, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.0, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.0, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.0, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.0, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.0, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.0, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.0, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.0, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.0, metadata !273, metadata !DIExpression()), !dbg !456
  %20 = trunc i64 %dict.sroa.12.0 to i32, !dbg !579
  %conv33 = and i32 %9, %20, !dbg !579
  call void @llvm.dbg.value(metadata i32 %conv33, metadata !286, metadata !DIExpression()), !dbg !456
  br label %sw.bb, !dbg !580

sw.bb:                                            ; preds = %if.end, %if.end, %while.body
  %dict.sroa.36.1 = phi i64 [ %dict.sroa.36.0, %while.body ], [ %dict.sroa.36.0.copyload, %if.end ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.1 = phi i64 [ %dict.sroa.12.0, %while.body ], [ %dict.sroa.12.0.copyload, %if.end ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.1 = phi i32 [ %len.0, %while.body ], [ %14, %if.end ], [ %14, %if.end ], !dbg !456
  %rep0.1 = phi i32 [ %rep0.0, %while.body ], [ %5, %if.end ], [ %5, %if.end ], !dbg !573
  %rep1.1 = phi i32 [ %rep1.0, %while.body ], [ %6, %if.end ], [ %6, %if.end ], !dbg !574
  %rep2.1 = phi i32 [ %rep2.0, %while.body ], [ %7, %if.end ], [ %7, %if.end ], !dbg !575
  %rep3.1 = phi i32 [ %rep3.0, %while.body ], [ %8, %if.end ], [ %8, %if.end ], !dbg !576
  %state.1 = phi i32 [ %state.0, %while.body ], [ %4, %if.end ], [ %4, %if.end ], !dbg !581
  %probs.1 = phi ptr [ %probs.0, %while.body ], [ %10, %if.end ], [ %10, %if.end ], !dbg !582
  %symbol.1 = phi i32 [ %symbol.0, %while.body ], [ %11, %if.end ], [ %11, %if.end ], !dbg !583
  %limit.1 = phi i32 [ %limit.0, %while.body ], [ %12, %if.end ], [ %12, %if.end ], !dbg !577
  %offset.1 = phi i32 [ %offset.0, %while.body ], [ %13, %if.end ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.1 = phi i64 [ %rc_in_pos.0, %while.body ], [ %3, %if.end ], [ %3, %if.end ], !dbg !481
  %pos_state.0 = phi i32 [ %conv33, %while.body ], [ %conv17, %if.end ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.1 = phi i32 [ %rc1.sroa.0.0, %while.body ], [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !481
  %rc1.sroa.500.1 = phi i32 [ %rc1.sroa.500.0, %while.body ], [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !481
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.1, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.1, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.1, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.1, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.0, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.1, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.1, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.1, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.1, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.1, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.1, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.1, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.1, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.1, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.1, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp39 = icmp eq i64 %dict.sroa.12.1, %spec.select7962, !dbg !584
  %or.cond7954 = select i1 %cmp.not, i1 %cmp39, i1 false, !dbg !584
  br i1 %or.cond7954, label %do.body5579, label %do.body, !dbg !584

do.body:                                          ; preds = %sw.bb
  %cmp43 = icmp ult i32 %rc1.sroa.0.1, 16777216, !dbg !586
  br i1 %cmp43, label %if.then45, label %do.end, !dbg !589

if.then45:                                        ; preds = %do.body
  %cmp46 = icmp eq i64 %rc_in_pos.1, %in_size, !dbg !590
  br i1 %cmp46, label %if.then48, label %if.end50, !dbg !593

if.then48:                                        ; preds = %if.then45
  store i32 1, ptr %sequence, align 8, !dbg !594, !tbaa !548
  br label %out, !dbg !594

if.end50:                                         ; preds = %if.then45
  %shl = shl nuw i32 %rc1.sroa.0.1, 8, !dbg !593
  call void @llvm.dbg.value(metadata i32 %shl, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl52 = shl i32 %rc1.sroa.500.1, 8, !dbg !593
  %inc = add i64 %rc_in_pos.1, 1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %inc, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.1, !dbg !593
  %21 = load i8, ptr %arrayidx, align 1, !dbg !593, !tbaa !493
  %conv53 = zext i8 %21 to i32, !dbg !593
  %or = or i32 %shl52, %conv53, !dbg !593
  call void @llvm.dbg.value(metadata i32 %or, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end, !dbg !593

do.end:                                           ; preds = %if.end50, %do.body
  %rc_in_pos.2 = phi i64 [ %inc, %if.end50 ], [ %rc_in_pos.1, %do.body ], !dbg !456
  %rc1.sroa.0.2 = phi i32 [ %shl, %if.end50 ], [ %rc1.sroa.0.1, %do.body ], !dbg !456
  %rc1.sroa.500.2 = phi i32 [ %or, %if.end50 ], [ %rc1.sroa.500.1, %do.body ], !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.2, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.2, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.2, metadata !270, metadata !DIExpression()), !dbg !456
  %shr = lshr i32 %rc1.sroa.0.2, 11, !dbg !596
  %idxprom = zext i32 %state.1 to i64, !dbg !596
  %idxprom58 = zext i32 %pos_state.0 to i64, !dbg !596
  %arrayidx59 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i64 %idxprom, i64 %idxprom58, !dbg !596
  %22 = load i16, ptr %arrayidx59, align 2, !dbg !596, !tbaa !597
  %conv60 = zext i16 %22 to i32, !dbg !596
  %mul = mul i32 %shr, %conv60, !dbg !596
  call void @llvm.dbg.value(metadata i32 %mul, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp62 = icmp ult i32 %rc1.sroa.500.2, %mul, !dbg !598
  br i1 %cmp62, label %do.body65, label %do.body1302, !dbg !596

do.body65:                                        ; preds = %do.end
  call void @llvm.dbg.value(metadata i32 %mul, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub73 = sub nsw i32 2048, %conv60, !dbg !599
  %shr74 = lshr i32 %sub73, 5, !dbg !599
  %23 = trunc i32 %shr74 to i16, !dbg !599
  %conv82 = add i16 %22, %23, !dbg !599
  store i16 %conv82, ptr %arrayidx59, align 2, !dbg !599, !tbaa !597
  %conv86 = zext i32 %15 to i64, !dbg !601
  %and87 = and i64 %dict.sroa.12.1, %conv86, !dbg !601
  %sh_prom = zext i32 %16 to i64, !dbg !601
  %shl88 = shl i64 %and87, %sh_prom, !dbg !601
  call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i32 0, metadata !610, metadata !DIExpression()), !dbg !611
  %cmp.i.not = icmp eq i64 %dict.sroa.12.1, 0, !dbg !613
  %spec.select7955 = select i1 %cmp.i.not, i64 %dict.sroa.51.0.copyload, i64 0, !dbg !614
  %sub1.i = add i64 %dict.sroa.12.1, -1, !dbg !615
  %add.i = add i64 %sub1.i, %spec.select7955, !dbg !616
  %arrayidx.i7838 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %add.i, !dbg !617
  %24 = load i8, ptr %arrayidx.i7838, align 1, !dbg !617, !tbaa !493
  %conv90 = zext i8 %24 to i32, !dbg !601
  %sub91 = sub i32 8, %16, !dbg !601
  %shr92 = lshr i32 %conv90, %sub91, !dbg !601
  %25 = zext i32 %shr92 to i64
  %add94 = add i64 %shl88, %25, !dbg !601
  %arrayidx95 = getelementptr inbounds [16 x [768 x i16]], ptr %pcoder, i64 0, i64 %add94, !dbg !601
  call void @llvm.dbg.value(metadata ptr %arrayidx95, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  %cmp96 = icmp ult i32 %state.1, 7, !dbg !618
  br i1 %cmp96, label %do.body101, label %if.else666, !dbg !619

do.body101:                                       ; preds = %do.body65, %if.end
  %dict.sroa.36.2 = phi i64 [ %dict.sroa.36.1, %do.body65 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.2 = phi i64 [ %dict.sroa.12.1, %do.body65 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.2 = phi i32 [ %len.1, %do.body65 ], [ %14, %if.end ], !dbg !456
  %rep0.2 = phi i32 [ %rep0.1, %do.body65 ], [ %5, %if.end ], !dbg !573
  %rep1.2 = phi i32 [ %rep1.1, %do.body65 ], [ %6, %if.end ], !dbg !574
  %rep2.2 = phi i32 [ %rep2.1, %do.body65 ], [ %7, %if.end ], !dbg !575
  %rep3.2 = phi i32 [ %rep3.1, %do.body65 ], [ %8, %if.end ], !dbg !576
  %state.2 = phi i32 [ %state.1, %do.body65 ], [ %4, %if.end ], !dbg !581
  %probs.2 = phi ptr [ %arrayidx95, %do.body65 ], [ %10, %if.end ], !dbg !456
  %symbol.2 = phi i32 [ 1, %do.body65 ], [ %11, %if.end ], !dbg !456
  %limit.2 = phi i32 [ %limit.1, %do.body65 ], [ %12, %if.end ], !dbg !577
  %offset.2 = phi i32 [ %offset.1, %do.body65 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.3 = phi i64 [ %rc_in_pos.2, %do.body65 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.3 = phi i32 [ %mul, %do.body65 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.3 = phi i32 [ %rc1.sroa.500.2, %do.body65 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.2, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.2, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.3, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.3, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.3, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.2, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.2, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.2, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.2, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.2, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.2, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.2, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.2, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.2, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp103 = icmp ult i32 %rc1.sroa.0.3, 16777216, !dbg !620
  br i1 %cmp103, label %if.then105, label %do.end122, !dbg !625

if.then105:                                       ; preds = %do.body101
  %cmp106 = icmp eq i64 %rc_in_pos.3, %in_size, !dbg !626
  br i1 %cmp106, label %if.then108, label %if.end110, !dbg !629

if.then108:                                       ; preds = %if.then105
  store i32 2, ptr %sequence, align 8, !dbg !630, !tbaa !548
  br label %out, !dbg !630

if.end110:                                        ; preds = %if.then105
  %shl112 = shl nuw i32 %rc1.sroa.0.3, 8, !dbg !629
  call void @llvm.dbg.value(metadata i32 %shl112, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl114 = shl i32 %rc1.sroa.500.3, 8, !dbg !629
  %inc115 = add i64 %rc_in_pos.3, 1, !dbg !629
  call void @llvm.dbg.value(metadata i64 %inc115, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx116 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.3, !dbg !629
  %26 = load i8, ptr %arrayidx116, align 1, !dbg !629, !tbaa !493
  %conv117 = zext i8 %26 to i32, !dbg !629
  %or118 = or i32 %shl114, %conv117, !dbg !629
  call void @llvm.dbg.value(metadata i32 %or118, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end122, !dbg !629

do.end122:                                        ; preds = %if.end110, %do.body101
  %rc_in_pos.4 = phi i64 [ %inc115, %if.end110 ], [ %rc_in_pos.3, %do.body101 ], !dbg !632
  %rc1.sroa.0.4 = phi i32 [ %shl112, %if.end110 ], [ %rc1.sroa.0.3, %do.body101 ], !dbg !633
  %rc1.sroa.500.4 = phi i32 [ %or118, %if.end110 ], [ %rc1.sroa.500.3, %do.body101 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.4, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.4, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.4, metadata !270, metadata !DIExpression()), !dbg !456
  %shr124 = lshr i32 %rc1.sroa.0.4, 11, !dbg !634
  %idxprom125 = zext i32 %symbol.2 to i64, !dbg !634
  %arrayidx126 = getelementptr inbounds i16, ptr %probs.2, i64 %idxprom125, !dbg !634
  %27 = load i16, ptr %arrayidx126, align 2, !dbg !634, !tbaa !597
  %conv127 = zext i16 %27 to i32, !dbg !634
  %mul128 = mul i32 %shr124, %conv127, !dbg !634
  call void @llvm.dbg.value(metadata i32 %mul128, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp130 = icmp ult i32 %rc1.sroa.500.4, %mul128, !dbg !635
  br i1 %cmp130, label %do.body133, label %do.body148, !dbg !634

do.body133:                                       ; preds = %do.end122
  call void @llvm.dbg.value(metadata i32 %mul128, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub138 = sub nsw i32 2048, %conv127, !dbg !637
  %shr139 = lshr i32 %sub138, 5, !dbg !637
  %28 = trunc i32 %shr139 to i16, !dbg !637
  %conv144 = add i16 %27, %28, !dbg !637
  store i16 %conv144, ptr %arrayidx126, align 2, !dbg !637, !tbaa !597
  %shl147 = shl i32 %symbol.2, 1, !dbg !640
  call void @llvm.dbg.value(metadata i32 %shl147, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body171, !dbg !640

do.body148:                                       ; preds = %do.end122
  %sub150 = sub i32 %rc1.sroa.0.4, %mul128, !dbg !641
  call void @llvm.dbg.value(metadata i32 %sub150, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub152 = sub i32 %rc1.sroa.500.4, %mul128, !dbg !641
  call void @llvm.dbg.value(metadata i32 %sub152, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %29 = lshr i16 %27, 5, !dbg !641
  %sub160 = sub i16 %27, %29, !dbg !641
  store i16 %sub160, ptr %arrayidx126, align 2, !dbg !641, !tbaa !597
  %shl164 = shl i32 %symbol.2, 1, !dbg !644
  %add165 = or i32 %shl164, 1, !dbg !644
  call void @llvm.dbg.value(metadata i32 %add165, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body171

do.body171:                                       ; preds = %do.body133, %do.body148, %if.end
  %dict.sroa.36.3 = phi i64 [ %dict.sroa.36.2, %do.body133 ], [ %dict.sroa.36.2, %do.body148 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.3 = phi i64 [ %dict.sroa.12.2, %do.body133 ], [ %dict.sroa.12.2, %do.body148 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.3 = phi i32 [ %len.2, %do.body133 ], [ %len.2, %do.body148 ], [ %14, %if.end ], !dbg !456
  %rep0.3 = phi i32 [ %rep0.2, %do.body133 ], [ %rep0.2, %do.body148 ], [ %5, %if.end ], !dbg !573
  %rep1.3 = phi i32 [ %rep1.2, %do.body133 ], [ %rep1.2, %do.body148 ], [ %6, %if.end ], !dbg !574
  %rep2.3 = phi i32 [ %rep2.2, %do.body133 ], [ %rep2.2, %do.body148 ], [ %7, %if.end ], !dbg !575
  %rep3.3 = phi i32 [ %rep3.2, %do.body133 ], [ %rep3.2, %do.body148 ], [ %8, %if.end ], !dbg !576
  %state.3 = phi i32 [ %state.2, %do.body133 ], [ %state.2, %do.body148 ], [ %4, %if.end ], !dbg !581
  %probs.3 = phi ptr [ %probs.2, %do.body133 ], [ %probs.2, %do.body148 ], [ %10, %if.end ], !dbg !456
  %symbol.3 = phi i32 [ %shl147, %do.body133 ], [ %add165, %do.body148 ], [ %11, %if.end ], !dbg !456
  %limit.3 = phi i32 [ %limit.2, %do.body133 ], [ %limit.2, %do.body148 ], [ %12, %if.end ], !dbg !577
  %offset.3 = phi i32 [ %offset.2, %do.body133 ], [ %offset.2, %do.body148 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.5 = phi i64 [ %rc_in_pos.4, %do.body133 ], [ %rc_in_pos.4, %do.body148 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.5 = phi i32 [ %mul128, %do.body133 ], [ %sub150, %do.body148 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.5 = phi i32 [ %rc1.sroa.500.4, %do.body133 ], [ %sub152, %do.body148 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.3, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.3, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.5, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.5, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.5, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.3, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.3, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.3, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.3, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.3, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.3, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.3, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.3, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.3, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp173 = icmp ult i32 %rc1.sroa.0.5, 16777216, !dbg !645
  br i1 %cmp173, label %if.then175, label %do.end192, !dbg !649

if.then175:                                       ; preds = %do.body171
  %cmp176 = icmp eq i64 %rc_in_pos.5, %in_size, !dbg !650
  br i1 %cmp176, label %if.then178, label %if.end180, !dbg !653

if.then178:                                       ; preds = %if.then175
  store i32 3, ptr %sequence, align 8, !dbg !654, !tbaa !548
  br label %out, !dbg !654

if.end180:                                        ; preds = %if.then175
  %shl182 = shl nuw i32 %rc1.sroa.0.5, 8, !dbg !653
  call void @llvm.dbg.value(metadata i32 %shl182, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl184 = shl i32 %rc1.sroa.500.5, 8, !dbg !653
  %inc185 = add i64 %rc_in_pos.5, 1, !dbg !653
  call void @llvm.dbg.value(metadata i64 %inc185, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx186 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.5, !dbg !653
  %30 = load i8, ptr %arrayidx186, align 1, !dbg !653, !tbaa !493
  %conv187 = zext i8 %30 to i32, !dbg !653
  %or188 = or i32 %shl184, %conv187, !dbg !653
  call void @llvm.dbg.value(metadata i32 %or188, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end192, !dbg !653

do.end192:                                        ; preds = %if.end180, %do.body171
  %rc_in_pos.6 = phi i64 [ %inc185, %if.end180 ], [ %rc_in_pos.5, %do.body171 ], !dbg !656
  %rc1.sroa.0.6 = phi i32 [ %shl182, %if.end180 ], [ %rc1.sroa.0.5, %do.body171 ], !dbg !656
  %rc1.sroa.500.6 = phi i32 [ %or188, %if.end180 ], [ %rc1.sroa.500.5, %do.body171 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.6, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.6, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.6, metadata !270, metadata !DIExpression()), !dbg !456
  %shr194 = lshr i32 %rc1.sroa.0.6, 11, !dbg !657
  %idxprom195 = zext i32 %symbol.3 to i64, !dbg !657
  %arrayidx196 = getelementptr inbounds i16, ptr %probs.3, i64 %idxprom195, !dbg !657
  %31 = load i16, ptr %arrayidx196, align 2, !dbg !657, !tbaa !597
  %conv197 = zext i16 %31 to i32, !dbg !657
  %mul198 = mul i32 %shr194, %conv197, !dbg !657
  call void @llvm.dbg.value(metadata i32 %mul198, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp200 = icmp ult i32 %rc1.sroa.500.6, %mul198, !dbg !658
  br i1 %cmp200, label %do.body203, label %do.body219, !dbg !657

do.body203:                                       ; preds = %do.end192
  call void @llvm.dbg.value(metadata i32 %mul198, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub208 = sub nsw i32 2048, %conv197, !dbg !660
  %shr209 = lshr i32 %sub208, 5, !dbg !660
  %32 = trunc i32 %shr209 to i16, !dbg !660
  %conv214 = add i16 %31, %32, !dbg !660
  store i16 %conv214, ptr %arrayidx196, align 2, !dbg !660, !tbaa !597
  %shl217 = shl i32 %symbol.3, 1, !dbg !663
  call void @llvm.dbg.value(metadata i32 %shl217, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body242, !dbg !663

do.body219:                                       ; preds = %do.end192
  %sub221 = sub i32 %rc1.sroa.0.6, %mul198, !dbg !664
  call void @llvm.dbg.value(metadata i32 %sub221, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub223 = sub i32 %rc1.sroa.500.6, %mul198, !dbg !664
  call void @llvm.dbg.value(metadata i32 %sub223, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %33 = lshr i16 %31, 5, !dbg !664
  %sub231 = sub i16 %31, %33, !dbg !664
  store i16 %sub231, ptr %arrayidx196, align 2, !dbg !664, !tbaa !597
  %shl235 = shl i32 %symbol.3, 1, !dbg !667
  %add236 = or i32 %shl235, 1, !dbg !667
  call void @llvm.dbg.value(metadata i32 %add236, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body242

do.body242:                                       ; preds = %do.body203, %do.body219, %if.end
  %dict.sroa.36.4 = phi i64 [ %dict.sroa.36.3, %do.body203 ], [ %dict.sroa.36.3, %do.body219 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.4 = phi i64 [ %dict.sroa.12.3, %do.body203 ], [ %dict.sroa.12.3, %do.body219 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.4 = phi i32 [ %len.3, %do.body203 ], [ %len.3, %do.body219 ], [ %14, %if.end ], !dbg !456
  %rep0.4 = phi i32 [ %rep0.3, %do.body203 ], [ %rep0.3, %do.body219 ], [ %5, %if.end ], !dbg !573
  %rep1.4 = phi i32 [ %rep1.3, %do.body203 ], [ %rep1.3, %do.body219 ], [ %6, %if.end ], !dbg !574
  %rep2.4 = phi i32 [ %rep2.3, %do.body203 ], [ %rep2.3, %do.body219 ], [ %7, %if.end ], !dbg !575
  %rep3.4 = phi i32 [ %rep3.3, %do.body203 ], [ %rep3.3, %do.body219 ], [ %8, %if.end ], !dbg !576
  %state.4 = phi i32 [ %state.3, %do.body203 ], [ %state.3, %do.body219 ], [ %4, %if.end ], !dbg !581
  %probs.4 = phi ptr [ %probs.3, %do.body203 ], [ %probs.3, %do.body219 ], [ %10, %if.end ], !dbg !456
  %symbol.4 = phi i32 [ %shl217, %do.body203 ], [ %add236, %do.body219 ], [ %11, %if.end ], !dbg !456
  %limit.4 = phi i32 [ %limit.3, %do.body203 ], [ %limit.3, %do.body219 ], [ %12, %if.end ], !dbg !577
  %offset.4 = phi i32 [ %offset.3, %do.body203 ], [ %offset.3, %do.body219 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.7 = phi i64 [ %rc_in_pos.6, %do.body203 ], [ %rc_in_pos.6, %do.body219 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.7 = phi i32 [ %mul198, %do.body203 ], [ %sub221, %do.body219 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.7 = phi i32 [ %rc1.sroa.500.6, %do.body203 ], [ %sub223, %do.body219 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.4, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.4, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.7, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.7, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.7, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.4, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.4, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.4, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.4, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.4, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.4, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.4, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.4, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.4, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp244 = icmp ult i32 %rc1.sroa.0.7, 16777216, !dbg !668
  br i1 %cmp244, label %if.then246, label %do.end263, !dbg !672

if.then246:                                       ; preds = %do.body242
  %cmp247 = icmp eq i64 %rc_in_pos.7, %in_size, !dbg !673
  br i1 %cmp247, label %if.then249, label %if.end251, !dbg !676

if.then249:                                       ; preds = %if.then246
  store i32 4, ptr %sequence, align 8, !dbg !677, !tbaa !548
  br label %out, !dbg !677

if.end251:                                        ; preds = %if.then246
  %shl253 = shl nuw i32 %rc1.sroa.0.7, 8, !dbg !676
  call void @llvm.dbg.value(metadata i32 %shl253, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl255 = shl i32 %rc1.sroa.500.7, 8, !dbg !676
  %inc256 = add i64 %rc_in_pos.7, 1, !dbg !676
  call void @llvm.dbg.value(metadata i64 %inc256, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx257 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.7, !dbg !676
  %34 = load i8, ptr %arrayidx257, align 1, !dbg !676, !tbaa !493
  %conv258 = zext i8 %34 to i32, !dbg !676
  %or259 = or i32 %shl255, %conv258, !dbg !676
  call void @llvm.dbg.value(metadata i32 %or259, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end263, !dbg !676

do.end263:                                        ; preds = %if.end251, %do.body242
  %rc_in_pos.8 = phi i64 [ %inc256, %if.end251 ], [ %rc_in_pos.7, %do.body242 ], !dbg !656
  %rc1.sroa.0.8 = phi i32 [ %shl253, %if.end251 ], [ %rc1.sroa.0.7, %do.body242 ], !dbg !656
  %rc1.sroa.500.8 = phi i32 [ %or259, %if.end251 ], [ %rc1.sroa.500.7, %do.body242 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.8, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.8, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.8, metadata !270, metadata !DIExpression()), !dbg !456
  %shr265 = lshr i32 %rc1.sroa.0.8, 11, !dbg !679
  %idxprom266 = zext i32 %symbol.4 to i64, !dbg !679
  %arrayidx267 = getelementptr inbounds i16, ptr %probs.4, i64 %idxprom266, !dbg !679
  %35 = load i16, ptr %arrayidx267, align 2, !dbg !679, !tbaa !597
  %conv268 = zext i16 %35 to i32, !dbg !679
  %mul269 = mul i32 %shr265, %conv268, !dbg !679
  call void @llvm.dbg.value(metadata i32 %mul269, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp271 = icmp ult i32 %rc1.sroa.500.8, %mul269, !dbg !680
  br i1 %cmp271, label %do.body274, label %do.body290, !dbg !679

do.body274:                                       ; preds = %do.end263
  call void @llvm.dbg.value(metadata i32 %mul269, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub279 = sub nsw i32 2048, %conv268, !dbg !682
  %shr280 = lshr i32 %sub279, 5, !dbg !682
  %36 = trunc i32 %shr280 to i16, !dbg !682
  %conv285 = add i16 %35, %36, !dbg !682
  store i16 %conv285, ptr %arrayidx267, align 2, !dbg !682, !tbaa !597
  %shl288 = shl i32 %symbol.4, 1, !dbg !685
  call void @llvm.dbg.value(metadata i32 %shl288, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body313, !dbg !685

do.body290:                                       ; preds = %do.end263
  %sub292 = sub i32 %rc1.sroa.0.8, %mul269, !dbg !686
  call void @llvm.dbg.value(metadata i32 %sub292, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub294 = sub i32 %rc1.sroa.500.8, %mul269, !dbg !686
  call void @llvm.dbg.value(metadata i32 %sub294, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %37 = lshr i16 %35, 5, !dbg !686
  %sub302 = sub i16 %35, %37, !dbg !686
  store i16 %sub302, ptr %arrayidx267, align 2, !dbg !686, !tbaa !597
  %shl306 = shl i32 %symbol.4, 1, !dbg !689
  %add307 = or i32 %shl306, 1, !dbg !689
  call void @llvm.dbg.value(metadata i32 %add307, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body313

do.body313:                                       ; preds = %do.body274, %do.body290, %if.end
  %dict.sroa.36.5 = phi i64 [ %dict.sroa.36.4, %do.body274 ], [ %dict.sroa.36.4, %do.body290 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.5 = phi i64 [ %dict.sroa.12.4, %do.body274 ], [ %dict.sroa.12.4, %do.body290 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.5 = phi i32 [ %len.4, %do.body274 ], [ %len.4, %do.body290 ], [ %14, %if.end ], !dbg !456
  %rep0.5 = phi i32 [ %rep0.4, %do.body274 ], [ %rep0.4, %do.body290 ], [ %5, %if.end ], !dbg !573
  %rep1.5 = phi i32 [ %rep1.4, %do.body274 ], [ %rep1.4, %do.body290 ], [ %6, %if.end ], !dbg !574
  %rep2.5 = phi i32 [ %rep2.4, %do.body274 ], [ %rep2.4, %do.body290 ], [ %7, %if.end ], !dbg !575
  %rep3.5 = phi i32 [ %rep3.4, %do.body274 ], [ %rep3.4, %do.body290 ], [ %8, %if.end ], !dbg !576
  %state.5 = phi i32 [ %state.4, %do.body274 ], [ %state.4, %do.body290 ], [ %4, %if.end ], !dbg !581
  %probs.5 = phi ptr [ %probs.4, %do.body274 ], [ %probs.4, %do.body290 ], [ %10, %if.end ], !dbg !456
  %symbol.5 = phi i32 [ %shl288, %do.body274 ], [ %add307, %do.body290 ], [ %11, %if.end ], !dbg !456
  %limit.5 = phi i32 [ %limit.4, %do.body274 ], [ %limit.4, %do.body290 ], [ %12, %if.end ], !dbg !577
  %offset.5 = phi i32 [ %offset.4, %do.body274 ], [ %offset.4, %do.body290 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.9 = phi i64 [ %rc_in_pos.8, %do.body274 ], [ %rc_in_pos.8, %do.body290 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.9 = phi i32 [ %mul269, %do.body274 ], [ %sub292, %do.body290 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.9 = phi i32 [ %rc1.sroa.500.8, %do.body274 ], [ %sub294, %do.body290 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.5, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.5, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.9, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.9, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.9, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.5, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.5, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.5, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.5, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.5, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.5, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.5, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.5, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.5, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp315 = icmp ult i32 %rc1.sroa.0.9, 16777216, !dbg !690
  br i1 %cmp315, label %if.then317, label %do.end334, !dbg !694

if.then317:                                       ; preds = %do.body313
  %cmp318 = icmp eq i64 %rc_in_pos.9, %in_size, !dbg !695
  br i1 %cmp318, label %if.then320, label %if.end322, !dbg !698

if.then320:                                       ; preds = %if.then317
  store i32 5, ptr %sequence, align 8, !dbg !699, !tbaa !548
  br label %out, !dbg !699

if.end322:                                        ; preds = %if.then317
  %shl324 = shl nuw i32 %rc1.sroa.0.9, 8, !dbg !698
  call void @llvm.dbg.value(metadata i32 %shl324, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl326 = shl i32 %rc1.sroa.500.9, 8, !dbg !698
  %inc327 = add i64 %rc_in_pos.9, 1, !dbg !698
  call void @llvm.dbg.value(metadata i64 %inc327, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx328 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.9, !dbg !698
  %38 = load i8, ptr %arrayidx328, align 1, !dbg !698, !tbaa !493
  %conv329 = zext i8 %38 to i32, !dbg !698
  %or330 = or i32 %shl326, %conv329, !dbg !698
  call void @llvm.dbg.value(metadata i32 %or330, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end334, !dbg !698

do.end334:                                        ; preds = %if.end322, %do.body313
  %rc_in_pos.10 = phi i64 [ %inc327, %if.end322 ], [ %rc_in_pos.9, %do.body313 ], !dbg !656
  %rc1.sroa.0.10 = phi i32 [ %shl324, %if.end322 ], [ %rc1.sroa.0.9, %do.body313 ], !dbg !656
  %rc1.sroa.500.10 = phi i32 [ %or330, %if.end322 ], [ %rc1.sroa.500.9, %do.body313 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.10, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.10, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.10, metadata !270, metadata !DIExpression()), !dbg !456
  %shr336 = lshr i32 %rc1.sroa.0.10, 11, !dbg !701
  %idxprom337 = zext i32 %symbol.5 to i64, !dbg !701
  %arrayidx338 = getelementptr inbounds i16, ptr %probs.5, i64 %idxprom337, !dbg !701
  %39 = load i16, ptr %arrayidx338, align 2, !dbg !701, !tbaa !597
  %conv339 = zext i16 %39 to i32, !dbg !701
  %mul340 = mul i32 %shr336, %conv339, !dbg !701
  call void @llvm.dbg.value(metadata i32 %mul340, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp342 = icmp ult i32 %rc1.sroa.500.10, %mul340, !dbg !702
  br i1 %cmp342, label %do.body345, label %do.body361, !dbg !701

do.body345:                                       ; preds = %do.end334
  call void @llvm.dbg.value(metadata i32 %mul340, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub350 = sub nsw i32 2048, %conv339, !dbg !704
  %shr351 = lshr i32 %sub350, 5, !dbg !704
  %40 = trunc i32 %shr351 to i16, !dbg !704
  %conv356 = add i16 %39, %40, !dbg !704
  store i16 %conv356, ptr %arrayidx338, align 2, !dbg !704, !tbaa !597
  %shl359 = shl i32 %symbol.5, 1, !dbg !707
  call void @llvm.dbg.value(metadata i32 %shl359, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body384, !dbg !707

do.body361:                                       ; preds = %do.end334
  %sub363 = sub i32 %rc1.sroa.0.10, %mul340, !dbg !708
  call void @llvm.dbg.value(metadata i32 %sub363, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub365 = sub i32 %rc1.sroa.500.10, %mul340, !dbg !708
  call void @llvm.dbg.value(metadata i32 %sub365, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %41 = lshr i16 %39, 5, !dbg !708
  %sub373 = sub i16 %39, %41, !dbg !708
  store i16 %sub373, ptr %arrayidx338, align 2, !dbg !708, !tbaa !597
  %shl377 = shl i32 %symbol.5, 1, !dbg !711
  %add378 = or i32 %shl377, 1, !dbg !711
  call void @llvm.dbg.value(metadata i32 %add378, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body384

do.body384:                                       ; preds = %do.body345, %do.body361, %if.end
  %dict.sroa.36.6 = phi i64 [ %dict.sroa.36.5, %do.body345 ], [ %dict.sroa.36.5, %do.body361 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.6 = phi i64 [ %dict.sroa.12.5, %do.body345 ], [ %dict.sroa.12.5, %do.body361 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.6 = phi i32 [ %len.5, %do.body345 ], [ %len.5, %do.body361 ], [ %14, %if.end ], !dbg !456
  %rep0.6 = phi i32 [ %rep0.5, %do.body345 ], [ %rep0.5, %do.body361 ], [ %5, %if.end ], !dbg !573
  %rep1.6 = phi i32 [ %rep1.5, %do.body345 ], [ %rep1.5, %do.body361 ], [ %6, %if.end ], !dbg !574
  %rep2.6 = phi i32 [ %rep2.5, %do.body345 ], [ %rep2.5, %do.body361 ], [ %7, %if.end ], !dbg !575
  %rep3.6 = phi i32 [ %rep3.5, %do.body345 ], [ %rep3.5, %do.body361 ], [ %8, %if.end ], !dbg !576
  %state.6 = phi i32 [ %state.5, %do.body345 ], [ %state.5, %do.body361 ], [ %4, %if.end ], !dbg !581
  %probs.6 = phi ptr [ %probs.5, %do.body345 ], [ %probs.5, %do.body361 ], [ %10, %if.end ], !dbg !456
  %symbol.6 = phi i32 [ %shl359, %do.body345 ], [ %add378, %do.body361 ], [ %11, %if.end ], !dbg !456
  %limit.6 = phi i32 [ %limit.5, %do.body345 ], [ %limit.5, %do.body361 ], [ %12, %if.end ], !dbg !577
  %offset.6 = phi i32 [ %offset.5, %do.body345 ], [ %offset.5, %do.body361 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.11 = phi i64 [ %rc_in_pos.10, %do.body345 ], [ %rc_in_pos.10, %do.body361 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.11 = phi i32 [ %mul340, %do.body345 ], [ %sub363, %do.body361 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.11 = phi i32 [ %rc1.sroa.500.10, %do.body345 ], [ %sub365, %do.body361 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.6, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.6, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.11, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.11, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.11, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.6, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.6, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.6, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.6, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.6, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.6, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.6, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.6, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.6, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp386 = icmp ult i32 %rc1.sroa.0.11, 16777216, !dbg !712
  br i1 %cmp386, label %if.then388, label %do.end405, !dbg !716

if.then388:                                       ; preds = %do.body384
  %cmp389 = icmp eq i64 %rc_in_pos.11, %in_size, !dbg !717
  br i1 %cmp389, label %if.then391, label %if.end393, !dbg !720

if.then391:                                       ; preds = %if.then388
  store i32 6, ptr %sequence, align 8, !dbg !721, !tbaa !548
  br label %out, !dbg !721

if.end393:                                        ; preds = %if.then388
  %shl395 = shl nuw i32 %rc1.sroa.0.11, 8, !dbg !720
  call void @llvm.dbg.value(metadata i32 %shl395, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl397 = shl i32 %rc1.sroa.500.11, 8, !dbg !720
  %inc398 = add i64 %rc_in_pos.11, 1, !dbg !720
  call void @llvm.dbg.value(metadata i64 %inc398, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx399 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.11, !dbg !720
  %42 = load i8, ptr %arrayidx399, align 1, !dbg !720, !tbaa !493
  %conv400 = zext i8 %42 to i32, !dbg !720
  %or401 = or i32 %shl397, %conv400, !dbg !720
  call void @llvm.dbg.value(metadata i32 %or401, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end405, !dbg !720

do.end405:                                        ; preds = %if.end393, %do.body384
  %rc_in_pos.12 = phi i64 [ %inc398, %if.end393 ], [ %rc_in_pos.11, %do.body384 ], !dbg !656
  %rc1.sroa.0.12 = phi i32 [ %shl395, %if.end393 ], [ %rc1.sroa.0.11, %do.body384 ], !dbg !656
  %rc1.sroa.500.12 = phi i32 [ %or401, %if.end393 ], [ %rc1.sroa.500.11, %do.body384 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.12, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.12, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.12, metadata !270, metadata !DIExpression()), !dbg !456
  %shr407 = lshr i32 %rc1.sroa.0.12, 11, !dbg !723
  %idxprom408 = zext i32 %symbol.6 to i64, !dbg !723
  %arrayidx409 = getelementptr inbounds i16, ptr %probs.6, i64 %idxprom408, !dbg !723
  %43 = load i16, ptr %arrayidx409, align 2, !dbg !723, !tbaa !597
  %conv410 = zext i16 %43 to i32, !dbg !723
  %mul411 = mul i32 %shr407, %conv410, !dbg !723
  call void @llvm.dbg.value(metadata i32 %mul411, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp413 = icmp ult i32 %rc1.sroa.500.12, %mul411, !dbg !724
  br i1 %cmp413, label %do.body416, label %do.body432, !dbg !723

do.body416:                                       ; preds = %do.end405
  call void @llvm.dbg.value(metadata i32 %mul411, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub421 = sub nsw i32 2048, %conv410, !dbg !726
  %shr422 = lshr i32 %sub421, 5, !dbg !726
  %44 = trunc i32 %shr422 to i16, !dbg !726
  %conv427 = add i16 %43, %44, !dbg !726
  store i16 %conv427, ptr %arrayidx409, align 2, !dbg !726, !tbaa !597
  %shl430 = shl i32 %symbol.6, 1, !dbg !729
  call void @llvm.dbg.value(metadata i32 %shl430, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body455, !dbg !729

do.body432:                                       ; preds = %do.end405
  %sub434 = sub i32 %rc1.sroa.0.12, %mul411, !dbg !730
  call void @llvm.dbg.value(metadata i32 %sub434, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub436 = sub i32 %rc1.sroa.500.12, %mul411, !dbg !730
  call void @llvm.dbg.value(metadata i32 %sub436, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %45 = lshr i16 %43, 5, !dbg !730
  %sub444 = sub i16 %43, %45, !dbg !730
  store i16 %sub444, ptr %arrayidx409, align 2, !dbg !730, !tbaa !597
  %shl448 = shl i32 %symbol.6, 1, !dbg !733
  %add449 = or i32 %shl448, 1, !dbg !733
  call void @llvm.dbg.value(metadata i32 %add449, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body455

do.body455:                                       ; preds = %do.body416, %do.body432, %if.end
  %dict.sroa.36.7 = phi i64 [ %dict.sroa.36.6, %do.body416 ], [ %dict.sroa.36.6, %do.body432 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.7 = phi i64 [ %dict.sroa.12.6, %do.body416 ], [ %dict.sroa.12.6, %do.body432 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.7 = phi i32 [ %len.6, %do.body416 ], [ %len.6, %do.body432 ], [ %14, %if.end ], !dbg !456
  %rep0.7 = phi i32 [ %rep0.6, %do.body416 ], [ %rep0.6, %do.body432 ], [ %5, %if.end ], !dbg !573
  %rep1.7 = phi i32 [ %rep1.6, %do.body416 ], [ %rep1.6, %do.body432 ], [ %6, %if.end ], !dbg !574
  %rep2.7 = phi i32 [ %rep2.6, %do.body416 ], [ %rep2.6, %do.body432 ], [ %7, %if.end ], !dbg !575
  %rep3.7 = phi i32 [ %rep3.6, %do.body416 ], [ %rep3.6, %do.body432 ], [ %8, %if.end ], !dbg !576
  %state.7 = phi i32 [ %state.6, %do.body416 ], [ %state.6, %do.body432 ], [ %4, %if.end ], !dbg !581
  %probs.7 = phi ptr [ %probs.6, %do.body416 ], [ %probs.6, %do.body432 ], [ %10, %if.end ], !dbg !456
  %symbol.7 = phi i32 [ %shl430, %do.body416 ], [ %add449, %do.body432 ], [ %11, %if.end ], !dbg !456
  %limit.7 = phi i32 [ %limit.6, %do.body416 ], [ %limit.6, %do.body432 ], [ %12, %if.end ], !dbg !577
  %offset.7 = phi i32 [ %offset.6, %do.body416 ], [ %offset.6, %do.body432 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.13 = phi i64 [ %rc_in_pos.12, %do.body416 ], [ %rc_in_pos.12, %do.body432 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.13 = phi i32 [ %mul411, %do.body416 ], [ %sub434, %do.body432 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.13 = phi i32 [ %rc1.sroa.500.12, %do.body416 ], [ %sub436, %do.body432 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.7, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.7, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.13, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.13, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.13, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.7, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.7, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.7, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.7, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.7, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.7, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.7, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.7, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.7, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp457 = icmp ult i32 %rc1.sroa.0.13, 16777216, !dbg !734
  br i1 %cmp457, label %if.then459, label %do.end476, !dbg !738

if.then459:                                       ; preds = %do.body455
  %cmp460 = icmp eq i64 %rc_in_pos.13, %in_size, !dbg !739
  br i1 %cmp460, label %if.then462, label %if.end464, !dbg !742

if.then462:                                       ; preds = %if.then459
  store i32 7, ptr %sequence, align 8, !dbg !743, !tbaa !548
  br label %out, !dbg !743

if.end464:                                        ; preds = %if.then459
  %shl466 = shl nuw i32 %rc1.sroa.0.13, 8, !dbg !742
  call void @llvm.dbg.value(metadata i32 %shl466, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl468 = shl i32 %rc1.sroa.500.13, 8, !dbg !742
  %inc469 = add i64 %rc_in_pos.13, 1, !dbg !742
  call void @llvm.dbg.value(metadata i64 %inc469, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx470 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.13, !dbg !742
  %46 = load i8, ptr %arrayidx470, align 1, !dbg !742, !tbaa !493
  %conv471 = zext i8 %46 to i32, !dbg !742
  %or472 = or i32 %shl468, %conv471, !dbg !742
  call void @llvm.dbg.value(metadata i32 %or472, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end476, !dbg !742

do.end476:                                        ; preds = %if.end464, %do.body455
  %rc_in_pos.14 = phi i64 [ %inc469, %if.end464 ], [ %rc_in_pos.13, %do.body455 ], !dbg !656
  %rc1.sroa.0.14 = phi i32 [ %shl466, %if.end464 ], [ %rc1.sroa.0.13, %do.body455 ], !dbg !656
  %rc1.sroa.500.14 = phi i32 [ %or472, %if.end464 ], [ %rc1.sroa.500.13, %do.body455 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.14, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.14, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.14, metadata !270, metadata !DIExpression()), !dbg !456
  %shr478 = lshr i32 %rc1.sroa.0.14, 11, !dbg !745
  %idxprom479 = zext i32 %symbol.7 to i64, !dbg !745
  %arrayidx480 = getelementptr inbounds i16, ptr %probs.7, i64 %idxprom479, !dbg !745
  %47 = load i16, ptr %arrayidx480, align 2, !dbg !745, !tbaa !597
  %conv481 = zext i16 %47 to i32, !dbg !745
  %mul482 = mul i32 %shr478, %conv481, !dbg !745
  call void @llvm.dbg.value(metadata i32 %mul482, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp484 = icmp ult i32 %rc1.sroa.500.14, %mul482, !dbg !746
  br i1 %cmp484, label %do.body487, label %do.body503, !dbg !745

do.body487:                                       ; preds = %do.end476
  call void @llvm.dbg.value(metadata i32 %mul482, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub492 = sub nsw i32 2048, %conv481, !dbg !748
  %shr493 = lshr i32 %sub492, 5, !dbg !748
  %48 = trunc i32 %shr493 to i16, !dbg !748
  %conv498 = add i16 %47, %48, !dbg !748
  store i16 %conv498, ptr %arrayidx480, align 2, !dbg !748, !tbaa !597
  %shl501 = shl i32 %symbol.7, 1, !dbg !751
  call void @llvm.dbg.value(metadata i32 %shl501, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body526, !dbg !751

do.body503:                                       ; preds = %do.end476
  %sub505 = sub i32 %rc1.sroa.0.14, %mul482, !dbg !752
  call void @llvm.dbg.value(metadata i32 %sub505, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub507 = sub i32 %rc1.sroa.500.14, %mul482, !dbg !752
  call void @llvm.dbg.value(metadata i32 %sub507, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %49 = lshr i16 %47, 5, !dbg !752
  %sub515 = sub i16 %47, %49, !dbg !752
  store i16 %sub515, ptr %arrayidx480, align 2, !dbg !752, !tbaa !597
  %shl519 = shl i32 %symbol.7, 1, !dbg !755
  %add520 = or i32 %shl519, 1, !dbg !755
  call void @llvm.dbg.value(metadata i32 %add520, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body526

do.body526:                                       ; preds = %do.body487, %do.body503, %if.end
  %dict.sroa.36.8 = phi i64 [ %dict.sroa.36.7, %do.body487 ], [ %dict.sroa.36.7, %do.body503 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.8 = phi i64 [ %dict.sroa.12.7, %do.body487 ], [ %dict.sroa.12.7, %do.body503 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.8 = phi i32 [ %len.7, %do.body487 ], [ %len.7, %do.body503 ], [ %14, %if.end ], !dbg !456
  %rep0.8 = phi i32 [ %rep0.7, %do.body487 ], [ %rep0.7, %do.body503 ], [ %5, %if.end ], !dbg !573
  %rep1.8 = phi i32 [ %rep1.7, %do.body487 ], [ %rep1.7, %do.body503 ], [ %6, %if.end ], !dbg !574
  %rep2.8 = phi i32 [ %rep2.7, %do.body487 ], [ %rep2.7, %do.body503 ], [ %7, %if.end ], !dbg !575
  %rep3.8 = phi i32 [ %rep3.7, %do.body487 ], [ %rep3.7, %do.body503 ], [ %8, %if.end ], !dbg !576
  %state.8 = phi i32 [ %state.7, %do.body487 ], [ %state.7, %do.body503 ], [ %4, %if.end ], !dbg !581
  %probs.8 = phi ptr [ %probs.7, %do.body487 ], [ %probs.7, %do.body503 ], [ %10, %if.end ], !dbg !456
  %symbol.8 = phi i32 [ %shl501, %do.body487 ], [ %add520, %do.body503 ], [ %11, %if.end ], !dbg !456
  %limit.8 = phi i32 [ %limit.7, %do.body487 ], [ %limit.7, %do.body503 ], [ %12, %if.end ], !dbg !577
  %offset.8 = phi i32 [ %offset.7, %do.body487 ], [ %offset.7, %do.body503 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.15 = phi i64 [ %rc_in_pos.14, %do.body487 ], [ %rc_in_pos.14, %do.body503 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.15 = phi i32 [ %mul482, %do.body487 ], [ %sub505, %do.body503 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.15 = phi i32 [ %rc1.sroa.500.14, %do.body487 ], [ %sub507, %do.body503 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.8, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.8, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.15, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.15, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.15, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.8, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.8, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.8, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.8, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.8, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.8, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.8, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.8, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.8, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp528 = icmp ult i32 %rc1.sroa.0.15, 16777216, !dbg !756
  br i1 %cmp528, label %if.then530, label %do.end547, !dbg !760

if.then530:                                       ; preds = %do.body526
  %cmp531 = icmp eq i64 %rc_in_pos.15, %in_size, !dbg !761
  br i1 %cmp531, label %if.then533, label %if.end535, !dbg !764

if.then533:                                       ; preds = %if.then530
  store i32 8, ptr %sequence, align 8, !dbg !765, !tbaa !548
  br label %out, !dbg !765

if.end535:                                        ; preds = %if.then530
  %shl537 = shl nuw i32 %rc1.sroa.0.15, 8, !dbg !764
  call void @llvm.dbg.value(metadata i32 %shl537, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl539 = shl i32 %rc1.sroa.500.15, 8, !dbg !764
  %inc540 = add i64 %rc_in_pos.15, 1, !dbg !764
  call void @llvm.dbg.value(metadata i64 %inc540, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx541 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.15, !dbg !764
  %50 = load i8, ptr %arrayidx541, align 1, !dbg !764, !tbaa !493
  %conv542 = zext i8 %50 to i32, !dbg !764
  %or543 = or i32 %shl539, %conv542, !dbg !764
  call void @llvm.dbg.value(metadata i32 %or543, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end547, !dbg !764

do.end547:                                        ; preds = %if.end535, %do.body526
  %rc_in_pos.16 = phi i64 [ %inc540, %if.end535 ], [ %rc_in_pos.15, %do.body526 ], !dbg !656
  %rc1.sroa.0.16 = phi i32 [ %shl537, %if.end535 ], [ %rc1.sroa.0.15, %do.body526 ], !dbg !656
  %rc1.sroa.500.16 = phi i32 [ %or543, %if.end535 ], [ %rc1.sroa.500.15, %do.body526 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.16, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.16, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.16, metadata !270, metadata !DIExpression()), !dbg !456
  %shr549 = lshr i32 %rc1.sroa.0.16, 11, !dbg !767
  %idxprom550 = zext i32 %symbol.8 to i64, !dbg !767
  %arrayidx551 = getelementptr inbounds i16, ptr %probs.8, i64 %idxprom550, !dbg !767
  %51 = load i16, ptr %arrayidx551, align 2, !dbg !767, !tbaa !597
  %conv552 = zext i16 %51 to i32, !dbg !767
  %mul553 = mul i32 %shr549, %conv552, !dbg !767
  call void @llvm.dbg.value(metadata i32 %mul553, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp555 = icmp ult i32 %rc1.sroa.500.16, %mul553, !dbg !768
  br i1 %cmp555, label %do.body558, label %do.body574, !dbg !767

do.body558:                                       ; preds = %do.end547
  call void @llvm.dbg.value(metadata i32 %mul553, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub563 = sub nsw i32 2048, %conv552, !dbg !770
  %shr564 = lshr i32 %sub563, 5, !dbg !770
  %52 = trunc i32 %shr564 to i16, !dbg !770
  %conv569 = add i16 %51, %52, !dbg !770
  store i16 %conv569, ptr %arrayidx551, align 2, !dbg !770, !tbaa !597
  %shl572 = shl i32 %symbol.8, 1, !dbg !773
  call void @llvm.dbg.value(metadata i32 %shl572, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body597, !dbg !773

do.body574:                                       ; preds = %do.end547
  %sub576 = sub i32 %rc1.sroa.0.16, %mul553, !dbg !774
  call void @llvm.dbg.value(metadata i32 %sub576, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub578 = sub i32 %rc1.sroa.500.16, %mul553, !dbg !774
  call void @llvm.dbg.value(metadata i32 %sub578, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %53 = lshr i16 %51, 5, !dbg !774
  %sub586 = sub i16 %51, %53, !dbg !774
  store i16 %sub586, ptr %arrayidx551, align 2, !dbg !774, !tbaa !597
  %shl590 = shl i32 %symbol.8, 1, !dbg !777
  %add591 = or i32 %shl590, 1, !dbg !777
  call void @llvm.dbg.value(metadata i32 %add591, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body597

do.body597:                                       ; preds = %do.body558, %do.body574, %if.end
  %dict.sroa.36.9 = phi i64 [ %dict.sroa.36.8, %do.body558 ], [ %dict.sroa.36.8, %do.body574 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.9 = phi i64 [ %dict.sroa.12.8, %do.body558 ], [ %dict.sroa.12.8, %do.body574 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.9 = phi i32 [ %len.8, %do.body558 ], [ %len.8, %do.body574 ], [ %14, %if.end ], !dbg !456
  %rep0.9 = phi i32 [ %rep0.8, %do.body558 ], [ %rep0.8, %do.body574 ], [ %5, %if.end ], !dbg !573
  %rep1.9 = phi i32 [ %rep1.8, %do.body558 ], [ %rep1.8, %do.body574 ], [ %6, %if.end ], !dbg !574
  %rep2.9 = phi i32 [ %rep2.8, %do.body558 ], [ %rep2.8, %do.body574 ], [ %7, %if.end ], !dbg !575
  %rep3.9 = phi i32 [ %rep3.8, %do.body558 ], [ %rep3.8, %do.body574 ], [ %8, %if.end ], !dbg !576
  %state.9 = phi i32 [ %state.8, %do.body558 ], [ %state.8, %do.body574 ], [ %4, %if.end ], !dbg !581
  %probs.9 = phi ptr [ %probs.8, %do.body558 ], [ %probs.8, %do.body574 ], [ %10, %if.end ], !dbg !456
  %symbol.9 = phi i32 [ %shl572, %do.body558 ], [ %add591, %do.body574 ], [ %11, %if.end ], !dbg !456
  %limit.9 = phi i32 [ %limit.8, %do.body558 ], [ %limit.8, %do.body574 ], [ %12, %if.end ], !dbg !577
  %offset.9 = phi i32 [ %offset.8, %do.body558 ], [ %offset.8, %do.body574 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.17 = phi i64 [ %rc_in_pos.16, %do.body558 ], [ %rc_in_pos.16, %do.body574 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.17 = phi i32 [ %mul553, %do.body558 ], [ %sub576, %do.body574 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.17 = phi i32 [ %rc1.sroa.500.16, %do.body558 ], [ %sub578, %do.body574 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.9, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.9, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.17, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.17, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.17, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.9, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.9, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.9, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.9, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.9, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.9, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.9, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.9, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.9, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp599 = icmp ult i32 %rc1.sroa.0.17, 16777216, !dbg !778
  br i1 %cmp599, label %if.then601, label %do.end618, !dbg !782

if.then601:                                       ; preds = %do.body597
  %cmp602 = icmp eq i64 %rc_in_pos.17, %in_size, !dbg !783
  br i1 %cmp602, label %if.then604, label %if.end606, !dbg !786

if.then604:                                       ; preds = %if.then601
  store i32 9, ptr %sequence, align 8, !dbg !787, !tbaa !548
  br label %out, !dbg !787

if.end606:                                        ; preds = %if.then601
  %shl608 = shl nuw i32 %rc1.sroa.0.17, 8, !dbg !786
  call void @llvm.dbg.value(metadata i32 %shl608, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl610 = shl i32 %rc1.sroa.500.17, 8, !dbg !786
  %inc611 = add i64 %rc_in_pos.17, 1, !dbg !786
  call void @llvm.dbg.value(metadata i64 %inc611, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx612 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.17, !dbg !786
  %54 = load i8, ptr %arrayidx612, align 1, !dbg !786, !tbaa !493
  %conv613 = zext i8 %54 to i32, !dbg !786
  %or614 = or i32 %shl610, %conv613, !dbg !786
  call void @llvm.dbg.value(metadata i32 %or614, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end618, !dbg !786

do.end618:                                        ; preds = %if.end606, %do.body597
  %rc_in_pos.18 = phi i64 [ %inc611, %if.end606 ], [ %rc_in_pos.17, %do.body597 ], !dbg !656
  %rc1.sroa.0.18 = phi i32 [ %shl608, %if.end606 ], [ %rc1.sroa.0.17, %do.body597 ], !dbg !656
  %rc1.sroa.500.18 = phi i32 [ %or614, %if.end606 ], [ %rc1.sroa.500.17, %do.body597 ], !dbg !656
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.18, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.18, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.18, metadata !270, metadata !DIExpression()), !dbg !456
  %shr620 = lshr i32 %rc1.sroa.0.18, 11, !dbg !789
  %idxprom621 = zext i32 %symbol.9 to i64, !dbg !789
  %arrayidx622 = getelementptr inbounds i16, ptr %probs.9, i64 %idxprom621, !dbg !789
  %55 = load i16, ptr %arrayidx622, align 2, !dbg !789, !tbaa !597
  %conv623 = zext i16 %55 to i32, !dbg !789
  %mul624 = mul i32 %shr620, %conv623, !dbg !789
  call void @llvm.dbg.value(metadata i32 %mul624, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp626 = icmp ult i32 %rc1.sroa.500.18, %mul624, !dbg !790
  br i1 %cmp626, label %do.body629, label %do.body645, !dbg !789

do.body629:                                       ; preds = %do.end618
  call void @llvm.dbg.value(metadata i32 %mul624, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub634 = sub nsw i32 2048, %conv623, !dbg !792
  %shr635 = lshr i32 %sub634, 5, !dbg !792
  %56 = trunc i32 %shr635 to i16, !dbg !792
  %conv640 = add i16 %55, %56, !dbg !792
  store i16 %conv640, ptr %arrayidx622, align 2, !dbg !792, !tbaa !597
  %shl643 = shl i32 %symbol.9, 1, !dbg !795
  call void @llvm.dbg.value(metadata i32 %shl643, metadata !280, metadata !DIExpression()), !dbg !456
  br label %if.end1292, !dbg !795

do.body645:                                       ; preds = %do.end618
  %sub647 = sub i32 %rc1.sroa.0.18, %mul624, !dbg !796
  call void @llvm.dbg.value(metadata i32 %sub647, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub649 = sub i32 %rc1.sroa.500.18, %mul624, !dbg !796
  call void @llvm.dbg.value(metadata i32 %sub649, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %57 = lshr i16 %55, 5, !dbg !796
  %sub657 = sub i16 %55, %57, !dbg !796
  store i16 %sub657, ptr %arrayidx622, align 2, !dbg !796, !tbaa !597
  %shl661 = shl i32 %symbol.9, 1, !dbg !799
  %add662 = or i32 %shl661, 1, !dbg !799
  call void @llvm.dbg.value(metadata i32 %add662, metadata !280, metadata !DIExpression()), !dbg !456
  br label %if.end1292

if.else666:                                       ; preds = %do.body65
  call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i32 %rep0.1, metadata !610, metadata !DIExpression()), !dbg !800
  %conv.i7840 = zext i32 %rep0.1 to i64, !dbg !802
  %cmp.i7841 = icmp ugt i64 %dict.sroa.12.1, %conv.i7840, !dbg !803
  %spec.select7956 = select i1 %cmp.i7841, i64 0, i64 %dict.sroa.51.0.copyload, !dbg !804
  %58 = xor i64 %conv.i7840, -1, !dbg !805
  %sub1.i7845 = add i64 %dict.sroa.12.1, %58, !dbg !805
  %add.i7846 = add i64 %sub1.i7845, %spec.select7956, !dbg !806
  %arrayidx.i7847 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %add.i7846, !dbg !807
  %59 = load i8, ptr %arrayidx.i7847, align 1, !dbg !807, !tbaa !493
  %conv668 = zext i8 %59 to i32, !dbg !808
  %shl669 = shl nuw nsw i32 %conv668, 1, !dbg !809
  call void @llvm.dbg.value(metadata i32 %shl669, metadata !283, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 256, metadata !282, metadata !DIExpression()), !dbg !456
  br label %sw.bb670, !dbg !810

sw.bb670:                                         ; preds = %if.end, %if.else666
  %dict.sroa.36.10 = phi i64 [ %dict.sroa.36.1, %if.else666 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.10 = phi i64 [ %dict.sroa.12.1, %if.else666 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.10 = phi i32 [ %shl669, %if.else666 ], [ %14, %if.end ], !dbg !456
  %rep0.10 = phi i32 [ %rep0.1, %if.else666 ], [ %5, %if.end ], !dbg !573
  %rep1.10 = phi i32 [ %rep1.1, %if.else666 ], [ %6, %if.end ], !dbg !574
  %rep2.10 = phi i32 [ %rep2.1, %if.else666 ], [ %7, %if.end ], !dbg !575
  %rep3.10 = phi i32 [ %rep3.1, %if.else666 ], [ %8, %if.end ], !dbg !576
  %state.10 = phi i32 [ %state.1, %if.else666 ], [ %4, %if.end ], !dbg !581
  %probs.10 = phi ptr [ %arrayidx95, %if.else666 ], [ %10, %if.end ], !dbg !456
  %symbol.10 = phi i32 [ 1, %if.else666 ], [ %11, %if.end ], !dbg !456
  %limit.10 = phi i32 [ %limit.1, %if.else666 ], [ %12, %if.end ], !dbg !577
  %offset.10 = phi i32 [ 256, %if.else666 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.19 = phi i64 [ %rc_in_pos.2, %if.else666 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.19 = phi i32 [ %mul, %if.else666 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.19 = phi i32 [ %rc1.sroa.500.2, %if.else666 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.10, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.10, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.19, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.19, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.19, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.10, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.10, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.10, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.10, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.10, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.10, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.10, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.10, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.10, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.10, metadata !283, metadata !DIExpression()), !dbg !456
  %and671 = and i32 %offset.10, %len.10, !dbg !811
  call void @llvm.dbg.value(metadata i32 %and671, metadata !290, metadata !DIExpression()), !dbg !812
  %add672 = add i32 %offset.10, %symbol.10, !dbg !811
  %add673 = add i32 %add672, %and671, !dbg !811
  call void @llvm.dbg.value(metadata i32 %add673, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp677 = icmp ult i32 %rc1.sroa.0.19, 16777216, !dbg !813
  br i1 %cmp677, label %if.then679, label %do.end696, !dbg !817

if.then679:                                       ; preds = %sw.bb670
  %cmp680 = icmp eq i64 %rc_in_pos.19, %in_size, !dbg !818
  br i1 %cmp680, label %if.then682, label %if.end684, !dbg !821

if.then682:                                       ; preds = %if.then679
  store i32 10, ptr %sequence, align 8, !dbg !822, !tbaa !548
  br label %out, !dbg !822

if.end684:                                        ; preds = %if.then679
  %shl686 = shl nuw i32 %rc1.sroa.0.19, 8, !dbg !821
  call void @llvm.dbg.value(metadata i32 %shl686, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl688 = shl i32 %rc1.sroa.500.19, 8, !dbg !821
  %inc689 = add i64 %rc_in_pos.19, 1, !dbg !821
  call void @llvm.dbg.value(metadata i64 %inc689, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx690 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.19, !dbg !821
  %60 = load i8, ptr %arrayidx690, align 1, !dbg !821, !tbaa !493
  %conv691 = zext i8 %60 to i32, !dbg !821
  %or692 = or i32 %shl688, %conv691, !dbg !821
  call void @llvm.dbg.value(metadata i32 %or692, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end696, !dbg !821

do.end696:                                        ; preds = %if.end684, %sw.bb670
  %rc_in_pos.20 = phi i64 [ %inc689, %if.end684 ], [ %rc_in_pos.19, %sw.bb670 ], !dbg !632
  %rc1.sroa.0.20 = phi i32 [ %shl686, %if.end684 ], [ %rc1.sroa.0.19, %sw.bb670 ], !dbg !633
  %rc1.sroa.500.20 = phi i32 [ %or692, %if.end684 ], [ %rc1.sroa.500.19, %sw.bb670 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.20, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.20, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.20, metadata !270, metadata !DIExpression()), !dbg !456
  %shr698 = lshr i32 %rc1.sroa.0.20, 11, !dbg !824
  %idxprom699 = zext i32 %add673 to i64, !dbg !824
  %arrayidx700 = getelementptr inbounds i16, ptr %probs.10, i64 %idxprom699, !dbg !824
  %61 = load i16, ptr %arrayidx700, align 2, !dbg !824, !tbaa !597
  %conv701 = zext i16 %61 to i32, !dbg !824
  %mul702 = mul i32 %shr698, %conv701, !dbg !824
  call void @llvm.dbg.value(metadata i32 %mul702, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp704 = icmp ult i32 %rc1.sroa.500.20, %mul702, !dbg !825
  br i1 %cmp704, label %do.body707, label %do.body724, !dbg !824

do.body707:                                       ; preds = %do.end696
  call void @llvm.dbg.value(metadata i32 %mul702, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub712 = sub nsw i32 2048, %conv701, !dbg !827
  %shr713 = lshr i32 %sub712, 5, !dbg !827
  %62 = trunc i32 %shr713 to i16, !dbg !827
  %conv718 = add i16 %61, %62, !dbg !827
  store i16 %conv718, ptr %arrayidx700, align 2, !dbg !827, !tbaa !597
  %shl721 = shl i32 %symbol.10, 1, !dbg !830
  call void @llvm.dbg.value(metadata i32 %shl721, metadata !280, metadata !DIExpression()), !dbg !456
  %and722 = xor i32 %and671, %offset.10, !dbg !830
  call void @llvm.dbg.value(metadata i32 %and722, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end745, !dbg !830

do.body724:                                       ; preds = %do.end696
  %sub726 = sub i32 %rc1.sroa.0.20, %mul702, !dbg !831
  call void @llvm.dbg.value(metadata i32 %sub726, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub728 = sub i32 %rc1.sroa.500.20, %mul702, !dbg !831
  call void @llvm.dbg.value(metadata i32 %sub728, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %63 = lshr i16 %61, 5, !dbg !831
  %sub736 = sub i16 %61, %63, !dbg !831
  store i16 %sub736, ptr %arrayidx700, align 2, !dbg !831, !tbaa !597
  %shl740 = shl i32 %symbol.10, 1, !dbg !834
  %add741 = or i32 %shl740, 1, !dbg !834
  call void @llvm.dbg.value(metadata i32 %add741, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and671, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end745

do.end745:                                        ; preds = %do.body724, %do.body707
  %symbol.11 = phi i32 [ %shl721, %do.body707 ], [ %add741, %do.body724 ], !dbg !835
  %offset.11 = phi i32 [ %and722, %do.body707 ], [ %and671, %do.body724 ], !dbg !835
  %rc1.sroa.0.21 = phi i32 [ %mul702, %do.body707 ], [ %sub726, %do.body724 ], !dbg !835
  %rc1.sroa.500.21 = phi i32 [ %rc1.sroa.500.20, %do.body707 ], [ %sub728, %do.body724 ], !dbg !836
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.21, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.21, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.11, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.11, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.10, metadata !283, metadata !DIExpression()), !dbg !456
  %shl746 = shl i32 %len.10, 1, !dbg !837
  call void @llvm.dbg.value(metadata i32 %shl746, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb747, !dbg !838

sw.bb747:                                         ; preds = %if.end, %do.end745
  %dict.sroa.36.11 = phi i64 [ %dict.sroa.36.10, %do.end745 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.11 = phi i64 [ %dict.sroa.12.10, %do.end745 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.11 = phi i32 [ %shl746, %do.end745 ], [ %14, %if.end ], !dbg !456
  %rep0.11 = phi i32 [ %rep0.10, %do.end745 ], [ %5, %if.end ], !dbg !573
  %rep1.11 = phi i32 [ %rep1.10, %do.end745 ], [ %6, %if.end ], !dbg !574
  %rep2.11 = phi i32 [ %rep2.10, %do.end745 ], [ %7, %if.end ], !dbg !575
  %rep3.11 = phi i32 [ %rep3.10, %do.end745 ], [ %8, %if.end ], !dbg !576
  %state.11 = phi i32 [ %state.10, %do.end745 ], [ %4, %if.end ], !dbg !581
  %probs.11 = phi ptr [ %probs.10, %do.end745 ], [ %10, %if.end ], !dbg !456
  %symbol.12 = phi i32 [ %symbol.11, %do.end745 ], [ %11, %if.end ], !dbg !456
  %limit.11 = phi i32 [ %limit.10, %do.end745 ], [ %12, %if.end ], !dbg !577
  %offset.12 = phi i32 [ %offset.11, %do.end745 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.21 = phi i64 [ %rc_in_pos.20, %do.end745 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.22 = phi i32 [ %rc1.sroa.0.21, %do.end745 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.22 = phi i32 [ %rc1.sroa.500.21, %do.end745 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.11, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.11, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.22, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.22, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.21, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.12, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.11, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.12, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.11, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.11, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.11, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.11, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.11, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.11, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.11, metadata !283, metadata !DIExpression()), !dbg !456
  %and748 = and i32 %offset.12, %len.11, !dbg !839
  call void @llvm.dbg.value(metadata i32 %and748, metadata !290, metadata !DIExpression()), !dbg !812
  %add749 = add i32 %offset.12, %symbol.12, !dbg !839
  %add750 = add i32 %add749, %and748, !dbg !839
  call void @llvm.dbg.value(metadata i32 %add750, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp754 = icmp ult i32 %rc1.sroa.0.22, 16777216, !dbg !840
  br i1 %cmp754, label %if.then756, label %do.end773, !dbg !844

if.then756:                                       ; preds = %sw.bb747
  %cmp757 = icmp eq i64 %rc_in_pos.21, %in_size, !dbg !845
  br i1 %cmp757, label %if.then759, label %if.end761, !dbg !848

if.then759:                                       ; preds = %if.then756
  store i32 11, ptr %sequence, align 8, !dbg !849, !tbaa !548
  br label %out, !dbg !849

if.end761:                                        ; preds = %if.then756
  %shl763 = shl nuw i32 %rc1.sroa.0.22, 8, !dbg !848
  call void @llvm.dbg.value(metadata i32 %shl763, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl765 = shl i32 %rc1.sroa.500.22, 8, !dbg !848
  %inc766 = add i64 %rc_in_pos.21, 1, !dbg !848
  call void @llvm.dbg.value(metadata i64 %inc766, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx767 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.21, !dbg !848
  %64 = load i8, ptr %arrayidx767, align 1, !dbg !848, !tbaa !493
  %conv768 = zext i8 %64 to i32, !dbg !848
  %or769 = or i32 %shl765, %conv768, !dbg !848
  call void @llvm.dbg.value(metadata i32 %or769, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end773, !dbg !848

do.end773:                                        ; preds = %if.end761, %sw.bb747
  %rc_in_pos.22 = phi i64 [ %inc766, %if.end761 ], [ %rc_in_pos.21, %sw.bb747 ], !dbg !812
  %rc1.sroa.0.23 = phi i32 [ %shl763, %if.end761 ], [ %rc1.sroa.0.22, %sw.bb747 ], !dbg !812
  %rc1.sroa.500.23 = phi i32 [ %or769, %if.end761 ], [ %rc1.sroa.500.22, %sw.bb747 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.23, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.23, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.22, metadata !270, metadata !DIExpression()), !dbg !456
  %shr775 = lshr i32 %rc1.sroa.0.23, 11, !dbg !851
  %idxprom776 = zext i32 %add750 to i64, !dbg !851
  %arrayidx777 = getelementptr inbounds i16, ptr %probs.11, i64 %idxprom776, !dbg !851
  %65 = load i16, ptr %arrayidx777, align 2, !dbg !851, !tbaa !597
  %conv778 = zext i16 %65 to i32, !dbg !851
  %mul779 = mul i32 %shr775, %conv778, !dbg !851
  call void @llvm.dbg.value(metadata i32 %mul779, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp781 = icmp ult i32 %rc1.sroa.500.23, %mul779, !dbg !852
  br i1 %cmp781, label %do.body784, label %do.body802, !dbg !851

do.body784:                                       ; preds = %do.end773
  call void @llvm.dbg.value(metadata i32 %mul779, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub789 = sub nsw i32 2048, %conv778, !dbg !854
  %shr790 = lshr i32 %sub789, 5, !dbg !854
  %66 = trunc i32 %shr790 to i16, !dbg !854
  %conv795 = add i16 %65, %66, !dbg !854
  store i16 %conv795, ptr %arrayidx777, align 2, !dbg !854, !tbaa !597
  %shl798 = shl i32 %symbol.12, 1, !dbg !857
  call void @llvm.dbg.value(metadata i32 %shl798, metadata !280, metadata !DIExpression()), !dbg !456
  %and800 = xor i32 %and748, %offset.12, !dbg !857
  call void @llvm.dbg.value(metadata i32 %and800, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end823, !dbg !857

do.body802:                                       ; preds = %do.end773
  %sub804 = sub i32 %rc1.sroa.0.23, %mul779, !dbg !858
  call void @llvm.dbg.value(metadata i32 %sub804, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub806 = sub i32 %rc1.sroa.500.23, %mul779, !dbg !858
  call void @llvm.dbg.value(metadata i32 %sub806, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %67 = lshr i16 %65, 5, !dbg !858
  %sub814 = sub i16 %65, %67, !dbg !858
  store i16 %sub814, ptr %arrayidx777, align 2, !dbg !858, !tbaa !597
  %shl818 = shl i32 %symbol.12, 1, !dbg !861
  %add819 = or i32 %shl818, 1, !dbg !861
  call void @llvm.dbg.value(metadata i32 %add819, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and748, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end823

do.end823:                                        ; preds = %do.body802, %do.body784
  %symbol.13 = phi i32 [ %shl798, %do.body784 ], [ %add819, %do.body802 ], !dbg !862
  %offset.13 = phi i32 [ %and800, %do.body784 ], [ %and748, %do.body802 ], !dbg !862
  %rc1.sroa.0.24 = phi i32 [ %mul779, %do.body784 ], [ %sub804, %do.body802 ], !dbg !862
  %rc1.sroa.500.24 = phi i32 [ %rc1.sroa.500.23, %do.body784 ], [ %sub806, %do.body802 ], !dbg !863
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.24, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.24, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.13, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.13, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.11, metadata !283, metadata !DIExpression()), !dbg !456
  %shl824 = shl i32 %len.11, 1, !dbg !864
  call void @llvm.dbg.value(metadata i32 %shl824, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb825, !dbg !865

sw.bb825:                                         ; preds = %if.end, %do.end823
  %dict.sroa.36.12 = phi i64 [ %dict.sroa.36.11, %do.end823 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.12 = phi i64 [ %dict.sroa.12.11, %do.end823 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.12 = phi i32 [ %shl824, %do.end823 ], [ %14, %if.end ], !dbg !456
  %rep0.12 = phi i32 [ %rep0.11, %do.end823 ], [ %5, %if.end ], !dbg !573
  %rep1.12 = phi i32 [ %rep1.11, %do.end823 ], [ %6, %if.end ], !dbg !574
  %rep2.12 = phi i32 [ %rep2.11, %do.end823 ], [ %7, %if.end ], !dbg !575
  %rep3.12 = phi i32 [ %rep3.11, %do.end823 ], [ %8, %if.end ], !dbg !576
  %state.12 = phi i32 [ %state.11, %do.end823 ], [ %4, %if.end ], !dbg !581
  %probs.12 = phi ptr [ %probs.11, %do.end823 ], [ %10, %if.end ], !dbg !456
  %symbol.14 = phi i32 [ %symbol.13, %do.end823 ], [ %11, %if.end ], !dbg !456
  %limit.12 = phi i32 [ %limit.11, %do.end823 ], [ %12, %if.end ], !dbg !577
  %offset.14 = phi i32 [ %offset.13, %do.end823 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.23 = phi i64 [ %rc_in_pos.22, %do.end823 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.25 = phi i32 [ %rc1.sroa.0.24, %do.end823 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.25 = phi i32 [ %rc1.sroa.500.24, %do.end823 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.12, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.12, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.25, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.25, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.23, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.14, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.12, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.14, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.12, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.12, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.12, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.12, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.12, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.12, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.12, metadata !283, metadata !DIExpression()), !dbg !456
  %and826 = and i32 %offset.14, %len.12, !dbg !866
  call void @llvm.dbg.value(metadata i32 %and826, metadata !290, metadata !DIExpression()), !dbg !812
  %add827 = add i32 %offset.14, %symbol.14, !dbg !866
  %add828 = add i32 %add827, %and826, !dbg !866
  call void @llvm.dbg.value(metadata i32 %add828, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp832 = icmp ult i32 %rc1.sroa.0.25, 16777216, !dbg !867
  br i1 %cmp832, label %if.then834, label %do.end851, !dbg !871

if.then834:                                       ; preds = %sw.bb825
  %cmp835 = icmp eq i64 %rc_in_pos.23, %in_size, !dbg !872
  br i1 %cmp835, label %if.then837, label %if.end839, !dbg !875

if.then837:                                       ; preds = %if.then834
  store i32 12, ptr %sequence, align 8, !dbg !876, !tbaa !548
  br label %out, !dbg !876

if.end839:                                        ; preds = %if.then834
  %shl841 = shl nuw i32 %rc1.sroa.0.25, 8, !dbg !875
  call void @llvm.dbg.value(metadata i32 %shl841, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl843 = shl i32 %rc1.sroa.500.25, 8, !dbg !875
  %inc844 = add i64 %rc_in_pos.23, 1, !dbg !875
  call void @llvm.dbg.value(metadata i64 %inc844, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx845 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.23, !dbg !875
  %68 = load i8, ptr %arrayidx845, align 1, !dbg !875, !tbaa !493
  %conv846 = zext i8 %68 to i32, !dbg !875
  %or847 = or i32 %shl843, %conv846, !dbg !875
  call void @llvm.dbg.value(metadata i32 %or847, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end851, !dbg !875

do.end851:                                        ; preds = %if.end839, %sw.bb825
  %rc_in_pos.24 = phi i64 [ %inc844, %if.end839 ], [ %rc_in_pos.23, %sw.bb825 ], !dbg !812
  %rc1.sroa.0.26 = phi i32 [ %shl841, %if.end839 ], [ %rc1.sroa.0.25, %sw.bb825 ], !dbg !812
  %rc1.sroa.500.26 = phi i32 [ %or847, %if.end839 ], [ %rc1.sroa.500.25, %sw.bb825 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.26, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.26, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.24, metadata !270, metadata !DIExpression()), !dbg !456
  %shr853 = lshr i32 %rc1.sroa.0.26, 11, !dbg !878
  %idxprom854 = zext i32 %add828 to i64, !dbg !878
  %arrayidx855 = getelementptr inbounds i16, ptr %probs.12, i64 %idxprom854, !dbg !878
  %69 = load i16, ptr %arrayidx855, align 2, !dbg !878, !tbaa !597
  %conv856 = zext i16 %69 to i32, !dbg !878
  %mul857 = mul i32 %shr853, %conv856, !dbg !878
  call void @llvm.dbg.value(metadata i32 %mul857, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp859 = icmp ult i32 %rc1.sroa.500.26, %mul857, !dbg !879
  br i1 %cmp859, label %do.body862, label %do.body880, !dbg !878

do.body862:                                       ; preds = %do.end851
  call void @llvm.dbg.value(metadata i32 %mul857, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub867 = sub nsw i32 2048, %conv856, !dbg !881
  %shr868 = lshr i32 %sub867, 5, !dbg !881
  %70 = trunc i32 %shr868 to i16, !dbg !881
  %conv873 = add i16 %69, %70, !dbg !881
  store i16 %conv873, ptr %arrayidx855, align 2, !dbg !881, !tbaa !597
  %shl876 = shl i32 %symbol.14, 1, !dbg !884
  call void @llvm.dbg.value(metadata i32 %shl876, metadata !280, metadata !DIExpression()), !dbg !456
  %and878 = xor i32 %and826, %offset.14, !dbg !884
  call void @llvm.dbg.value(metadata i32 %and878, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end901, !dbg !884

do.body880:                                       ; preds = %do.end851
  %sub882 = sub i32 %rc1.sroa.0.26, %mul857, !dbg !885
  call void @llvm.dbg.value(metadata i32 %sub882, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub884 = sub i32 %rc1.sroa.500.26, %mul857, !dbg !885
  call void @llvm.dbg.value(metadata i32 %sub884, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %71 = lshr i16 %69, 5, !dbg !885
  %sub892 = sub i16 %69, %71, !dbg !885
  store i16 %sub892, ptr %arrayidx855, align 2, !dbg !885, !tbaa !597
  %shl896 = shl i32 %symbol.14, 1, !dbg !888
  %add897 = or i32 %shl896, 1, !dbg !888
  call void @llvm.dbg.value(metadata i32 %add897, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and826, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end901

do.end901:                                        ; preds = %do.body880, %do.body862
  %symbol.15 = phi i32 [ %shl876, %do.body862 ], [ %add897, %do.body880 ], !dbg !889
  %offset.15 = phi i32 [ %and878, %do.body862 ], [ %and826, %do.body880 ], !dbg !889
  %rc1.sroa.0.27 = phi i32 [ %mul857, %do.body862 ], [ %sub882, %do.body880 ], !dbg !889
  %rc1.sroa.500.27 = phi i32 [ %rc1.sroa.500.26, %do.body862 ], [ %sub884, %do.body880 ], !dbg !890
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.27, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.27, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.15, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.15, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.12, metadata !283, metadata !DIExpression()), !dbg !456
  %shl902 = shl i32 %len.12, 1, !dbg !891
  call void @llvm.dbg.value(metadata i32 %shl902, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb903, !dbg !892

sw.bb903:                                         ; preds = %if.end, %do.end901
  %dict.sroa.36.13 = phi i64 [ %dict.sroa.36.12, %do.end901 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.13 = phi i64 [ %dict.sroa.12.12, %do.end901 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.13 = phi i32 [ %shl902, %do.end901 ], [ %14, %if.end ], !dbg !456
  %rep0.13 = phi i32 [ %rep0.12, %do.end901 ], [ %5, %if.end ], !dbg !573
  %rep1.13 = phi i32 [ %rep1.12, %do.end901 ], [ %6, %if.end ], !dbg !574
  %rep2.13 = phi i32 [ %rep2.12, %do.end901 ], [ %7, %if.end ], !dbg !575
  %rep3.13 = phi i32 [ %rep3.12, %do.end901 ], [ %8, %if.end ], !dbg !576
  %state.13 = phi i32 [ %state.12, %do.end901 ], [ %4, %if.end ], !dbg !581
  %probs.13 = phi ptr [ %probs.12, %do.end901 ], [ %10, %if.end ], !dbg !456
  %symbol.16 = phi i32 [ %symbol.15, %do.end901 ], [ %11, %if.end ], !dbg !456
  %limit.13 = phi i32 [ %limit.12, %do.end901 ], [ %12, %if.end ], !dbg !577
  %offset.16 = phi i32 [ %offset.15, %do.end901 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.25 = phi i64 [ %rc_in_pos.24, %do.end901 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.28 = phi i32 [ %rc1.sroa.0.27, %do.end901 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.28 = phi i32 [ %rc1.sroa.500.27, %do.end901 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.13, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.13, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.28, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.28, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.25, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.16, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.13, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.16, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.13, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.13, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.13, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.13, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.13, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.13, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.13, metadata !283, metadata !DIExpression()), !dbg !456
  %and904 = and i32 %offset.16, %len.13, !dbg !893
  call void @llvm.dbg.value(metadata i32 %and904, metadata !290, metadata !DIExpression()), !dbg !812
  %add905 = add i32 %offset.16, %symbol.16, !dbg !893
  %add906 = add i32 %add905, %and904, !dbg !893
  call void @llvm.dbg.value(metadata i32 %add906, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp910 = icmp ult i32 %rc1.sroa.0.28, 16777216, !dbg !894
  br i1 %cmp910, label %if.then912, label %do.end929, !dbg !898

if.then912:                                       ; preds = %sw.bb903
  %cmp913 = icmp eq i64 %rc_in_pos.25, %in_size, !dbg !899
  br i1 %cmp913, label %if.then915, label %if.end917, !dbg !902

if.then915:                                       ; preds = %if.then912
  store i32 13, ptr %sequence, align 8, !dbg !903, !tbaa !548
  br label %out, !dbg !903

if.end917:                                        ; preds = %if.then912
  %shl919 = shl nuw i32 %rc1.sroa.0.28, 8, !dbg !902
  call void @llvm.dbg.value(metadata i32 %shl919, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl921 = shl i32 %rc1.sroa.500.28, 8, !dbg !902
  %inc922 = add i64 %rc_in_pos.25, 1, !dbg !902
  call void @llvm.dbg.value(metadata i64 %inc922, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx923 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.25, !dbg !902
  %72 = load i8, ptr %arrayidx923, align 1, !dbg !902, !tbaa !493
  %conv924 = zext i8 %72 to i32, !dbg !902
  %or925 = or i32 %shl921, %conv924, !dbg !902
  call void @llvm.dbg.value(metadata i32 %or925, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end929, !dbg !902

do.end929:                                        ; preds = %if.end917, %sw.bb903
  %rc_in_pos.26 = phi i64 [ %inc922, %if.end917 ], [ %rc_in_pos.25, %sw.bb903 ], !dbg !812
  %rc1.sroa.0.29 = phi i32 [ %shl919, %if.end917 ], [ %rc1.sroa.0.28, %sw.bb903 ], !dbg !812
  %rc1.sroa.500.29 = phi i32 [ %or925, %if.end917 ], [ %rc1.sroa.500.28, %sw.bb903 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.29, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.29, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.26, metadata !270, metadata !DIExpression()), !dbg !456
  %shr931 = lshr i32 %rc1.sroa.0.29, 11, !dbg !905
  %idxprom932 = zext i32 %add906 to i64, !dbg !905
  %arrayidx933 = getelementptr inbounds i16, ptr %probs.13, i64 %idxprom932, !dbg !905
  %73 = load i16, ptr %arrayidx933, align 2, !dbg !905, !tbaa !597
  %conv934 = zext i16 %73 to i32, !dbg !905
  %mul935 = mul i32 %shr931, %conv934, !dbg !905
  call void @llvm.dbg.value(metadata i32 %mul935, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp937 = icmp ult i32 %rc1.sroa.500.29, %mul935, !dbg !906
  br i1 %cmp937, label %do.body940, label %do.body958, !dbg !905

do.body940:                                       ; preds = %do.end929
  call void @llvm.dbg.value(metadata i32 %mul935, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub945 = sub nsw i32 2048, %conv934, !dbg !908
  %shr946 = lshr i32 %sub945, 5, !dbg !908
  %74 = trunc i32 %shr946 to i16, !dbg !908
  %conv951 = add i16 %73, %74, !dbg !908
  store i16 %conv951, ptr %arrayidx933, align 2, !dbg !908, !tbaa !597
  %shl954 = shl i32 %symbol.16, 1, !dbg !911
  call void @llvm.dbg.value(metadata i32 %shl954, metadata !280, metadata !DIExpression()), !dbg !456
  %and956 = xor i32 %and904, %offset.16, !dbg !911
  call void @llvm.dbg.value(metadata i32 %and956, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end979, !dbg !911

do.body958:                                       ; preds = %do.end929
  %sub960 = sub i32 %rc1.sroa.0.29, %mul935, !dbg !912
  call void @llvm.dbg.value(metadata i32 %sub960, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub962 = sub i32 %rc1.sroa.500.29, %mul935, !dbg !912
  call void @llvm.dbg.value(metadata i32 %sub962, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %75 = lshr i16 %73, 5, !dbg !912
  %sub970 = sub i16 %73, %75, !dbg !912
  store i16 %sub970, ptr %arrayidx933, align 2, !dbg !912, !tbaa !597
  %shl974 = shl i32 %symbol.16, 1, !dbg !915
  %add975 = or i32 %shl974, 1, !dbg !915
  call void @llvm.dbg.value(metadata i32 %add975, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and904, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end979

do.end979:                                        ; preds = %do.body958, %do.body940
  %symbol.17 = phi i32 [ %shl954, %do.body940 ], [ %add975, %do.body958 ], !dbg !916
  %offset.17 = phi i32 [ %and956, %do.body940 ], [ %and904, %do.body958 ], !dbg !916
  %rc1.sroa.0.30 = phi i32 [ %mul935, %do.body940 ], [ %sub960, %do.body958 ], !dbg !916
  %rc1.sroa.500.30 = phi i32 [ %rc1.sroa.500.29, %do.body940 ], [ %sub962, %do.body958 ], !dbg !917
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.30, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.30, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.17, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.17, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.13, metadata !283, metadata !DIExpression()), !dbg !456
  %shl980 = shl i32 %len.13, 1, !dbg !918
  call void @llvm.dbg.value(metadata i32 %shl980, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb981, !dbg !919

sw.bb981:                                         ; preds = %if.end, %do.end979
  %dict.sroa.36.14 = phi i64 [ %dict.sroa.36.13, %do.end979 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.14 = phi i64 [ %dict.sroa.12.13, %do.end979 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.14 = phi i32 [ %shl980, %do.end979 ], [ %14, %if.end ], !dbg !456
  %rep0.14 = phi i32 [ %rep0.13, %do.end979 ], [ %5, %if.end ], !dbg !573
  %rep1.14 = phi i32 [ %rep1.13, %do.end979 ], [ %6, %if.end ], !dbg !574
  %rep2.14 = phi i32 [ %rep2.13, %do.end979 ], [ %7, %if.end ], !dbg !575
  %rep3.14 = phi i32 [ %rep3.13, %do.end979 ], [ %8, %if.end ], !dbg !576
  %state.14 = phi i32 [ %state.13, %do.end979 ], [ %4, %if.end ], !dbg !581
  %probs.14 = phi ptr [ %probs.13, %do.end979 ], [ %10, %if.end ], !dbg !456
  %symbol.18 = phi i32 [ %symbol.17, %do.end979 ], [ %11, %if.end ], !dbg !456
  %limit.14 = phi i32 [ %limit.13, %do.end979 ], [ %12, %if.end ], !dbg !577
  %offset.18 = phi i32 [ %offset.17, %do.end979 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.27 = phi i64 [ %rc_in_pos.26, %do.end979 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.31 = phi i32 [ %rc1.sroa.0.30, %do.end979 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.31 = phi i32 [ %rc1.sroa.500.30, %do.end979 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.14, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.14, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.31, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.31, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.27, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.18, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.14, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.18, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.14, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.14, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.14, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.14, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.14, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.14, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.14, metadata !283, metadata !DIExpression()), !dbg !456
  %and982 = and i32 %offset.18, %len.14, !dbg !920
  call void @llvm.dbg.value(metadata i32 %and982, metadata !290, metadata !DIExpression()), !dbg !812
  %add983 = add i32 %offset.18, %symbol.18, !dbg !920
  %add984 = add i32 %add983, %and982, !dbg !920
  call void @llvm.dbg.value(metadata i32 %add984, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp988 = icmp ult i32 %rc1.sroa.0.31, 16777216, !dbg !921
  br i1 %cmp988, label %if.then990, label %do.end1007, !dbg !925

if.then990:                                       ; preds = %sw.bb981
  %cmp991 = icmp eq i64 %rc_in_pos.27, %in_size, !dbg !926
  br i1 %cmp991, label %if.then993, label %if.end995, !dbg !929

if.then993:                                       ; preds = %if.then990
  store i32 14, ptr %sequence, align 8, !dbg !930, !tbaa !548
  br label %out, !dbg !930

if.end995:                                        ; preds = %if.then990
  %shl997 = shl nuw i32 %rc1.sroa.0.31, 8, !dbg !929
  call void @llvm.dbg.value(metadata i32 %shl997, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl999 = shl i32 %rc1.sroa.500.31, 8, !dbg !929
  %inc1000 = add i64 %rc_in_pos.27, 1, !dbg !929
  call void @llvm.dbg.value(metadata i64 %inc1000, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1001 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.27, !dbg !929
  %76 = load i8, ptr %arrayidx1001, align 1, !dbg !929, !tbaa !493
  %conv1002 = zext i8 %76 to i32, !dbg !929
  %or1003 = or i32 %shl999, %conv1002, !dbg !929
  call void @llvm.dbg.value(metadata i32 %or1003, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1007, !dbg !929

do.end1007:                                       ; preds = %if.end995, %sw.bb981
  %rc_in_pos.28 = phi i64 [ %inc1000, %if.end995 ], [ %rc_in_pos.27, %sw.bb981 ], !dbg !812
  %rc1.sroa.0.32 = phi i32 [ %shl997, %if.end995 ], [ %rc1.sroa.0.31, %sw.bb981 ], !dbg !812
  %rc1.sroa.500.32 = phi i32 [ %or1003, %if.end995 ], [ %rc1.sroa.500.31, %sw.bb981 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.32, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.32, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.28, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1009 = lshr i32 %rc1.sroa.0.32, 11, !dbg !932
  %idxprom1010 = zext i32 %add984 to i64, !dbg !932
  %arrayidx1011 = getelementptr inbounds i16, ptr %probs.14, i64 %idxprom1010, !dbg !932
  %77 = load i16, ptr %arrayidx1011, align 2, !dbg !932, !tbaa !597
  %conv1012 = zext i16 %77 to i32, !dbg !932
  %mul1013 = mul i32 %shr1009, %conv1012, !dbg !932
  call void @llvm.dbg.value(metadata i32 %mul1013, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1015 = icmp ult i32 %rc1.sroa.500.32, %mul1013, !dbg !933
  br i1 %cmp1015, label %do.body1018, label %do.body1036, !dbg !932

do.body1018:                                      ; preds = %do.end1007
  call void @llvm.dbg.value(metadata i32 %mul1013, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1023 = sub nsw i32 2048, %conv1012, !dbg !935
  %shr1024 = lshr i32 %sub1023, 5, !dbg !935
  %78 = trunc i32 %shr1024 to i16, !dbg !935
  %conv1029 = add i16 %77, %78, !dbg !935
  store i16 %conv1029, ptr %arrayidx1011, align 2, !dbg !935, !tbaa !597
  %shl1032 = shl i32 %symbol.18, 1, !dbg !938
  call void @llvm.dbg.value(metadata i32 %shl1032, metadata !280, metadata !DIExpression()), !dbg !456
  %and1034 = xor i32 %and982, %offset.18, !dbg !938
  call void @llvm.dbg.value(metadata i32 %and1034, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1057, !dbg !938

do.body1036:                                      ; preds = %do.end1007
  %sub1038 = sub i32 %rc1.sroa.0.32, %mul1013, !dbg !939
  call void @llvm.dbg.value(metadata i32 %sub1038, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1040 = sub i32 %rc1.sroa.500.32, %mul1013, !dbg !939
  call void @llvm.dbg.value(metadata i32 %sub1040, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %79 = lshr i16 %77, 5, !dbg !939
  %sub1048 = sub i16 %77, %79, !dbg !939
  store i16 %sub1048, ptr %arrayidx1011, align 2, !dbg !939, !tbaa !597
  %shl1052 = shl i32 %symbol.18, 1, !dbg !942
  %add1053 = or i32 %shl1052, 1, !dbg !942
  call void @llvm.dbg.value(metadata i32 %add1053, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and982, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1057

do.end1057:                                       ; preds = %do.body1036, %do.body1018
  %symbol.19 = phi i32 [ %shl1032, %do.body1018 ], [ %add1053, %do.body1036 ], !dbg !943
  %offset.19 = phi i32 [ %and1034, %do.body1018 ], [ %and982, %do.body1036 ], !dbg !943
  %rc1.sroa.0.33 = phi i32 [ %mul1013, %do.body1018 ], [ %sub1038, %do.body1036 ], !dbg !943
  %rc1.sroa.500.33 = phi i32 [ %rc1.sroa.500.32, %do.body1018 ], [ %sub1040, %do.body1036 ], !dbg !944
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.33, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.33, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.19, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.19, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.14, metadata !283, metadata !DIExpression()), !dbg !456
  %shl1058 = shl i32 %len.14, 1, !dbg !945
  call void @llvm.dbg.value(metadata i32 %shl1058, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb1059, !dbg !946

sw.bb1059:                                        ; preds = %if.end, %do.end1057
  %dict.sroa.36.15 = phi i64 [ %dict.sroa.36.14, %do.end1057 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.15 = phi i64 [ %dict.sroa.12.14, %do.end1057 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.15 = phi i32 [ %shl1058, %do.end1057 ], [ %14, %if.end ], !dbg !456
  %rep0.15 = phi i32 [ %rep0.14, %do.end1057 ], [ %5, %if.end ], !dbg !573
  %rep1.15 = phi i32 [ %rep1.14, %do.end1057 ], [ %6, %if.end ], !dbg !574
  %rep2.15 = phi i32 [ %rep2.14, %do.end1057 ], [ %7, %if.end ], !dbg !575
  %rep3.15 = phi i32 [ %rep3.14, %do.end1057 ], [ %8, %if.end ], !dbg !576
  %state.15 = phi i32 [ %state.14, %do.end1057 ], [ %4, %if.end ], !dbg !581
  %probs.15 = phi ptr [ %probs.14, %do.end1057 ], [ %10, %if.end ], !dbg !456
  %symbol.20 = phi i32 [ %symbol.19, %do.end1057 ], [ %11, %if.end ], !dbg !456
  %limit.15 = phi i32 [ %limit.14, %do.end1057 ], [ %12, %if.end ], !dbg !577
  %offset.20 = phi i32 [ %offset.19, %do.end1057 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.29 = phi i64 [ %rc_in_pos.28, %do.end1057 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.34 = phi i32 [ %rc1.sroa.0.33, %do.end1057 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.34 = phi i32 [ %rc1.sroa.500.33, %do.end1057 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.15, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.15, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.34, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.34, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.29, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.20, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.15, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.20, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.15, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.15, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.15, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.15, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.15, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.15, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.15, metadata !283, metadata !DIExpression()), !dbg !456
  %and1060 = and i32 %offset.20, %len.15, !dbg !947
  call void @llvm.dbg.value(metadata i32 %and1060, metadata !290, metadata !DIExpression()), !dbg !812
  %add1061 = add i32 %offset.20, %symbol.20, !dbg !947
  %add1062 = add i32 %add1061, %and1060, !dbg !947
  call void @llvm.dbg.value(metadata i32 %add1062, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp1066 = icmp ult i32 %rc1.sroa.0.34, 16777216, !dbg !948
  br i1 %cmp1066, label %if.then1068, label %do.end1085, !dbg !952

if.then1068:                                      ; preds = %sw.bb1059
  %cmp1069 = icmp eq i64 %rc_in_pos.29, %in_size, !dbg !953
  br i1 %cmp1069, label %if.then1071, label %if.end1073, !dbg !956

if.then1071:                                      ; preds = %if.then1068
  store i32 15, ptr %sequence, align 8, !dbg !957, !tbaa !548
  br label %out, !dbg !957

if.end1073:                                       ; preds = %if.then1068
  %shl1075 = shl nuw i32 %rc1.sroa.0.34, 8, !dbg !956
  call void @llvm.dbg.value(metadata i32 %shl1075, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1077 = shl i32 %rc1.sroa.500.34, 8, !dbg !956
  %inc1078 = add i64 %rc_in_pos.29, 1, !dbg !956
  call void @llvm.dbg.value(metadata i64 %inc1078, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1079 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.29, !dbg !956
  %80 = load i8, ptr %arrayidx1079, align 1, !dbg !956, !tbaa !493
  %conv1080 = zext i8 %80 to i32, !dbg !956
  %or1081 = or i32 %shl1077, %conv1080, !dbg !956
  call void @llvm.dbg.value(metadata i32 %or1081, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1085, !dbg !956

do.end1085:                                       ; preds = %if.end1073, %sw.bb1059
  %rc_in_pos.30 = phi i64 [ %inc1078, %if.end1073 ], [ %rc_in_pos.29, %sw.bb1059 ], !dbg !812
  %rc1.sroa.0.35 = phi i32 [ %shl1075, %if.end1073 ], [ %rc1.sroa.0.34, %sw.bb1059 ], !dbg !812
  %rc1.sroa.500.35 = phi i32 [ %or1081, %if.end1073 ], [ %rc1.sroa.500.34, %sw.bb1059 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.35, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.35, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.30, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1087 = lshr i32 %rc1.sroa.0.35, 11, !dbg !959
  %idxprom1088 = zext i32 %add1062 to i64, !dbg !959
  %arrayidx1089 = getelementptr inbounds i16, ptr %probs.15, i64 %idxprom1088, !dbg !959
  %81 = load i16, ptr %arrayidx1089, align 2, !dbg !959, !tbaa !597
  %conv1090 = zext i16 %81 to i32, !dbg !959
  %mul1091 = mul i32 %shr1087, %conv1090, !dbg !959
  call void @llvm.dbg.value(metadata i32 %mul1091, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1093 = icmp ult i32 %rc1.sroa.500.35, %mul1091, !dbg !960
  br i1 %cmp1093, label %do.body1096, label %do.body1114, !dbg !959

do.body1096:                                      ; preds = %do.end1085
  call void @llvm.dbg.value(metadata i32 %mul1091, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1101 = sub nsw i32 2048, %conv1090, !dbg !962
  %shr1102 = lshr i32 %sub1101, 5, !dbg !962
  %82 = trunc i32 %shr1102 to i16, !dbg !962
  %conv1107 = add i16 %81, %82, !dbg !962
  store i16 %conv1107, ptr %arrayidx1089, align 2, !dbg !962, !tbaa !597
  %shl1110 = shl i32 %symbol.20, 1, !dbg !965
  call void @llvm.dbg.value(metadata i32 %shl1110, metadata !280, metadata !DIExpression()), !dbg !456
  %and1112 = xor i32 %and1060, %offset.20, !dbg !965
  call void @llvm.dbg.value(metadata i32 %and1112, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1135, !dbg !965

do.body1114:                                      ; preds = %do.end1085
  %sub1116 = sub i32 %rc1.sroa.0.35, %mul1091, !dbg !966
  call void @llvm.dbg.value(metadata i32 %sub1116, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1118 = sub i32 %rc1.sroa.500.35, %mul1091, !dbg !966
  call void @llvm.dbg.value(metadata i32 %sub1118, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %83 = lshr i16 %81, 5, !dbg !966
  %sub1126 = sub i16 %81, %83, !dbg !966
  store i16 %sub1126, ptr %arrayidx1089, align 2, !dbg !966, !tbaa !597
  %shl1130 = shl i32 %symbol.20, 1, !dbg !969
  %add1131 = or i32 %shl1130, 1, !dbg !969
  call void @llvm.dbg.value(metadata i32 %add1131, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and1060, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1135

do.end1135:                                       ; preds = %do.body1114, %do.body1096
  %symbol.21 = phi i32 [ %shl1110, %do.body1096 ], [ %add1131, %do.body1114 ], !dbg !970
  %offset.21 = phi i32 [ %and1112, %do.body1096 ], [ %and1060, %do.body1114 ], !dbg !970
  %rc1.sroa.0.36 = phi i32 [ %mul1091, %do.body1096 ], [ %sub1116, %do.body1114 ], !dbg !970
  %rc1.sroa.500.36 = phi i32 [ %rc1.sroa.500.35, %do.body1096 ], [ %sub1118, %do.body1114 ], !dbg !971
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.36, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.36, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.21, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.21, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.15, metadata !283, metadata !DIExpression()), !dbg !456
  %shl1136 = shl i32 %len.15, 1, !dbg !972
  call void @llvm.dbg.value(metadata i32 %shl1136, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb1137, !dbg !973

sw.bb1137:                                        ; preds = %if.end, %do.end1135
  %dict.sroa.36.16 = phi i64 [ %dict.sroa.36.15, %do.end1135 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.16 = phi i64 [ %dict.sroa.12.15, %do.end1135 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.16 = phi i32 [ %shl1136, %do.end1135 ], [ %14, %if.end ], !dbg !456
  %rep0.16 = phi i32 [ %rep0.15, %do.end1135 ], [ %5, %if.end ], !dbg !573
  %rep1.16 = phi i32 [ %rep1.15, %do.end1135 ], [ %6, %if.end ], !dbg !574
  %rep2.16 = phi i32 [ %rep2.15, %do.end1135 ], [ %7, %if.end ], !dbg !575
  %rep3.16 = phi i32 [ %rep3.15, %do.end1135 ], [ %8, %if.end ], !dbg !576
  %state.16 = phi i32 [ %state.15, %do.end1135 ], [ %4, %if.end ], !dbg !581
  %probs.16 = phi ptr [ %probs.15, %do.end1135 ], [ %10, %if.end ], !dbg !456
  %symbol.22 = phi i32 [ %symbol.21, %do.end1135 ], [ %11, %if.end ], !dbg !456
  %limit.16 = phi i32 [ %limit.15, %do.end1135 ], [ %12, %if.end ], !dbg !577
  %offset.22 = phi i32 [ %offset.21, %do.end1135 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.31 = phi i64 [ %rc_in_pos.30, %do.end1135 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.37 = phi i32 [ %rc1.sroa.0.36, %do.end1135 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.37 = phi i32 [ %rc1.sroa.500.36, %do.end1135 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.16, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.16, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.37, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.37, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.31, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.22, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.16, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.22, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.16, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.16, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.16, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.16, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.16, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.16, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.16, metadata !283, metadata !DIExpression()), !dbg !456
  %and1138 = and i32 %offset.22, %len.16, !dbg !974
  call void @llvm.dbg.value(metadata i32 %and1138, metadata !290, metadata !DIExpression()), !dbg !812
  %add1139 = add i32 %offset.22, %symbol.22, !dbg !974
  %add1140 = add i32 %add1139, %and1138, !dbg !974
  call void @llvm.dbg.value(metadata i32 %add1140, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp1144 = icmp ult i32 %rc1.sroa.0.37, 16777216, !dbg !975
  br i1 %cmp1144, label %if.then1146, label %do.end1163, !dbg !979

if.then1146:                                      ; preds = %sw.bb1137
  %cmp1147 = icmp eq i64 %rc_in_pos.31, %in_size, !dbg !980
  br i1 %cmp1147, label %if.then1149, label %if.end1151, !dbg !983

if.then1149:                                      ; preds = %if.then1146
  store i32 16, ptr %sequence, align 8, !dbg !984, !tbaa !548
  br label %out, !dbg !984

if.end1151:                                       ; preds = %if.then1146
  %shl1153 = shl nuw i32 %rc1.sroa.0.37, 8, !dbg !983
  call void @llvm.dbg.value(metadata i32 %shl1153, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1155 = shl i32 %rc1.sroa.500.37, 8, !dbg !983
  %inc1156 = add i64 %rc_in_pos.31, 1, !dbg !983
  call void @llvm.dbg.value(metadata i64 %inc1156, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1157 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.31, !dbg !983
  %84 = load i8, ptr %arrayidx1157, align 1, !dbg !983, !tbaa !493
  %conv1158 = zext i8 %84 to i32, !dbg !983
  %or1159 = or i32 %shl1155, %conv1158, !dbg !983
  call void @llvm.dbg.value(metadata i32 %or1159, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1163, !dbg !983

do.end1163:                                       ; preds = %if.end1151, %sw.bb1137
  %rc_in_pos.32 = phi i64 [ %inc1156, %if.end1151 ], [ %rc_in_pos.31, %sw.bb1137 ], !dbg !812
  %rc1.sroa.0.38 = phi i32 [ %shl1153, %if.end1151 ], [ %rc1.sroa.0.37, %sw.bb1137 ], !dbg !812
  %rc1.sroa.500.38 = phi i32 [ %or1159, %if.end1151 ], [ %rc1.sroa.500.37, %sw.bb1137 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.38, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.38, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.32, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1165 = lshr i32 %rc1.sroa.0.38, 11, !dbg !986
  %idxprom1166 = zext i32 %add1140 to i64, !dbg !986
  %arrayidx1167 = getelementptr inbounds i16, ptr %probs.16, i64 %idxprom1166, !dbg !986
  %85 = load i16, ptr %arrayidx1167, align 2, !dbg !986, !tbaa !597
  %conv1168 = zext i16 %85 to i32, !dbg !986
  %mul1169 = mul i32 %shr1165, %conv1168, !dbg !986
  call void @llvm.dbg.value(metadata i32 %mul1169, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1171 = icmp ult i32 %rc1.sroa.500.38, %mul1169, !dbg !987
  br i1 %cmp1171, label %do.body1174, label %do.body1192, !dbg !986

do.body1174:                                      ; preds = %do.end1163
  call void @llvm.dbg.value(metadata i32 %mul1169, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1179 = sub nsw i32 2048, %conv1168, !dbg !989
  %shr1180 = lshr i32 %sub1179, 5, !dbg !989
  %86 = trunc i32 %shr1180 to i16, !dbg !989
  %conv1185 = add i16 %85, %86, !dbg !989
  store i16 %conv1185, ptr %arrayidx1167, align 2, !dbg !989, !tbaa !597
  %shl1188 = shl i32 %symbol.22, 1, !dbg !992
  call void @llvm.dbg.value(metadata i32 %shl1188, metadata !280, metadata !DIExpression()), !dbg !456
  %and1190 = xor i32 %and1138, %offset.22, !dbg !992
  call void @llvm.dbg.value(metadata i32 %and1190, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1213, !dbg !992

do.body1192:                                      ; preds = %do.end1163
  %sub1194 = sub i32 %rc1.sroa.0.38, %mul1169, !dbg !993
  call void @llvm.dbg.value(metadata i32 %sub1194, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1196 = sub i32 %rc1.sroa.500.38, %mul1169, !dbg !993
  call void @llvm.dbg.value(metadata i32 %sub1196, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %87 = lshr i16 %85, 5, !dbg !993
  %sub1204 = sub i16 %85, %87, !dbg !993
  store i16 %sub1204, ptr %arrayidx1167, align 2, !dbg !993, !tbaa !597
  %shl1208 = shl i32 %symbol.22, 1, !dbg !996
  %add1209 = or i32 %shl1208, 1, !dbg !996
  call void @llvm.dbg.value(metadata i32 %add1209, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and1138, metadata !282, metadata !DIExpression()), !dbg !456
  br label %do.end1213

do.end1213:                                       ; preds = %do.body1192, %do.body1174
  %symbol.23 = phi i32 [ %shl1188, %do.body1174 ], [ %add1209, %do.body1192 ], !dbg !997
  %offset.23 = phi i32 [ %and1190, %do.body1174 ], [ %and1138, %do.body1192 ], !dbg !997
  %rc1.sroa.0.39 = phi i32 [ %mul1169, %do.body1174 ], [ %sub1194, %do.body1192 ], !dbg !997
  %rc1.sroa.500.39 = phi i32 [ %rc1.sroa.500.38, %do.body1174 ], [ %sub1196, %do.body1192 ], !dbg !998
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.39, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.39, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.23, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.23, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.16, metadata !283, metadata !DIExpression()), !dbg !456
  %shl1214 = shl i32 %len.16, 1, !dbg !999
  call void @llvm.dbg.value(metadata i32 %shl1214, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb1215, !dbg !1000

sw.bb1215:                                        ; preds = %if.end, %do.end1213
  %dict.sroa.36.17 = phi i64 [ %dict.sroa.36.16, %do.end1213 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.17 = phi i64 [ %dict.sroa.12.16, %do.end1213 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.17 = phi i32 [ %shl1214, %do.end1213 ], [ %14, %if.end ], !dbg !456
  %rep0.17 = phi i32 [ %rep0.16, %do.end1213 ], [ %5, %if.end ], !dbg !573
  %rep1.17 = phi i32 [ %rep1.16, %do.end1213 ], [ %6, %if.end ], !dbg !574
  %rep2.17 = phi i32 [ %rep2.16, %do.end1213 ], [ %7, %if.end ], !dbg !575
  %rep3.17 = phi i32 [ %rep3.16, %do.end1213 ], [ %8, %if.end ], !dbg !576
  %state.17 = phi i32 [ %state.16, %do.end1213 ], [ %4, %if.end ], !dbg !581
  %probs.17 = phi ptr [ %probs.16, %do.end1213 ], [ %10, %if.end ], !dbg !456
  %symbol.24 = phi i32 [ %symbol.23, %do.end1213 ], [ %11, %if.end ], !dbg !456
  %limit.17 = phi i32 [ %limit.16, %do.end1213 ], [ %12, %if.end ], !dbg !577
  %offset.24 = phi i32 [ %offset.23, %do.end1213 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.33 = phi i64 [ %rc_in_pos.32, %do.end1213 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.40 = phi i32 [ %rc1.sroa.0.39, %do.end1213 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.40 = phi i32 [ %rc1.sroa.500.39, %do.end1213 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.17, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.17, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.40, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.40, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.33, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.24, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.17, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.24, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.17, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.17, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.17, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.17, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.17, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.17, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.17, metadata !283, metadata !DIExpression()), !dbg !456
  %and1216 = and i32 %offset.24, %len.17, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %and1216, metadata !290, metadata !DIExpression()), !dbg !812
  %add1217 = add i32 %offset.24, %symbol.24, !dbg !1001
  %add1218 = add i32 %add1217, %and1216, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %add1218, metadata !296, metadata !DIExpression()), !dbg !812
  %cmp1222 = icmp ult i32 %rc1.sroa.0.40, 16777216, !dbg !1002
  br i1 %cmp1222, label %if.then1224, label %do.end1241, !dbg !1006

if.then1224:                                      ; preds = %sw.bb1215
  %cmp1225 = icmp eq i64 %rc_in_pos.33, %in_size, !dbg !1007
  br i1 %cmp1225, label %if.then1227, label %if.end1229, !dbg !1010

if.then1227:                                      ; preds = %if.then1224
  store i32 17, ptr %sequence, align 8, !dbg !1011, !tbaa !548
  br label %out, !dbg !1011

if.end1229:                                       ; preds = %if.then1224
  %shl1231 = shl nuw i32 %rc1.sroa.0.40, 8, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %shl1231, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1233 = shl i32 %rc1.sroa.500.40, 8, !dbg !1010
  %inc1234 = add i64 %rc_in_pos.33, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %inc1234, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1235 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.33, !dbg !1010
  %88 = load i8, ptr %arrayidx1235, align 1, !dbg !1010, !tbaa !493
  %conv1236 = zext i8 %88 to i32, !dbg !1010
  %or1237 = or i32 %shl1233, %conv1236, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %or1237, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1241, !dbg !1010

do.end1241:                                       ; preds = %if.end1229, %sw.bb1215
  %rc_in_pos.34 = phi i64 [ %inc1234, %if.end1229 ], [ %rc_in_pos.33, %sw.bb1215 ], !dbg !812
  %rc1.sroa.0.41 = phi i32 [ %shl1231, %if.end1229 ], [ %rc1.sroa.0.40, %sw.bb1215 ], !dbg !812
  %rc1.sroa.500.41 = phi i32 [ %or1237, %if.end1229 ], [ %rc1.sroa.500.40, %sw.bb1215 ], !dbg !812
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.41, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.41, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.34, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1243 = lshr i32 %rc1.sroa.0.41, 11, !dbg !1013
  %idxprom1244 = zext i32 %add1218 to i64, !dbg !1013
  %arrayidx1245 = getelementptr inbounds i16, ptr %probs.17, i64 %idxprom1244, !dbg !1013
  %89 = load i16, ptr %arrayidx1245, align 2, !dbg !1013, !tbaa !597
  %conv1246 = zext i16 %89 to i32, !dbg !1013
  %mul1247 = mul i32 %shr1243, %conv1246, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %mul1247, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1249 = icmp ult i32 %rc1.sroa.500.41, %mul1247, !dbg !1014
  br i1 %cmp1249, label %do.body1252, label %do.body1270, !dbg !1013

do.body1252:                                      ; preds = %do.end1241
  call void @llvm.dbg.value(metadata i32 %mul1247, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1257 = sub nsw i32 2048, %conv1246, !dbg !1016
  %shr1258 = lshr i32 %sub1257, 5, !dbg !1016
  %90 = trunc i32 %shr1258 to i16, !dbg !1016
  %conv1263 = add i16 %89, %90, !dbg !1016
  store i16 %conv1263, ptr %arrayidx1245, align 2, !dbg !1016, !tbaa !597
  %shl1266 = shl i32 %symbol.24, 1, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %shl1266, metadata !280, metadata !DIExpression()), !dbg !456
  %and1268 = xor i32 %and1216, %offset.24, !dbg !1019
  call void @llvm.dbg.value(metadata i32 %and1268, metadata !282, metadata !DIExpression()), !dbg !456
  br label %if.end1292, !dbg !1019

do.body1270:                                      ; preds = %do.end1241
  %sub1272 = sub i32 %rc1.sroa.0.41, %mul1247, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %sub1272, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1274 = sub i32 %rc1.sroa.500.41, %mul1247, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %sub1274, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %91 = lshr i16 %89, 5, !dbg !1020
  %sub1282 = sub i16 %89, %91, !dbg !1020
  store i16 %sub1282, ptr %arrayidx1245, align 2, !dbg !1020, !tbaa !597
  %shl1286 = shl i32 %symbol.24, 1, !dbg !1023
  %add1287 = or i32 %shl1286, 1, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %add1287, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %and1216, metadata !282, metadata !DIExpression()), !dbg !456
  br label %if.end1292

if.end1292:                                       ; preds = %do.body1252, %do.body1270, %do.body629, %do.body645
  %dict.sroa.36.18 = phi i64 [ %dict.sroa.36.9, %do.body629 ], [ %dict.sroa.36.9, %do.body645 ], [ %dict.sroa.36.17, %do.body1252 ], [ %dict.sroa.36.17, %do.body1270 ], !dbg !550
  %dict.sroa.12.18 = phi i64 [ %dict.sroa.12.9, %do.body629 ], [ %dict.sroa.12.9, %do.body645 ], [ %dict.sroa.12.17, %do.body1252 ], [ %dict.sroa.12.17, %do.body1270 ], !dbg !569
  %len.18 = phi i32 [ %len.9, %do.body629 ], [ %len.9, %do.body645 ], [ %len.17, %do.body1252 ], [ %len.17, %do.body1270 ], !dbg !632
  %rep0.18 = phi i32 [ %rep0.9, %do.body629 ], [ %rep0.9, %do.body645 ], [ %rep0.17, %do.body1252 ], [ %rep0.17, %do.body1270 ], !dbg !573
  %rep1.18 = phi i32 [ %rep1.9, %do.body629 ], [ %rep1.9, %do.body645 ], [ %rep1.17, %do.body1252 ], [ %rep1.17, %do.body1270 ], !dbg !574
  %rep2.18 = phi i32 [ %rep2.9, %do.body629 ], [ %rep2.9, %do.body645 ], [ %rep2.17, %do.body1252 ], [ %rep2.17, %do.body1270 ], !dbg !575
  %rep3.18 = phi i32 [ %rep3.9, %do.body629 ], [ %rep3.9, %do.body645 ], [ %rep3.17, %do.body1252 ], [ %rep3.17, %do.body1270 ], !dbg !576
  %state.18 = phi i32 [ %state.9, %do.body629 ], [ %state.9, %do.body645 ], [ %state.17, %do.body1252 ], [ %state.17, %do.body1270 ], !dbg !581
  %probs.18 = phi ptr [ %probs.9, %do.body629 ], [ %probs.9, %do.body645 ], [ %probs.17, %do.body1252 ], [ %probs.17, %do.body1270 ], !dbg !1024
  %symbol.25 = phi i32 [ %shl643, %do.body629 ], [ %add662, %do.body645 ], [ %shl1266, %do.body1252 ], [ %add1287, %do.body1270 ], !dbg !1025
  %limit.18 = phi i32 [ %limit.9, %do.body629 ], [ %limit.9, %do.body645 ], [ %limit.17, %do.body1252 ], [ %limit.17, %do.body1270 ], !dbg !577
  %offset.25 = phi i32 [ %offset.9, %do.body629 ], [ %offset.9, %do.body645 ], [ %and1268, %do.body1252 ], [ %and1216, %do.body1270 ], !dbg !456
  %rc_in_pos.35 = phi i64 [ %rc_in_pos.18, %do.body629 ], [ %rc_in_pos.18, %do.body645 ], [ %rc_in_pos.34, %do.body1252 ], [ %rc_in_pos.34, %do.body1270 ], !dbg !1025
  %rc1.sroa.0.42 = phi i32 [ %mul624, %do.body629 ], [ %sub647, %do.body645 ], [ %mul1247, %do.body1252 ], [ %sub1272, %do.body1270 ], !dbg !1025
  %rc1.sroa.500.42 = phi i32 [ %rc1.sroa.500.18, %do.body629 ], [ %sub649, %do.body645 ], [ %rc1.sroa.500.41, %do.body1252 ], [ %sub1274, %do.body1270 ], !dbg !1025
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.18, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.18, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.42, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.42, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.35, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.25, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.18, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.25, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.18, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.18, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.18, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.18, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.18, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.18, metadata !273, metadata !DIExpression()), !dbg !456
  %idxprom1293 = zext i32 %state.18 to i64, !dbg !1026
  %arrayidx1294 = getelementptr inbounds [12 x i32], ptr @lzma_decode.next_state, i64 0, i64 %idxprom1293, !dbg !1026
  %92 = load i32, ptr %arrayidx1294, align 4, !dbg !1026, !tbaa !493
  call void @llvm.dbg.value(metadata i32 %92, metadata !272, metadata !DIExpression()), !dbg !456
  br label %sw.bb1295, !dbg !1027

sw.bb1295:                                        ; preds = %if.end, %if.end1292
  %dict.sroa.36.19 = phi i64 [ %dict.sroa.36.18, %if.end1292 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.19 = phi i64 [ %dict.sroa.12.18, %if.end1292 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.19 = phi i32 [ %len.18, %if.end1292 ], [ %14, %if.end ], !dbg !456
  %rep0.19 = phi i32 [ %rep0.18, %if.end1292 ], [ %5, %if.end ], !dbg !573
  %rep1.19 = phi i32 [ %rep1.18, %if.end1292 ], [ %6, %if.end ], !dbg !574
  %rep2.19 = phi i32 [ %rep2.18, %if.end1292 ], [ %7, %if.end ], !dbg !575
  %rep3.19 = phi i32 [ %rep3.18, %if.end1292 ], [ %8, %if.end ], !dbg !576
  %state.19 = phi i32 [ %92, %if.end1292 ], [ %4, %if.end ], !dbg !456
  %probs.19 = phi ptr [ %probs.18, %if.end1292 ], [ %10, %if.end ], !dbg !456
  %symbol.26 = phi i32 [ %symbol.25, %if.end1292 ], [ %11, %if.end ], !dbg !456
  %limit.19 = phi i32 [ %limit.18, %if.end1292 ], [ %12, %if.end ], !dbg !577
  %offset.26 = phi i32 [ %offset.25, %if.end1292 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.36 = phi i64 [ %rc_in_pos.35, %if.end1292 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.43 = phi i32 [ %rc1.sroa.0.42, %if.end1292 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.43 = phi i32 [ %rc1.sroa.500.42, %if.end1292 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.19, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.19, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.43, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.43, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.36, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.26, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.19, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.26, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.19, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.19, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.19, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.19, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.19, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.19, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr undef, metadata !1028, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.value(metadata i32 %symbol.26, metadata !1033, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1034
  %cmp.i7850 = icmp eq i64 %dict.sroa.12.19, %spec.select7962, !dbg !1037
  br i1 %cmp.i7850, label %if.then1298, label %if.end.i7853, !dbg !1039

if.end.i7853:                                     ; preds = %sw.bb1295
  %conv1296 = trunc i32 %symbol.26 to i8, !dbg !1040
  call void @llvm.dbg.value(metadata i8 %conv1296, metadata !1033, metadata !DIExpression()), !dbg !1034
  %inc.i7851 = add i64 %dict.sroa.12.19, 1, !dbg !1041
  call void @llvm.dbg.value(metadata i64 %inc.i7851, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %arrayidx.i7852 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.19, !dbg !1042
  store i8 %conv1296, ptr %arrayidx.i7852, align 1, !dbg !1043, !tbaa !493
  %93 = tail call i64 @llvm.umax.i64(i64 %inc.i7851, i64 %dict.sroa.36.19), !dbg !1044
  br label %while.body, !dbg !1044

if.then1298:                                      ; preds = %sw.bb1295
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.19, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.19, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  store i32 18, ptr %sequence, align 8, !dbg !1045, !tbaa !548
  br label %out, !dbg !1047

do.body1302:                                      ; preds = %do.end
  %sub1304 = sub i32 %rc1.sroa.0.2, %mul, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %sub1304, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1306 = sub i32 %rc1.sroa.500.2, %mul, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %sub1306, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %94 = lshr i16 %22, 5, !dbg !1048
  %sub1320 = sub i16 %22, %94, !dbg !1048
  store i16 %sub1320, ptr %arrayidx59, align 2, !dbg !1048, !tbaa !597
  br label %do.body1325, !dbg !1048

do.body1325:                                      ; preds = %do.body1302, %if.end
  %dict.sroa.36.21 = phi i64 [ %dict.sroa.36.1, %do.body1302 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.21 = phi i64 [ %dict.sroa.12.1, %do.body1302 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.20 = phi i32 [ %len.1, %do.body1302 ], [ %14, %if.end ], !dbg !456
  %rep0.20 = phi i32 [ %rep0.1, %do.body1302 ], [ %5, %if.end ], !dbg !573
  %rep1.20 = phi i32 [ %rep1.1, %do.body1302 ], [ %6, %if.end ], !dbg !574
  %rep2.20 = phi i32 [ %rep2.1, %do.body1302 ], [ %7, %if.end ], !dbg !575
  %rep3.20 = phi i32 [ %rep3.1, %do.body1302 ], [ %8, %if.end ], !dbg !576
  %state.20 = phi i32 [ %state.1, %do.body1302 ], [ %4, %if.end ], !dbg !581
  %probs.20 = phi ptr [ %probs.1, %do.body1302 ], [ %10, %if.end ], !dbg !582
  %symbol.27 = phi i32 [ %symbol.1, %do.body1302 ], [ %11, %if.end ], !dbg !583
  %limit.20 = phi i32 [ %limit.1, %do.body1302 ], [ %12, %if.end ], !dbg !577
  %offset.27 = phi i32 [ %offset.1, %do.body1302 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.37 = phi i64 [ %rc_in_pos.2, %do.body1302 ], [ %3, %if.end ], !dbg !456
  %pos_state.1 = phi i32 [ %pos_state.0, %do.body1302 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.44 = phi i32 [ %sub1304, %do.body1302 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.44 = phi i32 [ %sub1306, %do.body1302 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.21, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.21, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.44, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.44, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.1, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.37, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.27, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.20, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.27, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.20, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.20, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.20, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.20, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.20, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.20, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1327 = icmp ult i32 %rc1.sroa.0.44, 16777216, !dbg !1050
  br i1 %cmp1327, label %if.then1329, label %do.end1346, !dbg !1053

if.then1329:                                      ; preds = %do.body1325
  %cmp1330 = icmp eq i64 %rc_in_pos.37, %in_size, !dbg !1054
  br i1 %cmp1330, label %if.then1332, label %if.end1334, !dbg !1057

if.then1332:                                      ; preds = %if.then1329
  store i32 19, ptr %sequence, align 8, !dbg !1058, !tbaa !548
  br label %out, !dbg !1058

if.end1334:                                       ; preds = %if.then1329
  %shl1336 = shl nuw i32 %rc1.sroa.0.44, 8, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %shl1336, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1338 = shl i32 %rc1.sroa.500.44, 8, !dbg !1057
  %inc1339 = add i64 %rc_in_pos.37, 1, !dbg !1057
  call void @llvm.dbg.value(metadata i64 %inc1339, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1340 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.37, !dbg !1057
  %95 = load i8, ptr %arrayidx1340, align 1, !dbg !1057, !tbaa !493
  %conv1341 = zext i8 %95 to i32, !dbg !1057
  %or1342 = or i32 %shl1338, %conv1341, !dbg !1057
  call void @llvm.dbg.value(metadata i32 %or1342, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1346, !dbg !1057

do.end1346:                                       ; preds = %if.end1334, %do.body1325
  %rc_in_pos.38 = phi i64 [ %inc1339, %if.end1334 ], [ %rc_in_pos.37, %do.body1325 ], !dbg !632
  %rc1.sroa.0.45 = phi i32 [ %shl1336, %if.end1334 ], [ %rc1.sroa.0.44, %do.body1325 ], !dbg !632
  %rc1.sroa.500.45 = phi i32 [ %or1342, %if.end1334 ], [ %rc1.sroa.500.44, %do.body1325 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.45, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.45, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.38, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1348 = lshr i32 %rc1.sroa.0.45, 11, !dbg !1060
  %idxprom1349 = zext i32 %state.20 to i64, !dbg !1060
  %arrayidx1350 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %idxprom1349, !dbg !1060
  %96 = load i16, ptr %arrayidx1350, align 2, !dbg !1060, !tbaa !597
  %conv1351 = zext i16 %96 to i32, !dbg !1060
  %mul1352 = mul i32 %shr1348, %conv1351, !dbg !1060
  call void @llvm.dbg.value(metadata i32 %mul1352, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1354 = icmp ult i32 %rc1.sroa.500.45, %mul1352, !dbg !1061
  br i1 %cmp1354, label %do.body1357, label %do.body3917, !dbg !1060

do.body1357:                                      ; preds = %do.end1346
  call void @llvm.dbg.value(metadata i32 %mul1352, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1363 = sub nsw i32 2048, %conv1351, !dbg !1062
  %shr1364 = lshr i32 %sub1363, 5, !dbg !1062
  %97 = trunc i32 %shr1364 to i16, !dbg !1062
  %conv1370 = add i16 %96, %97, !dbg !1062
  store i16 %conv1370, ptr %arrayidx1350, align 2, !dbg !1062, !tbaa !597
  %cmp1373 = icmp ult i32 %state.20, 7, !dbg !1065
  %cond = select i1 %cmp1373, i32 7, i32 10, !dbg !1065
  call void @llvm.dbg.value(metadata i32 %cond, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.20, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.20, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.20, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1377, !dbg !1066

do.body1377:                                      ; preds = %do.body1357, %if.end
  %dict.sroa.36.22 = phi i64 [ %dict.sroa.36.21, %do.body1357 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.22 = phi i64 [ %dict.sroa.12.21, %do.body1357 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.21 = phi i32 [ %len.20, %do.body1357 ], [ %14, %if.end ], !dbg !456
  %rep0.21 = phi i32 [ %rep0.20, %do.body1357 ], [ %5, %if.end ], !dbg !573
  %rep1.21 = phi i32 [ %rep0.20, %do.body1357 ], [ %6, %if.end ], !dbg !456
  %rep2.21 = phi i32 [ %rep1.20, %do.body1357 ], [ %7, %if.end ], !dbg !456
  %rep3.21 = phi i32 [ %rep2.20, %do.body1357 ], [ %8, %if.end ], !dbg !456
  %state.21 = phi i32 [ %cond, %do.body1357 ], [ %4, %if.end ], !dbg !456
  %probs.21 = phi ptr [ %probs.20, %do.body1357 ], [ %10, %if.end ], !dbg !582
  %symbol.28 = phi i32 [ 1, %do.body1357 ], [ %11, %if.end ], !dbg !456
  %limit.21 = phi i32 [ %limit.20, %do.body1357 ], [ %12, %if.end ], !dbg !577
  %offset.28 = phi i32 [ %offset.27, %do.body1357 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.39 = phi i64 [ %rc_in_pos.38, %do.body1357 ], [ %3, %if.end ], !dbg !456
  %pos_state.2 = phi i32 [ %pos_state.1, %do.body1357 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.46 = phi i32 [ %mul1352, %do.body1357 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.46 = phi i32 [ %rc1.sroa.500.45, %do.body1357 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.22, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.22, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.46, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.46, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.2, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.39, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.28, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.21, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.28, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.21, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.21, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.21, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.21, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.21, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.21, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1379 = icmp ult i32 %rc1.sroa.0.46, 16777216, !dbg !1068
  br i1 %cmp1379, label %if.then1381, label %do.end1398, !dbg !1071

if.then1381:                                      ; preds = %do.body1377
  %cmp1382 = icmp eq i64 %rc_in_pos.39, %in_size, !dbg !1072
  br i1 %cmp1382, label %if.then1384, label %if.end1386, !dbg !1075

if.then1384:                                      ; preds = %if.then1381
  store i32 20, ptr %sequence, align 8, !dbg !1076, !tbaa !548
  br label %out, !dbg !1076

if.end1386:                                       ; preds = %if.then1381
  %shl1388 = shl nuw i32 %rc1.sroa.0.46, 8, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %shl1388, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1390 = shl i32 %rc1.sroa.500.46, 8, !dbg !1075
  %inc1391 = add i64 %rc_in_pos.39, 1, !dbg !1075
  call void @llvm.dbg.value(metadata i64 %inc1391, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1392 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.39, !dbg !1075
  %98 = load i8, ptr %arrayidx1392, align 1, !dbg !1075, !tbaa !493
  %conv1393 = zext i8 %98 to i32, !dbg !1075
  %or1394 = or i32 %shl1390, %conv1393, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %or1394, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1398, !dbg !1075

do.end1398:                                       ; preds = %if.end1386, %do.body1377
  %rc_in_pos.40 = phi i64 [ %inc1391, %if.end1386 ], [ %rc_in_pos.39, %do.body1377 ], !dbg !632
  %rc1.sroa.0.47 = phi i32 [ %shl1388, %if.end1386 ], [ %rc1.sroa.0.46, %do.body1377 ], !dbg !1078
  %rc1.sroa.500.47 = phi i32 [ %or1394, %if.end1386 ], [ %rc1.sroa.500.46, %do.body1377 ], !dbg !632
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.47, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.47, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.40, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1400 = lshr i32 %rc1.sroa.0.47, 11, !dbg !1066
  %match_len_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !1066
  %99 = load i16, ptr %match_len_decoder, align 4, !dbg !1066, !tbaa !1079
  %conv1401 = zext i16 %99 to i32, !dbg !1066
  %mul1402 = mul i32 %shr1400, %conv1401, !dbg !1066
  call void @llvm.dbg.value(metadata i32 %mul1402, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1404 = icmp ult i32 %rc1.sroa.500.47, %mul1402, !dbg !1080
  br i1 %cmp1404, label %do.body1407, label %do.body1696, !dbg !1066

do.body1407:                                      ; preds = %do.end1398
  call void @llvm.dbg.value(metadata i32 %mul1402, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1412 = sub nsw i32 2048, %conv1401, !dbg !1082
  %shr1413 = lshr i32 %sub1412, 5, !dbg !1082
  %100 = trunc i32 %shr1413 to i16, !dbg !1082
  %conv1418 = add i16 %99, %100, !dbg !1082
  store i16 %conv1418, ptr %match_len_decoder, align 4, !dbg !1082, !tbaa !1079
  br label %do.body1423, !dbg !1082

do.body1423:                                      ; preds = %if.end, %do.body1407
  %dict.sroa.36.23 = phi i64 [ %dict.sroa.36.22, %do.body1407 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.23 = phi i64 [ %dict.sroa.12.22, %do.body1407 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.22 = phi i32 [ %len.21, %do.body1407 ], [ %14, %if.end ], !dbg !456
  %rep0.22 = phi i32 [ %rep0.21, %do.body1407 ], [ %5, %if.end ], !dbg !573
  %rep1.22 = phi i32 [ %rep1.21, %do.body1407 ], [ %6, %if.end ], !dbg !456
  %rep2.22 = phi i32 [ %rep2.21, %do.body1407 ], [ %7, %if.end ], !dbg !456
  %rep3.22 = phi i32 [ %rep3.21, %do.body1407 ], [ %8, %if.end ], !dbg !456
  %state.22 = phi i32 [ %state.21, %do.body1407 ], [ %4, %if.end ], !dbg !456
  %probs.22 = phi ptr [ %probs.21, %do.body1407 ], [ %10, %if.end ], !dbg !582
  %symbol.29 = phi i32 [ %symbol.28, %do.body1407 ], [ %11, %if.end ], !dbg !456
  %limit.22 = phi i32 [ %limit.21, %do.body1407 ], [ %12, %if.end ], !dbg !577
  %offset.29 = phi i32 [ %offset.28, %do.body1407 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.41 = phi i64 [ %rc_in_pos.40, %do.body1407 ], [ %3, %if.end ], !dbg !456
  %pos_state.3 = phi i32 [ %pos_state.2, %do.body1407 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.48 = phi i32 [ %mul1402, %do.body1407 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.48 = phi i32 [ %rc1.sroa.500.47, %do.body1407 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.23, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.23, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.48, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.48, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.3, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.41, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.29, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.22, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.29, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.22, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.22, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.22, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.22, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.22, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.22, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1425 = icmp ult i32 %rc1.sroa.0.48, 16777216, !dbg !1085
  br i1 %cmp1425, label %if.then1427, label %do.end1444, !dbg !1089

if.then1427:                                      ; preds = %do.body1423
  %cmp1428 = icmp eq i64 %rc_in_pos.41, %in_size, !dbg !1090
  br i1 %cmp1428, label %if.then1430, label %if.end1432, !dbg !1093

if.then1430:                                      ; preds = %if.then1427
  store i32 21, ptr %sequence, align 8, !dbg !1094, !tbaa !548
  br label %out, !dbg !1094

if.end1432:                                       ; preds = %if.then1427
  %shl1434 = shl nuw i32 %rc1.sroa.0.48, 8, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %shl1434, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1436 = shl i32 %rc1.sroa.500.48, 8, !dbg !1093
  %inc1437 = add i64 %rc_in_pos.41, 1, !dbg !1093
  call void @llvm.dbg.value(metadata i64 %inc1437, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1438 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.41, !dbg !1093
  %101 = load i8, ptr %arrayidx1438, align 1, !dbg !1093, !tbaa !493
  %conv1439 = zext i8 %101 to i32, !dbg !1093
  %or1440 = or i32 %shl1436, %conv1439, !dbg !1093
  call void @llvm.dbg.value(metadata i32 %or1440, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1444, !dbg !1093

do.end1444:                                       ; preds = %if.end1432, %do.body1423
  %rc_in_pos.42 = phi i64 [ %inc1437, %if.end1432 ], [ %rc_in_pos.41, %do.body1423 ], !dbg !1096
  %rc1.sroa.0.49 = phi i32 [ %shl1434, %if.end1432 ], [ %rc1.sroa.0.48, %do.body1423 ], !dbg !1097
  %rc1.sroa.500.49 = phi i32 [ %or1440, %if.end1432 ], [ %rc1.sroa.500.48, %do.body1423 ], !dbg !1096
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.49, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.49, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.42, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1446 = lshr i32 %rc1.sroa.0.49, 11, !dbg !1098
  %idxprom1448 = zext i32 %pos_state.3 to i64, !dbg !1098
  %idxprom1450 = zext i32 %symbol.29 to i64, !dbg !1098
  %arrayidx1451 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 2, i64 %idxprom1448, i64 %idxprom1450, !dbg !1098
  %102 = load i16, ptr %arrayidx1451, align 2, !dbg !1098, !tbaa !597
  %conv1452 = zext i16 %102 to i32, !dbg !1098
  %mul1453 = mul i32 %shr1446, %conv1452, !dbg !1098
  call void @llvm.dbg.value(metadata i32 %mul1453, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1455 = icmp ult i32 %rc1.sroa.500.49, %mul1453, !dbg !1099
  br i1 %cmp1455, label %do.body1458, label %do.body1482, !dbg !1098

do.body1458:                                      ; preds = %do.end1444
  call void @llvm.dbg.value(metadata i32 %mul1453, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1467 = sub nsw i32 2048, %conv1452, !dbg !1101
  %shr1468 = lshr i32 %sub1467, 5, !dbg !1101
  %103 = trunc i32 %shr1468 to i16, !dbg !1101
  %conv1477 = add i16 %102, %103, !dbg !1101
  store i16 %conv1477, ptr %arrayidx1451, align 2, !dbg !1101, !tbaa !597
  %shl1480 = shl i32 %symbol.29, 1, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %shl1480, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1513, !dbg !1104

do.body1482:                                      ; preds = %do.end1444
  %sub1484 = sub i32 %rc1.sroa.0.49, %mul1453, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %sub1484, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1486 = sub i32 %rc1.sroa.500.49, %mul1453, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %sub1486, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %104 = lshr i16 %102, 5, !dbg !1105
  %sub1502 = sub i16 %102, %104, !dbg !1105
  store i16 %sub1502, ptr %arrayidx1451, align 2, !dbg !1105, !tbaa !597
  %shl1506 = shl i32 %symbol.29, 1, !dbg !1108
  %add1507 = or i32 %shl1506, 1, !dbg !1108
  call void @llvm.dbg.value(metadata i32 %add1507, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1513

do.body1513:                                      ; preds = %do.body1458, %do.body1482, %if.end
  %dict.sroa.36.24 = phi i64 [ %dict.sroa.36.23, %do.body1458 ], [ %dict.sroa.36.23, %do.body1482 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.24 = phi i64 [ %dict.sroa.12.23, %do.body1458 ], [ %dict.sroa.12.23, %do.body1482 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.23 = phi i32 [ %len.22, %do.body1458 ], [ %len.22, %do.body1482 ], [ %14, %if.end ], !dbg !456
  %rep0.23 = phi i32 [ %rep0.22, %do.body1458 ], [ %rep0.22, %do.body1482 ], [ %5, %if.end ], !dbg !573
  %rep1.23 = phi i32 [ %rep1.22, %do.body1458 ], [ %rep1.22, %do.body1482 ], [ %6, %if.end ], !dbg !456
  %rep2.23 = phi i32 [ %rep2.22, %do.body1458 ], [ %rep2.22, %do.body1482 ], [ %7, %if.end ], !dbg !456
  %rep3.23 = phi i32 [ %rep3.22, %do.body1458 ], [ %rep3.22, %do.body1482 ], [ %8, %if.end ], !dbg !456
  %state.23 = phi i32 [ %state.22, %do.body1458 ], [ %state.22, %do.body1482 ], [ %4, %if.end ], !dbg !456
  %probs.23 = phi ptr [ %probs.22, %do.body1458 ], [ %probs.22, %do.body1482 ], [ %10, %if.end ], !dbg !582
  %symbol.30 = phi i32 [ %shl1480, %do.body1458 ], [ %add1507, %do.body1482 ], [ %11, %if.end ], !dbg !456
  %limit.23 = phi i32 [ %limit.22, %do.body1458 ], [ %limit.22, %do.body1482 ], [ %12, %if.end ], !dbg !577
  %offset.30 = phi i32 [ %offset.29, %do.body1458 ], [ %offset.29, %do.body1482 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.43 = phi i64 [ %rc_in_pos.42, %do.body1458 ], [ %rc_in_pos.42, %do.body1482 ], [ %3, %if.end ], !dbg !456
  %pos_state.4 = phi i32 [ %pos_state.3, %do.body1458 ], [ %pos_state.3, %do.body1482 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.50 = phi i32 [ %mul1453, %do.body1458 ], [ %sub1484, %do.body1482 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.50 = phi i32 [ %rc1.sroa.500.49, %do.body1458 ], [ %sub1486, %do.body1482 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.24, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.24, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.50, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.50, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.4, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.43, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.30, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.23, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.30, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.23, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.23, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.23, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.23, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.23, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.23, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1515 = icmp ult i32 %rc1.sroa.0.50, 16777216, !dbg !1109
  br i1 %cmp1515, label %if.then1517, label %do.end1534, !dbg !1113

if.then1517:                                      ; preds = %do.body1513
  %cmp1518 = icmp eq i64 %rc_in_pos.43, %in_size, !dbg !1114
  br i1 %cmp1518, label %if.then1520, label %if.end1522, !dbg !1117

if.then1520:                                      ; preds = %if.then1517
  store i32 22, ptr %sequence, align 8, !dbg !1118, !tbaa !548
  br label %out, !dbg !1118

if.end1522:                                       ; preds = %if.then1517
  %shl1524 = shl nuw i32 %rc1.sroa.0.50, 8, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %shl1524, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1526 = shl i32 %rc1.sroa.500.50, 8, !dbg !1117
  %inc1527 = add i64 %rc_in_pos.43, 1, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %inc1527, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1528 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.43, !dbg !1117
  %105 = load i8, ptr %arrayidx1528, align 1, !dbg !1117, !tbaa !493
  %conv1529 = zext i8 %105 to i32, !dbg !1117
  %or1530 = or i32 %shl1526, %conv1529, !dbg !1117
  call void @llvm.dbg.value(metadata i32 %or1530, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1534, !dbg !1117

do.end1534:                                       ; preds = %if.end1522, %do.body1513
  %rc_in_pos.44 = phi i64 [ %inc1527, %if.end1522 ], [ %rc_in_pos.43, %do.body1513 ], !dbg !1097
  %rc1.sroa.0.51 = phi i32 [ %shl1524, %if.end1522 ], [ %rc1.sroa.0.50, %do.body1513 ], !dbg !1097
  %rc1.sroa.500.51 = phi i32 [ %or1530, %if.end1522 ], [ %rc1.sroa.500.50, %do.body1513 ], !dbg !1097
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.51, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.51, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.44, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1536 = lshr i32 %rc1.sroa.0.51, 11, !dbg !1120
  %idxprom1539 = zext i32 %pos_state.4 to i64, !dbg !1120
  %idxprom1541 = zext i32 %symbol.30 to i64, !dbg !1120
  %arrayidx1542 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 2, i64 %idxprom1539, i64 %idxprom1541, !dbg !1120
  %106 = load i16, ptr %arrayidx1542, align 2, !dbg !1120, !tbaa !597
  %conv1543 = zext i16 %106 to i32, !dbg !1120
  %mul1544 = mul i32 %shr1536, %conv1543, !dbg !1120
  call void @llvm.dbg.value(metadata i32 %mul1544, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1546 = icmp ult i32 %rc1.sroa.500.51, %mul1544, !dbg !1121
  br i1 %cmp1546, label %do.body1549, label %do.body1573, !dbg !1120

do.body1549:                                      ; preds = %do.end1534
  call void @llvm.dbg.value(metadata i32 %mul1544, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1558 = sub nsw i32 2048, %conv1543, !dbg !1123
  %shr1559 = lshr i32 %sub1558, 5, !dbg !1123
  %107 = trunc i32 %shr1559 to i16, !dbg !1123
  %conv1568 = add i16 %106, %107, !dbg !1123
  store i16 %conv1568, ptr %arrayidx1542, align 2, !dbg !1123, !tbaa !597
  %shl1571 = shl i32 %symbol.30, 1, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %shl1571, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1604, !dbg !1126

do.body1573:                                      ; preds = %do.end1534
  %sub1575 = sub i32 %rc1.sroa.0.51, %mul1544, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %sub1575, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1577 = sub i32 %rc1.sroa.500.51, %mul1544, !dbg !1127
  call void @llvm.dbg.value(metadata i32 %sub1577, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %108 = lshr i16 %106, 5, !dbg !1127
  %sub1593 = sub i16 %106, %108, !dbg !1127
  store i16 %sub1593, ptr %arrayidx1542, align 2, !dbg !1127, !tbaa !597
  %shl1597 = shl i32 %symbol.30, 1, !dbg !1130
  %add1598 = or i32 %shl1597, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i32 %add1598, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1604

do.body1604:                                      ; preds = %do.body1549, %do.body1573, %if.end
  %dict.sroa.36.25 = phi i64 [ %dict.sroa.36.24, %do.body1549 ], [ %dict.sroa.36.24, %do.body1573 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.25 = phi i64 [ %dict.sroa.12.24, %do.body1549 ], [ %dict.sroa.12.24, %do.body1573 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.24 = phi i32 [ %len.23, %do.body1549 ], [ %len.23, %do.body1573 ], [ %14, %if.end ], !dbg !456
  %rep0.24 = phi i32 [ %rep0.23, %do.body1549 ], [ %rep0.23, %do.body1573 ], [ %5, %if.end ], !dbg !573
  %rep1.24 = phi i32 [ %rep1.23, %do.body1549 ], [ %rep1.23, %do.body1573 ], [ %6, %if.end ], !dbg !456
  %rep2.24 = phi i32 [ %rep2.23, %do.body1549 ], [ %rep2.23, %do.body1573 ], [ %7, %if.end ], !dbg !456
  %rep3.24 = phi i32 [ %rep3.23, %do.body1549 ], [ %rep3.23, %do.body1573 ], [ %8, %if.end ], !dbg !456
  %state.24 = phi i32 [ %state.23, %do.body1549 ], [ %state.23, %do.body1573 ], [ %4, %if.end ], !dbg !456
  %probs.24 = phi ptr [ %probs.23, %do.body1549 ], [ %probs.23, %do.body1573 ], [ %10, %if.end ], !dbg !582
  %symbol.31 = phi i32 [ %shl1571, %do.body1549 ], [ %add1598, %do.body1573 ], [ %11, %if.end ], !dbg !456
  %limit.24 = phi i32 [ %limit.23, %do.body1549 ], [ %limit.23, %do.body1573 ], [ %12, %if.end ], !dbg !577
  %offset.31 = phi i32 [ %offset.30, %do.body1549 ], [ %offset.30, %do.body1573 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.45 = phi i64 [ %rc_in_pos.44, %do.body1549 ], [ %rc_in_pos.44, %do.body1573 ], [ %3, %if.end ], !dbg !456
  %pos_state.5 = phi i32 [ %pos_state.4, %do.body1549 ], [ %pos_state.4, %do.body1573 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.52 = phi i32 [ %mul1544, %do.body1549 ], [ %sub1575, %do.body1573 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.52 = phi i32 [ %rc1.sroa.500.51, %do.body1549 ], [ %sub1577, %do.body1573 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.25, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.25, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.52, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.52, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.5, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.45, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.31, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.24, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.31, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.24, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.24, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.24, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.24, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.24, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.24, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1606 = icmp ult i32 %rc1.sroa.0.52, 16777216, !dbg !1131
  br i1 %cmp1606, label %if.then1608, label %do.end1625, !dbg !1135

if.then1608:                                      ; preds = %do.body1604
  %cmp1609 = icmp eq i64 %rc_in_pos.45, %in_size, !dbg !1136
  br i1 %cmp1609, label %if.then1611, label %if.end1613, !dbg !1139

if.then1611:                                      ; preds = %if.then1608
  store i32 23, ptr %sequence, align 8, !dbg !1140, !tbaa !548
  br label %out, !dbg !1140

if.end1613:                                       ; preds = %if.then1608
  %shl1615 = shl nuw i32 %rc1.sroa.0.52, 8, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %shl1615, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1617 = shl i32 %rc1.sroa.500.52, 8, !dbg !1139
  %inc1618 = add i64 %rc_in_pos.45, 1, !dbg !1139
  call void @llvm.dbg.value(metadata i64 %inc1618, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1619 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.45, !dbg !1139
  %109 = load i8, ptr %arrayidx1619, align 1, !dbg !1139, !tbaa !493
  %conv1620 = zext i8 %109 to i32, !dbg !1139
  %or1621 = or i32 %shl1617, %conv1620, !dbg !1139
  call void @llvm.dbg.value(metadata i32 %or1621, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1625, !dbg !1139

do.end1625:                                       ; preds = %if.end1613, %do.body1604
  %rc_in_pos.46 = phi i64 [ %inc1618, %if.end1613 ], [ %rc_in_pos.45, %do.body1604 ], !dbg !1097
  %rc1.sroa.0.53 = phi i32 [ %shl1615, %if.end1613 ], [ %rc1.sroa.0.52, %do.body1604 ], !dbg !1097
  %rc1.sroa.500.53 = phi i32 [ %or1621, %if.end1613 ], [ %rc1.sroa.500.52, %do.body1604 ], !dbg !1097
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.53, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.53, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.46, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1627 = lshr i32 %rc1.sroa.0.53, 11, !dbg !1142
  %idxprom1630 = zext i32 %pos_state.5 to i64, !dbg !1142
  %idxprom1632 = zext i32 %symbol.31 to i64, !dbg !1142
  %arrayidx1633 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 2, i64 %idxprom1630, i64 %idxprom1632, !dbg !1142
  %110 = load i16, ptr %arrayidx1633, align 2, !dbg !1142, !tbaa !597
  %conv1634 = zext i16 %110 to i32, !dbg !1142
  %mul1635 = mul i32 %shr1627, %conv1634, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %mul1635, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1637 = icmp ult i32 %rc1.sroa.500.53, %mul1635, !dbg !1143
  br i1 %cmp1637, label %do.body1640, label %do.body1664, !dbg !1142

do.body1640:                                      ; preds = %do.end1625
  call void @llvm.dbg.value(metadata i32 %mul1635, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1649 = sub nsw i32 2048, %conv1634, !dbg !1145
  %shr1650 = lshr i32 %sub1649, 5, !dbg !1145
  %111 = trunc i32 %shr1650 to i16, !dbg !1145
  %conv1659 = add i16 %110, %111, !dbg !1145
  store i16 %conv1659, ptr %arrayidx1633, align 2, !dbg !1145, !tbaa !597
  %shl1662 = shl i32 %symbol.31, 1, !dbg !1148
  call void @llvm.dbg.value(metadata i32 %shl1662, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end1692, !dbg !1148

do.body1664:                                      ; preds = %do.end1625
  %sub1666 = sub i32 %rc1.sroa.0.53, %mul1635, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %sub1666, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1668 = sub i32 %rc1.sroa.500.53, %mul1635, !dbg !1149
  call void @llvm.dbg.value(metadata i32 %sub1668, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %112 = lshr i16 %110, 5, !dbg !1149
  %sub1684 = sub i16 %110, %112, !dbg !1149
  store i16 %sub1684, ptr %arrayidx1633, align 2, !dbg !1149, !tbaa !597
  %shl1688 = shl i32 %symbol.31, 1, !dbg !1152
  %add1689 = or i32 %shl1688, 1, !dbg !1152
  call void @llvm.dbg.value(metadata i32 %add1689, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end1692

do.end1692:                                       ; preds = %do.body1664, %do.body1640
  %symbol.32 = phi i32 [ %shl1662, %do.body1640 ], [ %add1689, %do.body1664 ], !dbg !1153
  %rc1.sroa.0.54 = phi i32 [ %mul1635, %do.body1640 ], [ %sub1666, %do.body1664 ], !dbg !1153
  %rc1.sroa.500.54 = phi i32 [ %rc1.sroa.500.53, %do.body1640 ], [ %sub1668, %do.body1664 ], !dbg !1154
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.54, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.54, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.32, metadata !280, metadata !DIExpression()), !dbg !456
  %add1694 = add i32 %symbol.32, -6, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %add1694, metadata !283, metadata !DIExpression()), !dbg !456
  br label %do.end2704, !dbg !1155

do.body1696:                                      ; preds = %do.end1398
  %sub1698 = sub i32 %rc1.sroa.0.47, %mul1402, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %sub1698, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1700 = sub i32 %rc1.sroa.500.47, %mul1402, !dbg !1156
  call void @llvm.dbg.value(metadata i32 %sub1700, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %113 = lshr i16 %99, 5, !dbg !1156
  %sub1708 = sub i16 %99, %113, !dbg !1156
  store i16 %sub1708, ptr %match_len_decoder, align 4, !dbg !1156, !tbaa !1079
  br label %do.body1713, !dbg !1156

do.body1713:                                      ; preds = %do.body1696, %if.end
  %dict.sroa.36.26 = phi i64 [ %dict.sroa.36.22, %do.body1696 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.26 = phi i64 [ %dict.sroa.12.22, %do.body1696 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.25 = phi i32 [ %len.21, %do.body1696 ], [ %14, %if.end ], !dbg !456
  %rep0.25 = phi i32 [ %rep0.21, %do.body1696 ], [ %5, %if.end ], !dbg !573
  %rep1.25 = phi i32 [ %rep1.21, %do.body1696 ], [ %6, %if.end ], !dbg !456
  %rep2.25 = phi i32 [ %rep2.21, %do.body1696 ], [ %7, %if.end ], !dbg !456
  %rep3.25 = phi i32 [ %rep3.21, %do.body1696 ], [ %8, %if.end ], !dbg !456
  %state.25 = phi i32 [ %state.21, %do.body1696 ], [ %4, %if.end ], !dbg !456
  %probs.25 = phi ptr [ %probs.21, %do.body1696 ], [ %10, %if.end ], !dbg !582
  %symbol.33 = phi i32 [ %symbol.28, %do.body1696 ], [ %11, %if.end ], !dbg !456
  %limit.25 = phi i32 [ %limit.21, %do.body1696 ], [ %12, %if.end ], !dbg !577
  %offset.32 = phi i32 [ %offset.28, %do.body1696 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.47 = phi i64 [ %rc_in_pos.40, %do.body1696 ], [ %3, %if.end ], !dbg !456
  %pos_state.6 = phi i32 [ %pos_state.2, %do.body1696 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.55 = phi i32 [ %sub1698, %do.body1696 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.55 = phi i32 [ %sub1700, %do.body1696 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.26, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.26, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.55, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.55, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.6, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.47, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.32, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.25, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.33, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.25, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.25, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.25, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.25, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.25, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.25, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1715 = icmp ult i32 %rc1.sroa.0.55, 16777216, !dbg !1159
  br i1 %cmp1715, label %if.then1717, label %do.end1734, !dbg !1162

if.then1717:                                      ; preds = %do.body1713
  %cmp1718 = icmp eq i64 %rc_in_pos.47, %in_size, !dbg !1163
  br i1 %cmp1718, label %if.then1720, label %if.end1722, !dbg !1166

if.then1720:                                      ; preds = %if.then1717
  store i32 24, ptr %sequence, align 8, !dbg !1167, !tbaa !548
  br label %out, !dbg !1167

if.end1722:                                       ; preds = %if.then1717
  %shl1724 = shl nuw i32 %rc1.sroa.0.55, 8, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %shl1724, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1726 = shl i32 %rc1.sroa.500.55, 8, !dbg !1166
  %inc1727 = add i64 %rc_in_pos.47, 1, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %inc1727, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1728 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.47, !dbg !1166
  %114 = load i8, ptr %arrayidx1728, align 1, !dbg !1166, !tbaa !493
  %conv1729 = zext i8 %114 to i32, !dbg !1166
  %or1730 = or i32 %shl1726, %conv1729, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %or1730, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1734, !dbg !1166

do.end1734:                                       ; preds = %if.end1722, %do.body1713
  %rc_in_pos.48 = phi i64 [ %inc1727, %if.end1722 ], [ %rc_in_pos.47, %do.body1713 ], !dbg !1096
  %rc1.sroa.0.56 = phi i32 [ %shl1724, %if.end1722 ], [ %rc1.sroa.0.55, %do.body1713 ], !dbg !1169
  %rc1.sroa.500.56 = phi i32 [ %or1730, %if.end1722 ], [ %rc1.sroa.500.55, %do.body1713 ], !dbg !1169
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.56, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.56, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.48, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1736 = lshr i32 %rc1.sroa.0.56, 11, !dbg !1170
  %choice2 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 1, !dbg !1170
  %115 = load i16, ptr %choice2, align 2, !dbg !1170, !tbaa !1171
  %conv1738 = zext i16 %115 to i32, !dbg !1170
  %mul1739 = mul i32 %shr1736, %conv1738, !dbg !1170
  call void @llvm.dbg.value(metadata i32 %mul1739, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1741 = icmp ult i32 %rc1.sroa.500.56, %mul1739, !dbg !1172
  br i1 %cmp1741, label %do.body1744, label %do.body2034, !dbg !1170

do.body1744:                                      ; preds = %do.end1734
  call void @llvm.dbg.value(metadata i32 %mul1739, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1749 = sub nsw i32 2048, %conv1738, !dbg !1174
  %shr1750 = lshr i32 %sub1749, 5, !dbg !1174
  %116 = trunc i32 %shr1750 to i16, !dbg !1174
  %conv1755 = add i16 %115, %116, !dbg !1174
  store i16 %conv1755, ptr %choice2, align 2, !dbg !1174, !tbaa !1171
  br label %do.body1760, !dbg !1174

do.body1760:                                      ; preds = %if.end, %do.body1744
  %dict.sroa.36.27 = phi i64 [ %dict.sroa.36.26, %do.body1744 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.27 = phi i64 [ %dict.sroa.12.26, %do.body1744 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.26 = phi i32 [ %len.25, %do.body1744 ], [ %14, %if.end ], !dbg !456
  %rep0.26 = phi i32 [ %rep0.25, %do.body1744 ], [ %5, %if.end ], !dbg !573
  %rep1.26 = phi i32 [ %rep1.25, %do.body1744 ], [ %6, %if.end ], !dbg !456
  %rep2.26 = phi i32 [ %rep2.25, %do.body1744 ], [ %7, %if.end ], !dbg !456
  %rep3.26 = phi i32 [ %rep3.25, %do.body1744 ], [ %8, %if.end ], !dbg !456
  %state.26 = phi i32 [ %state.25, %do.body1744 ], [ %4, %if.end ], !dbg !456
  %probs.26 = phi ptr [ %probs.25, %do.body1744 ], [ %10, %if.end ], !dbg !582
  %symbol.34 = phi i32 [ %symbol.33, %do.body1744 ], [ %11, %if.end ], !dbg !456
  %limit.26 = phi i32 [ %limit.25, %do.body1744 ], [ %12, %if.end ], !dbg !577
  %offset.33 = phi i32 [ %offset.32, %do.body1744 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.49 = phi i64 [ %rc_in_pos.48, %do.body1744 ], [ %3, %if.end ], !dbg !456
  %pos_state.7 = phi i32 [ %pos_state.6, %do.body1744 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.57 = phi i32 [ %mul1739, %do.body1744 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.57 = phi i32 [ %rc1.sroa.500.56, %do.body1744 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.27, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.27, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.57, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.57, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.7, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.49, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.33, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.26, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.34, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.26, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.26, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.26, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.26, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.26, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.26, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1762 = icmp ult i32 %rc1.sroa.0.57, 16777216, !dbg !1177
  br i1 %cmp1762, label %if.then1764, label %do.end1781, !dbg !1181

if.then1764:                                      ; preds = %do.body1760
  %cmp1765 = icmp eq i64 %rc_in_pos.49, %in_size, !dbg !1182
  br i1 %cmp1765, label %if.then1767, label %if.end1769, !dbg !1185

if.then1767:                                      ; preds = %if.then1764
  store i32 25, ptr %sequence, align 8, !dbg !1186, !tbaa !548
  br label %out, !dbg !1186

if.end1769:                                       ; preds = %if.then1764
  %shl1771 = shl nuw i32 %rc1.sroa.0.57, 8, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %shl1771, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1773 = shl i32 %rc1.sroa.500.57, 8, !dbg !1185
  %inc1774 = add i64 %rc_in_pos.49, 1, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %inc1774, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1775 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.49, !dbg !1185
  %117 = load i8, ptr %arrayidx1775, align 1, !dbg !1185, !tbaa !493
  %conv1776 = zext i8 %117 to i32, !dbg !1185
  %or1777 = or i32 %shl1773, %conv1776, !dbg !1185
  call void @llvm.dbg.value(metadata i32 %or1777, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1781, !dbg !1185

do.end1781:                                       ; preds = %if.end1769, %do.body1760
  %rc_in_pos.50 = phi i64 [ %inc1774, %if.end1769 ], [ %rc_in_pos.49, %do.body1760 ], !dbg !1169
  %rc1.sroa.0.58 = phi i32 [ %shl1771, %if.end1769 ], [ %rc1.sroa.0.57, %do.body1760 ], !dbg !1188
  %rc1.sroa.500.58 = phi i32 [ %or1777, %if.end1769 ], [ %rc1.sroa.500.57, %do.body1760 ], !dbg !1169
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.58, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.58, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.50, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1783 = lshr i32 %rc1.sroa.0.58, 11, !dbg !1189
  %idxprom1785 = zext i32 %pos_state.7 to i64, !dbg !1189
  %idxprom1787 = zext i32 %symbol.34 to i64, !dbg !1189
  %arrayidx1788 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 3, i64 %idxprom1785, i64 %idxprom1787, !dbg !1189
  %118 = load i16, ptr %arrayidx1788, align 2, !dbg !1189, !tbaa !597
  %conv1789 = zext i16 %118 to i32, !dbg !1189
  %mul1790 = mul i32 %shr1783, %conv1789, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %mul1790, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1792 = icmp ult i32 %rc1.sroa.500.58, %mul1790, !dbg !1190
  br i1 %cmp1792, label %do.body1795, label %do.body1819, !dbg !1189

do.body1795:                                      ; preds = %do.end1781
  call void @llvm.dbg.value(metadata i32 %mul1790, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1804 = sub nsw i32 2048, %conv1789, !dbg !1192
  %shr1805 = lshr i32 %sub1804, 5, !dbg !1192
  %119 = trunc i32 %shr1805 to i16, !dbg !1192
  %conv1814 = add i16 %118, %119, !dbg !1192
  store i16 %conv1814, ptr %arrayidx1788, align 2, !dbg !1192, !tbaa !597
  %shl1817 = shl i32 %symbol.34, 1, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %shl1817, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1850, !dbg !1195

do.body1819:                                      ; preds = %do.end1781
  %sub1821 = sub i32 %rc1.sroa.0.58, %mul1790, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %sub1821, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1823 = sub i32 %rc1.sroa.500.58, %mul1790, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %sub1823, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %120 = lshr i16 %118, 5, !dbg !1196
  %sub1839 = sub i16 %118, %120, !dbg !1196
  store i16 %sub1839, ptr %arrayidx1788, align 2, !dbg !1196, !tbaa !597
  %shl1843 = shl i32 %symbol.34, 1, !dbg !1199
  %add1844 = or i32 %shl1843, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %add1844, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1850

do.body1850:                                      ; preds = %do.body1795, %do.body1819, %if.end
  %dict.sroa.36.28 = phi i64 [ %dict.sroa.36.27, %do.body1795 ], [ %dict.sroa.36.27, %do.body1819 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.28 = phi i64 [ %dict.sroa.12.27, %do.body1795 ], [ %dict.sroa.12.27, %do.body1819 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.27 = phi i32 [ %len.26, %do.body1795 ], [ %len.26, %do.body1819 ], [ %14, %if.end ], !dbg !456
  %rep0.27 = phi i32 [ %rep0.26, %do.body1795 ], [ %rep0.26, %do.body1819 ], [ %5, %if.end ], !dbg !573
  %rep1.27 = phi i32 [ %rep1.26, %do.body1795 ], [ %rep1.26, %do.body1819 ], [ %6, %if.end ], !dbg !456
  %rep2.27 = phi i32 [ %rep2.26, %do.body1795 ], [ %rep2.26, %do.body1819 ], [ %7, %if.end ], !dbg !456
  %rep3.27 = phi i32 [ %rep3.26, %do.body1795 ], [ %rep3.26, %do.body1819 ], [ %8, %if.end ], !dbg !456
  %state.27 = phi i32 [ %state.26, %do.body1795 ], [ %state.26, %do.body1819 ], [ %4, %if.end ], !dbg !456
  %probs.27 = phi ptr [ %probs.26, %do.body1795 ], [ %probs.26, %do.body1819 ], [ %10, %if.end ], !dbg !582
  %symbol.35 = phi i32 [ %shl1817, %do.body1795 ], [ %add1844, %do.body1819 ], [ %11, %if.end ], !dbg !456
  %limit.27 = phi i32 [ %limit.26, %do.body1795 ], [ %limit.26, %do.body1819 ], [ %12, %if.end ], !dbg !577
  %offset.34 = phi i32 [ %offset.33, %do.body1795 ], [ %offset.33, %do.body1819 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.51 = phi i64 [ %rc_in_pos.50, %do.body1795 ], [ %rc_in_pos.50, %do.body1819 ], [ %3, %if.end ], !dbg !456
  %pos_state.8 = phi i32 [ %pos_state.7, %do.body1795 ], [ %pos_state.7, %do.body1819 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.59 = phi i32 [ %mul1790, %do.body1795 ], [ %sub1821, %do.body1819 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.59 = phi i32 [ %rc1.sroa.500.58, %do.body1795 ], [ %sub1823, %do.body1819 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.28, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.28, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.59, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.59, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.8, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.51, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.34, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.27, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.35, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.27, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.27, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.27, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.27, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.27, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.27, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1852 = icmp ult i32 %rc1.sroa.0.59, 16777216, !dbg !1200
  br i1 %cmp1852, label %if.then1854, label %do.end1871, !dbg !1204

if.then1854:                                      ; preds = %do.body1850
  %cmp1855 = icmp eq i64 %rc_in_pos.51, %in_size, !dbg !1205
  br i1 %cmp1855, label %if.then1857, label %if.end1859, !dbg !1208

if.then1857:                                      ; preds = %if.then1854
  store i32 26, ptr %sequence, align 8, !dbg !1209, !tbaa !548
  br label %out, !dbg !1209

if.end1859:                                       ; preds = %if.then1854
  %shl1861 = shl nuw i32 %rc1.sroa.0.59, 8, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %shl1861, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1863 = shl i32 %rc1.sroa.500.59, 8, !dbg !1208
  %inc1864 = add i64 %rc_in_pos.51, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %inc1864, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1865 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.51, !dbg !1208
  %121 = load i8, ptr %arrayidx1865, align 1, !dbg !1208, !tbaa !493
  %conv1866 = zext i8 %121 to i32, !dbg !1208
  %or1867 = or i32 %shl1863, %conv1866, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %or1867, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1871, !dbg !1208

do.end1871:                                       ; preds = %if.end1859, %do.body1850
  %rc_in_pos.52 = phi i64 [ %inc1864, %if.end1859 ], [ %rc_in_pos.51, %do.body1850 ], !dbg !1188
  %rc1.sroa.0.60 = phi i32 [ %shl1861, %if.end1859 ], [ %rc1.sroa.0.59, %do.body1850 ], !dbg !1188
  %rc1.sroa.500.60 = phi i32 [ %or1867, %if.end1859 ], [ %rc1.sroa.500.59, %do.body1850 ], !dbg !1188
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.60, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.60, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.52, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1873 = lshr i32 %rc1.sroa.0.60, 11, !dbg !1211
  %idxprom1876 = zext i32 %pos_state.8 to i64, !dbg !1211
  %idxprom1878 = zext i32 %symbol.35 to i64, !dbg !1211
  %arrayidx1879 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 3, i64 %idxprom1876, i64 %idxprom1878, !dbg !1211
  %122 = load i16, ptr %arrayidx1879, align 2, !dbg !1211, !tbaa !597
  %conv1880 = zext i16 %122 to i32, !dbg !1211
  %mul1881 = mul i32 %shr1873, %conv1880, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %mul1881, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1883 = icmp ult i32 %rc1.sroa.500.60, %mul1881, !dbg !1212
  br i1 %cmp1883, label %do.body1886, label %do.body1910, !dbg !1211

do.body1886:                                      ; preds = %do.end1871
  call void @llvm.dbg.value(metadata i32 %mul1881, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1895 = sub nsw i32 2048, %conv1880, !dbg !1214
  %shr1896 = lshr i32 %sub1895, 5, !dbg !1214
  %123 = trunc i32 %shr1896 to i16, !dbg !1214
  %conv1905 = add i16 %122, %123, !dbg !1214
  store i16 %conv1905, ptr %arrayidx1879, align 2, !dbg !1214, !tbaa !597
  %shl1908 = shl i32 %symbol.35, 1, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %shl1908, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1941, !dbg !1217

do.body1910:                                      ; preds = %do.end1871
  %sub1912 = sub i32 %rc1.sroa.0.60, %mul1881, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %sub1912, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1914 = sub i32 %rc1.sroa.500.60, %mul1881, !dbg !1218
  call void @llvm.dbg.value(metadata i32 %sub1914, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %124 = lshr i16 %122, 5, !dbg !1218
  %sub1930 = sub i16 %122, %124, !dbg !1218
  store i16 %sub1930, ptr %arrayidx1879, align 2, !dbg !1218, !tbaa !597
  %shl1934 = shl i32 %symbol.35, 1, !dbg !1221
  %add1935 = or i32 %shl1934, 1, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %add1935, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body1941

do.body1941:                                      ; preds = %do.body1886, %do.body1910, %if.end
  %dict.sroa.36.29 = phi i64 [ %dict.sroa.36.28, %do.body1886 ], [ %dict.sroa.36.28, %do.body1910 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.29 = phi i64 [ %dict.sroa.12.28, %do.body1886 ], [ %dict.sroa.12.28, %do.body1910 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.28 = phi i32 [ %len.27, %do.body1886 ], [ %len.27, %do.body1910 ], [ %14, %if.end ], !dbg !456
  %rep0.28 = phi i32 [ %rep0.27, %do.body1886 ], [ %rep0.27, %do.body1910 ], [ %5, %if.end ], !dbg !573
  %rep1.28 = phi i32 [ %rep1.27, %do.body1886 ], [ %rep1.27, %do.body1910 ], [ %6, %if.end ], !dbg !456
  %rep2.28 = phi i32 [ %rep2.27, %do.body1886 ], [ %rep2.27, %do.body1910 ], [ %7, %if.end ], !dbg !456
  %rep3.28 = phi i32 [ %rep3.27, %do.body1886 ], [ %rep3.27, %do.body1910 ], [ %8, %if.end ], !dbg !456
  %state.28 = phi i32 [ %state.27, %do.body1886 ], [ %state.27, %do.body1910 ], [ %4, %if.end ], !dbg !456
  %probs.28 = phi ptr [ %probs.27, %do.body1886 ], [ %probs.27, %do.body1910 ], [ %10, %if.end ], !dbg !582
  %symbol.36 = phi i32 [ %shl1908, %do.body1886 ], [ %add1935, %do.body1910 ], [ %11, %if.end ], !dbg !456
  %limit.28 = phi i32 [ %limit.27, %do.body1886 ], [ %limit.27, %do.body1910 ], [ %12, %if.end ], !dbg !577
  %offset.35 = phi i32 [ %offset.34, %do.body1886 ], [ %offset.34, %do.body1910 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.53 = phi i64 [ %rc_in_pos.52, %do.body1886 ], [ %rc_in_pos.52, %do.body1910 ], [ %3, %if.end ], !dbg !456
  %pos_state.9 = phi i32 [ %pos_state.8, %do.body1886 ], [ %pos_state.8, %do.body1910 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.61 = phi i32 [ %mul1881, %do.body1886 ], [ %sub1912, %do.body1910 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.61 = phi i32 [ %rc1.sroa.500.60, %do.body1886 ], [ %sub1914, %do.body1910 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.29, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.29, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.61, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.61, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.9, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.53, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.35, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.28, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.36, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.28, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.28, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.28, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.28, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.28, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.28, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp1943 = icmp ult i32 %rc1.sroa.0.61, 16777216, !dbg !1222
  br i1 %cmp1943, label %if.then1945, label %do.end1962, !dbg !1226

if.then1945:                                      ; preds = %do.body1941
  %cmp1946 = icmp eq i64 %rc_in_pos.53, %in_size, !dbg !1227
  br i1 %cmp1946, label %if.then1948, label %if.end1950, !dbg !1230

if.then1948:                                      ; preds = %if.then1945
  store i32 27, ptr %sequence, align 8, !dbg !1231, !tbaa !548
  br label %out, !dbg !1231

if.end1950:                                       ; preds = %if.then1945
  %shl1952 = shl nuw i32 %rc1.sroa.0.61, 8, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %shl1952, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl1954 = shl i32 %rc1.sroa.500.61, 8, !dbg !1230
  %inc1955 = add i64 %rc_in_pos.53, 1, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %inc1955, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx1956 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.53, !dbg !1230
  %125 = load i8, ptr %arrayidx1956, align 1, !dbg !1230, !tbaa !493
  %conv1957 = zext i8 %125 to i32, !dbg !1230
  %or1958 = or i32 %shl1954, %conv1957, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %or1958, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end1962, !dbg !1230

do.end1962:                                       ; preds = %if.end1950, %do.body1941
  %rc_in_pos.54 = phi i64 [ %inc1955, %if.end1950 ], [ %rc_in_pos.53, %do.body1941 ], !dbg !1188
  %rc1.sroa.0.62 = phi i32 [ %shl1952, %if.end1950 ], [ %rc1.sroa.0.61, %do.body1941 ], !dbg !1188
  %rc1.sroa.500.62 = phi i32 [ %or1958, %if.end1950 ], [ %rc1.sroa.500.61, %do.body1941 ], !dbg !1188
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.62, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.62, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.54, metadata !270, metadata !DIExpression()), !dbg !456
  %shr1964 = lshr i32 %rc1.sroa.0.62, 11, !dbg !1233
  %idxprom1967 = zext i32 %pos_state.9 to i64, !dbg !1233
  %idxprom1969 = zext i32 %symbol.36 to i64, !dbg !1233
  %arrayidx1970 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 3, i64 %idxprom1967, i64 %idxprom1969, !dbg !1233
  %126 = load i16, ptr %arrayidx1970, align 2, !dbg !1233, !tbaa !597
  %conv1971 = zext i16 %126 to i32, !dbg !1233
  %mul1972 = mul i32 %shr1964, %conv1971, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %mul1972, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp1974 = icmp ult i32 %rc1.sroa.500.62, %mul1972, !dbg !1234
  br i1 %cmp1974, label %do.body1977, label %do.body2001, !dbg !1233

do.body1977:                                      ; preds = %do.end1962
  call void @llvm.dbg.value(metadata i32 %mul1972, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub1986 = sub nsw i32 2048, %conv1971, !dbg !1236
  %shr1987 = lshr i32 %sub1986, 5, !dbg !1236
  %127 = trunc i32 %shr1987 to i16, !dbg !1236
  %conv1996 = add i16 %126, %127, !dbg !1236
  store i16 %conv1996, ptr %arrayidx1970, align 2, !dbg !1236, !tbaa !597
  %shl1999 = shl i32 %symbol.36, 1, !dbg !1239
  call void @llvm.dbg.value(metadata i32 %shl1999, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end2029, !dbg !1239

do.body2001:                                      ; preds = %do.end1962
  %sub2003 = sub i32 %rc1.sroa.0.62, %mul1972, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %sub2003, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2005 = sub i32 %rc1.sroa.500.62, %mul1972, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %sub2005, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %128 = lshr i16 %126, 5, !dbg !1240
  %sub2021 = sub i16 %126, %128, !dbg !1240
  store i16 %sub2021, ptr %arrayidx1970, align 2, !dbg !1240, !tbaa !597
  %shl2025 = shl i32 %symbol.36, 1, !dbg !1243
  %add2026 = or i32 %shl2025, 1, !dbg !1243
  call void @llvm.dbg.value(metadata i32 %add2026, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end2029

do.end2029:                                       ; preds = %do.body2001, %do.body1977
  %symbol.37 = phi i32 [ %shl1999, %do.body1977 ], [ %add2026, %do.body2001 ], !dbg !1244
  %rc1.sroa.0.63 = phi i32 [ %mul1972, %do.body1977 ], [ %sub2003, %do.body2001 ], !dbg !1244
  %rc1.sroa.500.63 = phi i32 [ %rc1.sroa.500.62, %do.body1977 ], [ %sub2005, %do.body2001 ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.63, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.63, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.37, metadata !280, metadata !DIExpression()), !dbg !456
  %add2032 = add i32 %symbol.37, 2, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %add2032, metadata !283, metadata !DIExpression()), !dbg !456
  br label %do.end2704, !dbg !1246

do.body2034:                                      ; preds = %do.end1734
  %sub2036 = sub i32 %rc1.sroa.0.56, %mul1739, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %sub2036, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2038 = sub i32 %rc1.sroa.500.56, %mul1739, !dbg !1247
  call void @llvm.dbg.value(metadata i32 %sub2038, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %129 = lshr i16 %115, 5, !dbg !1247
  %sub2046 = sub i16 %115, %129, !dbg !1247
  store i16 %sub2046, ptr %choice2, align 2, !dbg !1247, !tbaa !1171
  br label %do.body2052, !dbg !1247

do.body2052:                                      ; preds = %if.end, %do.body2034
  %dict.sroa.36.30 = phi i64 [ %dict.sroa.36.26, %do.body2034 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.30 = phi i64 [ %dict.sroa.12.26, %do.body2034 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.29 = phi i32 [ %len.25, %do.body2034 ], [ %14, %if.end ], !dbg !456
  %rep0.29 = phi i32 [ %rep0.25, %do.body2034 ], [ %5, %if.end ], !dbg !573
  %rep1.29 = phi i32 [ %rep1.25, %do.body2034 ], [ %6, %if.end ], !dbg !456
  %rep2.29 = phi i32 [ %rep2.25, %do.body2034 ], [ %7, %if.end ], !dbg !456
  %rep3.29 = phi i32 [ %rep3.25, %do.body2034 ], [ %8, %if.end ], !dbg !456
  %state.29 = phi i32 [ %state.25, %do.body2034 ], [ %4, %if.end ], !dbg !456
  %probs.29 = phi ptr [ %probs.25, %do.body2034 ], [ %10, %if.end ], !dbg !582
  %symbol.38 = phi i32 [ %symbol.33, %do.body2034 ], [ %11, %if.end ], !dbg !456
  %limit.29 = phi i32 [ %limit.25, %do.body2034 ], [ %12, %if.end ], !dbg !577
  %offset.36 = phi i32 [ %offset.32, %do.body2034 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.55 = phi i64 [ %rc_in_pos.48, %do.body2034 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.64 = phi i32 [ %sub2036, %do.body2034 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.64 = phi i32 [ %sub2038, %do.body2034 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.30, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.30, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.64, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.64, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.55, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.36, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.29, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.38, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.29, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.29, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.29, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.29, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.29, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.29, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2054 = icmp ult i32 %rc1.sroa.0.64, 16777216, !dbg !1250
  br i1 %cmp2054, label %if.then2056, label %do.end2073, !dbg !1254

if.then2056:                                      ; preds = %do.body2052
  %cmp2057 = icmp eq i64 %rc_in_pos.55, %in_size, !dbg !1255
  br i1 %cmp2057, label %if.then2059, label %if.end2061, !dbg !1258

if.then2059:                                      ; preds = %if.then2056
  store i32 28, ptr %sequence, align 8, !dbg !1259, !tbaa !548
  br label %out, !dbg !1259

if.end2061:                                       ; preds = %if.then2056
  %shl2063 = shl nuw i32 %rc1.sroa.0.64, 8, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %shl2063, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2065 = shl i32 %rc1.sroa.500.64, 8, !dbg !1258
  %inc2066 = add i64 %rc_in_pos.55, 1, !dbg !1258
  call void @llvm.dbg.value(metadata i64 %inc2066, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2067 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.55, !dbg !1258
  %130 = load i8, ptr %arrayidx2067, align 1, !dbg !1258, !tbaa !493
  %conv2068 = zext i8 %130 to i32, !dbg !1258
  %or2069 = or i32 %shl2065, %conv2068, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %or2069, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2073, !dbg !1258

do.end2073:                                       ; preds = %if.end2061, %do.body2052
  %rc_in_pos.56 = phi i64 [ %inc2066, %if.end2061 ], [ %rc_in_pos.55, %do.body2052 ], !dbg !1169
  %rc1.sroa.0.65 = phi i32 [ %shl2063, %if.end2061 ], [ %rc1.sroa.0.64, %do.body2052 ], !dbg !1261
  %rc1.sroa.500.65 = phi i32 [ %or2069, %if.end2061 ], [ %rc1.sroa.500.64, %do.body2052 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.65, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.65, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.56, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2075 = lshr i32 %rc1.sroa.0.65, 11, !dbg !1262
  %idxprom2077 = zext i32 %symbol.38 to i64, !dbg !1262
  %arrayidx2078 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2077, !dbg !1262
  %131 = load i16, ptr %arrayidx2078, align 2, !dbg !1262, !tbaa !597
  %conv2079 = zext i16 %131 to i32, !dbg !1262
  %mul2080 = mul i32 %shr2075, %conv2079, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %mul2080, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2082 = icmp ult i32 %rc1.sroa.500.65, %mul2080, !dbg !1263
  br i1 %cmp2082, label %do.body2085, label %do.body2105, !dbg !1262

do.body2085:                                      ; preds = %do.end2073
  call void @llvm.dbg.value(metadata i32 %mul2080, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2092 = sub nsw i32 2048, %conv2079, !dbg !1265
  %shr2093 = lshr i32 %sub2092, 5, !dbg !1265
  %132 = trunc i32 %shr2093 to i16, !dbg !1265
  %conv2100 = add i16 %131, %132, !dbg !1265
  store i16 %conv2100, ptr %arrayidx2078, align 2, !dbg !1265, !tbaa !597
  %shl2103 = shl i32 %symbol.38, 1, !dbg !1268
  call void @llvm.dbg.value(metadata i32 %shl2103, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2132, !dbg !1268

do.body2105:                                      ; preds = %do.end2073
  %sub2107 = sub i32 %rc1.sroa.0.65, %mul2080, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %sub2107, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2109 = sub i32 %rc1.sroa.500.65, %mul2080, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %sub2109, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %133 = lshr i16 %131, 5, !dbg !1269
  %sub2121 = sub i16 %131, %133, !dbg !1269
  store i16 %sub2121, ptr %arrayidx2078, align 2, !dbg !1269, !tbaa !597
  %shl2125 = shl i32 %symbol.38, 1, !dbg !1272
  %add2126 = or i32 %shl2125, 1, !dbg !1272
  call void @llvm.dbg.value(metadata i32 %add2126, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2132

do.body2132:                                      ; preds = %do.body2085, %do.body2105, %if.end
  %dict.sroa.36.31 = phi i64 [ %dict.sroa.36.30, %do.body2085 ], [ %dict.sroa.36.30, %do.body2105 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.31 = phi i64 [ %dict.sroa.12.30, %do.body2085 ], [ %dict.sroa.12.30, %do.body2105 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.30 = phi i32 [ %len.29, %do.body2085 ], [ %len.29, %do.body2105 ], [ %14, %if.end ], !dbg !456
  %rep0.30 = phi i32 [ %rep0.29, %do.body2085 ], [ %rep0.29, %do.body2105 ], [ %5, %if.end ], !dbg !573
  %rep1.30 = phi i32 [ %rep1.29, %do.body2085 ], [ %rep1.29, %do.body2105 ], [ %6, %if.end ], !dbg !456
  %rep2.30 = phi i32 [ %rep2.29, %do.body2085 ], [ %rep2.29, %do.body2105 ], [ %7, %if.end ], !dbg !456
  %rep3.30 = phi i32 [ %rep3.29, %do.body2085 ], [ %rep3.29, %do.body2105 ], [ %8, %if.end ], !dbg !456
  %state.30 = phi i32 [ %state.29, %do.body2085 ], [ %state.29, %do.body2105 ], [ %4, %if.end ], !dbg !456
  %probs.30 = phi ptr [ %probs.29, %do.body2085 ], [ %probs.29, %do.body2105 ], [ %10, %if.end ], !dbg !582
  %symbol.39 = phi i32 [ %shl2103, %do.body2085 ], [ %add2126, %do.body2105 ], [ %11, %if.end ], !dbg !456
  %limit.30 = phi i32 [ %limit.29, %do.body2085 ], [ %limit.29, %do.body2105 ], [ %12, %if.end ], !dbg !577
  %offset.37 = phi i32 [ %offset.36, %do.body2085 ], [ %offset.36, %do.body2105 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.57 = phi i64 [ %rc_in_pos.56, %do.body2085 ], [ %rc_in_pos.56, %do.body2105 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.66 = phi i32 [ %mul2080, %do.body2085 ], [ %sub2107, %do.body2105 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.66 = phi i32 [ %rc1.sroa.500.65, %do.body2085 ], [ %sub2109, %do.body2105 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.31, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.31, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.66, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.66, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.57, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.37, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.30, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.39, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.30, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.30, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.30, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.30, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.30, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.30, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2134 = icmp ult i32 %rc1.sroa.0.66, 16777216, !dbg !1273
  br i1 %cmp2134, label %if.then2136, label %do.end2153, !dbg !1277

if.then2136:                                      ; preds = %do.body2132
  %cmp2137 = icmp eq i64 %rc_in_pos.57, %in_size, !dbg !1278
  br i1 %cmp2137, label %if.then2139, label %if.end2141, !dbg !1281

if.then2139:                                      ; preds = %if.then2136
  store i32 29, ptr %sequence, align 8, !dbg !1282, !tbaa !548
  br label %out, !dbg !1282

if.end2141:                                       ; preds = %if.then2136
  %shl2143 = shl nuw i32 %rc1.sroa.0.66, 8, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %shl2143, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2145 = shl i32 %rc1.sroa.500.66, 8, !dbg !1281
  %inc2146 = add i64 %rc_in_pos.57, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i64 %inc2146, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2147 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.57, !dbg !1281
  %134 = load i8, ptr %arrayidx2147, align 1, !dbg !1281, !tbaa !493
  %conv2148 = zext i8 %134 to i32, !dbg !1281
  %or2149 = or i32 %shl2145, %conv2148, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %or2149, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2153, !dbg !1281

do.end2153:                                       ; preds = %if.end2141, %do.body2132
  %rc_in_pos.58 = phi i64 [ %inc2146, %if.end2141 ], [ %rc_in_pos.57, %do.body2132 ], !dbg !1261
  %rc1.sroa.0.67 = phi i32 [ %shl2143, %if.end2141 ], [ %rc1.sroa.0.66, %do.body2132 ], !dbg !1261
  %rc1.sroa.500.67 = phi i32 [ %or2149, %if.end2141 ], [ %rc1.sroa.500.66, %do.body2132 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.67, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.67, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.58, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2155 = lshr i32 %rc1.sroa.0.67, 11, !dbg !1284
  %idxprom2158 = zext i32 %symbol.39 to i64, !dbg !1284
  %arrayidx2159 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2158, !dbg !1284
  %135 = load i16, ptr %arrayidx2159, align 2, !dbg !1284, !tbaa !597
  %conv2160 = zext i16 %135 to i32, !dbg !1284
  %mul2161 = mul i32 %shr2155, %conv2160, !dbg !1284
  call void @llvm.dbg.value(metadata i32 %mul2161, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2163 = icmp ult i32 %rc1.sroa.500.67, %mul2161, !dbg !1285
  br i1 %cmp2163, label %do.body2166, label %do.body2186, !dbg !1284

do.body2166:                                      ; preds = %do.end2153
  call void @llvm.dbg.value(metadata i32 %mul2161, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2173 = sub nsw i32 2048, %conv2160, !dbg !1287
  %shr2174 = lshr i32 %sub2173, 5, !dbg !1287
  %136 = trunc i32 %shr2174 to i16, !dbg !1287
  %conv2181 = add i16 %135, %136, !dbg !1287
  store i16 %conv2181, ptr %arrayidx2159, align 2, !dbg !1287, !tbaa !597
  %shl2184 = shl i32 %symbol.39, 1, !dbg !1290
  call void @llvm.dbg.value(metadata i32 %shl2184, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2213, !dbg !1290

do.body2186:                                      ; preds = %do.end2153
  %sub2188 = sub i32 %rc1.sroa.0.67, %mul2161, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %sub2188, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2190 = sub i32 %rc1.sroa.500.67, %mul2161, !dbg !1291
  call void @llvm.dbg.value(metadata i32 %sub2190, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %137 = lshr i16 %135, 5, !dbg !1291
  %sub2202 = sub i16 %135, %137, !dbg !1291
  store i16 %sub2202, ptr %arrayidx2159, align 2, !dbg !1291, !tbaa !597
  %shl2206 = shl i32 %symbol.39, 1, !dbg !1294
  %add2207 = or i32 %shl2206, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %add2207, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2213

do.body2213:                                      ; preds = %do.body2166, %do.body2186, %if.end
  %dict.sroa.36.32 = phi i64 [ %dict.sroa.36.31, %do.body2166 ], [ %dict.sroa.36.31, %do.body2186 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.32 = phi i64 [ %dict.sroa.12.31, %do.body2166 ], [ %dict.sroa.12.31, %do.body2186 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.31 = phi i32 [ %len.30, %do.body2166 ], [ %len.30, %do.body2186 ], [ %14, %if.end ], !dbg !456
  %rep0.31 = phi i32 [ %rep0.30, %do.body2166 ], [ %rep0.30, %do.body2186 ], [ %5, %if.end ], !dbg !573
  %rep1.31 = phi i32 [ %rep1.30, %do.body2166 ], [ %rep1.30, %do.body2186 ], [ %6, %if.end ], !dbg !456
  %rep2.31 = phi i32 [ %rep2.30, %do.body2166 ], [ %rep2.30, %do.body2186 ], [ %7, %if.end ], !dbg !456
  %rep3.31 = phi i32 [ %rep3.30, %do.body2166 ], [ %rep3.30, %do.body2186 ], [ %8, %if.end ], !dbg !456
  %state.31 = phi i32 [ %state.30, %do.body2166 ], [ %state.30, %do.body2186 ], [ %4, %if.end ], !dbg !456
  %probs.31 = phi ptr [ %probs.30, %do.body2166 ], [ %probs.30, %do.body2186 ], [ %10, %if.end ], !dbg !582
  %symbol.40 = phi i32 [ %shl2184, %do.body2166 ], [ %add2207, %do.body2186 ], [ %11, %if.end ], !dbg !456
  %limit.31 = phi i32 [ %limit.30, %do.body2166 ], [ %limit.30, %do.body2186 ], [ %12, %if.end ], !dbg !577
  %offset.38 = phi i32 [ %offset.37, %do.body2166 ], [ %offset.37, %do.body2186 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.59 = phi i64 [ %rc_in_pos.58, %do.body2166 ], [ %rc_in_pos.58, %do.body2186 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.68 = phi i32 [ %mul2161, %do.body2166 ], [ %sub2188, %do.body2186 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.68 = phi i32 [ %rc1.sroa.500.67, %do.body2166 ], [ %sub2190, %do.body2186 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.32, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.32, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.68, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.68, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.59, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.38, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.31, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.40, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.31, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.31, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.31, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.31, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.31, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.31, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2215 = icmp ult i32 %rc1.sroa.0.68, 16777216, !dbg !1295
  br i1 %cmp2215, label %if.then2217, label %do.end2234, !dbg !1299

if.then2217:                                      ; preds = %do.body2213
  %cmp2218 = icmp eq i64 %rc_in_pos.59, %in_size, !dbg !1300
  br i1 %cmp2218, label %if.then2220, label %if.end2222, !dbg !1303

if.then2220:                                      ; preds = %if.then2217
  store i32 30, ptr %sequence, align 8, !dbg !1304, !tbaa !548
  br label %out, !dbg !1304

if.end2222:                                       ; preds = %if.then2217
  %shl2224 = shl nuw i32 %rc1.sroa.0.68, 8, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %shl2224, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2226 = shl i32 %rc1.sroa.500.68, 8, !dbg !1303
  %inc2227 = add i64 %rc_in_pos.59, 1, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %inc2227, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2228 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.59, !dbg !1303
  %138 = load i8, ptr %arrayidx2228, align 1, !dbg !1303, !tbaa !493
  %conv2229 = zext i8 %138 to i32, !dbg !1303
  %or2230 = or i32 %shl2226, %conv2229, !dbg !1303
  call void @llvm.dbg.value(metadata i32 %or2230, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2234, !dbg !1303

do.end2234:                                       ; preds = %if.end2222, %do.body2213
  %rc_in_pos.60 = phi i64 [ %inc2227, %if.end2222 ], [ %rc_in_pos.59, %do.body2213 ], !dbg !1261
  %rc1.sroa.0.69 = phi i32 [ %shl2224, %if.end2222 ], [ %rc1.sroa.0.68, %do.body2213 ], !dbg !1261
  %rc1.sroa.500.69 = phi i32 [ %or2230, %if.end2222 ], [ %rc1.sroa.500.68, %do.body2213 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.69, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.69, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.60, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2236 = lshr i32 %rc1.sroa.0.69, 11, !dbg !1306
  %idxprom2239 = zext i32 %symbol.40 to i64, !dbg !1306
  %arrayidx2240 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2239, !dbg !1306
  %139 = load i16, ptr %arrayidx2240, align 2, !dbg !1306, !tbaa !597
  %conv2241 = zext i16 %139 to i32, !dbg !1306
  %mul2242 = mul i32 %shr2236, %conv2241, !dbg !1306
  call void @llvm.dbg.value(metadata i32 %mul2242, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2244 = icmp ult i32 %rc1.sroa.500.69, %mul2242, !dbg !1307
  br i1 %cmp2244, label %do.body2247, label %do.body2267, !dbg !1306

do.body2247:                                      ; preds = %do.end2234
  call void @llvm.dbg.value(metadata i32 %mul2242, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2254 = sub nsw i32 2048, %conv2241, !dbg !1309
  %shr2255 = lshr i32 %sub2254, 5, !dbg !1309
  %140 = trunc i32 %shr2255 to i16, !dbg !1309
  %conv2262 = add i16 %139, %140, !dbg !1309
  store i16 %conv2262, ptr %arrayidx2240, align 2, !dbg !1309, !tbaa !597
  %shl2265 = shl i32 %symbol.40, 1, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %shl2265, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2294, !dbg !1312

do.body2267:                                      ; preds = %do.end2234
  %sub2269 = sub i32 %rc1.sroa.0.69, %mul2242, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %sub2269, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2271 = sub i32 %rc1.sroa.500.69, %mul2242, !dbg !1313
  call void @llvm.dbg.value(metadata i32 %sub2271, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %141 = lshr i16 %139, 5, !dbg !1313
  %sub2283 = sub i16 %139, %141, !dbg !1313
  store i16 %sub2283, ptr %arrayidx2240, align 2, !dbg !1313, !tbaa !597
  %shl2287 = shl i32 %symbol.40, 1, !dbg !1316
  %add2288 = or i32 %shl2287, 1, !dbg !1316
  call void @llvm.dbg.value(metadata i32 %add2288, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2294

do.body2294:                                      ; preds = %do.body2247, %do.body2267, %if.end
  %dict.sroa.36.33 = phi i64 [ %dict.sroa.36.32, %do.body2247 ], [ %dict.sroa.36.32, %do.body2267 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.33 = phi i64 [ %dict.sroa.12.32, %do.body2247 ], [ %dict.sroa.12.32, %do.body2267 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.32 = phi i32 [ %len.31, %do.body2247 ], [ %len.31, %do.body2267 ], [ %14, %if.end ], !dbg !456
  %rep0.32 = phi i32 [ %rep0.31, %do.body2247 ], [ %rep0.31, %do.body2267 ], [ %5, %if.end ], !dbg !573
  %rep1.32 = phi i32 [ %rep1.31, %do.body2247 ], [ %rep1.31, %do.body2267 ], [ %6, %if.end ], !dbg !456
  %rep2.32 = phi i32 [ %rep2.31, %do.body2247 ], [ %rep2.31, %do.body2267 ], [ %7, %if.end ], !dbg !456
  %rep3.32 = phi i32 [ %rep3.31, %do.body2247 ], [ %rep3.31, %do.body2267 ], [ %8, %if.end ], !dbg !456
  %state.32 = phi i32 [ %state.31, %do.body2247 ], [ %state.31, %do.body2267 ], [ %4, %if.end ], !dbg !456
  %probs.32 = phi ptr [ %probs.31, %do.body2247 ], [ %probs.31, %do.body2267 ], [ %10, %if.end ], !dbg !582
  %symbol.41 = phi i32 [ %shl2265, %do.body2247 ], [ %add2288, %do.body2267 ], [ %11, %if.end ], !dbg !456
  %limit.32 = phi i32 [ %limit.31, %do.body2247 ], [ %limit.31, %do.body2267 ], [ %12, %if.end ], !dbg !577
  %offset.39 = phi i32 [ %offset.38, %do.body2247 ], [ %offset.38, %do.body2267 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.61 = phi i64 [ %rc_in_pos.60, %do.body2247 ], [ %rc_in_pos.60, %do.body2267 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.70 = phi i32 [ %mul2242, %do.body2247 ], [ %sub2269, %do.body2267 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.70 = phi i32 [ %rc1.sroa.500.69, %do.body2247 ], [ %sub2271, %do.body2267 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.33, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.33, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.70, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.70, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.61, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.39, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.32, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.41, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.32, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.32, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.32, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.32, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.32, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.32, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2296 = icmp ult i32 %rc1.sroa.0.70, 16777216, !dbg !1317
  br i1 %cmp2296, label %if.then2298, label %do.end2315, !dbg !1321

if.then2298:                                      ; preds = %do.body2294
  %cmp2299 = icmp eq i64 %rc_in_pos.61, %in_size, !dbg !1322
  br i1 %cmp2299, label %if.then2301, label %if.end2303, !dbg !1325

if.then2301:                                      ; preds = %if.then2298
  store i32 31, ptr %sequence, align 8, !dbg !1326, !tbaa !548
  br label %out, !dbg !1326

if.end2303:                                       ; preds = %if.then2298
  %shl2305 = shl nuw i32 %rc1.sroa.0.70, 8, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %shl2305, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2307 = shl i32 %rc1.sroa.500.70, 8, !dbg !1325
  %inc2308 = add i64 %rc_in_pos.61, 1, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %inc2308, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2309 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.61, !dbg !1325
  %142 = load i8, ptr %arrayidx2309, align 1, !dbg !1325, !tbaa !493
  %conv2310 = zext i8 %142 to i32, !dbg !1325
  %or2311 = or i32 %shl2307, %conv2310, !dbg !1325
  call void @llvm.dbg.value(metadata i32 %or2311, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2315, !dbg !1325

do.end2315:                                       ; preds = %if.end2303, %do.body2294
  %rc_in_pos.62 = phi i64 [ %inc2308, %if.end2303 ], [ %rc_in_pos.61, %do.body2294 ], !dbg !1261
  %rc1.sroa.0.71 = phi i32 [ %shl2305, %if.end2303 ], [ %rc1.sroa.0.70, %do.body2294 ], !dbg !1261
  %rc1.sroa.500.71 = phi i32 [ %or2311, %if.end2303 ], [ %rc1.sroa.500.70, %do.body2294 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.71, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.71, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.62, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2317 = lshr i32 %rc1.sroa.0.71, 11, !dbg !1328
  %idxprom2320 = zext i32 %symbol.41 to i64, !dbg !1328
  %arrayidx2321 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2320, !dbg !1328
  %143 = load i16, ptr %arrayidx2321, align 2, !dbg !1328, !tbaa !597
  %conv2322 = zext i16 %143 to i32, !dbg !1328
  %mul2323 = mul i32 %shr2317, %conv2322, !dbg !1328
  call void @llvm.dbg.value(metadata i32 %mul2323, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2325 = icmp ult i32 %rc1.sroa.500.71, %mul2323, !dbg !1329
  br i1 %cmp2325, label %do.body2328, label %do.body2348, !dbg !1328

do.body2328:                                      ; preds = %do.end2315
  call void @llvm.dbg.value(metadata i32 %mul2323, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2335 = sub nsw i32 2048, %conv2322, !dbg !1331
  %shr2336 = lshr i32 %sub2335, 5, !dbg !1331
  %144 = trunc i32 %shr2336 to i16, !dbg !1331
  %conv2343 = add i16 %143, %144, !dbg !1331
  store i16 %conv2343, ptr %arrayidx2321, align 2, !dbg !1331, !tbaa !597
  %shl2346 = shl i32 %symbol.41, 1, !dbg !1334
  call void @llvm.dbg.value(metadata i32 %shl2346, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2375, !dbg !1334

do.body2348:                                      ; preds = %do.end2315
  %sub2350 = sub i32 %rc1.sroa.0.71, %mul2323, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %sub2350, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2352 = sub i32 %rc1.sroa.500.71, %mul2323, !dbg !1335
  call void @llvm.dbg.value(metadata i32 %sub2352, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %145 = lshr i16 %143, 5, !dbg !1335
  %sub2364 = sub i16 %143, %145, !dbg !1335
  store i16 %sub2364, ptr %arrayidx2321, align 2, !dbg !1335, !tbaa !597
  %shl2368 = shl i32 %symbol.41, 1, !dbg !1338
  %add2369 = or i32 %shl2368, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %add2369, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2375

do.body2375:                                      ; preds = %do.body2328, %do.body2348, %if.end
  %dict.sroa.36.34 = phi i64 [ %dict.sroa.36.33, %do.body2328 ], [ %dict.sroa.36.33, %do.body2348 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.34 = phi i64 [ %dict.sroa.12.33, %do.body2328 ], [ %dict.sroa.12.33, %do.body2348 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.33 = phi i32 [ %len.32, %do.body2328 ], [ %len.32, %do.body2348 ], [ %14, %if.end ], !dbg !456
  %rep0.33 = phi i32 [ %rep0.32, %do.body2328 ], [ %rep0.32, %do.body2348 ], [ %5, %if.end ], !dbg !573
  %rep1.33 = phi i32 [ %rep1.32, %do.body2328 ], [ %rep1.32, %do.body2348 ], [ %6, %if.end ], !dbg !456
  %rep2.33 = phi i32 [ %rep2.32, %do.body2328 ], [ %rep2.32, %do.body2348 ], [ %7, %if.end ], !dbg !456
  %rep3.33 = phi i32 [ %rep3.32, %do.body2328 ], [ %rep3.32, %do.body2348 ], [ %8, %if.end ], !dbg !456
  %state.33 = phi i32 [ %state.32, %do.body2328 ], [ %state.32, %do.body2348 ], [ %4, %if.end ], !dbg !456
  %probs.33 = phi ptr [ %probs.32, %do.body2328 ], [ %probs.32, %do.body2348 ], [ %10, %if.end ], !dbg !582
  %symbol.42 = phi i32 [ %shl2346, %do.body2328 ], [ %add2369, %do.body2348 ], [ %11, %if.end ], !dbg !456
  %limit.33 = phi i32 [ %limit.32, %do.body2328 ], [ %limit.32, %do.body2348 ], [ %12, %if.end ], !dbg !577
  %offset.40 = phi i32 [ %offset.39, %do.body2328 ], [ %offset.39, %do.body2348 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.63 = phi i64 [ %rc_in_pos.62, %do.body2328 ], [ %rc_in_pos.62, %do.body2348 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.72 = phi i32 [ %mul2323, %do.body2328 ], [ %sub2350, %do.body2348 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.72 = phi i32 [ %rc1.sroa.500.71, %do.body2328 ], [ %sub2352, %do.body2348 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.34, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.34, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.72, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.72, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.63, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.40, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.33, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.42, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.33, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.33, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.33, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.33, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.33, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.33, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2377 = icmp ult i32 %rc1.sroa.0.72, 16777216, !dbg !1339
  br i1 %cmp2377, label %if.then2379, label %do.end2396, !dbg !1343

if.then2379:                                      ; preds = %do.body2375
  %cmp2380 = icmp eq i64 %rc_in_pos.63, %in_size, !dbg !1344
  br i1 %cmp2380, label %if.then2382, label %if.end2384, !dbg !1347

if.then2382:                                      ; preds = %if.then2379
  store i32 32, ptr %sequence, align 8, !dbg !1348, !tbaa !548
  br label %out, !dbg !1348

if.end2384:                                       ; preds = %if.then2379
  %shl2386 = shl nuw i32 %rc1.sroa.0.72, 8, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %shl2386, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2388 = shl i32 %rc1.sroa.500.72, 8, !dbg !1347
  %inc2389 = add i64 %rc_in_pos.63, 1, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %inc2389, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2390 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.63, !dbg !1347
  %146 = load i8, ptr %arrayidx2390, align 1, !dbg !1347, !tbaa !493
  %conv2391 = zext i8 %146 to i32, !dbg !1347
  %or2392 = or i32 %shl2388, %conv2391, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %or2392, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2396, !dbg !1347

do.end2396:                                       ; preds = %if.end2384, %do.body2375
  %rc_in_pos.64 = phi i64 [ %inc2389, %if.end2384 ], [ %rc_in_pos.63, %do.body2375 ], !dbg !1261
  %rc1.sroa.0.73 = phi i32 [ %shl2386, %if.end2384 ], [ %rc1.sroa.0.72, %do.body2375 ], !dbg !1261
  %rc1.sroa.500.73 = phi i32 [ %or2392, %if.end2384 ], [ %rc1.sroa.500.72, %do.body2375 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.73, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.73, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.64, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2398 = lshr i32 %rc1.sroa.0.73, 11, !dbg !1350
  %idxprom2401 = zext i32 %symbol.42 to i64, !dbg !1350
  %arrayidx2402 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2401, !dbg !1350
  %147 = load i16, ptr %arrayidx2402, align 2, !dbg !1350, !tbaa !597
  %conv2403 = zext i16 %147 to i32, !dbg !1350
  %mul2404 = mul i32 %shr2398, %conv2403, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %mul2404, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2406 = icmp ult i32 %rc1.sroa.500.73, %mul2404, !dbg !1351
  br i1 %cmp2406, label %do.body2409, label %do.body2429, !dbg !1350

do.body2409:                                      ; preds = %do.end2396
  call void @llvm.dbg.value(metadata i32 %mul2404, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2416 = sub nsw i32 2048, %conv2403, !dbg !1353
  %shr2417 = lshr i32 %sub2416, 5, !dbg !1353
  %148 = trunc i32 %shr2417 to i16, !dbg !1353
  %conv2424 = add i16 %147, %148, !dbg !1353
  store i16 %conv2424, ptr %arrayidx2402, align 2, !dbg !1353, !tbaa !597
  %shl2427 = shl i32 %symbol.42, 1, !dbg !1356
  call void @llvm.dbg.value(metadata i32 %shl2427, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2456, !dbg !1356

do.body2429:                                      ; preds = %do.end2396
  %sub2431 = sub i32 %rc1.sroa.0.73, %mul2404, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %sub2431, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2433 = sub i32 %rc1.sroa.500.73, %mul2404, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %sub2433, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %149 = lshr i16 %147, 5, !dbg !1357
  %sub2445 = sub i16 %147, %149, !dbg !1357
  store i16 %sub2445, ptr %arrayidx2402, align 2, !dbg !1357, !tbaa !597
  %shl2449 = shl i32 %symbol.42, 1, !dbg !1360
  %add2450 = or i32 %shl2449, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %add2450, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2456

do.body2456:                                      ; preds = %do.body2409, %do.body2429, %if.end
  %dict.sroa.36.35 = phi i64 [ %dict.sroa.36.34, %do.body2409 ], [ %dict.sroa.36.34, %do.body2429 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.35 = phi i64 [ %dict.sroa.12.34, %do.body2409 ], [ %dict.sroa.12.34, %do.body2429 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.34 = phi i32 [ %len.33, %do.body2409 ], [ %len.33, %do.body2429 ], [ %14, %if.end ], !dbg !456
  %rep0.34 = phi i32 [ %rep0.33, %do.body2409 ], [ %rep0.33, %do.body2429 ], [ %5, %if.end ], !dbg !573
  %rep1.34 = phi i32 [ %rep1.33, %do.body2409 ], [ %rep1.33, %do.body2429 ], [ %6, %if.end ], !dbg !456
  %rep2.34 = phi i32 [ %rep2.33, %do.body2409 ], [ %rep2.33, %do.body2429 ], [ %7, %if.end ], !dbg !456
  %rep3.34 = phi i32 [ %rep3.33, %do.body2409 ], [ %rep3.33, %do.body2429 ], [ %8, %if.end ], !dbg !456
  %state.34 = phi i32 [ %state.33, %do.body2409 ], [ %state.33, %do.body2429 ], [ %4, %if.end ], !dbg !456
  %probs.34 = phi ptr [ %probs.33, %do.body2409 ], [ %probs.33, %do.body2429 ], [ %10, %if.end ], !dbg !582
  %symbol.43 = phi i32 [ %shl2427, %do.body2409 ], [ %add2450, %do.body2429 ], [ %11, %if.end ], !dbg !456
  %limit.34 = phi i32 [ %limit.33, %do.body2409 ], [ %limit.33, %do.body2429 ], [ %12, %if.end ], !dbg !577
  %offset.41 = phi i32 [ %offset.40, %do.body2409 ], [ %offset.40, %do.body2429 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.65 = phi i64 [ %rc_in_pos.64, %do.body2409 ], [ %rc_in_pos.64, %do.body2429 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.74 = phi i32 [ %mul2404, %do.body2409 ], [ %sub2431, %do.body2429 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.74 = phi i32 [ %rc1.sroa.500.73, %do.body2409 ], [ %sub2433, %do.body2429 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.35, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.35, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.74, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.74, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.65, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.41, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.34, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.43, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.34, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.34, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.34, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.34, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.34, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.34, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2458 = icmp ult i32 %rc1.sroa.0.74, 16777216, !dbg !1361
  br i1 %cmp2458, label %if.then2460, label %do.end2477, !dbg !1365

if.then2460:                                      ; preds = %do.body2456
  %cmp2461 = icmp eq i64 %rc_in_pos.65, %in_size, !dbg !1366
  br i1 %cmp2461, label %if.then2463, label %if.end2465, !dbg !1369

if.then2463:                                      ; preds = %if.then2460
  store i32 33, ptr %sequence, align 8, !dbg !1370, !tbaa !548
  br label %out, !dbg !1370

if.end2465:                                       ; preds = %if.then2460
  %shl2467 = shl nuw i32 %rc1.sroa.0.74, 8, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %shl2467, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2469 = shl i32 %rc1.sroa.500.74, 8, !dbg !1369
  %inc2470 = add i64 %rc_in_pos.65, 1, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %inc2470, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2471 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.65, !dbg !1369
  %150 = load i8, ptr %arrayidx2471, align 1, !dbg !1369, !tbaa !493
  %conv2472 = zext i8 %150 to i32, !dbg !1369
  %or2473 = or i32 %shl2469, %conv2472, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %or2473, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2477, !dbg !1369

do.end2477:                                       ; preds = %if.end2465, %do.body2456
  %rc_in_pos.66 = phi i64 [ %inc2470, %if.end2465 ], [ %rc_in_pos.65, %do.body2456 ], !dbg !1261
  %rc1.sroa.0.75 = phi i32 [ %shl2467, %if.end2465 ], [ %rc1.sroa.0.74, %do.body2456 ], !dbg !1261
  %rc1.sroa.500.75 = phi i32 [ %or2473, %if.end2465 ], [ %rc1.sroa.500.74, %do.body2456 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.75, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.75, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.66, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2479 = lshr i32 %rc1.sroa.0.75, 11, !dbg !1372
  %idxprom2482 = zext i32 %symbol.43 to i64, !dbg !1372
  %arrayidx2483 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2482, !dbg !1372
  %151 = load i16, ptr %arrayidx2483, align 2, !dbg !1372, !tbaa !597
  %conv2484 = zext i16 %151 to i32, !dbg !1372
  %mul2485 = mul i32 %shr2479, %conv2484, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %mul2485, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2487 = icmp ult i32 %rc1.sroa.500.75, %mul2485, !dbg !1373
  br i1 %cmp2487, label %do.body2490, label %do.body2510, !dbg !1372

do.body2490:                                      ; preds = %do.end2477
  call void @llvm.dbg.value(metadata i32 %mul2485, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2497 = sub nsw i32 2048, %conv2484, !dbg !1375
  %shr2498 = lshr i32 %sub2497, 5, !dbg !1375
  %152 = trunc i32 %shr2498 to i16, !dbg !1375
  %conv2505 = add i16 %151, %152, !dbg !1375
  store i16 %conv2505, ptr %arrayidx2483, align 2, !dbg !1375, !tbaa !597
  %shl2508 = shl i32 %symbol.43, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %shl2508, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2537, !dbg !1378

do.body2510:                                      ; preds = %do.end2477
  %sub2512 = sub i32 %rc1.sroa.0.75, %mul2485, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %sub2512, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2514 = sub i32 %rc1.sroa.500.75, %mul2485, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %sub2514, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %153 = lshr i16 %151, 5, !dbg !1379
  %sub2526 = sub i16 %151, %153, !dbg !1379
  store i16 %sub2526, ptr %arrayidx2483, align 2, !dbg !1379, !tbaa !597
  %shl2530 = shl i32 %symbol.43, 1, !dbg !1382
  %add2531 = or i32 %shl2530, 1, !dbg !1382
  call void @llvm.dbg.value(metadata i32 %add2531, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2537

do.body2537:                                      ; preds = %do.body2490, %do.body2510, %if.end
  %dict.sroa.36.36 = phi i64 [ %dict.sroa.36.35, %do.body2490 ], [ %dict.sroa.36.35, %do.body2510 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.36 = phi i64 [ %dict.sroa.12.35, %do.body2490 ], [ %dict.sroa.12.35, %do.body2510 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.35 = phi i32 [ %len.34, %do.body2490 ], [ %len.34, %do.body2510 ], [ %14, %if.end ], !dbg !456
  %rep0.35 = phi i32 [ %rep0.34, %do.body2490 ], [ %rep0.34, %do.body2510 ], [ %5, %if.end ], !dbg !573
  %rep1.35 = phi i32 [ %rep1.34, %do.body2490 ], [ %rep1.34, %do.body2510 ], [ %6, %if.end ], !dbg !456
  %rep2.35 = phi i32 [ %rep2.34, %do.body2490 ], [ %rep2.34, %do.body2510 ], [ %7, %if.end ], !dbg !456
  %rep3.35 = phi i32 [ %rep3.34, %do.body2490 ], [ %rep3.34, %do.body2510 ], [ %8, %if.end ], !dbg !456
  %state.35 = phi i32 [ %state.34, %do.body2490 ], [ %state.34, %do.body2510 ], [ %4, %if.end ], !dbg !456
  %probs.35 = phi ptr [ %probs.34, %do.body2490 ], [ %probs.34, %do.body2510 ], [ %10, %if.end ], !dbg !582
  %symbol.44 = phi i32 [ %shl2508, %do.body2490 ], [ %add2531, %do.body2510 ], [ %11, %if.end ], !dbg !456
  %limit.35 = phi i32 [ %limit.34, %do.body2490 ], [ %limit.34, %do.body2510 ], [ %12, %if.end ], !dbg !577
  %offset.42 = phi i32 [ %offset.41, %do.body2490 ], [ %offset.41, %do.body2510 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.67 = phi i64 [ %rc_in_pos.66, %do.body2490 ], [ %rc_in_pos.66, %do.body2510 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.76 = phi i32 [ %mul2485, %do.body2490 ], [ %sub2512, %do.body2510 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.76 = phi i32 [ %rc1.sroa.500.75, %do.body2490 ], [ %sub2514, %do.body2510 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.36, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.36, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.76, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.76, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.67, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.42, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.35, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.44, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.35, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.35, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.35, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.35, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.35, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.35, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2539 = icmp ult i32 %rc1.sroa.0.76, 16777216, !dbg !1383
  br i1 %cmp2539, label %if.then2541, label %do.end2558, !dbg !1387

if.then2541:                                      ; preds = %do.body2537
  %cmp2542 = icmp eq i64 %rc_in_pos.67, %in_size, !dbg !1388
  br i1 %cmp2542, label %if.then2544, label %if.end2546, !dbg !1391

if.then2544:                                      ; preds = %if.then2541
  store i32 34, ptr %sequence, align 8, !dbg !1392, !tbaa !548
  br label %out, !dbg !1392

if.end2546:                                       ; preds = %if.then2541
  %shl2548 = shl nuw i32 %rc1.sroa.0.76, 8, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %shl2548, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2550 = shl i32 %rc1.sroa.500.76, 8, !dbg !1391
  %inc2551 = add i64 %rc_in_pos.67, 1, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %inc2551, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2552 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.67, !dbg !1391
  %154 = load i8, ptr %arrayidx2552, align 1, !dbg !1391, !tbaa !493
  %conv2553 = zext i8 %154 to i32, !dbg !1391
  %or2554 = or i32 %shl2550, %conv2553, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %or2554, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2558, !dbg !1391

do.end2558:                                       ; preds = %if.end2546, %do.body2537
  %rc_in_pos.68 = phi i64 [ %inc2551, %if.end2546 ], [ %rc_in_pos.67, %do.body2537 ], !dbg !1261
  %rc1.sroa.0.77 = phi i32 [ %shl2548, %if.end2546 ], [ %rc1.sroa.0.76, %do.body2537 ], !dbg !1261
  %rc1.sroa.500.77 = phi i32 [ %or2554, %if.end2546 ], [ %rc1.sroa.500.76, %do.body2537 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.77, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.77, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.68, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2560 = lshr i32 %rc1.sroa.0.77, 11, !dbg !1394
  %idxprom2563 = zext i32 %symbol.44 to i64, !dbg !1394
  %arrayidx2564 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2563, !dbg !1394
  %155 = load i16, ptr %arrayidx2564, align 2, !dbg !1394, !tbaa !597
  %conv2565 = zext i16 %155 to i32, !dbg !1394
  %mul2566 = mul i32 %shr2560, %conv2565, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %mul2566, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2568 = icmp ult i32 %rc1.sroa.500.77, %mul2566, !dbg !1395
  br i1 %cmp2568, label %do.body2571, label %do.body2591, !dbg !1394

do.body2571:                                      ; preds = %do.end2558
  call void @llvm.dbg.value(metadata i32 %mul2566, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2578 = sub nsw i32 2048, %conv2565, !dbg !1397
  %shr2579 = lshr i32 %sub2578, 5, !dbg !1397
  %156 = trunc i32 %shr2579 to i16, !dbg !1397
  %conv2586 = add i16 %155, %156, !dbg !1397
  store i16 %conv2586, ptr %arrayidx2564, align 2, !dbg !1397, !tbaa !597
  %shl2589 = shl i32 %symbol.44, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %shl2589, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2618, !dbg !1400

do.body2591:                                      ; preds = %do.end2558
  %sub2593 = sub i32 %rc1.sroa.0.77, %mul2566, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %sub2593, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2595 = sub i32 %rc1.sroa.500.77, %mul2566, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %sub2595, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %157 = lshr i16 %155, 5, !dbg !1401
  %sub2607 = sub i16 %155, %157, !dbg !1401
  store i16 %sub2607, ptr %arrayidx2564, align 2, !dbg !1401, !tbaa !597
  %shl2611 = shl i32 %symbol.44, 1, !dbg !1404
  %add2612 = or i32 %shl2611, 1, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %add2612, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2618

do.body2618:                                      ; preds = %do.body2571, %do.body2591, %if.end
  %dict.sroa.36.37 = phi i64 [ %dict.sroa.36.36, %do.body2571 ], [ %dict.sroa.36.36, %do.body2591 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.37 = phi i64 [ %dict.sroa.12.36, %do.body2571 ], [ %dict.sroa.12.36, %do.body2591 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.36 = phi i32 [ %len.35, %do.body2571 ], [ %len.35, %do.body2591 ], [ %14, %if.end ], !dbg !456
  %rep0.36 = phi i32 [ %rep0.35, %do.body2571 ], [ %rep0.35, %do.body2591 ], [ %5, %if.end ], !dbg !573
  %rep1.36 = phi i32 [ %rep1.35, %do.body2571 ], [ %rep1.35, %do.body2591 ], [ %6, %if.end ], !dbg !456
  %rep2.36 = phi i32 [ %rep2.35, %do.body2571 ], [ %rep2.35, %do.body2591 ], [ %7, %if.end ], !dbg !456
  %rep3.36 = phi i32 [ %rep3.35, %do.body2571 ], [ %rep3.35, %do.body2591 ], [ %8, %if.end ], !dbg !456
  %state.36 = phi i32 [ %state.35, %do.body2571 ], [ %state.35, %do.body2591 ], [ %4, %if.end ], !dbg !456
  %probs.36 = phi ptr [ %probs.35, %do.body2571 ], [ %probs.35, %do.body2591 ], [ %10, %if.end ], !dbg !582
  %symbol.45 = phi i32 [ %shl2589, %do.body2571 ], [ %add2612, %do.body2591 ], [ %11, %if.end ], !dbg !456
  %limit.36 = phi i32 [ %limit.35, %do.body2571 ], [ %limit.35, %do.body2591 ], [ %12, %if.end ], !dbg !577
  %offset.43 = phi i32 [ %offset.42, %do.body2571 ], [ %offset.42, %do.body2591 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.69 = phi i64 [ %rc_in_pos.68, %do.body2571 ], [ %rc_in_pos.68, %do.body2591 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.78 = phi i32 [ %mul2566, %do.body2571 ], [ %sub2593, %do.body2591 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.78 = phi i32 [ %rc1.sroa.500.77, %do.body2571 ], [ %sub2595, %do.body2591 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.37, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.37, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.78, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.78, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.69, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.43, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.36, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.45, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.36, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.36, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.36, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.36, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.36, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.36, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2620 = icmp ult i32 %rc1.sroa.0.78, 16777216, !dbg !1405
  br i1 %cmp2620, label %if.then2622, label %do.end2639, !dbg !1409

if.then2622:                                      ; preds = %do.body2618
  %cmp2623 = icmp eq i64 %rc_in_pos.69, %in_size, !dbg !1410
  br i1 %cmp2623, label %if.then2625, label %if.end2627, !dbg !1413

if.then2625:                                      ; preds = %if.then2622
  store i32 35, ptr %sequence, align 8, !dbg !1414, !tbaa !548
  br label %out, !dbg !1414

if.end2627:                                       ; preds = %if.then2622
  %shl2629 = shl nuw i32 %rc1.sroa.0.78, 8, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %shl2629, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2631 = shl i32 %rc1.sroa.500.78, 8, !dbg !1413
  %inc2632 = add i64 %rc_in_pos.69, 1, !dbg !1413
  call void @llvm.dbg.value(metadata i64 %inc2632, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2633 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.69, !dbg !1413
  %158 = load i8, ptr %arrayidx2633, align 1, !dbg !1413, !tbaa !493
  %conv2634 = zext i8 %158 to i32, !dbg !1413
  %or2635 = or i32 %shl2631, %conv2634, !dbg !1413
  call void @llvm.dbg.value(metadata i32 %or2635, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2639, !dbg !1413

do.end2639:                                       ; preds = %if.end2627, %do.body2618
  %rc_in_pos.70 = phi i64 [ %inc2632, %if.end2627 ], [ %rc_in_pos.69, %do.body2618 ], !dbg !1261
  %rc1.sroa.0.79 = phi i32 [ %shl2629, %if.end2627 ], [ %rc1.sroa.0.78, %do.body2618 ], !dbg !1261
  %rc1.sroa.500.79 = phi i32 [ %or2635, %if.end2627 ], [ %rc1.sroa.500.78, %do.body2618 ], !dbg !1261
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.79, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.79, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.70, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2641 = lshr i32 %rc1.sroa.0.79, 11, !dbg !1416
  %idxprom2644 = zext i32 %symbol.45 to i64, !dbg !1416
  %arrayidx2645 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %idxprom2644, !dbg !1416
  %159 = load i16, ptr %arrayidx2645, align 2, !dbg !1416, !tbaa !597
  %conv2646 = zext i16 %159 to i32, !dbg !1416
  %mul2647 = mul i32 %shr2641, %conv2646, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %mul2647, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2649 = icmp ult i32 %rc1.sroa.500.79, %mul2647, !dbg !1417
  br i1 %cmp2649, label %do.body2652, label %do.body2672, !dbg !1416

do.body2652:                                      ; preds = %do.end2639
  call void @llvm.dbg.value(metadata i32 %mul2647, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2659 = sub nsw i32 2048, %conv2646, !dbg !1419
  %shr2660 = lshr i32 %sub2659, 5, !dbg !1419
  %160 = trunc i32 %shr2660 to i16, !dbg !1419
  %conv2667 = add i16 %159, %160, !dbg !1419
  store i16 %conv2667, ptr %arrayidx2645, align 2, !dbg !1419, !tbaa !597
  %shl2670 = shl i32 %symbol.45, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %shl2670, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end2696, !dbg !1422

do.body2672:                                      ; preds = %do.end2639
  %sub2674 = sub i32 %rc1.sroa.0.79, %mul2647, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %sub2674, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2676 = sub i32 %rc1.sroa.500.79, %mul2647, !dbg !1423
  call void @llvm.dbg.value(metadata i32 %sub2676, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %161 = lshr i16 %159, 5, !dbg !1423
  %sub2688 = sub i16 %159, %161, !dbg !1423
  store i16 %sub2688, ptr %arrayidx2645, align 2, !dbg !1423, !tbaa !597
  %shl2692 = shl i32 %symbol.45, 1, !dbg !1426
  %add2693 = or i32 %shl2692, 1, !dbg !1426
  call void @llvm.dbg.value(metadata i32 %add2693, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end2696

do.end2696:                                       ; preds = %do.body2672, %do.body2652
  %symbol.46 = phi i32 [ %shl2670, %do.body2652 ], [ %add2693, %do.body2672 ], !dbg !1427
  %rc1.sroa.0.80 = phi i32 [ %mul2647, %do.body2652 ], [ %sub2674, %do.body2672 ], !dbg !1427
  %rc1.sroa.500.80 = phi i32 [ %rc1.sroa.500.79, %do.body2652 ], [ %sub2676, %do.body2672 ], !dbg !1428
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.80, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.80, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.46, metadata !280, metadata !DIExpression()), !dbg !456
  %add2700 = add i32 %symbol.46, -238, !dbg !1429
  call void @llvm.dbg.value(metadata i32 %add2700, metadata !283, metadata !DIExpression()), !dbg !456
  br label %do.end2704

do.end2704:                                       ; preds = %do.end2029, %do.end2696, %do.end1692
  %dict.sroa.36.38 = phi i64 [ %dict.sroa.36.25, %do.end1692 ], [ %dict.sroa.36.29, %do.end2029 ], [ %dict.sroa.36.37, %do.end2696 ], !dbg !550
  %dict.sroa.12.38 = phi i64 [ %dict.sroa.12.25, %do.end1692 ], [ %dict.sroa.12.29, %do.end2029 ], [ %dict.sroa.12.37, %do.end2696 ], !dbg !569
  %len.37 = phi i32 [ %add1694, %do.end1692 ], [ %add2032, %do.end2029 ], [ %add2700, %do.end2696 ], !dbg !1430
  %rep0.37 = phi i32 [ %rep0.24, %do.end1692 ], [ %rep0.28, %do.end2029 ], [ %rep0.36, %do.end2696 ], !dbg !573
  %rep1.37 = phi i32 [ %rep1.24, %do.end1692 ], [ %rep1.28, %do.end2029 ], [ %rep1.36, %do.end2696 ], !dbg !1431
  %rep2.37 = phi i32 [ %rep2.24, %do.end1692 ], [ %rep2.28, %do.end2029 ], [ %rep2.36, %do.end2696 ], !dbg !1432
  %rep3.37 = phi i32 [ %rep3.24, %do.end1692 ], [ %rep3.28, %do.end2029 ], [ %rep3.36, %do.end2696 ], !dbg !1433
  %state.37 = phi i32 [ %state.24, %do.end1692 ], [ %state.28, %do.end2029 ], [ %state.36, %do.end2696 ], !dbg !1065
  %limit.37 = phi i32 [ %limit.24, %do.end1692 ], [ %limit.28, %do.end2029 ], [ %limit.36, %do.end2696 ], !dbg !577
  %offset.44 = phi i32 [ %offset.31, %do.end1692 ], [ %offset.35, %do.end2029 ], [ %offset.43, %do.end2696 ], !dbg !578
  %rc_in_pos.71 = phi i64 [ %rc_in_pos.46, %do.end1692 ], [ %rc_in_pos.54, %do.end2029 ], [ %rc_in_pos.70, %do.end2696 ], !dbg !1430
  %rc1.sroa.0.81 = phi i32 [ %rc1.sroa.0.54, %do.end1692 ], [ %rc1.sroa.0.63, %do.end2029 ], [ %rc1.sroa.0.80, %do.end2696 ], !dbg !1430
  %rc1.sroa.500.81 = phi i32 [ %rc1.sroa.500.54, %do.end1692 ], [ %rc1.sroa.500.63, %do.end2029 ], [ %rc1.sroa.500.80, %do.end2696 ], !dbg !1430
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.38, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.38, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.81, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.81, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.71, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.44, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.37, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.37, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.37, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.37, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.37, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.37, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %len.37, metadata !283, metadata !DIExpression()), !dbg !456
  %cmp2705 = icmp ult i32 %len.37, 6, !dbg !1434
  %sub2707 = add i32 %len.37, -2
  %spec.select = select i1 %cmp2705, i32 %sub2707, i32 3, !dbg !1434
  %idxprom2709 = zext i32 %spec.select to i64, !dbg !1435
  %arrayidx2710 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, i64 %idxprom2709, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %arrayidx2710, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2714, !dbg !1436

do.body2714:                                      ; preds = %if.end, %do.end2704
  %dict.sroa.36.39 = phi i64 [ %dict.sroa.36.38, %do.end2704 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.39 = phi i64 [ %dict.sroa.12.38, %do.end2704 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.38 = phi i32 [ %len.37, %do.end2704 ], [ %14, %if.end ], !dbg !456
  %rep0.38 = phi i32 [ %rep0.37, %do.end2704 ], [ %5, %if.end ], !dbg !573
  %rep1.38 = phi i32 [ %rep1.37, %do.end2704 ], [ %6, %if.end ], !dbg !456
  %rep2.38 = phi i32 [ %rep2.37, %do.end2704 ], [ %7, %if.end ], !dbg !456
  %rep3.38 = phi i32 [ %rep3.37, %do.end2704 ], [ %8, %if.end ], !dbg !456
  %state.38 = phi i32 [ %state.37, %do.end2704 ], [ %4, %if.end ], !dbg !456
  %probs.37 = phi ptr [ %arrayidx2710, %do.end2704 ], [ %10, %if.end ], !dbg !456
  %symbol.47 = phi i32 [ 1, %do.end2704 ], [ %11, %if.end ], !dbg !456
  %limit.38 = phi i32 [ %limit.37, %do.end2704 ], [ %12, %if.end ], !dbg !577
  %offset.45 = phi i32 [ %offset.44, %do.end2704 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.72 = phi i64 [ %rc_in_pos.71, %do.end2704 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.82 = phi i32 [ %rc1.sroa.0.81, %do.end2704 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.82 = phi i32 [ %rc1.sroa.500.81, %do.end2704 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.39, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.39, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.82, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.82, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.72, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.45, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.38, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.47, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.37, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.38, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.38, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.38, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.38, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.38, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2716 = icmp ult i32 %rc1.sroa.0.82, 16777216, !dbg !1437
  br i1 %cmp2716, label %if.then2718, label %do.end2735, !dbg !1441

if.then2718:                                      ; preds = %do.body2714
  %cmp2719 = icmp eq i64 %rc_in_pos.72, %in_size, !dbg !1442
  br i1 %cmp2719, label %if.then2721, label %if.end2723, !dbg !1445

if.then2721:                                      ; preds = %if.then2718
  store i32 36, ptr %sequence, align 8, !dbg !1446, !tbaa !548
  br label %out, !dbg !1446

if.end2723:                                       ; preds = %if.then2718
  %shl2725 = shl nuw i32 %rc1.sroa.0.82, 8, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %shl2725, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2727 = shl i32 %rc1.sroa.500.82, 8, !dbg !1445
  %inc2728 = add i64 %rc_in_pos.72, 1, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %inc2728, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2729 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.72, !dbg !1445
  %162 = load i8, ptr %arrayidx2729, align 1, !dbg !1445, !tbaa !493
  %conv2730 = zext i8 %162 to i32, !dbg !1445
  %or2731 = or i32 %shl2727, %conv2730, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %or2731, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2735, !dbg !1445

do.end2735:                                       ; preds = %if.end2723, %do.body2714
  %rc_in_pos.73 = phi i64 [ %inc2728, %if.end2723 ], [ %rc_in_pos.72, %do.body2714 ], !dbg !1078
  %rc1.sroa.0.83 = phi i32 [ %shl2725, %if.end2723 ], [ %rc1.sroa.0.82, %do.body2714 ], !dbg !1078
  %rc1.sroa.500.83 = phi i32 [ %or2731, %if.end2723 ], [ %rc1.sroa.500.82, %do.body2714 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.83, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.83, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.73, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2737 = lshr i32 %rc1.sroa.0.83, 11, !dbg !1448
  %idxprom2738 = zext i32 %symbol.47 to i64, !dbg !1448
  %arrayidx2739 = getelementptr inbounds i16, ptr %probs.37, i64 %idxprom2738, !dbg !1448
  %163 = load i16, ptr %arrayidx2739, align 2, !dbg !1448, !tbaa !597
  %conv2740 = zext i16 %163 to i32, !dbg !1448
  %mul2741 = mul i32 %shr2737, %conv2740, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %mul2741, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2743 = icmp ult i32 %rc1.sroa.500.83, %mul2741, !dbg !1449
  br i1 %cmp2743, label %do.body2746, label %do.body2762, !dbg !1448

do.body2746:                                      ; preds = %do.end2735
  call void @llvm.dbg.value(metadata i32 %mul2741, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2751 = sub nsw i32 2048, %conv2740, !dbg !1451
  %shr2752 = lshr i32 %sub2751, 5, !dbg !1451
  %164 = trunc i32 %shr2752 to i16, !dbg !1451
  %conv2757 = add i16 %163, %164, !dbg !1451
  store i16 %conv2757, ptr %arrayidx2739, align 2, !dbg !1451, !tbaa !597
  %shl2760 = shl i32 %symbol.47, 1, !dbg !1454
  call void @llvm.dbg.value(metadata i32 %shl2760, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2785, !dbg !1454

do.body2762:                                      ; preds = %do.end2735
  %sub2764 = sub i32 %rc1.sroa.0.83, %mul2741, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %sub2764, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2766 = sub i32 %rc1.sroa.500.83, %mul2741, !dbg !1455
  call void @llvm.dbg.value(metadata i32 %sub2766, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %165 = lshr i16 %163, 5, !dbg !1455
  %sub2774 = sub i16 %163, %165, !dbg !1455
  store i16 %sub2774, ptr %arrayidx2739, align 2, !dbg !1455, !tbaa !597
  %shl2778 = shl i32 %symbol.47, 1, !dbg !1458
  %add2779 = or i32 %shl2778, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %add2779, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2785

do.body2785:                                      ; preds = %do.body2746, %do.body2762, %if.end
  %dict.sroa.36.40 = phi i64 [ %dict.sroa.36.39, %do.body2746 ], [ %dict.sroa.36.39, %do.body2762 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.40 = phi i64 [ %dict.sroa.12.39, %do.body2746 ], [ %dict.sroa.12.39, %do.body2762 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.39 = phi i32 [ %len.38, %do.body2746 ], [ %len.38, %do.body2762 ], [ %14, %if.end ], !dbg !456
  %rep0.39 = phi i32 [ %rep0.38, %do.body2746 ], [ %rep0.38, %do.body2762 ], [ %5, %if.end ], !dbg !573
  %rep1.39 = phi i32 [ %rep1.38, %do.body2746 ], [ %rep1.38, %do.body2762 ], [ %6, %if.end ], !dbg !456
  %rep2.39 = phi i32 [ %rep2.38, %do.body2746 ], [ %rep2.38, %do.body2762 ], [ %7, %if.end ], !dbg !456
  %rep3.39 = phi i32 [ %rep3.38, %do.body2746 ], [ %rep3.38, %do.body2762 ], [ %8, %if.end ], !dbg !456
  %state.39 = phi i32 [ %state.38, %do.body2746 ], [ %state.38, %do.body2762 ], [ %4, %if.end ], !dbg !456
  %probs.38 = phi ptr [ %probs.37, %do.body2746 ], [ %probs.37, %do.body2762 ], [ %10, %if.end ], !dbg !456
  %symbol.48 = phi i32 [ %shl2760, %do.body2746 ], [ %add2779, %do.body2762 ], [ %11, %if.end ], !dbg !456
  %limit.39 = phi i32 [ %limit.38, %do.body2746 ], [ %limit.38, %do.body2762 ], [ %12, %if.end ], !dbg !577
  %offset.46 = phi i32 [ %offset.45, %do.body2746 ], [ %offset.45, %do.body2762 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.74 = phi i64 [ %rc_in_pos.73, %do.body2746 ], [ %rc_in_pos.73, %do.body2762 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.84 = phi i32 [ %mul2741, %do.body2746 ], [ %sub2764, %do.body2762 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.84 = phi i32 [ %rc1.sroa.500.83, %do.body2746 ], [ %sub2766, %do.body2762 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.40, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.40, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.84, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.84, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.74, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.46, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.39, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.48, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.38, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.39, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.39, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.39, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.39, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.39, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2787 = icmp ult i32 %rc1.sroa.0.84, 16777216, !dbg !1459
  br i1 %cmp2787, label %if.then2789, label %do.end2806, !dbg !1463

if.then2789:                                      ; preds = %do.body2785
  %cmp2790 = icmp eq i64 %rc_in_pos.74, %in_size, !dbg !1464
  br i1 %cmp2790, label %if.then2792, label %if.end2794, !dbg !1467

if.then2792:                                      ; preds = %if.then2789
  store i32 37, ptr %sequence, align 8, !dbg !1468, !tbaa !548
  br label %out, !dbg !1468

if.end2794:                                       ; preds = %if.then2789
  %shl2796 = shl nuw i32 %rc1.sroa.0.84, 8, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %shl2796, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2798 = shl i32 %rc1.sroa.500.84, 8, !dbg !1467
  %inc2799 = add i64 %rc_in_pos.74, 1, !dbg !1467
  call void @llvm.dbg.value(metadata i64 %inc2799, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2800 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.74, !dbg !1467
  %166 = load i8, ptr %arrayidx2800, align 1, !dbg !1467, !tbaa !493
  %conv2801 = zext i8 %166 to i32, !dbg !1467
  %or2802 = or i32 %shl2798, %conv2801, !dbg !1467
  call void @llvm.dbg.value(metadata i32 %or2802, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2806, !dbg !1467

do.end2806:                                       ; preds = %if.end2794, %do.body2785
  %rc_in_pos.75 = phi i64 [ %inc2799, %if.end2794 ], [ %rc_in_pos.74, %do.body2785 ], !dbg !1078
  %rc1.sroa.0.85 = phi i32 [ %shl2796, %if.end2794 ], [ %rc1.sroa.0.84, %do.body2785 ], !dbg !1078
  %rc1.sroa.500.85 = phi i32 [ %or2802, %if.end2794 ], [ %rc1.sroa.500.84, %do.body2785 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.85, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.85, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.75, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2808 = lshr i32 %rc1.sroa.0.85, 11, !dbg !1470
  %idxprom2809 = zext i32 %symbol.48 to i64, !dbg !1470
  %arrayidx2810 = getelementptr inbounds i16, ptr %probs.38, i64 %idxprom2809, !dbg !1470
  %167 = load i16, ptr %arrayidx2810, align 2, !dbg !1470, !tbaa !597
  %conv2811 = zext i16 %167 to i32, !dbg !1470
  %mul2812 = mul i32 %shr2808, %conv2811, !dbg !1470
  call void @llvm.dbg.value(metadata i32 %mul2812, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2814 = icmp ult i32 %rc1.sroa.500.85, %mul2812, !dbg !1471
  br i1 %cmp2814, label %do.body2817, label %do.body2833, !dbg !1470

do.body2817:                                      ; preds = %do.end2806
  call void @llvm.dbg.value(metadata i32 %mul2812, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2822 = sub nsw i32 2048, %conv2811, !dbg !1473
  %shr2823 = lshr i32 %sub2822, 5, !dbg !1473
  %168 = trunc i32 %shr2823 to i16, !dbg !1473
  %conv2828 = add i16 %167, %168, !dbg !1473
  store i16 %conv2828, ptr %arrayidx2810, align 2, !dbg !1473, !tbaa !597
  %shl2831 = shl i32 %symbol.48, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i32 %shl2831, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2856, !dbg !1476

do.body2833:                                      ; preds = %do.end2806
  %sub2835 = sub i32 %rc1.sroa.0.85, %mul2812, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %sub2835, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2837 = sub i32 %rc1.sroa.500.85, %mul2812, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %sub2837, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %169 = lshr i16 %167, 5, !dbg !1477
  %sub2845 = sub i16 %167, %169, !dbg !1477
  store i16 %sub2845, ptr %arrayidx2810, align 2, !dbg !1477, !tbaa !597
  %shl2849 = shl i32 %symbol.48, 1, !dbg !1480
  %add2850 = or i32 %shl2849, 1, !dbg !1480
  call void @llvm.dbg.value(metadata i32 %add2850, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2856

do.body2856:                                      ; preds = %do.body2817, %do.body2833, %if.end
  %dict.sroa.36.41 = phi i64 [ %dict.sroa.36.40, %do.body2817 ], [ %dict.sroa.36.40, %do.body2833 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.41 = phi i64 [ %dict.sroa.12.40, %do.body2817 ], [ %dict.sroa.12.40, %do.body2833 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.40 = phi i32 [ %len.39, %do.body2817 ], [ %len.39, %do.body2833 ], [ %14, %if.end ], !dbg !456
  %rep0.40 = phi i32 [ %rep0.39, %do.body2817 ], [ %rep0.39, %do.body2833 ], [ %5, %if.end ], !dbg !573
  %rep1.40 = phi i32 [ %rep1.39, %do.body2817 ], [ %rep1.39, %do.body2833 ], [ %6, %if.end ], !dbg !456
  %rep2.40 = phi i32 [ %rep2.39, %do.body2817 ], [ %rep2.39, %do.body2833 ], [ %7, %if.end ], !dbg !456
  %rep3.40 = phi i32 [ %rep3.39, %do.body2817 ], [ %rep3.39, %do.body2833 ], [ %8, %if.end ], !dbg !456
  %state.40 = phi i32 [ %state.39, %do.body2817 ], [ %state.39, %do.body2833 ], [ %4, %if.end ], !dbg !456
  %probs.39 = phi ptr [ %probs.38, %do.body2817 ], [ %probs.38, %do.body2833 ], [ %10, %if.end ], !dbg !456
  %symbol.49 = phi i32 [ %shl2831, %do.body2817 ], [ %add2850, %do.body2833 ], [ %11, %if.end ], !dbg !456
  %limit.40 = phi i32 [ %limit.39, %do.body2817 ], [ %limit.39, %do.body2833 ], [ %12, %if.end ], !dbg !577
  %offset.47 = phi i32 [ %offset.46, %do.body2817 ], [ %offset.46, %do.body2833 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.76 = phi i64 [ %rc_in_pos.75, %do.body2817 ], [ %rc_in_pos.75, %do.body2833 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.86 = phi i32 [ %mul2812, %do.body2817 ], [ %sub2835, %do.body2833 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.86 = phi i32 [ %rc1.sroa.500.85, %do.body2817 ], [ %sub2837, %do.body2833 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.41, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.41, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.86, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.86, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.76, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.47, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.40, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.49, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.39, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.40, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.40, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.40, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.40, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.40, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2858 = icmp ult i32 %rc1.sroa.0.86, 16777216, !dbg !1481
  br i1 %cmp2858, label %if.then2860, label %do.end2877, !dbg !1485

if.then2860:                                      ; preds = %do.body2856
  %cmp2861 = icmp eq i64 %rc_in_pos.76, %in_size, !dbg !1486
  br i1 %cmp2861, label %if.then2863, label %if.end2865, !dbg !1489

if.then2863:                                      ; preds = %if.then2860
  store i32 38, ptr %sequence, align 8, !dbg !1490, !tbaa !548
  br label %out, !dbg !1490

if.end2865:                                       ; preds = %if.then2860
  %shl2867 = shl nuw i32 %rc1.sroa.0.86, 8, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %shl2867, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2869 = shl i32 %rc1.sroa.500.86, 8, !dbg !1489
  %inc2870 = add i64 %rc_in_pos.76, 1, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %inc2870, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2871 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.76, !dbg !1489
  %170 = load i8, ptr %arrayidx2871, align 1, !dbg !1489, !tbaa !493
  %conv2872 = zext i8 %170 to i32, !dbg !1489
  %or2873 = or i32 %shl2869, %conv2872, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %or2873, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2877, !dbg !1489

do.end2877:                                       ; preds = %if.end2865, %do.body2856
  %rc_in_pos.77 = phi i64 [ %inc2870, %if.end2865 ], [ %rc_in_pos.76, %do.body2856 ], !dbg !1078
  %rc1.sroa.0.87 = phi i32 [ %shl2867, %if.end2865 ], [ %rc1.sroa.0.86, %do.body2856 ], !dbg !1078
  %rc1.sroa.500.87 = phi i32 [ %or2873, %if.end2865 ], [ %rc1.sroa.500.86, %do.body2856 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.87, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.87, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.77, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2879 = lshr i32 %rc1.sroa.0.87, 11, !dbg !1492
  %idxprom2880 = zext i32 %symbol.49 to i64, !dbg !1492
  %arrayidx2881 = getelementptr inbounds i16, ptr %probs.39, i64 %idxprom2880, !dbg !1492
  %171 = load i16, ptr %arrayidx2881, align 2, !dbg !1492, !tbaa !597
  %conv2882 = zext i16 %171 to i32, !dbg !1492
  %mul2883 = mul i32 %shr2879, %conv2882, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %mul2883, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2885 = icmp ult i32 %rc1.sroa.500.87, %mul2883, !dbg !1493
  br i1 %cmp2885, label %do.body2888, label %do.body2904, !dbg !1492

do.body2888:                                      ; preds = %do.end2877
  call void @llvm.dbg.value(metadata i32 %mul2883, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2893 = sub nsw i32 2048, %conv2882, !dbg !1495
  %shr2894 = lshr i32 %sub2893, 5, !dbg !1495
  %172 = trunc i32 %shr2894 to i16, !dbg !1495
  %conv2899 = add i16 %171, %172, !dbg !1495
  store i16 %conv2899, ptr %arrayidx2881, align 2, !dbg !1495, !tbaa !597
  %shl2902 = shl i32 %symbol.49, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %shl2902, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2927, !dbg !1498

do.body2904:                                      ; preds = %do.end2877
  %sub2906 = sub i32 %rc1.sroa.0.87, %mul2883, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %sub2906, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2908 = sub i32 %rc1.sroa.500.87, %mul2883, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %sub2908, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %173 = lshr i16 %171, 5, !dbg !1499
  %sub2916 = sub i16 %171, %173, !dbg !1499
  store i16 %sub2916, ptr %arrayidx2881, align 2, !dbg !1499, !tbaa !597
  %shl2920 = shl i32 %symbol.49, 1, !dbg !1502
  %add2921 = or i32 %shl2920, 1, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %add2921, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2927

do.body2927:                                      ; preds = %do.body2888, %do.body2904, %if.end
  %dict.sroa.36.42 = phi i64 [ %dict.sroa.36.41, %do.body2888 ], [ %dict.sroa.36.41, %do.body2904 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.42 = phi i64 [ %dict.sroa.12.41, %do.body2888 ], [ %dict.sroa.12.41, %do.body2904 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.41 = phi i32 [ %len.40, %do.body2888 ], [ %len.40, %do.body2904 ], [ %14, %if.end ], !dbg !456
  %rep0.41 = phi i32 [ %rep0.40, %do.body2888 ], [ %rep0.40, %do.body2904 ], [ %5, %if.end ], !dbg !573
  %rep1.41 = phi i32 [ %rep1.40, %do.body2888 ], [ %rep1.40, %do.body2904 ], [ %6, %if.end ], !dbg !456
  %rep2.41 = phi i32 [ %rep2.40, %do.body2888 ], [ %rep2.40, %do.body2904 ], [ %7, %if.end ], !dbg !456
  %rep3.41 = phi i32 [ %rep3.40, %do.body2888 ], [ %rep3.40, %do.body2904 ], [ %8, %if.end ], !dbg !456
  %state.41 = phi i32 [ %state.40, %do.body2888 ], [ %state.40, %do.body2904 ], [ %4, %if.end ], !dbg !456
  %probs.40 = phi ptr [ %probs.39, %do.body2888 ], [ %probs.39, %do.body2904 ], [ %10, %if.end ], !dbg !456
  %symbol.50 = phi i32 [ %shl2902, %do.body2888 ], [ %add2921, %do.body2904 ], [ %11, %if.end ], !dbg !456
  %limit.41 = phi i32 [ %limit.40, %do.body2888 ], [ %limit.40, %do.body2904 ], [ %12, %if.end ], !dbg !577
  %offset.48 = phi i32 [ %offset.47, %do.body2888 ], [ %offset.47, %do.body2904 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.78 = phi i64 [ %rc_in_pos.77, %do.body2888 ], [ %rc_in_pos.77, %do.body2904 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.88 = phi i32 [ %mul2883, %do.body2888 ], [ %sub2906, %do.body2904 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.88 = phi i32 [ %rc1.sroa.500.87, %do.body2888 ], [ %sub2908, %do.body2904 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.42, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.42, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.88, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.88, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.78, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.48, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.41, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.50, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.40, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.41, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.41, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.41, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.41, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.41, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp2929 = icmp ult i32 %rc1.sroa.0.88, 16777216, !dbg !1503
  br i1 %cmp2929, label %if.then2931, label %do.end2948, !dbg !1507

if.then2931:                                      ; preds = %do.body2927
  %cmp2932 = icmp eq i64 %rc_in_pos.78, %in_size, !dbg !1508
  br i1 %cmp2932, label %if.then2934, label %if.end2936, !dbg !1511

if.then2934:                                      ; preds = %if.then2931
  store i32 39, ptr %sequence, align 8, !dbg !1512, !tbaa !548
  br label %out, !dbg !1512

if.end2936:                                       ; preds = %if.then2931
  %shl2938 = shl nuw i32 %rc1.sroa.0.88, 8, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %shl2938, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl2940 = shl i32 %rc1.sroa.500.88, 8, !dbg !1511
  %inc2941 = add i64 %rc_in_pos.78, 1, !dbg !1511
  call void @llvm.dbg.value(metadata i64 %inc2941, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx2942 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.78, !dbg !1511
  %174 = load i8, ptr %arrayidx2942, align 1, !dbg !1511, !tbaa !493
  %conv2943 = zext i8 %174 to i32, !dbg !1511
  %or2944 = or i32 %shl2940, %conv2943, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %or2944, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end2948, !dbg !1511

do.end2948:                                       ; preds = %if.end2936, %do.body2927
  %rc_in_pos.79 = phi i64 [ %inc2941, %if.end2936 ], [ %rc_in_pos.78, %do.body2927 ], !dbg !1078
  %rc1.sroa.0.89 = phi i32 [ %shl2938, %if.end2936 ], [ %rc1.sroa.0.88, %do.body2927 ], !dbg !1078
  %rc1.sroa.500.89 = phi i32 [ %or2944, %if.end2936 ], [ %rc1.sroa.500.88, %do.body2927 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.89, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.89, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.79, metadata !270, metadata !DIExpression()), !dbg !456
  %shr2950 = lshr i32 %rc1.sroa.0.89, 11, !dbg !1514
  %idxprom2951 = zext i32 %symbol.50 to i64, !dbg !1514
  %arrayidx2952 = getelementptr inbounds i16, ptr %probs.40, i64 %idxprom2951, !dbg !1514
  %175 = load i16, ptr %arrayidx2952, align 2, !dbg !1514, !tbaa !597
  %conv2953 = zext i16 %175 to i32, !dbg !1514
  %mul2954 = mul i32 %shr2950, %conv2953, !dbg !1514
  call void @llvm.dbg.value(metadata i32 %mul2954, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp2956 = icmp ult i32 %rc1.sroa.500.89, %mul2954, !dbg !1515
  br i1 %cmp2956, label %do.body2959, label %do.body2975, !dbg !1514

do.body2959:                                      ; preds = %do.end2948
  call void @llvm.dbg.value(metadata i32 %mul2954, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2964 = sub nsw i32 2048, %conv2953, !dbg !1517
  %shr2965 = lshr i32 %sub2964, 5, !dbg !1517
  %176 = trunc i32 %shr2965 to i16, !dbg !1517
  %conv2970 = add i16 %175, %176, !dbg !1517
  store i16 %conv2970, ptr %arrayidx2952, align 2, !dbg !1517, !tbaa !597
  %shl2973 = shl i32 %symbol.50, 1, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %shl2973, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2998, !dbg !1520

do.body2975:                                      ; preds = %do.end2948
  %sub2977 = sub i32 %rc1.sroa.0.89, %mul2954, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %sub2977, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub2979 = sub i32 %rc1.sroa.500.89, %mul2954, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %sub2979, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %177 = lshr i16 %175, 5, !dbg !1521
  %sub2987 = sub i16 %175, %177, !dbg !1521
  store i16 %sub2987, ptr %arrayidx2952, align 2, !dbg !1521, !tbaa !597
  %shl2991 = shl i32 %symbol.50, 1, !dbg !1524
  %add2992 = or i32 %shl2991, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %add2992, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body2998

do.body2998:                                      ; preds = %do.body2959, %do.body2975, %if.end
  %dict.sroa.36.43 = phi i64 [ %dict.sroa.36.42, %do.body2959 ], [ %dict.sroa.36.42, %do.body2975 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.43 = phi i64 [ %dict.sroa.12.42, %do.body2959 ], [ %dict.sroa.12.42, %do.body2975 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.42 = phi i32 [ %len.41, %do.body2959 ], [ %len.41, %do.body2975 ], [ %14, %if.end ], !dbg !456
  %rep0.42 = phi i32 [ %rep0.41, %do.body2959 ], [ %rep0.41, %do.body2975 ], [ %5, %if.end ], !dbg !573
  %rep1.42 = phi i32 [ %rep1.41, %do.body2959 ], [ %rep1.41, %do.body2975 ], [ %6, %if.end ], !dbg !456
  %rep2.42 = phi i32 [ %rep2.41, %do.body2959 ], [ %rep2.41, %do.body2975 ], [ %7, %if.end ], !dbg !456
  %rep3.42 = phi i32 [ %rep3.41, %do.body2959 ], [ %rep3.41, %do.body2975 ], [ %8, %if.end ], !dbg !456
  %state.42 = phi i32 [ %state.41, %do.body2959 ], [ %state.41, %do.body2975 ], [ %4, %if.end ], !dbg !456
  %probs.41 = phi ptr [ %probs.40, %do.body2959 ], [ %probs.40, %do.body2975 ], [ %10, %if.end ], !dbg !456
  %symbol.51 = phi i32 [ %shl2973, %do.body2959 ], [ %add2992, %do.body2975 ], [ %11, %if.end ], !dbg !456
  %limit.42 = phi i32 [ %limit.41, %do.body2959 ], [ %limit.41, %do.body2975 ], [ %12, %if.end ], !dbg !577
  %offset.49 = phi i32 [ %offset.48, %do.body2959 ], [ %offset.48, %do.body2975 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.80 = phi i64 [ %rc_in_pos.79, %do.body2959 ], [ %rc_in_pos.79, %do.body2975 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.90 = phi i32 [ %mul2954, %do.body2959 ], [ %sub2977, %do.body2975 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.90 = phi i32 [ %rc1.sroa.500.89, %do.body2959 ], [ %sub2979, %do.body2975 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.43, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.43, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.90, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.90, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.80, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.49, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.42, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.51, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.41, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.42, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.42, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.42, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.42, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.42, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3000 = icmp ult i32 %rc1.sroa.0.90, 16777216, !dbg !1525
  br i1 %cmp3000, label %if.then3002, label %do.end3019, !dbg !1529

if.then3002:                                      ; preds = %do.body2998
  %cmp3003 = icmp eq i64 %rc_in_pos.80, %in_size, !dbg !1530
  br i1 %cmp3003, label %if.then3005, label %if.end3007, !dbg !1533

if.then3005:                                      ; preds = %if.then3002
  store i32 40, ptr %sequence, align 8, !dbg !1534, !tbaa !548
  br label %out, !dbg !1534

if.end3007:                                       ; preds = %if.then3002
  %shl3009 = shl nuw i32 %rc1.sroa.0.90, 8, !dbg !1533
  call void @llvm.dbg.value(metadata i32 %shl3009, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3011 = shl i32 %rc1.sroa.500.90, 8, !dbg !1533
  %inc3012 = add i64 %rc_in_pos.80, 1, !dbg !1533
  call void @llvm.dbg.value(metadata i64 %inc3012, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3013 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.80, !dbg !1533
  %178 = load i8, ptr %arrayidx3013, align 1, !dbg !1533, !tbaa !493
  %conv3014 = zext i8 %178 to i32, !dbg !1533
  %or3015 = or i32 %shl3011, %conv3014, !dbg !1533
  call void @llvm.dbg.value(metadata i32 %or3015, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3019, !dbg !1533

do.end3019:                                       ; preds = %if.end3007, %do.body2998
  %rc_in_pos.81 = phi i64 [ %inc3012, %if.end3007 ], [ %rc_in_pos.80, %do.body2998 ], !dbg !1078
  %rc1.sroa.0.91 = phi i32 [ %shl3009, %if.end3007 ], [ %rc1.sroa.0.90, %do.body2998 ], !dbg !1078
  %rc1.sroa.500.91 = phi i32 [ %or3015, %if.end3007 ], [ %rc1.sroa.500.90, %do.body2998 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.91, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.91, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.81, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3021 = lshr i32 %rc1.sroa.0.91, 11, !dbg !1536
  %idxprom3022 = zext i32 %symbol.51 to i64, !dbg !1536
  %arrayidx3023 = getelementptr inbounds i16, ptr %probs.41, i64 %idxprom3022, !dbg !1536
  %179 = load i16, ptr %arrayidx3023, align 2, !dbg !1536, !tbaa !597
  %conv3024 = zext i16 %179 to i32, !dbg !1536
  %mul3025 = mul i32 %shr3021, %conv3024, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %mul3025, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3027 = icmp ult i32 %rc1.sroa.500.91, %mul3025, !dbg !1537
  br i1 %cmp3027, label %do.body3030, label %do.body3046, !dbg !1536

do.body3030:                                      ; preds = %do.end3019
  call void @llvm.dbg.value(metadata i32 %mul3025, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3035 = sub nsw i32 2048, %conv3024, !dbg !1539
  %shr3036 = lshr i32 %sub3035, 5, !dbg !1539
  %180 = trunc i32 %shr3036 to i16, !dbg !1539
  %conv3041 = add i16 %179, %180, !dbg !1539
  store i16 %conv3041, ptr %arrayidx3023, align 2, !dbg !1539, !tbaa !597
  %shl3044 = shl i32 %symbol.51, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i32 %shl3044, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3069, !dbg !1542

do.body3046:                                      ; preds = %do.end3019
  %sub3048 = sub i32 %rc1.sroa.0.91, %mul3025, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %sub3048, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3050 = sub i32 %rc1.sroa.500.91, %mul3025, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %sub3050, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %181 = lshr i16 %179, 5, !dbg !1543
  %sub3058 = sub i16 %179, %181, !dbg !1543
  store i16 %sub3058, ptr %arrayidx3023, align 2, !dbg !1543, !tbaa !597
  %shl3062 = shl i32 %symbol.51, 1, !dbg !1546
  %add3063 = or i32 %shl3062, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %add3063, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3069

do.body3069:                                      ; preds = %do.body3030, %do.body3046, %if.end
  %dict.sroa.36.44 = phi i64 [ %dict.sroa.36.43, %do.body3030 ], [ %dict.sroa.36.43, %do.body3046 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.44 = phi i64 [ %dict.sroa.12.43, %do.body3030 ], [ %dict.sroa.12.43, %do.body3046 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.43 = phi i32 [ %len.42, %do.body3030 ], [ %len.42, %do.body3046 ], [ %14, %if.end ], !dbg !456
  %rep0.43 = phi i32 [ %rep0.42, %do.body3030 ], [ %rep0.42, %do.body3046 ], [ %5, %if.end ], !dbg !573
  %rep1.43 = phi i32 [ %rep1.42, %do.body3030 ], [ %rep1.42, %do.body3046 ], [ %6, %if.end ], !dbg !456
  %rep2.43 = phi i32 [ %rep2.42, %do.body3030 ], [ %rep2.42, %do.body3046 ], [ %7, %if.end ], !dbg !456
  %rep3.43 = phi i32 [ %rep3.42, %do.body3030 ], [ %rep3.42, %do.body3046 ], [ %8, %if.end ], !dbg !456
  %state.43 = phi i32 [ %state.42, %do.body3030 ], [ %state.42, %do.body3046 ], [ %4, %if.end ], !dbg !456
  %probs.42 = phi ptr [ %probs.41, %do.body3030 ], [ %probs.41, %do.body3046 ], [ %10, %if.end ], !dbg !456
  %symbol.52 = phi i32 [ %shl3044, %do.body3030 ], [ %add3063, %do.body3046 ], [ %11, %if.end ], !dbg !456
  %limit.43 = phi i32 [ %limit.42, %do.body3030 ], [ %limit.42, %do.body3046 ], [ %12, %if.end ], !dbg !577
  %offset.50 = phi i32 [ %offset.49, %do.body3030 ], [ %offset.49, %do.body3046 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.82 = phi i64 [ %rc_in_pos.81, %do.body3030 ], [ %rc_in_pos.81, %do.body3046 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.92 = phi i32 [ %mul3025, %do.body3030 ], [ %sub3048, %do.body3046 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.92 = phi i32 [ %rc1.sroa.500.91, %do.body3030 ], [ %sub3050, %do.body3046 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.44, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.44, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.92, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.92, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.82, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.50, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.43, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.52, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.42, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.43, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.43, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.43, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.43, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.43, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3071 = icmp ult i32 %rc1.sroa.0.92, 16777216, !dbg !1547
  br i1 %cmp3071, label %if.then3073, label %do.end3090, !dbg !1551

if.then3073:                                      ; preds = %do.body3069
  %cmp3074 = icmp eq i64 %rc_in_pos.82, %in_size, !dbg !1552
  br i1 %cmp3074, label %if.then3076, label %if.end3078, !dbg !1555

if.then3076:                                      ; preds = %if.then3073
  store i32 41, ptr %sequence, align 8, !dbg !1556, !tbaa !548
  br label %out, !dbg !1556

if.end3078:                                       ; preds = %if.then3073
  %shl3080 = shl nuw i32 %rc1.sroa.0.92, 8, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %shl3080, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3082 = shl i32 %rc1.sroa.500.92, 8, !dbg !1555
  %inc3083 = add i64 %rc_in_pos.82, 1, !dbg !1555
  call void @llvm.dbg.value(metadata i64 %inc3083, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3084 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.82, !dbg !1555
  %182 = load i8, ptr %arrayidx3084, align 1, !dbg !1555, !tbaa !493
  %conv3085 = zext i8 %182 to i32, !dbg !1555
  %or3086 = or i32 %shl3082, %conv3085, !dbg !1555
  call void @llvm.dbg.value(metadata i32 %or3086, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3090, !dbg !1555

do.end3090:                                       ; preds = %if.end3078, %do.body3069
  %rc_in_pos.83 = phi i64 [ %inc3083, %if.end3078 ], [ %rc_in_pos.82, %do.body3069 ], !dbg !1078
  %rc1.sroa.0.93 = phi i32 [ %shl3080, %if.end3078 ], [ %rc1.sroa.0.92, %do.body3069 ], !dbg !1078
  %rc1.sroa.500.93 = phi i32 [ %or3086, %if.end3078 ], [ %rc1.sroa.500.92, %do.body3069 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.93, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.93, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.83, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3092 = lshr i32 %rc1.sroa.0.93, 11, !dbg !1558
  %idxprom3093 = zext i32 %symbol.52 to i64, !dbg !1558
  %arrayidx3094 = getelementptr inbounds i16, ptr %probs.42, i64 %idxprom3093, !dbg !1558
  %183 = load i16, ptr %arrayidx3094, align 2, !dbg !1558, !tbaa !597
  %conv3095 = zext i16 %183 to i32, !dbg !1558
  %mul3096 = mul i32 %shr3092, %conv3095, !dbg !1558
  call void @llvm.dbg.value(metadata i32 %mul3096, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3098 = icmp ult i32 %rc1.sroa.500.93, %mul3096, !dbg !1559
  br i1 %cmp3098, label %do.body3101, label %do.body3117, !dbg !1558

do.body3101:                                      ; preds = %do.end3090
  call void @llvm.dbg.value(metadata i32 %mul3096, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3106 = sub nsw i32 2048, %conv3095, !dbg !1561
  %shr3107 = lshr i32 %sub3106, 5, !dbg !1561
  %184 = trunc i32 %shr3107 to i16, !dbg !1561
  %conv3112 = add i16 %183, %184, !dbg !1561
  store i16 %conv3112, ptr %arrayidx3094, align 2, !dbg !1561, !tbaa !597
  %shl3115 = shl i32 %symbol.52, 1, !dbg !1564
  call void @llvm.dbg.value(metadata i32 %shl3115, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3137, !dbg !1564

do.body3117:                                      ; preds = %do.end3090
  %sub3119 = sub i32 %rc1.sroa.0.93, %mul3096, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %sub3119, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3121 = sub i32 %rc1.sroa.500.93, %mul3096, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %sub3121, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %185 = lshr i16 %183, 5, !dbg !1565
  %sub3129 = sub i16 %183, %185, !dbg !1565
  store i16 %sub3129, ptr %arrayidx3094, align 2, !dbg !1565, !tbaa !597
  %shl3133 = shl i32 %symbol.52, 1, !dbg !1568
  %add3134 = or i32 %shl3133, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %add3134, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3137

do.end3137:                                       ; preds = %do.body3117, %do.body3101
  %symbol.53 = phi i32 [ %shl3115, %do.body3101 ], [ %add3134, %do.body3117 ], !dbg !1569
  %rc1.sroa.0.94 = phi i32 [ %mul3096, %do.body3101 ], [ %sub3119, %do.body3117 ], !dbg !1569
  %rc1.sroa.500.94 = phi i32 [ %rc1.sroa.500.93, %do.body3101 ], [ %sub3121, %do.body3117 ], !dbg !1570
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.94, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.94, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.53, metadata !280, metadata !DIExpression()), !dbg !456
  %sub3138 = add i32 %symbol.53, -64, !dbg !1571
  call void @llvm.dbg.value(metadata i32 %sub3138, metadata !280, metadata !DIExpression()), !dbg !456
  %cmp3139 = icmp ult i32 %sub3138, 4, !dbg !1572
  br i1 %cmp3139, label %if.end3911, label %if.else3142, !dbg !1574

if.else3142:                                      ; preds = %do.end3137
  %shr3143 = lshr i32 %sub3138, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %shr3143, metadata !281, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !456
  %and3145 = and i32 %symbol.53, 1, !dbg !1577
  %add3146 = or i32 %and3145, 2, !dbg !1578
  call void @llvm.dbg.value(metadata i32 %add3146, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3147 = icmp ult i32 %sub3138, 14, !dbg !1579
  br i1 %cmp3147, label %if.then3149, label %if.else3524, !dbg !1581

if.then3149:                                      ; preds = %if.else3142
  %sub3144 = add nsw i32 %shr3143, -1, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %sub3144, metadata !281, metadata !DIExpression()), !dbg !456
  %shl3150 = shl i32 %add3146, %sub3144, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %shl3150, metadata !273, metadata !DIExpression()), !dbg !456
  %pos_special = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, !dbg !1585
  %idx.ext = zext i32 %shl3150 to i64, !dbg !1586
  %add.ptr = getelementptr inbounds i16, ptr %pos_special, i64 %idx.ext, !dbg !1586
  %idx.ext3152 = zext i32 %sub3138 to i64, !dbg !1587
  %idx.neg = sub nsw i64 0, %idx.ext3152, !dbg !1587
  %add.ptr3153 = getelementptr inbounds i16, ptr %add.ptr, i64 %idx.neg, !dbg !1587
  %add.ptr3154 = getelementptr inbounds i16, ptr %add.ptr3153, i64 -1, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %add.ptr3154, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 0, metadata !282, metadata !DIExpression()), !dbg !456
  br label %sw.bb3155, !dbg !1589

sw.bb3155:                                        ; preds = %if.end, %if.then3149
  %dict.sroa.36.45 = phi i64 [ %dict.sroa.36.44, %if.then3149 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.45 = phi i64 [ %dict.sroa.12.44, %if.then3149 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.44 = phi i32 [ %len.43, %if.then3149 ], [ %14, %if.end ], !dbg !456
  %rep0.44 = phi i32 [ %shl3150, %if.then3149 ], [ %5, %if.end ], !dbg !456
  %rep1.44 = phi i32 [ %rep1.43, %if.then3149 ], [ %6, %if.end ], !dbg !456
  %rep2.44 = phi i32 [ %rep2.43, %if.then3149 ], [ %7, %if.end ], !dbg !456
  %rep3.44 = phi i32 [ %rep3.43, %if.then3149 ], [ %8, %if.end ], !dbg !456
  %state.44 = phi i32 [ %state.43, %if.then3149 ], [ %4, %if.end ], !dbg !456
  %probs.43 = phi ptr [ %add.ptr3154, %if.then3149 ], [ %10, %if.end ], !dbg !456
  %symbol.54 = phi i32 [ 1, %if.then3149 ], [ %11, %if.end ], !dbg !456
  %limit.44 = phi i32 [ %sub3144, %if.then3149 ], [ %12, %if.end ], !dbg !456
  %offset.51 = phi i32 [ 0, %if.then3149 ], [ %13, %if.end ], !dbg !456
  %rc_in_pos.84 = phi i64 [ %rc_in_pos.83, %if.then3149 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.95 = phi i32 [ %rc1.sroa.0.94, %if.then3149 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.95 = phi i32 [ %rc1.sroa.500.94, %if.then3149 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.45, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.45, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.95, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.95, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.84, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.51, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.44, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.54, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.43, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.44, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.44, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.44, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.44, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.44, metadata !273, metadata !DIExpression()), !dbg !456
  switch i32 %limit.44, label %if.end3911 [
    i32 5, label %do.body3158
    i32 4, label %do.body3231
    i32 3, label %do.body3306
    i32 2, label %do.body3381
    i32 1, label %do.body3456
  ], !dbg !1590

do.body3158:                                      ; preds = %sw.bb3155
  %cmp3160 = icmp ult i32 %rc1.sroa.0.95, 16777216, !dbg !1591
  br i1 %cmp3160, label %if.then3162, label %do.end3179, !dbg !1596

if.then3162:                                      ; preds = %do.body3158
  %cmp3163 = icmp eq i64 %rc_in_pos.84, %in_size, !dbg !1597
  br i1 %cmp3163, label %if.then3165, label %if.end3167, !dbg !1600

if.then3165:                                      ; preds = %if.then3162
  store i32 42, ptr %sequence, align 8, !dbg !1601, !tbaa !548
  br label %out, !dbg !1601

if.end3167:                                       ; preds = %if.then3162
  %shl3169 = shl nuw i32 %rc1.sroa.0.95, 8, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %shl3169, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3171 = shl i32 %rc1.sroa.500.95, 8, !dbg !1600
  %inc3172 = add i64 %rc_in_pos.84, 1, !dbg !1600
  call void @llvm.dbg.value(metadata i64 %inc3172, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3173 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.84, !dbg !1600
  %186 = load i8, ptr %arrayidx3173, align 1, !dbg !1600, !tbaa !493
  %conv3174 = zext i8 %186 to i32, !dbg !1600
  %or3175 = or i32 %shl3171, %conv3174, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %or3175, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3179, !dbg !1600

do.end3179:                                       ; preds = %if.end3167, %do.body3158
  %rc_in_pos.85 = phi i64 [ %inc3172, %if.end3167 ], [ %rc_in_pos.84, %do.body3158 ], !dbg !1078
  %rc1.sroa.0.96 = phi i32 [ %shl3169, %if.end3167 ], [ %rc1.sroa.0.95, %do.body3158 ], !dbg !1078
  %rc1.sroa.500.96 = phi i32 [ %or3175, %if.end3167 ], [ %rc1.sroa.500.95, %do.body3158 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.96, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.96, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.85, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3181 = lshr i32 %rc1.sroa.0.96, 11, !dbg !1603
  %idxprom3182 = zext i32 %symbol.54 to i64, !dbg !1603
  %arrayidx3183 = getelementptr inbounds i16, ptr %probs.43, i64 %idxprom3182, !dbg !1603
  %187 = load i16, ptr %arrayidx3183, align 2, !dbg !1603, !tbaa !597
  %conv3184 = zext i16 %187 to i32, !dbg !1603
  %mul3185 = mul i32 %shr3181, %conv3184, !dbg !1603
  call void @llvm.dbg.value(metadata i32 %mul3185, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3187 = icmp ult i32 %rc1.sroa.500.96, %mul3185, !dbg !1604
  br i1 %cmp3187, label %do.body3190, label %do.body3206, !dbg !1603

do.body3190:                                      ; preds = %do.end3179
  call void @llvm.dbg.value(metadata i32 %mul3185, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3195 = sub nsw i32 2048, %conv3184, !dbg !1606
  %shr3196 = lshr i32 %sub3195, 5, !dbg !1606
  %188 = trunc i32 %shr3196 to i16, !dbg !1606
  %conv3201 = add i16 %187, %188, !dbg !1606
  store i16 %conv3201, ptr %arrayidx3183, align 2, !dbg !1606, !tbaa !597
  %shl3204 = shl i32 %symbol.54, 1, !dbg !1609
  call void @llvm.dbg.value(metadata i32 %shl3204, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3227, !dbg !1609

do.body3206:                                      ; preds = %do.end3179
  %sub3208 = sub i32 %rc1.sroa.0.96, %mul3185, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %sub3208, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3210 = sub i32 %rc1.sroa.500.96, %mul3185, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %sub3210, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %189 = lshr i16 %187, 5, !dbg !1610
  %sub3218 = sub i16 %187, %189, !dbg !1610
  store i16 %sub3218, ptr %arrayidx3183, align 2, !dbg !1610, !tbaa !597
  %shl3222 = shl i32 %symbol.54, 1, !dbg !1613
  %add3223 = or i32 %shl3222, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %add3223, metadata !280, metadata !DIExpression()), !dbg !456
  %add3224 = add i32 %rep0.44, 1, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %add3224, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.end3227

do.end3227:                                       ; preds = %do.body3206, %do.body3190
  %rep0.45 = phi i32 [ %rep0.44, %do.body3190 ], [ %add3224, %do.body3206 ], !dbg !1614
  %symbol.55 = phi i32 [ %shl3204, %do.body3190 ], [ %add3223, %do.body3206 ], !dbg !1615
  %rc1.sroa.0.97 = phi i32 [ %mul3185, %do.body3190 ], [ %sub3208, %do.body3206 ], !dbg !1615
  %rc1.sroa.500.97 = phi i32 [ %rc1.sroa.500.96, %do.body3190 ], [ %sub3210, %do.body3206 ], !dbg !1616
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.97, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.97, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.55, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.45, metadata !273, metadata !DIExpression()), !dbg !456
  %inc3228 = add i32 %offset.51, 1, !dbg !1617
  call void @llvm.dbg.value(metadata i32 %inc3228, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 4, metadata !281, metadata !DIExpression()), !dbg !456
  br label %do.body3231, !dbg !1618

do.body3231:                                      ; preds = %sw.bb3155, %do.end3227
  %rep0.46 = phi i32 [ %rep0.44, %sw.bb3155 ], [ %rep0.45, %do.end3227 ], !dbg !1583
  %symbol.56 = phi i32 [ %symbol.54, %sw.bb3155 ], [ %symbol.55, %do.end3227 ], !dbg !1614
  %offset.52 = phi i32 [ %offset.51, %sw.bb3155 ], [ %inc3228, %do.end3227 ], !dbg !1614
  %rc_in_pos.86 = phi i64 [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.85, %do.end3227 ], !dbg !1078
  %rc1.sroa.0.98 = phi i32 [ %rc1.sroa.0.95, %sw.bb3155 ], [ %rc1.sroa.0.97, %do.end3227 ], !dbg !1078
  %rc1.sroa.500.98 = phi i32 [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.97, %do.end3227 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.98, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.98, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.86, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.52, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 4, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.56, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.46, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3233 = icmp ult i32 %rc1.sroa.0.98, 16777216, !dbg !1619
  br i1 %cmp3233, label %if.then3235, label %do.end3252, !dbg !1623

if.then3235:                                      ; preds = %do.body3231
  %cmp3236 = icmp eq i64 %rc_in_pos.86, %in_size, !dbg !1624
  br i1 %cmp3236, label %if.then3238, label %if.end3240, !dbg !1627

if.then3238:                                      ; preds = %if.then3235
  store i32 42, ptr %sequence, align 8, !dbg !1628, !tbaa !548
  br label %out, !dbg !1628

if.end3240:                                       ; preds = %if.then3235
  %shl3242 = shl nuw i32 %rc1.sroa.0.98, 8, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %shl3242, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3244 = shl i32 %rc1.sroa.500.98, 8, !dbg !1627
  %inc3245 = add i64 %rc_in_pos.86, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %inc3245, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3246 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.86, !dbg !1627
  %190 = load i8, ptr %arrayidx3246, align 1, !dbg !1627, !tbaa !493
  %conv3247 = zext i8 %190 to i32, !dbg !1627
  %or3248 = or i32 %shl3244, %conv3247, !dbg !1627
  call void @llvm.dbg.value(metadata i32 %or3248, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3252, !dbg !1627

do.end3252:                                       ; preds = %if.end3240, %do.body3231
  %rc_in_pos.87 = phi i64 [ %inc3245, %if.end3240 ], [ %rc_in_pos.86, %do.body3231 ], !dbg !1078
  %rc1.sroa.0.99 = phi i32 [ %shl3242, %if.end3240 ], [ %rc1.sroa.0.98, %do.body3231 ], !dbg !1078
  %rc1.sroa.500.99 = phi i32 [ %or3248, %if.end3240 ], [ %rc1.sroa.500.98, %do.body3231 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.99, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.99, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.87, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3254 = lshr i32 %rc1.sroa.0.99, 11, !dbg !1630
  %idxprom3255 = zext i32 %symbol.56 to i64, !dbg !1630
  %arrayidx3256 = getelementptr inbounds i16, ptr %probs.43, i64 %idxprom3255, !dbg !1630
  %191 = load i16, ptr %arrayidx3256, align 2, !dbg !1630, !tbaa !597
  %conv3257 = zext i16 %191 to i32, !dbg !1630
  %mul3258 = mul i32 %shr3254, %conv3257, !dbg !1630
  call void @llvm.dbg.value(metadata i32 %mul3258, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3260 = icmp ult i32 %rc1.sroa.500.99, %mul3258, !dbg !1631
  br i1 %cmp3260, label %do.body3263, label %do.body3279, !dbg !1630

do.body3263:                                      ; preds = %do.end3252
  call void @llvm.dbg.value(metadata i32 %mul3258, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3268 = sub nsw i32 2048, %conv3257, !dbg !1633
  %shr3269 = lshr i32 %sub3268, 5, !dbg !1633
  %192 = trunc i32 %shr3269 to i16, !dbg !1633
  %conv3274 = add i16 %191, %192, !dbg !1633
  store i16 %conv3274, ptr %arrayidx3256, align 2, !dbg !1633, !tbaa !597
  %shl3277 = shl i32 %symbol.56, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %shl3277, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3301, !dbg !1636

do.body3279:                                      ; preds = %do.end3252
  %sub3281 = sub i32 %rc1.sroa.0.99, %mul3258, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %sub3281, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3283 = sub i32 %rc1.sroa.500.99, %mul3258, !dbg !1637
  call void @llvm.dbg.value(metadata i32 %sub3283, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %193 = lshr i16 %191, 5, !dbg !1637
  %sub3291 = sub i16 %191, %193, !dbg !1637
  store i16 %sub3291, ptr %arrayidx3256, align 2, !dbg !1637, !tbaa !597
  %shl3295 = shl i32 %symbol.56, 1, !dbg !1640
  %add3296 = or i32 %shl3295, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %add3296, metadata !280, metadata !DIExpression()), !dbg !456
  %shl3297 = shl nuw i32 1, %offset.52, !dbg !1640
  %add3298 = add i32 %shl3297, %rep0.46, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %add3298, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.end3301

do.end3301:                                       ; preds = %do.body3279, %do.body3263
  %rep0.47 = phi i32 [ %rep0.46, %do.body3263 ], [ %add3298, %do.body3279 ], !dbg !1614
  %symbol.57 = phi i32 [ %shl3277, %do.body3263 ], [ %add3296, %do.body3279 ], !dbg !1641
  %rc1.sroa.0.100 = phi i32 [ %mul3258, %do.body3263 ], [ %sub3281, %do.body3279 ], !dbg !1641
  %rc1.sroa.500.100 = phi i32 [ %rc1.sroa.500.99, %do.body3263 ], [ %sub3283, %do.body3279 ], !dbg !1642
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.100, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.100, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.57, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.47, metadata !273, metadata !DIExpression()), !dbg !456
  %inc3302 = add i32 %offset.52, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i32 %inc3302, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 3, metadata !281, metadata !DIExpression()), !dbg !456
  br label %do.body3306, !dbg !1644

do.body3306:                                      ; preds = %sw.bb3155, %do.end3301
  %rep0.48 = phi i32 [ %rep0.44, %sw.bb3155 ], [ %rep0.47, %do.end3301 ], !dbg !1583
  %symbol.58 = phi i32 [ %symbol.54, %sw.bb3155 ], [ %symbol.57, %do.end3301 ], !dbg !1614
  %offset.53 = phi i32 [ %offset.51, %sw.bb3155 ], [ %inc3302, %do.end3301 ], !dbg !1614
  %rc_in_pos.88 = phi i64 [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.87, %do.end3301 ], !dbg !1078
  %rc1.sroa.0.101 = phi i32 [ %rc1.sroa.0.95, %sw.bb3155 ], [ %rc1.sroa.0.100, %do.end3301 ], !dbg !1078
  %rc1.sroa.500.101 = phi i32 [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.100, %do.end3301 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.101, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.101, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.88, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.53, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 3, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.58, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.48, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3308 = icmp ult i32 %rc1.sroa.0.101, 16777216, !dbg !1645
  br i1 %cmp3308, label %if.then3310, label %do.end3327, !dbg !1649

if.then3310:                                      ; preds = %do.body3306
  %cmp3311 = icmp eq i64 %rc_in_pos.88, %in_size, !dbg !1650
  br i1 %cmp3311, label %if.then3313, label %if.end3315, !dbg !1653

if.then3313:                                      ; preds = %if.then3310
  store i32 42, ptr %sequence, align 8, !dbg !1654, !tbaa !548
  br label %out, !dbg !1654

if.end3315:                                       ; preds = %if.then3310
  %shl3317 = shl nuw i32 %rc1.sroa.0.101, 8, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %shl3317, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3319 = shl i32 %rc1.sroa.500.101, 8, !dbg !1653
  %inc3320 = add i64 %rc_in_pos.88, 1, !dbg !1653
  call void @llvm.dbg.value(metadata i64 %inc3320, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3321 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.88, !dbg !1653
  %194 = load i8, ptr %arrayidx3321, align 1, !dbg !1653, !tbaa !493
  %conv3322 = zext i8 %194 to i32, !dbg !1653
  %or3323 = or i32 %shl3319, %conv3322, !dbg !1653
  call void @llvm.dbg.value(metadata i32 %or3323, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3327, !dbg !1653

do.end3327:                                       ; preds = %if.end3315, %do.body3306
  %rc_in_pos.89 = phi i64 [ %inc3320, %if.end3315 ], [ %rc_in_pos.88, %do.body3306 ], !dbg !1078
  %rc1.sroa.0.102 = phi i32 [ %shl3317, %if.end3315 ], [ %rc1.sroa.0.101, %do.body3306 ], !dbg !1078
  %rc1.sroa.500.102 = phi i32 [ %or3323, %if.end3315 ], [ %rc1.sroa.500.101, %do.body3306 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.102, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.102, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.89, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3329 = lshr i32 %rc1.sroa.0.102, 11, !dbg !1656
  %idxprom3330 = zext i32 %symbol.58 to i64, !dbg !1656
  %arrayidx3331 = getelementptr inbounds i16, ptr %probs.43, i64 %idxprom3330, !dbg !1656
  %195 = load i16, ptr %arrayidx3331, align 2, !dbg !1656, !tbaa !597
  %conv3332 = zext i16 %195 to i32, !dbg !1656
  %mul3333 = mul i32 %shr3329, %conv3332, !dbg !1656
  call void @llvm.dbg.value(metadata i32 %mul3333, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3335 = icmp ult i32 %rc1.sroa.500.102, %mul3333, !dbg !1657
  br i1 %cmp3335, label %do.body3338, label %do.body3354, !dbg !1656

do.body3338:                                      ; preds = %do.end3327
  call void @llvm.dbg.value(metadata i32 %mul3333, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3343 = sub nsw i32 2048, %conv3332, !dbg !1659
  %shr3344 = lshr i32 %sub3343, 5, !dbg !1659
  %196 = trunc i32 %shr3344 to i16, !dbg !1659
  %conv3349 = add i16 %195, %196, !dbg !1659
  store i16 %conv3349, ptr %arrayidx3331, align 2, !dbg !1659, !tbaa !597
  %shl3352 = shl i32 %symbol.58, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i32 %shl3352, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3376, !dbg !1662

do.body3354:                                      ; preds = %do.end3327
  %sub3356 = sub i32 %rc1.sroa.0.102, %mul3333, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %sub3356, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3358 = sub i32 %rc1.sroa.500.102, %mul3333, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %sub3358, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %197 = lshr i16 %195, 5, !dbg !1663
  %sub3366 = sub i16 %195, %197, !dbg !1663
  store i16 %sub3366, ptr %arrayidx3331, align 2, !dbg !1663, !tbaa !597
  %shl3370 = shl i32 %symbol.58, 1, !dbg !1666
  %add3371 = or i32 %shl3370, 1, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %add3371, metadata !280, metadata !DIExpression()), !dbg !456
  %shl3372 = shl nuw i32 1, %offset.53, !dbg !1666
  %add3373 = add i32 %shl3372, %rep0.48, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %add3373, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.end3376

do.end3376:                                       ; preds = %do.body3354, %do.body3338
  %rep0.49 = phi i32 [ %rep0.48, %do.body3338 ], [ %add3373, %do.body3354 ], !dbg !1614
  %symbol.59 = phi i32 [ %shl3352, %do.body3338 ], [ %add3371, %do.body3354 ], !dbg !1667
  %rc1.sroa.0.103 = phi i32 [ %mul3333, %do.body3338 ], [ %sub3356, %do.body3354 ], !dbg !1667
  %rc1.sroa.500.103 = phi i32 [ %rc1.sroa.500.102, %do.body3338 ], [ %sub3358, %do.body3354 ], !dbg !1668
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.103, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.103, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.59, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.49, metadata !273, metadata !DIExpression()), !dbg !456
  %inc3377 = add i32 %offset.53, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %inc3377, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 2, metadata !281, metadata !DIExpression()), !dbg !456
  br label %do.body3381, !dbg !1670

do.body3381:                                      ; preds = %sw.bb3155, %do.end3376
  %rep0.50 = phi i32 [ %rep0.44, %sw.bb3155 ], [ %rep0.49, %do.end3376 ], !dbg !1583
  %symbol.60 = phi i32 [ %symbol.54, %sw.bb3155 ], [ %symbol.59, %do.end3376 ], !dbg !1614
  %offset.54 = phi i32 [ %offset.51, %sw.bb3155 ], [ %inc3377, %do.end3376 ], !dbg !1614
  %rc_in_pos.90 = phi i64 [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.89, %do.end3376 ], !dbg !1078
  %rc1.sroa.0.104 = phi i32 [ %rc1.sroa.0.95, %sw.bb3155 ], [ %rc1.sroa.0.103, %do.end3376 ], !dbg !1078
  %rc1.sroa.500.104 = phi i32 [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.103, %do.end3376 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.104, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.104, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.90, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.54, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 2, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.60, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.50, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3383 = icmp ult i32 %rc1.sroa.0.104, 16777216, !dbg !1671
  br i1 %cmp3383, label %if.then3385, label %do.end3402, !dbg !1675

if.then3385:                                      ; preds = %do.body3381
  %cmp3386 = icmp eq i64 %rc_in_pos.90, %in_size, !dbg !1676
  br i1 %cmp3386, label %if.then3388, label %if.end3390, !dbg !1679

if.then3388:                                      ; preds = %if.then3385
  store i32 42, ptr %sequence, align 8, !dbg !1680, !tbaa !548
  br label %out, !dbg !1680

if.end3390:                                       ; preds = %if.then3385
  %shl3392 = shl nuw i32 %rc1.sroa.0.104, 8, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %shl3392, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3394 = shl i32 %rc1.sroa.500.104, 8, !dbg !1679
  %inc3395 = add i64 %rc_in_pos.90, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i64 %inc3395, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3396 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.90, !dbg !1679
  %198 = load i8, ptr %arrayidx3396, align 1, !dbg !1679, !tbaa !493
  %conv3397 = zext i8 %198 to i32, !dbg !1679
  %or3398 = or i32 %shl3394, %conv3397, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %or3398, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3402, !dbg !1679

do.end3402:                                       ; preds = %if.end3390, %do.body3381
  %rc_in_pos.91 = phi i64 [ %inc3395, %if.end3390 ], [ %rc_in_pos.90, %do.body3381 ], !dbg !1078
  %rc1.sroa.0.105 = phi i32 [ %shl3392, %if.end3390 ], [ %rc1.sroa.0.104, %do.body3381 ], !dbg !1078
  %rc1.sroa.500.105 = phi i32 [ %or3398, %if.end3390 ], [ %rc1.sroa.500.104, %do.body3381 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.105, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.105, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.91, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3404 = lshr i32 %rc1.sroa.0.105, 11, !dbg !1682
  %idxprom3405 = zext i32 %symbol.60 to i64, !dbg !1682
  %arrayidx3406 = getelementptr inbounds i16, ptr %probs.43, i64 %idxprom3405, !dbg !1682
  %199 = load i16, ptr %arrayidx3406, align 2, !dbg !1682, !tbaa !597
  %conv3407 = zext i16 %199 to i32, !dbg !1682
  %mul3408 = mul i32 %shr3404, %conv3407, !dbg !1682
  call void @llvm.dbg.value(metadata i32 %mul3408, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3410 = icmp ult i32 %rc1.sroa.500.105, %mul3408, !dbg !1683
  br i1 %cmp3410, label %do.body3413, label %do.body3429, !dbg !1682

do.body3413:                                      ; preds = %do.end3402
  call void @llvm.dbg.value(metadata i32 %mul3408, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3418 = sub nsw i32 2048, %conv3407, !dbg !1685
  %shr3419 = lshr i32 %sub3418, 5, !dbg !1685
  %200 = trunc i32 %shr3419 to i16, !dbg !1685
  %conv3424 = add i16 %199, %200, !dbg !1685
  store i16 %conv3424, ptr %arrayidx3406, align 2, !dbg !1685, !tbaa !597
  %shl3427 = shl i32 %symbol.60, 1, !dbg !1688
  call void @llvm.dbg.value(metadata i32 %shl3427, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end3451, !dbg !1688

do.body3429:                                      ; preds = %do.end3402
  %sub3431 = sub i32 %rc1.sroa.0.105, %mul3408, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %sub3431, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3433 = sub i32 %rc1.sroa.500.105, %mul3408, !dbg !1689
  call void @llvm.dbg.value(metadata i32 %sub3433, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %201 = lshr i16 %199, 5, !dbg !1689
  %sub3441 = sub i16 %199, %201, !dbg !1689
  store i16 %sub3441, ptr %arrayidx3406, align 2, !dbg !1689, !tbaa !597
  %shl3445 = shl i32 %symbol.60, 1, !dbg !1692
  %add3446 = or i32 %shl3445, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %add3446, metadata !280, metadata !DIExpression()), !dbg !456
  %shl3447 = shl nuw i32 1, %offset.54, !dbg !1692
  %add3448 = add i32 %shl3447, %rep0.50, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %add3448, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.end3451

do.end3451:                                       ; preds = %do.body3429, %do.body3413
  %rep0.51 = phi i32 [ %rep0.50, %do.body3413 ], [ %add3448, %do.body3429 ], !dbg !1614
  %symbol.61 = phi i32 [ %shl3427, %do.body3413 ], [ %add3446, %do.body3429 ], !dbg !1693
  %rc1.sroa.0.106 = phi i32 [ %mul3408, %do.body3413 ], [ %sub3431, %do.body3429 ], !dbg !1693
  %rc1.sroa.500.106 = phi i32 [ %rc1.sroa.500.105, %do.body3413 ], [ %sub3433, %do.body3429 ], !dbg !1694
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.106, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.106, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.61, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.51, metadata !273, metadata !DIExpression()), !dbg !456
  %inc3452 = add i32 %offset.54, 1, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %inc3452, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !281, metadata !DIExpression()), !dbg !456
  br label %do.body3456, !dbg !1696

do.body3456:                                      ; preds = %sw.bb3155, %do.end3451
  %rep0.52 = phi i32 [ %rep0.44, %sw.bb3155 ], [ %rep0.51, %do.end3451 ], !dbg !1583
  %symbol.62 = phi i32 [ %symbol.54, %sw.bb3155 ], [ %symbol.61, %do.end3451 ], !dbg !1614
  %offset.55 = phi i32 [ %offset.51, %sw.bb3155 ], [ %inc3452, %do.end3451 ], !dbg !1614
  %rc_in_pos.92 = phi i64 [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.91, %do.end3451 ], !dbg !1078
  %rc1.sroa.0.107 = phi i32 [ %rc1.sroa.0.95, %sw.bb3155 ], [ %rc1.sroa.0.106, %do.end3451 ], !dbg !1078
  %rc1.sroa.500.107 = phi i32 [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.106, %do.end3451 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.107, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.107, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.92, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.55, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.62, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.52, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3458 = icmp ult i32 %rc1.sroa.0.107, 16777216, !dbg !1697
  br i1 %cmp3458, label %if.then3460, label %do.end3477, !dbg !1701

if.then3460:                                      ; preds = %do.body3456
  %cmp3461 = icmp eq i64 %rc_in_pos.92, %in_size, !dbg !1702
  br i1 %cmp3461, label %if.then3463, label %if.end3465, !dbg !1705

if.then3463:                                      ; preds = %if.then3460
  store i32 42, ptr %sequence, align 8, !dbg !1706, !tbaa !548
  br label %out, !dbg !1706

if.end3465:                                       ; preds = %if.then3460
  %shl3467 = shl nuw i32 %rc1.sroa.0.107, 8, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %shl3467, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3469 = shl i32 %rc1.sroa.500.107, 8, !dbg !1705
  %inc3470 = add i64 %rc_in_pos.92, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i64 %inc3470, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3471 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.92, !dbg !1705
  %202 = load i8, ptr %arrayidx3471, align 1, !dbg !1705, !tbaa !493
  %conv3472 = zext i8 %202 to i32, !dbg !1705
  %or3473 = or i32 %shl3469, %conv3472, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %or3473, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3477, !dbg !1705

do.end3477:                                       ; preds = %if.end3465, %do.body3456
  %rc_in_pos.93 = phi i64 [ %inc3470, %if.end3465 ], [ %rc_in_pos.92, %do.body3456 ], !dbg !1078
  %rc1.sroa.0.108 = phi i32 [ %shl3467, %if.end3465 ], [ %rc1.sroa.0.107, %do.body3456 ], !dbg !1078
  %rc1.sroa.500.108 = phi i32 [ %or3473, %if.end3465 ], [ %rc1.sroa.500.107, %do.body3456 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.108, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.108, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.93, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3479 = lshr i32 %rc1.sroa.0.108, 11, !dbg !1708
  %idxprom3480 = zext i32 %symbol.62 to i64, !dbg !1708
  %arrayidx3481 = getelementptr inbounds i16, ptr %probs.43, i64 %idxprom3480, !dbg !1708
  %203 = load i16, ptr %arrayidx3481, align 2, !dbg !1708, !tbaa !597
  %conv3482 = zext i16 %203 to i32, !dbg !1708
  %mul3483 = mul i32 %shr3479, %conv3482, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %mul3483, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3485 = icmp ult i32 %rc1.sroa.500.108, %mul3483, !dbg !1709
  br i1 %cmp3485, label %do.body3488, label %do.body3503, !dbg !1708

do.body3488:                                      ; preds = %do.end3477
  call void @llvm.dbg.value(metadata i32 %mul3483, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3493 = sub nsw i32 2048, %conv3482, !dbg !1711
  %shr3494 = lshr i32 %sub3493, 5, !dbg !1711
  %204 = trunc i32 %shr3494 to i16, !dbg !1711
  %conv3499 = add i16 %203, %204, !dbg !1711
  store i16 %conv3499, ptr %arrayidx3481, align 2, !dbg !1711, !tbaa !597
  br label %if.end3911, !dbg !1714

do.body3503:                                      ; preds = %do.end3477
  %sub3505 = sub i32 %rc1.sroa.0.108, %mul3483, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %sub3505, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3507 = sub i32 %rc1.sroa.500.108, %mul3483, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %sub3507, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %205 = lshr i16 %203, 5, !dbg !1715
  %sub3515 = sub i16 %203, %205, !dbg !1715
  store i16 %sub3515, ptr %arrayidx3481, align 2, !dbg !1715, !tbaa !597
  %shl3519 = shl nuw i32 1, %offset.55, !dbg !1718
  %add3520 = add i32 %shl3519, %rep0.52, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %add3520, metadata !273, metadata !DIExpression()), !dbg !456
  br label %if.end3911

if.else3524:                                      ; preds = %if.else3142
  %sub3525 = add nsw i32 %shr3143, -5, !dbg !1719
  call void @llvm.dbg.value(metadata i32 %sub3525, metadata !281, metadata !DIExpression()), !dbg !456
  br label %sw.bb3526, !dbg !1721

sw.bb3526:                                        ; preds = %if.end, %if.else3524
  %dict.sroa.36.46 = phi i64 [ %dict.sroa.36.44, %if.else3524 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.46 = phi i64 [ %dict.sroa.12.44, %if.else3524 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.45 = phi i32 [ %len.43, %if.else3524 ], [ %14, %if.end ], !dbg !456
  %rep0.53 = phi i32 [ %add3146, %if.else3524 ], [ %5, %if.end ], !dbg !456
  %rep1.45 = phi i32 [ %rep1.43, %if.else3524 ], [ %6, %if.end ], !dbg !456
  %rep2.45 = phi i32 [ %rep2.43, %if.else3524 ], [ %7, %if.end ], !dbg !456
  %rep3.45 = phi i32 [ %rep3.43, %if.else3524 ], [ %8, %if.end ], !dbg !456
  %state.45 = phi i32 [ %state.43, %if.else3524 ], [ %4, %if.end ], !dbg !456
  %probs.44 = phi ptr [ %probs.42, %if.else3524 ], [ %10, %if.end ], !dbg !456
  %symbol.63 = phi i32 [ %sub3138, %if.else3524 ], [ %11, %if.end ], !dbg !456
  %limit.49 = phi i32 [ %sub3525, %if.else3524 ], [ %12, %if.end ], !dbg !456
  %offset.56 = phi i32 [ %offset.50, %if.else3524 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.94 = phi i64 [ %rc_in_pos.83, %if.else3524 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.109 = phi i32 [ %rc1.sroa.0.94, %if.else3524 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.109 = phi i32 [ %rc1.sroa.500.94, %if.else3524 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.46, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.46, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.109, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.109, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.94, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.56, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.49, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.63, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.44, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.45, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.45, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.45, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.45, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.53, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.body3527, !dbg !1722

do.body3527:                                      ; preds = %do.end3550, %sw.bb3526
  %rep0.54 = phi i32 [ %rep0.53, %sw.bb3526 ], [ %add3565, %do.end3550 ], !dbg !1723
  %limit.50 = phi i32 [ %limit.49, %sw.bb3526 ], [ %dec3569, %do.end3550 ], !dbg !1724
  %rc_in_pos.95 = phi i64 [ %rc_in_pos.94, %sw.bb3526 ], [ %rc_in_pos.96, %do.end3550 ], !dbg !1078
  %rc1.sroa.0.110 = phi i32 [ %rc1.sroa.0.109, %sw.bb3526 ], [ %shr3552, %do.end3550 ], !dbg !1078
  %rc1.sroa.500.110 = phi i32 [ %rc1.sroa.500.109, %sw.bb3526 ], [ %add3562, %do.end3550 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.110, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.110, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.95, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.50, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.54, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3531 = icmp ult i32 %rc1.sroa.0.110, 16777216, !dbg !1725
  br i1 %cmp3531, label %if.then3533, label %do.end3550, !dbg !1730

if.then3533:                                      ; preds = %do.body3527
  %cmp3534 = icmp eq i64 %rc_in_pos.95, %in_size, !dbg !1731
  br i1 %cmp3534, label %if.then3536, label %if.end3538, !dbg !1734

if.then3536:                                      ; preds = %if.then3533
  store i32 43, ptr %sequence, align 8, !dbg !1735, !tbaa !548
  br label %out, !dbg !1735

if.end3538:                                       ; preds = %if.then3533
  %shl3540 = shl nuw i32 %rc1.sroa.0.110, 8, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %shl3540, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3542 = shl i32 %rc1.sroa.500.110, 8, !dbg !1734
  %inc3543 = add i64 %rc_in_pos.95, 1, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %inc3543, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3544 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.95, !dbg !1734
  %206 = load i8, ptr %arrayidx3544, align 1, !dbg !1734, !tbaa !493
  %conv3545 = zext i8 %206 to i32, !dbg !1734
  %or3546 = or i32 %shl3542, %conv3545, !dbg !1734
  call void @llvm.dbg.value(metadata i32 %or3546, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3550, !dbg !1734

do.end3550:                                       ; preds = %if.end3538, %do.body3527
  %rc_in_pos.96 = phi i64 [ %inc3543, %if.end3538 ], [ %rc_in_pos.95, %do.body3527 ], !dbg !1078
  %rc1.sroa.0.111 = phi i32 [ %shl3540, %if.end3538 ], [ %rc1.sroa.0.110, %do.body3527 ], !dbg !1078
  %rc1.sroa.500.111 = phi i32 [ %or3546, %if.end3538 ], [ %rc1.sroa.500.110, %do.body3527 ], !dbg !1078
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.111, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.111, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.96, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3552 = lshr i32 %rc1.sroa.0.111, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %shr3552, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3555 = sub i32 %rc1.sroa.500.111, %shr3552, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %sub3555, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %shr3557.neg = ashr i32 %sub3555, 31, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %shr3557.neg, metadata !271, metadata !DIExpression()), !dbg !456
  %and3560 = and i32 %shr3557.neg, %shr3552, !dbg !1737
  %add3562 = add i32 %and3560, %sub3555, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %add3562, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %shl3563 = shl i32 %rep0.54, 1, !dbg !1737
  %add3564 = or i32 %shl3563, 1, !dbg !1737
  %add3565 = add nsw i32 %add3564, %shr3557.neg, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %add3565, metadata !273, metadata !DIExpression()), !dbg !456
  %dec3569 = add i32 %limit.50, -1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %dec3569, metadata !281, metadata !DIExpression()), !dbg !456
  %cmp3570.not = icmp eq i32 %dec3569, 0, !dbg !1739
  br i1 %cmp3570.not, label %do.end3572, label %do.body3527, !dbg !1740, !llvm.loop !1741

do.end3572:                                       ; preds = %do.end3550
  %shl3573 = shl i32 %add3565, 4, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %shl3573, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3576, !dbg !1744

do.body3576:                                      ; preds = %if.end, %do.end3572
  %dict.sroa.36.47 = phi i64 [ %dict.sroa.36.46, %do.end3572 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.47 = phi i64 [ %dict.sroa.12.46, %do.end3572 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.46 = phi i32 [ %len.45, %do.end3572 ], [ %14, %if.end ], !dbg !456
  %rep0.55 = phi i32 [ %shl3573, %do.end3572 ], [ %5, %if.end ], !dbg !456
  %rep1.46 = phi i32 [ %rep1.45, %do.end3572 ], [ %6, %if.end ], !dbg !456
  %rep2.46 = phi i32 [ %rep2.45, %do.end3572 ], [ %7, %if.end ], !dbg !456
  %rep3.46 = phi i32 [ %rep3.45, %do.end3572 ], [ %8, %if.end ], !dbg !456
  %state.46 = phi i32 [ %state.45, %do.end3572 ], [ %4, %if.end ], !dbg !456
  %probs.45 = phi ptr [ %probs.44, %do.end3572 ], [ %10, %if.end ], !dbg !456
  %symbol.64 = phi i32 [ 1, %do.end3572 ], [ %11, %if.end ], !dbg !456
  %limit.51 = phi i32 [ 0, %do.end3572 ], [ %12, %if.end ], !dbg !456
  %offset.57 = phi i32 [ %offset.56, %do.end3572 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.97 = phi i64 [ %rc_in_pos.96, %do.end3572 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.112 = phi i32 [ %shr3552, %do.end3572 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.112 = phi i32 [ %add3562, %do.end3572 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.47, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.47, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.112, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.112, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.97, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.57, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.51, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.64, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.45, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.46, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.46, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.46, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.46, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.55, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3578 = icmp ult i32 %rc1.sroa.0.112, 16777216, !dbg !1745
  br i1 %cmp3578, label %if.then3580, label %do.end3597, !dbg !1749

if.then3580:                                      ; preds = %do.body3576
  %cmp3581 = icmp eq i64 %rc_in_pos.97, %in_size, !dbg !1750
  br i1 %cmp3581, label %if.then3583, label %if.end3585, !dbg !1753

if.then3583:                                      ; preds = %if.then3580
  store i32 44, ptr %sequence, align 8, !dbg !1754, !tbaa !548
  br label %out, !dbg !1754

if.end3585:                                       ; preds = %if.then3580
  %shl3587 = shl nuw i32 %rc1.sroa.0.112, 8, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %shl3587, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3589 = shl i32 %rc1.sroa.500.112, 8, !dbg !1753
  %inc3590 = add i64 %rc_in_pos.97, 1, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %inc3590, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3591 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.97, !dbg !1753
  %207 = load i8, ptr %arrayidx3591, align 1, !dbg !1753, !tbaa !493
  %conv3592 = zext i8 %207 to i32, !dbg !1753
  %or3593 = or i32 %shl3589, %conv3592, !dbg !1753
  call void @llvm.dbg.value(metadata i32 %or3593, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3597, !dbg !1753

do.end3597:                                       ; preds = %if.end3585, %do.body3576
  %rc_in_pos.98 = phi i64 [ %inc3590, %if.end3585 ], [ %rc_in_pos.97, %do.body3576 ], !dbg !1724
  %rc1.sroa.0.113 = phi i32 [ %shl3587, %if.end3585 ], [ %rc1.sroa.0.112, %do.body3576 ], !dbg !1724
  %rc1.sroa.500.113 = phi i32 [ %or3593, %if.end3585 ], [ %rc1.sroa.500.112, %do.body3576 ], !dbg !1724
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.113, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.113, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.98, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3599 = lshr i32 %rc1.sroa.0.113, 11, !dbg !1756
  %idxprom3600 = zext i32 %symbol.64 to i64, !dbg !1756
  %arrayidx3601 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %idxprom3600, !dbg !1756
  %208 = load i16, ptr %arrayidx3601, align 2, !dbg !1756, !tbaa !597
  %conv3602 = zext i16 %208 to i32, !dbg !1756
  %mul3603 = mul i32 %shr3599, %conv3602, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %mul3603, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3605 = icmp ult i32 %rc1.sroa.500.113, %mul3603, !dbg !1757
  br i1 %cmp3605, label %do.body3608, label %do.body3626, !dbg !1756

do.body3608:                                      ; preds = %do.end3597
  call void @llvm.dbg.value(metadata i32 %mul3603, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3614 = sub nsw i32 2048, %conv3602, !dbg !1759
  %shr3615 = lshr i32 %sub3614, 5, !dbg !1759
  %209 = trunc i32 %shr3615 to i16, !dbg !1759
  %conv3621 = add i16 %208, %209, !dbg !1759
  store i16 %conv3621, ptr %arrayidx3601, align 2, !dbg !1759, !tbaa !597
  %shl3624 = shl i32 %symbol.64, 1, !dbg !1762
  call void @llvm.dbg.value(metadata i32 %shl3624, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3652, !dbg !1762

do.body3626:                                      ; preds = %do.end3597
  %sub3628 = sub i32 %rc1.sroa.0.113, %mul3603, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %sub3628, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3630 = sub i32 %rc1.sroa.500.113, %mul3603, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %sub3630, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %210 = lshr i16 %208, 5, !dbg !1763
  %sub3640 = sub i16 %208, %210, !dbg !1763
  store i16 %sub3640, ptr %arrayidx3601, align 2, !dbg !1763, !tbaa !597
  %shl3644 = shl i32 %symbol.64, 1, !dbg !1766
  %add3645 = or i32 %shl3644, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %add3645, metadata !280, metadata !DIExpression()), !dbg !456
  %add3646 = add i32 %rep0.55, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i32 %add3646, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.body3652

do.body3652:                                      ; preds = %do.body3608, %do.body3626, %if.end
  %dict.sroa.36.48 = phi i64 [ %dict.sroa.36.47, %do.body3608 ], [ %dict.sroa.36.47, %do.body3626 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.48 = phi i64 [ %dict.sroa.12.47, %do.body3608 ], [ %dict.sroa.12.47, %do.body3626 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.47 = phi i32 [ %len.46, %do.body3608 ], [ %len.46, %do.body3626 ], [ %14, %if.end ], !dbg !456
  %rep0.56 = phi i32 [ %rep0.55, %do.body3608 ], [ %add3646, %do.body3626 ], [ %5, %if.end ], !dbg !456
  %rep1.47 = phi i32 [ %rep1.46, %do.body3608 ], [ %rep1.46, %do.body3626 ], [ %6, %if.end ], !dbg !456
  %rep2.47 = phi i32 [ %rep2.46, %do.body3608 ], [ %rep2.46, %do.body3626 ], [ %7, %if.end ], !dbg !456
  %rep3.47 = phi i32 [ %rep3.46, %do.body3608 ], [ %rep3.46, %do.body3626 ], [ %8, %if.end ], !dbg !456
  %state.47 = phi i32 [ %state.46, %do.body3608 ], [ %state.46, %do.body3626 ], [ %4, %if.end ], !dbg !456
  %probs.46 = phi ptr [ %probs.45, %do.body3608 ], [ %probs.45, %do.body3626 ], [ %10, %if.end ], !dbg !456
  %symbol.65 = phi i32 [ %shl3624, %do.body3608 ], [ %add3645, %do.body3626 ], [ %11, %if.end ], !dbg !456
  %limit.52 = phi i32 [ %limit.51, %do.body3608 ], [ %limit.51, %do.body3626 ], [ %12, %if.end ], !dbg !456
  %offset.58 = phi i32 [ %offset.57, %do.body3608 ], [ %offset.57, %do.body3626 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.99 = phi i64 [ %rc_in_pos.98, %do.body3608 ], [ %rc_in_pos.98, %do.body3626 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.114 = phi i32 [ %mul3603, %do.body3608 ], [ %sub3628, %do.body3626 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.114 = phi i32 [ %rc1.sroa.500.113, %do.body3608 ], [ %sub3630, %do.body3626 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.48, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.48, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.114, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.114, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.99, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.58, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.52, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.65, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.46, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.47, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.47, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.47, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.47, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.56, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3654 = icmp ult i32 %rc1.sroa.0.114, 16777216, !dbg !1767
  br i1 %cmp3654, label %if.then3656, label %do.end3673, !dbg !1771

if.then3656:                                      ; preds = %do.body3652
  %cmp3657 = icmp eq i64 %rc_in_pos.99, %in_size, !dbg !1772
  br i1 %cmp3657, label %if.then3659, label %if.end3661, !dbg !1775

if.then3659:                                      ; preds = %if.then3656
  store i32 45, ptr %sequence, align 8, !dbg !1776, !tbaa !548
  br label %out, !dbg !1776

if.end3661:                                       ; preds = %if.then3656
  %shl3663 = shl nuw i32 %rc1.sroa.0.114, 8, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %shl3663, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3665 = shl i32 %rc1.sroa.500.114, 8, !dbg !1775
  %inc3666 = add i64 %rc_in_pos.99, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %inc3666, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3667 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.99, !dbg !1775
  %211 = load i8, ptr %arrayidx3667, align 1, !dbg !1775, !tbaa !493
  %conv3668 = zext i8 %211 to i32, !dbg !1775
  %or3669 = or i32 %shl3665, %conv3668, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %or3669, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3673, !dbg !1775

do.end3673:                                       ; preds = %if.end3661, %do.body3652
  %rc_in_pos.100 = phi i64 [ %inc3666, %if.end3661 ], [ %rc_in_pos.99, %do.body3652 ], !dbg !1724
  %rc1.sroa.0.115 = phi i32 [ %shl3663, %if.end3661 ], [ %rc1.sroa.0.114, %do.body3652 ], !dbg !1724
  %rc1.sroa.500.115 = phi i32 [ %or3669, %if.end3661 ], [ %rc1.sroa.500.114, %do.body3652 ], !dbg !1724
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.115, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.115, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.100, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3675 = lshr i32 %rc1.sroa.0.115, 11, !dbg !1778
  %idxprom3677 = zext i32 %symbol.65 to i64, !dbg !1778
  %arrayidx3678 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %idxprom3677, !dbg !1778
  %212 = load i16, ptr %arrayidx3678, align 2, !dbg !1778, !tbaa !597
  %conv3679 = zext i16 %212 to i32, !dbg !1778
  %mul3680 = mul i32 %shr3675, %conv3679, !dbg !1778
  call void @llvm.dbg.value(metadata i32 %mul3680, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3682 = icmp ult i32 %rc1.sroa.500.115, %mul3680, !dbg !1779
  br i1 %cmp3682, label %do.body3685, label %do.body3703, !dbg !1778

do.body3685:                                      ; preds = %do.end3673
  call void @llvm.dbg.value(metadata i32 %mul3680, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3691 = sub nsw i32 2048, %conv3679, !dbg !1781
  %shr3692 = lshr i32 %sub3691, 5, !dbg !1781
  %213 = trunc i32 %shr3692 to i16, !dbg !1781
  %conv3698 = add i16 %212, %213, !dbg !1781
  store i16 %conv3698, ptr %arrayidx3678, align 2, !dbg !1781, !tbaa !597
  %shl3701 = shl i32 %symbol.65, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %shl3701, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3729, !dbg !1784

do.body3703:                                      ; preds = %do.end3673
  %sub3705 = sub i32 %rc1.sroa.0.115, %mul3680, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %sub3705, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3707 = sub i32 %rc1.sroa.500.115, %mul3680, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %sub3707, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %214 = lshr i16 %212, 5, !dbg !1785
  %sub3717 = sub i16 %212, %214, !dbg !1785
  store i16 %sub3717, ptr %arrayidx3678, align 2, !dbg !1785, !tbaa !597
  %shl3721 = shl i32 %symbol.65, 1, !dbg !1788
  %add3722 = or i32 %shl3721, 1, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %add3722, metadata !280, metadata !DIExpression()), !dbg !456
  %add3723 = add i32 %rep0.56, 2, !dbg !1788
  call void @llvm.dbg.value(metadata i32 %add3723, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.body3729

do.body3729:                                      ; preds = %do.body3685, %do.body3703, %if.end
  %dict.sroa.36.49 = phi i64 [ %dict.sroa.36.48, %do.body3685 ], [ %dict.sroa.36.48, %do.body3703 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.49 = phi i64 [ %dict.sroa.12.48, %do.body3685 ], [ %dict.sroa.12.48, %do.body3703 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.48 = phi i32 [ %len.47, %do.body3685 ], [ %len.47, %do.body3703 ], [ %14, %if.end ], !dbg !456
  %rep0.57 = phi i32 [ %rep0.56, %do.body3685 ], [ %add3723, %do.body3703 ], [ %5, %if.end ], !dbg !456
  %rep1.48 = phi i32 [ %rep1.47, %do.body3685 ], [ %rep1.47, %do.body3703 ], [ %6, %if.end ], !dbg !456
  %rep2.48 = phi i32 [ %rep2.47, %do.body3685 ], [ %rep2.47, %do.body3703 ], [ %7, %if.end ], !dbg !456
  %rep3.48 = phi i32 [ %rep3.47, %do.body3685 ], [ %rep3.47, %do.body3703 ], [ %8, %if.end ], !dbg !456
  %state.48 = phi i32 [ %state.47, %do.body3685 ], [ %state.47, %do.body3703 ], [ %4, %if.end ], !dbg !456
  %probs.47 = phi ptr [ %probs.46, %do.body3685 ], [ %probs.46, %do.body3703 ], [ %10, %if.end ], !dbg !456
  %symbol.66 = phi i32 [ %shl3701, %do.body3685 ], [ %add3722, %do.body3703 ], [ %11, %if.end ], !dbg !456
  %limit.53 = phi i32 [ %limit.52, %do.body3685 ], [ %limit.52, %do.body3703 ], [ %12, %if.end ], !dbg !456
  %offset.59 = phi i32 [ %offset.58, %do.body3685 ], [ %offset.58, %do.body3703 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.101 = phi i64 [ %rc_in_pos.100, %do.body3685 ], [ %rc_in_pos.100, %do.body3703 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.116 = phi i32 [ %mul3680, %do.body3685 ], [ %sub3705, %do.body3703 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.116 = phi i32 [ %rc1.sroa.500.115, %do.body3685 ], [ %sub3707, %do.body3703 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.49, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.49, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.116, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.116, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.101, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.59, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.53, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.66, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.47, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.48, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.48, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.48, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.48, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.57, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3731 = icmp ult i32 %rc1.sroa.0.116, 16777216, !dbg !1789
  br i1 %cmp3731, label %if.then3733, label %do.end3750, !dbg !1793

if.then3733:                                      ; preds = %do.body3729
  %cmp3734 = icmp eq i64 %rc_in_pos.101, %in_size, !dbg !1794
  br i1 %cmp3734, label %if.then3736, label %if.end3738, !dbg !1797

if.then3736:                                      ; preds = %if.then3733
  store i32 46, ptr %sequence, align 8, !dbg !1798, !tbaa !548
  br label %out, !dbg !1798

if.end3738:                                       ; preds = %if.then3733
  %shl3740 = shl nuw i32 %rc1.sroa.0.116, 8, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %shl3740, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3742 = shl i32 %rc1.sroa.500.116, 8, !dbg !1797
  %inc3743 = add i64 %rc_in_pos.101, 1, !dbg !1797
  call void @llvm.dbg.value(metadata i64 %inc3743, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3744 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.101, !dbg !1797
  %215 = load i8, ptr %arrayidx3744, align 1, !dbg !1797, !tbaa !493
  %conv3745 = zext i8 %215 to i32, !dbg !1797
  %or3746 = or i32 %shl3742, %conv3745, !dbg !1797
  call void @llvm.dbg.value(metadata i32 %or3746, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3750, !dbg !1797

do.end3750:                                       ; preds = %if.end3738, %do.body3729
  %rc_in_pos.102 = phi i64 [ %inc3743, %if.end3738 ], [ %rc_in_pos.101, %do.body3729 ], !dbg !1724
  %rc1.sroa.0.117 = phi i32 [ %shl3740, %if.end3738 ], [ %rc1.sroa.0.116, %do.body3729 ], !dbg !1724
  %rc1.sroa.500.117 = phi i32 [ %or3746, %if.end3738 ], [ %rc1.sroa.500.116, %do.body3729 ], !dbg !1724
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.117, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.117, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.102, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3752 = lshr i32 %rc1.sroa.0.117, 11, !dbg !1800
  %idxprom3754 = zext i32 %symbol.66 to i64, !dbg !1800
  %arrayidx3755 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %idxprom3754, !dbg !1800
  %216 = load i16, ptr %arrayidx3755, align 2, !dbg !1800, !tbaa !597
  %conv3756 = zext i16 %216 to i32, !dbg !1800
  %mul3757 = mul i32 %shr3752, %conv3756, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %mul3757, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3759 = icmp ult i32 %rc1.sroa.500.117, %mul3757, !dbg !1801
  br i1 %cmp3759, label %do.body3762, label %do.body3780, !dbg !1800

do.body3762:                                      ; preds = %do.end3750
  call void @llvm.dbg.value(metadata i32 %mul3757, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3768 = sub nsw i32 2048, %conv3756, !dbg !1803
  %shr3769 = lshr i32 %sub3768, 5, !dbg !1803
  %217 = trunc i32 %shr3769 to i16, !dbg !1803
  %conv3775 = add i16 %216, %217, !dbg !1803
  store i16 %conv3775, ptr %arrayidx3755, align 2, !dbg !1803, !tbaa !597
  %shl3778 = shl i32 %symbol.66, 1, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %shl3778, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body3806, !dbg !1806

do.body3780:                                      ; preds = %do.end3750
  %sub3782 = sub i32 %rc1.sroa.0.117, %mul3757, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %sub3782, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3784 = sub i32 %rc1.sroa.500.117, %mul3757, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %sub3784, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %218 = lshr i16 %216, 5, !dbg !1807
  %sub3794 = sub i16 %216, %218, !dbg !1807
  store i16 %sub3794, ptr %arrayidx3755, align 2, !dbg !1807, !tbaa !597
  %shl3798 = shl i32 %symbol.66, 1, !dbg !1810
  %add3799 = or i32 %shl3798, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %add3799, metadata !280, metadata !DIExpression()), !dbg !456
  %add3800 = add i32 %rep0.57, 4, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %add3800, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.body3806

do.body3806:                                      ; preds = %do.body3762, %do.body3780, %if.end
  %dict.sroa.36.50 = phi i64 [ %dict.sroa.36.49, %do.body3762 ], [ %dict.sroa.36.49, %do.body3780 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.50 = phi i64 [ %dict.sroa.12.49, %do.body3762 ], [ %dict.sroa.12.49, %do.body3780 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.49 = phi i32 [ %len.48, %do.body3762 ], [ %len.48, %do.body3780 ], [ %14, %if.end ], !dbg !456
  %rep0.58 = phi i32 [ %rep0.57, %do.body3762 ], [ %add3800, %do.body3780 ], [ %5, %if.end ], !dbg !456
  %rep1.49 = phi i32 [ %rep1.48, %do.body3762 ], [ %rep1.48, %do.body3780 ], [ %6, %if.end ], !dbg !456
  %rep2.49 = phi i32 [ %rep2.48, %do.body3762 ], [ %rep2.48, %do.body3780 ], [ %7, %if.end ], !dbg !456
  %rep3.49 = phi i32 [ %rep3.48, %do.body3762 ], [ %rep3.48, %do.body3780 ], [ %8, %if.end ], !dbg !456
  %state.49 = phi i32 [ %state.48, %do.body3762 ], [ %state.48, %do.body3780 ], [ %4, %if.end ], !dbg !456
  %probs.48 = phi ptr [ %probs.47, %do.body3762 ], [ %probs.47, %do.body3780 ], [ %10, %if.end ], !dbg !456
  %symbol.67 = phi i32 [ %shl3778, %do.body3762 ], [ %add3799, %do.body3780 ], [ %11, %if.end ], !dbg !456
  %limit.54 = phi i32 [ %limit.53, %do.body3762 ], [ %limit.53, %do.body3780 ], [ %12, %if.end ], !dbg !456
  %offset.60 = phi i32 [ %offset.59, %do.body3762 ], [ %offset.59, %do.body3780 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.103 = phi i64 [ %rc_in_pos.102, %do.body3762 ], [ %rc_in_pos.102, %do.body3780 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.118 = phi i32 [ %mul3757, %do.body3762 ], [ %sub3782, %do.body3780 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.118 = phi i32 [ %rc1.sroa.500.117, %do.body3762 ], [ %sub3784, %do.body3780 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.50, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.50, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.118, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.118, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.103, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.60, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.54, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.67, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.48, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.49, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.49, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.49, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.49, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.58, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3808 = icmp ult i32 %rc1.sroa.0.118, 16777216, !dbg !1811
  br i1 %cmp3808, label %if.then3810, label %do.end3827, !dbg !1815

if.then3810:                                      ; preds = %do.body3806
  %cmp3811 = icmp eq i64 %rc_in_pos.103, %in_size, !dbg !1816
  br i1 %cmp3811, label %if.then3813, label %if.end3815, !dbg !1819

if.then3813:                                      ; preds = %if.then3810
  store i32 47, ptr %sequence, align 8, !dbg !1820, !tbaa !548
  br label %out, !dbg !1820

if.end3815:                                       ; preds = %if.then3810
  %shl3817 = shl nuw i32 %rc1.sroa.0.118, 8, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %shl3817, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3819 = shl i32 %rc1.sroa.500.118, 8, !dbg !1819
  %inc3820 = add i64 %rc_in_pos.103, 1, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %inc3820, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3821 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.103, !dbg !1819
  %219 = load i8, ptr %arrayidx3821, align 1, !dbg !1819, !tbaa !493
  %conv3822 = zext i8 %219 to i32, !dbg !1819
  %or3823 = or i32 %shl3819, %conv3822, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %or3823, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3827, !dbg !1819

do.end3827:                                       ; preds = %if.end3815, %do.body3806
  %rc_in_pos.104 = phi i64 [ %inc3820, %if.end3815 ], [ %rc_in_pos.103, %do.body3806 ], !dbg !1724
  %rc1.sroa.0.119 = phi i32 [ %shl3817, %if.end3815 ], [ %rc1.sroa.0.118, %do.body3806 ], !dbg !1724
  %rc1.sroa.500.119 = phi i32 [ %or3823, %if.end3815 ], [ %rc1.sroa.500.118, %do.body3806 ], !dbg !1724
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.119, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.119, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.104, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3829 = lshr i32 %rc1.sroa.0.119, 11, !dbg !1822
  %idxprom3831 = zext i32 %symbol.67 to i64, !dbg !1822
  %arrayidx3832 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %idxprom3831, !dbg !1822
  %220 = load i16, ptr %arrayidx3832, align 2, !dbg !1822, !tbaa !597
  %conv3833 = zext i16 %220 to i32, !dbg !1822
  %mul3834 = mul i32 %shr3829, %conv3833, !dbg !1822
  call void @llvm.dbg.value(metadata i32 %mul3834, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3836 = icmp ult i32 %rc1.sroa.500.119, %mul3834, !dbg !1823
  br i1 %cmp3836, label %do.body3839, label %do.body3856, !dbg !1822

do.body3839:                                      ; preds = %do.end3827
  call void @llvm.dbg.value(metadata i32 %mul3834, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3845 = sub nsw i32 2048, %conv3833, !dbg !1825
  %shr3846 = lshr i32 %sub3845, 5, !dbg !1825
  %221 = trunc i32 %shr3846 to i16, !dbg !1825
  %conv3852 = add i16 %220, %221, !dbg !1825
  store i16 %conv3852, ptr %arrayidx3832, align 2, !dbg !1825, !tbaa !597
  br label %do.end3877, !dbg !1828

do.body3856:                                      ; preds = %do.end3827
  %sub3858 = sub i32 %rc1.sroa.0.119, %mul3834, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %sub3858, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3860 = sub i32 %rc1.sroa.500.119, %mul3834, !dbg !1829
  call void @llvm.dbg.value(metadata i32 %sub3860, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %222 = lshr i16 %220, 5, !dbg !1829
  %sub3870 = sub i16 %220, %222, !dbg !1829
  store i16 %sub3870, ptr %arrayidx3832, align 2, !dbg !1829, !tbaa !597
  %add3874 = add i32 %rep0.58, 8, !dbg !1832
  call void @llvm.dbg.value(metadata i32 %add3874, metadata !273, metadata !DIExpression()), !dbg !456
  br label %do.end3877

do.end3877:                                       ; preds = %do.body3856, %do.body3839
  %rep0.59 = phi i32 [ %rep0.58, %do.body3839 ], [ %add3874, %do.body3856 ], !dbg !1724
  %rc1.sroa.0.120 = phi i32 [ %mul3834, %do.body3839 ], [ %sub3858, %do.body3856 ], !dbg !1833
  %rc1.sroa.500.120 = phi i32 [ %rc1.sroa.500.119, %do.body3839 ], [ %sub3860, %do.body3856 ], !dbg !1834
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.120, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.120, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.59, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3878 = icmp eq i32 %rep0.59, -1, !dbg !1835
  br i1 %cmp3878, label %if.then3880, label %if.end3911, !dbg !1837

if.then3880:                                      ; preds = %do.end3877
  %223 = load i64, ptr %uncompressed_size, align 8, !dbg !1838, !tbaa !543
  %cmp3882.not = icmp eq i64 %223, -1, !dbg !1841
  br i1 %cmp3882.not, label %do.body3887, label %out, !dbg !1842

do.body3887:                                      ; preds = %if.end, %if.then3880
  %dict.sroa.36.51 = phi i64 [ %dict.sroa.36.50, %if.then3880 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.51 = phi i64 [ %dict.sroa.12.50, %if.then3880 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.50 = phi i32 [ %len.49, %if.then3880 ], [ %14, %if.end ], !dbg !456
  %rep0.60 = phi i32 [ -1, %if.then3880 ], [ %5, %if.end ], !dbg !456
  %rep1.50 = phi i32 [ %rep1.49, %if.then3880 ], [ %6, %if.end ], !dbg !456
  %rep2.50 = phi i32 [ %rep2.49, %if.then3880 ], [ %7, %if.end ], !dbg !456
  %rep3.50 = phi i32 [ %rep3.49, %if.then3880 ], [ %8, %if.end ], !dbg !456
  %state.50 = phi i32 [ %state.49, %if.then3880 ], [ %4, %if.end ], !dbg !456
  %probs.49 = phi ptr [ %probs.48, %if.then3880 ], [ %10, %if.end ], !dbg !456
  %symbol.68 = phi i32 [ %symbol.67, %if.then3880 ], [ %11, %if.end ], !dbg !456
  %limit.55 = phi i32 [ %limit.54, %if.then3880 ], [ %12, %if.end ], !dbg !456
  %offset.61 = phi i32 [ %offset.60, %if.then3880 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.105 = phi i64 [ %rc_in_pos.104, %if.then3880 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.121 = phi i32 [ %rc1.sroa.0.120, %if.then3880 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.121 = phi i32 [ %rc1.sroa.500.120, %if.then3880 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.51, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.51, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.121, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.121, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.105, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.61, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.55, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.68, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.49, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.50, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.50, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.50, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.50, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.60, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3889 = icmp ult i32 %rc1.sroa.0.121, 16777216, !dbg !1843
  br i1 %cmp3889, label %if.then3891, label %out, !dbg !1846

if.then3891:                                      ; preds = %do.body3887
  %cmp3892 = icmp eq i64 %rc_in_pos.105, %in_size, !dbg !1847
  br i1 %cmp3892, label %if.then3894, label %if.end3896, !dbg !1850

if.then3894:                                      ; preds = %if.then3891
  store i32 48, ptr %sequence, align 8, !dbg !1851, !tbaa !548
  br label %out, !dbg !1851

if.end3896:                                       ; preds = %if.then3891
  %shl3898 = shl nuw i32 %rc1.sroa.0.121, 8, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %shl3898, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3900 = shl i32 %rc1.sroa.500.121, 8, !dbg !1850
  %inc3901 = add i64 %rc_in_pos.105, 1, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %inc3901, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3902 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.105, !dbg !1850
  %224 = load i8, ptr %arrayidx3902, align 1, !dbg !1850, !tbaa !493
  %conv3903 = zext i8 %224 to i32, !dbg !1850
  %or3904 = or i32 %shl3900, %conv3903, !dbg !1850
  call void @llvm.dbg.value(metadata i32 %or3904, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %out, !dbg !1850

if.end3911:                                       ; preds = %do.end3137, %do.body3488, %do.body3503, %sw.bb3155, %do.end3877
  %dict.sroa.36.52 = phi i64 [ %dict.sroa.36.44, %do.end3137 ], [ %dict.sroa.36.45, %sw.bb3155 ], [ %dict.sroa.36.45, %do.body3488 ], [ %dict.sroa.36.45, %do.body3503 ], [ %dict.sroa.36.50, %do.end3877 ], !dbg !550
  %dict.sroa.12.52 = phi i64 [ %dict.sroa.12.44, %do.end3137 ], [ %dict.sroa.12.45, %sw.bb3155 ], [ %dict.sroa.12.45, %do.body3488 ], [ %dict.sroa.12.45, %do.body3503 ], [ %dict.sroa.12.50, %do.end3877 ], !dbg !569
  %len.51 = phi i32 [ %len.43, %do.end3137 ], [ %len.44, %sw.bb3155 ], [ %len.44, %do.body3488 ], [ %len.44, %do.body3503 ], [ %len.49, %do.end3877 ], !dbg !1155
  %rep0.61 = phi i32 [ %sub3138, %do.end3137 ], [ %rep0.44, %sw.bb3155 ], [ %rep0.52, %do.body3488 ], [ %add3520, %do.body3503 ], [ %rep0.59, %do.end3877 ], !dbg !1853
  %rep1.51 = phi i32 [ %rep1.43, %do.end3137 ], [ %rep1.44, %sw.bb3155 ], [ %rep1.44, %do.body3488 ], [ %rep1.44, %do.body3503 ], [ %rep1.49, %do.end3877 ], !dbg !1431
  %rep2.51 = phi i32 [ %rep2.43, %do.end3137 ], [ %rep2.44, %sw.bb3155 ], [ %rep2.44, %do.body3488 ], [ %rep2.44, %do.body3503 ], [ %rep2.49, %do.end3877 ], !dbg !1432
  %rep3.51 = phi i32 [ %rep3.43, %do.end3137 ], [ %rep3.44, %sw.bb3155 ], [ %rep3.44, %do.body3488 ], [ %rep3.44, %do.body3503 ], [ %rep3.49, %do.end3877 ], !dbg !1433
  %state.51 = phi i32 [ %state.43, %do.end3137 ], [ %state.44, %sw.bb3155 ], [ %state.44, %do.body3488 ], [ %state.44, %do.body3503 ], [ %state.49, %do.end3877 ], !dbg !1065
  %probs.50 = phi ptr [ %probs.42, %do.end3137 ], [ %probs.43, %sw.bb3155 ], [ %probs.43, %do.body3488 ], [ %probs.43, %do.body3503 ], [ %probs.48, %do.end3877 ], !dbg !1078
  %symbol.69 = phi i32 [ %sub3138, %do.end3137 ], [ %symbol.54, %sw.bb3155 ], [ %symbol.62, %do.body3488 ], [ %symbol.62, %do.body3503 ], [ %symbol.67, %do.end3877 ], !dbg !1078
  %limit.56 = phi i32 [ %limit.43, %do.end3137 ], [ %limit.44, %sw.bb3155 ], [ 1, %do.body3488 ], [ 1, %do.body3503 ], [ %limit.54, %do.end3877 ], !dbg !456
  %offset.62 = phi i32 [ %offset.50, %do.end3137 ], [ %offset.51, %sw.bb3155 ], [ %offset.55, %do.body3488 ], [ %offset.55, %do.body3503 ], [ %offset.60, %do.end3877 ], !dbg !456
  %rc_in_pos.107 = phi i64 [ %rc_in_pos.83, %do.end3137 ], [ %rc_in_pos.84, %sw.bb3155 ], [ %rc_in_pos.93, %do.body3488 ], [ %rc_in_pos.93, %do.body3503 ], [ %rc_in_pos.104, %do.end3877 ], !dbg !1078
  %rc1.sroa.0.123 = phi i32 [ %rc1.sroa.0.94, %do.end3137 ], [ %rc1.sroa.0.95, %sw.bb3155 ], [ %mul3483, %do.body3488 ], [ %sub3505, %do.body3503 ], [ %rc1.sroa.0.120, %do.end3877 ], !dbg !1078
  %rc1.sroa.500.123 = phi i32 [ %rc1.sroa.500.94, %do.end3137 ], [ %rc1.sroa.500.95, %sw.bb3155 ], [ %rc1.sroa.500.108, %do.body3488 ], [ %sub3507, %do.body3503 ], [ %rc1.sroa.500.120, %do.end3877 ], !dbg !1078
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.52, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.52, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.123, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.123, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.107, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.62, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.56, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.69, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.50, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.51, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.51, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.51, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.51, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.61, metadata !273, metadata !DIExpression()), !dbg !456
  %conv3912 = zext i32 %rep0.61 to i64, !dbg !1854
  call void @llvm.dbg.value(metadata ptr undef, metadata !1856, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i64 %conv3912, metadata !1861, metadata !DIExpression()), !dbg !1862
  %cmp.i7854 = icmp ugt i64 %dict.sroa.36.52, %conv3912, !dbg !1864
  br i1 %cmp.i7854, label %sw.bb5573, label %out, !dbg !1865

do.body3917:                                      ; preds = %do.end1346
  %sub3919 = sub i32 %rc1.sroa.0.45, %mul1352, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %sub3919, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3921 = sub i32 %rc1.sroa.500.45, %mul1352, !dbg !1866
  call void @llvm.dbg.value(metadata i32 %sub3921, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %225 = lshr i16 %96, 5, !dbg !1866
  %sub3931 = sub i16 %96, %225, !dbg !1866
  store i16 %sub3931, ptr %arrayidx1350, align 2, !dbg !1866, !tbaa !597
  call void @llvm.dbg.value(metadata ptr undef, metadata !1856, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i64 0, metadata !1861, metadata !DIExpression()), !dbg !1868
  %cmp.i7855.not = icmp eq i64 %dict.sroa.36.21, 0, !dbg !1871
  br i1 %cmp.i7855.not, label %out, label %do.body3939, !dbg !1872

do.body3939:                                      ; preds = %if.end, %do.body3917
  %dict.sroa.36.53 = phi i64 [ %dict.sroa.36.21, %do.body3917 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.53 = phi i64 [ %dict.sroa.12.21, %do.body3917 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.52 = phi i32 [ %len.20, %do.body3917 ], [ %14, %if.end ], !dbg !456
  %rep0.62 = phi i32 [ %rep0.20, %do.body3917 ], [ %5, %if.end ], !dbg !573
  %rep1.52 = phi i32 [ %rep1.20, %do.body3917 ], [ %6, %if.end ], !dbg !574
  %rep2.52 = phi i32 [ %rep2.20, %do.body3917 ], [ %7, %if.end ], !dbg !575
  %rep3.52 = phi i32 [ %rep3.20, %do.body3917 ], [ %8, %if.end ], !dbg !576
  %state.52 = phi i32 [ %state.20, %do.body3917 ], [ %4, %if.end ], !dbg !581
  %probs.51 = phi ptr [ %probs.20, %do.body3917 ], [ %10, %if.end ], !dbg !582
  %symbol.70 = phi i32 [ %symbol.27, %do.body3917 ], [ %11, %if.end ], !dbg !583
  %limit.57 = phi i32 [ %limit.20, %do.body3917 ], [ %12, %if.end ], !dbg !577
  %offset.63 = phi i32 [ %offset.27, %do.body3917 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.108 = phi i64 [ %rc_in_pos.38, %do.body3917 ], [ %3, %if.end ], !dbg !456
  %pos_state.10 = phi i32 [ %pos_state.1, %do.body3917 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.124 = phi i32 [ %sub3919, %do.body3917 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.124 = phi i32 [ %sub3921, %do.body3917 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.53, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.53, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.124, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.124, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.10, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.108, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.63, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.57, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.70, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.51, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.52, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.52, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.52, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.52, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.62, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3941 = icmp ult i32 %rc1.sroa.0.124, 16777216, !dbg !1873
  br i1 %cmp3941, label %if.then3943, label %do.end3960, !dbg !1876

if.then3943:                                      ; preds = %do.body3939
  %cmp3944 = icmp eq i64 %rc_in_pos.108, %in_size, !dbg !1877
  br i1 %cmp3944, label %if.then3946, label %if.end3948, !dbg !1880

if.then3946:                                      ; preds = %if.then3943
  store i32 49, ptr %sequence, align 8, !dbg !1881, !tbaa !548
  br label %out, !dbg !1881

if.end3948:                                       ; preds = %if.then3943
  %shl3950 = shl nuw i32 %rc1.sroa.0.124, 8, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %shl3950, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl3952 = shl i32 %rc1.sroa.500.124, 8, !dbg !1880
  %inc3953 = add i64 %rc_in_pos.108, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %inc3953, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx3954 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.108, !dbg !1880
  %226 = load i8, ptr %arrayidx3954, align 1, !dbg !1880, !tbaa !493
  %conv3955 = zext i8 %226 to i32, !dbg !1880
  %or3956 = or i32 %shl3952, %conv3955, !dbg !1880
  call void @llvm.dbg.value(metadata i32 %or3956, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end3960, !dbg !1880

do.end3960:                                       ; preds = %if.end3948, %do.body3939
  %rc_in_pos.109 = phi i64 [ %inc3953, %if.end3948 ], [ %rc_in_pos.108, %do.body3939 ], !dbg !632
  %rc1.sroa.0.125 = phi i32 [ %shl3950, %if.end3948 ], [ %rc1.sroa.0.124, %do.body3939 ], !dbg !1883
  %rc1.sroa.500.125 = phi i32 [ %or3956, %if.end3948 ], [ %rc1.sroa.500.124, %do.body3939 ], !dbg !1883
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.125, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.125, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.109, metadata !270, metadata !DIExpression()), !dbg !456
  %shr3962 = lshr i32 %rc1.sroa.0.125, 11, !dbg !1884
  %idxprom3963 = zext i32 %state.52 to i64, !dbg !1884
  %arrayidx3964 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %idxprom3963, !dbg !1884
  %227 = load i16, ptr %arrayidx3964, align 2, !dbg !1884, !tbaa !597
  %conv3965 = zext i16 %227 to i32, !dbg !1884
  %mul3966 = mul i32 %shr3962, %conv3965, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %mul3966, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp3968 = icmp ult i32 %rc1.sroa.500.125, %mul3966, !dbg !1885
  br i1 %cmp3968, label %do.body3971, label %do.body4075, !dbg !1884

do.body3971:                                      ; preds = %do.end3960
  call void @llvm.dbg.value(metadata i32 %mul3966, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub3977 = sub nsw i32 2048, %conv3965, !dbg !1886
  %shr3978 = lshr i32 %sub3977, 5, !dbg !1886
  %228 = trunc i32 %shr3978 to i16, !dbg !1886
  %conv3984 = add i16 %227, %228, !dbg !1886
  store i16 %conv3984, ptr %arrayidx3964, align 2, !dbg !1886, !tbaa !597
  br label %do.body3988, !dbg !1886

do.body3988:                                      ; preds = %do.body3971, %if.end
  %dict.sroa.36.54 = phi i64 [ %dict.sroa.36.53, %do.body3971 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.54 = phi i64 [ %dict.sroa.12.53, %do.body3971 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.53 = phi i32 [ %len.52, %do.body3971 ], [ %14, %if.end ], !dbg !456
  %rep0.63 = phi i32 [ %rep0.62, %do.body3971 ], [ %5, %if.end ], !dbg !573
  %rep1.53 = phi i32 [ %rep1.52, %do.body3971 ], [ %6, %if.end ], !dbg !574
  %rep2.53 = phi i32 [ %rep2.52, %do.body3971 ], [ %7, %if.end ], !dbg !575
  %rep3.53 = phi i32 [ %rep3.52, %do.body3971 ], [ %8, %if.end ], !dbg !576
  %state.53 = phi i32 [ %state.52, %do.body3971 ], [ %4, %if.end ], !dbg !581
  %probs.52 = phi ptr [ %probs.51, %do.body3971 ], [ %10, %if.end ], !dbg !582
  %symbol.71 = phi i32 [ %symbol.70, %do.body3971 ], [ %11, %if.end ], !dbg !583
  %limit.58 = phi i32 [ %limit.57, %do.body3971 ], [ %12, %if.end ], !dbg !577
  %offset.64 = phi i32 [ %offset.63, %do.body3971 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.110 = phi i64 [ %rc_in_pos.109, %do.body3971 ], [ %3, %if.end ], !dbg !456
  %pos_state.11 = phi i32 [ %pos_state.10, %do.body3971 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.126 = phi i32 [ %mul3966, %do.body3971 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.126 = phi i32 [ %rc1.sroa.500.125, %do.body3971 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.54, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.54, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.126, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.126, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.11, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.110, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.64, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.58, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.71, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.52, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.53, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.53, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.53, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.53, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.63, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp3990 = icmp ult i32 %rc1.sroa.0.126, 16777216, !dbg !1889
  br i1 %cmp3990, label %if.then3992, label %do.end4009, !dbg !1892

if.then3992:                                      ; preds = %do.body3988
  %cmp3993 = icmp eq i64 %rc_in_pos.110, %in_size, !dbg !1893
  br i1 %cmp3993, label %if.then3995, label %if.end3997, !dbg !1896

if.then3995:                                      ; preds = %if.then3992
  store i32 51, ptr %sequence, align 8, !dbg !1897, !tbaa !548
  br label %out, !dbg !1897

if.end3997:                                       ; preds = %if.then3992
  %shl3999 = shl nuw i32 %rc1.sroa.0.126, 8, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %shl3999, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4001 = shl i32 %rc1.sroa.500.126, 8, !dbg !1896
  %inc4002 = add i64 %rc_in_pos.110, 1, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %inc4002, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4003 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.110, !dbg !1896
  %229 = load i8, ptr %arrayidx4003, align 1, !dbg !1896, !tbaa !493
  %conv4004 = zext i8 %229 to i32, !dbg !1896
  %or4005 = or i32 %shl4001, %conv4004, !dbg !1896
  call void @llvm.dbg.value(metadata i32 %or4005, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4009, !dbg !1896

do.end4009:                                       ; preds = %if.end3997, %do.body3988
  %rc_in_pos.111 = phi i64 [ %inc4002, %if.end3997 ], [ %rc_in_pos.110, %do.body3988 ], !dbg !1883
  %rc1.sroa.0.127 = phi i32 [ %shl3999, %if.end3997 ], [ %rc1.sroa.0.126, %do.body3988 ], !dbg !1899
  %rc1.sroa.500.127 = phi i32 [ %or4005, %if.end3997 ], [ %rc1.sroa.500.126, %do.body3988 ], !dbg !1883
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.127, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.127, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.111, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4011 = lshr i32 %rc1.sroa.0.127, 11, !dbg !1900
  %idxprom4012 = zext i32 %state.53 to i64, !dbg !1900
  %idxprom4014 = zext i32 %pos_state.11 to i64, !dbg !1900
  %arrayidx4015 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, i64 %idxprom4012, i64 %idxprom4014, !dbg !1900
  %230 = load i16, ptr %arrayidx4015, align 2, !dbg !1900, !tbaa !597
  %conv4016 = zext i16 %230 to i32, !dbg !1900
  %mul4017 = mul i32 %shr4011, %conv4016, !dbg !1900
  call void @llvm.dbg.value(metadata i32 %mul4017, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4019 = icmp ult i32 %rc1.sroa.500.127, %mul4017, !dbg !1901
  br i1 %cmp4019, label %do.body4022, label %do.body4052, !dbg !1900

do.body4022:                                      ; preds = %do.end4009
  call void @llvm.dbg.value(metadata i32 %mul4017, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4030 = sub nsw i32 2048, %conv4016, !dbg !1903
  %shr4031 = lshr i32 %sub4030, 5, !dbg !1903
  %231 = trunc i32 %shr4031 to i16, !dbg !1903
  %conv4039 = add i16 %230, %231, !dbg !1903
  store i16 %conv4039, ptr %arrayidx4015, align 2, !dbg !1903, !tbaa !597
  %cmp4042 = icmp ult i32 %state.53, 7, !dbg !1906
  %cond4044 = select i1 %cmp4042, i32 9, i32 11, !dbg !1906
  call void @llvm.dbg.value(metadata i32 %cond4044, metadata !272, metadata !DIExpression()), !dbg !456
  br label %sw.bb4045, !dbg !1906

sw.bb4045:                                        ; preds = %if.end, %do.body4022
  %dict.sroa.36.55 = phi i64 [ %dict.sroa.36.54, %do.body4022 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.55 = phi i64 [ %dict.sroa.12.54, %do.body4022 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.54 = phi i32 [ %len.53, %do.body4022 ], [ %14, %if.end ], !dbg !456
  %rep0.64 = phi i32 [ %rep0.63, %do.body4022 ], [ %5, %if.end ], !dbg !573
  %rep1.54 = phi i32 [ %rep1.53, %do.body4022 ], [ %6, %if.end ], !dbg !574
  %rep2.54 = phi i32 [ %rep2.53, %do.body4022 ], [ %7, %if.end ], !dbg !575
  %rep3.54 = phi i32 [ %rep3.53, %do.body4022 ], [ %8, %if.end ], !dbg !576
  %state.54 = phi i32 [ %cond4044, %do.body4022 ], [ %4, %if.end ], !dbg !456
  %probs.53 = phi ptr [ %probs.52, %do.body4022 ], [ %10, %if.end ], !dbg !582
  %symbol.72 = phi i32 [ %symbol.71, %do.body4022 ], [ %11, %if.end ], !dbg !583
  %limit.59 = phi i32 [ %limit.58, %do.body4022 ], [ %12, %if.end ], !dbg !577
  %offset.65 = phi i32 [ %offset.64, %do.body4022 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.112 = phi i64 [ %rc_in_pos.111, %do.body4022 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.128 = phi i32 [ %mul4017, %do.body4022 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.128 = phi i32 [ %rc1.sroa.500.127, %do.body4022 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.55, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.55, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.128, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.128, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.112, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.65, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.59, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.72, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.53, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.54, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.54, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.54, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.54, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.64, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i32 %rep0.64, metadata !610, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr undef, metadata !1028, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 undef, metadata !1033, metadata !DIExpression()), !dbg !1910
  %cmp.i7868 = icmp eq i64 %dict.sroa.12.55, %spec.select7962, !dbg !1912
  br i1 %cmp.i7868, label %if.then4048, label %if.end.i7873, !dbg !1913

if.end.i7873:                                     ; preds = %sw.bb4045
  %conv.i7857 = zext i32 %rep0.64 to i64, !dbg !1914
  %232 = xor i64 %conv.i7857, -1, !dbg !1915
  %sub1.i7862 = add i64 %dict.sroa.12.55, %232, !dbg !1915
  %cmp.i7858 = icmp ugt i64 %dict.sroa.12.55, %conv.i7857, !dbg !1916
  %spec.select7958 = select i1 %cmp.i7858, i64 0, i64 %dict.sroa.51.0.copyload, !dbg !1917
  %add.i7863 = add i64 %sub1.i7862, %spec.select7958, !dbg !1918
  %arrayidx.i7864 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %add.i7863, !dbg !1919
  %233 = load i8, ptr %arrayidx.i7864, align 1, !dbg !1919, !tbaa !493
  call void @llvm.dbg.value(metadata i8 %233, metadata !1033, metadata !DIExpression()), !dbg !1910
  %inc.i7869 = add i64 %dict.sroa.12.55, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %inc.i7869, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %arrayidx.i7870 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.55, !dbg !1921
  store i8 %233, ptr %arrayidx.i7870, align 1, !dbg !1922, !tbaa !493
  %234 = tail call i64 @llvm.umax.i64(i64 %inc.i7869, i64 %dict.sroa.36.55), !dbg !1923
  br label %while.body, !dbg !1923

if.then4048:                                      ; preds = %sw.bb4045
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.55, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.55, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  store i32 50, ptr %sequence, align 8, !dbg !1924, !tbaa !548
  br label %out, !dbg !1926

do.body4052:                                      ; preds = %do.end4009
  %sub4054 = sub i32 %rc1.sroa.0.127, %mul4017, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %sub4054, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4056 = sub i32 %rc1.sroa.500.127, %mul4017, !dbg !1927
  call void @llvm.dbg.value(metadata i32 %sub4056, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %235 = lshr i16 %230, 5, !dbg !1927
  %sub4070 = sub i16 %230, %235, !dbg !1927
  store i16 %sub4070, ptr %arrayidx4015, align 2, !dbg !1927, !tbaa !597
  br label %if.end4233, !dbg !1929

do.body4075:                                      ; preds = %do.end3960
  %sub4077 = sub i32 %rc1.sroa.0.125, %mul3966, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %sub4077, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4079 = sub i32 %rc1.sroa.500.125, %mul3966, !dbg !1930
  call void @llvm.dbg.value(metadata i32 %sub4079, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %236 = lshr i16 %227, 5, !dbg !1930
  %sub4089 = sub i16 %227, %236, !dbg !1930
  store i16 %sub4089, ptr %arrayidx3964, align 2, !dbg !1930, !tbaa !597
  br label %do.body4094, !dbg !1930

do.body4094:                                      ; preds = %do.body4075, %if.end
  %dict.sroa.36.57 = phi i64 [ %dict.sroa.36.53, %do.body4075 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.57 = phi i64 [ %dict.sroa.12.53, %do.body4075 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.55 = phi i32 [ %len.52, %do.body4075 ], [ %14, %if.end ], !dbg !456
  %rep0.65 = phi i32 [ %rep0.62, %do.body4075 ], [ %5, %if.end ], !dbg !573
  %rep1.55 = phi i32 [ %rep1.52, %do.body4075 ], [ %6, %if.end ], !dbg !574
  %rep2.55 = phi i32 [ %rep2.52, %do.body4075 ], [ %7, %if.end ], !dbg !575
  %rep3.55 = phi i32 [ %rep3.52, %do.body4075 ], [ %8, %if.end ], !dbg !576
  %state.55 = phi i32 [ %state.52, %do.body4075 ], [ %4, %if.end ], !dbg !581
  %probs.54 = phi ptr [ %probs.51, %do.body4075 ], [ %10, %if.end ], !dbg !582
  %symbol.73 = phi i32 [ %symbol.70, %do.body4075 ], [ %11, %if.end ], !dbg !583
  %limit.60 = phi i32 [ %limit.57, %do.body4075 ], [ %12, %if.end ], !dbg !577
  %offset.66 = phi i32 [ %offset.63, %do.body4075 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.113 = phi i64 [ %rc_in_pos.109, %do.body4075 ], [ %3, %if.end ], !dbg !456
  %pos_state.12 = phi i32 [ %pos_state.10, %do.body4075 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.129 = phi i32 [ %sub4077, %do.body4075 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.129 = phi i32 [ %sub4079, %do.body4075 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.57, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.57, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.129, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.129, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.12, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.113, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.66, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.60, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.73, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.54, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.55, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.55, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.55, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.55, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.65, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4096 = icmp ult i32 %rc1.sroa.0.129, 16777216, !dbg !1932
  br i1 %cmp4096, label %if.then4098, label %do.end4115, !dbg !1935

if.then4098:                                      ; preds = %do.body4094
  %cmp4099 = icmp eq i64 %rc_in_pos.113, %in_size, !dbg !1936
  br i1 %cmp4099, label %if.then4101, label %if.end4103, !dbg !1939

if.then4101:                                      ; preds = %if.then4098
  store i32 52, ptr %sequence, align 8, !dbg !1940, !tbaa !548
  br label %out, !dbg !1940

if.end4103:                                       ; preds = %if.then4098
  %shl4105 = shl nuw i32 %rc1.sroa.0.129, 8, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %shl4105, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4107 = shl i32 %rc1.sroa.500.129, 8, !dbg !1939
  %inc4108 = add i64 %rc_in_pos.113, 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %inc4108, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4109 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.113, !dbg !1939
  %237 = load i8, ptr %arrayidx4109, align 1, !dbg !1939, !tbaa !493
  %conv4110 = zext i8 %237 to i32, !dbg !1939
  %or4111 = or i32 %shl4107, %conv4110, !dbg !1939
  call void @llvm.dbg.value(metadata i32 %or4111, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4115, !dbg !1939

do.end4115:                                       ; preds = %if.end4103, %do.body4094
  %rc_in_pos.114 = phi i64 [ %inc4108, %if.end4103 ], [ %rc_in_pos.113, %do.body4094 ], !dbg !1883
  %rc1.sroa.0.130 = phi i32 [ %shl4105, %if.end4103 ], [ %rc1.sroa.0.129, %do.body4094 ], !dbg !1942
  %rc1.sroa.500.130 = phi i32 [ %or4111, %if.end4103 ], [ %rc1.sroa.500.129, %do.body4094 ], !dbg !1942
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.130, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.130, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.114, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4117 = lshr i32 %rc1.sroa.0.130, 11, !dbg !1943
  %idxprom4118 = zext i32 %state.55 to i64, !dbg !1943
  %arrayidx4119 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %idxprom4118, !dbg !1943
  %238 = load i16, ptr %arrayidx4119, align 2, !dbg !1943, !tbaa !597
  %conv4120 = zext i16 %238 to i32, !dbg !1943
  %mul4121 = mul i32 %shr4117, %conv4120, !dbg !1943
  call void @llvm.dbg.value(metadata i32 %mul4121, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4123 = icmp ult i32 %rc1.sroa.500.130, %mul4121, !dbg !1944
  br i1 %cmp4123, label %do.body4126, label %do.body4143, !dbg !1943

do.body4126:                                      ; preds = %do.end4115
  call void @llvm.dbg.value(metadata i32 %mul4121, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4132 = sub nsw i32 2048, %conv4120, !dbg !1945
  %shr4133 = lshr i32 %sub4132, 5, !dbg !1945
  %239 = trunc i32 %shr4133 to i16, !dbg !1945
  %conv4139 = add i16 %238, %239, !dbg !1945
  store i16 %conv4139, ptr %arrayidx4119, align 2, !dbg !1945, !tbaa !597
  call void @llvm.dbg.value(metadata i32 %rep1.55, metadata !297, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %rep0.65, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.55, metadata !273, metadata !DIExpression()), !dbg !456
  br label %if.end4233, !dbg !1948

do.body4143:                                      ; preds = %do.end4115
  %sub4145 = sub i32 %rc1.sroa.0.130, %mul4121, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %sub4145, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4147 = sub i32 %rc1.sroa.500.130, %mul4121, !dbg !1949
  call void @llvm.dbg.value(metadata i32 %sub4147, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %240 = lshr i16 %238, 5, !dbg !1949
  %sub4157 = sub i16 %238, %240, !dbg !1949
  store i16 %sub4157, ptr %arrayidx4119, align 2, !dbg !1949, !tbaa !597
  br label %do.body4162, !dbg !1949

do.body4162:                                      ; preds = %do.body4143, %if.end
  %dict.sroa.36.58 = phi i64 [ %dict.sroa.36.57, %do.body4143 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.58 = phi i64 [ %dict.sroa.12.57, %do.body4143 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.56 = phi i32 [ %len.55, %do.body4143 ], [ %14, %if.end ], !dbg !456
  %rep0.66 = phi i32 [ %rep0.65, %do.body4143 ], [ %5, %if.end ], !dbg !573
  %rep1.56 = phi i32 [ %rep1.55, %do.body4143 ], [ %6, %if.end ], !dbg !574
  %rep2.56 = phi i32 [ %rep2.55, %do.body4143 ], [ %7, %if.end ], !dbg !575
  %rep3.56 = phi i32 [ %rep3.55, %do.body4143 ], [ %8, %if.end ], !dbg !576
  %state.56 = phi i32 [ %state.55, %do.body4143 ], [ %4, %if.end ], !dbg !581
  %probs.55 = phi ptr [ %probs.54, %do.body4143 ], [ %10, %if.end ], !dbg !582
  %symbol.74 = phi i32 [ %symbol.73, %do.body4143 ], [ %11, %if.end ], !dbg !583
  %limit.61 = phi i32 [ %limit.60, %do.body4143 ], [ %12, %if.end ], !dbg !577
  %offset.67 = phi i32 [ %offset.66, %do.body4143 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.115 = phi i64 [ %rc_in_pos.114, %do.body4143 ], [ %3, %if.end ], !dbg !456
  %pos_state.13 = phi i32 [ %pos_state.12, %do.body4143 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.131 = phi i32 [ %sub4145, %do.body4143 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.131 = phi i32 [ %sub4147, %do.body4143 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.58, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.58, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.131, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.131, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.13, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.115, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.67, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.61, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.74, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.55, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.56, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.56, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.56, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.56, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.66, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4164 = icmp ult i32 %rc1.sroa.0.131, 16777216, !dbg !1951
  br i1 %cmp4164, label %if.then4166, label %do.end4183, !dbg !1954

if.then4166:                                      ; preds = %do.body4162
  %cmp4167 = icmp eq i64 %rc_in_pos.115, %in_size, !dbg !1955
  br i1 %cmp4167, label %if.then4169, label %if.end4171, !dbg !1958

if.then4169:                                      ; preds = %if.then4166
  store i32 53, ptr %sequence, align 8, !dbg !1959, !tbaa !548
  br label %out, !dbg !1959

if.end4171:                                       ; preds = %if.then4166
  %shl4173 = shl nuw i32 %rc1.sroa.0.131, 8, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %shl4173, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4175 = shl i32 %rc1.sroa.500.131, 8, !dbg !1958
  %inc4176 = add i64 %rc_in_pos.115, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %inc4176, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4177 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.115, !dbg !1958
  %241 = load i8, ptr %arrayidx4177, align 1, !dbg !1958, !tbaa !493
  %conv4178 = zext i8 %241 to i32, !dbg !1958
  %or4179 = or i32 %shl4175, %conv4178, !dbg !1958
  call void @llvm.dbg.value(metadata i32 %or4179, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4183, !dbg !1958

do.end4183:                                       ; preds = %if.end4171, %do.body4162
  %rc_in_pos.116 = phi i64 [ %inc4176, %if.end4171 ], [ %rc_in_pos.115, %do.body4162 ], !dbg !1942
  %rc1.sroa.0.132 = phi i32 [ %shl4173, %if.end4171 ], [ %rc1.sroa.0.131, %do.body4162 ], !dbg !1961
  %rc1.sroa.500.132 = phi i32 [ %or4179, %if.end4171 ], [ %rc1.sroa.500.131, %do.body4162 ], !dbg !1961
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.132, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.132, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.116, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4185 = lshr i32 %rc1.sroa.0.132, 11, !dbg !1962
  %idxprom4186 = zext i32 %state.56 to i64, !dbg !1962
  %arrayidx4187 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, i64 %idxprom4186, !dbg !1962
  %242 = load i16, ptr %arrayidx4187, align 2, !dbg !1962, !tbaa !597
  %conv4188 = zext i16 %242 to i32, !dbg !1962
  %mul4189 = mul i32 %shr4185, %conv4188, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %mul4189, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4191 = icmp ult i32 %rc1.sroa.500.132, %mul4189, !dbg !1963
  br i1 %cmp4191, label %do.body4194, label %do.body4212, !dbg !1962

do.body4194:                                      ; preds = %do.end4183
  call void @llvm.dbg.value(metadata i32 %mul4189, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4200 = sub nsw i32 2048, %conv4188, !dbg !1964
  %shr4201 = lshr i32 %sub4200, 5, !dbg !1964
  %243 = trunc i32 %shr4201 to i16, !dbg !1964
  %conv4207 = add i16 %242, %243, !dbg !1964
  store i16 %conv4207, ptr %arrayidx4187, align 2, !dbg !1964, !tbaa !597
  call void @llvm.dbg.value(metadata i32 %rep2.56, metadata !304, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 %rep1.56, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.66, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.56, metadata !273, metadata !DIExpression()), !dbg !456
  br label %if.end4233, !dbg !1967

do.body4212:                                      ; preds = %do.end4183
  %sub4214 = sub i32 %rc1.sroa.0.132, %mul4189, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %sub4214, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4216 = sub i32 %rc1.sroa.500.132, %mul4189, !dbg !1968
  call void @llvm.dbg.value(metadata i32 %sub4216, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %244 = lshr i16 %242, 5, !dbg !1968
  %sub4226 = sub i16 %242, %244, !dbg !1968
  store i16 %sub4226, ptr %arrayidx4187, align 2, !dbg !1968, !tbaa !597
  call void @llvm.dbg.value(metadata i32 %rep3.56, metadata !308, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i32 %rep2.56, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.56, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.66, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.56, metadata !273, metadata !DIExpression()), !dbg !456
  br label %if.end4233

if.end4233:                                       ; preds = %do.body4126, %do.body4212, %do.body4194, %do.body4052
  %dict.sroa.36.59 = phi i64 [ %dict.sroa.36.54, %do.body4052 ], [ %dict.sroa.36.57, %do.body4126 ], [ %dict.sroa.36.58, %do.body4194 ], [ %dict.sroa.36.58, %do.body4212 ], !dbg !550
  %dict.sroa.12.59 = phi i64 [ %dict.sroa.12.54, %do.body4052 ], [ %dict.sroa.12.57, %do.body4126 ], [ %dict.sroa.12.58, %do.body4194 ], [ %dict.sroa.12.58, %do.body4212 ], !dbg !569
  %len.57 = phi i32 [ %len.53, %do.body4052 ], [ %len.55, %do.body4126 ], [ %len.56, %do.body4194 ], [ %len.56, %do.body4212 ], !dbg !572
  %rep0.67 = phi i32 [ %rep0.63, %do.body4052 ], [ %rep1.55, %do.body4126 ], [ %rep2.56, %do.body4194 ], [ %rep3.56, %do.body4212 ], !dbg !456
  %rep1.57 = phi i32 [ %rep1.53, %do.body4052 ], [ %rep0.65, %do.body4126 ], [ %rep0.66, %do.body4194 ], [ %rep0.66, %do.body4212 ], !dbg !456
  %rep2.57 = phi i32 [ %rep2.53, %do.body4052 ], [ %rep2.55, %do.body4126 ], [ %rep1.56, %do.body4194 ], [ %rep1.56, %do.body4212 ], !dbg !456
  %rep3.57 = phi i32 [ %rep3.53, %do.body4052 ], [ %rep3.55, %do.body4126 ], [ %rep3.56, %do.body4194 ], [ %rep2.56, %do.body4212 ], !dbg !456
  %state.57 = phi i32 [ %state.53, %do.body4052 ], [ %state.55, %do.body4126 ], [ %state.56, %do.body4194 ], [ %state.56, %do.body4212 ], !dbg !581
  %probs.56 = phi ptr [ %probs.52, %do.body4052 ], [ %probs.54, %do.body4126 ], [ %probs.55, %do.body4194 ], [ %probs.55, %do.body4212 ], !dbg !582
  %limit.62 = phi i32 [ %limit.58, %do.body4052 ], [ %limit.60, %do.body4126 ], [ %limit.61, %do.body4194 ], [ %limit.61, %do.body4212 ], !dbg !577
  %offset.68 = phi i32 [ %offset.64, %do.body4052 ], [ %offset.66, %do.body4126 ], [ %offset.67, %do.body4194 ], [ %offset.67, %do.body4212 ], !dbg !578
  %rc_in_pos.117 = phi i64 [ %rc_in_pos.111, %do.body4052 ], [ %rc_in_pos.114, %do.body4126 ], [ %rc_in_pos.116, %do.body4194 ], [ %rc_in_pos.116, %do.body4212 ], !dbg !1971
  %pos_state.14 = phi i32 [ %pos_state.11, %do.body4052 ], [ %pos_state.12, %do.body4126 ], [ %pos_state.13, %do.body4194 ], [ %pos_state.13, %do.body4212 ], !dbg !1972
  %rc1.sroa.0.133 = phi i32 [ %sub4054, %do.body4052 ], [ %mul4121, %do.body4126 ], [ %mul4189, %do.body4194 ], [ %sub4214, %do.body4212 ], !dbg !1971
  %rc1.sroa.500.133 = phi i32 [ %sub4056, %do.body4052 ], [ %rc1.sroa.500.130, %do.body4126 ], [ %rc1.sroa.500.132, %do.body4194 ], [ %sub4216, %do.body4212 ], !dbg !1971
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.59, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.59, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.133, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.133, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.14, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.117, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.68, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.62, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.56, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.57, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.57, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.57, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.57, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.67, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4234 = icmp ult i32 %state.57, 7, !dbg !1973
  %cond4236 = select i1 %cmp4234, i32 8, i32 11, !dbg !1973
  call void @llvm.dbg.value(metadata i32 %cond4236, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 1, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4239, !dbg !1974

do.body4239:                                      ; preds = %if.end4233, %if.end
  %dict.sroa.36.60 = phi i64 [ %dict.sroa.36.59, %if.end4233 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.60 = phi i64 [ %dict.sroa.12.59, %if.end4233 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.58 = phi i32 [ %len.57, %if.end4233 ], [ %14, %if.end ], !dbg !456
  %rep0.68 = phi i32 [ %rep0.67, %if.end4233 ], [ %5, %if.end ], !dbg !573
  %rep1.58 = phi i32 [ %rep1.57, %if.end4233 ], [ %6, %if.end ], !dbg !574
  %rep2.58 = phi i32 [ %rep2.57, %if.end4233 ], [ %7, %if.end ], !dbg !575
  %rep3.58 = phi i32 [ %rep3.57, %if.end4233 ], [ %8, %if.end ], !dbg !576
  %state.58 = phi i32 [ %cond4236, %if.end4233 ], [ %4, %if.end ], !dbg !456
  %probs.57 = phi ptr [ %probs.56, %if.end4233 ], [ %10, %if.end ], !dbg !582
  %symbol.75 = phi i32 [ 1, %if.end4233 ], [ %11, %if.end ], !dbg !456
  %limit.63 = phi i32 [ %limit.62, %if.end4233 ], [ %12, %if.end ], !dbg !577
  %offset.69 = phi i32 [ %offset.68, %if.end4233 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.118 = phi i64 [ %rc_in_pos.117, %if.end4233 ], [ %3, %if.end ], !dbg !456
  %pos_state.15 = phi i32 [ %pos_state.14, %if.end4233 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.134 = phi i32 [ %rc1.sroa.0.133, %if.end4233 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.134 = phi i32 [ %rc1.sroa.500.133, %if.end4233 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.60, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.60, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.134, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.134, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.15, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.118, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.69, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.63, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.75, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.57, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.58, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.58, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.58, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.58, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.68, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4241 = icmp ult i32 %rc1.sroa.0.134, 16777216, !dbg !1976
  br i1 %cmp4241, label %if.then4243, label %do.end4260, !dbg !1979

if.then4243:                                      ; preds = %do.body4239
  %cmp4244 = icmp eq i64 %rc_in_pos.118, %in_size, !dbg !1980
  br i1 %cmp4244, label %if.then4246, label %if.end4248, !dbg !1983

if.then4246:                                      ; preds = %if.then4243
  store i32 54, ptr %sequence, align 8, !dbg !1984, !tbaa !548
  br label %out, !dbg !1984

if.end4248:                                       ; preds = %if.then4243
  %shl4250 = shl nuw i32 %rc1.sroa.0.134, 8, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %shl4250, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4252 = shl i32 %rc1.sroa.500.134, 8, !dbg !1983
  %inc4253 = add i64 %rc_in_pos.118, 1, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %inc4253, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4254 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.118, !dbg !1983
  %245 = load i8, ptr %arrayidx4254, align 1, !dbg !1983, !tbaa !493
  %conv4255 = zext i8 %245 to i32, !dbg !1983
  %or4256 = or i32 %shl4252, %conv4255, !dbg !1983
  call void @llvm.dbg.value(metadata i32 %or4256, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4260, !dbg !1983

do.end4260:                                       ; preds = %if.end4248, %do.body4239
  %rc_in_pos.119 = phi i64 [ %inc4253, %if.end4248 ], [ %rc_in_pos.118, %do.body4239 ], !dbg !1883
  %rc1.sroa.0.135 = phi i32 [ %shl4250, %if.end4248 ], [ %rc1.sroa.0.134, %do.body4239 ], !dbg !1883
  %rc1.sroa.500.135 = phi i32 [ %or4256, %if.end4248 ], [ %rc1.sroa.500.134, %do.body4239 ], !dbg !1883
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.135, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.135, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.119, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4262 = lshr i32 %rc1.sroa.0.135, 11, !dbg !1974
  %rep_len_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, !dbg !1974
  %246 = load i16, ptr %rep_len_decoder, align 8, !dbg !1974, !tbaa !1986
  %conv4264 = zext i16 %246 to i32, !dbg !1974
  %mul4265 = mul i32 %shr4262, %conv4264, !dbg !1974
  call void @llvm.dbg.value(metadata i32 %mul4265, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4267 = icmp ult i32 %rc1.sroa.500.135, %mul4265, !dbg !1987
  br i1 %cmp4267, label %do.body4270, label %do.body4560, !dbg !1974

do.body4270:                                      ; preds = %do.end4260
  call void @llvm.dbg.value(metadata i32 %mul4265, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4275 = sub nsw i32 2048, %conv4264, !dbg !1989
  %shr4276 = lshr i32 %sub4275, 5, !dbg !1989
  %247 = trunc i32 %shr4276 to i16, !dbg !1989
  %conv4281 = add i16 %246, %247, !dbg !1989
  store i16 %conv4281, ptr %rep_len_decoder, align 8, !dbg !1989, !tbaa !1986
  br label %do.body4286, !dbg !1989

do.body4286:                                      ; preds = %if.end, %do.body4270
  %dict.sroa.36.61 = phi i64 [ %dict.sroa.36.60, %do.body4270 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.61 = phi i64 [ %dict.sroa.12.60, %do.body4270 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.59 = phi i32 [ %len.58, %do.body4270 ], [ %14, %if.end ], !dbg !456
  %rep0.69 = phi i32 [ %rep0.68, %do.body4270 ], [ %5, %if.end ], !dbg !573
  %rep1.59 = phi i32 [ %rep1.58, %do.body4270 ], [ %6, %if.end ], !dbg !574
  %rep2.59 = phi i32 [ %rep2.58, %do.body4270 ], [ %7, %if.end ], !dbg !575
  %rep3.59 = phi i32 [ %rep3.58, %do.body4270 ], [ %8, %if.end ], !dbg !576
  %state.59 = phi i32 [ %state.58, %do.body4270 ], [ %4, %if.end ], !dbg !456
  %probs.58 = phi ptr [ %probs.57, %do.body4270 ], [ %10, %if.end ], !dbg !582
  %symbol.76 = phi i32 [ %symbol.75, %do.body4270 ], [ %11, %if.end ], !dbg !456
  %limit.64 = phi i32 [ %limit.63, %do.body4270 ], [ %12, %if.end ], !dbg !577
  %offset.70 = phi i32 [ %offset.69, %do.body4270 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.120 = phi i64 [ %rc_in_pos.119, %do.body4270 ], [ %3, %if.end ], !dbg !456
  %pos_state.16 = phi i32 [ %pos_state.15, %do.body4270 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.136 = phi i32 [ %mul4265, %do.body4270 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.136 = phi i32 [ %rc1.sroa.500.135, %do.body4270 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.61, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.61, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.136, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.136, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.16, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.120, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.70, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.64, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.76, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.58, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.59, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.59, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.59, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.59, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.69, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4288 = icmp ult i32 %rc1.sroa.0.136, 16777216, !dbg !1992
  br i1 %cmp4288, label %if.then4290, label %do.end4307, !dbg !1996

if.then4290:                                      ; preds = %do.body4286
  %cmp4291 = icmp eq i64 %rc_in_pos.120, %in_size, !dbg !1997
  br i1 %cmp4291, label %if.then4293, label %if.end4295, !dbg !2000

if.then4293:                                      ; preds = %if.then4290
  store i32 55, ptr %sequence, align 8, !dbg !2001, !tbaa !548
  br label %out, !dbg !2001

if.end4295:                                       ; preds = %if.then4290
  %shl4297 = shl nuw i32 %rc1.sroa.0.136, 8, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %shl4297, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4299 = shl i32 %rc1.sroa.500.136, 8, !dbg !2000
  %inc4300 = add i64 %rc_in_pos.120, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %inc4300, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4301 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.120, !dbg !2000
  %248 = load i8, ptr %arrayidx4301, align 1, !dbg !2000, !tbaa !493
  %conv4302 = zext i8 %248 to i32, !dbg !2000
  %or4303 = or i32 %shl4299, %conv4302, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %or4303, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4307, !dbg !2000

do.end4307:                                       ; preds = %if.end4295, %do.body4286
  %rc_in_pos.121 = phi i64 [ %inc4300, %if.end4295 ], [ %rc_in_pos.120, %do.body4286 ], !dbg !2003
  %rc1.sroa.0.137 = phi i32 [ %shl4297, %if.end4295 ], [ %rc1.sroa.0.136, %do.body4286 ], !dbg !2004
  %rc1.sroa.500.137 = phi i32 [ %or4303, %if.end4295 ], [ %rc1.sroa.500.136, %do.body4286 ], !dbg !2003
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.137, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.137, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.121, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4309 = lshr i32 %rc1.sroa.0.137, 11, !dbg !2005
  %idxprom4312 = zext i32 %pos_state.16 to i64, !dbg !2005
  %idxprom4314 = zext i32 %symbol.76 to i64, !dbg !2005
  %arrayidx4315 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 2, i64 %idxprom4312, i64 %idxprom4314, !dbg !2005
  %249 = load i16, ptr %arrayidx4315, align 2, !dbg !2005, !tbaa !597
  %conv4316 = zext i16 %249 to i32, !dbg !2005
  %mul4317 = mul i32 %shr4309, %conv4316, !dbg !2005
  call void @llvm.dbg.value(metadata i32 %mul4317, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4319 = icmp ult i32 %rc1.sroa.500.137, %mul4317, !dbg !2006
  br i1 %cmp4319, label %do.body4322, label %do.body4346, !dbg !2005

do.body4322:                                      ; preds = %do.end4307
  call void @llvm.dbg.value(metadata i32 %mul4317, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4331 = sub nsw i32 2048, %conv4316, !dbg !2008
  %shr4332 = lshr i32 %sub4331, 5, !dbg !2008
  %250 = trunc i32 %shr4332 to i16, !dbg !2008
  %conv4341 = add i16 %249, %250, !dbg !2008
  store i16 %conv4341, ptr %arrayidx4315, align 2, !dbg !2008, !tbaa !597
  %shl4344 = shl i32 %symbol.76, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i32 %shl4344, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4377, !dbg !2011

do.body4346:                                      ; preds = %do.end4307
  %sub4348 = sub i32 %rc1.sroa.0.137, %mul4317, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %sub4348, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4350 = sub i32 %rc1.sroa.500.137, %mul4317, !dbg !2012
  call void @llvm.dbg.value(metadata i32 %sub4350, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %251 = lshr i16 %249, 5, !dbg !2012
  %sub4366 = sub i16 %249, %251, !dbg !2012
  store i16 %sub4366, ptr %arrayidx4315, align 2, !dbg !2012, !tbaa !597
  %shl4370 = shl i32 %symbol.76, 1, !dbg !2015
  %add4371 = or i32 %shl4370, 1, !dbg !2015
  call void @llvm.dbg.value(metadata i32 %add4371, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4377

do.body4377:                                      ; preds = %do.body4322, %do.body4346, %if.end
  %dict.sroa.36.62 = phi i64 [ %dict.sroa.36.61, %do.body4322 ], [ %dict.sroa.36.61, %do.body4346 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.62 = phi i64 [ %dict.sroa.12.61, %do.body4322 ], [ %dict.sroa.12.61, %do.body4346 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.60 = phi i32 [ %len.59, %do.body4322 ], [ %len.59, %do.body4346 ], [ %14, %if.end ], !dbg !456
  %rep0.70 = phi i32 [ %rep0.69, %do.body4322 ], [ %rep0.69, %do.body4346 ], [ %5, %if.end ], !dbg !573
  %rep1.60 = phi i32 [ %rep1.59, %do.body4322 ], [ %rep1.59, %do.body4346 ], [ %6, %if.end ], !dbg !574
  %rep2.60 = phi i32 [ %rep2.59, %do.body4322 ], [ %rep2.59, %do.body4346 ], [ %7, %if.end ], !dbg !575
  %rep3.60 = phi i32 [ %rep3.59, %do.body4322 ], [ %rep3.59, %do.body4346 ], [ %8, %if.end ], !dbg !576
  %state.60 = phi i32 [ %state.59, %do.body4322 ], [ %state.59, %do.body4346 ], [ %4, %if.end ], !dbg !456
  %probs.59 = phi ptr [ %probs.58, %do.body4322 ], [ %probs.58, %do.body4346 ], [ %10, %if.end ], !dbg !582
  %symbol.77 = phi i32 [ %shl4344, %do.body4322 ], [ %add4371, %do.body4346 ], [ %11, %if.end ], !dbg !456
  %limit.65 = phi i32 [ %limit.64, %do.body4322 ], [ %limit.64, %do.body4346 ], [ %12, %if.end ], !dbg !577
  %offset.71 = phi i32 [ %offset.70, %do.body4322 ], [ %offset.70, %do.body4346 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.122 = phi i64 [ %rc_in_pos.121, %do.body4322 ], [ %rc_in_pos.121, %do.body4346 ], [ %3, %if.end ], !dbg !456
  %pos_state.17 = phi i32 [ %pos_state.16, %do.body4322 ], [ %pos_state.16, %do.body4346 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.138 = phi i32 [ %mul4317, %do.body4322 ], [ %sub4348, %do.body4346 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.138 = phi i32 [ %rc1.sroa.500.137, %do.body4322 ], [ %sub4350, %do.body4346 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.62, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.62, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.138, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.138, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.17, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.122, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.71, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.65, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.77, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.59, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.60, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.60, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.60, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.60, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.70, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4379 = icmp ult i32 %rc1.sroa.0.138, 16777216, !dbg !2016
  br i1 %cmp4379, label %if.then4381, label %do.end4398, !dbg !2020

if.then4381:                                      ; preds = %do.body4377
  %cmp4382 = icmp eq i64 %rc_in_pos.122, %in_size, !dbg !2021
  br i1 %cmp4382, label %if.then4384, label %if.end4386, !dbg !2024

if.then4384:                                      ; preds = %if.then4381
  store i32 56, ptr %sequence, align 8, !dbg !2025, !tbaa !548
  br label %out, !dbg !2025

if.end4386:                                       ; preds = %if.then4381
  %shl4388 = shl nuw i32 %rc1.sroa.0.138, 8, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %shl4388, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4390 = shl i32 %rc1.sroa.500.138, 8, !dbg !2024
  %inc4391 = add i64 %rc_in_pos.122, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %inc4391, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4392 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.122, !dbg !2024
  %252 = load i8, ptr %arrayidx4392, align 1, !dbg !2024, !tbaa !493
  %conv4393 = zext i8 %252 to i32, !dbg !2024
  %or4394 = or i32 %shl4390, %conv4393, !dbg !2024
  call void @llvm.dbg.value(metadata i32 %or4394, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4398, !dbg !2024

do.end4398:                                       ; preds = %if.end4386, %do.body4377
  %rc_in_pos.123 = phi i64 [ %inc4391, %if.end4386 ], [ %rc_in_pos.122, %do.body4377 ], !dbg !2004
  %rc1.sroa.0.139 = phi i32 [ %shl4388, %if.end4386 ], [ %rc1.sroa.0.138, %do.body4377 ], !dbg !2004
  %rc1.sroa.500.139 = phi i32 [ %or4394, %if.end4386 ], [ %rc1.sroa.500.138, %do.body4377 ], !dbg !2004
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.139, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.139, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.123, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4400 = lshr i32 %rc1.sroa.0.139, 11, !dbg !2027
  %idxprom4403 = zext i32 %pos_state.17 to i64, !dbg !2027
  %idxprom4405 = zext i32 %symbol.77 to i64, !dbg !2027
  %arrayidx4406 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 2, i64 %idxprom4403, i64 %idxprom4405, !dbg !2027
  %253 = load i16, ptr %arrayidx4406, align 2, !dbg !2027, !tbaa !597
  %conv4407 = zext i16 %253 to i32, !dbg !2027
  %mul4408 = mul i32 %shr4400, %conv4407, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %mul4408, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4410 = icmp ult i32 %rc1.sroa.500.139, %mul4408, !dbg !2028
  br i1 %cmp4410, label %do.body4413, label %do.body4437, !dbg !2027

do.body4413:                                      ; preds = %do.end4398
  call void @llvm.dbg.value(metadata i32 %mul4408, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4422 = sub nsw i32 2048, %conv4407, !dbg !2030
  %shr4423 = lshr i32 %sub4422, 5, !dbg !2030
  %254 = trunc i32 %shr4423 to i16, !dbg !2030
  %conv4432 = add i16 %253, %254, !dbg !2030
  store i16 %conv4432, ptr %arrayidx4406, align 2, !dbg !2030, !tbaa !597
  %shl4435 = shl i32 %symbol.77, 1, !dbg !2033
  call void @llvm.dbg.value(metadata i32 %shl4435, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4468, !dbg !2033

do.body4437:                                      ; preds = %do.end4398
  %sub4439 = sub i32 %rc1.sroa.0.139, %mul4408, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %sub4439, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4441 = sub i32 %rc1.sroa.500.139, %mul4408, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %sub4441, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %255 = lshr i16 %253, 5, !dbg !2034
  %sub4457 = sub i16 %253, %255, !dbg !2034
  store i16 %sub4457, ptr %arrayidx4406, align 2, !dbg !2034, !tbaa !597
  %shl4461 = shl i32 %symbol.77, 1, !dbg !2037
  %add4462 = or i32 %shl4461, 1, !dbg !2037
  call void @llvm.dbg.value(metadata i32 %add4462, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4468

do.body4468:                                      ; preds = %do.body4413, %do.body4437, %if.end
  %dict.sroa.36.63 = phi i64 [ %dict.sroa.36.62, %do.body4413 ], [ %dict.sroa.36.62, %do.body4437 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.63 = phi i64 [ %dict.sroa.12.62, %do.body4413 ], [ %dict.sroa.12.62, %do.body4437 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.61 = phi i32 [ %len.60, %do.body4413 ], [ %len.60, %do.body4437 ], [ %14, %if.end ], !dbg !456
  %rep0.71 = phi i32 [ %rep0.70, %do.body4413 ], [ %rep0.70, %do.body4437 ], [ %5, %if.end ], !dbg !573
  %rep1.61 = phi i32 [ %rep1.60, %do.body4413 ], [ %rep1.60, %do.body4437 ], [ %6, %if.end ], !dbg !574
  %rep2.61 = phi i32 [ %rep2.60, %do.body4413 ], [ %rep2.60, %do.body4437 ], [ %7, %if.end ], !dbg !575
  %rep3.61 = phi i32 [ %rep3.60, %do.body4413 ], [ %rep3.60, %do.body4437 ], [ %8, %if.end ], !dbg !576
  %state.61 = phi i32 [ %state.60, %do.body4413 ], [ %state.60, %do.body4437 ], [ %4, %if.end ], !dbg !456
  %probs.60 = phi ptr [ %probs.59, %do.body4413 ], [ %probs.59, %do.body4437 ], [ %10, %if.end ], !dbg !582
  %symbol.78 = phi i32 [ %shl4435, %do.body4413 ], [ %add4462, %do.body4437 ], [ %11, %if.end ], !dbg !456
  %limit.66 = phi i32 [ %limit.65, %do.body4413 ], [ %limit.65, %do.body4437 ], [ %12, %if.end ], !dbg !577
  %offset.72 = phi i32 [ %offset.71, %do.body4413 ], [ %offset.71, %do.body4437 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.124 = phi i64 [ %rc_in_pos.123, %do.body4413 ], [ %rc_in_pos.123, %do.body4437 ], [ %3, %if.end ], !dbg !456
  %pos_state.18 = phi i32 [ %pos_state.17, %do.body4413 ], [ %pos_state.17, %do.body4437 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.140 = phi i32 [ %mul4408, %do.body4413 ], [ %sub4439, %do.body4437 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.140 = phi i32 [ %rc1.sroa.500.139, %do.body4413 ], [ %sub4441, %do.body4437 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.63, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.63, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.140, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.140, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.18, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.124, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.72, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.66, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.78, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.60, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.61, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.61, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.61, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.61, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.71, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4470 = icmp ult i32 %rc1.sroa.0.140, 16777216, !dbg !2038
  br i1 %cmp4470, label %if.then4472, label %do.end4489, !dbg !2042

if.then4472:                                      ; preds = %do.body4468
  %cmp4473 = icmp eq i64 %rc_in_pos.124, %in_size, !dbg !2043
  br i1 %cmp4473, label %if.then4475, label %if.end4477, !dbg !2046

if.then4475:                                      ; preds = %if.then4472
  store i32 57, ptr %sequence, align 8, !dbg !2047, !tbaa !548
  br label %out, !dbg !2047

if.end4477:                                       ; preds = %if.then4472
  %shl4479 = shl nuw i32 %rc1.sroa.0.140, 8, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %shl4479, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4481 = shl i32 %rc1.sroa.500.140, 8, !dbg !2046
  %inc4482 = add i64 %rc_in_pos.124, 1, !dbg !2046
  call void @llvm.dbg.value(metadata i64 %inc4482, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4483 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.124, !dbg !2046
  %256 = load i8, ptr %arrayidx4483, align 1, !dbg !2046, !tbaa !493
  %conv4484 = zext i8 %256 to i32, !dbg !2046
  %or4485 = or i32 %shl4481, %conv4484, !dbg !2046
  call void @llvm.dbg.value(metadata i32 %or4485, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4489, !dbg !2046

do.end4489:                                       ; preds = %if.end4477, %do.body4468
  %rc_in_pos.125 = phi i64 [ %inc4482, %if.end4477 ], [ %rc_in_pos.124, %do.body4468 ], !dbg !2004
  %rc1.sroa.0.141 = phi i32 [ %shl4479, %if.end4477 ], [ %rc1.sroa.0.140, %do.body4468 ], !dbg !2004
  %rc1.sroa.500.141 = phi i32 [ %or4485, %if.end4477 ], [ %rc1.sroa.500.140, %do.body4468 ], !dbg !2004
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.141, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.141, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.125, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4491 = lshr i32 %rc1.sroa.0.141, 11, !dbg !2049
  %idxprom4494 = zext i32 %pos_state.18 to i64, !dbg !2049
  %idxprom4496 = zext i32 %symbol.78 to i64, !dbg !2049
  %arrayidx4497 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 2, i64 %idxprom4494, i64 %idxprom4496, !dbg !2049
  %257 = load i16, ptr %arrayidx4497, align 2, !dbg !2049, !tbaa !597
  %conv4498 = zext i16 %257 to i32, !dbg !2049
  %mul4499 = mul i32 %shr4491, %conv4498, !dbg !2049
  call void @llvm.dbg.value(metadata i32 %mul4499, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4501 = icmp ult i32 %rc1.sroa.500.141, %mul4499, !dbg !2050
  br i1 %cmp4501, label %do.body4504, label %do.body4528, !dbg !2049

do.body4504:                                      ; preds = %do.end4489
  call void @llvm.dbg.value(metadata i32 %mul4499, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4513 = sub nsw i32 2048, %conv4498, !dbg !2052
  %shr4514 = lshr i32 %sub4513, 5, !dbg !2052
  %258 = trunc i32 %shr4514 to i16, !dbg !2052
  %conv4523 = add i16 %257, %258, !dbg !2052
  store i16 %conv4523, ptr %arrayidx4497, align 2, !dbg !2052, !tbaa !597
  %shl4526 = shl i32 %symbol.78, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %shl4526, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end4556, !dbg !2055

do.body4528:                                      ; preds = %do.end4489
  %sub4530 = sub i32 %rc1.sroa.0.141, %mul4499, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %sub4530, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4532 = sub i32 %rc1.sroa.500.141, %mul4499, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %sub4532, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %259 = lshr i16 %257, 5, !dbg !2056
  %sub4548 = sub i16 %257, %259, !dbg !2056
  store i16 %sub4548, ptr %arrayidx4497, align 2, !dbg !2056, !tbaa !597
  %shl4552 = shl i32 %symbol.78, 1, !dbg !2059
  %add4553 = or i32 %shl4552, 1, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %add4553, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end4556

do.end4556:                                       ; preds = %do.body4528, %do.body4504
  %symbol.79 = phi i32 [ %shl4526, %do.body4504 ], [ %add4553, %do.body4528 ], !dbg !2060
  %rc1.sroa.0.142 = phi i32 [ %mul4499, %do.body4504 ], [ %sub4530, %do.body4528 ], !dbg !2060
  %rc1.sroa.500.142 = phi i32 [ %rc1.sroa.500.141, %do.body4504 ], [ %sub4532, %do.body4528 ], !dbg !2061
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.142, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.142, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.79, metadata !280, metadata !DIExpression()), !dbg !456
  %add4558 = add i32 %symbol.79, -6, !dbg !2062
  call void @llvm.dbg.value(metadata i32 %add4558, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb5573, !dbg !2062

do.body4560:                                      ; preds = %do.end4260
  %sub4562 = sub i32 %rc1.sroa.0.135, %mul4265, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %sub4562, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4564 = sub i32 %rc1.sroa.500.135, %mul4265, !dbg !2063
  call void @llvm.dbg.value(metadata i32 %sub4564, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %260 = lshr i16 %246, 5, !dbg !2063
  %sub4572 = sub i16 %246, %260, !dbg !2063
  store i16 %sub4572, ptr %rep_len_decoder, align 8, !dbg !2063, !tbaa !1986
  br label %do.body4577, !dbg !2063

do.body4577:                                      ; preds = %do.body4560, %if.end
  %dict.sroa.36.64 = phi i64 [ %dict.sroa.36.60, %do.body4560 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.64 = phi i64 [ %dict.sroa.12.60, %do.body4560 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.62 = phi i32 [ %len.58, %do.body4560 ], [ %14, %if.end ], !dbg !456
  %rep0.72 = phi i32 [ %rep0.68, %do.body4560 ], [ %5, %if.end ], !dbg !573
  %rep1.62 = phi i32 [ %rep1.58, %do.body4560 ], [ %6, %if.end ], !dbg !574
  %rep2.62 = phi i32 [ %rep2.58, %do.body4560 ], [ %7, %if.end ], !dbg !575
  %rep3.62 = phi i32 [ %rep3.58, %do.body4560 ], [ %8, %if.end ], !dbg !576
  %state.62 = phi i32 [ %state.58, %do.body4560 ], [ %4, %if.end ], !dbg !456
  %probs.61 = phi ptr [ %probs.57, %do.body4560 ], [ %10, %if.end ], !dbg !582
  %symbol.80 = phi i32 [ %symbol.75, %do.body4560 ], [ %11, %if.end ], !dbg !456
  %limit.67 = phi i32 [ %limit.63, %do.body4560 ], [ %12, %if.end ], !dbg !577
  %offset.73 = phi i32 [ %offset.69, %do.body4560 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.126 = phi i64 [ %rc_in_pos.119, %do.body4560 ], [ %3, %if.end ], !dbg !456
  %pos_state.19 = phi i32 [ %pos_state.15, %do.body4560 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.143 = phi i32 [ %sub4562, %do.body4560 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.143 = phi i32 [ %sub4564, %do.body4560 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.64, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.64, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.143, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.143, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.19, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.126, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.73, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.67, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.80, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.61, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.62, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.62, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.62, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.62, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.72, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4579 = icmp ult i32 %rc1.sroa.0.143, 16777216, !dbg !2066
  br i1 %cmp4579, label %if.then4581, label %do.end4598, !dbg !2069

if.then4581:                                      ; preds = %do.body4577
  %cmp4582 = icmp eq i64 %rc_in_pos.126, %in_size, !dbg !2070
  br i1 %cmp4582, label %if.then4584, label %if.end4586, !dbg !2073

if.then4584:                                      ; preds = %if.then4581
  store i32 58, ptr %sequence, align 8, !dbg !2074, !tbaa !548
  br label %out, !dbg !2074

if.end4586:                                       ; preds = %if.then4581
  %shl4588 = shl nuw i32 %rc1.sroa.0.143, 8, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %shl4588, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4590 = shl i32 %rc1.sroa.500.143, 8, !dbg !2073
  %inc4591 = add i64 %rc_in_pos.126, 1, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %inc4591, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4592 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.126, !dbg !2073
  %261 = load i8, ptr %arrayidx4592, align 1, !dbg !2073, !tbaa !493
  %conv4593 = zext i8 %261 to i32, !dbg !2073
  %or4594 = or i32 %shl4590, %conv4593, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %or4594, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4598, !dbg !2073

do.end4598:                                       ; preds = %if.end4586, %do.body4577
  %rc_in_pos.127 = phi i64 [ %inc4591, %if.end4586 ], [ %rc_in_pos.126, %do.body4577 ], !dbg !2003
  %rc1.sroa.0.144 = phi i32 [ %shl4588, %if.end4586 ], [ %rc1.sroa.0.143, %do.body4577 ], !dbg !2076
  %rc1.sroa.500.144 = phi i32 [ %or4594, %if.end4586 ], [ %rc1.sroa.500.143, %do.body4577 ], !dbg !2076
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.144, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.144, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.127, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4600 = lshr i32 %rc1.sroa.0.144, 11, !dbg !2077
  %choice24602 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 1, !dbg !2077
  %262 = load i16, ptr %choice24602, align 2, !dbg !2077, !tbaa !2078
  %conv4603 = zext i16 %262 to i32, !dbg !2077
  %mul4604 = mul i32 %shr4600, %conv4603, !dbg !2077
  call void @llvm.dbg.value(metadata i32 %mul4604, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4606 = icmp ult i32 %rc1.sroa.500.144, %mul4604, !dbg !2079
  br i1 %cmp4606, label %do.body4609, label %do.body4900, !dbg !2077

do.body4609:                                      ; preds = %do.end4598
  call void @llvm.dbg.value(metadata i32 %mul4604, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4614 = sub nsw i32 2048, %conv4603, !dbg !2081
  %shr4615 = lshr i32 %sub4614, 5, !dbg !2081
  %263 = trunc i32 %shr4615 to i16, !dbg !2081
  %conv4620 = add i16 %262, %263, !dbg !2081
  store i16 %conv4620, ptr %choice24602, align 2, !dbg !2081, !tbaa !2078
  br label %do.body4625, !dbg !2081

do.body4625:                                      ; preds = %if.end, %do.body4609
  %dict.sroa.36.65 = phi i64 [ %dict.sroa.36.64, %do.body4609 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.65 = phi i64 [ %dict.sroa.12.64, %do.body4609 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.63 = phi i32 [ %len.62, %do.body4609 ], [ %14, %if.end ], !dbg !456
  %rep0.73 = phi i32 [ %rep0.72, %do.body4609 ], [ %5, %if.end ], !dbg !573
  %rep1.63 = phi i32 [ %rep1.62, %do.body4609 ], [ %6, %if.end ], !dbg !574
  %rep2.63 = phi i32 [ %rep2.62, %do.body4609 ], [ %7, %if.end ], !dbg !575
  %rep3.63 = phi i32 [ %rep3.62, %do.body4609 ], [ %8, %if.end ], !dbg !576
  %state.63 = phi i32 [ %state.62, %do.body4609 ], [ %4, %if.end ], !dbg !456
  %probs.62 = phi ptr [ %probs.61, %do.body4609 ], [ %10, %if.end ], !dbg !582
  %symbol.81 = phi i32 [ %symbol.80, %do.body4609 ], [ %11, %if.end ], !dbg !456
  %limit.68 = phi i32 [ %limit.67, %do.body4609 ], [ %12, %if.end ], !dbg !577
  %offset.74 = phi i32 [ %offset.73, %do.body4609 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.128 = phi i64 [ %rc_in_pos.127, %do.body4609 ], [ %3, %if.end ], !dbg !456
  %pos_state.20 = phi i32 [ %pos_state.19, %do.body4609 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.145 = phi i32 [ %mul4604, %do.body4609 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.145 = phi i32 [ %rc1.sroa.500.144, %do.body4609 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.65, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.65, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.145, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.145, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.20, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.128, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.74, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.68, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.81, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.62, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.63, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.63, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.63, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.63, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.73, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4627 = icmp ult i32 %rc1.sroa.0.145, 16777216, !dbg !2084
  br i1 %cmp4627, label %if.then4629, label %do.end4646, !dbg !2088

if.then4629:                                      ; preds = %do.body4625
  %cmp4630 = icmp eq i64 %rc_in_pos.128, %in_size, !dbg !2089
  br i1 %cmp4630, label %if.then4632, label %if.end4634, !dbg !2092

if.then4632:                                      ; preds = %if.then4629
  store i32 59, ptr %sequence, align 8, !dbg !2093, !tbaa !548
  br label %out, !dbg !2093

if.end4634:                                       ; preds = %if.then4629
  %shl4636 = shl nuw i32 %rc1.sroa.0.145, 8, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %shl4636, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4638 = shl i32 %rc1.sroa.500.145, 8, !dbg !2092
  %inc4639 = add i64 %rc_in_pos.128, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %inc4639, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4640 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.128, !dbg !2092
  %264 = load i8, ptr %arrayidx4640, align 1, !dbg !2092, !tbaa !493
  %conv4641 = zext i8 %264 to i32, !dbg !2092
  %or4642 = or i32 %shl4638, %conv4641, !dbg !2092
  call void @llvm.dbg.value(metadata i32 %or4642, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4646, !dbg !2092

do.end4646:                                       ; preds = %if.end4634, %do.body4625
  %rc_in_pos.129 = phi i64 [ %inc4639, %if.end4634 ], [ %rc_in_pos.128, %do.body4625 ], !dbg !2076
  %rc1.sroa.0.146 = phi i32 [ %shl4636, %if.end4634 ], [ %rc1.sroa.0.145, %do.body4625 ], !dbg !2095
  %rc1.sroa.500.146 = phi i32 [ %or4642, %if.end4634 ], [ %rc1.sroa.500.145, %do.body4625 ], !dbg !2076
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.146, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.146, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.129, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4648 = lshr i32 %rc1.sroa.0.146, 11, !dbg !2096
  %idxprom4651 = zext i32 %pos_state.20 to i64, !dbg !2096
  %idxprom4653 = zext i32 %symbol.81 to i64, !dbg !2096
  %arrayidx4654 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 3, i64 %idxprom4651, i64 %idxprom4653, !dbg !2096
  %265 = load i16, ptr %arrayidx4654, align 2, !dbg !2096, !tbaa !597
  %conv4655 = zext i16 %265 to i32, !dbg !2096
  %mul4656 = mul i32 %shr4648, %conv4655, !dbg !2096
  call void @llvm.dbg.value(metadata i32 %mul4656, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4658 = icmp ult i32 %rc1.sroa.500.146, %mul4656, !dbg !2097
  br i1 %cmp4658, label %do.body4661, label %do.body4685, !dbg !2096

do.body4661:                                      ; preds = %do.end4646
  call void @llvm.dbg.value(metadata i32 %mul4656, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4670 = sub nsw i32 2048, %conv4655, !dbg !2099
  %shr4671 = lshr i32 %sub4670, 5, !dbg !2099
  %266 = trunc i32 %shr4671 to i16, !dbg !2099
  %conv4680 = add i16 %265, %266, !dbg !2099
  store i16 %conv4680, ptr %arrayidx4654, align 2, !dbg !2099, !tbaa !597
  %shl4683 = shl i32 %symbol.81, 1, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %shl4683, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4716, !dbg !2102

do.body4685:                                      ; preds = %do.end4646
  %sub4687 = sub i32 %rc1.sroa.0.146, %mul4656, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %sub4687, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4689 = sub i32 %rc1.sroa.500.146, %mul4656, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %sub4689, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %267 = lshr i16 %265, 5, !dbg !2103
  %sub4705 = sub i16 %265, %267, !dbg !2103
  store i16 %sub4705, ptr %arrayidx4654, align 2, !dbg !2103, !tbaa !597
  %shl4709 = shl i32 %symbol.81, 1, !dbg !2106
  %add4710 = or i32 %shl4709, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %add4710, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4716

do.body4716:                                      ; preds = %do.body4661, %do.body4685, %if.end
  %dict.sroa.36.66 = phi i64 [ %dict.sroa.36.65, %do.body4661 ], [ %dict.sroa.36.65, %do.body4685 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.66 = phi i64 [ %dict.sroa.12.65, %do.body4661 ], [ %dict.sroa.12.65, %do.body4685 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.64 = phi i32 [ %len.63, %do.body4661 ], [ %len.63, %do.body4685 ], [ %14, %if.end ], !dbg !456
  %rep0.74 = phi i32 [ %rep0.73, %do.body4661 ], [ %rep0.73, %do.body4685 ], [ %5, %if.end ], !dbg !573
  %rep1.64 = phi i32 [ %rep1.63, %do.body4661 ], [ %rep1.63, %do.body4685 ], [ %6, %if.end ], !dbg !574
  %rep2.64 = phi i32 [ %rep2.63, %do.body4661 ], [ %rep2.63, %do.body4685 ], [ %7, %if.end ], !dbg !575
  %rep3.64 = phi i32 [ %rep3.63, %do.body4661 ], [ %rep3.63, %do.body4685 ], [ %8, %if.end ], !dbg !576
  %state.64 = phi i32 [ %state.63, %do.body4661 ], [ %state.63, %do.body4685 ], [ %4, %if.end ], !dbg !456
  %probs.63 = phi ptr [ %probs.62, %do.body4661 ], [ %probs.62, %do.body4685 ], [ %10, %if.end ], !dbg !582
  %symbol.82 = phi i32 [ %shl4683, %do.body4661 ], [ %add4710, %do.body4685 ], [ %11, %if.end ], !dbg !456
  %limit.69 = phi i32 [ %limit.68, %do.body4661 ], [ %limit.68, %do.body4685 ], [ %12, %if.end ], !dbg !577
  %offset.75 = phi i32 [ %offset.74, %do.body4661 ], [ %offset.74, %do.body4685 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.130 = phi i64 [ %rc_in_pos.129, %do.body4661 ], [ %rc_in_pos.129, %do.body4685 ], [ %3, %if.end ], !dbg !456
  %pos_state.21 = phi i32 [ %pos_state.20, %do.body4661 ], [ %pos_state.20, %do.body4685 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.147 = phi i32 [ %mul4656, %do.body4661 ], [ %sub4687, %do.body4685 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.147 = phi i32 [ %rc1.sroa.500.146, %do.body4661 ], [ %sub4689, %do.body4685 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.66, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.66, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.147, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.147, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.21, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.130, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.75, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.69, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.82, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.63, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.64, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.64, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.64, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.64, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.74, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4718 = icmp ult i32 %rc1.sroa.0.147, 16777216, !dbg !2107
  br i1 %cmp4718, label %if.then4720, label %do.end4737, !dbg !2111

if.then4720:                                      ; preds = %do.body4716
  %cmp4721 = icmp eq i64 %rc_in_pos.130, %in_size, !dbg !2112
  br i1 %cmp4721, label %if.then4723, label %if.end4725, !dbg !2115

if.then4723:                                      ; preds = %if.then4720
  store i32 60, ptr %sequence, align 8, !dbg !2116, !tbaa !548
  br label %out, !dbg !2116

if.end4725:                                       ; preds = %if.then4720
  %shl4727 = shl nuw i32 %rc1.sroa.0.147, 8, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %shl4727, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4729 = shl i32 %rc1.sroa.500.147, 8, !dbg !2115
  %inc4730 = add i64 %rc_in_pos.130, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %inc4730, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4731 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.130, !dbg !2115
  %268 = load i8, ptr %arrayidx4731, align 1, !dbg !2115, !tbaa !493
  %conv4732 = zext i8 %268 to i32, !dbg !2115
  %or4733 = or i32 %shl4729, %conv4732, !dbg !2115
  call void @llvm.dbg.value(metadata i32 %or4733, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4737, !dbg !2115

do.end4737:                                       ; preds = %if.end4725, %do.body4716
  %rc_in_pos.131 = phi i64 [ %inc4730, %if.end4725 ], [ %rc_in_pos.130, %do.body4716 ], !dbg !2095
  %rc1.sroa.0.148 = phi i32 [ %shl4727, %if.end4725 ], [ %rc1.sroa.0.147, %do.body4716 ], !dbg !2095
  %rc1.sroa.500.148 = phi i32 [ %or4733, %if.end4725 ], [ %rc1.sroa.500.147, %do.body4716 ], !dbg !2095
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.148, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.148, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.131, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4739 = lshr i32 %rc1.sroa.0.148, 11, !dbg !2118
  %idxprom4742 = zext i32 %pos_state.21 to i64, !dbg !2118
  %idxprom4744 = zext i32 %symbol.82 to i64, !dbg !2118
  %arrayidx4745 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 3, i64 %idxprom4742, i64 %idxprom4744, !dbg !2118
  %269 = load i16, ptr %arrayidx4745, align 2, !dbg !2118, !tbaa !597
  %conv4746 = zext i16 %269 to i32, !dbg !2118
  %mul4747 = mul i32 %shr4739, %conv4746, !dbg !2118
  call void @llvm.dbg.value(metadata i32 %mul4747, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4749 = icmp ult i32 %rc1.sroa.500.148, %mul4747, !dbg !2119
  br i1 %cmp4749, label %do.body4752, label %do.body4776, !dbg !2118

do.body4752:                                      ; preds = %do.end4737
  call void @llvm.dbg.value(metadata i32 %mul4747, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4761 = sub nsw i32 2048, %conv4746, !dbg !2121
  %shr4762 = lshr i32 %sub4761, 5, !dbg !2121
  %270 = trunc i32 %shr4762 to i16, !dbg !2121
  %conv4771 = add i16 %269, %270, !dbg !2121
  store i16 %conv4771, ptr %arrayidx4745, align 2, !dbg !2121, !tbaa !597
  %shl4774 = shl i32 %symbol.82, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i32 %shl4774, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4807, !dbg !2124

do.body4776:                                      ; preds = %do.end4737
  %sub4778 = sub i32 %rc1.sroa.0.148, %mul4747, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %sub4778, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4780 = sub i32 %rc1.sroa.500.148, %mul4747, !dbg !2125
  call void @llvm.dbg.value(metadata i32 %sub4780, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %271 = lshr i16 %269, 5, !dbg !2125
  %sub4796 = sub i16 %269, %271, !dbg !2125
  store i16 %sub4796, ptr %arrayidx4745, align 2, !dbg !2125, !tbaa !597
  %shl4800 = shl i32 %symbol.82, 1, !dbg !2128
  %add4801 = or i32 %shl4800, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %add4801, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4807

do.body4807:                                      ; preds = %do.body4752, %do.body4776, %if.end
  %dict.sroa.36.67 = phi i64 [ %dict.sroa.36.66, %do.body4752 ], [ %dict.sroa.36.66, %do.body4776 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.67 = phi i64 [ %dict.sroa.12.66, %do.body4752 ], [ %dict.sroa.12.66, %do.body4776 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.65 = phi i32 [ %len.64, %do.body4752 ], [ %len.64, %do.body4776 ], [ %14, %if.end ], !dbg !456
  %rep0.75 = phi i32 [ %rep0.74, %do.body4752 ], [ %rep0.74, %do.body4776 ], [ %5, %if.end ], !dbg !573
  %rep1.65 = phi i32 [ %rep1.64, %do.body4752 ], [ %rep1.64, %do.body4776 ], [ %6, %if.end ], !dbg !574
  %rep2.65 = phi i32 [ %rep2.64, %do.body4752 ], [ %rep2.64, %do.body4776 ], [ %7, %if.end ], !dbg !575
  %rep3.65 = phi i32 [ %rep3.64, %do.body4752 ], [ %rep3.64, %do.body4776 ], [ %8, %if.end ], !dbg !576
  %state.65 = phi i32 [ %state.64, %do.body4752 ], [ %state.64, %do.body4776 ], [ %4, %if.end ], !dbg !456
  %probs.64 = phi ptr [ %probs.63, %do.body4752 ], [ %probs.63, %do.body4776 ], [ %10, %if.end ], !dbg !582
  %symbol.83 = phi i32 [ %shl4774, %do.body4752 ], [ %add4801, %do.body4776 ], [ %11, %if.end ], !dbg !456
  %limit.70 = phi i32 [ %limit.69, %do.body4752 ], [ %limit.69, %do.body4776 ], [ %12, %if.end ], !dbg !577
  %offset.76 = phi i32 [ %offset.75, %do.body4752 ], [ %offset.75, %do.body4776 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.132 = phi i64 [ %rc_in_pos.131, %do.body4752 ], [ %rc_in_pos.131, %do.body4776 ], [ %3, %if.end ], !dbg !456
  %pos_state.22 = phi i32 [ %pos_state.21, %do.body4752 ], [ %pos_state.21, %do.body4776 ], [ %conv17, %if.end ], !dbg !456
  %rc1.sroa.0.149 = phi i32 [ %mul4747, %do.body4752 ], [ %sub4778, %do.body4776 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.149 = phi i32 [ %rc1.sroa.500.148, %do.body4752 ], [ %sub4780, %do.body4776 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.67, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.67, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.149, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.149, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %pos_state.22, metadata !286, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.132, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.76, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.70, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.83, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.64, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.65, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.65, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.65, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.65, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.75, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4809 = icmp ult i32 %rc1.sroa.0.149, 16777216, !dbg !2129
  br i1 %cmp4809, label %if.then4811, label %do.end4828, !dbg !2133

if.then4811:                                      ; preds = %do.body4807
  %cmp4812 = icmp eq i64 %rc_in_pos.132, %in_size, !dbg !2134
  br i1 %cmp4812, label %if.then4814, label %if.end4816, !dbg !2137

if.then4814:                                      ; preds = %if.then4811
  store i32 61, ptr %sequence, align 8, !dbg !2138, !tbaa !548
  br label %out, !dbg !2138

if.end4816:                                       ; preds = %if.then4811
  %shl4818 = shl nuw i32 %rc1.sroa.0.149, 8, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %shl4818, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4820 = shl i32 %rc1.sroa.500.149, 8, !dbg !2137
  %inc4821 = add i64 %rc_in_pos.132, 1, !dbg !2137
  call void @llvm.dbg.value(metadata i64 %inc4821, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4822 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.132, !dbg !2137
  %272 = load i8, ptr %arrayidx4822, align 1, !dbg !2137, !tbaa !493
  %conv4823 = zext i8 %272 to i32, !dbg !2137
  %or4824 = or i32 %shl4820, %conv4823, !dbg !2137
  call void @llvm.dbg.value(metadata i32 %or4824, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4828, !dbg !2137

do.end4828:                                       ; preds = %if.end4816, %do.body4807
  %rc_in_pos.133 = phi i64 [ %inc4821, %if.end4816 ], [ %rc_in_pos.132, %do.body4807 ], !dbg !2095
  %rc1.sroa.0.150 = phi i32 [ %shl4818, %if.end4816 ], [ %rc1.sroa.0.149, %do.body4807 ], !dbg !2095
  %rc1.sroa.500.150 = phi i32 [ %or4824, %if.end4816 ], [ %rc1.sroa.500.149, %do.body4807 ], !dbg !2095
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.150, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.150, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.133, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4830 = lshr i32 %rc1.sroa.0.150, 11, !dbg !2140
  %idxprom4833 = zext i32 %pos_state.22 to i64, !dbg !2140
  %idxprom4835 = zext i32 %symbol.83 to i64, !dbg !2140
  %arrayidx4836 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 3, i64 %idxprom4833, i64 %idxprom4835, !dbg !2140
  %273 = load i16, ptr %arrayidx4836, align 2, !dbg !2140, !tbaa !597
  %conv4837 = zext i16 %273 to i32, !dbg !2140
  %mul4838 = mul i32 %shr4830, %conv4837, !dbg !2140
  call void @llvm.dbg.value(metadata i32 %mul4838, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4840 = icmp ult i32 %rc1.sroa.500.150, %mul4838, !dbg !2141
  br i1 %cmp4840, label %do.body4843, label %do.body4867, !dbg !2140

do.body4843:                                      ; preds = %do.end4828
  call void @llvm.dbg.value(metadata i32 %mul4838, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4852 = sub nsw i32 2048, %conv4837, !dbg !2143
  %shr4853 = lshr i32 %sub4852, 5, !dbg !2143
  %274 = trunc i32 %shr4853 to i16, !dbg !2143
  %conv4862 = add i16 %273, %274, !dbg !2143
  store i16 %conv4862, ptr %arrayidx4836, align 2, !dbg !2143, !tbaa !597
  %shl4865 = shl i32 %symbol.83, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %shl4865, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end4895, !dbg !2146

do.body4867:                                      ; preds = %do.end4828
  %sub4869 = sub i32 %rc1.sroa.0.150, %mul4838, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %sub4869, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4871 = sub i32 %rc1.sroa.500.150, %mul4838, !dbg !2147
  call void @llvm.dbg.value(metadata i32 %sub4871, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %275 = lshr i16 %273, 5, !dbg !2147
  %sub4887 = sub i16 %273, %275, !dbg !2147
  store i16 %sub4887, ptr %arrayidx4836, align 2, !dbg !2147, !tbaa !597
  %shl4891 = shl i32 %symbol.83, 1, !dbg !2150
  %add4892 = or i32 %shl4891, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %add4892, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end4895

do.end4895:                                       ; preds = %do.body4867, %do.body4843
  %symbol.84 = phi i32 [ %shl4865, %do.body4843 ], [ %add4892, %do.body4867 ], !dbg !2151
  %rc1.sroa.0.151 = phi i32 [ %mul4838, %do.body4843 ], [ %sub4869, %do.body4867 ], !dbg !2151
  %rc1.sroa.500.151 = phi i32 [ %rc1.sroa.500.150, %do.body4843 ], [ %sub4871, %do.body4867 ], !dbg !2152
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.151, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.151, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.84, metadata !280, metadata !DIExpression()), !dbg !456
  %add4898 = add i32 %symbol.84, 2, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %add4898, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb5573, !dbg !2153

do.body4900:                                      ; preds = %do.end4598
  %sub4902 = sub i32 %rc1.sroa.0.144, %mul4604, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %sub4902, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4904 = sub i32 %rc1.sroa.500.144, %mul4604, !dbg !2154
  call void @llvm.dbg.value(metadata i32 %sub4904, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %276 = lshr i16 %262, 5, !dbg !2154
  %sub4912 = sub i16 %262, %276, !dbg !2154
  store i16 %sub4912, ptr %choice24602, align 2, !dbg !2154, !tbaa !2078
  br label %do.body4918, !dbg !2154

do.body4918:                                      ; preds = %if.end, %do.body4900
  %dict.sroa.36.68 = phi i64 [ %dict.sroa.36.64, %do.body4900 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.68 = phi i64 [ %dict.sroa.12.64, %do.body4900 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.66 = phi i32 [ %len.62, %do.body4900 ], [ %14, %if.end ], !dbg !456
  %rep0.76 = phi i32 [ %rep0.72, %do.body4900 ], [ %5, %if.end ], !dbg !573
  %rep1.66 = phi i32 [ %rep1.62, %do.body4900 ], [ %6, %if.end ], !dbg !574
  %rep2.66 = phi i32 [ %rep2.62, %do.body4900 ], [ %7, %if.end ], !dbg !575
  %rep3.66 = phi i32 [ %rep3.62, %do.body4900 ], [ %8, %if.end ], !dbg !576
  %state.66 = phi i32 [ %state.62, %do.body4900 ], [ %4, %if.end ], !dbg !456
  %probs.65 = phi ptr [ %probs.61, %do.body4900 ], [ %10, %if.end ], !dbg !582
  %symbol.85 = phi i32 [ %symbol.80, %do.body4900 ], [ %11, %if.end ], !dbg !456
  %limit.71 = phi i32 [ %limit.67, %do.body4900 ], [ %12, %if.end ], !dbg !577
  %offset.77 = phi i32 [ %offset.73, %do.body4900 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.134 = phi i64 [ %rc_in_pos.127, %do.body4900 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.152 = phi i32 [ %sub4902, %do.body4900 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.152 = phi i32 [ %sub4904, %do.body4900 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.68, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.68, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.152, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.152, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.134, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.77, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.71, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.85, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.65, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.66, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.66, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.66, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.66, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.76, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp4920 = icmp ult i32 %rc1.sroa.0.152, 16777216, !dbg !2157
  br i1 %cmp4920, label %if.then4922, label %do.end4939, !dbg !2161

if.then4922:                                      ; preds = %do.body4918
  %cmp4923 = icmp eq i64 %rc_in_pos.134, %in_size, !dbg !2162
  br i1 %cmp4923, label %if.then4925, label %if.end4927, !dbg !2165

if.then4925:                                      ; preds = %if.then4922
  store i32 62, ptr %sequence, align 8, !dbg !2166, !tbaa !548
  br label %out, !dbg !2166

if.end4927:                                       ; preds = %if.then4922
  %shl4929 = shl nuw i32 %rc1.sroa.0.152, 8, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %shl4929, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl4931 = shl i32 %rc1.sroa.500.152, 8, !dbg !2165
  %inc4932 = add i64 %rc_in_pos.134, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %inc4932, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx4933 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.134, !dbg !2165
  %277 = load i8, ptr %arrayidx4933, align 1, !dbg !2165, !tbaa !493
  %conv4934 = zext i8 %277 to i32, !dbg !2165
  %or4935 = or i32 %shl4931, %conv4934, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %or4935, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end4939, !dbg !2165

do.end4939:                                       ; preds = %if.end4927, %do.body4918
  %rc_in_pos.135 = phi i64 [ %inc4932, %if.end4927 ], [ %rc_in_pos.134, %do.body4918 ], !dbg !2076
  %rc1.sroa.0.153 = phi i32 [ %shl4929, %if.end4927 ], [ %rc1.sroa.0.152, %do.body4918 ], !dbg !2168
  %rc1.sroa.500.153 = phi i32 [ %or4935, %if.end4927 ], [ %rc1.sroa.500.152, %do.body4918 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.153, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.153, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.135, metadata !270, metadata !DIExpression()), !dbg !456
  %shr4941 = lshr i32 %rc1.sroa.0.153, 11, !dbg !2169
  %idxprom4944 = zext i32 %symbol.85 to i64, !dbg !2169
  %arrayidx4945 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom4944, !dbg !2169
  %278 = load i16, ptr %arrayidx4945, align 2, !dbg !2169, !tbaa !597
  %conv4946 = zext i16 %278 to i32, !dbg !2169
  %mul4947 = mul i32 %shr4941, %conv4946, !dbg !2169
  call void @llvm.dbg.value(metadata i32 %mul4947, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp4949 = icmp ult i32 %rc1.sroa.500.153, %mul4947, !dbg !2170
  br i1 %cmp4949, label %do.body4952, label %do.body4972, !dbg !2169

do.body4952:                                      ; preds = %do.end4939
  call void @llvm.dbg.value(metadata i32 %mul4947, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4959 = sub nsw i32 2048, %conv4946, !dbg !2172
  %shr4960 = lshr i32 %sub4959, 5, !dbg !2172
  %279 = trunc i32 %shr4960 to i16, !dbg !2172
  %conv4967 = add i16 %278, %279, !dbg !2172
  store i16 %conv4967, ptr %arrayidx4945, align 2, !dbg !2172, !tbaa !597
  %shl4970 = shl i32 %symbol.85, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %shl4970, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4999, !dbg !2175

do.body4972:                                      ; preds = %do.end4939
  %sub4974 = sub i32 %rc1.sroa.0.153, %mul4947, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %sub4974, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub4976 = sub i32 %rc1.sroa.500.153, %mul4947, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %sub4976, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %280 = lshr i16 %278, 5, !dbg !2176
  %sub4988 = sub i16 %278, %280, !dbg !2176
  store i16 %sub4988, ptr %arrayidx4945, align 2, !dbg !2176, !tbaa !597
  %shl4992 = shl i32 %symbol.85, 1, !dbg !2179
  %add4993 = or i32 %shl4992, 1, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %add4993, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body4999

do.body4999:                                      ; preds = %do.body4952, %do.body4972, %if.end
  %dict.sroa.36.69 = phi i64 [ %dict.sroa.36.68, %do.body4952 ], [ %dict.sroa.36.68, %do.body4972 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.69 = phi i64 [ %dict.sroa.12.68, %do.body4952 ], [ %dict.sroa.12.68, %do.body4972 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.67 = phi i32 [ %len.66, %do.body4952 ], [ %len.66, %do.body4972 ], [ %14, %if.end ], !dbg !456
  %rep0.77 = phi i32 [ %rep0.76, %do.body4952 ], [ %rep0.76, %do.body4972 ], [ %5, %if.end ], !dbg !573
  %rep1.67 = phi i32 [ %rep1.66, %do.body4952 ], [ %rep1.66, %do.body4972 ], [ %6, %if.end ], !dbg !574
  %rep2.67 = phi i32 [ %rep2.66, %do.body4952 ], [ %rep2.66, %do.body4972 ], [ %7, %if.end ], !dbg !575
  %rep3.67 = phi i32 [ %rep3.66, %do.body4952 ], [ %rep3.66, %do.body4972 ], [ %8, %if.end ], !dbg !576
  %state.67 = phi i32 [ %state.66, %do.body4952 ], [ %state.66, %do.body4972 ], [ %4, %if.end ], !dbg !456
  %probs.66 = phi ptr [ %probs.65, %do.body4952 ], [ %probs.65, %do.body4972 ], [ %10, %if.end ], !dbg !582
  %symbol.86 = phi i32 [ %shl4970, %do.body4952 ], [ %add4993, %do.body4972 ], [ %11, %if.end ], !dbg !456
  %limit.72 = phi i32 [ %limit.71, %do.body4952 ], [ %limit.71, %do.body4972 ], [ %12, %if.end ], !dbg !577
  %offset.78 = phi i32 [ %offset.77, %do.body4952 ], [ %offset.77, %do.body4972 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.136 = phi i64 [ %rc_in_pos.135, %do.body4952 ], [ %rc_in_pos.135, %do.body4972 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.154 = phi i32 [ %mul4947, %do.body4952 ], [ %sub4974, %do.body4972 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.154 = phi i32 [ %rc1.sroa.500.153, %do.body4952 ], [ %sub4976, %do.body4972 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.69, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.69, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.154, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.154, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.136, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.78, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.72, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.86, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.66, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.67, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.67, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.67, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.67, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.77, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5001 = icmp ult i32 %rc1.sroa.0.154, 16777216, !dbg !2180
  br i1 %cmp5001, label %if.then5003, label %do.end5020, !dbg !2184

if.then5003:                                      ; preds = %do.body4999
  %cmp5004 = icmp eq i64 %rc_in_pos.136, %in_size, !dbg !2185
  br i1 %cmp5004, label %if.then5006, label %if.end5008, !dbg !2188

if.then5006:                                      ; preds = %if.then5003
  store i32 63, ptr %sequence, align 8, !dbg !2189, !tbaa !548
  br label %out, !dbg !2189

if.end5008:                                       ; preds = %if.then5003
  %shl5010 = shl nuw i32 %rc1.sroa.0.154, 8, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %shl5010, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5012 = shl i32 %rc1.sroa.500.154, 8, !dbg !2188
  %inc5013 = add i64 %rc_in_pos.136, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %inc5013, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5014 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.136, !dbg !2188
  %281 = load i8, ptr %arrayidx5014, align 1, !dbg !2188, !tbaa !493
  %conv5015 = zext i8 %281 to i32, !dbg !2188
  %or5016 = or i32 %shl5012, %conv5015, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %or5016, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5020, !dbg !2188

do.end5020:                                       ; preds = %if.end5008, %do.body4999
  %rc_in_pos.137 = phi i64 [ %inc5013, %if.end5008 ], [ %rc_in_pos.136, %do.body4999 ], !dbg !2168
  %rc1.sroa.0.155 = phi i32 [ %shl5010, %if.end5008 ], [ %rc1.sroa.0.154, %do.body4999 ], !dbg !2168
  %rc1.sroa.500.155 = phi i32 [ %or5016, %if.end5008 ], [ %rc1.sroa.500.154, %do.body4999 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.155, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.155, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.137, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5022 = lshr i32 %rc1.sroa.0.155, 11, !dbg !2191
  %idxprom5025 = zext i32 %symbol.86 to i64, !dbg !2191
  %arrayidx5026 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5025, !dbg !2191
  %282 = load i16, ptr %arrayidx5026, align 2, !dbg !2191, !tbaa !597
  %conv5027 = zext i16 %282 to i32, !dbg !2191
  %mul5028 = mul i32 %shr5022, %conv5027, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %mul5028, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5030 = icmp ult i32 %rc1.sroa.500.155, %mul5028, !dbg !2192
  br i1 %cmp5030, label %do.body5033, label %do.body5053, !dbg !2191

do.body5033:                                      ; preds = %do.end5020
  call void @llvm.dbg.value(metadata i32 %mul5028, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5040 = sub nsw i32 2048, %conv5027, !dbg !2194
  %shr5041 = lshr i32 %sub5040, 5, !dbg !2194
  %283 = trunc i32 %shr5041 to i16, !dbg !2194
  %conv5048 = add i16 %282, %283, !dbg !2194
  store i16 %conv5048, ptr %arrayidx5026, align 2, !dbg !2194, !tbaa !597
  %shl5051 = shl i32 %symbol.86, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %shl5051, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5080, !dbg !2197

do.body5053:                                      ; preds = %do.end5020
  %sub5055 = sub i32 %rc1.sroa.0.155, %mul5028, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %sub5055, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5057 = sub i32 %rc1.sroa.500.155, %mul5028, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %sub5057, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %284 = lshr i16 %282, 5, !dbg !2198
  %sub5069 = sub i16 %282, %284, !dbg !2198
  store i16 %sub5069, ptr %arrayidx5026, align 2, !dbg !2198, !tbaa !597
  %shl5073 = shl i32 %symbol.86, 1, !dbg !2201
  %add5074 = or i32 %shl5073, 1, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %add5074, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5080

do.body5080:                                      ; preds = %do.body5033, %do.body5053, %if.end
  %dict.sroa.36.70 = phi i64 [ %dict.sroa.36.69, %do.body5033 ], [ %dict.sroa.36.69, %do.body5053 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.70 = phi i64 [ %dict.sroa.12.69, %do.body5033 ], [ %dict.sroa.12.69, %do.body5053 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.68 = phi i32 [ %len.67, %do.body5033 ], [ %len.67, %do.body5053 ], [ %14, %if.end ], !dbg !456
  %rep0.78 = phi i32 [ %rep0.77, %do.body5033 ], [ %rep0.77, %do.body5053 ], [ %5, %if.end ], !dbg !573
  %rep1.68 = phi i32 [ %rep1.67, %do.body5033 ], [ %rep1.67, %do.body5053 ], [ %6, %if.end ], !dbg !574
  %rep2.68 = phi i32 [ %rep2.67, %do.body5033 ], [ %rep2.67, %do.body5053 ], [ %7, %if.end ], !dbg !575
  %rep3.68 = phi i32 [ %rep3.67, %do.body5033 ], [ %rep3.67, %do.body5053 ], [ %8, %if.end ], !dbg !576
  %state.68 = phi i32 [ %state.67, %do.body5033 ], [ %state.67, %do.body5053 ], [ %4, %if.end ], !dbg !456
  %probs.67 = phi ptr [ %probs.66, %do.body5033 ], [ %probs.66, %do.body5053 ], [ %10, %if.end ], !dbg !582
  %symbol.87 = phi i32 [ %shl5051, %do.body5033 ], [ %add5074, %do.body5053 ], [ %11, %if.end ], !dbg !456
  %limit.73 = phi i32 [ %limit.72, %do.body5033 ], [ %limit.72, %do.body5053 ], [ %12, %if.end ], !dbg !577
  %offset.79 = phi i32 [ %offset.78, %do.body5033 ], [ %offset.78, %do.body5053 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.138 = phi i64 [ %rc_in_pos.137, %do.body5033 ], [ %rc_in_pos.137, %do.body5053 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.156 = phi i32 [ %mul5028, %do.body5033 ], [ %sub5055, %do.body5053 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.156 = phi i32 [ %rc1.sroa.500.155, %do.body5033 ], [ %sub5057, %do.body5053 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.70, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.70, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.156, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.156, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.138, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.79, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.73, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.87, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.67, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.68, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.68, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.68, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.68, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.78, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5082 = icmp ult i32 %rc1.sroa.0.156, 16777216, !dbg !2202
  br i1 %cmp5082, label %if.then5084, label %do.end5101, !dbg !2206

if.then5084:                                      ; preds = %do.body5080
  %cmp5085 = icmp eq i64 %rc_in_pos.138, %in_size, !dbg !2207
  br i1 %cmp5085, label %if.then5087, label %if.end5089, !dbg !2210

if.then5087:                                      ; preds = %if.then5084
  store i32 64, ptr %sequence, align 8, !dbg !2211, !tbaa !548
  br label %out, !dbg !2211

if.end5089:                                       ; preds = %if.then5084
  %shl5091 = shl nuw i32 %rc1.sroa.0.156, 8, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %shl5091, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5093 = shl i32 %rc1.sroa.500.156, 8, !dbg !2210
  %inc5094 = add i64 %rc_in_pos.138, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %inc5094, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5095 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.138, !dbg !2210
  %285 = load i8, ptr %arrayidx5095, align 1, !dbg !2210, !tbaa !493
  %conv5096 = zext i8 %285 to i32, !dbg !2210
  %or5097 = or i32 %shl5093, %conv5096, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %or5097, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5101, !dbg !2210

do.end5101:                                       ; preds = %if.end5089, %do.body5080
  %rc_in_pos.139 = phi i64 [ %inc5094, %if.end5089 ], [ %rc_in_pos.138, %do.body5080 ], !dbg !2168
  %rc1.sroa.0.157 = phi i32 [ %shl5091, %if.end5089 ], [ %rc1.sroa.0.156, %do.body5080 ], !dbg !2168
  %rc1.sroa.500.157 = phi i32 [ %or5097, %if.end5089 ], [ %rc1.sroa.500.156, %do.body5080 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.157, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.157, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.139, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5103 = lshr i32 %rc1.sroa.0.157, 11, !dbg !2213
  %idxprom5106 = zext i32 %symbol.87 to i64, !dbg !2213
  %arrayidx5107 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5106, !dbg !2213
  %286 = load i16, ptr %arrayidx5107, align 2, !dbg !2213, !tbaa !597
  %conv5108 = zext i16 %286 to i32, !dbg !2213
  %mul5109 = mul i32 %shr5103, %conv5108, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %mul5109, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5111 = icmp ult i32 %rc1.sroa.500.157, %mul5109, !dbg !2214
  br i1 %cmp5111, label %do.body5114, label %do.body5134, !dbg !2213

do.body5114:                                      ; preds = %do.end5101
  call void @llvm.dbg.value(metadata i32 %mul5109, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5121 = sub nsw i32 2048, %conv5108, !dbg !2216
  %shr5122 = lshr i32 %sub5121, 5, !dbg !2216
  %287 = trunc i32 %shr5122 to i16, !dbg !2216
  %conv5129 = add i16 %286, %287, !dbg !2216
  store i16 %conv5129, ptr %arrayidx5107, align 2, !dbg !2216, !tbaa !597
  %shl5132 = shl i32 %symbol.87, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %shl5132, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5161, !dbg !2219

do.body5134:                                      ; preds = %do.end5101
  %sub5136 = sub i32 %rc1.sroa.0.157, %mul5109, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %sub5136, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5138 = sub i32 %rc1.sroa.500.157, %mul5109, !dbg !2220
  call void @llvm.dbg.value(metadata i32 %sub5138, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %288 = lshr i16 %286, 5, !dbg !2220
  %sub5150 = sub i16 %286, %288, !dbg !2220
  store i16 %sub5150, ptr %arrayidx5107, align 2, !dbg !2220, !tbaa !597
  %shl5154 = shl i32 %symbol.87, 1, !dbg !2223
  %add5155 = or i32 %shl5154, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %add5155, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5161

do.body5161:                                      ; preds = %do.body5114, %do.body5134, %if.end
  %dict.sroa.36.71 = phi i64 [ %dict.sroa.36.70, %do.body5114 ], [ %dict.sroa.36.70, %do.body5134 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.71 = phi i64 [ %dict.sroa.12.70, %do.body5114 ], [ %dict.sroa.12.70, %do.body5134 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.69 = phi i32 [ %len.68, %do.body5114 ], [ %len.68, %do.body5134 ], [ %14, %if.end ], !dbg !456
  %rep0.79 = phi i32 [ %rep0.78, %do.body5114 ], [ %rep0.78, %do.body5134 ], [ %5, %if.end ], !dbg !573
  %rep1.69 = phi i32 [ %rep1.68, %do.body5114 ], [ %rep1.68, %do.body5134 ], [ %6, %if.end ], !dbg !574
  %rep2.69 = phi i32 [ %rep2.68, %do.body5114 ], [ %rep2.68, %do.body5134 ], [ %7, %if.end ], !dbg !575
  %rep3.69 = phi i32 [ %rep3.68, %do.body5114 ], [ %rep3.68, %do.body5134 ], [ %8, %if.end ], !dbg !576
  %state.69 = phi i32 [ %state.68, %do.body5114 ], [ %state.68, %do.body5134 ], [ %4, %if.end ], !dbg !456
  %probs.68 = phi ptr [ %probs.67, %do.body5114 ], [ %probs.67, %do.body5134 ], [ %10, %if.end ], !dbg !582
  %symbol.88 = phi i32 [ %shl5132, %do.body5114 ], [ %add5155, %do.body5134 ], [ %11, %if.end ], !dbg !456
  %limit.74 = phi i32 [ %limit.73, %do.body5114 ], [ %limit.73, %do.body5134 ], [ %12, %if.end ], !dbg !577
  %offset.80 = phi i32 [ %offset.79, %do.body5114 ], [ %offset.79, %do.body5134 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.140 = phi i64 [ %rc_in_pos.139, %do.body5114 ], [ %rc_in_pos.139, %do.body5134 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.158 = phi i32 [ %mul5109, %do.body5114 ], [ %sub5136, %do.body5134 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.158 = phi i32 [ %rc1.sroa.500.157, %do.body5114 ], [ %sub5138, %do.body5134 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.71, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.71, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.158, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.158, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.140, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.80, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.74, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.88, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.68, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.69, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.69, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.69, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.69, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.79, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5163 = icmp ult i32 %rc1.sroa.0.158, 16777216, !dbg !2224
  br i1 %cmp5163, label %if.then5165, label %do.end5182, !dbg !2228

if.then5165:                                      ; preds = %do.body5161
  %cmp5166 = icmp eq i64 %rc_in_pos.140, %in_size, !dbg !2229
  br i1 %cmp5166, label %if.then5168, label %if.end5170, !dbg !2232

if.then5168:                                      ; preds = %if.then5165
  store i32 65, ptr %sequence, align 8, !dbg !2233, !tbaa !548
  br label %out, !dbg !2233

if.end5170:                                       ; preds = %if.then5165
  %shl5172 = shl nuw i32 %rc1.sroa.0.158, 8, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %shl5172, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5174 = shl i32 %rc1.sroa.500.158, 8, !dbg !2232
  %inc5175 = add i64 %rc_in_pos.140, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %inc5175, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5176 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.140, !dbg !2232
  %289 = load i8, ptr %arrayidx5176, align 1, !dbg !2232, !tbaa !493
  %conv5177 = zext i8 %289 to i32, !dbg !2232
  %or5178 = or i32 %shl5174, %conv5177, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %or5178, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5182, !dbg !2232

do.end5182:                                       ; preds = %if.end5170, %do.body5161
  %rc_in_pos.141 = phi i64 [ %inc5175, %if.end5170 ], [ %rc_in_pos.140, %do.body5161 ], !dbg !2168
  %rc1.sroa.0.159 = phi i32 [ %shl5172, %if.end5170 ], [ %rc1.sroa.0.158, %do.body5161 ], !dbg !2168
  %rc1.sroa.500.159 = phi i32 [ %or5178, %if.end5170 ], [ %rc1.sroa.500.158, %do.body5161 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.159, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.159, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.141, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5184 = lshr i32 %rc1.sroa.0.159, 11, !dbg !2235
  %idxprom5187 = zext i32 %symbol.88 to i64, !dbg !2235
  %arrayidx5188 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5187, !dbg !2235
  %290 = load i16, ptr %arrayidx5188, align 2, !dbg !2235, !tbaa !597
  %conv5189 = zext i16 %290 to i32, !dbg !2235
  %mul5190 = mul i32 %shr5184, %conv5189, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %mul5190, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5192 = icmp ult i32 %rc1.sroa.500.159, %mul5190, !dbg !2236
  br i1 %cmp5192, label %do.body5195, label %do.body5215, !dbg !2235

do.body5195:                                      ; preds = %do.end5182
  call void @llvm.dbg.value(metadata i32 %mul5190, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5202 = sub nsw i32 2048, %conv5189, !dbg !2238
  %shr5203 = lshr i32 %sub5202, 5, !dbg !2238
  %291 = trunc i32 %shr5203 to i16, !dbg !2238
  %conv5210 = add i16 %290, %291, !dbg !2238
  store i16 %conv5210, ptr %arrayidx5188, align 2, !dbg !2238, !tbaa !597
  %shl5213 = shl i32 %symbol.88, 1, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %shl5213, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5242, !dbg !2241

do.body5215:                                      ; preds = %do.end5182
  %sub5217 = sub i32 %rc1.sroa.0.159, %mul5190, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %sub5217, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5219 = sub i32 %rc1.sroa.500.159, %mul5190, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %sub5219, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %292 = lshr i16 %290, 5, !dbg !2242
  %sub5231 = sub i16 %290, %292, !dbg !2242
  store i16 %sub5231, ptr %arrayidx5188, align 2, !dbg !2242, !tbaa !597
  %shl5235 = shl i32 %symbol.88, 1, !dbg !2245
  %add5236 = or i32 %shl5235, 1, !dbg !2245
  call void @llvm.dbg.value(metadata i32 %add5236, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5242

do.body5242:                                      ; preds = %do.body5195, %do.body5215, %if.end
  %dict.sroa.36.72 = phi i64 [ %dict.sroa.36.71, %do.body5195 ], [ %dict.sroa.36.71, %do.body5215 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.72 = phi i64 [ %dict.sroa.12.71, %do.body5195 ], [ %dict.sroa.12.71, %do.body5215 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.70 = phi i32 [ %len.69, %do.body5195 ], [ %len.69, %do.body5215 ], [ %14, %if.end ], !dbg !456
  %rep0.80 = phi i32 [ %rep0.79, %do.body5195 ], [ %rep0.79, %do.body5215 ], [ %5, %if.end ], !dbg !573
  %rep1.70 = phi i32 [ %rep1.69, %do.body5195 ], [ %rep1.69, %do.body5215 ], [ %6, %if.end ], !dbg !574
  %rep2.70 = phi i32 [ %rep2.69, %do.body5195 ], [ %rep2.69, %do.body5215 ], [ %7, %if.end ], !dbg !575
  %rep3.70 = phi i32 [ %rep3.69, %do.body5195 ], [ %rep3.69, %do.body5215 ], [ %8, %if.end ], !dbg !576
  %state.70 = phi i32 [ %state.69, %do.body5195 ], [ %state.69, %do.body5215 ], [ %4, %if.end ], !dbg !456
  %probs.69 = phi ptr [ %probs.68, %do.body5195 ], [ %probs.68, %do.body5215 ], [ %10, %if.end ], !dbg !582
  %symbol.89 = phi i32 [ %shl5213, %do.body5195 ], [ %add5236, %do.body5215 ], [ %11, %if.end ], !dbg !456
  %limit.75 = phi i32 [ %limit.74, %do.body5195 ], [ %limit.74, %do.body5215 ], [ %12, %if.end ], !dbg !577
  %offset.81 = phi i32 [ %offset.80, %do.body5195 ], [ %offset.80, %do.body5215 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.142 = phi i64 [ %rc_in_pos.141, %do.body5195 ], [ %rc_in_pos.141, %do.body5215 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.160 = phi i32 [ %mul5190, %do.body5195 ], [ %sub5217, %do.body5215 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.160 = phi i32 [ %rc1.sroa.500.159, %do.body5195 ], [ %sub5219, %do.body5215 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.72, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.72, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.160, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.160, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.142, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.81, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.75, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.89, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.69, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.70, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.70, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.70, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.70, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.80, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5244 = icmp ult i32 %rc1.sroa.0.160, 16777216, !dbg !2246
  br i1 %cmp5244, label %if.then5246, label %do.end5263, !dbg !2250

if.then5246:                                      ; preds = %do.body5242
  %cmp5247 = icmp eq i64 %rc_in_pos.142, %in_size, !dbg !2251
  br i1 %cmp5247, label %if.then5249, label %if.end5251, !dbg !2254

if.then5249:                                      ; preds = %if.then5246
  store i32 66, ptr %sequence, align 8, !dbg !2255, !tbaa !548
  br label %out, !dbg !2255

if.end5251:                                       ; preds = %if.then5246
  %shl5253 = shl nuw i32 %rc1.sroa.0.160, 8, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %shl5253, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5255 = shl i32 %rc1.sroa.500.160, 8, !dbg !2254
  %inc5256 = add i64 %rc_in_pos.142, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %inc5256, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5257 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.142, !dbg !2254
  %293 = load i8, ptr %arrayidx5257, align 1, !dbg !2254, !tbaa !493
  %conv5258 = zext i8 %293 to i32, !dbg !2254
  %or5259 = or i32 %shl5255, %conv5258, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %or5259, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5263, !dbg !2254

do.end5263:                                       ; preds = %if.end5251, %do.body5242
  %rc_in_pos.143 = phi i64 [ %inc5256, %if.end5251 ], [ %rc_in_pos.142, %do.body5242 ], !dbg !2168
  %rc1.sroa.0.161 = phi i32 [ %shl5253, %if.end5251 ], [ %rc1.sroa.0.160, %do.body5242 ], !dbg !2168
  %rc1.sroa.500.161 = phi i32 [ %or5259, %if.end5251 ], [ %rc1.sroa.500.160, %do.body5242 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.161, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.161, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.143, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5265 = lshr i32 %rc1.sroa.0.161, 11, !dbg !2257
  %idxprom5268 = zext i32 %symbol.89 to i64, !dbg !2257
  %arrayidx5269 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5268, !dbg !2257
  %294 = load i16, ptr %arrayidx5269, align 2, !dbg !2257, !tbaa !597
  %conv5270 = zext i16 %294 to i32, !dbg !2257
  %mul5271 = mul i32 %shr5265, %conv5270, !dbg !2257
  call void @llvm.dbg.value(metadata i32 %mul5271, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5273 = icmp ult i32 %rc1.sroa.500.161, %mul5271, !dbg !2258
  br i1 %cmp5273, label %do.body5276, label %do.body5296, !dbg !2257

do.body5276:                                      ; preds = %do.end5263
  call void @llvm.dbg.value(metadata i32 %mul5271, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5283 = sub nsw i32 2048, %conv5270, !dbg !2260
  %shr5284 = lshr i32 %sub5283, 5, !dbg !2260
  %295 = trunc i32 %shr5284 to i16, !dbg !2260
  %conv5291 = add i16 %294, %295, !dbg !2260
  store i16 %conv5291, ptr %arrayidx5269, align 2, !dbg !2260, !tbaa !597
  %shl5294 = shl i32 %symbol.89, 1, !dbg !2263
  call void @llvm.dbg.value(metadata i32 %shl5294, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5323, !dbg !2263

do.body5296:                                      ; preds = %do.end5263
  %sub5298 = sub i32 %rc1.sroa.0.161, %mul5271, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %sub5298, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5300 = sub i32 %rc1.sroa.500.161, %mul5271, !dbg !2264
  call void @llvm.dbg.value(metadata i32 %sub5300, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %296 = lshr i16 %294, 5, !dbg !2264
  %sub5312 = sub i16 %294, %296, !dbg !2264
  store i16 %sub5312, ptr %arrayidx5269, align 2, !dbg !2264, !tbaa !597
  %shl5316 = shl i32 %symbol.89, 1, !dbg !2267
  %add5317 = or i32 %shl5316, 1, !dbg !2267
  call void @llvm.dbg.value(metadata i32 %add5317, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5323

do.body5323:                                      ; preds = %do.body5276, %do.body5296, %if.end
  %dict.sroa.36.73 = phi i64 [ %dict.sroa.36.72, %do.body5276 ], [ %dict.sroa.36.72, %do.body5296 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.73 = phi i64 [ %dict.sroa.12.72, %do.body5276 ], [ %dict.sroa.12.72, %do.body5296 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.71 = phi i32 [ %len.70, %do.body5276 ], [ %len.70, %do.body5296 ], [ %14, %if.end ], !dbg !456
  %rep0.81 = phi i32 [ %rep0.80, %do.body5276 ], [ %rep0.80, %do.body5296 ], [ %5, %if.end ], !dbg !573
  %rep1.71 = phi i32 [ %rep1.70, %do.body5276 ], [ %rep1.70, %do.body5296 ], [ %6, %if.end ], !dbg !574
  %rep2.71 = phi i32 [ %rep2.70, %do.body5276 ], [ %rep2.70, %do.body5296 ], [ %7, %if.end ], !dbg !575
  %rep3.71 = phi i32 [ %rep3.70, %do.body5276 ], [ %rep3.70, %do.body5296 ], [ %8, %if.end ], !dbg !576
  %state.71 = phi i32 [ %state.70, %do.body5276 ], [ %state.70, %do.body5296 ], [ %4, %if.end ], !dbg !456
  %probs.70 = phi ptr [ %probs.69, %do.body5276 ], [ %probs.69, %do.body5296 ], [ %10, %if.end ], !dbg !582
  %symbol.90 = phi i32 [ %shl5294, %do.body5276 ], [ %add5317, %do.body5296 ], [ %11, %if.end ], !dbg !456
  %limit.76 = phi i32 [ %limit.75, %do.body5276 ], [ %limit.75, %do.body5296 ], [ %12, %if.end ], !dbg !577
  %offset.82 = phi i32 [ %offset.81, %do.body5276 ], [ %offset.81, %do.body5296 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.144 = phi i64 [ %rc_in_pos.143, %do.body5276 ], [ %rc_in_pos.143, %do.body5296 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.162 = phi i32 [ %mul5271, %do.body5276 ], [ %sub5298, %do.body5296 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.162 = phi i32 [ %rc1.sroa.500.161, %do.body5276 ], [ %sub5300, %do.body5296 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.73, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.73, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.162, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.162, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.144, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.82, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.76, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.90, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.70, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.71, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.71, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.71, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.71, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.81, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5325 = icmp ult i32 %rc1.sroa.0.162, 16777216, !dbg !2268
  br i1 %cmp5325, label %if.then5327, label %do.end5344, !dbg !2272

if.then5327:                                      ; preds = %do.body5323
  %cmp5328 = icmp eq i64 %rc_in_pos.144, %in_size, !dbg !2273
  br i1 %cmp5328, label %if.then5330, label %if.end5332, !dbg !2276

if.then5330:                                      ; preds = %if.then5327
  store i32 67, ptr %sequence, align 8, !dbg !2277, !tbaa !548
  br label %out, !dbg !2277

if.end5332:                                       ; preds = %if.then5327
  %shl5334 = shl nuw i32 %rc1.sroa.0.162, 8, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %shl5334, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5336 = shl i32 %rc1.sroa.500.162, 8, !dbg !2276
  %inc5337 = add i64 %rc_in_pos.144, 1, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %inc5337, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5338 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.144, !dbg !2276
  %297 = load i8, ptr %arrayidx5338, align 1, !dbg !2276, !tbaa !493
  %conv5339 = zext i8 %297 to i32, !dbg !2276
  %or5340 = or i32 %shl5336, %conv5339, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %or5340, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5344, !dbg !2276

do.end5344:                                       ; preds = %if.end5332, %do.body5323
  %rc_in_pos.145 = phi i64 [ %inc5337, %if.end5332 ], [ %rc_in_pos.144, %do.body5323 ], !dbg !2168
  %rc1.sroa.0.163 = phi i32 [ %shl5334, %if.end5332 ], [ %rc1.sroa.0.162, %do.body5323 ], !dbg !2168
  %rc1.sroa.500.163 = phi i32 [ %or5340, %if.end5332 ], [ %rc1.sroa.500.162, %do.body5323 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.163, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.163, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.145, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5346 = lshr i32 %rc1.sroa.0.163, 11, !dbg !2279
  %idxprom5349 = zext i32 %symbol.90 to i64, !dbg !2279
  %arrayidx5350 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5349, !dbg !2279
  %298 = load i16, ptr %arrayidx5350, align 2, !dbg !2279, !tbaa !597
  %conv5351 = zext i16 %298 to i32, !dbg !2279
  %mul5352 = mul i32 %shr5346, %conv5351, !dbg !2279
  call void @llvm.dbg.value(metadata i32 %mul5352, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5354 = icmp ult i32 %rc1.sroa.500.163, %mul5352, !dbg !2280
  br i1 %cmp5354, label %do.body5357, label %do.body5377, !dbg !2279

do.body5357:                                      ; preds = %do.end5344
  call void @llvm.dbg.value(metadata i32 %mul5352, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5364 = sub nsw i32 2048, %conv5351, !dbg !2282
  %shr5365 = lshr i32 %sub5364, 5, !dbg !2282
  %299 = trunc i32 %shr5365 to i16, !dbg !2282
  %conv5372 = add i16 %298, %299, !dbg !2282
  store i16 %conv5372, ptr %arrayidx5350, align 2, !dbg !2282, !tbaa !597
  %shl5375 = shl i32 %symbol.90, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %shl5375, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5404, !dbg !2285

do.body5377:                                      ; preds = %do.end5344
  %sub5379 = sub i32 %rc1.sroa.0.163, %mul5352, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %sub5379, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5381 = sub i32 %rc1.sroa.500.163, %mul5352, !dbg !2286
  call void @llvm.dbg.value(metadata i32 %sub5381, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %300 = lshr i16 %298, 5, !dbg !2286
  %sub5393 = sub i16 %298, %300, !dbg !2286
  store i16 %sub5393, ptr %arrayidx5350, align 2, !dbg !2286, !tbaa !597
  %shl5397 = shl i32 %symbol.90, 1, !dbg !2289
  %add5398 = or i32 %shl5397, 1, !dbg !2289
  call void @llvm.dbg.value(metadata i32 %add5398, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5404

do.body5404:                                      ; preds = %do.body5357, %do.body5377, %if.end
  %dict.sroa.36.74 = phi i64 [ %dict.sroa.36.73, %do.body5357 ], [ %dict.sroa.36.73, %do.body5377 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.74 = phi i64 [ %dict.sroa.12.73, %do.body5357 ], [ %dict.sroa.12.73, %do.body5377 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.72 = phi i32 [ %len.71, %do.body5357 ], [ %len.71, %do.body5377 ], [ %14, %if.end ], !dbg !456
  %rep0.82 = phi i32 [ %rep0.81, %do.body5357 ], [ %rep0.81, %do.body5377 ], [ %5, %if.end ], !dbg !573
  %rep1.72 = phi i32 [ %rep1.71, %do.body5357 ], [ %rep1.71, %do.body5377 ], [ %6, %if.end ], !dbg !574
  %rep2.72 = phi i32 [ %rep2.71, %do.body5357 ], [ %rep2.71, %do.body5377 ], [ %7, %if.end ], !dbg !575
  %rep3.72 = phi i32 [ %rep3.71, %do.body5357 ], [ %rep3.71, %do.body5377 ], [ %8, %if.end ], !dbg !576
  %state.72 = phi i32 [ %state.71, %do.body5357 ], [ %state.71, %do.body5377 ], [ %4, %if.end ], !dbg !456
  %probs.71 = phi ptr [ %probs.70, %do.body5357 ], [ %probs.70, %do.body5377 ], [ %10, %if.end ], !dbg !582
  %symbol.91 = phi i32 [ %shl5375, %do.body5357 ], [ %add5398, %do.body5377 ], [ %11, %if.end ], !dbg !456
  %limit.77 = phi i32 [ %limit.76, %do.body5357 ], [ %limit.76, %do.body5377 ], [ %12, %if.end ], !dbg !577
  %offset.83 = phi i32 [ %offset.82, %do.body5357 ], [ %offset.82, %do.body5377 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.146 = phi i64 [ %rc_in_pos.145, %do.body5357 ], [ %rc_in_pos.145, %do.body5377 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.164 = phi i32 [ %mul5352, %do.body5357 ], [ %sub5379, %do.body5377 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.164 = phi i32 [ %rc1.sroa.500.163, %do.body5357 ], [ %sub5381, %do.body5377 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.74, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.74, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.164, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.164, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.146, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.83, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.77, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.91, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.71, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.72, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.72, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.72, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.72, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.82, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5406 = icmp ult i32 %rc1.sroa.0.164, 16777216, !dbg !2290
  br i1 %cmp5406, label %if.then5408, label %do.end5425, !dbg !2294

if.then5408:                                      ; preds = %do.body5404
  %cmp5409 = icmp eq i64 %rc_in_pos.146, %in_size, !dbg !2295
  br i1 %cmp5409, label %if.then5411, label %if.end5413, !dbg !2298

if.then5411:                                      ; preds = %if.then5408
  store i32 68, ptr %sequence, align 8, !dbg !2299, !tbaa !548
  br label %out, !dbg !2299

if.end5413:                                       ; preds = %if.then5408
  %shl5415 = shl nuw i32 %rc1.sroa.0.164, 8, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %shl5415, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5417 = shl i32 %rc1.sroa.500.164, 8, !dbg !2298
  %inc5418 = add i64 %rc_in_pos.146, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %inc5418, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5419 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.146, !dbg !2298
  %301 = load i8, ptr %arrayidx5419, align 1, !dbg !2298, !tbaa !493
  %conv5420 = zext i8 %301 to i32, !dbg !2298
  %or5421 = or i32 %shl5417, %conv5420, !dbg !2298
  call void @llvm.dbg.value(metadata i32 %or5421, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5425, !dbg !2298

do.end5425:                                       ; preds = %if.end5413, %do.body5404
  %rc_in_pos.147 = phi i64 [ %inc5418, %if.end5413 ], [ %rc_in_pos.146, %do.body5404 ], !dbg !2168
  %rc1.sroa.0.165 = phi i32 [ %shl5415, %if.end5413 ], [ %rc1.sroa.0.164, %do.body5404 ], !dbg !2168
  %rc1.sroa.500.165 = phi i32 [ %or5421, %if.end5413 ], [ %rc1.sroa.500.164, %do.body5404 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.165, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.165, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.147, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5427 = lshr i32 %rc1.sroa.0.165, 11, !dbg !2301
  %idxprom5430 = zext i32 %symbol.91 to i64, !dbg !2301
  %arrayidx5431 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5430, !dbg !2301
  %302 = load i16, ptr %arrayidx5431, align 2, !dbg !2301, !tbaa !597
  %conv5432 = zext i16 %302 to i32, !dbg !2301
  %mul5433 = mul i32 %shr5427, %conv5432, !dbg !2301
  call void @llvm.dbg.value(metadata i32 %mul5433, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5435 = icmp ult i32 %rc1.sroa.500.165, %mul5433, !dbg !2302
  br i1 %cmp5435, label %do.body5438, label %do.body5458, !dbg !2301

do.body5438:                                      ; preds = %do.end5425
  call void @llvm.dbg.value(metadata i32 %mul5433, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5445 = sub nsw i32 2048, %conv5432, !dbg !2304
  %shr5446 = lshr i32 %sub5445, 5, !dbg !2304
  %303 = trunc i32 %shr5446 to i16, !dbg !2304
  %conv5453 = add i16 %302, %303, !dbg !2304
  store i16 %conv5453, ptr %arrayidx5431, align 2, !dbg !2304, !tbaa !597
  %shl5456 = shl i32 %symbol.91, 1, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %shl5456, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5485, !dbg !2307

do.body5458:                                      ; preds = %do.end5425
  %sub5460 = sub i32 %rc1.sroa.0.165, %mul5433, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %sub5460, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5462 = sub i32 %rc1.sroa.500.165, %mul5433, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %sub5462, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %304 = lshr i16 %302, 5, !dbg !2308
  %sub5474 = sub i16 %302, %304, !dbg !2308
  store i16 %sub5474, ptr %arrayidx5431, align 2, !dbg !2308, !tbaa !597
  %shl5478 = shl i32 %symbol.91, 1, !dbg !2311
  %add5479 = or i32 %shl5478, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %add5479, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.body5485

do.body5485:                                      ; preds = %do.body5438, %do.body5458, %if.end
  %dict.sroa.36.75 = phi i64 [ %dict.sroa.36.74, %do.body5438 ], [ %dict.sroa.36.74, %do.body5458 ], [ %dict.sroa.36.0.copyload, %if.end ], !dbg !456
  %dict.sroa.12.75 = phi i64 [ %dict.sroa.12.74, %do.body5438 ], [ %dict.sroa.12.74, %do.body5458 ], [ %dict.sroa.12.0.copyload, %if.end ], !dbg !456
  %len.73 = phi i32 [ %len.72, %do.body5438 ], [ %len.72, %do.body5458 ], [ %14, %if.end ], !dbg !456
  %rep0.83 = phi i32 [ %rep0.82, %do.body5438 ], [ %rep0.82, %do.body5458 ], [ %5, %if.end ], !dbg !573
  %rep1.73 = phi i32 [ %rep1.72, %do.body5438 ], [ %rep1.72, %do.body5458 ], [ %6, %if.end ], !dbg !574
  %rep2.73 = phi i32 [ %rep2.72, %do.body5438 ], [ %rep2.72, %do.body5458 ], [ %7, %if.end ], !dbg !575
  %rep3.73 = phi i32 [ %rep3.72, %do.body5438 ], [ %rep3.72, %do.body5458 ], [ %8, %if.end ], !dbg !576
  %state.73 = phi i32 [ %state.72, %do.body5438 ], [ %state.72, %do.body5458 ], [ %4, %if.end ], !dbg !456
  %probs.72 = phi ptr [ %probs.71, %do.body5438 ], [ %probs.71, %do.body5458 ], [ %10, %if.end ], !dbg !582
  %symbol.92 = phi i32 [ %shl5456, %do.body5438 ], [ %add5479, %do.body5458 ], [ %11, %if.end ], !dbg !456
  %limit.78 = phi i32 [ %limit.77, %do.body5438 ], [ %limit.77, %do.body5458 ], [ %12, %if.end ], !dbg !577
  %offset.84 = phi i32 [ %offset.83, %do.body5438 ], [ %offset.83, %do.body5458 ], [ %13, %if.end ], !dbg !578
  %rc_in_pos.148 = phi i64 [ %rc_in_pos.147, %do.body5438 ], [ %rc_in_pos.147, %do.body5458 ], [ %3, %if.end ], !dbg !456
  %rc1.sroa.0.166 = phi i32 [ %mul5433, %do.body5438 ], [ %sub5460, %do.body5458 ], [ %rc1.sroa.0.0.copyload, %if.end ], !dbg !456
  %rc1.sroa.500.166 = phi i32 [ %rc1.sroa.500.165, %do.body5438 ], [ %sub5462, %do.body5458 ], [ %rc1.sroa.500.0.copyload, %if.end ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.75, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.75, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.166, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.166, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.148, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.84, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.78, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.92, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.72, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.73, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.73, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.73, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.73, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.83, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5487 = icmp ult i32 %rc1.sroa.0.166, 16777216, !dbg !2312
  br i1 %cmp5487, label %if.then5489, label %do.end5506, !dbg !2316

if.then5489:                                      ; preds = %do.body5485
  %cmp5490 = icmp eq i64 %rc_in_pos.148, %in_size, !dbg !2317
  br i1 %cmp5490, label %if.then5492, label %if.end5494, !dbg !2320

if.then5492:                                      ; preds = %if.then5489
  store i32 69, ptr %sequence, align 8, !dbg !2321, !tbaa !548
  br label %out, !dbg !2321

if.end5494:                                       ; preds = %if.then5489
  %shl5496 = shl nuw i32 %rc1.sroa.0.166, 8, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %shl5496, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5498 = shl i32 %rc1.sroa.500.166, 8, !dbg !2320
  %inc5499 = add i64 %rc_in_pos.148, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %inc5499, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5500 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.148, !dbg !2320
  %305 = load i8, ptr %arrayidx5500, align 1, !dbg !2320, !tbaa !493
  %conv5501 = zext i8 %305 to i32, !dbg !2320
  %or5502 = or i32 %shl5498, %conv5501, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %or5502, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5506, !dbg !2320

do.end5506:                                       ; preds = %if.end5494, %do.body5485
  %rc_in_pos.149 = phi i64 [ %inc5499, %if.end5494 ], [ %rc_in_pos.148, %do.body5485 ], !dbg !2168
  %rc1.sroa.0.167 = phi i32 [ %shl5496, %if.end5494 ], [ %rc1.sroa.0.166, %do.body5485 ], !dbg !2168
  %rc1.sroa.500.167 = phi i32 [ %or5502, %if.end5494 ], [ %rc1.sroa.500.166, %do.body5485 ], !dbg !2168
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.167, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.167, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.149, metadata !270, metadata !DIExpression()), !dbg !456
  %shr5508 = lshr i32 %rc1.sroa.0.167, 11, !dbg !2323
  %idxprom5511 = zext i32 %symbol.92 to i64, !dbg !2323
  %arrayidx5512 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %idxprom5511, !dbg !2323
  %306 = load i16, ptr %arrayidx5512, align 2, !dbg !2323, !tbaa !597
  %conv5513 = zext i16 %306 to i32, !dbg !2323
  %mul5514 = mul i32 %shr5508, %conv5513, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %mul5514, metadata !271, metadata !DIExpression()), !dbg !456
  %cmp5516 = icmp ult i32 %rc1.sroa.500.167, %mul5514, !dbg !2324
  br i1 %cmp5516, label %do.body5519, label %do.body5539, !dbg !2323

do.body5519:                                      ; preds = %do.end5506
  call void @llvm.dbg.value(metadata i32 %mul5514, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5526 = sub nsw i32 2048, %conv5513, !dbg !2326
  %shr5527 = lshr i32 %sub5526, 5, !dbg !2326
  %307 = trunc i32 %shr5527 to i16, !dbg !2326
  %conv5534 = add i16 %306, %307, !dbg !2326
  store i16 %conv5534, ptr %arrayidx5512, align 2, !dbg !2326, !tbaa !597
  %shl5537 = shl i32 %symbol.92, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i32 %shl5537, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end5563, !dbg !2329

do.body5539:                                      ; preds = %do.end5506
  %sub5541 = sub i32 %rc1.sroa.0.167, %mul5514, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %sub5541, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %sub5543 = sub i32 %rc1.sroa.500.167, %mul5514, !dbg !2330
  call void @llvm.dbg.value(metadata i32 %sub5543, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  %308 = lshr i16 %306, 5, !dbg !2330
  %sub5555 = sub i16 %306, %308, !dbg !2330
  store i16 %sub5555, ptr %arrayidx5512, align 2, !dbg !2330, !tbaa !597
  %shl5559 = shl i32 %symbol.92, 1, !dbg !2333
  %add5560 = or i32 %shl5559, 1, !dbg !2333
  call void @llvm.dbg.value(metadata i32 %add5560, metadata !280, metadata !DIExpression()), !dbg !456
  br label %do.end5563

do.end5563:                                       ; preds = %do.body5539, %do.body5519
  %symbol.93 = phi i32 [ %shl5537, %do.body5519 ], [ %add5560, %do.body5539 ], !dbg !2334
  %rc1.sroa.0.168 = phi i32 [ %mul5514, %do.body5519 ], [ %sub5541, %do.body5539 ], !dbg !2334
  %rc1.sroa.500.168 = phi i32 [ %rc1.sroa.500.167, %do.body5519 ], [ %sub5543, %do.body5539 ], !dbg !2335
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.168, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.168, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.93, metadata !280, metadata !DIExpression()), !dbg !456
  %add5567 = add i32 %symbol.93, -238, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %add5567, metadata !283, metadata !DIExpression()), !dbg !456
  br label %sw.bb5573

sw.bb5573:                                        ; preds = %if.end3911, %do.end4895, %do.end5563, %do.end4556, %if.end
  %dict.sroa.36.76 = phi i64 [ %dict.sroa.36.0.copyload, %if.end ], [ %dict.sroa.36.52, %if.end3911 ], [ %dict.sroa.36.63, %do.end4556 ], [ %dict.sroa.36.67, %do.end4895 ], [ %dict.sroa.36.75, %do.end5563 ], !dbg !456
  %dict.sroa.12.76 = phi i64 [ %dict.sroa.12.0.copyload, %if.end ], [ %dict.sroa.12.52, %if.end3911 ], [ %dict.sroa.12.63, %do.end4556 ], [ %dict.sroa.12.67, %do.end4895 ], [ %dict.sroa.12.75, %do.end5563 ], !dbg !456
  %len.74 = phi i32 [ %14, %if.end ], [ %len.51, %if.end3911 ], [ %add4558, %do.end4556 ], [ %add4898, %do.end4895 ], [ %add5567, %do.end5563 ], !dbg !456
  %rep0.84 = phi i32 [ %5, %if.end ], [ %rep0.61, %if.end3911 ], [ %rep0.71, %do.end4556 ], [ %rep0.75, %do.end4895 ], [ %rep0.83, %do.end5563 ], !dbg !456
  %rep1.74 = phi i32 [ %6, %if.end ], [ %rep1.51, %if.end3911 ], [ %rep1.61, %do.end4556 ], [ %rep1.65, %do.end4895 ], [ %rep1.73, %do.end5563 ], !dbg !456
  %rep2.74 = phi i32 [ %7, %if.end ], [ %rep2.51, %if.end3911 ], [ %rep2.61, %do.end4556 ], [ %rep2.65, %do.end4895 ], [ %rep2.73, %do.end5563 ], !dbg !456
  %rep3.74 = phi i32 [ %8, %if.end ], [ %rep3.51, %if.end3911 ], [ %rep3.61, %do.end4556 ], [ %rep3.65, %do.end4895 ], [ %rep3.73, %do.end5563 ], !dbg !456
  %state.74 = phi i32 [ %4, %if.end ], [ %state.51, %if.end3911 ], [ %state.61, %do.end4556 ], [ %state.65, %do.end4895 ], [ %state.73, %do.end5563 ], !dbg !456
  %probs.73 = phi ptr [ %10, %if.end ], [ %probs.50, %if.end3911 ], [ %probs.60, %do.end4556 ], [ %probs.64, %do.end4895 ], [ %probs.72, %do.end5563 ], !dbg !456
  %symbol.94 = phi i32 [ %11, %if.end ], [ %symbol.69, %if.end3911 ], [ %symbol.79, %do.end4556 ], [ %symbol.84, %do.end4895 ], [ %symbol.93, %do.end5563 ], !dbg !456
  %limit.79 = phi i32 [ %12, %if.end ], [ %limit.56, %if.end3911 ], [ %limit.66, %do.end4556 ], [ %limit.70, %do.end4895 ], [ %limit.78, %do.end5563 ], !dbg !577
  %offset.85 = phi i32 [ %13, %if.end ], [ %offset.62, %if.end3911 ], [ %offset.72, %do.end4556 ], [ %offset.76, %do.end4895 ], [ %offset.84, %do.end5563 ], !dbg !578
  %rc_in_pos.150 = phi i64 [ %3, %if.end ], [ %rc_in_pos.107, %if.end3911 ], [ %rc_in_pos.125, %do.end4556 ], [ %rc_in_pos.133, %do.end4895 ], [ %rc_in_pos.149, %do.end5563 ], !dbg !456
  %rc1.sroa.0.169 = phi i32 [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.123, %if.end3911 ], [ %rc1.sroa.0.142, %do.end4556 ], [ %rc1.sroa.0.151, %do.end4895 ], [ %rc1.sroa.0.168, %do.end5563 ], !dbg !456
  %rc1.sroa.500.169 = phi i32 [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.123, %if.end3911 ], [ %rc1.sroa.500.142, %do.end4556 ], [ %rc1.sroa.500.151, %do.end4895 ], [ %rc1.sroa.500.168, %do.end5563 ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.76, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.76, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.169, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.169, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.150, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.85, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.79, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.94, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.73, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.74, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.74, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.74, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.74, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.84, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr undef, metadata !557, metadata !DIExpression()) #9, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %rep0.84, metadata !558, metadata !DIExpression()) #9, !dbg !2337
  call void @llvm.dbg.value(metadata ptr undef, metadata !559, metadata !DIExpression()) #9, !dbg !2337
  %sub.i = sub i64 %spec.select7962, %dict.sroa.12.76, !dbg !2338
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !560, metadata !DIExpression()) #9, !dbg !2337
  %conv.i7878 = zext i32 %len.74 to i64, !dbg !2339
  %309 = tail call i64 @llvm.umin.i64(i64 %sub.i, i64 %conv.i7878) #9, !dbg !2339
  %conv3.i = trunc i64 %309 to i32, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %conv3.i, metadata !561, metadata !DIExpression()) #9, !dbg !2337
  %sub4.i = sub i32 %len.74, %conv3.i, !dbg !572
  %cmp5.i = icmp ult i32 %rep0.84, %conv3.i, !dbg !2340
  %conv.i.i = zext i32 %rep0.84 to i64
  br i1 %cmp5.i, label %do.body.preheader.i, label %if.else.i, !dbg !2341

do.body.preheader.i:                              ; preds = %sw.bb5573
  %310 = xor i64 %conv.i.i, -1
  br label %do.body.i, !dbg !2342

do.body.i:                                        ; preds = %do.body.i, %do.body.preheader.i
  %dict.sroa.12.77 = phi i64 [ %dict.sroa.12.76, %do.body.preheader.i ], [ %inc.i7880, %do.body.i ], !dbg !456
  %left.0.i = phi i32 [ %conv3.i, %do.body.preheader.i ], [ %dec.i7881, %do.body.i ], !dbg !2337
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.77, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %left.0.i, metadata !561, metadata !DIExpression()) #9, !dbg !2337
  call void @llvm.dbg.value(metadata ptr undef, metadata !602, metadata !DIExpression()) #9, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %rep0.84, metadata !610, metadata !DIExpression()) #9, !dbg !2343
  %cmp.i.i = icmp ugt i64 %dict.sroa.12.77, %conv.i.i, !dbg !2345
  %spec.select7960 = select i1 %cmp.i.i, i64 0, i64 %dict.sroa.51.0.copyload, !dbg !2346
  %sub1.i.i = add i64 %dict.sroa.12.77, %310, !dbg !2347
  %add.i.i = add i64 %sub1.i.i, %spec.select7960, !dbg !2348
  %arrayidx.i.i = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %add.i.i, !dbg !2349
  %311 = load i8, ptr %arrayidx.i.i, align 1, !dbg !2349, !tbaa !493
  %arrayidx.i7879 = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.77, !dbg !2350
  store i8 %311, ptr %arrayidx.i7879, align 1, !dbg !2351, !tbaa !493
  %inc.i7880 = add i64 %dict.sroa.12.77, 1, !dbg !569
  call void @llvm.dbg.value(metadata i64 %inc.i7880, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %dec.i7881 = add i32 %left.0.i, -1, !dbg !2352
  call void @llvm.dbg.value(metadata i32 %dec.i7881, metadata !561, metadata !DIExpression()) #9, !dbg !2337
  %cmp9.not.i = icmp eq i32 %dec.i7881, 0, !dbg !2353
  br i1 %cmp9.not.i, label %if.end71.i, label %do.body.i, !dbg !2354, !llvm.loop !2355

if.else.i:                                        ; preds = %sw.bb5573
  %cmp13.i = icmp ugt i64 %dict.sroa.12.76, %conv.i.i, !dbg !2357
  br i1 %cmp13.i, label %if.then15.i, label %if.else26.i, !dbg !2358

if.then15.i:                                      ; preds = %if.else.i
  %add.ptr.i = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.76, !dbg !2359
  %idx.neg.i = sub nsw i64 0, %conv.i.i, !dbg !2361
  %add.ptr21.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 %idx.neg.i, !dbg !2361
  %add.ptr22.i = getelementptr inbounds i8, ptr %add.ptr21.i, i64 -1, !dbg !2362
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %add.ptr.i, ptr nonnull align 1 %add.ptr22.i, i64 %309, i1 false) #9, !dbg !2363
  %add.i7882 = add i64 %309, %dict.sroa.12.76, !dbg !2364
  br label %if.end71.i, !dbg !2365

if.else26.i:                                      ; preds = %if.else.i
  %312 = xor i64 %conv.i.i, -1, !dbg !2366
  %sub30.i = add i64 %dict.sroa.12.76, %312, !dbg !2366
  %add31.i = add i64 %sub30.i, %dict.sroa.51.0.copyload, !dbg !2367
  %conv34.i = and i64 %add31.i, 4294967295, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %add31.i, metadata !562, metadata !DIExpression()) #9, !dbg !2369
  %313 = trunc i64 %sub30.i to i32, !dbg !2370
  %conv36.i = sub i32 0, %313, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %conv36.i, metadata !566, metadata !DIExpression()) #9, !dbg !2369
  %cmp37.i = icmp ugt i32 %conv3.i, %conv36.i, !dbg !2371
  %add.ptr42.i = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %dict.sroa.12.76, !dbg !2373
  %add.ptr45.i = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %conv34.i, !dbg !2373
  br i1 %cmp37.i, label %if.then39.i, label %if.else59.i, !dbg !2374

if.then39.i:                                      ; preds = %if.else26.i
  %conv46.i = zext i32 %conv36.i to i64, !dbg !2375
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr42.i, ptr align 1 %add.ptr45.i, i64 %conv46.i, i1 false) #9, !dbg !2377
  %add49.i = add i64 %dict.sroa.12.76, %conv46.i, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %add49.i, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %sub50.i = add i64 %sub30.i, %309, !dbg !2379
  call void @llvm.dbg.value(metadata !DIArgList(i32 %conv3.i, i32 %313), metadata !566, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !2369
  %add.ptr53.i = getelementptr inbounds i8, ptr %dict.sroa.0.0.copyload, i64 %add49.i, !dbg !2380
  %conv55.i = and i64 %sub50.i, 4294967295, !dbg !2381
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr53.i, ptr align 1 %dict.sroa.0.0.copyload, i64 %conv55.i, i1 false) #9, !dbg !2382
  br label %if.end.i7884, !dbg !2383

if.else59.i:                                      ; preds = %if.else26.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %add.ptr42.i, ptr align 1 %add.ptr45.i, i64 %309, i1 false) #9, !dbg !2384
  br label %if.end.i7884

if.end.i7884:                                     ; preds = %if.else59.i, %if.then39.i
  %dict.sroa.12.78 = phi i64 [ %add49.i, %if.then39.i ], [ %dict.sroa.12.76, %if.else59.i ], !dbg !456
  %.sink135.i = phi i64 [ %conv55.i, %if.then39.i ], [ %309, %if.else59.i ]
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.78, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %add69.i = add i64 %.sink135.i, %dict.sroa.12.78, !dbg !2373
  br label %if.end71.i

if.end71.i:                                       ; preds = %do.body.i, %if.then15.i, %if.end.i7884
  %dict.sroa.12.79 = phi i64 [ %add.i7882, %if.then15.i ], [ %add69.i, %if.end.i7884 ], [ %inc.i7880, %do.body.i ], !dbg !2386
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.79, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  %314 = tail call i64 @llvm.umax.i64(i64 %dict.sroa.36.76, i64 %dict.sroa.12.79), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %314, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  %cmp79.i.not = icmp eq i32 %sub4.i, 0, !dbg !2388
  br i1 %cmp79.i.not, label %while.body, label %if.then5575, !dbg !2389, !llvm.loop !2390

if.then5575:                                      ; preds = %if.end71.i
  store i32 70, ptr %sequence, align 8, !dbg !2393, !tbaa !548
  br label %out, !dbg !2395

do.body5579:                                      ; preds = %sw.bb, %if.end
  %dict.sroa.36.78 = phi i64 [ %dict.sroa.36.0.copyload, %if.end ], [ %dict.sroa.36.1, %sw.bb ], !dbg !456
  %dict.sroa.12.80 = phi i64 [ %dict.sroa.12.0.copyload, %if.end ], [ %spec.select7962, %sw.bb ], !dbg !456
  %len.75 = phi i32 [ %14, %if.end ], [ %len.1, %sw.bb ], !dbg !456
  %rep0.85 = phi i32 [ %5, %if.end ], [ %rep0.1, %sw.bb ], !dbg !573
  %rep1.75 = phi i32 [ %6, %if.end ], [ %rep1.1, %sw.bb ], !dbg !574
  %rep2.75 = phi i32 [ %7, %if.end ], [ %rep2.1, %sw.bb ], !dbg !575
  %rep3.75 = phi i32 [ %8, %if.end ], [ %rep3.1, %sw.bb ], !dbg !576
  %state.75 = phi i32 [ %4, %if.end ], [ %state.1, %sw.bb ], !dbg !581
  %probs.74 = phi ptr [ %10, %if.end ], [ %probs.1, %sw.bb ], !dbg !582
  %symbol.95 = phi i32 [ %11, %if.end ], [ %symbol.1, %sw.bb ], !dbg !583
  %limit.80 = phi i32 [ %12, %if.end ], [ %limit.1, %sw.bb ], !dbg !577
  %offset.86 = phi i32 [ %13, %if.end ], [ %offset.1, %sw.bb ], !dbg !578
  %rc_in_pos.151 = phi i64 [ %3, %if.end ], [ %rc_in_pos.1, %sw.bb ], !dbg !481
  %rc1.sroa.0.170 = phi i32 [ %rc1.sroa.0.0.copyload, %if.end ], [ %rc1.sroa.0.1, %sw.bb ], !dbg !481
  %rc1.sroa.500.170 = phi i32 [ %rc1.sroa.500.0.copyload, %if.end ], [ %rc1.sroa.500.1, %sw.bb ], !dbg !481
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.80, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.78, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.170, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.170, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.151, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.86, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.80, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.95, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.74, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.75, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.75, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.75, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.75, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.85, metadata !273, metadata !DIExpression()), !dbg !456
  %cmp5581 = icmp ult i32 %rc1.sroa.0.170, 16777216, !dbg !2396
  br i1 %cmp5581, label %if.then5583, label %do.end5600, !dbg !2399

if.then5583:                                      ; preds = %do.body5579
  %cmp5584 = icmp eq i64 %rc_in_pos.151, %in_size, !dbg !2400
  br i1 %cmp5584, label %if.then5586, label %if.end5588, !dbg !2403

if.then5586:                                      ; preds = %if.then5583
  store i32 0, ptr %sequence, align 8, !dbg !2404, !tbaa !548
  br label %out, !dbg !2404

if.end5588:                                       ; preds = %if.then5583
  %shl5590 = shl nuw i32 %rc1.sroa.0.170, 8, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %shl5590, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  %shl5592 = shl i32 %rc1.sroa.500.170, 8, !dbg !2403
  %inc5593 = add i64 %rc_in_pos.151, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %inc5593, metadata !270, metadata !DIExpression()), !dbg !456
  %arrayidx5594 = getelementptr inbounds i8, ptr %in, i64 %rc_in_pos.151, !dbg !2403
  %315 = load i8, ptr %arrayidx5594, align 1, !dbg !2403, !tbaa !493
  %conv5595 = zext i8 %315 to i32, !dbg !2403
  %or5596 = or i32 %shl5592, %conv5595, !dbg !2403
  call void @llvm.dbg.value(metadata i32 %or5596, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  br label %do.end5600, !dbg !2403

do.end5600:                                       ; preds = %if.end5588, %do.body5579
  %rc_in_pos.152 = phi i64 [ %inc5593, %if.end5588 ], [ %rc_in_pos.151, %do.body5579 ], !dbg !456
  %rc1.sroa.0.171 = phi i32 [ %shl5590, %if.end5588 ], [ %rc1.sroa.0.170, %do.body5579 ], !dbg !456
  %rc1.sroa.500.171 = phi i32 [ %or5596, %if.end5588 ], [ %rc1.sroa.500.170, %do.body5579 ], !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.500.171, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.171, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.152, metadata !270, metadata !DIExpression()), !dbg !456
  store i32 1, ptr %sequence, align 8, !dbg !2406, !tbaa !548
  br label %out, !dbg !2407

out:                                              ; preds = %do.body3917, %if.end3911, %do.body3887, %if.end3896, %if.then3880, %do.end5600, %if.then5586, %if.then5575, %if.then5492, %if.then5411, %if.then5330, %if.then5249, %if.then5168, %if.then5087, %if.then5006, %if.then4925, %if.then4814, %if.then4723, %if.then4632, %if.then4584, %if.then4475, %if.then4384, %if.then4293, %if.then4246, %if.then4169, %if.then4101, %if.then4048, %if.then3995, %if.then3946, %if.then3894, %if.then3813, %if.then3736, %if.then3659, %if.then3583, %if.then3536, %if.then3463, %if.then3388, %if.then3313, %if.then3238, %if.then3165, %if.then3076, %if.then3005, %if.then2934, %if.then2863, %if.then2792, %if.then2721, %if.then2625, %if.then2544, %if.then2463, %if.then2382, %if.then2301, %if.then2220, %if.then2139, %if.then2059, %if.then1948, %if.then1857, %if.then1767, %if.then1720, %if.then1611, %if.then1520, %if.then1430, %if.then1384, %if.then1332, %if.then1298, %if.then1227, %if.then1149, %if.then1071, %if.then993, %if.then915, %if.then837, %if.then759, %if.then682, %if.then604, %if.then533, %if.then462, %if.then391, %if.then320, %if.then249, %if.then178, %if.then108, %if.then48
  %dict.sroa.36.79 = phi i64 [ %dict.sroa.36.78, %if.then5586 ], [ %dict.sroa.36.78, %do.end5600 ], [ %314, %if.then5575 ], [ %dict.sroa.36.1, %if.then48 ], [ %dict.sroa.36.2, %if.then108 ], [ %dict.sroa.36.3, %if.then178 ], [ %dict.sroa.36.4, %if.then249 ], [ %dict.sroa.36.5, %if.then320 ], [ %dict.sroa.36.6, %if.then391 ], [ %dict.sroa.36.7, %if.then462 ], [ %dict.sroa.36.8, %if.then533 ], [ %dict.sroa.36.9, %if.then604 ], [ %dict.sroa.36.19, %if.then1298 ], [ %dict.sroa.36.10, %if.then682 ], [ %dict.sroa.36.11, %if.then759 ], [ %dict.sroa.36.12, %if.then837 ], [ %dict.sroa.36.13, %if.then915 ], [ %dict.sroa.36.14, %if.then993 ], [ %dict.sroa.36.15, %if.then1071 ], [ %dict.sroa.36.16, %if.then1149 ], [ %dict.sroa.36.17, %if.then1227 ], [ %dict.sroa.36.21, %if.then1332 ], [ %dict.sroa.36.22, %if.then1384 ], [ %dict.sroa.36.23, %if.then1430 ], [ %dict.sroa.36.24, %if.then1520 ], [ %dict.sroa.36.25, %if.then1611 ], [ %dict.sroa.36.39, %if.then2721 ], [ %dict.sroa.36.40, %if.then2792 ], [ %dict.sroa.36.41, %if.then2863 ], [ %dict.sroa.36.42, %if.then2934 ], [ %dict.sroa.36.43, %if.then3005 ], [ %dict.sroa.36.44, %if.then3076 ], [ %dict.sroa.36.52, %if.end3911 ], [ %dict.sroa.36.45, %if.then3463 ], [ %dict.sroa.36.45, %if.then3388 ], [ %dict.sroa.36.45, %if.then3313 ], [ %dict.sroa.36.45, %if.then3238 ], [ %dict.sroa.36.45, %if.then3165 ], [ %dict.sroa.36.46, %if.then3536 ], [ %dict.sroa.36.47, %if.then3583 ], [ %dict.sroa.36.48, %if.then3659 ], [ %dict.sroa.36.49, %if.then3736 ], [ %dict.sroa.36.50, %if.then3813 ], [ %dict.sroa.36.51, %if.then3894 ], [ %dict.sroa.36.51, %if.end3896 ], [ %dict.sroa.36.51, %do.body3887 ], [ %dict.sroa.36.50, %if.then3880 ], [ %dict.sroa.36.26, %if.then1720 ], [ %dict.sroa.36.27, %if.then1767 ], [ %dict.sroa.36.28, %if.then1857 ], [ %dict.sroa.36.29, %if.then1948 ], [ %dict.sroa.36.30, %if.then2059 ], [ %dict.sroa.36.31, %if.then2139 ], [ %dict.sroa.36.32, %if.then2220 ], [ %dict.sroa.36.33, %if.then2301 ], [ %dict.sroa.36.34, %if.then2382 ], [ %dict.sroa.36.35, %if.then2463 ], [ %dict.sroa.36.36, %if.then2544 ], [ %dict.sroa.36.37, %if.then2625 ], [ %dict.sroa.36.53, %if.then3946 ], [ %dict.sroa.36.54, %if.then3995 ], [ %dict.sroa.36.55, %if.then4048 ], [ %dict.sroa.36.60, %if.then4246 ], [ %dict.sroa.36.61, %if.then4293 ], [ %dict.sroa.36.62, %if.then4384 ], [ %dict.sroa.36.63, %if.then4475 ], [ %dict.sroa.36.64, %if.then4584 ], [ %dict.sroa.36.65, %if.then4632 ], [ %dict.sroa.36.66, %if.then4723 ], [ %dict.sroa.36.67, %if.then4814 ], [ %dict.sroa.36.68, %if.then4925 ], [ %dict.sroa.36.69, %if.then5006 ], [ %dict.sroa.36.70, %if.then5087 ], [ %dict.sroa.36.71, %if.then5168 ], [ %dict.sroa.36.72, %if.then5249 ], [ %dict.sroa.36.73, %if.then5330 ], [ %dict.sroa.36.74, %if.then5411 ], [ %dict.sroa.36.75, %if.then5492 ], [ %dict.sroa.36.57, %if.then4101 ], [ %dict.sroa.36.58, %if.then4169 ], [ 0, %do.body3917 ], !dbg !456
  %dict.sroa.12.81 = phi i64 [ %dict.sroa.12.80, %if.then5586 ], [ %dict.sroa.12.80, %do.end5600 ], [ %dict.sroa.12.79, %if.then5575 ], [ %dict.sroa.12.1, %if.then48 ], [ %dict.sroa.12.2, %if.then108 ], [ %dict.sroa.12.3, %if.then178 ], [ %dict.sroa.12.4, %if.then249 ], [ %dict.sroa.12.5, %if.then320 ], [ %dict.sroa.12.6, %if.then391 ], [ %dict.sroa.12.7, %if.then462 ], [ %dict.sroa.12.8, %if.then533 ], [ %dict.sroa.12.9, %if.then604 ], [ %spec.select7962, %if.then1298 ], [ %dict.sroa.12.10, %if.then682 ], [ %dict.sroa.12.11, %if.then759 ], [ %dict.sroa.12.12, %if.then837 ], [ %dict.sroa.12.13, %if.then915 ], [ %dict.sroa.12.14, %if.then993 ], [ %dict.sroa.12.15, %if.then1071 ], [ %dict.sroa.12.16, %if.then1149 ], [ %dict.sroa.12.17, %if.then1227 ], [ %dict.sroa.12.21, %if.then1332 ], [ %dict.sroa.12.22, %if.then1384 ], [ %dict.sroa.12.23, %if.then1430 ], [ %dict.sroa.12.24, %if.then1520 ], [ %dict.sroa.12.25, %if.then1611 ], [ %dict.sroa.12.39, %if.then2721 ], [ %dict.sroa.12.40, %if.then2792 ], [ %dict.sroa.12.41, %if.then2863 ], [ %dict.sroa.12.42, %if.then2934 ], [ %dict.sroa.12.43, %if.then3005 ], [ %dict.sroa.12.44, %if.then3076 ], [ %dict.sroa.12.52, %if.end3911 ], [ %dict.sroa.12.45, %if.then3463 ], [ %dict.sroa.12.45, %if.then3388 ], [ %dict.sroa.12.45, %if.then3313 ], [ %dict.sroa.12.45, %if.then3238 ], [ %dict.sroa.12.45, %if.then3165 ], [ %dict.sroa.12.46, %if.then3536 ], [ %dict.sroa.12.47, %if.then3583 ], [ %dict.sroa.12.48, %if.then3659 ], [ %dict.sroa.12.49, %if.then3736 ], [ %dict.sroa.12.50, %if.then3813 ], [ %dict.sroa.12.51, %if.then3894 ], [ %dict.sroa.12.51, %if.end3896 ], [ %dict.sroa.12.51, %do.body3887 ], [ %dict.sroa.12.50, %if.then3880 ], [ %dict.sroa.12.26, %if.then1720 ], [ %dict.sroa.12.27, %if.then1767 ], [ %dict.sroa.12.28, %if.then1857 ], [ %dict.sroa.12.29, %if.then1948 ], [ %dict.sroa.12.30, %if.then2059 ], [ %dict.sroa.12.31, %if.then2139 ], [ %dict.sroa.12.32, %if.then2220 ], [ %dict.sroa.12.33, %if.then2301 ], [ %dict.sroa.12.34, %if.then2382 ], [ %dict.sroa.12.35, %if.then2463 ], [ %dict.sroa.12.36, %if.then2544 ], [ %dict.sroa.12.37, %if.then2625 ], [ %dict.sroa.12.53, %if.then3946 ], [ %dict.sroa.12.54, %if.then3995 ], [ %spec.select7962, %if.then4048 ], [ %dict.sroa.12.60, %if.then4246 ], [ %dict.sroa.12.61, %if.then4293 ], [ %dict.sroa.12.62, %if.then4384 ], [ %dict.sroa.12.63, %if.then4475 ], [ %dict.sroa.12.64, %if.then4584 ], [ %dict.sroa.12.65, %if.then4632 ], [ %dict.sroa.12.66, %if.then4723 ], [ %dict.sroa.12.67, %if.then4814 ], [ %dict.sroa.12.68, %if.then4925 ], [ %dict.sroa.12.69, %if.then5006 ], [ %dict.sroa.12.70, %if.then5087 ], [ %dict.sroa.12.71, %if.then5168 ], [ %dict.sroa.12.72, %if.then5249 ], [ %dict.sroa.12.73, %if.then5330 ], [ %dict.sroa.12.74, %if.then5411 ], [ %dict.sroa.12.75, %if.then5492 ], [ %dict.sroa.12.57, %if.then4101 ], [ %dict.sroa.12.58, %if.then4169 ], [ %dict.sroa.12.21, %do.body3917 ], !dbg !456
  %len.76 = phi i32 [ %len.75, %if.then5586 ], [ %len.75, %do.end5600 ], [ %sub4.i, %if.then5575 ], [ %len.1, %if.then48 ], [ %len.2, %if.then108 ], [ %len.3, %if.then178 ], [ %len.4, %if.then249 ], [ %len.5, %if.then320 ], [ %len.6, %if.then391 ], [ %len.7, %if.then462 ], [ %len.8, %if.then533 ], [ %len.9, %if.then604 ], [ %len.19, %if.then1298 ], [ %len.10, %if.then682 ], [ %len.11, %if.then759 ], [ %len.12, %if.then837 ], [ %len.13, %if.then915 ], [ %len.14, %if.then993 ], [ %len.15, %if.then1071 ], [ %len.16, %if.then1149 ], [ %len.17, %if.then1227 ], [ %len.20, %if.then1332 ], [ %len.21, %if.then1384 ], [ %len.22, %if.then1430 ], [ %len.23, %if.then1520 ], [ %len.24, %if.then1611 ], [ %len.38, %if.then2721 ], [ %len.39, %if.then2792 ], [ %len.40, %if.then2863 ], [ %len.41, %if.then2934 ], [ %len.42, %if.then3005 ], [ %len.43, %if.then3076 ], [ %len.51, %if.end3911 ], [ %len.44, %if.then3463 ], [ %len.44, %if.then3388 ], [ %len.44, %if.then3313 ], [ %len.44, %if.then3238 ], [ %len.44, %if.then3165 ], [ %len.45, %if.then3536 ], [ %len.46, %if.then3583 ], [ %len.47, %if.then3659 ], [ %len.48, %if.then3736 ], [ %len.49, %if.then3813 ], [ %len.50, %if.then3894 ], [ %len.50, %if.end3896 ], [ %len.50, %do.body3887 ], [ %len.49, %if.then3880 ], [ %len.25, %if.then1720 ], [ %len.26, %if.then1767 ], [ %len.27, %if.then1857 ], [ %len.28, %if.then1948 ], [ %len.29, %if.then2059 ], [ %len.30, %if.then2139 ], [ %len.31, %if.then2220 ], [ %len.32, %if.then2301 ], [ %len.33, %if.then2382 ], [ %len.34, %if.then2463 ], [ %len.35, %if.then2544 ], [ %len.36, %if.then2625 ], [ %len.52, %if.then3946 ], [ %len.53, %if.then3995 ], [ %len.54, %if.then4048 ], [ %len.58, %if.then4246 ], [ %len.59, %if.then4293 ], [ %len.60, %if.then4384 ], [ %len.61, %if.then4475 ], [ %len.62, %if.then4584 ], [ %len.63, %if.then4632 ], [ %len.64, %if.then4723 ], [ %len.65, %if.then4814 ], [ %len.66, %if.then4925 ], [ %len.67, %if.then5006 ], [ %len.68, %if.then5087 ], [ %len.69, %if.then5168 ], [ %len.70, %if.then5249 ], [ %len.71, %if.then5330 ], [ %len.72, %if.then5411 ], [ %len.73, %if.then5492 ], [ %len.55, %if.then4101 ], [ %len.56, %if.then4169 ], [ %len.20, %do.body3917 ], !dbg !456
  %rep0.86 = phi i32 [ %rep0.85, %if.then5586 ], [ %rep0.85, %do.end5600 ], [ %rep0.84, %if.then5575 ], [ %rep0.1, %if.then48 ], [ %rep0.2, %if.then108 ], [ %rep0.3, %if.then178 ], [ %rep0.4, %if.then249 ], [ %rep0.5, %if.then320 ], [ %rep0.6, %if.then391 ], [ %rep0.7, %if.then462 ], [ %rep0.8, %if.then533 ], [ %rep0.9, %if.then604 ], [ %rep0.19, %if.then1298 ], [ %rep0.10, %if.then682 ], [ %rep0.11, %if.then759 ], [ %rep0.12, %if.then837 ], [ %rep0.13, %if.then915 ], [ %rep0.14, %if.then993 ], [ %rep0.15, %if.then1071 ], [ %rep0.16, %if.then1149 ], [ %rep0.17, %if.then1227 ], [ %rep0.20, %if.then1332 ], [ %rep0.21, %if.then1384 ], [ %rep0.22, %if.then1430 ], [ %rep0.23, %if.then1520 ], [ %rep0.24, %if.then1611 ], [ %rep0.38, %if.then2721 ], [ %rep0.39, %if.then2792 ], [ %rep0.40, %if.then2863 ], [ %rep0.41, %if.then2934 ], [ %rep0.42, %if.then3005 ], [ %rep0.43, %if.then3076 ], [ %rep0.61, %if.end3911 ], [ %rep0.52, %if.then3463 ], [ %rep0.50, %if.then3388 ], [ %rep0.48, %if.then3313 ], [ %rep0.46, %if.then3238 ], [ %rep0.44, %if.then3165 ], [ %rep0.54, %if.then3536 ], [ %rep0.55, %if.then3583 ], [ %rep0.56, %if.then3659 ], [ %rep0.57, %if.then3736 ], [ %rep0.58, %if.then3813 ], [ %rep0.60, %if.then3894 ], [ %rep0.60, %if.end3896 ], [ %rep0.60, %do.body3887 ], [ -1, %if.then3880 ], [ %rep0.25, %if.then1720 ], [ %rep0.26, %if.then1767 ], [ %rep0.27, %if.then1857 ], [ %rep0.28, %if.then1948 ], [ %rep0.29, %if.then2059 ], [ %rep0.30, %if.then2139 ], [ %rep0.31, %if.then2220 ], [ %rep0.32, %if.then2301 ], [ %rep0.33, %if.then2382 ], [ %rep0.34, %if.then2463 ], [ %rep0.35, %if.then2544 ], [ %rep0.36, %if.then2625 ], [ %rep0.62, %if.then3946 ], [ %rep0.63, %if.then3995 ], [ %rep0.64, %if.then4048 ], [ %rep0.68, %if.then4246 ], [ %rep0.69, %if.then4293 ], [ %rep0.70, %if.then4384 ], [ %rep0.71, %if.then4475 ], [ %rep0.72, %if.then4584 ], [ %rep0.73, %if.then4632 ], [ %rep0.74, %if.then4723 ], [ %rep0.75, %if.then4814 ], [ %rep0.76, %if.then4925 ], [ %rep0.77, %if.then5006 ], [ %rep0.78, %if.then5087 ], [ %rep0.79, %if.then5168 ], [ %rep0.80, %if.then5249 ], [ %rep0.81, %if.then5330 ], [ %rep0.82, %if.then5411 ], [ %rep0.83, %if.then5492 ], [ %rep0.65, %if.then4101 ], [ %rep0.66, %if.then4169 ], [ %rep0.20, %do.body3917 ], !dbg !456
  %rep1.76 = phi i32 [ %rep1.75, %if.then5586 ], [ %rep1.75, %do.end5600 ], [ %rep1.74, %if.then5575 ], [ %rep1.1, %if.then48 ], [ %rep1.2, %if.then108 ], [ %rep1.3, %if.then178 ], [ %rep1.4, %if.then249 ], [ %rep1.5, %if.then320 ], [ %rep1.6, %if.then391 ], [ %rep1.7, %if.then462 ], [ %rep1.8, %if.then533 ], [ %rep1.9, %if.then604 ], [ %rep1.19, %if.then1298 ], [ %rep1.10, %if.then682 ], [ %rep1.11, %if.then759 ], [ %rep1.12, %if.then837 ], [ %rep1.13, %if.then915 ], [ %rep1.14, %if.then993 ], [ %rep1.15, %if.then1071 ], [ %rep1.16, %if.then1149 ], [ %rep1.17, %if.then1227 ], [ %rep1.20, %if.then1332 ], [ %rep1.21, %if.then1384 ], [ %rep1.22, %if.then1430 ], [ %rep1.23, %if.then1520 ], [ %rep1.24, %if.then1611 ], [ %rep1.38, %if.then2721 ], [ %rep1.39, %if.then2792 ], [ %rep1.40, %if.then2863 ], [ %rep1.41, %if.then2934 ], [ %rep1.42, %if.then3005 ], [ %rep1.43, %if.then3076 ], [ %rep1.51, %if.end3911 ], [ %rep1.44, %if.then3463 ], [ %rep1.44, %if.then3388 ], [ %rep1.44, %if.then3313 ], [ %rep1.44, %if.then3238 ], [ %rep1.44, %if.then3165 ], [ %rep1.45, %if.then3536 ], [ %rep1.46, %if.then3583 ], [ %rep1.47, %if.then3659 ], [ %rep1.48, %if.then3736 ], [ %rep1.49, %if.then3813 ], [ %rep1.50, %if.then3894 ], [ %rep1.50, %if.end3896 ], [ %rep1.50, %do.body3887 ], [ %rep1.49, %if.then3880 ], [ %rep1.25, %if.then1720 ], [ %rep1.26, %if.then1767 ], [ %rep1.27, %if.then1857 ], [ %rep1.28, %if.then1948 ], [ %rep1.29, %if.then2059 ], [ %rep1.30, %if.then2139 ], [ %rep1.31, %if.then2220 ], [ %rep1.32, %if.then2301 ], [ %rep1.33, %if.then2382 ], [ %rep1.34, %if.then2463 ], [ %rep1.35, %if.then2544 ], [ %rep1.36, %if.then2625 ], [ %rep1.52, %if.then3946 ], [ %rep1.53, %if.then3995 ], [ %rep1.54, %if.then4048 ], [ %rep1.58, %if.then4246 ], [ %rep1.59, %if.then4293 ], [ %rep1.60, %if.then4384 ], [ %rep1.61, %if.then4475 ], [ %rep1.62, %if.then4584 ], [ %rep1.63, %if.then4632 ], [ %rep1.64, %if.then4723 ], [ %rep1.65, %if.then4814 ], [ %rep1.66, %if.then4925 ], [ %rep1.67, %if.then5006 ], [ %rep1.68, %if.then5087 ], [ %rep1.69, %if.then5168 ], [ %rep1.70, %if.then5249 ], [ %rep1.71, %if.then5330 ], [ %rep1.72, %if.then5411 ], [ %rep1.73, %if.then5492 ], [ %rep1.55, %if.then4101 ], [ %rep1.56, %if.then4169 ], [ %rep1.20, %do.body3917 ], !dbg !456
  %rep2.76 = phi i32 [ %rep2.75, %if.then5586 ], [ %rep2.75, %do.end5600 ], [ %rep2.74, %if.then5575 ], [ %rep2.1, %if.then48 ], [ %rep2.2, %if.then108 ], [ %rep2.3, %if.then178 ], [ %rep2.4, %if.then249 ], [ %rep2.5, %if.then320 ], [ %rep2.6, %if.then391 ], [ %rep2.7, %if.then462 ], [ %rep2.8, %if.then533 ], [ %rep2.9, %if.then604 ], [ %rep2.19, %if.then1298 ], [ %rep2.10, %if.then682 ], [ %rep2.11, %if.then759 ], [ %rep2.12, %if.then837 ], [ %rep2.13, %if.then915 ], [ %rep2.14, %if.then993 ], [ %rep2.15, %if.then1071 ], [ %rep2.16, %if.then1149 ], [ %rep2.17, %if.then1227 ], [ %rep2.20, %if.then1332 ], [ %rep2.21, %if.then1384 ], [ %rep2.22, %if.then1430 ], [ %rep2.23, %if.then1520 ], [ %rep2.24, %if.then1611 ], [ %rep2.38, %if.then2721 ], [ %rep2.39, %if.then2792 ], [ %rep2.40, %if.then2863 ], [ %rep2.41, %if.then2934 ], [ %rep2.42, %if.then3005 ], [ %rep2.43, %if.then3076 ], [ %rep2.51, %if.end3911 ], [ %rep2.44, %if.then3463 ], [ %rep2.44, %if.then3388 ], [ %rep2.44, %if.then3313 ], [ %rep2.44, %if.then3238 ], [ %rep2.44, %if.then3165 ], [ %rep2.45, %if.then3536 ], [ %rep2.46, %if.then3583 ], [ %rep2.47, %if.then3659 ], [ %rep2.48, %if.then3736 ], [ %rep2.49, %if.then3813 ], [ %rep2.50, %if.then3894 ], [ %rep2.50, %if.end3896 ], [ %rep2.50, %do.body3887 ], [ %rep2.49, %if.then3880 ], [ %rep2.25, %if.then1720 ], [ %rep2.26, %if.then1767 ], [ %rep2.27, %if.then1857 ], [ %rep2.28, %if.then1948 ], [ %rep2.29, %if.then2059 ], [ %rep2.30, %if.then2139 ], [ %rep2.31, %if.then2220 ], [ %rep2.32, %if.then2301 ], [ %rep2.33, %if.then2382 ], [ %rep2.34, %if.then2463 ], [ %rep2.35, %if.then2544 ], [ %rep2.36, %if.then2625 ], [ %rep2.52, %if.then3946 ], [ %rep2.53, %if.then3995 ], [ %rep2.54, %if.then4048 ], [ %rep2.58, %if.then4246 ], [ %rep2.59, %if.then4293 ], [ %rep2.60, %if.then4384 ], [ %rep2.61, %if.then4475 ], [ %rep2.62, %if.then4584 ], [ %rep2.63, %if.then4632 ], [ %rep2.64, %if.then4723 ], [ %rep2.65, %if.then4814 ], [ %rep2.66, %if.then4925 ], [ %rep2.67, %if.then5006 ], [ %rep2.68, %if.then5087 ], [ %rep2.69, %if.then5168 ], [ %rep2.70, %if.then5249 ], [ %rep2.71, %if.then5330 ], [ %rep2.72, %if.then5411 ], [ %rep2.73, %if.then5492 ], [ %rep2.55, %if.then4101 ], [ %rep2.56, %if.then4169 ], [ %rep2.20, %do.body3917 ], !dbg !456
  %rep3.76 = phi i32 [ %rep3.75, %if.then5586 ], [ %rep3.75, %do.end5600 ], [ %rep3.74, %if.then5575 ], [ %rep3.1, %if.then48 ], [ %rep3.2, %if.then108 ], [ %rep3.3, %if.then178 ], [ %rep3.4, %if.then249 ], [ %rep3.5, %if.then320 ], [ %rep3.6, %if.then391 ], [ %rep3.7, %if.then462 ], [ %rep3.8, %if.then533 ], [ %rep3.9, %if.then604 ], [ %rep3.19, %if.then1298 ], [ %rep3.10, %if.then682 ], [ %rep3.11, %if.then759 ], [ %rep3.12, %if.then837 ], [ %rep3.13, %if.then915 ], [ %rep3.14, %if.then993 ], [ %rep3.15, %if.then1071 ], [ %rep3.16, %if.then1149 ], [ %rep3.17, %if.then1227 ], [ %rep3.20, %if.then1332 ], [ %rep3.21, %if.then1384 ], [ %rep3.22, %if.then1430 ], [ %rep3.23, %if.then1520 ], [ %rep3.24, %if.then1611 ], [ %rep3.38, %if.then2721 ], [ %rep3.39, %if.then2792 ], [ %rep3.40, %if.then2863 ], [ %rep3.41, %if.then2934 ], [ %rep3.42, %if.then3005 ], [ %rep3.43, %if.then3076 ], [ %rep3.51, %if.end3911 ], [ %rep3.44, %if.then3463 ], [ %rep3.44, %if.then3388 ], [ %rep3.44, %if.then3313 ], [ %rep3.44, %if.then3238 ], [ %rep3.44, %if.then3165 ], [ %rep3.45, %if.then3536 ], [ %rep3.46, %if.then3583 ], [ %rep3.47, %if.then3659 ], [ %rep3.48, %if.then3736 ], [ %rep3.49, %if.then3813 ], [ %rep3.50, %if.then3894 ], [ %rep3.50, %if.end3896 ], [ %rep3.50, %do.body3887 ], [ %rep3.49, %if.then3880 ], [ %rep3.25, %if.then1720 ], [ %rep3.26, %if.then1767 ], [ %rep3.27, %if.then1857 ], [ %rep3.28, %if.then1948 ], [ %rep3.29, %if.then2059 ], [ %rep3.30, %if.then2139 ], [ %rep3.31, %if.then2220 ], [ %rep3.32, %if.then2301 ], [ %rep3.33, %if.then2382 ], [ %rep3.34, %if.then2463 ], [ %rep3.35, %if.then2544 ], [ %rep3.36, %if.then2625 ], [ %rep3.52, %if.then3946 ], [ %rep3.53, %if.then3995 ], [ %rep3.54, %if.then4048 ], [ %rep3.58, %if.then4246 ], [ %rep3.59, %if.then4293 ], [ %rep3.60, %if.then4384 ], [ %rep3.61, %if.then4475 ], [ %rep3.62, %if.then4584 ], [ %rep3.63, %if.then4632 ], [ %rep3.64, %if.then4723 ], [ %rep3.65, %if.then4814 ], [ %rep3.66, %if.then4925 ], [ %rep3.67, %if.then5006 ], [ %rep3.68, %if.then5087 ], [ %rep3.69, %if.then5168 ], [ %rep3.70, %if.then5249 ], [ %rep3.71, %if.then5330 ], [ %rep3.72, %if.then5411 ], [ %rep3.73, %if.then5492 ], [ %rep3.55, %if.then4101 ], [ %rep3.56, %if.then4169 ], [ %rep3.20, %do.body3917 ], !dbg !456
  %state.76 = phi i32 [ %state.75, %if.then5586 ], [ %state.75, %do.end5600 ], [ %state.74, %if.then5575 ], [ %state.1, %if.then48 ], [ %state.2, %if.then108 ], [ %state.3, %if.then178 ], [ %state.4, %if.then249 ], [ %state.5, %if.then320 ], [ %state.6, %if.then391 ], [ %state.7, %if.then462 ], [ %state.8, %if.then533 ], [ %state.9, %if.then604 ], [ %state.19, %if.then1298 ], [ %state.10, %if.then682 ], [ %state.11, %if.then759 ], [ %state.12, %if.then837 ], [ %state.13, %if.then915 ], [ %state.14, %if.then993 ], [ %state.15, %if.then1071 ], [ %state.16, %if.then1149 ], [ %state.17, %if.then1227 ], [ %state.20, %if.then1332 ], [ %state.21, %if.then1384 ], [ %state.22, %if.then1430 ], [ %state.23, %if.then1520 ], [ %state.24, %if.then1611 ], [ %state.38, %if.then2721 ], [ %state.39, %if.then2792 ], [ %state.40, %if.then2863 ], [ %state.41, %if.then2934 ], [ %state.42, %if.then3005 ], [ %state.43, %if.then3076 ], [ %state.51, %if.end3911 ], [ %state.44, %if.then3463 ], [ %state.44, %if.then3388 ], [ %state.44, %if.then3313 ], [ %state.44, %if.then3238 ], [ %state.44, %if.then3165 ], [ %state.45, %if.then3536 ], [ %state.46, %if.then3583 ], [ %state.47, %if.then3659 ], [ %state.48, %if.then3736 ], [ %state.49, %if.then3813 ], [ %state.50, %if.then3894 ], [ %state.50, %if.end3896 ], [ %state.50, %do.body3887 ], [ %state.49, %if.then3880 ], [ %state.25, %if.then1720 ], [ %state.26, %if.then1767 ], [ %state.27, %if.then1857 ], [ %state.28, %if.then1948 ], [ %state.29, %if.then2059 ], [ %state.30, %if.then2139 ], [ %state.31, %if.then2220 ], [ %state.32, %if.then2301 ], [ %state.33, %if.then2382 ], [ %state.34, %if.then2463 ], [ %state.35, %if.then2544 ], [ %state.36, %if.then2625 ], [ %state.52, %if.then3946 ], [ %state.53, %if.then3995 ], [ %state.54, %if.then4048 ], [ %state.58, %if.then4246 ], [ %state.59, %if.then4293 ], [ %state.60, %if.then4384 ], [ %state.61, %if.then4475 ], [ %state.62, %if.then4584 ], [ %state.63, %if.then4632 ], [ %state.64, %if.then4723 ], [ %state.65, %if.then4814 ], [ %state.66, %if.then4925 ], [ %state.67, %if.then5006 ], [ %state.68, %if.then5087 ], [ %state.69, %if.then5168 ], [ %state.70, %if.then5249 ], [ %state.71, %if.then5330 ], [ %state.72, %if.then5411 ], [ %state.73, %if.then5492 ], [ %state.55, %if.then4101 ], [ %state.56, %if.then4169 ], [ %state.20, %do.body3917 ], !dbg !456
  %probs.75 = phi ptr [ %probs.74, %if.then5586 ], [ %probs.74, %do.end5600 ], [ %probs.73, %if.then5575 ], [ %probs.1, %if.then48 ], [ %probs.2, %if.then108 ], [ %probs.3, %if.then178 ], [ %probs.4, %if.then249 ], [ %probs.5, %if.then320 ], [ %probs.6, %if.then391 ], [ %probs.7, %if.then462 ], [ %probs.8, %if.then533 ], [ %probs.9, %if.then604 ], [ %probs.19, %if.then1298 ], [ %probs.10, %if.then682 ], [ %probs.11, %if.then759 ], [ %probs.12, %if.then837 ], [ %probs.13, %if.then915 ], [ %probs.14, %if.then993 ], [ %probs.15, %if.then1071 ], [ %probs.16, %if.then1149 ], [ %probs.17, %if.then1227 ], [ %probs.20, %if.then1332 ], [ %probs.21, %if.then1384 ], [ %probs.22, %if.then1430 ], [ %probs.23, %if.then1520 ], [ %probs.24, %if.then1611 ], [ %probs.37, %if.then2721 ], [ %probs.38, %if.then2792 ], [ %probs.39, %if.then2863 ], [ %probs.40, %if.then2934 ], [ %probs.41, %if.then3005 ], [ %probs.42, %if.then3076 ], [ %probs.50, %if.end3911 ], [ %probs.43, %if.then3463 ], [ %probs.43, %if.then3388 ], [ %probs.43, %if.then3313 ], [ %probs.43, %if.then3238 ], [ %probs.43, %if.then3165 ], [ %probs.44, %if.then3536 ], [ %probs.45, %if.then3583 ], [ %probs.46, %if.then3659 ], [ %probs.47, %if.then3736 ], [ %probs.48, %if.then3813 ], [ %probs.49, %if.then3894 ], [ %probs.49, %if.end3896 ], [ %probs.49, %do.body3887 ], [ %probs.48, %if.then3880 ], [ %probs.25, %if.then1720 ], [ %probs.26, %if.then1767 ], [ %probs.27, %if.then1857 ], [ %probs.28, %if.then1948 ], [ %probs.29, %if.then2059 ], [ %probs.30, %if.then2139 ], [ %probs.31, %if.then2220 ], [ %probs.32, %if.then2301 ], [ %probs.33, %if.then2382 ], [ %probs.34, %if.then2463 ], [ %probs.35, %if.then2544 ], [ %probs.36, %if.then2625 ], [ %probs.51, %if.then3946 ], [ %probs.52, %if.then3995 ], [ %probs.53, %if.then4048 ], [ %probs.57, %if.then4246 ], [ %probs.58, %if.then4293 ], [ %probs.59, %if.then4384 ], [ %probs.60, %if.then4475 ], [ %probs.61, %if.then4584 ], [ %probs.62, %if.then4632 ], [ %probs.63, %if.then4723 ], [ %probs.64, %if.then4814 ], [ %probs.65, %if.then4925 ], [ %probs.66, %if.then5006 ], [ %probs.67, %if.then5087 ], [ %probs.68, %if.then5168 ], [ %probs.69, %if.then5249 ], [ %probs.70, %if.then5330 ], [ %probs.71, %if.then5411 ], [ %probs.72, %if.then5492 ], [ %probs.54, %if.then4101 ], [ %probs.55, %if.then4169 ], [ %probs.20, %do.body3917 ], !dbg !456
  %symbol.96 = phi i32 [ %symbol.95, %if.then5586 ], [ %symbol.95, %do.end5600 ], [ %symbol.94, %if.then5575 ], [ %symbol.1, %if.then48 ], [ %symbol.2, %if.then108 ], [ %symbol.3, %if.then178 ], [ %symbol.4, %if.then249 ], [ %symbol.5, %if.then320 ], [ %symbol.6, %if.then391 ], [ %symbol.7, %if.then462 ], [ %symbol.8, %if.then533 ], [ %symbol.9, %if.then604 ], [ %symbol.26, %if.then1298 ], [ %symbol.10, %if.then682 ], [ %symbol.12, %if.then759 ], [ %symbol.14, %if.then837 ], [ %symbol.16, %if.then915 ], [ %symbol.18, %if.then993 ], [ %symbol.20, %if.then1071 ], [ %symbol.22, %if.then1149 ], [ %symbol.24, %if.then1227 ], [ %symbol.27, %if.then1332 ], [ %symbol.28, %if.then1384 ], [ %symbol.29, %if.then1430 ], [ %symbol.30, %if.then1520 ], [ %symbol.31, %if.then1611 ], [ %symbol.47, %if.then2721 ], [ %symbol.48, %if.then2792 ], [ %symbol.49, %if.then2863 ], [ %symbol.50, %if.then2934 ], [ %symbol.51, %if.then3005 ], [ %symbol.52, %if.then3076 ], [ %symbol.69, %if.end3911 ], [ %symbol.62, %if.then3463 ], [ %symbol.60, %if.then3388 ], [ %symbol.58, %if.then3313 ], [ %symbol.56, %if.then3238 ], [ %symbol.54, %if.then3165 ], [ %symbol.63, %if.then3536 ], [ %symbol.64, %if.then3583 ], [ %symbol.65, %if.then3659 ], [ %symbol.66, %if.then3736 ], [ %symbol.67, %if.then3813 ], [ %symbol.68, %if.then3894 ], [ %symbol.68, %if.end3896 ], [ %symbol.68, %do.body3887 ], [ %symbol.67, %if.then3880 ], [ %symbol.33, %if.then1720 ], [ %symbol.34, %if.then1767 ], [ %symbol.35, %if.then1857 ], [ %symbol.36, %if.then1948 ], [ %symbol.38, %if.then2059 ], [ %symbol.39, %if.then2139 ], [ %symbol.40, %if.then2220 ], [ %symbol.41, %if.then2301 ], [ %symbol.42, %if.then2382 ], [ %symbol.43, %if.then2463 ], [ %symbol.44, %if.then2544 ], [ %symbol.45, %if.then2625 ], [ %symbol.70, %if.then3946 ], [ %symbol.71, %if.then3995 ], [ %symbol.72, %if.then4048 ], [ %symbol.75, %if.then4246 ], [ %symbol.76, %if.then4293 ], [ %symbol.77, %if.then4384 ], [ %symbol.78, %if.then4475 ], [ %symbol.80, %if.then4584 ], [ %symbol.81, %if.then4632 ], [ %symbol.82, %if.then4723 ], [ %symbol.83, %if.then4814 ], [ %symbol.85, %if.then4925 ], [ %symbol.86, %if.then5006 ], [ %symbol.87, %if.then5087 ], [ %symbol.88, %if.then5168 ], [ %symbol.89, %if.then5249 ], [ %symbol.90, %if.then5330 ], [ %symbol.91, %if.then5411 ], [ %symbol.92, %if.then5492 ], [ %symbol.73, %if.then4101 ], [ %symbol.74, %if.then4169 ], [ %symbol.27, %do.body3917 ], !dbg !456
  %limit.81 = phi i32 [ %limit.80, %if.then5586 ], [ %limit.80, %do.end5600 ], [ %limit.79, %if.then5575 ], [ %limit.1, %if.then48 ], [ %limit.2, %if.then108 ], [ %limit.3, %if.then178 ], [ %limit.4, %if.then249 ], [ %limit.5, %if.then320 ], [ %limit.6, %if.then391 ], [ %limit.7, %if.then462 ], [ %limit.8, %if.then533 ], [ %limit.9, %if.then604 ], [ %limit.19, %if.then1298 ], [ %limit.10, %if.then682 ], [ %limit.11, %if.then759 ], [ %limit.12, %if.then837 ], [ %limit.13, %if.then915 ], [ %limit.14, %if.then993 ], [ %limit.15, %if.then1071 ], [ %limit.16, %if.then1149 ], [ %limit.17, %if.then1227 ], [ %limit.20, %if.then1332 ], [ %limit.21, %if.then1384 ], [ %limit.22, %if.then1430 ], [ %limit.23, %if.then1520 ], [ %limit.24, %if.then1611 ], [ %limit.38, %if.then2721 ], [ %limit.39, %if.then2792 ], [ %limit.40, %if.then2863 ], [ %limit.41, %if.then2934 ], [ %limit.42, %if.then3005 ], [ %limit.43, %if.then3076 ], [ %limit.56, %if.end3911 ], [ 1, %if.then3463 ], [ 2, %if.then3388 ], [ 3, %if.then3313 ], [ 4, %if.then3238 ], [ 5, %if.then3165 ], [ %limit.50, %if.then3536 ], [ %limit.51, %if.then3583 ], [ %limit.52, %if.then3659 ], [ %limit.53, %if.then3736 ], [ %limit.54, %if.then3813 ], [ %limit.55, %if.then3894 ], [ %limit.55, %if.end3896 ], [ %limit.55, %do.body3887 ], [ %limit.54, %if.then3880 ], [ %limit.25, %if.then1720 ], [ %limit.26, %if.then1767 ], [ %limit.27, %if.then1857 ], [ %limit.28, %if.then1948 ], [ %limit.29, %if.then2059 ], [ %limit.30, %if.then2139 ], [ %limit.31, %if.then2220 ], [ %limit.32, %if.then2301 ], [ %limit.33, %if.then2382 ], [ %limit.34, %if.then2463 ], [ %limit.35, %if.then2544 ], [ %limit.36, %if.then2625 ], [ %limit.57, %if.then3946 ], [ %limit.58, %if.then3995 ], [ %limit.59, %if.then4048 ], [ %limit.63, %if.then4246 ], [ %limit.64, %if.then4293 ], [ %limit.65, %if.then4384 ], [ %limit.66, %if.then4475 ], [ %limit.67, %if.then4584 ], [ %limit.68, %if.then4632 ], [ %limit.69, %if.then4723 ], [ %limit.70, %if.then4814 ], [ %limit.71, %if.then4925 ], [ %limit.72, %if.then5006 ], [ %limit.73, %if.then5087 ], [ %limit.74, %if.then5168 ], [ %limit.75, %if.then5249 ], [ %limit.76, %if.then5330 ], [ %limit.77, %if.then5411 ], [ %limit.78, %if.then5492 ], [ %limit.60, %if.then4101 ], [ %limit.61, %if.then4169 ], [ %limit.20, %do.body3917 ], !dbg !456
  %offset.87 = phi i32 [ %offset.86, %if.then5586 ], [ %offset.86, %do.end5600 ], [ %offset.85, %if.then5575 ], [ %offset.1, %if.then48 ], [ %offset.2, %if.then108 ], [ %offset.3, %if.then178 ], [ %offset.4, %if.then249 ], [ %offset.5, %if.then320 ], [ %offset.6, %if.then391 ], [ %offset.7, %if.then462 ], [ %offset.8, %if.then533 ], [ %offset.9, %if.then604 ], [ %offset.26, %if.then1298 ], [ %offset.10, %if.then682 ], [ %offset.12, %if.then759 ], [ %offset.14, %if.then837 ], [ %offset.16, %if.then915 ], [ %offset.18, %if.then993 ], [ %offset.20, %if.then1071 ], [ %offset.22, %if.then1149 ], [ %offset.24, %if.then1227 ], [ %offset.27, %if.then1332 ], [ %offset.28, %if.then1384 ], [ %offset.29, %if.then1430 ], [ %offset.30, %if.then1520 ], [ %offset.31, %if.then1611 ], [ %offset.45, %if.then2721 ], [ %offset.46, %if.then2792 ], [ %offset.47, %if.then2863 ], [ %offset.48, %if.then2934 ], [ %offset.49, %if.then3005 ], [ %offset.50, %if.then3076 ], [ %offset.62, %if.end3911 ], [ %offset.55, %if.then3463 ], [ %offset.54, %if.then3388 ], [ %offset.53, %if.then3313 ], [ %offset.52, %if.then3238 ], [ %offset.51, %if.then3165 ], [ %offset.56, %if.then3536 ], [ %offset.57, %if.then3583 ], [ %offset.58, %if.then3659 ], [ %offset.59, %if.then3736 ], [ %offset.60, %if.then3813 ], [ %offset.61, %if.then3894 ], [ %offset.61, %if.end3896 ], [ %offset.61, %do.body3887 ], [ %offset.60, %if.then3880 ], [ %offset.32, %if.then1720 ], [ %offset.33, %if.then1767 ], [ %offset.34, %if.then1857 ], [ %offset.35, %if.then1948 ], [ %offset.36, %if.then2059 ], [ %offset.37, %if.then2139 ], [ %offset.38, %if.then2220 ], [ %offset.39, %if.then2301 ], [ %offset.40, %if.then2382 ], [ %offset.41, %if.then2463 ], [ %offset.42, %if.then2544 ], [ %offset.43, %if.then2625 ], [ %offset.63, %if.then3946 ], [ %offset.64, %if.then3995 ], [ %offset.65, %if.then4048 ], [ %offset.69, %if.then4246 ], [ %offset.70, %if.then4293 ], [ %offset.71, %if.then4384 ], [ %offset.72, %if.then4475 ], [ %offset.73, %if.then4584 ], [ %offset.74, %if.then4632 ], [ %offset.75, %if.then4723 ], [ %offset.76, %if.then4814 ], [ %offset.77, %if.then4925 ], [ %offset.78, %if.then5006 ], [ %offset.79, %if.then5087 ], [ %offset.80, %if.then5168 ], [ %offset.81, %if.then5249 ], [ %offset.82, %if.then5330 ], [ %offset.83, %if.then5411 ], [ %offset.84, %if.then5492 ], [ %offset.66, %if.then4101 ], [ %offset.67, %if.then4169 ], [ %offset.27, %do.body3917 ], !dbg !456
  %rc_in_pos.153 = phi i64 [ %in_size, %if.then5586 ], [ %rc_in_pos.152, %do.end5600 ], [ %rc_in_pos.150, %if.then5575 ], [ %in_size, %if.then48 ], [ %in_size, %if.then108 ], [ %in_size, %if.then178 ], [ %in_size, %if.then249 ], [ %in_size, %if.then320 ], [ %in_size, %if.then391 ], [ %in_size, %if.then462 ], [ %in_size, %if.then533 ], [ %in_size, %if.then604 ], [ %rc_in_pos.36, %if.then1298 ], [ %in_size, %if.then682 ], [ %in_size, %if.then759 ], [ %in_size, %if.then837 ], [ %in_size, %if.then915 ], [ %in_size, %if.then993 ], [ %in_size, %if.then1071 ], [ %in_size, %if.then1149 ], [ %in_size, %if.then1227 ], [ %in_size, %if.then1332 ], [ %in_size, %if.then1384 ], [ %in_size, %if.then1430 ], [ %in_size, %if.then1520 ], [ %in_size, %if.then1611 ], [ %in_size, %if.then2721 ], [ %in_size, %if.then2792 ], [ %in_size, %if.then2863 ], [ %in_size, %if.then2934 ], [ %in_size, %if.then3005 ], [ %in_size, %if.then3076 ], [ %rc_in_pos.107, %if.end3911 ], [ %in_size, %if.then3463 ], [ %in_size, %if.then3388 ], [ %in_size, %if.then3313 ], [ %in_size, %if.then3238 ], [ %in_size, %if.then3165 ], [ %in_size, %if.then3536 ], [ %in_size, %if.then3583 ], [ %in_size, %if.then3659 ], [ %in_size, %if.then3736 ], [ %in_size, %if.then3813 ], [ %in_size, %if.then3894 ], [ %inc3901, %if.end3896 ], [ %rc_in_pos.105, %do.body3887 ], [ %rc_in_pos.104, %if.then3880 ], [ %in_size, %if.then1720 ], [ %in_size, %if.then1767 ], [ %in_size, %if.then1857 ], [ %in_size, %if.then1948 ], [ %in_size, %if.then2059 ], [ %in_size, %if.then2139 ], [ %in_size, %if.then2220 ], [ %in_size, %if.then2301 ], [ %in_size, %if.then2382 ], [ %in_size, %if.then2463 ], [ %in_size, %if.then2544 ], [ %in_size, %if.then2625 ], [ %in_size, %if.then3946 ], [ %in_size, %if.then3995 ], [ %rc_in_pos.112, %if.then4048 ], [ %in_size, %if.then4246 ], [ %in_size, %if.then4293 ], [ %in_size, %if.then4384 ], [ %in_size, %if.then4475 ], [ %in_size, %if.then4584 ], [ %in_size, %if.then4632 ], [ %in_size, %if.then4723 ], [ %in_size, %if.then4814 ], [ %in_size, %if.then4925 ], [ %in_size, %if.then5006 ], [ %in_size, %if.then5087 ], [ %in_size, %if.then5168 ], [ %in_size, %if.then5249 ], [ %in_size, %if.then5330 ], [ %in_size, %if.then5411 ], [ %in_size, %if.then5492 ], [ %in_size, %if.then4101 ], [ %in_size, %if.then4169 ], [ %rc_in_pos.38, %do.body3917 ], !dbg !456
  %cmp5631 = phi i1 [ true, %if.then5586 ], [ true, %do.end5600 ], [ true, %if.then5575 ], [ true, %if.then48 ], [ true, %if.then108 ], [ true, %if.then178 ], [ true, %if.then249 ], [ true, %if.then320 ], [ true, %if.then391 ], [ true, %if.then462 ], [ true, %if.then533 ], [ true, %if.then604 ], [ true, %if.then1298 ], [ true, %if.then682 ], [ true, %if.then759 ], [ true, %if.then837 ], [ true, %if.then915 ], [ true, %if.then993 ], [ true, %if.then1071 ], [ true, %if.then1149 ], [ true, %if.then1227 ], [ true, %if.then1332 ], [ true, %if.then1384 ], [ true, %if.then1430 ], [ true, %if.then1520 ], [ true, %if.then1611 ], [ true, %if.then2721 ], [ true, %if.then2792 ], [ true, %if.then2863 ], [ true, %if.then2934 ], [ true, %if.then3005 ], [ true, %if.then3076 ], [ false, %if.end3911 ], [ true, %if.then3463 ], [ true, %if.then3388 ], [ true, %if.then3313 ], [ true, %if.then3238 ], [ true, %if.then3165 ], [ true, %if.then3536 ], [ true, %if.then3583 ], [ true, %if.then3659 ], [ true, %if.then3736 ], [ true, %if.then3813 ], [ true, %if.then3894 ], [ false, %if.end3896 ], [ false, %do.body3887 ], [ false, %if.then3880 ], [ true, %if.then1720 ], [ true, %if.then1767 ], [ true, %if.then1857 ], [ true, %if.then1948 ], [ true, %if.then2059 ], [ true, %if.then2139 ], [ true, %if.then2220 ], [ true, %if.then2301 ], [ true, %if.then2382 ], [ true, %if.then2463 ], [ true, %if.then2544 ], [ true, %if.then2625 ], [ true, %if.then3946 ], [ true, %if.then3995 ], [ true, %if.then4048 ], [ true, %if.then4246 ], [ true, %if.then4293 ], [ true, %if.then4384 ], [ true, %if.then4475 ], [ true, %if.then4584 ], [ true, %if.then4632 ], [ true, %if.then4723 ], [ true, %if.then4814 ], [ true, %if.then4925 ], [ true, %if.then5006 ], [ true, %if.then5087 ], [ true, %if.then5168 ], [ true, %if.then5249 ], [ true, %if.then5330 ], [ true, %if.then5411 ], [ true, %if.then5492 ], [ true, %if.then4101 ], [ true, %if.then4169 ], [ false, %do.body3917 ], !dbg !456
  %cmp5644 = phi i1 [ false, %if.then5586 ], [ false, %do.end5600 ], [ false, %if.then5575 ], [ false, %if.then48 ], [ false, %if.then108 ], [ false, %if.then178 ], [ false, %if.then249 ], [ false, %if.then320 ], [ false, %if.then391 ], [ false, %if.then462 ], [ false, %if.then533 ], [ false, %if.then604 ], [ false, %if.then1298 ], [ false, %if.then682 ], [ false, %if.then759 ], [ false, %if.then837 ], [ false, %if.then915 ], [ false, %if.then993 ], [ false, %if.then1071 ], [ false, %if.then1149 ], [ false, %if.then1227 ], [ false, %if.then1332 ], [ false, %if.then1384 ], [ false, %if.then1430 ], [ false, %if.then1520 ], [ false, %if.then1611 ], [ false, %if.then2721 ], [ false, %if.then2792 ], [ false, %if.then2863 ], [ false, %if.then2934 ], [ false, %if.then3005 ], [ false, %if.then3076 ], [ false, %if.end3911 ], [ false, %if.then3463 ], [ false, %if.then3388 ], [ false, %if.then3313 ], [ false, %if.then3238 ], [ false, %if.then3165 ], [ false, %if.then3536 ], [ false, %if.then3583 ], [ false, %if.then3659 ], [ false, %if.then3736 ], [ false, %if.then3813 ], [ false, %if.then3894 ], [ true, %if.end3896 ], [ true, %do.body3887 ], [ false, %if.then3880 ], [ false, %if.then1720 ], [ false, %if.then1767 ], [ false, %if.then1857 ], [ false, %if.then1948 ], [ false, %if.then2059 ], [ false, %if.then2139 ], [ false, %if.then2220 ], [ false, %if.then2301 ], [ false, %if.then2382 ], [ false, %if.then2463 ], [ false, %if.then2544 ], [ false, %if.then2625 ], [ false, %if.then3946 ], [ false, %if.then3995 ], [ false, %if.then4048 ], [ false, %if.then4246 ], [ false, %if.then4293 ], [ false, %if.then4384 ], [ false, %if.then4475 ], [ false, %if.then4584 ], [ false, %if.then4632 ], [ false, %if.then4723 ], [ false, %if.then4814 ], [ false, %if.then4925 ], [ false, %if.then5006 ], [ false, %if.then5087 ], [ false, %if.then5168 ], [ false, %if.then5249 ], [ false, %if.then5330 ], [ false, %if.then5411 ], [ false, %if.then5492 ], [ false, %if.then4101 ], [ false, %if.then4169 ], [ false, %do.body3917 ], !dbg !456
  %ret.0 = phi i32 [ 0, %if.then5586 ], [ 0, %do.end5600 ], [ 0, %if.then5575 ], [ 0, %if.then48 ], [ 0, %if.then108 ], [ 0, %if.then178 ], [ 0, %if.then249 ], [ 0, %if.then320 ], [ 0, %if.then391 ], [ 0, %if.then462 ], [ 0, %if.then533 ], [ 0, %if.then604 ], [ 0, %if.then1298 ], [ 0, %if.then682 ], [ 0, %if.then759 ], [ 0, %if.then837 ], [ 0, %if.then915 ], [ 0, %if.then993 ], [ 0, %if.then1071 ], [ 0, %if.then1149 ], [ 0, %if.then1227 ], [ 0, %if.then1332 ], [ 0, %if.then1384 ], [ 0, %if.then1430 ], [ 0, %if.then1520 ], [ 0, %if.then1611 ], [ 0, %if.then2721 ], [ 0, %if.then2792 ], [ 0, %if.then2863 ], [ 0, %if.then2934 ], [ 0, %if.then3005 ], [ 0, %if.then3076 ], [ 9, %if.end3911 ], [ 0, %if.then3463 ], [ 0, %if.then3388 ], [ 0, %if.then3313 ], [ 0, %if.then3238 ], [ 0, %if.then3165 ], [ 0, %if.then3536 ], [ 0, %if.then3583 ], [ 0, %if.then3659 ], [ 0, %if.then3736 ], [ 0, %if.then3813 ], [ 0, %if.then3894 ], [ 1, %if.end3896 ], [ 1, %do.body3887 ], [ 9, %if.then3880 ], [ 0, %if.then1720 ], [ 0, %if.then1767 ], [ 0, %if.then1857 ], [ 0, %if.then1948 ], [ 0, %if.then2059 ], [ 0, %if.then2139 ], [ 0, %if.then2220 ], [ 0, %if.then2301 ], [ 0, %if.then2382 ], [ 0, %if.then2463 ], [ 0, %if.then2544 ], [ 0, %if.then2625 ], [ 0, %if.then3946 ], [ 0, %if.then3995 ], [ 0, %if.then4048 ], [ 0, %if.then4246 ], [ 0, %if.then4293 ], [ 0, %if.then4384 ], [ 0, %if.then4475 ], [ 0, %if.then4584 ], [ 0, %if.then4632 ], [ 0, %if.then4723 ], [ 0, %if.then4814 ], [ 0, %if.then4925 ], [ 0, %if.then5006 ], [ 0, %if.then5087 ], [ 0, %if.then5168 ], [ 0, %if.then5249 ], [ 0, %if.then5330 ], [ 0, %if.then5411 ], [ 0, %if.then5492 ], [ 0, %if.then4101 ], [ 0, %if.then4169 ], [ 9, %do.body3917 ], !dbg !456
  %rc1.sroa.0.172 = phi i32 [ %rc1.sroa.0.170, %if.then5586 ], [ %rc1.sroa.0.171, %do.end5600 ], [ %rc1.sroa.0.169, %if.then5575 ], [ %rc1.sroa.0.1, %if.then48 ], [ %rc1.sroa.0.3, %if.then108 ], [ %rc1.sroa.0.5, %if.then178 ], [ %rc1.sroa.0.7, %if.then249 ], [ %rc1.sroa.0.9, %if.then320 ], [ %rc1.sroa.0.11, %if.then391 ], [ %rc1.sroa.0.13, %if.then462 ], [ %rc1.sroa.0.15, %if.then533 ], [ %rc1.sroa.0.17, %if.then604 ], [ %rc1.sroa.0.43, %if.then1298 ], [ %rc1.sroa.0.19, %if.then682 ], [ %rc1.sroa.0.22, %if.then759 ], [ %rc1.sroa.0.25, %if.then837 ], [ %rc1.sroa.0.28, %if.then915 ], [ %rc1.sroa.0.31, %if.then993 ], [ %rc1.sroa.0.34, %if.then1071 ], [ %rc1.sroa.0.37, %if.then1149 ], [ %rc1.sroa.0.40, %if.then1227 ], [ %rc1.sroa.0.44, %if.then1332 ], [ %rc1.sroa.0.46, %if.then1384 ], [ %rc1.sroa.0.48, %if.then1430 ], [ %rc1.sroa.0.50, %if.then1520 ], [ %rc1.sroa.0.52, %if.then1611 ], [ %rc1.sroa.0.82, %if.then2721 ], [ %rc1.sroa.0.84, %if.then2792 ], [ %rc1.sroa.0.86, %if.then2863 ], [ %rc1.sroa.0.88, %if.then2934 ], [ %rc1.sroa.0.90, %if.then3005 ], [ %rc1.sroa.0.92, %if.then3076 ], [ %rc1.sroa.0.123, %if.end3911 ], [ %rc1.sroa.0.107, %if.then3463 ], [ %rc1.sroa.0.104, %if.then3388 ], [ %rc1.sroa.0.101, %if.then3313 ], [ %rc1.sroa.0.98, %if.then3238 ], [ %rc1.sroa.0.95, %if.then3165 ], [ %rc1.sroa.0.110, %if.then3536 ], [ %rc1.sroa.0.112, %if.then3583 ], [ %rc1.sroa.0.114, %if.then3659 ], [ %rc1.sroa.0.116, %if.then3736 ], [ %rc1.sroa.0.118, %if.then3813 ], [ %rc1.sroa.0.121, %if.then3894 ], [ %shl3898, %if.end3896 ], [ %rc1.sroa.0.121, %do.body3887 ], [ %rc1.sroa.0.120, %if.then3880 ], [ %rc1.sroa.0.55, %if.then1720 ], [ %rc1.sroa.0.57, %if.then1767 ], [ %rc1.sroa.0.59, %if.then1857 ], [ %rc1.sroa.0.61, %if.then1948 ], [ %rc1.sroa.0.64, %if.then2059 ], [ %rc1.sroa.0.66, %if.then2139 ], [ %rc1.sroa.0.68, %if.then2220 ], [ %rc1.sroa.0.70, %if.then2301 ], [ %rc1.sroa.0.72, %if.then2382 ], [ %rc1.sroa.0.74, %if.then2463 ], [ %rc1.sroa.0.76, %if.then2544 ], [ %rc1.sroa.0.78, %if.then2625 ], [ %rc1.sroa.0.124, %if.then3946 ], [ %rc1.sroa.0.126, %if.then3995 ], [ %rc1.sroa.0.128, %if.then4048 ], [ %rc1.sroa.0.134, %if.then4246 ], [ %rc1.sroa.0.136, %if.then4293 ], [ %rc1.sroa.0.138, %if.then4384 ], [ %rc1.sroa.0.140, %if.then4475 ], [ %rc1.sroa.0.143, %if.then4584 ], [ %rc1.sroa.0.145, %if.then4632 ], [ %rc1.sroa.0.147, %if.then4723 ], [ %rc1.sroa.0.149, %if.then4814 ], [ %rc1.sroa.0.152, %if.then4925 ], [ %rc1.sroa.0.154, %if.then5006 ], [ %rc1.sroa.0.156, %if.then5087 ], [ %rc1.sroa.0.158, %if.then5168 ], [ %rc1.sroa.0.160, %if.then5249 ], [ %rc1.sroa.0.162, %if.then5330 ], [ %rc1.sroa.0.164, %if.then5411 ], [ %rc1.sroa.0.166, %if.then5492 ], [ %rc1.sroa.0.129, %if.then4101 ], [ %rc1.sroa.0.131, %if.then4169 ], [ %sub3919, %do.body3917 ], !dbg !456
  %316 = phi i32 [ %rc1.sroa.500.170, %if.then5586 ], [ %rc1.sroa.500.171, %do.end5600 ], [ %rc1.sroa.500.169, %if.then5575 ], [ %rc1.sroa.500.1, %if.then48 ], [ %rc1.sroa.500.3, %if.then108 ], [ %rc1.sroa.500.5, %if.then178 ], [ %rc1.sroa.500.7, %if.then249 ], [ %rc1.sroa.500.9, %if.then320 ], [ %rc1.sroa.500.11, %if.then391 ], [ %rc1.sroa.500.13, %if.then462 ], [ %rc1.sroa.500.15, %if.then533 ], [ %rc1.sroa.500.17, %if.then604 ], [ %rc1.sroa.500.43, %if.then1298 ], [ %rc1.sroa.500.19, %if.then682 ], [ %rc1.sroa.500.22, %if.then759 ], [ %rc1.sroa.500.25, %if.then837 ], [ %rc1.sroa.500.28, %if.then915 ], [ %rc1.sroa.500.31, %if.then993 ], [ %rc1.sroa.500.34, %if.then1071 ], [ %rc1.sroa.500.37, %if.then1149 ], [ %rc1.sroa.500.40, %if.then1227 ], [ %rc1.sroa.500.44, %if.then1332 ], [ %rc1.sroa.500.46, %if.then1384 ], [ %rc1.sroa.500.48, %if.then1430 ], [ %rc1.sroa.500.50, %if.then1520 ], [ %rc1.sroa.500.52, %if.then1611 ], [ %rc1.sroa.500.82, %if.then2721 ], [ %rc1.sroa.500.84, %if.then2792 ], [ %rc1.sroa.500.86, %if.then2863 ], [ %rc1.sroa.500.88, %if.then2934 ], [ %rc1.sroa.500.90, %if.then3005 ], [ %rc1.sroa.500.92, %if.then3076 ], [ %rc1.sroa.500.123, %if.end3911 ], [ %rc1.sroa.500.107, %if.then3463 ], [ %rc1.sroa.500.104, %if.then3388 ], [ %rc1.sroa.500.101, %if.then3313 ], [ %rc1.sroa.500.98, %if.then3238 ], [ %rc1.sroa.500.95, %if.then3165 ], [ %rc1.sroa.500.110, %if.then3536 ], [ %rc1.sroa.500.112, %if.then3583 ], [ %rc1.sroa.500.114, %if.then3659 ], [ %rc1.sroa.500.116, %if.then3736 ], [ %rc1.sroa.500.118, %if.then3813 ], [ %rc1.sroa.500.121, %if.then3894 ], [ %or3904, %if.end3896 ], [ %rc1.sroa.500.121, %do.body3887 ], [ %rc1.sroa.500.120, %if.then3880 ], [ %rc1.sroa.500.55, %if.then1720 ], [ %rc1.sroa.500.57, %if.then1767 ], [ %rc1.sroa.500.59, %if.then1857 ], [ %rc1.sroa.500.61, %if.then1948 ], [ %rc1.sroa.500.64, %if.then2059 ], [ %rc1.sroa.500.66, %if.then2139 ], [ %rc1.sroa.500.68, %if.then2220 ], [ %rc1.sroa.500.70, %if.then2301 ], [ %rc1.sroa.500.72, %if.then2382 ], [ %rc1.sroa.500.74, %if.then2463 ], [ %rc1.sroa.500.76, %if.then2544 ], [ %rc1.sroa.500.78, %if.then2625 ], [ %rc1.sroa.500.124, %if.then3946 ], [ %rc1.sroa.500.126, %if.then3995 ], [ %rc1.sroa.500.128, %if.then4048 ], [ %rc1.sroa.500.134, %if.then4246 ], [ %rc1.sroa.500.136, %if.then4293 ], [ %rc1.sroa.500.138, %if.then4384 ], [ %rc1.sroa.500.140, %if.then4475 ], [ %rc1.sroa.500.143, %if.then4584 ], [ %rc1.sroa.500.145, %if.then4632 ], [ %rc1.sroa.500.147, %if.then4723 ], [ %rc1.sroa.500.149, %if.then4814 ], [ %rc1.sroa.500.152, %if.then4925 ], [ %rc1.sroa.500.154, %if.then5006 ], [ %rc1.sroa.500.156, %if.then5087 ], [ %rc1.sroa.500.158, %if.then5168 ], [ %rc1.sroa.500.160, %if.then5249 ], [ %rc1.sroa.500.162, %if.then5330 ], [ %rc1.sroa.500.164, %if.then5411 ], [ %rc1.sroa.500.166, %if.then5492 ], [ %rc1.sroa.500.129, %if.then4101 ], [ %rc1.sroa.500.131, %if.then4169 ], [ %sub3921, %do.body3917 ], !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.12.81, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i64 %dict.sroa.36.79, metadata !266, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %316, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rc1.sroa.0.172, metadata !269, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !456
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !287, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i64 %rc_in_pos.153, metadata !270, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %offset.87, metadata !282, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %limit.81, metadata !281, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %symbol.96, metadata !280, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata ptr %probs.75, metadata !279, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %state.76, metadata !272, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep3.76, metadata !276, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep2.76, metadata !275, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep1.76, metadata !274, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.value(metadata i32 %rep0.86, metadata !273, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.label(metadata !310), !dbg !2408
  %pos5603 = getelementptr inbounds %struct.lzma_dict, ptr %dictptr, i64 0, i32 1, !dbg !2409
  store i64 %dict.sroa.12.81, ptr %pos5603, align 8, !dbg !2410, !tbaa !2411
  %full5604 = getelementptr inbounds %struct.lzma_dict, ptr %dictptr, i64 0, i32 2, !dbg !2413
  store i64 %dict.sroa.36.79, ptr %full5604, align 8, !dbg !2414, !tbaa !2415
  store i32 %rc1.sroa.0.172, ptr %rc, align 4, !dbg !2416, !tbaa.struct !511
  store i32 %316, ptr %rc1.sroa.500.0.rc2.sroa_idx, align 4, !dbg !2416, !tbaa.struct !482
  store i32 0, ptr %rc1.sroa.856.0.rc2.sroa_idx, align 4, !dbg !2416, !tbaa.struct !2418
  store i64 %rc_in_pos.153, ptr %in_pos, align 8, !dbg !2416, !tbaa !484
  store i32 %state.76, ptr %state3, align 8, !dbg !2419, !tbaa !513
  store i32 %rep0.86, ptr %rep04, align 4, !dbg !2420, !tbaa !518
  store i32 %rep1.76, ptr %rep15, align 8, !dbg !2421, !tbaa !520
  store i32 %rep2.76, ptr %rep26, align 4, !dbg !2422, !tbaa !522
  store i32 %rep3.76, ptr %rep37, align 8, !dbg !2423, !tbaa !524
  store ptr %probs.75, ptr %probs9, align 8, !dbg !2424, !tbaa !528
  store i32 %symbol.96, ptr %symbol10, align 8, !dbg !2425, !tbaa !530
  store i32 %limit.81, ptr %limit11, align 4, !dbg !2426, !tbaa !532
  store i32 %offset.87, ptr %offset12, align 8, !dbg !2427, !tbaa !534
  call void @llvm.dbg.value(metadata i32 %len.76, metadata !283, metadata !DIExpression()), !dbg !456
  store i32 %len.76, ptr %len13, align 4, !dbg !2428, !tbaa !536
  %317 = load i64, ptr %uncompressed_size, align 8, !dbg !2429, !tbaa !543
  %cmp5620.not = icmp eq i64 %317, -1, !dbg !2431
  br i1 %cmp5620.not, label %if.end5643, label %if.then5622, !dbg !2432

if.then5622:                                      ; preds = %out
  %sub5624.neg = sub i64 %dict.sroa.12.0.copyload, %dict.sroa.12.81, !dbg !2433
  %sub5626 = add i64 %317, %sub5624.neg, !dbg !2435
  store i64 %sub5626, ptr %uncompressed_size, align 8, !dbg !2435, !tbaa !543
  %cmp5628 = icmp eq i64 %sub5626, 0, !dbg !2436
  %or.cond = and i1 %cmp5631, %cmp5628, !dbg !2438
  br i1 %or.cond, label %land.lhs.true5633, label %if.end5643, !dbg !2438

land.lhs.true5633:                                ; preds = %if.then5622
  %318 = load i32, ptr %sequence, align 8, !dbg !2439, !tbaa !548
  switch i32 %318, label %cleanup.fold.split [
    i32 0, label %cleanup
    i32 1, label %if.then5646
  ], !dbg !2440

if.end5643:                                       ; preds = %if.then5622, %out
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !287, metadata !DIExpression()), !dbg !456
  br i1 %cmp5644, label %if.then5646, label %cleanup, !dbg !2441

if.then5646:                                      ; preds = %land.lhs.true5633, %if.end5643
  %code5648 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i32 1, !dbg !2442
  %cmp5649 = icmp eq i32 %316, 0, !dbg !2442
  %spec.select7836 = select i1 %cmp5649, i32 1, i32 9, !dbg !2446
  call void @llvm.dbg.value(metadata i32 %spec.select7836, metadata !287, metadata !DIExpression()), !dbg !456
  store i32 -1, ptr %rc, align 4, !dbg !2447, !tbaa !2449
  store i32 0, ptr %code5648, align 4, !dbg !2447, !tbaa !2450
  store i32 5, ptr %init_bytes_left.i, align 4, !dbg !2447, !tbaa !2451
  br label %cleanup, !dbg !2452

cleanup.fold.split:                               ; preds = %land.lhs.true5633
  br label %cleanup, !dbg !2453

cleanup:                                          ; preds = %while.body.i, %land.lhs.true5633, %cleanup.fold.split, %if.end5643, %if.then5646
  %retval.0 = phi i32 [ %spec.select7836, %if.then5646 ], [ %ret.0, %if.end5643 ], [ %318, %land.lhs.true5633 ], [ 9, %cleanup.fold.split ], [ 0, %while.body.i ], !dbg !456
  ret i32 %retval.0, !dbg !2453
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @lzma_decoder_reset(ptr noundef %pcoder, ptr nocapture noundef readonly %opt) #3 !dbg !2454 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2456, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %opt, metadata !2457, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2458, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata ptr %opt, metadata !2459, metadata !DIExpression()), !dbg !2492
  %pb = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 5, !dbg !2493
  %0 = load i32, ptr %pb, align 4, !dbg !2493, !tbaa !2494
  %notmask = shl nsw i32 -1, %0, !dbg !2495
  %sub = xor i32 %notmask, -1, !dbg !2495
  %pos_mask = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 18, !dbg !2496
  %lc = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 3, !dbg !2497
  %1 = load i32, ptr %lc, align 4, !dbg !2497, !tbaa !2498
  %lp = getelementptr inbounds %struct.lzma_options_lzma, ptr %opt, i64 0, i32 4, !dbg !2499
  %2 = load i32, ptr %lp, align 8, !dbg !2499, !tbaa !2500
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2501, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2509, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %2, metadata !2510, metadata !DIExpression()), !dbg !2517
  %add.i = add i32 %2, %1, !dbg !2519
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 %add.i), metadata !2511, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !2517
  call void @llvm.dbg.value(metadata i32 0, metadata !2512, metadata !DIExpression()), !dbg !2520
  br label %for.cond1.preheader.i, !dbg !2521

for.cond1.preheader.i:                            ; preds = %for.cond.cleanup3.i, %entry
  %i.015.i = phi i32 [ 0, %entry ], [ %inc8.i, %for.cond.cleanup3.i ]
  call void @llvm.dbg.value(metadata i32 %i.015.i, metadata !2512, metadata !DIExpression()), !dbg !2520
  %idxprom.i = zext i32 %i.015.i to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !2514, metadata !DIExpression()), !dbg !2522
  br label %for.body4.i, !dbg !2523

for.cond.cleanup3.i:                              ; preds = %for.body4.i
  %inc8.i = add i32 %i.015.i, 1, !dbg !2524
  call void @llvm.dbg.value(metadata i32 %inc8.i, metadata !2512, metadata !DIExpression()), !dbg !2520
  %i.0.highbits.i = lshr i32 %inc8.i, %add.i, !dbg !2525
  %cmp.i = icmp eq i32 %i.0.highbits.i, 0, !dbg !2525
  br i1 %cmp.i, label %for.cond1.preheader.i, label %literal_init.exit, !dbg !2521, !llvm.loop !2526

for.body4.i:                                      ; preds = %for.body4.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body4.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !2514, metadata !DIExpression()), !dbg !2522
  %arrayidx6.i = getelementptr inbounds [768 x i16], ptr %pcoder, i64 %idxprom.i, i64 %indvars.iv.i, !dbg !2528
  store i16 1024, ptr %arrayidx6.i, align 2, !dbg !2528, !tbaa !597
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !2530
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !2514, metadata !DIExpression()), !dbg !2522
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 768, !dbg !2531
  br i1 %exitcond.not.i, label %for.cond.cleanup3.i, label %for.body4.i, !dbg !2523, !llvm.loop !2532

literal_init.exit:                                ; preds = %for.cond.cleanup3.i
  %literal_context_bits = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 19, !dbg !2534
  store i32 %1, ptr %literal_context_bits, align 8, !dbg !2535, !tbaa !540
  %notmask241 = shl nsw i32 -1, %2, !dbg !2536
  %sub4 = xor i32 %notmask241, -1, !dbg !2536
  %literal_pos_mask = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 20, !dbg !2537
  store i32 %sub4, ptr %literal_pos_mask, align 4, !dbg !2538, !tbaa !538
  %state = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 13, !dbg !2539
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %state, i8 0, i64 20, i1 false), !dbg !2540
  store i32 %sub, ptr %pos_mask, align 4, !dbg !2541, !tbaa !526
  %rc = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, !dbg !2542
  store i32 -1, ptr %rc, align 4, !dbg !2542, !tbaa !2449
  %code = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i32 1, !dbg !2542
  store i32 0, ptr %code, align 4, !dbg !2542, !tbaa !2450
  %init_bytes_left = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 12, i32 2, !dbg !2542
  store i32 5, ptr %init_bytes_left, align 4, !dbg !2542, !tbaa !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2460, metadata !DIExpression()), !dbg !2544
  %3 = sub i32 0, %notmask, !dbg !2545
  %umax = call i32 @llvm.umax.i32(i32 %3, i32 1), !dbg !2545
  %wide.trip.count = zext i32 %umax to i64
  br label %for.cond11.preheader, !dbg !2545

for.cond11.preheader:                             ; preds = %literal_init.exit, %for.cond.cleanup14
  %indvars.iv257 = phi i64 [ 0, %literal_init.exit ], [ %indvars.iv.next258, %for.cond.cleanup14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv257, metadata !2460, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i32 0, metadata !2462, metadata !DIExpression()), !dbg !2546
  br label %for.body15, !dbg !2547

for.cond.cleanup14:                               ; preds = %for.body15
  %arrayidx23 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, i64 %indvars.iv257, !dbg !2548
  store i16 1024, ptr %arrayidx23, align 2, !dbg !2548, !tbaa !597
  %arrayidx25 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %indvars.iv257, !dbg !2549
  store i16 1024, ptr %arrayidx25, align 2, !dbg !2549, !tbaa !597
  %arrayidx27 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, i64 %indvars.iv257, !dbg !2550
  store i16 1024, ptr %arrayidx27, align 2, !dbg !2550, !tbaa !597
  %arrayidx29 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, i64 %indvars.iv257, !dbg !2551
  store i16 1024, ptr %arrayidx29, align 2, !dbg !2551, !tbaa !597
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next258, metadata !2460, metadata !DIExpression()), !dbg !2544
  %exitcond260.not = icmp eq i64 %indvars.iv.next258, 12, !dbg !2553
  br i1 %exitcond260.not, label %for.cond38.preheader, label %for.cond11.preheader, !dbg !2545, !llvm.loop !2554

for.body15:                                       ; preds = %for.cond11.preheader, %for.body15
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2462, metadata !DIExpression()), !dbg !2546
  %arrayidx17 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, i64 %indvars.iv257, i64 %indvars.iv, !dbg !2556
  store i16 1024, ptr %arrayidx17, align 2, !dbg !2556, !tbaa !597
  %arrayidx21 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, i64 %indvars.iv257, i64 %indvars.iv, !dbg !2559
  store i16 1024, ptr %arrayidx21, align 2, !dbg !2559, !tbaa !597
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2462, metadata !DIExpression()), !dbg !2546
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !2561
  br i1 %exitcond, label %for.cond.cleanup14, label %for.body15, !dbg !2547, !llvm.loop !2562

for.cond38.preheader:                             ; preds = %for.cond.cleanup14, %for.cond.cleanup40
  %indvars.iv265 = phi i64 [ %indvars.iv.next266, %for.cond.cleanup40 ], [ 0, %for.cond.cleanup14 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv265, metadata !2466, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2468, metadata !DIExpression()), !dbg !2565
  br label %for.body41, !dbg !2566

for.cond.cleanup40:                               ; preds = %for.body41
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next266, metadata !2466, metadata !DIExpression()), !dbg !2564
  %exitcond268.not = icmp eq i64 %indvars.iv.next266, 4, !dbg !2568
  br i1 %exitcond268.not, label %for.body56, label %for.cond38.preheader, !dbg !2569, !llvm.loop !2570

for.body41:                                       ; preds = %for.cond38.preheader, %for.body41
  %indvars.iv261 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next262, %for.body41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv261, metadata !2468, metadata !DIExpression()), !dbg !2565
  %arrayidx45 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 7, i64 %indvars.iv265, i64 %indvars.iv261, !dbg !2572
  store i16 1024, ptr %arrayidx45, align 2, !dbg !2572, !tbaa !597
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1, !dbg !2572
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next262, metadata !2468, metadata !DIExpression()), !dbg !2565
  %exitcond264.not = icmp eq i64 %indvars.iv.next262, 64, !dbg !2572
  br i1 %exitcond264.not, label %for.cond.cleanup40, label %for.body41, !dbg !2566, !llvm.loop !2574

for.body56:                                       ; preds = %for.cond.cleanup40, %for.body56
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %for.body56 ], [ 0, %for.cond.cleanup40 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv269, metadata !2471, metadata !DIExpression()), !dbg !2575
  %arrayidx58 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 8, i64 %indvars.iv269, !dbg !2576
  store i16 1024, ptr %arrayidx58, align 2, !dbg !2576, !tbaa !597
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next270, metadata !2471, metadata !DIExpression()), !dbg !2575
  %exitcond272.not = icmp eq i64 %indvars.iv.next270, 114, !dbg !2579
  br i1 %exitcond272.not, label %for.body66, label %for.body56, !dbg !2580, !llvm.loop !2581

for.cond.cleanup65:                               ; preds = %for.body66
  call void @llvm.dbg.value(metadata !DIArgList(i32 1, i32 %0), metadata !2475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_shl, DW_OP_stack_value)), !dbg !2492
  %match_len_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, !dbg !2583
  store i16 1024, ptr %match_len_decoder, align 4, !dbg !2583, !tbaa !1079
  %choice2 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 1, !dbg !2584
  store i16 1024, ptr %choice2, align 2, !dbg !2584, !tbaa !1171
  %rep_len_decoder = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, !dbg !2585
  store i16 1024, ptr %rep_len_decoder, align 8, !dbg !2585, !tbaa !1986
  %choice277 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 1, !dbg !2586
  store i16 1024, ptr %choice277, align 2, !dbg !2586, !tbaa !2078
  call void @llvm.dbg.value(metadata i32 0, metadata !2476, metadata !DIExpression()), !dbg !2587
  br label %for.cond83.preheader, !dbg !2588

for.body66:                                       ; preds = %for.body56, %for.body66
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %for.body66 ], [ 0, %for.body56 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv273, metadata !2473, metadata !DIExpression()), !dbg !2589
  %arrayidx68 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 9, i64 %indvars.iv273, !dbg !2590
  store i16 1024, ptr %arrayidx68, align 2, !dbg !2590, !tbaa !597
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1, !dbg !2590
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next274, metadata !2473, metadata !DIExpression()), !dbg !2589
  %exitcond276.not = icmp eq i64 %indvars.iv.next274, 16, !dbg !2590
  br i1 %exitcond276.not, label %for.cond.cleanup65, label %for.body66, !dbg !2592, !llvm.loop !2593

for.cond83.preheader:                             ; preds = %for.cond.cleanup65, %for.cond.cleanup125
  %pos_state.0253 = phi i32 [ 0, %for.cond.cleanup65 ], [ %inc137, %for.cond.cleanup125 ]
  call void @llvm.dbg.value(metadata i32 %pos_state.0253, metadata !2476, metadata !DIExpression()), !dbg !2587
  %idxprom88 = zext i32 %pos_state.0253 to i64
  call void @llvm.dbg.value(metadata i32 0, metadata !2478, metadata !DIExpression()), !dbg !2594
  br label %for.body86, !dbg !2595

for.body86:                                       ; preds = %for.cond83.preheader, %for.body86
  %indvars.iv277 = phi i64 [ 0, %for.cond83.preheader ], [ %indvars.iv.next278, %for.body86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv277, metadata !2478, metadata !DIExpression()), !dbg !2594
  %arrayidx91 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 2, i64 %idxprom88, i64 %indvars.iv277, !dbg !2596
  store i16 1024, ptr %arrayidx91, align 2, !dbg !2596, !tbaa !597
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next278, metadata !2478, metadata !DIExpression()), !dbg !2594
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, 8, !dbg !2596
  br i1 %exitcond280.not, label %for.body99, label %for.body86, !dbg !2595, !llvm.loop !2598

for.body99:                                       ; preds = %for.body86, %for.body99
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %for.body99 ], [ 0, %for.body86 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv281, metadata !2482, metadata !DIExpression()), !dbg !2599
  %arrayidx104 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 3, i64 %idxprom88, i64 %indvars.iv281, !dbg !2600
  store i16 1024, ptr %arrayidx104, align 2, !dbg !2600, !tbaa !597
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next282, metadata !2482, metadata !DIExpression()), !dbg !2599
  %exitcond284.not = icmp eq i64 %indvars.iv.next282, 8, !dbg !2600
  br i1 %exitcond284.not, label %for.body112, label %for.body99, !dbg !2602, !llvm.loop !2603

for.body112:                                      ; preds = %for.body99, %for.body112
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %for.body112 ], [ 0, %for.body99 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv285, metadata !2484, metadata !DIExpression()), !dbg !2604
  %arrayidx118 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 2, i64 %idxprom88, i64 %indvars.iv285, !dbg !2605
  store i16 1024, ptr %arrayidx118, align 2, !dbg !2605, !tbaa !597
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1, !dbg !2605
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next286, metadata !2484, metadata !DIExpression()), !dbg !2604
  %exitcond288.not = icmp eq i64 %indvars.iv.next286, 8, !dbg !2605
  br i1 %exitcond288.not, label %for.body126, label %for.body112, !dbg !2607, !llvm.loop !2608

for.cond.cleanup125:                              ; preds = %for.body126
  %inc137 = add i32 %pos_state.0253, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32 %inc137, metadata !2476, metadata !DIExpression()), !dbg !2587
  %pos_state.0.highbits = lshr i32 %inc137, %0, !dbg !2610
  %cmp79 = icmp eq i32 %pos_state.0.highbits, 0, !dbg !2610
  br i1 %cmp79, label %for.cond83.preheader, label %for.body143, !dbg !2588, !llvm.loop !2611

for.body126:                                      ; preds = %for.body112, %for.body126
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %for.body126 ], [ 0, %for.body112 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv289, metadata !2486, metadata !DIExpression()), !dbg !2613
  %arrayidx132 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 3, i64 %idxprom88, i64 %indvars.iv289, !dbg !2614
  store i16 1024, ptr %arrayidx132, align 2, !dbg !2614, !tbaa !597
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next290, metadata !2486, metadata !DIExpression()), !dbg !2613
  %exitcond292.not = icmp eq i64 %indvars.iv.next290, 8, !dbg !2614
  br i1 %exitcond292.not, label %for.cond.cleanup125, label %for.body126, !dbg !2616, !llvm.loop !2617

for.body143:                                      ; preds = %for.cond.cleanup125, %for.body143
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %for.body143 ], [ 0, %for.cond.cleanup125 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv293, metadata !2488, metadata !DIExpression()), !dbg !2618
  %arrayidx146 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 10, i32 4, i64 %indvars.iv293, !dbg !2619
  store i16 1024, ptr %arrayidx146, align 2, !dbg !2619, !tbaa !597
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next294, metadata !2488, metadata !DIExpression()), !dbg !2618
  %exitcond296.not = icmp eq i64 %indvars.iv.next294, 256, !dbg !2619
  br i1 %exitcond296.not, label %for.body154, label %for.body143, !dbg !2621, !llvm.loop !2622

for.cond.cleanup153:                              ; preds = %for.body154
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 22, !dbg !2623
  store i32 1, ptr %sequence, align 8, !dbg !2624, !tbaa !548
  %probs = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 23, !dbg !2625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %probs, i8 0, i64 24, i1 false), !dbg !2626
  ret void, !dbg !2627

for.body154:                                      ; preds = %for.body143, %for.body154
  %indvars.iv297 = phi i64 [ %indvars.iv.next298, %for.body154 ], [ 0, %for.body143 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv297, metadata !2490, metadata !DIExpression()), !dbg !2628
  %arrayidx158 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 11, i32 4, i64 %indvars.iv297, !dbg !2629
  store i16 1024, ptr %arrayidx158, align 2, !dbg !2629, !tbaa !597
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next298, metadata !2490, metadata !DIExpression()), !dbg !2628
  %exitcond300.not = icmp eq i64 %indvars.iv.next298, 256, !dbg !2629
  br i1 %exitcond300.not, label %for.cond.cleanup153, label %for.body154, !dbg !2631, !llvm.loop !2632
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @lzma_decoder_uncompressed(ptr nocapture noundef writeonly %pcoder, i64 noundef %uncompressed_size) #4 !dbg !2633 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i64 %uncompressed_size, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !2637, metadata !DIExpression()), !dbg !2638
  %uncompressed_size1 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 21, !dbg !2639
  store i64 %uncompressed_size, ptr %uncompressed_size1, align 8, !dbg !2640, !tbaa !543
  ret void, !dbg !2641
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !2642 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %filters, metadata !2700, metadata !DIExpression()), !dbg !2701
  %call = tail call i32 @lzma_lz_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @lzma_decoder_init) #9, !dbg !2702
  ret i32 %call, !dbg !2703
}

declare !dbg !2704 i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma_decoder_init(ptr nocapture noundef %lz, ptr noundef %allocator, ptr nocapture noundef readonly %options, ptr nocapture noundef writeonly %lz_options) #0 !dbg !2708 {
entry:
  call void @llvm.dbg.value(metadata ptr %lz, metadata !2710, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !2711, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %options, metadata !2712, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !2713, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %options, metadata !2718, metadata !DIExpression()), !dbg !2723
  %lc.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !2726
  %0 = load i32, ptr %lc.i, align 4, !dbg !2726, !tbaa !2498
  %cmp.i = icmp ult i32 %0, 5, !dbg !2727
  br i1 %cmp.i, label %land.lhs.true.i, label %return, !dbg !2728

land.lhs.true.i:                                  ; preds = %entry
  %lp.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !2729
  %1 = load i32, ptr %lp.i, align 8, !dbg !2729, !tbaa !2500
  %cmp1.i = icmp ult i32 %1, 5, !dbg !2730
  %add.i = add i32 %1, %0
  %cmp5.i = icmp ult i32 %add.i, 5
  %or.cond.i = select i1 %cmp1.i, i1 %cmp5.i, i1 false, !dbg !2731
  br i1 %or.cond.i, label %is_lclppb_valid.exit, label %return, !dbg !2731

is_lclppb_valid.exit:                             ; preds = %land.lhs.true.i
  %pb.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !2732
  %2 = load i32, ptr %pb.i, align 4, !dbg !2732, !tbaa !2494
  %cmp6.i = icmp ult i32 %2, 5, !dbg !2733
  br i1 %cmp6.i, label %do.body, label %return, !dbg !2734

do.body:                                          ; preds = %is_lclppb_valid.exit
  call void @llvm.dbg.value(metadata ptr %lz, metadata !368, metadata !DIExpression()) #9, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !369, metadata !DIExpression()) #9, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %options, metadata !370, metadata !DIExpression()) #9, !dbg !2735
  call void @llvm.dbg.value(metadata ptr %lz_options, metadata !371, metadata !DIExpression()) #9, !dbg !2735
  %3 = load ptr, ptr %lz, align 8, !dbg !2737, !tbaa !408
  %cmp.i10 = icmp eq ptr %3, null, !dbg !2738
  br i1 %cmp.i10, label %if.then.i, label %do.end, !dbg !2739

if.then.i:                                        ; preds = %do.body
  %call.i = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %allocator) #9, !dbg !2740
  store ptr %call.i, ptr %lz, align 8, !dbg !2741, !tbaa !408
  %cmp3.i = icmp eq ptr %call.i, null, !dbg !2742
  br i1 %cmp3.i, label %return, label %if.end.i, !dbg !2743

if.end.i:                                         ; preds = %if.then.i
  %code.i = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 1, !dbg !2744
  store ptr @lzma_decode, ptr %code.i, align 8, !dbg !2745, !tbaa !423
  %reset.i = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 2, !dbg !2746
  store ptr @lzma_decoder_reset, ptr %reset.i, align 8, !dbg !2747, !tbaa !426
  %set_uncompressed.i = getelementptr inbounds %struct.lzma_lz_decoder, ptr %lz, i64 0, i32 3, !dbg !2748
  store ptr @lzma_decoder_uncompressed, ptr %set_uncompressed.i, align 8, !dbg !2749, !tbaa !429
  br label %do.end, !dbg !2750

do.end:                                           ; preds = %do.body, %if.end.i
  %4 = phi ptr [ %3, %do.body ], [ %call.i, %if.end.i ], !dbg !2751
  call void @llvm.dbg.value(metadata ptr %options, metadata !372, metadata !DIExpression()) #9, !dbg !2735
  %5 = load i32, ptr %options, align 8, !dbg !2752, !tbaa !432
  %conv.i = zext i32 %5 to i64, !dbg !2753
  store i64 %conv.i, ptr %lz_options, align 8, !dbg !2754, !tbaa !437
  %preset_dict.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 1, !dbg !2755
  %6 = load ptr, ptr %preset_dict.i, align 8, !dbg !2755, !tbaa !441
  %preset_dict7.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 1, !dbg !2756
  store ptr %6, ptr %preset_dict7.i, align 8, !dbg !2757, !tbaa !444
  %preset_dict_size.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 2, !dbg !2758
  %7 = load i32, ptr %preset_dict_size.i, align 8, !dbg !2758, !tbaa !446
  %conv8.i = zext i32 %7 to i64, !dbg !2759
  %preset_dict_size9.i = getelementptr inbounds %struct.lzma_lz_options, ptr %lz_options, i64 0, i32 2, !dbg !2760
  store i64 %conv8.i, ptr %preset_dict_size9.i, align 8, !dbg !2761, !tbaa !450
  call void @llvm.dbg.value(metadata i32 5, metadata !2714, metadata !DIExpression()), !dbg !2762
  tail call void @lzma_decoder_reset(ptr noundef nonnull %4, ptr noundef nonnull %options), !dbg !2763
  %8 = load ptr, ptr %lz, align 8, !dbg !2764, !tbaa !408
  call void @llvm.dbg.value(metadata ptr %8, metadata !2635, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %8, metadata !2637, metadata !DIExpression()), !dbg !2765
  %uncompressed_size1.i = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 21, !dbg !2767
  store i64 -1, ptr %uncompressed_size1.i, align 8, !dbg !2768, !tbaa !543
  br label %return, !dbg !2769

return:                                           ; preds = %if.then.i, %entry, %land.lhs.true.i, %is_lclppb_valid.exit, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ 11, %is_lclppb_valid.exit ], [ 11, %land.lhs.true.i ], [ 11, %entry ], [ 5, %if.then.i ], !dbg !2717
  ret i32 %retval.1, !dbg !2770
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local zeroext i1 @lzma_lzma_lclppb_decode(ptr nocapture noundef writeonly %options, i8 noundef zeroext %byte) local_unnamed_addr #4 !dbg !2771 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !2776, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8 %byte, metadata !2777, metadata !DIExpression()), !dbg !2778
  %cmp = icmp ugt i8 %byte, -32, !dbg !2779
  br i1 %cmp, label %return, label %if.end, !dbg !2781

if.end:                                           ; preds = %entry
  %0 = udiv i8 %byte, 45, !dbg !2782
  %div = zext i8 %0 to i32, !dbg !2782
  %pb = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !2783
  store i32 %div, ptr %pb, align 4, !dbg !2784, !tbaa !2494
  %1 = mul i8 %0, -45, !dbg !2785
  %conv6 = add i8 %1, %byte, !dbg !2785
  call void @llvm.dbg.value(metadata i8 %conv6, metadata !2777, metadata !DIExpression()), !dbg !2778
  %conv7 = zext i8 %conv6 to i32, !dbg !2786
  %div827 = udiv i8 %conv6, 9, !dbg !2787
  %div8.zext = zext i8 %div827 to i32, !dbg !2787
  %lp = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !2788
  store i32 %div8.zext, ptr %lp, align 8, !dbg !2789, !tbaa !2500
  %mul11.neg = mul nsw i32 %div8.zext, -9, !dbg !2790
  %sub12 = add nsw i32 %mul11.neg, %conv7, !dbg !2791
  %lc = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !2792
  store i32 %sub12, ptr %lc, align 4, !dbg !2793, !tbaa !2498
  %add = add nsw i32 %sub12, %div8.zext, !dbg !2794
  %cmp15 = icmp ugt i32 %add, 4, !dbg !2795
  br label %return, !dbg !2796

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i1 [ %cmp15, %if.end ], [ true, %entry ], !dbg !2778
  ret i1 %retval.0, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma_decoder_memusage_nocheck(ptr nocapture noundef readonly %options) local_unnamed_addr #0 !dbg !2798 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !2802, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %options, metadata !2803, metadata !DIExpression()), !dbg !2805
  %0 = load i32, ptr %options, align 8, !dbg !2806, !tbaa !432
  %conv = zext i32 %0 to i64, !dbg !2807
  %call = tail call i64 @lzma_lz_decoder_memusage(i64 noundef %conv) #9, !dbg !2808
  %add = add i64 %call, 28352, !dbg !2809
  ret i64 %add, !dbg !2810
}

declare !dbg !2811 i64 @lzma_lz_decoder_memusage(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_lzma_decoder_memusage(ptr nocapture noundef readonly %options) local_unnamed_addr #0 !dbg !2814 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata ptr %options, metadata !2718, metadata !DIExpression()), !dbg !2818
  %lc.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !2821
  %0 = load i32, ptr %lc.i, align 4, !dbg !2821, !tbaa !2498
  %cmp.i = icmp ult i32 %0, 5, !dbg !2822
  br i1 %cmp.i, label %land.lhs.true.i, label %return, !dbg !2823

land.lhs.true.i:                                  ; preds = %entry
  %lp.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !2824
  %1 = load i32, ptr %lp.i, align 8, !dbg !2824, !tbaa !2500
  %cmp1.i = icmp ult i32 %1, 5, !dbg !2825
  %add.i = add i32 %1, %0
  %cmp5.i = icmp ult i32 %add.i, 5
  %or.cond.i = select i1 %cmp1.i, i1 %cmp5.i, i1 false, !dbg !2826
  br i1 %or.cond.i, label %is_lclppb_valid.exit, label %return, !dbg !2826

is_lclppb_valid.exit:                             ; preds = %land.lhs.true.i
  %pb.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !2827
  %2 = load i32, ptr %pb.i, align 4, !dbg !2827, !tbaa !2494
  %cmp6.i = icmp ult i32 %2, 5, !dbg !2828
  br i1 %cmp6.i, label %if.end, label %return, !dbg !2829

if.end:                                           ; preds = %is_lclppb_valid.exit
  call void @llvm.dbg.value(metadata ptr %options, metadata !2802, metadata !DIExpression()) #9, !dbg !2830
  call void @llvm.dbg.value(metadata ptr %options, metadata !2803, metadata !DIExpression()) #9, !dbg !2830
  %3 = load i32, ptr %options, align 8, !dbg !2832, !tbaa !432
  %conv.i = zext i32 %3 to i64, !dbg !2833
  %call.i = tail call i64 @lzma_lz_decoder_memusage(i64 noundef %conv.i) #9, !dbg !2834
  %add.i3 = add i64 %call.i, 28352, !dbg !2835
  br label %return, !dbg !2836

return:                                           ; preds = %entry, %land.lhs.true.i, %is_lclppb_valid.exit, %if.end
  %retval.0 = phi i64 [ %add.i3, %if.end ], [ -1, %is_lclppb_valid.exit ], [ -1, %land.lhs.true.i ], [ -1, %entry ], !dbg !2817
  ret i64 %retval.0, !dbg !2837
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_lzma_props_decode(ptr nocapture noundef writeonly %options, ptr noundef %allocator, ptr nocapture noundef readonly %props, i64 noundef %props_size) local_unnamed_addr #0 !dbg !2838 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !2843, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !2844, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %props, metadata !2845, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %props_size, metadata !2846, metadata !DIExpression()), !dbg !2849
  %cmp.not = icmp eq i64 %props_size, 5, !dbg !2850
  br i1 %cmp.not, label %if.end, label %return, !dbg !2852

if.end:                                           ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %allocator) #9, !dbg !2853
  call void @llvm.dbg.value(metadata ptr %call, metadata !2847, metadata !DIExpression()), !dbg !2849
  %cmp1 = icmp eq ptr %call, null, !dbg !2854
  br i1 %cmp1, label %return, label %if.end3, !dbg !2856

if.end3:                                          ; preds = %if.end
  %0 = load i8, ptr %props, align 1, !dbg !2857, !tbaa !493
  call void @llvm.dbg.value(metadata ptr %call, metadata !2776, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8 %0, metadata !2777, metadata !DIExpression()), !dbg !2859
  %cmp.i = icmp ugt i8 %0, -32, !dbg !2861
  br i1 %cmp.i, label %error, label %lzma_lzma_lclppb_decode.exit, !dbg !2862

lzma_lzma_lclppb_decode.exit:                     ; preds = %if.end3
  %1 = udiv i8 %0, 45, !dbg !2863
  %div.i = zext i8 %1 to i32, !dbg !2863
  %pb.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 5, !dbg !2864
  store i32 %div.i, ptr %pb.i, align 4, !dbg !2865, !tbaa !2494
  %2 = mul i8 %1, -45, !dbg !2866
  %conv6.i = add i8 %2, %0, !dbg !2866
  call void @llvm.dbg.value(metadata i8 %conv6.i, metadata !2777, metadata !DIExpression()), !dbg !2859
  %conv7.i = zext i8 %conv6.i to i32, !dbg !2867
  %div827.i = udiv i8 %conv6.i, 9, !dbg !2868
  %div8.zext.i = zext i8 %div827.i to i32, !dbg !2868
  %lp.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 4, !dbg !2869
  store i32 %div8.zext.i, ptr %lp.i, align 8, !dbg !2870, !tbaa !2500
  %mul11.neg.i = mul nsw i32 %div8.zext.i, -9, !dbg !2871
  %sub12.i = add nsw i32 %mul11.neg.i, %conv7.i, !dbg !2872
  %lc.i = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 3, !dbg !2873
  store i32 %sub12.i, ptr %lc.i, align 4, !dbg !2874, !tbaa !2498
  %add.i = add nsw i32 %sub12.i, %div8.zext.i, !dbg !2875
  %cmp15.i = icmp ugt i32 %add.i, 4, !dbg !2876
  br i1 %cmp15.i, label %error, label %if.end6, !dbg !2877

if.end6:                                          ; preds = %lzma_lzma_lclppb_decode.exit
  %add.ptr = getelementptr inbounds i8, ptr %props, i64 1, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2879, metadata !DIExpression()), !dbg !2886
  %3 = load i8, ptr %add.ptr, align 1, !dbg !2888, !tbaa !493
  %conv.i = zext i8 %3 to i32, !dbg !2889
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !2885, metadata !DIExpression()), !dbg !2886
  %arrayidx1.i = getelementptr inbounds i8, ptr %props, i64 2, !dbg !2890
  %4 = load i8, ptr %arrayidx1.i, align 1, !dbg !2890, !tbaa !493
  %conv2.i = zext i8 %4 to i32, !dbg !2891
  %shl.i = shl nuw nsw i32 %conv2.i, 8, !dbg !2892
  %or.i = or i32 %shl.i, %conv.i, !dbg !2893
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !2885, metadata !DIExpression()), !dbg !2886
  %arrayidx3.i = getelementptr inbounds i8, ptr %props, i64 3, !dbg !2894
  %5 = load i8, ptr %arrayidx3.i, align 1, !dbg !2894, !tbaa !493
  %conv4.i = zext i8 %5 to i32, !dbg !2895
  %shl5.i = shl nuw nsw i32 %conv4.i, 16, !dbg !2896
  %or6.i = or i32 %or.i, %shl5.i, !dbg !2897
  call void @llvm.dbg.value(metadata i32 %or6.i, metadata !2885, metadata !DIExpression()), !dbg !2886
  %arrayidx7.i = getelementptr inbounds i8, ptr %props, i64 4, !dbg !2898
  %6 = load i8, ptr %arrayidx7.i, align 1, !dbg !2898, !tbaa !493
  %conv8.i = zext i8 %6 to i32, !dbg !2899
  %shl9.i = shl nuw i32 %conv8.i, 24, !dbg !2900
  %or10.i = or i32 %or6.i, %shl9.i, !dbg !2901
  call void @llvm.dbg.value(metadata i32 %or10.i, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i32 %or10.i, ptr %call, align 8, !dbg !2902, !tbaa !432
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 1, !dbg !2903
  store ptr null, ptr %preset_dict, align 8, !dbg !2904, !tbaa !441
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %call, i64 0, i32 2, !dbg !2905
  store i32 0, ptr %preset_dict_size, align 8, !dbg !2906, !tbaa !446
  store ptr %call, ptr %options, align 8, !dbg !2907, !tbaa !504
  br label %return, !dbg !2908

error:                                            ; preds = %if.end3, %lzma_lzma_lclppb_decode.exit
  call void @llvm.dbg.label(metadata !2848), !dbg !2909
  tail call void @lzma_free(ptr noundef nonnull %call, ptr noundef %allocator) #9, !dbg !2910
  br label %return, !dbg !2911

return:                                           ; preds = %if.end6, %error, %if.end, %entry
  %retval.1 = phi i32 [ 8, %entry ], [ 8, %error ], [ 0, %if.end6 ], [ 5, %if.end ], !dbg !2849
  ret i32 %retval.1, !dbg !2912
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #5

declare !dbg !2913 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!53}
!llvm.module.flags = !{!313, !314, !315, !316, !317, !318}
!llvm.ident = !{!319}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "next_state", scope: !2, file: !3, line: 457, type: !311, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lzma_decode", scope: !3, file: !3, line: 284, type: !4, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !257)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2c8fdc3c7ad2b343844f694d47e9740c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !23, !26, !48, !51, !40}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !7, line: 237, baseType: !8)
!7 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 57, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!11 = !DIEnumerator(name: "LZMA_OK", value: 0)
!12 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!13 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!14 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!15 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!16 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!17 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!18 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!19 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!20 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!21 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!22 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !25, line: 78, baseType: null)
!25 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_dict", file: !29, line: 44, baseType: !30)
!29 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lz/lz_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27344aa2da5754ad4a118fbd9137003b")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 20, size: 384, elements: !31)
!31 = !{!32, !39, !43, !44, !45, !46}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !30, file: !29, line: 24, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 38, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !30, file: !29, line: 28, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !30, file: !29, line: 33, baseType: !40, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !30, file: !29, line: 36, baseType: !40, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !30, file: !29, line: 39, baseType: !40, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "need_reset", scope: !30, file: !29, line: 42, baseType: !47, size: 8, offset: 320)
!47 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!53 = distinct !DICompileUnit(language: DW_LANG_C99, file: !54, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !254, globals: !256, splitDebugInlining: false, nameTableKind: None)
!54 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "2c8fdc3c7ad2b343844f694d47e9740c")
!55 = !{!8, !56, !61, !68, !71, !77, !84, !99}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 138, baseType: !9, size: 32, elements: !58)
!57 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!60 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 58, baseType: !9, size: 32, elements: !62)
!62 = !{!63, !64, !65, !66, !67}
!63 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!64 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!65 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!66 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!67 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 44, baseType: !9, size: 32, elements: !69)
!69 = !{!70}
!70 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 250, baseType: !9, size: 32, elements: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!74 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!75 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!76 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 27, baseType: !9, size: 32, elements: !79)
!78 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!81 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!82 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!83 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 56, baseType: !9, size: 32, elements: !86)
!85 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ce364754aa91e57f603599f25328df33")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!87 = !DIEnumerator(name: "STATE_LIT_LIT", value: 0)
!88 = !DIEnumerator(name: "STATE_MATCH_LIT_LIT", value: 1)
!89 = !DIEnumerator(name: "STATE_REP_LIT_LIT", value: 2)
!90 = !DIEnumerator(name: "STATE_SHORTREP_LIT_LIT", value: 3)
!91 = !DIEnumerator(name: "STATE_MATCH_LIT", value: 4)
!92 = !DIEnumerator(name: "STATE_REP_LIT", value: 5)
!93 = !DIEnumerator(name: "STATE_SHORTREP_LIT", value: 6)
!94 = !DIEnumerator(name: "STATE_LIT_MATCH", value: 7)
!95 = !DIEnumerator(name: "STATE_LIT_LONGREP", value: 8)
!96 = !DIEnumerator(name: "STATE_LIT_SHORTREP", value: 9)
!97 = !DIEnumerator(name: "STATE_NONLIT_MATCH", value: 10)
!98 = !DIEnumerator(name: "STATE_NONLIT_REP", value: 11)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !100, file: !3, line: 240, baseType: !9, size: 32, elements: !182)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !3, line: 164, size: 226816, elements: !101)
!101 = !{!102, !112, !116, !119, !120, !121, !122, !123, !128, !132, !135, !150, !151, !161, !163, !164, !165, !166, !167, !168, !169, !170, !175, !176, !178, !179, !180, !181}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "literal", scope: !100, file: !3, line: 170, baseType: !103, size: 196608)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 196608, elements: !109)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "probability", file: !105, line: 71, baseType: !106)
!105 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7d3e93a1bf35640522f499de026cfdad")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !35, line: 25, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !37, line: 40, baseType: !108)
!108 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!109 = !{!110, !111}
!110 = !DISubrange(count: 16)
!111 = !DISubrange(count: 768)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "is_match", scope: !100, file: !3, line: 173, baseType: !113, size: 3072, offset: 196608)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3072, elements: !114)
!114 = !{!115, !110}
!115 = !DISubrange(count: 12)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep", scope: !100, file: !3, line: 176, baseType: !117, size: 192, offset: 199680)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 192, elements: !118)
!118 = !{!115}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0", scope: !100, file: !3, line: 180, baseType: !117, size: 192, offset: 199872)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep1", scope: !100, file: !3, line: 184, baseType: !117, size: 192, offset: 200064)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep2", scope: !100, file: !3, line: 187, baseType: !117, size: 192, offset: 200256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "is_rep0_long", scope: !100, file: !3, line: 191, baseType: !113, size: 3072, offset: 200448)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos_slot", scope: !100, file: !3, line: 196, baseType: !124, size: 4096, offset: 203520)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 4096, elements: !125)
!125 = !{!126, !127}
!126 = !DISubrange(count: 4)
!127 = !DISubrange(count: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pos_special", scope: !100, file: !3, line: 200, baseType: !129, size: 1824, offset: 207616)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 1824, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 114)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "pos_align", scope: !100, file: !3, line: 204, baseType: !133, size: 256, offset: 209440)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 256, elements: !134)
!134 = !{!110}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "match_len_decoder", scope: !100, file: !3, line: 207, baseType: !136, size: 8224, offset: 209696)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_length_decoder", file: !3, line: 161, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 155, size: 8224, elements: !138)
!138 = !{!139, !140, !141, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "choice", scope: !137, file: !3, line: 156, baseType: !104, size: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "choice2", scope: !137, file: !3, line: 157, baseType: !104, size: 16, offset: 16)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !137, file: !3, line: 158, baseType: !142, size: 2048, offset: 32)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 2048, elements: !143)
!143 = !{!110, !144}
!144 = !DISubrange(count: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mid", scope: !137, file: !3, line: 159, baseType: !142, size: 2048, offset: 2080)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !137, file: !3, line: 160, baseType: !147, size: 4096, offset: 4128)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 4096, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rep_len_decoder", scope: !100, file: !3, line: 210, baseType: !136, size: 8224, offset: 217920)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !100, file: !3, line: 217, baseType: !152, size: 96, offset: 226144)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_range_decoder", file: !153, line: 24, baseType: !154)
!153 = !DIFile(filename: "apps/557.xz_r/src/liblzma/rangecoder/range_decoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ae45a4dae71f4281c750e859340b1e3c")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 20, size: 96, elements: !155)
!155 = !{!156, !159, !160}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !154, file: !153, line: 21, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 26, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 42, baseType: !9)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !154, file: !153, line: 22, baseType: !157, size: 32, offset: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "init_bytes_left", scope: !154, file: !153, line: 23, baseType: !157, size: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !100, file: !3, line: 220, baseType: !162, size: 32, offset: 226240)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lzma_state", file: !85, line: 69, baseType: !84)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rep0", scope: !100, file: !3, line: 222, baseType: !157, size: 32, offset: 226272)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "rep1", scope: !100, file: !3, line: 223, baseType: !157, size: 32, offset: 226304)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rep2", scope: !100, file: !3, line: 224, baseType: !157, size: 32, offset: 226336)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rep3", scope: !100, file: !3, line: 225, baseType: !157, size: 32, offset: 226368)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pos_mask", scope: !100, file: !3, line: 227, baseType: !157, size: 32, offset: 226400)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "literal_context_bits", scope: !100, file: !3, line: 228, baseType: !157, size: 32, offset: 226432)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "literal_pos_mask", scope: !100, file: !3, line: 229, baseType: !157, size: 32, offset: 226464)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !100, file: !3, line: 233, baseType: !171, size: 64, offset: 226496)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !172, line: 63, baseType: !173)
!172 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !35, line: 27, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !37, line: 45, baseType: !42)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !100, file: !3, line: 260, baseType: !99, size: 32, offset: 226560)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "probs", scope: !100, file: !3, line: 263, baseType: !177, size: 64, offset: 226624)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !100, file: !3, line: 267, baseType: !157, size: 32, offset: 226688)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !100, file: !3, line: 271, baseType: !157, size: 32, offset: 226720)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !100, file: !3, line: 275, baseType: !157, size: 32, offset: 226752)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !100, file: !3, line: 279, baseType: !157, size: 32, offset: 226784)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!183 = !DIEnumerator(name: "SEQ_NORMALIZE", value: 0)
!184 = !DIEnumerator(name: "SEQ_IS_MATCH", value: 1)
!185 = !DIEnumerator(name: "SEQ_LITERAL0", value: 2)
!186 = !DIEnumerator(name: "SEQ_LITERAL1", value: 3)
!187 = !DIEnumerator(name: "SEQ_LITERAL2", value: 4)
!188 = !DIEnumerator(name: "SEQ_LITERAL3", value: 5)
!189 = !DIEnumerator(name: "SEQ_LITERAL4", value: 6)
!190 = !DIEnumerator(name: "SEQ_LITERAL5", value: 7)
!191 = !DIEnumerator(name: "SEQ_LITERAL6", value: 8)
!192 = !DIEnumerator(name: "SEQ_LITERAL7", value: 9)
!193 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED0", value: 10)
!194 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED1", value: 11)
!195 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED2", value: 12)
!196 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED3", value: 13)
!197 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED4", value: 14)
!198 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED5", value: 15)
!199 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED6", value: 16)
!200 = !DIEnumerator(name: "SEQ_LITERAL_MATCHED7", value: 17)
!201 = !DIEnumerator(name: "SEQ_LITERAL_WRITE", value: 18)
!202 = !DIEnumerator(name: "SEQ_IS_REP", value: 19)
!203 = !DIEnumerator(name: "SEQ_MATCH_LEN_CHOICE", value: 20)
!204 = !DIEnumerator(name: "SEQ_MATCH_LEN_LOW0", value: 21)
!205 = !DIEnumerator(name: "SEQ_MATCH_LEN_LOW1", value: 22)
!206 = !DIEnumerator(name: "SEQ_MATCH_LEN_LOW2", value: 23)
!207 = !DIEnumerator(name: "SEQ_MATCH_LEN_CHOICE2", value: 24)
!208 = !DIEnumerator(name: "SEQ_MATCH_LEN_MID0", value: 25)
!209 = !DIEnumerator(name: "SEQ_MATCH_LEN_MID1", value: 26)
!210 = !DIEnumerator(name: "SEQ_MATCH_LEN_MID2", value: 27)
!211 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH0", value: 28)
!212 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH1", value: 29)
!213 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH2", value: 30)
!214 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH3", value: 31)
!215 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH4", value: 32)
!216 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH5", value: 33)
!217 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH6", value: 34)
!218 = !DIEnumerator(name: "SEQ_MATCH_LEN_HIGH7", value: 35)
!219 = !DIEnumerator(name: "SEQ_POS_SLOT0", value: 36)
!220 = !DIEnumerator(name: "SEQ_POS_SLOT1", value: 37)
!221 = !DIEnumerator(name: "SEQ_POS_SLOT2", value: 38)
!222 = !DIEnumerator(name: "SEQ_POS_SLOT3", value: 39)
!223 = !DIEnumerator(name: "SEQ_POS_SLOT4", value: 40)
!224 = !DIEnumerator(name: "SEQ_POS_SLOT5", value: 41)
!225 = !DIEnumerator(name: "SEQ_POS_MODEL", value: 42)
!226 = !DIEnumerator(name: "SEQ_DIRECT", value: 43)
!227 = !DIEnumerator(name: "SEQ_ALIGN0", value: 44)
!228 = !DIEnumerator(name: "SEQ_ALIGN1", value: 45)
!229 = !DIEnumerator(name: "SEQ_ALIGN2", value: 46)
!230 = !DIEnumerator(name: "SEQ_ALIGN3", value: 47)
!231 = !DIEnumerator(name: "SEQ_EOPM", value: 48)
!232 = !DIEnumerator(name: "SEQ_IS_REP0", value: 49)
!233 = !DIEnumerator(name: "SEQ_SHORTREP", value: 50)
!234 = !DIEnumerator(name: "SEQ_IS_REP0_LONG", value: 51)
!235 = !DIEnumerator(name: "SEQ_IS_REP1", value: 52)
!236 = !DIEnumerator(name: "SEQ_IS_REP2", value: 53)
!237 = !DIEnumerator(name: "SEQ_REP_LEN_CHOICE", value: 54)
!238 = !DIEnumerator(name: "SEQ_REP_LEN_LOW0", value: 55)
!239 = !DIEnumerator(name: "SEQ_REP_LEN_LOW1", value: 56)
!240 = !DIEnumerator(name: "SEQ_REP_LEN_LOW2", value: 57)
!241 = !DIEnumerator(name: "SEQ_REP_LEN_CHOICE2", value: 58)
!242 = !DIEnumerator(name: "SEQ_REP_LEN_MID0", value: 59)
!243 = !DIEnumerator(name: "SEQ_REP_LEN_MID1", value: 60)
!244 = !DIEnumerator(name: "SEQ_REP_LEN_MID2", value: 61)
!245 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH0", value: 62)
!246 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH1", value: 63)
!247 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH2", value: 64)
!248 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH3", value: 65)
!249 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH4", value: 66)
!250 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH5", value: 67)
!251 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH6", value: 68)
!252 = !DIEnumerator(name: "SEQ_REP_LEN_HIGH7", value: 69)
!253 = !DIEnumerator(name: "SEQ_COPY", value: 70)
!254 = !{!255, !40, !157}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!256 = !{!0}
!257 = !{!258, !259, !260, !261, !262, !263, !266, !267, !269, !270, !271, !272, !273, !274, !275, !276, !277, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !290, !296, !297, !304, !308, !310}
!258 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2, file: !3, line: 284, type: !23)
!259 = !DILocalVariable(name: "dictptr", arg: 2, scope: !2, file: !3, line: 284, type: !26)
!260 = !DILocalVariable(name: "in", arg: 3, scope: !2, file: !3, line: 285, type: !48)
!261 = !DILocalVariable(name: "in_pos", arg: 4, scope: !2, file: !3, line: 286, type: !51)
!262 = !DILocalVariable(name: "in_size", arg: 5, scope: !2, file: !3, line: 286, type: !40)
!263 = !DILocalVariable(name: "coder", scope: !2, file: !3, line: 288, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!266 = !DILocalVariable(name: "dict", scope: !2, file: !3, line: 303, type: !28)
!267 = !DILocalVariable(name: "dict_start", scope: !2, file: !3, line: 305, type: !268)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!269 = !DILocalVariable(name: "rc", scope: !2, file: !3, line: 308, type: !152)
!270 = !DILocalVariable(name: "rc_in_pos", scope: !2, file: !3, line: 308, type: !40)
!271 = !DILocalVariable(name: "rc_bound", scope: !2, file: !3, line: 308, type: !157)
!272 = !DILocalVariable(name: "state", scope: !2, file: !3, line: 311, type: !157)
!273 = !DILocalVariable(name: "rep0", scope: !2, file: !3, line: 312, type: !157)
!274 = !DILocalVariable(name: "rep1", scope: !2, file: !3, line: 313, type: !157)
!275 = !DILocalVariable(name: "rep2", scope: !2, file: !3, line: 314, type: !157)
!276 = !DILocalVariable(name: "rep3", scope: !2, file: !3, line: 315, type: !157)
!277 = !DILocalVariable(name: "pos_mask", scope: !2, file: !3, line: 317, type: !278)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!279 = !DILocalVariable(name: "probs", scope: !2, file: !3, line: 321, type: !177)
!280 = !DILocalVariable(name: "symbol", scope: !2, file: !3, line: 322, type: !157)
!281 = !DILocalVariable(name: "limit", scope: !2, file: !3, line: 323, type: !157)
!282 = !DILocalVariable(name: "offset", scope: !2, file: !3, line: 324, type: !157)
!283 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 325, type: !157)
!284 = !DILocalVariable(name: "literal_pos_mask", scope: !2, file: !3, line: 327, type: !278)
!285 = !DILocalVariable(name: "literal_context_bits", scope: !2, file: !3, line: 328, type: !278)
!286 = !DILocalVariable(name: "pos_state", scope: !2, file: !3, line: 331, type: !157)
!287 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 333, type: !6)
!288 = !DILocalVariable(name: "no_eopm", scope: !2, file: !3, line: 337, type: !289)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!290 = !DILocalVariable(name: "match_bit", scope: !291, file: !3, line: 422, type: !157)
!291 = distinct !DILexicalBlock(scope: !292, file: !3, line: 383, column: 11)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 366, column: 8)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 356, column: 60)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 356, column: 3)
!295 = distinct !DILexicalBlock(scope: !2, file: !3, line: 345, column: 15)
!296 = !DILocalVariable(name: "subcoder_index", scope: !291, file: !3, line: 423, type: !157)
!297 = !DILocalVariable(name: "distance", scope: !298, file: !3, line: 731, type: !278)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 728, column: 49)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 728, column: 5)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 720, column: 11)
!301 = distinct !DILexicalBlock(scope: !302, file: !3, line: 693, column: 4)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 675, column: 10)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 489, column: 3)
!304 = !DILocalVariable(name: "distance", scope: !305, file: !3, line: 743, type: !278)
!305 = distinct !DILexicalBlock(scope: !306, file: !3, line: 739, column: 21)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 738, column: 6)
!307 = distinct !DILexicalBlock(scope: !299, file: !3, line: 735, column: 12)
!308 = !DILocalVariable(name: "distance", scope: !309, file: !3, line: 752, type: !278)
!309 = distinct !DILexicalBlock(scope: !306, file: !3, line: 748, column: 13)
!310 = !DILabel(scope: !2, name: "out", file: !3, line: 788)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 384, elements: !118)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!313 = !{i32 7, !"Dwarf Version", i32 5}
!314 = !{i32 2, !"Debug Info Version", i32 3}
!315 = !{i32 1, !"wchar_size", i32 4}
!316 = !{i32 7, !"PIC Level", i32 2}
!317 = !{i32 7, !"PIE Level", i32 2}
!318 = !{i32 7, !"uwtable", i32 2}
!319 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!320 = distinct !DISubprogram(name: "lzma_lzma_decoder_create", scope: !3, file: !3, line: 939, type: !321, scopeLine: 941, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !367)
!321 = !DISubroutineType(types: !322)
!322 = !{!6, !323, !347, !337, !360}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_decoder", file: !29, line: 72, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 54, size: 320, elements: !326)
!326 = !{!327, !328, !333, !339, !343}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !325, file: !29, line: 56, baseType: !23, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !325, file: !29, line: 59, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!6, !332, !26, !48, !51, !40}
!332 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !23)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !325, file: !29, line: 63, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !23, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "set_uncompressed", scope: !325, file: !29, line: 66, baseType: !340, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !23, !171}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !325, file: !29, line: 70, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !23, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !7, line: 403, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 341, size: 192, elements: !350)
!350 = !{!351, !355, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !349, file: !7, line: 376, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!255, !255, !40, !40}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !349, file: !7, line: 390, baseType: !356, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !255, !255}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !349, file: !7, line: 401, baseType: !255, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_lz_options", file: !29, line: 51, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 47, size: 192, elements: !363)
!363 = !{!364, !365, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !362, file: !29, line: 48, baseType: !40, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !362, file: !29, line: 49, baseType: !49, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !362, file: !29, line: 50, baseType: !40, size: 64, offset: 128)
!367 = !{!368, !369, !370, !371, !372}
!368 = !DILocalVariable(name: "lz", arg: 1, scope: !320, file: !3, line: 939, type: !323)
!369 = !DILocalVariable(name: "allocator", arg: 2, scope: !320, file: !3, line: 939, type: !347)
!370 = !DILocalVariable(name: "opt", arg: 3, scope: !320, file: !3, line: 940, type: !337)
!371 = !DILocalVariable(name: "lz_options", arg: 4, scope: !320, file: !3, line: 940, type: !360)
!372 = !DILocalVariable(name: "options", scope: !320, file: !3, line: 954, type: !373)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !57, line: 399, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 185, size: 896, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !386, !387, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !400, !401, !402, !403, !404}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !376, file: !57, line: 217, baseType: !157, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !376, file: !57, line: 240, baseType: !49, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !376, file: !57, line: 254, baseType: !157, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !376, file: !57, line: 281, baseType: !157, size: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !376, file: !57, line: 293, baseType: !157, size: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !376, file: !57, line: 316, baseType: !157, size: 32, offset: 224)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !376, file: !57, line: 322, baseType: !385, size: 32, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !57, line: 155, baseType: !56)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !376, file: !57, line: 342, baseType: !157, size: 32, offset: 288)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !376, file: !57, line: 345, baseType: !388, size: 32, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !57, line: 111, baseType: !61)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !376, file: !57, line: 375, baseType: !157, size: 32, offset: 352)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !376, file: !57, line: 384, baseType: !157, size: 32, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !376, file: !57, line: 385, baseType: !157, size: 32, offset: 416)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !376, file: !57, line: 386, baseType: !157, size: 32, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !376, file: !57, line: 387, baseType: !157, size: 32, offset: 480)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !376, file: !57, line: 388, baseType: !157, size: 32, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !376, file: !57, line: 389, baseType: !157, size: 32, offset: 544)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !376, file: !57, line: 390, baseType: !157, size: 32, offset: 576)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !376, file: !57, line: 391, baseType: !157, size: 32, offset: 608)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !376, file: !57, line: 392, baseType: !399, size: 32, offset: 640)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !7, line: 46, baseType: !68)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !376, file: !57, line: 393, baseType: !399, size: 32, offset: 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !376, file: !57, line: 394, baseType: !399, size: 32, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !376, file: !57, line: 395, baseType: !399, size: 32, offset: 736)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !376, file: !57, line: 396, baseType: !255, size: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !376, file: !57, line: 397, baseType: !255, size: 64, offset: 832)
!405 = !DILocation(line: 0, scope: !320)
!406 = !DILocation(line: 942, column: 10, scope: !407)
!407 = distinct !DILexicalBlock(scope: !320, file: !3, line: 942, column: 6)
!408 = !{!409, !410, i64 0}
!409 = !{!"", !410, i64 0, !410, i64 8, !410, i64 16, !410, i64 24, !410, i64 32}
!410 = !{!"any pointer", !411, i64 0}
!411 = !{!"omnipotent char", !412, i64 0}
!412 = !{!"Simple C/C++ TBAA"}
!413 = !DILocation(line: 942, column: 16, scope: !407)
!414 = !DILocation(line: 942, column: 6, scope: !320)
!415 = !DILocation(line: 943, column: 15, scope: !416)
!416 = distinct !DILexicalBlock(scope: !407, file: !3, line: 942, column: 25)
!417 = !DILocation(line: 943, column: 13, scope: !416)
!418 = !DILocation(line: 944, column: 17, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !3, line: 944, column: 7)
!420 = !DILocation(line: 944, column: 7, scope: !416)
!421 = !DILocation(line: 947, column: 7, scope: !416)
!422 = !DILocation(line: 947, column: 12, scope: !416)
!423 = !{!409, !410, i64 8}
!424 = !DILocation(line: 948, column: 7, scope: !416)
!425 = !DILocation(line: 948, column: 13, scope: !416)
!426 = !{!409, !410, i64 16}
!427 = !DILocation(line: 949, column: 7, scope: !416)
!428 = !DILocation(line: 949, column: 24, scope: !416)
!429 = !{!409, !410, i64 24}
!430 = !DILocation(line: 950, column: 2, scope: !416)
!431 = !DILocation(line: 955, column: 35, scope: !320)
!432 = !{!433, !434, i64 0}
!433 = !{!"", !434, i64 0, !410, i64 8, !434, i64 16, !434, i64 20, !434, i64 24, !434, i64 28, !411, i64 32, !434, i64 36, !411, i64 40, !434, i64 44, !434, i64 48, !434, i64 52, !434, i64 56, !434, i64 60, !434, i64 64, !434, i64 68, !434, i64 72, !434, i64 76, !411, i64 80, !411, i64 84, !411, i64 88, !411, i64 92, !410, i64 96, !410, i64 104}
!434 = !{!"int", !411, i64 0}
!435 = !DILocation(line: 955, column: 26, scope: !320)
!436 = !DILocation(line: 955, column: 24, scope: !320)
!437 = !{!438, !439, i64 0}
!438 = !{!"", !439, i64 0, !410, i64 8, !439, i64 16}
!439 = !{!"long", !411, i64 0}
!440 = !DILocation(line: 956, column: 37, scope: !320)
!441 = !{!433, !410, i64 8}
!442 = !DILocation(line: 956, column: 14, scope: !320)
!443 = !DILocation(line: 956, column: 26, scope: !320)
!444 = !{!438, !410, i64 8}
!445 = !DILocation(line: 957, column: 42, scope: !320)
!446 = !{!433, !434, i64 16}
!447 = !DILocation(line: 957, column: 33, scope: !320)
!448 = !DILocation(line: 957, column: 14, scope: !320)
!449 = !DILocation(line: 957, column: 31, scope: !320)
!450 = !{!438, !439, i64 16}
!451 = !DILocation(line: 960, column: 1, scope: !320)
!452 = !DISubprogram(name: "lzma_alloc", scope: !25, file: !25, line: 211, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!255, !40, !347}
!455 = !{}
!456 = !DILocation(line: 0, scope: !2)
!457 = !DILocation(line: 293, column: 28, scope: !458)
!458 = distinct !DILexicalBlock(scope: !2, file: !3, line: 293, column: 6)
!459 = !{!460}
!460 = distinct !{!460, !461, !"rc_read_init: %in"}
!461 = distinct !{!461, !"rc_read_init"}
!462 = !DILocation(line: 293, column: 7, scope: !458)
!463 = !{!464}
!464 = distinct !{!464, !461, !"rc_read_init: %in_pos"}
!465 = !DILocalVariable(name: "rc", arg: 1, scope: !466, file: !153, line: 29, type: !469)
!466 = distinct !DISubprogram(name: "rc_read_init", scope: !153, file: !153, line: 29, type: !467, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !470)
!467 = !DISubroutineType(types: !468)
!468 = !{!47, !469, !48, !51, !40}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!470 = !{!465, !471, !472, !473}
!471 = !DILocalVariable(name: "in", arg: 2, scope: !466, file: !153, line: 29, type: !48)
!472 = !DILocalVariable(name: "in_pos", arg: 3, scope: !466, file: !153, line: 30, type: !51)
!473 = !DILocalVariable(name: "in_size", arg: 4, scope: !466, file: !153, line: 30, type: !40)
!474 = !DILocation(line: 0, scope: !466, inlinedAt: !475)
!475 = distinct !DILocation(line: 293, column: 7, scope: !458)
!476 = !{!477, !434, i64 8}
!477 = !{!"", !434, i64 0, !434, i64 4, !434, i64 8}
!478 = !{!460, !464}
!479 = !DILocation(line: 32, column: 29, scope: !466, inlinedAt: !475)
!480 = !DILocation(line: 32, column: 2, scope: !466, inlinedAt: !475)
!481 = !DILocation(line: 308, column: 2, scope: !2)
!482 = !{i64 0, i64 4, !483, i64 4, i64 4, !483}
!483 = !{!434, !434, i64 0}
!484 = !{!439, !439, i64 0}
!485 = !DILocation(line: 33, column: 15, scope: !486, inlinedAt: !475)
!486 = distinct !DILexicalBlock(scope: !487, file: !153, line: 33, column: 7)
!487 = distinct !DILexicalBlock(scope: !466, file: !153, line: 32, column: 34)
!488 = !DILocation(line: 33, column: 7, scope: !487, inlinedAt: !475)
!489 = !DILocation(line: 36, column: 19, scope: !487, inlinedAt: !475)
!490 = !{!477, !434, i64 4}
!491 = !DILocation(line: 36, column: 24, scope: !487, inlinedAt: !475)
!492 = !DILocation(line: 36, column: 32, scope: !487, inlinedAt: !475)
!493 = !{!411, !411, i64 0}
!494 = !DILocation(line: 36, column: 30, scope: !487, inlinedAt: !475)
!495 = !DILocation(line: 36, column: 12, scope: !487, inlinedAt: !475)
!496 = !DILocation(line: 37, column: 3, scope: !487, inlinedAt: !475)
!497 = !DILocation(line: 38, column: 3, scope: !487, inlinedAt: !475)
!498 = distinct !{!498, !480, !499, !500, !501}
!499 = !DILocation(line: 39, column: 2, scope: !466, inlinedAt: !475)
!500 = !{!"llvm.loop.mustprogress"}
!501 = !{!"llvm.loop.unroll.disable"}
!502 = !DILocation(line: 303, column: 19, scope: !2)
!503 = !{i64 0, i64 8, !504, i64 8, i64 8, !484, i64 16, i64 8, !484, i64 24, i64 8, !484, i64 32, i64 8, !484, i64 40, i64 1, !505}
!504 = !{!410, !410, i64 0}
!505 = !{!506, !506, i64 0}
!506 = !{!"_Bool", !411, i64 0}
!507 = !{i64 0, i64 8, !484, i64 8, i64 8, !484, i64 16, i64 8, !484, i64 24, i64 8, !484, i64 32, i64 1, !505}
!508 = !{i64 0, i64 8, !484, i64 8, i64 8, !484, i64 16, i64 8, !484, i64 24, i64 1, !505}
!509 = !{i64 0, i64 8, !484, i64 8, i64 8, !484, i64 16, i64 1, !505}
!510 = !{i64 0, i64 8, !484, i64 8, i64 1, !505}
!511 = !{i64 0, i64 4, !483, i64 4, i64 4, !483, i64 8, i64 4, !483}
!512 = !DILocation(line: 311, column: 26, scope: !2)
!513 = !{!514, !411, i64 28280}
!514 = !{!"lzma_coder_s", !411, i64 0, !411, i64 24576, !411, i64 24960, !411, i64 24984, !411, i64 25008, !411, i64 25032, !411, i64 25056, !411, i64 25440, !411, i64 25952, !411, i64 26180, !515, i64 26212, !515, i64 27240, !477, i64 28268, !411, i64 28280, !434, i64 28284, !434, i64 28288, !434, i64 28292, !434, i64 28296, !434, i64 28300, !434, i64 28304, !434, i64 28308, !439, i64 28312, !411, i64 28320, !410, i64 28328, !434, i64 28336, !434, i64 28340, !434, i64 28344, !434, i64 28348}
!515 = !{!"", !516, i64 0, !516, i64 2, !411, i64 4, !411, i64 260, !411, i64 516}
!516 = !{!"short", !411, i64 0}
!517 = !DILocation(line: 312, column: 25, scope: !2)
!518 = !{!514, !434, i64 28284}
!519 = !DILocation(line: 313, column: 25, scope: !2)
!520 = !{!514, !434, i64 28288}
!521 = !DILocation(line: 314, column: 25, scope: !2)
!522 = !{!514, !434, i64 28292}
!523 = !DILocation(line: 315, column: 25, scope: !2)
!524 = !{!514, !434, i64 28296}
!525 = !DILocation(line: 317, column: 35, scope: !2)
!526 = !{!514, !434, i64 28300}
!527 = !DILocation(line: 321, column: 30, scope: !2)
!528 = !{!514, !410, i64 28328}
!529 = !DILocation(line: 322, column: 27, scope: !2)
!530 = !{!514, !434, i64 28336}
!531 = !DILocation(line: 323, column: 26, scope: !2)
!532 = !{!514, !434, i64 28340}
!533 = !DILocation(line: 324, column: 27, scope: !2)
!534 = !{!514, !434, i64 28344}
!535 = !DILocation(line: 325, column: 24, scope: !2)
!536 = !{!514, !434, i64 28348}
!537 = !DILocation(line: 327, column: 43, scope: !2)
!538 = !{!514, !434, i64 28308}
!539 = !DILocation(line: 328, column: 47, scope: !2)
!540 = !{!514, !434, i64 28304}
!541 = !DILocation(line: 331, column: 23, scope: !2)
!542 = !DILocation(line: 337, column: 30, scope: !2)
!543 = !{!514, !439, i64 28312}
!544 = !DILocation(line: 338, column: 4, scope: !2)
!545 = !DILocation(line: 339, column: 14, scope: !546)
!546 = distinct !DILexicalBlock(scope: !2, file: !3, line: 339, column: 6)
!547 = !DILocation(line: 344, column: 17, scope: !2)
!548 = !{!514, !411, i64 28320}
!549 = !DILocation(line: 344, column: 2, scope: !2)
!550 = !DILocation(line: 178, column: 14, scope: !551, inlinedAt: !567)
!551 = distinct !DILexicalBlock(scope: !552, file: !29, line: 177, column: 6)
!552 = distinct !DISubprogram(name: "dict_repeat", scope: !29, file: !29, line: 128, type: !553, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !556)
!553 = !DISubroutineType(types: !554)
!554 = !{!47, !27, !157, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!556 = !{!557, !558, !559, !560, !561, !562, !566}
!557 = !DILocalVariable(name: "dict", arg: 1, scope: !552, file: !29, line: 128, type: !27)
!558 = !DILocalVariable(name: "distance", arg: 2, scope: !552, file: !29, line: 128, type: !157)
!559 = !DILocalVariable(name: "len", arg: 3, scope: !552, file: !29, line: 128, type: !555)
!560 = !DILocalVariable(name: "dict_avail", scope: !552, file: !29, line: 131, type: !268)
!561 = !DILocalVariable(name: "left", scope: !552, file: !29, line: 132, type: !157)
!562 = !DILocalVariable(name: "copy_pos", scope: !563, file: !29, line: 158, type: !278)
!563 = distinct !DILexicalBlock(scope: !564, file: !29, line: 153, column: 9)
!564 = distinct !DILexicalBlock(scope: !565, file: !29, line: 146, column: 13)
!565 = distinct !DILexicalBlock(scope: !552, file: !29, line: 138, column: 6)
!566 = !DILocalVariable(name: "copy_size", scope: !563, file: !29, line: 160, type: !157)
!567 = distinct !DILocation(line: 779, column: 7, scope: !568)
!568 = distinct !DILexicalBlock(scope: !295, file: !3, line: 779, column: 7)
!569 = !DILocation(line: 143, column: 4, scope: !570, inlinedAt: !567)
!570 = distinct !DILexicalBlock(scope: !571, file: !29, line: 141, column: 6)
!571 = distinct !DILexicalBlock(scope: !565, file: !29, line: 138, column: 23)
!572 = !DILocation(line: 133, column: 7, scope: !552, inlinedAt: !567)
!573 = !DILocation(line: 312, column: 11, scope: !2)
!574 = !DILocation(line: 313, column: 11, scope: !2)
!575 = !DILocation(line: 314, column: 11, scope: !2)
!576 = !DILocation(line: 315, column: 11, scope: !2)
!577 = !DILocation(line: 323, column: 11, scope: !2)
!578 = !DILocation(line: 324, column: 11, scope: !2)
!579 = !DILocation(line: 349, column: 15, scope: !295)
!580 = !DILocation(line: 349, column: 3, scope: !295)
!581 = !DILocation(line: 311, column: 11, scope: !2)
!582 = !DILocation(line: 321, column: 15, scope: !2)
!583 = !DILocation(line: 322, column: 11, scope: !2)
!584 = !DILocation(line: 353, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !295, file: !3, line: 353, column: 7)
!586 = !DILocation(line: 356, column: 3, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !3, line: 356, column: 3)
!588 = distinct !DILexicalBlock(scope: !295, file: !3, line: 356, column: 3)
!589 = !DILocation(line: 356, column: 3, scope: !588)
!590 = !DILocation(line: 356, column: 3, scope: !591)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 356, column: 3)
!592 = distinct !DILexicalBlock(scope: !587, file: !3, line: 356, column: 3)
!593 = !DILocation(line: 356, column: 3, scope: !592)
!594 = !DILocation(line: 356, column: 3, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !3, line: 356, column: 3)
!596 = !DILocation(line: 356, column: 3, scope: !295)
!597 = !{!516, !516, i64 0}
!598 = !DILocation(line: 356, column: 3, scope: !294)
!599 = !DILocation(line: 357, column: 4, scope: !600)
!600 = distinct !DILexicalBlock(scope: !293, file: !3, line: 357, column: 4)
!601 = !DILocation(line: 361, column: 12, scope: !293)
!602 = !DILocalVariable(name: "dict", arg: 1, scope: !603, file: !29, line: 103, type: !606)
!603 = distinct !DISubprogram(name: "dict_get", scope: !29, file: !29, line: 103, type: !604, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !609)
!604 = !DISubroutineType(types: !605)
!605 = !{!34, !606, !278}
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!609 = !{!602, !610}
!610 = !DILocalVariable(name: "distance", arg: 2, scope: !603, file: !29, line: 103, type: !278)
!611 = !DILocation(line: 0, scope: !603, inlinedAt: !612)
!612 = distinct !DILocation(line: 361, column: 12, scope: !293)
!613 = !DILocation(line: 106, column: 16, scope: !603, inlinedAt: !612)
!614 = !DILocation(line: 106, column: 7, scope: !603, inlinedAt: !612)
!615 = !DILocation(line: 105, column: 40, scope: !603, inlinedAt: !612)
!616 = !DILocation(line: 106, column: 4, scope: !603, inlinedAt: !612)
!617 = !DILocation(line: 105, column: 9, scope: !603, inlinedAt: !612)
!618 = !DILocation(line: 366, column: 8, scope: !292)
!619 = !DILocation(line: 366, column: 8, scope: !293)
!620 = !DILocation(line: 374, column: 5, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 374, column: 5)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 374, column: 5)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 374, column: 5)
!624 = distinct !DILexicalBlock(scope: !292, file: !3, line: 366, column: 33)
!625 = !DILocation(line: 374, column: 5, scope: !622)
!626 = !DILocation(line: 374, column: 5, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 374, column: 5)
!628 = distinct !DILexicalBlock(scope: !621, file: !3, line: 374, column: 5)
!629 = !DILocation(line: 374, column: 5, scope: !628)
!630 = !DILocation(line: 374, column: 5, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !3, line: 374, column: 5)
!632 = !DILocation(line: 0, scope: !295)
!633 = !DILocation(line: 0, scope: !293)
!634 = !DILocation(line: 374, column: 5, scope: !623)
!635 = !DILocation(line: 374, column: 5, scope: !636)
!636 = distinct !DILexicalBlock(scope: !623, file: !3, line: 374, column: 5)
!637 = !DILocation(line: 374, column: 5, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 374, column: 5)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 374, column: 5)
!640 = !DILocation(line: 374, column: 5, scope: !639)
!641 = !DILocation(line: 374, column: 5, scope: !642)
!642 = distinct !DILexicalBlock(scope: !643, file: !3, line: 374, column: 5)
!643 = distinct !DILexicalBlock(scope: !636, file: !3, line: 374, column: 5)
!644 = !DILocation(line: 374, column: 5, scope: !643)
!645 = !DILocation(line: 375, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 375, column: 5)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 375, column: 5)
!648 = distinct !DILexicalBlock(scope: !624, file: !3, line: 375, column: 5)
!649 = !DILocation(line: 375, column: 5, scope: !647)
!650 = !DILocation(line: 375, column: 5, scope: !651)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 375, column: 5)
!652 = distinct !DILexicalBlock(scope: !646, file: !3, line: 375, column: 5)
!653 = !DILocation(line: 375, column: 5, scope: !652)
!654 = !DILocation(line: 375, column: 5, scope: !655)
!655 = distinct !DILexicalBlock(scope: !651, file: !3, line: 375, column: 5)
!656 = !DILocation(line: 0, scope: !624)
!657 = !DILocation(line: 375, column: 5, scope: !648)
!658 = !DILocation(line: 375, column: 5, scope: !659)
!659 = distinct !DILexicalBlock(scope: !648, file: !3, line: 375, column: 5)
!660 = !DILocation(line: 375, column: 5, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 375, column: 5)
!662 = distinct !DILexicalBlock(scope: !659, file: !3, line: 375, column: 5)
!663 = !DILocation(line: 375, column: 5, scope: !662)
!664 = !DILocation(line: 375, column: 5, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !3, line: 375, column: 5)
!666 = distinct !DILexicalBlock(scope: !659, file: !3, line: 375, column: 5)
!667 = !DILocation(line: 375, column: 5, scope: !666)
!668 = !DILocation(line: 376, column: 5, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !3, line: 376, column: 5)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 376, column: 5)
!671 = distinct !DILexicalBlock(scope: !624, file: !3, line: 376, column: 5)
!672 = !DILocation(line: 376, column: 5, scope: !670)
!673 = !DILocation(line: 376, column: 5, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 376, column: 5)
!675 = distinct !DILexicalBlock(scope: !669, file: !3, line: 376, column: 5)
!676 = !DILocation(line: 376, column: 5, scope: !675)
!677 = !DILocation(line: 376, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !674, file: !3, line: 376, column: 5)
!679 = !DILocation(line: 376, column: 5, scope: !671)
!680 = !DILocation(line: 376, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !671, file: !3, line: 376, column: 5)
!682 = !DILocation(line: 376, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 376, column: 5)
!684 = distinct !DILexicalBlock(scope: !681, file: !3, line: 376, column: 5)
!685 = !DILocation(line: 376, column: 5, scope: !684)
!686 = !DILocation(line: 376, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 376, column: 5)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 376, column: 5)
!689 = !DILocation(line: 376, column: 5, scope: !688)
!690 = !DILocation(line: 377, column: 5, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 377, column: 5)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 377, column: 5)
!693 = distinct !DILexicalBlock(scope: !624, file: !3, line: 377, column: 5)
!694 = !DILocation(line: 377, column: 5, scope: !692)
!695 = !DILocation(line: 377, column: 5, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 377, column: 5)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 377, column: 5)
!698 = !DILocation(line: 377, column: 5, scope: !697)
!699 = !DILocation(line: 377, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 377, column: 5)
!701 = !DILocation(line: 377, column: 5, scope: !693)
!702 = !DILocation(line: 377, column: 5, scope: !703)
!703 = distinct !DILexicalBlock(scope: !693, file: !3, line: 377, column: 5)
!704 = !DILocation(line: 377, column: 5, scope: !705)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 377, column: 5)
!706 = distinct !DILexicalBlock(scope: !703, file: !3, line: 377, column: 5)
!707 = !DILocation(line: 377, column: 5, scope: !706)
!708 = !DILocation(line: 377, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 377, column: 5)
!710 = distinct !DILexicalBlock(scope: !703, file: !3, line: 377, column: 5)
!711 = !DILocation(line: 377, column: 5, scope: !710)
!712 = !DILocation(line: 378, column: 5, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 378, column: 5)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 378, column: 5)
!715 = distinct !DILexicalBlock(scope: !624, file: !3, line: 378, column: 5)
!716 = !DILocation(line: 378, column: 5, scope: !714)
!717 = !DILocation(line: 378, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 378, column: 5)
!719 = distinct !DILexicalBlock(scope: !713, file: !3, line: 378, column: 5)
!720 = !DILocation(line: 378, column: 5, scope: !719)
!721 = !DILocation(line: 378, column: 5, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !3, line: 378, column: 5)
!723 = !DILocation(line: 378, column: 5, scope: !715)
!724 = !DILocation(line: 378, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !715, file: !3, line: 378, column: 5)
!726 = !DILocation(line: 378, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 378, column: 5)
!728 = distinct !DILexicalBlock(scope: !725, file: !3, line: 378, column: 5)
!729 = !DILocation(line: 378, column: 5, scope: !728)
!730 = !DILocation(line: 378, column: 5, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 378, column: 5)
!732 = distinct !DILexicalBlock(scope: !725, file: !3, line: 378, column: 5)
!733 = !DILocation(line: 378, column: 5, scope: !732)
!734 = !DILocation(line: 379, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !3, line: 379, column: 5)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 379, column: 5)
!737 = distinct !DILexicalBlock(scope: !624, file: !3, line: 379, column: 5)
!738 = !DILocation(line: 379, column: 5, scope: !736)
!739 = !DILocation(line: 379, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 379, column: 5)
!741 = distinct !DILexicalBlock(scope: !735, file: !3, line: 379, column: 5)
!742 = !DILocation(line: 379, column: 5, scope: !741)
!743 = !DILocation(line: 379, column: 5, scope: !744)
!744 = distinct !DILexicalBlock(scope: !740, file: !3, line: 379, column: 5)
!745 = !DILocation(line: 379, column: 5, scope: !737)
!746 = !DILocation(line: 379, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !737, file: !3, line: 379, column: 5)
!748 = !DILocation(line: 379, column: 5, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !3, line: 379, column: 5)
!750 = distinct !DILexicalBlock(scope: !747, file: !3, line: 379, column: 5)
!751 = !DILocation(line: 379, column: 5, scope: !750)
!752 = !DILocation(line: 379, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !3, line: 379, column: 5)
!754 = distinct !DILexicalBlock(scope: !747, file: !3, line: 379, column: 5)
!755 = !DILocation(line: 379, column: 5, scope: !754)
!756 = !DILocation(line: 380, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 380, column: 5)
!758 = distinct !DILexicalBlock(scope: !759, file: !3, line: 380, column: 5)
!759 = distinct !DILexicalBlock(scope: !624, file: !3, line: 380, column: 5)
!760 = !DILocation(line: 380, column: 5, scope: !758)
!761 = !DILocation(line: 380, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !763, file: !3, line: 380, column: 5)
!763 = distinct !DILexicalBlock(scope: !757, file: !3, line: 380, column: 5)
!764 = !DILocation(line: 380, column: 5, scope: !763)
!765 = !DILocation(line: 380, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !762, file: !3, line: 380, column: 5)
!767 = !DILocation(line: 380, column: 5, scope: !759)
!768 = !DILocation(line: 380, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !759, file: !3, line: 380, column: 5)
!770 = !DILocation(line: 380, column: 5, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 380, column: 5)
!772 = distinct !DILexicalBlock(scope: !769, file: !3, line: 380, column: 5)
!773 = !DILocation(line: 380, column: 5, scope: !772)
!774 = !DILocation(line: 380, column: 5, scope: !775)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 380, column: 5)
!776 = distinct !DILexicalBlock(scope: !769, file: !3, line: 380, column: 5)
!777 = !DILocation(line: 380, column: 5, scope: !776)
!778 = !DILocation(line: 381, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 381, column: 5)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 381, column: 5)
!781 = distinct !DILexicalBlock(scope: !624, file: !3, line: 381, column: 5)
!782 = !DILocation(line: 381, column: 5, scope: !780)
!783 = !DILocation(line: 381, column: 5, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 381, column: 5)
!785 = distinct !DILexicalBlock(scope: !779, file: !3, line: 381, column: 5)
!786 = !DILocation(line: 381, column: 5, scope: !785)
!787 = !DILocation(line: 381, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 381, column: 5)
!789 = !DILocation(line: 381, column: 5, scope: !781)
!790 = !DILocation(line: 381, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !781, file: !3, line: 381, column: 5)
!792 = !DILocation(line: 381, column: 5, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 381, column: 5)
!794 = distinct !DILexicalBlock(scope: !791, file: !3, line: 381, column: 5)
!795 = !DILocation(line: 381, column: 5, scope: !794)
!796 = !DILocation(line: 381, column: 5, scope: !797)
!797 = distinct !DILexicalBlock(scope: !798, file: !3, line: 381, column: 5)
!798 = distinct !DILexicalBlock(scope: !791, file: !3, line: 381, column: 5)
!799 = !DILocation(line: 381, column: 5, scope: !798)
!800 = !DILocation(line: 0, scope: !603, inlinedAt: !801)
!801 = distinct !DILocation(line: 390, column: 11, scope: !291)
!802 = !DILocation(line: 105, column: 31, scope: !603, inlinedAt: !801)
!803 = !DILocation(line: 106, column: 16, scope: !603, inlinedAt: !801)
!804 = !DILocation(line: 106, column: 7, scope: !603, inlinedAt: !801)
!805 = !DILocation(line: 105, column: 40, scope: !603, inlinedAt: !801)
!806 = !DILocation(line: 106, column: 4, scope: !603, inlinedAt: !801)
!807 = !DILocation(line: 105, column: 9, scope: !603, inlinedAt: !801)
!808 = !DILocation(line: 390, column: 11, scope: !291)
!809 = !DILocation(line: 390, column: 33, scope: !291)
!810 = !DILocation(line: 423, column: 5, scope: !291)
!811 = !DILocation(line: 434, column: 5, scope: !291)
!812 = !DILocation(line: 0, scope: !291)
!813 = !DILocation(line: 434, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 434, column: 5)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 434, column: 5)
!816 = distinct !DILexicalBlock(scope: !291, file: !3, line: 434, column: 5)
!817 = !DILocation(line: 434, column: 5, scope: !815)
!818 = !DILocation(line: 434, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 434, column: 5)
!820 = distinct !DILexicalBlock(scope: !814, file: !3, line: 434, column: 5)
!821 = !DILocation(line: 434, column: 5, scope: !820)
!822 = !DILocation(line: 434, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 434, column: 5)
!824 = !DILocation(line: 434, column: 5, scope: !816)
!825 = !DILocation(line: 434, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !816, file: !3, line: 434, column: 5)
!827 = !DILocation(line: 434, column: 5, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 434, column: 5)
!829 = distinct !DILexicalBlock(scope: !826, file: !3, line: 434, column: 5)
!830 = !DILocation(line: 434, column: 5, scope: !829)
!831 = !DILocation(line: 434, column: 5, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 434, column: 5)
!833 = distinct !DILexicalBlock(scope: !826, file: !3, line: 434, column: 5)
!834 = !DILocation(line: 434, column: 5, scope: !833)
!835 = !DILocation(line: 0, scope: !826)
!836 = !DILocation(line: 0, scope: !816)
!837 = !DILocation(line: 435, column: 9, scope: !291)
!838 = !DILocation(line: 435, column: 5, scope: !291)
!839 = !DILocation(line: 436, column: 5, scope: !291)
!840 = !DILocation(line: 436, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 436, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 436, column: 5)
!843 = distinct !DILexicalBlock(scope: !291, file: !3, line: 436, column: 5)
!844 = !DILocation(line: 436, column: 5, scope: !842)
!845 = !DILocation(line: 436, column: 5, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !3, line: 436, column: 5)
!847 = distinct !DILexicalBlock(scope: !841, file: !3, line: 436, column: 5)
!848 = !DILocation(line: 436, column: 5, scope: !847)
!849 = !DILocation(line: 436, column: 5, scope: !850)
!850 = distinct !DILexicalBlock(scope: !846, file: !3, line: 436, column: 5)
!851 = !DILocation(line: 436, column: 5, scope: !843)
!852 = !DILocation(line: 436, column: 5, scope: !853)
!853 = distinct !DILexicalBlock(scope: !843, file: !3, line: 436, column: 5)
!854 = !DILocation(line: 436, column: 5, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !3, line: 436, column: 5)
!856 = distinct !DILexicalBlock(scope: !853, file: !3, line: 436, column: 5)
!857 = !DILocation(line: 436, column: 5, scope: !856)
!858 = !DILocation(line: 436, column: 5, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 436, column: 5)
!860 = distinct !DILexicalBlock(scope: !853, file: !3, line: 436, column: 5)
!861 = !DILocation(line: 436, column: 5, scope: !860)
!862 = !DILocation(line: 0, scope: !853)
!863 = !DILocation(line: 0, scope: !843)
!864 = !DILocation(line: 437, column: 9, scope: !291)
!865 = !DILocation(line: 437, column: 5, scope: !291)
!866 = !DILocation(line: 438, column: 5, scope: !291)
!867 = !DILocation(line: 438, column: 5, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 438, column: 5)
!869 = distinct !DILexicalBlock(scope: !870, file: !3, line: 438, column: 5)
!870 = distinct !DILexicalBlock(scope: !291, file: !3, line: 438, column: 5)
!871 = !DILocation(line: 438, column: 5, scope: !869)
!872 = !DILocation(line: 438, column: 5, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !3, line: 438, column: 5)
!874 = distinct !DILexicalBlock(scope: !868, file: !3, line: 438, column: 5)
!875 = !DILocation(line: 438, column: 5, scope: !874)
!876 = !DILocation(line: 438, column: 5, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !3, line: 438, column: 5)
!878 = !DILocation(line: 438, column: 5, scope: !870)
!879 = !DILocation(line: 438, column: 5, scope: !880)
!880 = distinct !DILexicalBlock(scope: !870, file: !3, line: 438, column: 5)
!881 = !DILocation(line: 438, column: 5, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 438, column: 5)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 438, column: 5)
!884 = !DILocation(line: 438, column: 5, scope: !883)
!885 = !DILocation(line: 438, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !3, line: 438, column: 5)
!887 = distinct !DILexicalBlock(scope: !880, file: !3, line: 438, column: 5)
!888 = !DILocation(line: 438, column: 5, scope: !887)
!889 = !DILocation(line: 0, scope: !880)
!890 = !DILocation(line: 0, scope: !870)
!891 = !DILocation(line: 439, column: 9, scope: !291)
!892 = !DILocation(line: 439, column: 5, scope: !291)
!893 = !DILocation(line: 440, column: 5, scope: !291)
!894 = !DILocation(line: 440, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 440, column: 5)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 440, column: 5)
!897 = distinct !DILexicalBlock(scope: !291, file: !3, line: 440, column: 5)
!898 = !DILocation(line: 440, column: 5, scope: !896)
!899 = !DILocation(line: 440, column: 5, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !3, line: 440, column: 5)
!901 = distinct !DILexicalBlock(scope: !895, file: !3, line: 440, column: 5)
!902 = !DILocation(line: 440, column: 5, scope: !901)
!903 = !DILocation(line: 440, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !3, line: 440, column: 5)
!905 = !DILocation(line: 440, column: 5, scope: !897)
!906 = !DILocation(line: 440, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !897, file: !3, line: 440, column: 5)
!908 = !DILocation(line: 440, column: 5, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 440, column: 5)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 440, column: 5)
!911 = !DILocation(line: 440, column: 5, scope: !910)
!912 = !DILocation(line: 440, column: 5, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 440, column: 5)
!914 = distinct !DILexicalBlock(scope: !907, file: !3, line: 440, column: 5)
!915 = !DILocation(line: 440, column: 5, scope: !914)
!916 = !DILocation(line: 0, scope: !907)
!917 = !DILocation(line: 0, scope: !897)
!918 = !DILocation(line: 441, column: 9, scope: !291)
!919 = !DILocation(line: 441, column: 5, scope: !291)
!920 = !DILocation(line: 442, column: 5, scope: !291)
!921 = !DILocation(line: 442, column: 5, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 442, column: 5)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 442, column: 5)
!924 = distinct !DILexicalBlock(scope: !291, file: !3, line: 442, column: 5)
!925 = !DILocation(line: 442, column: 5, scope: !923)
!926 = !DILocation(line: 442, column: 5, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 442, column: 5)
!928 = distinct !DILexicalBlock(scope: !922, file: !3, line: 442, column: 5)
!929 = !DILocation(line: 442, column: 5, scope: !928)
!930 = !DILocation(line: 442, column: 5, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !3, line: 442, column: 5)
!932 = !DILocation(line: 442, column: 5, scope: !924)
!933 = !DILocation(line: 442, column: 5, scope: !934)
!934 = distinct !DILexicalBlock(scope: !924, file: !3, line: 442, column: 5)
!935 = !DILocation(line: 442, column: 5, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 442, column: 5)
!937 = distinct !DILexicalBlock(scope: !934, file: !3, line: 442, column: 5)
!938 = !DILocation(line: 442, column: 5, scope: !937)
!939 = !DILocation(line: 442, column: 5, scope: !940)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 442, column: 5)
!941 = distinct !DILexicalBlock(scope: !934, file: !3, line: 442, column: 5)
!942 = !DILocation(line: 442, column: 5, scope: !941)
!943 = !DILocation(line: 0, scope: !934)
!944 = !DILocation(line: 0, scope: !924)
!945 = !DILocation(line: 443, column: 9, scope: !291)
!946 = !DILocation(line: 443, column: 5, scope: !291)
!947 = !DILocation(line: 444, column: 5, scope: !291)
!948 = !DILocation(line: 444, column: 5, scope: !949)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 444, column: 5)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 444, column: 5)
!951 = distinct !DILexicalBlock(scope: !291, file: !3, line: 444, column: 5)
!952 = !DILocation(line: 444, column: 5, scope: !950)
!953 = !DILocation(line: 444, column: 5, scope: !954)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 444, column: 5)
!955 = distinct !DILexicalBlock(scope: !949, file: !3, line: 444, column: 5)
!956 = !DILocation(line: 444, column: 5, scope: !955)
!957 = !DILocation(line: 444, column: 5, scope: !958)
!958 = distinct !DILexicalBlock(scope: !954, file: !3, line: 444, column: 5)
!959 = !DILocation(line: 444, column: 5, scope: !951)
!960 = !DILocation(line: 444, column: 5, scope: !961)
!961 = distinct !DILexicalBlock(scope: !951, file: !3, line: 444, column: 5)
!962 = !DILocation(line: 444, column: 5, scope: !963)
!963 = distinct !DILexicalBlock(scope: !964, file: !3, line: 444, column: 5)
!964 = distinct !DILexicalBlock(scope: !961, file: !3, line: 444, column: 5)
!965 = !DILocation(line: 444, column: 5, scope: !964)
!966 = !DILocation(line: 444, column: 5, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 444, column: 5)
!968 = distinct !DILexicalBlock(scope: !961, file: !3, line: 444, column: 5)
!969 = !DILocation(line: 444, column: 5, scope: !968)
!970 = !DILocation(line: 0, scope: !961)
!971 = !DILocation(line: 0, scope: !951)
!972 = !DILocation(line: 445, column: 9, scope: !291)
!973 = !DILocation(line: 445, column: 5, scope: !291)
!974 = !DILocation(line: 446, column: 5, scope: !291)
!975 = !DILocation(line: 446, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 446, column: 5)
!977 = distinct !DILexicalBlock(scope: !978, file: !3, line: 446, column: 5)
!978 = distinct !DILexicalBlock(scope: !291, file: !3, line: 446, column: 5)
!979 = !DILocation(line: 446, column: 5, scope: !977)
!980 = !DILocation(line: 446, column: 5, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !3, line: 446, column: 5)
!982 = distinct !DILexicalBlock(scope: !976, file: !3, line: 446, column: 5)
!983 = !DILocation(line: 446, column: 5, scope: !982)
!984 = !DILocation(line: 446, column: 5, scope: !985)
!985 = distinct !DILexicalBlock(scope: !981, file: !3, line: 446, column: 5)
!986 = !DILocation(line: 446, column: 5, scope: !978)
!987 = !DILocation(line: 446, column: 5, scope: !988)
!988 = distinct !DILexicalBlock(scope: !978, file: !3, line: 446, column: 5)
!989 = !DILocation(line: 446, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 446, column: 5)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 446, column: 5)
!992 = !DILocation(line: 446, column: 5, scope: !991)
!993 = !DILocation(line: 446, column: 5, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !3, line: 446, column: 5)
!995 = distinct !DILexicalBlock(scope: !988, file: !3, line: 446, column: 5)
!996 = !DILocation(line: 446, column: 5, scope: !995)
!997 = !DILocation(line: 0, scope: !988)
!998 = !DILocation(line: 0, scope: !978)
!999 = !DILocation(line: 447, column: 9, scope: !291)
!1000 = !DILocation(line: 447, column: 5, scope: !291)
!1001 = !DILocation(line: 448, column: 5, scope: !291)
!1002 = !DILocation(line: 448, column: 5, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 448, column: 5)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 448, column: 5)
!1005 = distinct !DILexicalBlock(scope: !291, file: !3, line: 448, column: 5)
!1006 = !DILocation(line: 448, column: 5, scope: !1004)
!1007 = !DILocation(line: 448, column: 5, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 448, column: 5)
!1009 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 448, column: 5)
!1010 = !DILocation(line: 448, column: 5, scope: !1009)
!1011 = !DILocation(line: 448, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1008, file: !3, line: 448, column: 5)
!1013 = !DILocation(line: 448, column: 5, scope: !1005)
!1014 = !DILocation(line: 448, column: 5, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 448, column: 5)
!1016 = !DILocation(line: 448, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 448, column: 5)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 448, column: 5)
!1019 = !DILocation(line: 448, column: 5, scope: !1018)
!1020 = !DILocation(line: 448, column: 5, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 448, column: 5)
!1022 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 448, column: 5)
!1023 = !DILocation(line: 448, column: 5, scope: !1022)
!1024 = !DILocation(line: 361, column: 10, scope: !293)
!1025 = !DILocation(line: 0, scope: !292)
!1026 = !DILocation(line: 471, column: 12, scope: !293)
!1027 = !DILocation(line: 471, column: 4, scope: !293)
!1028 = !DILocalVariable(name: "dict", arg: 1, scope: !1029, file: !29, line: 187, type: !27)
!1029 = distinct !DISubprogram(name: "dict_put", scope: !29, file: !29, line: 187, type: !1030, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!47, !27, !34}
!1032 = !{!1028, !1033}
!1033 = !DILocalVariable(name: "byte", arg: 2, scope: !1029, file: !29, line: 187, type: !34)
!1034 = !DILocation(line: 0, scope: !1029, inlinedAt: !1035)
!1035 = distinct !DILocation(line: 474, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !293, file: !3, line: 474, column: 8)
!1037 = !DILocation(line: 189, column: 6, scope: !1038, inlinedAt: !1035)
!1038 = distinct !DILexicalBlock(scope: !1029, file: !29, line: 189, column: 6)
!1039 = !DILocation(line: 189, column: 6, scope: !1029, inlinedAt: !1035)
!1040 = !DILocation(line: 474, column: 8, scope: !1036)
!1041 = !DILocation(line: 192, column: 21, scope: !1029, inlinedAt: !1035)
!1042 = !DILocation(line: 192, column: 2, scope: !1029, inlinedAt: !1035)
!1043 = !DILocation(line: 192, column: 25, scope: !1029, inlinedAt: !1035)
!1044 = !DILocation(line: 194, column: 6, scope: !1029, inlinedAt: !1035)
!1045 = !DILocation(line: 475, column: 21, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 474, column: 43)
!1047 = !DILocation(line: 476, column: 5, scope: !1046)
!1048 = !DILocation(line: 486, column: 3, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !295, file: !3, line: 486, column: 3)
!1050 = !DILocation(line: 489, column: 3, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 489, column: 3)
!1052 = distinct !DILexicalBlock(scope: !295, file: !3, line: 489, column: 3)
!1053 = !DILocation(line: 489, column: 3, scope: !1052)
!1054 = !DILocation(line: 489, column: 3, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 489, column: 3)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 489, column: 3)
!1057 = !DILocation(line: 489, column: 3, scope: !1056)
!1058 = !DILocation(line: 489, column: 3, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 489, column: 3)
!1060 = !DILocation(line: 489, column: 3, scope: !295)
!1061 = !DILocation(line: 489, column: 3, scope: !303)
!1062 = !DILocation(line: 491, column: 4, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 491, column: 4)
!1064 = distinct !DILexicalBlock(scope: !303, file: !3, line: 489, column: 45)
!1065 = !DILocation(line: 492, column: 4, scope: !1064)
!1066 = !DILocation(line: 501, column: 4, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 501, column: 4)
!1068 = !DILocation(line: 501, column: 4, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 501, column: 4)
!1070 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 501, column: 4)
!1071 = !DILocation(line: 501, column: 4, scope: !1070)
!1072 = !DILocation(line: 501, column: 4, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 501, column: 4)
!1074 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 501, column: 4)
!1075 = !DILocation(line: 501, column: 4, scope: !1074)
!1076 = !DILocation(line: 501, column: 4, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 501, column: 4)
!1078 = !DILocation(line: 0, scope: !1064)
!1079 = !{!514, !516, i64 26212}
!1080 = !DILocation(line: 501, column: 4, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 501, column: 4)
!1082 = !DILocation(line: 501, column: 4, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 501, column: 4)
!1084 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 501, column: 4)
!1085 = !DILocation(line: 501, column: 4, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 501, column: 4)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 501, column: 4)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 501, column: 4)
!1089 = !DILocation(line: 501, column: 4, scope: !1087)
!1090 = !DILocation(line: 501, column: 4, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 501, column: 4)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 501, column: 4)
!1093 = !DILocation(line: 501, column: 4, scope: !1092)
!1094 = !DILocation(line: 501, column: 4, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 501, column: 4)
!1096 = !DILocation(line: 0, scope: !1067)
!1097 = !DILocation(line: 0, scope: !1084)
!1098 = !DILocation(line: 501, column: 4, scope: !1088)
!1099 = !DILocation(line: 501, column: 4, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 501, column: 4)
!1101 = !DILocation(line: 501, column: 4, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 501, column: 4)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 501, column: 4)
!1104 = !DILocation(line: 501, column: 4, scope: !1103)
!1105 = !DILocation(line: 501, column: 4, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 501, column: 4)
!1107 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 501, column: 4)
!1108 = !DILocation(line: 501, column: 4, scope: !1107)
!1109 = !DILocation(line: 501, column: 4, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 501, column: 4)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 501, column: 4)
!1112 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 501, column: 4)
!1113 = !DILocation(line: 501, column: 4, scope: !1111)
!1114 = !DILocation(line: 501, column: 4, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 501, column: 4)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 501, column: 4)
!1117 = !DILocation(line: 501, column: 4, scope: !1116)
!1118 = !DILocation(line: 501, column: 4, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 501, column: 4)
!1120 = !DILocation(line: 501, column: 4, scope: !1112)
!1121 = !DILocation(line: 501, column: 4, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 501, column: 4)
!1123 = !DILocation(line: 501, column: 4, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 501, column: 4)
!1125 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 501, column: 4)
!1126 = !DILocation(line: 501, column: 4, scope: !1125)
!1127 = !DILocation(line: 501, column: 4, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 501, column: 4)
!1129 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 501, column: 4)
!1130 = !DILocation(line: 501, column: 4, scope: !1129)
!1131 = !DILocation(line: 501, column: 4, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 501, column: 4)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 501, column: 4)
!1134 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 501, column: 4)
!1135 = !DILocation(line: 501, column: 4, scope: !1133)
!1136 = !DILocation(line: 501, column: 4, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 501, column: 4)
!1138 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 501, column: 4)
!1139 = !DILocation(line: 501, column: 4, scope: !1138)
!1140 = !DILocation(line: 501, column: 4, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 501, column: 4)
!1142 = !DILocation(line: 501, column: 4, scope: !1134)
!1143 = !DILocation(line: 501, column: 4, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 501, column: 4)
!1145 = !DILocation(line: 501, column: 4, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 501, column: 4)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 501, column: 4)
!1148 = !DILocation(line: 501, column: 4, scope: !1147)
!1149 = !DILocation(line: 501, column: 4, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 501, column: 4)
!1151 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 501, column: 4)
!1152 = !DILocation(line: 501, column: 4, scope: !1151)
!1153 = !DILocation(line: 0, scope: !1144)
!1154 = !DILocation(line: 0, scope: !1134)
!1155 = !DILocation(line: 501, column: 4, scope: !1084)
!1156 = !DILocation(line: 501, column: 4, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 501, column: 4)
!1158 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 501, column: 4)
!1159 = !DILocation(line: 501, column: 4, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 501, column: 4)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 501, column: 4)
!1162 = !DILocation(line: 501, column: 4, scope: !1161)
!1163 = !DILocation(line: 501, column: 4, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 501, column: 4)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 501, column: 4)
!1166 = !DILocation(line: 501, column: 4, scope: !1165)
!1167 = !DILocation(line: 501, column: 4, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 501, column: 4)
!1169 = !DILocation(line: 0, scope: !1158)
!1170 = !DILocation(line: 501, column: 4, scope: !1158)
!1171 = !{!514, !516, i64 26214}
!1172 = !DILocation(line: 501, column: 4, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 501, column: 4)
!1174 = !DILocation(line: 501, column: 4, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 501, column: 4)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 501, column: 4)
!1177 = !DILocation(line: 501, column: 4, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 501, column: 4)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 501, column: 4)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 501, column: 4)
!1181 = !DILocation(line: 501, column: 4, scope: !1179)
!1182 = !DILocation(line: 501, column: 4, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 501, column: 4)
!1184 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 501, column: 4)
!1185 = !DILocation(line: 501, column: 4, scope: !1184)
!1186 = !DILocation(line: 501, column: 4, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 501, column: 4)
!1188 = !DILocation(line: 0, scope: !1176)
!1189 = !DILocation(line: 501, column: 4, scope: !1180)
!1190 = !DILocation(line: 501, column: 4, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 501, column: 4)
!1192 = !DILocation(line: 501, column: 4, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !3, line: 501, column: 4)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 501, column: 4)
!1195 = !DILocation(line: 501, column: 4, scope: !1194)
!1196 = !DILocation(line: 501, column: 4, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 501, column: 4)
!1198 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 501, column: 4)
!1199 = !DILocation(line: 501, column: 4, scope: !1198)
!1200 = !DILocation(line: 501, column: 4, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 501, column: 4)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 501, column: 4)
!1203 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 501, column: 4)
!1204 = !DILocation(line: 501, column: 4, scope: !1202)
!1205 = !DILocation(line: 501, column: 4, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 501, column: 4)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 501, column: 4)
!1208 = !DILocation(line: 501, column: 4, scope: !1207)
!1209 = !DILocation(line: 501, column: 4, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 501, column: 4)
!1211 = !DILocation(line: 501, column: 4, scope: !1203)
!1212 = !DILocation(line: 501, column: 4, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 501, column: 4)
!1214 = !DILocation(line: 501, column: 4, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 501, column: 4)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 501, column: 4)
!1217 = !DILocation(line: 501, column: 4, scope: !1216)
!1218 = !DILocation(line: 501, column: 4, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 501, column: 4)
!1220 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 501, column: 4)
!1221 = !DILocation(line: 501, column: 4, scope: !1220)
!1222 = !DILocation(line: 501, column: 4, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 501, column: 4)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 501, column: 4)
!1225 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 501, column: 4)
!1226 = !DILocation(line: 501, column: 4, scope: !1224)
!1227 = !DILocation(line: 501, column: 4, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 501, column: 4)
!1229 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 501, column: 4)
!1230 = !DILocation(line: 501, column: 4, scope: !1229)
!1231 = !DILocation(line: 501, column: 4, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !3, line: 501, column: 4)
!1233 = !DILocation(line: 501, column: 4, scope: !1225)
!1234 = !DILocation(line: 501, column: 4, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 501, column: 4)
!1236 = !DILocation(line: 501, column: 4, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 501, column: 4)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 501, column: 4)
!1239 = !DILocation(line: 501, column: 4, scope: !1238)
!1240 = !DILocation(line: 501, column: 4, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 501, column: 4)
!1242 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 501, column: 4)
!1243 = !DILocation(line: 501, column: 4, scope: !1242)
!1244 = !DILocation(line: 0, scope: !1235)
!1245 = !DILocation(line: 0, scope: !1225)
!1246 = !DILocation(line: 501, column: 4, scope: !1176)
!1247 = !DILocation(line: 501, column: 4, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1249 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 501, column: 4)
!1250 = !DILocation(line: 501, column: 4, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 501, column: 4)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 501, column: 4)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1254 = !DILocation(line: 501, column: 4, scope: !1252)
!1255 = !DILocation(line: 501, column: 4, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 501, column: 4)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 501, column: 4)
!1258 = !DILocation(line: 501, column: 4, scope: !1257)
!1259 = !DILocation(line: 501, column: 4, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 501, column: 4)
!1261 = !DILocation(line: 0, scope: !1249)
!1262 = !DILocation(line: 501, column: 4, scope: !1253)
!1263 = !DILocation(line: 501, column: 4, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 501, column: 4)
!1265 = !DILocation(line: 501, column: 4, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 501, column: 4)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 501, column: 4)
!1268 = !DILocation(line: 501, column: 4, scope: !1267)
!1269 = !DILocation(line: 501, column: 4, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 501, column: 4)
!1271 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 501, column: 4)
!1272 = !DILocation(line: 501, column: 4, scope: !1271)
!1273 = !DILocation(line: 501, column: 4, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 501, column: 4)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 501, column: 4)
!1276 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1277 = !DILocation(line: 501, column: 4, scope: !1275)
!1278 = !DILocation(line: 501, column: 4, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 501, column: 4)
!1280 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 501, column: 4)
!1281 = !DILocation(line: 501, column: 4, scope: !1280)
!1282 = !DILocation(line: 501, column: 4, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 501, column: 4)
!1284 = !DILocation(line: 501, column: 4, scope: !1276)
!1285 = !DILocation(line: 501, column: 4, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 501, column: 4)
!1287 = !DILocation(line: 501, column: 4, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 501, column: 4)
!1289 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 501, column: 4)
!1290 = !DILocation(line: 501, column: 4, scope: !1289)
!1291 = !DILocation(line: 501, column: 4, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 501, column: 4)
!1293 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 501, column: 4)
!1294 = !DILocation(line: 501, column: 4, scope: !1293)
!1295 = !DILocation(line: 501, column: 4, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 501, column: 4)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 501, column: 4)
!1298 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1299 = !DILocation(line: 501, column: 4, scope: !1297)
!1300 = !DILocation(line: 501, column: 4, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 501, column: 4)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 501, column: 4)
!1303 = !DILocation(line: 501, column: 4, scope: !1302)
!1304 = !DILocation(line: 501, column: 4, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 501, column: 4)
!1306 = !DILocation(line: 501, column: 4, scope: !1298)
!1307 = !DILocation(line: 501, column: 4, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 501, column: 4)
!1309 = !DILocation(line: 501, column: 4, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 501, column: 4)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 501, column: 4)
!1312 = !DILocation(line: 501, column: 4, scope: !1311)
!1313 = !DILocation(line: 501, column: 4, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 501, column: 4)
!1315 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 501, column: 4)
!1316 = !DILocation(line: 501, column: 4, scope: !1315)
!1317 = !DILocation(line: 501, column: 4, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 501, column: 4)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 501, column: 4)
!1320 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1321 = !DILocation(line: 501, column: 4, scope: !1319)
!1322 = !DILocation(line: 501, column: 4, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 501, column: 4)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 501, column: 4)
!1325 = !DILocation(line: 501, column: 4, scope: !1324)
!1326 = !DILocation(line: 501, column: 4, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 501, column: 4)
!1328 = !DILocation(line: 501, column: 4, scope: !1320)
!1329 = !DILocation(line: 501, column: 4, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 501, column: 4)
!1331 = !DILocation(line: 501, column: 4, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !3, line: 501, column: 4)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 501, column: 4)
!1334 = !DILocation(line: 501, column: 4, scope: !1333)
!1335 = !DILocation(line: 501, column: 4, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 501, column: 4)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 501, column: 4)
!1338 = !DILocation(line: 501, column: 4, scope: !1337)
!1339 = !DILocation(line: 501, column: 4, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 501, column: 4)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 501, column: 4)
!1342 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1343 = !DILocation(line: 501, column: 4, scope: !1341)
!1344 = !DILocation(line: 501, column: 4, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 501, column: 4)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 501, column: 4)
!1347 = !DILocation(line: 501, column: 4, scope: !1346)
!1348 = !DILocation(line: 501, column: 4, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 501, column: 4)
!1350 = !DILocation(line: 501, column: 4, scope: !1342)
!1351 = !DILocation(line: 501, column: 4, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 501, column: 4)
!1353 = !DILocation(line: 501, column: 4, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 501, column: 4)
!1355 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 501, column: 4)
!1356 = !DILocation(line: 501, column: 4, scope: !1355)
!1357 = !DILocation(line: 501, column: 4, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 501, column: 4)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 501, column: 4)
!1360 = !DILocation(line: 501, column: 4, scope: !1359)
!1361 = !DILocation(line: 501, column: 4, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 501, column: 4)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 501, column: 4)
!1364 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1365 = !DILocation(line: 501, column: 4, scope: !1363)
!1366 = !DILocation(line: 501, column: 4, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 501, column: 4)
!1368 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 501, column: 4)
!1369 = !DILocation(line: 501, column: 4, scope: !1368)
!1370 = !DILocation(line: 501, column: 4, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 501, column: 4)
!1372 = !DILocation(line: 501, column: 4, scope: !1364)
!1373 = !DILocation(line: 501, column: 4, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 501, column: 4)
!1375 = !DILocation(line: 501, column: 4, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 501, column: 4)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 501, column: 4)
!1378 = !DILocation(line: 501, column: 4, scope: !1377)
!1379 = !DILocation(line: 501, column: 4, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 501, column: 4)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 501, column: 4)
!1382 = !DILocation(line: 501, column: 4, scope: !1381)
!1383 = !DILocation(line: 501, column: 4, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 501, column: 4)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 501, column: 4)
!1386 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1387 = !DILocation(line: 501, column: 4, scope: !1385)
!1388 = !DILocation(line: 501, column: 4, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !3, line: 501, column: 4)
!1390 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 501, column: 4)
!1391 = !DILocation(line: 501, column: 4, scope: !1390)
!1392 = !DILocation(line: 501, column: 4, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 501, column: 4)
!1394 = !DILocation(line: 501, column: 4, scope: !1386)
!1395 = !DILocation(line: 501, column: 4, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 501, column: 4)
!1397 = !DILocation(line: 501, column: 4, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 501, column: 4)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 501, column: 4)
!1400 = !DILocation(line: 501, column: 4, scope: !1399)
!1401 = !DILocation(line: 501, column: 4, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 501, column: 4)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 501, column: 4)
!1404 = !DILocation(line: 501, column: 4, scope: !1403)
!1405 = !DILocation(line: 501, column: 4, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 501, column: 4)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 501, column: 4)
!1408 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 501, column: 4)
!1409 = !DILocation(line: 501, column: 4, scope: !1407)
!1410 = !DILocation(line: 501, column: 4, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 501, column: 4)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 501, column: 4)
!1413 = !DILocation(line: 501, column: 4, scope: !1412)
!1414 = !DILocation(line: 501, column: 4, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 501, column: 4)
!1416 = !DILocation(line: 501, column: 4, scope: !1408)
!1417 = !DILocation(line: 501, column: 4, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 501, column: 4)
!1419 = !DILocation(line: 501, column: 4, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 501, column: 4)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 501, column: 4)
!1422 = !DILocation(line: 501, column: 4, scope: !1421)
!1423 = !DILocation(line: 501, column: 4, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 501, column: 4)
!1425 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 501, column: 4)
!1426 = !DILocation(line: 501, column: 4, scope: !1425)
!1427 = !DILocation(line: 0, scope: !1418)
!1428 = !DILocation(line: 0, scope: !1408)
!1429 = !DILocation(line: 501, column: 4, scope: !1249)
!1430 = !DILocation(line: 0, scope: !1081)
!1431 = !DILocation(line: 498, column: 9, scope: !1064)
!1432 = !DILocation(line: 497, column: 9, scope: !1064)
!1433 = !DILocation(line: 496, column: 9, scope: !1064)
!1434 = !DILocation(line: 506, column: 28, scope: !1064)
!1435 = !DILocation(line: 506, column: 12, scope: !1064)
!1436 = !DILocation(line: 507, column: 4, scope: !1064)
!1437 = !DILocation(line: 515, column: 4, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 515, column: 4)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 515, column: 4)
!1440 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 515, column: 4)
!1441 = !DILocation(line: 515, column: 4, scope: !1439)
!1442 = !DILocation(line: 515, column: 4, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !3, line: 515, column: 4)
!1444 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 515, column: 4)
!1445 = !DILocation(line: 515, column: 4, scope: !1444)
!1446 = !DILocation(line: 515, column: 4, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 515, column: 4)
!1448 = !DILocation(line: 515, column: 4, scope: !1440)
!1449 = !DILocation(line: 515, column: 4, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 515, column: 4)
!1451 = !DILocation(line: 515, column: 4, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 515, column: 4)
!1453 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 515, column: 4)
!1454 = !DILocation(line: 515, column: 4, scope: !1453)
!1455 = !DILocation(line: 515, column: 4, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 515, column: 4)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 515, column: 4)
!1458 = !DILocation(line: 515, column: 4, scope: !1457)
!1459 = !DILocation(line: 516, column: 4, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !3, line: 516, column: 4)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 516, column: 4)
!1462 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 516, column: 4)
!1463 = !DILocation(line: 516, column: 4, scope: !1461)
!1464 = !DILocation(line: 516, column: 4, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 516, column: 4)
!1466 = distinct !DILexicalBlock(scope: !1460, file: !3, line: 516, column: 4)
!1467 = !DILocation(line: 516, column: 4, scope: !1466)
!1468 = !DILocation(line: 516, column: 4, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !3, line: 516, column: 4)
!1470 = !DILocation(line: 516, column: 4, scope: !1462)
!1471 = !DILocation(line: 516, column: 4, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 516, column: 4)
!1473 = !DILocation(line: 516, column: 4, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 516, column: 4)
!1475 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 516, column: 4)
!1476 = !DILocation(line: 516, column: 4, scope: !1475)
!1477 = !DILocation(line: 516, column: 4, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 516, column: 4)
!1479 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 516, column: 4)
!1480 = !DILocation(line: 516, column: 4, scope: !1479)
!1481 = !DILocation(line: 517, column: 4, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !3, line: 517, column: 4)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 517, column: 4)
!1484 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 517, column: 4)
!1485 = !DILocation(line: 517, column: 4, scope: !1483)
!1486 = !DILocation(line: 517, column: 4, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 517, column: 4)
!1488 = distinct !DILexicalBlock(scope: !1482, file: !3, line: 517, column: 4)
!1489 = !DILocation(line: 517, column: 4, scope: !1488)
!1490 = !DILocation(line: 517, column: 4, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 517, column: 4)
!1492 = !DILocation(line: 517, column: 4, scope: !1484)
!1493 = !DILocation(line: 517, column: 4, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1484, file: !3, line: 517, column: 4)
!1495 = !DILocation(line: 517, column: 4, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !3, line: 517, column: 4)
!1497 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 517, column: 4)
!1498 = !DILocation(line: 517, column: 4, scope: !1497)
!1499 = !DILocation(line: 517, column: 4, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !3, line: 517, column: 4)
!1501 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 517, column: 4)
!1502 = !DILocation(line: 517, column: 4, scope: !1501)
!1503 = !DILocation(line: 518, column: 4, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !3, line: 518, column: 4)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 518, column: 4)
!1506 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 518, column: 4)
!1507 = !DILocation(line: 518, column: 4, scope: !1505)
!1508 = !DILocation(line: 518, column: 4, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !3, line: 518, column: 4)
!1510 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 518, column: 4)
!1511 = !DILocation(line: 518, column: 4, scope: !1510)
!1512 = !DILocation(line: 518, column: 4, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 518, column: 4)
!1514 = !DILocation(line: 518, column: 4, scope: !1506)
!1515 = !DILocation(line: 518, column: 4, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1506, file: !3, line: 518, column: 4)
!1517 = !DILocation(line: 518, column: 4, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 518, column: 4)
!1519 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 518, column: 4)
!1520 = !DILocation(line: 518, column: 4, scope: !1519)
!1521 = !DILocation(line: 518, column: 4, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 518, column: 4)
!1523 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 518, column: 4)
!1524 = !DILocation(line: 518, column: 4, scope: !1523)
!1525 = !DILocation(line: 519, column: 4, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 519, column: 4)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 519, column: 4)
!1528 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 519, column: 4)
!1529 = !DILocation(line: 519, column: 4, scope: !1527)
!1530 = !DILocation(line: 519, column: 4, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 519, column: 4)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 519, column: 4)
!1533 = !DILocation(line: 519, column: 4, scope: !1532)
!1534 = !DILocation(line: 519, column: 4, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 519, column: 4)
!1536 = !DILocation(line: 519, column: 4, scope: !1528)
!1537 = !DILocation(line: 519, column: 4, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1528, file: !3, line: 519, column: 4)
!1539 = !DILocation(line: 519, column: 4, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !3, line: 519, column: 4)
!1541 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 519, column: 4)
!1542 = !DILocation(line: 519, column: 4, scope: !1541)
!1543 = !DILocation(line: 519, column: 4, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1545, file: !3, line: 519, column: 4)
!1545 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 519, column: 4)
!1546 = !DILocation(line: 519, column: 4, scope: !1545)
!1547 = !DILocation(line: 520, column: 4, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 520, column: 4)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 520, column: 4)
!1550 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 520, column: 4)
!1551 = !DILocation(line: 520, column: 4, scope: !1549)
!1552 = !DILocation(line: 520, column: 4, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 520, column: 4)
!1554 = distinct !DILexicalBlock(scope: !1548, file: !3, line: 520, column: 4)
!1555 = !DILocation(line: 520, column: 4, scope: !1554)
!1556 = !DILocation(line: 520, column: 4, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 520, column: 4)
!1558 = !DILocation(line: 520, column: 4, scope: !1550)
!1559 = !DILocation(line: 520, column: 4, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 520, column: 4)
!1561 = !DILocation(line: 520, column: 4, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 520, column: 4)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 520, column: 4)
!1564 = !DILocation(line: 520, column: 4, scope: !1563)
!1565 = !DILocation(line: 520, column: 4, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 520, column: 4)
!1567 = distinct !DILexicalBlock(scope: !1560, file: !3, line: 520, column: 4)
!1568 = !DILocation(line: 520, column: 4, scope: !1567)
!1569 = !DILocation(line: 0, scope: !1560)
!1570 = !DILocation(line: 0, scope: !1550)
!1571 = !DILocation(line: 524, column: 11, scope: !1064)
!1572 = !DILocation(line: 527, column: 15, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 527, column: 8)
!1574 = !DILocation(line: 527, column: 8, scope: !1064)
!1575 = !DILocation(line: 533, column: 21, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1573, file: !3, line: 530, column: 11)
!1577 = !DILocation(line: 535, column: 24, scope: !1576)
!1578 = !DILocation(line: 535, column: 14, scope: !1576)
!1579 = !DILocation(line: 537, column: 16, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 537, column: 9)
!1581 = !DILocation(line: 537, column: 9, scope: !1576)
!1582 = !DILocation(line: 533, column: 27, scope: !1576)
!1583 = !DILocation(line: 541, column: 11, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 537, column: 39)
!1585 = !DILocation(line: 553, column: 21, scope: !1584)
!1586 = !DILocation(line: 553, column: 33, scope: !1584)
!1587 = !DILocation(line: 554, column: 8, scope: !1584)
!1588 = !DILocation(line: 554, column: 17, scope: !1584)
!1589 = !DILocation(line: 556, column: 6, scope: !1584)
!1590 = !DILocation(line: 565, column: 6, scope: !1584)
!1591 = !DILocation(line: 568, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 568, column: 7)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 568, column: 7)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 568, column: 7)
!1595 = distinct !DILexicalBlock(scope: !1584, file: !3, line: 565, column: 21)
!1596 = !DILocation(line: 568, column: 7, scope: !1593)
!1597 = !DILocation(line: 568, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 568, column: 7)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 568, column: 7)
!1600 = !DILocation(line: 568, column: 7, scope: !1599)
!1601 = !DILocation(line: 568, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 568, column: 7)
!1603 = !DILocation(line: 568, column: 7, scope: !1594)
!1604 = !DILocation(line: 568, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 568, column: 7)
!1606 = !DILocation(line: 568, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !3, line: 568, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 568, column: 7)
!1609 = !DILocation(line: 568, column: 7, scope: !1608)
!1610 = !DILocation(line: 568, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 568, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1605, file: !3, line: 568, column: 7)
!1613 = !DILocation(line: 568, column: 7, scope: !1612)
!1614 = !DILocation(line: 0, scope: !1584)
!1615 = !DILocation(line: 0, scope: !1605)
!1616 = !DILocation(line: 0, scope: !1594)
!1617 = !DILocation(line: 571, column: 7, scope: !1595)
!1618 = !DILocation(line: 572, column: 7, scope: !1595)
!1619 = !DILocation(line: 574, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 574, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 574, column: 7)
!1622 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 574, column: 7)
!1623 = !DILocation(line: 574, column: 7, scope: !1621)
!1624 = !DILocation(line: 574, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 574, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 574, column: 7)
!1627 = !DILocation(line: 574, column: 7, scope: !1626)
!1628 = !DILocation(line: 574, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 574, column: 7)
!1630 = !DILocation(line: 574, column: 7, scope: !1622)
!1631 = !DILocation(line: 574, column: 7, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 574, column: 7)
!1633 = !DILocation(line: 574, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 574, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 574, column: 7)
!1636 = !DILocation(line: 574, column: 7, scope: !1635)
!1637 = !DILocation(line: 574, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 574, column: 7)
!1639 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 574, column: 7)
!1640 = !DILocation(line: 574, column: 7, scope: !1639)
!1641 = !DILocation(line: 0, scope: !1632)
!1642 = !DILocation(line: 0, scope: !1622)
!1643 = !DILocation(line: 577, column: 7, scope: !1595)
!1644 = !DILocation(line: 578, column: 7, scope: !1595)
!1645 = !DILocation(line: 580, column: 7, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 580, column: 7)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 580, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 580, column: 7)
!1649 = !DILocation(line: 580, column: 7, scope: !1647)
!1650 = !DILocation(line: 580, column: 7, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 580, column: 7)
!1652 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 580, column: 7)
!1653 = !DILocation(line: 580, column: 7, scope: !1652)
!1654 = !DILocation(line: 580, column: 7, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 580, column: 7)
!1656 = !DILocation(line: 580, column: 7, scope: !1648)
!1657 = !DILocation(line: 580, column: 7, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 580, column: 7)
!1659 = !DILocation(line: 580, column: 7, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 580, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 580, column: 7)
!1662 = !DILocation(line: 580, column: 7, scope: !1661)
!1663 = !DILocation(line: 580, column: 7, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 580, column: 7)
!1665 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 580, column: 7)
!1666 = !DILocation(line: 580, column: 7, scope: !1665)
!1667 = !DILocation(line: 0, scope: !1658)
!1668 = !DILocation(line: 0, scope: !1648)
!1669 = !DILocation(line: 583, column: 7, scope: !1595)
!1670 = !DILocation(line: 584, column: 7, scope: !1595)
!1671 = !DILocation(line: 586, column: 7, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 586, column: 7)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 586, column: 7)
!1674 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 586, column: 7)
!1675 = !DILocation(line: 586, column: 7, scope: !1673)
!1676 = !DILocation(line: 586, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 586, column: 7)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 586, column: 7)
!1679 = !DILocation(line: 586, column: 7, scope: !1678)
!1680 = !DILocation(line: 586, column: 7, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 586, column: 7)
!1682 = !DILocation(line: 586, column: 7, scope: !1674)
!1683 = !DILocation(line: 586, column: 7, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 586, column: 7)
!1685 = !DILocation(line: 586, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 586, column: 7)
!1687 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 586, column: 7)
!1688 = !DILocation(line: 586, column: 7, scope: !1687)
!1689 = !DILocation(line: 586, column: 7, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 586, column: 7)
!1691 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 586, column: 7)
!1692 = !DILocation(line: 586, column: 7, scope: !1691)
!1693 = !DILocation(line: 0, scope: !1684)
!1694 = !DILocation(line: 0, scope: !1674)
!1695 = !DILocation(line: 589, column: 7, scope: !1595)
!1696 = !DILocation(line: 590, column: 7, scope: !1595)
!1697 = !DILocation(line: 598, column: 7, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !3, line: 598, column: 7)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 598, column: 7)
!1700 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 598, column: 7)
!1701 = !DILocation(line: 598, column: 7, scope: !1699)
!1702 = !DILocation(line: 598, column: 7, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 598, column: 7)
!1704 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 598, column: 7)
!1705 = !DILocation(line: 598, column: 7, scope: !1704)
!1706 = !DILocation(line: 598, column: 7, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1703, file: !3, line: 598, column: 7)
!1708 = !DILocation(line: 598, column: 7, scope: !1700)
!1709 = !DILocation(line: 598, column: 7, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !3, line: 598, column: 7)
!1711 = !DILocation(line: 598, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !3, line: 598, column: 7)
!1713 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 598, column: 7)
!1714 = !DILocation(line: 598, column: 7, scope: !1713)
!1715 = !DILocation(line: 598, column: 7, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 598, column: 7)
!1717 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 598, column: 7)
!1718 = !DILocation(line: 598, column: 7, scope: !1717)
!1719 = !DILocation(line: 609, column: 12, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 603, column: 12)
!1721 = !DILocation(line: 610, column: 6, scope: !1720)
!1722 = !DILocation(line: 613, column: 6, scope: !1720)
!1723 = !DILocation(line: 0, scope: !1576)
!1724 = !DILocation(line: 0, scope: !1720)
!1725 = !DILocation(line: 614, column: 7, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !3, line: 614, column: 7)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !3, line: 614, column: 7)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 614, column: 7)
!1729 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 613, column: 9)
!1730 = !DILocation(line: 614, column: 7, scope: !1727)
!1731 = !DILocation(line: 614, column: 7, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !3, line: 614, column: 7)
!1733 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 614, column: 7)
!1734 = !DILocation(line: 614, column: 7, scope: !1733)
!1735 = !DILocation(line: 614, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !3, line: 614, column: 7)
!1737 = !DILocation(line: 614, column: 7, scope: !1728)
!1738 = !DILocation(line: 615, column: 15, scope: !1720)
!1739 = !DILocation(line: 615, column: 23, scope: !1720)
!1740 = !DILocation(line: 615, column: 6, scope: !1729)
!1741 = distinct !{!1741, !1722, !1742, !500, !501}
!1742 = !DILocation(line: 615, column: 26, scope: !1720)
!1743 = !DILocation(line: 619, column: 11, scope: !1720)
!1744 = !DILocation(line: 620, column: 6, scope: !1720)
!1745 = !DILocation(line: 632, column: 6, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !3, line: 632, column: 6)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 632, column: 6)
!1748 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 632, column: 6)
!1749 = !DILocation(line: 632, column: 6, scope: !1747)
!1750 = !DILocation(line: 632, column: 6, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 632, column: 6)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 632, column: 6)
!1753 = !DILocation(line: 632, column: 6, scope: !1752)
!1754 = !DILocation(line: 632, column: 6, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 632, column: 6)
!1756 = !DILocation(line: 632, column: 6, scope: !1748)
!1757 = !DILocation(line: 632, column: 6, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1748, file: !3, line: 632, column: 6)
!1759 = !DILocation(line: 632, column: 6, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 632, column: 6)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 632, column: 6)
!1762 = !DILocation(line: 632, column: 6, scope: !1761)
!1763 = !DILocation(line: 632, column: 6, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 632, column: 6)
!1765 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 632, column: 6)
!1766 = !DILocation(line: 632, column: 6, scope: !1765)
!1767 = !DILocation(line: 635, column: 6, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 635, column: 6)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 635, column: 6)
!1770 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 635, column: 6)
!1771 = !DILocation(line: 635, column: 6, scope: !1769)
!1772 = !DILocation(line: 635, column: 6, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 635, column: 6)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !3, line: 635, column: 6)
!1775 = !DILocation(line: 635, column: 6, scope: !1774)
!1776 = !DILocation(line: 635, column: 6, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 635, column: 6)
!1778 = !DILocation(line: 635, column: 6, scope: !1770)
!1779 = !DILocation(line: 635, column: 6, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 635, column: 6)
!1781 = !DILocation(line: 635, column: 6, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !3, line: 635, column: 6)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 635, column: 6)
!1784 = !DILocation(line: 635, column: 6, scope: !1783)
!1785 = !DILocation(line: 635, column: 6, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 635, column: 6)
!1787 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 635, column: 6)
!1788 = !DILocation(line: 635, column: 6, scope: !1787)
!1789 = !DILocation(line: 638, column: 6, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !3, line: 638, column: 6)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 638, column: 6)
!1792 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 638, column: 6)
!1793 = !DILocation(line: 638, column: 6, scope: !1791)
!1794 = !DILocation(line: 638, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 638, column: 6)
!1796 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 638, column: 6)
!1797 = !DILocation(line: 638, column: 6, scope: !1796)
!1798 = !DILocation(line: 638, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !3, line: 638, column: 6)
!1800 = !DILocation(line: 638, column: 6, scope: !1792)
!1801 = !DILocation(line: 638, column: 6, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 638, column: 6)
!1803 = !DILocation(line: 638, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !3, line: 638, column: 6)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 638, column: 6)
!1806 = !DILocation(line: 638, column: 6, scope: !1805)
!1807 = !DILocation(line: 638, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !3, line: 638, column: 6)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !3, line: 638, column: 6)
!1810 = !DILocation(line: 638, column: 6, scope: !1809)
!1811 = !DILocation(line: 644, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 644, column: 6)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 644, column: 6)
!1814 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 644, column: 6)
!1815 = !DILocation(line: 644, column: 6, scope: !1813)
!1816 = !DILocation(line: 644, column: 6, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 644, column: 6)
!1818 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 644, column: 6)
!1819 = !DILocation(line: 644, column: 6, scope: !1818)
!1820 = !DILocation(line: 644, column: 6, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 644, column: 6)
!1822 = !DILocation(line: 644, column: 6, scope: !1814)
!1823 = !DILocation(line: 644, column: 6, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1814, file: !3, line: 644, column: 6)
!1825 = !DILocation(line: 644, column: 6, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 644, column: 6)
!1827 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 644, column: 6)
!1828 = !DILocation(line: 644, column: 6, scope: !1827)
!1829 = !DILocation(line: 644, column: 6, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 644, column: 6)
!1831 = distinct !DILexicalBlock(scope: !1824, file: !3, line: 644, column: 6)
!1832 = !DILocation(line: 644, column: 6, scope: !1831)
!1833 = !DILocation(line: 0, scope: !1824)
!1834 = !DILocation(line: 0, scope: !1814)
!1835 = !DILocation(line: 648, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 648, column: 10)
!1837 = !DILocation(line: 648, column: 10, scope: !1720)
!1838 = !DILocation(line: 653, column: 18, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 653, column: 11)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 648, column: 30)
!1841 = !DILocation(line: 654, column: 7, scope: !1839)
!1842 = !DILocation(line: 653, column: 11, scope: !1840)
!1843 = !DILocation(line: 662, column: 7, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !3, line: 662, column: 7)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !3, line: 662, column: 7)
!1846 = !DILocation(line: 662, column: 7, scope: !1845)
!1847 = !DILocation(line: 662, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !3, line: 662, column: 7)
!1849 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 662, column: 7)
!1850 = !DILocation(line: 662, column: 7, scope: !1849)
!1851 = !DILocation(line: 662, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 662, column: 7)
!1853 = !DILocation(line: 0, scope: !1573)
!1854 = !DILocation(line: 670, column: 8, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 670, column: 8)
!1856 = !DILocalVariable(name: "dict", arg: 1, scope: !1857, file: !29, line: 120, type: !606)
!1857 = distinct !DISubprogram(name: "dict_is_distance_valid", scope: !29, file: !29, line: 120, type: !1858, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!47, !606, !268}
!1860 = !{!1856, !1861}
!1861 = !DILocalVariable(name: "distance", arg: 2, scope: !1857, file: !29, line: 120, type: !268)
!1862 = !DILocation(line: 0, scope: !1857, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 670, column: 8, scope: !1855)
!1864 = !DILocation(line: 122, column: 20, scope: !1857, inlinedAt: !1863)
!1865 = !DILocation(line: 670, column: 8, scope: !1064)
!1866 = !DILocation(line: 676, column: 4, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !302, file: !3, line: 676, column: 4)
!1868 = !DILocation(line: 0, scope: !1857, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 687, column: 8, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !302, file: !3, line: 687, column: 8)
!1871 = !DILocation(line: 122, column: 20, scope: !1857, inlinedAt: !1869)
!1872 = !DILocation(line: 687, column: 8, scope: !302)
!1873 = !DILocation(line: 693, column: 4, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 693, column: 4)
!1875 = distinct !DILexicalBlock(scope: !302, file: !3, line: 693, column: 4)
!1876 = !DILocation(line: 693, column: 4, scope: !1875)
!1877 = !DILocation(line: 693, column: 4, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 693, column: 4)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 693, column: 4)
!1880 = !DILocation(line: 693, column: 4, scope: !1879)
!1881 = !DILocation(line: 693, column: 4, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 693, column: 4)
!1883 = !DILocation(line: 0, scope: !302)
!1884 = !DILocation(line: 693, column: 4, scope: !302)
!1885 = !DILocation(line: 693, column: 4, scope: !301)
!1886 = !DILocation(line: 694, column: 5, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 694, column: 5)
!1888 = distinct !DILexicalBlock(scope: !301, file: !3, line: 693, column: 48)
!1889 = !DILocation(line: 698, column: 5, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 698, column: 5)
!1891 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 698, column: 5)
!1892 = !DILocation(line: 698, column: 5, scope: !1891)
!1893 = !DILocation(line: 698, column: 5, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 698, column: 5)
!1895 = distinct !DILexicalBlock(scope: !1890, file: !3, line: 698, column: 5)
!1896 = !DILocation(line: 698, column: 5, scope: !1895)
!1897 = !DILocation(line: 698, column: 5, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 698, column: 5)
!1899 = !DILocation(line: 0, scope: !1888)
!1900 = !DILocation(line: 698, column: 5, scope: !1888)
!1901 = !DILocation(line: 698, column: 5, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 698, column: 5)
!1903 = !DILocation(line: 700, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 700, column: 6)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !3, line: 699, column: 25)
!1906 = !DILocation(line: 703, column: 6, scope: !1905)
!1907 = !DILocation(line: 0, scope: !603, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 706, column: 10, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1905, file: !3, line: 706, column: 10)
!1910 = !DILocation(line: 0, scope: !1029, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 706, column: 10, scope: !1909)
!1912 = !DILocation(line: 189, column: 6, scope: !1038, inlinedAt: !1911)
!1913 = !DILocation(line: 189, column: 6, scope: !1029, inlinedAt: !1911)
!1914 = !DILocation(line: 105, column: 31, scope: !603, inlinedAt: !1908)
!1915 = !DILocation(line: 105, column: 40, scope: !603, inlinedAt: !1908)
!1916 = !DILocation(line: 106, column: 16, scope: !603, inlinedAt: !1908)
!1917 = !DILocation(line: 106, column: 7, scope: !603, inlinedAt: !1908)
!1918 = !DILocation(line: 106, column: 4, scope: !603, inlinedAt: !1908)
!1919 = !DILocation(line: 105, column: 9, scope: !603, inlinedAt: !1908)
!1920 = !DILocation(line: 192, column: 21, scope: !1029, inlinedAt: !1911)
!1921 = !DILocation(line: 192, column: 2, scope: !1029, inlinedAt: !1911)
!1922 = !DILocation(line: 192, column: 25, scope: !1029, inlinedAt: !1911)
!1923 = !DILocation(line: 194, column: 6, scope: !1029, inlinedAt: !1911)
!1924 = !DILocation(line: 708, column: 23, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 707, column: 24)
!1926 = !DILocation(line: 709, column: 7, scope: !1925)
!1927 = !DILocation(line: 717, column: 5, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 717, column: 5)
!1929 = !DILocation(line: 720, column: 4, scope: !1888)
!1930 = !DILocation(line: 721, column: 5, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !300, file: !3, line: 721, column: 5)
!1932 = !DILocation(line: 728, column: 5, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !3, line: 728, column: 5)
!1934 = distinct !DILexicalBlock(scope: !300, file: !3, line: 728, column: 5)
!1935 = !DILocation(line: 728, column: 5, scope: !1934)
!1936 = !DILocation(line: 728, column: 5, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !3, line: 728, column: 5)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !3, line: 728, column: 5)
!1939 = !DILocation(line: 728, column: 5, scope: !1938)
!1940 = !DILocation(line: 728, column: 5, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1937, file: !3, line: 728, column: 5)
!1942 = !DILocation(line: 0, scope: !300)
!1943 = !DILocation(line: 728, column: 5, scope: !300)
!1944 = !DILocation(line: 728, column: 5, scope: !299)
!1945 = !DILocation(line: 729, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !298, file: !3, line: 729, column: 6)
!1947 = !DILocation(line: 0, scope: !298)
!1948 = !DILocation(line: 735, column: 5, scope: !298)
!1949 = !DILocation(line: 736, column: 6, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !307, file: !3, line: 736, column: 6)
!1951 = !DILocation(line: 738, column: 6, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 738, column: 6)
!1953 = distinct !DILexicalBlock(scope: !307, file: !3, line: 738, column: 6)
!1954 = !DILocation(line: 738, column: 6, scope: !1953)
!1955 = !DILocation(line: 738, column: 6, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !3, line: 738, column: 6)
!1957 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 738, column: 6)
!1958 = !DILocation(line: 738, column: 6, scope: !1957)
!1959 = !DILocation(line: 738, column: 6, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 738, column: 6)
!1961 = !DILocation(line: 0, scope: !307)
!1962 = !DILocation(line: 738, column: 6, scope: !307)
!1963 = !DILocation(line: 738, column: 6, scope: !306)
!1964 = !DILocation(line: 740, column: 7, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !305, file: !3, line: 740, column: 7)
!1966 = !DILocation(line: 0, scope: !305)
!1967 = !DILocation(line: 748, column: 6, scope: !305)
!1968 = !DILocation(line: 749, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !309, file: !3, line: 749, column: 7)
!1970 = !DILocation(line: 0, scope: !309)
!1971 = !DILocation(line: 0, scope: !301)
!1972 = !DILocation(line: 349, column: 13, scope: !295)
!1973 = !DILocation(line: 761, column: 4, scope: !302)
!1974 = !DILocation(line: 764, column: 4, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !302, file: !3, line: 764, column: 4)
!1976 = !DILocation(line: 764, column: 4, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 764, column: 4)
!1978 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 764, column: 4)
!1979 = !DILocation(line: 764, column: 4, scope: !1978)
!1980 = !DILocation(line: 764, column: 4, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !3, line: 764, column: 4)
!1982 = distinct !DILexicalBlock(scope: !1977, file: !3, line: 764, column: 4)
!1983 = !DILocation(line: 764, column: 4, scope: !1982)
!1984 = !DILocation(line: 764, column: 4, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 764, column: 4)
!1986 = !{!514, !516, i64 27240}
!1987 = !DILocation(line: 764, column: 4, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 764, column: 4)
!1989 = !DILocation(line: 764, column: 4, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 764, column: 4)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 764, column: 4)
!1992 = !DILocation(line: 764, column: 4, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !3, line: 764, column: 4)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 764, column: 4)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 764, column: 4)
!1996 = !DILocation(line: 764, column: 4, scope: !1994)
!1997 = !DILocation(line: 764, column: 4, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !3, line: 764, column: 4)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 764, column: 4)
!2000 = !DILocation(line: 764, column: 4, scope: !1999)
!2001 = !DILocation(line: 764, column: 4, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 764, column: 4)
!2003 = !DILocation(line: 0, scope: !1975)
!2004 = !DILocation(line: 0, scope: !1991)
!2005 = !DILocation(line: 764, column: 4, scope: !1995)
!2006 = !DILocation(line: 764, column: 4, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1995, file: !3, line: 764, column: 4)
!2008 = !DILocation(line: 764, column: 4, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 764, column: 4)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 764, column: 4)
!2011 = !DILocation(line: 764, column: 4, scope: !2010)
!2012 = !DILocation(line: 764, column: 4, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 764, column: 4)
!2014 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 764, column: 4)
!2015 = !DILocation(line: 764, column: 4, scope: !2014)
!2016 = !DILocation(line: 764, column: 4, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !3, line: 764, column: 4)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 764, column: 4)
!2019 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 764, column: 4)
!2020 = !DILocation(line: 764, column: 4, scope: !2018)
!2021 = !DILocation(line: 764, column: 4, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !3, line: 764, column: 4)
!2023 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 764, column: 4)
!2024 = !DILocation(line: 764, column: 4, scope: !2023)
!2025 = !DILocation(line: 764, column: 4, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 764, column: 4)
!2027 = !DILocation(line: 764, column: 4, scope: !2019)
!2028 = !DILocation(line: 764, column: 4, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2019, file: !3, line: 764, column: 4)
!2030 = !DILocation(line: 764, column: 4, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !3, line: 764, column: 4)
!2032 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 764, column: 4)
!2033 = !DILocation(line: 764, column: 4, scope: !2032)
!2034 = !DILocation(line: 764, column: 4, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 764, column: 4)
!2036 = distinct !DILexicalBlock(scope: !2029, file: !3, line: 764, column: 4)
!2037 = !DILocation(line: 764, column: 4, scope: !2036)
!2038 = !DILocation(line: 764, column: 4, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 764, column: 4)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 764, column: 4)
!2041 = distinct !DILexicalBlock(scope: !1991, file: !3, line: 764, column: 4)
!2042 = !DILocation(line: 764, column: 4, scope: !2040)
!2043 = !DILocation(line: 764, column: 4, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !3, line: 764, column: 4)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 764, column: 4)
!2046 = !DILocation(line: 764, column: 4, scope: !2045)
!2047 = !DILocation(line: 764, column: 4, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !3, line: 764, column: 4)
!2049 = !DILocation(line: 764, column: 4, scope: !2041)
!2050 = !DILocation(line: 764, column: 4, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !3, line: 764, column: 4)
!2052 = !DILocation(line: 764, column: 4, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 764, column: 4)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 764, column: 4)
!2055 = !DILocation(line: 764, column: 4, scope: !2054)
!2056 = !DILocation(line: 764, column: 4, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !3, line: 764, column: 4)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !3, line: 764, column: 4)
!2059 = !DILocation(line: 764, column: 4, scope: !2058)
!2060 = !DILocation(line: 0, scope: !2051)
!2061 = !DILocation(line: 0, scope: !2041)
!2062 = !DILocation(line: 764, column: 4, scope: !1991)
!2063 = !DILocation(line: 764, column: 4, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 764, column: 4)
!2065 = distinct !DILexicalBlock(scope: !1988, file: !3, line: 764, column: 4)
!2066 = !DILocation(line: 764, column: 4, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 764, column: 4)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 764, column: 4)
!2069 = !DILocation(line: 764, column: 4, scope: !2068)
!2070 = !DILocation(line: 764, column: 4, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !3, line: 764, column: 4)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !3, line: 764, column: 4)
!2073 = !DILocation(line: 764, column: 4, scope: !2072)
!2074 = !DILocation(line: 764, column: 4, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 764, column: 4)
!2076 = !DILocation(line: 0, scope: !2065)
!2077 = !DILocation(line: 764, column: 4, scope: !2065)
!2078 = !{!514, !516, i64 27242}
!2079 = !DILocation(line: 764, column: 4, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 764, column: 4)
!2081 = !DILocation(line: 764, column: 4, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 764, column: 4)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 764, column: 4)
!2084 = !DILocation(line: 764, column: 4, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !3, line: 764, column: 4)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 764, column: 4)
!2087 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 764, column: 4)
!2088 = !DILocation(line: 764, column: 4, scope: !2086)
!2089 = !DILocation(line: 764, column: 4, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !3, line: 764, column: 4)
!2091 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 764, column: 4)
!2092 = !DILocation(line: 764, column: 4, scope: !2091)
!2093 = !DILocation(line: 764, column: 4, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2090, file: !3, line: 764, column: 4)
!2095 = !DILocation(line: 0, scope: !2083)
!2096 = !DILocation(line: 764, column: 4, scope: !2087)
!2097 = !DILocation(line: 764, column: 4, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2087, file: !3, line: 764, column: 4)
!2099 = !DILocation(line: 764, column: 4, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 764, column: 4)
!2101 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 764, column: 4)
!2102 = !DILocation(line: 764, column: 4, scope: !2101)
!2103 = !DILocation(line: 764, column: 4, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !3, line: 764, column: 4)
!2105 = distinct !DILexicalBlock(scope: !2098, file: !3, line: 764, column: 4)
!2106 = !DILocation(line: 764, column: 4, scope: !2105)
!2107 = !DILocation(line: 764, column: 4, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 764, column: 4)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 764, column: 4)
!2110 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 764, column: 4)
!2111 = !DILocation(line: 764, column: 4, scope: !2109)
!2112 = !DILocation(line: 764, column: 4, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 764, column: 4)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 764, column: 4)
!2115 = !DILocation(line: 764, column: 4, scope: !2114)
!2116 = !DILocation(line: 764, column: 4, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 764, column: 4)
!2118 = !DILocation(line: 764, column: 4, scope: !2110)
!2119 = !DILocation(line: 764, column: 4, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2110, file: !3, line: 764, column: 4)
!2121 = !DILocation(line: 764, column: 4, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 764, column: 4)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 764, column: 4)
!2124 = !DILocation(line: 764, column: 4, scope: !2123)
!2125 = !DILocation(line: 764, column: 4, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 764, column: 4)
!2127 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 764, column: 4)
!2128 = !DILocation(line: 764, column: 4, scope: !2127)
!2129 = !DILocation(line: 764, column: 4, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !3, line: 764, column: 4)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 764, column: 4)
!2132 = distinct !DILexicalBlock(scope: !2083, file: !3, line: 764, column: 4)
!2133 = !DILocation(line: 764, column: 4, scope: !2131)
!2134 = !DILocation(line: 764, column: 4, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 764, column: 4)
!2136 = distinct !DILexicalBlock(scope: !2130, file: !3, line: 764, column: 4)
!2137 = !DILocation(line: 764, column: 4, scope: !2136)
!2138 = !DILocation(line: 764, column: 4, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 764, column: 4)
!2140 = !DILocation(line: 764, column: 4, scope: !2132)
!2141 = !DILocation(line: 764, column: 4, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2132, file: !3, line: 764, column: 4)
!2143 = !DILocation(line: 764, column: 4, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 764, column: 4)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 764, column: 4)
!2146 = !DILocation(line: 764, column: 4, scope: !2145)
!2147 = !DILocation(line: 764, column: 4, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 764, column: 4)
!2149 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 764, column: 4)
!2150 = !DILocation(line: 764, column: 4, scope: !2149)
!2151 = !DILocation(line: 0, scope: !2142)
!2152 = !DILocation(line: 0, scope: !2132)
!2153 = !DILocation(line: 764, column: 4, scope: !2083)
!2154 = !DILocation(line: 764, column: 4, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2156 = distinct !DILexicalBlock(scope: !2080, file: !3, line: 764, column: 4)
!2157 = !DILocation(line: 764, column: 4, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 764, column: 4)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 764, column: 4)
!2160 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2161 = !DILocation(line: 764, column: 4, scope: !2159)
!2162 = !DILocation(line: 764, column: 4, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 764, column: 4)
!2164 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 764, column: 4)
!2165 = !DILocation(line: 764, column: 4, scope: !2164)
!2166 = !DILocation(line: 764, column: 4, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 764, column: 4)
!2168 = !DILocation(line: 0, scope: !2156)
!2169 = !DILocation(line: 764, column: 4, scope: !2160)
!2170 = !DILocation(line: 764, column: 4, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 764, column: 4)
!2172 = !DILocation(line: 764, column: 4, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !3, line: 764, column: 4)
!2174 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 764, column: 4)
!2175 = !DILocation(line: 764, column: 4, scope: !2174)
!2176 = !DILocation(line: 764, column: 4, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !3, line: 764, column: 4)
!2178 = distinct !DILexicalBlock(scope: !2171, file: !3, line: 764, column: 4)
!2179 = !DILocation(line: 764, column: 4, scope: !2178)
!2180 = !DILocation(line: 764, column: 4, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 764, column: 4)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 764, column: 4)
!2183 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2184 = !DILocation(line: 764, column: 4, scope: !2182)
!2185 = !DILocation(line: 764, column: 4, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !3, line: 764, column: 4)
!2187 = distinct !DILexicalBlock(scope: !2181, file: !3, line: 764, column: 4)
!2188 = !DILocation(line: 764, column: 4, scope: !2187)
!2189 = !DILocation(line: 764, column: 4, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2186, file: !3, line: 764, column: 4)
!2191 = !DILocation(line: 764, column: 4, scope: !2183)
!2192 = !DILocation(line: 764, column: 4, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 764, column: 4)
!2194 = !DILocation(line: 764, column: 4, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2196, file: !3, line: 764, column: 4)
!2196 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 764, column: 4)
!2197 = !DILocation(line: 764, column: 4, scope: !2196)
!2198 = !DILocation(line: 764, column: 4, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 764, column: 4)
!2200 = distinct !DILexicalBlock(scope: !2193, file: !3, line: 764, column: 4)
!2201 = !DILocation(line: 764, column: 4, scope: !2200)
!2202 = !DILocation(line: 764, column: 4, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 764, column: 4)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 764, column: 4)
!2205 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2206 = !DILocation(line: 764, column: 4, scope: !2204)
!2207 = !DILocation(line: 764, column: 4, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 764, column: 4)
!2209 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 764, column: 4)
!2210 = !DILocation(line: 764, column: 4, scope: !2209)
!2211 = !DILocation(line: 764, column: 4, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !3, line: 764, column: 4)
!2213 = !DILocation(line: 764, column: 4, scope: !2205)
!2214 = !DILocation(line: 764, column: 4, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 764, column: 4)
!2216 = !DILocation(line: 764, column: 4, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !3, line: 764, column: 4)
!2218 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 764, column: 4)
!2219 = !DILocation(line: 764, column: 4, scope: !2218)
!2220 = !DILocation(line: 764, column: 4, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 764, column: 4)
!2222 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 764, column: 4)
!2223 = !DILocation(line: 764, column: 4, scope: !2222)
!2224 = !DILocation(line: 764, column: 4, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 764, column: 4)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 764, column: 4)
!2227 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2228 = !DILocation(line: 764, column: 4, scope: !2226)
!2229 = !DILocation(line: 764, column: 4, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 764, column: 4)
!2231 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 764, column: 4)
!2232 = !DILocation(line: 764, column: 4, scope: !2231)
!2233 = !DILocation(line: 764, column: 4, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2230, file: !3, line: 764, column: 4)
!2235 = !DILocation(line: 764, column: 4, scope: !2227)
!2236 = !DILocation(line: 764, column: 4, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2227, file: !3, line: 764, column: 4)
!2238 = !DILocation(line: 764, column: 4, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !3, line: 764, column: 4)
!2240 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 764, column: 4)
!2241 = !DILocation(line: 764, column: 4, scope: !2240)
!2242 = !DILocation(line: 764, column: 4, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 764, column: 4)
!2244 = distinct !DILexicalBlock(scope: !2237, file: !3, line: 764, column: 4)
!2245 = !DILocation(line: 764, column: 4, scope: !2244)
!2246 = !DILocation(line: 764, column: 4, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 764, column: 4)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 764, column: 4)
!2249 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2250 = !DILocation(line: 764, column: 4, scope: !2248)
!2251 = !DILocation(line: 764, column: 4, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 764, column: 4)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 764, column: 4)
!2254 = !DILocation(line: 764, column: 4, scope: !2253)
!2255 = !DILocation(line: 764, column: 4, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 764, column: 4)
!2257 = !DILocation(line: 764, column: 4, scope: !2249)
!2258 = !DILocation(line: 764, column: 4, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2249, file: !3, line: 764, column: 4)
!2260 = !DILocation(line: 764, column: 4, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 764, column: 4)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 764, column: 4)
!2263 = !DILocation(line: 764, column: 4, scope: !2262)
!2264 = !DILocation(line: 764, column: 4, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 764, column: 4)
!2266 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 764, column: 4)
!2267 = !DILocation(line: 764, column: 4, scope: !2266)
!2268 = !DILocation(line: 764, column: 4, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 764, column: 4)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 764, column: 4)
!2271 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2272 = !DILocation(line: 764, column: 4, scope: !2270)
!2273 = !DILocation(line: 764, column: 4, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 764, column: 4)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 764, column: 4)
!2276 = !DILocation(line: 764, column: 4, scope: !2275)
!2277 = !DILocation(line: 764, column: 4, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2274, file: !3, line: 764, column: 4)
!2279 = !DILocation(line: 764, column: 4, scope: !2271)
!2280 = !DILocation(line: 764, column: 4, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2271, file: !3, line: 764, column: 4)
!2282 = !DILocation(line: 764, column: 4, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !3, line: 764, column: 4)
!2284 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 764, column: 4)
!2285 = !DILocation(line: 764, column: 4, scope: !2284)
!2286 = !DILocation(line: 764, column: 4, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 764, column: 4)
!2288 = distinct !DILexicalBlock(scope: !2281, file: !3, line: 764, column: 4)
!2289 = !DILocation(line: 764, column: 4, scope: !2288)
!2290 = !DILocation(line: 764, column: 4, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !3, line: 764, column: 4)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 764, column: 4)
!2293 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2294 = !DILocation(line: 764, column: 4, scope: !2292)
!2295 = !DILocation(line: 764, column: 4, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !3, line: 764, column: 4)
!2297 = distinct !DILexicalBlock(scope: !2291, file: !3, line: 764, column: 4)
!2298 = !DILocation(line: 764, column: 4, scope: !2297)
!2299 = !DILocation(line: 764, column: 4, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !3, line: 764, column: 4)
!2301 = !DILocation(line: 764, column: 4, scope: !2293)
!2302 = !DILocation(line: 764, column: 4, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 764, column: 4)
!2304 = !DILocation(line: 764, column: 4, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 764, column: 4)
!2306 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 764, column: 4)
!2307 = !DILocation(line: 764, column: 4, scope: !2306)
!2308 = !DILocation(line: 764, column: 4, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !3, line: 764, column: 4)
!2310 = distinct !DILexicalBlock(scope: !2303, file: !3, line: 764, column: 4)
!2311 = !DILocation(line: 764, column: 4, scope: !2310)
!2312 = !DILocation(line: 764, column: 4, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 764, column: 4)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 764, column: 4)
!2315 = distinct !DILexicalBlock(scope: !2156, file: !3, line: 764, column: 4)
!2316 = !DILocation(line: 764, column: 4, scope: !2314)
!2317 = !DILocation(line: 764, column: 4, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 764, column: 4)
!2319 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 764, column: 4)
!2320 = !DILocation(line: 764, column: 4, scope: !2319)
!2321 = !DILocation(line: 764, column: 4, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2318, file: !3, line: 764, column: 4)
!2323 = !DILocation(line: 764, column: 4, scope: !2315)
!2324 = !DILocation(line: 764, column: 4, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 764, column: 4)
!2326 = !DILocation(line: 764, column: 4, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 764, column: 4)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 764, column: 4)
!2329 = !DILocation(line: 764, column: 4, scope: !2328)
!2330 = !DILocation(line: 764, column: 4, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 764, column: 4)
!2332 = distinct !DILexicalBlock(scope: !2325, file: !3, line: 764, column: 4)
!2333 = !DILocation(line: 764, column: 4, scope: !2332)
!2334 = !DILocation(line: 0, scope: !2325)
!2335 = !DILocation(line: 0, scope: !2315)
!2336 = !DILocation(line: 764, column: 4, scope: !2156)
!2337 = !DILocation(line: 0, scope: !552, inlinedAt: !567)
!2338 = !DILocation(line: 131, column: 40, scope: !552, inlinedAt: !567)
!2339 = !DILocation(line: 132, column: 18, scope: !552, inlinedAt: !567)
!2340 = !DILocation(line: 138, column: 15, scope: !565, inlinedAt: !567)
!2341 = !DILocation(line: 138, column: 6, scope: !552, inlinedAt: !567)
!2342 = !DILocation(line: 141, column: 3, scope: !571, inlinedAt: !567)
!2343 = !DILocation(line: 0, scope: !603, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 142, column: 27, scope: !570, inlinedAt: !567)
!2345 = !DILocation(line: 106, column: 16, scope: !603, inlinedAt: !2344)
!2346 = !DILocation(line: 106, column: 7, scope: !603, inlinedAt: !2344)
!2347 = !DILocation(line: 105, column: 40, scope: !603, inlinedAt: !2344)
!2348 = !DILocation(line: 106, column: 4, scope: !603, inlinedAt: !2344)
!2349 = !DILocation(line: 105, column: 9, scope: !603, inlinedAt: !2344)
!2350 = !DILocation(line: 142, column: 4, scope: !570, inlinedAt: !567)
!2351 = !DILocation(line: 142, column: 25, scope: !570, inlinedAt: !567)
!2352 = !DILocation(line: 144, column: 12, scope: !571, inlinedAt: !567)
!2353 = !DILocation(line: 144, column: 19, scope: !571, inlinedAt: !567)
!2354 = !DILocation(line: 144, column: 3, scope: !570, inlinedAt: !567)
!2355 = distinct !{!2355, !2342, !2356, !500, !501}
!2356 = !DILocation(line: 144, column: 22, scope: !571, inlinedAt: !567)
!2357 = !DILocation(line: 146, column: 22, scope: !564, inlinedAt: !567)
!2358 = !DILocation(line: 146, column: 13, scope: !565, inlinedAt: !567)
!2359 = !DILocation(line: 148, column: 20, scope: !2360, inlinedAt: !567)
!2360 = distinct !DILexicalBlock(scope: !564, file: !29, line: 146, column: 35)
!2361 = !DILocation(line: 149, column: 27, scope: !2360, inlinedAt: !567)
!2362 = !DILocation(line: 149, column: 38, scope: !2360, inlinedAt: !567)
!2363 = !DILocation(line: 148, column: 3, scope: !2360, inlinedAt: !567)
!2364 = !DILocation(line: 151, column: 13, scope: !2360, inlinedAt: !567)
!2365 = !DILocation(line: 153, column: 2, scope: !2360, inlinedAt: !567)
!2366 = !DILocation(line: 159, column: 28, scope: !563, inlinedAt: !567)
!2367 = !DILocation(line: 159, column: 32, scope: !563, inlinedAt: !567)
!2368 = !DILocation(line: 160, column: 37, scope: !563, inlinedAt: !567)
!2369 = !DILocation(line: 0, scope: !563, inlinedAt: !567)
!2370 = !DILocation(line: 160, column: 24, scope: !563, inlinedAt: !567)
!2371 = !DILocation(line: 162, column: 17, scope: !2372, inlinedAt: !567)
!2372 = distinct !DILexicalBlock(scope: !563, file: !29, line: 162, column: 7)
!2373 = !DILocation(line: 0, scope: !2372, inlinedAt: !567)
!2374 = !DILocation(line: 162, column: 7, scope: !563, inlinedAt: !567)
!2375 = !DILocation(line: 164, column: 6, scope: !2376, inlinedAt: !567)
!2376 = distinct !DILexicalBlock(scope: !2372, file: !29, line: 162, column: 25)
!2377 = !DILocation(line: 163, column: 4, scope: !2376, inlinedAt: !567)
!2378 = !DILocation(line: 165, column: 14, scope: !2376, inlinedAt: !567)
!2379 = !DILocation(line: 166, column: 21, scope: !2376, inlinedAt: !567)
!2380 = !DILocation(line: 167, column: 21, scope: !2376, inlinedAt: !567)
!2381 = !DILocation(line: 167, column: 45, scope: !2376, inlinedAt: !567)
!2382 = !DILocation(line: 167, column: 4, scope: !2376, inlinedAt: !567)
!2383 = !DILocation(line: 169, column: 3, scope: !2376, inlinedAt: !567)
!2384 = !DILocation(line: 170, column: 4, scope: !2385, inlinedAt: !567)
!2385 = distinct !DILexicalBlock(scope: !2372, file: !29, line: 169, column: 10)
!2386 = !DILocation(line: 0, scope: !565, inlinedAt: !567)
!2387 = !DILocation(line: 177, column: 6, scope: !552, inlinedAt: !567)
!2388 = !DILocation(line: 180, column: 9, scope: !552, inlinedAt: !567)
!2389 = !DILocation(line: 779, column: 7, scope: !295)
!2390 = distinct !{!2390, !2391, !2392, !501}
!2391 = !DILocation(line: 345, column: 2, scope: !2)
!2392 = !DILocation(line: 783, column: 2, scope: !2)
!2393 = !DILocation(line: 780, column: 20, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !568, file: !3, line: 779, column: 49)
!2395 = !DILocation(line: 781, column: 4, scope: !2394)
!2396 = !DILocation(line: 785, column: 2, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 785, column: 2)
!2398 = distinct !DILexicalBlock(scope: !2, file: !3, line: 785, column: 2)
!2399 = !DILocation(line: 785, column: 2, scope: !2398)
!2400 = !DILocation(line: 785, column: 2, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 785, column: 2)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 785, column: 2)
!2403 = !DILocation(line: 785, column: 2, scope: !2402)
!2404 = !DILocation(line: 785, column: 2, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 785, column: 2)
!2406 = !DILocation(line: 786, column: 18, scope: !2)
!2407 = !DILocation(line: 786, column: 2, scope: !2)
!2408 = !DILocation(line: 788, column: 1, scope: !2)
!2409 = !DILocation(line: 792, column: 11, scope: !2)
!2410 = !DILocation(line: 792, column: 15, scope: !2)
!2411 = !{!2412, !439, i64 8}
!2412 = !{!"", !410, i64 0, !439, i64 8, !439, i64 16, !439, i64 24, !439, i64 32, !506, i64 40}
!2413 = !DILocation(line: 793, column: 11, scope: !2)
!2414 = !DILocation(line: 793, column: 16, scope: !2)
!2415 = !{!2412, !439, i64 16}
!2416 = !DILocation(line: 795, column: 2, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2, file: !3, line: 795, column: 2)
!2418 = !{i64 0, i64 4, !483}
!2419 = !DILocation(line: 797, column: 15, scope: !2)
!2420 = !DILocation(line: 798, column: 14, scope: !2)
!2421 = !DILocation(line: 799, column: 14, scope: !2)
!2422 = !DILocation(line: 800, column: 14, scope: !2)
!2423 = !DILocation(line: 801, column: 14, scope: !2)
!2424 = !DILocation(line: 803, column: 15, scope: !2)
!2425 = !DILocation(line: 804, column: 16, scope: !2)
!2426 = !DILocation(line: 805, column: 15, scope: !2)
!2427 = !DILocation(line: 806, column: 16, scope: !2)
!2428 = !DILocation(line: 807, column: 13, scope: !2)
!2429 = !DILocation(line: 811, column: 13, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2, file: !3, line: 811, column: 6)
!2431 = !DILocation(line: 811, column: 31, scope: !2430)
!2432 = !DILocation(line: 811, column: 6, scope: !2)
!2433 = !DILocation(line: 812, column: 40, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2430, file: !3, line: 811, column: 52)
!2435 = !DILocation(line: 812, column: 28, scope: !2434)
!2436 = !DILocation(line: 817, column: 32, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2434, file: !3, line: 817, column: 7)
!2438 = !DILocation(line: 817, column: 37, scope: !2437)
!2439 = !DILocation(line: 818, column: 15, scope: !2437)
!2440 = !DILocation(line: 817, column: 7, scope: !2434)
!2441 = !DILocation(line: 825, column: 6, scope: !2)
!2442 = !DILocation(line: 826, column: 8, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 826, column: 7)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 825, column: 30)
!2445 = distinct !DILexicalBlock(scope: !2, file: !3, line: 825, column: 6)
!2446 = !DILocation(line: 826, column: 7, scope: !2444)
!2447 = !DILocation(line: 831, column: 3, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !3, line: 831, column: 3)
!2449 = !{!514, !434, i64 28268}
!2450 = !{!514, !434, i64 28272}
!2451 = !{!514, !434, i64 28276}
!2452 = !DILocation(line: 832, column: 2, scope: !2444)
!2453 = !DILocation(line: 835, column: 1, scope: !2)
!2454 = distinct !DISubprogram(name: "lzma_decoder_reset", scope: !3, file: !3, line: 856, type: !335, scopeLine: 857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2455)
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2462, !2466, !2468, !2471, !2473, !2475, !2476, !2478, !2482, !2484, !2486, !2488, !2490}
!2456 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2454, file: !3, line: 856, type: !23)
!2457 = !DILocalVariable(name: "opt", arg: 2, scope: !2454, file: !3, line: 856, type: !337)
!2458 = !DILocalVariable(name: "coder", scope: !2454, file: !3, line: 858, type: !265)
!2459 = !DILocalVariable(name: "options", scope: !2454, file: !3, line: 859, type: !373)
!2460 = !DILocalVariable(name: "i", scope: !2461, file: !3, line: 885, type: !157)
!2461 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 885, column: 2)
!2462 = !DILocalVariable(name: "j", scope: !2463, file: !3, line: 886, type: !157)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 886, column: 3)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 885, column: 40)
!2465 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 885, column: 2)
!2466 = !DILocalVariable(name: "i", scope: !2467, file: !3, line: 897, type: !157)
!2467 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 897, column: 2)
!2468 = !DILocalVariable(name: "bt_i", scope: !2469, file: !3, line: 898, type: !157)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !3, line: 898, column: 3)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 897, column: 2)
!2471 = !DILocalVariable(name: "i", scope: !2472, file: !3, line: 900, type: !157)
!2472 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 900, column: 2)
!2473 = !DILocalVariable(name: "bt_i", scope: !2474, file: !3, line: 903, type: !157)
!2474 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 903, column: 2)
!2475 = !DILocalVariable(name: "num_pos_states", scope: !2454, file: !3, line: 906, type: !278)
!2476 = !DILocalVariable(name: "pos_state", scope: !2477, file: !3, line: 912, type: !157)
!2477 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 912, column: 2)
!2478 = !DILocalVariable(name: "bt_i", scope: !2479, file: !3, line: 913, type: !157)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 913, column: 3)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 912, column: 72)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 912, column: 2)
!2482 = !DILocalVariable(name: "bt_i", scope: !2483, file: !3, line: 915, type: !157)
!2483 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 915, column: 3)
!2484 = !DILocalVariable(name: "bt_i", scope: !2485, file: !3, line: 918, type: !157)
!2485 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 918, column: 3)
!2486 = !DILocalVariable(name: "bt_i", scope: !2487, file: !3, line: 920, type: !157)
!2487 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 920, column: 3)
!2488 = !DILocalVariable(name: "bt_i", scope: !2489, file: !3, line: 924, type: !157)
!2489 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 924, column: 2)
!2490 = !DILocalVariable(name: "bt_i", scope: !2491, file: !3, line: 925, type: !157)
!2491 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 925, column: 2)
!2492 = !DILocation(line: 0, scope: !2454)
!2493 = !DILocation(line: 865, column: 36, scope: !2454)
!2494 = !{!433, !434, i64 28}
!2495 = !DILocation(line: 865, column: 40, scope: !2454)
!2496 = !DILocation(line: 865, column: 9, scope: !2454)
!2497 = !DILocation(line: 868, column: 40, scope: !2454)
!2498 = !{!433, !434, i64 20}
!2499 = !DILocation(line: 868, column: 53, scope: !2454)
!2500 = !{!433, !434, i64 24}
!2501 = !DILocalVariable(name: "probs", arg: 1, scope: !2502, file: !85, line: 129, type: !2505)
!2502 = distinct !DISubprogram(name: "literal_init", scope: !85, file: !85, line: 129, type: !2503, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2508)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{null, !2505, !157, !157}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 12288, elements: !2507)
!2507 = !{!111}
!2508 = !{!2501, !2509, !2510, !2511, !2512, !2514}
!2509 = !DILocalVariable(name: "lc", arg: 2, scope: !2502, file: !85, line: 130, type: !157)
!2510 = !DILocalVariable(name: "lp", arg: 3, scope: !2502, file: !85, line: 130, type: !157)
!2511 = !DILocalVariable(name: "coders", scope: !2502, file: !85, line: 134, type: !278)
!2512 = !DILocalVariable(name: "i", scope: !2513, file: !85, line: 136, type: !157)
!2513 = distinct !DILexicalBlock(scope: !2502, file: !85, line: 136, column: 2)
!2514 = !DILocalVariable(name: "j", scope: !2515, file: !85, line: 137, type: !157)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !85, line: 137, column: 3)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !85, line: 136, column: 2)
!2517 = !DILocation(line: 0, scope: !2502, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 868, column: 2, scope: !2454)
!2519 = !DILocation(line: 134, column: 36, scope: !2502, inlinedAt: !2518)
!2520 = !DILocation(line: 0, scope: !2513, inlinedAt: !2518)
!2521 = !DILocation(line: 136, column: 2, scope: !2513, inlinedAt: !2518)
!2522 = !DILocation(line: 0, scope: !2515, inlinedAt: !2518)
!2523 = !DILocation(line: 137, column: 3, scope: !2515, inlinedAt: !2518)
!2524 = !DILocation(line: 136, column: 35, scope: !2516, inlinedAt: !2518)
!2525 = !DILocation(line: 136, column: 25, scope: !2516, inlinedAt: !2518)
!2526 = distinct !{!2526, !2521, !2527, !500, !501}
!2527 = !DILocation(line: 138, column: 4, scope: !2513, inlinedAt: !2518)
!2528 = !DILocation(line: 138, column: 4, scope: !2529, inlinedAt: !2518)
!2529 = distinct !DILexicalBlock(scope: !2515, file: !85, line: 137, column: 3)
!2530 = !DILocation(line: 137, column: 48, scope: !2529, inlinedAt: !2518)
!2531 = !DILocation(line: 137, column: 26, scope: !2529, inlinedAt: !2518)
!2532 = distinct !{!2532, !2523, !2533, !500, !501}
!2533 = !DILocation(line: 138, column: 4, scope: !2515, inlinedAt: !2518)
!2534 = !DILocation(line: 870, column: 9, scope: !2454)
!2535 = !DILocation(line: 870, column: 30, scope: !2454)
!2536 = !DILocation(line: 871, column: 48, scope: !2454)
!2537 = !DILocation(line: 871, column: 9, scope: !2454)
!2538 = !DILocation(line: 871, column: 26, scope: !2454)
!2539 = !DILocation(line: 874, column: 9, scope: !2454)
!2540 = !DILocation(line: 875, column: 14, scope: !2454)
!2541 = !DILocation(line: 879, column: 18, scope: !2454)
!2542 = !DILocation(line: 882, column: 2, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2454, file: !3, line: 882, column: 2)
!2544 = !DILocation(line: 0, scope: !2461)
!2545 = !DILocation(line: 885, column: 2, scope: !2461)
!2546 = !DILocation(line: 0, scope: !2463)
!2547 = !DILocation(line: 886, column: 3, scope: !2463)
!2548 = !DILocation(line: 891, column: 3, scope: !2464)
!2549 = !DILocation(line: 892, column: 3, scope: !2464)
!2550 = !DILocation(line: 893, column: 3, scope: !2464)
!2551 = !DILocation(line: 894, column: 3, scope: !2464)
!2552 = !DILocation(line: 885, column: 35, scope: !2465)
!2553 = !DILocation(line: 885, column: 25, scope: !2465)
!2554 = distinct !{!2554, !2545, !2555, !500, !501}
!2555 = !DILocation(line: 895, column: 2, scope: !2461)
!2556 = !DILocation(line: 887, column: 4, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !3, line: 886, column: 51)
!2558 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 886, column: 3)
!2559 = !DILocation(line: 888, column: 4, scope: !2557)
!2560 = !DILocation(line: 886, column: 46, scope: !2558)
!2561 = !DILocation(line: 886, column: 26, scope: !2558)
!2562 = distinct !{!2562, !2547, !2563, !500, !501}
!2563 = !DILocation(line: 889, column: 3, scope: !2463)
!2564 = !DILocation(line: 0, scope: !2467)
!2565 = !DILocation(line: 0, scope: !2469)
!2566 = !DILocation(line: 898, column: 3, scope: !2469)
!2567 = !DILocation(line: 897, column: 46, scope: !2470)
!2568 = !DILocation(line: 897, column: 25, scope: !2470)
!2569 = !DILocation(line: 897, column: 2, scope: !2467)
!2570 = distinct !{!2570, !2569, !2571, !500, !501}
!2571 = !DILocation(line: 898, column: 3, scope: !2467)
!2572 = !DILocation(line: 898, column: 3, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2469, file: !3, line: 898, column: 3)
!2574 = distinct !{!2574, !2566, !2566, !500, !501}
!2575 = !DILocation(line: 0, scope: !2472)
!2576 = !DILocation(line: 901, column: 3, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 900, column: 2)
!2578 = !DILocation(line: 900, column: 65, scope: !2577)
!2579 = !DILocation(line: 900, column: 25, scope: !2577)
!2580 = !DILocation(line: 900, column: 2, scope: !2472)
!2581 = distinct !{!2581, !2580, !2582, !500, !501}
!2582 = !DILocation(line: 901, column: 3, scope: !2472)
!2583 = !DILocation(line: 907, column: 2, scope: !2454)
!2584 = !DILocation(line: 908, column: 2, scope: !2454)
!2585 = !DILocation(line: 909, column: 2, scope: !2454)
!2586 = !DILocation(line: 910, column: 2, scope: !2454)
!2587 = !DILocation(line: 0, scope: !2477)
!2588 = !DILocation(line: 912, column: 2, scope: !2477)
!2589 = !DILocation(line: 0, scope: !2474)
!2590 = !DILocation(line: 903, column: 2, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 903, column: 2)
!2592 = !DILocation(line: 903, column: 2, scope: !2474)
!2593 = distinct !{!2593, !2592, !2592, !500, !501}
!2594 = !DILocation(line: 0, scope: !2479)
!2595 = !DILocation(line: 913, column: 3, scope: !2479)
!2596 = !DILocation(line: 913, column: 3, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 913, column: 3)
!2598 = distinct !{!2598, !2595, !2595, !500, !501}
!2599 = !DILocation(line: 0, scope: !2483)
!2600 = !DILocation(line: 915, column: 3, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 915, column: 3)
!2602 = !DILocation(line: 915, column: 3, scope: !2483)
!2603 = distinct !{!2603, !2602, !2602, !500, !501}
!2604 = !DILocation(line: 0, scope: !2485)
!2605 = !DILocation(line: 918, column: 3, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 918, column: 3)
!2607 = !DILocation(line: 918, column: 3, scope: !2485)
!2608 = distinct !{!2608, !2607, !2607, !500, !501}
!2609 = !DILocation(line: 912, column: 59, scope: !2481)
!2610 = !DILocation(line: 912, column: 41, scope: !2481)
!2611 = distinct !{!2611, !2588, !2612, !500, !501}
!2612 = !DILocation(line: 922, column: 2, scope: !2477)
!2613 = !DILocation(line: 0, scope: !2487)
!2614 = !DILocation(line: 920, column: 3, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 920, column: 3)
!2616 = !DILocation(line: 920, column: 3, scope: !2487)
!2617 = distinct !{!2617, !2616, !2616, !500, !501}
!2618 = !DILocation(line: 0, scope: !2489)
!2619 = !DILocation(line: 924, column: 2, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2489, file: !3, line: 924, column: 2)
!2621 = !DILocation(line: 924, column: 2, scope: !2489)
!2622 = distinct !{!2622, !2621, !2621, !500, !501}
!2623 = !DILocation(line: 927, column: 9, scope: !2454)
!2624 = !DILocation(line: 927, column: 18, scope: !2454)
!2625 = !DILocation(line: 928, column: 9, scope: !2454)
!2626 = !DILocation(line: 929, column: 16, scope: !2454)
!2627 = !DILocation(line: 935, column: 1, scope: !2454)
!2628 = !DILocation(line: 0, scope: !2491)
!2629 = !DILocation(line: 925, column: 2, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 925, column: 2)
!2631 = !DILocation(line: 925, column: 2, scope: !2491)
!2632 = distinct !{!2632, !2631, !2631, !500, !501}
!2633 = distinct !DISubprogram(name: "lzma_decoder_uncompressed", scope: !3, file: !3, line: 840, type: !341, scopeLine: 841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2634)
!2634 = !{!2635, !2636, !2637}
!2635 = !DILocalVariable(name: "pcoder", arg: 1, scope: !2633, file: !3, line: 840, type: !23)
!2636 = !DILocalVariable(name: "uncompressed_size", arg: 2, scope: !2633, file: !3, line: 840, type: !171)
!2637 = !DILocalVariable(name: "coder", scope: !2633, file: !3, line: 842, type: !265)
!2638 = !DILocation(line: 0, scope: !2633)
!2639 = !DILocation(line: 843, column: 9, scope: !2633)
!2640 = !DILocation(line: 843, column: 27, scope: !2633)
!2641 = !DILocation(line: 844, column: 1, scope: !2633)
!2642 = distinct !DISubprogram(name: "lzma_lzma_decoder_init", scope: !3, file: !3, line: 984, type: !2643, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2697)
!2643 = !DISubroutineType(types: !2644)
!2644 = !{!6, !2645, !347, !2687}
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !25, line: 80, baseType: !2647)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !25, line: 124, size: 512, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2654, !2661, !2663, !2670, !2675}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !2647, file: !25, line: 126, baseType: !23, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2647, file: !25, line: 130, baseType: !171, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2647, file: !25, line: 136, baseType: !2652, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !2653, line: 90, baseType: !42)
!2653 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2647, file: !25, line: 139, baseType: !2655, size: 64, offset: 192)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !25, line: 94, baseType: !2656)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!6, !23, !347, !48, !51, !40, !2659, !51, !40, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !7, line: 322, baseType: !71)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2647, file: !25, line: 144, baseType: !2662, size: 64, offset: 256)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !25, line: 102, baseType: !344)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !2647, file: !25, line: 148, baseType: !2664, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !78, line: 55, baseType: !77)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !2647, file: !25, line: 152, baseType: !2671, size: 64, offset: 384)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!6, !23, !2674, !2674, !173}
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !2647, file: !25, line: 157, baseType: !2676, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!6, !23, !347, !2679, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2681)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !2682, line: 65, baseType: !2683)
!2682 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2682, line: 43, size: 128, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2683, file: !2682, line: 54, baseType: !171, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2683, file: !2682, line: 63, baseType: !255, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !25, line: 82, baseType: !2690)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !25, line: 109, size: 192, elements: !2691)
!2691 = !{!2692, !2693, !2696}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2690, file: !25, line: 112, baseType: !171, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2690, file: !25, line: 116, baseType: !2694, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !25, line: 86, baseType: !2695)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2690, file: !25, line: 119, baseType: !255, size: 64, offset: 128)
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "next", arg: 1, scope: !2642, file: !3, line: 984, type: !2645)
!2699 = !DILocalVariable(name: "allocator", arg: 2, scope: !2642, file: !3, line: 984, type: !347)
!2700 = !DILocalVariable(name: "filters", arg: 3, scope: !2642, file: !3, line: 985, type: !2687)
!2701 = !DILocation(line: 0, scope: !2642)
!2702 = !DILocation(line: 991, column: 9, scope: !2642)
!2703 = !DILocation(line: 991, column: 2, scope: !2642)
!2704 = !DISubprogram(name: "lzma_lz_decoder_init", scope: !29, file: !29, line: 85, type: !2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !455)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!6, !2645, !347, !2687, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!2708 = distinct !DISubprogram(name: "lzma_decoder_init", scope: !3, file: !3, line: 967, type: !321, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2709)
!2709 = !{!2710, !2711, !2712, !2713, !2714}
!2710 = !DILocalVariable(name: "lz", arg: 1, scope: !2708, file: !3, line: 967, type: !323)
!2711 = !DILocalVariable(name: "allocator", arg: 2, scope: !2708, file: !3, line: 967, type: !347)
!2712 = !DILocalVariable(name: "options", arg: 3, scope: !2708, file: !3, line: 968, type: !337)
!2713 = !DILocalVariable(name: "lz_options", arg: 4, scope: !2708, file: !3, line: 968, type: !360)
!2714 = !DILocalVariable(name: "ret_", scope: !2715, file: !3, line: 973, type: !2716)
!2715 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 973, column: 2)
!2716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2717 = !DILocation(line: 0, scope: !2708)
!2718 = !DILocalVariable(name: "options", arg: 1, scope: !2719, file: !85, line: 33, type: !373)
!2719 = distinct !DISubprogram(name: "is_lclppb_valid", scope: !85, file: !85, line: 33, type: !2720, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!47, !373}
!2722 = !{!2718}
!2723 = !DILocation(line: 0, scope: !2719, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 970, column: 7, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2708, file: !3, line: 970, column: 6)
!2726 = !DILocation(line: 35, column: 18, scope: !2719, inlinedAt: !2724)
!2727 = !DILocation(line: 35, column: 21, scope: !2719, inlinedAt: !2724)
!2728 = !DILocation(line: 35, column: 38, scope: !2719, inlinedAt: !2724)
!2729 = !DILocation(line: 35, column: 50, scope: !2719, inlinedAt: !2724)
!2730 = !DILocation(line: 35, column: 53, scope: !2719, inlinedAt: !2724)
!2731 = !DILocation(line: 36, column: 4, scope: !2719, inlinedAt: !2724)
!2732 = !DILocation(line: 37, column: 16, scope: !2719, inlinedAt: !2724)
!2733 = !DILocation(line: 37, column: 19, scope: !2719, inlinedAt: !2724)
!2734 = !DILocation(line: 970, column: 6, scope: !2708)
!2735 = !DILocation(line: 0, scope: !320, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 973, column: 2, scope: !2715)
!2737 = !DILocation(line: 942, column: 10, scope: !407, inlinedAt: !2736)
!2738 = !DILocation(line: 942, column: 16, scope: !407, inlinedAt: !2736)
!2739 = !DILocation(line: 942, column: 6, scope: !320, inlinedAt: !2736)
!2740 = !DILocation(line: 943, column: 15, scope: !416, inlinedAt: !2736)
!2741 = !DILocation(line: 943, column: 13, scope: !416, inlinedAt: !2736)
!2742 = !DILocation(line: 944, column: 17, scope: !419, inlinedAt: !2736)
!2743 = !DILocation(line: 944, column: 7, scope: !416, inlinedAt: !2736)
!2744 = !DILocation(line: 947, column: 7, scope: !416, inlinedAt: !2736)
!2745 = !DILocation(line: 947, column: 12, scope: !416, inlinedAt: !2736)
!2746 = !DILocation(line: 948, column: 7, scope: !416, inlinedAt: !2736)
!2747 = !DILocation(line: 948, column: 13, scope: !416, inlinedAt: !2736)
!2748 = !DILocation(line: 949, column: 7, scope: !416, inlinedAt: !2736)
!2749 = !DILocation(line: 949, column: 24, scope: !416, inlinedAt: !2736)
!2750 = !DILocation(line: 950, column: 2, scope: !416, inlinedAt: !2736)
!2751 = !DILocation(line: 976, column: 25, scope: !2708)
!2752 = !DILocation(line: 955, column: 35, scope: !320, inlinedAt: !2736)
!2753 = !DILocation(line: 955, column: 26, scope: !320, inlinedAt: !2736)
!2754 = !DILocation(line: 955, column: 24, scope: !320, inlinedAt: !2736)
!2755 = !DILocation(line: 956, column: 37, scope: !320, inlinedAt: !2736)
!2756 = !DILocation(line: 956, column: 14, scope: !320, inlinedAt: !2736)
!2757 = !DILocation(line: 956, column: 26, scope: !320, inlinedAt: !2736)
!2758 = !DILocation(line: 957, column: 42, scope: !320, inlinedAt: !2736)
!2759 = !DILocation(line: 957, column: 33, scope: !320, inlinedAt: !2736)
!2760 = !DILocation(line: 957, column: 14, scope: !320, inlinedAt: !2736)
!2761 = !DILocation(line: 957, column: 31, scope: !320, inlinedAt: !2736)
!2762 = !DILocation(line: 0, scope: !2715)
!2763 = !DILocation(line: 976, column: 2, scope: !2708)
!2764 = !DILocation(line: 977, column: 32, scope: !2708)
!2765 = !DILocation(line: 0, scope: !2633, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 977, column: 2, scope: !2708)
!2767 = !DILocation(line: 843, column: 9, scope: !2633, inlinedAt: !2766)
!2768 = !DILocation(line: 843, column: 27, scope: !2633, inlinedAt: !2766)
!2769 = !DILocation(line: 979, column: 2, scope: !2708)
!2770 = !DILocation(line: 980, column: 1, scope: !2708)
!2771 = distinct !DISubprogram(name: "lzma_lzma_lclppb_decode", scope: !3, file: !3, line: 997, type: !2772, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2775)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!47, !2774, !34}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "options", arg: 1, scope: !2771, file: !3, line: 997, type: !2774)
!2777 = !DILocalVariable(name: "byte", arg: 2, scope: !2771, file: !3, line: 997, type: !34)
!2778 = !DILocation(line: 0, scope: !2771)
!2779 = !DILocation(line: 999, column: 11, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2771, file: !3, line: 999, column: 6)
!2781 = !DILocation(line: 999, column: 6, scope: !2771)
!2782 = !DILocation(line: 1003, column: 21, scope: !2771)
!2783 = !DILocation(line: 1003, column: 11, scope: !2771)
!2784 = !DILocation(line: 1003, column: 14, scope: !2771)
!2785 = !DILocation(line: 1004, column: 7, scope: !2771)
!2786 = !DILocation(line: 1005, column: 16, scope: !2771)
!2787 = !DILocation(line: 1005, column: 21, scope: !2771)
!2788 = !DILocation(line: 1005, column: 11, scope: !2771)
!2789 = !DILocation(line: 1005, column: 14, scope: !2771)
!2790 = !DILocation(line: 1006, column: 35, scope: !2771)
!2791 = !DILocation(line: 1006, column: 21, scope: !2771)
!2792 = !DILocation(line: 1006, column: 11, scope: !2771)
!2793 = !DILocation(line: 1006, column: 14, scope: !2771)
!2794 = !DILocation(line: 1008, column: 21, scope: !2771)
!2795 = !DILocation(line: 1008, column: 35, scope: !2771)
!2796 = !DILocation(line: 1008, column: 2, scope: !2771)
!2797 = !DILocation(line: 1009, column: 1, scope: !2771)
!2798 = distinct !DISubprogram(name: "lzma_lzma_decoder_memusage_nocheck", scope: !3, file: !3, line: 1013, type: !2799, scopeLine: 1014, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2801)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!173, !337}
!2801 = !{!2802, !2803}
!2802 = !DILocalVariable(name: "options", arg: 1, scope: !2798, file: !3, line: 1013, type: !337)
!2803 = !DILocalVariable(name: "opt", scope: !2798, file: !3, line: 1015, type: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !373)
!2805 = !DILocation(line: 0, scope: !2798)
!2806 = !DILocation(line: 1016, column: 69, scope: !2798)
!2807 = !DILocation(line: 1016, column: 64, scope: !2798)
!2808 = !DILocation(line: 1016, column: 39, scope: !2798)
!2809 = !DILocation(line: 1016, column: 37, scope: !2798)
!2810 = !DILocation(line: 1016, column: 2, scope: !2798)
!2811 = !DISubprogram(name: "lzma_lz_decoder_memusage", scope: !29, file: !29, line: 91, type: !2812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !455)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!173, !40}
!2814 = distinct !DISubprogram(name: "lzma_lzma_decoder_memusage", scope: !3, file: !3, line: 1021, type: !2799, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2815)
!2815 = !{!2816}
!2816 = !DILocalVariable(name: "options", arg: 1, scope: !2814, file: !3, line: 1021, type: !337)
!2817 = !DILocation(line: 0, scope: !2814)
!2818 = !DILocation(line: 0, scope: !2719, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1023, column: 7, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 1023, column: 6)
!2821 = !DILocation(line: 35, column: 18, scope: !2719, inlinedAt: !2819)
!2822 = !DILocation(line: 35, column: 21, scope: !2719, inlinedAt: !2819)
!2823 = !DILocation(line: 35, column: 38, scope: !2719, inlinedAt: !2819)
!2824 = !DILocation(line: 35, column: 50, scope: !2719, inlinedAt: !2819)
!2825 = !DILocation(line: 35, column: 53, scope: !2719, inlinedAt: !2819)
!2826 = !DILocation(line: 36, column: 4, scope: !2719, inlinedAt: !2819)
!2827 = !DILocation(line: 37, column: 16, scope: !2719, inlinedAt: !2819)
!2828 = !DILocation(line: 37, column: 19, scope: !2719, inlinedAt: !2819)
!2829 = !DILocation(line: 1023, column: 6, scope: !2814)
!2830 = !DILocation(line: 0, scope: !2798, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1026, column: 9, scope: !2814)
!2832 = !DILocation(line: 1016, column: 69, scope: !2798, inlinedAt: !2831)
!2833 = !DILocation(line: 1016, column: 64, scope: !2798, inlinedAt: !2831)
!2834 = !DILocation(line: 1016, column: 39, scope: !2798, inlinedAt: !2831)
!2835 = !DILocation(line: 1016, column: 37, scope: !2798, inlinedAt: !2831)
!2836 = !DILocation(line: 1026, column: 2, scope: !2814)
!2837 = !DILocation(line: 1027, column: 1, scope: !2814)
!2838 = distinct !DISubprogram(name: "lzma_lzma_props_decode", scope: !3, file: !3, line: 1031, type: !2839, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2842)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!6, !2841, !347, !49, !40}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848}
!2843 = !DILocalVariable(name: "options", arg: 1, scope: !2838, file: !3, line: 1031, type: !2841)
!2844 = !DILocalVariable(name: "allocator", arg: 2, scope: !2838, file: !3, line: 1031, type: !347)
!2845 = !DILocalVariable(name: "props", arg: 3, scope: !2838, file: !3, line: 1032, type: !49)
!2846 = !DILocalVariable(name: "props_size", arg: 4, scope: !2838, file: !3, line: 1032, type: !40)
!2847 = !DILocalVariable(name: "opt", scope: !2838, file: !3, line: 1037, type: !2774)
!2848 = !DILabel(scope: !2838, name: "error", file: !3, line: 1057)
!2849 = !DILocation(line: 0, scope: !2838)
!2850 = !DILocation(line: 1034, column: 17, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1034, column: 6)
!2852 = !DILocation(line: 1034, column: 6, scope: !2838)
!2853 = !DILocation(line: 1038, column: 6, scope: !2838)
!2854 = !DILocation(line: 1039, column: 10, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1039, column: 6)
!2856 = !DILocation(line: 1039, column: 6, scope: !2838)
!2857 = !DILocation(line: 1042, column: 35, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 1042, column: 6)
!2859 = !DILocation(line: 0, scope: !2771, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 1042, column: 6, scope: !2858)
!2861 = !DILocation(line: 999, column: 11, scope: !2780, inlinedAt: !2860)
!2862 = !DILocation(line: 999, column: 6, scope: !2771, inlinedAt: !2860)
!2863 = !DILocation(line: 1003, column: 21, scope: !2771, inlinedAt: !2860)
!2864 = !DILocation(line: 1003, column: 11, scope: !2771, inlinedAt: !2860)
!2865 = !DILocation(line: 1003, column: 14, scope: !2771, inlinedAt: !2860)
!2866 = !DILocation(line: 1004, column: 7, scope: !2771, inlinedAt: !2860)
!2867 = !DILocation(line: 1005, column: 16, scope: !2771, inlinedAt: !2860)
!2868 = !DILocation(line: 1005, column: 21, scope: !2771, inlinedAt: !2860)
!2869 = !DILocation(line: 1005, column: 11, scope: !2771, inlinedAt: !2860)
!2870 = !DILocation(line: 1005, column: 14, scope: !2771, inlinedAt: !2860)
!2871 = !DILocation(line: 1006, column: 35, scope: !2771, inlinedAt: !2860)
!2872 = !DILocation(line: 1006, column: 21, scope: !2771, inlinedAt: !2860)
!2873 = !DILocation(line: 1006, column: 11, scope: !2771, inlinedAt: !2860)
!2874 = !DILocation(line: 1006, column: 14, scope: !2771, inlinedAt: !2860)
!2875 = !DILocation(line: 1008, column: 21, scope: !2771, inlinedAt: !2860)
!2876 = !DILocation(line: 1008, column: 35, scope: !2771, inlinedAt: !2860)
!2877 = !DILocation(line: 1042, column: 6, scope: !2838)
!2878 = !DILocation(line: 1048, column: 44, scope: !2838)
!2879 = !DILocalVariable(name: "buf", arg: 1, scope: !2880, file: !2881, line: 311, type: !49)
!2880 = distinct !DISubprogram(name: "unaligned_read32le", scope: !2881, file: !2881, line: 311, type: !2882, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !53, retainedNodes: !2884)
!2881 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!157, !49}
!2884 = !{!2879, !2885}
!2885 = !DILocalVariable(name: "num", scope: !2880, file: !2881, line: 313, type: !157)
!2886 = !DILocation(line: 0, scope: !2880, inlinedAt: !2887)
!2887 = distinct !DILocation(line: 1048, column: 19, scope: !2838)
!2888 = !DILocation(line: 313, column: 27, scope: !2880, inlinedAt: !2887)
!2889 = !DILocation(line: 313, column: 17, scope: !2880, inlinedAt: !2887)
!2890 = !DILocation(line: 314, column: 19, scope: !2880, inlinedAt: !2887)
!2891 = !DILocation(line: 314, column: 9, scope: !2880, inlinedAt: !2887)
!2892 = !DILocation(line: 314, column: 26, scope: !2880, inlinedAt: !2887)
!2893 = !DILocation(line: 314, column: 6, scope: !2880, inlinedAt: !2887)
!2894 = !DILocation(line: 315, column: 19, scope: !2880, inlinedAt: !2887)
!2895 = !DILocation(line: 315, column: 9, scope: !2880, inlinedAt: !2887)
!2896 = !DILocation(line: 315, column: 26, scope: !2880, inlinedAt: !2887)
!2897 = !DILocation(line: 315, column: 6, scope: !2880, inlinedAt: !2887)
!2898 = !DILocation(line: 316, column: 19, scope: !2880, inlinedAt: !2887)
!2899 = !DILocation(line: 316, column: 9, scope: !2880, inlinedAt: !2887)
!2900 = !DILocation(line: 316, column: 26, scope: !2880, inlinedAt: !2887)
!2901 = !DILocation(line: 316, column: 6, scope: !2880, inlinedAt: !2887)
!2902 = !DILocation(line: 1048, column: 17, scope: !2838)
!2903 = !DILocation(line: 1050, column: 7, scope: !2838)
!2904 = !DILocation(line: 1050, column: 19, scope: !2838)
!2905 = !DILocation(line: 1051, column: 7, scope: !2838)
!2906 = !DILocation(line: 1051, column: 24, scope: !2838)
!2907 = !DILocation(line: 1053, column: 11, scope: !2838)
!2908 = !DILocation(line: 1055, column: 2, scope: !2838)
!2909 = !DILocation(line: 1057, column: 1, scope: !2838)
!2910 = !DILocation(line: 1058, column: 2, scope: !2838)
!2911 = !DILocation(line: 1059, column: 2, scope: !2838)
!2912 = !DILocation(line: 1060, column: 1, scope: !2838)
!2913 = !DISubprogram(name: "lzma_free", scope: !25, file: !25, line: 215, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !455)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{null, !255, !347}
