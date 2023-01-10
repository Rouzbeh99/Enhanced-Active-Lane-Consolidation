; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/alone_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/alone_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i32, i64, [13 x i8] }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_alone_encoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !231, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %options, metadata !232, metadata !DIExpression()), !dbg !238
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #5, !dbg !239
  call void @llvm.dbg.value(metadata i32 %call, metadata !233, metadata !DIExpression()), !dbg !240
  %cmp.not = icmp eq i32 %call, 0, !dbg !241
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !243
  %0 = load ptr, ptr %internal, align 8, !dbg !243, !tbaa !244
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !243
  %1 = load ptr, ptr %allocator, align 8, !dbg !243, !tbaa !250
  %call3 = tail call i32 @alone_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options), !dbg !243
  call void @llvm.dbg.value(metadata i32 %call3, metadata !237, metadata !DIExpression()), !dbg !251
  %cmp4.not = icmp eq i32 %call3, 0, !dbg !252
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !243

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #5, !dbg !254
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !256, !tbaa !244
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !257
  store i8 1, ptr %supported_actions, align 8, !dbg !258, !tbaa !259
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !261
  store i8 1, ptr %arrayidx14, align 1, !dbg !262, !tbaa !259
  br label %return, !dbg !263

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call3, %cleanup7 ], [ 0, %do.end10 ], !dbg !238
  ret i32 %retval.2, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !265 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @alone_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) #0 !dbg !269 {
entry:
  %filters = alloca [2 x %struct.lzma_filter_info_s], align 16
  call void @llvm.dbg.value(metadata ptr %next, metadata !274, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata ptr %options, metadata !276, metadata !DIExpression()), !dbg !294
  %init = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 2, !dbg !295
  %0 = load i64, ptr %init, align 8, !dbg !295, !tbaa !298
  %cmp.not = icmp eq i64 %0, ptrtoint (ptr @alone_encoder_init to i64), !dbg !295
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !300

if.then:                                          ; preds = %entry
  tail call void @lzma_next_end(ptr noundef nonnull %next, ptr noundef %allocator) #5, !dbg !295
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  store i64 ptrtoint (ptr @alone_encoder_init to i64), ptr %init, align 8, !dbg !300, !tbaa !298
  %1 = load ptr, ptr %next, align 8, !dbg !301, !tbaa !303
  %cmp2 = icmp eq ptr %1, null, !dbg !304
  br i1 %cmp2, label %if.then3, label %if.end15, !dbg !305

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @lzma_alloc(i64 noundef 96, ptr noundef %allocator) #5, !dbg !306
  store ptr %call, ptr %next, align 8, !dbg !308, !tbaa !303
  %cmp6 = icmp eq ptr %call, null, !dbg !309
  br i1 %cmp6, label %return, label %if.end8, !dbg !311

if.end8:                                          ; preds = %if.then3
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !312
  store ptr @alone_encode, ptr %code, align 8, !dbg !313, !tbaa !314
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !315
  store ptr @alone_encoder_end, ptr %end, align 8, !dbg !316, !tbaa !317
  store ptr null, ptr %call, align 8, !dbg !318, !tbaa.struct !319
  %.compoundliteral.sroa.2.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !318
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next10.sroa_idx, align 8, !dbg !318, !tbaa.struct !322
  %.compoundliteral.sroa.3.0.next10.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next10.sroa_idx, i8 0, i64 48, i1 false), !dbg !318
  %.pre = load ptr, ptr %next, align 8, !dbg !323, !tbaa !303
  br label %if.end15, !dbg !324

if.end15:                                         ; preds = %if.end8, %if.end
  %2 = phi ptr [ %.pre, %if.end8 ], [ %1, %if.end ], !dbg !323
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 1, !dbg !325
  store i32 0, ptr %sequence, align 8, !dbg !326, !tbaa !327
  %header_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 2, !dbg !329
  store i64 0, ptr %header_pos, align 8, !dbg !330, !tbaa !331
  %header = getelementptr inbounds %struct.lzma_coder_s, ptr %2, i64 0, i32 3, !dbg !332
  %call19 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef %options, ptr noundef nonnull %header) #5, !dbg !334
  br i1 %call19, label %return, label %if.end21, !dbg !335

if.end21:                                         ; preds = %if.end15
  %3 = load i32, ptr %options, align 8, !dbg !336, !tbaa !338
  %cmp22 = icmp ult i32 %3, 4096, !dbg !341
  br i1 %cmp22, label %return, label %if.end24, !dbg !342

