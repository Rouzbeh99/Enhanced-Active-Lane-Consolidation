; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/simple_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/simple_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @lzma_simple_props_size(ptr nocapture noundef writeonly %size, ptr noundef readonly %options) local_unnamed_addr #0 !dbg !28 {
entry:
  call void @llvm.dbg.value(metadata ptr %size, metadata !41, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata ptr %options, metadata !42, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata ptr %options, metadata !43, metadata !DIExpression()), !dbg !52
  %cmp = icmp eq ptr %options, null, !dbg !53
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !54

lor.rhs:                                          ; preds = %entry
  %0 = load i32, ptr %options, align 4, !dbg !55, !tbaa !56
  %cmp1 = icmp eq i32 %0, 0, !dbg !61
  %phi.sel = select i1 %cmp1, i32 0, i32 4, !dbg !54
  br label %lor.end, !dbg !54

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i32 [ 0, %entry ], [ %phi.sel, %lor.rhs ]
  store i32 %1, ptr %size, align 4, !dbg !62, !tbaa !63
  ret i32 0, !dbg !64
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local i32 @lzma_simple_props_encode(ptr noundef readonly %options, ptr nocapture noundef writeonly %out) local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata ptr %options, metadata !73, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata ptr %out, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata ptr %options, metadata !75, metadata !DIExpression()), !dbg !76
  %cmp = icmp eq ptr %options, null, !dbg !77
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !79

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %options, align 4, !dbg !80, !tbaa !56
  %cmp1 = icmp eq i32 %0, 0, !dbg !81
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !82

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %out, metadata !83, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %0, metadata !89, metadata !DIExpression()), !dbg !90
  %conv.i = trunc i32 %0 to i8, !dbg !92
  store i8 %conv.i, ptr %out, align 1, !dbg !93, !tbaa !94
  %shr.i = lshr i32 %0, 8, !dbg !95
  %conv1.i = trunc i32 %shr.i to i8, !dbg !96
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i64 1, !dbg !97
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !98, !tbaa !94
  %shr3.i = lshr i32 %0, 16, !dbg !99
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !100
  %arrayidx5.i = getelementptr inbounds i8, ptr %out, i64 2, !dbg !101
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !102, !tbaa !94
  %shr6.i = lshr i32 %0, 24, !dbg !103
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !104
  %arrayidx8.i = getelementptr inbounds i8, ptr %out, i64 3, !dbg !105
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !106, !tbaa !94
  br label %cleanup, !dbg !107

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret i32 0, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/simple_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "34df5d4515882cf036653c42587118a2")
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
!19 = !{!20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!28 = distinct !DISubprogram(name: "lzma_simple_props_size", scope: !29, file: !29, line: 17, type: !30, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!29 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "34df5d4515882cf036653c42587118a2")
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !38}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !35, line: 26, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !37, line: 42, baseType: !5)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !{!41, !42, !43}
!41 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !29, line: 17, type: !33)
!42 = !DILocalVariable(name: "options", arg: 2, scope: !28, file: !29, line: 17, type: !38)
!43 = !DILocalVariable(name: "opt", scope: !28, file: !29, line: 19, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_bcj", file: !48, line: 90, baseType: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/bcj.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a1035092336f34cf9afafbb05b1edd83")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 73, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "start_offset", scope: !49, file: !48, line: 88, baseType: !34, size: 32)
!52 = !DILocation(line: 0, scope: !28)
!53 = !DILocation(line: 20, column: 15, scope: !28)
!54 = !DILocation(line: 20, column: 23, scope: !28)
!55 = !DILocation(line: 20, column: 31, scope: !28)
!56 = !{!57, !58, i64 0}
!57 = !{!"", !58, i64 0}
!58 = !{!"int", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C/C++ TBAA"}
!61 = !DILocation(line: 20, column: 44, scope: !28)
!62 = !DILocation(line: 20, column: 8, scope: !28)
!63 = !{!58, !58, i64 0}
!64 = !DILocation(line: 21, column: 2, scope: !28)
!65 = distinct !DISubprogram(name: "lzma_simple_props_encode", scope: !29, file: !29, line: 26, type: !66, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!66 = !DISubroutineType(types: !67)
!67 = !{!32, !38, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !35, line: 24, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !37, line: 38, baseType: !71)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(name: "options", arg: 1, scope: !65, file: !29, line: 26, type: !38)
!74 = !DILocalVariable(name: "out", arg: 2, scope: !65, file: !29, line: 26, type: !68)
!75 = !DILocalVariable(name: "opt", scope: !65, file: !29, line: 28, type: !44)
!76 = !DILocation(line: 0, scope: !65)
!77 = !DILocation(line: 32, column: 10, scope: !78)
!78 = distinct !DILexicalBlock(scope: !65, file: !29, line: 32, column: 6)
!79 = !DILocation(line: 32, column: 18, scope: !78)
!80 = !DILocation(line: 32, column: 26, scope: !78)
!81 = !DILocation(line: 32, column: 39, scope: !78)
!82 = !DILocation(line: 32, column: 6, scope: !65)
!83 = !DILocalVariable(name: "buf", arg: 1, scope: !84, file: !85, line: 351, type: !68)
!84 = distinct !DISubprogram(name: "unaligned_write32le", scope: !85, file: !85, line: 351, type: !86, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!85 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!86 = !DISubroutineType(types: !87)
!87 = !{null, !68, !34}
!88 = !{!83, !89}
!89 = !DILocalVariable(name: "num", arg: 2, scope: !84, file: !85, line: 351, type: !34)
!90 = !DILocation(line: 0, scope: !84, inlinedAt: !91)
!91 = distinct !DILocation(line: 35, column: 2, scope: !65)
!92 = !DILocation(line: 353, column: 11, scope: !84, inlinedAt: !91)
!93 = !DILocation(line: 353, column: 9, scope: !84, inlinedAt: !91)
!94 = !{!59, !59, i64 0}
!95 = !DILocation(line: 354, column: 15, scope: !84, inlinedAt: !91)
!96 = !DILocation(line: 354, column: 11, scope: !84, inlinedAt: !91)
!97 = !DILocation(line: 354, column: 2, scope: !84, inlinedAt: !91)
!98 = !DILocation(line: 354, column: 9, scope: !84, inlinedAt: !91)
!99 = !DILocation(line: 355, column: 15, scope: !84, inlinedAt: !91)
!100 = !DILocation(line: 355, column: 11, scope: !84, inlinedAt: !91)
!101 = !DILocation(line: 355, column: 2, scope: !84, inlinedAt: !91)
!102 = !DILocation(line: 355, column: 9, scope: !84, inlinedAt: !91)
!103 = !DILocation(line: 356, column: 15, scope: !84, inlinedAt: !91)
!104 = !DILocation(line: 356, column: 11, scope: !84, inlinedAt: !91)
!105 = !DILocation(line: 356, column: 2, scope: !84, inlinedAt: !91)
!106 = !DILocation(line: 356, column: 9, scope: !84, inlinedAt: !91)
!107 = !DILocation(line: 37, column: 2, scope: !65)
!108 = !DILocation(line: 38, column: 1, scope: !65)
