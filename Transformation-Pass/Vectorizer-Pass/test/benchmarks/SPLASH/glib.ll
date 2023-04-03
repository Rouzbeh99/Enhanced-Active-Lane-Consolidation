; ModuleID = 'glib.c'
source_filename = "glib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_init(i32 noundef %ac, ptr nocapture noundef %av) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %ac, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata ptr %av, metadata !18, metadata !DIExpression()), !dbg !19
  ret void, !dbg !20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_start(ptr nocapture noundef %mouse_func, i64 noundef %n_sliders, ptr nocapture noundef %slider_def, i64 noundef %n_choices, ptr nocapture noundef %choice_def) local_unnamed_addr #0 !dbg !21 {
entry:
  call void @llvm.dbg.value(metadata ptr %mouse_func, metadata !51, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 %n_sliders, metadata !52, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %slider_def, metadata !53, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 %n_choices, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata ptr %choice_def, metadata !55, metadata !DIExpression()), !dbg !56
  ret void, !dbg !57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_color(i64 noundef %color) local_unnamed_addr #0 !dbg !58 {
entry:
  call void @llvm.dbg.value(metadata i64 %color, metadata !62, metadata !DIExpression()), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_rgb(<2 x float> %color.coerce0, float %color.coerce1) local_unnamed_addr #1 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata <2 x float> %color.coerce0, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !78
  call void @llvm.dbg.value(metadata float %color.coerce1, metadata !77, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_line(ptr nocapture noundef %p1, ptr nocapture noundef %p2) local_unnamed_addr #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata ptr %p1, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata ptr %p2, metadata !92, metadata !DIExpression()), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_polygon(i64 noundef %n, ptr nocapture noundef %p_list) local_unnamed_addr #0 !dbg !95 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.value(metadata ptr %p_list, metadata !100, metadata !DIExpression()), !dbg !101
  ret void, !dbg !102
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_spolygon(i64 noundef %n, ptr nocapture noundef %p_list, ptr nocapture noundef %c_list) local_unnamed_addr #0 !dbg !103 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !108, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata ptr %p_list, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata ptr %c_list, metadata !110, metadata !DIExpression()), !dbg !111
  ret void, !dbg !112
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_clear() local_unnamed_addr #0 !dbg !113 {
entry:
  ret void, !dbg !117
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_setup_view(float noundef %rot_x, float noundef %rot_y, float noundef %dist, float noundef %zoom) local_unnamed_addr #0 !dbg !118 {
entry:
  call void @llvm.dbg.value(metadata float %rot_x, metadata !122, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata float %rot_y, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata float %dist, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata float %zoom, metadata !125, metadata !DIExpression()), !dbg !126
  ret void, !dbg !127
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_get_screen_size(ptr nocapture noundef %u, ptr nocapture noundef %v) local_unnamed_addr #0 !dbg !128 {
entry:
  call void @llvm.dbg.value(metadata ptr %u, metadata !133, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata ptr %v, metadata !134, metadata !DIExpression()), !dbg !135
  ret void, !dbg !136
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @g_flush() local_unnamed_addr #0 !dbg !137 {
entry:
  ret void, !dbg !138
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "glib.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibdumb", checksumkind: CSK_MD5, checksum: "8f2a162a11f44686de7fc2ec8f8e4c91")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "g_init", scope: !1, file: !1, line: 33, type: !10, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "ac", arg: 1, scope: !9, file: !1, line: 33, type: !12)
!18 = !DILocalVariable(name: "av", arg: 2, scope: !9, file: !1, line: 33, type: !13)
!19 = !DILocation(line: 0, scope: !9)
!20 = !DILocation(line: 35, column: 1, scope: !9)
!21 = distinct !DISubprogram(name: "g_start", scope: !1, file: !1, line: 45, type: !22, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !27, !28, !27, !39}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{null, null}
!27 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "slider", file: !30, line: 49, baseType: !31)
!30 = !DIFile(filename: "./glib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibdumb", checksumkind: CSK_MD5, checksum: "91b54e106f52da85fe06b27d69797b77")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 43, size: 384, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !31, file: !30, line: 44, baseType: !14, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !31, file: !30, line: 45, baseType: !27, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !31, file: !30, line: 45, baseType: !27, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "init_value", scope: !31, file: !30, line: 46, baseType: !27, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !31, file: !30, line: 47, baseType: !27, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !31, file: !30, line: 48, baseType: !24, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "choice", file: !30, line: 59, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 54, size: 2240, elements: !42)
!42 = !{!43, !44, !48, !49}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !41, file: !30, line: 55, baseType: !14, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "possibilities", scope: !41, file: !30, line: 56, baseType: !45, size: 2048, offset: 64)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 2048, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "init_value", scope: !41, file: !30, line: 57, baseType: !27, size: 64, offset: 2112)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !41, file: !30, line: 58, baseType: !24, size: 64, offset: 2176)
!50 = !{!51, !52, !53, !54, !55}
!51 = !DILocalVariable(name: "mouse_func", arg: 1, scope: !21, file: !1, line: 45, type: !24)
!52 = !DILocalVariable(name: "n_sliders", arg: 2, scope: !21, file: !1, line: 45, type: !27)
!53 = !DILocalVariable(name: "slider_def", arg: 3, scope: !21, file: !1, line: 45, type: !28)
!54 = !DILocalVariable(name: "n_choices", arg: 4, scope: !21, file: !1, line: 45, type: !27)
!55 = !DILocalVariable(name: "choice_def", arg: 5, scope: !21, file: !1, line: 45, type: !39)
!56 = !DILocation(line: 0, scope: !21)
!57 = !DILocation(line: 47, column: 1, scope: !21)
!58 = distinct !DISubprogram(name: "g_color", scope: !1, file: !1, line: 56, type: !59, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !27}
!61 = !{!62}
!62 = !DILocalVariable(name: "color", arg: 1, scope: !58, file: !1, line: 56, type: !27)
!63 = !DILocation(line: 0, scope: !58)
!64 = !DILocation(line: 58, column: 1, scope: !58)
!65 = distinct !DISubprogram(name: "g_rgb", scope: !1, file: !1, line: 60, type: !66, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !69, line: 24, baseType: !70)
!69 = !DIFile(filename: "./../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibdumb", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 22, size: 96, elements: !71)
!71 = !{!72, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !70, file: !69, line: 23, baseType: !73, size: 32)
!73 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !70, file: !69, line: 23, baseType: !73, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !70, file: !69, line: 23, baseType: !73, size: 32, offset: 64)
!76 = !{!77}
!77 = !DILocalVariable(name: "color", arg: 1, scope: !65, file: !1, line: 62, type: !68)
!78 = !DILocation(line: 0, scope: !65)
!79 = !DILocation(line: 64, column: 1, scope: !65)
!80 = distinct !DISubprogram(name: "g_line", scope: !1, file: !1, line: 73, type: !81, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !69, line: 14, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 12, size: 96, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !85, file: !69, line: 13, baseType: !73, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !85, file: !69, line: 13, baseType: !73, size: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !85, file: !69, line: 13, baseType: !73, size: 32, offset: 64)
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "p1", arg: 1, scope: !80, file: !1, line: 73, type: !83)
!92 = !DILocalVariable(name: "p2", arg: 2, scope: !80, file: !1, line: 73, type: !83)
!93 = !DILocation(line: 0, scope: !80)
!94 = !DILocation(line: 75, column: 1, scope: !80)
!95 = distinct !DISubprogram(name: "g_polygon", scope: !1, file: !1, line: 84, type: !96, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !27, !83}
!98 = !{!99, !100}
!99 = !DILocalVariable(name: "n", arg: 1, scope: !95, file: !1, line: 84, type: !27)
!100 = !DILocalVariable(name: "p_list", arg: 2, scope: !95, file: !1, line: 84, type: !83)
!101 = !DILocation(line: 0, scope: !95)
!102 = !DILocation(line: 86, column: 1, scope: !95)
!103 = distinct !DISubprogram(name: "g_spolygon", scope: !1, file: !1, line: 95, type: !104, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !27, !83, !106}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!107 = !{!108, !109, !110}
!108 = !DILocalVariable(name: "n", arg: 1, scope: !103, file: !1, line: 95, type: !27)
!109 = !DILocalVariable(name: "p_list", arg: 2, scope: !103, file: !1, line: 95, type: !83)
!110 = !DILocalVariable(name: "c_list", arg: 3, scope: !103, file: !1, line: 95, type: !106)
!111 = !DILocation(line: 0, scope: !103)
!112 = !DILocation(line: 97, column: 1, scope: !103)
!113 = distinct !DISubprogram(name: "g_clear", scope: !1, file: !1, line: 106, type: !114, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!114 = !DISubroutineType(types: !115)
!115 = !{null}
!116 = !{}
!117 = !DILocation(line: 108, column: 1, scope: !113)
!118 = distinct !DISubprogram(name: "g_setup_view", scope: !1, file: !1, line: 118, type: !119, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !73, !73, !73, !73}
!121 = !{!122, !123, !124, !125}
!122 = !DILocalVariable(name: "rot_x", arg: 1, scope: !118, file: !1, line: 118, type: !73)
!123 = !DILocalVariable(name: "rot_y", arg: 2, scope: !118, file: !1, line: 118, type: !73)
!124 = !DILocalVariable(name: "dist", arg: 3, scope: !118, file: !1, line: 118, type: !73)
!125 = !DILocalVariable(name: "zoom", arg: 4, scope: !118, file: !1, line: 118, type: !73)
!126 = !DILocation(line: 0, scope: !118)
!127 = !DILocation(line: 120, column: 1, scope: !118)
!128 = distinct !DISubprogram(name: "g_get_screen_size", scope: !1, file: !1, line: 130, type: !129, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !132)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !131, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!132 = !{!133, !134}
!133 = !DILocalVariable(name: "u", arg: 1, scope: !128, file: !1, line: 130, type: !131)
!134 = !DILocalVariable(name: "v", arg: 2, scope: !128, file: !1, line: 130, type: !131)
!135 = !DILocation(line: 0, scope: !128)
!136 = !DILocation(line: 132, column: 1, scope: !128)
!137 = distinct !DISubprogram(name: "g_flush", scope: !1, file: !1, line: 141, type: !114, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!138 = !DILocation(line: 143, column: 1, scope: !137)
