; ModuleID = 'compiled_with_O3.ll'
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
  %wide.trip.count = zext i32 %n to i64, !dbg !44
  br label %Pre.Vectorization, !dbg !46

for.cond.cleanup.loopexit:                        ; preds = %vectorizing.block, %for.inc
  br label %for.cond.cleanup, !dbg !47

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !47

for.body:                                         ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !40, metadata !DIExpression()), !dbg !43
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv.next, !dbg !48
  %0 = load i8, ptr %arrayidx, align 1, !dbg !48, !tbaa !51, !range !55
  %tobool.not = icmp eq i8 %0, 0, !dbg !48
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !56

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next, !dbg !57
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !57, !tbaa !59
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next, !dbg !61
  %2 = load i32, ptr %arrayidx4, align 4, !dbg !61, !tbaa !59
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next, !dbg !62
  %3 = load i32, ptr %arrayidx7, align 4, !dbg !62, !tbaa !59
  %reass.add = sub i32 %2, %3
  %reass.mul = mul i32 %reass.add, 3
  %4 = trunc i64 %indvars.iv.next to i32
  %reass.add104 = add i32 %1, %4
  %reass.add109 = sub i32 %reass.add104, %2
  %reass.mul110 = shl i32 %reass.add109, 1
  %sub = sub i32 %reass.mul, %3, !dbg !63
  %add21 = add i32 %sub, %reass.mul110, !dbg !64
  %rem = srem i32 %add21, 100, !dbg !65
  store i32 %rem, ptr %arrayidx2, align 4, !dbg !66, !tbaa !59
  %5 = sub nsw i32 %rem, %2, !dbg !67
  %mul40 = mul nsw i32 %4, 3, !dbg !68
  %reass.add106 = add i32 %5, %3
  %reass.mul107 = shl i32 %reass.add106, 1
  %add35 = add nuw i32 %mul40, 2, !dbg !69
  %add43 = add i32 %add35, %2, !dbg !70
  %add44 = add i32 %add43, %reass.mul107, !dbg !71
  %rem45 = srem i32 %add44, 100, !dbg !72
  store i32 %rem45, ptr %arrayidx7, align 4, !dbg !73, !tbaa !59
  %mul50 = shl nsw i32 %rem45, 2, !dbg !74
  %6 = add nsw i32 %2, %4, !dbg !75
  %mul59 = mul nsw i32 %6, 6, !dbg !76
  %add53 = add i32 %rem, %mul59, !dbg !77
  %add60 = add i32 %add53, %mul50, !dbg !78
  %rem61 = srem i32 %add60, 100, !dbg !79
  store i32 %rem61, ptr %arrayidx4, align 4, !dbg !80, !tbaa !59
  br label %for.inc, !dbg !81

Pre.Vectorization:                                ; preds = %for.body.preheader
  %7 = call i32 @llvm.vscale.i32()
  %8 = mul i32 %7, 4
  %step.vector = call <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32()
  %9 = insertelement <vscale x 4 x i32> poison, i32 %8, i64 0
  %stepVector.updated.value = shufflevector <vscale x 4 x i32> %9, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %10 = insertelement <vscale x 4 x i32> poison, i32 %n, i64 0
  %vectorized.trip.count = shufflevector <vscale x 4 x i32> %10, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %11 = icmp ugt <vscale x 4 x i32> %vectorized.trip.count, %step.vector
  br label %vectorizing.block

