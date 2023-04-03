; ModuleID = 'cshift.c'
source_filename = "cshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local void @CSHIFT(ptr nocapture noundef readonly %XA, ptr nocapture noundef readonly %XB, double noundef %XMA, double noundef %XMB, ptr nocapture noundef %XL, double noundef %BOXH, double noundef %BOXL) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %XA, metadata !15, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %XB, metadata !16, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata double %XMA, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata double %XMB, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %XL, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata double %BOXH, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata double %BOXL, metadata !21, metadata !DIExpression()), !dbg !24
  %sub = fsub double %XMA, %XMB, !dbg !25
  store double %sub, ptr %XL, align 8, !dbg !26
  %0 = load double, ptr %XB, align 8, !dbg !27
  %sub2 = fsub double %XMA, %0, !dbg !28
  %arrayidx3 = getelementptr inbounds double, ptr %XL, i64 1, !dbg !29
  store double %sub2, ptr %arrayidx3, align 8, !dbg !30
  %arrayidx4 = getelementptr inbounds double, ptr %XB, i64 2, !dbg !31
  %1 = load double, ptr %arrayidx4, align 8, !dbg !31
  %sub5 = fsub double %XMA, %1, !dbg !32
  %arrayidx6 = getelementptr inbounds double, ptr %XL, i64 2, !dbg !33
  store double %sub5, ptr %arrayidx6, align 8, !dbg !34
  %2 = load double, ptr %XA, align 8, !dbg !35
  %sub8 = fsub double %2, %XMB, !dbg !36
  %arrayidx9 = getelementptr inbounds double, ptr %XL, i64 3, !dbg !37
  store double %sub8, ptr %arrayidx9, align 8, !dbg !38
  %arrayidx10 = getelementptr inbounds double, ptr %XA, i64 2, !dbg !39
  %3 = load double, ptr %arrayidx10, align 8, !dbg !39
  %sub11 = fsub double %3, %XMB, !dbg !40
  %arrayidx12 = getelementptr inbounds double, ptr %XL, i64 4, !dbg !41
  store double %sub11, ptr %arrayidx12, align 8, !dbg !42
  %4 = load double, ptr %XA, align 8, !dbg !43
  %5 = load double, ptr %XB, align 8, !dbg !44
  %sub15 = fsub double %4, %5, !dbg !45
  %arrayidx16 = getelementptr inbounds double, ptr %XL, i64 5, !dbg !46
  store double %sub15, ptr %arrayidx16, align 8, !dbg !47
  %6 = load double, ptr %XA, align 8, !dbg !48
  %7 = load double, ptr %arrayidx4, align 8, !dbg !49
  %sub19 = fsub double %6, %7, !dbg !50
  %arrayidx20 = getelementptr inbounds double, ptr %XL, i64 6, !dbg !51
  store double %sub19, ptr %arrayidx20, align 8, !dbg !52
  %8 = load double, ptr %arrayidx10, align 8, !dbg !53
  %9 = load double, ptr %XB, align 8, !dbg !54
  %sub23 = fsub double %8, %9, !dbg !55
  %arrayidx24 = getelementptr inbounds double, ptr %XL, i64 7, !dbg !56
  store double %sub23, ptr %arrayidx24, align 8, !dbg !57
  %10 = load double, ptr %arrayidx10, align 8, !dbg !58
  %11 = load double, ptr %arrayidx4, align 8, !dbg !59
  %sub27 = fsub double %10, %11, !dbg !60
  %arrayidx28 = getelementptr inbounds double, ptr %XL, i64 8, !dbg !61
  store double %sub27, ptr %arrayidx28, align 8, !dbg !62
  %arrayidx29 = getelementptr inbounds double, ptr %XA, i64 1, !dbg !63
  %12 = load double, ptr %arrayidx29, align 8, !dbg !63
  %arrayidx30 = getelementptr inbounds double, ptr %XB, i64 1, !dbg !64
  %13 = load double, ptr %arrayidx30, align 8, !dbg !64
  %sub31 = fsub double %12, %13, !dbg !65
  %arrayidx32 = getelementptr inbounds double, ptr %XL, i64 9, !dbg !66
  store double %sub31, ptr %arrayidx32, align 8, !dbg !67
  %14 = load double, ptr %arrayidx29, align 8, !dbg !68
  %15 = load double, ptr %XB, align 8, !dbg !69
  %sub35 = fsub double %14, %15, !dbg !70
  %arrayidx36 = getelementptr inbounds double, ptr %XL, i64 10, !dbg !71
  store double %sub35, ptr %arrayidx36, align 8, !dbg !72
  %16 = load double, ptr %arrayidx29, align 8, !dbg !73
  %17 = load double, ptr %arrayidx4, align 8, !dbg !74
  %sub39 = fsub double %16, %17, !dbg !75
  %arrayidx40 = getelementptr inbounds double, ptr %XL, i64 11, !dbg !76
  store double %sub39, ptr %arrayidx40, align 8, !dbg !77
  %18 = load double, ptr %XA, align 8, !dbg !78
  %19 = load double, ptr %arrayidx30, align 8, !dbg !79
  %sub43 = fsub double %18, %19, !dbg !80
  %arrayidx44 = getelementptr inbounds double, ptr %XL, i64 12, !dbg !81
  store double %sub43, ptr %arrayidx44, align 8, !dbg !82
  %20 = load double, ptr %arrayidx10, align 8, !dbg !83
  %21 = load double, ptr %arrayidx30, align 8, !dbg !84
  %sub47 = fsub double %20, %21, !dbg !85
  %arrayidx48 = getelementptr inbounds double, ptr %XL, i64 13, !dbg !86
  store double %sub47, ptr %arrayidx48, align 8, !dbg !87
  call void @llvm.dbg.value(metadata i64 0, metadata !22, metadata !DIExpression()), !dbg !24
  %cmp57 = fcmp olt double %BOXL, 0.000000e+00
  %fneg59 = fneg double %BOXL
  br i1 %cmp57, label %for.body.us.us, label %for.body, !dbg !88

