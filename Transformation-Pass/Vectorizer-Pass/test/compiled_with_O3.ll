; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %b, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %c, metadata !26, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %cond, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %n, metadata !28, metadata !DIExpression()), !dbg !31
  tail call void asm sideeffect ".inst 0x2520e020", ""() #5, !dbg !32, !srcloc !34
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !35
  %cmp12 = icmp sgt i32 %n, 0, !dbg !36
  br i1 %cmp12, label %for.body.preheader, label %for.cond.cleanup, !dbg !38

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !36
  br label %for.body, !dbg !38

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #5, !dbg !39, !srcloc !41
  ret void, !dbg !42

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !29, metadata !DIExpression()), !dbg !35
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !43
  %0 = load i8, ptr %arrayidx, align 1, !dbg !43, !tbaa !46, !range !50
  %tobool.not = icmp eq i8 %0, 0, !dbg !43
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !51

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !52
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !52, !tbaa !54
  %arrayidx4 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !56
  %2 = load i32, ptr %arrayidx4, align 4, !dbg !56, !tbaa !54
  %mul = mul nsw i32 %2, %1, !dbg !57
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !58
  store i32 %mul, ptr %arrayidx6, align 4, !dbg !59, !tbaa !54
  br label %for.inc, !dbg !60

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !61
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !29, metadata !DIExpression()), !dbg !35
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !36
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !38, !llvm.loop !62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !70, metadata !DIExpression()), !dbg !97
  %vla40 = alloca [8192 x i32], align 4, !dbg !98
  call void @llvm.dbg.value(metadata i64 8192, metadata !71, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %vla40, metadata !73, metadata !DIExpression()), !dbg !99
  %vla141 = alloca [8192 x i32], align 4, !dbg !100
  call void @llvm.dbg.value(metadata i64 8192, metadata !77, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %vla141, metadata !78, metadata !DIExpression()), !dbg !101
  %vla242 = alloca [8192 x i32], align 4, !dbg !102
  call void @llvm.dbg.value(metadata i64 8192, metadata !82, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %vla242, metadata !83, metadata !DIExpression()), !dbg !103
  %vla343 = alloca [8192 x i8], align 1, !dbg !104
  call void @llvm.dbg.value(metadata i64 8192, metadata !87, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr %vla343, metadata !88, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()), !dbg !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla242, i8 0, i64 32768, i1 false), !dbg !107, !tbaa !54
  br label %for.body, !dbg !110

for.cond.cleanup:                                 ; preds = %cond.end
  call void @foo(ptr noundef nonnull %vla40, ptr noundef nonnull %vla141, ptr noundef nonnull %vla242, ptr noundef nonnull %vla343, i32 noundef 8192), !dbg !111
  call void @llvm.dbg.value(metadata i32 0, metadata !94, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !112
  br label %for.body17, !dbg !113

for.body:                                         ; preds = %entry, %cond.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  %indvars49 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !92, metadata !DIExpression()), !dbg !106
  %arrayidx = getelementptr inbounds i32, ptr %vla40, i64 %indvars.iv, !dbg !114
  store i32 %indvars49, ptr %arrayidx, align 4, !dbg !115, !tbaa !54
  %arrayidx5 = getelementptr inbounds i32, ptr %vla141, i64 %indvars.iv, !dbg !116
  store i32 2, ptr %arrayidx5, align 4, !dbg !117, !tbaa !54
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !118
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !119

cond.false:                                       ; preds = %for.body
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !120
  %rem44 = urem i16 %rem.lhs.trunc, 10, !dbg !120
  %cmp9 = icmp eq i16 %rem44, 0, !dbg !121
  %conv = zext i1 %cmp9 to i8, !dbg !121
  br label %cond.end, !dbg !119

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !119
  %arrayidx11 = getelementptr inbounds i8, ptr %vla343, i64 %indvars.iv, !dbg !122
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !123, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !124
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !92, metadata !DIExpression()), !dbg !106
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !126

for.cond.cleanup16:                               ; preds = %for.body17
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add), !dbg !128
  ret i32 0, !dbg !129

