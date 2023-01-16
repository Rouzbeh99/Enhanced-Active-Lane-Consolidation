; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r/llvm-ir/505.mcf_r_bc/src/pflowup.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pflowup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @primal_update_flow(ptr noundef %iplus, ptr noundef %jplus, ptr noundef readnone %w) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata ptr %iplus, metadata !58, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %jplus, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %w, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp.not24 = icmp eq ptr %iplus, %w, !dbg !62
  br i1 %cmp.not24, label %for.cond2.preheader, label %for.body, !dbg !65

for.cond2.preheader:                              ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata ptr %jplus, metadata !59, metadata !DIExpression()), !dbg !61
  %cmp3.not27 = icmp eq ptr %jplus, %w, !dbg !66
  br i1 %cmp3.not27, label %for.end14, label %for.body4, !dbg !69

for.body:                                         ; preds = %entry, %for.body
  %iplus.addr.025 = phi ptr [ %2, %for.body ], [ %iplus, %entry ]
  call void @llvm.dbg.value(metadata ptr %iplus.addr.025, metadata !58, metadata !DIExpression()), !dbg !61
  %orientation = getelementptr inbounds %struct.node, ptr %iplus.addr.025, i64 0, i32 1, !dbg !70
  %0 = load i32, ptr %orientation, align 8, !dbg !70, !tbaa !73
  %tobool.not = icmp eq i32 %0, 0, !dbg !80
  %spec.select = zext i1 %tobool.not to i64, !dbg !81
  %1 = getelementptr inbounds %struct.node, ptr %iplus.addr.025, i64 0, i32 10, !dbg !82
  store i64 %spec.select, ptr %1, align 8, !dbg !83
  %pred = getelementptr inbounds %struct.node, ptr %iplus.addr.025, i64 0, i32 3, !dbg !84
  %2 = load ptr, ptr %pred, align 8, !dbg !84, !tbaa !85
  call void @llvm.dbg.value(metadata ptr %2, metadata !58, metadata !DIExpression()), !dbg !61
  %cmp.not = icmp eq ptr %2, %w, !dbg !62
  br i1 %cmp.not, label %for.cond2.preheader, label %for.body, !dbg !65, !llvm.loop !86

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %jplus.addr.028 = phi ptr [ %5, %for.body4 ], [ %jplus, %for.cond2.preheader ]
  call void @llvm.dbg.value(metadata ptr %jplus.addr.028, metadata !59, metadata !DIExpression()), !dbg !61
  %orientation5 = getelementptr inbounds %struct.node, ptr %jplus.addr.028, i64 0, i32 1, !dbg !90
  %3 = load i32, ptr %orientation5, align 8, !dbg !90, !tbaa !73
  %tobool6.not = icmp ne i32 %3, 0, !dbg !93
  %spec.select31 = zext i1 %tobool6.not to i64, !dbg !94
  %4 = getelementptr inbounds %struct.node, ptr %jplus.addr.028, i64 0, i32 10, !dbg !95
  store i64 %spec.select31, ptr %4, align 8, !dbg !96
  %pred13 = getelementptr inbounds %struct.node, ptr %jplus.addr.028, i64 0, i32 3, !dbg !97
  %5 = load ptr, ptr %pred13, align 8, !dbg !97, !tbaa !85
  call void @llvm.dbg.value(metadata ptr %5, metadata !59, metadata !DIExpression()), !dbg !61
  %cmp3.not = icmp eq ptr %5, %w, !dbg !66
  br i1 %cmp3.not, label %for.end14, label %for.body4, !dbg !69, !llvm.loop !98

