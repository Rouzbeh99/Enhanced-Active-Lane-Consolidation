; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/delta/delta_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !45 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %filters, metadata !142, metadata !DIExpression()), !dbg !143
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 3, !dbg !144
  store ptr @delta_encode, ptr %code, align 8, !dbg !145, !tbaa !146
  %update = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 7, !dbg !152
  store ptr @delta_encoder_update, ptr %update, align 8, !dbg !153, !tbaa !154
  %call = tail call i32 @lzma_delta_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) #4, !dbg !155
  ret i32 %call, !dbg !156
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encode(ptr nocapture noundef %pcoder, ptr noundef %allocator, ptr noalias noundef %in, ptr noalias noundef %in_pos, i64 noundef %in_size, ptr noalias noundef %out, ptr noalias noundef %out_pos, i64 noundef %out_size, i32 noundef %action) #0 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !159, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !160, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %in, metadata !161, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !162, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !163, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %out, metadata !164, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !165, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !166, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata i32 %action, metadata !167, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !168, metadata !DIExpression()), !dbg !189
  %code = getelementptr inbounds %struct.lzma_next_coder_s, ptr %pcoder, i64 0, i32 3, !dbg !190
  %0 = load ptr, ptr %code, align 8, !dbg !190, !tbaa !191
  %cmp = icmp eq ptr %0, null, !dbg !193
  br i1 %cmp, label %if.then, label %if.else, !dbg !194

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %in_pos, align 8, !dbg !195, !tbaa !196
  %sub = sub i64 %in_size, %1, !dbg !197
  call void @llvm.dbg.value(metadata i64 %sub, metadata !181, metadata !DIExpression()), !dbg !198
  %2 = load i64, ptr %out_pos, align 8, !dbg !199, !tbaa !196
  %sub1 = sub i64 %out_size, %2, !dbg !200
  call void @llvm.dbg.value(metadata i64 %sub1, metadata !185, metadata !DIExpression()), !dbg !198
  %3 = tail call i64 @llvm.umin.i64(i64 %sub, i64 %sub1), !dbg !201
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()), !dbg !198
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !202
  %add.ptr3 = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !203
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204), !dbg !207
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208), !dbg !207
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !210, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !215, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !216, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %3, metadata !217, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !218, metadata !DIExpression()), !dbg !225
  %distance1.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !227
  %4 = load i64, ptr %distance1.i, align 8, !dbg !227, !tbaa !228, !noalias !229
  call void @llvm.dbg.value(metadata i64 %4, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !230
  %cmp22.not.i = icmp eq i64 %3, 0, !dbg !231
  br i1 %cmp22.not.i, label %copy_and_encode.exit, label %for.body.lr.ph.i, !dbg !232

for.body.lr.ph.i:                                 ; preds = %if.then
  %pos.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %pos.promoted.i = load i8, ptr %pos.i, align 8, !tbaa !233, !noalias !229
  br label %for.body.i, !dbg !232

for.cond.for.cond.cleanup_crit_edge.i:            ; preds = %for.body.i
  store i8 %dec.i, ptr %pos.i, align 8, !dbg !234, !tbaa !233, !noalias !229
  br label %copy_and_encode.exit, !dbg !232

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %dec24.i = phi i8 [ %pos.promoted.i, %for.body.lr.ph.i ], [ %dec.i, %for.body.i ], !dbg !230
  %i.023.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.023.i, metadata !220, metadata !DIExpression()), !dbg !230
  %conv.i = zext i8 %dec24.i to i64, !dbg !235
  %add.i = add i64 %4, %conv.i, !dbg !236
  %and.i = and i64 %add.i, 255, !dbg !237
  %arrayidx.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %and.i, !dbg !238
  %5 = load i8, ptr %arrayidx.i, align 1, !dbg !238, !tbaa !239, !noalias !229
  call void @llvm.dbg.value(metadata i8 %5, metadata !222, metadata !DIExpression()), !dbg !234
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr, i64 %i.023.i, !dbg !240
  %6 = load i8, ptr %arrayidx2.i, align 1, !dbg !240, !tbaa !239, !alias.scope !204, !noalias !208
  %dec.i = add i8 %dec24.i, -1, !dbg !241
  %arrayidx7.i = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %conv.i, !dbg !242
  store i8 %6, ptr %arrayidx7.i, align 1, !dbg !243, !tbaa !239, !noalias !229
  %sub.i = sub i8 %6, %5, !dbg !244
  %arrayidx12.i = getelementptr inbounds i8, ptr %add.ptr3, i64 %i.023.i, !dbg !245
  store i8 %sub.i, ptr %arrayidx12.i, align 1, !dbg !246, !tbaa !239, !alias.scope !208, !noalias !204
  %inc.i = add nuw i64 %i.023.i, 1, !dbg !247
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !220, metadata !DIExpression()), !dbg !230
  %exitcond.not.i = icmp eq i64 %inc.i, %3, !dbg !231
  br i1 %exitcond.not.i, label %for.cond.for.cond.cleanup_crit_edge.i, label %for.body.i, !dbg !232, !llvm.loop !248