if.end24:                                         ; preds = %if.end21
  %sub = add i32 %3, -1, !dbg !343
  call void @llvm.dbg.value(metadata i32 %sub, metadata !277, metadata !DIExpression()), !dbg !294
  %shr = lshr i32 %sub, 2, !dbg !344
  %or = or i32 %shr, %sub, !dbg !345
  call void @llvm.dbg.value(metadata i32 %or, metadata !277, metadata !DIExpression()), !dbg !294
  %shr26 = lshr i32 %or, 3, !dbg !346
  %or27 = or i32 %shr26, %or, !dbg !347
  call void @llvm.dbg.value(metadata i32 %or27, metadata !277, metadata !DIExpression()), !dbg !294
  %shr28 = lshr i32 %or27, 4, !dbg !348
  %or29 = or i32 %shr28, %or27, !dbg !349
  call void @llvm.dbg.value(metadata i32 %or29, metadata !277, metadata !DIExpression()), !dbg !294
  %shr30 = lshr i32 %or29, 8, !dbg !350
  %or31 = or i32 %shr30, %or29, !dbg !351
  call void @llvm.dbg.value(metadata i32 %or31, metadata !277, metadata !DIExpression()), !dbg !294
  %shr32 = lshr i32 %or31, 16, !dbg !352
  %or33 = or i32 %shr32, %or31, !dbg !353
  call void @llvm.dbg.value(metadata i32 %or33, metadata !277, metadata !DIExpression()), !dbg !294
  %cmp34.not = icmp eq i32 %or33, -1, !dbg !354
  %inc = add i32 %or33, 1
  %spec.select = select i1 %cmp34.not, i32 -1, i32 %inc, !dbg !356
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !277, metadata !DIExpression()), !dbg !294
  %4 = load ptr, ptr %next, align 8, !dbg !357, !tbaa !303
  %header38 = getelementptr inbounds %struct.lzma_coder_s, ptr %4, i64 0, i32 3, !dbg !358
  %add.ptr = getelementptr inbounds i8, ptr %header38, i64 1, !dbg !359
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !360, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !366, metadata !DIExpression()), !dbg !367
  %conv.i = trunc i32 %spec.select to i8, !dbg !369
  store i8 %conv.i, ptr %add.ptr, align 1, !dbg !370, !tbaa !371
  %shr.i = lshr i32 %spec.select, 8, !dbg !372
  %conv1.i = trunc i32 %shr.i to i8, !dbg !373
  %arrayidx2.i = getelementptr inbounds i8, ptr %header38, i64 2, !dbg !374
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !375, !tbaa !371
  %shr3.i = lshr i32 %spec.select, 16, !dbg !376
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !377
  %arrayidx5.i = getelementptr inbounds i8, ptr %header38, i64 3, !dbg !378
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !379, !tbaa !371
  %shr6.i = lshr i32 %spec.select, 24, !dbg !380
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !381
  %arrayidx8.i = getelementptr inbounds i8, ptr %header38, i64 4, !dbg !382
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !383, !tbaa !371
  %5 = load ptr, ptr %next, align 8, !dbg !384, !tbaa !303
  %header41 = getelementptr inbounds %struct.lzma_coder_s, ptr %5, i64 0, i32 3, !dbg !385
  %add.ptr44 = getelementptr inbounds i8, ptr %header41, i64 5, !dbg !386
  store i64 -1, ptr %add.ptr44, align 1, !dbg !387
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %filters) #5, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %filters, metadata !278, metadata !DIExpression()), !dbg !389
  store i64 0, ptr %filters, align 16, !dbg !390, !tbaa !391
  %init46 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 1, !dbg !390
  store ptr @lzma_lzma_encoder_init, ptr %init46, align 8, !dbg !390, !tbaa !393
  %options47 = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2, !dbg !390
  store ptr %options, ptr %options47, align 16, !dbg !390, !tbaa !394
  %arrayinit.element = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1, !dbg !395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %arrayinit.element, i8 0, i64 24, i1 false), !dbg !395
  %6 = load ptr, ptr %next, align 8, !dbg !396, !tbaa !303
  %call54 = call i32 @lzma_next_filter_init(ptr noundef %6, ptr noundef %allocator, ptr noundef nonnull %filters) #5, !dbg !397
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %filters) #5, !dbg !398
  br label %return

