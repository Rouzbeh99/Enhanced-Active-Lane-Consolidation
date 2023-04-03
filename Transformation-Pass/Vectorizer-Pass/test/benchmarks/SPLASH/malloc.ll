; ModuleID = 'malloc.c'
source_filename = "malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemPool = type { %union.pthread_mutex_t, ptr, i64, i64, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.GlobalMemory = type { %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, [1024 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }

@mallocP = dso_local local_unnamed_addr global i64 1, align 8, !dbg !0
@machineP = dso_local local_unnamed_addr global i64 1, align 8, !dbg !50
@mem_pool = dso_local local_unnamed_addr global ptr null, align 8, !dbg !52
@.str = private unnamed_addr constant [13 x i8] c"Malloc max: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%ld* \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@Global = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"*** Bad size from malloc %ld, %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Bad size %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Bad home %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MallocInit(i64 noundef %P) local_unnamed_addr #0 !dbg !61 {
entry:
  call void @llvm.dbg.value(metadata i64 %P, metadata !65, metadata !DIExpression()), !dbg !67
  store i64 %P, ptr @mallocP, align 8, !dbg !68
  %0 = mul i64 %P, 72, !dbg !69
  %mul = add i64 %0, 72, !dbg !69
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #11, !dbg !70
  %incdec.ptr = getelementptr inbounds %struct.MemPool, ptr %call, i64 1, !dbg !71
  store ptr %incdec.ptr, ptr @mem_pool, align 8, !dbg !71
  call void @llvm.dbg.value(metadata i64 -1, metadata !66, metadata !DIExpression()), !dbg !67
  %cmp3 = icmp sgt i64 %P, -1, !dbg !72
  br i1 %cmp3, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %entry, %for.body
  %p.04 = phi i64 [ %inc, %for.body ], [ -1, %entry ]
  call void @llvm.dbg.value(metadata i64 %p.04, metadata !66, metadata !DIExpression()), !dbg !67
  tail call void @InitOneFreeList(i64 noundef %p.04), !dbg !76
  %inc = add nsw i64 %p.04, 1, !dbg !77
  call void @llvm.dbg.value(metadata i64 %inc, metadata !66, metadata !DIExpression()), !dbg !67
  %1 = load i64, ptr @mallocP, align 8, !dbg !78
  %cmp = icmp slt i64 %inc, %1, !dbg !72
  br i1 %cmp, label %for.body, label %for.end, !dbg !75, !llvm.loop !79

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !83
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitOneFreeList(i64 noundef %p) local_unnamed_addr #0 !dbg !84 {
entry:
  call void @llvm.dbg.value(metadata i64 %p, metadata !86, metadata !DIExpression()), !dbg !88
  %0 = load ptr, ptr @mem_pool, align 8, !dbg !89
  %arrayidx = getelementptr inbounds %struct.MemPool, ptr %0, i64 %p, !dbg !89
  %call = tail call i32 @pthread_mutex_init(ptr noundef %arrayidx, ptr noundef null) #12, !dbg !91
  %call1 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #11, !dbg !92
  %1 = load ptr, ptr @mem_pool, align 8, !dbg !92
  %freeBlock = getelementptr inbounds %struct.MemPool, ptr %1, i64 %p, i32 1, !dbg !92
  store ptr %call1, ptr %freeBlock, align 8, !dbg !92
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !88
  br label %for.body, !dbg !94

for.body:                                         ; preds = %entry, %for.body
  %j.029 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %j.029, metadata !87, metadata !DIExpression()), !dbg !88
  %2 = load ptr, ptr @mem_pool, align 8, !dbg !96
  %freeBlock12 = getelementptr inbounds %struct.MemPool, ptr %2, i64 %p, i32 1, !dbg !98
  %3 = load ptr, ptr %freeBlock12, align 8, !dbg !98
  %arrayidx13 = getelementptr inbounds ptr, ptr %3, i64 %j.029, !dbg !96
  store ptr null, ptr %arrayidx13, align 8, !dbg !99
  %inc = add nuw nsw i64 %j.029, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %inc, metadata !87, metadata !DIExpression()), !dbg !88
  %exitcond.not = icmp eq i64 %inc, 17, !dbg !101
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !94, !llvm.loop !102

for.end:                                          ; preds = %for.body
  %4 = load ptr, ptr @mem_pool, align 8, !dbg !104
  %touched = getelementptr inbounds %struct.MemPool, ptr %4, i64 %p, i32 3, !dbg !105
  store i64 0, ptr %touched, align 8, !dbg !106
  %5 = load ptr, ptr @mem_pool, align 8, !dbg !107
  %maxm = getelementptr inbounds %struct.MemPool, ptr %5, i64 %p, i32 4, !dbg !108
  store i64 0, ptr %maxm, align 8, !dbg !109
  %6 = load ptr, ptr @mem_pool, align 8, !dbg !110
  %tally = getelementptr inbounds %struct.MemPool, ptr %6, i64 %p, i32 2, !dbg !111
  store i64 0, ptr %tally, align 8, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: nounwind
declare !dbg !114 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @MigrateMem(ptr nocapture %start, i64 %length, i64 %home) local_unnamed_addr #3 !dbg !130 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 undef, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i64 undef, metadata !137, metadata !DIExpression()), !dbg !138
  ret void, !dbg !139
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @MallocStats() local_unnamed_addr #4 !dbg !140 {
entry:
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str), !dbg !145
  call void @llvm.dbg.value(metadata i64 0, metadata !144, metadata !DIExpression()), !dbg !146
  %0 = load i64, ptr @mallocP, align 8, !dbg !147
  %cmp12 = icmp sgt i64 %0, 0, !dbg !150
  br i1 %cmp12, label %for.body, label %for.end, !dbg !151

for.body:                                         ; preds = %entry, %for.body
  %i.013 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.013, metadata !144, metadata !DIExpression()), !dbg !146
  %1 = load ptr, ptr @mem_pool, align 8, !dbg !152
  %touched = getelementptr inbounds %struct.MemPool, ptr %1, i64 %i.013, i32 3, !dbg !154
  %2 = load i64, ptr %touched, align 8, !dbg !154
  %cmp1 = icmp sgt i64 %2, 0, !dbg !155
  %maxm = getelementptr inbounds %struct.MemPool, ptr %1, i64 %i.013, i32 4, !dbg !156
  %3 = load i64, ptr %maxm, align 8, !dbg !156
  %.str.1..str.2 = select i1 %cmp1, ptr @.str.1, ptr @.str.2
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull %.str.1..str.2, i64 noundef %3), !dbg !156
  %inc = add nuw nsw i64 %i.013, 1, !dbg !157
  call void @llvm.dbg.value(metadata i64 %inc, metadata !144, metadata !DIExpression()), !dbg !146
  %4 = load i64, ptr @mallocP, align 8, !dbg !147
  %cmp = icmp slt i64 %inc, %4, !dbg !150
  br i1 %cmp, label %for.body, label %for.end, !dbg !151, !llvm.loop !158

