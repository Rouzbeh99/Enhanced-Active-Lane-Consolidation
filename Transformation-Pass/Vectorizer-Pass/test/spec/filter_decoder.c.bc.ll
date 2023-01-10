; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter_decoder = type { i64, ptr, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter = type { i64, ptr }

@decoders = internal constant [9 x %struct.lzma_filter_decoder] [%struct.lzma_filter_decoder { i64 4611686018427387905, ptr @lzma_lzma_decoder_init, ptr @lzma_lzma_decoder_memusage, ptr @lzma_lzma_props_decode }, %struct.lzma_filter_decoder { i64 33, ptr @lzma_lzma2_decoder_init, ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma2_props_decode }, %struct.lzma_filter_decoder { i64 4, ptr @lzma_simple_x86_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 5, ptr @lzma_simple_powerpc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 6, ptr @lzma_simple_ia64_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 7, ptr @lzma_simple_arm_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 8, ptr @lzma_simple_armthumb_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 9, ptr @lzma_simple_sparc_decoder_init, ptr null, ptr @lzma_simple_props_decode }, %struct.lzma_filter_decoder { i64 3, ptr @lzma_delta_decoder_init, ptr @lzma_delta_coder_memusage, ptr @lzma_delta_props_decode }], align 16, !dbg !0

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local zeroext i8 @lzma_filter_decoder_is_supported(i64 noundef %id) local_unnamed_addr #0 !dbg !192 {
entry:
  call void @llvm.dbg.value(metadata i64 %id, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i64 %id, metadata !199, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i64 0, metadata !205, metadata !DIExpression()), !dbg !209
  br label %for.body.i, !dbg !210

for.body.i:                                       ; preds = %for.body.i, %entry
  %i.07.i = phi i64 [ 0, %entry ], [ %inc.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.07.i, metadata !205, metadata !DIExpression()), !dbg !209
  %arrayidx.i = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %i.07.i, !dbg !211
  %0 = load i64, ptr %arrayidx.i, align 16, !dbg !214, !tbaa !215
  %cmp2.i = icmp eq i64 %0, %id, !dbg !221
  %inc.i = add nuw nsw i64 %i.07.i, 1
  %exitcond.not.i = icmp eq i64 %inc.i, 9
  %or.cond = select i1 %cmp2.i, i1 true, i1 %exitcond.not.i, !dbg !222
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !205, metadata !DIExpression()), !dbg !209
  br i1 %or.cond, label %decoder_find.exit, label %for.body.i, !dbg !222, !llvm.loop !223

decoder_find.exit:                                ; preds = %for.body.i
  %conv1 = zext i1 %cmp2.i to i8, !dbg !227
  ret i8 %conv1, !dbg !228
}

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define internal ptr @decoder_find(i64 noundef %id) #0 !dbg !200 {
entry:
  call void @llvm.dbg.value(metadata i64 %id, metadata !199, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 0, metadata !205, metadata !DIExpression()), !dbg !230
  br label %for.body, !dbg !231

for.body:                                         ; preds = %entry, %for.inc
  %i.07 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.07, metadata !205, metadata !DIExpression()), !dbg !230
  %arrayidx = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %i.07, !dbg !232
  %0 = load i64, ptr %arrayidx, align 16, !dbg !233, !tbaa !215
  %cmp2 = icmp eq i64 %0, %id, !dbg !234
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !235

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07, !dbg !236
  br label %cleanup, !dbg !237

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.07, 1, !dbg !238
  call void @llvm.dbg.value(metadata i64 %inc, metadata !205, metadata !DIExpression()), !dbg !230
  %exitcond.not = icmp eq i64 %inc, 9, !dbg !239
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !231, !llvm.loop !240

cleanup:                                          ; preds = %for.inc, %if.then
  %spec.select = phi ptr [ %add.ptr, %if.then ], [ null, %for.inc ]
  ret ptr %spec.select, !dbg !242
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options) local_unnamed_addr #1 !dbg !243 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !247, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata ptr %options, metadata !249, metadata !DIExpression()), !dbg !250
  %call = tail call i32 @lzma_raw_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #4, !dbg !251
  ret i32 %call, !dbg !252
}

