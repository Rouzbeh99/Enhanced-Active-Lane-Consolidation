; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !24
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0), !dbg !25
  %wide.trip.count = zext i32 %smax to i64, !dbg !26
  call void @llvm.dbg.value(metadata i64 0, metadata !19, metadata !DIExpression()), !dbg !24
  %exitcond9.not = icmp slt i32 %3, 1, !dbg !26
  br i1 %exitcond9.not, label %._crit_edge, label %.lr.ph, !dbg !28

.lr.ph:                                           ; preds = %4, %.lr.ph
  %indvars.iv10 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10, metadata !19, metadata !DIExpression()), !dbg !24
  %5 = add nsw i64 %indvars.iv10, -1, !dbg !29
  %6 = getelementptr inbounds float, float* %0, i64 %5, !dbg !31
  %7 = load float, float* %6, align 4, !dbg !31, !tbaa !32
  %8 = getelementptr inbounds float, float* %1, i64 %indvars.iv10, !dbg !36
  %9 = load float, float* %8, align 4, !dbg !36, !tbaa !32
  %10 = fmul float %7, %9, !dbg !37
  %11 = getelementptr inbounds float, float* %0, i64 %indvars.iv10, !dbg !38
  store float %10, float* %11, align 4, !dbg !39, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv10, 1, !dbg !40
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !19, metadata !DIExpression()), !dbg !24
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !26
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !28, !llvm.loop !41

._crit_edge:                                      ; preds = %4, %.lr.ph
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !43
  %wide.trip.count7 = zext i32 %smax to i64, !dbg !44
  call void @llvm.dbg.value(metadata i64 0, metadata !21, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !23
  %exitcond811.not = icmp slt i32 %3, 1, !dbg !44
  br i1 %exitcond811.not, label %._crit_edge16, label %.lr.ph15, !dbg !46

.lr.ph15:                                         ; preds = %._crit_edge, %.lr.ph15
  %.0213 = phi i32 [ %19, %.lr.ph15 ], [ 0, %._crit_edge ]
  %indvars.iv412 = phi i64 [ %indvars.iv.next5, %.lr.ph15 ], [ 0, %._crit_edge ]
  call void @llvm.dbg.value(metadata i32 %.0213, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i64 %indvars.iv412, metadata !21, metadata !DIExpression()), !dbg !43
  %12 = getelementptr inbounds float, float* %1, i64 %indvars.iv412, !dbg !47
  %13 = load float, float* %12, align 4, !dbg !47, !tbaa !32
  %14 = getelementptr inbounds float, float* %2, i64 %indvars.iv412, !dbg !49
  %15 = load float, float* %14, align 4, !dbg !49, !tbaa !32
  %16 = fadd float %13, %15, !dbg !50
  %17 = sitofp i32 %.0213 to float, !dbg !51
  %18 = fadd float %16, %17, !dbg !51
  %19 = fptosi float %18 to i32, !dbg !51
  call void @llvm.dbg.value(metadata i32 %19, metadata !18, metadata !DIExpression()), !dbg !23
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv412, 1, !dbg !52
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next5, metadata !21, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %19, metadata !18, metadata !DIExpression()), !dbg !23
  %exitcond8.not = icmp eq i64 %indvars.iv.next5, %wide.trip.count7, !dbg !44
  br i1 %exitcond8.not, label %._crit_edge16, label %.lr.ph15, !dbg !46, !llvm.loop !53

._crit_edge16:                                    ; preds = %._crit_edge, %.lr.ph15
  %.02.lcssa = phi i32 [ 0, %._crit_edge ], [ %19, %.lr.ph15 ], !dbg !23
  ret i32 %.02.lcssa, !dbg !55
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
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !19, !21}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 19, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 19, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 19, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 19, type: !10)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 21, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 24, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 5)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 29, type: !10)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 5)
!23 = !DILocation(line: 0, scope: !7)
!24 = !DILocation(line: 0, scope: !20)
!25 = !DILocation(line: 24, column: 10, scope: !20)
!26 = !DILocation(line: 24, column: 23, scope: !27)
!27 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 5)
!28 = !DILocation(line: 24, column: 5, scope: !20)
!29 = !DILocation(line: 25, column: 18, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 24, column: 33)
!31 = !DILocation(line: 25, column: 14, scope: !30)
!32 = !{!33, !33, i64 0}
!33 = !{!"float", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 25, column: 25, scope: !30)
!37 = !DILocation(line: 25, column: 23, scope: !30)
!38 = !DILocation(line: 25, column: 7, scope: !30)
!39 = !DILocation(line: 25, column: 12, scope: !30)
!40 = !DILocation(line: 24, column: 28, scope: !27)
!41 = distinct !{!41, !28, !42}
!42 = !DILocation(line: 26, column: 5, scope: !20)
!43 = !DILocation(line: 0, scope: !22)
!44 = !DILocation(line: 29, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !22, file: !1, line: 29, column: 5)
!46 = !DILocation(line: 29, column: 5, scope: !22)
!47 = !DILocation(line: 30, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 29, column: 33)
!49 = !DILocation(line: 30, column: 20, scope: !48)
!50 = !DILocation(line: 30, column: 18, scope: !48)
!51 = !DILocation(line: 30, column: 10, scope: !48)
!52 = !DILocation(line: 29, column: 28, scope: !45)
!53 = distinct !{!53, !46, !54}
!54 = !DILocation(line: 32, column: 5, scope: !22)
!55 = !DILocation(line: 33, column: 5, scope: !7)
