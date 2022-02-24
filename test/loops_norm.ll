; ModuleID = 'loops.ll'
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
  br i1 %6, label %.lr.ph10, label %7, !dbg !28

.lr.ph10:                                         ; preds = %4
  br label %8, !dbg !28

._crit_edge11:                                    ; preds = %40
  br label %7, !dbg !28

7:                                                ; preds = %._crit_edge11, %4
  br label %42

8:                                                ; preds = %.lr.ph10, %40
  %indvars.iv27 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next3, %40 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !20, metadata !DIExpression()), !dbg !29
  %wide.trip.count = zext i32 %3 to i64, !dbg !30
  call void @llvm.dbg.value(metadata i64 0, metadata !20, metadata !DIExpression()), !dbg !29
  %exitcond4 = icmp ne i64 0, %wide.trip.count, !dbg !30
  br i1 %exitcond4, label %.lr.ph, label %9, !dbg !32

.lr.ph:                                           ; preds = %8
  br label %10, !dbg !32

._crit_edge:                                      ; preds = %38
  br label %9, !dbg !32

9:                                                ; preds = %._crit_edge, %8
  %indvars.iv28 = phi i64 [ %indvars.iv27, %._crit_edge ], [ %indvars.iv27, %8 ]
  br label %39

10:                                               ; preds = %.lr.ph, %38
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %38 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !20, metadata !DIExpression()), !dbg !29
  %11 = icmp eq i32 %3, 1, !dbg !33
  br i1 %11, label %12, label %19, !dbg !36

12:                                               ; preds = %10
  %13 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !37
  %14 = load float, float* %13, align 4, !dbg !37, !tbaa !39
  %15 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !43
  %16 = load float, float* %15, align 4, !dbg !43, !tbaa !39
  %17 = fadd float %14, %16, !dbg !44
  %18 = getelementptr inbounds float, float* %0, i64 %indvars.iv27, !dbg !45
  store float %17, float* %18, align 4, !dbg !46, !tbaa !39
  br label %19, !dbg !47

19:                                               ; preds = %12, %10
  %20 = icmp sgt i32 %3, 5, !dbg !48
  br i1 %20, label %21, label %28, !dbg !50

21:                                               ; preds = %19
  %22 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !51
  %23 = load float, float* %22, align 4, !dbg !51, !tbaa !39
  %24 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !53
  %25 = load float, float* %24, align 4, !dbg !53, !tbaa !39
  %26 = fsub float %23, %25, !dbg !54
  %27 = getelementptr inbounds float, float* %0, i64 %indvars.iv27, !dbg !55
  store float %26, float* %27, align 4, !dbg !56, !tbaa !39
  br label %28, !dbg !57

28:                                               ; preds = %21, %19
  %29 = icmp ne i32 %3, 0, !dbg !58
  br i1 %29, label %30, label %37, !dbg !60

30:                                               ; preds = %28
  %31 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !61
  %32 = load float, float* %31, align 4, !dbg !61, !tbaa !39
  %33 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !63
  %34 = load float, float* %33, align 4, !dbg !63, !tbaa !39
  %35 = fmul float %32, %34, !dbg !64
  %36 = getelementptr inbounds float, float* %0, i64 %indvars.iv27, !dbg !65
  store float %35, float* %36, align 4, !dbg !66, !tbaa !39
  br label %37, !dbg !67

37:                                               ; preds = %30, %28
  %indvars.iv6 = phi i64 [ %indvars.iv5, %30 ], [ %indvars.iv5, %28 ]
  br label %38, !dbg !68

38:                                               ; preds = %37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv6, 1, !dbg !69
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !20, metadata !DIExpression()), !dbg !29
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count, !dbg !30
  br i1 %exitcond, label %10, label %._crit_edge, !dbg !32, !llvm.loop !70

39:                                               ; preds = %9
  br label %40, !dbg !72

