; ModuleID = 'vectorized.ll'
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
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %c, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !43
  %cmp111 = icmp sgt i32 %n, 0, !dbg !44
  br i1 %cmp111, label %for.body.preheader, label %for.cond.cleanup, !dbg !46

for.body.preheader:                               ; preds = %entry
  %0 = tail call i32 @llvm.vscale.i32()
  %1 = shl i32 %0, 2
  %step.vector = tail call <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32()
  %2 = insertelement <vscale x 4 x i32> poison, i32 %1, i64 0
  %stepVector.updated.value = shufflevector <vscale x 4 x i32> %2, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %3 = insertelement <vscale x 4 x i32> poison, i32 %n, i64 0
  %vectorized.trip.count = shufflevector <vscale x 4 x i32> %3, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %4 = icmp ugt <vscale x 4 x i32> %vectorized.trip.count, %step.vector
  br label %vectorizing.block

for.cond.cleanup:                                 ; preds = %vectorizing.block, %entry
  ret void, !dbg !47

vectorizing.block:                                ; preds = %vectorizing.block, %for.body.preheader
  %5 = phi i32 [ 0, %for.body.preheader ], [ %40, %vectorizing.block ]
  %6 = phi <vscale x 4 x i1> [ %4, %for.body.preheader ], [ %next.vector.iv.predicate, %vectorizing.block ]
  %loop.StepVec = phi <vscale x 4 x i32> [ %step.vector, %for.body.preheader ], [ %41, %vectorizing.block ]
  %7 = sext i32 %5 to i64, !dbg !48
  %8 = getelementptr inbounds i8, ptr %cond, i64 %7, !dbg !48
  %9 = tail call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr %8, i32 16, <vscale x 4 x i1> %6, <vscale x 4 x i8> undef)
  %10 = trunc <vscale x 4 x i8> %9 to <vscale x 4 x i1>
  %11 = and <vscale x 4 x i1> %6, %10
  %12 = getelementptr inbounds i32, ptr %a, i64 %7, !dbg !51
  %13 = getelementptr inbounds i32, ptr %c, i64 %7, !dbg !53
  %14 = getelementptr inbounds i32, ptr %b, i64 %7, !dbg !54
  %15 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %12, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %16 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %13, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %17 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %14, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %18 = sub <vscale x 4 x i32> %16, %17
  %19 = mul <vscale x 4 x i32> %18, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %20 = add <vscale x 4 x i32> %15, %loop.StepVec
  %21 = sub <vscale x 4 x i32> %20, %16
  %22 = shl <vscale x 4 x i32> %21, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %23 = sub <vscale x 4 x i32> %22, %17
  %24 = add <vscale x 4 x i32> %23, %19
  %25 = srem <vscale x 4 x i32> %24, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %25, ptr %12, i32 16, <vscale x 4 x i1> %11)
  %26 = mul <vscale x 4 x i32> %loop.StepVec, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %27 = sub <vscale x 4 x i32> %17, %16
  %28 = add <vscale x 4 x i32> %27, %25
  %29 = shl <vscale x 4 x i32> %28, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = add <vscale x 4 x i32> %26, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %31 = add <vscale x 4 x i32> %30, %16
  %32 = add <vscale x 4 x i32> %31, %29
  %33 = srem <vscale x 4 x i32> %32, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %33, ptr %14, i32 16, <vscale x 4 x i1> %11)
  %34 = shl <vscale x 4 x i32> %33, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %35 = add <vscale x 4 x i32> %16, %loop.StepVec
  %36 = mul <vscale x 4 x i32> %35, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 6, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %37 = add <vscale x 4 x i32> %25, %36
  %38 = add <vscale x 4 x i32> %37, %34
  %39 = srem <vscale x 4 x i32> %38, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %39, ptr %13, i32 16, <vscale x 4 x i1> %11)
  %40 = add i32 %5, %1
  %41 = add <vscale x 4 x i32> %loop.StepVec, %stepVector.updated.value
  %next.vector.iv.predicate = icmp ult <vscale x 4 x i32> %41, %vectorized.trip.count
  %vectorize.term.cond.not = icmp ult i32 %40, %n
  br i1 %vectorize.term.cond.not, label %vectorizing.block, label %for.cond.cleanup
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !59, metadata !DIExpression()), !dbg !61
  %conv = sext i32 %n to i64, !dbg !62
  %mul = shl nsw i64 %conv, 2, !dbg !63
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !64
  call void @llvm.dbg.value(metadata ptr %call, metadata !60, metadata !DIExpression()), !dbg !61
  %cmp = icmp eq ptr %call, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !67

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !68
  tail call void @exit(i32 noundef 1) #11, !dbg !70
  unreachable, !dbg !70

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !71
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !76, metadata !DIExpression()), !dbg !78
  %conv = sext i32 %n to i64, !dbg !79
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #10, !dbg !80
  call void @llvm.dbg.value(metadata ptr %call, metadata !77, metadata !DIExpression()), !dbg !78
  %cmp = icmp eq ptr %call, null, !dbg !81
  br i1 %cmp, label %if.then, label %if.end, !dbg !83

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !84
  tail call void @exit(i32 noundef 1) #11, !dbg !86
  unreachable, !dbg !86

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !87
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !88 {
entry:
  call void @llvm.dbg.value(metadata i32 5000000, metadata !92, metadata !DIExpression()), !dbg !98
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !99
  store ptr %call, ptr @a, align 8, !dbg !100, !tbaa !101
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !105
  store ptr %call1, ptr @b, align 8, !dbg !106, !tbaa !101
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !107
  store ptr %call2, ptr @c, align 8, !dbg !108, !tbaa !101
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !109
  store ptr %call3, ptr @cond, align 8, !dbg !110, !tbaa !101
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !111
  %0 = load ptr, ptr @a, align 8, !tbaa !101
  %1 = load ptr, ptr @b, align 8, !tbaa !101
  %2 = load ptr, ptr @c, align 8, !tbaa !101
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()), !dbg !111
  br label %for.body, !dbg !112

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 5000000), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !114
  %3 = load ptr, ptr @c, align 8, !tbaa !101
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !98
  br label %for.body18, !dbg !115

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !93, metadata !DIExpression()), !dbg !111
  %4 = trunc i64 %indvars.iv to i32, !dbg !116
  %rem = urem i32 %4, 10, !dbg !116
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !119
  store i32 %rem, ptr %arrayidx, align 4, !dbg !120, !tbaa !121
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !123
  store i32 2, ptr %arrayidx5, align 4, !dbg !124, !tbaa !121
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !125
  store i32 0, ptr %arrayidx7, align 4, !dbg !126, !tbaa !121
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !127
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !128

