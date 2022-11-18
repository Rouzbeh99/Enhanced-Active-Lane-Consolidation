; ModuleID = 'alc_applied.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %b, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %c, metadata !26, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %cond, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %n, metadata !28, metadata !DIExpression()), !dbg !31
  tail call void @m5_reset_stats(i64 noundef 0, i64 noundef 0) #8, !dbg !32
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !33
  %cmp51 = icmp sgt i32 %n, 0, !dbg !34
  br i1 %cmp51, label %for.body.preheader, label %for.cond.cleanup, !dbg !36

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !34
  %0 = tail call i64 @llvm.vscale.i64(), !dbg !36
  %1 = shl i64 %0, 1, !dbg !36
  %.not = icmp ugt i64 %1, %wide.trip.count, !dbg !36
  br i1 %.not, label %for.body.preheader2, label %Pre.Vectorization, !dbg !36

for.body.preheader2:                              ; preds = %middle.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %27, %middle.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !36

for.cond.cleanup:                                 ; preds = %for.inc, %middle.block, %entry
  tail call void @m5_dump_stats(i64 noundef 0, i64 noundef 0) #8, !dbg !37
  ret void, !dbg !38

for.body:                                         ; preds = %for.body.preheader2, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !29, metadata !DIExpression()), !dbg !33
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !39
  %2 = load i8, ptr %arrayidx, align 1, !dbg !39, !tbaa !42, !range !46
  %tobool.not = icmp eq i8 %2, 0, !dbg !39
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !47

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !48
  %3 = load i32, ptr %arrayidx2, align 4, !dbg !48, !tbaa !50
  %mul = mul nsw i32 %3, 18, !dbg !52
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !53
  %4 = load i32, ptr %arrayidx4, align 4, !dbg !53, !tbaa !50
  %mul5 = shl nsw i32 %4, 1, !dbg !54
  %add = add nsw i32 %mul5, %mul, !dbg !55
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !56
  %5 = load i32, ptr %arrayidx7, align 4, !dbg !56, !tbaa !50
  %mul10.neg = mul i32 %3, -4, !dbg !57
  %sub = add i32 %5, %mul10.neg, !dbg !58
  %div = sdiv i32 %add, %sub, !dbg !59
  store i32 %div, ptr %arrayidx2, align 4, !dbg !60, !tbaa !50
  %mul15 = mul nsw i32 %5, 5, !dbg !61
  %mul18 = mul nsw i32 %mul15, %div, !dbg !62
  store i32 %mul18, ptr %arrayidx7, align 4, !dbg !63, !tbaa !50
  %mul23 = shl nsw i32 %mul18, 1, !dbg !64
  %mul26.neg = mul i32 %div, -3, !dbg !65
  %sub27 = add i32 %mul23, %mul26.neg, !dbg !66
  store i32 %sub27, ptr %arrayidx4, align 4, !dbg !67, !tbaa !50
  br label %for.inc, !dbg !68

middle.block:                                     ; preds = %vectorizing.block
  %condition = icmp eq i64 %num.non-vectorized.iterations, 0
  br i1 %condition, label %for.cond.cleanup, label %for.body.preheader2

Pre.Vectorization:                                ; preds = %for.body.preheader
  %num.non-vectorized.iterations = urem i64 %wide.trip.count, %1
  %num.vectorized.iterations = sub nsw i64 %wide.trip.count, %num.non-vectorized.iterations
  br label %vectorizing.block

