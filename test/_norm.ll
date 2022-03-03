; ModuleID = '.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !25
  %5 = sext i32 %3 to i64, !dbg !26
  call void @llvm.dbg.value(metadata i64 0, metadata !18, metadata !DIExpression()), !dbg !25
  %6 = icmp sgt i32 %3, 0, !dbg !27
  br i1 %6, label %.lr.ph7, label %._crit_edge8, !dbg !28

.lr.ph7:                                          ; preds = %4, %._crit_edge
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !29
  br i1 true, label %.lr.ph, label %._crit_edge, !dbg !30

.lr.ph:                                           ; preds = %.lr.ph7, %21
  %.03 = phi i32 [ %22, %21 ], [ 0, %.lr.ph7 ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !20, metadata !DIExpression()), !dbg !29
  %7 = icmp eq i32 %3, 1, !dbg !31
  br i1 %7, label %8, label %12, !dbg !35

8:                                                ; preds = %.lr.ph
  %9 = getelementptr inbounds float, float* %2, i64 %indvars.iv4, !dbg !36
  %10 = load float, float* %9, align 4, !dbg !36, !tbaa !38
  %11 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !42
  store float %10, float* %11, align 4, !dbg !43, !tbaa !38
  br label %12, !dbg !44

12:                                               ; preds = %8, %.lr.ph
  %13 = icmp sgt i32 %3, 5, !dbg !45
  br i1 %13, label %14, label %21, !dbg !47

14:                                               ; preds = %12
  %15 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !48
  %16 = load float, float* %15, align 4, !dbg !48, !tbaa !38
  %17 = getelementptr inbounds float, float* %2, i64 %indvars.iv4, !dbg !50
  store float %16, float* %17, align 4, !dbg !51, !tbaa !38
  %18 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !52
  %19 = load float, float* %18, align 4, !dbg !52, !tbaa !38
  %20 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !54
  store float %19, float* %20, align 4, !dbg !55, !tbaa !38
  br label %21, !dbg !56

21:                                               ; preds = %12, %14
  %22 = add nuw i32 %.03, 1, !dbg !57
  call void @llvm.dbg.value(metadata i32 %22, metadata !20, metadata !DIExpression()), !dbg !29
  %exitcond.not = icmp eq i32 %22, %3, !dbg !58
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !30, !llvm.loop !59

._crit_edge:                                      ; preds = %21, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !61
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !18, metadata !DIExpression()), !dbg !25
  %23 = icmp slt i64 %indvars.iv.next, %5, !dbg !27
  br i1 %23, label %.lr.ph7, label %._crit_edge8, !dbg !28, !llvm.loop !62

._crit_edge8:                                     ; preds = %4, %._crit_edge
  ret i32 0, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !65 {
  call void @llvm.dbg.value(metadata float* %0, metadata !67, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata float* %1, metadata !68, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata float* %2, metadata !69, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 %3, metadata !70, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 0, metadata !71, metadata !DIExpression()), !dbg !79
  %5 = sext i32 %3 to i64, !dbg !80
  call void @llvm.dbg.value(metadata i64 0, metadata !71, metadata !DIExpression()), !dbg !79
  %6 = icmp sgt i32 %3, 0, !dbg !81
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !83

.lr.ph:                                           ; preds = %4, %.lr.ph
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !71, metadata !DIExpression()), !dbg !79
  %7 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !84
  %8 = load float, float* %7, align 4, !dbg !84, !tbaa !38
  %9 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !86
  %10 = load float, float* %9, align 4, !dbg !86, !tbaa !38
  %11 = fmul float %8, %10, !dbg !87
  %12 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !88
  store float %11, float* %12, align 4, !dbg !89, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !90
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !71, metadata !DIExpression()), !dbg !79
  %exitcond.not = icmp eq i64 %indvars.iv.next, %5, !dbg !81
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !83, !llvm.loop !91

._crit_edge:                                      ; preds = %4, %.lr.ph
  call void @llvm.dbg.value(metadata i32 0, metadata !73, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i64 0, metadata !73, metadata !DIExpression()), !dbg !93
  %13 = icmp sgt i32 %3, 0, !dbg !94
  br i1 %13, label %.lr.ph7, label %._crit_edge8, !dbg !95

