; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/easy_buffer_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_easy = type { [5 x %struct.lzma_filter], %struct.lzma_options_lzma }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_easy_buffer_encode(i32 noundef %preset, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) local_unnamed_addr #0 !dbg !48 {
entry:
  %opt_easy = alloca %struct.lzma_options_easy, align 8
  call void @llvm.dbg.value(metadata i32 %preset, metadata !83, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i32 %check, metadata !84, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !85, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %in, metadata !86, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %in_size, metadata !87, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %out, metadata !88, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !89, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata i64 %out_size, metadata !90, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %opt_easy, metadata !91, metadata !DIExpression()), !dbg !143
  %call = call zeroext i1 @lzma_easy_preset(ptr noundef nonnull %opt_easy, i32 noundef %preset) #4, !dbg !144
  br i1 %call, label %cleanup, label %if.end, !dbg !146

if.end:                                           ; preds = %entry
  %call1 = call i32 @lzma_stream_buffer_encode(ptr noundef nonnull %opt_easy, i32 noundef %check, ptr noundef %allocator, ptr noundef %in, i64 noundef %in_size, ptr noundef %out, ptr noundef %out_pos, i64 noundef %out_size) #4, !dbg !147
  br label %cleanup, !dbg !148

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %call1, %if.end ], [ 8, %entry ], !dbg !141
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %opt_easy) #4, !dbg !149
  ret i32 %retval.0, !dbg !149
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !150 zeroext i1 @lzma_easy_preset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !156 i32 @lzma_stream_buffer_encode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

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
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/easy_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "762e8c7ebc1c62e1479c966319025d31")
!2 = !{!3, !19, !26, !31, !38}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 138, baseType: !5, size: 32, elements: !28)
!27 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!30 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 58, baseType: !5, size: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!34 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!35 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!36 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!37 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !39)
!39 = !{!40}
!40 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"PIE Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!48 = distinct !DISubprogram(name: "lzma_easy_buffer_encode", scope: !49, file: !49, line: 17, type: !50, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!49 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_buffer_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "762e8c7ebc1c62e1479c966319025d31")
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53, !57, !58, !75, !67, !80, !81, !67}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !54, line: 26, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !56, line: 42, baseType: !5)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !61)
!61 = !{!62, !70, !74}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !60, file: !4, line: 376, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!66, !66, !67, !67}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 46, baseType: !69)
!68 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !60, file: !4, line: 390, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !66, !66}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !60, file: !4, line: 401, baseType: !66, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !54, line: 24, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !56, line: 38, baseType: !79)
!79 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91}
!83 = !DILocalVariable(name: "preset", arg: 1, scope: !48, file: !49, line: 17, type: !53)
!84 = !DILocalVariable(name: "check", arg: 2, scope: !48, file: !49, line: 17, type: !57)
!85 = !DILocalVariable(name: "allocator", arg: 3, scope: !48, file: !49, line: 18, type: !58)
!86 = !DILocalVariable(name: "in", arg: 4, scope: !48, file: !49, line: 18, type: !75)
!87 = !DILocalVariable(name: "in_size", arg: 5, scope: !48, file: !49, line: 18, type: !67)
!88 = !DILocalVariable(name: "out", arg: 6, scope: !48, file: !49, line: 19, type: !80)
!89 = !DILocalVariable(name: "out_pos", arg: 7, scope: !48, file: !49, line: 19, type: !81)
!90 = !DILocalVariable(name: "out_size", arg: 8, scope: !48, file: !49, line: 19, type: !67)
!91 = !DILocalVariable(name: "opt_easy", scope: !48, file: !49, line: 21, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_easy", file: !93, line: 27, baseType: !94)
!93 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/easy_preset.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d577811d5aeebd46232348c9f7923e50")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !93, line: 16, size: 1536, elements: !95)
!95 = !{!96, !110}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !94, file: !93, line: 19, baseType: !97, size: 640)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 640, elements: !108)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !99, line: 65, baseType: !100)
!99 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 43, size: 128, elements: !101)
!101 = !{!102, !107}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !100, file: !99, line: 54, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !104, line: 63, baseType: !105)
!104 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !54, line: 27, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !56, line: 45, baseType: !69)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !100, file: !99, line: 63, baseType: !66, size: 64, offset: 64)
!108 = !{!109}
!109 = !DISubrange(count: 5)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "opt_lzma", scope: !94, file: !93, line: 22, baseType: !111, size: 896, offset: 640)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !27, line: 399, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 185, size: 896, elements: !113)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !122, !123, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !136, !137, !138, !139, !140}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !112, file: !27, line: 217, baseType: !53, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !112, file: !27, line: 240, baseType: !75, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !112, file: !27, line: 254, baseType: !53, size: 32, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !112, file: !27, line: 281, baseType: !53, size: 32, offset: 160)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !112, file: !27, line: 293, baseType: !53, size: 32, offset: 192)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !112, file: !27, line: 316, baseType: !53, size: 32, offset: 224)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !112, file: !27, line: 322, baseType: !121, size: 32, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !27, line: 155, baseType: !26)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !112, file: !27, line: 342, baseType: !53, size: 32, offset: 288)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !112, file: !27, line: 345, baseType: !124, size: 32, offset: 320)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !27, line: 111, baseType: !31)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !112, file: !27, line: 375, baseType: !53, size: 32, offset: 352)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !112, file: !27, line: 384, baseType: !53, size: 32, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !112, file: !27, line: 385, baseType: !53, size: 32, offset: 416)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !112, file: !27, line: 386, baseType: !53, size: 32, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !112, file: !27, line: 387, baseType: !53, size: 32, offset: 480)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !112, file: !27, line: 388, baseType: !53, size: 32, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !112, file: !27, line: 389, baseType: !53, size: 32, offset: 544)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !112, file: !27, line: 390, baseType: !53, size: 32, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !112, file: !27, line: 391, baseType: !53, size: 32, offset: 608)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !112, file: !27, line: 392, baseType: !135, size: 32, offset: 640)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !38)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !112, file: !27, line: 393, baseType: !135, size: 32, offset: 672)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !112, file: !27, line: 394, baseType: !135, size: 32, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !112, file: !27, line: 395, baseType: !135, size: 32, offset: 736)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !112, file: !27, line: 396, baseType: !66, size: 64, offset: 768)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !112, file: !27, line: 397, baseType: !66, size: 64, offset: 832)
!141 = !DILocation(line: 0, scope: !48)
!142 = !DILocation(line: 21, column: 2, scope: !48)
!143 = !DILocation(line: 21, column: 20, scope: !48)
!144 = !DILocation(line: 22, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !48, file: !49, line: 22, column: 6)
!146 = !DILocation(line: 22, column: 6, scope: !48)
!147 = !DILocation(line: 25, column: 9, scope: !48)
!148 = !DILocation(line: 25, column: 2, scope: !48)
!149 = !DILocation(line: 27, column: 1, scope: !48)
!150 = !DISubprogram(name: "lzma_easy_preset", scope: !93, file: !93, line: 32, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !155)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !154, !53}
!153 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!155 = !{}
!156 = !DISubprogram(name: "lzma_stream_buffer_encode", scope: !157, file: !157, line: 270, type: !158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !155)
!157 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/container.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7f878de3abe07c50108c7f7da139bedb")
!158 = !DISubroutineType(types: !159)
!159 = !{!52, !160, !57, !58, !75, !67, !80, !81, !67}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
