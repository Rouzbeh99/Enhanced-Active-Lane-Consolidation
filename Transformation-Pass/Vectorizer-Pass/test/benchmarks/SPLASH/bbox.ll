; ModuleID = 'bbox.c'
source_filename = "bbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bbox = type { [3 x double], [3 x double] }

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @InquireBoundBoxValues(ptr nocapture noundef readonly %pbb, ptr nocapture noundef writeonly %minx, ptr nocapture noundef writeonly %miny, ptr nocapture noundef writeonly %minz, ptr nocapture noundef writeonly %maxx, ptr nocapture noundef writeonly %maxy, ptr nocapture noundef writeonly %maxz) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %pbb, metadata !26, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %minx, metadata !27, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %miny, metadata !28, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %minz, metadata !29, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %maxx, metadata !30, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %maxy, metadata !31, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.value(metadata ptr %maxz, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load double, ptr %pbb, align 8, !dbg !34
  store double %0, ptr %minx, align 8, !dbg !35
  %arrayidx2 = getelementptr inbounds [3 x double], ptr %pbb, i64 0, i64 1, !dbg !36
  %1 = load double, ptr %arrayidx2, align 8, !dbg !36
  store double %1, ptr %miny, align 8, !dbg !37
  %arrayidx4 = getelementptr inbounds [3 x double], ptr %pbb, i64 0, i64 2, !dbg !38
  %2 = load double, ptr %arrayidx4, align 8, !dbg !38
  store double %2, ptr %minz, align 8, !dbg !39
  %dfar = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, !dbg !40
  %3 = load double, ptr %dfar, align 8, !dbg !41
  store double %3, ptr %maxx, align 8, !dbg !42
  %arrayidx7 = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, i64 1, !dbg !43
  %4 = load double, ptr %arrayidx7, align 8, !dbg !43
  store double %4, ptr %maxy, align 8, !dbg !44
  %arrayidx9 = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, i64 2, !dbg !45
  %5 = load double, ptr %arrayidx9, align 8, !dbg !45
  store double %5, ptr %maxz, align 8, !dbg !46
  ret void, !dbg !47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @NormalizeBoundBox(ptr nocapture noundef %pbb, ptr noundef %mat) local_unnamed_addr #2 !dbg !48 {
entry:
  %tmp = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %pbb, metadata !56, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata ptr %mat, metadata !57, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #6, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !58, metadata !DIExpression()), !dbg !63
  %0 = load double, ptr %pbb, align 8, !dbg !64
  store double %0, ptr %tmp, align 16, !dbg !65
  %arrayidx3 = getelementptr inbounds [3 x double], ptr %pbb, i64 0, i64 1, !dbg !66
  %1 = load double, ptr %arrayidx3, align 8, !dbg !66
  %arrayidx4 = getelementptr inbounds [4 x double], ptr %tmp, i64 0, i64 1, !dbg !67
  store double %1, ptr %arrayidx4, align 8, !dbg !68
  %arrayidx6 = getelementptr inbounds [3 x double], ptr %pbb, i64 0, i64 2, !dbg !69
  %2 = load double, ptr %arrayidx6, align 8, !dbg !69
  %arrayidx7 = getelementptr inbounds [4 x double], ptr %tmp, i64 0, i64 2, !dbg !70
  store double %2, ptr %arrayidx7, align 16, !dbg !71
  %arrayidx8 = getelementptr inbounds [4 x double], ptr %tmp, i64 0, i64 3, !dbg !72
  store double 1.000000e+00, ptr %arrayidx8, align 8, !dbg !73
  call void @VecMatMult(ptr noundef nonnull %tmp, ptr noundef %mat, ptr noundef nonnull %tmp) #6, !dbg !74
  %3 = load double, ptr %tmp, align 16, !dbg !75
  store double %3, ptr %pbb, align 8, !dbg !76
  %4 = load double, ptr %arrayidx4, align 8, !dbg !77
  store double %4, ptr %arrayidx3, align 8, !dbg !78
  %5 = load double, ptr %arrayidx7, align 16, !dbg !79
  store double %5, ptr %arrayidx6, align 8, !dbg !80
  %dfar = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, !dbg !81
  %6 = load double, ptr %dfar, align 8, !dbg !82
  store double %6, ptr %tmp, align 16, !dbg !83
  %arrayidx22 = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, i64 1, !dbg !84
  %7 = load double, ptr %arrayidx22, align 8, !dbg !84
  store double %7, ptr %arrayidx4, align 8, !dbg !85
  %arrayidx25 = getelementptr inbounds %struct.bbox, ptr %pbb, i64 0, i32 1, i64 2, !dbg !86
  %8 = load double, ptr %arrayidx25, align 8, !dbg !86
  store double %8, ptr %arrayidx7, align 16, !dbg !87
  store double 1.000000e+00, ptr %arrayidx8, align 8, !dbg !88
  call void @VecMatMult(ptr noundef nonnull %tmp, ptr noundef %mat, ptr noundef nonnull %tmp) #6, !dbg !89
  %9 = load double, ptr %tmp, align 16, !dbg !90
  store double %9, ptr %dfar, align 8, !dbg !91
  %10 = load double, ptr %arrayidx4, align 8, !dbg !92
  store double %10, ptr %arrayidx22, align 8, !dbg !93
  %11 = load double, ptr %arrayidx7, align 16, !dbg !94
  store double %11, ptr %arrayidx25, align 8, !dbg !95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #6, !dbg !96
  ret void, !dbg !96
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !97 void @VecMatMult(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "bbox.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "8c89d12bffe9316412a6412983b2eb16")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "InquireBoundBoxValues", scope: !1, file: !1, line: 50, type: !10, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !24, !24, !24, !24, !24, !24}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !14, line: 418, baseType: !15)
!14 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !14, line: 413, size: 384, elements: !16)
!16 = !{!17, !23}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !15, file: !14, line: 415, baseType: !18, size: 192)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 192, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !14, line: 310, baseType: !20)
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !{!22}
!22 = !DISubrange(count: 3)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !15, file: !14, line: 416, baseType: !18, size: 192, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!25 = !{!26, !27, !28, !29, !30, !31, !32}
!26 = !DILocalVariable(name: "pbb", arg: 1, scope: !9, file: !1, line: 50, type: !12)
!27 = !DILocalVariable(name: "minx", arg: 2, scope: !9, file: !1, line: 50, type: !24)
!28 = !DILocalVariable(name: "miny", arg: 3, scope: !9, file: !1, line: 50, type: !24)
!29 = !DILocalVariable(name: "minz", arg: 4, scope: !9, file: !1, line: 50, type: !24)
!30 = !DILocalVariable(name: "maxx", arg: 5, scope: !9, file: !1, line: 50, type: !24)
!31 = !DILocalVariable(name: "maxy", arg: 6, scope: !9, file: !1, line: 50, type: !24)
!32 = !DILocalVariable(name: "maxz", arg: 7, scope: !9, file: !1, line: 50, type: !24)
!33 = !DILocation(line: 0, scope: !9)
!34 = !DILocation(line: 52, column: 10, scope: !9)
!35 = !DILocation(line: 52, column: 8, scope: !9)
!36 = !DILocation(line: 53, column: 10, scope: !9)
!37 = !DILocation(line: 53, column: 8, scope: !9)
!38 = !DILocation(line: 54, column: 10, scope: !9)
!39 = !DILocation(line: 54, column: 8, scope: !9)
!40 = !DILocation(line: 55, column: 15, scope: !9)
!41 = !DILocation(line: 55, column: 10, scope: !9)
!42 = !DILocation(line: 55, column: 8, scope: !9)
!43 = !DILocation(line: 56, column: 10, scope: !9)
!44 = !DILocation(line: 56, column: 8, scope: !9)
!45 = !DILocation(line: 57, column: 10, scope: !9)
!46 = !DILocation(line: 57, column: 8, scope: !9)
!47 = !DILocation(line: 58, column: 2, scope: !9)
!48 = distinct !DISubprogram(name: "NormalizeBoundBox", scope: !1, file: !1, line: 75, type: !49, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !12, !51}
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 4)
!55 = !{!56, !57, !58}
!56 = !DILocalVariable(name: "pbb", arg: 1, scope: !48, file: !1, line: 75, type: !12)
!57 = !DILocalVariable(name: "mat", arg: 2, scope: !48, file: !1, line: 75, type: !51)
!58 = !DILocalVariable(name: "tmp", scope: !48, file: !1, line: 77, type: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "POINT", file: !14, line: 318, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !14, line: 315, baseType: !52)
!61 = !DILocation(line: 0, scope: !48)
!62 = !DILocation(line: 77, column: 2, scope: !48)
!63 = !DILocation(line: 77, column: 8, scope: !48)
!64 = !DILocation(line: 81, column: 11, scope: !48)
!65 = !DILocation(line: 81, column: 9, scope: !48)
!66 = !DILocation(line: 82, column: 11, scope: !48)
!67 = !DILocation(line: 82, column: 2, scope: !48)
!68 = !DILocation(line: 82, column: 9, scope: !48)
!69 = !DILocation(line: 83, column: 11, scope: !48)
!70 = !DILocation(line: 83, column: 2, scope: !48)
!71 = !DILocation(line: 83, column: 9, scope: !48)
!72 = !DILocation(line: 84, column: 2, scope: !48)
!73 = !DILocation(line: 84, column: 9, scope: !48)
!74 = !DILocation(line: 86, column: 2, scope: !48)
!75 = !DILocation(line: 88, column: 18, scope: !48)
!76 = !DILocation(line: 88, column: 16, scope: !48)
!77 = !DILocation(line: 89, column: 18, scope: !48)
!78 = !DILocation(line: 89, column: 16, scope: !48)
!79 = !DILocation(line: 90, column: 18, scope: !48)
!80 = !DILocation(line: 90, column: 16, scope: !48)
!81 = !DILocation(line: 92, column: 16, scope: !48)
!82 = !DILocation(line: 92, column: 11, scope: !48)
!83 = !DILocation(line: 92, column: 9, scope: !48)
!84 = !DILocation(line: 93, column: 11, scope: !48)
!85 = !DILocation(line: 93, column: 9, scope: !48)
!86 = !DILocation(line: 94, column: 11, scope: !48)
!87 = !DILocation(line: 94, column: 9, scope: !48)
!88 = !DILocation(line: 95, column: 9, scope: !48)
!89 = !DILocation(line: 97, column: 2, scope: !48)
!90 = !DILocation(line: 99, column: 17, scope: !48)
!91 = !DILocation(line: 99, column: 15, scope: !48)
!92 = !DILocation(line: 100, column: 17, scope: !48)
!93 = !DILocation(line: 100, column: 15, scope: !48)
!94 = !DILocation(line: 101, column: 17, scope: !48)
!95 = !DILocation(line: 101, column: 15, scope: !48)
!96 = !DILocation(line: 102, column: 2, scope: !48)
!97 = !DISubprogram(name: "VecMatMult", scope: !14, file: !14, line: 893, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !24, !51, !24}
!100 = !{}