vectorizing.block:                                ; preds = %vectorizing.block, %Pre.Vectorization
  %6 = phi i64 [ 0, %Pre.Vectorization ], [ %27, %vectorizing.block ]
  %7 = getelementptr inbounds i8, ptr %cond, i64 %6, !dbg !39
  %8 = load <vscale x 2 x i8>, ptr %7, align 2
  %9 = icmp ne <vscale x 2 x i8> %8, zeroinitializer
  %10 = getelementptr inbounds i32, ptr %a, i64 %6, !dbg !48
  %11 = getelementptr inbounds i32, ptr %c, i64 %6, !dbg !53
  %12 = getelementptr inbounds i32, ptr %b, i64 %6, !dbg !56
  %13 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %10, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %14 = mul <vscale x 2 x i32> %13, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %15 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %11, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %16 = shl <vscale x 2 x i32> %15, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %17 = add <vscale x 2 x i32> %16, %14
  %18 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %12, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %19 = mul <vscale x 2 x i32> %13, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %20 = add <vscale x 2 x i32> %18, %19
  %21 = sdiv <vscale x 2 x i32> %17, %20
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %21, ptr %10, i32 8, <vscale x 2 x i1> %9)
  %22 = mul <vscale x 2 x i32> %18, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %23 = mul <vscale x 2 x i32> %22, %21
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %23, ptr %12, i32 8, <vscale x 2 x i1> %9)
  %24 = shl <vscale x 2 x i32> %23, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %25 = mul <vscale x 2 x i32> %21, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %26 = add <vscale x 2 x i32> %24, %25
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %26, ptr %11, i32 8, <vscale x 2 x i1> %9)
  %27 = add i64 %6, %1
  %vectorize.term.cond.not = icmp ult i64 %27, %num.vectorized.iterations
  br i1 %vectorize.term.cond.not, label %vectorizing.block, label %middle.block

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !69
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !29, metadata !DIExpression()), !dbg !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !34
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !36, !llvm.loop !70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !74 void @m5_reset_stats(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !84 void @m5_dump_stats(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !85 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !89, metadata !DIExpression()), !dbg !115
  %vla40 = alloca [8192 x i32], align 4, !dbg !116
  call void @llvm.dbg.value(metadata i64 8192, metadata !90, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %vla40, metadata !91, metadata !DIExpression()), !dbg !117
  %vla141 = alloca [8192 x i32], align 4, !dbg !118
  call void @llvm.dbg.value(metadata i64 8192, metadata !95, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %vla141, metadata !96, metadata !DIExpression()), !dbg !119
  %vla242 = alloca [8192 x i32], align 4, !dbg !120
  call void @llvm.dbg.value(metadata i64 8192, metadata !100, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %vla242, metadata !101, metadata !DIExpression()), !dbg !121
  %vla343 = alloca [8192 x i8], align 1, !dbg !122
  call void @llvm.dbg.value(metadata i64 8192, metadata !105, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata ptr %vla343, metadata !106, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()), !dbg !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla242, i8 0, i64 32768, i1 false), !dbg !125, !tbaa !50
  br label %for.body, !dbg !128

