; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"PAPI library init error!\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !125
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !127
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !129
@.str.2 = private unnamed_addr constant [18 x i8] c"checksum is: %d \0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"number of instructions is: %d \0A\00", align 1
@str.4 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !149, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %b, metadata !150, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %c, metadata !151, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata ptr %cond, metadata !152, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 %n, metadata !153, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata i32 0, metadata !154, metadata !DIExpression()), !dbg !157
  %cmp109 = icmp sgt i32 %n, 0, !dbg !158
  br i1 %cmp109, label %for.body.preheader, label %for.cond.cleanup, !dbg !160

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !158
  br label %Pre.Vectorization, !dbg !160

for.cond.cleanup.loopexit:                        ; preds = %vectorizing.block, %for.inc
  br label %for.cond.cleanup, !dbg !161

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !161

for.body:                                         ; preds = %for.inc
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !154, metadata !DIExpression()), !dbg !157
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv.next, !dbg !162
  %0 = load i8, ptr %arrayidx, align 1, !dbg !162, !tbaa !165, !range !169
  %tobool.not = icmp eq i8 %0, 0, !dbg !162
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !170

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next, !dbg !171
  %1 = load i32, ptr %arrayidx2, align 4, !dbg !171, !tbaa !173
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.next, !dbg !175
  %2 = load i32, ptr %arrayidx4, align 4, !dbg !175, !tbaa !173
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv.next, !dbg !176
  %3 = load i32, ptr %arrayidx7, align 4, !dbg !176, !tbaa !173
  %reass.add = sub i32 %2, %3
  %reass.mul = mul i32 %reass.add, 3
  %4 = trunc i64 %indvars.iv.next to i32
  %reass.add102 = add i32 %1, %4
  %reass.add107 = sub i32 %reass.add102, %2
  %reass.mul108 = shl i32 %reass.add107, 1
  %sub = sub i32 %reass.mul, %3, !dbg !177
  %add21 = add i32 %sub, %reass.mul108, !dbg !178
  store i32 %add21, ptr %arrayidx2, align 4, !dbg !179, !tbaa !173
  %5 = sub nsw i32 %add21, %2, !dbg !180
  %mul40 = mul nsw i32 %4, 3, !dbg !181
  %reass.add104 = add i32 %5, %3
  %reass.mul105 = shl i32 %reass.add104, 1
  %add35 = add nuw i32 %mul40, 2, !dbg !182
  %add43 = add i32 %add35, %2, !dbg !183
  %add44 = add i32 %add43, %reass.mul105, !dbg !184
  store i32 %add44, ptr %arrayidx7, align 4, !dbg !185, !tbaa !173
  %mul49 = shl nsw i32 %add44, 2, !dbg !186
  %6 = add nsw i32 %2, %4, !dbg !187
  %mul58 = mul nsw i32 %6, 6, !dbg !188
  %add52 = add i32 %add21, %mul58, !dbg !189
  %add59 = add i32 %add52, %mul49, !dbg !190
  store i32 %add59, ptr %arrayidx4, align 4, !dbg !191, !tbaa !173
  br label %for.inc, !dbg !192

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
  %12 = phi i32 [ 0, %Pre.Vectorization ], [ %44, %vectorizing.block ]
  %13 = phi <vscale x 4 x i1> [ %11, %Pre.Vectorization ], [ %next.vector.iv.predicate, %vectorizing.block ]
  %loop.StepVec = phi <vscale x 4 x i32> [ %step.vector, %Pre.Vectorization ], [ %45, %vectorizing.block ]
  %14 = getelementptr inbounds i8, ptr %cond, i32 %12, !dbg !162
  %15 = call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr %14, i32 16, <vscale x 4 x i1> %13, <vscale x 4 x i8> undef)
  %16 = trunc <vscale x 4 x i8> %15 to <vscale x 4 x i1>
  %17 = icmp eq <vscale x 4 x i1> %16, zeroinitializer
  %negated.vector = xor <vscale x 4 x i1> %17, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %18 = and <vscale x 4 x i1> %13, %negated.vector
  %19 = getelementptr inbounds i32, ptr %a, i32 %12, !dbg !171
  %20 = getelementptr inbounds i32, ptr %c, i32 %12, !dbg !175
  %21 = getelementptr inbounds i32, ptr %b, i32 %12, !dbg !176
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
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %31, ptr %19, i32 16, <vscale x 4 x i1> %18)
  %32 = sub <vscale x 4 x i32> %31, %23
  %33 = mul <vscale x 4 x i32> %loop.StepVec, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %34 = add <vscale x 4 x i32> %32, %24
  %35 = shl <vscale x 4 x i32> %34, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %36 = add <vscale x 4 x i32> %33, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %37 = add <vscale x 4 x i32> %36, %23
  %38 = add <vscale x 4 x i32> %37, %35
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %38, ptr %21, i32 16, <vscale x 4 x i1> %18)
  %39 = shl <vscale x 4 x i32> %38, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %40 = add <vscale x 4 x i32> %23, %loop.StepVec
  %41 = mul <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 6, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %42 = add <vscale x 4 x i32> %31, %41
  %43 = add <vscale x 4 x i32> %42, %39
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %43, ptr %20, i32 16, <vscale x 4 x i1> %18)
  %44 = add i32 %8, %12
  %45 = add <vscale x 4 x i32> %stepVector.updated.value, %loop.StepVec
  %next.vector.iv.predicate = icmp ult <vscale x 4 x i32> %45, %vectorized.trip.count
  %vectorize.term.cond = icmp uge i32 %44, %n
  br i1 %vectorize.term.cond, label %for.cond.cleanup.loopexit, label %vectorizing.block

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next, 1, !dbg !193
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !154, metadata !DIExpression()), !dbg !157
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !158
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !160, !llvm.loop !194
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #3 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !202, metadata !DIExpression()), !dbg !204
  %conv = sext i32 %n to i64, !dbg !205
  %mul = shl nsw i64 %conv, 2, !dbg !206
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !207
  call void @llvm.dbg.value(metadata ptr %call, metadata !203, metadata !DIExpression()), !dbg !204
  %cmp = icmp eq ptr %call, null, !dbg !208
  br i1 %cmp, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.4), !dbg !211
  tail call void @exit(i32 noundef 1) #14, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !214
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #3 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !219, metadata !DIExpression()), !dbg !221
  %conv = sext i32 %n to i64, !dbg !222
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !223
  call void @llvm.dbg.value(metadata ptr %call, metadata !220, metadata !DIExpression()), !dbg !221
  %cmp = icmp eq ptr %call, null, !dbg !224
  br i1 %cmp, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.4), !dbg !227
  tail call void @exit(i32 noundef 1) #14, !dbg !229
  unreachable, !dbg !229

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !230
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !231 {
entry:
  %EventSet = alloca i32, align 4
  %values = alloca [1 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %EventSet) #15, !dbg !248
  call void @llvm.dbg.value(metadata i32 -1, metadata !236, metadata !DIExpression()), !dbg !249
  store i32 -1, ptr %EventSet, align 4, !dbg !250, !tbaa !173
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #15, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %values, metadata !237, metadata !DIExpression()), !dbg !252
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #15, !dbg !253
  call void @llvm.dbg.value(metadata i32 %call, metadata !235, metadata !DIExpression()), !dbg !249
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !254
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !256

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !257, !tbaa !259
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %0) #16, !dbg !261
  tail call void @exit(i32 noundef 1) #14, !dbg !262
  unreachable, !dbg !262

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 5000000, metadata !242, metadata !DIExpression()), !dbg !249
  %call3 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !263
  store ptr %call3, ptr @a, align 8, !dbg !264, !tbaa !259
  %call4 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !265
  store ptr %call4, ptr @b, align 8, !dbg !266, !tbaa !259
  %call5 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !267
  store ptr %call5, ptr @c, align 8, !dbg !268, !tbaa !259
  %call6 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !269
  store ptr %call6, ptr @cond, align 8, !dbg !270, !tbaa !259
  %call7 = tail call i64 @time(ptr noundef null) #15, !dbg !271
  %conv = trunc i64 %call7 to i32, !dbg !271
  tail call void @srand(i32 noundef %conv) #15, !dbg !272
  %2 = load ptr, ptr @cond, align 8, !dbg !273, !tbaa !259
  store i8 0, ptr %2, align 1, !dbg !274, !tbaa !165
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()), !dbg !275
  %3 = load ptr, ptr @a, align 8, !tbaa !259
  %4 = load ptr, ptr @b, align 8, !tbaa !259
  %5 = load ptr, ptr @c, align 8, !tbaa !259
  call void @llvm.dbg.value(metadata i32 0, metadata !243, metadata !DIExpression()), !dbg !275
  br label %for.body, !dbg !276

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %EventSet, metadata !236, metadata !DIExpression(DW_OP_deref)), !dbg !249
  %call20 = call i32 @PAPI_create_eventset(ptr noundef nonnull %EventSet) #15, !dbg !277
  %cmp21.not = icmp eq i32 %call20, 0, !dbg !279
  br i1 %cmp21.not, label %if.end25, label %if.then23, !dbg !280

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !243, metadata !DIExpression()), !dbg !275
  %6 = trunc i64 %indvars.iv to i32, !dbg !281
  %rem = urem i32 %6, 3, !dbg !281
  %arrayidx10 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv, !dbg !284
  store i32 %rem, ptr %arrayidx10, align 4, !dbg !285, !tbaa !173
  %arrayidx12 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !286
  store i32 2, ptr %arrayidx12, align 4, !dbg !287, !tbaa !173
  %arrayidx14 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !288
  store i32 0, ptr %arrayidx14, align 4, !dbg !289, !tbaa !173
  %rem15 = urem i32 %6, 10, !dbg !290
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !291
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 %indvars.iv, !dbg !292
  %frombool = zext i1 %cmp16 to i8, !dbg !293
  store i8 %frombool, ptr %arrayidx19, align 1, !dbg !293, !tbaa !165
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !294
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !243, metadata !DIExpression()), !dbg !275
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !295
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !276, !llvm.loop !296