copy_and_encode.exit:                             ; preds = %if.then, %for.cond.for.cond.cleanup_crit_edge.i
  %add = add i64 %3, %1, !dbg !252
  store i64 %add, ptr %in_pos, align 8, !dbg !252, !tbaa !196
  %add4 = add i64 %3, %2, !dbg !253
  store i64 %add4, ptr %out_pos, align 8, !dbg !253, !tbaa !196
  %cmp5.not = icmp eq i32 %action, 0, !dbg !254
  br i1 %cmp5.not, label %if.end, label %land.rhs, !dbg !255

land.rhs:                                         ; preds = %copy_and_encode.exit
  %cmp6 = icmp eq i64 %add, %in_size, !dbg !256
  %phi.cast = zext i1 %cmp6 to i32
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %out_pos, align 8, !dbg !257, !tbaa !196
  call void @llvm.dbg.value(metadata i64 %7, metadata !187, metadata !DIExpression()), !dbg !258
  %8 = load ptr, ptr %pcoder, align 8, !dbg !259, !tbaa !260
  %call = tail call i32 %0(ptr noundef %8, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size, ptr noundef %out, ptr noundef nonnull %out_pos, i64 noundef %out_size, i32 noundef %action) #4, !dbg !261
  call void @llvm.dbg.value(metadata i32 %call, metadata !180, metadata !DIExpression()), !dbg !189
  %add.ptr12 = getelementptr inbounds i8, ptr %out, i64 %7, !dbg !262
  %9 = load i64, ptr %out_pos, align 8, !dbg !263, !tbaa !196
  %sub13 = sub i64 %9, %7, !dbg !264
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !265, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %add.ptr12, metadata !270, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i64 %sub13, metadata !271, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !272, metadata !DIExpression()), !dbg !279
  %distance1.i39 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 1, !dbg !281
  %10 = load i64, ptr %distance1.i39, align 8, !dbg !281, !tbaa !228
  call void @llvm.dbg.value(metadata i64 %10, metadata !273, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i64 0, metadata !274, metadata !DIExpression()), !dbg !282
  %cmp20.not.i = icmp eq i64 %9, %7, !dbg !283
  br i1 %cmp20.not.i, label %if.end, label %for.body.lr.ph.i41, !dbg !284

for.body.lr.ph.i41:                               ; preds = %if.else
  %pos.i40 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 2
  %pos.i40.promoted = load i8, ptr %pos.i40, align 8, !tbaa !233
  br label %for.body.i52, !dbg !284

