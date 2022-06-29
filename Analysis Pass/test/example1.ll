; ModuleID = 'example1.c'
source_filename = "example1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], align 16
@__const.main.b = private unnamed_addr constant [8 x i32] [i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local i32 @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c, ptr nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %b, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %cond, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %n, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !25
  %cmp24 = icmp sgt i32 %n, 0, !dbg !26
  br i1 %cmp24, label %for.body.preheader, label %for.cond.cleanup, !dbg !28

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !26
  br label %for.body, !dbg !28

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret i32 undef, !dbg !29

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !22, metadata !DIExpression()), !dbg !25
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !30
  %0 = load i8, ptr %arrayidx, align 1, !dbg !30, !tbaa !33, !range !37
  %tobool.not = icmp eq i8 %0, 0, !dbg !30
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !38
  %1 = load i32, ptr %arrayidx8, align 4, !dbg !38, !tbaa !39
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !38
  %2 = load i32, ptr %arrayidx10, align 4, !dbg !38, !tbaa !39
  %add = add nsw i32 %2, %1, !dbg !41
  %mul = mul nsw i32 %2, %1, !dbg !41
  %mul.sink = select i1 %tobool.not, i32 %add, i32 %mul, !dbg !41
  %3 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !42
  store i32 %mul.sink, ptr %3, align 4, !dbg !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !45
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !22, metadata !DIExpression()), !dbg !25
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !26
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !28, !llvm.loop !46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !50 {
entry:
  %cond = alloca [8 x i8], align 8
  %c = alloca [8 x i32], align 16
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !54, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !58, metadata !DIExpression()), !dbg !66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cond) #8, !dbg !67
  call void @llvm.dbg.declare(metadata ptr %cond, metadata !59, metadata !DIExpression()), !dbg !68
  store i64 281479271743489, ptr %cond, align 8, !dbg !68
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #8, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %c, metadata !61, metadata !DIExpression()), !dbg !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %c, i8 -1, i64 32, i1 false), !dbg !70
  call void @llvm.dbg.value(metadata i32 8, metadata !62, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !17, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !18, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr %cond, metadata !20, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 8, metadata !21, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !22, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.value(metadata i64 0, metadata !22, metadata !DIExpression()), !dbg !74
  store i32 9, ptr %c, align 16, !dbg !75
  call void @llvm.dbg.value(metadata i64 1, metadata !22, metadata !DIExpression()), !dbg !74
  br label %for.body.i.for.body.i_crit_edge, !dbg !76

for.body.i.for.body.i_crit_edge:                  ; preds = %entry, %for.body.i.for.body.i_crit_edge
  %indvars.iv.next.i11 = phi i64 [ 1, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i.phi.trans.insert = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv.next.i11
  %.pre = load i8, ptr %arrayidx.i.phi.trans.insert, align 1, !dbg !77, !tbaa !33, !range !37
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i11, metadata !22, metadata !DIExpression()), !dbg !74
  %tobool.not.i = icmp eq i8 %.pre, 0, !dbg !77
  %arrayidx8.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.next.i11, !dbg !78
  %0 = load i32, ptr %arrayidx8.i, align 4, !dbg !78, !tbaa !39
  %arrayidx10.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.next.i11, !dbg !78
  %1 = load i32, ptr %arrayidx10.i, align 4, !dbg !78, !tbaa !39
  %add.i = add nsw i32 %1, %0, !dbg !79
  %mul.i = mul nsw i32 %1, %0, !dbg !79
  %mul.sink.i = select i1 %tobool.not.i, i32 %add.i, i32 %mul.i, !dbg !79
  %2 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next.i11, !dbg !80
  store i32 %mul.sink.i, ptr %2, align 4, !dbg !75
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i11, 1, !dbg !81
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !22, metadata !DIExpression()), !dbg !74
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !82
  br i1 %exitcond.not.i, label %for.body, label %for.body.i.for.body.i_crit_edge, !dbg !76, !llvm.loop !83

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #8, !dbg !86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cond) #8, !dbg !86
  ret i32 0, !dbg !86

