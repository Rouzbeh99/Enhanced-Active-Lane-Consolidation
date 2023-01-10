; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/easy_encoder_memusage.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_encoder_memusage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_easy = type { [5 x %struct.lzma_filter], %struct.lzma_options_lzma }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_easy_encoder_memusage(i32 noundef %preset) local_unnamed_addr #0 !dbg !27 {
entry:
  %opt_easy = alloca %struct.lzma_options_easy, align 8
  call void @llvm.dbg.value(metadata i32 %preset, metadata !39, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %opt_easy, metadata !40, metadata !DIExpression()), !dbg !96
  %call = call zeroext i1 @lzma_easy_preset(ptr noundef nonnull %opt_easy, i32 noundef %preset) #4, !dbg !97
  br i1 %call, label %cleanup, label %if.end, !dbg !99

if.end:                                           ; preds = %entry
  %call1 = call i64 @lzma_raw_encoder_memusage(ptr noundef nonnull %opt_easy) #4, !dbg !100
  br label %cleanup, !dbg !101

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i64 [ %call1, %if.end ], [ 4294967295, %entry ], !dbg !94
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !102
  ret i64 %retval.0, !dbg !102
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !103 zeroext i1 @lzma_easy_preset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !109 i64 @lzma_raw_encoder_memusage(ptr noundef) local_unnamed_addr #3

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
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_encoder_memusage.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "fae1b715141cb47a0d4d2ef7263869c7")
!2 = !{!3, !9, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 138, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!8 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15}
!11 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!12 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!13 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!14 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!15 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 44, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!18 = !{!19}
!19 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!27 = distinct !DISubprogram(name: "lzma_easy_encoder_memusage", scope: !28, file: !28, line: 17, type: !29, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!28 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_encoder_memusage.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fae1b715141cb47a0d4d2ef7263869c7")
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !36}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 45, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !5)
!38 = !{!39, !40}
!39 = !DILocalVariable(name: "preset", arg: 1, scope: !27, file: !28, line: 17, type: !36)
!40 = !DILocalVariable(name: "opt_easy", scope: !27, file: !28, line: 19, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_easy", file: !42, line: 27, baseType: !43)
!42 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_preset.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d577811d5aeebd46232348c9f7923e50")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !42, line: 16, size: 1536, elements: !44)
!44 = !{!45, !58}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !43, file: !42, line: 19, baseType: !46, size: 640)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 640, elements: !56)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !48, line: 65, baseType: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 43, size: 128, elements: !50)
!50 = !{!51, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !49, file: !48, line: 54, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !53, line: 63, baseType: !31)
!53 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !49, file: !48, line: 63, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !{!57}
!57 = !DISubrange(count: 5)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "opt_lzma", scope: !43, file: !42, line: 22, baseType: !59, size: 896, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !4, line: 399, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 185, size: 896, elements: !61)
!61 = !{!62, !63, !69, !70, !71, !72, !73, !75, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !60, file: !4, line: 217, baseType: !36, size: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !60, file: !4, line: 240, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !68)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !60, file: !4, line: 254, baseType: !36, size: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !60, file: !4, line: 281, baseType: !36, size: 32, offset: 160)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !60, file: !4, line: 293, baseType: !36, size: 32, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !60, file: !4, line: 316, baseType: !36, size: 32, offset: 224)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !60, file: !4, line: 322, baseType: !74, size: 32, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !4, line: 155, baseType: !3)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !60, file: !4, line: 342, baseType: !36, size: 32, offset: 288)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !60, file: !4, line: 345, baseType: !77, size: 32, offset: 320)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !9)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !60, file: !4, line: 375, baseType: !36, size: 32, offset: 352)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !60, file: !4, line: 384, baseType: !36, size: 32, offset: 384)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !60, file: !4, line: 385, baseType: !36, size: 32, offset: 416)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !60, file: !4, line: 386, baseType: !36, size: 32, offset: 448)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !60, file: !4, line: 387, baseType: !36, size: 32, offset: 480)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !60, file: !4, line: 388, baseType: !36, size: 32, offset: 512)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !60, file: !4, line: 389, baseType: !36, size: 32, offset: 544)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !60, file: !4, line: 390, baseType: !36, size: 32, offset: 576)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !60, file: !4, line: 391, baseType: !36, size: 32, offset: 608)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !60, file: !4, line: 392, baseType: !88, size: 32, offset: 640)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !17, line: 46, baseType: !16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !60, file: !4, line: 393, baseType: !88, size: 32, offset: 672)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !60, file: !4, line: 394, baseType: !88, size: 32, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !60, file: !4, line: 395, baseType: !88, size: 32, offset: 736)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !60, file: !4, line: 396, baseType: !55, size: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !60, file: !4, line: 397, baseType: !55, size: 64, offset: 832)
!94 = !DILocation(line: 0, scope: !27)
!95 = !DILocation(line: 19, column: 2, scope: !27)
!96 = !DILocation(line: 19, column: 20, scope: !27)
!97 = !DILocation(line: 20, column: 6, scope: !98)
!98 = distinct !DILexicalBlock(scope: !27, file: !28, line: 20, column: 6)
!99 = !DILocation(line: 20, column: 6, scope: !27)
!100 = !DILocation(line: 23, column: 9, scope: !27)
!101 = !DILocation(line: 23, column: 2, scope: !27)
!102 = !DILocation(line: 24, column: 1, scope: !27)
!103 = !DISubprogram(name: "lzma_easy_preset", scope: !42, file: !42, line: 32, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !108)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107, !36}
!106 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!108 = !{}
!109 = !DISubprogram(name: "lzma_raw_encoder_memusage", scope: !48, file: !48, line: 138, type: !110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !108)
!110 = !DISubroutineType(types: !111)
!111 = !{!31, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