for.body.i52:                                     ; preds = %for.body.i52, %for.body.lr.ph.i41
  %dec.i4753 = phi i8 [ %pos.i40.promoted, %for.body.lr.ph.i41 ], [ %dec.i47, %for.body.i52 ], !dbg !282
  %i.021.i = phi i64 [ 0, %for.body.lr.ph.i41 ], [ %inc.i50, %for.body.i52 ]
  call void @llvm.dbg.value(metadata i64 %i.021.i, metadata !274, metadata !DIExpression()), !dbg !282
  %conv.i42 = zext i8 %dec.i4753 to i64, !dbg !285
  %add.i43 = add i64 %10, %conv.i42, !dbg !286
  %and.i44 = and i64 %add.i43, 255, !dbg !287
  %arrayidx.i45 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %and.i44, !dbg !288
  %11 = load i8, ptr %arrayidx.i45, align 1, !dbg !288, !tbaa !239
  call void @llvm.dbg.value(metadata i8 %11, metadata !276, metadata !DIExpression()), !dbg !289
  %arrayidx2.i46 = getelementptr inbounds i8, ptr %add.ptr12, i64 %i.021.i, !dbg !290
  %12 = load i8, ptr %arrayidx2.i46, align 1, !dbg !290, !tbaa !239
  %dec.i47 = add i8 %dec.i4753, -1, !dbg !291
  %arrayidx7.i48 = getelementptr inbounds %struct.lzma_coder_s, ptr %pcoder, i64 0, i32 3, i64 %conv.i42, !dbg !292
  store i8 %12, ptr %arrayidx7.i48, align 1, !dbg !293, !tbaa !239
  %sub.i49 = sub i8 %12, %11, !dbg !294
  store i8 %sub.i49, ptr %arrayidx2.i46, align 1, !dbg !294, !tbaa !239
  %inc.i50 = add nuw i64 %i.021.i, 1, !dbg !295
  call void @llvm.dbg.value(metadata i64 %inc.i50, metadata !274, metadata !DIExpression()), !dbg !282
  %exitcond.not.i51 = icmp eq i64 %inc.i50, %sub13, !dbg !283
  br i1 %exitcond.not.i51, label %if.end.loopexit, label %for.body.i52, !dbg !284, !llvm.loop !296

if.end.loopexit:                                  ; preds = %for.body.i52
  store i8 %dec.i47, ptr %pos.i40, align 8, !dbg !289, !tbaa !233
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.end.loopexit, %if.else, %copy_and_encode.exit, %land.rhs
  %ret.0 = phi i32 [ 0, %copy_and_encode.exit ], [ %phi.cast, %land.rhs ], [ %call, %if.else ], [ %call, %if.end.loopexit ], !dbg !299
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !180, metadata !DIExpression()), !dbg !189
  ret i32 %ret.0, !dbg !298
}

; Function Attrs: nounwind uwtable
define internal i32 @delta_encoder_update(ptr noundef %pcoder, ptr noundef %allocator, ptr nocapture noundef readnone %filters_null, ptr noundef %reversed_filters) #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !302, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %filters_null, metadata !304, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %reversed_filters, metadata !305, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !306, metadata !DIExpression()), !dbg !307
  %add.ptr = getelementptr inbounds %struct.lzma_filter, ptr %reversed_filters, i64 1, !dbg !308
  %call = tail call i32 @lzma_next_filter_update(ptr noundef %pcoder, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #4, !dbg !309
  ret i32 %call, !dbg !310
}

declare !dbg !311 i32 @lzma_delta_coder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_props_encode(ptr noundef %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 !dbg !313 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !319, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata ptr %out, metadata !320, metadata !DIExpression()), !dbg !338
  %call = tail call i64 @lzma_delta_coder_memusage(ptr noundef %options) #4, !dbg !339
  %cmp = icmp eq i64 %call, -1, !dbg !341
  br i1 %cmp, label %return, label %if.end, !dbg !342

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %options, metadata !321, metadata !DIExpression()), !dbg !338
  %dist = getelementptr inbounds %struct.lzma_options_delta, ptr %options, i64 0, i32 1, !dbg !343
  %0 = load i32, ptr %dist, align 4, !dbg !343, !tbaa !344
  %1 = trunc i32 %0 to i8, !dbg !347
  %conv = add i8 %1, -1, !dbg !347
  store i8 %conv, ptr %out, align 1, !dbg !348, !tbaa !239
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 11, %entry ], !dbg !338
  ret i32 %retval.0, !dbg !349
}

