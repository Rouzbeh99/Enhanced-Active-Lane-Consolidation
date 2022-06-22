; ModuleID = 'loop.c'
source_filename = "loop.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv6kz-unknown-linux-gnueabihf"

; Function Attrs: argmemonly nofree nosync nounwind
define dso_local i32 @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef readonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !32
  %cmp59 = icmp sgt i32 %n, 0, !dbg !33
  br i1 %cmp59, label %for.cond1.preheader.us, label %for.cond.cleanup, !dbg !34

for.cond1.preheader.us:                           ; preds = %entry, %for.cond1.for.cond.cleanup3_crit_edge.us
  %i.060.us = phi i32 [ %inc26.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.060.us, metadata !25, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !35
  br label %for.body4.us, !dbg !36

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.inc.us
  %j.055.us = phi i32 [ 0, %for.cond1.preheader.us ], [ %inc.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata i32 %j.055.us, metadata !27, metadata !DIExpression()), !dbg !35
  %arrayidx.us = getelementptr inbounds float, ptr %a, i32 %j.055.us, !dbg !37
  %0 = load float, ptr %arrayidx.us, align 4, !dbg !37, !tbaa !41
  %cmp5.us = fcmp ogt float %0, 0.000000e+00, !dbg !45
  br i1 %cmp5.us, label %if.then.us, label %if.end.us, !dbg !46

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds float, ptr %b, i32 %j.055.us, !dbg !47
  %1 = load float, ptr %arrayidx6.us, align 4, !dbg !47, !tbaa !41
  %arrayidx7.us = getelementptr inbounds float, ptr %c, i32 %j.055.us, !dbg !49
  %2 = load float, ptr %arrayidx7.us, align 4, !dbg !49, !tbaa !41
  %add.us = fadd float %1, %2, !dbg !50
  %add9.us = fadd float %0, %add.us, !dbg !51
  store float %add9.us, ptr %arrayidx.us, align 4, !dbg !51, !tbaa !41
  br label %if.end.us, !dbg !52

if.end.us:                                        ; preds = %if.then.us, %for.body4.us
  %.pr.us = phi float [ %add9.us, %if.then.us ], [ %0, %for.body4.us ], !dbg !53
  %cmp11.us = fcmp ogt float %.pr.us, 5.000000e+00, !dbg !55
  br i1 %cmp11.us, label %if.then12.us, label %if.end17.us, !dbg !56

if.then12.us:                                     ; preds = %if.end.us
  %arrayidx13.us = getelementptr inbounds float, ptr %b, i32 %j.055.us, !dbg !57
  %3 = load float, ptr %arrayidx13.us, align 4, !dbg !57, !tbaa !41
  %arrayidx14.us = getelementptr inbounds float, ptr %c, i32 %j.055.us, !dbg !59
  %4 = load float, ptr %arrayidx14.us, align 4, !dbg !59, !tbaa !41
  %sub.us = fsub float %3, %4, !dbg !60
  %add16.us = fadd float %.pr.us, %sub.us, !dbg !61
  store float %add16.us, ptr %arrayidx.us, align 4, !dbg !61, !tbaa !41
  br label %if.end17.us, !dbg !62

if.end17.us:                                      ; preds = %if.end.us, %if.then12.us
  %5 = phi float [ %add16.us, %if.then12.us ], [ %.pr.us, %if.end.us ], !dbg !63
  %cmp19.us = fcmp ogt float %5, 7.000000e+00, !dbg !65
  br i1 %cmp19.us, label %if.then20.us, label %for.inc.us, !dbg !66

if.then20.us:                                     ; preds = %if.end17.us
  %arrayidx21.us = getelementptr inbounds float, ptr %b, i32 %j.055.us, !dbg !67
  %6 = load float, ptr %arrayidx21.us, align 4, !dbg !67, !tbaa !41
  %arrayidx22.us = getelementptr inbounds float, ptr %c, i32 %j.055.us, !dbg !69
  %7 = load float, ptr %arrayidx22.us, align 4, !dbg !69, !tbaa !41
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %5), !dbg !70
  store float %8, ptr %arrayidx.us, align 4, !dbg !70, !tbaa !41
  br label %for.inc.us, !dbg !71