for.end:                                          ; preds = %for.body, %entry
  %putchar = tail call i32 @putchar(i32 10), !dbg !160
  ret void, !dbg !161
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i64 @FindBucket(i64 noundef %size) local_unnamed_addr #6 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !166, metadata !DIExpression()), !dbg !168
  %cmp = icmp sgt i64 %size, 32768, !dbg !169
  br i1 %cmp, label %if.end, label %while.cond, !dbg !171

while.cond:                                       ; preds = %entry, %while.cond
  %bucket.0 = phi i64 [ %inc, %while.cond ], [ 1, %entry ], !dbg !172
  call void @llvm.dbg.value(metadata i64 %bucket.0, metadata !167, metadata !DIExpression()), !dbg !168
  %sh_prom = trunc i64 %bucket.0 to i32, !dbg !174
  %shl = shl nuw i32 1, %sh_prom, !dbg !174
  %conv = sext i32 %shl to i64, !dbg !175
  %cmp1 = icmp slt i64 %conv, %size, !dbg !176
  %inc = add nuw nsw i64 %bucket.0, 1, !dbg !177
  call void @llvm.dbg.value(metadata i64 %inc, metadata !167, metadata !DIExpression()), !dbg !168
  br i1 %cmp1, label %while.cond, label %if.end, !dbg !178, !llvm.loop !179

if.end:                                           ; preds = %while.cond, %entry
  %bucket.1 = phi i64 [ 16, %entry ], [ %bucket.0, %while.cond ], !dbg !180
  call void @llvm.dbg.value(metadata i64 %bucket.1, metadata !167, metadata !DIExpression()), !dbg !168
  ret i64 %bucket.1, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @MyMalloc(i64 noundef %size, i64 noundef %home) local_unnamed_addr #0 !dbg !182 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !186, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata i64 %home, metadata !187, metadata !DIExpression()), !dbg !197
  %0 = tail call i64 @llvm.smax.i64(i64 %size, i64 8), !dbg !198
  call void @llvm.dbg.value(metadata i64 %0, metadata !186, metadata !DIExpression()), !dbg !197
  %cmp1 = icmp eq i64 %home, 888, !dbg !199
  %spec.select = select i1 %cmp1, i64 -1, i64 %home, !dbg !201
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !187, metadata !DIExpression()), !dbg !197
  %call = tail call i64 @FindBucket(i64 noundef %0), !dbg !202
  call void @llvm.dbg.value(metadata i64 %call, metadata !189, metadata !DIExpression()), !dbg !197
  %cmp4 = icmp slt i64 %call, 16, !dbg !203
  br i1 %cmp4, label %if.then9, label %if.end21.thread, !dbg !205

