; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, ptr, i32, i64, i64, i64, %struct.lzma_check_state }
%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %block) #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !233, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !234, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata ptr %block, metadata !235, metadata !DIExpression()), !dbg !236
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !237
  %0 = load i64, ptr %init, align 8, !dbg !237, !tbaa !240
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @lzma_block_encoder_init to i64), !dbg !237
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !246

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !237
  br label %if.end, !dbg !237

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @lzma_block_encoder_init to i64), ptr %init, align 8, !dbg !246, !tbaa !240
  %cmp2 = icmp eq ptr %block, null, !dbg !247
  br i1 %cmp2, label %return, label %if.end4, !dbg !249

if.end4:                                          ; preds = %if.end
  %1 = load i32, ptr %block, align 8, !dbg !250, !tbaa !252
  %cmp5.not = icmp eq i32 %1, 0, !dbg !255
  br i1 %cmp5.not, label %if.end7, label %return, !dbg !256

if.end7:                                          ; preds = %if.end4
  %check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !257
  %2 = load i32, ptr %check, align 8, !dbg !257, !tbaa !259
  %cmp8 = icmp ugt i32 %2, 15, !dbg !260
  br i1 %cmp8, label %return, label %if.end10, !dbg !261

if.end10:                                         ; preds = %if.end7
  %call = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %2) #5, !dbg !262
  %tobool.not = icmp eq i8 %call, 0, !dbg !262
  br i1 %tobool.not, label %return, label %if.end13, !dbg !264

if.end13:                                         ; preds = %if.end10
  %3 = load ptr, ptr %next, align 8, !dbg !265, !tbaa !267
  %cmp14 = icmp eq ptr %3, null, !dbg !268
  br i1 %cmp14, label %if.then15, label %if.end29, !dbg !269

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @lzma_alloc(i64 noundef 208, ptr noundef %allocator) #5, !dbg !270
  store ptr %call16, ptr %next, align 8, !dbg !272, !tbaa !267
  %cmp19 = icmp eq ptr %call16, null, !dbg !273
  br i1 %cmp19, label %return, label %if.end21, !dbg !275

if.end21:                                         ; preds = %if.then15
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !276
  store ptr @block_encode, ptr %code, align 8, !dbg !277, !tbaa !278
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !279
  store ptr @block_encoder_end, ptr %end, align 8, !dbg !280, !tbaa !281
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !282
  store ptr @block_encoder_update, ptr %update, align 8, !dbg !283, !tbaa !284
  store ptr null, ptr %call16, align 8, !dbg !285, !tbaa.struct !286
  %.compoundliteral.sroa.2.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 8, !dbg !285
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next23.sroa_idx, align 8, !dbg !285, !tbaa.struct !289
  %.compoundliteral.sroa.3.0.next23.sroa_idx = getelementptr inbounds i8, ptr %call16, i64 16, !dbg !285
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next23.sroa_idx, i8 0, i64 48, i1 false), !dbg !285
  %.pre = load ptr, ptr %next, align 8, !dbg !290, !tbaa !267
  br label %if.end29, !dbg !291

if.end29:                                         ; preds = %if.end21, %if.end13
  %4 = phi ptr [ %.pre, %if.end21 ], [ %3, %if.end13 ], !dbg !290
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 2, !dbg !292
  store i32 0, ptr %sequence, align 8, !dbg !293, !tbaa !294
  %block32 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 1, !dbg !297
  store ptr %block, ptr %block32, align 8, !dbg !298, !tbaa !299
  %compressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !300
  %check37 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 6, !dbg !301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %compressed_size, i8 0, i64 24, i1 false), !dbg !302
  %5 = load i32, ptr %check, align 8, !dbg !303, !tbaa !259
  tail call void @lzma_check_init(ptr noundef nonnull %check37, i32 noundef %5) #5, !dbg !304
  %6 = load ptr, ptr %next, align 8, !dbg !305, !tbaa !267
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !306
  %7 = load ptr, ptr %filters, align 8, !dbg !306, !tbaa !307
  %call41 = tail call i32 @lzma_raw_encoder_init(ptr noundef %6, ptr noundef %allocator, ptr noundef %7) #5, !dbg !308
  br label %return, !dbg !309

return:                                           ; preds = %if.then15, %if.end10, %if.end7, %if.end4, %if.end, %if.end29
  %retval.0 = phi i32 [ %call41, %if.end29 ], [ 11, %if.end ], [ 8, %if.end4 ], [ 11, %if.end7 ], [ 3, %if.end10 ], [ 5, %if.then15 ], !dbg !236
  ret i32 %retval.0, !dbg !310
}

declare !dbg !311 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !315 zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare !dbg !318 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @block_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !321 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !323, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !324, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %in, metadata !325, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !326, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !327, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %out, metadata !328, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !329, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !330, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata i32 %action, metadata !331, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !332, metadata !DIExpression()), !dbg !344
  %uncompressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 4, !dbg !345
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !345, !tbaa !347
  %sub = sub i64 9223372036854775807, %0, !dbg !348
  %1 = load i64, ptr %in_pos, align 8, !dbg !349, !tbaa !288
  %sub1 = sub i64 %in_size, %1, !dbg !350
  %cmp = icmp ult i64 %sub, %sub1, !dbg !351
  br i1 %cmp, label %cleanup62, label %if.end, !dbg !352

if.end:                                           ; preds = %entry
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !353
  %2 = load i32, ptr %sequence, align 8, !dbg !353, !tbaa !294
  switch i32 %2, label %cleanup62 [
    i32 0, label %sw.bb
    i32 1, label %if.end.sw.bb29_crit_edge
    i32 2, label %sw.bb45
  ], !dbg !354

if.end.sw.bb29_crit_edge:                         ; preds = %if.end
  %compressed_size30.phi.trans.insert = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %compressed_size30.promoted.pre = load i64, ptr %compressed_size30.phi.trans.insert, align 8, !tbaa !355
  br label %sw.bb29, !dbg !354

