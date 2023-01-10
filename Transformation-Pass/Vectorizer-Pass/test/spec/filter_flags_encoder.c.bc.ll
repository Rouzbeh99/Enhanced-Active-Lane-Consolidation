; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_flags_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_flags_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_size(ptr noundef %size, ptr noundef %filter) local_unnamed_addr #0 !dbg !26 {
entry:
  call void @llvm.dbg.value(metadata ptr %size, metadata !51, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %filter, metadata !52, metadata !DIExpression()), !dbg !56
  %0 = load i64, ptr %filter, align 8, !dbg !57, !tbaa !59
  %cmp = icmp ugt i64 %0, 4611686018427387903, !dbg !65
  br i1 %cmp, label %return, label %do.body, !dbg !66

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_properties_size(ptr noundef %size, ptr noundef nonnull %filter) #4, !dbg !67
  call void @llvm.dbg.value(metadata i32 %call, metadata !53, metadata !DIExpression()), !dbg !68
  %cmp1.not = icmp eq i32 %call, 0, !dbg !69
  br i1 %cmp1.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  %1 = load i64, ptr %filter, align 8, !dbg !71, !tbaa !59
  %call5 = tail call i32 @lzma_vli_size(i64 noundef %1) #4, !dbg !72
  %2 = load i32, ptr %size, align 4, !dbg !73, !tbaa !74
  %conv = zext i32 %2 to i64, !dbg !73
  %call6 = tail call i32 @lzma_vli_size(i64 noundef %conv) #4, !dbg !76
  %add = add i32 %call6, %call5, !dbg !77
  %3 = load i32, ptr %size, align 4, !dbg !78, !tbaa !74
  %add7 = add i32 %add, %3, !dbg !78
  store i32 %add7, ptr %size, align 4, !dbg !78, !tbaa !74
  br label %return, !dbg !79

return:                                           ; preds = %do.body, %entry, %do.end
  %retval.1 = phi i32 [ %call, %do.body ], [ 0, %do.end ], [ 11, %entry ], !dbg !56
  ret i32 %retval.1, !dbg !80
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !81 i32 @lzma_properties_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !83 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_encode(ptr noundef %filter, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !86 {
entry:
  %props_size = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %filter, metadata !97, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata ptr %out, metadata !98, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !99, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !100, metadata !DIExpression()), !dbg !110
  %0 = load i64, ptr %filter, align 8, !dbg !111, !tbaa !59
  %cmp = icmp ugt i64 %0, 4611686018427387903, !dbg !113
  br i1 %cmp, label %return, label %do.body, !dbg !114

do.body:                                          ; preds = %entry
  %call = tail call i32 @lzma_vli_encode(i64 noundef %0, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #4, !dbg !115
  call void @llvm.dbg.value(metadata i32 %call, metadata !101, metadata !DIExpression()), !dbg !116
  %cmp2.not = icmp eq i32 %call, 0, !dbg !117
  br i1 %cmp2.not, label %do.end, label %return

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %props_size) #4, !dbg !119
  call void @llvm.dbg.value(metadata ptr %props_size, metadata !103, metadata !DIExpression(DW_OP_deref)), !dbg !110
  %call7 = call i32 @lzma_properties_size(ptr noundef nonnull %props_size, ptr noundef nonnull %filter) #4, !dbg !120
  call void @llvm.dbg.value(metadata i32 %call7, metadata !104, metadata !DIExpression()), !dbg !121
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !122
  br i1 %cmp8.not, label %do.body15, label %cleanup45

do.body15:                                        ; preds = %do.end
  %1 = load i32, ptr %props_size, align 4, !dbg !124, !tbaa !74
  call void @llvm.dbg.value(metadata i32 %1, metadata !103, metadata !DIExpression()), !dbg !110
  %conv = zext i32 %1 to i64, !dbg !124
  %call17 = call i32 @lzma_vli_encode(i64 noundef %conv, ptr noundef null, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #4, !dbg !124
  call void @llvm.dbg.value(metadata i32 %call17, metadata !106, metadata !DIExpression()), !dbg !125
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !126
  br i1 %cmp18.not, label %do.end26, label %cleanup45

do.end26:                                         ; preds = %do.body15
  %2 = load i64, ptr %out_pos, align 8, !dbg !128, !tbaa !130
  %sub = sub i64 %out_size, %2, !dbg !131
  %3 = load i32, ptr %props_size, align 4, !dbg !132, !tbaa !74
  call void @llvm.dbg.value(metadata i32 %3, metadata !103, metadata !DIExpression()), !dbg !110
  %conv27 = zext i32 %3 to i64, !dbg !132
  %cmp28 = icmp ult i64 %sub, %conv27, !dbg !133
  br i1 %cmp28, label %cleanup45, label %do.body32, !dbg !134

do.body32:                                        ; preds = %do.end26
  %add.ptr = getelementptr inbounds i8, ptr %out, i64 %2, !dbg !135
  %call34 = call i32 @lzma_properties_encode(ptr noundef nonnull %filter, ptr noundef %add.ptr) #4, !dbg !135
  call void @llvm.dbg.value(metadata i32 %call34, metadata !108, metadata !DIExpression()), !dbg !136
  %cmp35.not = icmp eq i32 %call34, 0, !dbg !137
  br i1 %cmp35.not, label %do.end43, label %cleanup45

do.end43:                                         ; preds = %do.body32
  %4 = load i32, ptr %props_size, align 4, !dbg !139, !tbaa !74
  call void @llvm.dbg.value(metadata i32 %4, metadata !103, metadata !DIExpression()), !dbg !110
  %conv44 = zext i32 %4 to i64, !dbg !139
  %5 = load i64, ptr %out_pos, align 8, !dbg !140, !tbaa !130
  %add = add i64 %5, %conv44, !dbg !140
  store i64 %add, ptr %out_pos, align 8, !dbg !140, !tbaa !130
  br label %cleanup45, !dbg !141

cleanup45:                                        ; preds = %do.end26, %do.body32, %do.body15, %do.end, %do.end43
  %retval.4 = phi i32 [ 0, %do.end43 ], [ %call34, %do.body32 ], [ %call17, %do.body15 ], [ %call7, %do.end ], [ 11, %do.end26 ], !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %props_size) #4, !dbg !142
  br label %return

return:                                           ; preds = %do.body, %entry, %cleanup45
  %retval.5 = phi i32 [ %call, %do.body ], [ %retval.4, %cleanup45 ], [ 11, %entry ], !dbg !110
  ret i32 %retval.5, !dbg !142
}