for.body:                                         ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !63, metadata !DIExpression()), !dbg !87
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !88
  %3 = load i32, ptr %arrayidx, align 4, !dbg !88, !tbaa !39
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %3), !dbg !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !92
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !63, metadata !DIExpression()), !dbg !87
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !93
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !94, !llvm.loop !95
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "example1.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "c1d25e166863d3c8e7989efe9c25ae69")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !10, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !13, !13, !14, !12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 4, type: !13)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !1, line: 4, type: !13)
!19 = !DILocalVariable(name: "c", arg: 3, scope: !9, file: !1, line: 4, type: !13)
!20 = !DILocalVariable(name: "cond", arg: 4, scope: !9, file: !1, line: 4, type: !14)
!21 = !DILocalVariable(name: "n", arg: 5, scope: !9, file: !1, line: 4, type: !12)
!22 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 5, type: !12)
!23 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 5)
!24 = !DILocation(line: 0, scope: !9)
!25 = !DILocation(line: 0, scope: !23)
!26 = !DILocation(line: 5, column: 23, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 5, column: 5)
!28 = !DILocation(line: 5, column: 5, scope: !23)
!29 = !DILocation(line: 12, column: 1, scope: !9)
!30 = !DILocation(line: 6, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 6, column: 13)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 5, column: 33)
!33 = !{!34, !34, i64 0}
!34 = !{!"_Bool", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{i8 0, i8 2}
!38 = !DILocation(line: 0, scope: !31)
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !35, i64 0}
!41 = !DILocation(line: 6, column: 13, scope: !32)
!42 = !DILocation(line: 9, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 16)
!44 = !DILocation(line: 9, column: 18, scope: !43)
!45 = !DILocation(line: 5, column: 29, scope: !27)
!46 = distinct !{!46, !28, !47, !48, !49}
!47 = !DILocation(line: 11, column: 5, scope: !23)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 14, type: !51, scopeLine: 14, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{!12}
!53 = !{!54, !58, !59, !61, !62, !63}
!54 = !DILocalVariable(name: "a", scope: !50, file: !1, line: 15, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DILocalVariable(name: "b", scope: !50, file: !1, line: 16, type: !55)
!59 = !DILocalVariable(name: "cond", scope: !50, file: !1, line: 17, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !56)
!61 = !DILocalVariable(name: "c", scope: !50, file: !1, line: 18, type: !55)
!62 = !DILocalVariable(name: "n", scope: !50, file: !1, line: 20, type: !12)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 23, type: !12)
!64 = distinct !DILexicalBlock(scope: !50, file: !1, line: 23, column: 5)
!65 = !DILocation(line: 15, column: 9, scope: !50)
!66 = !DILocation(line: 16, column: 9, scope: !50)
!67 = !DILocation(line: 17, column: 5, scope: !50)
!68 = !DILocation(line: 17, column: 10, scope: !50)
!69 = !DILocation(line: 18, column: 5, scope: !50)
!70 = !DILocation(line: 18, column: 9, scope: !50)
!71 = !DILocation(line: 0, scope: !50)
!72 = !DILocation(line: 0, scope: !9, inlinedAt: !73)
!73 = distinct !DILocation(line: 21, column: 5, scope: !50)
!74 = !DILocation(line: 0, scope: !23, inlinedAt: !73)
!75 = !DILocation(line: 9, column: 18, scope: !43, inlinedAt: !73)
!76 = !DILocation(line: 5, column: 5, scope: !23, inlinedAt: !73)
!77 = !DILocation(line: 6, column: 13, scope: !31, inlinedAt: !73)
!78 = !DILocation(line: 0, scope: !31, inlinedAt: !73)
!79 = !DILocation(line: 6, column: 13, scope: !32, inlinedAt: !73)
!80 = !DILocation(line: 9, column: 13, scope: !43, inlinedAt: !73)
!81 = !DILocation(line: 5, column: 29, scope: !27, inlinedAt: !73)
!82 = !DILocation(line: 5, column: 23, scope: !27, inlinedAt: !73)
!83 = distinct !{!83, !76, !84, !48, !49}
!84 = !DILocation(line: 11, column: 5, scope: !23, inlinedAt: !73)
!85 = !DILocation(line: 26, column: 5, scope: !50)
!86 = !DILocation(line: 28, column: 1, scope: !50)
!87 = !DILocation(line: 0, scope: !64)
!88 = !DILocation(line: 24, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 23, column: 33)
!90 = distinct !DILexicalBlock(scope: !64, file: !1, line: 23, column: 5)
!91 = !DILocation(line: 24, column: 9, scope: !89)
!92 = !DILocation(line: 23, column: 28, scope: !90)
!93 = !DILocation(line: 23, column: 23, scope: !90)
!94 = !DILocation(line: 23, column: 5, scope: !64)
!95 = distinct !{!95, !94, !96, !48, !49}
!96 = !DILocation(line: 25, column: 5, scope: !64)
