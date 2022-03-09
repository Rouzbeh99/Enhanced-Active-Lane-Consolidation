; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @foo(float* noalias %0, float* noalias %1, float* noalias %2, i32 %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !15, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %1, metadata !16, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %2, metadata !17, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 %3, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !26
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !26
  %exitcond37.not = icmp slt i32 %3, 1, !dbg !28
  br i1 %exitcond37.not, label %._crit_edge11, label %.lr.ph10, !dbg !29

.lr.ph10:                                         ; preds = %4, %._crit_edge
  %.018 = phi i32 [ %44, %._crit_edge ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %.018, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !30
  %wide.trip.count = zext i32 %3 to i64, !dbg !31
  call void @llvm.dbg.value(metadata i64 0, metadata !21, metadata !DIExpression()), !dbg !30
  br i1 true, label %.lr.ph, label %._crit_edge, !dbg !33

.lr.ph:                                           ; preds = %.lr.ph10, %43
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %43 ], [ 0, %.lr.ph10 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv5, metadata !21, metadata !DIExpression()), !dbg !30
  %5 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !34
  %6 = load float, float* %5, align 4, !dbg !34, !tbaa !37
  %7 = fcmp ogt float %6, 0.000000e+00, !dbg !41
  br i1 %7, label %8, label %17, !dbg !42

8:                                                ; preds = %.lr.ph
  %9 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !43
  %10 = load float, float* %9, align 4, !dbg !43, !tbaa !37
  %11 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !45
  %12 = load float, float* %11, align 4, !dbg !45, !tbaa !37
  %13 = fadd float %10, %12, !dbg !46
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !47
  %15 = load float, float* %14, align 4, !dbg !48, !tbaa !37
  %16 = fadd float %15, %13, !dbg !48
  store float %16, float* %14, align 4, !dbg !48, !tbaa !37
  br label %17, !dbg !49

17:                                               ; preds = %8, %.lr.ph
  %18 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !50
  %19 = load float, float* %18, align 4, !dbg !50, !tbaa !37
  %20 = fcmp ogt float %19, 5.000000e+00, !dbg !52
  br i1 %20, label %21, label %30, !dbg !53

21:                                               ; preds = %17
  %22 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !54
  %23 = load float, float* %22, align 4, !dbg !54, !tbaa !37
  %24 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !56
  %25 = load float, float* %24, align 4, !dbg !56, !tbaa !37
  %26 = fsub float %23, %25, !dbg !57
  %27 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !58
  %28 = load float, float* %27, align 4, !dbg !59, !tbaa !37
  %29 = fadd float %28, %26, !dbg !59
  store float %29, float* %27, align 4, !dbg !59, !tbaa !37
  br label %30, !dbg !60

30:                                               ; preds = %21, %17
  %31 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !61
  %32 = load float, float* %31, align 4, !dbg !61, !tbaa !37
  %33 = fcmp ogt float %32, 7.000000e+00, !dbg !63
  br i1 %33, label %34, label %43, !dbg !64

34:                                               ; preds = %30
  %35 = getelementptr inbounds float, float* %1, i64 %indvars.iv5, !dbg !65
  %36 = load float, float* %35, align 4, !dbg !65, !tbaa !37
  %37 = getelementptr inbounds float, float* %2, i64 %indvars.iv5, !dbg !67
  %38 = load float, float* %37, align 4, !dbg !67, !tbaa !37
  %39 = fmul float %36, %38, !dbg !68
  %40 = getelementptr inbounds float, float* %0, i64 %indvars.iv5, !dbg !69
  %41 = load float, float* %40, align 4, !dbg !70, !tbaa !37
  %42 = fadd float %41, %39, !dbg !70
  store float %42, float* %40, align 4, !dbg !70, !tbaa !37
  br label %43, !dbg !71

43:                                               ; preds = %34, %30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1, !dbg !72
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !21, metadata !DIExpression()), !dbg !30
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !31
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !33, !llvm.loop !73

._crit_edge:                                      ; preds = %43, %.lr.ph10
  %44 = add nuw i32 %.018, 1, !dbg !75
  call void @llvm.dbg.value(metadata i32 %44, metadata !19, metadata !DIExpression()), !dbg !26
  %exitcond3.not = icmp eq i32 %44, %smax, !dbg !28
  br i1 %exitcond3.not, label %._crit_edge11, label %.lr.ph10, !dbg !29, !llvm.loop !76