.lr.ph7:                                          ; preds = %._crit_edge, %.lr.ph7
  %indvars.iv25 = phi i64 [ %indvars.iv.next3, %.lr.ph7 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !73, metadata !DIExpression()), !dbg !93
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv25, !dbg !96
  store float 0.000000e+00, float* %14, align 4, !dbg !97, !tbaa !38
  call void @llvm.dbg.value(metadata i32 undef, metadata !75, metadata !DIExpression()), !dbg !98
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv25, 1, !dbg !99
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !73, metadata !DIExpression()), !dbg !93
  %exitcond1.not = icmp eq i64 %indvars.iv.next3, %5, !dbg !94
  br i1 %exitcond1.not, label %._crit_edge8, label %.lr.ph7, !dbg !95, !llvm.loop !100

._crit_edge8:                                     ; preds = %._crit_edge, %.lr.ph7
  ret i32 0, !dbg !102
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !103 {
  call void @llvm.dbg.value(metadata float* %0, metadata !105, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata float* %1, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata float* %2, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 %3, metadata !108, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()), !dbg !112
  %5 = sext i32 %3 to i64, !dbg !113
  call void @llvm.dbg.value(metadata i64 0, metadata !109, metadata !DIExpression()), !dbg !112
  %6 = icmp sgt i32 %3, 0, !dbg !114
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !116

.lr.ph:                                           ; preds = %4, %18
  %indvars.iv1 = phi i64 [ %indvars.iv.next, %18 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !109, metadata !DIExpression()), !dbg !112
  %7 = getelementptr inbounds float, float* %1, i64 %indvars.iv1, !dbg !117
  %8 = load float, float* %7, align 4, !dbg !117, !tbaa !38
  %9 = getelementptr inbounds float, float* %2, i64 %indvars.iv1, !dbg !119
  %10 = load float, float* %9, align 4, !dbg !119, !tbaa !38
  %11 = fmul float %8, %10, !dbg !120
  %12 = getelementptr inbounds float, float* %0, i64 %indvars.iv1, !dbg !121
  store float %11, float* %12, align 4, !dbg !122, !tbaa !38
  br i1 true, label %13, label %18, !dbg !123

13:                                               ; preds = %.lr.ph
  %14 = add nsw i64 %indvars.iv1, -1, !dbg !124
  %15 = getelementptr inbounds float, float* %0, i64 %14, !dbg !127
  %16 = load float, float* %15, align 4, !dbg !127, !tbaa !38
  %17 = getelementptr inbounds float, float* %2, i64 %indvars.iv1, !dbg !128
  store float %16, float* %17, align 4, !dbg !129, !tbaa !38
  br label %18, !dbg !130

18:                                               ; preds = %13, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !131
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !109, metadata !DIExpression()), !dbg !112
  %19 = icmp slt i64 %indvars.iv.next, %5, !dbg !114
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !116, !llvm.loop !132

._crit_edge:                                      ; preds = %4, %18
  ret i32 0, !dbg !134
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0) #0 !dbg !135 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !140, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()), !dbg !144
  br label %2, !dbg !145

2:                                                ; preds = %6, %1
  %.01 = phi i32 [ 0, %1 ], [ %7, %6 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !141, metadata !DIExpression()), !dbg !144
  %3 = load i32, i32* %0, align 4, !dbg !146, !tbaa !150
  %.not = icmp eq i32 %3, 0, !dbg !146
  br i1 %.not, label %5, label %4, !dbg !152

4:                                                ; preds = %2
  br label %6, !dbg !153

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %4, %5
  %storemerge = phi i32 [ 0, %5 ], [ 1, %4 ], !dbg !155
  store i32 %storemerge, i32* %0, align 4, !dbg !155, !tbaa !150
  %7 = add nuw nsw i32 %.01, 1, !dbg !156
  call void @llvm.dbg.value(metadata i32 %7, metadata !141, metadata !DIExpression()), !dbg !144
  %exitcond.not = icmp eq i32 %7, 10, !dbg !157
  br i1 %exitcond.not, label %8, label %2, !dbg !145, !llvm.loop !158