40:                                               ; preds = %39
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv28, 1, !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !18, metadata !DIExpression()), !dbg !25
  %41 = icmp slt i64 %indvars.iv.next3, %5, !dbg !27
  br i1 %41, label %8, label %._crit_edge11, !dbg !28, !llvm.loop !74

42:                                               ; preds = %7
  ret i32 0, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !77 {
  call void @llvm.dbg.value(metadata float* %0, metadata !79, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata float* %1, metadata !80, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata float* %2, metadata !81, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %3, metadata !82, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()), !dbg !91
  %5 = sext i32 %3 to i64, !dbg !92
  call void @llvm.dbg.value(metadata i64 0, metadata !83, metadata !DIExpression()), !dbg !91
  %6 = icmp slt i64 0, %5, !dbg !93
  br i1 %6, label %.lr.ph, label %7, !dbg !95

.lr.ph:                                           ; preds = %4
  br label %8, !dbg !95

._crit_edge:                                      ; preds = %15
  br label %7, !dbg !95

7:                                                ; preds = %._crit_edge, %4
  br label %17

8:                                                ; preds = %.lr.ph, %15
  %indvars.iv4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !83, metadata !DIExpression()), !dbg !91
  %9 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !96
  %10 = load float, float* %9, align 4, !dbg !96, !tbaa !39
  %11 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !98
  %12 = load float, float* %11, align 4, !dbg !98, !tbaa !39
  %13 = fmul float %10, %12, !dbg !99
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv4, !dbg !100
  store float %13, float* %14, align 4, !dbg !101, !tbaa !39
  br label %15, !dbg !102

15:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !103
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !83, metadata !DIExpression()), !dbg !91
  %16 = icmp slt i64 %indvars.iv.next, %5, !dbg !93
  br i1 %16, label %8, label %._crit_edge, !dbg !95, !llvm.loop !104

17:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()), !dbg !106
  %18 = sext i32 %3 to i64, !dbg !107
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !106
  %19 = icmp slt i64 0, %18, !dbg !108
  br i1 %19, label %.lr.ph7, label %20, !dbg !109

.lr.ph7:                                          ; preds = %17
  br label %21, !dbg !109

._crit_edge8:                                     ; preds = %29
  br label %20, !dbg !109

20:                                               ; preds = %._crit_edge8, %17
  br label %31

21:                                               ; preds = %.lr.ph7, %29
  %indvars.iv25 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next3, %29 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !85, metadata !DIExpression()), !dbg !106
  %22 = getelementptr inbounds float, float* %0, i64 %indvars.iv25, !dbg !110
  store float 0.000000e+00, float* %22, align 4, !dbg !111, !tbaa !39
  %23 = getelementptr inbounds float, float* %1, i64 %indvars.iv25, !dbg !112
  %24 = load float, float* %23, align 4, !dbg !112, !tbaa !39
  %25 = getelementptr inbounds float, float* %2, i64 %indvars.iv25, !dbg !113
  %26 = load float, float* %25, align 4, !dbg !113, !tbaa !39
  %27 = fadd float %24, %26, !dbg !114
  %28 = fptosi float %27 to i32, !dbg !112
  call void @llvm.dbg.value(metadata i32 %28, metadata !87, metadata !DIExpression()), !dbg !115
  br label %29, !dbg !116

29:                                               ; preds = %21
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv25, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3, metadata !85, metadata !DIExpression()), !dbg !106
  %30 = icmp slt i64 %indvars.iv.next3, %18, !dbg !108
  br i1 %30, label %21, label %._crit_edge8, !dbg !109, !llvm.loop !118

