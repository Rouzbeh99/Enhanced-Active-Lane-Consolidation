; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/delta/delta_common.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_filter_info_s = type { i64, ptr, ptr }
%struct.lzma_options_delta = type { i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i8, [256 x i8] }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_delta_coder_init(ptr nocapture noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !135 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !151, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !152, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata ptr %filters, metadata !153, metadata !DIExpression()), !dbg !171
  %0 = load ptr, ptr %next, align 8, !dbg !172, !tbaa !174
  %cmp = icmp eq ptr %0, null, !dbg !180
  br i1 %cmp, label %if.then, label %if.end9, !dbg !181

if.then:                                          ; preds = %entry
  %call = tail call ptr @lzma_alloc(i64 noundef 336, ptr noundef %allocator) #5, !dbg !182
  store ptr %call, ptr %next, align 8, !dbg !184, !tbaa !174
  %cmp3 = icmp eq ptr %call, null, !dbg !185
  br i1 %cmp3, label %return, label %if.end, !dbg !187

if.end:                                           ; preds = %if.then
  %end = getelementptr inbounds %struct.lzma_next_coder_s, ptr %next, i64 0, i32 4, !dbg !188
  store ptr @delta_coder_end, ptr %end, align 8, !dbg !189, !tbaa !190
  store ptr null, ptr %call, align 8, !dbg !191, !tbaa.struct !192
  %.compoundliteral.sroa.2.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 8, !dbg !191
  store i64 -1, ptr %.compoundliteral.sroa.2.0.next6.sroa_idx, align 8, !dbg !191, !tbaa.struct !195
  %.compoundliteral.sroa.3.0.next6.sroa_idx = getelementptr inbounds i8, ptr %call, i64 16, !dbg !191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.compoundliteral.sroa.3.0.next6.sroa_idx, i8 0, i64 48, i1 false), !dbg !191
  br label %if.end9, !dbg !196

if.end9:                                          ; preds = %if.end, %entry
  %options = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 0, i32 2, !dbg !197
  %1 = load ptr, ptr %options, align 8, !dbg !197, !tbaa !199
  call void @llvm.dbg.value(metadata ptr %1, metadata !201, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata ptr %1, metadata !208, metadata !DIExpression()), !dbg !209
  %cmp.i = icmp eq ptr %1, null, !dbg !211
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !213

lor.lhs.false.i:                                  ; preds = %if.end9
  %2 = load i32, ptr %1, align 8, !dbg !214, !tbaa !215
  %cmp1.not.i = icmp eq i32 %2, 0, !dbg !218
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return, !dbg !219

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %dist.i = getelementptr inbounds %struct.lzma_options_delta, ptr %1, i64 0, i32 1, !dbg !220
  %3 = load i32, ptr %dist.i, align 4, !dbg !220, !tbaa !221
  %4 = add i32 %3, -257, !dbg !222
  %5 = icmp ult i32 %4, -256, !dbg !222
  br i1 %5, label %return, label %if.end13, !dbg !222

if.end13:                                         ; preds = %lor.lhs.false2.i
  call void @llvm.dbg.value(metadata ptr %1, metadata !154, metadata !DIExpression()), !dbg !171
  %conv = zext i32 %3 to i64, !dbg !223
  %6 = load ptr, ptr %next, align 8, !dbg !224, !tbaa !174
  %distance = getelementptr inbounds %struct.lzma_coder_s, ptr %6, i64 0, i32 1, !dbg !225
  store i64 %conv, ptr %distance, align 8, !dbg !226, !tbaa !227
  %pos = getelementptr inbounds %struct.lzma_coder_s, ptr %6, i64 0, i32 2, !dbg !229
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(257) %pos, i8 0, i64 257, i1 false), !dbg !230
  %7 = load ptr, ptr %next, align 8, !dbg !231, !tbaa !174
  %add.ptr = getelementptr inbounds %struct.lzma_filter_info_s, ptr %filters, i64 1, !dbg !232
  %call21 = tail call i32 @lzma_next_filter_init(ptr noundef %7, ptr noundef %allocator, ptr noundef nonnull %add.ptr) #5, !dbg !233
  br label %return

return:                                           ; preds = %lor.lhs.false2.i, %if.end9, %lor.lhs.false.i, %if.then, %if.end13
  %retval.0 = phi i32 [ %call21, %if.end13 ], [ 5, %if.then ], [ 8, %lor.lhs.false.i ], [ 8, %if.end9 ], [ 8, %lor.lhs.false2.i ], !dbg !171
  ret i32 %retval.0, !dbg !234
}