sw.bb:                                            ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %1, metadata !333, metadata !DIExpression()), !dbg !356
  %3 = load i64, ptr %out_pos, align 8, !dbg !357, !tbaa !288
  call void @llvm.dbg.value(metadata i64 %3, metadata !337, metadata !DIExpression()), !dbg !356
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !358
  %4 = load ptr, ptr %code, align 8, !dbg !358, !tbaa !359
  %5 = load ptr, ptr %pcoder, align 8, !dbg !360, !tbaa !361
  %call = tail call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef nonnull %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !362
  call void @llvm.dbg.value(metadata i32 %call, metadata !338, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %1), metadata !340, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !356
  %6 = load i64, ptr %out_pos, align 8, !dbg !363, !tbaa !288
  %sub5 = sub i64 %6, %3, !dbg !364
  call void @llvm.dbg.value(metadata i64 %sub5, metadata !341, metadata !DIExpression()), !dbg !356
  %compressed_size = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !365
  %7 = load i64, ptr %compressed_size, align 8, !dbg !365, !tbaa !355
  %sub6 = sub i64 9223372036854774716, %7, !dbg !367
  %cmp7 = icmp ult i64 %sub6, %sub5, !dbg !368
  br i1 %cmp7, label %cleanup62, label %if.end9, !dbg !369

if.end9:                                          ; preds = %sw.bb
  %8 = load i64, ptr %in_pos, align 8, !dbg !370, !tbaa !288
  call void @llvm.dbg.value(metadata !DIArgList(i64 %8, i64 %1), metadata !340, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !356
  %sub4 = sub i64 %8, %1, !dbg !371
  call void @llvm.dbg.value(metadata i64 %sub4, metadata !340, metadata !DIExpression()), !dbg !356
  %add = add i64 %7, %sub5, !dbg !372
  store i64 %add, ptr %compressed_size, align 8, !dbg !372, !tbaa !355
  %9 = load i64, ptr %uncompressed_size, align 8, !dbg !373, !tbaa !347
  %add12 = add i64 %9, %sub4, !dbg !373
  store i64 %add12, ptr %uncompressed_size, align 8, !dbg !373, !tbaa !347
  %check = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !374
  %block = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !375
  %10 = load ptr, ptr %block, align 8, !dbg !375, !tbaa !299
  %check13 = getelementptr inbounds %struct.lzma_block, ptr %10, i64 0, i32 2, !dbg !376
  %11 = load i32, ptr %check13, align 8, !dbg !376, !tbaa !259
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !377
  tail call void @lzma_check_update(ptr noundef nonnull %check, i32 noundef %11, ptr noundef %add.ptr, i64 noundef %sub4) #5, !dbg !378
  %cmp14 = icmp ne i32 %call, 1, !dbg !379
  %cmp15 = icmp eq i32 %action, 1
  %or.cond = or i1 %cmp15, %cmp14, !dbg !381
  br i1 %or.cond, label %cleanup62, label %cleanup, !dbg !381

cleanup:                                          ; preds = %if.end9
  %12 = load i64, ptr %compressed_size, align 8, !dbg !382, !tbaa !355
  %13 = load ptr, ptr %block, align 8, !dbg !383, !tbaa !299
  %compressed_size20 = getelementptr inbounds %struct.lzma_block, ptr %13, i64 0, i32 3, !dbg !384
  store i64 %12, ptr %compressed_size20, align 8, !dbg !385, !tbaa !386
  %14 = load i64, ptr %uncompressed_size, align 8, !dbg !387, !tbaa !347
  %uncompressed_size23 = getelementptr inbounds %struct.lzma_block, ptr %13, i64 0, i32 4, !dbg !388
  store i64 %14, ptr %uncompressed_size23, align 8, !dbg !389, !tbaa !390
  store i32 1, ptr %sequence, align 8, !dbg !391, !tbaa !294
  br label %sw.bb29

sw.bb29:                                          ; preds = %if.end.sw.bb29_crit_edge, %cleanup
  %compressed_size30.promoted = phi i64 [ %compressed_size30.promoted.pre, %if.end.sw.bb29_crit_edge ], [ %12, %cleanup ]
  %compressed_size30 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %and114 = and i64 %compressed_size30.promoted, 3, !dbg !392
  %tobool.not115 = icmp eq i64 %and114, 0, !dbg !393
  br i1 %tobool.not115, label %while.end, label %while.body.lr.ph, !dbg !393

while.body.lr.ph:                                 ; preds = %sw.bb29
  %out_pos.promoted = load i64, ptr %out_pos, align 8, !tbaa !288
  br label %while.body, !dbg !393

while.body:                                       ; preds = %while.body.lr.ph, %if.end33
  %15 = phi i64 [ %out_pos.promoted, %while.body.lr.ph ], [ %inc, %if.end33 ]
  %inc35113116 = phi i64 [ %compressed_size30.promoted, %while.body.lr.ph ], [ %inc35, %if.end33 ]
  %cmp31.not = icmp ult i64 %15, %out_size, !dbg !394
  br i1 %cmp31.not, label %if.end33, label %cleanup62, !dbg !397

if.end33:                                         ; preds = %while.body
  %arrayidx = getelementptr inbounds i8, ptr %out, i64 %15, !dbg !398
  store i8 0, ptr %arrayidx, align 1, !dbg !399, !tbaa !400
  %inc = add nuw i64 %15, 1, !dbg !401
  store i64 %inc, ptr %out_pos, align 8, !dbg !401, !tbaa !288
  %inc35 = add i64 %inc35113116, 1, !dbg !402
  store i64 %inc35, ptr %compressed_size30, align 8, !dbg !402, !tbaa !355
  %and = and i64 %inc35, 3, !dbg !392
  %tobool.not = icmp eq i64 %and, 0, !dbg !393
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !393, !llvm.loop !403

while.end:                                        ; preds = %if.end33, %sw.bb29
  %block36 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !407
  %16 = load ptr, ptr %block36, align 8, !dbg !407, !tbaa !299
  %check37 = getelementptr inbounds %struct.lzma_block, ptr %16, i64 0, i32 2, !dbg !409
  %17 = load i32, ptr %check37, align 8, !dbg !409, !tbaa !259
  %cmp38 = icmp eq i32 %17, 0, !dbg !410
  br i1 %cmp38, label %cleanup62, label %if.end40, !dbg !411

if.end40:                                         ; preds = %while.end
  %check41 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !412
  tail call void @lzma_check_finish(ptr noundef nonnull %check41, i32 noundef %17) #5, !dbg !413
  store i32 2, ptr %sequence, align 8, !dbg !414, !tbaa !294
  br label %sw.bb45, !dbg !415

sw.bb45:                                          ; preds = %if.end, %if.end40
  %block46 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !416
  %18 = load ptr, ptr %block46, align 8, !dbg !416, !tbaa !299
  %check47 = getelementptr inbounds %struct.lzma_block, ptr %18, i64 0, i32 2, !dbg !417
  %19 = load i32, ptr %check47, align 8, !dbg !417, !tbaa !259
  %call48 = tail call i32 @lzma_check_size(i32 noundef %19) #5, !dbg !418
  %conv = zext i32 %call48 to i64, !dbg !418
  call void @llvm.dbg.value(metadata i64 %conv, metadata !342, metadata !DIExpression()), !dbg !419
  %check49 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 6, !dbg !420
  %pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 5, !dbg !421
  %call50 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %check49, ptr noundef nonnull %pos, i64 noundef %conv, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #5, !dbg !422
  %20 = load i64, ptr %pos, align 8, !dbg !423, !tbaa !425
  %cmp52 = icmp ult i64 %20, %conv, !dbg !426
  br i1 %cmp52, label %cleanup62, label %if.end55, !dbg !427

if.end55:                                         ; preds = %sw.bb45
  %21 = load ptr, ptr %block46, align 8, !dbg !428, !tbaa !299
  %raw_check = getelementptr inbounds %struct.lzma_block, ptr %21, i64 0, i32 6, !dbg !429
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %raw_check, ptr nonnull align 8 %check49, i64 %conv, i1 false), !dbg !430
  br label %cleanup62, !dbg !431

