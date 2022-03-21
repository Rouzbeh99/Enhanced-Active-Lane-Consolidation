; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar2(float* nocapture %0, float* nocapture readnone %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  %5 = icmp sgt i32 %3, 0, !dbg !22
  br i1 %5, label %6, label %10, !dbg !24

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !22
  %8 = getelementptr inbounds float, float* %0, i64 -1, !dbg !25
  %9 = load float, float* %8, align 4, !dbg !27, !tbaa !28
  br label %11, !dbg !24

10:                                               ; preds = %11, %4
  ret i32 0, !dbg !32

11:                                               ; preds = %11, %6
  %12 = phi float [ %9, %6 ], [ %17, %11 ], !dbg !27
  %13 = phi i64 [ 0, %6 ], [ %19, %11 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !18, metadata !DIExpression()), !dbg !21
  %14 = add nsw i64 %13, -3, !dbg !33
  %15 = getelementptr inbounds float, float* %2, i64 %14, !dbg !34
  %16 = load float, float* %15, align 4, !dbg !34, !tbaa !28
  %17 = fmul float %12, %16, !dbg !35
  %18 = getelementptr inbounds float, float* %0, i64 %13, !dbg !36
  store float %17, float* %18, align 4, !dbg !37, !tbaa !28
  %19 = add nuw nsw i64 %13, 1, !dbg !38
  call void @llvm.dbg.value(metadata i64 %19, metadata !18, metadata !DIExpression()), !dbg !21
  %20 = icmp eq i64 %19, %7, !dbg !22
  br i1 %20, label %10, label %11, !dbg !24, !llvm.loop !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

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
!22 = !DILocation(line: 69, column: 25, scope: !23)
!23 = distinct !DILexicalBlock(scope: !19, file: !1, line: 69, column: 7)
!24 = !DILocation(line: 69, column: 7, scope: !19)
!25 = !DILocation(line: 0, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 69, column: 35)
!27 = !DILocation(line: 70, column: 15, scope: !26)
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 73, column: 6, scope: !7)
!33 = !DILocation(line: 70, column: 30, scope: !26)
!34 = !DILocation(line: 70, column: 26, scope: !26)
!35 = !DILocation(line: 70, column: 24, scope: !26)
!36 = !DILocation(line: 70, column: 8, scope: !26)
!37 = !DILocation(line: 70, column: 13, scope: !26)
!38 = !DILocation(line: 69, column: 30, scope: !23)
!39 = distinct !{!39, !24, !40}
!40 = !DILocation(line: 71, column: 6, scope: !19)
