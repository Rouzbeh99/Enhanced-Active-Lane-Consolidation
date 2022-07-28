; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo(float* noalias nocapture readonly %0, float* noalias nocapture readonly %1, float* noalias nocapture %2, i32 %3) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %1, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %2, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %3, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  %5 = icmp sgt i32 %3, 0, !dbg !23
  br i1 %5, label %6, label %8, !dbg !25

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !23
  br label %9, !dbg !25

8:                                                ; preds = %20, %4
  ret void, !dbg !26

9:                                                ; preds = %20, %6
  %10 = phi i64 [ 0, %6 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i64 %10, metadata !19, metadata !DIExpression()), !dbg !22
  %11 = and i64 %10, 1, !dbg !27
  %12 = icmp eq i64 %11, 0, !dbg !27
  br i1 %12, label %20, label %13, !dbg !30

13:                                               ; preds = %9
  %14 = getelementptr inbounds float, float* %0, i64 %10, !dbg !31
  %15 = load float, float* %14, align 4, !dbg !31, !tbaa !33
  %16 = getelementptr inbounds float, float* %1, i64 %10, !dbg !37
  %17 = load float, float* %16, align 4, !dbg !37, !tbaa !33
  %18 = fmul float %15, %17, !dbg !38
  %19 = getelementptr inbounds float, float* %2, i64 %10, !dbg !39
  store float %18, float* %19, align 4, !dbg !40, !tbaa !33
  br label %20, !dbg !41

20:                                               ; preds = %9, %13
  %21 = add nuw nsw i64 %10, 1, !dbg !42
  call void @llvm.dbg.value(metadata i64 %21, metadata !19, metadata !DIExpression()), !dbg !22
  %22 = icmp eq i64 %21, %7, !dbg !23
  br i1 %22, label %8, label %9, !dbg !25, !llvm.loop !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !45 {
  %1 = alloca [8 x float], align 16
  call void @llvm.dbg.value(metadata i32 8, metadata !49, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [8 x float]* @__const.main.a, metadata !50, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [8 x float]* @__const.main.b, metadata !54, metadata !DIExpression()), !dbg !60
  %2 = bitcast [8 x float]* %1 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #6, !dbg !61
  call void @llvm.dbg.declare(metadata [8 x float]* %1, metadata !55, metadata !DIExpression()), !dbg !62
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false), !dbg !62
  call void @llvm.dbg.value(metadata [8 x float]* %1, metadata !17, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 8, metadata !18, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !65
  br label %3, !dbg !66

3:                                                ; preds = %14, %0
  %4 = phi i64 [ 0, %0 ], [ %15, %14 ]
  call void @llvm.dbg.value(metadata i64 %4, metadata !19, metadata !DIExpression()), !dbg !65
  %5 = and i64 %4, 1, !dbg !67
  %6 = icmp eq i64 %5, 0, !dbg !67
  br i1 %6, label %14, label %7, !dbg !68

7:                                                ; preds = %3
  %8 = getelementptr inbounds [8 x float], [8 x float]* @__const.main.a, i64 0, i64 %4, !dbg !69
  %9 = load float, float* %8, align 4, !dbg !69, !tbaa !33, !alias.scope !70, !noalias !73
  %10 = getelementptr inbounds [8 x float], [8 x float]* @__const.main.b, i64 0, i64 %4, !dbg !76
  %11 = load float, float* %10, align 4, !dbg !76, !tbaa !33, !alias.scope !77, !noalias !78
  %12 = fmul float %9, %11, !dbg !79
  %13 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %4, !dbg !80
  store float %12, float* %13, align 4, !dbg !81, !tbaa !33, !alias.scope !82, !noalias !83
  br label %14, !dbg !84

14:                                               ; preds = %7, %3
  %15 = add nuw nsw i64 %4, 1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %15, metadata !19, metadata !DIExpression()), !dbg !65
  %16 = icmp eq i64 %15, 8, !dbg !86
  br i1 %16, label %19, label %3, !dbg !66, !llvm.loop !87

17:                                               ; preds = %19
  %18 = tail call i32 @putchar(i32 10), !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #6, !dbg !90
  ret i32 0, !dbg !91

