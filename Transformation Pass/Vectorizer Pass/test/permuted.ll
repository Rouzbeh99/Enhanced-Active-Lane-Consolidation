; ModuleID = 'test.ll'
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
  br label %for.body.init.1, !dbg !31

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.1 = and i64 0, 1, !dbg !32
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !32
  br label %for.inc.init.1

for.inc.init.1:                                   ; preds = %for.body.init.1
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.init.1

for.body.headerCopy.1.init.1:                     ; preds = %for.inc.init.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !32
  br label %for.inc.latchCopy.1.init.1

for.inc.latchCopy.1.init.1:                       ; preds = %for.body.headerCopy.1.init.1
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.init.1

for.body.headerCopy.1.2.init.1:                   ; preds = %for.inc.latchCopy.1.init.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.init.1

for.inc.latchCopy.1.2.init.1:                     ; preds = %for.body.headerCopy.1.2.init.1
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.1, metadata !25, metadata !DIExpression()), !dbg !28
  %0 = sub i64 %wide.trip.count, 2, !dbg !29
  %exitcond.not.latchCopy.1.2.init.1 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.init.1, %0, !dbg !29
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.inc.latchCopy.1.2.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !32
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !32
  br label %for.inc.init.2

for.inc.init.2:                                   ; preds = %for.body.init.2
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.init.2

for.body.headerCopy.1.init.2:                     ; preds = %for.inc.init.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.init.2

for.inc.latchCopy.1.init.2:                       ; preds = %for.body.headerCopy.1.init.2
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2.init.2

for.body.headerCopy.1.2.init.2:                   ; preds = %for.inc.latchCopy.1.init.2
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.2.init.2

for.inc.latchCopy.1.2.init.2:                     ; preds = %for.body.headerCopy.1.2.init.2
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2.init.2, metadata !25, metadata !DIExpression()), !dbg !28
  %1 = sub i64 %wide.trip.count, 2, !dbg !29
  %exitcond.not.latchCopy.1.2.init.2 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.init.2, %1, !dbg !29
  br i1 %exitcond.not.latchCopy.1.2.init.2, label %for.cond.cleanup.loopexit, label %for.body, !dbg !31, !llvm.loop !36

for.cond.cleanup.loopexit:                        ; preds = %for.inc.latchCopy.1.2.init.2, %for.inc.latchCopy.1.2
  br label %for.cond.cleanup, !dbg !40

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !40

for.body:                                         ; preds = %for.inc.latchCopy.1.2.init.2, %if.then
  %2 = phi i64 [ %indvars.iv.next.latchCopy.1.2, %if.then ], [ 0, %for.inc.latchCopy.1.2.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15 = and i64 %2, 1, !dbg !32
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !32
  br label %for.inc

if.then:                                          ; preds = %for.inc.latchCopy.1.2
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %2, !dbg !41
  %3 = load i32, ptr %arrayidx, align 4, !dbg !41, !tbaa !43
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %2, !dbg !47
  %4 = load i32, ptr %arrayidx3, align 4, !dbg !47, !tbaa !43
  %mul = mul nsw i32 %4, %3, !dbg !48
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %2, !dbg !49
  store i32 %mul, ptr %arrayidx5, align 4, !dbg !50, !tbaa !43
  br label %for.body

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %2, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1

for.body.headerCopy.1:                            ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !32
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !32
  br label %for.inc.latchCopy.1

for.inc.latchCopy.1:                              ; preds = %for.body.headerCopy.1
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1, metadata !25, metadata !DIExpression()), !dbg !28
  br label %for.body.headerCopy.1.2

for.body.headerCopy.1.2:                          ; preds = %for.inc.latchCopy.1
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !32
  br label %for.inc.latchCopy.1.2

for.inc.latchCopy.1.2:                            ; preds = %for.body.headerCopy.1.2
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.latchCopy.1.2, metadata !25, metadata !DIExpression()), !dbg !28
  %5 = sub i64 %wide.trip.count, 2, !dbg !29
  %exitcond.not.latchCopy.1.2 = icmp eq i64 %indvars.iv.next.latchCopy.1.2, %5, !dbg !29
  br i1 %exitcond.not.latchCopy.1.2, label %for.cond.cleanup.loopexit, label %if.then, !dbg !31, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !51 {
entry:
  %c = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !55, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !56, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !60, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #8, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %c, metadata !61, metadata !DIExpression()), !dbg !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !68
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69), !dbg !72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73), !dbg !72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75), !dbg !72
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !21, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !22, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 8, metadata !24, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !79
  br label %for.body.i, !dbg !80

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()), !dbg !79
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !81
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !81
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !82

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !83
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !83, !tbaa !43, !alias.scope !69, !noalias !84
  %arrayidx3.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !85
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !85, !tbaa !43, !alias.scope !73, !noalias !86
  %mul.i = mul nsw i32 %1, %0, !dbg !87
  %arrayidx5.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !88
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !89, !tbaa !43, !alias.scope !75, !noalias !90
  br label %for.inc.i, !dbg !91

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !92
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()), !dbg !79
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !93
  br i1 %exitcond.not.i, label %for.body.preheader, label %for.body.i, !dbg !80, !llvm.loop !94