if.then23:                                        ; preds = %for.cond.cleanup
  %call24 = call i32 @handle_error(i32 noundef 1) #15, !dbg !298
  br label %if.end25, !dbg !298

if.end25:                                         ; preds = %if.then23, %for.cond.cleanup
  %7 = load i32, ptr %EventSet, align 4, !dbg !299, !tbaa !173
  call void @llvm.dbg.value(metadata i32 %7, metadata !236, metadata !DIExpression()), !dbg !249
  %call26 = call i32 @PAPI_add_event(i32 noundef %7, i32 noundef -2147483598) #15, !dbg !301
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !302
  br i1 %cmp27.not, label %if.end31, label %if.then29, !dbg !303

if.then29:                                        ; preds = %if.end25
  %call30 = call i32 @handle_error(i32 noundef 1) #15, !dbg !304
  br label %if.end31, !dbg !304

if.end31:                                         ; preds = %if.then29, %if.end25
  %8 = load i32, ptr %EventSet, align 4, !dbg !305, !tbaa !173
  call void @llvm.dbg.value(metadata i32 %8, metadata !236, metadata !DIExpression()), !dbg !249
  %call32 = call i32 @PAPI_start(i32 noundef %8) #15, !dbg !307
  %cmp33.not = icmp eq i32 %call32, 0, !dbg !308
  br i1 %cmp33.not, label %if.end37, label %if.then35, !dbg !309