cond.false:                                       ; preds = %for.body
  %cmp10 = icmp eq i32 %rem, 0, !dbg !129
  %conv = zext i1 %cmp10 to i8, !dbg !129
  br label %cond.end, !dbg !128

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !128
  %arrayidx12 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !130
  store i8 %cond, ptr %arrayidx12, align 1, !dbg !131, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !93, metadata !DIExpression()), !dbg !111
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !135
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !112, !llvm.loop !136

for.cond.cleanup17:                               ; preds = %for.body18
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add), !dbg !140
  ret i32 0, !dbg !141

for.body18:                                       ; preds = %for.body18, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body18 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !96, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !95, metadata !DIExpression()), !dbg !98
  %arrayidx20 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !142
  %5 = load i32, ptr %arrayidx20, align 4, !dbg !142, !tbaa !121
  %add = add nsw i32 %5, %sum.043, !dbg !145
  call void @llvm.dbg.value(metadata i32 %add, metadata !95, metadata !DIExpression()), !dbg !98
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !96, metadata !DIExpression()), !dbg !114
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 5000000, !dbg !147
  br i1 %exitcond49.not, label %for.cond.cleanup17, label %for.body18, !dbg !115, !llvm.loop !148
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32() #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i8>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #9

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 32, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "d54db38f17bc603e04c98e460de139f9")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 33, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 34, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 35, type: !8, isLocal: false, isDefinition: true)
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
!34 = !{!35, !36, !37, !38, !39, !40}
!35 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!36 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !3, line: 12, type: !32)
!37 = !DILocalVariable(name: "c", arg: 3, scope: !29, file: !3, line: 12, type: !32)
!38 = !DILocalVariable(name: "cond", arg: 4, scope: !29, file: !3, line: 13, type: !33)
!39 = !DILocalVariable(name: "n", arg: 5, scope: !29, file: !3, line: 13, type: !6)
!40 = !DILocalVariable(name: "i", scope: !41, file: !3, line: 18, type: !6)
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 18, column: 5)
!42 = !DILocation(line: 0, scope: !29)
!43 = !DILocation(line: 0, scope: !41)
!44 = !DILocation(line: 18, column: 23, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 18, column: 5)
!46 = !DILocation(line: 18, column: 5, scope: !41)
!47 = !DILocation(line: 30, column: 1, scope: !29)
!48 = !DILocation(line: 19, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !50, file: !3, line: 19, column: 13)
!50 = distinct !DILexicalBlock(scope: !45, file: !3, line: 18, column: 33)
!51 = !DILocation(line: 20, column: 25, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !3, line: 19, column: 22)
!53 = !DILocation(line: 20, column: 36, scope: !52)
!54 = !DILocation(line: 20, column: 45, scope: !52)
!55 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 37, type: !56, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!56 = !DISubroutineType(types: !57)
!57 = !{!5, !6}
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "n", arg: 1, scope: !55, file: !3, line: 37, type: !6)
!60 = !DILocalVariable(name: "ptr", scope: !55, file: !3, line: 38, type: !5)
!61 = !DILocation(line: 0, scope: !55)
!62 = !DILocation(line: 38, column: 45, scope: !55)
!63 = !DILocation(line: 38, column: 43, scope: !55)
!64 = !DILocation(line: 38, column: 24, scope: !55)
!65 = !DILocation(line: 39, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !55, file: !3, line: 39, column: 9)
!67 = !DILocation(line: 39, column: 9, scope: !55)
!68 = !DILocation(line: 40, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !3, line: 39, column: 22)
!70 = !DILocation(line: 41, column: 9, scope: !69)
!71 = !DILocation(line: 43, column: 5, scope: !55)
!72 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 46, type: !73, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!8, !6}
!75 = !{!76, !77}
!76 = !DILocalVariable(name: "n", arg: 1, scope: !72, file: !3, line: 46, type: !6)
!77 = !DILocalVariable(name: "ptr", scope: !72, file: !3, line: 47, type: !8)
!78 = !DILocation(line: 0, scope: !72)
!79 = !DILocation(line: 47, column: 48, scope: !72)
!80 = !DILocation(line: 47, column: 26, scope: !72)
!81 = !DILocation(line: 48, column: 13, scope: !82)
!82 = distinct !DILexicalBlock(scope: !72, file: !3, line: 48, column: 9)
!83 = !DILocation(line: 48, column: 9, scope: !72)
!84 = !DILocation(line: 49, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !3, line: 48, column: 22)
!86 = !DILocation(line: 50, column: 9, scope: !85)
!87 = !DILocation(line: 52, column: 5, scope: !72)
!88 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !89, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !91)
!89 = !DISubroutineType(types: !90)
!90 = !{!6}
!91 = !{!92, !93, !95, !96}
!92 = !DILocalVariable(name: "n", scope: !88, file: !3, line: 57, type: !6)
!93 = !DILocalVariable(name: "i", scope: !94, file: !3, line: 64, type: !6)
!94 = distinct !DILexicalBlock(scope: !88, file: !3, line: 64, column: 5)
!95 = !DILocalVariable(name: "sum", scope: !88, file: !3, line: 73, type: !6)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 75, type: !6)
!97 = distinct !DILexicalBlock(scope: !88, file: !3, line: 75, column: 5)
!98 = !DILocation(line: 0, scope: !88)
!99 = !DILocation(line: 59, column: 9, scope: !88)
!100 = !DILocation(line: 59, column: 7, scope: !88)
!101 = !{!102, !102, i64 0}
!102 = !{!"any pointer", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !DILocation(line: 60, column: 9, scope: !88)
!106 = !DILocation(line: 60, column: 7, scope: !88)
!107 = !DILocation(line: 61, column: 9, scope: !88)
!108 = !DILocation(line: 61, column: 7, scope: !88)
!109 = !DILocation(line: 62, column: 12, scope: !88)
!110 = !DILocation(line: 62, column: 10, scope: !88)
!111 = !DILocation(line: 0, scope: !94)
!112 = !DILocation(line: 64, column: 5, scope: !94)
!113 = !DILocation(line: 71, column: 5, scope: !88)
!114 = !DILocation(line: 0, scope: !97)
!115 = !DILocation(line: 75, column: 5, scope: !97)
!116 = !DILocation(line: 65, column: 18, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 64, column: 33)
!118 = distinct !DILexicalBlock(scope: !94, file: !3, line: 64, column: 5)
!119 = !DILocation(line: 65, column: 9, scope: !117)
!120 = !DILocation(line: 65, column: 14, scope: !117)
!121 = !{!122, !122, i64 0}
!122 = !{!"int", !103, i64 0}
!123 = !DILocation(line: 66, column: 9, scope: !117)
!124 = !DILocation(line: 66, column: 14, scope: !117)
!125 = !DILocation(line: 67, column: 9, scope: !117)
!126 = !DILocation(line: 67, column: 14, scope: !117)
!127 = !DILocation(line: 68, column: 22, scope: !117)
!128 = !DILocation(line: 68, column: 20, scope: !117)
!129 = !DILocation(line: 68, column: 41, scope: !117)
!130 = !DILocation(line: 68, column: 9, scope: !117)
!131 = !DILocation(line: 68, column: 17, scope: !117)
!132 = !{!133, !133, i64 0}
!133 = !{!"_Bool", !103, i64 0}
!134 = !DILocation(line: 64, column: 28, scope: !118)
!135 = !DILocation(line: 64, column: 23, scope: !118)
!136 = distinct !{!136, !112, !137, !138, !139}
!137 = !DILocation(line: 69, column: 5, scope: !94)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 79, column: 5, scope: !88)
!141 = !DILocation(line: 81, column: 5, scope: !88)
!142 = !DILocation(line: 76, column: 16, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !3, line: 75, column: 33)
!144 = distinct !DILexicalBlock(scope: !97, file: !3, line: 75, column: 5)
!145 = !DILocation(line: 76, column: 13, scope: !143)
!146 = !DILocation(line: 75, column: 28, scope: !144)
!147 = !DILocation(line: 75, column: 23, scope: !144)
!148 = distinct !{!148, !115, !149, !138, !139}
!149 = !DILocation(line: 77, column: 5, scope: !97)
