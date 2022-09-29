; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !28
  %cmp11 = icmp sgt i32 %n, 0, !dbg !29
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !31

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !29
  br label %for.body, !dbg !31

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret void, !dbg !32

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15 = and i64 %indvars.iv, 1, !dbg !33
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !33
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !36

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !37
  %0 = load i32, ptr %arrayidx, align 4, !dbg !37, !tbaa !39
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !43
  %1 = load i32, ptr %arrayidx3, align 4, !dbg !43, !tbaa !39
  %mul = mul nsw i32 %1, %0, !dbg !44
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !45
  store i32 %mul, ptr %arrayidx5, align 4, !dbg !46, !tbaa !39
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !48
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !28
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !29
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !31, !llvm.loop !49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 !dbg !53 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !57, metadata !DIExpression()), !dbg !79
  %vla30 = alloca [8192 x i32], align 4, !dbg !80
  call void @llvm.dbg.value(metadata i64 8192, metadata !58, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !60, metadata !DIExpression()), !dbg !81
  %vla131 = alloca [8192 x i32], align 4, !dbg !82
  call void @llvm.dbg.value(metadata i64 8192, metadata !64, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !65, metadata !DIExpression()), !dbg !83
  %vla232 = alloca [8192 x i32], align 4, !dbg !84
  call void @llvm.dbg.value(metadata i64 8192, metadata !69, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !70, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 0, metadata !74, metadata !DIExpression()), !dbg !86
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla232, i8 0, i64 32768, i1 false), !dbg !87, !tbaa !39
  br label %for.body, !dbg !90

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla30, ptr noundef nonnull %vla131, ptr noundef nonnull %vla232, i32 noundef 8192), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !76, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()), !dbg !92
  br label %for.body11, !dbg !93

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !74, metadata !DIExpression()), !dbg !86
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !94
  %0 = trunc i64 %indvars.iv to i32, !dbg !95
  store i32 %0, ptr %arrayidx, align 4, !dbg !95, !tbaa !39
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !96
  store i32 2, ptr %arrayidx4, align 4, !dbg !97, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !98
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !74, metadata !DIExpression()), !dbg !86
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !99
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !90, !llvm.loop !100

for.cond.cleanup10:                               ; preds = %for.body11
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add), !dbg !102
  ret i32 0, !dbg !103

for.body11:                                       ; preds = %for.cond.cleanup, %for.body11
  %indvars.iv37 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !77, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !76, metadata !DIExpression()), !dbg !79
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !104
  %1 = load i32, ptr %arrayidx13, align 4, !dbg !104, !tbaa !39
  %add = add nsw i32 %1, %sum.034, !dbg !107
  call void @llvm.dbg.value(metadata i32 %add, metadata !76, metadata !DIExpression()), !dbg !79
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !77, metadata !DIExpression()), !dbg !92
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 8192, !dbg !109
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !93, !llvm.loop !110
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "581f4bd3471b88da4f71fdf0d07a3a26")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 4, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 4, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 4, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 4, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 7, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 7, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 7, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 5)
!31 = !DILocation(line: 7, column: 5, scope: !26)
!32 = !DILocation(line: 13, column: 1, scope: !14)
!33 = !DILocation(line: 8, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 13)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 7, column: 33)
!36 = !DILocation(line: 8, column: 13, scope: !35)
!37 = !DILocation(line: 9, column: 20, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 8, column: 25)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 9, column: 27, scope: !38)
!44 = !DILocation(line: 9, column: 25, scope: !38)
!45 = !DILocation(line: 9, column: 13, scope: !38)
!46 = !DILocation(line: 9, column: 18, scope: !38)
!47 = !DILocation(line: 10, column: 9, scope: !38)
!48 = !DILocation(line: 7, column: 28, scope: !30)
!49 = distinct !{!49, !31, !50, !51, !52}
!50 = !DILocation(line: 11, column: 5, scope: !26)
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !54, scopeLine: 16, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!19}
!56 = !{!57, !58, !60, !64, !65, !69, !70, !74, !76, !77}
!57 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 18, type: !19)
!58 = !DILocalVariable(name: "__vla_expr0", scope: !53, type: !59, flags: DIFlagArtificial)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "a", scope: !53, file: !1, line: 20, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: !58)
!64 = !DILocalVariable(name: "__vla_expr1", scope: !53, type: !59, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "b", scope: !53, file: !1, line: 21, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: !64)
!69 = !DILocalVariable(name: "__vla_expr2", scope: !53, type: !59, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "c", scope: !53, file: !1, line: 22, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: !69)
!74 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 24, type: !19)
!75 = distinct !DILexicalBlock(scope: !53, file: !1, line: 24, column: 5)
!76 = !DILocalVariable(name: "sum", scope: !53, file: !1, line: 33, type: !19)
!77 = !DILocalVariable(name: "i", scope: !78, file: !1, line: 35, type: !19)
!78 = distinct !DILexicalBlock(scope: !53, file: !1, line: 35, column: 5)
!79 = !DILocation(line: 0, scope: !53)
!80 = !DILocation(line: 20, column: 5, scope: !53)
!81 = !DILocation(line: 20, column: 9, scope: !53)
!82 = !DILocation(line: 21, column: 5, scope: !53)
!83 = !DILocation(line: 21, column: 9, scope: !53)
!84 = !DILocation(line: 22, column: 5, scope: !53)
!85 = !DILocation(line: 22, column: 9, scope: !53)
!86 = !DILocation(line: 0, scope: !75)
!87 = !DILocation(line: 27, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 24, column: 33)
!89 = distinct !DILexicalBlock(scope: !75, file: !1, line: 24, column: 5)
!90 = !DILocation(line: 24, column: 5, scope: !75)
!91 = !DILocation(line: 31, column: 5, scope: !53)
!92 = !DILocation(line: 0, scope: !78)
!93 = !DILocation(line: 35, column: 5, scope: !78)
!94 = !DILocation(line: 25, column: 9, scope: !88)
!95 = !DILocation(line: 25, column: 14, scope: !88)
!96 = !DILocation(line: 26, column: 9, scope: !88)
!97 = !DILocation(line: 26, column: 14, scope: !88)
!98 = !DILocation(line: 24, column: 28, scope: !89)
!99 = !DILocation(line: 24, column: 23, scope: !89)
!100 = distinct !{!100, !90, !101, !51, !52}
!101 = !DILocation(line: 28, column: 5, scope: !75)
!102 = !DILocation(line: 38, column: 5, scope: !53)
!103 = !DILocation(line: 42, column: 1, scope: !53)
!104 = !DILocation(line: 36, column: 16, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 35, column: 33)
!106 = distinct !DILexicalBlock(scope: !78, file: !1, line: 35, column: 5)
!107 = !DILocation(line: 36, column: 13, scope: !105)
!108 = !DILocation(line: 35, column: 28, scope: !106)
!109 = !DILocation(line: 35, column: 23, scope: !106)
!110 = distinct !{!110, !93, !111, !51, !52}
!111 = !DILocation(line: 37, column: 5, scope: !78)
