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
  %6 = icmp slt i64 0, %5, !dbg !27
  br i1 %6, label %.lr.ph7, label %7, !dbg !28

.lr.ph7:                                          ; preds = %4
  br label %8, !dbg !28

._crit_edge8:                                     ; preds = %32
  br label %7, !dbg !28

7:                                                ; preds = %._crit_edge8, %4
  br label %34

8:                                                ; preds = %32, %.lr.ph7
  %indvars.iv4 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %32 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !29
  %exitcond2 = icmp ne i32 0, %3, !dbg !30
  br i1 %exitcond2, label %.lr.ph, label %9, !dbg !32

.lr.ph:                                           ; preds = %8
  br label %10, !dbg !32

._crit_edge:                                      ; preds = %29
  br label %9, !dbg !32

9:                                                ; preds = %._crit_edge, %8
  %indvars.iv5 = phi i64 [ %indvars.iv4, %._crit_edge ], [ %indvars.iv4, %8 ]
  br label %31

10:                                               ; preds = %29, %.lr.ph
  %.03 = phi i32 [ 0, %.lr.ph ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i32 %.03, metadata !20, metadata !DIExpression()), !dbg !29
  %11 = icmp eq i32 %3, 1, !dbg !33
  br i1 %11, label %12, label %16, !dbg !36

12:                                               ; preds = %10
  %13 = getelementptr inbounds float, float* %2, i64 %indvars.iv4, !dbg !37
  %14 = load float, float* %13, align 4, !dbg !37, !tbaa !39
  %15 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !43
  store float %14, float* %15, align 4, !dbg !44, !tbaa !39
  br label %16, !dbg !45

16:                                               ; preds = %12, %10
  %17 = icmp sgt i32 %3, 5, !dbg !46
  br i1 %17, label %18, label %28, !dbg !48

18:                                               ; preds = %16
  %19 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !49
  %20 = load float, float* %19, align 4, !dbg !49, !tbaa !39
  %21 = getelementptr inbounds float, float* %2, i64 %indvars.iv4, !dbg !51
  store float %20, float* %21, align 4, !dbg !52, !tbaa !39
  %22 = icmp ne i32 %3, 0, !dbg !53
  br i1 %22, label %23, label %27, !dbg !55

23:                                               ; preds = %18
  %24 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !56
  %25 = load float, float* %24, align 4, !dbg !56, !tbaa !39
  %26 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !57
  store float %25, float* %26, align 4, !dbg !58, !tbaa !39
  br label %27, !dbg !57

27:                                               ; preds = %23, %18
  br label %28, !dbg !59

28:                                               ; preds = %27, %16
  br label %29, !dbg !60

29:                                               ; preds = %28
  %30 = add nuw i32 %.03, 1, !dbg !61
  call void @llvm.dbg.value(metadata i32 %30, metadata !20, metadata !DIExpression()), !dbg !29
  %exitcond = icmp ne i32 %30, %3, !dbg !30
  br i1 %exitcond, label %10, label %._crit_edge, !dbg !32, !llvm.loop !62

31:                                               ; preds = %9
  br label %32, !dbg !64

32:                                               ; preds = %31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !65
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !18, metadata !DIExpression()), !dbg !25
  %33 = icmp slt i64 %indvars.iv.next, %5, !dbg !27
  br i1 %33, label %8, label %._crit_edge8, !dbg !28, !llvm.loop !66