declare !dbg !253 i32 @lzma_raw_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_raw_decoder(ptr noundef %strm, ptr noundef %options) local_unnamed_addr #1 !dbg !257 {
entry:
  call void @llvm.dbg.value(metadata ptr %strm, metadata !286, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.value(metadata ptr %options, metadata !287, metadata !DIExpression()), !dbg !293
  %call = tail call i32 @lzma_strm_init(ptr noundef %strm) #4, !dbg !294
  call void @llvm.dbg.value(metadata i32 %call, metadata !288, metadata !DIExpression()), !dbg !295
  %cmp.not = icmp eq i32 %call, 0, !dbg !296
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %internal = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 7, !dbg !298
  %0 = load ptr, ptr %internal, align 8, !dbg !298, !tbaa !299
  %allocator = getelementptr inbounds %struct.lzma_stream, ptr %strm, i64 0, i32 6, !dbg !298
  %1 = load ptr, ptr %allocator, align 8, !dbg !298, !tbaa !301
  call void @llvm.dbg.value(metadata ptr %0, metadata !247, metadata !DIExpression()) #4, !dbg !302
  call void @llvm.dbg.value(metadata ptr %1, metadata !248, metadata !DIExpression()) #4, !dbg !302
  call void @llvm.dbg.value(metadata ptr %options, metadata !249, metadata !DIExpression()) #4, !dbg !302
  %call.i = tail call i32 @lzma_raw_coder_init(ptr noundef %0, ptr noundef %1, ptr noundef %options, ptr noundef nonnull @decoder_find, i1 noundef zeroext false) #4, !dbg !304
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !292, metadata !DIExpression()), !dbg !305
  %cmp4.not = icmp eq i32 %call.i, 0, !dbg !306
  br i1 %cmp4.not, label %do.end10, label %cleanup7, !dbg !298

cleanup7:                                         ; preds = %do.end
  tail call void @lzma_end(ptr noundef nonnull %strm) #4, !dbg !308
  br label %return

do.end10:                                         ; preds = %do.end
  %2 = load ptr, ptr %internal, align 8, !dbg !310, !tbaa !299
  %supported_actions = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, !dbg !311
  store i8 1, ptr %supported_actions, align 8, !dbg !312, !tbaa !313
  %arrayidx14 = getelementptr inbounds %struct.lzma_internal_s, ptr %2, i64 0, i32 3, i64 3, !dbg !315
  store i8 1, ptr %arrayidx14, align 1, !dbg !316, !tbaa !313
  br label %return, !dbg !317

return:                                           ; preds = %cleanup7, %entry, %do.end10
  %retval.2 = phi i32 [ %call, %entry ], [ %call.i, %cleanup7 ], [ 0, %do.end10 ], !dbg !293
  ret i32 %retval.2, !dbg !318
}

declare !dbg !319 i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

declare !dbg !322 void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_raw_decoder_memusage(ptr noundef %filters) local_unnamed_addr #1 !dbg !325 {
entry:
  call void @llvm.dbg.value(metadata ptr %filters, metadata !329, metadata !DIExpression()), !dbg !330
  %call = tail call i64 @lzma_raw_coder_memusage(ptr noundef nonnull @decoder_find, ptr noundef %filters) #4, !dbg !331
  ret i64 %call, !dbg !332
}

declare !dbg !333 i64 @lzma_raw_coder_memusage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_properties_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) local_unnamed_addr #1 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata ptr %filter, metadata !341, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !342, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata ptr %props, metadata !343, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i64 %props_size, metadata !344, metadata !DIExpression()), !dbg !347
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filter, i64 0, i32 1, !dbg !348
  store ptr null, ptr %options, align 8, !dbg !349, !tbaa !350
  %0 = load i64, ptr %filter, align 8, !dbg !352, !tbaa !353
  call void @llvm.dbg.value(metadata i64 %0, metadata !199, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i64 0, metadata !205, metadata !DIExpression()), !dbg !356
  br label %for.body.i, !dbg !357