for.body.us.us:                                   ; preds = %entry, %for.inc.us.us.for.body.us.us_crit_edge
  %22 = phi double [ %.pre139, %for.inc.us.us.for.body.us.us_crit_edge ], [ %sub, %entry ], !dbg !94
  %I.0118.us.us = phi i64 [ %inc.us.us, %for.inc.us.us.for.body.us.us_crit_edge ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %I.0118.us.us, metadata !22, metadata !DIExpression()), !dbg !24
  %23 = tail call double @llvm.fabs.f64(double %22), !dbg !95
  %cmp50.us.us = fcmp ogt double %23, %BOXH, !dbg !96
  br i1 %cmp50.us.us, label %if.then.us.us, label %for.inc.us.us, !dbg !97

if.then.us.us:                                    ; preds = %for.body.us.us
  %arrayidx49.us.us = getelementptr inbounds double, ptr %XL, i64 %I.0118.us.us, !dbg !94
  %cmp53.us.us = fcmp olt double %22, 0.000000e+00, !dbg !88
  %BOXL.fneg59 = select i1 %cmp53.us.us, double %BOXL, double %fneg59
  %sub65.us.us = fsub double %22, %BOXL.fneg59, !dbg !98
  store double %sub65.us.us, ptr %arrayidx49.us.us, align 8, !dbg !99
  br label %for.inc.us.us, !dbg !100

for.inc.us.us:                                    ; preds = %if.then.us.us, %for.body.us.us
  %inc.us.us = add nuw nsw i64 %I.0118.us.us, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %inc.us.us, metadata !22, metadata !DIExpression()), !dbg !24
  %exitcond138.not = icmp eq i64 %inc.us.us, 14, !dbg !102
  br i1 %exitcond138.not, label %for.end, label %for.inc.us.us.for.body.us.us_crit_edge, !dbg !103, !llvm.loop !104

for.inc.us.us.for.body.us.us_crit_edge:           ; preds = %for.inc.us.us
  %arrayidx49.us.us.phi.trans.insert = getelementptr inbounds double, ptr %XL, i64 %inc.us.us
  %.pre139 = load double, ptr %arrayidx49.us.us.phi.trans.insert, align 8, !dbg !94
  br label %for.body.us.us, !dbg !103