if.end21.thread:                                  ; preds = %entry
  %sub = add nuw nsw i64 %0, 7, !dbg !206
  %div209 = and i64 %sub, 9223372036854775800, !dbg !207
  call void @llvm.dbg.value(metadata i64 %div209, metadata !191, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !197
  br label %if.then23, !dbg !208

if.then9:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %div209, metadata !191, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata ptr null, metadata !194, metadata !DIExpression()), !dbg !197
  %1 = load ptr, ptr @mem_pool, align 8, !dbg !209
  %arrayidx = getelementptr inbounds %struct.MemPool, ptr %1, i64 %spec.select, !dbg !209
  %call10 = tail call i32 @pthread_mutex_lock(ptr noundef %arrayidx) #12, !dbg !213
  %2 = load ptr, ptr @mem_pool, align 8, !dbg !214
  %freeBlock = getelementptr inbounds %struct.MemPool, ptr %2, i64 %spec.select, i32 1, !dbg !215
  %3 = load ptr, ptr %freeBlock, align 8, !dbg !215
  %arrayidx12 = getelementptr inbounds ptr, ptr %3, i64 %call, !dbg !214
  %4 = load ptr, ptr %arrayidx12, align 8, !dbg !214
  call void @llvm.dbg.value(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !197
  %tobool.not = icmp eq ptr %4, null, !dbg !216
  br i1 %tobool.not, label %if.end21.thread232, label %if.end21, !dbg !218

if.end21.thread232:                               ; preds = %if.then9
  %sh_prom = trunc i64 %call to i32, !dbg !219
  %shl = shl nuw i32 1, %sh_prom, !dbg !219
  %conv = sext i32 %shl to i64, !dbg !220
  %arrayidx18233 = getelementptr inbounds %struct.MemPool, ptr %2, i64 %spec.select, !dbg !221
  %call20234 = tail call i32 @pthread_mutex_unlock(ptr noundef %arrayidx18233) #12, !dbg !223
  call void @llvm.dbg.value(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !197
  br label %if.then23, !dbg !208

if.end21:                                         ; preds = %if.then9
  %5 = load ptr, ptr %4, align 8, !dbg !224
  store ptr %5, ptr %arrayidx12, align 8, !dbg !225
  %.pre = load ptr, ptr @mem_pool, align 8, !dbg !221
  %arrayidx18 = getelementptr inbounds %struct.MemPool, ptr %.pre, i64 %spec.select, !dbg !221
  %call20 = tail call i32 @pthread_mutex_unlock(ptr noundef %arrayidx18) #12, !dbg !223
  call void @llvm.dbg.value(metadata ptr %4, metadata !194, metadata !DIExpression()), !dbg !197
  br label %if.then66, !dbg !208

if.then23:                                        ; preds = %if.end21.thread232, %if.end21.thread
  %alloc_size.0213220 = phi i64 [ %div209, %if.end21.thread ], [ %conv, %if.end21.thread232 ]
  %6 = load ptr, ptr @mem_pool, align 8, !dbg !226
  %arrayidx24 = getelementptr inbounds %struct.MemPool, ptr %6, i64 %spec.select, !dbg !226
  %call26 = tail call i32 @pthread_mutex_lock(ptr noundef %arrayidx24) #12, !dbg !230
  call void @llvm.dbg.value(metadata ptr null, metadata !195, metadata !DIExpression()), !dbg !197
  %7 = load ptr, ptr @mem_pool, align 8, !dbg !231
  %freeBlock28 = getelementptr inbounds %struct.MemPool, ptr %7, i64 %spec.select, i32 1, !dbg !232
  %8 = load ptr, ptr %freeBlock28, align 8, !dbg !232
  %arrayidx29 = getelementptr inbounds ptr, ptr %8, i64 16, !dbg !231
  call void @llvm.dbg.value(metadata ptr undef, metadata !193, metadata !DIExpression()), !dbg !197
  %add32 = add i64 %alloc_size.0213220, 16
  br label %while.cond, !dbg !233

while.cond:                                       ; preds = %while.body, %if.then23
  %d.0.in = phi ptr [ %arrayidx29, %if.then23 ], [ %d.0, %while.body ]
  %prev.0 = phi ptr [ null, %if.then23 ], [ %d.0, %while.body ], !dbg !234
  %d.0 = load ptr, ptr %d.0.in, align 8, !dbg !234
  call void @llvm.dbg.value(metadata ptr %prev.0, metadata !195, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.value(metadata ptr %d.0, metadata !193, metadata !DIExpression()), !dbg !197
  %tobool30.not = icmp eq ptr %d.0, null, !dbg !233
  br i1 %tobool30.not, label %if.end64, label %while.body, !dbg !233

while.body:                                       ; preds = %while.cond
  %arrayidx31 = getelementptr inbounds i64, ptr %d.0, i64 -1, !dbg !235
  %9 = load i64, ptr %arrayidx31, align 8, !dbg !235
  call void @llvm.dbg.value(metadata i64 %9, metadata !192, metadata !DIExpression()), !dbg !197
  %cmp33.not = icmp ult i64 %9, %add32, !dbg !237
  br i1 %cmp33.not, label %while.cond, label %if.then35, !dbg !239, !llvm.loop !240

if.then35:                                        ; preds = %while.body
  %arrayidx31.le = getelementptr inbounds i64, ptr %d.0, i64 -1, !dbg !235
  %sub36 = sub nsw i64 %9, %alloc_size.0213220, !dbg !242
  %sub37 = add i64 %sub36, -16, !dbg !244
  call void @llvm.dbg.value(metadata i64 %sub37, metadata !190, metadata !DIExpression()), !dbg !197
  %div38211 = lshr i64 %sub37, 3, !dbg !245
  %add.ptr = getelementptr inbounds i64, ptr %d.0, i64 %div38211, !dbg !246
  %add.ptr39 = getelementptr inbounds i64, ptr %add.ptr, i64 2, !dbg !247
  call void @llvm.dbg.value(metadata ptr %add.ptr39, metadata !194, metadata !DIExpression()), !dbg !197
  %arrayidx40 = getelementptr inbounds i64, ptr %add.ptr39, i64 -1, !dbg !248
  store i64 %alloc_size.0213220, ptr %arrayidx40, align 8, !dbg !249
  %arrayidx41 = getelementptr inbounds i64, ptr %add.ptr39, i64 -2, !dbg !250
  store i64 %spec.select, ptr %arrayidx41, align 8, !dbg !251
  %cmp42 = icmp sgt i64 %sub37, 32768, !dbg !252
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !254

if.then44:                                        ; preds = %if.then35
  store i64 %sub37, ptr %arrayidx31.le, align 8, !dbg !255
  br label %if.end64, !dbg !257

if.else46:                                        ; preds = %if.then35
  %tobool47.not = icmp eq ptr %prev.0, null, !dbg !258
  %10 = load ptr, ptr %d.0, align 8, !dbg !261
  br i1 %tobool47.not, label %if.else49, label %if.end53, !dbg !262

if.else49:                                        ; preds = %if.else46
  %11 = load ptr, ptr @mem_pool, align 8, !dbg !263
  %freeBlock51 = getelementptr inbounds %struct.MemPool, ptr %11, i64 %spec.select, i32 1, !dbg !264
  %12 = load ptr, ptr %freeBlock51, align 8, !dbg !264
  %arrayidx52 = getelementptr inbounds ptr, ptr %12, i64 16, !dbg !263
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.else49
  %arrayidx52.sink = phi ptr [ %arrayidx52, %if.else49 ], [ %prev.0, %if.else46 ]
  store ptr %10, ptr %arrayidx52.sink, align 8, !dbg !261
  %cmp54 = icmp sgt i64 %sub37, 0, !dbg !265
  br i1 %cmp54, label %if.then56, label %if.end64, !dbg !267

if.then56:                                        ; preds = %if.end53
  store i64 %sub37, ptr %arrayidx31.le, align 8, !dbg !268
  tail call void @MyFreeNow(ptr noundef nonnull %d.0), !dbg !270
  br label %if.end64, !dbg !271

if.end64:                                         ; preds = %while.cond, %if.end53, %if.then56, %if.then44
  %result.1 = phi ptr [ %add.ptr39, %if.then44 ], [ %add.ptr39, %if.then56 ], [ %add.ptr39, %if.end53 ], [ null, %while.cond ], !dbg !197
  call void @llvm.dbg.value(metadata ptr %result.1, metadata !194, metadata !DIExpression()), !dbg !197
  %13 = load ptr, ptr @mem_pool, align 8, !dbg !272
  %arrayidx61 = getelementptr inbounds %struct.MemPool, ptr %13, i64 %spec.select, !dbg !272
  %call63 = tail call i32 @pthread_mutex_unlock(ptr noundef %arrayidx61) #12, !dbg !274
  %tobool65.not = icmp eq ptr %result.1, null, !dbg !275
  br i1 %tobool65.not, label %for.end, label %if.then66, !dbg !277

if.then66:                                        ; preds = %if.end21, %if.end64
  %result.2224 = phi ptr [ %result.1, %if.end64 ], [ %4, %if.end21 ]
  store ptr null, ptr %result.2224, align 8, !dbg !278
  br label %if.end105, !dbg !280

for.end:                                          ; preds = %if.end64
  %14 = tail call i64 @llvm.smax.i64(i64 %alloc_size.0213220, i64 262144), !dbg !281
  call void @llvm.dbg.value(metadata i64 %14, metadata !192, metadata !DIExpression()), !dbg !197
  %15 = load ptr, ptr @Global, align 8, !dbg !283
  %memLock = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 2, !dbg !285
  %call70 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memLock) #12, !dbg !286
  %add71 = add nuw i64 %14, 16, !dbg !287
  %call72 = tail call noalias ptr @malloc(i64 noundef %add71) #11, !dbg !288
  call void @llvm.dbg.value(metadata ptr %call72, metadata !196, metadata !DIExpression()), !dbg !197
  %16 = load ptr, ptr @mem_pool, align 8, !dbg !289
  %touched = getelementptr inbounds %struct.MemPool, ptr %16, i64 %spec.select, i32 3, !dbg !290
  %17 = load i64, ptr %touched, align 8, !dbg !291
  %inc = add nsw i64 %17, 1, !dbg !291
  store i64 %inc, ptr %touched, align 8, !dbg !291
  %18 = load ptr, ptr @Global, align 8, !dbg !292
  %memLock75 = getelementptr inbounds %struct.GlobalMemory, ptr %18, i64 0, i32 2, !dbg !294
  %call76 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memLock75) #12, !dbg !295
  %add.ptr77 = getelementptr i64, ptr %call72, i64 2, !dbg !296
  call void @llvm.dbg.value(metadata ptr %add.ptr77, metadata !196, metadata !DIExpression()), !dbg !197
  %arrayidx78 = getelementptr inbounds i64, ptr %call72, i64 1, !dbg !297
  store i64 %14, ptr %arrayidx78, align 8, !dbg !298
  store i64 %spec.select, ptr %call72, align 8, !dbg !299
  call void @llvm.dbg.value(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !197
  %div80210 = and i64 %14, 9223372036854775800, !dbg !300
  call void @llvm.memset.p0.i64(ptr align 8 %add.ptr77, i8 0, i64 %div80210, i1 false), !dbg !302
  call void @llvm.dbg.value(metadata i32 undef, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !197
  %cmp85 = icmp sgt i64 %alloc_size.0213220, 262143, !dbg !304
  br i1 %cmp85, label %if.end105, label %if.else88, !dbg !306

if.else88:                                        ; preds = %for.end
  %19 = load ptr, ptr @mem_pool, align 8, !dbg !307
  %tally = getelementptr inbounds %struct.MemPool, ptr %19, i64 %spec.select, i32 2, !dbg !309
  %20 = load i64, ptr %tally, align 8, !dbg !310
  %add91 = add nsw i64 %20, %14, !dbg !310
  store i64 %add91, ptr %tally, align 8, !dbg !310
  %21 = load ptr, ptr @mem_pool, align 8, !dbg !311
  %tally93 = getelementptr inbounds %struct.MemPool, ptr %21, i64 %spec.select, i32 2, !dbg !313
  %22 = load i64, ptr %tally93, align 8, !dbg !313
  %maxm = getelementptr inbounds %struct.MemPool, ptr %21, i64 %spec.select, i32 4, !dbg !314
  %23 = load i64, ptr %maxm, align 8, !dbg !314
  %cmp95 = icmp sgt i64 %22, %23, !dbg !315
  br i1 %cmp95, label %if.then97, label %if.end102, !dbg !316

if.then97:                                        ; preds = %if.else88
  store i64 %22, ptr %maxm, align 8, !dbg !317
  br label %if.end102, !dbg !319

if.end102:                                        ; preds = %if.then97, %if.else88
  tail call void @MyFree(ptr noundef nonnull %add.ptr77), !dbg !320
  %call103 = tail call ptr @MyMalloc(i64 noundef %alloc_size.0213220, i64 noundef %spec.select), !dbg !321
  call void @llvm.dbg.value(metadata ptr %call103, metadata !194, metadata !DIExpression()), !dbg !197
  br label %if.end105

if.end105:                                        ; preds = %for.end, %if.end102, %if.then66
  %result.3 = phi ptr [ %result.2224, %if.then66 ], [ %call103, %if.end102 ], [ %add.ptr77, %for.end ], !dbg !197
  call void @llvm.dbg.value(metadata ptr %result.3, metadata !194, metadata !DIExpression()), !dbg !197
  %arrayidx106 = getelementptr inbounds i64, ptr %result.3, i64 -1, !dbg !322
  %24 = load i64, ptr %arrayidx106, align 8, !dbg !322
  %25 = load ptr, ptr @mem_pool, align 8, !dbg !323
  %tally108 = getelementptr inbounds %struct.MemPool, ptr %25, i64 %spec.select, i32 2, !dbg !324
  %26 = load i64, ptr %tally108, align 8, !dbg !325
  %add109 = add nsw i64 %26, %24, !dbg !325
  store i64 %add109, ptr %tally108, align 8, !dbg !325
  %27 = load ptr, ptr @mem_pool, align 8, !dbg !326
  %tally111 = getelementptr inbounds %struct.MemPool, ptr %27, i64 %spec.select, i32 2, !dbg !328
  %28 = load i64, ptr %tally111, align 8, !dbg !328
  %maxm113 = getelementptr inbounds %struct.MemPool, ptr %27, i64 %spec.select, i32 4, !dbg !329
  %29 = load i64, ptr %maxm113, align 8, !dbg !329
  %cmp114 = icmp sgt i64 %28, %29, !dbg !330
  br i1 %cmp114, label %if.then116, label %if.end121, !dbg !331

if.then116:                                       ; preds = %if.end105
  store i64 %28, ptr %maxm113, align 8, !dbg !332
  br label %if.end121, !dbg !334

if.end121:                                        ; preds = %if.then116, %if.end105
  %30 = load i64, ptr %arrayidx106, align 8, !dbg !335
  %cmp123 = icmp slt i64 %30, %0, !dbg !337
  br i1 %cmp123, label %if.then125, label %if.end128, !dbg !338

if.then125:                                       ; preds = %if.end121
  %call127 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %0, i64 noundef %30), !dbg !339
  br label %if.end128, !dbg !339

if.end128:                                        ; preds = %if.then125, %if.end121
  ret ptr %result.3, !dbg !340
}

; Function Attrs: nounwind
declare !dbg !341 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !344 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @MyFreeNow(ptr noundef %block) local_unnamed_addr #0 !dbg !345 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !349, metadata !DIExpression()), !dbg !353
  %arrayidx = getelementptr inbounds i64, ptr %block, i64 -1, !dbg !354
  %0 = load i64, ptr %arrayidx, align 8, !dbg !354
  call void @llvm.dbg.value(metadata i64 %0, metadata !351, metadata !DIExpression()), !dbg !353
  %arrayidx1 = getelementptr inbounds i64, ptr %block, i64 -2, !dbg !355
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !355
  call void @llvm.dbg.value(metadata i64 %1, metadata !352, metadata !DIExpression()), !dbg !353
  %cmp = icmp slt i64 %0, 1, !dbg !356
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %0), !dbg !359
  tail call void @exit(i32 noundef -1) #13, !dbg !361
  unreachable, !dbg !361

