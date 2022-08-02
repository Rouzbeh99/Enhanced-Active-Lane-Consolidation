; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 4
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 4
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %b, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %c, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !25, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !29
  %cmp11 = icmp sgt i32 %n, 0, !dbg !30
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !32

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !30
  br label %for.body, !dbg !32

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret void, !dbg !33

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !26, metadata !DIExpression()), !dbg !29
  %rem15 = and i64 %indvars.iv, 1, !dbg !34
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !34
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !37

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds float, ptr %a, i64 %indvars.iv, !dbg !38
  %0 = load float, ptr %arrayidx, align 4, !dbg !38, !tbaa !40
  %arrayidx3 = getelementptr inbounds float, ptr %b, i64 %indvars.iv, !dbg !44
  %1 = load float, ptr %arrayidx3, align 4, !dbg !44, !tbaa !40
  %mul = fmul float %0, %1, !dbg !45
  %arrayidx5 = getelementptr inbounds float, ptr %c, i64 %indvars.iv, !dbg !46
  store float %mul, ptr %arrayidx5, align 4, !dbg !47, !tbaa !40
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !49
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !26, metadata !DIExpression()), !dbg !29
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !30
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !32, !llvm.loop !50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !54 {
entry:
  %c = alloca [8 x float], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !58, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !59, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !63, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #9, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %c, metadata !64, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72), !dbg !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76), !dbg !75
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78), !dbg !75
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !22, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !23, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata ptr %c, metadata !24, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 8, metadata !25, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !82
  br label %for.body.i, !dbg !83

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !26, metadata !DIExpression()), !dbg !82
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !84
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !84
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !85

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds float, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !86
  %0 = load float, ptr %arrayidx.i, align 4, !dbg !86, !tbaa !40, !alias.scope !72, !noalias !87
  %arrayidx3.i = getelementptr inbounds float, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !88
  %1 = load float, ptr %arrayidx3.i, align 4, !dbg !88, !tbaa !40, !alias.scope !76, !noalias !89
  %mul.i = fmul float %0, %1, !dbg !90
  %arrayidx5.i = getelementptr inbounds float, ptr %c, i64 %indvars.iv.i, !dbg !91
  store float %mul.i, ptr %arrayidx5.i, align 4, !dbg !92, !tbaa !40, !alias.scope !78, !noalias !93
  br label %for.inc.i, !dbg !94

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !95
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !26, metadata !DIExpression()), !dbg !82
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !96
  br i1 %exitcond.not.i, label %for.body, label %for.body.i, !dbg !83, !llvm.loop !97

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !99
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #9, !dbg !100
  ret i32 0, !dbg !101