declare !dbg !143 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !146 i32 @lzma_properties_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_flags_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "544eb0dae4e7a381d8d20707b95c3de0")
!2 = !{!3}
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
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 2}
!25 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!26 = distinct !DISubprogram(name: "lzma_filter_flags_size", scope: !27, file: !27, line: 17, type: !28, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!27 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_flags_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "544eb0dae4e7a381d8d20707b95c3de0")
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !31, !36}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !33, line: 26, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !35, line: 42, baseType: !5)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !39, line: 65, baseType: !40)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !39, line: 43, size: 128, elements: !41)
!41 = !{!42, !48}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !39, line: 54, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !44, line: 63, baseType: !45)
!44 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !33, line: 27, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !35, line: 45, baseType: !47)
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !40, file: !39, line: 63, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "size", arg: 1, scope: !26, file: !27, line: 17, type: !31)
!52 = !DILocalVariable(name: "filter", arg: 2, scope: !26, file: !27, line: 17, type: !36)
!53 = !DILocalVariable(name: "ret_", scope: !54, file: !27, line: 22, type: !55)
!54 = distinct !DILexicalBlock(scope: !26, file: !27, line: 22, column: 2)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!56 = !DILocation(line: 0, scope: !26)
!57 = !DILocation(line: 19, column: 14, scope: !58)
!58 = distinct !DILexicalBlock(scope: !26, file: !27, line: 19, column: 6)
!59 = !{!60, !61, i64 0}
!60 = !{!"", !61, i64 0, !64, i64 8}
!61 = !{!"long", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"any pointer", !62, i64 0}
!65 = !DILocation(line: 19, column: 17, scope: !58)
!66 = !DILocation(line: 19, column: 6, scope: !26)
!67 = !DILocation(line: 22, column: 2, scope: !54)
!68 = !DILocation(line: 0, scope: !54)
!69 = !DILocation(line: 22, column: 2, scope: !70)
!70 = distinct !DILexicalBlock(scope: !54, file: !27, line: 22, column: 2)
!71 = !DILocation(line: 24, column: 33, scope: !26)
!72 = !DILocation(line: 24, column: 11, scope: !26)
!73 = !DILocation(line: 24, column: 53, scope: !26)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !62, i64 0}
!76 = !DILocation(line: 24, column: 39, scope: !26)
!77 = !DILocation(line: 24, column: 37, scope: !26)
!78 = !DILocation(line: 24, column: 8, scope: !26)
!79 = !DILocation(line: 26, column: 2, scope: !26)
!80 = !DILocation(line: 27, column: 1, scope: !26)
!81 = !DISubprogram(name: "lzma_properties_size", scope: !39, file: !39, line: 307, type: !28, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!82 = !{}
!83 = !DISubprogram(name: "lzma_vli_size", scope: !44, file: !44, line: 165, type: !84, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!84 = !DISubroutineType(types: !85)
!85 = !{!32, !43}
!86 = distinct !DISubprogram(name: "lzma_filter_flags_encode", scope: !27, file: !27, line: 31, type: !87, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!87 = !DISubroutineType(types: !88)
!88 = !{!30, !36, !89, !93, !94}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !33, line: 24, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !35, line: 38, baseType: !92)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !47)
!95 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!96 = !{!97, !98, !99, !100, !101, !103, !104, !106, !108}
!97 = !DILocalVariable(name: "filter", arg: 1, scope: !86, file: !27, line: 31, type: !36)
!98 = !DILocalVariable(name: "out", arg: 2, scope: !86, file: !27, line: 32, type: !89)
!99 = !DILocalVariable(name: "out_pos", arg: 3, scope: !86, file: !27, line: 32, type: !93)
!100 = !DILocalVariable(name: "out_size", arg: 4, scope: !86, file: !27, line: 32, type: !94)
!101 = !DILocalVariable(name: "ret_", scope: !102, file: !27, line: 38, type: !55)
!102 = distinct !DILexicalBlock(scope: !86, file: !27, line: 38, column: 2)
!103 = !DILocalVariable(name: "props_size", scope: !86, file: !27, line: 42, type: !32)
!104 = !DILocalVariable(name: "ret_", scope: !105, file: !27, line: 43, type: !55)
!105 = distinct !DILexicalBlock(scope: !86, file: !27, line: 43, column: 2)
!106 = !DILocalVariable(name: "ret_", scope: !107, file: !27, line: 44, type: !55)
!107 = distinct !DILexicalBlock(scope: !86, file: !27, line: 44, column: 2)
!108 = !DILocalVariable(name: "ret_", scope: !109, file: !27, line: 51, type: !55)
!109 = distinct !DILexicalBlock(scope: !86, file: !27, line: 51, column: 2)
!110 = !DILocation(line: 0, scope: !86)
!111 = !DILocation(line: 35, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !86, file: !27, line: 35, column: 6)
!113 = !DILocation(line: 35, column: 17, scope: !112)
!114 = !DILocation(line: 35, column: 6, scope: !86)
!115 = !DILocation(line: 38, column: 2, scope: !102)
!116 = !DILocation(line: 0, scope: !102)
!117 = !DILocation(line: 38, column: 2, scope: !118)
!118 = distinct !DILexicalBlock(scope: !102, file: !27, line: 38, column: 2)
!119 = !DILocation(line: 42, column: 2, scope: !86)
!120 = !DILocation(line: 43, column: 2, scope: !105)
!121 = !DILocation(line: 0, scope: !105)
!122 = !DILocation(line: 43, column: 2, scope: !123)
!123 = distinct !DILexicalBlock(scope: !105, file: !27, line: 43, column: 2)
!124 = !DILocation(line: 44, column: 2, scope: !107)
!125 = !DILocation(line: 0, scope: !107)
!126 = !DILocation(line: 44, column: 2, scope: !127)
!127 = distinct !DILexicalBlock(scope: !107, file: !27, line: 44, column: 2)
!128 = !DILocation(line: 48, column: 17, scope: !129)
!129 = distinct !DILexicalBlock(scope: !86, file: !27, line: 48, column: 6)
!130 = !{!61, !61, i64 0}
!131 = !DILocation(line: 48, column: 15, scope: !129)
!132 = !DILocation(line: 48, column: 28, scope: !129)
!133 = !DILocation(line: 48, column: 26, scope: !129)
!134 = !DILocation(line: 48, column: 6, scope: !86)
!135 = !DILocation(line: 51, column: 2, scope: !109)
!136 = !DILocation(line: 0, scope: !109)
!137 = !DILocation(line: 51, column: 2, scope: !138)
!138 = distinct !DILexicalBlock(scope: !109, file: !27, line: 51, column: 2)
!139 = !DILocation(line: 53, column: 14, scope: !86)
!140 = !DILocation(line: 53, column: 11, scope: !86)
!141 = !DILocation(line: 55, column: 2, scope: !86)
!142 = !DILocation(line: 56, column: 1, scope: !86)
!143 = !DISubprogram(name: "lzma_vli_encode", scope: !44, file: !44, line: 115, type: !144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!144 = !DISubroutineType(types: !145)
!145 = !{!30, !43, !93, !89, !93, !94}
!146 = !DISubprogram(name: "lzma_properties_encode", scope: !39, file: !39, line: 333, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!147 = !DISubroutineType(types: !148)
!148 = !{!30, !36, !89}