if.end:                                           ; preds = %entry
  %cmp2 = icmp sgt i64 %1, -2, !dbg !362
  %2 = load i64, ptr @mallocP, align 8
  %cmp3.not = icmp slt i64 %1, %2
  %or.cond = select i1 %cmp2, i1 %cmp3.not, i1 false, !dbg !364
  br i1 %or.cond, label %if.end6, label %if.then4, !dbg !364

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %1), !dbg !365
  tail call void @exit(i32 noundef -1) #13, !dbg !367
  unreachable, !dbg !367

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp ugt i64 %0, 32768, !dbg !368
  br i1 %cmp7, label %if.end18, label %if.end14, !dbg !370

if.end14:                                         ; preds = %if.end6
  %call9 = tail call i64 @FindBucket(i64 noundef %0), !dbg !371
  call void @llvm.dbg.value(metadata i64 %call9, metadata !350, metadata !DIExpression()), !dbg !353
  %sh_prom = trunc i64 %call9 to i32, !dbg !373
  %shl = shl nuw i32 1, %sh_prom, !dbg !373
  %conv = sext i32 %shl to i64, !dbg !375
  %cmp10 = icmp slt i64 %0, %conv, !dbg !376
  %dec = sext i1 %cmp10 to i64, !dbg !377
  %spec.select = add nsw i64 %call9, %dec, !dbg !377
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !350, metadata !DIExpression()), !dbg !353
  %cmp15 = icmp eq i64 %spec.select, 0, !dbg !378
  br i1 %cmp15, label %cleanup, label %if.end18, !dbg !380