cleanup62:                                        ; preds = %while.body, %if.end9, %sw.bb, %if.end, %if.end55, %sw.bb45, %while.end, %entry
  %retval.2 = phi i32 [ 9, %entry ], [ 1, %while.end ], [ 1, %if.end55 ], [ 0, %sw.bb45 ], [ 11, %if.end ], [ %call, %if.end9 ], [ 9, %sw.bb ], [ 0, %while.body ], !dbg !344
  ret i32 %retval.2, !dbg !432
}

; Function Attrs: nounwind uwtable
define internal void @block_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !433 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !435, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !437, metadata !DIExpression()), !dbg !438
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !439
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !440
  ret void, !dbg !441
}

; Function Attrs: nounwind uwtable
define internal i32 @block_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture noundef readnone %filters, ptr noundef %reversed_filters) #0 !dbg !442 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !444, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !445, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %filters, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !448, metadata !DIExpression()), !dbg !449
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2, !dbg !450
  %0 = load i32, ptr %sequence, align 8, !dbg !450, !tbaa !294
  %cmp.not = icmp eq i32 %0, 0, !dbg !452
  br i1 %cmp.not, label %if.end, label %cleanup, !dbg !453

if.end:                                           ; preds = %entry
  %call = tail call i32 @lzma_next_filter_update(ptr noundef nonnull %pcoder, ptr noundef %allocator, ptr noundef %reversed_filters) #5, !dbg !454
  br label %cleanup, !dbg !455

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call, %if.end ], [ 11, %entry ], !dbg !449
  ret i32 %retval.0, !dbg !456
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !457 void @lzma_check_init(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !461 i32 @lzma_raw_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_encoder(ptr noundef %strm, ptr noundef %block) local_unnamed_addr #0 !dbg !465 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !493, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.value(metadata ptr %block, metadata !494, metadata !DIExpression()), !dbg !499
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !500
  call void @llvm.dbg.value(metadata i32 %call, metadata !495, metadata !DIExpression()), !dbg !501
  %cmp.not = icmp eq i32 %call, 0, !dbg !502
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !504
  %0 = load ptr, ptr %internal, align 8, !dbg !504, !tbaa !505
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !504
  %1 = load ptr, ptr %allocator, align 8, !dbg !504, !tbaa !507
  %call3 = tail call i32 @lzma_block_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %block), !dbg !504
  call void @llvm.dbg.value(metadata i32 %call3, metadata !498, metadata !DIExpression()), !dbg !508
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !509
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !504

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !511
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !513, !tbaa !505
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !514
  store i8 1, ptr %supported_actions, align 8, !dbg !515, !tbaa !516
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !518
  store i8 1, ptr %arrayidx14, align 1, !dbg !519, !tbaa !516
  br label %return, !dbg !520

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !499
  ret i32 %retval.2, !dbg !521
}

declare !dbg !522 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare !dbg !525 void @lzma_end(ptr noundef) local_unnamed_addr #1

