; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/filter_flags_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_flags_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_filter_flags_decode(ptr noundef %filter, ptr noundef %allocator, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) local_unnamed_addr #0 !dbg !28 {
entry:
  %props_size = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %filter, metadata !69, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !70, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %in, metadata !71, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !72, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !73, metadata !DIExpression()), !dbg !81
  %options = getelementptr inbounds %struct.lzma_filter, ptr %filter, i64 0, i32 1, !dbg !82
  store ptr null, ptr %options, align 8, !dbg !83, !tbaa !84
  %call = tail call i32 @lzma_vli_decode(ptr noundef %filter, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #4, !dbg !90
  call void @llvm.dbg.value(metadata i32 %call, metadata !74, metadata !DIExpression()), !dbg !91
  %cmp.not = icmp eq i32 %call, 0, !dbg !92
  br i1 %cmp.not, label %do.end, label %return

do.end:                                           ; preds = %entry
  %0 = load i64, ptr %filter, align 8, !dbg !94, !tbaa !96
  %cmp2 = icmp ugt i64 %0, 4611686018427387903, !dbg !97
  br i1 %cmp2, label %return, label %if.end4, !dbg !98

if.end4:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %props_size) #4, !dbg !99
  call void @llvm.dbg.value(metadata ptr %props_size, metadata !77, metadata !DIExpression(DW_OP_deref)), !dbg !81
  %call7 = call i32 @lzma_vli_decode(ptr noundef nonnull %props_size, ptr noundef null, ptr noundef %in, ptr noundef %in_pos, i64 noundef %in_size) #4, !dbg !100
  call void @llvm.dbg.value(metadata i32 %call7, metadata !78, metadata !DIExpression()), !dbg !101
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !102
  br i1 %cmp8.not, label %do.end14, label %cleanup20

do.end14:                                         ; preds = %if.end4
  %1 = load i64, ptr %in_pos, align 8, !dbg !104, !tbaa !106
  %sub = sub i64 %in_size, %1, !dbg !107
  %2 = load i64, ptr %props_size, align 8, !dbg !108, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %2, metadata !77, metadata !DIExpression()), !dbg !81
  %cmp15 = icmp ult i64 %sub, %2, !dbg !109
  br i1 %cmp15, label %cleanup20, label %if.end17, !dbg !110

if.end17:                                         ; preds = %do.end14
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %1, !dbg !111
  %call18 = call i32 @lzma_properties_decode(ptr noundef nonnull %filter, ptr noundef %allocator, ptr noundef %add.ptr, i64 noundef %2) #4, !dbg !112
  call void @llvm.dbg.value(metadata i32 %call18, metadata !80, metadata !DIExpression()), !dbg !81
  %3 = load i64, ptr %props_size, align 8, !dbg !113, !tbaa !106
  call void @llvm.dbg.value(metadata i64 %3, metadata !77, metadata !DIExpression()), !dbg !81
  %4 = load i64, ptr %in_pos, align 8, !dbg !114, !tbaa !106
  %add = add i64 %4, %3, !dbg !114
  store i64 %add, ptr %in_pos, align 8, !dbg !114, !tbaa !106
  br label %cleanup20

cleanup20:                                        ; preds = %do.end14, %if.end4, %if.end17
  %retval.2 = phi i32 [ %call18, %if.end17 ], [ %call7, %if.end4 ], [ 9, %do.end14 ], !dbg !81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %props_size) #4, !dbg !115
  br label %return