for.body:                                         ; preds = %entry, %for.inc.for.body_crit_edge
  %24 = phi double [ %.pre, %for.inc.for.body_crit_edge ], [ %sub, %entry ], !dbg !94
  %I.0118 = phi i64 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %I.0118, metadata !22, metadata !DIExpression()), !dbg !24
  %25 = tail call double @llvm.fabs.f64(double %24), !dbg !95
  %cmp50 = fcmp ogt double %25, %BOXH, !dbg !96
  br i1 %cmp50, label %if.then, label %for.inc, !dbg !97

if.then:                                          ; preds = %for.body
  %arrayidx49 = getelementptr inbounds double, ptr %XL, i64 %I.0118, !dbg !94
  %cmp53 = fcmp olt double %24, 0.000000e+00, !dbg !88
  %fneg.BOXL = select i1 %cmp53, double %fneg59, double %BOXL
  %sub65 = fsub double %24, %fneg.BOXL, !dbg !98
  store double %sub65, ptr %arrayidx49, align 8, !dbg !99
  br label %for.inc, !dbg !100

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add nuw nsw i64 %I.0118, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %inc, metadata !22, metadata !DIExpression()), !dbg !24
  %exitcond.not = icmp eq i64 %inc, 14, !dbg !102
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge, !dbg !103, !llvm.loop !104

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx49.phi.trans.insert = getelementptr inbounds double, ptr %XL, i64 %inc
  %.pre = load double, ptr %arrayidx49.phi.trans.insert, align 8, !dbg !94
  br label %for.body, !dbg !103