for.body.i:                                       ; preds = %for.inc.i, %entry
  %i.07.i = phi i64 [ 0, %entry ], [ %inc.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %i.07.i, metadata !205, metadata !DIExpression()), !dbg !356
  %arrayidx.i = getelementptr inbounds [9 x %struct.lzma_filter_decoder], ptr @decoders, i64 0, i64 %i.07.i, !dbg !358
  %1 = load i64, ptr %arrayidx.i, align 16, !dbg !359, !tbaa !215
  %cmp2.i = icmp eq i64 %1, %0, !dbg !360
  br i1 %cmp2.i, label %if.end, label %for.inc.i, !dbg !361

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i64 %i.07.i, 1, !dbg !362
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !205, metadata !DIExpression()), !dbg !356
  %exitcond.not.i = icmp eq i64 %inc.i, 9, !dbg !363
  br i1 %exitcond.not.i, label %cleanup, label %for.body.i, !dbg !357, !llvm.loop !364

if.end:                                           ; preds = %for.body.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr @decoders, i64 %i.07.i), metadata !345, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !347
  %props_decode = getelementptr inbounds %struct.lzma_filter_decoder, ptr @decoders, i64 %i.07.i, i32 3, !dbg !366
  %2 = load ptr, ptr %props_decode, align 8, !dbg !366, !tbaa !368
  %cmp1 = icmp eq ptr %2, null, !dbg !369
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !370

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i64 %props_size, 0, !dbg !371
  %cond = select i1 %cmp3, i32 0, i32 8, !dbg !372
  br label %cleanup, !dbg !373

if.end4:                                          ; preds = %if.end
  %call7 = tail call i32 %2(ptr noundef nonnull %options, ptr noundef %allocator, ptr noundef %props, i64 noundef %props_size) #4, !dbg !374
  br label %cleanup, !dbg !375

cleanup:                                          ; preds = %for.inc.i, %if.end4, %if.then2
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ %call7, %if.end4 ], [ 8, %for.inc.i ], !dbg !347
  ret i32 %retval.0, !dbg !376
}

declare i32 @lzma_lzma_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_lzma2_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_lzma2_decoder_memusage(ptr noundef) #2

declare i32 @lzma_lzma2_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_x86_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzma_simple_powerpc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_ia64_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_arm_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_armthumb_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_simple_sparc_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @lzma_delta_decoder_init(ptr noundef, ptr noundef, ptr noundef) #2

declare i64 @lzma_delta_coder_memusage(ptr noundef) #2

