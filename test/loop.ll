; ModuleID = 'loop.c'
source_filename = "loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @foo(float* noalias nocapture noundef %a, float* noalias nocapture noundef readonly %b, float* noalias nocapture noundef readonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata float* %a, metadata !15, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %b, metadata !16, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %c, metadata !17, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 %n, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !26
  %cmp69 = icmp sgt i32 %n, 0, !dbg !27
  br i1 %cmp69, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !28

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond1.preheader.us, !dbg !28

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us
  %i.070.us = phi i32 [ %inc37.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.070.us, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !29
  br label %for.body4.us, !dbg !30

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !21, metadata !DIExpression()), !dbg !29
  %arrayidx.us = getelementptr inbounds float, float* %a, i64 %indvars.iv, !dbg !31
  %0 = load float, float* %arrayidx.us, align 4, !dbg !31, !tbaa !35
  %cmp5.us = fcmp ogt float %0, 0.000000e+00, !dbg !39
  br i1 %cmp5.us, label %if.then.us, label %if.end.us, !dbg !40

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx7.us = getelementptr inbounds float, float* %b, i64 %indvars.iv, !dbg !41
  %1 = load float, float* %arrayidx7.us, align 4, !dbg !41, !tbaa !35
  %arrayidx9.us = getelementptr inbounds float, float* %c, i64 %indvars.iv, !dbg !43
  %2 = load float, float* %arrayidx9.us, align 4, !dbg !43, !tbaa !35
  %add.us = fadd float %1, %2, !dbg !44
  %add12.us = fadd float %0, %add.us, !dbg !45
  store float %add12.us, float* %arrayidx.us, align 4, !dbg !45, !tbaa !35
  br label %if.end.us, !dbg !46

if.end.us:                                        ; preds = %if.then.us, %for.body4.us
  %.pr.us = phi float [ %add12.us, %if.then.us ], [ %0, %for.body4.us ], !dbg !47
  %cmp15.us = fcmp ogt float %.pr.us, 5.000000e+00, !dbg !49
  br i1 %cmp15.us, label %if.then16.us, label %if.end24.us, !dbg !50

if.then16.us:                                     ; preds = %if.end.us
  %arrayidx18.us = getelementptr inbounds float, float* %b, i64 %indvars.iv, !dbg !51
  %3 = load float, float* %arrayidx18.us, align 4, !dbg !51, !tbaa !35
  %arrayidx20.us = getelementptr inbounds float, float* %c, i64 %indvars.iv, !dbg !53
  %4 = load float, float* %arrayidx20.us, align 4, !dbg !53, !tbaa !35
  %sub.us = fsub float %3, %4, !dbg !54
  %add23.us = fadd float %.pr.us, %sub.us, !dbg !55
  store float %add23.us, float* %arrayidx.us, align 4, !dbg !55, !tbaa !35
  br label %if.end24.us, !dbg !56

if.end24.us:                                      ; preds = %if.end.us, %if.then16.us
  %5 = phi float [ %add23.us, %if.then16.us ], [ %.pr.us, %if.end.us ], !dbg !57
  %cmp27.us = fcmp ogt float %5, 7.000000e+00, !dbg !59
  br i1 %cmp27.us, label %if.then28.us, label %for.inc.us, !dbg !60

if.then28.us:                                     ; preds = %if.end24.us
  %arrayidx30.us = getelementptr inbounds float, float* %b, i64 %indvars.iv, !dbg !61
  %6 = load float, float* %arrayidx30.us, align 4, !dbg !61, !tbaa !35
  %arrayidx32.us = getelementptr inbounds float, float* %c, i64 %indvars.iv, !dbg !63
  %7 = load float, float* %arrayidx32.us, align 4, !dbg !63, !tbaa !35
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %5), !dbg !64
  store float %8, float* %arrayidx.us, align 4, !dbg !64, !tbaa !35
  br label %for.inc.us, !dbg !65