for.inc.us:                                       ; preds = %if.then20.us, %if.end17.us
  %inc.us = add nuw nsw i32 %j.055.us, 1, !dbg !72
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !27, metadata !DIExpression()), !dbg !35
  %exitcond.not = icmp eq i32 %inc.us, %n, !dbg !73
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !36, !llvm.loop !74

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us
  %inc26.us = add nuw nsw i32 %i.060.us, 1, !dbg !78
  call void @llvm.dbg.value(metadata i32 %inc26.us, metadata !25, metadata !DIExpression()), !dbg !32
  %exitcond61.not = icmp eq i32 %inc26.us, %n, !dbg !33
  br i1 %exitcond61.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !34, !llvm.loop !79

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret i32 0, !dbg !81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind readonly
define dso_local i32 @dijkstra(i32 noundef %n, i32 noundef %s, ptr nocapture noundef readonly %e) local_unnamed_addr #3 !dbg !82 {
entry:
  %dis = alloca [512 x i32], align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %s, metadata !91, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %e, metadata !92, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %dis) #7, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %dis, metadata !94, metadata !DIExpression()), !dbg !100
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(2048) %dis, i8 0, i32 2048, i1 false), !dbg !100
  call void @llvm.dbg.value(metadata i32 1000000, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 undef, metadata !93, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !101
  %cmp18 = icmp sgt i32 %n, 0, !dbg !102
  br i1 %cmp18, label %for.body, label %for.cond.cleanup, !dbg !104

for.cond.cleanup:                                 ; preds = %for.body, %entry
  %sub = add nsw i32 %n, -1, !dbg !105
  %arrayidx8 = getelementptr inbounds [512 x i32], ptr %dis, i32 0, i32 %sub, !dbg !106
  %0 = load i32, ptr %arrayidx8, align 4, !dbg !106, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %dis) #7, !dbg !109
  ret i32 %0, !dbg !110

