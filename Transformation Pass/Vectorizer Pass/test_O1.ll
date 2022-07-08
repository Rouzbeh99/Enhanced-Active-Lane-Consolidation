; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x float] [float 1.000000e+00, float -1.000000e+00, float 2.000000e+00, float -2.000000e+00, float 3.000000e+00, float -3.000000e+00, float 4.000000e+00, float -4.000000e+00], align 16
@__const.main.b = private unnamed_addr constant [8 x float] [float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00], align 16
@.str = private unnamed_addr constant [4 x i8] c"%f \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !17, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata ptr %b, metadata !18, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 %n, metadata !20, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !24
  %cmp11 = icmp sgt i32 %n, 0, !dbg !25
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !27

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !25
  br label %for.body, !dbg !27

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret void, !dbg !28

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !21, metadata !DIExpression()), !dbg !24
  %rem15 = and i64 %indvars.iv, 1, !dbg !29
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !29
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !32

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds float, ptr %a, i64 %indvars.iv, !dbg !33
  %0 = load float, ptr %arrayidx, align 4, !dbg !33, !tbaa !35
  %arrayidx3 = getelementptr inbounds float, ptr %b, i64 %indvars.iv, !dbg !39
  %1 = load float, ptr %arrayidx3, align 4, !dbg !39, !tbaa !35
  %mul = fmul float %0, %1, !dbg !40
  %arrayidx5 = getelementptr inbounds float, ptr %c, i64 %indvars.iv, !dbg !41
  store float %mul, ptr %arrayidx5, align 4, !dbg !42, !tbaa !35
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !44
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !21, metadata !DIExpression()), !dbg !24
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !25
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !27, !llvm.loop !45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !49 {
entry:
  %c = alloca [8 x float], align 16
  call void @llvm.dbg.value(metadata i32 8, metadata !53, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !54, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !58, metadata !DIExpression()), !dbg !64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #9, !dbg !65
  call void @llvm.dbg.declare(metadata ptr %c, metadata !59, metadata !DIExpression()), !dbg !66
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !66
  call void @llvm.experimental.noalias.scope.decl(metadata !67), !dbg !70
  call void @llvm.experimental.noalias.scope.decl(metadata !71), !dbg !70
  call void @llvm.experimental.noalias.scope.decl(metadata !73), !dbg !70
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !17, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !18, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 8, metadata !20, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !77
  br label %for.body.i, !dbg !78

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !21, metadata !DIExpression()), !dbg !77
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !79
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !79
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !80

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds float, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !81
  %0 = load float, ptr %arrayidx.i, align 4, !dbg !81, !tbaa !35, !alias.scope !67, !noalias !82
  %arrayidx3.i = getelementptr inbounds float, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !83
  %1 = load float, ptr %arrayidx3.i, align 4, !dbg !83, !tbaa !35, !alias.scope !71, !noalias !84
  %mul.i = fmul float %0, %1, !dbg !85
  %arrayidx5.i = getelementptr inbounds float, ptr %c, i64 %indvars.iv.i, !dbg !86
  store float %mul.i, ptr %arrayidx5.i, align 4, !dbg !87, !tbaa !35, !alias.scope !73, !noalias !88
  br label %for.inc.i, !dbg !89

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !90
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !21, metadata !DIExpression()), !dbg !77
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !91
  br i1 %exitcond.not.i, label %for.body, label %for.body.i, !dbg !78, !llvm.loop !92

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = call i32 @putchar(i32 10), !dbg !94
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #9, !dbg !95
  ret i32 0, !dbg !96