if.end18:                                         ; preds = %if.end6, %if.end14
  %bucket.047 = phi i64 [ %spec.select, %if.end14 ], [ 16, %if.end6 ]
  %3 = load ptr, ptr @mem_pool, align 8, !dbg !381
  %freeBlock = getelementptr inbounds %struct.MemPool, ptr %3, i64 %1, i32 1, !dbg !382
  %4 = load ptr, ptr %freeBlock, align 8, !dbg !382
  %arrayidx20 = getelementptr inbounds ptr, ptr %4, i64 %bucket.047, !dbg !381
  %5 = load ptr, ptr %arrayidx20, align 8, !dbg !381
  store ptr %5, ptr %block, align 8, !dbg !383
  %6 = load ptr, ptr @mem_pool, align 8, !dbg !384
  %freeBlock22 = getelementptr inbounds %struct.MemPool, ptr %6, i64 %1, i32 1, !dbg !385
  %7 = load ptr, ptr %freeBlock22, align 8, !dbg !385
  %arrayidx23 = getelementptr inbounds ptr, ptr %7, i64 %bucket.047, !dbg !384
  store ptr %block, ptr %arrayidx23, align 8, !dbg !386
  %8 = load ptr, ptr @mem_pool, align 8, !dbg !387
  %tally = getelementptr inbounds %struct.MemPool, ptr %8, i64 %1, i32 2, !dbg !388
  %9 = load i64, ptr %tally, align 8, !dbg !389
  %sub = sub nsw i64 %9, %0, !dbg !389
  store i64 %sub, ptr %tally, align 8, !dbg !389
  br label %cleanup, !dbg !390

cleanup:                                          ; preds = %if.end14, %if.end18
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MyFree(ptr noundef %block) local_unnamed_addr #0 !dbg !391 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !393, metadata !DIExpression()), !dbg !395
  %arrayidx = getelementptr inbounds i64, ptr %block, i64 -2, !dbg !396
  %0 = load i64, ptr %arrayidx, align 8, !dbg !396
  call void @llvm.dbg.value(metadata i64 %0, metadata !394, metadata !DIExpression()), !dbg !395
  %1 = load ptr, ptr @mem_pool, align 8, !dbg !397
  %arrayidx1 = getelementptr inbounds %struct.MemPool, ptr %1, i64 %0, !dbg !397
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %arrayidx1) #12, !dbg !399
  tail call void @MyFreeNow(ptr noundef %block), !dbg !400
  %2 = load ptr, ptr @mem_pool, align 8, !dbg !401
  %arrayidx2 = getelementptr inbounds %struct.MemPool, ptr %2, i64 %0, !dbg !401
  %call4 = tail call i32 @pthread_mutex_unlock(ptr noundef %arrayidx2) #12, !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mallocP", scope: !2, file: !3, line: 56, type: !41, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !49, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "malloc.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/kernels/cholesky", checksumkind: CSK_MD5, checksum: "8fff5d5ce2dcd1f7fba02d35cf5351a8")