19:                                               ; preds = %14, %19
  %20 = phi i64 [ %25, %19 ], [ 0, %14 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !56, metadata !DIExpression()), !dbg !92
  %21 = getelementptr inbounds [8 x float], [8 x float]* %1, i64 0, i64 %20, !dbg !93
  %22 = load float, float* %21, align 4, !dbg !93, !tbaa !33
  %23 = fpext float %22 to double, !dbg !93
  %24 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %23), !dbg !96
  %25 = add nuw nsw i64 %20, 1, !dbg !97
  call void @llvm.dbg.value(metadata i64 %25, metadata !56, metadata !DIExpression()), !dbg !92
  %26 = icmp eq i64 %25, 8, !dbg !98
  br i1 %26, label %17, label %19, !dbg !99, !llvm.loop !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #5

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !10, !10, !13}
!10 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 3, type: !13)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 6, type: !13)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 5)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 6, column: 23, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 6, column: 5)
!25 = !DILocation(line: 6, column: 5, scope: !20)
!26 = !DILocation(line: 11, column: 1, scope: !7)
!27 = !DILocation(line: 7, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 7, column: 13)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 6, column: 33)
!30 = !DILocation(line: 7, column: 13, scope: !29)
!31 = !DILocation(line: 8, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !28, file: !1, line: 7, column: 25)
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 8, column: 27, scope: !32)
!38 = !DILocation(line: 8, column: 25, scope: !32)
!39 = !DILocation(line: 8, column: 13, scope: !32)
!40 = !DILocation(line: 8, column: 18, scope: !32)
!41 = !DILocation(line: 9, column: 9, scope: !32)
!42 = !DILocation(line: 6, column: 28, scope: !24)
!43 = distinct !{!43, !25, !44}
!44 = !DILocation(line: 10, column: 5, scope: !20)
!45 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !46, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!46 = !DISubroutineType(types: !47)
!47 = !{!13}
!48 = !{!49, !50, !54, !55, !56}
!49 = !DILocalVariable(name: "n", scope: !45, file: !1, line: 14, type: !13)
!50 = !DILocalVariable(name: "a", scope: !45, file: !1, line: 15, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 8)
!54 = !DILocalVariable(name: "b", scope: !45, file: !1, line: 16, type: !51)
!55 = !DILocalVariable(name: "c", scope: !45, file: !1, line: 17, type: !51)
!56 = !DILocalVariable(name: "i", scope: !57, file: !1, line: 21, type: !13)
!57 = distinct !DILexicalBlock(scope: !45, file: !1, line: 21, column: 5)
!58 = !DILocation(line: 0, scope: !45)
!59 = !DILocation(line: 15, column: 11, scope: !45)
!60 = !DILocation(line: 16, column: 11, scope: !45)
!61 = !DILocation(line: 17, column: 5, scope: !45)
!62 = !DILocation(line: 17, column: 11, scope: !45)
!63 = !DILocation(line: 0, scope: !7, inlinedAt: !64)
!64 = distinct !DILocation(line: 19, column: 5, scope: !45)
!65 = !DILocation(line: 0, scope: !20, inlinedAt: !64)
!66 = !DILocation(line: 6, column: 5, scope: !20, inlinedAt: !64)
!67 = !DILocation(line: 7, column: 19, scope: !28, inlinedAt: !64)
!68 = !DILocation(line: 7, column: 13, scope: !29, inlinedAt: !64)
!69 = !DILocation(line: 8, column: 20, scope: !32, inlinedAt: !64)
!70 = !{!71}
!71 = distinct !{!71, !72, !"foo: argument 0"}
!72 = distinct !{!72, !"foo"}
!73 = !{!74, !75}
!74 = distinct !{!74, !72, !"foo: argument 1"}
!75 = distinct !{!75, !72, !"foo: argument 2"}
!76 = !DILocation(line: 8, column: 27, scope: !32, inlinedAt: !64)
!77 = !{!74}
!78 = !{!71, !75}
!79 = !DILocation(line: 8, column: 25, scope: !32, inlinedAt: !64)
!80 = !DILocation(line: 8, column: 13, scope: !32, inlinedAt: !64)
!81 = !DILocation(line: 8, column: 18, scope: !32, inlinedAt: !64)
!82 = !{!75}
!83 = !{!71, !74}
!84 = !DILocation(line: 9, column: 9, scope: !32, inlinedAt: !64)
!85 = !DILocation(line: 6, column: 28, scope: !24, inlinedAt: !64)
!86 = !DILocation(line: 6, column: 23, scope: !24, inlinedAt: !64)
!87 = distinct !{!87, !66, !88}
!88 = !DILocation(line: 10, column: 5, scope: !20, inlinedAt: !64)
!89 = !DILocation(line: 24, column: 5, scope: !45)
!90 = !DILocation(line: 26, column: 1, scope: !45)
!91 = !DILocation(line: 25, column: 5, scope: !45)
!92 = !DILocation(line: 0, scope: !57)
!93 = !DILocation(line: 22, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 21, column: 33)
!95 = distinct !DILexicalBlock(scope: !57, file: !1, line: 21, column: 5)
!96 = !DILocation(line: 22, column: 9, scope: !94)
!97 = !DILocation(line: 21, column: 28, scope: !95)
!98 = !DILocation(line: 21, column: 23, scope: !95)
!99 = !DILocation(line: 21, column: 5, scope: !57)
!100 = distinct !{!100, !99, !101}
!101 = !DILocation(line: 23, column: 5, scope: !57)
