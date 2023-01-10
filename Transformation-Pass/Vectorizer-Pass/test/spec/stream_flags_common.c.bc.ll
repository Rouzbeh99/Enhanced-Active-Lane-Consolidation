; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/stream_flags_common.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1, !dbg !0
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1, !dbg !33

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !93, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata ptr %b, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i32, ptr %a, align 8, !dbg !96, !tbaa !98
  %cmp.not = icmp eq i32 %0, 0, !dbg !104
  br i1 %cmp.not, label %lor.lhs.false, label %return, !dbg !105

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %b, align 8, !dbg !106, !tbaa !98
  %cmp2.not = icmp eq i32 %1, 0, !dbg !107
  br i1 %cmp2.not, label %if.end, label %return, !dbg !108

if.end:                                           ; preds = %lor.lhs.false
  %check = getelementptr inbounds %struct.lzma_stream_flags, ptr %a, i64 0, i32 2, !dbg !109
  %2 = load i32, ptr %check, align 8, !dbg !109, !tbaa !111
  %cmp3 = icmp ugt i32 %2, 15, !dbg !112
  br i1 %cmp3, label %return, label %lor.lhs.false4, !dbg !113

lor.lhs.false4:                                   ; preds = %if.end
  %check5 = getelementptr inbounds %struct.lzma_stream_flags, ptr %b, i64 0, i32 2, !dbg !114
  %3 = load i32, ptr %check5, align 8, !dbg !114, !tbaa !111
  %cmp6 = icmp ugt i32 %3, 15, !dbg !115
  br i1 %cmp6, label %return, label %if.end8, !dbg !116

if.end8:                                          ; preds = %lor.lhs.false4
  %cmp11.not = icmp eq i32 %2, %3, !dbg !117
  br i1 %cmp11.not, label %if.end13, label %return, !dbg !119

if.end13:                                         ; preds = %if.end8
  %backward_size = getelementptr inbounds %struct.lzma_stream_flags, ptr %a, i64 0, i32 1, !dbg !120
  %4 = load i64, ptr %backward_size, align 8, !dbg !120, !tbaa !122
  %cmp14.not = icmp eq i64 %4, -1, !dbg !123
  br i1 %cmp14.not, label %if.end27, label %land.lhs.true, !dbg !124

land.lhs.true:                                    ; preds = %if.end13
  %backward_size15 = getelementptr inbounds %struct.lzma_stream_flags, ptr %b, i64 0, i32 1, !dbg !125
  %5 = load i64, ptr %backward_size15, align 8, !dbg !125, !tbaa !122
  %cmp16.not = icmp eq i64 %5, -1, !dbg !126
  br i1 %cmp16.not, label %if.end27, label %if.then17, !dbg !127

if.then17:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr undef, metadata !128, metadata !DIExpression()), !dbg !135
  %6 = add i64 %4, -4, !dbg !139
  %7 = icmp ult i64 %6, 17179869181, !dbg !139
  %and.i = and i64 %4, 3
  %cmp4.i = icmp eq i64 %and.i, 0
  %or.cond = and i1 %7, %cmp4.i, !dbg !139
  br i1 %or.cond, label %lor.lhs.false18, label %return, !dbg !139

lor.lhs.false18:                                  ; preds = %if.then17
  call void @llvm.dbg.value(metadata ptr undef, metadata !128, metadata !DIExpression()), !dbg !140
  %8 = add i64 %5, -4, !dbg !142
  %9 = icmp ult i64 %8, 17179869181, !dbg !142
  %and.i39 = and i64 %5, 3
  %cmp4.i40 = icmp eq i64 %and.i39, 0
  %or.cond43 = and i1 %9, %cmp4.i40, !dbg !142
  br i1 %or.cond43, label %if.end21, label %return, !dbg !142

if.end21:                                         ; preds = %lor.lhs.false18
  %cmp24.not = icmp eq i64 %4, %5, !dbg !143
  br i1 %cmp24.not, label %if.end27, label %return, !dbg !145

if.end27:                                         ; preds = %if.end21, %land.lhs.true, %if.end13
  br label %return, !dbg !146

