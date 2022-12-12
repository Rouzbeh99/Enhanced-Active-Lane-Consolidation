; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !13
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !15
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@str.2 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %c, metadata !37, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  %cmp2124 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  br i1 %cmp2124, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !48

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond1.preheader.us, !dbg !49

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us
  %j.0127.us = phi i32 [ %inc73.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.0127.us, metadata !40, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !50
  br label %for.body4.us, !dbg !48

for.body4.us:                                     ; preds = %for.cond1.preheader.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader.us ], [ %indvars.iv.next, %for.inc.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !42, metadata !DIExpression()), !dbg !50
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !51
  %0 = load i8, ptr %arrayidx.us, align 1, !dbg !51, !tbaa !55, !range !59
  %tobool.not.us = icmp eq i8 %0, 0, !dbg !51
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !60

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !61
  %arrayidx8.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !63
  %1 = load i32, ptr %arrayidx8.us, align 4, !dbg !63, !tbaa !64
  %arrayidx11.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !66
  %2 = load i32, ptr %arrayidx11.us, align 4, !dbg !66, !tbaa !64
  %3 = trunc i64 %indvars.iv to i32, !dbg !67
  %mul21.us = mul nsw i32 %2, %3, !dbg !67
  %.neg = mul i32 %1, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !68
  %4 = shl i32 %indvars.iv.tr, 1, !dbg !68
  %sub15.us = add i32 %2, %4, !dbg !68
  %add.us = add i32 %sub15.us, %mul21.us, !dbg !69
  %add25.us = add i32 %add.us, %.neg, !dbg !70
  store i32 %add25.us, ptr %arrayidx6.us, align 4, !dbg !70, !tbaa !64
  %mul43120.us.neg = sub i32 -3, %1, !dbg !71
  %add44.us.neg = mul i32 %mul43120.us.neg, %3, !dbg !71
  %5 = add i32 %1, %2
  %reass.add122.us = sub i32 %add25.us, %5
  %reass.mul123.us = shl i32 %reass.add122.us, 1
  %add37.us = add i32 %add44.us.neg, 2, !dbg !72
  %sub47.us = add i32 %add37.us, %reass.mul123.us, !dbg !73
  store i32 %sub47.us, ptr %arrayidx11.us, align 4, !dbg !73, !tbaa !64
  %6 = add nsw i32 %sub47.us, %add25.us, !dbg !74
  %7 = sub nsw i32 %1, %sub47.us, !dbg !75
  %sub61.us = shl nsw i32 %7, 1, !dbg !75
  %mul62.us = mul nsw i32 %3, %3, !dbg !76
  %add63.us = add nsw i32 %sub61.us, %mul62.us, !dbg !77
  %mul64.neg.us = mul i32 %add63.us, -3, !dbg !78
  %8 = sub i32 %6, %3, !dbg !79
  %sub65.us = shl i32 %8, 1, !dbg !79
  %sub71.us = add i32 %sub65.us, %mul64.neg.us, !dbg !80
  store i32 %sub71.us, ptr %arrayidx8.us, align 4, !dbg !80, !tbaa !64
  br label %for.inc.us, !dbg !81

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !82
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !42, metadata !DIExpression()), !dbg !50
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !83
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !48, !llvm.loop !84

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us
  %inc73.us = add nuw nsw i32 %j.0127.us, 1, !dbg !88
  call void @llvm.dbg.value(metadata i32 %inc73.us, metadata !40, metadata !DIExpression()), !dbg !47
  %exitcond131.not = icmp eq i32 %inc73.us, 10, !dbg !89
  br i1 %exitcond131.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !49, !llvm.loop !90

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void, !dbg !92
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !93 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !97, metadata !DIExpression()), !dbg !99
  %conv = sext i32 %n to i64, !dbg !100
  %mul = shl nsw i64 %conv, 2, !dbg !101
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #7, !dbg !102
  call void @llvm.dbg.value(metadata ptr %call, metadata !98, metadata !DIExpression()), !dbg !99
  %cmp = icmp eq ptr %call, null, !dbg !103
  br i1 %cmp, label %if.then, label %if.end, !dbg !105

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !106
  tail call void @exit(i32 noundef 1) #8, !dbg !108
  unreachable, !dbg !108

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !109
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !110 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !114, metadata !DIExpression()), !dbg !116
  %conv = sext i32 %n to i64, !dbg !117
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #7, !dbg !118
  call void @llvm.dbg.value(metadata ptr %call, metadata !115, metadata !DIExpression()), !dbg !116
  %cmp = icmp eq ptr %call, null, !dbg !119
  br i1 %cmp, label %if.then, label %if.end, !dbg !121

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !122
  tail call void @exit(i32 noundef 1) #8, !dbg !124
  unreachable, !dbg !124

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !126 {
entry:
  call void @llvm.dbg.value(metadata i32 5000000, metadata !130, metadata !DIExpression()), !dbg !136
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !137
  store ptr %call, ptr @a, align 8, !dbg !138, !tbaa !139
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !141
  store ptr %call1, ptr @b, align 8, !dbg !142, !tbaa !139
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !143
  store ptr %call2, ptr @c, align 8, !dbg !144, !tbaa !139
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !145
  store ptr %call3, ptr @cond, align 8, !dbg !146, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr @a, align 8, !tbaa !139
  %1 = load ptr, ptr @b, align 8, !tbaa !139
  %2 = load ptr, ptr @c, align 8, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()), !dbg !147
  br label %for.body, !dbg !148

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 5000000), !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !150
  %3 = load ptr, ptr @c, align 8, !tbaa !139
  call void @llvm.dbg.value(metadata i32 0, metadata !134, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !136
  br label %for.body17, !dbg !151

for.body:                                         ; preds = %entry, %cond.end
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !131, metadata !DIExpression()), !dbg !147
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !152
  %4 = trunc i64 %indvars.iv to i32, !dbg !155
  store i32 %4, ptr %arrayidx, align 4, !dbg !155, !tbaa !64
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !156
  store i32 2, ptr %arrayidx5, align 4, !dbg !157, !tbaa !64
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !158
  store i32 0, ptr %arrayidx7, align 4, !dbg !159, !tbaa !64
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !160
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !161

