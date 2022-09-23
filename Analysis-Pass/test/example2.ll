; ModuleID = 'example2.c'
source_filename = "example2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [16 x i32] [i32 -11, i32 -12, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18, i32 -11, i32 -12, i32 3, i32 4, i32 5, i32 16, i32 17, i32 18], align 16
@__const.main.b = private unnamed_addr constant [16 x i32] [i32 -19, i32 -10, i32 1, i32 2, i32 3, i32 14, i32 15, i32 16, i32 -19, i32 -10, i32 1, i32 2, i32 3, i32 14, i32 15, i32 16], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local i32 @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata ptr %b, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata ptr %c, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %n, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  %cmp46 = icmp sgt i32 %n, 0, !dbg !23
  br i1 %cmp46, label %for.body.preheader, label %for.cond.cleanup, !dbg !25

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !23
  br label %for.body, !dbg !25

for.cond.cleanup:                                 ; preds = %for.inc, %entry
  ret i32 undef, !dbg !26

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !19, metadata !DIExpression()), !dbg !22
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !27
  %0 = load i32, ptr %arrayidx, align 4, !dbg !27, !tbaa !30
  %cmp1 = icmp sgt i32 %0, 10, !dbg !34
  br i1 %cmp1, label %if.then, label %if.else, !dbg !35

if.then:                                          ; preds = %for.body
  %arrayidx5 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !36
  %1 = load i32, ptr %arrayidx5, align 4, !dbg !36, !tbaa !30
  %add = add nsw i32 %1, %0, !dbg !38
  br label %for.inc, !dbg !39

if.else:                                          ; preds = %for.body
  %cmp10 = icmp slt i32 %0, -10, !dbg !40
  %arrayidx15 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !42
  %2 = load i32, ptr %arrayidx15, align 4, !dbg !42, !tbaa !30
  br i1 %cmp10, label %if.then11, label %if.else18, !dbg !43

if.then11:                                        ; preds = %if.else
  %sub = sub nsw i32 %0, %2, !dbg !44
  br label %for.inc, !dbg !46

if.else18:                                        ; preds = %if.else
  %mul = mul nsw i32 %2, %0, !dbg !47
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else18, %if.then11
  %add.sink = phi i32 [ %add, %if.then ], [ %mul, %if.else18 ], [ %sub, %if.then11 ]
  %arrayidx7 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !49
  store i32 %add.sink, ptr %arrayidx7, align 4, !dbg !49, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !50
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !19, metadata !DIExpression()), !dbg !22
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !23
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !25, !llvm.loop !51
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !55 {
entry:
  %c = alloca [16 x i32], align 16
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !59, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !63, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #8, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %c, metadata !64, metadata !DIExpression()), !dbg !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %c, i8 0, i64 64, i1 false), !dbg !71
  call void @llvm.dbg.value(metadata i32 16, metadata !65, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !15, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !16, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata ptr %c, metadata !17, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 16, metadata !18, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !75
  br label %for.body.i, !dbg !76

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !19, metadata !DIExpression()), !dbg !75
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !77
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !77, !tbaa !30
  %cmp1.i = icmp sgt i32 %0, 10, !dbg !78
  br i1 %cmp1.i, label %if.then.i, label %if.else.i, !dbg !79

if.then.i:                                        ; preds = %for.body.i
  %arrayidx5.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !80
  %1 = load i32, ptr %arrayidx5.i, align 4, !dbg !80, !tbaa !30
  %add.i = add nsw i32 %1, %0, !dbg !81
  br label %for.inc.i, !dbg !82

if.else.i:                                        ; preds = %for.body.i
  %cmp10.i = icmp slt i32 %0, -10, !dbg !83
  %arrayidx15.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !84
  %2 = load i32, ptr %arrayidx15.i, align 4, !dbg !84, !tbaa !30
  br i1 %cmp10.i, label %if.then11.i, label %if.else18.i, !dbg !85

if.then11.i:                                      ; preds = %if.else.i
  %sub.i = sub nsw i32 %0, %2, !dbg !86
  br label %for.inc.i, !dbg !87

if.else18.i:                                      ; preds = %if.else.i
  %mul.i = mul nsw i32 %2, %0, !dbg !88
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else18.i, %if.then11.i, %if.then.i
  %add.sink.i = phi i32 [ %add.i, %if.then.i ], [ %mul.i, %if.else18.i ], [ %sub.i, %if.then11.i ]
  %arrayidx7.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !89
  store i32 %add.sink.i, ptr %arrayidx7.i, align 4, !dbg !89, !tbaa !30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !90
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !19, metadata !DIExpression()), !dbg !75
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 16, !dbg !91
  br i1 %exitcond.not.i, label %for.body, label %for.body.i, !dbg !76, !llvm.loop !92

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !94
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #8, !dbg !95
  ret i32 0, !dbg !95

