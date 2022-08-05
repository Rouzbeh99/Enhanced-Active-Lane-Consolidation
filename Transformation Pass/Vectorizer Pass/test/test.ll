; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x i32] [i32 1, i32 -1, i32 2, i32 -2, i32 3, i32 -3, i32 4, i32 -4], align 4
@__const.main.b = private unnamed_addr constant [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !53 {
entry:
  %c = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !57, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !58, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !62, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #9, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %c, metadata !63, metadata !DIExpression()), !dbg !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !70
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71), !dbg !74
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75), !dbg !74
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77), !dbg !74
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !21, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !22, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 8, metadata !24, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !81
  br label %for.body.i, !dbg !82

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()), !dbg !81
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !83
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !83
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !84

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !85
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !85, !tbaa !39, !alias.scope !71, !noalias !86
  %arrayidx3.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !87
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !87, !tbaa !39, !alias.scope !75, !noalias !88
  %mul.i = mul nsw i32 %1, %0, !dbg !89
  %arrayidx5.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !90
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !91, !tbaa !39, !alias.scope !77, !noalias !92
  br label %for.inc.i, !dbg !93

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()), !dbg !81
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !95
  br i1 %exitcond.not.i, label %for.body, label %for.body.i, !dbg !82, !llvm.loop !96

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #9, !dbg !99
  ret i32 0, !dbg !100

for.body:                                         ; preds = %for.inc.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !64, metadata !DIExpression()), !dbg !101
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !102
  %2 = load i32, ptr %arrayidx, align 4, !dbg !102, !tbaa !39
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !106
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !64, metadata !DIExpression()), !dbg !101
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !107
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !108, !llvm.loop !109
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "c5d0df64e1ff873f94aa4d4359d35ec8")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 3, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 6, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 6, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 5)
!31 = !DILocation(line: 6, column: 5, scope: !26)
!32 = !DILocation(line: 11, column: 1, scope: !14)
!33 = !DILocation(line: 7, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 7, column: 13)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 6, column: 33)
!36 = !DILocation(line: 7, column: 13, scope: !35)
!37 = !DILocation(line: 8, column: 20, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 25)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !DILocation(line: 8, column: 27, scope: !38)
!44 = !DILocation(line: 8, column: 25, scope: !38)
!45 = !DILocation(line: 8, column: 13, scope: !38)
!46 = !DILocation(line: 8, column: 18, scope: !38)
!47 = !DILocation(line: 9, column: 9, scope: !38)
!48 = !DILocation(line: 6, column: 28, scope: !30)
!49 = distinct !{!49, !31, !50, !51, !52}
!50 = !DILocation(line: 10, column: 5, scope: !26)
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !54, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!54 = !DISubroutineType(types: !55)
!55 = !{!19}
!56 = !{!57, !58, !62, !63, !64}
!57 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 14, type: !19)
!58 = !DILocalVariable(name: "a", scope: !53, file: !1, line: 15, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 8)
!62 = !DILocalVariable(name: "b", scope: !53, file: !1, line: 16, type: !59)
!63 = !DILocalVariable(name: "c", scope: !53, file: !1, line: 17, type: !59)
!64 = !DILocalVariable(name: "i", scope: !65, file: !1, line: 21, type: !19)
!65 = distinct !DILexicalBlock(scope: !53, file: !1, line: 21, column: 5)
!66 = !DILocation(line: 0, scope: !53)
!67 = !DILocation(line: 15, column: 9, scope: !53)
!68 = !DILocation(line: 16, column: 9, scope: !53)
!69 = !DILocation(line: 17, column: 5, scope: !53)
!70 = !DILocation(line: 17, column: 9, scope: !53)
!71 = !{!72}
!72 = distinct !{!72, !73, !"foo: %a"}
!73 = distinct !{!73, !"foo"}
!74 = !DILocation(line: 19, column: 5, scope: !53)
!75 = !{!76}
!76 = distinct !{!76, !73, !"foo: %b"}
!77 = !{!78}
!78 = distinct !{!78, !73, !"foo: %c"}
!79 = !DILocation(line: 0, scope: !14, inlinedAt: !80)
!80 = distinct !DILocation(line: 19, column: 5, scope: !53)
!81 = !DILocation(line: 0, scope: !26, inlinedAt: !80)
!82 = !DILocation(line: 6, column: 5, scope: !26, inlinedAt: !80)
!83 = !DILocation(line: 7, column: 19, scope: !34, inlinedAt: !80)
!84 = !DILocation(line: 7, column: 13, scope: !35, inlinedAt: !80)
!85 = !DILocation(line: 8, column: 20, scope: !38, inlinedAt: !80)
!86 = !{!76, !78}
!87 = !DILocation(line: 8, column: 27, scope: !38, inlinedAt: !80)
!88 = !{!72, !78}
!89 = !DILocation(line: 8, column: 25, scope: !38, inlinedAt: !80)
!90 = !DILocation(line: 8, column: 13, scope: !38, inlinedAt: !80)
!91 = !DILocation(line: 8, column: 18, scope: !38, inlinedAt: !80)
!92 = !{!72, !76}
!93 = !DILocation(line: 9, column: 9, scope: !38, inlinedAt: !80)
!94 = !DILocation(line: 6, column: 28, scope: !30, inlinedAt: !80)
!95 = !DILocation(line: 6, column: 23, scope: !30, inlinedAt: !80)
!96 = distinct !{!96, !82, !97, !51, !52}
!97 = !DILocation(line: 10, column: 5, scope: !26, inlinedAt: !80)
!98 = !DILocation(line: 24, column: 5, scope: !53)
!99 = !DILocation(line: 26, column: 1, scope: !53)
!100 = !DILocation(line: 25, column: 5, scope: !53)
!101 = !DILocation(line: 0, scope: !65)
!102 = !DILocation(line: 22, column: 23, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 21, column: 33)
!104 = distinct !DILexicalBlock(scope: !65, file: !1, line: 21, column: 5)
!105 = !DILocation(line: 22, column: 9, scope: !103)
!106 = !DILocation(line: 21, column: 28, scope: !104)
!107 = !DILocation(line: 21, column: 23, scope: !104)
!108 = !DILocation(line: 21, column: 5, scope: !65)
!109 = distinct !{!109, !108, !110, !51, !52}
!110 = !DILocation(line: 23, column: 5, scope: !65)