declare !dbg !528 void @lzma_check_update(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !531 void @lzma_check_finish(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !532 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

declare !dbg !535 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !538 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !541 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !219, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "6fefd92350726e39daee7a2ff1aa92a6")
!2 = !{!3, !19, !25, !32, !35, !200}
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
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !33)
!33 = !{!34}
!34 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !37, file: !36, line: 27, baseType: !5, size: 32, elements: !196)
!36 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6fefd92350726e39daee7a2ff1aa92a6")
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !36, line: 18, size: 1664, elements: !38)
!38 = !{!39, !120, !164, !165, !166, !167, !168}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !37, file: !36, line: 20, baseType: !40, size: 512)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !41, line: 80, baseType: !42)
!41 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !41, line: 124, size: 512, elements: !43)
!43 = !{!44, !47, !55, !58, !91, !96, !103, !108}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !42, file: !41, line: 126, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !41, line: 78, baseType: null)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !42, file: !41, line: 130, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !49, line: 63, baseType: !50)
!49 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !51, line: 27, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !53, line: 45, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !42, file: !41, line: 136, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !57, line: 90, baseType: !54)
!57 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !42, file: !41, line: 139, baseType: !59, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !41, line: 94, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!63, !45, !64, !80, !86, !73, !88, !86, !73, !90}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !67)
!67 = !{!68, !75, !79}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !66, file: !4, line: 376, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !72, !73, !73}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !54)
!74 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!75 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !66, file: !4, line: 390, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !72, !72}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !66, file: !4, line: 401, baseType: !72, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !51, line: 24, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !53, line: 38, baseType: !85)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !42, file: !41, line: 144, baseType: !92, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !41, line: 102, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !45, !64}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !42, file: !41, line: 148, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!100, !101}
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !42, file: !41, line: 152, baseType: !104, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!63, !45, !107, !107, !50}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !42, file: !41, line: 157, baseType: !109, size: 64, offset: 448)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!63, !45, !64, !112, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !115, line: 65, baseType: !116)
!115 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 43, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !116, file: !115, line: 54, baseType: !48, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !116, file: !115, line: 63, baseType: !72, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !37, file: !36, line: 25, baseType: !121, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !123, line: 245, baseType: !124)
!123 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 30, size: 1664, elements: !125)
!125 = !{!126, !129, !130, !131, !132, !133, !135, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157, !158, !159, !160, !161, !162, !163}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !124, file: !123, line: 47, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !51, line: 26, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !53, line: 42, baseType: !5)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !124, file: !123, line: 67, baseType: !127, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !124, file: !123, line: 88, baseType: !100, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !124, file: !123, line: 143, baseType: !48, size: 64, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !124, file: !123, line: 167, baseType: !48, size: 64, offset: 192)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !124, file: !123, line: 195, baseType: !134, size: 64, offset: 256)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !124, file: !123, line: 212, baseType: !136, size: 512, offset: 320)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 512, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !124, file: !123, line: 221, baseType: !72, size: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !124, file: !123, line: 222, baseType: !72, size: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !124, file: !123, line: 223, baseType: !72, size: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !124, file: !123, line: 224, baseType: !127, size: 32, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !124, file: !123, line: 225, baseType: !127, size: 32, offset: 1056)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !124, file: !123, line: 226, baseType: !48, size: 64, offset: 1088)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !124, file: !123, line: 227, baseType: !48, size: 64, offset: 1152)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !124, file: !123, line: 228, baseType: !48, size: 64, offset: 1216)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !124, file: !123, line: 229, baseType: !48, size: 64, offset: 1280)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !124, file: !123, line: 230, baseType: !48, size: 64, offset: 1344)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !124, file: !123, line: 231, baseType: !48, size: 64, offset: 1408)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !124, file: !123, line: 232, baseType: !151, size: 32, offset: 1472)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !124, file: !123, line: 233, baseType: !151, size: 32, offset: 1504)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !124, file: !123, line: 234, baseType: !151, size: 32, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !124, file: !123, line: 235, baseType: !151, size: 32, offset: 1568)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !124, file: !123, line: 236, baseType: !156, size: 8, offset: 1600)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !85)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !124, file: !123, line: 237, baseType: !156, size: 8, offset: 1608)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !124, file: !123, line: 238, baseType: !156, size: 8, offset: 1616)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !124, file: !123, line: 239, baseType: !156, size: 8, offset: 1624)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !124, file: !123, line: 240, baseType: !156, size: 8, offset: 1632)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !124, file: !123, line: 241, baseType: !156, size: 8, offset: 1640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !124, file: !123, line: 242, baseType: !156, size: 8, offset: 1648)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !124, file: !123, line: 243, baseType: !156, size: 8, offset: 1656)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !37, file: !36, line: 31, baseType: !35, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !37, file: !36, line: 34, baseType: !48, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !37, file: !36, line: 37, baseType: !48, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !37, file: !36, line: 40, baseType: !73, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !37, file: !36, line: 43, baseType: !169, size: 832, offset: 832)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !170, line: 56, baseType: !171)
!170 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !170, line: 34, size: 832, elements: !172)
!172 = !{!173, !185}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !171, file: !170, line: 40, baseType: !174, size: 512)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 36, size: 512, elements: !175)
!175 = !{!176, !177, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !174, file: !170, line: 37, baseType: !136, size: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !174, file: !170, line: 38, baseType: !178, size: 512)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !174, file: !170, line: 39, baseType: !182, size: 512)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 512, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !171, file: !170, line: 54, baseType: !186, size: 320, offset: 512)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 43, size: 320, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !186, file: !170, line: 44, baseType: !127, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !186, file: !170, line: 45, baseType: !50, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !186, file: !170, line: 53, baseType: !191, size: 320)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !170, line: 47, size: 320, elements: !192)
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !191, file: !170, line: 49, baseType: !194, size: 256)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !183)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !191, file: !170, line: 52, baseType: !50, size: 64, offset: 256)
!196 = !{!197, !198, !199}
!197 = !DIEnumerator(name: "SEQ_CODE", value: 0)
!198 = !DIEnumerator(name: "SEQ_PADDING", value: 1)
!199 = !DIEnumerator(name: "SEQ_CHECK", value: 2)
!200 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !201, file: !41, line: 187, baseType: !5, size: 32, elements: !212)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !41, line: 179, size: 704, elements: !202)
!202 = !{!203, !204, !205, !206, !211}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !41, line: 181, baseType: !40, size: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !201, file: !41, line: 194, baseType: !200, size: 32, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !201, file: !41, line: 199, baseType: !73, size: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !201, file: !41, line: 202, baseType: !207, size: 32, offset: 640)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 32, elements: !209)
!208 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!209 = !{!210}
!210 = !DISubrange(count: 4)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !201, file: !41, line: 206, baseType: !208, size: 8, offset: 672)
!212 = !{!213, !214, !215, !216, !217, !218}
!213 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!214 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!215 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!216 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!217 = !DIEnumerator(name: "ISEQ_END", value: 4)
!218 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!219 = !{!56, !72, !5, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!221 = !{i32 7, !"Dwarf Version", i32 5}
!222 = !{i32 2, !"Debug Info Version", i32 3}
!223 = !{i32 1, !"wchar_size", i32 4}
!224 = !{i32 7, !"PIC Level", i32 2}
!225 = !{i32 7, !"PIE Level", i32 2}
!226 = !{i32 7, !"uwtable", i32 2}
!227 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!228 = distinct !DISubprogram(name: "lzma_block_encoder_init", scope: !36, file: !36, line: 162, type: !229, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !232)
!229 = !DISubroutineType(types: !230)
!230 = !{!63, !231, !64, !121}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "next", arg: 1, scope: !228, file: !36, line: 162, type: !231)
!234 = !DILocalVariable(name: "allocator", arg: 2, scope: !228, file: !36, line: 162, type: !64)
!235 = !DILocalVariable(name: "block", arg: 3, scope: !228, file: !36, line: 163, type: !121)
!236 = !DILocation(line: 0, scope: !228)
!237 = !DILocation(line: 165, column: 2, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !36, line: 165, column: 2)
!239 = distinct !DILexicalBlock(scope: !228, file: !36, line: 165, column: 2)
!240 = !{!241, !245, i64 16}
!241 = !{!"lzma_next_coder_s", !242, i64 0, !245, i64 8, !245, i64 16, !242, i64 24, !242, i64 32, !242, i64 40, !242, i64 48, !242, i64 56}
!242 = !{!"any pointer", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C/C++ TBAA"}
!245 = !{!"long", !243, i64 0}
!246 = !DILocation(line: 165, column: 2, scope: !239)
!247 = !DILocation(line: 167, column: 12, scope: !248)
!248 = distinct !DILexicalBlock(scope: !228, file: !36, line: 167, column: 6)
!249 = !DILocation(line: 167, column: 6, scope: !228)
!250 = !DILocation(line: 172, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !228, file: !36, line: 172, column: 6)
!252 = !{!253, !254, i64 0}
!253 = !{!"", !254, i64 0, !254, i64 4, !243, i64 8, !245, i64 16, !245, i64 24, !242, i64 32, !243, i64 40, !242, i64 104, !242, i64 112, !242, i64 120, !254, i64 128, !254, i64 132, !245, i64 136, !245, i64 144, !245, i64 152, !245, i64 160, !245, i64 168, !245, i64 176, !243, i64 184, !243, i64 188, !243, i64 192, !243, i64 196, !243, i64 200, !243, i64 201, !243, i64 202, !243, i64 203, !243, i64 204, !243, i64 205, !243, i64 206, !243, i64 207}
!254 = !{!"int", !243, i64 0}
!255 = !DILocation(line: 172, column: 21, scope: !251)
!256 = !DILocation(line: 172, column: 6, scope: !228)
!257 = !DILocation(line: 177, column: 28, scope: !258)
!258 = distinct !DILexicalBlock(scope: !228, file: !36, line: 177, column: 6)
!259 = !{!253, !243, i64 8}
!260 = !DILocation(line: 177, column: 35, scope: !258)
!261 = !DILocation(line: 177, column: 6, scope: !228)
!262 = !DILocation(line: 180, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !228, file: !36, line: 180, column: 6)
!264 = !DILocation(line: 180, column: 6, scope: !228)
!265 = !DILocation(line: 184, column: 12, scope: !266)
!266 = distinct !DILexicalBlock(scope: !228, file: !36, line: 184, column: 6)
!267 = !{!241, !242, i64 0}
!268 = !DILocation(line: 184, column: 18, scope: !266)
!269 = !DILocation(line: 184, column: 6, scope: !228)
!270 = !DILocation(line: 185, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !36, line: 184, column: 27)
!272 = !DILocation(line: 185, column: 15, scope: !271)
!273 = !DILocation(line: 186, column: 19, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !36, line: 186, column: 7)
!275 = !DILocation(line: 186, column: 7, scope: !271)
!276 = !DILocation(line: 189, column: 9, scope: !271)
!277 = !DILocation(line: 189, column: 14, scope: !271)
!278 = !{!241, !242, i64 24}
!279 = !DILocation(line: 190, column: 9, scope: !271)
!280 = !DILocation(line: 190, column: 13, scope: !271)
!281 = !{!241, !242, i64 32}
!282 = !DILocation(line: 191, column: 9, scope: !271)
!283 = !DILocation(line: 191, column: 16, scope: !271)
!284 = !{!241, !242, i64 56}
!285 = !DILocation(line: 192, column: 47, scope: !271)
!286 = !{i64 0, i64 8, !287, i64 8, i64 8, !288, i64 16, i64 8, !288, i64 24, i64 8, !287, i64 32, i64 8, !287, i64 40, i64 8, !287, i64 48, i64 8, !287, i64 56, i64 8, !287}
!287 = !{!242, !242, i64 0}
!288 = !{!245, !245, i64 0}
!289 = !{i64 0, i64 8, !288, i64 8, i64 8, !288, i64 16, i64 8, !287, i64 24, i64 8, !287, i64 32, i64 8, !287, i64 40, i64 8, !287, i64 48, i64 8, !287}
!290 = !DILocation(line: 196, column: 31, scope: !228)
!291 = !DILocation(line: 193, column: 2, scope: !271)
!292 = !DILocation(line: 196, column: 39, scope: !228)
!293 = !DILocation(line: 196, column: 48, scope: !228)
!294 = !{!295, !243, i64 72}
!295 = !{!"lzma_coder_s", !241, i64 0, !242, i64 64, !243, i64 72, !245, i64 80, !245, i64 88, !245, i64 96, !296, i64 104}
!296 = !{!"", !243, i64 0, !243, i64 64}
!297 = !DILocation(line: 197, column: 39, scope: !228)
!298 = !DILocation(line: 197, column: 45, scope: !228)
!299 = !{!295, !242, i64 64}
!300 = !DILocation(line: 198, column: 39, scope: !228)
!301 = !DILocation(line: 203, column: 56, scope: !228)
!302 = !DILocation(line: 199, column: 57, scope: !228)
!303 = !DILocation(line: 203, column: 70, scope: !228)
!304 = !DILocation(line: 203, column: 2, scope: !228)
!305 = !DILocation(line: 206, column: 61, scope: !228)
!306 = !DILocation(line: 207, column: 11, scope: !228)
!307 = !{!253, !242, i64 32}
!308 = !DILocation(line: 206, column: 9, scope: !228)
!309 = !DILocation(line: 206, column: 2, scope: !228)
!310 = !DILocation(line: 208, column: 1, scope: !228)
!311 = !DISubprogram(name: "lzma_next_end", scope: !41, file: !41, line: 237, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !231, !64}
!314 = !{}
!315 = !DISubprogram(name: "lzma_check_is_supported", scope: !26, file: !26, line: 81, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!316 = !DISubroutineType(types: !317)
!317 = !{!156, !100}
!318 = !DISubprogram(name: "lzma_alloc", scope: !41, file: !41, line: 211, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!319 = !DISubroutineType(types: !320)
!320 = !{!72, !73, !64}
!321 = distinct !DISubprogram(name: "block_encode", scope: !36, file: !36, line: 48, type: !61, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !337, !338, !340, !341, !342}
!323 = !DILocalVariable(name: "pcoder", arg: 1, scope: !321, file: !36, line: 48, type: !45)
!324 = !DILocalVariable(name: "allocator", arg: 2, scope: !321, file: !36, line: 48, type: !64)
!325 = !DILocalVariable(name: "in", arg: 3, scope: !321, file: !36, line: 49, type: !80)
!326 = !DILocalVariable(name: "in_pos", arg: 4, scope: !321, file: !36, line: 49, type: !86)
!327 = !DILocalVariable(name: "in_size", arg: 5, scope: !321, file: !36, line: 50, type: !73)
!328 = !DILocalVariable(name: "out", arg: 6, scope: !321, file: !36, line: 50, type: !88)
!329 = !DILocalVariable(name: "out_pos", arg: 7, scope: !321, file: !36, line: 51, type: !86)
!330 = !DILocalVariable(name: "out_size", arg: 8, scope: !321, file: !36, line: 51, type: !73)
!331 = !DILocalVariable(name: "action", arg: 9, scope: !321, file: !36, line: 51, type: !90)
!332 = !DILocalVariable(name: "coder", scope: !321, file: !36, line: 53, type: !220)
!333 = !DILocalVariable(name: "in_start", scope: !334, file: !36, line: 60, type: !336)
!334 = distinct !DILexicalBlock(scope: !335, file: !36, line: 59, column: 17)
!335 = distinct !DILexicalBlock(scope: !321, file: !36, line: 58, column: 27)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!337 = !DILocalVariable(name: "out_start", scope: !334, file: !36, line: 61, type: !336)
!338 = !DILocalVariable(name: "ret", scope: !334, file: !36, line: 63, type: !339)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!340 = !DILocalVariable(name: "in_used", scope: !334, file: !36, line: 67, type: !336)
!341 = !DILocalVariable(name: "out_used", scope: !334, file: !36, line: 68, type: !336)
!342 = !DILocalVariable(name: "check_size", scope: !343, file: !36, line: 121, type: !336)
!343 = distinct !DILexicalBlock(scope: !335, file: !36, line: 120, column: 18)
!344 = !DILocation(line: 0, scope: !321)
!345 = !DILocation(line: 55, column: 28, scope: !346)
!346 = distinct !DILexicalBlock(scope: !321, file: !36, line: 55, column: 6)
!347 = !{!295, !245, i64 88}
!348 = !DILocation(line: 55, column: 19, scope: !346)
!349 = !DILocation(line: 55, column: 58, scope: !346)
!350 = !DILocation(line: 55, column: 56, scope: !346)
!351 = !DILocation(line: 55, column: 46, scope: !346)
!352 = !DILocation(line: 55, column: 6, scope: !321)
!353 = !DILocation(line: 58, column: 17, scope: !321)
!354 = !DILocation(line: 58, column: 2, scope: !321)
!355 = !{!295, !245, i64 80}
!356 = !DILocation(line: 0, scope: !334)
!357 = !DILocation(line: 61, column: 28, scope: !334)
!358 = !DILocation(line: 63, column: 36, scope: !334)
!359 = !{!295, !242, i64 24}
!360 = !DILocation(line: 63, column: 53, scope: !334)
!361 = !{!295, !242, i64 0}
!362 = !DILocation(line: 63, column: 24, scope: !334)
!363 = !DILocation(line: 68, column: 27, scope: !334)
!364 = !DILocation(line: 68, column: 36, scope: !334)
!365 = !DILocation(line: 70, column: 36, scope: !366)
!366 = distinct !DILexicalBlock(scope: !334, file: !36, line: 70, column: 7)
!367 = !DILocation(line: 70, column: 27, scope: !366)
!368 = !DILocation(line: 70, column: 52, scope: !366)
!369 = !DILocation(line: 70, column: 7, scope: !334)
!370 = !DILocation(line: 67, column: 26, scope: !334)
!371 = !DILocation(line: 67, column: 34, scope: !334)
!372 = !DILocation(line: 73, column: 26, scope: !334)
!373 = !DILocation(line: 77, column: 28, scope: !334)
!374 = !DILocation(line: 79, column: 29, scope: !334)
!375 = !DILocation(line: 79, column: 43, scope: !334)
!376 = !DILocation(line: 79, column: 50, scope: !334)
!377 = !DILocation(line: 80, column: 8, scope: !334)
!378 = !DILocation(line: 79, column: 3, scope: !334)
!379 = !DILocation(line: 82, column: 11, scope: !380)
!380 = distinct !DILexicalBlock(scope: !334, file: !36, line: 82, column: 7)
!381 = !DILocation(line: 82, column: 30, scope: !380)
!382 = !DILocation(line: 90, column: 42, scope: !334)
!383 = !DILocation(line: 90, column: 10, scope: !334)
!384 = !DILocation(line: 90, column: 17, scope: !334)
!385 = !DILocation(line: 90, column: 33, scope: !334)
!386 = !{!253, !245, i64 16}
!387 = !DILocation(line: 91, column: 44, scope: !334)
!388 = !DILocation(line: 91, column: 17, scope: !334)
!389 = !DILocation(line: 91, column: 35, scope: !334)
!390 = !{!253, !245, i64 24}
!391 = !DILocation(line: 93, column: 19, scope: !334)
!392 = !DILocation(line: 102, column: 33, scope: !335)
!393 = !DILocation(line: 102, column: 3, scope: !335)
!394 = !DILocation(line: 103, column: 17, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !36, line: 103, column: 8)
!396 = distinct !DILexicalBlock(scope: !335, file: !36, line: 102, column: 38)
!397 = !DILocation(line: 103, column: 8, scope: !396)
!398 = !DILocation(line: 106, column: 4, scope: !396)
!399 = !DILocation(line: 106, column: 18, scope: !396)
!400 = !{!243, !243, i64 0}
!401 = !DILocation(line: 107, column: 4, scope: !396)
!402 = !DILocation(line: 108, column: 4, scope: !396)
!403 = distinct !{!403, !393, !404, !405, !406}
!404 = !DILocation(line: 109, column: 3, scope: !335)
!405 = !{!"llvm.loop.mustprogress"}
!406 = !{!"llvm.loop.unroll.disable"}
!407 = !DILocation(line: 111, column: 14, scope: !408)
!408 = distinct !DILexicalBlock(scope: !335, file: !36, line: 111, column: 7)
!409 = !DILocation(line: 111, column: 21, scope: !408)
!410 = !DILocation(line: 111, column: 27, scope: !408)
!411 = !DILocation(line: 111, column: 7, scope: !335)
!412 = !DILocation(line: 114, column: 29, scope: !335)
!413 = !DILocation(line: 114, column: 3, scope: !335)
!414 = !DILocation(line: 116, column: 19, scope: !335)
!415 = !DILocation(line: 116, column: 3, scope: !335)
!416 = !DILocation(line: 121, column: 52, scope: !343)
!417 = !DILocation(line: 121, column: 59, scope: !343)
!418 = !DILocation(line: 121, column: 29, scope: !343)
!419 = !DILocation(line: 0, scope: !343)
!420 = !DILocation(line: 122, column: 22, scope: !343)
!421 = !DILocation(line: 122, column: 47, scope: !343)
!422 = !DILocation(line: 122, column: 3, scope: !343)
!423 = !DILocation(line: 124, column: 14, scope: !424)
!424 = distinct !DILexicalBlock(scope: !343, file: !36, line: 124, column: 7)
!425 = !{!295, !245, i64 96}
!426 = !DILocation(line: 124, column: 18, scope: !424)
!427 = !DILocation(line: 124, column: 7, scope: !343)
!428 = !DILocation(line: 127, column: 17, scope: !343)
!429 = !DILocation(line: 127, column: 24, scope: !343)
!430 = !DILocation(line: 127, column: 3, scope: !343)
!431 = !DILocation(line: 129, column: 3, scope: !343)
!432 = !DILocation(line: 134, column: 1, scope: !321)
!433 = distinct !DISubprogram(name: "block_encoder_end", scope: !36, file: !36, line: 138, type: !94, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !434)
!434 = !{!435, !436, !437}
!435 = !DILocalVariable(name: "pcoder", arg: 1, scope: !433, file: !36, line: 138, type: !45)
!436 = !DILocalVariable(name: "allocator", arg: 2, scope: !433, file: !36, line: 138, type: !64)
!437 = !DILocalVariable(name: "coder", scope: !433, file: !36, line: 140, type: !220)
!438 = !DILocation(line: 0, scope: !433)
!439 = !DILocation(line: 141, column: 2, scope: !433)
!440 = !DILocation(line: 142, column: 2, scope: !433)
!441 = !DILocation(line: 144, column: 1, scope: !433)
!442 = distinct !DISubprogram(name: "block_encoder_update", scope: !36, file: !36, line: 148, type: !110, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !443)
!443 = !{!444, !445, !446, !447, !448}
!444 = !DILocalVariable(name: "pcoder", arg: 1, scope: !442, file: !36, line: 148, type: !45)
!445 = !DILocalVariable(name: "allocator", arg: 2, scope: !442, file: !36, line: 148, type: !64)
!446 = !DILocalVariable(name: "filters", arg: 3, scope: !442, file: !36, line: 149, type: !112)
!447 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !442, file: !36, line: 150, type: !112)
!448 = !DILocalVariable(name: "coder", scope: !442, file: !36, line: 152, type: !220)
!449 = !DILocation(line: 0, scope: !442)
!450 = !DILocation(line: 153, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !442, file: !36, line: 153, column: 6)
!452 = !DILocation(line: 153, column: 22, scope: !451)
!453 = !DILocation(line: 153, column: 6, scope: !442)
!454 = !DILocation(line: 156, column: 9, scope: !442)
!455 = !DILocation(line: 156, column: 2, scope: !442)
!456 = !DILocation(line: 158, column: 1, scope: !442)
!457 = !DISubprogram(name: "lzma_check_init", scope: !170, file: !170, line: 75, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460, !100}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!461 = !DISubprogram(name: "lzma_raw_encoder_init", scope: !462, file: !462, line: 23, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!462 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ddc4c6a58369644501ee0eefd7b6bf8f")
!463 = !DISubroutineType(types: !464)
!464 = !{!63, !231, !64, !112}
!465 = distinct !DISubprogram(name: "lzma_block_encoder", scope: !36, file: !36, line: 212, type: !466, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !492)
!466 = !DISubroutineType(types: !467)
!467 = !{!63, !468, !121}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !470, file: !4, line: 454, baseType: !81, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !470, file: !4, line: 455, baseType: !73, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !470, file: !4, line: 456, baseType: !50, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !470, file: !4, line: 458, baseType: !89, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !470, file: !4, line: 459, baseType: !73, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !470, file: !4, line: 460, baseType: !50, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !470, file: !4, line: 468, baseType: !64, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !470, file: !4, line: 471, baseType: !480, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !201)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !470, file: !4, line: 479, baseType: !72, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !470, file: !4, line: 480, baseType: !72, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !470, file: !4, line: 481, baseType: !72, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !470, file: !4, line: 482, baseType: !72, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !470, file: !4, line: 483, baseType: !50, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !470, file: !4, line: 484, baseType: !50, size: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !470, file: !4, line: 485, baseType: !73, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !470, file: !4, line: 486, baseType: !73, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !470, file: !4, line: 487, baseType: !151, size: 32, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !470, file: !4, line: 488, baseType: !151, size: 32, offset: 1056)
!492 = !{!493, !494, !495, !498}
!493 = !DILocalVariable(name: "strm", arg: 1, scope: !465, file: !36, line: 212, type: !468)
!494 = !DILocalVariable(name: "block", arg: 2, scope: !465, file: !36, line: 212, type: !121)
!495 = !DILocalVariable(name: "ret_", scope: !496, file: !36, line: 214, type: !339)
!496 = distinct !DILexicalBlock(scope: !497, file: !36, line: 214, column: 2)
!497 = distinct !DILexicalBlock(scope: !465, file: !36, line: 214, column: 2)
!498 = !DILocalVariable(name: "ret_", scope: !497, file: !36, line: 214, type: !339)
!499 = !DILocation(line: 0, scope: !465)
!500 = !DILocation(line: 214, column: 2, scope: !496)
!501 = !DILocation(line: 0, scope: !496)
!502 = !DILocation(line: 214, column: 2, scope: !503)
!503 = distinct !DILexicalBlock(scope: !496, file: !36, line: 214, column: 2)
!504 = !DILocation(line: 214, column: 2, scope: !497)
!505 = !{!506, !242, i64 56}
!506 = !{!"", !242, i64 0, !245, i64 8, !245, i64 16, !242, i64 24, !245, i64 32, !245, i64 40, !242, i64 48, !242, i64 56, !242, i64 64, !242, i64 72, !242, i64 80, !242, i64 88, !245, i64 96, !245, i64 104, !245, i64 112, !245, i64 120, !243, i64 128, !243, i64 132}
!507 = !{!506, !242, i64 48}
!508 = !DILocation(line: 0, scope: !497)
!509 = !DILocation(line: 214, column: 2, scope: !510)
!510 = distinct !DILexicalBlock(scope: !497, file: !36, line: 214, column: 2)
!511 = !DILocation(line: 214, column: 2, scope: !512)
!512 = distinct !DILexicalBlock(scope: !510, file: !36, line: 214, column: 2)
!513 = !DILocation(line: 216, column: 8, scope: !465)
!514 = !DILocation(line: 216, column: 18, scope: !465)
!515 = !DILocation(line: 216, column: 46, scope: !465)
!516 = !{!517, !517, i64 0}
!517 = !{!"_Bool", !243, i64 0}
!518 = !DILocation(line: 217, column: 2, scope: !465)
!519 = !DILocation(line: 217, column: 49, scope: !465)
!520 = !DILocation(line: 219, column: 2, scope: !465)
!521 = !DILocation(line: 220, column: 1, scope: !465)
!522 = !DISubprogram(name: "lzma_strm_init", scope: !41, file: !41, line: 220, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!523 = !DISubroutineType(types: !524)
!524 = !{!63, !468}
!525 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !468}
!528 = !DISubprogram(name: "lzma_check_update", scope: !170, file: !170, line: 78, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !460, !100, !81, !73}
!531 = !DISubprogram(name: "lzma_check_finish", scope: !170, file: !170, line: 82, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!532 = !DISubprogram(name: "lzma_check_size", scope: !26, file: !26, line: 95, type: !533, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!533 = !DISubroutineType(types: !534)
!534 = !{!127, !100}
!535 = !DISubprogram(name: "lzma_bufcpy", scope: !41, file: !41, line: 242, type: !536, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!536 = !DISubroutineType(types: !537)
!537 = !{!73, !80, !86, !73, !88, !86, !73}
!538 = !DISubprogram(name: "lzma_free", scope: !41, file: !41, line: 215, type: !539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !72, !64}
!541 = !DISubprogram(name: "lzma_next_filter_update", scope: !41, file: !41, line: 231, type: !463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !314)