declare i32 @lzma_delta_props_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "decoders", scope: !2, file: !169, line: 44, type: !170, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !136, globals: !168, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "adc3b4c5f89841352349a28c6cc96b69")
!4 = !{!5, !21, !27, !34, !133}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 57, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "LZMA_OK", value: 0)
!10 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!11 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!12 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!13 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!14 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!15 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!16 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!17 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!18 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!19 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!20 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 250, baseType: !7, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!24 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!25 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!26 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 27, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!29 = !{!30, !31, !32, !33}
!30 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!31 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!32 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!33 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !36, file: !35, line: 187, baseType: !7, size: 32, elements: !126)
!35 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_internal_s", file: !35, line: 179, size: 704, elements: !37)
!37 = !{!38, !118, !119, !120, !125}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !35, line: 181, baseType: !39, size: 512)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !35, line: 80, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !35, line: 124, size: 512, elements: !41)
!41 = !{!42, !45, !53, !56, !89, !94, !101, !106}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !40, file: !35, line: 126, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !35, line: 78, baseType: null)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !35, line: 130, baseType: !46, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !47, line: 63, baseType: !48)
!47 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !49, line: 27, baseType: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !51, line: 45, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!52 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !40, file: !35, line: 136, baseType: !54, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !55, line: 90, baseType: !52)
!55 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!56 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !40, file: !35, line: 139, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !35, line: 94, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !43, !62, !78, !84, !71, !86, !84, !71, !88}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !6, line: 403, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 341, size: 192, elements: !65)
!65 = !{!66, !73, !77}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !64, file: !6, line: 376, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !70, !71, !71}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !52)
!72 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!73 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !64, file: !6, line: 390, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !70, !70}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !64, file: !6, line: 401, baseType: !70, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !49, line: 24, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !51, line: 38, baseType: !83)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !6, line: 322, baseType: !21)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !40, file: !35, line: 144, baseType: !90, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !35, line: 102, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !43, !62}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !40, file: !35, line: 148, baseType: !95, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !28, line: 55, baseType: !27)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !40, file: !35, line: 152, baseType: !102, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!61, !43, !105, !105, !48}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !40, file: !35, line: 157, baseType: !107, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!61, !43, !62, !110, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !113, line: 65, baseType: !114)
!113 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 43, size: 128, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !113, line: 54, baseType: !46, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !114, file: !113, line: 63, baseType: !70, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !36, file: !35, line: 194, baseType: !34, size: 32, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !36, file: !35, line: 199, baseType: !71, size: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "supported_actions", scope: !36, file: !35, line: 202, baseType: !121, size: 32, offset: 640)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 32, elements: !123)
!122 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!123 = !{!124}
!124 = !DISubrange(count: 4)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "allow_buf_error", scope: !36, file: !35, line: 206, baseType: !122, size: 8, offset: 672)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIEnumerator(name: "ISEQ_RUN", value: 0)
!128 = !DIEnumerator(name: "ISEQ_SYNC_FLUSH", value: 1)
!129 = !DIEnumerator(name: "ISEQ_FULL_FLUSH", value: 2)
!130 = !DIEnumerator(name: "ISEQ_FINISH", value: 3)
!131 = !DIEnumerator(name: "ISEQ_END", value: 4)
!132 = !DIEnumerator(name: "ISEQ_ERROR", value: 5)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 44, baseType: !7, size: 32, elements: !134)
!134 = !{!135}
!135 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!136 = !{!70, !137}
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_find", file: !138, line: 35, baseType: !139)
!138 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2b3d0d0ae4b0d967ddcb9fa677c708ca")
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !46}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_coder", file: !138, line: 32, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !138, line: 20, size: 192, elements: !146)
!146 = !{!147, !148, !162}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !138, line: 22, baseType: !46, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !145, file: !138, line: 26, baseType: !149, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !35, line: 86, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!61, !153, !62, !154}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !35, line: 82, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !35, line: 109, size: 192, elements: !158)
!158 = !{!159, !160, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !35, line: 112, baseType: !46, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !157, file: !35, line: 116, baseType: !149, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !157, file: !35, line: 119, baseType: !70, size: 64, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !145, file: !138, line: 30, baseType: !163, size: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!48, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !{!0}
!169 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "adc3b4c5f89841352349a28c6cc96b69")
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 2304, elements: !183)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_decoder", file: !169, line: 41, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 21, size: 256, elements: !174)
!174 = !{!175, !176, !177, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !173, file: !169, line: 23, baseType: !46, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !173, file: !169, line: 27, baseType: !149, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "memusage", scope: !173, file: !169, line: 31, baseType: !163, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "props_decode", scope: !173, file: !169, line: 38, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!61, !182, !62, !79, !71}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!183 = !{!184}
!184 = !DISubrange(count: 9)
!185 = !{i32 7, !"Dwarf Version", i32 5}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{i32 1, !"wchar_size", i32 4}
!188 = !{i32 7, !"PIC Level", i32 2}
!189 = !{i32 7, !"PIE Level", i32 2}
!190 = !{i32 7, !"uwtable", i32 2}
!191 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!192 = distinct !DISubprogram(name: "lzma_filter_decoder_is_supported", scope: !169, file: !169, line: 132, type: !193, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !46}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !83)
!196 = !{!197}
!197 = !DILocalVariable(name: "id", arg: 1, scope: !192, file: !169, line: 132, type: !46)
!198 = !DILocation(line: 0, scope: !192)
!199 = !DILocalVariable(name: "id", arg: 1, scope: !200, file: !169, line: 121, type: !46)
!200 = distinct !DISubprogram(name: "decoder_find", scope: !169, file: !169, line: 121, type: !201, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!201 = !DISubroutineType(types: !202)
!202 = !{!203, !46}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!204 = !{!199, !205}
!205 = !DILocalVariable(name: "i", scope: !206, file: !169, line: 123, type: !71)
!206 = distinct !DILexicalBlock(scope: !200, file: !169, line: 123, column: 2)
!207 = !DILocation(line: 0, scope: !200, inlinedAt: !208)
!208 = distinct !DILocation(line: 134, column: 9, scope: !192)
!209 = !DILocation(line: 0, scope: !206, inlinedAt: !208)
!210 = !DILocation(line: 123, column: 2, scope: !206, inlinedAt: !208)
!211 = !DILocation(line: 124, column: 7, scope: !212, inlinedAt: !208)
!212 = distinct !DILexicalBlock(scope: !213, file: !169, line: 124, column: 7)
!213 = distinct !DILexicalBlock(scope: !206, file: !169, line: 123, column: 2)
!214 = !DILocation(line: 124, column: 19, scope: !212, inlinedAt: !208)
!215 = !{!216, !217, i64 0}
!216 = !{!"", !217, i64 0, !220, i64 8, !220, i64 16, !220, i64 24}
!217 = !{!"long", !218, i64 0}
!218 = !{!"omnipotent char", !219, i64 0}
!219 = !{!"Simple C/C++ TBAA"}
!220 = !{!"any pointer", !218, i64 0}
!221 = !DILocation(line: 124, column: 22, scope: !212, inlinedAt: !208)
!222 = !DILocation(line: 124, column: 7, scope: !213, inlinedAt: !208)
!223 = distinct !{!223, !210, !224, !225, !226}
!224 = !DILocation(line: 125, column: 22, scope: !206, inlinedAt: !208)
!225 = !{!"llvm.loop.mustprogress"}
!226 = !{!"llvm.loop.unroll.disable"}
!227 = !DILocation(line: 134, column: 9, scope: !192)
!228 = !DILocation(line: 134, column: 2, scope: !192)
!229 = !DILocation(line: 0, scope: !200)
!230 = !DILocation(line: 0, scope: !206)
!231 = !DILocation(line: 123, column: 2, scope: !206)
!232 = !DILocation(line: 124, column: 7, scope: !212)
!233 = !DILocation(line: 124, column: 19, scope: !212)
!234 = !DILocation(line: 124, column: 22, scope: !212)
!235 = !DILocation(line: 124, column: 7, scope: !213)
!236 = !DILocation(line: 125, column: 20, scope: !212)
!237 = !DILocation(line: 125, column: 4, scope: !212)
!238 = !DILocation(line: 123, column: 47, scope: !213)
!239 = !DILocation(line: 123, column: 23, scope: !213)
!240 = distinct !{!240, !231, !241, !225, !226}
!241 = !DILocation(line: 125, column: 22, scope: !206)
!242 = !DILocation(line: 128, column: 1, scope: !200)
!243 = distinct !DISubprogram(name: "lzma_raw_decoder_init", scope: !169, file: !169, line: 139, type: !244, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !246)
!244 = !DISubroutineType(types: !245)
!245 = !{!61, !153, !62, !110}
!246 = !{!247, !248, !249}
!247 = !DILocalVariable(name: "next", arg: 1, scope: !243, file: !169, line: 139, type: !153)
!248 = !DILocalVariable(name: "allocator", arg: 2, scope: !243, file: !169, line: 139, type: !62)
!249 = !DILocalVariable(name: "options", arg: 3, scope: !243, file: !169, line: 140, type: !110)
!250 = !DILocation(line: 0, scope: !243)
!251 = !DILocation(line: 142, column: 9, scope: !243)
!252 = !DILocation(line: 142, column: 2, scope: !243)
!253 = !DISubprogram(name: "lzma_raw_coder_init", scope: !138, file: !138, line: 38, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!61, !153, !62, !110, !137, !122}
!256 = !{}
!257 = distinct !DISubprogram(name: "lzma_raw_decoder", scope: !169, file: !169, line: 148, type: !258, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!258 = !DISubroutineType(types: !259)
!259 = !{!61, !260, !110}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !6, line: 490, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 453, size: 1088, elements: !263)
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !281, !282, !284}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !262, file: !6, line: 454, baseType: !79, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !262, file: !6, line: 455, baseType: !71, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !262, file: !6, line: 456, baseType: !48, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !262, file: !6, line: 458, baseType: !87, size: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !262, file: !6, line: 459, baseType: !71, size: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !262, file: !6, line: 460, baseType: !48, size: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !262, file: !6, line: 468, baseType: !62, size: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !262, file: !6, line: 471, baseType: !272, size: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !6, line: 411, baseType: !36)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !262, file: !6, line: 479, baseType: !70, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !262, file: !6, line: 480, baseType: !70, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !262, file: !6, line: 481, baseType: !70, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !262, file: !6, line: 482, baseType: !70, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !262, file: !6, line: 483, baseType: !48, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !262, file: !6, line: 484, baseType: !48, size: 64, offset: 832)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !262, file: !6, line: 485, baseType: !71, size: 64, offset: 896)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !262, file: !6, line: 486, baseType: !71, size: 64, offset: 960)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !262, file: !6, line: 487, baseType: !283, size: 32, offset: 1024)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !133)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !262, file: !6, line: 488, baseType: !283, size: 32, offset: 1056)
!285 = !{!286, !287, !288, !292}
!286 = !DILocalVariable(name: "strm", arg: 1, scope: !257, file: !169, line: 148, type: !260)
!287 = !DILocalVariable(name: "options", arg: 2, scope: !257, file: !169, line: 148, type: !110)
!288 = !DILocalVariable(name: "ret_", scope: !289, file: !169, line: 150, type: !291)
!289 = distinct !DILexicalBlock(scope: !290, file: !169, line: 150, column: 2)
!290 = distinct !DILexicalBlock(scope: !257, file: !169, line: 150, column: 2)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!292 = !DILocalVariable(name: "ret_", scope: !290, file: !169, line: 150, type: !291)
!293 = !DILocation(line: 0, scope: !257)
!294 = !DILocation(line: 150, column: 2, scope: !289)
!295 = !DILocation(line: 0, scope: !289)
!296 = !DILocation(line: 150, column: 2, scope: !297)
!297 = distinct !DILexicalBlock(scope: !289, file: !169, line: 150, column: 2)
!298 = !DILocation(line: 150, column: 2, scope: !290)
!299 = !{!300, !220, i64 56}
!300 = !{!"", !220, i64 0, !217, i64 8, !217, i64 16, !220, i64 24, !217, i64 32, !217, i64 40, !220, i64 48, !220, i64 56, !220, i64 64, !220, i64 72, !220, i64 80, !220, i64 88, !217, i64 96, !217, i64 104, !217, i64 112, !217, i64 120, !218, i64 128, !218, i64 132}
!301 = !{!300, !220, i64 48}
!302 = !DILocation(line: 0, scope: !243, inlinedAt: !303)
!303 = distinct !DILocation(line: 150, column: 2, scope: !290)
!304 = !DILocation(line: 142, column: 9, scope: !243, inlinedAt: !303)
!305 = !DILocation(line: 0, scope: !290)
!306 = !DILocation(line: 150, column: 2, scope: !307)
!307 = distinct !DILexicalBlock(scope: !290, file: !169, line: 150, column: 2)
!308 = !DILocation(line: 150, column: 2, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !169, line: 150, column: 2)
!310 = !DILocation(line: 152, column: 8, scope: !257)
!311 = !DILocation(line: 152, column: 18, scope: !257)
!312 = !DILocation(line: 152, column: 46, scope: !257)
!313 = !{!314, !314, i64 0}
!314 = !{!"_Bool", !218, i64 0}
!315 = !DILocation(line: 153, column: 2, scope: !257)
!316 = !DILocation(line: 153, column: 49, scope: !257)
!317 = !DILocation(line: 155, column: 2, scope: !257)
!318 = !DILocation(line: 156, column: 1, scope: !257)
!319 = !DISubprogram(name: "lzma_strm_init", scope: !35, file: !35, line: 220, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!320 = !DISubroutineType(types: !321)
!321 = !{!61, !260}
!322 = !DISubprogram(name: "lzma_end", scope: !6, file: !6, line: 546, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !260}
!325 = distinct !DISubprogram(name: "lzma_raw_decoder_memusage", scope: !169, file: !169, line: 160, type: !326, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!48, !110}
!328 = !{!329}
!329 = !DILocalVariable(name: "filters", arg: 1, scope: !325, file: !169, line: 160, type: !110)
!330 = !DILocation(line: 0, scope: !325)
!331 = !DILocation(line: 162, column: 9, scope: !325)
!332 = !DILocation(line: 162, column: 2, scope: !325)
!333 = !DISubprogram(name: "lzma_raw_coder_memusage", scope: !138, file: !138, line: 44, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !256)
!334 = !DISubroutineType(types: !335)
!335 = !{!48, !137, !110}
!336 = distinct !DISubprogram(name: "lzma_properties_decode", scope: !169, file: !169, line: 168, type: !337, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!337 = !DISubroutineType(types: !338)
!338 = !{!61, !339, !62, !79, !71}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!340 = !{!341, !342, !343, !344, !345}
!341 = !DILocalVariable(name: "filter", arg: 1, scope: !336, file: !169, line: 168, type: !339)
!342 = !DILocalVariable(name: "allocator", arg: 2, scope: !336, file: !169, line: 168, type: !62)
!343 = !DILocalVariable(name: "props", arg: 3, scope: !336, file: !169, line: 169, type: !79)
!344 = !DILocalVariable(name: "props_size", arg: 4, scope: !336, file: !169, line: 169, type: !71)
!345 = !DILocalVariable(name: "fd", scope: !336, file: !169, line: 174, type: !346)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!347 = !DILocation(line: 0, scope: !336)
!348 = !DILocation(line: 172, column: 10, scope: !336)
!349 = !DILocation(line: 172, column: 18, scope: !336)
!350 = !{!351, !220, i64 8}
!351 = !{!"", !217, i64 0, !220, i64 8}
!352 = !DILocation(line: 174, column: 61, scope: !336)
!353 = !{!351, !217, i64 0}
!354 = !DILocation(line: 0, scope: !200, inlinedAt: !355)
!355 = distinct !DILocation(line: 174, column: 40, scope: !336)
!356 = !DILocation(line: 0, scope: !206, inlinedAt: !355)
!357 = !DILocation(line: 123, column: 2, scope: !206, inlinedAt: !355)
!358 = !DILocation(line: 124, column: 7, scope: !212, inlinedAt: !355)
!359 = !DILocation(line: 124, column: 19, scope: !212, inlinedAt: !355)
!360 = !DILocation(line: 124, column: 22, scope: !212, inlinedAt: !355)
!361 = !DILocation(line: 124, column: 7, scope: !213, inlinedAt: !355)
!362 = !DILocation(line: 123, column: 47, scope: !213, inlinedAt: !355)
!363 = !DILocation(line: 123, column: 23, scope: !213, inlinedAt: !355)
!364 = distinct !{!364, !357, !365, !225, !226}
!365 = !DILocation(line: 125, column: 22, scope: !206, inlinedAt: !355)
!366 = !DILocation(line: 178, column: 10, scope: !367)
!367 = distinct !DILexicalBlock(scope: !336, file: !169, line: 178, column: 6)
!368 = !{!216, !220, i64 24}
!369 = !DILocation(line: 178, column: 23, scope: !367)
!370 = !DILocation(line: 178, column: 6, scope: !336)
!371 = !DILocation(line: 179, column: 21, scope: !367)
!372 = !DILocation(line: 179, column: 10, scope: !367)
!373 = !DILocation(line: 179, column: 3, scope: !367)
!374 = !DILocation(line: 181, column: 9, scope: !336)
!375 = !DILocation(line: 181, column: 2, scope: !336)
!376 = !DILocation(line: 183, column: 1, scope: !336)