for.body17:                                       ; preds = %for.cond.cleanup, %for.body17
  %indvars.iv50 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next51, %for.body17 ]
  %sum.047 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv50, metadata !95, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %sum.047, metadata !94, metadata !DIExpression()), !dbg !97
  %arrayidx19 = getelementptr inbounds i32, ptr %vla242, i64 %indvars.iv50, !dbg !130
  %0 = load i32, ptr %arrayidx19, align 4, !dbg !130, !tbaa !54
  %add = add nsw i32 %0, %sum.047, !dbg !133
  call void @llvm.dbg.value(metadata i32 %add, metadata !94, metadata !DIExpression()), !dbg !97
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next51, metadata !95, metadata !DIExpression()), !dbg !112
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 8192, !dbg !135
  br i1 %exitcond53.not, label %for.cond.cleanup16, label %for.body17, !dbg !113, !llvm.loop !136
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "87872a29d0d7fad4538fad172ac7d9b6")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !20, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 7, type: !17)
!25 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 7, type: !17)
!26 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 7, type: !17)
!27 = !DILocalVariable(name: "cond", arg: 4, scope: !14, file: !1, line: 7, type: !20)
!28 = !DILocalVariable(name: "n", arg: 5, scope: !14, file: !1, line: 7, type: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 11, type: !19)
!30 = distinct !DILexicalBlock(scope: !14, file: !1, line: 11, column: 5)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocation(line: 10, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!34 = !{i64 2147613628}
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 11, column: 23, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!38 = !DILocation(line: 11, column: 5, scope: !30)
!39 = !DILocation(line: 16, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !14, file: !1, line: 16, column: 5)
!41 = !{i64 2147613667}
!42 = !DILocation(line: 18, column: 1, scope: !14)
!43 = !DILocation(line: 12, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 12, column: 13)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 33)
!46 = !{!47, !47, i64 0}
!47 = !{!"_Bool", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{i8 0, i8 2}
!51 = !DILocation(line: 12, column: 13, scope: !45)
!52 = !DILocation(line: 13, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 22)
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !48, i64 0}
!56 = !DILocation(line: 13, column: 27, scope: !53)
!57 = !DILocation(line: 13, column: 25, scope: !53)
!58 = !DILocation(line: 13, column: 13, scope: !53)
!59 = !DILocation(line: 13, column: 18, scope: !53)
!60 = !DILocation(line: 14, column: 9, scope: !53)
!61 = !DILocation(line: 11, column: 28, scope: !37)
!62 = distinct !{!62, !38, !63, !64, !65}
!63 = !DILocation(line: 15, column: 5, scope: !30)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!"llvm.loop.unroll.disable"}
!66 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !67, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!67 = !DISubroutineType(types: !68)
!68 = !{!19}
!69 = !{!70, !71, !73, !77, !78, !82, !83, !87, !88, !92, !94, !95}
!70 = !DILocalVariable(name: "n", scope: !66, file: !1, line: 23, type: !19)
!71 = !DILocalVariable(name: "__vla_expr0", scope: !66, type: !72, flags: DIFlagArtificial)
!72 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocalVariable(name: "a", scope: !66, file: !1, line: 25, type: !74)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: !71)
!77 = !DILocalVariable(name: "__vla_expr1", scope: !66, type: !72, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "b", scope: !66, file: !1, line: 26, type: !79)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: !77)
!82 = !DILocalVariable(name: "__vla_expr2", scope: !66, type: !72, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "c", scope: !66, file: !1, line: 27, type: !84)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: !82)
!87 = !DILocalVariable(name: "__vla_expr3", scope: !66, type: !72, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "cond", scope: !66, file: !1, line: 28, type: !89)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: !87)
!92 = !DILocalVariable(name: "i", scope: !93, file: !1, line: 30, type: !19)
!93 = distinct !DILexicalBlock(scope: !66, file: !1, line: 30, column: 5)
!94 = !DILocalVariable(name: "sum", scope: !66, file: !1, line: 40, type: !19)
!95 = !DILocalVariable(name: "i", scope: !96, file: !1, line: 42, type: !19)
!96 = distinct !DILexicalBlock(scope: !66, file: !1, line: 42, column: 5)
!97 = !DILocation(line: 0, scope: !66)
!98 = !DILocation(line: 25, column: 5, scope: !66)
!99 = !DILocation(line: 25, column: 9, scope: !66)
!100 = !DILocation(line: 26, column: 5, scope: !66)
!101 = !DILocation(line: 26, column: 9, scope: !66)
!102 = !DILocation(line: 27, column: 5, scope: !66)
!103 = !DILocation(line: 27, column: 9, scope: !66)
!104 = !DILocation(line: 28, column: 5, scope: !66)
!105 = !DILocation(line: 28, column: 10, scope: !66)
!106 = !DILocation(line: 0, scope: !93)
!107 = !DILocation(line: 33, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 30, column: 33)
!109 = distinct !DILexicalBlock(scope: !93, file: !1, line: 30, column: 5)
!110 = !DILocation(line: 30, column: 5, scope: !93)
!111 = !DILocation(line: 38, column: 5, scope: !66)
!112 = !DILocation(line: 0, scope: !96)
!113 = !DILocation(line: 42, column: 5, scope: !96)
!114 = !DILocation(line: 31, column: 9, scope: !108)
!115 = !DILocation(line: 31, column: 14, scope: !108)
!116 = !DILocation(line: 32, column: 9, scope: !108)
!117 = !DILocation(line: 32, column: 14, scope: !108)
!118 = !DILocation(line: 34, column: 22, scope: !108)
!119 = !DILocation(line: 34, column: 20, scope: !108)
!120 = !DILocation(line: 34, column: 36, scope: !108)
!121 = !DILocation(line: 34, column: 41, scope: !108)
!122 = !DILocation(line: 34, column: 9, scope: !108)
!123 = !DILocation(line: 34, column: 17, scope: !108)
!124 = !DILocation(line: 30, column: 28, scope: !109)
!125 = !DILocation(line: 30, column: 23, scope: !109)
!126 = distinct !{!126, !110, !127, !64, !65}
!127 = !DILocation(line: 35, column: 5, scope: !93)
!128 = !DILocation(line: 46, column: 5, scope: !66)
!129 = !DILocation(line: 50, column: 1, scope: !66)
!130 = !DILocation(line: 43, column: 16, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 42, column: 33)
!132 = distinct !DILexicalBlock(scope: !96, file: !1, line: 42, column: 5)
!133 = !DILocation(line: 43, column: 13, scope: !131)
!134 = !DILocation(line: 42, column: 28, scope: !132)
!135 = !DILocation(line: 42, column: 23, scope: !132)
!136 = distinct !{!136, !113, !137, !64, !65}
!137 = !DILocation(line: 44, column: 5, scope: !96)
