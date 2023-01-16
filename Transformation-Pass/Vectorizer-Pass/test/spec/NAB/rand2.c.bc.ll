; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/rand2.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spec_seed = internal unnamed_addr global i32 0, align 4, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @setseed(ptr nocapture noundef readonly %seed4) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %seed4, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, ptr %seed4, align 4, !dbg !21, !tbaa !23
  %cmp = icmp slt i32 %0, 0, !dbg !27
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 0, %0, !dbg !29
  br label %if.end4, !dbg !31

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %0, 0, !dbg !32
  %. = select i1 %cmp1, i32 20090120, i32 %0
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %.sink = phi i32 [ %sub, %if.then ], [ %., %if.else ]
  store i32 %.sink, ptr @spec_seed, align 4, !dbg !34, !tbaa !23
  tail call void @spec_srand(i32 noundef %.sink) #5, !dbg !35
  ret i32 0, !dbg !36
}

declare !dbg !37 void @spec_srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @rseed() local_unnamed_addr #2 !dbg !42 {
entry:
  %0 = load i32, ptr @spec_seed, align 4, !dbg !45, !tbaa !23
  ret i32 %0, !dbg !46
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(ptr nocapture noundef readonly %mean, ptr nocapture noundef readonly %sd) local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata ptr %mean, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata ptr %sd, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata ptr %mean, metadata !56, metadata !DIExpression()) #5, !dbg !68
  call void @llvm.dbg.value(metadata ptr %sd, metadata !61, metadata !DIExpression()) #5, !dbg !68
  call void @llvm.dbg.value(metadata ptr null, metadata !62, metadata !DIExpression()) #5, !dbg !68
  br label %do.body.i, !dbg !70

do.body.i:                                        ; preds = %do.body.i, %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !71, metadata !DIExpression()) #5, !dbg !76
  %call.i.i = tail call double @spec_rand() #5, !dbg !79
  %0 = tail call double @llvm.fmuladd.f64(double %call.i.i, double 2.000000e+00, double -1.000000e+00) #5, !dbg !80
  call void @llvm.dbg.value(metadata double %0, metadata !66, metadata !DIExpression()) #5, !dbg !68
  call void @llvm.dbg.value(metadata ptr undef, metadata !71, metadata !DIExpression()) #5, !dbg !81
  %call.i1.i = tail call double @spec_rand() #5, !dbg !83
  %1 = tail call double @llvm.fmuladd.f64(double %call.i1.i, double 2.000000e+00, double -1.000000e+00) #5, !dbg !84
  call void @llvm.dbg.value(metadata double %1, metadata !67, metadata !DIExpression()) #5, !dbg !68
  %mul2.i = fmul double %1, %1, !dbg !85
  %2 = tail call double @llvm.fmuladd.f64(double %0, double %0, double %mul2.i) #5, !dbg !86
  call void @llvm.dbg.value(metadata double %2, metadata !65, metadata !DIExpression()) #5, !dbg !68
  %cmp.i = fcmp oge double %2, 1.000000e+00, !dbg !87
  %cmp3.i = fcmp oeq double %2, 0.000000e+00
  %or.cond.i = or i1 %cmp.i, %cmp3.i, !dbg !88
  br i1 %or.cond.i, label %do.body.i, label %gaussa.exit, !dbg !88, !llvm.loop !89

gaussa.exit:                                      ; preds = %do.body.i
  %call4.i = tail call double @log(double noundef %2) #5, !dbg !93
  %mul.i = fmul double %call4.i, -2.000000e+00, !dbg !94
  %div.i = fdiv double %mul.i, %2, !dbg !95
  %call5.i = tail call double @sqrt(double noundef %div.i) #5, !dbg !96
  call void @llvm.dbg.value(metadata double %call5.i, metadata !63, metadata !DIExpression()) #5, !dbg !68
  %mul6.i = fmul double %0, %call5.i, !dbg !97
  call void @llvm.dbg.value(metadata double %mul6.i, metadata !64, metadata !DIExpression()) #5, !dbg !68
  %3 = load double, ptr %sd, align 8, !dbg !98, !tbaa !99
  %4 = load double, ptr %mean, align 8, !dbg !101, !tbaa !99
  %5 = tail call double @llvm.fmuladd.f64(double %3, double %mul6.i, double %4) #5, !dbg !102
  ret double %5, !dbg !103
}

