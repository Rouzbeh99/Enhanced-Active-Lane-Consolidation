; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !22
  %wide.trip.count = zext i32 %smax to i64, !dbg !23
  call void @llvm.dbg.value(metadata i64 0, metadata !18, metadata !DIExpression()), !dbg !21
  %exitcond2 = icmp ne i64 0, %wide.trip.count, !dbg !23
  br i1 %exitcond2, label %.lr.ph, label %5, !dbg !25

.lr.ph:                                           ; preds = %4
  br label %6, !dbg !25

._crit_edge:                                      ; preds = %15
  br label %5, !dbg !25

5:                                                ; preds = %._crit_edge, %4
  br label %16

6:                                                ; preds = %.lr.ph, %15
  %indvars.iv3 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv3, metadata !18, metadata !DIExpression()), !dbg !21
  %7 = sub nsw i64 %indvars.iv3, 1, !dbg !26
  %8 = getelementptr inbounds float, float* %0, i64 %7, !dbg !28
  %9 = load float, float* %8, align 4, !dbg !28, !tbaa !29
  %10 = sub nsw i64 %indvars.iv3, 3, !dbg !33
  %11 = getelementptr inbounds float, float* %2, i64 %10, !dbg !34
  %12 = load float, float* %11, align 4, !dbg !34, !tbaa !29
  %13 = fmul float %9, %12, !dbg !35
  %14 = getelementptr inbounds float, float* %0, i64 %indvars.iv3, !dbg !36
  store float %13, float* %14, align 4, !dbg !37, !tbaa !29
  br label %15, !dbg !38

15:                                               ; preds = %6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv3, 1, !dbg !39
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !18, metadata !DIExpression()), !dbg !21
  %exitcond = icmp ne i64 %indvars.iv.next, %wide.trip.count, !dbg !23
  br i1 %exitcond, label %6, label %._crit_edge, !dbg !25, !llvm.loop !40

16:                                               ; preds = %5
  ret i32 0, !dbg !42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

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
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 67, type: !8, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 67, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 67, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 67, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 67, type: !10)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 69, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 69, column: 7)
!20 = !DILocation(line: 0, scope: !7)
!21 = !DILocation(line: 0, scope: !19)
!22 = !DILocation(line: 69, column: 12, scope: !19)
!23 = !DILocation(line: 69, column: 25, scope: !24)
!24 = distinct !DILexicalBlock(scope: !19, file: !1, line: 69, column: 7)
!25 = !DILocation(line: 69, column: 7, scope: !19)
!26 = !DILocation(line: 70, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 69, column: 35)
!28 = !DILocation(line: 70, column: 15, scope: !27)
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 70, column: 30, scope: !27)
!34 = !DILocation(line: 70, column: 26, scope: !27)
!35 = !DILocation(line: 70, column: 24, scope: !27)
!36 = !DILocation(line: 70, column: 8, scope: !27)
!37 = !DILocation(line: 70, column: 13, scope: !27)
!38 = !DILocation(line: 71, column: 6, scope: !27)
!39 = !DILocation(line: 69, column: 30, scope: !24)
!40 = distinct !{!40, !25, !41}
!41 = !DILocation(line: 71, column: 6, scope: !19)
!42 = !DILocation(line: 73, column: 6, scope: !7)
