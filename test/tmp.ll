; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.City = type { i32, i32* }
%struct.Country = type { i32, %struct.City* }

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo3(%struct.City* nocapture readonly %0, %struct.Country* nocapture readnone %1) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata %struct.City* %0, metadata !23, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata %struct.Country* %1, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !31
  %3 = getelementptr inbounds %struct.City, %struct.City* %0, i64 0, i32 0, !dbg !32
  %4 = load i32, i32* %3, align 8, !dbg !32, !tbaa !33
  %5 = icmp sgt i32 %4, 0, !dbg !39
  br i1 %5, label %6, label %9, !dbg !40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.City, %struct.City* %0, i64 0, i32 1, !dbg !41
  %8 = load i32*, i32** %7, align 8, !dbg !41, !tbaa !42
  br label %10, !dbg !40

9:                                                ; preds = %10, %2
  ret void, !dbg !43

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !25, metadata !DIExpression()), !dbg !31
  %12 = getelementptr inbounds i32, i32* %8, i64 %11, !dbg !44
  call void @llvm.dbg.value(metadata i32* %12, metadata !27, metadata !DIExpression()), !dbg !41
  %13 = trunc i64 %11 to i32, !dbg !45
  store i32 %13, i32* %12, align 4, !dbg !45, !tbaa !46
  %14 = add nuw nsw i64 %11, 1, !dbg !47
  call void @llvm.dbg.value(metadata i64 %14, metadata !25, metadata !DIExpression()), !dbg !31
  %15 = load i32, i32* %3, align 8, !dbg !32, !tbaa !33
  %16 = sext i32 %15 to i64, !dbg !39
  %17 = icmp slt i64 %14, %16, !dbg !39
  br i1 %17, label %10, label %9, !dbg !40, !llvm.loop !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
!7 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 47, type: !8, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !17}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "City", file: !1, line: 32, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !11, file: !1, line: 33, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "people", scope: !11, file: !1, line: 34, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Country", file: !1, line: 37, size: 128, elements: !19)
!19 = !{!20, !21}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCities", scope: !18, file: !1, line: 38, baseType: !14, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cities", scope: !18, file: !1, line: 39, baseType: !10, size: 64, offset: 64)
!22 = !{!23, !24, !25, !27}
!23 = !DILocalVariable(name: "city", arg: 1, scope: !7, file: !1, line: 47, type: !10)
!24 = !DILocalVariable(name: "country", arg: 2, scope: !7, file: !1, line: 47, type: !17)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 49, type: !14)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 5)
!27 = !DILocalVariable(name: "peoplePointer", scope: !28, file: !1, line: 50, type: !16)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 49, column: 48)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 49, column: 5)
!30 = !DILocation(line: 0, scope: !7)
!31 = !DILocation(line: 0, scope: !26)
!32 = !DILocation(line: 49, column: 31, scope: !29)
!33 = !{!34, !35, i64 0}
!34 = !{!"City", !35, i64 0, !38, i64 8}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !DILocation(line: 49, column: 23, scope: !29)
!40 = !DILocation(line: 49, column: 5, scope: !26)
!41 = !DILocation(line: 0, scope: !28)
!42 = !{!34, !38, i64 8}
!43 = !DILocation(line: 58, column: 1, scope: !7)
!44 = !DILocation(line: 50, column: 31, scope: !28)
!45 = !DILocation(line: 51, column: 24, scope: !28)
!46 = !{!35, !35, i64 0}
!47 = !DILocation(line: 49, column: 43, scope: !29)
!48 = distinct !{!48, !40, !49}
!49 = !DILocation(line: 52, column: 5, scope: !26)