31:                                               ; preds = %20
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !121 {
  call void @llvm.dbg.value(metadata float* %0, metadata !123, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata float* %1, metadata !124, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata float* %2, metadata !125, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %3, metadata !126, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !130
  %5 = sext i32 %3 to i64, !dbg !131
  call void @llvm.dbg.value(metadata i64 0, metadata !127, metadata !DIExpression()), !dbg !130
  %6 = icmp slt i64 0, %5, !dbg !132
  br i1 %6, label %.lr.ph, label %7, !dbg !134

.lr.ph:                                           ; preds = %4
  br label %8, !dbg !134

._crit_edge:                                      ; preds = %16
  br label %7, !dbg !134

7:                                                ; preds = %._crit_edge, %4
  br label %18

8:                                                ; preds = %.lr.ph, %16
  %indvars.iv1 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !127, metadata !DIExpression()), !dbg !130
  %9 = sub nsw i64 %indvars.iv1, 1, !dbg !135
  %10 = getelementptr inbounds float, float* %0, i64 %9, !dbg !137
  %11 = load float, float* %10, align 4, !dbg !137, !tbaa !39
  %12 = getelementptr inbounds float, float* %2, i64 %indvars.iv1, !dbg !138
  %13 = load float, float* %12, align 4, !dbg !138, !tbaa !39
  %14 = fmul float %11, %13, !dbg !139
  %15 = getelementptr inbounds float, float* %0, i64 %indvars.iv1, !dbg !140
  store float %14, float* %15, align 4, !dbg !141, !tbaa !39
  br label %16, !dbg !142

16:                                               ; preds = %8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv1, 1, !dbg !143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !127, metadata !DIExpression()), !dbg !130
  %17 = icmp slt i64 %indvars.iv.next, %5, !dbg !132
  br i1 %17, label %8, label %._crit_edge, !dbg !134, !llvm.loop !144

18:                                               ; preds = %7
  ret i32 0, !dbg !146
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0, float* %1, float* %2, float* %3, i32 %4) #0 !dbg !147 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !152, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata float* %1, metadata !153, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata float* %2, metadata !154, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata float* %3, metadata !155, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 %4, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !160
  br label %7, !dbg !161

6:                                                ; preds = %14
  br label %16

7:                                                ; preds = %5, %14
  %.01 = phi i32 [ 0, %5 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !157, metadata !DIExpression()), !dbg !160
  %8 = call i32 @bar2(float* %1, float* %2, float* %3, i32 %4), !dbg !162
  %9 = load i32, i32* %0, align 4, !dbg !165, !tbaa !167
  %10 = icmp ne i32 %9, 0, !dbg !165
  br i1 %10, label %11, label %12, !dbg !169

11:                                               ; preds = %7
  store i32 1, i32* %0, align 4, !dbg !170, !tbaa !167
  br label %13, !dbg !172

12:                                               ; preds = %7
  store i32 0, i32* %0, align 4, !dbg !173, !tbaa !167
  br label %13

13:                                               ; preds = %12, %11
  br label %14, !dbg !175

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.01, 1, !dbg !176
  call void @llvm.dbg.value(metadata i32 %15, metadata !157, metadata !DIExpression()), !dbg !160
  %exitcond = icmp ne i32 %15, 10, !dbg !177
  br i1 %exitcond, label %7, label %6, !dbg !161, !llvm.loop !178