for.body:                                         ; preds = %entry, %for.body
  %i.019 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.019, metadata !96, metadata !DIExpression()), !dbg !101
  %arrayidx2 = getelementptr inbounds [512 x i32], ptr %e, i32 %s, i32 %i.019, !dbg !111
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !111, !tbaa !107
  %cmp3 = icmp eq i32 %1, 0, !dbg !114
  %spec.select = select i1 %cmp3, i32 1000000, i32 %1, !dbg !115
  %2 = getelementptr inbounds [512 x i32], ptr %dis, i32 0, i32 %i.019, !dbg !116
  store i32 %spec.select, ptr %2, align 4, !dbg !118
  %inc = add nuw nsw i32 %i.019, 1, !dbg !119
  call void @llvm.dbg.value(metadata i32 %inc, metadata !96, metadata !DIExpression()), !dbg !101
  %exitcond.not = icmp eq i32 %inc, %n, !dbg !102
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !104, !llvm.loop !120
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn
define dso_local i32 @main() local_unnamed_addr #5 !dbg !122 {
entry:
  ret i32 0, !dbg !126
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { argmemonly nofree nosync nounwind "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1176jzf-s" "target-features"="+armv6kz,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nosync nounwind readonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1176jzf-s" "target-features"="+armv6kz,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readnone willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm1176jzf-s" "target-features"="+armv6kz,+dsp,+fp64,+strict-align,+vfp2,+vfp2sp,-aes,-d32,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-neon,-sha2,-thumb-mode,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loop.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "7988f3ae8ca6abd58bf352b71f0fc38b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!13 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !14, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!14 = !DISubroutineType(types: !15)
!15 = !{!16, !17, !17, !17, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 32)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !{!21, !22, !23, !24, !25, !27}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !13, file: !1, line: 3, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !13, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !13, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !13, file: !1, line: 3, type: !16)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 4, type: !16)
!26 = distinct !DILexicalBlock(scope: !13, file: !1, line: 4, column: 6)
!27 = !DILocalVariable(name: "j", scope: !28, file: !1, line: 5, type: !16)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 5, column: 10)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 4, column: 34)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 4, column: 6)
!31 = !DILocation(line: 0, scope: !13)
!32 = !DILocation(line: 0, scope: !26)
!33 = !DILocation(line: 4, column: 24, scope: !30)
!34 = !DILocation(line: 4, column: 6, scope: !26)
!35 = !DILocation(line: 0, scope: !28)
!36 = !DILocation(line: 5, column: 10, scope: !28)
!37 = !DILocation(line: 7, column: 18, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 7, column: 18)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 5, column: 38)
!40 = distinct !DILexicalBlock(scope: !28, file: !1, line: 5, column: 10)
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocation(line: 7, column: 23, scope: !38)
!46 = !DILocation(line: 7, column: 18, scope: !39)
!47 = !DILocation(line: 8, column: 26, scope: !48)
!48 = distinct !DILexicalBlock(scope: !38, file: !1, line: 7, column: 28)
!49 = !DILocation(line: 8, column: 33, scope: !48)
!50 = !DILocation(line: 8, column: 31, scope: !48)
!51 = !DILocation(line: 8, column: 23, scope: !48)
!52 = !DILocation(line: 9, column: 14, scope: !48)
!53 = !DILocation(line: 10, column: 18, scope: !54)
!54 = distinct !DILexicalBlock(scope: !39, file: !1, line: 10, column: 18)
!55 = !DILocation(line: 10, column: 23, scope: !54)
!56 = !DILocation(line: 10, column: 18, scope: !39)
!57 = !DILocation(line: 11, column: 26, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 10, column: 28)
!59 = !DILocation(line: 11, column: 33, scope: !58)
!60 = !DILocation(line: 11, column: 31, scope: !58)
!61 = !DILocation(line: 11, column: 23, scope: !58)
!62 = !DILocation(line: 12, column: 14, scope: !58)
!63 = !DILocation(line: 13, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !39, file: !1, line: 13, column: 18)
!65 = !DILocation(line: 13, column: 23, scope: !64)
!66 = !DILocation(line: 13, column: 18, scope: !39)
!67 = !DILocation(line: 14, column: 26, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 13, column: 28)
!69 = !DILocation(line: 14, column: 33, scope: !68)
!70 = !DILocation(line: 14, column: 23, scope: !68)
!71 = !DILocation(line: 15, column: 14, scope: !68)
!72 = !DILocation(line: 5, column: 33, scope: !40)
!73 = !DILocation(line: 5, column: 28, scope: !40)
!74 = distinct !{!74, !36, !75, !76, !77}
!75 = !DILocation(line: 16, column: 10, scope: !28)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !DILocation(line: 4, column: 29, scope: !30)
!79 = distinct !{!79, !34, !80, !76, !77}
!80 = !DILocation(line: 17, column: 6, scope: !26)
!81 = !DILocation(line: 18, column: 6, scope: !13)
!82 = distinct !DISubprogram(name: "dijkstra", scope: !1, file: !1, line: 22, type: !83, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!83 = !DISubroutineType(types: !84)
!84 = !{!16, !16, !16, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 32)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 16384, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 512)
!89 = !{!90, !91, !92, !93, !94, !95, !96}
!90 = !DILocalVariable(name: "n", arg: 1, scope: !82, file: !1, line: 22, type: !16)
!91 = !DILocalVariable(name: "s", arg: 2, scope: !82, file: !1, line: 22, type: !16)
!92 = !DILocalVariable(name: "e", arg: 3, scope: !82, file: !1, line: 22, type: !85)
!93 = !DILocalVariable(name: "vis", scope: !82, file: !1, line: 23, type: !86)
!94 = !DILocalVariable(name: "dis", scope: !82, file: !1, line: 24, type: !86)
!95 = !DILocalVariable(name: "max", scope: !82, file: !1, line: 25, type: !16)
!96 = !DILocalVariable(name: "i", scope: !97, file: !1, line: 27, type: !16)
!97 = distinct !DILexicalBlock(scope: !82, file: !1, line: 27, column: 5)
!98 = !DILocation(line: 0, scope: !82)
!99 = !DILocation(line: 24, column: 5, scope: !82)
!100 = !DILocation(line: 24, column: 9, scope: !82)
!101 = !DILocation(line: 0, scope: !97)
!102 = !DILocation(line: 27, column: 23, scope: !103)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 27, column: 5)
!104 = !DILocation(line: 27, column: 5, scope: !97)
!105 = !DILocation(line: 34, column: 17, scope: !82)
!106 = !DILocation(line: 34, column: 12, scope: !82)
!107 = !{!108, !108, i64 0}
!108 = !{!"int", !43, i64 0}
!109 = !DILocation(line: 35, column: 1, scope: !82)
!110 = !DILocation(line: 34, column: 5, scope: !82)
!111 = !DILocation(line: 28, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 28, column: 13)
!113 = distinct !DILexicalBlock(scope: !103, file: !1, line: 27, column: 33)
!114 = !DILocation(line: 28, column: 21, scope: !112)
!115 = !DILocation(line: 28, column: 13, scope: !113)
!116 = !DILocation(line: 29, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 28, column: 27)
!118 = !DILocation(line: 29, column: 20, scope: !117)
!119 = !DILocation(line: 27, column: 28, scope: !103)
!120 = distinct !{!120, !104, !121, !76, !77}
!121 = !DILocation(line: 33, column: 5, scope: !97)
!122 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !123, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!16}
!125 = !{}
!126 = !DILocation(line: 43, column: 1, scope: !122)
