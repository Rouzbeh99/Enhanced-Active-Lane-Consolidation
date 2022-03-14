; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.City = type { i32, [0 x i32] }

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo3(%struct.City* nocapture %0) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata %struct.City* %0, metadata !20, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !28
  %2 = getelementptr inbounds %struct.City, %struct.City* %0, i64 0, i32 0, !dbg !29
  %3 = load i32, i32* %2, align 4, !dbg !29, !tbaa !30
  %4 = icmp sgt i32 %3, 0, !dbg !34
  br i1 %4, label %5, label %7, !dbg !35

5:                                                ; preds = %1
  %6 = zext i32 %3 to i64, !dbg !35
  br label %8, !dbg !35

7:                                                ; preds = %8, %1
  ret void, !dbg !36

8:                                                ; preds = %5, %8
  %9 = phi i64 [ 0, %5 ], [ %12, %8 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !21, metadata !DIExpression()), !dbg !28
  %10 = getelementptr inbounds %struct.City, %struct.City* %0, i64 0, i32 1, i64 %9, !dbg !37
  call void @llvm.dbg.value(metadata i32* %10, metadata !23, metadata !DIExpression()), !dbg !38
  %11 = trunc i64 %9 to i32, !dbg !39
  store i32 %11, i32* %10, align 4, !dbg !39, !tbaa !30
  %12 = add nuw nsw i64 %9, 1, !dbg !40
  call void @llvm.dbg.value(metadata i64 %12, metadata !21, metadata !DIExpression()), !dbg !28
  %13 = icmp ult i64 %12, %6, !dbg !34
  br i1 %13, label %8, label %7, !dbg !35, !llvm.loop !41
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

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
!7 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 37, type: !8, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "City", file: !1, line: 32, size: 32, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !11, file: !1, line: 33, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "people", scope: !11, file: !1, line: 34, baseType: !16, offset: 32)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: -1)
!19 = !{!20, !21, !23}
!20 = !DILocalVariable(name: "city", arg: 1, scope: !7, file: !1, line: 37, type: !10)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 39, type: !14)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 39, column: 5)
!23 = !DILocalVariable(name: "peoplePonter", scope: !24, file: !1, line: 40, type: !26)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 39, column: 48)
!25 = distinct !DILexicalBlock(scope: !22, file: !1, line: 39, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!27 = !DILocation(line: 0, scope: !7)
!28 = !DILocation(line: 0, scope: !22)
!29 = !DILocation(line: 39, column: 31, scope: !25)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 39, column: 23, scope: !25)
!35 = !DILocation(line: 39, column: 5, scope: !22)
!36 = !DILocation(line: 43, column: 1, scope: !7)
!37 = !DILocation(line: 40, column: 30, scope: !24)
!38 = !DILocation(line: 0, scope: !24)
!39 = !DILocation(line: 41, column: 23, scope: !24)
!40 = !DILocation(line: 39, column: 43, scope: !25)
!41 = distinct !{!41, !35, !42}
!42 = !DILocation(line: 42, column: 5, scope: !22)
