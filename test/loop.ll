; ModuleID = 'loop.c'
source_filename = "loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define dso_local i32 @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef readonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !17, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !18, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !20, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !28
  %cmp72 = icmp sgt i32 %n, 0, !dbg !29
  br i1 %cmp72, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !30

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond1.preheader.us, !dbg !30

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us
  %i.073.us = phi i32 [ %inc40.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.073.us, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 0, metadata !23, metadata !DIExpression()), !dbg !31
  br label %for.body4.us, !dbg !32

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !23, metadata !DIExpression()), !dbg !31
  %arrayidx.us = getelementptr inbounds float, ptr %a, i64 %indvars.iv, !dbg !33
  %0 = load float, ptr %arrayidx.us, align 4, !dbg !33, !tbaa !37
  %cmp5.us = fcmp ogt float %0, 1.000000e+01, !dbg !41
  br i1 %cmp5.us, label %if.then.us, label %if.end.us, !dbg !42

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx7.us = getelementptr inbounds float, ptr %b, i64 %indvars.iv, !dbg !43
  %1 = load float, ptr %arrayidx7.us, align 4, !dbg !43, !tbaa !37
  %arrayidx9.us = getelementptr inbounds float, ptr %c, i64 %indvars.iv, !dbg !45
  %2 = load float, ptr %arrayidx9.us, align 4, !dbg !45, !tbaa !37
  %add.us = fadd float %1, %2, !dbg !46
  %add12.us = fadd float %0, %add.us, !dbg !47
  store float %add12.us, ptr %arrayidx.us, align 4, !dbg !47, !tbaa !37
  br label %if.end.us, !dbg !48

if.end.us:                                        ; preds = %if.then.us, %for.body4.us
  %3 = phi float [ %add12.us, %if.then.us ], [ %0, %for.body4.us ], !dbg !49
  %cmp15.us = fcmp olt float %3, -1.000000e+01, !dbg !51
  br i1 %cmp15.us, label %if.then16.us, label %if.end24.us, !dbg !52

if.then16.us:                                     ; preds = %if.end.us
  %arrayidx18.us = getelementptr inbounds float, ptr %b, i64 %indvars.iv, !dbg !53
  %4 = load float, ptr %arrayidx18.us, align 4, !dbg !53, !tbaa !37
  %arrayidx20.us = getelementptr inbounds float, ptr %c, i64 %indvars.iv, !dbg !55
  %5 = load float, ptr %arrayidx20.us, align 4, !dbg !55, !tbaa !37
  %sub.us = fsub float %4, %5, !dbg !56
  %add23.us = fadd float %3, %sub.us, !dbg !57
  store float %add23.us, ptr %arrayidx.us, align 4, !dbg !57, !tbaa !37
  br label %if.end24.us, !dbg !58

if.end24.us:                                      ; preds = %if.then16.us, %if.end.us
  %6 = phi float [ %add23.us, %if.then16.us ], [ %3, %if.end.us ], !dbg !59
  %cmp27.us = fcmp olt float %6, 1.000000e+01, !dbg !61
  %cmp30.us = fcmp ogt float %6, -1.000000e+01
  %or.cond.us = and i1 %cmp27.us, %cmp30.us, !dbg !62
  br i1 %or.cond.us, label %if.then31.us, label %for.inc.us, !dbg !62

if.then31.us:                                     ; preds = %if.end24.us
  %arrayidx33.us = getelementptr inbounds float, ptr %b, i64 %indvars.iv, !dbg !63
  %7 = load float, ptr %arrayidx33.us, align 4, !dbg !63, !tbaa !37
  %arrayidx35.us = getelementptr inbounds float, ptr %c, i64 %indvars.iv, !dbg !65
  %8 = load float, ptr %arrayidx35.us, align 4, !dbg !65, !tbaa !37
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %6), !dbg !66
  store float %9, ptr %arrayidx.us, align 4, !dbg !66, !tbaa !37
  br label %for.inc.us, !dbg !67