; Function Attrs: nounwind uwtable
define dso_local double @rand2() local_unnamed_addr #0 !dbg !104 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !71, metadata !DIExpression()) #5, !dbg !107
  %call.i = tail call double @spec_rand() #5, !dbg !109
  ret double %call.i, !dbg !110
}

declare !dbg !111 double @spec_rand() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "spec_seed", scope: !2, file: !5, line: 10, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "54fc6262d3a3873ac85d6c555fd34801")
!4 = !{!0}
!5 = !DIFile(filename: "apps/544.nab_r/src/rand2.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "54fc6262d3a3873ac85d6c555fd34801")
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "setseed", scope: !5, file: !5, line: 13, type: !15, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!6, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!18 = !{!19}
!19 = !DILocalVariable(name: "seed4", arg: 1, scope: !14, file: !5, line: 13, type: !17)
!20 = !DILocation(line: 0, scope: !14)
!21 = !DILocation(line: 15, column: 9, scope: !22)
!22 = distinct !DILexicalBlock(scope: !14, file: !5, line: 15, column: 9)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 15, column: 16, scope: !22)
!28 = !DILocation(line: 15, column: 9, scope: !14)
!29 = !DILocation(line: 16, column: 21, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !5, line: 15, column: 21)
!31 = !DILocation(line: 17, column: 5, scope: !30)
!32 = !DILocation(line: 17, column: 23, scope: !33)
!33 = distinct !DILexicalBlock(scope: !22, file: !5, line: 17, column: 16)
!34 = !DILocation(line: 0, scope: !22)
!35 = !DILocation(line: 25, column: 5, scope: !14)
!36 = !DILocation(line: 26, column: 5, scope: !14)
!37 = !DISubprogram(name: "spec_srand", scope: !38, file: !38, line: 53, type: !39, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
!38 = !DIFile(filename: "apps/544.nab_r/src/specrand/specrand.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8b5d0c0f7cdcbbe6b75c0eba66b02de3")
!39 = !DISubroutineType(types: !40)
!40 = !{null, !6}
!41 = !{}
!42 = distinct !DISubprogram(name: "rseed", scope: !5, file: !5, line: 29, type: !43, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!43 = !DISubroutineType(types: !44)
!44 = !{!6}
!45 = !DILocation(line: 31, column: 12, scope: !42)
!46 = !DILocation(line: 31, column: 5, scope: !42)
!47 = distinct !DISubprogram(name: "gauss", scope: !5, file: !5, line: 34, type: !48, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !51, !51}
!50 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!52 = !{!53, !54}
!53 = !DILocalVariable(name: "mean", arg: 1, scope: !47, file: !5, line: 34, type: !51)
!54 = !DILocalVariable(name: "sd", arg: 2, scope: !47, file: !5, line: 34, type: !51)
!55 = !DILocation(line: 0, scope: !47)
!56 = !DILocalVariable(name: "mean", arg: 1, scope: !57, file: !5, line: 147, type: !51)
!57 = distinct !DISubprogram(name: "gaussa", scope: !5, file: !5, line: 147, type: !58, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!50, !51, !51, !17}
!60 = !{!56, !61, !62, !63, !64, !65, !66, !67}
!61 = !DILocalVariable(name: "sd", arg: 2, scope: !57, file: !5, line: 147, type: !51)
!62 = !DILocalVariable(name: "seed", arg: 3, scope: !57, file: !5, line: 147, type: !17)
!63 = !DILocalVariable(name: "fac", scope: !57, file: !5, line: 149, type: !50)
!64 = !DILocalVariable(name: "gdev1", scope: !57, file: !5, line: 149, type: !50)
!65 = !DILocalVariable(name: "rsq", scope: !57, file: !5, line: 149, type: !50)
!66 = !DILocalVariable(name: "s1", scope: !57, file: !5, line: 149, type: !50)
!67 = !DILocalVariable(name: "s2", scope: !57, file: !5, line: 149, type: !50)
!68 = !DILocation(line: 0, scope: !57, inlinedAt: !69)
!69 = distinct !DILocation(line: 36, column: 12, scope: !47)
!70 = !DILocation(line: 151, column: 3, scope: !57, inlinedAt: !69)
!71 = !DILocalVariable(name: "seed", arg: 1, scope: !72, file: !5, line: 40, type: !17)
!72 = distinct !DISubprogram(name: "rand2a", scope: !5, file: !5, line: 40, type: !73, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!50, !17}
!75 = !{!71}
!76 = !DILocation(line: 0, scope: !72, inlinedAt: !77)
!77 = distinct !DILocation(line: 152, column: 12, scope: !78, inlinedAt: !69)
!78 = distinct !DILexicalBlock(scope: !57, file: !5, line: 151, column: 6)
!79 = !DILocation(line: 43, column: 12, scope: !72, inlinedAt: !77)
!80 = !DILocation(line: 152, column: 25, scope: !78, inlinedAt: !69)
!81 = !DILocation(line: 0, scope: !72, inlinedAt: !82)
!82 = distinct !DILocation(line: 153, column: 12, scope: !78, inlinedAt: !69)
!83 = !DILocation(line: 43, column: 12, scope: !72, inlinedAt: !82)
!84 = !DILocation(line: 153, column: 25, scope: !78, inlinedAt: !69)
!85 = !DILocation(line: 154, column: 20, scope: !78, inlinedAt: !69)
!86 = !DILocation(line: 154, column: 16, scope: !78, inlinedAt: !69)
!87 = !DILocation(line: 155, column: 17, scope: !57, inlinedAt: !69)
!88 = !DILocation(line: 155, column: 23, scope: !57, inlinedAt: !69)
!89 = distinct !{!89, !70, !90, !91, !92}
!90 = !DILocation(line: 155, column: 37, scope: !57, inlinedAt: !69)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = !DILocation(line: 156, column: 18, scope: !57, inlinedAt: !69)
!94 = !DILocation(line: 156, column: 17, scope: !57, inlinedAt: !69)
!95 = !DILocation(line: 156, column: 26, scope: !57, inlinedAt: !69)
!96 = !DILocation(line: 156, column: 9, scope: !57, inlinedAt: !69)
!97 = !DILocation(line: 157, column: 13, scope: !57, inlinedAt: !69)
!98 = !DILocation(line: 159, column: 11, scope: !57, inlinedAt: !69)
!99 = !{!100, !100, i64 0}
!100 = !{!"double", !25, i64 0}
!101 = !DILocation(line: 159, column: 23, scope: !57, inlinedAt: !69)
!102 = !DILocation(line: 159, column: 21, scope: !57, inlinedAt: !69)
!103 = !DILocation(line: 36, column: 5, scope: !47)
!104 = distinct !DISubprogram(name: "rand2", scope: !5, file: !5, line: 46, type: !105, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!105 = !DISubroutineType(types: !106)
!106 = !{!50}
!107 = !DILocation(line: 0, scope: !72, inlinedAt: !108)
!108 = distinct !DILocation(line: 48, column: 12, scope: !104)
!109 = !DILocation(line: 43, column: 12, scope: !72, inlinedAt: !108)
!110 = !DILocation(line: 48, column: 5, scope: !104)
!111 = !DISubprogram(name: "spec_rand", scope: !38, file: !38, line: 54, type: !105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !41)