declare !dbg !235 ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @delta_coder_end(ptr noundef %pcoder, ptr noundef %allocator) #0 !dbg !239 {
entry:
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !241, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata ptr %pcoder, metadata !243, metadata !DIExpression()), !dbg !244
  tail call void @lzma_next_end(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !245
  tail call void @lzma_free(ptr noundef %pcoder, ptr noundef %allocator) #5, !dbg !246
  ret void, !dbg !247
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i64 @lzma_delta_coder_memusage(ptr noundef readonly %options) local_unnamed_addr #3 !dbg !202 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !201, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata ptr %options, metadata !208, metadata !DIExpression()), !dbg !248
  %cmp = icmp eq ptr %options, null, !dbg !249
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !250

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 8, !dbg !251, !tbaa !215
  %cmp1.not = icmp eq i32 %0, 0, !dbg !252
  br i1 %cmp1.not, label %lor.lhs.false2, label %cleanup, !dbg !253

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dist = getelementptr inbounds %struct.lzma_options_delta, ptr %options, i64 0, i32 1, !dbg !254
  %1 = load i32, ptr %dist, align 4, !dbg !254, !tbaa !221
  %2 = add i32 %1, -257, !dbg !255
  %3 = icmp ult i32 %2, -256, !dbg !255
  %spec.select = select i1 %3, i64 -1, i64 336, !dbg !255
  br label %cleanup, !dbg !255

cleanup:                                          ; preds = %lor.lhs.false2, %entry, %lor.lhs.false
  %retval.0 = phi i64 [ -1, %lor.lhs.false ], [ -1, %entry ], [ %spec.select, %lor.lhs.false2 ], !dbg !248
  ret i64 %retval.0, !dbg !256
}