8:                                                ; preds = %6
  ret i32 0, !dbg !160
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !20}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 2, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!20 = !DILocalVariable(name: "j", scope: !21, file: !1, line: 3, type: !10)
!21 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 2, column: 33)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 2, column: 5)
!24 = !DILocation(line: 0, scope: !7)
!25 = !DILocation(line: 0, scope: !19)
!26 = !DILocation(line: 2, column: 10, scope: !19)
!27 = !DILocation(line: 2, column: 23, scope: !23)
!28 = !DILocation(line: 2, column: 5, scope: !19)
!29 = !DILocation(line: 0, scope: !21)
!30 = !DILocation(line: 3, column: 9, scope: !21)
!31 = !DILocation(line: 4, column: 18, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 4, column: 16)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 3, column: 37)
!34 = distinct !DILexicalBlock(scope: !21, file: !1, line: 3, column: 9)
!35 = !DILocation(line: 4, column: 16, scope: !33)
!36 = !DILocation(line: 5, column: 24, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 4, column: 23)
!38 = !{!39, !39, i64 0}
!39 = !{!"float", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C/C++ TBAA"}
!42 = !DILocation(line: 5, column: 17, scope: !37)
!43 = !DILocation(line: 5, column: 22, scope: !37)
!44 = !DILocation(line: 6, column: 13, scope: !37)
!45 = !DILocation(line: 7, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 17)
!47 = !DILocation(line: 7, column: 17, scope: !33)
!48 = !DILocation(line: 8, column: 24, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 7, column: 23)
!50 = !DILocation(line: 8, column: 17, scope: !49)
!51 = !DILocation(line: 8, column: 22, scope: !49)
!52 = !DILocation(line: 10, column: 25, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 9, column: 16)
!54 = !DILocation(line: 10, column: 17, scope: !53)
!55 = !DILocation(line: 10, column: 23, scope: !53)
!56 = !DILocation(line: 11, column: 13, scope: !49)
!57 = !DILocation(line: 3, column: 32, scope: !34)
!58 = !DILocation(line: 3, column: 27, scope: !34)
!59 = distinct !{!59, !30, !60}
!60 = !DILocation(line: 13, column: 9, scope: !21)
!61 = !DILocation(line: 2, column: 28, scope: !23)
!62 = distinct !{!62, !28, !63}
!63 = !DILocation(line: 14, column: 5, scope: !19)
!64 = !DILocation(line: 15, column: 5, scope: !7)
!65 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!66 = !{!67, !68, !69, !70, !71, !73, !75}
!67 = !DILocalVariable(name: "a", arg: 1, scope: !65, file: !1, line: 18, type: !11)
!68 = !DILocalVariable(name: "b", arg: 2, scope: !65, file: !1, line: 18, type: !11)
!69 = !DILocalVariable(name: "c", arg: 3, scope: !65, file: !1, line: 18, type: !11)
!70 = !DILocalVariable(name: "n", arg: 4, scope: !65, file: !1, line: 18, type: !10)
!71 = !DILocalVariable(name: "i", scope: !72, file: !1, line: 19, type: !10)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 19, column: 5)
!73 = !DILocalVariable(name: "i", scope: !74, file: !1, line: 22, type: !10)
!74 = distinct !DILexicalBlock(scope: !65, file: !1, line: 22, column: 5)
!75 = !DILocalVariable(name: "d", scope: !76, file: !1, line: 24, type: !10)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 22, column: 33)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 22, column: 5)
!78 = !DILocation(line: 0, scope: !65)
!79 = !DILocation(line: 0, scope: !72)
!80 = !DILocation(line: 19, column: 10, scope: !72)
!81 = !DILocation(line: 19, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !72, file: !1, line: 19, column: 5)
!83 = !DILocation(line: 19, column: 5, scope: !72)
!84 = !DILocation(line: 20, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 19, column: 33)
!86 = !DILocation(line: 20, column: 21, scope: !85)
!87 = !DILocation(line: 20, column: 19, scope: !85)
!88 = !DILocation(line: 20, column: 7, scope: !85)
!89 = !DILocation(line: 20, column: 12, scope: !85)
!90 = !DILocation(line: 19, column: 28, scope: !82)
!91 = distinct !{!91, !83, !92}
!92 = !DILocation(line: 21, column: 5, scope: !72)
!93 = !DILocation(line: 0, scope: !74)
!94 = !DILocation(line: 22, column: 23, scope: !77)
!95 = !DILocation(line: 22, column: 5, scope: !74)
!96 = !DILocation(line: 23, column: 7, scope: !76)
!97 = !DILocation(line: 23, column: 12, scope: !76)
!98 = !DILocation(line: 0, scope: !76)
!99 = !DILocation(line: 22, column: 28, scope: !77)
!100 = distinct !{!100, !95, !101}
!101 = !DILocation(line: 26, column: 5, scope: !74)
!102 = !DILocation(line: 27, column: 5, scope: !65)
!103 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 31, type: !8, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!104 = !{!105, !106, !107, !108, !109}
!105 = !DILocalVariable(name: "a", arg: 1, scope: !103, file: !1, line: 31, type: !11)
!106 = !DILocalVariable(name: "b", arg: 2, scope: !103, file: !1, line: 31, type: !11)
!107 = !DILocalVariable(name: "c", arg: 3, scope: !103, file: !1, line: 31, type: !11)
!108 = !DILocalVariable(name: "n", arg: 4, scope: !103, file: !1, line: 31, type: !10)
!109 = !DILocalVariable(name: "i", scope: !110, file: !1, line: 33, type: !10)
!110 = distinct !DILexicalBlock(scope: !103, file: !1, line: 33, column: 6)
!111 = !DILocation(line: 0, scope: !103)
!112 = !DILocation(line: 0, scope: !110)
!113 = !DILocation(line: 33, column: 11, scope: !110)
!114 = !DILocation(line: 33, column: 24, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 33, column: 6)
!116 = !DILocation(line: 33, column: 6, scope: !110)
!117 = !DILocation(line: 34, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 33, column: 34)
!119 = !DILocation(line: 34, column: 21, scope: !118)
!120 = !DILocation(line: 34, column: 19, scope: !118)
!121 = !DILocation(line: 34, column: 7, scope: !118)
!122 = !DILocation(line: 34, column: 12, scope: !118)
!123 = !DILocation(line: 36, column: 10, scope: !118)
!124 = !DILocation(line: 37, column: 19, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 36, column: 12)
!126 = distinct !DILexicalBlock(scope: !118, file: !1, line: 36, column: 10)
!127 = !DILocation(line: 37, column: 16, scope: !125)
!128 = !DILocation(line: 37, column: 9, scope: !125)
!129 = !DILocation(line: 37, column: 14, scope: !125)
!130 = !DILocation(line: 38, column: 7, scope: !125)
!131 = !DILocation(line: 33, column: 29, scope: !115)
!132 = distinct !{!132, !116, !133}
!133 = !DILocation(line: 39, column: 5, scope: !110)
!134 = !DILocation(line: 41, column: 5, scope: !103)
!135 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 44, type: !136, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!136 = !DISubroutineType(types: !137)
!137 = !{!10, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!139 = !{!140, !141}
!140 = !DILocalVariable(name: "number", arg: 1, scope: !135, file: !1, line: 44, type: !138)
!141 = !DILocalVariable(name: "i", scope: !142, file: !1, line: 45, type: !10)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 45, column: 4)
!143 = !DILocation(line: 0, scope: !135)
!144 = !DILocation(line: 0, scope: !142)
!145 = !DILocation(line: 45, column: 4, scope: !142)
!146 = !DILocation(line: 46, column: 8, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 46, column: 8)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 45, column: 32)
!149 = distinct !DILexicalBlock(scope: !142, file: !1, line: 45, column: 4)
!150 = !{!151, !151, i64 0}
!151 = !{!"int", !40, i64 0}
!152 = !DILocation(line: 46, column: 8, scope: !148)
!153 = !DILocation(line: 48, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 46, column: 16)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 45, column: 28, scope: !149)
!157 = !DILocation(line: 45, column: 22, scope: !149)
!158 = distinct !{!158, !145, !159}
!159 = !DILocation(line: 51, column: 4, scope: !142)
!160 = !DILocation(line: 52, column: 5, scope: !135)
