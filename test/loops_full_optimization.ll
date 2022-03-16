; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.City = type { i32, [0 x i32] }
%struct.Country = type { i32, %struct.City* }

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo3(%struct.City* nocapture readnone %0, %struct.Country* nocapture readonly %1) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata %struct.City* %0, metadata !25, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata %struct.Country* %1, metadata !26, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !33
  %3 = getelementptr inbounds %struct.Country, %struct.Country* %1, i64 0, i32 0, !dbg !34
  %4 = load i32, i32* %3, align 8, !dbg !34, !tbaa !35
  %5 = icmp sgt i32 %4, 0, !dbg !41
  br i1 %5, label %6, label %9, !dbg !42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Country, %struct.Country* %1, i64 0, i32 1, !dbg !43
  %8 = load %struct.City*, %struct.City** %7, align 8, !dbg !43, !tbaa !44
  br label %10, !dbg !42

9:                                                ; preds = %10, %2
  ret void, !dbg !45

10:                                               ; preds = %6, %10
  %11 = phi i64 [ 0, %6 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata %struct.City* undef, metadata !29, metadata !DIExpression()), !dbg !43
  %12 = getelementptr inbounds %struct.City, %struct.City* %8, i64 %11, i32 1, i64 0, !dbg !46
  %13 = trunc i64 %11 to i32, !dbg !47
  store i32 %13, i32* %12, align 4, !dbg !47, !tbaa !48
  %14 = add nuw nsw i64 %11, 1, !dbg !49
  call void @llvm.dbg.value(metadata i64 %14, metadata !27, metadata !DIExpression()), !dbg !33
  %15 = load i32, i32* %3, align 8, !dbg !34, !tbaa !35
  %16 = sext i32 %15 to i64, !dbg !41
  %17 = icmp slt i64 %14, %16, !dbg !41
  br i1 %17, label %10, label %9, !dbg !42, !llvm.loop !50
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
!7 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 42, type: !8, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !19}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "City", file: !1, line: 32, size: 32, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !11, file: !1, line: 33, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "people", scope: !11, file: !1, line: 34, baseType: !16, offset: 32)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: -1)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Country", file: !1, line: 37, size: 128, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCities", scope: !20, file: !1, line: 38, baseType: !14, size: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "cities", scope: !20, file: !1, line: 39, baseType: !10, size: 64, offset: 64)
!24 = !{!25, !26, !27, !29}
!25 = !DILocalVariable(name: "city", arg: 1, scope: !7, file: !1, line: 42, type: !10)
!26 = !DILocalVariable(name: "country", arg: 2, scope: !7, file: !1, line: 42, type: !19)
!27 = !DILocalVariable(name: "i", scope: !28, file: !1, line: 49, type: !14)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 5)
!29 = !DILocalVariable(name: "cityPointer", scope: !30, file: !1, line: 50, type: !10)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 49, column: 55)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 49, column: 5)
!32 = !DILocation(line: 0, scope: !7)
!33 = !DILocation(line: 0, scope: !28)
!34 = !DILocation(line: 49, column: 34, scope: !31)
!35 = !{!36, !37, i64 0}
!36 = !{!"Country", !37, i64 0, !40, i64 8}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !DILocation(line: 49, column: 23, scope: !31)
!42 = !DILocation(line: 49, column: 5, scope: !28)
!43 = !DILocation(line: 0, scope: !30)
!44 = !{!36, !40, i64 8}
!45 = !DILocation(line: 53, column: 1, scope: !7)
!46 = !DILocation(line: 51, column: 9, scope: !30)
!47 = !DILocation(line: 51, column: 30, scope: !30)
!48 = !{!37, !37, i64 0}
!49 = !DILocation(line: 49, column: 50, scope: !31)
!50 = distinct !{!50, !42, !51}
!51 = !DILocation(line: 52, column: 5, scope: !28)