for.inc.us:                                       ; preds = %if.then28.us, %if.end24.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !66
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !21, metadata !DIExpression()), !dbg !29
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !67
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !30, !llvm.loop !68

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us
  %inc37.us = add nuw nsw i32 %i.070.us, 1, !dbg !72
  call void @llvm.dbg.value(metadata i32 %inc37.us, metadata !19, metadata !DIExpression()), !dbg !26
  %exitcond72.not = icmp eq i32 %inc37.us, %n, !dbg !27
  br i1 %exitcond72.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !28, !llvm.loop !73

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret i32 0, !dbg !75
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nofree nosync nounwind readonly uwtable
define dso_local i32 @dijkstra(i32 noundef %n, i32 noundef %s, [512 x i32]* nocapture noundef readonly %e) local_unnamed_addr #3 !dbg !76 {
entry:
  %dis = alloca [512 x i32], align 16
  call void @llvm.dbg.value(metadata i32 %n, metadata !84, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 %s, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata [512 x i32]* %e, metadata !86, metadata !DIExpression()), !dbg !91
  %0 = bitcast [512 x i32]* %dis to i8*, !dbg !92
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #6, !dbg !92
  call void @llvm.dbg.declare(metadata [512 x i32]* %dis, metadata !88, metadata !DIExpression()), !dbg !93
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %0, i8 0, i64 2048, i1 false), !dbg !93
  %idxprom = sext i32 %s to i64, !dbg !94
  call void @llvm.dbg.value(metadata i32 undef, metadata !87, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !95
  %cmp26 = icmp sgt i32 %n, 0, !dbg !96
  br i1 %cmp26, label %for.body.preheader, label %for.cond.cleanup, !dbg !98

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !96
  br label %for.body, !dbg !98

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sub = add nsw i32 %n, -1, !dbg !99
  %idxprom14 = sext i32 %sub to i64, !dbg !100
  %arrayidx15 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom14, !dbg !100
  %1 = load i32, i32* %arrayidx15, align 4, !dbg !100, !tbaa !101
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #6, !dbg !103
  ret i32 %1, !dbg !104

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !89, metadata !DIExpression()), !dbg !95
  %arrayidx4 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %indvars.iv, !dbg !105
  %2 = load i32, i32* %arrayidx4, align 4, !dbg !105, !tbaa !101
  %cmp5 = icmp eq i32 %2, 0, !dbg !108
  %spec.select = select i1 %cmp5, i32 2147483647, i32 %2, !dbg !109
  %3 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv, !dbg !110
  store i32 %spec.select, i32* %3, align 4, !dbg !112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !113
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !89, metadata !DIExpression()), !dbg !95
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !96
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !98, !llvm.loop !114
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loop.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "cdf103664877f16b8a458040127a9efd")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"uwtable", i32 1}
!6 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !8, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !21}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 4, type: !11)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 4, type: !11)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 4, type: !11)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 4, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 5, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 5)
!21 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 6, type: !10)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 6, column: 9)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 5, column: 33)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 5, column: 5)
!25 = !DILocation(line: 0, scope: !7)
!26 = !DILocation(line: 0, scope: !20)
!27 = !DILocation(line: 5, column: 23, scope: !24)
!28 = !DILocation(line: 5, column: 5, scope: !20)
!29 = !DILocation(line: 0, scope: !22)
!30 = !DILocation(line: 6, column: 9, scope: !22)
!31 = !DILocation(line: 8, column: 17, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 8, column: 17)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 6, column: 37)
!34 = distinct !DILexicalBlock(scope: !22, file: !1, line: 6, column: 9)
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 8, column: 22, scope: !32)
!40 = !DILocation(line: 8, column: 17, scope: !33)
!41 = !DILocation(line: 9, column: 25, scope: !42)
!42 = distinct !DILexicalBlock(scope: !32, file: !1, line: 8, column: 27)
!43 = !DILocation(line: 9, column: 32, scope: !42)
!44 = !DILocation(line: 9, column: 30, scope: !42)
!45 = !DILocation(line: 9, column: 22, scope: !42)
!46 = !DILocation(line: 10, column: 13, scope: !42)
!47 = !DILocation(line: 11, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 17)
!49 = !DILocation(line: 11, column: 22, scope: !48)
!50 = !DILocation(line: 11, column: 17, scope: !33)
!51 = !DILocation(line: 12, column: 25, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 11, column: 27)
!53 = !DILocation(line: 12, column: 32, scope: !52)
!54 = !DILocation(line: 12, column: 30, scope: !52)
!55 = !DILocation(line: 12, column: 22, scope: !52)
!56 = !DILocation(line: 13, column: 13, scope: !52)
!57 = !DILocation(line: 14, column: 17, scope: !58)
!58 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 17)
!59 = !DILocation(line: 14, column: 22, scope: !58)
!60 = !DILocation(line: 14, column: 17, scope: !33)
!61 = !DILocation(line: 15, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 14, column: 27)
!63 = !DILocation(line: 15, column: 32, scope: !62)
!64 = !DILocation(line: 15, column: 22, scope: !62)
!65 = !DILocation(line: 16, column: 13, scope: !62)
!66 = !DILocation(line: 6, column: 32, scope: !34)
!67 = !DILocation(line: 6, column: 27, scope: !34)
!68 = distinct !{!68, !30, !69, !70, !71}
!69 = !DILocation(line: 17, column: 9, scope: !22)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !DILocation(line: 5, column: 28, scope: !24)
!73 = distinct !{!73, !28, !74, !70, !71}
!74 = !DILocation(line: 18, column: 5, scope: !20)
!75 = !DILocation(line: 19, column: 5, scope: !7)
!76 = distinct !DISubprogram(name: "dijkstra", scope: !1, file: !1, line: 23, type: !77, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10, !10, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 512)
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DILocalVariable(name: "n", arg: 1, scope: !76, file: !1, line: 23, type: !10)
!85 = !DILocalVariable(name: "s", arg: 2, scope: !76, file: !1, line: 23, type: !10)
!86 = !DILocalVariable(name: "e", arg: 3, scope: !76, file: !1, line: 23, type: !79)
!87 = !DILocalVariable(name: "vis", scope: !76, file: !1, line: 24, type: !80)
!88 = !DILocalVariable(name: "dis", scope: !76, file: !1, line: 25, type: !80)
!89 = !DILocalVariable(name: "i", scope: !90, file: !1, line: 27, type: !10)
!90 = distinct !DILexicalBlock(scope: !76, file: !1, line: 27, column: 5)
!91 = !DILocation(line: 0, scope: !76)
!92 = !DILocation(line: 25, column: 5, scope: !76)
!93 = !DILocation(line: 25, column: 9, scope: !76)
!94 = !DILocation(line: 26, column: 5, scope: !76)
!95 = !DILocation(line: 0, scope: !90)
!96 = !DILocation(line: 27, column: 23, scope: !97)
!97 = distinct !DILexicalBlock(scope: !90, file: !1, line: 27, column: 5)
!98 = !DILocation(line: 27, column: 5, scope: !90)
!99 = !DILocation(line: 34, column: 17, scope: !76)
!100 = !DILocation(line: 34, column: 12, scope: !76)
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !37, i64 0}
!103 = !DILocation(line: 35, column: 1, scope: !76)
!104 = !DILocation(line: 34, column: 5, scope: !76)
!105 = !DILocation(line: 28, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 28, column: 13)
!107 = distinct !DILexicalBlock(scope: !97, file: !1, line: 27, column: 33)
!108 = !DILocation(line: 28, column: 21, scope: !106)
!109 = !DILocation(line: 28, column: 13, scope: !107)
!110 = !DILocation(line: 29, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 28, column: 27)
!112 = !DILocation(line: 29, column: 20, scope: !111)
!113 = !DILocation(line: 27, column: 28, scope: !97)
!114 = distinct !{!114, !98, !115, !70, !71}
!115 = !DILocation(line: 33, column: 5, scope: !90)