if.then35:                                        ; preds = %if.end31
  %call36 = call i32 @handle_error(i32 noundef 1) #15, !dbg !310
  br label %if.end37, !dbg !310

if.end37:                                         ; preds = %if.then35, %if.end31
  %9 = load ptr, ptr @a, align 8, !dbg !311, !tbaa !259
  %10 = load ptr, ptr @b, align 8, !dbg !312, !tbaa !259
  %11 = load ptr, ptr @c, align 8, !dbg !313, !tbaa !259
  %12 = load ptr, ptr @cond, align 8, !dbg !314, !tbaa !259
  call void @foo(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef 5000000), !dbg !315
  %13 = load i32, ptr %EventSet, align 4, !dbg !316, !tbaa !173
  call void @llvm.dbg.value(metadata i32 %13, metadata !236, metadata !DIExpression()), !dbg !249
  %call38 = call i32 @PAPI_read(i32 noundef %13, ptr noundef nonnull %values) #15, !dbg !318
  %cmp39.not = icmp eq i32 %call38, 0, !dbg !319
  br i1 %cmp39.not, label %if.end43, label %if.then41, !dbg !320

if.then41:                                        ; preds = %if.end37
  %call42 = call i32 @handle_error(i32 noundef 1) #15, !dbg !321
  br label %if.end43, !dbg !321

if.end43:                                         ; preds = %if.then41, %if.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !322
  %14 = load ptr, ptr @c, align 8, !tbaa !259
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !249
  br label %for.body49, !dbg !323

for.cond.cleanup48:                               ; preds = %for.body49
  %add.lcssa = phi i32 [ %add, %for.body49 ], !dbg !324
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i32 noundef %add.lcssa), !dbg !327
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %add.lcssa), !dbg !328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #15, !dbg !329
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %EventSet) #15, !dbg !329
  ret i32 0, !dbg !330

for.body49:                                       ; preds = %for.body49, %if.end43
  %indvars.iv78 = phi i64 [ 0, %if.end43 ], [ %indvars.iv.next79, %for.body49 ]
  %sum.075 = phi i32 [ 0, %if.end43 ], [ %add, %for.body49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv78, metadata !246, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %sum.075, metadata !245, metadata !DIExpression()), !dbg !249
  %arrayidx51 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv78, !dbg !331
  %15 = load i32, ptr %arrayidx51, align 4, !dbg !331, !tbaa !173
  %add = add nsw i32 %15, %sum.075, !dbg !324
  call void @llvm.dbg.value(metadata i32 %add, metadata !245, metadata !DIExpression()), !dbg !249
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !332
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next79, metadata !246, metadata !DIExpression()), !dbg !322
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 5000000, !dbg !333
  br i1 %exitcond81.not, label %for.cond.cleanup48, label %for.body49, !dbg !323, !llvm.loop !334
}