return:                                           ; preds = %if.end21, %if.end15, %if.then3, %if.end24
  %retval.0 = phi i32 [ %call54, %if.end24 ], [ 5, %if.then3 ], [ 8, %if.end15 ], [ 8, %if.end21 ], !dbg !294
  ret i32 %retval.0, !dbg !398
}

declare !dbg !399 void @lzma_end(ptr noundef) local_unnamed_addr #3

declare !dbg !402 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !405 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @alone_encode(ptr noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !408 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !410, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !411, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %in, metadata !412, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !413, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !414, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %out, metadata !415, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !416, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !417, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i32 %action, metadata !418, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i64, ptr %out_pos, align 8, !dbg !421, !tbaa !321
  %cmp19 = icmp ult i64 %0, %out_size, !dbg !422
  br i1 %cmp19, label %while.body.lr.ph, label %cleanup, !dbg !423

while.body.lr.ph:                                 ; preds = %entry
  %sequence = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1
  %header = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3
  %header_pos = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %.pre = load i32, ptr %sequence, align 8, !dbg !424, !tbaa !327
  br label %while.body, !dbg !423

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %1 = phi i32 [ %.pre, %while.body.lr.ph ], [ 1, %if.end ], !dbg !424
  switch i32 %1, label %cleanup [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !425

sw.bb:                                            ; preds = %while.body
  %call = tail call i64 @lzma_bufcpy(ptr noundef nonnull %header, ptr noundef nonnull %header_pos, i64 noundef 13, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size) #5, !dbg !426
  %2 = load i64, ptr %header_pos, align 8, !dbg !428, !tbaa !331
  %cmp2 = icmp ult i64 %2, 13, !dbg !430
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !431

if.end:                                           ; preds = %sw.bb
  store i32 1, ptr %sequence, align 8, !dbg !432, !tbaa !327
  %3 = load i64, ptr %out_pos, align 8, !dbg !421, !tbaa !321
  %cmp = icmp ult i64 %3, %out_size, !dbg !422
  br i1 %cmp, label %while.body, label %cleanup, !dbg !423, !llvm.loop !433

sw.bb4:                                           ; preds = %while.body
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !437
  %4 = load ptr, ptr %code, align 8, !dbg !437, !tbaa !438
  %5 = load ptr, ptr %pcoder, align 8, !dbg !439, !tbaa !440
  %call7 = tail call i32 %4(ptr noundef %5, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #5, !dbg !441
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %sw.bb, %while.body, %if.end, %entry, %sw.bb4
  %retval.0 = phi i32 [ %call7, %sw.bb4 ], [ 0, %entry ], [ 0, %sw.bb ], [ 11, %while.body ], [ 0, %if.end ], !dbg !420
  ret i32 %retval.0, !dbg !443
}

; Function Attrs: nounwind uwtable
define internal void @alone_encoder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !444 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !447, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !448, metadata !DIExpression()), !dbg !449
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !450
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !451
  ret void, !dbg !452
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare !dbg !453 zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @lzma_lzma_encoder_init(ptr noundef, ptr noundef, ptr noundef) #3

declare !dbg !457 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !458 i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !461 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !160, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/alone_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "9ce5b2abad8b3bd39d3b362b1a2c7b9d")
!2 = !{!3, !19, !25, !32, !131, !134, !139, !146}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 187, baseType: !5, size: 32, elements: !124)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !33, line: 179, size: 704, elements: !35)
!35 = !{!36, !116, !117, !118, !123}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !33, line: 181, baseType: !37, size: 512)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !33, line: 80, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !33, line: 124, size: 512, elements: !39)
!39 = !{!40, !43, !51, !54, !87, !92, !99, !104}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !38, file: !33, line: 126, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !33, line: 78, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !33, line: 130, baseType: !44, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !45, line: 63, baseType: !46)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !47, line: 27, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !49, line: 45, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !38, file: !33, line: 136, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !53, line: 90, baseType: !50)
!53 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !38, file: !33, line: 139, baseType: !55, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !33, line: 94, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !41, !60, !76, !82, !69, !84, !82, !69, !86}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !63)
!63 = !{!64, !71, !75}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !62, file: !4, line: 376, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !68, !69, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !50)
!70 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !62, file: !4, line: 390, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !68, !68}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !62, file: !4, line: 401, baseType: !68, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !47, line: 24, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !49, line: 38, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !38, file: !33, line: 144, baseType: !88, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !33, line: 102, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !41, !60}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !38, file: !33, line: 148, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !38, file: !33, line: 152, baseType: !100, size: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!59, !41, !103, !103, !46}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !38, file: !33, line: 157, baseType: !105, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!59, !41, !60, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !111, line: 65, baseType: !112)
!111 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 43, size: 128, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !112, file: !111, line: 54, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !112, file: !111, line: 63, baseType: !68, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !34, file: !33, line: 194, baseType: !32, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !34, file: !33, line: 199, baseType: !69, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !34, file: !33, line: 202, baseType: !119, size: 32, offset: 640)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !121)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !{!122}
!122 = !DISubrange(count: 4)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !34, file: !33, line: 206, baseType: !120, size: 8, offset: 672)
!124 = !{!125, !126, !127, !128, !129, !130}
!125 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!126 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!127 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!128 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!129 = !DIEnumerator(name: "ISEQ_END", value: 4)
!130 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 138, baseType: !5, size: 32, elements: !136)
!135 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!136 = !{!137, !138}
!137 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!138 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !135, line: 58, baseType: !5, size: 32, elements: !140)
!140 = !{!141, !142, !143, !144, !145}
!141 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!142 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!143 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!144 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!145 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !148, file: !147, line: 23, baseType: !5, size: 32, elements: !157)
!147 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/alone_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9ce5b2abad8b3bd39d3b362b1a2c7b9d")
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !147, line: 20, size: 768, elements: !149)
!149 = !{!150, !151, !152, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !147, line: 21, baseType: !37, size: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !148, file: !147, line: 26, baseType: !146, size: 32, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "header_pos", scope: !148, file: !147, line: 28, baseType: !69, size: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !148, file: !147, line: 29, baseType: !154, size: 104, offset: 640)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 104, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 13)
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "SEQ_HEADER", value: 0)
!159 = !DIEnumerator(name: "SEQ_CODE", value: 1)
!160 = !{!52, !68, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!162 = !{i32 7, !"Dwarf Version", i32 5}
!163 = !{i32 2, !"Debug Info Version", i32 3}
!164 = !{i32 1, !"wchar_size", i32 4}
!165 = !{i32 7, !"PIC Level", i32 2}
!166 = !{i32 7, !"PIE Level", i32 2}
!167 = !{i32 7, !"uwtable", i32 2}
!168 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!169 = distinct !DISubprogram(name: "lzma_alone_encoder", scope: !147, file: !147, line: 151, type: !170, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!170 = !DISubroutineType(types: !171)
!171 = !{!59, !172, !197}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181, !182, !183, !186, !187, !188, !189, !190, !191, !192, !193, !194, !196}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !174, file: !4, line: 454, baseType: !77, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !174, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !174, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !174, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !174, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !174, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !174, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !174, file: !4, line: 471, baseType: !184, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !174, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !174, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !174, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !174, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !174, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !174, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !174, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !174, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !174, file: !4, line: 487, baseType: !195, size: 32, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !174, file: !4, line: 488, baseType: !195, size: 32, offset: 1056)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !135, line: 399, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 185, size: 896, elements: !201)
!201 = !{!202, !205, !206, !207, !208, !209, !210, !212, !213, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !200, file: !135, line: 217, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !200, file: !135, line: 240, baseType: !77, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !200, file: !135, line: 254, baseType: !203, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !200, file: !135, line: 281, baseType: !203, size: 32, offset: 160)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !200, file: !135, line: 293, baseType: !203, size: 32, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !200, file: !135, line: 316, baseType: !203, size: 32, offset: 224)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !200, file: !135, line: 322, baseType: !211, size: 32, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !135, line: 155, baseType: !134)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !200, file: !135, line: 342, baseType: !203, size: 32, offset: 288)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !200, file: !135, line: 345, baseType: !214, size: 32, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !135, line: 111, baseType: !139)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !200, file: !135, line: 375, baseType: !203, size: 32, offset: 352)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !200, file: !135, line: 384, baseType: !203, size: 32, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !200, file: !135, line: 385, baseType: !203, size: 32, offset: 416)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !200, file: !135, line: 386, baseType: !203, size: 32, offset: 448)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !200, file: !135, line: 387, baseType: !203, size: 32, offset: 480)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !200, file: !135, line: 388, baseType: !203, size: 32, offset: 512)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !200, file: !135, line: 389, baseType: !203, size: 32, offset: 544)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !200, file: !135, line: 390, baseType: !203, size: 32, offset: 576)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !200, file: !135, line: 391, baseType: !203, size: 32, offset: 608)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !200, file: !135, line: 392, baseType: !195, size: 32, offset: 640)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !200, file: !135, line: 393, baseType: !195, size: 32, offset: 672)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !200, file: !135, line: 394, baseType: !195, size: 32, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !200, file: !135, line: 395, baseType: !195, size: 32, offset: 736)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !200, file: !135, line: 396, baseType: !68, size: 64, offset: 768)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !200, file: !135, line: 397, baseType: !68, size: 64, offset: 832)
!230 = !{!231, !232, !233, !237}
!231 = !DILocalVariable(name: "strm", arg: 1, scope: !169, file: !147, line: 151, type: !172)
!232 = !DILocalVariable(name: "options", arg: 2, scope: !169, file: !147, line: 151, type: !197)
!233 = !DILocalVariable(name: "ret_", scope: !234, file: !147, line: 153, type: !236)
!234 = distinct !DILexicalBlock(scope: !235, file: !147, line: 153, column: 2)
!235 = distinct !DILexicalBlock(scope: !169, file: !147, line: 153, column: 2)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!237 = !DILocalVariable(name: "ret_", scope: !235, file: !147, line: 153, type: !236)
!238 = !DILocation(line: 0, scope: !169)
!239 = !DILocation(line: 153, column: 2, scope: !234)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 153, column: 2, scope: !242)
!242 = distinct !DILexicalBlock(scope: !234, file: !147, line: 153, column: 2)
!243 = !DILocation(line: 153, column: 2, scope: !235)
!244 = !{!245, !246, i64 56}
!245 = !{!"", !246, i64 0, !249, i64 8, !249, i64 16, !246, i64 24, !249, i64 32, !249, i64 40, !246, i64 48, !246, i64 56, !246, i64 64, !246, i64 72, !246, i64 80, !246, i64 88, !249, i64 96, !249, i64 104, !249, i64 112, !249, i64 120, !247, i64 128, !247, i64 132}
!246 = !{!"any pointer", !247, i64 0}
!247 = !{!"omnipotent char", !248, i64 0}
!248 = !{!"Simple C/C++ TBAA"}
!249 = !{!"long", !247, i64 0}
!250 = !{!245, !246, i64 48}
!251 = !DILocation(line: 0, scope: !235)
!252 = !DILocation(line: 153, column: 2, scope: !253)
!253 = distinct !DILexicalBlock(scope: !235, file: !147, line: 153, column: 2)
!254 = !DILocation(line: 153, column: 2, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !147, line: 153, column: 2)
!256 = !DILocation(line: 155, column: 8, scope: !169)
!257 = !DILocation(line: 155, column: 18, scope: !169)
!258 = !DILocation(line: 155, column: 46, scope: !169)
!259 = !{!260, !260, i64 0}
!260 = !{!"_Bool", !247, i64 0}
!261 = !DILocation(line: 156, column: 2, scope: !169)
!262 = !DILocation(line: 156, column: 49, scope: !169)
!263 = !DILocation(line: 158, column: 2, scope: !169)
!264 = !DILocation(line: 159, column: 1, scope: !169)
!265 = !DISubprogram(name: "lzma_strm_init", scope: !33, file: !33, line: 220, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!59, !172}
!268 = !{}
!269 = distinct !DISubprogram(name: "alone_encoder_init", scope: !147, file: !147, line: 80, type: !270, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!270 = !DISubroutineType(types: !271)
!271 = !{!59, !272, !60, !197}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!273 = !{!274, !275, !276, !277, !278}
!274 = !DILocalVariable(name: "next", arg: 1, scope: !269, file: !147, line: 80, type: !272)
!275 = !DILocalVariable(name: "allocator", arg: 2, scope: !269, file: !147, line: 80, type: !60)
!276 = !DILocalVariable(name: "options", arg: 3, scope: !269, file: !147, line: 81, type: !197)
!277 = !DILocalVariable(name: "d", scope: !269, file: !147, line: 112, type: !203)
!278 = !DILocalVariable(name: "filters", scope: !269, file: !147, line: 127, type: !279)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 384, elements: !292)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !33, line: 82, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !33, line: 109, size: 192, elements: !283)
!283 = !{!284, !285, !291}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !282, file: !33, line: 112, baseType: !44, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !282, file: !33, line: 116, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !33, line: 86, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!59, !272, !60, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !282, file: !33, line: 119, baseType: !68, size: 64, offset: 128)
!292 = !{!293}
!293 = !DISubrange(count: 2)
!294 = !DILocation(line: 0, scope: !269)
!295 = !DILocation(line: 83, column: 2, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !147, line: 83, column: 2)
!297 = distinct !DILexicalBlock(scope: !269, file: !147, line: 83, column: 2)
!298 = !{!299, !249, i64 16}
!299 = !{!"lzma_next_coder_s", !246, i64 0, !249, i64 8, !249, i64 16, !246, i64 24, !246, i64 32, !246, i64 40, !246, i64 48, !246, i64 56}
!300 = !DILocation(line: 83, column: 2, scope: !297)
!301 = !DILocation(line: 85, column: 12, scope: !302)
!302 = distinct !DILexicalBlock(scope: !269, file: !147, line: 85, column: 6)
!303 = !{!299, !246, i64 0}
!304 = !DILocation(line: 85, column: 18, scope: !302)
!305 = !DILocation(line: 85, column: 6, scope: !269)
!306 = !DILocation(line: 86, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !147, line: 85, column: 27)
!308 = !DILocation(line: 86, column: 15, scope: !307)
!309 = !DILocation(line: 87, column: 19, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !147, line: 87, column: 7)
!311 = !DILocation(line: 87, column: 7, scope: !307)
!312 = !DILocation(line: 90, column: 9, scope: !307)
!313 = !DILocation(line: 90, column: 14, scope: !307)
!314 = !{!299, !246, i64 24}
!315 = !DILocation(line: 91, column: 9, scope: !307)
!316 = !DILocation(line: 91, column: 13, scope: !307)
!317 = !{!299, !246, i64 32}
!318 = !DILocation(line: 92, column: 47, scope: !307)
!319 = !{i64 0, i64 8, !320, i64 8, i64 8, !321, i64 16, i64 8, !321, i64 24, i64 8, !320, i64 32, i64 8, !320, i64 40, i64 8, !320, i64 48, i64 8, !320, i64 56, i64 8, !320}
!320 = !{!246, !246, i64 0}
!321 = !{!249, !249, i64 0}
!322 = !{i64 0, i64 8, !321, i64 8, i64 8, !321, i64 16, i64 8, !320, i64 24, i64 8, !320, i64 32, i64 8, !320, i64 40, i64 8, !320, i64 48, i64 8, !320}
!323 = !DILocation(line: 96, column: 31, scope: !269)
!324 = !DILocation(line: 93, column: 2, scope: !307)
!325 = !DILocation(line: 96, column: 39, scope: !269)
!326 = !DILocation(line: 96, column: 48, scope: !269)
!327 = !{!328, !247, i64 64}
!328 = !{!"lzma_coder_s", !299, i64 0, !247, i64 64, !249, i64 72, !247, i64 80}
!329 = !DILocation(line: 97, column: 39, scope: !269)
!330 = !DILocation(line: 97, column: 50, scope: !269)
!331 = !{!328, !249, i64 72}
!332 = !DILocation(line: 101, column: 76, scope: !333)
!333 = distinct !DILexicalBlock(scope: !269, file: !147, line: 101, column: 6)
!334 = !DILocation(line: 101, column: 6, scope: !333)
!335 = !DILocation(line: 101, column: 6, scope: !269)
!336 = !DILocation(line: 105, column: 15, scope: !337)
!337 = distinct !DILexicalBlock(scope: !269, file: !147, line: 105, column: 6)
!338 = !{!339, !340, i64 0}
!339 = !{!"", !340, i64 0, !246, i64 8, !340, i64 16, !340, i64 20, !340, i64 24, !340, i64 28, !247, i64 32, !340, i64 36, !247, i64 40, !340, i64 44, !340, i64 48, !340, i64 52, !340, i64 56, !340, i64 60, !340, i64 64, !340, i64 68, !340, i64 72, !340, i64 76, !247, i64 80, !247, i64 84, !247, i64 88, !247, i64 92, !246, i64 96, !246, i64 104}
!340 = !{!"int", !247, i64 0}
!341 = !DILocation(line: 105, column: 25, scope: !337)
!342 = !DILocation(line: 105, column: 6, scope: !269)
!343 = !DILocation(line: 112, column: 34, scope: !269)
!344 = !DILocation(line: 113, column: 9, scope: !269)
!345 = !DILocation(line: 113, column: 4, scope: !269)
!346 = !DILocation(line: 114, column: 9, scope: !269)
!347 = !DILocation(line: 114, column: 4, scope: !269)
!348 = !DILocation(line: 115, column: 9, scope: !269)
!349 = !DILocation(line: 115, column: 4, scope: !269)
!350 = !DILocation(line: 116, column: 9, scope: !269)
!351 = !DILocation(line: 116, column: 4, scope: !269)
!352 = !DILocation(line: 117, column: 9, scope: !269)
!353 = !DILocation(line: 117, column: 4, scope: !269)
!354 = !DILocation(line: 118, column: 8, scope: !355)
!355 = distinct !DILexicalBlock(scope: !269, file: !147, line: 118, column: 6)
!356 = !DILocation(line: 118, column: 6, scope: !269)
!357 = !DILocation(line: 121, column: 51, scope: !269)
!358 = !DILocation(line: 121, column: 59, scope: !269)
!359 = !DILocation(line: 121, column: 66, scope: !269)
!360 = !DILocalVariable(name: "buf", arg: 1, scope: !361, file: !362, line: 351, type: !85)
!361 = distinct !DISubprogram(name: "unaligned_write32le", scope: !362, file: !362, line: 351, type: !363, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !365)
!362 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!363 = !DISubroutineType(types: !364)
!364 = !{null, !85, !203}
!365 = !{!360, !366}
!366 = !DILocalVariable(name: "num", arg: 2, scope: !361, file: !362, line: 351, type: !203)
!367 = !DILocation(line: 0, scope: !361, inlinedAt: !368)
!368 = distinct !DILocation(line: 121, column: 2, scope: !269)
!369 = !DILocation(line: 353, column: 11, scope: !361, inlinedAt: !368)
!370 = !DILocation(line: 353, column: 9, scope: !361, inlinedAt: !368)
!371 = !{!247, !247, i64 0}
!372 = !DILocation(line: 354, column: 15, scope: !361, inlinedAt: !368)
!373 = !DILocation(line: 354, column: 11, scope: !361, inlinedAt: !368)
!374 = !DILocation(line: 354, column: 2, scope: !361, inlinedAt: !368)
!375 = !DILocation(line: 354, column: 9, scope: !361, inlinedAt: !368)
!376 = !DILocation(line: 355, column: 15, scope: !361, inlinedAt: !368)
!377 = !DILocation(line: 355, column: 11, scope: !361, inlinedAt: !368)
!378 = !DILocation(line: 355, column: 2, scope: !361, inlinedAt: !368)
!379 = !DILocation(line: 355, column: 9, scope: !361, inlinedAt: !368)
!380 = !DILocation(line: 356, column: 15, scope: !361, inlinedAt: !368)
!381 = !DILocation(line: 356, column: 11, scope: !361, inlinedAt: !368)
!382 = !DILocation(line: 356, column: 2, scope: !361, inlinedAt: !368)
!383 = !DILocation(line: 356, column: 9, scope: !361, inlinedAt: !368)
!384 = !DILocation(line: 124, column: 38, scope: !269)
!385 = !DILocation(line: 124, column: 46, scope: !269)
!386 = !DILocation(line: 124, column: 57, scope: !269)
!387 = !DILocation(line: 124, column: 2, scope: !269)
!388 = !DILocation(line: 127, column: 2, scope: !269)
!389 = !DILocation(line: 127, column: 25, scope: !269)
!390 = !DILocation(line: 128, column: 3, scope: !269)
!391 = !{!392, !249, i64 0}
!392 = !{!"lzma_filter_info_s", !249, i64 0, !246, i64 8, !246, i64 16}
!393 = !{!392, !246, i64 8}
!394 = !{!392, !246, i64 16}
!395 = !DILocation(line: 127, column: 38, scope: !269)
!396 = !DILocation(line: 136, column: 61, scope: !269)
!397 = !DILocation(line: 136, column: 9, scope: !269)
!398 = !DILocation(line: 137, column: 1, scope: !269)
!399 = !DISubprogram(name: "lzma_end", scope: !4, file: !4, line: 546, type: !400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !172}
!402 = !DISubprogram(name: "lzma_next_end", scope: !33, file: !33, line: 237, type: !403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !272, !60}
!405 = !DISubprogram(name: "lzma_alloc", scope: !33, file: !33, line: 211, type: !406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!406 = !DISubroutineType(types: !407)
!407 = !{!68, !69, !60}
!408 = distinct !DISubprogram(name: "alone_encode", scope: !147, file: !147, line: 34, type: !57, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!409 = !{!410, !411, !412, !413, !414, !415, !416, !417, !418, !419}
!410 = !DILocalVariable(name: "pcoder", arg: 1, scope: !408, file: !147, line: 34, type: !41)
!411 = !DILocalVariable(name: "allocator", arg: 2, scope: !408, file: !147, line: 35, type: !60)
!412 = !DILocalVariable(name: "in", arg: 3, scope: !408, file: !147, line: 36, type: !76)
!413 = !DILocalVariable(name: "in_pos", arg: 4, scope: !408, file: !147, line: 36, type: !82)
!414 = !DILocalVariable(name: "in_size", arg: 5, scope: !408, file: !147, line: 37, type: !69)
!415 = !DILocalVariable(name: "out", arg: 6, scope: !408, file: !147, line: 37, type: !84)
!416 = !DILocalVariable(name: "out_pos", arg: 7, scope: !408, file: !147, line: 38, type: !82)
!417 = !DILocalVariable(name: "out_size", arg: 8, scope: !408, file: !147, line: 38, type: !69)
!418 = !DILocalVariable(name: "action", arg: 9, scope: !408, file: !147, line: 39, type: !86)
!419 = !DILocalVariable(name: "coder", scope: !408, file: !147, line: 41, type: !161)
!420 = !DILocation(line: 0, scope: !408)
!421 = !DILocation(line: 42, column: 9, scope: !408)
!422 = !DILocation(line: 42, column: 18, scope: !408)
!423 = !DILocation(line: 42, column: 2, scope: !408)
!424 = !DILocation(line: 43, column: 17, scope: !408)
!425 = !DILocation(line: 43, column: 2, scope: !408)
!426 = !DILocation(line: 45, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !408, file: !147, line: 43, column: 27)
!428 = !DILocation(line: 48, column: 14, scope: !429)
!429 = distinct !DILexicalBlock(scope: !427, file: !147, line: 48, column: 7)
!430 = !DILocation(line: 48, column: 25, scope: !429)
!431 = !DILocation(line: 48, column: 7, scope: !427)
!432 = !DILocation(line: 51, column: 19, scope: !427)
!433 = distinct !{!433, !423, !434, !435, !436}
!434 = !DILocation(line: 62, column: 2, scope: !408)
!435 = !{!"llvm.loop.mustprogress"}
!436 = !{!"llvm.loop.unroll.disable"}
!437 = !DILocation(line: 55, column: 22, scope: !427)
!438 = !{!328, !246, i64 24}
!439 = !DILocation(line: 55, column: 39, scope: !427)
!440 = !{!328, !246, i64 0}
!441 = !DILocation(line: 55, column: 10, scope: !427)
!442 = !DILocation(line: 55, column: 3, scope: !427)
!443 = !DILocation(line: 65, column: 1, scope: !408)
!444 = distinct !DISubprogram(name: "alone_encoder_end", scope: !147, file: !147, line: 69, type: !90, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!445 = !{!446, !447, !448}
!446 = !DILocalVariable(name: "pcoder", arg: 1, scope: !444, file: !147, line: 69, type: !41)
!447 = !DILocalVariable(name: "allocator", arg: 2, scope: !444, file: !147, line: 69, type: !60)
!448 = !DILocalVariable(name: "coder", scope: !444, file: !147, line: 71, type: !161)
!449 = !DILocation(line: 0, scope: !444)
!450 = !DILocation(line: 72, column: 2, scope: !444)
!451 = !DILocation(line: 73, column: 2, scope: !444)
!452 = !DILocation(line: 75, column: 1, scope: !444)
!453 = !DISubprogram(name: "lzma_lzma_lclppb_encode", scope: !454, file: !454, line: 30, type: !455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!454 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f040cedafb3694586d90cdd6536f6965")
!455 = !DISubroutineType(types: !456)
!456 = !{!120, !197, !85}
!457 = !DISubprogram(name: "lzma_next_filter_init", scope: !33, file: !33, line: 226, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!458 = !DISubprogram(name: "lzma_bufcpy", scope: !33, file: !33, line: 242, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!459 = !DISubroutineType(types: !460)
!460 = !{!69, !76, !82, !69, !84, !82, !69}
!461 = !DISubprogram(name: "lzma_free", scope: !33, file: !33, line: 215, type: !462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !268)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !68, !60}