._crit_edge11:                                    ; preds = %4, %._crit_edge
  ret i32 0, !dbg !78
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !79 {
  call void @llvm.dbg.value(metadata float* %0, metadata !83, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata float* %1, metadata !84, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata float* %2, metadata !85, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %3, metadata !86, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !93
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !94
  %wide.trip.count = zext i32 %smax to i64, !dbg !95
  call void @llvm.dbg.value(metadata i64 0, metadata !88, metadata !DIExpression()), !dbg !93
  %exitcond9.not = icmp slt i32 %3, 1, !dbg !95
  br i1 %exitcond9.not, label %._crit_edge, label %.lr.ph, !dbg !97

.lr.ph:                                           ; preds = %4, %.lr.ph
  %indvars.iv10 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !88, metadata !DIExpression()), !dbg !93
  %5 = add nsw i64 %indvars.iv10, -1, !dbg !98
  %6 = getelementptr inbounds float, float* %0, i64 %5, !dbg !100
  %7 = load float, float* %6, align 4, !dbg !100, !tbaa !37
  %8 = getelementptr inbounds float, float* %1, i64 %indvars.iv10, !dbg !101
  %9 = load float, float* %8, align 4, !dbg !101, !tbaa !37
  %10 = fmul float %7, %9, !dbg !102
  %11 = getelementptr inbounds float, float* %0, i64 %indvars.iv10, !dbg !103
  store float %10, float* %11, align 4, !dbg !104, !tbaa !37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !93
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !95
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !97, !llvm.loop !106

._crit_edge:                                      ; preds = %4, %.lr.ph
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()), !dbg !108
  %wide.trip.count7 = zext i32 %smax to i64, !dbg !109
  call void @llvm.dbg.value(metadata i64 0, metadata !90, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !92
  %exitcond811.not = icmp slt i32 %3, 1, !dbg !109
  br i1 %exitcond811.not, label %._crit_edge16, label %.lr.ph15, !dbg !111

.lr.ph15:                                         ; preds = %._crit_edge, %.lr.ph15
  %.0213 = phi i32 [ %19, %.lr.ph15 ], [ 0, %._crit_edge ]
  %indvars.iv412 = phi i64 [ %indvars.iv.next5, %.lr.ph15 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.0213, metadata !87, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i64 %indvars.iv412, metadata !90, metadata !DIExpression()), !dbg !108
  %12 = getelementptr inbounds float, float* %1, i64 %indvars.iv412, !dbg !112
  %13 = load float, float* %12, align 4, !dbg !112, !tbaa !37
  %14 = getelementptr inbounds float, float* %2, i64 %indvars.iv412, !dbg !114
  %15 = load float, float* %14, align 4, !dbg !114, !tbaa !37
  %16 = fadd float %13, %15, !dbg !115
  %17 = sitofp i32 %.0213 to float, !dbg !116
  %18 = fadd float %16, %17, !dbg !116
  %19 = fptosi float %18 to i32, !dbg !116
  call void @llvm.dbg.value(metadata i32 %19, metadata !87, metadata !DIExpression()), !dbg !92
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv412, 1, !dbg !117
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !90, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.value(metadata i32 %19, metadata !87, metadata !DIExpression()), !dbg !92
  %exitcond8.not = icmp eq i64 %indvars.iv.next5, %wide.trip.count7, !dbg !109
  br i1 %exitcond8.not, label %._crit_edge16, label %.lr.ph15, !dbg !111, !llvm.loop !118

._crit_edge16:                                    ; preds = %._crit_edge, %.lr.ph15
  %.02.lcssa = phi i32 [ 0, %._crit_edge ], [ %19, %.lr.ph15 ], !dbg !92
  ret i32 %.02.lcssa, !dbg !120
}

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !121 {
  call void @llvm.dbg.value(metadata float* %0, metadata !123, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata float* %1, metadata !124, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata float* %2, metadata !125, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 %3, metadata !126, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !130
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !131
  %wide.trip.count = zext i32 %smax to i64, !dbg !132
  call void @llvm.dbg.value(metadata i64 0, metadata !127, metadata !DIExpression()), !dbg !130
  %exitcond2.not = icmp slt i32 %3, 1, !dbg !132
  br i1 %exitcond2.not, label %._crit_edge, label %.lr.ph, !dbg !134

.lr.ph:                                           ; preds = %4, %17
  %indvars.iv3 = phi i64 [ %indvars.iv.next, %17 ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !127, metadata !DIExpression()), !dbg !130
  %5 = getelementptr inbounds float, float* %0, i64 %indvars.iv3, !dbg !135
  %6 = load float, float* %5, align 4, !dbg !135, !tbaa !37
  %7 = getelementptr inbounds float, float* %2, i64 %indvars.iv3, !dbg !137
  %8 = load float, float* %7, align 4, !dbg !137, !tbaa !37
  %9 = fmul float %6, %8, !dbg !138
  %10 = getelementptr inbounds float, float* %0, i64 %indvars.iv3, !dbg !139
  store float %9, float* %10, align 4, !dbg !140, !tbaa !37
  %11 = fcmp ogt float %9, 5.000000e+00, !dbg !141
  br i1 %11, label %12, label %17, !dbg !143

12:                                               ; preds = %.lr.ph
  %13 = add nsw i64 %indvars.iv3, -1, !dbg !144
  %14 = getelementptr inbounds float, float* %0, i64 %13, !dbg !146
  %15 = load float, float* %14, align 4, !dbg !146, !tbaa !37
  %16 = getelementptr inbounds float, float* %2, i64 %indvars.iv3, !dbg !147
  store float %15, float* %16, align 4, !dbg !148, !tbaa !37
  br label %17, !dbg !149

17:                                               ; preds = %12, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !150
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !127, metadata !DIExpression()), !dbg !130
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !132
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !134, !llvm.loop !151

._crit_edge:                                      ; preds = %4, %17
  ret i32 0, !dbg !153
}