for.body:                                         ; preds = %for.inc.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !60, metadata !DIExpression()), !dbg !97
  %arrayidx = getelementptr inbounds [8 x float], ptr %c, i64 0, i64 %indvars.iv, !dbg !98
  %2 = load float, ptr %arrayidx, align 4, !dbg !98, !tbaa !35
  %conv = fpext float %2 to double, !dbg !98
  %call = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %conv), !dbg !101
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !102
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !60, metadata !DIExpression()), !dbg !97
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !103
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !104, !llvm.loop !105
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

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "e5dead4aea263858af7c7072de3a41f5")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !12, !15}
!12 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !1, line: 3, type: !12)
!19 = !DILocalVariable(name: "c", arg: 3, scope: !9, file: !1, line: 3, type: !12)
!20 = !DILocalVariable(name: "n", arg: 4, scope: !9, file: !1, line: 3, type: !15)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 4, type: !15)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 4, column: 5)
!23 = !DILocation(line: 0, scope: !9)
!24 = !DILocation(line: 0, scope: !22)
!25 = !DILocation(line: 4, column: 23, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 4, column: 5)
!27 = !DILocation(line: 4, column: 5, scope: !22)
!28 = !DILocation(line: 9, column: 1, scope: !9)
!29 = !DILocation(line: 5, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 5, column: 13)
!31 = distinct !DILexicalBlock(scope: !26, file: !1, line: 4, column: 33)
!32 = !DILocation(line: 5, column: 13, scope: !31)
!33 = !DILocation(line: 6, column: 20, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 5, column: 25)
!35 = !{!36, !36, i64 0}
!36 = !{!"float", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 6, column: 27, scope: !34)
!40 = !DILocation(line: 6, column: 25, scope: !34)
!41 = !DILocation(line: 6, column: 13, scope: !34)
!42 = !DILocation(line: 6, column: 18, scope: !34)
!43 = !DILocation(line: 7, column: 9, scope: !34)
!44 = !DILocation(line: 4, column: 28, scope: !26)
!45 = distinct !{!45, !27, !46, !47, !48}
!46 = !DILocation(line: 8, column: 5, scope: !22)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 11, type: !50, scopeLine: 11, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!50 = !DISubroutineType(types: !51)
!51 = !{!15}
!52 = !{!53, !54, !58, !59, !60}
!53 = !DILocalVariable(name: "n", scope: !49, file: !1, line: 12, type: !15)
!54 = !DILocalVariable(name: "a", scope: !49, file: !1, line: 13, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DILocalVariable(name: "b", scope: !49, file: !1, line: 14, type: !55)
!59 = !DILocalVariable(name: "c", scope: !49, file: !1, line: 15, type: !55)
!60 = !DILocalVariable(name: "i", scope: !61, file: !1, line: 19, type: !15)
!61 = distinct !DILexicalBlock(scope: !49, file: !1, line: 19, column: 5)
!62 = !DILocation(line: 0, scope: !49)
!63 = !DILocation(line: 13, column: 11, scope: !49)
!64 = !DILocation(line: 14, column: 11, scope: !49)
!65 = !DILocation(line: 15, column: 5, scope: !49)
!66 = !DILocation(line: 15, column: 11, scope: !49)
!67 = !{!68}
!68 = distinct !{!68, !69, !"foo: %a"}
!69 = distinct !{!69, !"foo"}
!70 = !DILocation(line: 17, column: 5, scope: !49)
!71 = !{!72}
!72 = distinct !{!72, !69, !"foo: %b"}
!73 = !{!74}
!74 = distinct !{!74, !69, !"foo: %c"}
!75 = !DILocation(line: 0, scope: !9, inlinedAt: !76)
!76 = distinct !DILocation(line: 17, column: 5, scope: !49)
!77 = !DILocation(line: 0, scope: !22, inlinedAt: !76)
!78 = !DILocation(line: 4, column: 5, scope: !22, inlinedAt: !76)
!79 = !DILocation(line: 5, column: 19, scope: !30, inlinedAt: !76)
!80 = !DILocation(line: 5, column: 13, scope: !31, inlinedAt: !76)
!81 = !DILocation(line: 6, column: 20, scope: !34, inlinedAt: !76)
!82 = !{!72, !74}
!83 = !DILocation(line: 6, column: 27, scope: !34, inlinedAt: !76)
!84 = !{!68, !74}
!85 = !DILocation(line: 6, column: 25, scope: !34, inlinedAt: !76)
!86 = !DILocation(line: 6, column: 13, scope: !34, inlinedAt: !76)
!87 = !DILocation(line: 6, column: 18, scope: !34, inlinedAt: !76)
!88 = !{!68, !72}
!89 = !DILocation(line: 7, column: 9, scope: !34, inlinedAt: !76)
!90 = !DILocation(line: 4, column: 28, scope: !26, inlinedAt: !76)
!91 = !DILocation(line: 4, column: 23, scope: !26, inlinedAt: !76)
!92 = distinct !{!92, !78, !93, !47, !48}
!93 = !DILocation(line: 8, column: 5, scope: !22, inlinedAt: !76)
!94 = !DILocation(line: 22, column: 5, scope: !49)
!95 = !DILocation(line: 24, column: 1, scope: !49)
!96 = !DILocation(line: 23, column: 5, scope: !49)
!97 = !DILocation(line: 0, scope: !61)
!98 = !DILocation(line: 20, column: 23, scope: !99)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 19, column: 33)
!100 = distinct !DILexicalBlock(scope: !61, file: !1, line: 19, column: 5)
!101 = !DILocation(line: 20, column: 9, scope: !99)
!102 = !DILocation(line: 19, column: 28, scope: !100)
!103 = !DILocation(line: 19, column: 23, scope: !100)
!104 = !DILocation(line: 19, column: 5, scope: !61)
!105 = distinct !{!105, !104, !106, !47, !48}
!106 = !DILocation(line: 21, column: 5, scope: !61)