!4 = !{!5, !43, !44, !48}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MemPool", file: !3, line: 50, size: 576, elements: !7)
!7 = !{!8, !42, !45, !46, !47}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "memoryLock", scope: !6, file: !3, line: 51, baseType: !9, size: 320)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !10, line: 72, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!11 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !10, line: 67, size: 320, elements: !12)
!12 = !{!13, !35, !40}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !11, file: !10, line: 69, baseType: !14, size: 320)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !15, line: 22, size: 320, elements: !16)
!15 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!16 = !{!17, !19, !21, !22, !23, !24, !26, !27}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !14, file: !15, line: 24, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !14, file: !15, line: 25, baseType: !20, size: 32, offset: 32)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !14, file: !15, line: 26, baseType: !18, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !14, file: !15, line: 28, baseType: !20, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !14, file: !15, line: 32, baseType: !18, size: 32, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !14, file: !15, line: 34, baseType: !25, size: 16, offset: 160)
!25 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !14, file: !15, line: 35, baseType: !25, size: 16, offset: 176)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !14, file: !15, line: 36, baseType: !28, size: 128, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !29, line: 53, baseType: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !29, line: 49, size: 128, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !30, file: !29, line: 51, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !30, file: !29, line: 52, baseType: !33, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !11, file: !10, line: 70, baseType: !36, size: 320)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 320, elements: !38)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !{!39}
!39 = !DISubrange(count: 40)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !11, file: !10, line: 71, baseType: !41, size: 64)
!41 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "freeBlock", scope: !6, file: !3, line: 52, baseType: !43, size: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tally", scope: !6, file: !3, line: 53, baseType: !41, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "touched", scope: !6, file: !3, line: 53, baseType: !41, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "maxm", scope: !6, file: !3, line: 53, baseType: !41, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!49 = !{!0, !50, !52}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "machineP", scope: !2, file: !3, line: 56, type: !41, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "mem_pool", scope: !2, file: !3, line: 54, type: !5, isLocal: false, isDefinition: true)
!54 = !{i32 7, !"Dwarf Version", i32 5}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = !{i32 7, !"PIC Level", i32 2}
!58 = !{i32 7, !"PIE Level", i32 2}
!59 = !{i32 7, !"uwtable", i32 2}
!60 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!61 = distinct !DISubprogram(name: "MallocInit", scope: !3, file: !3, line: 61, type: !62, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !41}
!64 = !{!65, !66}
!65 = !DILocalVariable(name: "P", arg: 1, scope: !61, file: !3, line: 61, type: !41)
!66 = !DILocalVariable(name: "p", scope: !61, file: !3, line: 63, type: !41)
!67 = !DILocation(line: 0, scope: !61)
!68 = !DILocation(line: 65, column: 11, scope: !61)
!69 = !DILocation(line: 68, column: 23, scope: !61)
!70 = !DILocation(line: 68, column: 5, scope: !61)
!71 = !DILocation(line: 69, column: 11, scope: !61)
!72 = !DILocation(line: 72, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 72, column: 3)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 72, column: 3)
!75 = !DILocation(line: 72, column: 3, scope: !74)
!76 = !DILocation(line: 73, column: 5, scope: !73)
!77 = !DILocation(line: 72, column: 28, scope: !73)
!78 = !DILocation(line: 72, column: 18, scope: !73)
!79 = distinct !{!79, !75, !80, !81, !82}
!80 = !DILocation(line: 73, column: 22, scope: !74)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !DILocation(line: 74, column: 1, scope: !61)
!84 = distinct !DISubprogram(name: "InitOneFreeList", scope: !3, file: !3, line: 77, type: !62, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!85 = !{!86, !87}
!86 = !DILocalVariable(name: "p", arg: 1, scope: !84, file: !3, line: 77, type: !41)
!87 = !DILocalVariable(name: "j", scope: !84, file: !3, line: 79, type: !41)
!88 = !DILocation(line: 0, scope: !84)
!89 = !DILocation(line: 81, column: 25, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !3, line: 81, column: 3)
!91 = !DILocation(line: 81, column: 4, scope: !90)
!92 = !DILocation(line: 0, scope: !93)
!93 = distinct !DILexicalBlock(scope: !84, file: !3, line: 82, column: 7)
!94 = !DILocation(line: 93, column: 3, scope: !95)
!95 = distinct !DILexicalBlock(scope: !84, file: !3, line: 93, column: 3)
!96 = !DILocation(line: 94, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !3, line: 93, column: 3)
!98 = !DILocation(line: 94, column: 17, scope: !97)
!99 = !DILocation(line: 94, column: 30, scope: !97)
!100 = !DILocation(line: 93, column: 26, scope: !97)
!101 = !DILocation(line: 93, column: 14, scope: !97)
!102 = distinct !{!102, !94, !103, !81, !82}
!103 = !DILocation(line: 94, column: 32, scope: !95)
!104 = !DILocation(line: 95, column: 42, scope: !84)
!105 = !DILocation(line: 95, column: 54, scope: !84)
!106 = !DILocation(line: 95, column: 62, scope: !84)
!107 = !DILocation(line: 95, column: 23, scope: !84)
!108 = !DILocation(line: 95, column: 35, scope: !84)
!109 = !DILocation(line: 95, column: 40, scope: !84)
!110 = !DILocation(line: 95, column: 3, scope: !84)
!111 = !DILocation(line: 95, column: 15, scope: !84)
!112 = !DILocation(line: 95, column: 21, scope: !84)
!113 = !DILocation(line: 96, column: 1, scope: !84)
!114 = !DISubprogram(name: "pthread_mutex_init", scope: !115, file: !115, line: 725, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !129)
!115 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!116 = !DISubroutineType(types: !117)
!117 = !{!18, !118, !119}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !10, line: 36, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !10, line: 32, size: 32, elements: !123)
!123 = !{!124, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !122, file: !10, line: 34, baseType: !125, size: 32)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 4)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !122, file: !10, line: 35, baseType: !18, size: 32)
!129 = !{}
!130 = distinct !DISubprogram(name: "MigrateMem", scope: !3, file: !3, line: 248, type: !131, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133, !41, !41}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!134 = !{!135, !136, !137}
!135 = !DILocalVariable(name: "start", arg: 1, scope: !130, file: !3, line: 248, type: !133)
!136 = !DILocalVariable(name: "length", arg: 2, scope: !130, file: !3, line: 248, type: !41)
!137 = !DILocalVariable(name: "home", arg: 3, scope: !130, file: !3, line: 248, type: !41)
!138 = !DILocation(line: 0, scope: !130)
!139 = !DILocation(line: 279, column: 1, scope: !130)
!140 = distinct !DISubprogram(name: "MallocStats", scope: !3, file: !3, line: 99, type: !141, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{null}
!143 = !{!144}
!144 = !DILocalVariable(name: "i", scope: !140, file: !3, line: 101, type: !41)
!145 = !DILocation(line: 103, column: 3, scope: !140)
!146 = !DILocation(line: 0, scope: !140)
!147 = !DILocation(line: 104, column: 15, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 104, column: 3)
!149 = distinct !DILexicalBlock(scope: !140, file: !3, line: 104, column: 3)
!150 = !DILocation(line: 104, column: 14, scope: !148)
!151 = !DILocation(line: 104, column: 3, scope: !149)
!152 = !DILocation(line: 105, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 105, column: 9)
!154 = !DILocation(line: 105, column: 21, scope: !153)
!155 = !DILocation(line: 105, column: 29, scope: !153)
!156 = !DILocation(line: 0, scope: !153)
!157 = !DILocation(line: 104, column: 25, scope: !148)
!158 = distinct !{!158, !151, !159, !81, !82}
!159 = !DILocation(line: 108, column: 38, scope: !149)
!160 = !DILocation(line: 109, column: 3, scope: !140)
!161 = !DILocation(line: 111, column: 1, scope: !140)
!162 = distinct !DISubprogram(name: "FindBucket", scope: !3, file: !3, line: 116, type: !163, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{!41, !41}
!165 = !{!166, !167}
!166 = !DILocalVariable(name: "size", arg: 1, scope: !162, file: !3, line: 116, type: !41)
!167 = !DILocalVariable(name: "bucket", scope: !162, file: !3, line: 118, type: !41)
!168 = !DILocation(line: 0, scope: !162)
!169 = !DILocation(line: 120, column: 12, scope: !170)
!170 = distinct !DILexicalBlock(scope: !162, file: !3, line: 120, column: 7)
!171 = !DILocation(line: 120, column: 7, scope: !162)
!172 = !DILocation(line: 0, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 122, column: 8)
!174 = !DILocation(line: 124, column: 13, scope: !173)
!175 = !DILocation(line: 124, column: 12, scope: !173)
!176 = !DILocation(line: 124, column: 22, scope: !173)
!177 = !DILocation(line: 125, column: 13, scope: !173)
!178 = !DILocation(line: 124, column: 5, scope: !173)
!179 = distinct !{!179, !178, !177, !81, !82}
!180 = !DILocation(line: 0, scope: !170)
!181 = !DILocation(line: 128, column: 3, scope: !162)
!182 = distinct !DISubprogram(name: "MyMalloc", scope: !3, file: !3, line: 134, type: !183, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!48, !41, !41}
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!186 = !DILocalVariable(name: "size", arg: 1, scope: !182, file: !3, line: 134, type: !41)
!187 = !DILocalVariable(name: "home", arg: 2, scope: !182, file: !3, line: 134, type: !41)
!188 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 136, type: !41)
!189 = !DILocalVariable(name: "bucket", scope: !182, file: !3, line: 136, type: !41)
!190 = !DILocalVariable(name: "leftover", scope: !182, file: !3, line: 136, type: !41)
!191 = !DILocalVariable(name: "alloc_size", scope: !182, file: !3, line: 136, type: !41)
!192 = !DILocalVariable(name: "block_size", scope: !182, file: !3, line: 136, type: !41)
!193 = !DILocalVariable(name: "d", scope: !182, file: !3, line: 137, type: !44)
!194 = !DILocalVariable(name: "result", scope: !182, file: !3, line: 137, type: !44)
!195 = !DILocalVariable(name: "prev", scope: !182, file: !3, line: 137, type: !44)
!196 = !DILocalVariable(name: "freespace", scope: !182, file: !3, line: 137, type: !44)
!197 = !DILocation(line: 0, scope: !182)
!198 = !DILocation(line: 139, column: 7, scope: !182)
!199 = !DILocation(line: 142, column: 12, scope: !200)
!200 = distinct !DILexicalBlock(scope: !182, file: !3, line: 142, column: 7)
!201 = !DILocation(line: 142, column: 7, scope: !182)
!202 = !DILocation(line: 145, column: 12, scope: !182)
!203 = !DILocation(line: 147, column: 14, scope: !204)
!204 = distinct !DILexicalBlock(scope: !182, file: !3, line: 147, column: 7)
!205 = !DILocation(line: 147, column: 7, scope: !182)
!206 = !DILocation(line: 150, column: 30, scope: !204)
!207 = !DILocation(line: 150, column: 40, scope: !204)
!208 = !DILocation(line: 162, column: 7, scope: !182)
!209 = !DILocation(line: 155, column: 29, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 155, column: 7)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 154, column: 25)
!212 = distinct !DILexicalBlock(scope: !182, file: !3, line: 154, column: 7)
!213 = !DILocation(line: 155, column: 8, scope: !210)
!214 = !DILocation(line: 156, column: 16, scope: !211)
!215 = !DILocation(line: 156, column: 31, scope: !211)
!216 = !DILocation(line: 157, column: 11, scope: !217)
!217 = distinct !DILexicalBlock(scope: !211, file: !3, line: 157, column: 11)
!218 = !DILocation(line: 157, column: 11, scope: !211)
!219 = !DILocation(line: 148, column: 19, scope: !204)
!220 = !DILocation(line: 148, column: 18, scope: !204)
!221 = !DILocation(line: 159, column: 31, scope: !222)
!222 = distinct !DILexicalBlock(scope: !211, file: !3, line: 159, column: 7)
!223 = !DILocation(line: 159, column: 8, scope: !222)
!224 = !DILocation(line: 158, column: 37, scope: !217)
!225 = !DILocation(line: 158, column: 35, scope: !217)
!226 = !DILocation(line: 163, column: 27, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 163, column: 5)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 162, column: 16)
!229 = distinct !DILexicalBlock(scope: !182, file: !3, line: 162, column: 7)
!230 = !DILocation(line: 163, column: 6, scope: !227)
!231 = !DILocation(line: 165, column: 9, scope: !228)
!232 = !DILocation(line: 165, column: 24, scope: !228)
!233 = !DILocation(line: 166, column: 5, scope: !228)
!234 = !DILocation(line: 0, scope: !228)
!235 = !DILocation(line: 168, column: 20, scope: !236)
!236 = distinct !DILexicalBlock(scope: !228, file: !3, line: 166, column: 15)
!237 = !DILocation(line: 170, column: 22, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 170, column: 11)
!239 = !DILocation(line: 170, column: 11, scope: !236)
!240 = distinct !{!240, !233, !241, !81, !82}
!241 = !DILocation(line: 199, column: 5, scope: !228)
!242 = !DILocation(line: 172, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 170, column: 54)
!244 = !DILocation(line: 172, column: 37, scope: !243)
!245 = !DILocation(line: 173, column: 31, scope: !243)
!246 = !DILocation(line: 173, column: 20, scope: !243)
!247 = !DILocation(line: 173, column: 46, scope: !243)
!248 = !DILocation(line: 174, column: 2, scope: !243)
!249 = !DILocation(line: 174, column: 15, scope: !243)
!250 = !DILocation(line: 175, column: 2, scope: !243)
!251 = !DILocation(line: 175, column: 15, scope: !243)
!252 = !DILocation(line: 177, column: 15, scope: !253)
!253 = distinct !DILexicalBlock(scope: !243, file: !3, line: 177, column: 6)
!254 = !DILocation(line: 177, column: 6, scope: !243)
!255 = !DILocation(line: 178, column: 12, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 177, column: 28)
!257 = !DILocation(line: 179, column: 2, scope: !256)
!258 = !DILocation(line: 184, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 184, column: 8)
!260 = distinct !DILexicalBlock(scope: !253, file: !3, line: 180, column: 7)
!261 = !DILocation(line: 0, scope: !259)
!262 = !DILocation(line: 184, column: 8, scope: !260)
!263 = !DILocation(line: 187, column: 6, scope: !259)
!264 = !DILocation(line: 187, column: 21, scope: !259)
!265 = !DILocation(line: 189, column: 17, scope: !266)
!266 = distinct !DILexicalBlock(scope: !260, file: !3, line: 189, column: 8)
!267 = !DILocation(line: 189, column: 8, scope: !260)
!268 = !DILocation(line: 190, column: 14, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 189, column: 22)
!270 = !DILocation(line: 191, column: 6, scope: !269)
!271 = !DILocation(line: 192, column: 4, scope: !269)
!272 = !DILocation(line: 201, column: 29, scope: !273)
!273 = distinct !DILexicalBlock(scope: !228, file: !3, line: 201, column: 5)
!274 = !DILocation(line: 201, column: 6, scope: !273)
!275 = !DILocation(line: 205, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !182, file: !3, line: 205, column: 7)
!277 = !DILocation(line: 205, column: 7, scope: !182)
!278 = !DILocation(line: 206, column: 22, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 205, column: 15)
!280 = !DILocation(line: 207, column: 3, scope: !279)
!281 = !DILocation(line: 210, column: 18, scope: !282)
!282 = distinct !DILexicalBlock(scope: !276, file: !3, line: 208, column: 8)
!283 = !DILocation(line: 211, column: 27, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !3, line: 211, column: 5)
!285 = !DILocation(line: 211, column: 35, scope: !284)
!286 = !DILocation(line: 211, column: 6, scope: !284)
!287 = !DILocation(line: 213, column: 43, scope: !282)
!288 = !DILocation(line: 213, column: 26, scope: !282)
!289 = !DILocation(line: 216, column: 5, scope: !282)
!290 = !DILocation(line: 216, column: 20, scope: !282)
!291 = !DILocation(line: 216, column: 27, scope: !282)
!292 = !DILocation(line: 217, column: 29, scope: !293)
!293 = distinct !DILexicalBlock(scope: !282, file: !3, line: 217, column: 5)
!294 = !DILocation(line: 217, column: 37, scope: !293)
!295 = !DILocation(line: 217, column: 6, scope: !293)
!296 = !DILocation(line: 218, column: 14, scope: !282)
!297 = !DILocation(line: 219, column: 5, scope: !282)
!298 = !DILocation(line: 219, column: 21, scope: !282)
!299 = !DILocation(line: 220, column: 21, scope: !282)
!300 = !DILocation(line: 221, column: 5, scope: !301)
!301 = distinct !DILexicalBlock(scope: !282, file: !3, line: 221, column: 5)
!302 = !DILocation(line: 222, column: 20, scope: !303)
!303 = distinct !DILexicalBlock(scope: !301, file: !3, line: 221, column: 5)
!304 = !DILocation(line: 223, column: 20, scope: !305)
!305 = distinct !DILexicalBlock(scope: !282, file: !3, line: 223, column: 9)
!306 = !DILocation(line: 223, column: 9, scope: !282)
!307 = !DILocation(line: 226, column: 7, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 225, column: 10)
!309 = !DILocation(line: 226, column: 22, scope: !308)
!310 = !DILocation(line: 226, column: 28, scope: !308)
!311 = !DILocation(line: 227, column: 11, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 227, column: 11)
!313 = !DILocation(line: 227, column: 26, scope: !312)
!314 = !DILocation(line: 227, column: 49, scope: !312)
!315 = !DILocation(line: 227, column: 32, scope: !312)
!316 = !DILocation(line: 227, column: 11, scope: !308)
!317 = !DILocation(line: 228, column: 22, scope: !318)
!318 = distinct !DILexicalBlock(scope: !312, file: !3, line: 227, column: 55)
!319 = !DILocation(line: 229, column: 7, scope: !318)
!320 = !DILocation(line: 230, column: 7, scope: !308)
!321 = !DILocation(line: 231, column: 25, scope: !308)
!322 = !DILocation(line: 235, column: 27, scope: !182)
!323 = !DILocation(line: 235, column: 3, scope: !182)
!324 = !DILocation(line: 235, column: 18, scope: !182)
!325 = !DILocation(line: 235, column: 24, scope: !182)
!326 = !DILocation(line: 236, column: 7, scope: !327)
!327 = distinct !DILexicalBlock(scope: !182, file: !3, line: 236, column: 7)
!328 = !DILocation(line: 236, column: 22, scope: !327)
!329 = !DILocation(line: 236, column: 45, scope: !327)
!330 = !DILocation(line: 236, column: 28, scope: !327)
!331 = !DILocation(line: 236, column: 7, scope: !182)
!332 = !DILocation(line: 237, column: 25, scope: !333)
!333 = distinct !DILexicalBlock(scope: !327, file: !3, line: 236, column: 51)
!334 = !DILocation(line: 238, column: 3, scope: !333)
!335 = !DILocation(line: 240, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !182, file: !3, line: 240, column: 7)
!337 = !DILocation(line: 240, column: 20, scope: !336)
!338 = !DILocation(line: 240, column: 7, scope: !182)
!339 = !DILocation(line: 241, column: 5, scope: !336)
!340 = !DILocation(line: 243, column: 3, scope: !182)
!341 = !DISubprogram(name: "pthread_mutex_lock", scope: !115, file: !115, line: 738, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !129)
!342 = !DISubroutineType(types: !343)
!343 = !{!18, !118}
!344 = !DISubprogram(name: "pthread_mutex_unlock", scope: !115, file: !115, line: 756, type: !342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !129)
!345 = distinct !DISubprogram(name: "MyFreeNow", scope: !3, file: !3, line: 293, type: !346, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !133}
!348 = !{!349, !350, !351, !352}
!349 = !DILocalVariable(name: "block", arg: 1, scope: !345, file: !3, line: 293, type: !133)
!350 = !DILocalVariable(name: "bucket", scope: !345, file: !3, line: 295, type: !41)
!351 = !DILocalVariable(name: "size", scope: !345, file: !3, line: 295, type: !41)
!352 = !DILocalVariable(name: "home", scope: !345, file: !3, line: 295, type: !41)
!353 = !DILocation(line: 0, scope: !345)
!354 = !DILocation(line: 297, column: 10, scope: !345)
!355 = !DILocation(line: 298, column: 10, scope: !345)
!356 = !DILocation(line: 300, column: 12, scope: !357)
!357 = distinct !DILexicalBlock(scope: !345, file: !3, line: 300, column: 7)
!358 = !DILocation(line: 300, column: 7, scope: !345)
!359 = !DILocation(line: 301, column: 5, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !3, line: 300, column: 18)
!361 = !DILocation(line: 302, column: 5, scope: !360)
!362 = !DILocation(line: 304, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !345, file: !3, line: 304, column: 7)
!364 = !DILocation(line: 304, column: 17, scope: !363)
!365 = !DILocation(line: 305, column: 5, scope: !366)
!366 = distinct !DILexicalBlock(scope: !363, file: !3, line: 304, column: 37)
!367 = !DILocation(line: 306, column: 5, scope: !366)
!368 = !DILocation(line: 309, column: 12, scope: !369)
!369 = distinct !DILexicalBlock(scope: !345, file: !3, line: 309, column: 7)
!370 = !DILocation(line: 309, column: 7, scope: !345)
!371 = !DILocation(line: 312, column: 14, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !3, line: 311, column: 8)
!373 = !DILocation(line: 313, column: 17, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !3, line: 313, column: 9)
!375 = !DILocation(line: 313, column: 16, scope: !374)
!376 = !DILocation(line: 313, column: 14, scope: !374)
!377 = !DILocation(line: 313, column: 9, scope: !372)
!378 = !DILocation(line: 318, column: 14, scope: !379)
!379 = distinct !DILexicalBlock(scope: !345, file: !3, line: 318, column: 7)
!380 = !DILocation(line: 318, column: 7, scope: !345)
!381 = !DILocation(line: 321, column: 30, scope: !345)
!382 = !DILocation(line: 321, column: 45, scope: !345)
!383 = !DILocation(line: 321, column: 19, scope: !345)
!384 = !DILocation(line: 322, column: 3, scope: !345)
!385 = !DILocation(line: 322, column: 18, scope: !345)
!386 = !DILocation(line: 322, column: 36, scope: !345)
!387 = !DILocation(line: 323, column: 3, scope: !345)
!388 = !DILocation(line: 323, column: 18, scope: !345)
!389 = !DILocation(line: 323, column: 24, scope: !345)
!390 = !DILocation(line: 325, column: 1, scope: !345)
!391 = distinct !DISubprogram(name: "MyFree", scope: !3, file: !3, line: 282, type: !346, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "block", arg: 1, scope: !391, file: !3, line: 282, type: !133)
!394 = !DILocalVariable(name: "home", scope: !391, file: !3, line: 284, type: !41)
!395 = !DILocation(line: 0, scope: !391)
!396 = !DILocation(line: 286, column: 10, scope: !391)
!397 = !DILocation(line: 287, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !391, file: !3, line: 287, column: 3)
!399 = !DILocation(line: 287, column: 4, scope: !398)
!400 = !DILocation(line: 288, column: 3, scope: !391)
!401 = !DILocation(line: 289, column: 27, scope: !402)
!402 = distinct !DILexicalBlock(scope: !391, file: !3, line: 289, column: 3)
!403 = !DILocation(line: 289, column: 4, scope: !402)
!404 = !DILocation(line: 290, column: 1, scope: !391)