vectorizing.block:                                ; preds = %vectorizing.block, %Pre.Vectorization
  %12 = phi i32 [ 0, %Pre.Vectorization ], [ %47, %vectorizing.block ]
  %13 = phi <vscale x 4 x i1> [ %11, %Pre.Vectorization ], [ %next.vector.iv.predicate, %vectorizing.block ]
  %loop.StepVec = phi <vscale x 4 x i32> [ %step.vector, %Pre.Vectorization ], [ %48, %vectorizing.block ]
  %14 = getelementptr inbounds i8, ptr %cond, i32 %12, !dbg !48
  %15 = call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr %14, i32 16, <vscale x 4 x i1> %13, <vscale x 4 x i8> undef)
  %16 = trunc <vscale x 4 x i8> %15 to <vscale x 4 x i1>
  %17 = icmp eq <vscale x 4 x i1> %16, zeroinitializer
  %negated.vector = xor <vscale x 4 x i1> %17, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %18 = and <vscale x 4 x i1> %13, %negated.vector
  %19 = getelementptr inbounds i32, ptr %a, i32 %12, !dbg !57
  %20 = getelementptr inbounds i32, ptr %c, i32 %12, !dbg !61
  %21 = getelementptr inbounds i32, ptr %b, i32 %12, !dbg !62
  %22 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %19, i32 16, <vscale x 4 x i1> %18, <vscale x 4 x i32> undef)
  %23 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %20, i32 16, <vscale x 4 x i1> %18, <vscale x 4 x i32> undef)
  %24 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %21, i32 16, <vscale x 4 x i1> %18, <vscale x 4 x i32> undef)
  %25 = sub <vscale x 4 x i32> %23, %24
  %26 = mul <vscale x 4 x i32> %25, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %27 = add <vscale x 4 x i32> %22, %loop.StepVec
  %28 = sub <vscale x 4 x i32> %27, %23
  %29 = shl <vscale x 4 x i32> %28, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = sub <vscale x 4 x i32> %26, %24
  %31 = add <vscale x 4 x i32> %30, %29
  %32 = srem <vscale x 4 x i32> %31, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %32, ptr %19, i32 16, <vscale x 4 x i1> %18)
  %33 = sub <vscale x 4 x i32> %32, %23
  %34 = mul <vscale x 4 x i32> %loop.StepVec, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %35 = add <vscale x 4 x i32> %33, %24
  %36 = shl <vscale x 4 x i32> %35, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %37 = add <vscale x 4 x i32> %34, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %38 = add <vscale x 4 x i32> %37, %23
  %39 = add <vscale x 4 x i32> %38, %36
  %40 = srem <vscale x 4 x i32> %39, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %40, ptr %21, i32 16, <vscale x 4 x i1> %18)
  %41 = shl <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %42 = add <vscale x 4 x i32> %23, %loop.StepVec
  %43 = mul <vscale x 4 x i32> %42, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 6, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %44 = add <vscale x 4 x i32> %32, %43
  %45 = add <vscale x 4 x i32> %44, %41
  %46 = srem <vscale x 4 x i32> %45, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 100, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %46, ptr %20, i32 16, <vscale x 4 x i1> %18)
  %47 = add i32 %8, %12
  %48 = add <vscale x 4 x i32> %stepVector.updated.value, %loop.StepVec
  %next.vector.iv.predicate = icmp ult <vscale x 4 x i32> %48, %vectorized.trip.count
  %vectorize.term.cond = icmp uge i32 %47, %n
  br i1 %vectorize.term.cond, label %for.cond.cleanup.loopexit, label %vectorizing.block

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next, 1, !dbg !82
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !40, metadata !DIExpression()), !dbg !43
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !44
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !46, !llvm.loop !83
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !87 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !91, metadata !DIExpression()), !dbg !93
  %conv = sext i32 %n to i64, !dbg !94
  %mul = shl nsw i64 %conv, 2, !dbg !95
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !96
  call void @llvm.dbg.value(metadata ptr %call, metadata !92, metadata !DIExpression()), !dbg !93
  %cmp = icmp eq ptr %call, null, !dbg !97
  br i1 %cmp, label %if.then, label %if.end, !dbg !99

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !100
  tail call void @exit(i32 noundef 1) #11, !dbg !102
  unreachable, !dbg !102

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !103
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !104 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !108, metadata !DIExpression()), !dbg !110
  %conv = sext i32 %n to i64, !dbg !111
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #10, !dbg !112
  call void @llvm.dbg.value(metadata ptr %call, metadata !109, metadata !DIExpression()), !dbg !110
  %cmp = icmp eq ptr %call, null, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !116
  tail call void @exit(i32 noundef 1) #11, !dbg !118
  unreachable, !dbg !118

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !119
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !120 {
entry:
  call void @llvm.dbg.value(metadata i32 5000000, metadata !124, metadata !DIExpression()), !dbg !130
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !131
  store ptr %call, ptr @a, align 8, !dbg !132, !tbaa !133
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !135
  store ptr %call1, ptr @b, align 8, !dbg !136, !tbaa !133
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !137
  store ptr %call2, ptr @c, align 8, !dbg !138, !tbaa !133
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !139
  store ptr %call3, ptr @cond, align 8, !dbg !140, !tbaa !133
  call void @llvm.dbg.value(metadata i32 0, metadata !125, metadata !DIExpression()), !dbg !141
  %0 = load ptr, ptr @a, align 8, !tbaa !133
  %1 = load ptr, ptr @b, align 8, !tbaa !133
  %2 = load ptr, ptr @c, align 8, !tbaa !133
  call void @llvm.dbg.value(metadata i32 0, metadata !125, metadata !DIExpression()), !dbg !141
  br label %for.body, !dbg !142

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 5000000), !dbg !143
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.value(metadata i32 0, metadata !128, metadata !DIExpression()), !dbg !144
  %3 = load ptr, ptr @c, align 8, !tbaa !133
  call void @llvm.dbg.value(metadata i32 0, metadata !128, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !130
  br label %for.body18, !dbg !145

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !125, metadata !DIExpression()), !dbg !141
  %4 = trunc i64 %indvars.iv to i32, !dbg !146
  %rem = urem i32 %4, 10, !dbg !146
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !149
  store i32 %rem, ptr %arrayidx, align 4, !dbg !150, !tbaa !59
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !151
  store i32 2, ptr %arrayidx5, align 4, !dbg !152, !tbaa !59
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !153
  store i32 0, ptr %arrayidx7, align 4, !dbg !154, !tbaa !59
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !155
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !156