for.inc.us:                                       ; preds = %if.then31.us, %if.end24.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !68
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !23, metadata !DIExpression()), !dbg !31
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !69
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !32, !llvm.loop !70

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us
  %inc40.us = add nuw nsw i32 %i.073.us, 1, !dbg !74
  call void @llvm.dbg.value(metadata i32 %inc40.us, metadata !21, metadata !DIExpression()), !dbg !28
  %exitcond75.not = icmp eq i32 %inc40.us, %n, !dbg !29
  br i1 %exitcond75.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !30, !llvm.loop !75

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret i32 0, !dbg !77
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @main() local_unnamed_addr #2 !dbg !78 {
entry:
  ret i32 0, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loop.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "61315de0691f5dda948c9b4c8f7bd2eb")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !13, !13, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 3, type: !13)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !1, line: 3, type: !13)
!19 = !DILocalVariable(name: "c", arg: 3, scope: !9, file: !1, line: 3, type: !13)
!20 = !DILocalVariable(name: "n", arg: 4, scope: !9, file: !1, line: 3, type: !12)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 4, type: !12)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 4, column: 6)
!23 = !DILocalVariable(name: "j", scope: !24, file: !1, line: 5, type: !12)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 5, column: 10)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 4, column: 34)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 4, column: 6)
!27 = !DILocation(line: 0, scope: !9)
!28 = !DILocation(line: 0, scope: !22)
!29 = !DILocation(line: 4, column: 24, scope: !26)
!30 = !DILocation(line: 4, column: 6, scope: !22)
!31 = !DILocation(line: 0, scope: !24)
!32 = !DILocation(line: 5, column: 10, scope: !24)
!33 = !DILocation(line: 7, column: 18, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 7, column: 18)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 5, column: 38)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 5, column: 10)
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 7, column: 23, scope: !34)
!42 = !DILocation(line: 7, column: 18, scope: !35)
!43 = !DILocation(line: 8, column: 26, scope: !44)
!44 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 29)
!45 = !DILocation(line: 8, column: 33, scope: !44)
!46 = !DILocation(line: 8, column: 31, scope: !44)
!47 = !DILocation(line: 8, column: 23, scope: !44)
!48 = !DILocation(line: 9, column: 14, scope: !44)
!49 = !DILocation(line: 10, column: 18, scope: !50)
!50 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 18)
!51 = !DILocation(line: 10, column: 23, scope: !50)
!52 = !DILocation(line: 10, column: 18, scope: !35)
!53 = !DILocation(line: 11, column: 26, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 10, column: 31)
!55 = !DILocation(line: 11, column: 33, scope: !54)
!56 = !DILocation(line: 11, column: 31, scope: !54)
!57 = !DILocation(line: 11, column: 23, scope: !54)
!58 = !DILocation(line: 12, column: 14, scope: !54)
!59 = !DILocation(line: 13, column: 18, scope: !60)
!60 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 18)
!61 = !DILocation(line: 13, column: 23, scope: !60)
!62 = !DILocation(line: 13, column: 28, scope: !60)
!63 = !DILocation(line: 14, column: 26, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 13, column: 43)
!65 = !DILocation(line: 14, column: 33, scope: !64)
!66 = !DILocation(line: 14, column: 23, scope: !64)
!67 = !DILocation(line: 15, column: 14, scope: !64)
!68 = !DILocation(line: 5, column: 33, scope: !36)
!69 = !DILocation(line: 5, column: 28, scope: !36)
!70 = distinct !{!70, !32, !71, !72, !73}
!71 = !DILocation(line: 16, column: 10, scope: !24)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !DILocation(line: 4, column: 29, scope: !26)
!75 = distinct !{!75, !30, !76, !72, !73}
!76 = !DILocation(line: 17, column: 6, scope: !22)
!77 = !DILocation(line: 18, column: 6, scope: !9)
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !79, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!12}
!81 = !{}
!82 = !DILocation(line: 29, column: 1, scope: !78)