for.end:                                          ; preds = %for.inc, %for.inc.us.us
  ret void, !dbg !108
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { argmemonly nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "cshift.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/water-spatial", checksumkind: CSK_MD5, checksum: "f82045f4069adc9d5de8c960edf108f0")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "CSHIFT", scope: !1, file: !1, line: 51, type: !10, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !13, !13, !12, !13, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = !DILocalVariable(name: "XA", arg: 1, scope: !9, file: !1, line: 51, type: !12)
!16 = !DILocalVariable(name: "XB", arg: 2, scope: !9, file: !1, line: 51, type: !12)
!17 = !DILocalVariable(name: "XMA", arg: 3, scope: !9, file: !1, line: 51, type: !13)
!18 = !DILocalVariable(name: "XMB", arg: 4, scope: !9, file: !1, line: 51, type: !13)
!19 = !DILocalVariable(name: "XL", arg: 5, scope: !9, file: !1, line: 51, type: !12)
!20 = !DILocalVariable(name: "BOXH", arg: 6, scope: !9, file: !1, line: 51, type: !13)
!21 = !DILocalVariable(name: "BOXL", arg: 7, scope: !9, file: !1, line: 51, type: !13)
!22 = !DILocalVariable(name: "I", scope: !9, file: !1, line: 53, type: !23)
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DILocation(line: 0, scope: !9)
!25 = !DILocation(line: 57, column: 16, scope: !9)
!26 = !DILocation(line: 57, column: 11, scope: !9)
!27 = !DILocation(line: 58, column: 17, scope: !9)
!28 = !DILocation(line: 58, column: 16, scope: !9)
!29 = !DILocation(line: 58, column: 5, scope: !9)
!30 = !DILocation(line: 58, column: 11, scope: !9)
!31 = !DILocation(line: 59, column: 17, scope: !9)
!32 = !DILocation(line: 59, column: 16, scope: !9)
!33 = !DILocation(line: 59, column: 5, scope: !9)
!34 = !DILocation(line: 59, column: 11, scope: !9)
!35 = !DILocation(line: 60, column: 13, scope: !9)
!36 = !DILocation(line: 60, column: 18, scope: !9)
!37 = !DILocation(line: 60, column: 5, scope: !9)
!38 = !DILocation(line: 60, column: 11, scope: !9)
!39 = !DILocation(line: 61, column: 13, scope: !9)
!40 = !DILocation(line: 61, column: 18, scope: !9)
!41 = !DILocation(line: 61, column: 5, scope: !9)
!42 = !DILocation(line: 61, column: 11, scope: !9)
!43 = !DILocation(line: 62, column: 13, scope: !9)
!44 = !DILocation(line: 62, column: 19, scope: !9)
!45 = !DILocation(line: 62, column: 18, scope: !9)
!46 = !DILocation(line: 62, column: 5, scope: !9)
!47 = !DILocation(line: 62, column: 11, scope: !9)
!48 = !DILocation(line: 63, column: 13, scope: !9)
!49 = !DILocation(line: 63, column: 19, scope: !9)
!50 = !DILocation(line: 63, column: 18, scope: !9)
!51 = !DILocation(line: 63, column: 5, scope: !9)
!52 = !DILocation(line: 63, column: 11, scope: !9)
!53 = !DILocation(line: 64, column: 13, scope: !9)
!54 = !DILocation(line: 64, column: 19, scope: !9)
!55 = !DILocation(line: 64, column: 18, scope: !9)
!56 = !DILocation(line: 64, column: 5, scope: !9)
!57 = !DILocation(line: 64, column: 11, scope: !9)
!58 = !DILocation(line: 65, column: 13, scope: !9)
!59 = !DILocation(line: 65, column: 19, scope: !9)
!60 = !DILocation(line: 65, column: 18, scope: !9)
!61 = !DILocation(line: 65, column: 5, scope: !9)
!62 = !DILocation(line: 65, column: 11, scope: !9)
!63 = !DILocation(line: 66, column: 13, scope: !9)
!64 = !DILocation(line: 66, column: 19, scope: !9)
!65 = !DILocation(line: 66, column: 18, scope: !9)
!66 = !DILocation(line: 66, column: 5, scope: !9)
!67 = !DILocation(line: 66, column: 11, scope: !9)
!68 = !DILocation(line: 67, column: 14, scope: !9)
!69 = !DILocation(line: 67, column: 20, scope: !9)
!70 = !DILocation(line: 67, column: 19, scope: !9)
!71 = !DILocation(line: 67, column: 5, scope: !9)
!72 = !DILocation(line: 67, column: 12, scope: !9)
!73 = !DILocation(line: 68, column: 14, scope: !9)
!74 = !DILocation(line: 68, column: 20, scope: !9)
!75 = !DILocation(line: 68, column: 19, scope: !9)
!76 = !DILocation(line: 68, column: 5, scope: !9)
!77 = !DILocation(line: 68, column: 12, scope: !9)
!78 = !DILocation(line: 69, column: 14, scope: !9)
!79 = !DILocation(line: 69, column: 20, scope: !9)
!80 = !DILocation(line: 69, column: 19, scope: !9)
!81 = !DILocation(line: 69, column: 5, scope: !9)
!82 = !DILocation(line: 69, column: 12, scope: !9)
!83 = !DILocation(line: 70, column: 14, scope: !9)
!84 = !DILocation(line: 70, column: 20, scope: !9)
!85 = !DILocation(line: 70, column: 19, scope: !9)
!86 = !DILocation(line: 70, column: 5, scope: !9)
!87 = !DILocation(line: 70, column: 12, scope: !9)
!88 = !DILocation(line: 76, column: 31, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 75, column: 33)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 75, column: 13)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 73, column: 31)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 73, column: 5)
!93 = distinct !DILexicalBlock(scope: !9, file: !1, line: 73, column: 5)
!94 = !DILocation(line: 75, column: 18, scope: !90)
!95 = !DILocation(line: 75, column: 13, scope: !90)
!96 = !DILocation(line: 75, column: 25, scope: !90)
!97 = !DILocation(line: 75, column: 13, scope: !91)
!98 = !DILocation(line: 76, column: 29, scope: !89)
!99 = !DILocation(line: 76, column: 20, scope: !89)
!100 = !DILocation(line: 77, column: 9, scope: !89)
!101 = !DILocation(line: 73, column: 27, scope: !92)
!102 = !DILocation(line: 73, column: 19, scope: !92)
!103 = !DILocation(line: 73, column: 5, scope: !93)
!104 = distinct !{!104, !103, !105, !106, !107}
!105 = !DILocation(line: 78, column: 5, scope: !93)
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !DILocation(line: 80, column: 1, scope: !9)