for.cond.cleanup:                                 ; preds = %cond.end
  call void @foo(ptr noundef nonnull %vla40, ptr noundef nonnull %vla141, ptr noundef nonnull %vla242, ptr noundef nonnull %vla343, i32 noundef 8192), !dbg !129
  call void @llvm.dbg.value(metadata i32 0, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !130
  br label %for.body17, !dbg !131

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  %indvars49 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !110, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i32, ptr %vla40, i64 %indvars.iv, !dbg !132
  store i32 %indvars49, ptr %arrayidx, align 4, !dbg !133, !tbaa !50
  %arrayidx5 = getelementptr inbounds i32, ptr %vla141, i64 %indvars.iv, !dbg !134
  store i32 2, ptr %arrayidx5, align 4, !dbg !135, !tbaa !50
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !136
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !137

cond.false:                                       ; preds = %for.body
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !138
  %rem44 = urem i16 %rem.lhs.trunc, 10, !dbg !138
  %cmp9 = icmp eq i16 %rem44, 0, !dbg !139
  %conv = zext i1 %cmp9 to i8, !dbg !139
  br label %cond.end, !dbg !137

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !137
  %arrayidx11 = getelementptr inbounds i8, ptr %vla343, i64 %indvars.iv, !dbg !140
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !141, !tbaa !42
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !142
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !110, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !143
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !128, !llvm.loop !144

for.cond.cleanup16:                               ; preds = %for.body17
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add), !dbg !146
  ret i32 0, !dbg !147

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv50 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next51, %for.body17 ]
  %sum.047 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv50, metadata !113, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 %sum.047, metadata !112, metadata !DIExpression()), !dbg !115
  %arrayidx19 = getelementptr inbounds i32, ptr %vla242, i64 %indvars.iv50, !dbg !148
  %0 = load i32, ptr %arrayidx19, align 4, !dbg !148, !tbaa !50
  %add = add nsw i32 %0, %sum.047, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add, metadata !112, metadata !DIExpression()), !dbg !115
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next51, metadata !113, metadata !DIExpression()), !dbg !130
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 8192, !dbg !153
  br i1 %exitcond53.not, label %for.cond.cleanup16, label %for.body17, !dbg !131, !llvm.loop !154
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #6

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>, ptr, i32 immarg, <vscale x 2 x i1>) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "e65db2351e39344e9715ad4960858770")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 8, type: !15, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !20, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 8, type: !17)
!25 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 8, type: !17)
!26 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 8, type: !17)
!27 = !DILocalVariable(name: "cond", arg: 4, scope: !14, file: !1, line: 8, type: !20)
!28 = !DILocalVariable(name: "n", arg: 5, scope: !14, file: !1, line: 8, type: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 13, type: !19)
!30 = distinct !DILexicalBlock(scope: !14, file: !1, line: 13, column: 5)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocation(line: 12, column: 5, scope: !14)
!33 = !DILocation(line: 0, scope: !30)
!34 = !DILocation(line: 13, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 5)
!36 = !DILocation(line: 13, column: 5, scope: !30)
!37 = !DILocation(line: 20, column: 5, scope: !14)
!38 = !DILocation(line: 23, column: 1, scope: !14)
!39 = !DILocation(line: 14, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 13)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 33)
!42 = !{!43, !43, i64 0}
!43 = !{!"_Bool", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{i8 0, i8 2}
!47 = !DILocation(line: 14, column: 13, scope: !41)
!48 = !DILocation(line: 15, column: 26, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 14, column: 22)
!50 = !{!51, !51, i64 0}
!51 = !{!"int", !44, i64 0}
!52 = !DILocation(line: 15, column: 24, scope: !49)
!53 = !DILocation(line: 15, column: 37, scope: !49)
!54 = !DILocation(line: 15, column: 35, scope: !49)
!55 = !DILocation(line: 15, column: 31, scope: !49)
!56 = !DILocation(line: 15, column: 46, scope: !49)
!57 = !DILocation(line: 15, column: 55, scope: !49)
!58 = !DILocation(line: 15, column: 51, scope: !49)
!59 = !DILocation(line: 15, column: 43, scope: !49)
!60 = !DILocation(line: 15, column: 18, scope: !49)
!61 = !DILocation(line: 16, column: 22, scope: !49)
!62 = !DILocation(line: 16, column: 29, scope: !49)
!63 = !DILocation(line: 16, column: 18, scope: !49)
!64 = !DILocation(line: 17, column: 22, scope: !49)
!65 = !DILocation(line: 17, column: 33, scope: !49)
!66 = !DILocation(line: 17, column: 29, scope: !49)
!67 = !DILocation(line: 17, column: 18, scope: !49)
!68 = !DILocation(line: 18, column: 9, scope: !49)
!69 = !DILocation(line: 13, column: 28, scope: !35)
!70 = distinct !{!70, !36, !71, !72, !73}
!71 = !DILocation(line: 19, column: 5, scope: !30)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !DISubprogram(name: "m5_reset_stats", scope: !75, file: !75, line: 55, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!75 = !DIFile(filename: "GEM5/gem5-arm-sve/gem5/include/gem5/m5ops.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "0d6f1213d2a5fe07f4954aee626f0ea8")
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !79, line: 27, baseType: !80)
!79 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !81, line: 45, baseType: !82)
!81 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!82 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!83 = !{}
!84 = !DISubprogram(name: "m5_dump_stats", scope: !75, file: !75, line: 56, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !83)
!85 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 26, type: !86, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{!19}
!88 = !{!89, !90, !91, !95, !96, !100, !101, !105, !106, !110, !112, !113}
!89 = !DILocalVariable(name: "n", scope: !85, file: !1, line: 28, type: !19)
!90 = !DILocalVariable(name: "__vla_expr0", scope: !85, type: !82, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "a", scope: !85, file: !1, line: 30, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: !90)
!95 = !DILocalVariable(name: "__vla_expr1", scope: !85, type: !82, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "b", scope: !85, file: !1, line: 31, type: !97)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: !95)
!100 = !DILocalVariable(name: "__vla_expr2", scope: !85, type: !82, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "c", scope: !85, file: !1, line: 32, type: !102)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: !100)
!105 = !DILocalVariable(name: "__vla_expr3", scope: !85, type: !82, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "cond", scope: !85, file: !1, line: 33, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: !105)
!110 = !DILocalVariable(name: "i", scope: !111, file: !1, line: 35, type: !19)
!111 = distinct !DILexicalBlock(scope: !85, file: !1, line: 35, column: 5)
!112 = !DILocalVariable(name: "sum", scope: !85, file: !1, line: 45, type: !19)
!113 = !DILocalVariable(name: "i", scope: !114, file: !1, line: 47, type: !19)
!114 = distinct !DILexicalBlock(scope: !85, file: !1, line: 47, column: 5)
!115 = !DILocation(line: 0, scope: !85)
!116 = !DILocation(line: 30, column: 5, scope: !85)
!117 = !DILocation(line: 30, column: 9, scope: !85)
!118 = !DILocation(line: 31, column: 5, scope: !85)
!119 = !DILocation(line: 31, column: 9, scope: !85)
!120 = !DILocation(line: 32, column: 5, scope: !85)
!121 = !DILocation(line: 32, column: 9, scope: !85)
!122 = !DILocation(line: 33, column: 5, scope: !85)
!123 = !DILocation(line: 33, column: 10, scope: !85)
!124 = !DILocation(line: 0, scope: !111)
!125 = !DILocation(line: 38, column: 14, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 35, column: 33)
!127 = distinct !DILexicalBlock(scope: !111, file: !1, line: 35, column: 5)
!128 = !DILocation(line: 35, column: 5, scope: !111)
!129 = !DILocation(line: 43, column: 5, scope: !85)
!130 = !DILocation(line: 0, scope: !114)
!131 = !DILocation(line: 47, column: 5, scope: !114)
!132 = !DILocation(line: 36, column: 9, scope: !126)
!133 = !DILocation(line: 36, column: 14, scope: !126)
!134 = !DILocation(line: 37, column: 9, scope: !126)
!135 = !DILocation(line: 37, column: 14, scope: !126)
!136 = !DILocation(line: 39, column: 22, scope: !126)
!137 = !DILocation(line: 39, column: 20, scope: !126)
!138 = !DILocation(line: 39, column: 36, scope: !126)
!139 = !DILocation(line: 39, column: 41, scope: !126)
!140 = !DILocation(line: 39, column: 9, scope: !126)
!141 = !DILocation(line: 39, column: 17, scope: !126)
!142 = !DILocation(line: 35, column: 28, scope: !127)
!143 = !DILocation(line: 35, column: 23, scope: !127)
!144 = distinct !{!144, !128, !145, !72, !73}
!145 = !DILocation(line: 40, column: 5, scope: !111)
!146 = !DILocation(line: 51, column: 5, scope: !85)
!147 = !DILocation(line: 55, column: 1, scope: !85)
!148 = !DILocation(line: 48, column: 16, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 47, column: 33)
!150 = distinct !DILexicalBlock(scope: !114, file: !1, line: 47, column: 5)
!151 = !DILocation(line: 48, column: 13, scope: !149)
!152 = !DILocation(line: 47, column: 28, scope: !150)
!153 = !DILocation(line: 47, column: 23, scope: !150)
!154 = distinct !{!154, !131, !155, !72, !73}
!155 = !DILocation(line: 49, column: 5, scope: !114)