declare !dbg !336 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !341 void @srand(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !345 i64 @time(ptr noundef) local_unnamed_addr #8

declare !dbg !355 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #7

declare i32 @handle_error(...) local_unnamed_addr #7

declare !dbg !358 i32 @PAPI_add_event(i32 noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !361 i32 @PAPI_start(i32 noundef) local_unnamed_addr #7

declare !dbg !362 i32 @PAPI_read(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32() #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i8>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #12

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #12 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 37, type: !119, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !118, globals: !124, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "39ef5ba6853b9e6a9289e7d53acc3bdb")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 51, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "PAPI/papi/src/install/include/papiStdEventDefs.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "82afacd449839fea0ef44d129f2d1f87")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!9 = !DIEnumerator(name: "PAPI_L1_DCM_idx", value: 0)
!10 = !DIEnumerator(name: "PAPI_L1_ICM_idx", value: 1)
!11 = !DIEnumerator(name: "PAPI_L2_DCM_idx", value: 2)
!12 = !DIEnumerator(name: "PAPI_L2_ICM_idx", value: 3)
!13 = !DIEnumerator(name: "PAPI_L3_DCM_idx", value: 4)
!14 = !DIEnumerator(name: "PAPI_L3_ICM_idx", value: 5)
!15 = !DIEnumerator(name: "PAPI_L1_TCM_idx", value: 6)
!16 = !DIEnumerator(name: "PAPI_L2_TCM_idx", value: 7)
!17 = !DIEnumerator(name: "PAPI_L3_TCM_idx", value: 8)
!18 = !DIEnumerator(name: "PAPI_CA_SNP_idx", value: 9)
!19 = !DIEnumerator(name: "PAPI_CA_SHR_idx", value: 10)
!20 = !DIEnumerator(name: "PAPI_CA_CLN_idx", value: 11)
!21 = !DIEnumerator(name: "PAPI_CA_INV_idx", value: 12)
!22 = !DIEnumerator(name: "PAPI_CA_ITV_idx", value: 13)
!23 = !DIEnumerator(name: "PAPI_L3_LDM_idx", value: 14)
!24 = !DIEnumerator(name: "PAPI_L3_STM_idx", value: 15)
!25 = !DIEnumerator(name: "PAPI_BRU_IDL_idx", value: 16)
!26 = !DIEnumerator(name: "PAPI_FXU_IDL_idx", value: 17)
!27 = !DIEnumerator(name: "PAPI_FPU_IDL_idx", value: 18)
!28 = !DIEnumerator(name: "PAPI_LSU_IDL_idx", value: 19)
!29 = !DIEnumerator(name: "PAPI_TLB_DM_idx", value: 20)
!30 = !DIEnumerator(name: "PAPI_TLB_IM_idx", value: 21)
!31 = !DIEnumerator(name: "PAPI_TLB_TL_idx", value: 22)
!32 = !DIEnumerator(name: "PAPI_L1_LDM_idx", value: 23)
!33 = !DIEnumerator(name: "PAPI_L1_STM_idx", value: 24)
!34 = !DIEnumerator(name: "PAPI_L2_LDM_idx", value: 25)
!35 = !DIEnumerator(name: "PAPI_L2_STM_idx", value: 26)
!36 = !DIEnumerator(name: "PAPI_BTAC_M_idx", value: 27)
!37 = !DIEnumerator(name: "PAPI_PRF_DM_idx", value: 28)
!38 = !DIEnumerator(name: "PAPI_L3_DCH_idx", value: 29)
!39 = !DIEnumerator(name: "PAPI_TLB_SD_idx", value: 30)
!40 = !DIEnumerator(name: "PAPI_CSR_FAL_idx", value: 31)
!41 = !DIEnumerator(name: "PAPI_CSR_SUC_idx", value: 32)
!42 = !DIEnumerator(name: "PAPI_CSR_TOT_idx", value: 33)
!43 = !DIEnumerator(name: "PAPI_MEM_SCY_idx", value: 34)
!44 = !DIEnumerator(name: "PAPI_MEM_RCY_idx", value: 35)
!45 = !DIEnumerator(name: "PAPI_MEM_WCY_idx", value: 36)
!46 = !DIEnumerator(name: "PAPI_STL_ICY_idx", value: 37)
!47 = !DIEnumerator(name: "PAPI_FUL_ICY_idx", value: 38)
!48 = !DIEnumerator(name: "PAPI_STL_CCY_idx", value: 39)
!49 = !DIEnumerator(name: "PAPI_FUL_CCY_idx", value: 40)
!50 = !DIEnumerator(name: "PAPI_HW_INT_idx", value: 41)
!51 = !DIEnumerator(name: "PAPI_BR_UCN_idx", value: 42)
!52 = !DIEnumerator(name: "PAPI_BR_CN_idx", value: 43)
!53 = !DIEnumerator(name: "PAPI_BR_TKN_idx", value: 44)
!54 = !DIEnumerator(name: "PAPI_BR_NTK_idx", value: 45)
!55 = !DIEnumerator(name: "PAPI_BR_MSP_idx", value: 46)
!56 = !DIEnumerator(name: "PAPI_BR_PRC_idx", value: 47)
!57 = !DIEnumerator(name: "PAPI_FMA_INS_idx", value: 48)
!58 = !DIEnumerator(name: "PAPI_TOT_IIS_idx", value: 49)
!59 = !DIEnumerator(name: "PAPI_TOT_INS_idx", value: 50)
!60 = !DIEnumerator(name: "PAPI_INT_INS_idx", value: 51)
!61 = !DIEnumerator(name: "PAPI_FP_INS_idx", value: 52)
!62 = !DIEnumerator(name: "PAPI_LD_INS_idx", value: 53)
!63 = !DIEnumerator(name: "PAPI_SR_INS_idx", value: 54)
!64 = !DIEnumerator(name: "PAPI_BR_INS_idx", value: 55)
!65 = !DIEnumerator(name: "PAPI_VEC_INS_idx", value: 56)
!66 = !DIEnumerator(name: "PAPI_RES_STL_idx", value: 57)
!67 = !DIEnumerator(name: "PAPI_FP_STAL_idx", value: 58)
!68 = !DIEnumerator(name: "PAPI_TOT_CYC_idx", value: 59)
!69 = !DIEnumerator(name: "PAPI_LST_INS_idx", value: 60)
!70 = !DIEnumerator(name: "PAPI_SYC_INS_idx", value: 61)
!71 = !DIEnumerator(name: "PAPI_L1_DCH_idx", value: 62)
!72 = !DIEnumerator(name: "PAPI_L2_DCH_idx", value: 63)
!73 = !DIEnumerator(name: "PAPI_L1_DCA_idx", value: 64)
!74 = !DIEnumerator(name: "PAPI_L2_DCA_idx", value: 65)
!75 = !DIEnumerator(name: "PAPI_L3_DCA_idx", value: 66)
!76 = !DIEnumerator(name: "PAPI_L1_DCR_idx", value: 67)
!77 = !DIEnumerator(name: "PAPI_L2_DCR_idx", value: 68)
!78 = !DIEnumerator(name: "PAPI_L3_DCR_idx", value: 69)
!79 = !DIEnumerator(name: "PAPI_L1_DCW_idx", value: 70)
!80 = !DIEnumerator(name: "PAPI_L2_DCW_idx", value: 71)
!81 = !DIEnumerator(name: "PAPI_L3_DCW_idx", value: 72)
!82 = !DIEnumerator(name: "PAPI_L1_ICH_idx", value: 73)
!83 = !DIEnumerator(name: "PAPI_L2_ICH_idx", value: 74)
!84 = !DIEnumerator(name: "PAPI_L3_ICH_idx", value: 75)
!85 = !DIEnumerator(name: "PAPI_L1_ICA_idx", value: 76)
!86 = !DIEnumerator(name: "PAPI_L2_ICA_idx", value: 77)
!87 = !DIEnumerator(name: "PAPI_L3_ICA_idx", value: 78)
!88 = !DIEnumerator(name: "PAPI_L1_ICR_idx", value: 79)
!89 = !DIEnumerator(name: "PAPI_L2_ICR_idx", value: 80)
!90 = !DIEnumerator(name: "PAPI_L3_ICR_idx", value: 81)
!91 = !DIEnumerator(name: "PAPI_L1_ICW_idx", value: 82)
!92 = !DIEnumerator(name: "PAPI_L2_ICW_idx", value: 83)
!93 = !DIEnumerator(name: "PAPI_L3_ICW_idx", value: 84)
!94 = !DIEnumerator(name: "PAPI_L1_TCH_idx", value: 85)
!95 = !DIEnumerator(name: "PAPI_L2_TCH_idx", value: 86)
!96 = !DIEnumerator(name: "PAPI_L3_TCH_idx", value: 87)
!97 = !DIEnumerator(name: "PAPI_L1_TCA_idx", value: 88)
!98 = !DIEnumerator(name: "PAPI_L2_TCA_idx", value: 89)
!99 = !DIEnumerator(name: "PAPI_L3_TCA_idx", value: 90)
!100 = !DIEnumerator(name: "PAPI_L1_TCR_idx", value: 91)
!101 = !DIEnumerator(name: "PAPI_L2_TCR_idx", value: 92)
!102 = !DIEnumerator(name: "PAPI_L3_TCR_idx", value: 93)
!103 = !DIEnumerator(name: "PAPI_L1_TCW_idx", value: 94)
!104 = !DIEnumerator(name: "PAPI_L2_TCW_idx", value: 95)
!105 = !DIEnumerator(name: "PAPI_L3_TCW_idx", value: 96)
!106 = !DIEnumerator(name: "PAPI_FML_INS_idx", value: 97)
!107 = !DIEnumerator(name: "PAPI_FAD_INS_idx", value: 98)
!108 = !DIEnumerator(name: "PAPI_FDV_INS_idx", value: 99)
!109 = !DIEnumerator(name: "PAPI_FSQ_INS_idx", value: 100)
!110 = !DIEnumerator(name: "PAPI_FNV_INS_idx", value: 101)
!111 = !DIEnumerator(name: "PAPI_FP_OPS_idx", value: 102)
!112 = !DIEnumerator(name: "PAPI_SP_OPS_idx", value: 103)
!113 = !DIEnumerator(name: "PAPI_DP_OPS_idx", value: 104)
!114 = !DIEnumerator(name: "PAPI_VEC_SP_idx", value: 105)
!115 = !DIEnumerator(name: "PAPI_VEC_DP_idx", value: 106)
!116 = !DIEnumerator(name: "PAPI_REF_CYC_idx", value: 107)
!117 = !DIEnumerator(name: "PAPI_END_idx", value: 108)
!118 = !{!119, !121, !122, !120}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!124 = !{!0, !125, !127, !129}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 38, type: !119, isLocal: false, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 39, type: !119, isLocal: false, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 40, type: !122, isLocal: false, isDefinition: true)
!131 = !{i32 7, !"Dwarf Version", i32 5}
!132 = !{i32 2, !"Debug Info Version", i32 3}
!133 = !{i32 1, !"wchar_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"PIC Level", i32 2}
!139 = !{i32 7, !"PIE Level", i32 2}
!140 = !{i32 7, !"uwtable", i32 2}
!141 = !{i32 7, !"frame-pointer", i32 1}
!142 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!143 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 17, type: !144, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !146, !146, !146, !147, !120}
!146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!148 = !{!149, !150, !151, !152, !153, !154}
!149 = !DILocalVariable(name: "a", arg: 1, scope: !143, file: !3, line: 17, type: !146)
!150 = !DILocalVariable(name: "b", arg: 2, scope: !143, file: !3, line: 17, type: !146)
!151 = !DILocalVariable(name: "c", arg: 3, scope: !143, file: !3, line: 17, type: !146)
!152 = !DILocalVariable(name: "cond", arg: 4, scope: !143, file: !3, line: 18, type: !147)
!153 = !DILocalVariable(name: "n", arg: 5, scope: !143, file: !3, line: 18, type: !120)
!154 = !DILocalVariable(name: "i", scope: !155, file: !3, line: 23, type: !120)
!155 = distinct !DILexicalBlock(scope: !143, file: !3, line: 23, column: 5)
!156 = !DILocation(line: 0, scope: !143)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocation(line: 23, column: 23, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 23, column: 5)
!160 = !DILocation(line: 23, column: 5, scope: !155)
!161 = !DILocation(line: 35, column: 1, scope: !143)
!162 = !DILocation(line: 24, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !3, line: 24, column: 13)
!164 = distinct !DILexicalBlock(scope: !159, file: !3, line: 23, column: 33)
!165 = !{!166, !166, i64 0}
!166 = !{!"_Bool", !167, i64 0}
!167 = !{!"omnipotent char", !168, i64 0}
!168 = !{!"Simple C/C++ TBAA"}
!169 = !{i8 0, i8 2}
!170 = !DILocation(line: 24, column: 13, scope: !164)
!171 = !DILocation(line: 25, column: 25, scope: !172)
!172 = distinct !DILexicalBlock(scope: !163, file: !3, line: 24, column: 22)
!173 = !{!174, !174, i64 0}
!174 = !{!"int", !167, i64 0}
!175 = !DILocation(line: 25, column: 36, scope: !172)
!176 = !DILocation(line: 25, column: 45, scope: !172)
!177 = !DILocation(line: 25, column: 42, scope: !172)
!178 = !DILocation(line: 26, column: 26, scope: !172)
!179 = !DILocation(line: 26, column: 18, scope: !172)
!180 = !DILocation(line: 27, column: 45, scope: !172)
!181 = !DILocation(line: 28, column: 31, scope: !172)
!182 = !DILocation(line: 27, column: 33, scope: !172)
!183 = !DILocation(line: 28, column: 35, scope: !172)
!184 = !DILocation(line: 28, column: 26, scope: !172)
!185 = !DILocation(line: 28, column: 18, scope: !172)
!186 = !DILocation(line: 29, column: 23, scope: !172)
!187 = !DILocation(line: 29, column: 53, scope: !172)
!188 = !DILocation(line: 29, column: 41, scope: !172)
!189 = !DILocation(line: 29, column: 30, scope: !172)
!190 = !DILocation(line: 29, column: 37, scope: !172)
!191 = !DILocation(line: 29, column: 18, scope: !172)
!192 = !DILocation(line: 30, column: 9, scope: !172)
!193 = !DILocation(line: 23, column: 28, scope: !159)
!194 = distinct !{!194, !160, !195, !196, !197}
!195 = !DILocation(line: 31, column: 5, scope: !155)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !{!"llvm.loop.unroll.disable"}
!198 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 42, type: !199, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!119, !120}
!201 = !{!202, !203}
!202 = !DILocalVariable(name: "n", arg: 1, scope: !198, file: !3, line: 42, type: !120)
!203 = !DILocalVariable(name: "ptr", scope: !198, file: !3, line: 43, type: !119)
!204 = !DILocation(line: 0, scope: !198)
!205 = !DILocation(line: 43, column: 45, scope: !198)
!206 = !DILocation(line: 43, column: 43, scope: !198)
!207 = !DILocation(line: 43, column: 24, scope: !198)
!208 = !DILocation(line: 44, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !198, file: !3, line: 44, column: 9)
!210 = !DILocation(line: 44, column: 9, scope: !198)
!211 = !DILocation(line: 45, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 44, column: 22)
!213 = !DILocation(line: 46, column: 9, scope: !212)
!214 = !DILocation(line: 48, column: 5, scope: !198)
!215 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 51, type: !216, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!122, !120}
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "n", arg: 1, scope: !215, file: !3, line: 51, type: !120)
!220 = !DILocalVariable(name: "ptr", scope: !215, file: !3, line: 52, type: !122)
!221 = !DILocation(line: 0, scope: !215)
!222 = !DILocation(line: 52, column: 48, scope: !215)
!223 = !DILocation(line: 52, column: 26, scope: !215)
!224 = !DILocation(line: 53, column: 13, scope: !225)
!225 = distinct !DILexicalBlock(scope: !215, file: !3, line: 53, column: 9)
!226 = !DILocation(line: 53, column: 9, scope: !215)
!227 = !DILocation(line: 54, column: 9, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 53, column: 22)
!229 = !DILocation(line: 55, column: 9, scope: !228)
!230 = !DILocation(line: 57, column: 5, scope: !215)
!231 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !232, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!120}
!234 = !{!235, !236, !237, !242, !243, !245, !246}
!235 = !DILocalVariable(name: "retval", scope: !231, file: !3, line: 63, type: !120)
!236 = !DILocalVariable(name: "EventSet", scope: !231, file: !3, line: 63, type: !120)
!237 = !DILocalVariable(name: "values", scope: !231, file: !3, line: 64, type: !238)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !240)
!239 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!240 = !{!241}
!241 = !DISubrange(count: 1)
!242 = !DILocalVariable(name: "n", scope: !231, file: !3, line: 73, type: !120)
!243 = !DILocalVariable(name: "i", scope: !244, file: !3, line: 84, type: !120)
!244 = distinct !DILexicalBlock(scope: !231, file: !3, line: 84, column: 5)
!245 = !DILocalVariable(name: "sum", scope: !231, file: !3, line: 110, type: !120)
!246 = !DILocalVariable(name: "i", scope: !247, file: !3, line: 112, type: !120)
!247 = distinct !DILexicalBlock(scope: !231, file: !3, line: 112, column: 5)
!248 = !DILocation(line: 63, column: 5, scope: !231)
!249 = !DILocation(line: 0, scope: !231)
!250 = !DILocation(line: 63, column: 17, scope: !231)
!251 = !DILocation(line: 64, column: 5, scope: !231)
!252 = !DILocation(line: 64, column: 15, scope: !231)
!253 = !DILocation(line: 66, column: 14, scope: !231)
!254 = !DILocation(line: 67, column: 16, scope: !255)
!255 = distinct !DILexicalBlock(scope: !231, file: !3, line: 67, column: 9)
!256 = !DILocation(line: 67, column: 9, scope: !231)
!257 = !DILocation(line: 68, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 67, column: 37)
!259 = !{!260, !260, i64 0}
!260 = !{!"any pointer", !167, i64 0}
!261 = !DILocation(line: 68, column: 9, scope: !258)
!262 = !DILocation(line: 69, column: 9, scope: !258)
!263 = !DILocation(line: 75, column: 9, scope: !231)
!264 = !DILocation(line: 75, column: 7, scope: !231)
!265 = !DILocation(line: 76, column: 9, scope: !231)
!266 = !DILocation(line: 76, column: 7, scope: !231)
!267 = !DILocation(line: 77, column: 9, scope: !231)
!268 = !DILocation(line: 77, column: 7, scope: !231)
!269 = !DILocation(line: 78, column: 12, scope: !231)
!270 = !DILocation(line: 78, column: 10, scope: !231)
!271 = !DILocation(line: 80, column: 11, scope: !231)
!272 = !DILocation(line: 80, column: 5, scope: !231)
!273 = !DILocation(line: 82, column: 5, scope: !231)
!274 = !DILocation(line: 82, column: 13, scope: !231)
!275 = !DILocation(line: 0, scope: !244)
!276 = !DILocation(line: 84, column: 5, scope: !244)
!277 = !DILocation(line: 92, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !231, file: !3, line: 92, column: 9)
!279 = !DILocation(line: 92, column: 41, scope: !278)
!280 = !DILocation(line: 92, column: 9, scope: !231)
!281 = !DILocation(line: 85, column: 18, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 84, column: 33)
!283 = distinct !DILexicalBlock(scope: !244, file: !3, line: 84, column: 5)
!284 = !DILocation(line: 85, column: 9, scope: !282)
!285 = !DILocation(line: 85, column: 14, scope: !282)
!286 = !DILocation(line: 86, column: 9, scope: !282)
!287 = !DILocation(line: 86, column: 14, scope: !282)
!288 = !DILocation(line: 87, column: 9, scope: !282)
!289 = !DILocation(line: 87, column: 14, scope: !282)
!290 = !DILocation(line: 88, column: 22, scope: !282)
!291 = !DILocation(line: 88, column: 27, scope: !282)
!292 = !DILocation(line: 88, column: 9, scope: !282)
!293 = !DILocation(line: 88, column: 17, scope: !282)
!294 = !DILocation(line: 84, column: 28, scope: !283)
!295 = !DILocation(line: 84, column: 23, scope: !283)
!296 = distinct !{!296, !276, !297, !196, !197}
!297 = !DILocation(line: 89, column: 5, scope: !244)
!298 = !DILocation(line: 93, column: 9, scope: !278)
!299 = !DILocation(line: 96, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !231, file: !3, line: 96, column: 9)
!301 = !DILocation(line: 96, column: 9, scope: !300)
!302 = !DILocation(line: 96, column: 48, scope: !300)
!303 = !DILocation(line: 96, column: 9, scope: !231)
!304 = !DILocation(line: 97, column: 9, scope: !300)
!305 = !DILocation(line: 100, column: 20, scope: !306)
!306 = distinct !DILexicalBlock(scope: !231, file: !3, line: 100, column: 9)
!307 = !DILocation(line: 100, column: 9, scope: !306)
!308 = !DILocation(line: 100, column: 30, scope: !306)
!309 = !DILocation(line: 100, column: 9, scope: !231)
!310 = !DILocation(line: 101, column: 9, scope: !306)
!311 = !DILocation(line: 103, column: 9, scope: !231)
!312 = !DILocation(line: 103, column: 12, scope: !231)
!313 = !DILocation(line: 103, column: 15, scope: !231)
!314 = !DILocation(line: 103, column: 18, scope: !231)
!315 = !DILocation(line: 103, column: 5, scope: !231)
!316 = !DILocation(line: 106, column: 19, scope: !317)
!317 = distinct !DILexicalBlock(scope: !231, file: !3, line: 106, column: 9)
!318 = !DILocation(line: 106, column: 9, scope: !317)
!319 = !DILocation(line: 106, column: 37, scope: !317)
!320 = !DILocation(line: 106, column: 9, scope: !231)
!321 = !DILocation(line: 107, column: 9, scope: !317)
!322 = !DILocation(line: 0, scope: !247)
!323 = !DILocation(line: 112, column: 5, scope: !247)
!324 = !DILocation(line: 113, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 112, column: 33)
!326 = distinct !DILexicalBlock(scope: !247, file: !3, line: 112, column: 5)
!327 = !DILocation(line: 116, column: 5, scope: !231)
!328 = !DILocation(line: 117, column: 5, scope: !231)
!329 = !DILocation(line: 120, column: 1, scope: !231)
!330 = !DILocation(line: 119, column: 5, scope: !231)
!331 = !DILocation(line: 113, column: 16, scope: !325)
!332 = !DILocation(line: 112, column: 28, scope: !326)
!333 = !DILocation(line: 112, column: 23, scope: !326)
!334 = distinct !{!334, !323, !335, !196, !197}
!335 = !DILocation(line: 114, column: 5, scope: !247)
!336 = !DISubprogram(name: "PAPI_library_init", scope: !337, file: !337, line: 1172, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!337 = !DIFile(filename: "PAPI/papi/src/install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!338 = !DISubroutineType(types: !339)
!339 = !{!120, !120}
!340 = !{}
!341 = !DISubprogram(name: "srand", scope: !342, file: !342, line: 455, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!342 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!343 = !DISubroutineType(types: !344)
!344 = !{null, !7}
!345 = !DISubprogram(name: "time", scope: !346, file: !346, line: 75, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!346 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!347 = !DISubroutineType(types: !348)
!348 = !{!349, !354}
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !350, line: 7, baseType: !351)
!350 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !352, line: 160, baseType: !353)
!352 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!353 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!355 = !DISubprogram(name: "PAPI_create_eventset", scope: !337, file: !337, line: 1147, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!356 = !DISubroutineType(types: !357)
!357 = !{!120, !119}
!358 = !DISubprogram(name: "PAPI_add_event", scope: !337, file: !337, line: 1141, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!359 = !DISubroutineType(types: !360)
!360 = !{!120, !120, !120}
!361 = !DISubprogram(name: "PAPI_start", scope: !337, file: !337, line: 1204, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!362 = !DISubprogram(name: "PAPI_read", scope: !337, file: !337, line: 1187, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !340)
!363 = !DISubroutineType(types: !364)
!364 = !{!120, !120, !365}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
