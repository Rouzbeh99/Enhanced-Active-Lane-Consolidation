; ModuleID = 'vectozied.ll'
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
  ret void, !dbg !161

vectorizing.block:                                ; preds = %vectorizing.block, %for.body.preheader
  %5 = phi i32 [ 0, %for.body.preheader ], [ %37, %vectorizing.block ]
  %6 = phi <vscale x 4 x i1> [ %4, %for.body.preheader ], [ %next.vector.iv.predicate, %vectorizing.block ]
  %loop.StepVec = phi <vscale x 4 x i32> [ %step.vector, %for.body.preheader ], [ %38, %vectorizing.block ]
  %7 = sext i32 %5 to i64, !dbg !162
  %8 = getelementptr inbounds i8, ptr %cond, i64 %7, !dbg !162
  %9 = tail call <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr %8, i32 16, <vscale x 4 x i1> %6, <vscale x 4 x i8> undef)
  %10 = trunc <vscale x 4 x i8> %9 to <vscale x 4 x i1>
  %11 = and <vscale x 4 x i1> %6, %10
  %12 = getelementptr inbounds i32, ptr %a, i64 %7, !dbg !165
  %13 = getelementptr inbounds i32, ptr %c, i64 %7, !dbg !167
  %14 = getelementptr inbounds i32, ptr %b, i64 %7, !dbg !168
  %15 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %12, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %16 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %13, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %17 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %14, i32 16, <vscale x 4 x i1> %11, <vscale x 4 x i32> undef)
  %18 = sub <vscale x 4 x i32> %16, %17
  %19 = mul <vscale x 4 x i32> %18, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %20 = add <vscale x 4 x i32> %15, %loop.StepVec
  %21 = sub <vscale x 4 x i32> %20, %16
  %22 = shl <vscale x 4 x i32> %21, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %23 = sub <vscale x 4 x i32> %19, %17
  %24 = add <vscale x 4 x i32> %23, %22
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %24, ptr %12, i32 16, <vscale x 4 x i1> %11)
  %25 = mul <vscale x 4 x i32> %loop.StepVec, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %26 = sub <vscale x 4 x i32> %17, %16
  %27 = add <vscale x 4 x i32> %26, %24
  %28 = shl <vscale x 4 x i32> %27, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %29 = add <vscale x 4 x i32> %25, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = add <vscale x 4 x i32> %29, %16
  %31 = add <vscale x 4 x i32> %30, %28
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %31, ptr %14, i32 16, <vscale x 4 x i1> %11)
  %32 = shl <vscale x 4 x i32> %31, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %33 = add <vscale x 4 x i32> %16, %loop.StepVec
  %34 = mul <vscale x 4 x i32> %33, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 6, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %35 = add <vscale x 4 x i32> %24, %34
  %36 = add <vscale x 4 x i32> %35, %32
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %36, ptr %13, i32 16, <vscale x 4 x i1> %11)
  %37 = add i32 %5, %1
  %38 = add <vscale x 4 x i32> %loop.StepVec, %stepVector.updated.value
  %next.vector.iv.predicate = icmp ult <vscale x 4 x i32> %38, %vectorized.trip.count
  %vectorize.term.cond.not = icmp ult i32 %37, %n
  br i1 %vectorize.term.cond.not, label %vectorizing.block, label %for.cond.cleanup
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #3 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !173, metadata !DIExpression()), !dbg !175
  %conv = sext i32 %n to i64, !dbg !176
  %mul = shl nsw i64 %conv, 2, !dbg !177
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !178
  call void @llvm.dbg.value(metadata ptr %call, metadata !174, metadata !DIExpression()), !dbg !175
  %cmp = icmp eq ptr %call, null, !dbg !179
  br i1 %cmp, label %if.then, label %if.end, !dbg !181

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.4), !dbg !182
  tail call void @exit(i32 noundef 1) #14, !dbg !184
  unreachable, !dbg !184

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !185
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #3 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !190, metadata !DIExpression()), !dbg !192
  %conv = sext i32 %n to i64, !dbg !193
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #13, !dbg !194
  call void @llvm.dbg.value(metadata ptr %call, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp = icmp eq ptr %call, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.4), !dbg !198
  tail call void @exit(i32 noundef 1) #14, !dbg !200
  unreachable, !dbg !200

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !201
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !202 {
entry:
  %EventSet = alloca i32, align 4
  %values = alloca [1 x i64], align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %EventSet) #15, !dbg !219
  call void @llvm.dbg.value(metadata i32 -1, metadata !207, metadata !DIExpression()), !dbg !220
  store i32 -1, ptr %EventSet, align 4, !dbg !221, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %values) #15, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %values, metadata !208, metadata !DIExpression()), !dbg !227
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #15, !dbg !228
  call void @llvm.dbg.value(metadata i32 %call, metadata !206, metadata !DIExpression()), !dbg !220
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !229
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !231

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !232, !tbaa !234
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %0) #16, !dbg !236
  tail call void @exit(i32 noundef 1) #14, !dbg !237
  unreachable, !dbg !237

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 5000000, metadata !213, metadata !DIExpression()), !dbg !220
  %call3 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !238
  store ptr %call3, ptr @a, align 8, !dbg !239, !tbaa !234
  %call4 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !240
  store ptr %call4, ptr @b, align 8, !dbg !241, !tbaa !234
  %call5 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !242
  store ptr %call5, ptr @c, align 8, !dbg !243, !tbaa !234
  %call6 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !244
  store ptr %call6, ptr @cond, align 8, !dbg !245, !tbaa !234
  %call7 = tail call i64 @time(ptr noundef null) #15, !dbg !246
  %conv = trunc i64 %call7 to i32, !dbg !246
  tail call void @srand(i32 noundef %conv) #15, !dbg !247
  %2 = load ptr, ptr @cond, align 8, !dbg !248, !tbaa !234
  store i8 0, ptr %2, align 1, !dbg !249, !tbaa !250
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !252
  %3 = load ptr, ptr @a, align 8, !tbaa !234
  %4 = load ptr, ptr @b, align 8, !tbaa !234
  %5 = load ptr, ptr @c, align 8, !tbaa !234
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !252
  br label %for.body, !dbg !253

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %EventSet, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !220
  %call20 = call i32 @PAPI_create_eventset(ptr noundef nonnull %EventSet) #15, !dbg !254
  %cmp21.not = icmp eq i32 %call20, 0, !dbg !256
  br i1 %cmp21.not, label %if.end25, label %if.then23, !dbg !257

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !214, metadata !DIExpression()), !dbg !252
  %6 = trunc i64 %indvars.iv to i32, !dbg !258
  %rem = urem i32 %6, 3, !dbg !258
  %arrayidx10 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv, !dbg !261
  store i32 %rem, ptr %arrayidx10, align 4, !dbg !262, !tbaa !222
  %arrayidx12 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !263
  store i32 2, ptr %arrayidx12, align 4, !dbg !264, !tbaa !222
  %arrayidx14 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !265
  store i32 0, ptr %arrayidx14, align 4, !dbg !266, !tbaa !222
  %rem15 = urem i32 %6, 10, !dbg !267
  %cmp16 = icmp eq i32 %rem15, 0, !dbg !268
  %arrayidx19 = getelementptr inbounds i8, ptr %2, i64 %indvars.iv, !dbg !269
  %frombool = zext i1 %cmp16 to i8, !dbg !270
  store i8 %frombool, ptr %arrayidx19, align 1, !dbg !270, !tbaa !250
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !214, metadata !DIExpression()), !dbg !252
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !272
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !253, !llvm.loop !273