for.body.preheader:                               ; preds = %for.inc.i
  br label %for.body, !dbg !96

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #8, !dbg !98
  ret i32 0, !dbg !99

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !62, metadata !DIExpression()), !dbg !100
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !101
  %2 = load i32, ptr %arrayidx, align 4, !dbg !101, !tbaa !43
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !62, metadata !DIExpression()), !dbg !100
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !106
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !96, !llvm.loop !107
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

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
!32 = !DILocation(line: 7, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 13)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 6, column: 33)
!35 = !DILocation(line: 6, column: 28, scope: !30)
!36 = distinct !{!36, !31, !37, !38, !39}
!37 = !DILocation(line: 10, column: 5, scope: !26)
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !DILocation(line: 11, column: 1, scope: !14)
!41 = !DILocation(line: 8, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 25)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 8, column: 27, scope: !42)
!48 = !DILocation(line: 8, column: 25, scope: !42)
!49 = !DILocation(line: 8, column: 13, scope: !42)
!50 = !DILocation(line: 8, column: 18, scope: !42)
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !52, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!52 = !DISubroutineType(types: !53)
!53 = !{!19}
!54 = !{!55, !56, !60, !61, !62}
!55 = !DILocalVariable(name: "n", scope: !51, file: !1, line: 14, type: !19)
!56 = !DILocalVariable(name: "a", scope: !51, file: !1, line: 15, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 8)
!60 = !DILocalVariable(name: "b", scope: !51, file: !1, line: 16, type: !57)
!61 = !DILocalVariable(name: "c", scope: !51, file: !1, line: 17, type: !57)
!62 = !DILocalVariable(name: "i", scope: !63, file: !1, line: 21, type: !19)
!63 = distinct !DILexicalBlock(scope: !51, file: !1, line: 21, column: 5)
!64 = !DILocation(line: 0, scope: !51)
!65 = !DILocation(line: 15, column: 9, scope: !51)
!66 = !DILocation(line: 16, column: 9, scope: !51)
!67 = !DILocation(line: 17, column: 5, scope: !51)
!68 = !DILocation(line: 17, column: 9, scope: !51)
!69 = !{!70}
!70 = distinct !{!70, !71, !"foo: %a"}
!71 = distinct !{!71, !"foo"}
!72 = !DILocation(line: 19, column: 5, scope: !51)
!73 = !{!74}
!74 = distinct !{!74, !71, !"foo: %b"}
!75 = !{!76}
!76 = distinct !{!76, !71, !"foo: %c"}
!77 = !DILocation(line: 0, scope: !14, inlinedAt: !78)
!78 = distinct !DILocation(line: 19, column: 5, scope: !51)
!79 = !DILocation(line: 0, scope: !26, inlinedAt: !78)
!80 = !DILocation(line: 6, column: 5, scope: !26, inlinedAt: !78)
!81 = !DILocation(line: 7, column: 19, scope: !33, inlinedAt: !78)
!82 = !DILocation(line: 7, column: 13, scope: !34, inlinedAt: !78)
!83 = !DILocation(line: 8, column: 20, scope: !42, inlinedAt: !78)
!84 = !{!74, !76}
!85 = !DILocation(line: 8, column: 27, scope: !42, inlinedAt: !78)
!86 = !{!70, !76}
!87 = !DILocation(line: 8, column: 25, scope: !42, inlinedAt: !78)
!88 = !DILocation(line: 8, column: 13, scope: !42, inlinedAt: !78)
!89 = !DILocation(line: 8, column: 18, scope: !42, inlinedAt: !78)
!90 = !{!70, !74}
!91 = !DILocation(line: 9, column: 9, scope: !42, inlinedAt: !78)
!92 = !DILocation(line: 6, column: 28, scope: !30, inlinedAt: !78)
!93 = !DILocation(line: 6, column: 23, scope: !30, inlinedAt: !78)
!94 = distinct !{!94, !80, !95, !38, !39}
!95 = !DILocation(line: 10, column: 5, scope: !26, inlinedAt: !78)
!96 = !DILocation(line: 21, column: 5, scope: !63)
!97 = !DILocation(line: 24, column: 5, scope: !51)
!98 = !DILocation(line: 26, column: 1, scope: !51)
!99 = !DILocation(line: 25, column: 5, scope: !51)
!100 = !DILocation(line: 0, scope: !63)
!101 = !DILocation(line: 22, column: 23, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 21, column: 33)
!103 = distinct !DILexicalBlock(scope: !63, file: !1, line: 21, column: 5)
!104 = !DILocation(line: 22, column: 9, scope: !102)
!105 = !DILocation(line: 21, column: 28, scope: !103)
!106 = !DILocation(line: 21, column: 23, scope: !103)
!107 = distinct !{!107, !96, !108, !38, !39}
!108 = !DILocation(line: 23, column: 5, scope: !63)