34:                                               ; preds = %7
  ret i32 0, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !69 {
  call void @llvm.dbg.value(metadata float* %0, metadata !71, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata float* %1, metadata !72, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata float* %2, metadata !73, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 %3, metadata !74, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !83
  %5 = sext i32 %3 to i64, !dbg !84
  call void @llvm.dbg.value(metadata i64 0, metadata !75, metadata !DIExpression()), !dbg !83
  %6 = icmp slt i64 0, %5, !dbg !85
  br i1 %6, label %.lr.ph, label %7, !dbg !87

.lr.ph:                                           ; preds = %4
  br label %8, !dbg !87

._crit_edge:                                      ; preds = %15
  br label %7, !dbg !87

7:                                                ; preds = %._crit_edge, %4
  br label %16

8:                                                ; preds = %15, %.lr.ph
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !75, metadata !DIExpression()), !dbg !83
  %9 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !88
  %10 = load float, float* %9, align 4, !dbg !88, !tbaa !39
  %11 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !90
  %12 = load float, float* %11, align 4, !dbg !90, !tbaa !39
  %13 = fmul float %10, %12, !dbg !91
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !92
  store float %13, float* %14, align 4, !dbg !93, !tbaa !39
  br label %15, !dbg !94

15:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !75, metadata !DIExpression()), !dbg !83
  %exitcond = icmp ne i64 %indvars.iv.next, %5, !dbg !85
  br i1 %exitcond, label %8, label %._crit_edge, !dbg !87, !llvm.loop !96

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !98
  %17 = sext i32 %3 to i64, !dbg !99
  call void @llvm.dbg.value(metadata i64 0, metadata !77, metadata !DIExpression()), !dbg !98
  %18 = icmp slt i64 0, %17, !dbg !100
  br i1 %18, label %.lr.ph7, label %19, !dbg !101

.lr.ph7:                                          ; preds = %16
  br label %20, !dbg !101

._crit_edge8:                                     ; preds = %28
  br label %19, !dbg !101

19:                                               ; preds = %._crit_edge8, %16
  br label %29

20:                                               ; preds = %28, %.lr.ph7
  %indvars.iv25 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next3, %28 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !77, metadata !DIExpression()), !dbg !98
  %21 = getelementptr inbounds float, float* %0, i64 %indvars.iv25, !dbg !102
  store float 0.000000e+00, float* %21, align 4, !dbg !103, !tbaa !39
  %22 = getelementptr inbounds float, float* %1, i64 %indvars.iv25, !dbg !104
  %23 = load float, float* %22, align 4, !dbg !104, !tbaa !39
  %24 = getelementptr inbounds float, float* %2, i64 %indvars.iv25, !dbg !105
  %25 = load float, float* %24, align 4, !dbg !105, !tbaa !39
  %26 = fadd float %23, %25, !dbg !106
  %27 = fptosi float %26 to i32, !dbg !104
  call void @llvm.dbg.value(metadata i32 %27, metadata !79, metadata !DIExpression()), !dbg !107
  br label %28, !dbg !108

28:                                               ; preds = %20
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv25, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !77, metadata !DIExpression()), !dbg !98
  %exitcond1 = icmp ne i64 %indvars.iv.next3, %5, !dbg !100
  br i1 %exitcond1, label %20, label %._crit_edge8, !dbg !101, !llvm.loop !110

29:                                               ; preds = %19
  ret i32 0, !dbg !112
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !113 {
  call void @llvm.dbg.value(metadata float* %0, metadata !115, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata float* %1, metadata !116, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata float* %2, metadata !117, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 %3, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()), !dbg !122
  %5 = sext i32 %3 to i64, !dbg !123
  call void @llvm.dbg.value(metadata i64 0, metadata !119, metadata !DIExpression()), !dbg !122
  %6 = icmp slt i64 0, %5, !dbg !124
  br i1 %6, label %.lr.ph, label %7, !dbg !126

.lr.ph:                                           ; preds = %4
  br label %8, !dbg !126

._crit_edge:                                      ; preds = %22
  br label %7, !dbg !126

7:                                                ; preds = %._crit_edge, %4
  br label %24

8:                                                ; preds = %22, %.lr.ph
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !119, metadata !DIExpression()), !dbg !122
  %9 = getelementptr inbounds float, float* %1, i64 %indvars.iv1, !dbg !127
  %10 = load float, float* %9, align 4, !dbg !127, !tbaa !39
  %11 = getelementptr inbounds float, float* %2, i64 %indvars.iv1, !dbg !129
  %12 = load float, float* %11, align 4, !dbg !129, !tbaa !39
  %13 = fmul float %10, %12, !dbg !130
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv1, !dbg !131
  store float %13, float* %14, align 4, !dbg !132, !tbaa !39
  %15 = icmp ne i32 %3, 0, !dbg !133
  br i1 %15, label %16, label %21, !dbg !135