if.then23:                                        ; preds = %for.cond.cleanup
  %call24 = call i32 @handle_error(i32 noundef 1) #15, !dbg !277
  br label %if.end25, !dbg !277

if.end25:                                         ; preds = %if.then23, %for.cond.cleanup
  %7 = load i32, ptr %EventSet, align 4, !dbg !278, !tbaa !222
  call void @llvm.dbg.value(metadata i32 %7, metadata !207, metadata !DIExpression()), !dbg !220
  %call26 = call i32 @PAPI_add_event(i32 noundef %7, i32 noundef -2147483598) #15, !dbg !280
  %cmp27.not = icmp eq i32 %call26, 0, !dbg !281
  br i1 %cmp27.not, label %if.end31, label %if.then29, !dbg !282

if.then29:                                        ; preds = %if.end25
  %call30 = call i32 @handle_error(i32 noundef 1) #15, !dbg !283
  br label %if.end31, !dbg !283

if.end31:                                         ; preds = %if.then29, %if.end25
  %8 = load i32, ptr %EventSet, align 4, !dbg !284, !tbaa !222
  call void @llvm.dbg.value(metadata i32 %8, metadata !207, metadata !DIExpression()), !dbg !220
  %call32 = call i32 @PAPI_start(i32 noundef %8) #15, !dbg !286
  %cmp33.not = icmp eq i32 %call32, 0, !dbg !287
  br i1 %cmp33.not, label %if.end37, label %if.then35, !dbg !288