for.end14:                                        ; preds = %for.body4, %for.cond2.preheader
  ret void, !dbg !100
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/505.mcf_r/src/pflowup.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/505.mcf_r", checksumkind: CSK_MD5, checksum: "ac052d737281c64616a88370303b42d0")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "flow_t", file: !4, line: 97, baseType: !5)
!4 = !DIFile(filename: "apps/505.mcf_r/src/defines.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "05eeb7bba098b08025cbe048b289d372")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 27, baseType: !7)
!6 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 44, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!17 = distinct !DISubprogram(name: "primal_update_flow", scope: !18, file: !18, line: 30, type: !19, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!18 = !DIFile(filename: "apps/505.mcf_r/src/pflowup.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ac052d737281c64616a88370303b42d0")
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_t", file: !4, line: 134, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !4, line: 149, size: 832, elements: !24)
!24 = !{!25, !27, !29, !32, !33, !34, !35, !50, !51, !52, !53, !54, !55, !56}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "potential", scope: !23, file: !4, line: 151, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "cost_t", file: !4, line: 98, baseType: !5)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !23, file: !4, line: 152, baseType: !28, size: 32, offset: 64)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !23, file: !4, line: 153, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "node_p", file: !4, line: 135, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pred", scope: !23, file: !4, line: 154, baseType: !30, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !23, file: !4, line: 155, baseType: !30, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_prev", scope: !23, file: !4, line: 156, baseType: !30, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "basic_arc", scope: !23, file: !4, line: 157, baseType: !36, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc_p", file: !4, line: 138, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc", file: !4, line: 168, size: 576, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !46, !47, !48, !49}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !38, file: !4, line: 170, baseType: !28, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !38, file: !4, line: 171, baseType: !26, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !38, file: !4, line: 172, baseType: !30, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !38, file: !4, line: 172, baseType: !30, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !38, file: !4, line: 173, baseType: !45, size: 16, offset: 256)
!45 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "nextout", scope: !38, file: !4, line: 174, baseType: !36, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "nextin", scope: !38, file: !4, line: 174, baseType: !36, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !38, file: !4, line: 175, baseType: !3, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "org_cost", scope: !38, file: !4, line: 176, baseType: !26, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "firstout", scope: !23, file: !4, line: 158, baseType: !36, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "firstin", scope: !23, file: !4, line: 158, baseType: !36, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "arc_tmp", scope: !23, file: !4, line: 159, baseType: !36, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !23, file: !4, line: 160, baseType: !3, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !23, file: !4, line: 161, baseType: !5, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !23, file: !4, line: 162, baseType: !28, size: 32, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !23, file: !4, line: 163, baseType: !28, size: 32, offset: 800)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: "iplus", arg: 1, scope: !17, file: !18, line: 31, type: !21)
!59 = !DILocalVariable(name: "jplus", arg: 2, scope: !17, file: !18, line: 32, type: !21)
!60 = !DILocalVariable(name: "w", arg: 3, scope: !17, file: !18, line: 33, type: !21)
!61 = !DILocation(line: 0, scope: !17)
!62 = !DILocation(line: 41, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !18, line: 41, column: 5)
!64 = distinct !DILexicalBlock(scope: !17, file: !18, line: 41, column: 5)
!65 = !DILocation(line: 41, column: 5, scope: !64)
!66 = !DILocation(line: 49, column: 18, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !18, line: 49, column: 5)
!68 = distinct !DILexicalBlock(scope: !17, file: !18, line: 49, column: 5)
!69 = !DILocation(line: 49, column: 5, scope: !68)
!70 = !DILocation(line: 43, column: 20, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !18, line: 43, column: 13)
!72 = distinct !DILexicalBlock(scope: !63, file: !18, line: 42, column: 5)
!73 = !{!74, !78, i64 8}
!74 = !{!"node", !75, i64 0, !78, i64 8, !79, i64 16, !79, i64 24, !79, i64 32, !79, i64 40, !79, i64 48, !79, i64 56, !79, i64 64, !79, i64 72, !75, i64 80, !75, i64 88, !78, i64 96, !78, i64 100}
!75 = !{!"long", !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !{!"int", !76, i64 0}
!79 = !{!"any pointer", !76, i64 0}
!80 = !DILocation(line: 43, column: 13, scope: !71)
!81 = !DILocation(line: 43, column: 13, scope: !72)
!82 = !DILocation(line: 46, column: 20, scope: !71)
!83 = !DILocation(line: 46, column: 25, scope: !71)
!84 = !DILocation(line: 41, column: 39, scope: !63)
!85 = !{!74, !79, i64 24}
!86 = distinct !{!86, !65, !87, !88, !89}
!87 = !DILocation(line: 47, column: 5, scope: !64)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !DILocation(line: 51, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !18, line: 51, column: 13)
!92 = distinct !DILexicalBlock(scope: !67, file: !18, line: 50, column: 5)
!93 = !DILocation(line: 51, column: 13, scope: !91)
!94 = !DILocation(line: 51, column: 13, scope: !92)
!95 = !DILocation(line: 54, column: 20, scope: !91)
!96 = !DILocation(line: 54, column: 25, scope: !91)
!97 = !DILocation(line: 49, column: 39, scope: !67)
!98 = distinct !{!98, !69, !99, !88, !89}
!99 = !DILocation(line: 55, column: 5, scope: !68)
!100 = !DILocation(line: 56, column: 1, scope: !17)