; Function Attrs: nounwind uwtable
define dso_local i32 @test(i32* %0, float* %1, float* %2, float* %3, i32 %4) #0 !dbg !154 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !159, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata float* %1, metadata !160, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata float* %2, metadata !161, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata float* %3, metadata !162, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 %4, metadata !163, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()), !dbg !167
  br label %6, !dbg !168

6:                                                ; preds = %5, %11
  %.01 = phi i32 [ 0, %5 ], [ %12, %11 ]
  call void @llvm.dbg.value(metadata i32 %.01, metadata !164, metadata !DIExpression()), !dbg !167
  %7 = call i32 @bar2(float* %1, float* %2, float* %3, i32 %4), !dbg !169
  %8 = load i32, i32* %0, align 4, !dbg !172, !tbaa !174
  %.not = icmp eq i32 %8, 0, !dbg !172
  br i1 %.not, label %10, label %9, !dbg !176

9:                                                ; preds = %6
  br label %11, !dbg !177

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %9, %10
  %storemerge = phi i32 [ 0, %10 ], [ 1, %9 ], !dbg !179
  store i32 %storemerge, i32* %0, align 4, !dbg !179, !tbaa !174
  %12 = add nuw nsw i32 %.01, 1, !dbg !180
  call void @llvm.dbg.value(metadata i32 %12, metadata !164, metadata !DIExpression()), !dbg !167
  %exitcond.not = icmp eq i32 %12, 10, !dbg !181
  br i1 %exitcond.not, label %13, label %6, !dbg !168, !llvm.loop !182