16:                                               ; preds = %8
  %17 = sub nsw i64 %indvars.iv1, 1, !dbg !136
  %18 = getelementptr inbounds float, float* %0, i64 %17, !dbg !138
  %19 = load float, float* %18, align 4, !dbg !138, !tbaa !39
  %20 = getelementptr inbounds float, float* %2, i64 %indvars.iv1, !dbg !139
  store float %19, float* %20, align 4, !dbg !140, !tbaa !39
  br label %21, !dbg !141

21:                                               ; preds = %16, %8
  %indvars.iv2 = phi i64 [ %indvars.iv1, %16 ], [ %indvars.iv1, %8 ]
  br label %22, !dbg !142

22:                                               ; preds = %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv2, 1, !dbg !143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !119, metadata !DIExpression()), !dbg !122
  %23 = icmp slt i64 %indvars.iv.next, %5, !dbg !124
  br i1 %23, label %8, label %._crit_edge, !dbg !126, !llvm.loop !144

24:                                               ; preds = %7
  ret i32 0, !dbg !146
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0) #0 !dbg !147 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !152, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()), !dbg !156
  br label %3, !dbg !157

2:                                                ; preds = %9
  br label %11

3:                                                ; preds = %9, %1
  %.01 = phi i32 [ 0, %1 ], [ %10, %9 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !153, metadata !DIExpression()), !dbg !156
  %4 = load i32, i32* %0, align 4, !dbg !158, !tbaa !162
  %5 = icmp ne i32 %4, 0, !dbg !158
  br i1 %5, label %6, label %7, !dbg !164

6:                                                ; preds = %3
  store i32 1, i32* %0, align 4, !dbg !165, !tbaa !162
  br label %8, !dbg !167

7:                                                ; preds = %3
  store i32 0, i32* %0, align 4, !dbg !168, !tbaa !162
  br label %8

8:                                                ; preds = %7, %6
  br label %9, !dbg !170

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.01, 1, !dbg !171
  call void @llvm.dbg.value(metadata i32 %10, metadata !153, metadata !DIExpression()), !dbg !156
  %exitcond = icmp ne i32 %10, 10, !dbg !172
  br i1 %exitcond, label %3, label %2, !dbg !157, !llvm.loop !173