for.body:                                         ; preds = %for.inc.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !65, metadata !DIExpression()), !dbg !102
  %arrayidx = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 %indvars.iv, !dbg !103
  %2 = load float, ptr %arrayidx, align 4, !dbg !103, !tbaa !40
  %conv = fpext float %2 to double, !dbg !103
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv), !dbg !106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !107
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !65, metadata !DIExpression()), !dbg !102
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !109, !llvm.loop !110
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
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "fa5bbc3c46d59efe1a59fc629941492a")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !20}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25, !26}
!22 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 3, type: !17)
!25 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 3, type: !20)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 6, type: !20)
!27 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!28 = !DILocation(line: 0, scope: !14)
!29 = !DILocation(line: 0, scope: !27)
!30 = !DILocation(line: 6, column: 23, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 6, column: 5)
!32 = !DILocation(line: 6, column: 5, scope: !27)
!33 = !DILocation(line: 11, column: 1, scope: !14)
!34 = !DILocation(line: 7, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 7, column: 13)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 6, column: 33)
!37 = !DILocation(line: 7, column: 13, scope: !36)
!38 = !DILocation(line: 8, column: 20, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 7, column: 25)
!40 = !{!41, !41, i64 0}
!41 = !{!"float", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocation(line: 8, column: 27, scope: !39)
!45 = !DILocation(line: 8, column: 25, scope: !39)
!46 = !DILocation(line: 8, column: 13, scope: !39)
!47 = !DILocation(line: 8, column: 18, scope: !39)
!48 = !DILocation(line: 9, column: 9, scope: !39)
!49 = !DILocation(line: 6, column: 28, scope: !31)
!50 = distinct !{!50, !32, !51, !52, !53}
!51 = !DILocation(line: 10, column: 5, scope: !27)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !55, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!20}
!57 = !{!58, !59, !63, !64, !65}
!58 = !DILocalVariable(name: "n", scope: !54, file: !1, line: 14, type: !20)
!59 = !DILocalVariable(name: "a", scope: !54, file: !1, line: 15, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 8)
!63 = !DILocalVariable(name: "b", scope: !54, file: !1, line: 16, type: !60)
!64 = !DILocalVariable(name: "c", scope: !54, file: !1, line: 17, type: !60)
!65 = !DILocalVariable(name: "i", scope: !66, file: !1, line: 21, type: !20)
!66 = distinct !DILexicalBlock(scope: !54, file: !1, line: 21, column: 5)
!67 = !DILocation(line: 0, scope: !54)
!68 = !DILocation(line: 15, column: 11, scope: !54)
!69 = !DILocation(line: 16, column: 11, scope: !54)
!70 = !DILocation(line: 17, column: 5, scope: !54)
!71 = !DILocation(line: 17, column: 11, scope: !54)
!72 = !{!73}
!73 = distinct !{!73, !74, !"foo: %a"}
!74 = distinct !{!74, !"foo"}
!75 = !DILocation(line: 19, column: 5, scope: !54)
!76 = !{!77}
!77 = distinct !{!77, !74, !"foo: %b"}
!78 = !{!79}
!79 = distinct !{!79, !74, !"foo: %c"}
!80 = !DILocation(line: 0, scope: !14, inlinedAt: !81)
!81 = distinct !DILocation(line: 19, column: 5, scope: !54)
!82 = !DILocation(line: 0, scope: !27, inlinedAt: !81)
!83 = !DILocation(line: 6, column: 5, scope: !27, inlinedAt: !81)
!84 = !DILocation(line: 7, column: 19, scope: !35, inlinedAt: !81)
!85 = !DILocation(line: 7, column: 13, scope: !36, inlinedAt: !81)
!86 = !DILocation(line: 8, column: 20, scope: !39, inlinedAt: !81)
!87 = !{!77, !79}
!88 = !DILocation(line: 8, column: 27, scope: !39, inlinedAt: !81)
!89 = !{!73, !79}
!90 = !DILocation(line: 8, column: 25, scope: !39, inlinedAt: !81)
!91 = !DILocation(line: 8, column: 13, scope: !39, inlinedAt: !81)
!92 = !DILocation(line: 8, column: 18, scope: !39, inlinedAt: !81)
!93 = !{!73, !77}
!94 = !DILocation(line: 9, column: 9, scope: !39, inlinedAt: !81)
!95 = !DILocation(line: 6, column: 28, scope: !31, inlinedAt: !81)
!96 = !DILocation(line: 6, column: 23, scope: !31, inlinedAt: !81)
!97 = distinct !{!97, !83, !98, !52, !53}
!98 = !DILocation(line: 10, column: 5, scope: !27, inlinedAt: !81)
!99 = !DILocation(line: 24, column: 5, scope: !54)
!100 = !DILocation(line: 26, column: 1, scope: !54)
!101 = !DILocation(line: 25, column: 5, scope: !54)
!102 = !DILocation(line: 0, scope: !66)
!103 = !DILocation(line: 22, column: 23, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 21, column: 33)
!105 = distinct !DILexicalBlock(scope: !66, file: !1, line: 21, column: 5)
!106 = !DILocation(line: 22, column: 9, scope: !104)
!107 = !DILocation(line: 21, column: 28, scope: !105)
!108 = !DILocation(line: 21, column: 23, scope: !105)
!109 = !DILocation(line: 21, column: 5, scope: !66)
!110 = distinct !{!110, !109, !111, !52, !53}
!111 = !DILocation(line: 23, column: 5, scope: !66)
