; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/log.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @IsEventLogging() local_unnamed_addr #0 !dbg !114 {
entry:
  ret i32 0, !dbg !120
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @ListLogInfo(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !121 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata ptr %exception, metadata !206, metadata !DIExpression()), !dbg !207
  ret i32 0, !dbg !208
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @LogComponentGenesis() local_unnamed_addr #0 !dbg !209 {
entry:
  ret i32 0, !dbg !210
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @LogComponentTerminus() local_unnamed_addr #0 !dbg !211 {
entry:
  ret void, !dbg !214
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @LogMagickEvent(i32 noundef %type, ptr nocapture noundef readnone %module, ptr nocapture noundef readnone %function, i64 noundef %line, ptr nocapture noundef readnone %format, ...) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !224, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata ptr %module, metadata !225, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata ptr %function, metadata !226, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i64 %line, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata ptr %format, metadata !228, metadata !DIExpression()), !dbg !229
  ret i32 0, !dbg !230
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @SetLogEventMask(ptr nocapture noundef readnone %events) local_unnamed_addr #0 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata ptr %events, metadata !235, metadata !DIExpression()), !dbg !236
  ret i32 0, !dbg !237
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @SetLogFormat(ptr nocapture noundef %format) local_unnamed_addr #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata ptr %format, metadata !242, metadata !DIExpression()), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/log.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "d73449dfd8d99fafbad738de95724b48")
!2 = !{!3, !9, !82}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 28, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81}
!12 = !DIEnumerator(name: "UndefinedException", value: 0)
!13 = !DIEnumerator(name: "WarningException", value: 300)
!14 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!15 = !DIEnumerator(name: "TypeWarning", value: 305)
!16 = !DIEnumerator(name: "OptionWarning", value: 310)
!17 = !DIEnumerator(name: "DelegateWarning", value: 315)
!18 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!19 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!20 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!21 = !DIEnumerator(name: "BlobWarning", value: 335)
!22 = !DIEnumerator(name: "StreamWarning", value: 340)
!23 = !DIEnumerator(name: "CacheWarning", value: 345)
!24 = !DIEnumerator(name: "CoderWarning", value: 350)
!25 = !DIEnumerator(name: "FilterWarning", value: 352)
!26 = !DIEnumerator(name: "ModuleWarning", value: 355)
!27 = !DIEnumerator(name: "DrawWarning", value: 360)
!28 = !DIEnumerator(name: "ImageWarning", value: 365)
!29 = !DIEnumerator(name: "WandWarning", value: 370)
!30 = !DIEnumerator(name: "RandomWarning", value: 375)
!31 = !DIEnumerator(name: "XServerWarning", value: 380)
!32 = !DIEnumerator(name: "MonitorWarning", value: 385)
!33 = !DIEnumerator(name: "RegistryWarning", value: 390)
!34 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!35 = !DIEnumerator(name: "PolicyWarning", value: 399)
!36 = !DIEnumerator(name: "ErrorException", value: 400)
!37 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!38 = !DIEnumerator(name: "TypeError", value: 405)
!39 = !DIEnumerator(name: "OptionError", value: 410)
!40 = !DIEnumerator(name: "DelegateError", value: 415)
!41 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!42 = !DIEnumerator(name: "CorruptImageError", value: 425)
!43 = !DIEnumerator(name: "FileOpenError", value: 430)
!44 = !DIEnumerator(name: "BlobError", value: 435)
!45 = !DIEnumerator(name: "StreamError", value: 440)
!46 = !DIEnumerator(name: "CacheError", value: 445)
!47 = !DIEnumerator(name: "CoderError", value: 450)
!48 = !DIEnumerator(name: "FilterError", value: 452)
!49 = !DIEnumerator(name: "ModuleError", value: 455)
!50 = !DIEnumerator(name: "DrawError", value: 460)
!51 = !DIEnumerator(name: "ImageError", value: 465)
!52 = !DIEnumerator(name: "WandError", value: 470)
!53 = !DIEnumerator(name: "RandomError", value: 475)
!54 = !DIEnumerator(name: "XServerError", value: 480)
!55 = !DIEnumerator(name: "MonitorError", value: 485)
!56 = !DIEnumerator(name: "RegistryError", value: 490)
!57 = !DIEnumerator(name: "ConfigureError", value: 495)
!58 = !DIEnumerator(name: "PolicyError", value: 499)
!59 = !DIEnumerator(name: "FatalErrorException", value: 700)
!60 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!61 = !DIEnumerator(name: "TypeFatalError", value: 705)
!62 = !DIEnumerator(name: "OptionFatalError", value: 710)
!63 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!64 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!65 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!66 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!67 = !DIEnumerator(name: "BlobFatalError", value: 735)
!68 = !DIEnumerator(name: "StreamFatalError", value: 740)
!69 = !DIEnumerator(name: "CacheFatalError", value: 745)
!70 = !DIEnumerator(name: "CoderFatalError", value: 750)
!71 = !DIEnumerator(name: "FilterFatalError", value: 752)
!72 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!73 = !DIEnumerator(name: "DrawFatalError", value: 760)
!74 = !DIEnumerator(name: "ImageFatalError", value: 765)
!75 = !DIEnumerator(name: "WandFatalError", value: 770)
!76 = !DIEnumerator(name: "RandomFatalError", value: 775)
!77 = !DIEnumerator(name: "XServerFatalError", value: 780)
!78 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!79 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!80 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!81 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !83, line: 34, baseType: !5, size: 32, elements: !84)
!83 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!85 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!86 = !DIEnumerator(name: "NoEvents", value: 0)
!87 = !DIEnumerator(name: "TraceEvent", value: 1)
!88 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!89 = !DIEnumerator(name: "BlobEvent", value: 4)
!90 = !DIEnumerator(name: "CacheEvent", value: 8)
!91 = !DIEnumerator(name: "CoderEvent", value: 16)
!92 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!93 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!94 = !DIEnumerator(name: "DrawEvent", value: 128)
!95 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!96 = !DIEnumerator(name: "ImageEvent", value: 512)
!97 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!98 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!99 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!100 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!101 = !DIEnumerator(name: "TransformEvent", value: 16384)
!102 = !DIEnumerator(name: "UserEvent", value: 36864)
!103 = !DIEnumerator(name: "WandEvent", value: 65536)
!104 = !DIEnumerator(name: "X11Event", value: 131072)
!105 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!106 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!107 = !{i32 7, !"Dwarf Version", i32 5}
!108 = !{i32 2, !"Debug Info Version", i32 3}
!109 = !{i32 1, !"wchar_size", i32 4}
!110 = !{i32 7, !"PIC Level", i32 2}
!111 = !{i32 7, !"PIE Level", i32 2}
!112 = !{i32 7, !"uwtable", i32 2}
!113 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!114 = distinct !DISubprogram(name: "IsEventLogging", scope: !115, file: !115, line: 1831, type: !116, scopeLine: 1832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!115 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d73449dfd8d99fafbad738de95724b48")
!116 = !DISubroutineType(types: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!119 = !{}
!120 = !DILocation(line: 1833, column: 7, scope: !114)
!121 = distinct !DISubprogram(name: "ListLogInfo", scope: !115, file: !115, line: 1836, type: !122, scopeLine: 1837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!122 = !DISubroutineType(types: !123)
!123 = !{!118, !124, !187}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !126, line: 7, baseType: !127)
!126 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !128, line: 49, size: 1728, elements: !129)
!128 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!129 = !{!130, !132, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !148, !150, !151, !152, !156, !158, !160, !164, !167, !169, !172, !175, !176, !178, !182, !183}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !127, file: !128, line: 51, baseType: !131, size: 32)
!131 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !127, file: !128, line: 54, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !127, file: !128, line: 55, baseType: !133, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !127, file: !128, line: 56, baseType: !133, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !127, file: !128, line: 57, baseType: !133, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !127, file: !128, line: 58, baseType: !133, size: 64, offset: 320)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !127, file: !128, line: 59, baseType: !133, size: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !127, file: !128, line: 60, baseType: !133, size: 64, offset: 448)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !127, file: !128, line: 61, baseType: !133, size: 64, offset: 512)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !127, file: !128, line: 64, baseType: !133, size: 64, offset: 576)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !127, file: !128, line: 65, baseType: !133, size: 64, offset: 640)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !127, file: !128, line: 66, baseType: !133, size: 64, offset: 704)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !127, file: !128, line: 68, baseType: !146, size: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !128, line: 36, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !127, file: !128, line: 70, baseType: !149, size: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !127, file: !128, line: 72, baseType: !131, size: 32, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !127, file: !128, line: 73, baseType: !131, size: 32, offset: 928)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !127, file: !128, line: 74, baseType: !153, size: 64, offset: 960)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !154, line: 152, baseType: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!155 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !127, file: !128, line: 77, baseType: !157, size: 16, offset: 1024)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !127, file: !128, line: 78, baseType: !159, size: 8, offset: 1040)
!159 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !127, file: !128, line: 79, baseType: !161, size: 8, offset: 1048)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !127, file: !128, line: 81, baseType: !165, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !128, line: 43, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !127, file: !128, line: 89, baseType: !168, size: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !154, line: 153, baseType: !155)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !127, file: !128, line: 91, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !128, line: 37, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !127, file: !128, line: 92, baseType: !173, size: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !128, line: 38, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !127, file: !128, line: 93, baseType: !149, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !127, file: !128, line: 94, baseType: !177, size: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !127, file: !128, line: 95, baseType: !179, size: 64, offset: 1472)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !180, line: 46, baseType: !181)
!180 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!181 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !127, file: !128, line: 96, baseType: !131, size: 32, offset: 1536)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !127, file: !128, line: 98, baseType: !184, size: 160, offset: 1568)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 160, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 20)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !10, line: 102, size: 448, elements: !190)
!190 = !{!191, !193, !194, !195, !196, !197, !198, !203}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !189, file: !10, line: 105, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !10, line: 100, baseType: !9)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !189, file: !10, line: 108, baseType: !131, size: 32, offset: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !189, file: !10, line: 111, baseType: !133, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !189, file: !10, line: 112, baseType: !133, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !189, file: !10, line: 115, baseType: !177, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !189, file: !10, line: 118, baseType: !118, size: 32, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !189, file: !10, line: 121, baseType: !199, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !201, line: 26, baseType: !202)
!201 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !201, line: 25, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !189, file: !10, line: 124, baseType: !179, size: 64, offset: 384)
!204 = !{!205, !206}
!205 = !DILocalVariable(name: "file", arg: 1, scope: !121, file: !115, line: 1836, type: !124)
!206 = !DILocalVariable(name: "exception", arg: 2, scope: !121, file: !115, line: 1836, type: !187)
!207 = !DILocation(line: 0, scope: !121)
!208 = !DILocation(line: 1838, column: 7, scope: !121)
!209 = distinct !DISubprogram(name: "LogComponentGenesis", scope: !115, file: !115, line: 1841, type: !116, scopeLine: 1842, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!210 = !DILocation(line: 1843, column: 7, scope: !209)
!211 = distinct !DISubprogram(name: "LogComponentTerminus", scope: !115, file: !115, line: 1846, type: !212, scopeLine: 1847, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !DILocation(line: 1848, column: 1, scope: !211)
!215 = distinct !DISubprogram(name: "LogMagickEvent", scope: !115, file: !115, line: 1850, type: !216, scopeLine: 1852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !223)
!216 = !DISubroutineType(types: !217)
!217 = !{!118, !218, !220, !220, !222, !220, null}
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !83, line: 58, baseType: !82)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DILocalVariable(name: "type", arg: 1, scope: !215, file: !115, line: 1850, type: !218)
!225 = !DILocalVariable(name: "module", arg: 2, scope: !215, file: !115, line: 1850, type: !220)
!226 = !DILocalVariable(name: "function", arg: 3, scope: !215, file: !115, line: 1851, type: !220)
!227 = !DILocalVariable(name: "line", arg: 4, scope: !215, file: !115, line: 1851, type: !222)
!228 = !DILocalVariable(name: "format", arg: 5, scope: !215, file: !115, line: 1851, type: !220)
!229 = !DILocation(line: 0, scope: !215)
!230 = !DILocation(line: 1853, column: 7, scope: !215)
!231 = distinct !DISubprogram(name: "SetLogEventMask", scope: !115, file: !115, line: 1856, type: !232, scopeLine: 1857, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!219, !220}
!234 = !{!235}
!235 = !DILocalVariable(name: "events", arg: 1, scope: !231, file: !115, line: 1856, type: !220)
!236 = !DILocation(line: 0, scope: !231)
!237 = !DILocation(line: 1858, column: 7, scope: !231)
!238 = distinct !DISubprogram(name: "SetLogFormat", scope: !115, file: !115, line: 1861, type: !239, scopeLine: 1862, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !220}
!241 = !{!242}
!242 = !DILocalVariable(name: "format", arg: 1, scope: !238, file: !115, line: 1861, type: !220)
!243 = !DILocation(line: 0, scope: !238)
!244 = !DILocation(line: 1863, column: 1, scope: !238)