11:                                               ; preds = %2
  ret i32 0, !dbg !175
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }

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
!30 = !DILocation(line: 3, column: 27, scope: !31)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 3, column: 9)
!32 = !DILocation(line: 3, column: 9, scope: !21)
!33 = !DILocation(line: 4, column: 18, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 4, column: 16)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 3, column: 37)
!36 = !DILocation(line: 4, column: 16, scope: !35)
!37 = !DILocation(line: 5, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 4, column: 23)
!39 = !{!40, !40, i64 0}
!40 = !{!"float", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 5, column: 17, scope: !38)
!44 = !DILocation(line: 5, column: 22, scope: !38)
!45 = !DILocation(line: 6, column: 13, scope: !38)
!46 = !DILocation(line: 7, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !35, file: !1, line: 7, column: 17)
!48 = !DILocation(line: 7, column: 17, scope: !35)
!49 = !DILocation(line: 8, column: 24, scope: !50)
!50 = distinct !DILexicalBlock(scope: !47, file: !1, line: 7, column: 23)
!51 = !DILocation(line: 8, column: 17, scope: !50)
!52 = !DILocation(line: 8, column: 22, scope: !50)
!53 = !DILocation(line: 9, column: 16, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 9, column: 16)
!55 = !DILocation(line: 9, column: 16, scope: !50)
!56 = !DILocation(line: 10, column: 25, scope: !54)
!57 = !DILocation(line: 10, column: 17, scope: !54)
!58 = !DILocation(line: 10, column: 23, scope: !54)
!59 = !DILocation(line: 11, column: 13, scope: !50)
!60 = !DILocation(line: 13, column: 9, scope: !35)
!61 = !DILocation(line: 3, column: 32, scope: !31)
!62 = distinct !{!62, !32, !63}
!63 = !DILocation(line: 13, column: 9, scope: !21)
!64 = !DILocation(line: 14, column: 5, scope: !22)
!65 = !DILocation(line: 2, column: 28, scope: !23)
!66 = distinct !{!66, !28, !67}
!67 = !DILocation(line: 14, column: 5, scope: !19)
!68 = !DILocation(line: 15, column: 5, scope: !7)
!69 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!70 = !{!71, !72, !73, !74, !75, !77, !79}
!71 = !DILocalVariable(name: "a", arg: 1, scope: !69, file: !1, line: 18, type: !11)
!72 = !DILocalVariable(name: "b", arg: 2, scope: !69, file: !1, line: 18, type: !11)
!73 = !DILocalVariable(name: "c", arg: 3, scope: !69, file: !1, line: 18, type: !11)
!74 = !DILocalVariable(name: "n", arg: 4, scope: !69, file: !1, line: 18, type: !10)
!75 = !DILocalVariable(name: "i", scope: !76, file: !1, line: 19, type: !10)
!76 = distinct !DILexicalBlock(scope: !69, file: !1, line: 19, column: 5)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 22, type: !10)
!78 = distinct !DILexicalBlock(scope: !69, file: !1, line: 22, column: 5)
!79 = !DILocalVariable(name: "d", scope: !80, file: !1, line: 24, type: !10)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 22, column: 33)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 22, column: 5)
!82 = !DILocation(line: 0, scope: !69)
!83 = !DILocation(line: 0, scope: !76)
!84 = !DILocation(line: 19, column: 10, scope: !76)
!85 = !DILocation(line: 19, column: 23, scope: !86)
!86 = distinct !DILexicalBlock(scope: !76, file: !1, line: 19, column: 5)
!87 = !DILocation(line: 19, column: 5, scope: !76)
!88 = !DILocation(line: 20, column: 14, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 19, column: 33)
!90 = !DILocation(line: 20, column: 21, scope: !89)
!91 = !DILocation(line: 20, column: 19, scope: !89)
!92 = !DILocation(line: 20, column: 7, scope: !89)
!93 = !DILocation(line: 20, column: 12, scope: !89)
!94 = !DILocation(line: 21, column: 5, scope: !89)
!95 = !DILocation(line: 19, column: 28, scope: !86)
!96 = distinct !{!96, !87, !97}
!97 = !DILocation(line: 21, column: 5, scope: !76)
!98 = !DILocation(line: 0, scope: !78)
!99 = !DILocation(line: 22, column: 10, scope: !78)
!100 = !DILocation(line: 22, column: 23, scope: !81)
!101 = !DILocation(line: 22, column: 5, scope: !78)
!102 = !DILocation(line: 23, column: 7, scope: !80)
!103 = !DILocation(line: 23, column: 12, scope: !80)
!104 = !DILocation(line: 24, column: 15, scope: !80)
!105 = !DILocation(line: 24, column: 22, scope: !80)
!106 = !DILocation(line: 24, column: 20, scope: !80)
!107 = !DILocation(line: 0, scope: !80)
!108 = !DILocation(line: 26, column: 5, scope: !80)
!109 = !DILocation(line: 22, column: 28, scope: !81)
!110 = distinct !{!110, !101, !111}
!111 = !DILocation(line: 26, column: 5, scope: !78)
!112 = !DILocation(line: 27, column: 5, scope: !69)
!113 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 31, type: !8, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DILocalVariable(name: "a", arg: 1, scope: !113, file: !1, line: 31, type: !11)
!116 = !DILocalVariable(name: "b", arg: 2, scope: !113, file: !1, line: 31, type: !11)
!117 = !DILocalVariable(name: "c", arg: 3, scope: !113, file: !1, line: 31, type: !11)
!118 = !DILocalVariable(name: "n", arg: 4, scope: !113, file: !1, line: 31, type: !10)
!119 = !DILocalVariable(name: "i", scope: !120, file: !1, line: 33, type: !10)
!120 = distinct !DILexicalBlock(scope: !113, file: !1, line: 33, column: 6)
!121 = !DILocation(line: 0, scope: !113)
!122 = !DILocation(line: 0, scope: !120)
!123 = !DILocation(line: 33, column: 11, scope: !120)
!124 = !DILocation(line: 33, column: 24, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 33, column: 6)
!126 = !DILocation(line: 33, column: 6, scope: !120)
!127 = !DILocation(line: 34, column: 14, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 33, column: 34)
!129 = !DILocation(line: 34, column: 21, scope: !128)
!130 = !DILocation(line: 34, column: 19, scope: !128)
!131 = !DILocation(line: 34, column: 7, scope: !128)
!132 = !DILocation(line: 34, column: 12, scope: !128)
!133 = !DILocation(line: 36, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 36, column: 10)
!135 = !DILocation(line: 36, column: 10, scope: !128)
!136 = !DILocation(line: 37, column: 19, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 36, column: 12)
!138 = !DILocation(line: 37, column: 16, scope: !137)
!139 = !DILocation(line: 37, column: 9, scope: !137)
!140 = !DILocation(line: 37, column: 14, scope: !137)
!141 = !DILocation(line: 38, column: 7, scope: !137)
!142 = !DILocation(line: 39, column: 5, scope: !128)
!143 = !DILocation(line: 33, column: 29, scope: !125)
!144 = distinct !{!144, !126, !145}
!145 = !DILocation(line: 39, column: 5, scope: !120)
!146 = !DILocation(line: 41, column: 5, scope: !113)
!147 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 44, type: !148, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!148 = !DISubroutineType(types: !149)
!149 = !{!10, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!151 = !{!152, !153}
!152 = !DILocalVariable(name: "number", arg: 1, scope: !147, file: !1, line: 44, type: !150)
!153 = !DILocalVariable(name: "i", scope: !154, file: !1, line: 45, type: !10)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 45, column: 4)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 0, scope: !154)
!157 = !DILocation(line: 45, column: 4, scope: !154)
!158 = !DILocation(line: 46, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 46, column: 8)
!160 = distinct !DILexicalBlock(scope: !161, file: !1, line: 45, column: 32)
!161 = distinct !DILexicalBlock(scope: !154, file: !1, line: 45, column: 4)
!162 = !{!163, !163, i64 0}
!163 = !{!"int", !41, i64 0}
!164 = !DILocation(line: 46, column: 8, scope: !160)
!165 = !DILocation(line: 47, column: 16, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !1, line: 46, column: 16)
!167 = !DILocation(line: 48, column: 5, scope: !166)
!168 = !DILocation(line: 49, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !159, file: !1, line: 48, column: 10)
!170 = !DILocation(line: 51, column: 4, scope: !160)
!171 = !DILocation(line: 45, column: 28, scope: !161)
!172 = !DILocation(line: 45, column: 22, scope: !161)
!173 = distinct !{!173, !157, !174}
!174 = !DILocation(line: 51, column: 4, scope: !154)
!175 = !DILocation(line: 52, column: 5, scope: !147)