16:                                               ; preds = %6
  ret i32 0, !dbg !180
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
!43 = !DILocation(line: 5, column: 31, scope: !38)
!44 = !DILocation(line: 5, column: 29, scope: !38)
!45 = !DILocation(line: 5, column: 17, scope: !38)
!46 = !DILocation(line: 5, column: 22, scope: !38)
!47 = !DILocation(line: 6, column: 13, scope: !38)
!48 = !DILocation(line: 7, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !35, file: !1, line: 7, column: 17)
!50 = !DILocation(line: 7, column: 17, scope: !35)
!51 = !DILocation(line: 8, column: 24, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 7, column: 23)
!53 = !DILocation(line: 8, column: 31, scope: !52)
!54 = !DILocation(line: 8, column: 29, scope: !52)
!55 = !DILocation(line: 8, column: 17, scope: !52)
!56 = !DILocation(line: 8, column: 22, scope: !52)
!57 = !DILocation(line: 9, column: 13, scope: !52)
!58 = !DILocation(line: 10, column: 16, scope: !59)
!59 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 16)
!60 = !DILocation(line: 10, column: 16, scope: !35)
!61 = !DILocation(line: 11, column: 24, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 10, column: 18)
!63 = !DILocation(line: 11, column: 31, scope: !62)
!64 = !DILocation(line: 11, column: 29, scope: !62)
!65 = !DILocation(line: 11, column: 17, scope: !62)
!66 = !DILocation(line: 11, column: 22, scope: !62)
!67 = !DILocation(line: 12, column: 13, scope: !62)
!68 = !DILocation(line: 14, column: 9, scope: !35)
!69 = !DILocation(line: 3, column: 32, scope: !31)
!70 = distinct !{!70, !32, !71}
!71 = !DILocation(line: 14, column: 9, scope: !21)
!72 = !DILocation(line: 15, column: 5, scope: !22)
!73 = !DILocation(line: 2, column: 28, scope: !23)
!74 = distinct !{!74, !28, !75}
!75 = !DILocation(line: 15, column: 5, scope: !19)
!76 = !DILocation(line: 16, column: 5, scope: !7)
!77 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!78 = !{!79, !80, !81, !82, !83, !85, !87}
!79 = !DILocalVariable(name: "a", arg: 1, scope: !77, file: !1, line: 19, type: !11)
!80 = !DILocalVariable(name: "b", arg: 2, scope: !77, file: !1, line: 19, type: !11)
!81 = !DILocalVariable(name: "c", arg: 3, scope: !77, file: !1, line: 19, type: !11)
!82 = !DILocalVariable(name: "n", arg: 4, scope: !77, file: !1, line: 19, type: !10)
!83 = !DILocalVariable(name: "i", scope: !84, file: !1, line: 20, type: !10)
!84 = distinct !DILexicalBlock(scope: !77, file: !1, line: 20, column: 5)
!85 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 23, type: !10)
!86 = distinct !DILexicalBlock(scope: !77, file: !1, line: 23, column: 5)
!87 = !DILocalVariable(name: "d", scope: !88, file: !1, line: 25, type: !10)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 23, column: 33)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 23, column: 5)
!90 = !DILocation(line: 0, scope: !77)
!91 = !DILocation(line: 0, scope: !84)
!92 = !DILocation(line: 20, column: 10, scope: !84)
!93 = !DILocation(line: 20, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !84, file: !1, line: 20, column: 5)
!95 = !DILocation(line: 20, column: 5, scope: !84)
!96 = !DILocation(line: 21, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 20, column: 33)
!98 = !DILocation(line: 21, column: 21, scope: !97)
!99 = !DILocation(line: 21, column: 19, scope: !97)
!100 = !DILocation(line: 21, column: 7, scope: !97)
!101 = !DILocation(line: 21, column: 12, scope: !97)
!102 = !DILocation(line: 22, column: 5, scope: !97)
!103 = !DILocation(line: 20, column: 28, scope: !94)
!104 = distinct !{!104, !95, !105}
!105 = !DILocation(line: 22, column: 5, scope: !84)
!106 = !DILocation(line: 0, scope: !86)
!107 = !DILocation(line: 23, column: 10, scope: !86)
!108 = !DILocation(line: 23, column: 23, scope: !89)
!109 = !DILocation(line: 23, column: 5, scope: !86)
!110 = !DILocation(line: 24, column: 7, scope: !88)
!111 = !DILocation(line: 24, column: 12, scope: !88)
!112 = !DILocation(line: 25, column: 15, scope: !88)
!113 = !DILocation(line: 25, column: 22, scope: !88)
!114 = !DILocation(line: 25, column: 20, scope: !88)
!115 = !DILocation(line: 0, scope: !88)
!116 = !DILocation(line: 27, column: 5, scope: !88)
!117 = !DILocation(line: 23, column: 28, scope: !89)
!118 = distinct !{!118, !109, !119}
!119 = !DILocation(line: 27, column: 5, scope: !86)
!120 = !DILocation(line: 28, column: 5, scope: !77)
!121 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 32, type: !8, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DILocalVariable(name: "a", arg: 1, scope: !121, file: !1, line: 32, type: !11)
!124 = !DILocalVariable(name: "b", arg: 2, scope: !121, file: !1, line: 32, type: !11)
!125 = !DILocalVariable(name: "c", arg: 3, scope: !121, file: !1, line: 32, type: !11)
!126 = !DILocalVariable(name: "n", arg: 4, scope: !121, file: !1, line: 32, type: !10)
!127 = !DILocalVariable(name: "i", scope: !128, file: !1, line: 34, type: !10)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 34, column: 6)
!129 = !DILocation(line: 0, scope: !121)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocation(line: 34, column: 11, scope: !128)
!132 = !DILocation(line: 34, column: 24, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 34, column: 6)
!134 = !DILocation(line: 34, column: 6, scope: !128)
!135 = !DILocation(line: 35, column: 18, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 34, column: 34)
!137 = !DILocation(line: 35, column: 14, scope: !136)
!138 = !DILocation(line: 35, column: 25, scope: !136)
!139 = !DILocation(line: 35, column: 23, scope: !136)
!140 = !DILocation(line: 35, column: 7, scope: !136)
!141 = !DILocation(line: 35, column: 12, scope: !136)
!142 = !DILocation(line: 40, column: 5, scope: !136)
!143 = !DILocation(line: 34, column: 29, scope: !133)
!144 = distinct !{!144, !134, !145}
!145 = !DILocation(line: 40, column: 5, scope: !128)
!146 = !DILocation(line: 42, column: 5, scope: !121)
!147 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 45, type: !148, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!148 = !DISubroutineType(types: !149)
!149 = !{!10, !150, !11, !11, !11, !10}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DILocalVariable(name: "number", arg: 1, scope: !147, file: !1, line: 45, type: !150)
!153 = !DILocalVariable(name: "a", arg: 2, scope: !147, file: !1, line: 45, type: !11)
!154 = !DILocalVariable(name: "b", arg: 3, scope: !147, file: !1, line: 45, type: !11)
!155 = !DILocalVariable(name: "c", arg: 4, scope: !147, file: !1, line: 45, type: !11)
!156 = !DILocalVariable(name: "n", arg: 5, scope: !147, file: !1, line: 45, type: !10)
!157 = !DILocalVariable(name: "i", scope: !158, file: !1, line: 46, type: !10)
!158 = distinct !DILexicalBlock(scope: !147, file: !1, line: 46, column: 4)
!159 = !DILocation(line: 0, scope: !147)
!160 = !DILocation(line: 0, scope: !158)
!161 = !DILocation(line: 46, column: 4, scope: !158)
!162 = !DILocation(line: 47, column: 5, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !1, line: 46, column: 32)
!164 = distinct !DILexicalBlock(scope: !158, file: !1, line: 46, column: 4)
!165 = !DILocation(line: 49, column: 8, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 49, column: 8)
!167 = !{!168, !168, i64 0}
!168 = !{!"int", !41, i64 0}
!169 = !DILocation(line: 49, column: 8, scope: !163)
!170 = !DILocation(line: 50, column: 16, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !1, line: 49, column: 16)
!172 = !DILocation(line: 51, column: 5, scope: !171)
!173 = !DILocation(line: 52, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !166, file: !1, line: 51, column: 10)
!175 = !DILocation(line: 54, column: 4, scope: !163)
!176 = !DILocation(line: 46, column: 28, scope: !164)
!177 = !DILocation(line: 46, column: 22, scope: !164)
!178 = distinct !{!178, !161, !179}
!179 = !DILocation(line: 54, column: 4, scope: !158)
!180 = !DILocation(line: 55, column: 5, scope: !147)