for.body:                                         ; preds = %for.inc.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !66, metadata !DIExpression()), !dbg !96
  %arrayidx = getelementptr inbounds [16 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !97
  %3 = load i32, ptr %arrayidx, align 4, !dbg !97, !tbaa !30
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %3), !dbg !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !66, metadata !DIExpression()), !dbg !96
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !102
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !103, !llvm.loop !104
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example2.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "1d35f6868a32bca439c29711ec228efe")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !10, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !13, !13, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 3, type: !13)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !1, line: 3, type: !13)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !9, file: !1, line: 3, type: !13)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !9, file: !1, line: 3, type: !12)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 4, type: !12)
!20 = distinct !DILexicalBlock(scope: !9, file: !1, line: 4, column: 5)
!21 = !DILocation(line: 0, scope: !9)
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 4, column: 23, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 4, column: 5)
!25 = !DILocation(line: 4, column: 5, scope: !20)
!26 = !DILocation(line: 13, column: 1, scope: !9)
!27 = !DILocation(line: 5, column: 13, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 5, column: 13)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 4, column: 33)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !DILocation(line: 5, column: 18, scope: !28)
!35 = !DILocation(line: 5, column: 13, scope: !29)
!36 = !DILocation(line: 6, column: 27, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 5, column: 24)
!38 = !DILocation(line: 6, column: 25, scope: !37)
!39 = !DILocation(line: 7, column: 9, scope: !37)
!40 = !DILocation(line: 7, column: 25, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 7, column: 20)
!42 = !DILocation(line: 0, scope: !41)
!43 = !DILocation(line: 7, column: 20, scope: !28)
!44 = !DILocation(line: 8, column: 25, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 7, column: 32)
!46 = !DILocation(line: 9, column: 9, scope: !45)
!47 = !DILocation(line: 10, column: 25, scope: !48)
!48 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 16)
!49 = !DILocation(line: 0, scope: !28)
!50 = !DILocation(line: 4, column: 29, scope: !24)
!51 = distinct !{!51, !25, !52, !53, !54}
!52 = !DILocation(line: 12, column: 5, scope: !20)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 16, type: !56, scopeLine: 16, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!12}
!58 = !{!59, !63, !64, !65, !66}
!59 = !DILocalVariable(name: "a", scope: !55, file: !1, line: 22, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 16)
!63 = !DILocalVariable(name: "b", scope: !55, file: !1, line: 23, type: !60)
!64 = !DILocalVariable(name: "c", scope: !55, file: !1, line: 24, type: !60)
!65 = !DILocalVariable(name: "n", scope: !55, file: !1, line: 25, type: !12)
!66 = !DILocalVariable(name: "i", scope: !67, file: !1, line: 29, type: !12)
!67 = distinct !DILexicalBlock(scope: !55, file: !1, line: 29, column: 5)
!68 = !DILocation(line: 22, column: 9, scope: !55)
!69 = !DILocation(line: 23, column: 9, scope: !55)
!70 = !DILocation(line: 24, column: 5, scope: !55)
!71 = !DILocation(line: 24, column: 9, scope: !55)
!72 = !DILocation(line: 0, scope: !55)
!73 = !DILocation(line: 0, scope: !9, inlinedAt: !74)
!74 = distinct !DILocation(line: 27, column: 5, scope: !55)
!75 = !DILocation(line: 0, scope: !20, inlinedAt: !74)
!76 = !DILocation(line: 4, column: 5, scope: !20, inlinedAt: !74)
!77 = !DILocation(line: 5, column: 13, scope: !28, inlinedAt: !74)
!78 = !DILocation(line: 5, column: 18, scope: !28, inlinedAt: !74)
!79 = !DILocation(line: 5, column: 13, scope: !29, inlinedAt: !74)
!80 = !DILocation(line: 6, column: 27, scope: !37, inlinedAt: !74)
!81 = !DILocation(line: 6, column: 25, scope: !37, inlinedAt: !74)
!82 = !DILocation(line: 7, column: 9, scope: !37, inlinedAt: !74)
!83 = !DILocation(line: 7, column: 25, scope: !41, inlinedAt: !74)
!84 = !DILocation(line: 0, scope: !41, inlinedAt: !74)
!85 = !DILocation(line: 7, column: 20, scope: !28, inlinedAt: !74)
!86 = !DILocation(line: 8, column: 25, scope: !45, inlinedAt: !74)
!87 = !DILocation(line: 9, column: 9, scope: !45, inlinedAt: !74)
!88 = !DILocation(line: 10, column: 25, scope: !48, inlinedAt: !74)
!89 = !DILocation(line: 0, scope: !28, inlinedAt: !74)
!90 = !DILocation(line: 4, column: 29, scope: !24, inlinedAt: !74)
!91 = !DILocation(line: 4, column: 23, scope: !24, inlinedAt: !74)
!92 = distinct !{!92, !76, !93, !53, !54}
!93 = !DILocation(line: 12, column: 5, scope: !20, inlinedAt: !74)
!94 = !DILocation(line: 36, column: 5, scope: !55)
!95 = !DILocation(line: 38, column: 1, scope: !55)
!96 = !DILocation(line: 0, scope: !67)
!97 = !DILocation(line: 30, column: 23, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 29, column: 33)
!99 = distinct !DILexicalBlock(scope: !67, file: !1, line: 29, column: 5)
!100 = !DILocation(line: 30, column: 9, scope: !98)
!101 = !DILocation(line: 29, column: 28, scope: !99)
!102 = !DILocation(line: 29, column: 23, scope: !99)
!103 = !DILocation(line: 29, column: 5, scope: !67)
!104 = distinct !{!104, !103, !105, !53, !54}
!105 = !DILocation(line: 35, column: 5, scope: !67)
