; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !23
  %wide.trip.count = zext i32 %smax to i64, !dbg !24
  call void @llvm.dbg.value(metadata i64 0, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  %exitcond3.not = icmp slt i32 %3, 1, !dbg !24
  br i1 %exitcond3.not, label %._crit_edge, label %.lr.ph, !dbg !26

.lr.ph:                                           ; preds = %4, %.lr.ph
  %.015 = phi i32 [ %12, %.lr.ph ], [ 0, %4 ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i32 %.015, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i64 %indvars.iv4, metadata !19, metadata !DIExpression()), !dbg !22
  %5 = getelementptr inbounds float, float* %1, i64 %indvars.iv4, !dbg !27
  %6 = load float, float* %5, align 4, !dbg !27, !tbaa !29
  %7 = getelementptr inbounds float, float* %2, i64 %indvars.iv4, !dbg !33
  %8 = load float, float* %7, align 4, !dbg !33, !tbaa !29
  %9 = fadd float %6, %8, !dbg !34
  %10 = sitofp i32 %.015 to float, !dbg !35
  %11 = fadd float %9, %10, !dbg !35
  %12 = fptosi float %11 to i32, !dbg !35
  call void @llvm.dbg.value(metadata i32 %12, metadata !18, metadata !DIExpression()), !dbg !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv4, 1, !dbg !36
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 %12, metadata !18, metadata !DIExpression()), !dbg !21
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !24
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !26, !llvm.loop !37

._crit_edge:                                      ; preds = %4, %.lr.ph
  %.01.lcssa = phi i32 [ 0, %4 ], [ %12, %.lr.ph ], !dbg !21
  ret i32 %.01.lcssa, !dbg !39
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
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 20, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 20, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 20, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 20, type: !10)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 26, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 28, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 5)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 28, column: 10, scope: !20)
!24 = !DILocation(line: 28, column: 23, scope: !25)
!25 = distinct !DILexicalBlock(scope: !20, file: !1, line: 28, column: 5)
!26 = !DILocation(line: 28, column: 5, scope: !20)
!27 = !DILocation(line: 30, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 28, column: 33)
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 30, column: 20, scope: !28)
!34 = !DILocation(line: 30, column: 18, scope: !28)
!35 = !DILocation(line: 30, column: 10, scope: !28)
!36 = !DILocation(line: 28, column: 28, scope: !25)
!37 = distinct !{!37, !26, !38}
!38 = !DILocation(line: 32, column: 5, scope: !20)
!39 = !DILocation(line: 34, column: 5, scope: !7)