return:                                           ; preds = %entry, %do.end, %cleanup20
  %retval.3 = phi i32 [ %call, %entry ], [ %retval.2, %cleanup20 ], [ 9, %do.end ], !dbg !81
  ret i32 %retval.3, !dbg !115
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !116 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !121 i32 @lzma_properties_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !19, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/filter_flags_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "a151777be74814b1fc1db0aad7e16145")
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
!28 = distinct !DISubprogram(name: "lzma_filter_flags_decode", scope: !29, file: !29, line: 17, type: !30, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!29 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/filter_flags_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a151777be74814b1fc1db0aad7e16145")
!30 = !DISubroutineType(types: !31)
!31 = !{!32, !33, !47, !62, !67, !55}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !35, line: 65, baseType: !36)
!35 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 43, size: 128, elements: !37)
!37 = !{!38, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !35, line: 54, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !40, line: 63, baseType: !41)
!40 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !42, line: 27, baseType: !43)
!42 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !44, line: 45, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!45 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !36, file: !35, line: 63, baseType: !20, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !50)
!50 = !{!51, !57, !61}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !49, file: !4, line: 376, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!20, !20, !55, !55}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !45)
!56 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !49, file: !4, line: 390, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !20, !20}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !49, file: !4, line: 401, baseType: !20, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !42, line: 24, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !44, line: 38, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !77, !78, !80}
!69 = !DILocalVariable(name: "filter", arg: 1, scope: !28, file: !29, line: 18, type: !33)
!70 = !DILocalVariable(name: "allocator", arg: 2, scope: !28, file: !29, line: 18, type: !47)
!71 = !DILocalVariable(name: "in", arg: 3, scope: !28, file: !29, line: 19, type: !62)
!72 = !DILocalVariable(name: "in_pos", arg: 4, scope: !28, file: !29, line: 19, type: !67)
!73 = !DILocalVariable(name: "in_size", arg: 5, scope: !28, file: !29, line: 19, type: !55)
!74 = !DILocalVariable(name: "ret_", scope: !75, file: !29, line: 25, type: !76)
!75 = distinct !DILexicalBlock(scope: !28, file: !29, line: 25, column: 2)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!77 = !DILocalVariable(name: "props_size", scope: !28, file: !29, line: 32, type: !39)
!78 = !DILocalVariable(name: "ret_", scope: !79, file: !29, line: 33, type: !76)
!79 = distinct !DILexicalBlock(scope: !28, file: !29, line: 33, column: 2)
!80 = !DILocalVariable(name: "ret", scope: !28, file: !29, line: 40, type: !76)
!81 = !DILocation(line: 0, scope: !28)
!82 = !DILocation(line: 22, column: 10, scope: !28)
!83 = !DILocation(line: 22, column: 18, scope: !28)
!84 = !{!85, !89, i64 8}
!85 = !{!"", !86, i64 0, !89, i64 8}
!86 = !{!"long", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!"any pointer", !87, i64 0}
!90 = !DILocation(line: 25, column: 2, scope: !75)
!91 = !DILocation(line: 0, scope: !75)
!92 = !DILocation(line: 25, column: 2, scope: !93)
!93 = distinct !DILexicalBlock(scope: !75, file: !29, line: 25, column: 2)
!94 = !DILocation(line: 28, column: 14, scope: !95)
!95 = distinct !DILexicalBlock(scope: !28, file: !29, line: 28, column: 6)
!96 = !{!85, !86, i64 0}
!97 = !DILocation(line: 28, column: 17, scope: !95)
!98 = !DILocation(line: 28, column: 6, scope: !28)
!99 = !DILocation(line: 32, column: 2, scope: !28)
!100 = !DILocation(line: 33, column: 2, scope: !79)
!101 = !DILocation(line: 0, scope: !79)
!102 = !DILocation(line: 33, column: 2, scope: !103)
!103 = distinct !DILexicalBlock(scope: !79, file: !29, line: 33, column: 2)
!104 = !DILocation(line: 37, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !28, file: !29, line: 37, column: 6)
!106 = !{!86, !86, i64 0}
!107 = !DILocation(line: 37, column: 14, scope: !105)
!108 = !DILocation(line: 37, column: 26, scope: !105)
!109 = !DILocation(line: 37, column: 24, scope: !105)
!110 = !DILocation(line: 37, column: 6, scope: !28)
!111 = !DILocation(line: 41, column: 26, scope: !28)
!112 = !DILocation(line: 40, column: 23, scope: !28)
!113 = !DILocation(line: 43, column: 13, scope: !28)
!114 = !DILocation(line: 43, column: 10, scope: !28)
!115 = !DILocation(line: 46, column: 1, scope: !28)
!116 = !DISubprogram(name: "lzma_vli_decode", scope: !40, file: !40, line: 154, type: !117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !120)
!117 = !DISubroutineType(types: !118)
!118 = !{!32, !119, !67, !62, !67, !55}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!120 = !{}
!121 = !DISubprogram(name: "lzma_properties_decode", scope: !35, file: !35, line: 358, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !120)
!122 = !DISubroutineType(types: !123)
!123 = !{!32, !33, !47, !62, !55}
