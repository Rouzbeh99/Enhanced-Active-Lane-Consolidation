; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Country = type { i32, %struct.City* }
%struct.City = type { i32, i32* }

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo3(%struct.Country* nocapture readonly %0) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata %struct.Country* %0, metadata !23, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.value(metadata i32 0, metadata !24, metadata !DIExpression()), !dbg !30
  %2 = getelementptr inbounds %struct.Country, %struct.Country* %0, i64 0, i32 0, !dbg !31
  %3 = load i32, i32* %2, align 8, !dbg !31, !tbaa !32
  %4 = icmp sgt i32 %3, 0, !dbg !38
  br i1 %4, label %5, label %9, !dbg !39

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Country, %struct.Country* %0, i64 0, i32 1, !dbg !40
  %7 = load %struct.City*, %struct.City** %6, align 8, !dbg !40, !tbaa !41
  %8 = zext i32 %3 to i64, !dbg !39
  br label %10, !dbg !39

9:                                                ; preds = %10, %1
  ret void, !dbg !42

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !24, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.value(metadata %struct.City* undef, metadata !26, metadata !DIExpression()), !dbg !40
  %12 = getelementptr inbounds %struct.City, %struct.City* %7, i64 %11, i32 0, !dbg !43
  %13 = trunc i64 %11 to i32, !dbg !44
  store i32 %13, i32* %12, align 8, !dbg !44, !tbaa !45
  %14 = add nuw nsw i64 %11, 1, !dbg !47
  call void @llvm.dbg.value(metadata i64 %14, metadata !24, metadata !DIExpression()), !dbg !30
  %15 = icmp ult i64 %14, %8, !dbg !38
  br i1 %15, label %10, label %9, !dbg !39, !llvm.loop !48
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
!7 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 43, type: !8, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Country", file: !1, line: 37, size: 128, elements: !12)
!12 = !{!13, !15}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCities", scope: !11, file: !1, line: 38, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "cities", scope: !11, file: !1, line: 39, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "City", file: !1, line: 32, size: 128, elements: !18)
!18 = !{!19, !20}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !17, file: !1, line: 33, baseType: !14, size: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "people", scope: !17, file: !1, line: 34, baseType: !21, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!22 = !{!23, !24, !26}
!23 = !DILocalVariable(name: "country", arg: 1, scope: !7, file: !1, line: 43, type: !10)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 44, type: !14)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 44, column: 5)
!26 = !DILocalVariable(name: "cityPointer", scope: !27, file: !1, line: 45, type: !16)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 55)
!28 = distinct !DILexicalBlock(scope: !25, file: !1, line: 44, column: 5)
!29 = !DILocation(line: 0, scope: !7)
!30 = !DILocation(line: 0, scope: !25)
!31 = !DILocation(line: 44, column: 34, scope: !28)
!32 = !{!33, !34, i64 0}
!33 = !{!"Country", !34, i64 0, !37, i64 8}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!"any pointer", !35, i64 0}
!38 = !DILocation(line: 44, column: 23, scope: !28)
!39 = !DILocation(line: 44, column: 5, scope: !25)
!40 = !DILocation(line: 0, scope: !27)
!41 = !{!33, !37, i64 8}
!42 = !DILocation(line: 49, column: 1, scope: !7)
!43 = !DILocation(line: 47, column: 22, scope: !27)
!44 = !DILocation(line: 47, column: 33, scope: !27)
!45 = !{!46, !34, i64 0}
!46 = !{!"City", !34, i64 0, !37, i64 8}
!47 = !DILocation(line: 44, column: 50, scope: !28)
!48 = distinct !{!48, !39, !49}
!49 = !DILocation(line: 48, column: 5, scope: !25)
