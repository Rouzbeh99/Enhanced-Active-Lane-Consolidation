; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/easy_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_easy = type { [5 x %struct.lzma_filter], %struct.lzma_options_lzma }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_easy_encoder(ptr noundef %strm, i32 noundef %preset, i32 noundef %check) local_unnamed_addr #0 !dbg !153 {
entry:
  %opt_easy = alloca %struct.lzma_options_easy, align 8
  call void @llvm.dbg.value(metadata ptr %strm, metadata !185, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %preset, metadata !186, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.value(metadata i32 %check, metadata !187, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %opt_easy, metadata !188, metadata !DIExpression()), !dbg !229
  %call = call zeroext i1 @lzma_easy_preset(ptr noundef nonnull %opt_easy, i32 noundef %preset) #4, !dbg !230
  br i1 %call, label %cleanup, label %if.end, !dbg !232

if.end:                                           ; preds = %entry
  %call1 = call i32 @lzma_stream_encoder(ptr noundef %strm, ptr noundef nonnull %opt_easy, i32 noundef %check) #4, !dbg !233
  br label %cleanup, !dbg !234

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 8, %entry ], !dbg !227
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !235
  ret i32 %retval.0, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !236 zeroext i1 @lzma_easy_preset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !241 i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "3c9a4e9015360093ef9ebba762c54985")
!2 = !{!3, !19, !25, !32, !131, !134, !139}
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
!146 = !{i32 7, !"Dwarf Version", i32 5}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 4}
!149 = !{i32 7, !"PIC Level", i32 2}
!150 = !{i32 7, !"PIE Level", i32 2}
!151 = !{i32 7, !"uwtable", i32 2}
!152 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!153 = distinct !DISubprogram(name: "lzma_easy_encoder", scope: !154, file: !154, line: 18, type: !155, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!154 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3c9a4e9015360093ef9ebba762c54985")
!155 = !DISubroutineType(types: !156)
!156 = !{!59, !157, !182, !96}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_stream", file: !4, line: 490, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 453, size: 1088, elements: !160)
!160 = !{!161, !162, !163, !164, !165, !166, !167, !168, !171, !172, !173, !174, !175, !176, !177, !178, !179, !181}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !159, file: !4, line: 454, baseType: !77, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !159, file: !4, line: 455, baseType: !69, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !159, file: !4, line: 456, baseType: !46, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !159, file: !4, line: 458, baseType: !85, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !159, file: !4, line: 459, baseType: !69, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !159, file: !4, line: 460, baseType: !46, size: 64, offset: 320)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !159, file: !4, line: 468, baseType: !60, size: 64, offset: 384)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !159, file: !4, line: 471, baseType: !169, size: 64, offset: 448)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_internal", file: !4, line: 411, baseType: !34)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !159, file: !4, line: 479, baseType: !68, size: 64, offset: 512)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !159, file: !4, line: 480, baseType: !68, size: 64, offset: 576)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !159, file: !4, line: 481, baseType: !68, size: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr4", scope: !159, file: !4, line: 482, baseType: !68, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !159, file: !4, line: 483, baseType: !46, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !159, file: !4, line: 484, baseType: !46, size: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !159, file: !4, line: 485, baseType: !69, size: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !159, file: !4, line: 486, baseType: !69, size: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !159, file: !4, line: 487, baseType: !180, size: 32, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !131)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !159, file: !4, line: 488, baseType: !180, size: 32, offset: 1056)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !47, line: 26, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !49, line: 42, baseType: !5)
!184 = !{!185, !186, !187, !188}
!185 = !DILocalVariable(name: "strm", arg: 1, scope: !153, file: !154, line: 18, type: !157)
!186 = !DILocalVariable(name: "preset", arg: 2, scope: !153, file: !154, line: 18, type: !182)
!187 = !DILocalVariable(name: "check", arg: 3, scope: !153, file: !154, line: 18, type: !96)
!188 = !DILocalVariable(name: "opt_easy", scope: !153, file: !154, line: 20, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_easy", file: !190, line: 27, baseType: !191)
!190 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_preset.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d577811d5aeebd46232348c9f7923e50")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 16, size: 1536, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !191, file: !190, line: 19, baseType: !194, size: 640)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 640, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 5)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "opt_lzma", scope: !191, file: !190, line: 22, baseType: !198, size: 896, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !135, line: 399, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 185, size: 896, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !209, !210, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !199, file: !135, line: 217, baseType: !182, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !199, file: !135, line: 240, baseType: !77, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !199, file: !135, line: 254, baseType: !182, size: 32, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !199, file: !135, line: 281, baseType: !182, size: 32, offset: 160)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !199, file: !135, line: 293, baseType: !182, size: 32, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !199, file: !135, line: 316, baseType: !182, size: 32, offset: 224)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !199, file: !135, line: 322, baseType: !208, size: 32, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !135, line: 155, baseType: !134)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !199, file: !135, line: 342, baseType: !182, size: 32, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !199, file: !135, line: 345, baseType: !211, size: 32, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !135, line: 111, baseType: !139)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !199, file: !135, line: 375, baseType: !182, size: 32, offset: 352)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !199, file: !135, line: 384, baseType: !182, size: 32, offset: 384)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !199, file: !135, line: 385, baseType: !182, size: 32, offset: 416)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !199, file: !135, line: 386, baseType: !182, size: 32, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !199, file: !135, line: 387, baseType: !182, size: 32, offset: 480)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !199, file: !135, line: 388, baseType: !182, size: 32, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !199, file: !135, line: 389, baseType: !182, size: 32, offset: 544)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !199, file: !135, line: 390, baseType: !182, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !199, file: !135, line: 391, baseType: !182, size: 32, offset: 608)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !199, file: !135, line: 392, baseType: !180, size: 32, offset: 640)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !199, file: !135, line: 393, baseType: !180, size: 32, offset: 672)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !199, file: !135, line: 394, baseType: !180, size: 32, offset: 704)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !199, file: !135, line: 395, baseType: !180, size: 32, offset: 736)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !199, file: !135, line: 396, baseType: !68, size: 64, offset: 768)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !199, file: !135, line: 397, baseType: !68, size: 64, offset: 832)
!227 = !DILocation(line: 0, scope: !153)
!228 = !DILocation(line: 20, column: 2, scope: !153)
!229 = !DILocation(line: 20, column: 20, scope: !153)
!230 = !DILocation(line: 21, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !153, file: !154, line: 21, column: 6)
!232 = !DILocation(line: 21, column: 6, scope: !153)
!233 = !DILocation(line: 24, column: 9, scope: !153)
!234 = !DILocation(line: 24, column: 2, scope: !153)
!235 = !DILocation(line: 25, column: 1, scope: !153)
!236 = !DISubprogram(name: "lzma_easy_preset", scope: !190, file: !190, line: 32, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!237 = !DISubroutineType(types: !238)
!238 = !{!120, !239, !182}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!240 = !{}
!241 = !DISubprogram(name: "lzma_stream_encoder", scope: !242, file: !242, line: 188, type: !243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !240)
!242 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/container.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7f878de3abe07c50108c7f7da139bedb")
!243 = !DISubroutineType(types: !244)
!244 = !{!59, !157, !108, !96}