cond.false:                                       ; preds = %for.body
  %cmp10 = icmp eq i32 %rem, 0, !dbg !157
  %conv = zext i1 %cmp10 to i8, !dbg !157
  br label %cond.end, !dbg !156

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !156
  %arrayidx12 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !158
  store i8 %cond, ptr %arrayidx12, align 1, !dbg !159, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !160
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !125, metadata !DIExpression()), !dbg !141
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !161
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !142, !llvm.loop !162

for.cond.cleanup17:                               ; preds = %for.body18
  %add.lcssa = phi i32 [ %add, %for.body18 ], !dbg !164
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add.lcssa), !dbg !167
  ret i32 0, !dbg !168

for.body18:                                       ; preds = %for.body18, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body18 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body18 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !128, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !127, metadata !DIExpression()), !dbg !130
  %arrayidx20 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !169
  %5 = load i32, ptr %arrayidx20, align 4, !dbg !169, !tbaa !59
  %add = add nsw i32 %5, %sum.043, !dbg !164
  call void @llvm.dbg.value(metadata i32 %add, metadata !127, metadata !DIExpression()), !dbg !130
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !128, metadata !DIExpression()), !dbg !144
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 5000000, !dbg !171
  br i1 %exitcond49.not, label %for.cond.cleanup17, label %for.body18, !dbg !145, !llvm.loop !172
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32() #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i8>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #9

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
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
!51 = !{!52, !52, i64 0}
!52 = !{!"_Bool", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !{i8 0, i8 2}
!56 = !DILocation(line: 19, column: 13, scope: !50)
!57 = !DILocation(line: 20, column: 25, scope: !58)
!58 = distinct !DILexicalBlock(scope: !49, file: !3, line: 19, column: 22)
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !53, i64 0}
!61 = !DILocation(line: 20, column: 36, scope: !58)
!62 = !DILocation(line: 20, column: 45, scope: !58)
!63 = !DILocation(line: 20, column: 42, scope: !58)
!64 = !DILocation(line: 21, column: 26, scope: !58)
!65 = !DILocation(line: 21, column: 48, scope: !58)
!66 = !DILocation(line: 21, column: 18, scope: !58)
!67 = !DILocation(line: 22, column: 45, scope: !58)
!68 = !DILocation(line: 23, column: 31, scope: !58)
!69 = !DILocation(line: 22, column: 33, scope: !58)
!70 = !DILocation(line: 23, column: 35, scope: !58)
!71 = !DILocation(line: 23, column: 26, scope: !58)
!72 = !DILocation(line: 23, column: 44, scope: !58)
!73 = !DILocation(line: 23, column: 18, scope: !58)
!74 = !DILocation(line: 24, column: 23, scope: !58)
!75 = !DILocation(line: 24, column: 53, scope: !58)
!76 = !DILocation(line: 24, column: 41, scope: !58)
!77 = !DILocation(line: 24, column: 30, scope: !58)
!78 = !DILocation(line: 24, column: 37, scope: !58)
!79 = !DILocation(line: 24, column: 62, scope: !58)
!80 = !DILocation(line: 24, column: 18, scope: !58)
!81 = !DILocation(line: 25, column: 9, scope: !58)
!82 = !DILocation(line: 18, column: 28, scope: !45)
!83 = distinct !{!83, !46, !84, !85, !86}
!84 = !DILocation(line: 26, column: 5, scope: !41)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 37, type: !88, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{!5, !6}
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "n", arg: 1, scope: !87, file: !3, line: 37, type: !6)
!92 = !DILocalVariable(name: "ptr", scope: !87, file: !3, line: 38, type: !5)
!93 = !DILocation(line: 0, scope: !87)
!94 = !DILocation(line: 38, column: 45, scope: !87)
!95 = !DILocation(line: 38, column: 43, scope: !87)
!96 = !DILocation(line: 38, column: 24, scope: !87)
!97 = !DILocation(line: 39, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !87, file: !3, line: 39, column: 9)
!99 = !DILocation(line: 39, column: 9, scope: !87)
!100 = !DILocation(line: 40, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !3, line: 39, column: 22)
!102 = !DILocation(line: 41, column: 9, scope: !101)
!103 = !DILocation(line: 43, column: 5, scope: !87)
!104 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 46, type: !105, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !6}
!107 = !{!108, !109}
!108 = !DILocalVariable(name: "n", arg: 1, scope: !104, file: !3, line: 46, type: !6)
!109 = !DILocalVariable(name: "ptr", scope: !104, file: !3, line: 47, type: !8)
!110 = !DILocation(line: 0, scope: !104)
!111 = !DILocation(line: 47, column: 48, scope: !104)
!112 = !DILocation(line: 47, column: 26, scope: !104)
!113 = !DILocation(line: 48, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !104, file: !3, line: 48, column: 9)
!115 = !DILocation(line: 48, column: 9, scope: !104)
!116 = !DILocation(line: 49, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 48, column: 22)
!118 = !DILocation(line: 50, column: 9, scope: !117)
!119 = !DILocation(line: 52, column: 5, scope: !104)
!120 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !121, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !123)
!121 = !DISubroutineType(types: !122)
!122 = !{!6}
!123 = !{!124, !125, !127, !128}
!124 = !DILocalVariable(name: "n", scope: !120, file: !3, line: 57, type: !6)
!125 = !DILocalVariable(name: "i", scope: !126, file: !3, line: 64, type: !6)
!126 = distinct !DILexicalBlock(scope: !120, file: !3, line: 64, column: 5)
!127 = !DILocalVariable(name: "sum", scope: !120, file: !3, line: 73, type: !6)
!128 = !DILocalVariable(name: "i", scope: !129, file: !3, line: 75, type: !6)
!129 = distinct !DILexicalBlock(scope: !120, file: !3, line: 75, column: 5)
!130 = !DILocation(line: 0, scope: !120)
!131 = !DILocation(line: 59, column: 9, scope: !120)
!132 = !DILocation(line: 59, column: 7, scope: !120)
!133 = !{!134, !134, i64 0}
!134 = !{!"any pointer", !53, i64 0}
!135 = !DILocation(line: 60, column: 9, scope: !120)
!136 = !DILocation(line: 60, column: 7, scope: !120)
!137 = !DILocation(line: 61, column: 9, scope: !120)
!138 = !DILocation(line: 61, column: 7, scope: !120)
!139 = !DILocation(line: 62, column: 12, scope: !120)
!140 = !DILocation(line: 62, column: 10, scope: !120)
!141 = !DILocation(line: 0, scope: !126)
!142 = !DILocation(line: 64, column: 5, scope: !126)
!143 = !DILocation(line: 71, column: 5, scope: !120)
!144 = !DILocation(line: 0, scope: !129)
!145 = !DILocation(line: 75, column: 5, scope: !129)
!146 = !DILocation(line: 65, column: 18, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !3, line: 64, column: 33)
!148 = distinct !DILexicalBlock(scope: !126, file: !3, line: 64, column: 5)
!149 = !DILocation(line: 65, column: 9, scope: !147)
!150 = !DILocation(line: 65, column: 14, scope: !147)
!151 = !DILocation(line: 66, column: 9, scope: !147)
!152 = !DILocation(line: 66, column: 14, scope: !147)
!153 = !DILocation(line: 67, column: 9, scope: !147)
!154 = !DILocation(line: 67, column: 14, scope: !147)
!155 = !DILocation(line: 68, column: 22, scope: !147)
!156 = !DILocation(line: 68, column: 20, scope: !147)
!157 = !DILocation(line: 68, column: 41, scope: !147)
!158 = !DILocation(line: 68, column: 9, scope: !147)
!159 = !DILocation(line: 68, column: 17, scope: !147)
!160 = !DILocation(line: 64, column: 28, scope: !148)
!161 = !DILocation(line: 64, column: 23, scope: !148)
!162 = distinct !{!162, !142, !163, !85, !86}
!163 = !DILocation(line: 69, column: 5, scope: !126)
!164 = !DILocation(line: 76, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !3, line: 75, column: 33)
!166 = distinct !DILexicalBlock(scope: !129, file: !3, line: 75, column: 5)
!167 = !DILocation(line: 79, column: 5, scope: !120)
!168 = !DILocation(line: 81, column: 5, scope: !120)
!169 = !DILocation(line: 76, column: 16, scope: !165)
!170 = !DILocation(line: 75, column: 28, scope: !166)
!171 = !DILocation(line: 75, column: 23, scope: !166)
!172 = distinct !{!172, !145, !173, !85, !86}
!173 = !DILocation(line: 77, column: 5, scope: !129)