cond.false:                                       ; preds = %for.body
  %rem = urem i32 %4, 10, !dbg !162
  %cmp9 = icmp eq i32 %rem, 0, !dbg !163
  %conv = zext i1 %cmp9 to i8, !dbg !163
  br label %cond.end, !dbg !161

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !161
  %arrayidx11 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !164
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !165, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !166
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !131, metadata !DIExpression()), !dbg !147
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !167
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !148, !llvm.loop !168

for.cond.cleanup16:                               ; preds = %for.body17
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add), !dbg !170
  ret i32 0, !dbg !171

for.body17:                                       ; preds = %for.cond.cleanup, %for.body17
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body17 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !134, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !133, metadata !DIExpression()), !dbg !136
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !172
  %5 = load i32, ptr %arrayidx19, align 4, !dbg !172, !tbaa !64
  %add = add nsw i32 %5, %sum.043, !dbg !175
  call void @llvm.dbg.value(metadata i32 %add, metadata !133, metadata !DIExpression()), !dbg !136
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !134, metadata !DIExpression()), !dbg !150
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 5000000, !dbg !177
  br i1 %exitcond49.not, label %for.cond.cleanup16, label %for.body17, !dbg !151, !llvm.loop !178
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 36, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "beab8233bb95bfe1c9164deb7ec2fe7b")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 37, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 38, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 39, type: !8, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 1}
!28 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!29 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 12, type: !30, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !32, !33, !6}
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!34 = !{!35, !36, !37, !38, !39, !40, !42}
!35 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!36 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !3, line: 12, type: !32)
!37 = !DILocalVariable(name: "c", arg: 3, scope: !29, file: !3, line: 12, type: !32)
!38 = !DILocalVariable(name: "cond", arg: 4, scope: !29, file: !3, line: 13, type: !33)
!39 = !DILocalVariable(name: "n", arg: 5, scope: !29, file: !3, line: 13, type: !6)
!40 = !DILocalVariable(name: "j", scope: !41, file: !3, line: 19, type: !6)
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 5)
!42 = !DILocalVariable(name: "i", scope: !43, file: !3, line: 20, type: !6)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 20, column: 9)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 19, column: 34)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 5)
!46 = !DILocation(line: 0, scope: !29)
!47 = !DILocation(line: 0, scope: !41)
!48 = !DILocation(line: 20, column: 9, scope: !43)
!49 = !DILocation(line: 19, column: 5, scope: !41)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 21, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 21, column: 17)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 20, column: 37)
!54 = distinct !DILexicalBlock(scope: !43, file: !3, line: 20, column: 9)
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{i8 0, i8 2}
!60 = !DILocation(line: 21, column: 17, scope: !53)
!61 = !DILocation(line: 22, column: 29, scope: !62)
!62 = distinct !DILexicalBlock(scope: !52, file: !3, line: 21, column: 26)
!63 = !DILocation(line: 22, column: 40, scope: !62)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !57, i64 0}
!66 = !DILocation(line: 22, column: 49, scope: !62)
!67 = !DILocation(line: 23, column: 35, scope: !62)
!68 = !DILocation(line: 22, column: 54, scope: !62)
!69 = !DILocation(line: 22, column: 46, scope: !62)
!70 = !DILocation(line: 23, column: 22, scope: !62)
!71 = !DILocation(line: 25, column: 31, scope: !62)
!72 = !DILocation(line: 24, column: 37, scope: !62)
!73 = !DILocation(line: 25, column: 22, scope: !62)
!74 = !DILocation(line: 26, column: 33, scope: !62)
!75 = !DILocation(line: 26, column: 60, scope: !62)
!76 = !DILocation(line: 26, column: 75, scope: !62)
!77 = !DILocation(line: 26, column: 71, scope: !62)
!78 = !DILocation(line: 26, column: 48, scope: !62)
!79 = !DILocation(line: 26, column: 44, scope: !62)
!80 = !DILocation(line: 27, column: 22, scope: !62)
!81 = !DILocation(line: 28, column: 13, scope: !62)
!82 = !DILocation(line: 20, column: 32, scope: !54)
!83 = !DILocation(line: 20, column: 27, scope: !54)
!84 = distinct !{!84, !48, !85, !86, !87}
!85 = !DILocation(line: 29, column: 9, scope: !43)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 19, column: 30, scope: !45)
!89 = !DILocation(line: 19, column: 23, scope: !45)
!90 = distinct !{!90, !49, !91, !86, !87}
!91 = !DILocation(line: 30, column: 5, scope: !41)
!92 = !DILocation(line: 34, column: 1, scope: !29)
!93 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 41, type: !94, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!5, !6}
!96 = !{!97, !98}
!97 = !DILocalVariable(name: "n", arg: 1, scope: !93, file: !3, line: 41, type: !6)
!98 = !DILocalVariable(name: "ptr", scope: !93, file: !3, line: 42, type: !5)
!99 = !DILocation(line: 0, scope: !93)
!100 = !DILocation(line: 42, column: 45, scope: !93)
!101 = !DILocation(line: 42, column: 43, scope: !93)
!102 = !DILocation(line: 42, column: 24, scope: !93)
!103 = !DILocation(line: 43, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !93, file: !3, line: 43, column: 9)
!105 = !DILocation(line: 43, column: 9, scope: !93)
!106 = !DILocation(line: 44, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 43, column: 22)
!108 = !DILocation(line: 45, column: 9, scope: !107)
!109 = !DILocation(line: 47, column: 5, scope: !93)
!110 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 50, type: !111, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!8, !6}
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "n", arg: 1, scope: !110, file: !3, line: 50, type: !6)
!115 = !DILocalVariable(name: "ptr", scope: !110, file: !3, line: 51, type: !8)
!116 = !DILocation(line: 0, scope: !110)
!117 = !DILocation(line: 51, column: 48, scope: !110)
!118 = !DILocation(line: 51, column: 26, scope: !110)
!119 = !DILocation(line: 52, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !110, file: !3, line: 52, column: 9)
!121 = !DILocation(line: 52, column: 9, scope: !110)
!122 = !DILocation(line: 53, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !3, line: 52, column: 22)
!124 = !DILocation(line: 54, column: 9, scope: !123)
!125 = !DILocation(line: 56, column: 5, scope: !110)
!126 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !127, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!127 = !DISubroutineType(types: !128)
!128 = !{!6}
!129 = !{!130, !131, !133, !134}
!130 = !DILocalVariable(name: "n", scope: !126, file: !3, line: 61, type: !6)
!131 = !DILocalVariable(name: "i", scope: !132, file: !3, line: 68, type: !6)
!132 = distinct !DILexicalBlock(scope: !126, file: !3, line: 68, column: 5)
!133 = !DILocalVariable(name: "sum", scope: !126, file: !3, line: 77, type: !6)
!134 = !DILocalVariable(name: "i", scope: !135, file: !3, line: 79, type: !6)
!135 = distinct !DILexicalBlock(scope: !126, file: !3, line: 79, column: 5)
!136 = !DILocation(line: 0, scope: !126)
!137 = !DILocation(line: 63, column: 9, scope: !126)
!138 = !DILocation(line: 63, column: 7, scope: !126)
!139 = !{!140, !140, i64 0}
!140 = !{!"any pointer", !57, i64 0}
!141 = !DILocation(line: 64, column: 9, scope: !126)
!142 = !DILocation(line: 64, column: 7, scope: !126)
!143 = !DILocation(line: 65, column: 9, scope: !126)
!144 = !DILocation(line: 65, column: 7, scope: !126)
!145 = !DILocation(line: 66, column: 12, scope: !126)
!146 = !DILocation(line: 66, column: 10, scope: !126)
!147 = !DILocation(line: 0, scope: !132)
!148 = !DILocation(line: 68, column: 5, scope: !132)
!149 = !DILocation(line: 75, column: 5, scope: !126)
!150 = !DILocation(line: 0, scope: !135)
!151 = !DILocation(line: 79, column: 5, scope: !135)
!152 = !DILocation(line: 69, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 68, column: 33)
!154 = distinct !DILexicalBlock(scope: !132, file: !3, line: 68, column: 5)
!155 = !DILocation(line: 69, column: 14, scope: !153)
!156 = !DILocation(line: 70, column: 9, scope: !153)
!157 = !DILocation(line: 70, column: 14, scope: !153)
!158 = !DILocation(line: 71, column: 9, scope: !153)
!159 = !DILocation(line: 71, column: 14, scope: !153)
!160 = !DILocation(line: 72, column: 22, scope: !153)
!161 = !DILocation(line: 72, column: 20, scope: !153)
!162 = !DILocation(line: 72, column: 36, scope: !153)
!163 = !DILocation(line: 72, column: 41, scope: !153)
!164 = !DILocation(line: 72, column: 9, scope: !153)
!165 = !DILocation(line: 72, column: 17, scope: !153)
!166 = !DILocation(line: 68, column: 28, scope: !154)
!167 = !DILocation(line: 68, column: 23, scope: !154)
!168 = distinct !{!168, !148, !169, !86, !87}
!169 = !DILocation(line: 73, column: 5, scope: !132)
!170 = !DILocation(line: 83, column: 5, scope: !126)
!171 = !DILocation(line: 85, column: 5, scope: !126)
!172 = !DILocation(line: 80, column: 16, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 79, column: 33)
!174 = distinct !DILexicalBlock(scope: !135, file: !3, line: 79, column: 5)
!175 = !DILocation(line: 80, column: 13, scope: !173)
!176 = !DILocation(line: 79, column: 28, scope: !174)
!177 = !DILocation(line: 79, column: 23, scope: !174)
!178 = distinct !{!178, !151, !179, !86, !87}
!179 = !DILocation(line: 81, column: 5, scope: !135)