declare !dbg !350 i64 @lzma_delta_coder_memusage(ptr noundef) local_unnamed_addr #1

declare !dbg !354 i32 @lzma_next_filter_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "71af779cb357b668e17f145629560449")
!2 = !{!3, !19, !25, !32}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 35, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/delta.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "397cde14a8f4a544385c9c6ecc7e0cc9")
!34 = !{!35}
!35 = !DIEnumerator(name: "LZMA_DELTA_TYPE_BYTE", value: 0)
!36 = !{!37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !{i32 7, !"Dwarf Version", i32 5}
!39 = !{i32 2, !"Debug Info Version", i32 3}
!40 = !{i32 1, !"wchar_size", i32 4}
!41 = !{i32 7, !"PIC Level", i32 2}
!42 = !{i32 7, !"PIE Level", i32 2}
!43 = !{i32 7, !"uwtable", i32 2}
!44 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!45 = distinct !DISubprogram(name: "lzma_delta_encoder_init", scope: !46, file: !46, line: 104, type: !47, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!46 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71af779cb357b668e17f145629560449")
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !50, !74, !129}
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !52, line: 80, baseType: !53)
!52 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !52, line: 124, size: 512, elements: !54)
!54 = !{!55, !58, !66, !69, !100, !105, !112, !117}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !53, file: !52, line: 126, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !52, line: 78, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !53, file: !52, line: 130, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !60, line: 63, baseType: !61)
!60 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !62, line: 27, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !64, line: 45, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !53, file: !52, line: 136, baseType: !67, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !68, line: 90, baseType: !65)
!68 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!69 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !53, file: !52, line: 139, baseType: !70, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !52, line: 94, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{!49, !56, !74, !89, !95, !82, !97, !95, !82, !99}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !77)
!77 = !{!78, !84, !88}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !76, file: !4, line: 376, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DISubroutineType(types: !81)
!81 = !{!37, !37, !82, !82}
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 46, baseType: !65)
!83 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !76, file: !4, line: 390, baseType: !85, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !37, !37}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !76, file: !4, line: 401, baseType: !37, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !62, line: 24, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !64, line: 38, baseType: !94)
!94 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !53, file: !52, line: 144, baseType: !101, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !52, line: 102, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !56, !74}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !53, file: !52, line: 148, baseType: !106, size: 64, offset: 320)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !53, file: !52, line: 152, baseType: !113, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!49, !56, !116, !116, !61}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !53, file: !52, line: 157, baseType: !118, size: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!49, !56, !74, !121, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !124, line: 65, baseType: !125)
!124 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 43, size: 128, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !125, file: !124, line: 54, baseType: !59, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !125, file: !124, line: 63, baseType: !37, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !52, line: 82, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !52, line: 109, size: 192, elements: !133)
!133 = !{!134, !135, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !52, line: 112, baseType: !59, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !132, file: !52, line: 116, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !52, line: 86, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !132, file: !52, line: 119, baseType: !37, size: 64, offset: 128)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: "next", arg: 1, scope: !45, file: !46, line: 104, type: !50)
!141 = !DILocalVariable(name: "allocator", arg: 2, scope: !45, file: !46, line: 104, type: !74)
!142 = !DILocalVariable(name: "filters", arg: 3, scope: !45, file: !46, line: 105, type: !129)
!143 = !DILocation(line: 0, scope: !45)
!144 = !DILocation(line: 107, column: 8, scope: !45)
!145 = !DILocation(line: 107, column: 13, scope: !45)
!146 = !{!147, !148, i64 24}
!147 = !{!"lzma_next_coder_s", !148, i64 0, !151, i64 8, !151, i64 16, !148, i64 24, !148, i64 32, !148, i64 40, !148, i64 48, !148, i64 56}
!148 = !{!"any pointer", !149, i64 0}
!149 = !{!"omnipotent char", !150, i64 0}
!150 = !{!"Simple C/C++ TBAA"}
!151 = !{!"long", !149, i64 0}
!152 = !DILocation(line: 108, column: 8, scope: !45)
!153 = !DILocation(line: 108, column: 15, scope: !45)
!154 = !{!147, !148, i64 56}
!155 = !DILocation(line: 109, column: 9, scope: !45)
!156 = !DILocation(line: 109, column: 2, scope: !45)
!157 = distinct !DISubprogram(name: "delta_encode", scope: !46, file: !46, line: 54, type: !72, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !180, !181, !185, !186, !187}
!159 = !DILocalVariable(name: "pcoder", arg: 1, scope: !157, file: !46, line: 54, type: !56)
!160 = !DILocalVariable(name: "allocator", arg: 2, scope: !157, file: !46, line: 54, type: !74)
!161 = !DILocalVariable(name: "in", arg: 3, scope: !157, file: !46, line: 55, type: !89)
!162 = !DILocalVariable(name: "in_pos", arg: 4, scope: !157, file: !46, line: 55, type: !95)
!163 = !DILocalVariable(name: "in_size", arg: 5, scope: !157, file: !46, line: 56, type: !82)
!164 = !DILocalVariable(name: "out", arg: 6, scope: !157, file: !46, line: 56, type: !97)
!165 = !DILocalVariable(name: "out_pos", arg: 7, scope: !157, file: !46, line: 57, type: !95)
!166 = !DILocalVariable(name: "out_size", arg: 8, scope: !157, file: !46, line: 57, type: !82)
!167 = !DILocalVariable(name: "action", arg: 9, scope: !157, file: !46, line: 57, type: !99)
!168 = !DILocalVariable(name: "coder", scope: !157, file: !46, line: 59, type: !169)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !171, line: 18, size: 2688, elements: !172)
!171 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!172 = !{!173, !174, !175, !176}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 20, baseType: !51, size: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !170, file: !171, line: 23, baseType: !82, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !170, file: !171, line: 26, baseType: !92, size: 8, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !170, file: !171, line: 29, baseType: !177, size: 2048, offset: 584)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 2048, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 256)
!180 = !DILocalVariable(name: "ret", scope: !157, file: !46, line: 60, type: !49)
!181 = !DILocalVariable(name: "in_avail", scope: !182, file: !46, line: 63, type: !184)
!182 = distinct !DILexicalBlock(scope: !183, file: !46, line: 62, column: 32)
!183 = distinct !DILexicalBlock(scope: !157, file: !46, line: 62, column: 6)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!185 = !DILocalVariable(name: "out_avail", scope: !182, file: !46, line: 64, type: !184)
!186 = !DILocalVariable(name: "size", scope: !182, file: !46, line: 65, type: !184)
!187 = !DILocalVariable(name: "out_start", scope: !188, file: !46, line: 76, type: !184)
!188 = distinct !DILexicalBlock(scope: !183, file: !46, line: 75, column: 9)
!189 = !DILocation(line: 0, scope: !157)
!190 = !DILocation(line: 62, column: 18, scope: !183)
!191 = !{!192, !148, i64 24}
!192 = !{!"lzma_coder_s", !147, i64 0, !151, i64 64, !149, i64 72, !149, i64 73}
!193 = !DILocation(line: 62, column: 23, scope: !183)
!194 = !DILocation(line: 62, column: 6, scope: !157)
!195 = !DILocation(line: 63, column: 37, scope: !182)
!196 = !{!151, !151, i64 0}
!197 = !DILocation(line: 63, column: 35, scope: !182)
!198 = !DILocation(line: 0, scope: !182)
!199 = !DILocation(line: 64, column: 39, scope: !182)
!200 = !DILocation(line: 64, column: 37, scope: !182)
!201 = !DILocation(line: 65, column: 23, scope: !182)
!202 = !DILocation(line: 67, column: 29, scope: !182)
!203 = !DILocation(line: 67, column: 44, scope: !182)
!204 = !{!205}
!205 = distinct !{!205, !206, !"copy_and_encode: %in"}
!206 = distinct !{!206, !"copy_and_encode"}
!207 = !DILocation(line: 67, column: 3, scope: !182)
!208 = !{!209}
!209 = distinct !{!209, !206, !"copy_and_encode: %out"}
!210 = !DILocalVariable(name: "pcoder", arg: 1, scope: !211, file: !46, line: 21, type: !56)
!211 = distinct !DISubprogram(name: "copy_and_encode", scope: !46, file: !46, line: 21, type: !212, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !56, !89, !97, !82}
!214 = !{!210, !215, !216, !217, !218, !219, !220, !222}
!215 = !DILocalVariable(name: "in", arg: 2, scope: !211, file: !46, line: 22, type: !89)
!216 = !DILocalVariable(name: "out", arg: 3, scope: !211, file: !46, line: 22, type: !97)
!217 = !DILocalVariable(name: "size", arg: 4, scope: !211, file: !46, line: 22, type: !82)
!218 = !DILocalVariable(name: "coder", scope: !211, file: !46, line: 24, type: !169)
!219 = !DILocalVariable(name: "distance", scope: !211, file: !46, line: 25, type: !184)
!220 = !DILocalVariable(name: "i", scope: !221, file: !46, line: 27, type: !82)
!221 = distinct !DILexicalBlock(scope: !211, file: !46, line: 27, column: 2)
!222 = !DILocalVariable(name: "tmp", scope: !223, file: !46, line: 28, type: !91)
!223 = distinct !DILexicalBlock(scope: !224, file: !46, line: 27, column: 36)
!224 = distinct !DILexicalBlock(scope: !221, file: !46, line: 27, column: 2)
!225 = !DILocation(line: 0, scope: !211, inlinedAt: !226)
!226 = distinct !DILocation(line: 67, column: 3, scope: !182)
!227 = !DILocation(line: 25, column: 33, scope: !211, inlinedAt: !226)
!228 = !{!192, !151, i64 64}
!229 = !{!205, !209}
!230 = !DILocation(line: 0, scope: !221, inlinedAt: !226)
!231 = !DILocation(line: 27, column: 23, scope: !224, inlinedAt: !226)
!232 = !DILocation(line: 27, column: 2, scope: !221, inlinedAt: !226)
!233 = !{!192, !149, i64 72}
!234 = !DILocation(line: 0, scope: !223, inlinedAt: !226)
!235 = !DILocation(line: 29, column: 17, scope: !223, inlinedAt: !226)
!236 = !DILocation(line: 29, column: 15, scope: !223, inlinedAt: !226)
!237 = !DILocation(line: 29, column: 29, scope: !223, inlinedAt: !226)
!238 = !DILocation(line: 28, column: 23, scope: !223, inlinedAt: !226)
!239 = !{!149, !149, i64 0}
!240 = !DILocation(line: 30, column: 41, scope: !223, inlinedAt: !226)
!241 = !DILocation(line: 30, column: 28, scope: !223, inlinedAt: !226)
!242 = !DILocation(line: 30, column: 3, scope: !223, inlinedAt: !226)
!243 = !DILocation(line: 30, column: 39, scope: !223, inlinedAt: !226)
!244 = !DILocation(line: 31, column: 18, scope: !223, inlinedAt: !226)
!245 = !DILocation(line: 31, column: 3, scope: !223, inlinedAt: !226)
!246 = !DILocation(line: 31, column: 10, scope: !223, inlinedAt: !226)
!247 = !DILocation(line: 27, column: 31, scope: !224, inlinedAt: !226)
!248 = distinct !{!248, !232, !249, !250, !251}
!249 = !DILocation(line: 32, column: 2, scope: !221, inlinedAt: !226)
!250 = !{!"llvm.loop.mustprogress"}
!251 = !{!"llvm.loop.unroll.disable"}
!252 = !DILocation(line: 69, column: 11, scope: !182)
!253 = !DILocation(line: 70, column: 12, scope: !182)
!254 = !DILocation(line: 72, column: 16, scope: !182)
!255 = !DILocation(line: 72, column: 28, scope: !182)
!256 = !DILocation(line: 72, column: 39, scope: !182)
!257 = !DILocation(line: 76, column: 28, scope: !188)
!258 = !DILocation(line: 0, scope: !188)
!259 = !DILocation(line: 78, column: 38, scope: !188)
!260 = !{!192, !148, i64 0}
!261 = !DILocation(line: 78, column: 9, scope: !188)
!262 = !DILocation(line: 82, column: 30, scope: !188)
!263 = !DILocation(line: 82, column: 43, scope: !188)
!264 = !DILocation(line: 82, column: 52, scope: !188)
!265 = !DILocalVariable(name: "pcoder", arg: 1, scope: !266, file: !46, line: 39, type: !56)
!266 = distinct !DISubprogram(name: "encode_in_place", scope: !46, file: !46, line: 39, type: !267, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !56, !98, !82}
!269 = !{!265, !270, !271, !272, !273, !274, !276}
!270 = !DILocalVariable(name: "buffer", arg: 2, scope: !266, file: !46, line: 39, type: !98)
!271 = !DILocalVariable(name: "size", arg: 3, scope: !266, file: !46, line: 39, type: !82)
!272 = !DILocalVariable(name: "coder", scope: !266, file: !46, line: 41, type: !169)
!273 = !DILocalVariable(name: "distance", scope: !266, file: !46, line: 42, type: !184)
!274 = !DILocalVariable(name: "i", scope: !275, file: !46, line: 44, type: !82)
!275 = distinct !DILexicalBlock(scope: !266, file: !46, line: 44, column: 2)
!276 = !DILocalVariable(name: "tmp", scope: !277, file: !46, line: 45, type: !91)
!277 = distinct !DILexicalBlock(scope: !278, file: !46, line: 44, column: 36)
!278 = distinct !DILexicalBlock(scope: !275, file: !46, line: 44, column: 2)
!279 = !DILocation(line: 0, scope: !266, inlinedAt: !280)
!280 = distinct !DILocation(line: 82, column: 3, scope: !188)
!281 = !DILocation(line: 42, column: 33, scope: !266, inlinedAt: !280)
!282 = !DILocation(line: 0, scope: !275, inlinedAt: !280)
!283 = !DILocation(line: 44, column: 23, scope: !278, inlinedAt: !280)
!284 = !DILocation(line: 44, column: 2, scope: !275, inlinedAt: !280)
!285 = !DILocation(line: 46, column: 17, scope: !277, inlinedAt: !280)
!286 = !DILocation(line: 46, column: 15, scope: !277, inlinedAt: !280)
!287 = !DILocation(line: 46, column: 29, scope: !277, inlinedAt: !280)
!288 = !DILocation(line: 45, column: 23, scope: !277, inlinedAt: !280)
!289 = !DILocation(line: 0, scope: !277, inlinedAt: !280)
!290 = !DILocation(line: 47, column: 41, scope: !277, inlinedAt: !280)
!291 = !DILocation(line: 47, column: 28, scope: !277, inlinedAt: !280)
!292 = !DILocation(line: 47, column: 3, scope: !277, inlinedAt: !280)
!293 = !DILocation(line: 47, column: 39, scope: !277, inlinedAt: !280)
!294 = !DILocation(line: 48, column: 13, scope: !277, inlinedAt: !280)
!295 = !DILocation(line: 44, column: 31, scope: !278, inlinedAt: !280)
!296 = distinct !{!296, !284, !297, !250, !251}
!297 = !DILocation(line: 49, column: 2, scope: !275, inlinedAt: !280)
!298 = !DILocation(line: 85, column: 2, scope: !157)
!299 = !DILocation(line: 0, scope: !183)
!300 = distinct !DISubprogram(name: "delta_encoder_update", scope: !46, file: !46, line: 90, type: !119, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !301)
!301 = !{!302, !303, !304, !305, !306}
!302 = !DILocalVariable(name: "pcoder", arg: 1, scope: !300, file: !46, line: 90, type: !56)
!303 = !DILocalVariable(name: "allocator", arg: 2, scope: !300, file: !46, line: 90, type: !74)
!304 = !DILocalVariable(name: "filters_null", arg: 3, scope: !300, file: !46, line: 91, type: !121)
!305 = !DILocalVariable(name: "reversed_filters", arg: 4, scope: !300, file: !46, line: 92, type: !121)
!306 = !DILocalVariable(name: "coder", scope: !300, file: !46, line: 94, type: !169)
!307 = !DILocation(line: 0, scope: !300)
!308 = !DILocation(line: 99, column: 46, scope: !300)
!309 = !DILocation(line: 98, column: 9, scope: !300)
!310 = !DILocation(line: 98, column: 2, scope: !300)
!311 = !DISubprogram(name: "lzma_delta_coder_init", scope: !171, file: !171, line: 33, type: !47, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !312)
!312 = !{}
!313 = distinct !DISubprogram(name: "lzma_delta_props_encode", scope: !46, file: !46, line: 114, type: !314, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !318)
!314 = !DISubroutineType(types: !315)
!315 = !{!49, !316, !98}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(name: "options", arg: 1, scope: !313, file: !46, line: 114, type: !316)
!320 = !DILocalVariable(name: "out", arg: 2, scope: !313, file: !46, line: 114, type: !98)
!321 = !DILocalVariable(name: "opt", scope: !313, file: !46, line: 121, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !326)
!326 = !{!327, !329, !332, !333, !334, !335, !336, !337}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !325, file: !33, line: 47, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !325, file: !33, line: 59, baseType: !330, size: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !62, line: 26, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !64, line: 42, baseType: !5)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !325, file: !33, line: 70, baseType: !330, size: 32, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !325, file: !33, line: 71, baseType: !330, size: 32, offset: 96)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !325, file: !33, line: 72, baseType: !330, size: 32, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !325, file: !33, line: 73, baseType: !330, size: 32, offset: 160)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !325, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !325, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!338 = !DILocation(line: 0, scope: !313)
!339 = !DILocation(line: 118, column: 6, scope: !340)
!340 = distinct !DILexicalBlock(scope: !313, file: !46, line: 118, column: 6)
!341 = !DILocation(line: 118, column: 41, scope: !340)
!342 = !DILocation(line: 118, column: 6, scope: !313)
!343 = !DILocation(line: 122, column: 16, scope: !313)
!344 = !{!345, !346, i64 4}
!345 = !{!"", !149, i64 0, !346, i64 4, !346, i64 8, !346, i64 12, !346, i64 16, !346, i64 20, !148, i64 24, !148, i64 32}
!346 = !{!"int", !149, i64 0}
!347 = !DILocation(line: 122, column: 11, scope: !313)
!348 = !DILocation(line: 122, column: 9, scope: !313)
!349 = !DILocation(line: 125, column: 1, scope: !313)
!350 = !DISubprogram(name: "lzma_delta_coder_memusage", scope: !351, file: !351, line: 18, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !312)
!351 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3f542936998671d34c377109cc510e6f")
!352 = !DISubroutineType(types: !353)
!353 = !{!61, !316}
!354 = !DISubprogram(name: "lzma_next_filter_update", scope: !52, file: !52, line: 231, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !312)
!355 = !DISubroutineType(types: !356)
!356 = !{!49, !50, !74, !121}