declare !dbg !257 i32 @lzma_next_filter_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !258 void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !261 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !36, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/delta/delta_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "3f3bd7ade0eb539d460740f0c907babd")
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
!36 = !{!37, !38}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_coder_s", file: !40, line: 18, size: 2688, elements: !41)
!40 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "41e9aeb6bf08fbe16153633c0856b3a7")
!41 = !{!42, !122, !123, !124}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !40, line: 20, baseType: !43, size: 512)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !44, line: 80, baseType: !45)
!44 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !44, line: 124, size: 512, elements: !46)
!46 = !{!47, !50, !58, !61, !93, !98, !105, !110}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !45, file: !44, line: 126, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !44, line: 78, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !45, file: !44, line: 130, baseType: !51, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !52, line: 63, baseType: !53)
!52 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !45, file: !44, line: 136, baseType: !59, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !60, line: 90, baseType: !57)
!60 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !45, file: !44, line: 139, baseType: !62, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !44, line: 94, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !48, !67, !82, !88, !75, !90, !88, !75, !92}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !70)
!70 = !{!71, !77, !81}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !69, file: !4, line: 376, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!37, !37, !75, !75}
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !57)
!76 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !69, file: !4, line: 390, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !37, !37}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !69, file: !4, line: 401, baseType: !37, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !87)
!87 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!88 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !45, file: !44, line: 144, baseType: !94, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !44, line: 102, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !48, !67}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !45, file: !44, line: 148, baseType: !99, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !45, file: !44, line: 152, baseType: !106, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!66, !48, !109, !109, !53}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !45, file: !44, line: 157, baseType: !111, size: 64, offset: 448)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!66, !48, !67, !114, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !117, line: 65, baseType: !118)
!117 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 43, size: 128, elements: !119)
!119 = !{!120, !121}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !117, line: 54, baseType: !51, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !118, file: !117, line: 63, baseType: !37, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "distance", scope: !39, file: !40, line: 23, baseType: !75, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !39, file: !40, line: 26, baseType: !85, size: 8, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !39, file: !40, line: 29, baseType: !125, size: 2048, offset: 584)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 256)
!128 = !{i32 7, !"Dwarf Version", i32 5}
!129 = !{i32 2, !"Debug Info Version", i32 3}
!130 = !{i32 1, !"wchar_size", i32 4}
!131 = !{i32 7, !"PIC Level", i32 2}
!132 = !{i32 7, !"PIE Level", i32 2}
!133 = !{i32 7, !"uwtable", i32 2}
!134 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!135 = distinct !DISubprogram(name: "lzma_delta_coder_init", scope: !136, file: !136, line: 28, type: !137, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!136 = !DIFile(filename: "apps/557.xz_r/src/liblzma/delta/delta_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3f3bd7ade0eb539d460740f0c907babd")
!137 = !DISubroutineType(types: !138)
!138 = !{!66, !139, !67, !140}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !44, line: 82, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !44, line: 109, size: 192, elements: !144)
!144 = !{!145, !146, !149}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !44, line: 112, baseType: !51, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !143, file: !44, line: 116, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !44, line: 86, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !143, file: !44, line: 119, baseType: !37, size: 64, offset: 128)
!150 = !{!151, !152, !153, !154}
!151 = !DILocalVariable(name: "next", arg: 1, scope: !135, file: !136, line: 28, type: !139)
!152 = !DILocalVariable(name: "allocator", arg: 2, scope: !135, file: !136, line: 28, type: !67)
!153 = !DILocalVariable(name: "filters", arg: 3, scope: !135, file: !136, line: 29, type: !140)
!154 = !DILocalVariable(name: "opt", scope: !135, file: !136, line: 47, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_delta", file: !33, line: 77, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 45, size: 320, elements: !159)
!159 = !{!160, !162, !165, !166, !167, !168, !169, !170}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !33, line: 47, baseType: !161, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_delta_type", file: !33, line: 37, baseType: !32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !158, file: !33, line: 59, baseType: !163, size: 32, offset: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 26, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 42, baseType: !5)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !158, file: !33, line: 70, baseType: !163, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !158, file: !33, line: 71, baseType: !163, size: 32, offset: 96)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !158, file: !33, line: 72, baseType: !163, size: 32, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !158, file: !33, line: 73, baseType: !163, size: 32, offset: 160)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !158, file: !33, line: 74, baseType: !37, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !158, file: !33, line: 75, baseType: !37, size: 64, offset: 256)
!171 = !DILocation(line: 0, scope: !135)
!172 = !DILocation(line: 32, column: 12, scope: !173)
!173 = distinct !DILexicalBlock(scope: !135, file: !136, line: 32, column: 6)
!174 = !{!175, !176, i64 0}
!175 = !{!"lzma_next_coder_s", !176, i64 0, !179, i64 8, !179, i64 16, !176, i64 24, !176, i64 32, !176, i64 40, !176, i64 48, !176, i64 56}
!176 = !{!"any pointer", !177, i64 0}
!177 = !{!"omnipotent char", !178, i64 0}
!178 = !{!"Simple C/C++ TBAA"}
!179 = !{!"long", !177, i64 0}
!180 = !DILocation(line: 32, column: 18, scope: !173)
!181 = !DILocation(line: 32, column: 6, scope: !135)
!182 = !DILocation(line: 33, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !136, line: 32, column: 27)
!184 = !DILocation(line: 33, column: 15, scope: !183)
!185 = !DILocation(line: 34, column: 19, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !136, line: 34, column: 7)
!187 = !DILocation(line: 34, column: 7, scope: !183)
!188 = !DILocation(line: 38, column: 9, scope: !183)
!189 = !DILocation(line: 38, column: 13, scope: !183)
!190 = !{!175, !176, i64 32}
!191 = !DILocation(line: 39, column: 47, scope: !183)
!192 = !{i64 0, i64 8, !193, i64 8, i64 8, !194, i64 16, i64 8, !194, i64 24, i64 8, !193, i64 32, i64 8, !193, i64 40, i64 8, !193, i64 48, i64 8, !193, i64 56, i64 8, !193}
!193 = !{!176, !176, i64 0}
!194 = !{!179, !179, i64 0}
!195 = !{i64 0, i64 8, !194, i64 8, i64 8, !194, i64 16, i64 8, !193, i64 24, i64 8, !193, i64 32, i64 8, !193, i64 40, i64 8, !193, i64 48, i64 8, !193}
!196 = !DILocation(line: 40, column: 2, scope: !183)
!197 = !DILocation(line: 43, column: 43, scope: !198)
!198 = distinct !DILexicalBlock(scope: !135, file: !136, line: 43, column: 6)
!199 = !{!200, !176, i64 16}
!200 = !{!"lzma_filter_info_s", !179, i64 0, !176, i64 8, !176, i64 16}
!201 = !DILocalVariable(name: "options", arg: 1, scope: !202, file: !136, line: 61, type: !205)
!202 = distinct !DISubprogram(name: "lzma_delta_coder_memusage", scope: !136, file: !136, line: 61, type: !203, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !207)
!203 = !DISubroutineType(types: !204)
!204 = !{!53, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!207 = !{!201, !208}
!208 = !DILocalVariable(name: "opt", scope: !202, file: !136, line: 63, type: !155)
!209 = !DILocation(line: 0, scope: !202, inlinedAt: !210)
!210 = distinct !DILocation(line: 43, column: 6, scope: !198)
!211 = !DILocation(line: 65, column: 10, scope: !212, inlinedAt: !210)
!212 = distinct !DILexicalBlock(scope: !202, file: !136, line: 65, column: 6)
!213 = !DILocation(line: 65, column: 18, scope: !212, inlinedAt: !210)
!214 = !DILocation(line: 65, column: 26, scope: !212, inlinedAt: !210)
!215 = !{!216, !177, i64 0}
!216 = !{!"", !177, i64 0, !217, i64 4, !217, i64 8, !217, i64 12, !217, i64 16, !217, i64 20, !176, i64 24, !176, i64 32}
!217 = !{!"int", !177, i64 0}
!218 = !DILocation(line: 65, column: 31, scope: !212, inlinedAt: !210)
!219 = !DILocation(line: 66, column: 4, scope: !212, inlinedAt: !210)
!220 = !DILocation(line: 66, column: 12, scope: !212, inlinedAt: !210)
!221 = !{!216, !217, i64 4}
!222 = !DILocation(line: 67, column: 4, scope: !212, inlinedAt: !210)
!223 = !DILocation(line: 48, column: 50, scope: !135)
!224 = !DILocation(line: 48, column: 31, scope: !135)
!225 = !DILocation(line: 48, column: 39, scope: !135)
!226 = !DILocation(line: 48, column: 48, scope: !135)
!227 = !{!228, !179, i64 64}
!228 = !{!"lzma_coder_s", !175, i64 0, !179, i64 64, !177, i64 72, !177, i64 73}
!229 = !DILocation(line: 51, column: 39, scope: !135)
!230 = !DILocation(line: 52, column: 2, scope: !135)
!231 = !DILocation(line: 55, column: 61, scope: !135)
!232 = !DILocation(line: 56, column: 23, scope: !135)
!233 = !DILocation(line: 55, column: 9, scope: !135)
!234 = !DILocation(line: 57, column: 1, scope: !135)
!235 = !DISubprogram(name: "lzma_alloc", scope: !44, file: !44, line: 211, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!37, !75, !67}
!238 = !{}
!239 = distinct !DISubprogram(name: "delta_coder_end", scope: !136, file: !136, line: 18, type: !96, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!240 = !{!241, !242, !243}
!241 = !DILocalVariable(name: "pcoder", arg: 1, scope: !239, file: !136, line: 18, type: !48)
!242 = !DILocalVariable(name: "allocator", arg: 2, scope: !239, file: !136, line: 18, type: !67)
!243 = !DILocalVariable(name: "coder", scope: !239, file: !136, line: 20, type: !38)
!244 = !DILocation(line: 0, scope: !239)
!245 = !DILocation(line: 21, column: 2, scope: !239)
!246 = !DILocation(line: 22, column: 2, scope: !239)
!247 = !DILocation(line: 24, column: 1, scope: !239)
!248 = !DILocation(line: 0, scope: !202)
!249 = !DILocation(line: 65, column: 10, scope: !212)
!250 = !DILocation(line: 65, column: 18, scope: !212)
!251 = !DILocation(line: 65, column: 26, scope: !212)
!252 = !DILocation(line: 65, column: 31, scope: !212)
!253 = !DILocation(line: 66, column: 4, scope: !212)
!254 = !DILocation(line: 66, column: 12, scope: !212)
!255 = !DILocation(line: 67, column: 4, scope: !212)
!256 = !DILocation(line: 71, column: 1, scope: !202)
!257 = !DISubprogram(name: "lzma_next_filter_init", scope: !44, file: !44, line: 226, type: !137, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!258 = !DISubprogram(name: "lzma_next_end", scope: !44, file: !44, line: 237, type: !259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !139, !67}
!261 = !DISubprogram(name: "lzma_free", scope: !44, file: !44, line: 215, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !238)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !37, !67}