if.then35:                                        ; preds = %if.end31
  %call36 = call i32 @handle_error(i32 noundef 1) #15, !dbg !289
  br label %if.end37, !dbg !289

if.end37:                                         ; preds = %if.then35, %if.end31
  %9 = load ptr, ptr @a, align 8, !dbg !290, !tbaa !234
  %10 = load ptr, ptr @b, align 8, !dbg !291, !tbaa !234
  %11 = load ptr, ptr @c, align 8, !dbg !292, !tbaa !234
  %12 = load ptr, ptr @cond, align 8, !dbg !293, !tbaa !234
  call void @foo(ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef 5000000), !dbg !294
  %13 = load i32, ptr %EventSet, align 4, !dbg !295, !tbaa !222
  call void @llvm.dbg.value(metadata i32 %13, metadata !207, metadata !DIExpression()), !dbg !220
  %call38 = call i32 @PAPI_read(i32 noundef %13, ptr noundef nonnull %values) #15, !dbg !297
  %cmp39.not = icmp eq i32 %call38, 0, !dbg !298
  br i1 %cmp39.not, label %if.end43, label %if.then41, !dbg !299

if.then41:                                        ; preds = %if.end37
  %call42 = call i32 @handle_error(i32 noundef 1) #15, !dbg !300
  br label %if.end43, !dbg !300

if.end43:                                         ; preds = %if.then41, %if.end37
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !301
  %14 = load ptr, ptr @c, align 8, !tbaa !234
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !220
  br label %for.body49, !dbg !302

for.cond.cleanup48:                               ; preds = %for.body49
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i32 noundef %add), !dbg !303
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, i32 noundef %add), !dbg !304
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %values) #15, !dbg !305
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %EventSet) #15, !dbg !305
  ret i32 0, !dbg !306

for.body49:                                       ; preds = %for.body49, %if.end43
  %indvars.iv78 = phi i64 [ 0, %if.end43 ], [ %indvars.iv.next79, %for.body49 ]
  %sum.075 = phi i32 [ 0, %if.end43 ], [ %add, %for.body49 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv78, metadata !217, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i32 %sum.075, metadata !216, metadata !DIExpression()), !dbg !220
  %arrayidx51 = getelementptr inbounds i32, ptr %14, i64 %indvars.iv78, !dbg !307
  %15 = load i32, ptr %arrayidx51, align 4, !dbg !307, !tbaa !222
  %add = add nsw i32 %15, %sum.075, !dbg !310
  call void @llvm.dbg.value(metadata i32 %add, metadata !216, metadata !DIExpression()), !dbg !220
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !311
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next79, metadata !217, metadata !DIExpression()), !dbg !301
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 5000000, !dbg !312
  br i1 %exitcond81.not, label %for.cond.cleanup48, label %for.body49, !dbg !302, !llvm.loop !313
}