13:                                               ; preds = %11
  ret i32 0, !dbg !184
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

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
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !21}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 2, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!21 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 3, type: !10)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 3, column: 9)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 2, column: 33)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 2, column: 5)
!25 = !DILocation(line: 0, scope: !7)
!26 = !DILocation(line: 0, scope: !20)
!27 = !DILocation(line: 2, column: 10, scope: !20)
!28 = !DILocation(line: 2, column: 23, scope: !24)
!29 = !DILocation(line: 2, column: 5, scope: !20)
!30 = !DILocation(line: 0, scope: !22)
!31 = !DILocation(line: 3, column: 27, scope: !32)
!32 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!33 = !DILocation(line: 3, column: 9, scope: !22)
!34 = !DILocation(line: 5, column: 16, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 5, column: 16)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 3, column: 37)
!37 = !{!38, !38, i64 0}
!38 = !{!"float", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !DILocation(line: 5, column: 21, scope: !35)
!42 = !DILocation(line: 5, column: 16, scope: !36)
!43 = !DILocation(line: 6, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !35, file: !1, line: 5, column: 25)
!45 = !DILocation(line: 6, column: 32, scope: !44)
!46 = !DILocation(line: 6, column: 30, scope: !44)
!47 = !DILocation(line: 6, column: 17, scope: !44)
!48 = !DILocation(line: 6, column: 22, scope: !44)
!49 = !DILocation(line: 7, column: 13, scope: !44)
!50 = !DILocation(line: 8, column: 17, scope: !51)
!51 = distinct !DILexicalBlock(scope: !36, file: !1, line: 8, column: 17)
!52 = !DILocation(line: 8, column: 22, scope: !51)
!53 = !DILocation(line: 8, column: 17, scope: !36)
!54 = !DILocation(line: 9, column: 25, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 8, column: 26)
!56 = !DILocation(line: 9, column: 32, scope: !55)
!57 = !DILocation(line: 9, column: 30, scope: !55)
!58 = !DILocation(line: 9, column: 17, scope: !55)
!59 = !DILocation(line: 9, column: 22, scope: !55)
!60 = !DILocation(line: 10, column: 13, scope: !55)
!61 = !DILocation(line: 11, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !36, file: !1, line: 11, column: 17)
!63 = !DILocation(line: 11, column: 22, scope: !62)
!64 = !DILocation(line: 11, column: 17, scope: !36)
!65 = !DILocation(line: 12, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 11, column: 26)
!67 = !DILocation(line: 12, column: 32, scope: !66)
!68 = !DILocation(line: 12, column: 30, scope: !66)
!69 = !DILocation(line: 12, column: 17, scope: !66)
!70 = !DILocation(line: 12, column: 22, scope: !66)
!71 = !DILocation(line: 13, column: 13, scope: !66)
!72 = !DILocation(line: 3, column: 32, scope: !32)
!73 = distinct !{!73, !33, !74}
!74 = !DILocation(line: 14, column: 9, scope: !22)
!75 = !DILocation(line: 2, column: 28, scope: !24)
!76 = distinct !{!76, !29, !77}
!77 = !DILocation(line: 15, column: 5, scope: !20)
!78 = !DILocation(line: 16, column: 5, scope: !7)
!79 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !80, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!80 = !DISubroutineType(types: !81)
!81 = !{!10, !12, !12, !12, !10}
!82 = !{!83, !84, !85, !86, !87, !88, !90}
!83 = !DILocalVariable(name: "a", arg: 1, scope: !79, file: !1, line: 19, type: !12)
!84 = !DILocalVariable(name: "b", arg: 2, scope: !79, file: !1, line: 19, type: !12)
!85 = !DILocalVariable(name: "c", arg: 3, scope: !79, file: !1, line: 19, type: !12)
!86 = !DILocalVariable(name: "n", arg: 4, scope: !79, file: !1, line: 19, type: !10)
!87 = !DILocalVariable(name: "d", scope: !79, file: !1, line: 21, type: !10)
!88 = !DILocalVariable(name: "i", scope: !89, file: !1, line: 24, type: !10)
!89 = distinct !DILexicalBlock(scope: !79, file: !1, line: 24, column: 5)
!90 = !DILocalVariable(name: "i", scope: !91, file: !1, line: 29, type: !10)
!91 = distinct !DILexicalBlock(scope: !79, file: !1, line: 29, column: 5)
!92 = !DILocation(line: 0, scope: !79)
!93 = !DILocation(line: 0, scope: !89)
!94 = !DILocation(line: 24, column: 10, scope: !89)
!95 = !DILocation(line: 24, column: 23, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 24, column: 5)
!97 = !DILocation(line: 24, column: 5, scope: !89)
!98 = !DILocation(line: 25, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 24, column: 33)
!100 = !DILocation(line: 25, column: 14, scope: !99)
!101 = !DILocation(line: 25, column: 25, scope: !99)
!102 = !DILocation(line: 25, column: 23, scope: !99)
!103 = !DILocation(line: 25, column: 7, scope: !99)
!104 = !DILocation(line: 25, column: 12, scope: !99)
!105 = !DILocation(line: 24, column: 28, scope: !96)
!106 = distinct !{!106, !97, !107}
!107 = !DILocation(line: 26, column: 5, scope: !89)
!108 = !DILocation(line: 0, scope: !91)
!109 = !DILocation(line: 29, column: 23, scope: !110)
!110 = distinct !DILexicalBlock(scope: !91, file: !1, line: 29, column: 5)
!111 = !DILocation(line: 29, column: 5, scope: !91)
!112 = !DILocation(line: 30, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 29, column: 33)
!114 = !DILocation(line: 30, column: 20, scope: !113)
!115 = !DILocation(line: 30, column: 18, scope: !113)
!116 = !DILocation(line: 30, column: 10, scope: !113)
!117 = !DILocation(line: 29, column: 28, scope: !110)
!118 = distinct !{!118, !111, !119}
!119 = !DILocation(line: 32, column: 5, scope: !91)
!120 = !DILocation(line: 33, column: 5, scope: !79)
!121 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 38, type: !80, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!123, !124, !125, !126, !127}
!123 = !DILocalVariable(name: "a", arg: 1, scope: !121, file: !1, line: 38, type: !12)
!124 = !DILocalVariable(name: "b", arg: 2, scope: !121, file: !1, line: 38, type: !12)
!125 = !DILocalVariable(name: "c", arg: 3, scope: !121, file: !1, line: 38, type: !12)
!126 = !DILocalVariable(name: "n", arg: 4, scope: !121, file: !1, line: 38, type: !10)
!127 = !DILocalVariable(name: "i", scope: !128, file: !1, line: 40, type: !10)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 40, column: 6)
!129 = !DILocation(line: 0, scope: !121)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocation(line: 40, column: 11, scope: !128)
!132 = !DILocation(line: 40, column: 24, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 40, column: 6)
!134 = !DILocation(line: 40, column: 6, scope: !128)
!135 = !DILocation(line: 41, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 40, column: 34)
!137 = !DILocation(line: 41, column: 21, scope: !136)
!138 = !DILocation(line: 41, column: 19, scope: !136)
!139 = !DILocation(line: 41, column: 7, scope: !136)
!140 = !DILocation(line: 41, column: 12, scope: !136)
!141 = !DILocation(line: 43, column: 14, scope: !142)
!142 = distinct !DILexicalBlock(scope: !136, file: !1, line: 43, column: 9)
!143 = !DILocation(line: 43, column: 9, scope: !136)
!144 = !DILocation(line: 44, column: 18, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !1, line: 43, column: 18)
!146 = !DILocation(line: 44, column: 15, scope: !145)
!147 = !DILocation(line: 44, column: 8, scope: !145)
!148 = !DILocation(line: 44, column: 13, scope: !145)
!149 = !DILocation(line: 45, column: 6, scope: !145)
!150 = !DILocation(line: 40, column: 29, scope: !133)
!151 = distinct !{!151, !134, !152}
!152 = !DILocation(line: 46, column: 5, scope: !128)
!153 = !DILocation(line: 48, column: 5, scope: !121)
!154 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 52, type: !155, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!155 = !DISubroutineType(types: !156)
!156 = !{!10, !157, !12, !12, !12, !10}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DILocalVariable(name: "number", arg: 1, scope: !154, file: !1, line: 52, type: !157)
!160 = !DILocalVariable(name: "a", arg: 2, scope: !154, file: !1, line: 52, type: !12)
!161 = !DILocalVariable(name: "b", arg: 3, scope: !154, file: !1, line: 52, type: !12)
!162 = !DILocalVariable(name: "c", arg: 4, scope: !154, file: !1, line: 52, type: !12)
!163 = !DILocalVariable(name: "n", arg: 5, scope: !154, file: !1, line: 52, type: !10)
!164 = !DILocalVariable(name: "i", scope: !165, file: !1, line: 53, type: !10)
!165 = distinct !DILexicalBlock(scope: !154, file: !1, line: 53, column: 3)
!166 = !DILocation(line: 0, scope: !154)
!167 = !DILocation(line: 0, scope: !165)
!168 = !DILocation(line: 53, column: 3, scope: !165)
!169 = !DILocation(line: 54, column: 4, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 53, column: 31)
!171 = distinct !DILexicalBlock(scope: !165, file: !1, line: 53, column: 3)
!172 = !DILocation(line: 56, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !1, line: 56, column: 7)
!174 = !{!175, !175, i64 0}
!175 = !{!"int", !39, i64 0}
!176 = !DILocation(line: 56, column: 7, scope: !170)
!177 = !DILocation(line: 58, column: 4, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 56, column: 15)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 53, column: 27, scope: !171)
!181 = !DILocation(line: 53, column: 21, scope: !171)
!182 = distinct !{!182, !168, !183}
!183 = !DILocation(line: 61, column: 3, scope: !165)
!184 = !DILocation(line: 62, column: 4, scope: !154)