return:                                           ; preds = %lor.lhs.false18, %if.then17, %if.end21, %if.end8, %if.end, %lor.lhs.false4, %entry, %lor.lhs.false, %if.end27
  %retval.0 = phi i32 [ 0, %if.end27 ], [ 8, %lor.lhs.false ], [ 8, %entry ], [ 11, %lor.lhs.false4 ], [ 11, %if.end ], [ 9, %if.end8 ], [ 9, %if.end21 ], [ 11, %if.then17 ], [ 11, %lor.lhs.false18 ], !dbg !95
  ret i32 %retval.0, !dbg !147
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lzma_header_magic", scope: !2, file: !35, line: 16, type: !45, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !32, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/stream_flags_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "dd7c194f7d4e72ab8af23ad14250b27e")
!4 = !{!5, !21, !28}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 27, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!25 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!26 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!27 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 44, baseType: !7, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!31 = !{!7}
!32 = !{!0, !33}
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "lzma_footer_magic", scope: !2, file: !35, line: 17, type: !36, isLocal: false, isDefinition: true)
!35 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_flags_common.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "dd7c194f7d4e72ab8af23ad14250b27e")
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 16, elements: !43)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 24, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !41, line: 38, baseType: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !{!44}
!44 = !DISubrange(count: 2)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 48, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 6)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 7, !"PIC Level", i32 2}
!52 = !{i32 7, !"PIE Level", i32 2}
!53 = !{i32 7, !"uwtable", i32 2}
!54 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!55 = distinct !DISubprogram(name: "lzma_stream_flags_compare", scope: !35, file: !35, line: 21, type: !56, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !59, !59}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !6, line: 237, baseType: !5)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream_flags", file: !62, line: 105, baseType: !63)
!62 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/stream_flags.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d3814c86a389337e759db33a259f1072")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 33, size: 448, elements: !64)
!64 = !{!65, !68, !74, !76, !78, !79, !80, !81, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !63, file: !62, line: 51, baseType: !66, size: 32)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 26, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !41, line: 42, baseType: !7)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "backward_size", scope: !63, file: !62, line: 69, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !70, line: 63, baseType: !71)
!70 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !39, line: 27, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !41, line: 45, baseType: !73)
!73 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !63, file: !62, line: 79, baseType: !75, size: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !22, line: 55, baseType: !21)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !63, file: !62, line: 90, baseType: !77, size: 32, offset: 160)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !6, line: 46, baseType: !28)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !63, file: !62, line: 91, baseType: !77, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !63, file: !62, line: 92, baseType: !77, size: 32, offset: 224)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !63, file: !62, line: 93, baseType: !77, size: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !63, file: !62, line: 94, baseType: !82, size: 8, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !6, line: 29, baseType: !42)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !63, file: !62, line: 95, baseType: !82, size: 8, offset: 296)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !63, file: !62, line: 96, baseType: !82, size: 8, offset: 304)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !63, file: !62, line: 97, baseType: !82, size: 8, offset: 312)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !63, file: !62, line: 98, baseType: !82, size: 8, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !63, file: !62, line: 99, baseType: !82, size: 8, offset: 328)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !63, file: !62, line: 100, baseType: !82, size: 8, offset: 336)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !63, file: !62, line: 101, baseType: !82, size: 8, offset: 344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !63, file: !62, line: 102, baseType: !66, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !63, file: !62, line: 103, baseType: !66, size: 32, offset: 384)
!92 = !{!93, !94}
!93 = !DILocalVariable(name: "a", arg: 1, scope: !55, file: !35, line: 22, type: !59)
!94 = !DILocalVariable(name: "b", arg: 2, scope: !55, file: !35, line: 22, type: !59)
!95 = !DILocation(line: 0, scope: !55)
!96 = !DILocation(line: 25, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !55, file: !35, line: 25, column: 6)
!98 = !{!99, !100, i64 0}
!99 = !{!"", !100, i64 0, !103, i64 8, !101, i64 16, !101, i64 20, !101, i64 24, !101, i64 28, !101, i64 32, !101, i64 36, !101, i64 37, !101, i64 38, !101, i64 39, !101, i64 40, !101, i64 41, !101, i64 42, !101, i64 43, !100, i64 44, !100, i64 48}
!100 = !{!"int", !101, i64 0}
!101 = !{!"omnipotent char", !102, i64 0}
!102 = !{!"Simple C/C++ TBAA"}
!103 = !{!"long", !101, i64 0}
!104 = !DILocation(line: 25, column: 17, scope: !97)
!105 = !DILocation(line: 25, column: 22, scope: !97)
!106 = !DILocation(line: 25, column: 28, scope: !97)
!107 = !DILocation(line: 25, column: 36, scope: !97)
!108 = !DILocation(line: 25, column: 6, scope: !55)
!109 = !DILocation(line: 29, column: 24, scope: !110)
!110 = distinct !DILexicalBlock(scope: !55, file: !35, line: 29, column: 6)
!111 = !{!99, !101, i64 16}
!112 = !DILocation(line: 29, column: 31, scope: !110)
!113 = !DILocation(line: 30, column: 4, scope: !110)
!114 = !DILocation(line: 30, column: 25, scope: !110)
!115 = !DILocation(line: 30, column: 32, scope: !110)
!116 = !DILocation(line: 29, column: 6, scope: !55)
!117 = !DILocation(line: 33, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !55, file: !35, line: 33, column: 6)
!119 = !DILocation(line: 33, column: 6, scope: !55)
!120 = !DILocation(line: 37, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !55, file: !35, line: 37, column: 6)
!122 = !{!99, !103, i64 8}
!123 = !DILocation(line: 37, column: 23, scope: !121)
!124 = !DILocation(line: 38, column: 4, scope: !121)
!125 = !DILocation(line: 38, column: 10, scope: !121)
!126 = !DILocation(line: 38, column: 24, scope: !121)
!127 = !DILocation(line: 37, column: 6, scope: !55)
!128 = !DILocalVariable(name: "options", arg: 1, scope: !129, file: !130, line: 26, type: !59)
!129 = distinct !DISubprogram(name: "is_backward_size_valid", scope: !130, file: !130, line: 26, type: !131, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!130 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/stream_flags_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd1b47fc58dd9f8e4116d4803eca0476")
!131 = !DISubroutineType(types: !132)
!132 = !{!133, !59}
!133 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!134 = !{!128}
!135 = !DILocation(line: 0, scope: !129, inlinedAt: !136)
!136 = distinct !DILocation(line: 39, column: 8, scope: !137)
!137 = distinct !DILexicalBlock(scope: !138, file: !35, line: 39, column: 7)
!138 = distinct !DILexicalBlock(scope: !121, file: !35, line: 38, column: 45)
!139 = !DILocation(line: 29, column: 4, scope: !129, inlinedAt: !136)
!140 = !DILocation(line: 0, scope: !129, inlinedAt: !141)
!141 = distinct !DILocation(line: 39, column: 38, scope: !137)
!142 = !DILocation(line: 29, column: 4, scope: !129, inlinedAt: !141)
!143 = !DILocation(line: 42, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !35, line: 42, column: 7)
!145 = !DILocation(line: 42, column: 7, scope: !138)
!146 = !DILocation(line: 46, column: 2, scope: !55)
!147 = !DILocation(line: 47, column: 1, scope: !55)