declare !dbg !315 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !320 void @srand(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !324 i64 @time(ptr noundef) local_unnamed_addr #8

declare !dbg !334 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #7

declare i32 @handle_error(...) local_unnamed_addr #7

declare !dbg !337 i32 @PAPI_add_event(i32 noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !340 i32 @PAPI_start(i32 noundef) local_unnamed_addr #7

declare !dbg !341 i32 @PAPI_read(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32() #10

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i8> @llvm.masked.load.nxv4i8.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i8>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #12

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #12 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
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
!165 = !DILocation(line: 25, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !3, line: 24, column: 22)
!167 = !DILocation(line: 25, column: 36, scope: !166)
!168 = !DILocation(line: 25, column: 45, scope: !166)
!169 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 42, type: !170, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!170 = !DISubroutineType(types: !171)
!171 = !{!119, !120}
!172 = !{!173, !174}
!173 = !DILocalVariable(name: "n", arg: 1, scope: !169, file: !3, line: 42, type: !120)
!174 = !DILocalVariable(name: "ptr", scope: !169, file: !3, line: 43, type: !119)
!175 = !DILocation(line: 0, scope: !169)
!176 = !DILocation(line: 43, column: 45, scope: !169)
!177 = !DILocation(line: 43, column: 43, scope: !169)
!178 = !DILocation(line: 43, column: 24, scope: !169)
!179 = !DILocation(line: 44, column: 13, scope: !180)
!180 = distinct !DILexicalBlock(scope: !169, file: !3, line: 44, column: 9)
!181 = !DILocation(line: 44, column: 9, scope: !169)
!182 = !DILocation(line: 45, column: 9, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !3, line: 44, column: 22)
!184 = !DILocation(line: 46, column: 9, scope: !183)
!185 = !DILocation(line: 48, column: 5, scope: !169)
!186 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 51, type: !187, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!187 = !DISubroutineType(types: !188)
!188 = !{!122, !120}
!189 = !{!190, !191}
!190 = !DILocalVariable(name: "n", arg: 1, scope: !186, file: !3, line: 51, type: !120)
!191 = !DILocalVariable(name: "ptr", scope: !186, file: !3, line: 52, type: !122)
!192 = !DILocation(line: 0, scope: !186)
!193 = !DILocation(line: 52, column: 48, scope: !186)
!194 = !DILocation(line: 52, column: 26, scope: !186)
!195 = !DILocation(line: 53, column: 13, scope: !196)
!196 = distinct !DILexicalBlock(scope: !186, file: !3, line: 53, column: 9)
!197 = !DILocation(line: 53, column: 9, scope: !186)
!198 = !DILocation(line: 54, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 53, column: 22)
!200 = !DILocation(line: 55, column: 9, scope: !199)
!201 = !DILocation(line: 57, column: 5, scope: !186)
!202 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !203, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!120}
!205 = !{!206, !207, !208, !213, !214, !216, !217}
!206 = !DILocalVariable(name: "retval", scope: !202, file: !3, line: 63, type: !120)
!207 = !DILocalVariable(name: "EventSet", scope: !202, file: !3, line: 63, type: !120)
!208 = !DILocalVariable(name: "values", scope: !202, file: !3, line: 64, type: !209)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 64, elements: !211)
!210 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!211 = !{!212}
!212 = !DISubrange(count: 1)
!213 = !DILocalVariable(name: "n", scope: !202, file: !3, line: 73, type: !120)
!214 = !DILocalVariable(name: "i", scope: !215, file: !3, line: 84, type: !120)
!215 = distinct !DILexicalBlock(scope: !202, file: !3, line: 84, column: 5)
!216 = !DILocalVariable(name: "sum", scope: !202, file: !3, line: 110, type: !120)
!217 = !DILocalVariable(name: "i", scope: !218, file: !3, line: 112, type: !120)
!218 = distinct !DILexicalBlock(scope: !202, file: !3, line: 112, column: 5)
!219 = !DILocation(line: 63, column: 5, scope: !202)
!220 = !DILocation(line: 0, scope: !202)
!221 = !DILocation(line: 63, column: 17, scope: !202)
!222 = !{!223, !223, i64 0}
!223 = !{!"int", !224, i64 0}
!224 = !{!"omnipotent char", !225, i64 0}
!225 = !{!"Simple C/C++ TBAA"}
!226 = !DILocation(line: 64, column: 5, scope: !202)
!227 = !DILocation(line: 64, column: 15, scope: !202)
!228 = !DILocation(line: 66, column: 14, scope: !202)
!229 = !DILocation(line: 67, column: 16, scope: !230)
!230 = distinct !DILexicalBlock(scope: !202, file: !3, line: 67, column: 9)
!231 = !DILocation(line: 67, column: 9, scope: !202)
!232 = !DILocation(line: 68, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !3, line: 67, column: 37)
!234 = !{!235, !235, i64 0}
!235 = !{!"any pointer", !224, i64 0}
!236 = !DILocation(line: 68, column: 9, scope: !233)
!237 = !DILocation(line: 69, column: 9, scope: !233)
!238 = !DILocation(line: 75, column: 9, scope: !202)
!239 = !DILocation(line: 75, column: 7, scope: !202)
!240 = !DILocation(line: 76, column: 9, scope: !202)
!241 = !DILocation(line: 76, column: 7, scope: !202)
!242 = !DILocation(line: 77, column: 9, scope: !202)
!243 = !DILocation(line: 77, column: 7, scope: !202)
!244 = !DILocation(line: 78, column: 12, scope: !202)
!245 = !DILocation(line: 78, column: 10, scope: !202)
!246 = !DILocation(line: 80, column: 11, scope: !202)
!247 = !DILocation(line: 80, column: 5, scope: !202)
!248 = !DILocation(line: 82, column: 5, scope: !202)
!249 = !DILocation(line: 82, column: 13, scope: !202)
!250 = !{!251, !251, i64 0}
!251 = !{!"_Bool", !224, i64 0}
!252 = !DILocation(line: 0, scope: !215)
!253 = !DILocation(line: 84, column: 5, scope: !215)
!254 = !DILocation(line: 92, column: 9, scope: !255)
!255 = distinct !DILexicalBlock(scope: !202, file: !3, line: 92, column: 9)
!256 = !DILocation(line: 92, column: 41, scope: !255)
!257 = !DILocation(line: 92, column: 9, scope: !202)
!258 = !DILocation(line: 85, column: 18, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 84, column: 33)
!260 = distinct !DILexicalBlock(scope: !215, file: !3, line: 84, column: 5)
!261 = !DILocation(line: 85, column: 9, scope: !259)
!262 = !DILocation(line: 85, column: 14, scope: !259)
!263 = !DILocation(line: 86, column: 9, scope: !259)
!264 = !DILocation(line: 86, column: 14, scope: !259)
!265 = !DILocation(line: 87, column: 9, scope: !259)
!266 = !DILocation(line: 87, column: 14, scope: !259)
!267 = !DILocation(line: 88, column: 22, scope: !259)
!268 = !DILocation(line: 88, column: 27, scope: !259)
!269 = !DILocation(line: 88, column: 9, scope: !259)
!270 = !DILocation(line: 88, column: 17, scope: !259)
!271 = !DILocation(line: 84, column: 28, scope: !260)
!272 = !DILocation(line: 84, column: 23, scope: !260)
!273 = distinct !{!273, !253, !274, !275, !276}
!274 = !DILocation(line: 89, column: 5, scope: !215)
!275 = !{!"llvm.loop.mustprogress"}
!276 = !{!"llvm.loop.unroll.disable"}
!277 = !DILocation(line: 93, column: 9, scope: !255)
!278 = !DILocation(line: 96, column: 24, scope: !279)
!279 = distinct !DILexicalBlock(scope: !202, file: !3, line: 96, column: 9)
!280 = !DILocation(line: 96, column: 9, scope: !279)
!281 = !DILocation(line: 96, column: 48, scope: !279)
!282 = !DILocation(line: 96, column: 9, scope: !202)
!283 = !DILocation(line: 97, column: 9, scope: !279)
!284 = !DILocation(line: 100, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !202, file: !3, line: 100, column: 9)
!286 = !DILocation(line: 100, column: 9, scope: !285)
!287 = !DILocation(line: 100, column: 30, scope: !285)
!288 = !DILocation(line: 100, column: 9, scope: !202)
!289 = !DILocation(line: 101, column: 9, scope: !285)
!290 = !DILocation(line: 103, column: 9, scope: !202)
!291 = !DILocation(line: 103, column: 12, scope: !202)
!292 = !DILocation(line: 103, column: 15, scope: !202)
!293 = !DILocation(line: 103, column: 18, scope: !202)
!294 = !DILocation(line: 103, column: 5, scope: !202)
!295 = !DILocation(line: 106, column: 19, scope: !296)
!296 = distinct !DILexicalBlock(scope: !202, file: !3, line: 106, column: 9)
!297 = !DILocation(line: 106, column: 9, scope: !296)
!298 = !DILocation(line: 106, column: 37, scope: !296)
!299 = !DILocation(line: 106, column: 9, scope: !202)
!300 = !DILocation(line: 107, column: 9, scope: !296)
!301 = !DILocation(line: 0, scope: !218)
!302 = !DILocation(line: 112, column: 5, scope: !218)
!303 = !DILocation(line: 116, column: 5, scope: !202)
!304 = !DILocation(line: 117, column: 5, scope: !202)
!305 = !DILocation(line: 120, column: 1, scope: !202)
!306 = !DILocation(line: 119, column: 5, scope: !202)
!307 = !DILocation(line: 113, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 112, column: 33)
!309 = distinct !DILexicalBlock(scope: !218, file: !3, line: 112, column: 5)
!310 = !DILocation(line: 113, column: 13, scope: !308)
!311 = !DILocation(line: 112, column: 28, scope: !309)
!312 = !DILocation(line: 112, column: 23, scope: !309)
!313 = distinct !{!313, !302, !314, !275, !276}
!314 = !DILocation(line: 114, column: 5, scope: !218)
!315 = !DISubprogram(name: "PAPI_library_init", scope: !316, file: !316, line: 1172, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!316 = !DIFile(filename: "PAPI/papi/src/install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!317 = !DISubroutineType(types: !318)
!318 = !{!120, !120}
!319 = !{}
!320 = !DISubprogram(name: "srand", scope: !321, file: !321, line: 455, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!321 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!322 = !DISubroutineType(types: !323)
!323 = !{null, !7}
!324 = !DISubprogram(name: "time", scope: !325, file: !325, line: 75, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!325 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!326 = !DISubroutineType(types: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !329, line: 7, baseType: !330)
!329 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !331, line: 160, baseType: !332)
!331 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!332 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!334 = !DISubprogram(name: "PAPI_create_eventset", scope: !316, file: !316, line: 1147, type: !335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!335 = !DISubroutineType(types: !336)
!336 = !{!120, !119}
!337 = !DISubprogram(name: "PAPI_add_event", scope: !316, file: !316, line: 1141, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!338 = !DISubroutineType(types: !339)
!339 = !{!120, !120, !120}
!340 = !DISubprogram(name: "PAPI_start", scope: !316, file: !316, line: 1204, type: !317, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!341 = !DISubprogram(name: "PAPI_read", scope: !316, file: !316, line: 1187, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !319)
!342 = !DISubroutineType(types: !343)
!343 = !{!120, !120, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
