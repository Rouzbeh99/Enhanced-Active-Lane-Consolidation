; ModuleID = 'memory.c'
source_filename = "memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.node = type { ptr, i64, i64, i64 }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }

@.str = private unnamed_addr constant [38 x i8] c"%s: %s cannot allocate local memory.\0A\00", align 1
@ProgName = external local_unnamed_addr global ptr, align 8
@gm = external local_unnamed_addr global ptr, align 8
@begmem = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"freelist ->\090x%08lX\0A\0A\00", align 1
@endmem = dso_local local_unnamed_addr global ptr null, align 8, !dbg !166
@.str.4 = private unnamed_addr constant [35 x i8] c"0x%08lX\090x%08lX\09%10ld\09%s\09\090x%08lX\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [43 x i8] c"GlobalHeapWalk: Invalid checksum in node.\0A\00", align 1
@nodesize = dso_local local_unnamed_addr global i64 0, align 8, !dbg !164
@.str.8 = private unnamed_addr constant [41 x i8] c"GlobalMalloc: Invalid checksum in node.\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"GlobalMalloc: Node in free list not marked as free.\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: %s cannot allocate global memory.\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"GlobalCalloc\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GlobalRealloc\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"GlobalRealloc: Attempted to realloc node with invalid checksum.\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"GlobalRealloc: Attempted to realloc an unallocated node.\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"GlobalRealloc: Could not find next node in free list.\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"GlobalFree: Attempted to free node with invalid checksum.\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"GlobalFree: Attempted to free unallocated node.\0A\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"GlobalFree: Invalid checksum in previous node.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [60 x i8] c"freelist=0x%p, curr=0x%p, size=0x%lu, pn=0x%p, endmem=0x%p\0A\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"GlobalFree: Search for previous block fell off end of memory.\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"GlobalFree: Invalid checksum in next node.\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"GRID\00", align 1
@mem_grid = dso_local local_unnamed_addr global i64 0, align 8, !dbg !168
@maxmem_grid = dso_local local_unnamed_addr global i64 0, align 8, !dbg !170
@.str.23 = private unnamed_addr constant [6 x i8] c"VOXEL\00", align 1
@mem_voxel = dso_local local_unnamed_addr global i64 0, align 8, !dbg !172
@maxmem_voxel = dso_local local_unnamed_addr global i64 0, align 8, !dbg !174
@.str.24 = private unnamed_addr constant [10 x i8] c"HASHTABLE\00", align 1
@mem_hashtable = dso_local local_unnamed_addr global i64 0, align 8, !dbg !176
@maxmem_hashtable = dso_local local_unnamed_addr global i64 0, align 8, !dbg !178
@.str.25 = private unnamed_addr constant [11 x i8] c"EMPTYCELLS\00", align 1
@mem_emptycells = dso_local local_unnamed_addr global i64 0, align 8, !dbg !180
@maxmem_emptycells = dso_local local_unnamed_addr global i64 0, align 8, !dbg !182
@.str.26 = private unnamed_addr constant [8 x i8] c"BINTREE\00", align 1
@mem_bintree = dso_local local_unnamed_addr global i64 0, align 8, !dbg !184
@maxmem_bintree = dso_local local_unnamed_addr global i64 0, align 8, !dbg !186
@.str.27 = private unnamed_addr constant [9 x i8] c"PEPARRAY\00", align 1
@mem_pepArray = dso_local local_unnamed_addr global i64 0, align 8, !dbg !188
@maxmem_pepArray = dso_local local_unnamed_addr global i64 0, align 8, !dbg !190
@.str.28 = private unnamed_addr constant [40 x i8] c"ObjectMalloc: Unknown object type: %ld\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"ObjectFree: Unknown object type: %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"error ma_rayinfo \0A\00", align 1
@.str.31 = private unnamed_addr constant [70 x i8] c"\0A****** Hierarchial uniform grid memory allocation summary ******* \0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"     < struct >:            < current >   < maximum >    < sizeof > \0A\00", align 1
@.str.33 = private unnamed_addr constant [71 x i8] c"     <  bytes >:             <  bytes >   <   bytes >    <  bytes > \0A\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"     grid:                %11ld   %11ld   %11ld \0A\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"     hashtable entries:   %11ld   %11ld   %11ld \0A\00", align 1
@.str.36 = private unnamed_addr constant [50 x i8] c"     emptycell entries:   %11ld   %11ld   %11ld \0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"     voxel:               %11ld   %11ld   %11ld \0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"     bintree_node:        %11ld   %11ld   %11ld \0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"     Totals:              %11ld   %11ld      \0A\0A\00", align 1
@str = private unnamed_addr constant [55 x i8] c"node addr \09node->next\09node->size\09node->free\09node->cksm\00", align 1
@str.41 = private unnamed_addr constant [55 x i8] c"==========\09==========\09==========\09==========\09==========\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @LocalMalloc(i64 noundef %n, ptr noundef %msg) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !203, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.value(metadata ptr %msg, metadata !204, metadata !DIExpression()), !dbg !206
  %call = tail call noalias ptr @malloc(i64 noundef %n) #14, !dbg !207
  call void @llvm.dbg.value(metadata ptr %call, metadata !205, metadata !DIExpression()), !dbg !206
  %tobool.not = icmp eq ptr %call, null, !dbg !208
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !210

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @ProgName, align 8, !dbg !211
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, ptr noundef %0, ptr noundef %msg), !dbg !213
  tail call void @exit(i32 noundef -1) #15, !dbg !214
  unreachable, !dbg !214

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !215
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind willreturn uwtable
define dso_local void @LocalFree(ptr nocapture noundef %p) local_unnamed_addr #4 !dbg !216 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !220, metadata !DIExpression()), !dbg !221
  tail call void @free(ptr noundef %p) #16, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @GlobalHeapWalk() local_unnamed_addr #0 !dbg !224 {
entry:
  %0 = load ptr, ptr @gm, align 8, !dbg !229
  %memlock = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 10, !dbg !231
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !232
  %1 = load ptr, ptr @begmem, align 8, !dbg !233
  call void @llvm.dbg.value(metadata ptr %1, metadata !228, metadata !DIExpression()), !dbg !234
  %2 = load ptr, ptr @gm, align 8, !dbg !235
  %freelist = getelementptr inbounds %struct.gmem, ptr %2, i64 0, i32 5, !dbg !236
  %3 = load ptr, ptr %freelist, align 8, !dbg !236
  %4 = ptrtoint ptr %3 to i64, !dbg !237
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %4), !dbg !238
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !239
  %puts19 = tail call i32 @puts(ptr nonnull @str.41), !dbg !240
  call void @llvm.dbg.value(metadata ptr %1, metadata !228, metadata !DIExpression()), !dbg !234
  %5 = load ptr, ptr @endmem, align 8, !dbg !241
  %cmp20 = icmp ult ptr %1, %5, !dbg !242
  br i1 %cmp20, label %while.body, label %while.end, !dbg !243

while.body:                                       ; preds = %entry, %if.end
  %curr.021 = phi ptr [ %add.ptr, %if.end ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata ptr %curr.021, metadata !228, metadata !DIExpression()), !dbg !234
  %6 = ptrtoint ptr %curr.021 to i64, !dbg !244
  %7 = load ptr, ptr %curr.021, align 8, !dbg !246
  %8 = ptrtoint ptr %7 to i64, !dbg !247
  %size = getelementptr inbounds %struct.node, ptr %curr.021, i64 0, i32 1, !dbg !248
  %9 = load i64, ptr %size, align 8, !dbg !248
  %free = getelementptr inbounds %struct.node, ptr %curr.021, i64 0, i32 2, !dbg !249
  %10 = load i64, ptr %free, align 8, !dbg !249
  %tobool.not = icmp eq i64 %10, 0, !dbg !250
  %cond = select i1 %tobool.not, ptr @.str.6, ptr @.str.5, !dbg !250
  %cksm = getelementptr inbounds %struct.node, ptr %curr.021, i64 0, i32 3, !dbg !251
  %11 = load i64, ptr %cksm, align 8, !dbg !251
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %6, i64 noundef %8, i64 noundef %9, ptr noundef nonnull %cond, i64 noundef %11), !dbg !252
  %12 = load i64, ptr %cksm, align 8, !dbg !253
  %cmp6.not = icmp eq i64 %12, 1437226410, !dbg !255
  br i1 %cmp6.not, label %if.end, label %if.then, !dbg !256

if.then:                                          ; preds = %while.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !257
  %14 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 42, i64 1, ptr %13) #17, !dbg !259
  tail call void @exit(i32 noundef 1) #15, !dbg !260
  unreachable, !dbg !260

if.end:                                           ; preds = %while.body
  %15 = load i64, ptr %size, align 8, !dbg !261
  %16 = load i64, ptr @nodesize, align 8, !dbg !261
  %add = add i64 %16, %15, !dbg !261
  %add.ptr = getelementptr inbounds i8, ptr %curr.021, i64 %add, !dbg !261
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !228, metadata !DIExpression()), !dbg !234
  %17 = load ptr, ptr @endmem, align 8, !dbg !241
  %cmp = icmp ult ptr %add.ptr, %17, !dbg !242
  br i1 %cmp, label %while.body, label %while.end, !dbg !243, !llvm.loop !262

while.end:                                        ; preds = %if.end, %entry
  %18 = load ptr, ptr @gm, align 8, !dbg !266
  %memlock9 = getelementptr inbounds %struct.gmem, ptr %18, i64 0, i32 10, !dbg !268
  %call10 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock9) #16, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: nounwind
declare !dbg !271 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !308 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local i64 @GlobalHeapInit(i64 noundef %size) local_unnamed_addr #7 !dbg !309 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !313, metadata !DIExpression()), !dbg !314
  %add = add i64 %size, 7, !dbg !315
  %shr = and i64 %add, -8, !dbg !315
  call void @llvm.dbg.value(metadata i64 %shr, metadata !313, metadata !DIExpression()), !dbg !314
  %call = tail call noalias ptr @malloc(i64 noundef %shr) #14, !dbg !316
  %0 = load ptr, ptr @gm, align 8, !dbg !317
  %freelist = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 5, !dbg !318
  store ptr %call, ptr %freelist, align 8, !dbg !319
  %tobool.not = icmp eq ptr %call, null, !dbg !320
  br i1 %tobool.not, label %return, label %if.end, !dbg !322

if.end:                                           ; preds = %entry
  store i64 32, ptr @nodesize, align 8, !dbg !323
  store ptr %call, ptr @begmem, align 8, !dbg !324
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %shr, !dbg !325
  store ptr %add.ptr, ptr @endmem, align 8, !dbg !326
  %sub = add i64 %shr, -32, !dbg !327
  %size5 = getelementptr inbounds %struct.node, ptr %call, i64 0, i32 1, !dbg !328
  store i64 %sub, ptr %size5, align 8, !dbg !329
  %1 = load ptr, ptr %freelist, align 8, !dbg !330
  store ptr null, ptr %1, align 8, !dbg !331
  %2 = load ptr, ptr @gm, align 8, !dbg !332
  %freelist7 = getelementptr inbounds %struct.gmem, ptr %2, i64 0, i32 5, !dbg !333
  %3 = load ptr, ptr %freelist7, align 8, !dbg !333
  %free = getelementptr inbounds %struct.node, ptr %3, i64 0, i32 2, !dbg !334
  store i64 1, ptr %free, align 8, !dbg !335
  %4 = load ptr, ptr %freelist7, align 8, !dbg !336
  %cksm = getelementptr inbounds %struct.node, ptr %4, i64 0, i32 3, !dbg !337
  store i64 1437226410, ptr %cksm, align 8, !dbg !338
  br label %return, !dbg !339

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i64 [ 1, %if.end ], [ 0, %entry ], !dbg !314
  ret i64 %retval.0, !dbg !340
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @GlobalMalloc(i64 noundef %size, ptr noundef %msg) local_unnamed_addr #0 !dbg !341 {
entry:
  call void @llvm.dbg.value(metadata i64 %size, metadata !343, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %msg, metadata !344, metadata !DIExpression()), !dbg !348
  %tobool.not = icmp eq i64 %size, 0, !dbg !349
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !351

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @gm, align 8, !dbg !352
  %memlock = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 10, !dbg !354
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !355
  call void @llvm.dbg.value(metadata ptr null, metadata !345, metadata !DIExpression()), !dbg !348
  %1 = load ptr, ptr @gm, align 8, !dbg !356
  %freelist = getelementptr inbounds %struct.gmem, ptr %1, i64 0, i32 5, !dbg !357
  call void @llvm.dbg.value(metadata ptr undef, metadata !346, metadata !DIExpression()), !dbg !348
  %add = add i64 %size, 7, !dbg !358
  %shr = and i64 %add, -8, !dbg !358
  call void @llvm.dbg.value(metadata i64 %shr, metadata !343, metadata !DIExpression()), !dbg !348
  br label %while.cond, !dbg !359

while.cond:                                       ; preds = %if.end6, %if.end
  %prev.0 = phi ptr [ null, %if.end ], [ %curr.0, %if.end6 ], !dbg !348
  %curr.0.in = phi ptr [ %freelist, %if.end ], [ %curr.0, %if.end6 ]
  %curr.0 = load ptr, ptr %curr.0.in, align 8, !dbg !348
  call void @llvm.dbg.value(metadata ptr %curr.0, metadata !346, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %prev.0, metadata !345, metadata !DIExpression()), !dbg !348
  %tobool1.not = icmp eq ptr %curr.0, null, !dbg !360
  br i1 %tobool1.not, label %if.then13, label %land.rhs, !dbg !361

land.rhs:                                         ; preds = %while.cond
  %size2 = getelementptr inbounds %struct.node, ptr %curr.0, i64 0, i32 1, !dbg !362
  %2 = load i64, ptr %size2, align 8, !dbg !362
  %cmp = icmp ult i64 %2, %shr, !dbg !363
  br i1 %cmp, label %while.body, label %if.end15, !dbg !359

while.body:                                       ; preds = %land.rhs
  %cksm = getelementptr inbounds %struct.node, ptr %curr.0, i64 0, i32 3, !dbg !364
  %3 = load i64, ptr %cksm, align 8, !dbg !364
  %cmp3.not = icmp eq i64 %3, 1437226410, !dbg !367
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !368

if.then4:                                         ; preds = %while.body
  %4 = load ptr, ptr @stderr, align 8, !dbg !369
  %5 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 40, i64 1, ptr %4) #17, !dbg !371
  tail call void @exit(i32 noundef 1) #15, !dbg !372
  unreachable, !dbg !372

if.end6:                                          ; preds = %while.body
  %free = getelementptr inbounds %struct.node, ptr %curr.0, i64 0, i32 2, !dbg !373
  %6 = load i64, ptr %free, align 8, !dbg !373
  %cmp7.not = icmp eq i64 %6, 1, !dbg !375
  br i1 %cmp7.not, label %while.cond, label %if.then8, !dbg !376, !llvm.loop !377

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr @stderr, align 8, !dbg !379
  %8 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 52, i64 1, ptr %7) #17, !dbg !381
  tail call void @exit(i32 noundef 1) #15, !dbg !382
  unreachable, !dbg !382

if.then13:                                        ; preds = %while.cond
  %9 = load ptr, ptr @stderr, align 8, !dbg !383
  %10 = load ptr, ptr @ProgName, align 8, !dbg !386
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef %10, ptr noundef %msg) #17, !dbg !387
  tail call void @exit(i32 noundef -1) #15, !dbg !388
  unreachable, !dbg !388

if.end15:                                         ; preds = %land.rhs
  %sub = sub i64 %2, %shr, !dbg !389
  %cmp17 = icmp ugt i64 %sub, 48, !dbg !391
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !392

if.then18:                                        ; preds = %if.end15
  %size2.le = getelementptr inbounds %struct.node, ptr %curr.0, i64 0, i32 1, !dbg !362
  %11 = load i64, ptr @nodesize, align 8, !dbg !393
  %add19 = add i64 %11, %shr, !dbg !393
  %add.ptr = getelementptr inbounds i8, ptr %curr.0, i64 %add19, !dbg !393
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !347, metadata !DIExpression()), !dbg !348
  %sub22 = sub i64 %2, %add19, !dbg !395
  %size23 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 1, !dbg !396
  store i64 %sub22, ptr %size23, align 8, !dbg !397
  %12 = load ptr, ptr %curr.0, align 8, !dbg !398
  store ptr %12, ptr %add.ptr, align 8, !dbg !399
  %free26 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 2, !dbg !400
  store i64 1, ptr %free26, align 8, !dbg !401
  %cksm27 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 3, !dbg !402
  store i64 1437226410, ptr %cksm27, align 8, !dbg !403
  store i64 %shr, ptr %size2.le, align 8, !dbg !404
  br label %if.end30, !dbg !405

if.else:                                          ; preds = %if.end15
  %13 = load ptr, ptr %curr.0, align 8, !dbg !406
  call void @llvm.dbg.value(metadata ptr %13, metadata !347, metadata !DIExpression()), !dbg !348
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then18
  %next.0 = phi ptr [ %add.ptr, %if.then18 ], [ %13, %if.else ], !dbg !407
  call void @llvm.dbg.value(metadata ptr %next.0, metadata !347, metadata !DIExpression()), !dbg !348
  %tobool31.not = icmp eq ptr %prev.0, null, !dbg !408
  br i1 %tobool31.not, label %if.then32, label %if.else34, !dbg !410

if.then32:                                        ; preds = %if.end30
  %14 = load ptr, ptr @gm, align 8, !dbg !411
  %freelist33 = getelementptr inbounds %struct.gmem, ptr %14, i64 0, i32 5, !dbg !412
  store ptr %next.0, ptr %freelist33, align 8, !dbg !413
  br label %if.end36, !dbg !411

if.else34:                                        ; preds = %if.end30
  store ptr %next.0, ptr %prev.0, align 8, !dbg !414
  %.pre = load ptr, ptr @gm, align 8, !dbg !415
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  %15 = phi ptr [ %.pre, %if.else34 ], [ %14, %if.then32 ], !dbg !415
  %memlock37 = getelementptr inbounds %struct.gmem, ptr %15, i64 0, i32 10, !dbg !417
  %call38 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock37) #16, !dbg !418
  store ptr null, ptr %curr.0, align 8, !dbg !419
  %free40 = getelementptr inbounds %struct.node, ptr %curr.0, i64 0, i32 2, !dbg !420
  store i64 0, ptr %free40, align 8, !dbg !421
  %16 = load i64, ptr @nodesize, align 8, !dbg !422
  %add.ptr41 = getelementptr inbounds i8, ptr %curr.0, i64 %16, !dbg !422
  call void @llvm.dbg.value(metadata ptr %add.ptr41, metadata !346, metadata !DIExpression()), !dbg !348
  br label %cleanup, !dbg !423

cleanup:                                          ; preds = %entry, %if.end36
  %retval.0 = phi ptr [ %add.ptr41, %if.end36 ], [ null, %entry ], !dbg !348
  ret ptr %retval.0, !dbg !424
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @GlobalCalloc(i64 noundef %n, i64 noundef %size) local_unnamed_addr #0 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata i64 %n, metadata !429, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i64 %size, metadata !430, metadata !DIExpression()), !dbg !434
  %mul = mul i64 %size, %n, !dbg !435
  %add = add i64 %mul, 7, !dbg !435
  %shr = and i64 %add, -8, !dbg !435
  call void @llvm.dbg.value(metadata i64 %shr, metadata !431, metadata !DIExpression()), !dbg !434
  %call = tail call ptr @GlobalMalloc(i64 noundef %shr, ptr noundef nonnull @.str.11), !dbg !436
  call void @llvm.dbg.value(metadata ptr %call, metadata !433, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata ptr %call, metadata !432, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i64 %shr, metadata !431, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !434
  call void @llvm.dbg.value(metadata ptr %call, metadata !432, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i64 %shr, metadata !431, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !434
  %tobool.not4 = icmp eq i64 %shr, 0, !dbg !437
  br i1 %tobool.not4, label %while.end, label %while.body.preheader, !dbg !437

while.body.preheader:                             ; preds = %entry
  %0 = shl i64 %add, 1, !dbg !437
  %1 = and i64 %0, -16, !dbg !437
  call void @llvm.memset.p0.i64(ptr align 8 %call, i8 0, i64 %1, i1 false), !dbg !438
  call void @llvm.dbg.value(metadata i32 undef, metadata !431, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 undef, metadata !432, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 undef, metadata !431, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !434
  call void @llvm.dbg.value(metadata i32 undef, metadata !432, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !434
  call void @llvm.dbg.value(metadata i32 undef, metadata !431, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !434
  br label %while.end, !dbg !439

while.end:                                        ; preds = %while.body.preheader, %entry
  ret ptr %call, !dbg !439
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @GlobalRealloc(ptr noundef %p, i64 noundef %size) local_unnamed_addr #0 !dbg !440 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !444, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %size, metadata !445, metadata !DIExpression()), !dbg !457
  %tobool.not = icmp eq i64 %size, 0, !dbg !458
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !460

if.then:                                          ; preds = %entry
  tail call void @GlobalFree(ptr noundef %p), !dbg !461
  br label %cleanup, !dbg !463

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %p, null, !dbg !464
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !466

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @GlobalMalloc(i64 noundef %size, ptr noundef nonnull @.str.12), !dbg !467
  br label %cleanup, !dbg !468

if.end3:                                          ; preds = %if.end
  %0 = load i64, ptr @nodesize, align 8, !dbg !469
  %sub = sub i64 0, %0, !dbg !469
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %sub, !dbg !469
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !452, metadata !DIExpression()), !dbg !457
  %cksm = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 3, !dbg !470
  %1 = load i64, ptr %cksm, align 8, !dbg !470
  %cmp.not = icmp eq i64 %1, 1437226410, !dbg !472
  br i1 %cmp.not, label %if.end6, label %if.then4, !dbg !473

if.then4:                                         ; preds = %if.end3
  %2 = load ptr, ptr @stderr, align 8, !dbg !474
  %3 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 64, i64 1, ptr %2) #17, !dbg !476
  tail call void @exit(i32 noundef 1) #15, !dbg !477
  unreachable, !dbg !477

if.end6:                                          ; preds = %if.end3
  %free = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 2, !dbg !478
  %4 = load i64, ptr %free, align 8, !dbg !478
  %tobool7.not = icmp eq i64 %4, 0, !dbg !480
  br i1 %tobool7.not, label %if.end10, label %if.then8, !dbg !481

if.then8:                                         ; preds = %if.end6
  %5 = load ptr, ptr @stderr, align 8, !dbg !482
  %6 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 57, i64 1, ptr %5) #17, !dbg !484
  tail call void @exit(i32 noundef 1) #15, !dbg !485
  unreachable, !dbg !485

if.end10:                                         ; preds = %if.end6
  %add = add i64 %size, 7, !dbg !486
  %shr = and i64 %add, -8, !dbg !486
  call void @llvm.dbg.value(metadata i64 %shr, metadata !447, metadata !DIExpression()), !dbg !457
  %size11 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 1, !dbg !487
  %7 = load i64, ptr %size11, align 8, !dbg !487
  call void @llvm.dbg.value(metadata i64 %7, metadata !446, metadata !DIExpression()), !dbg !457
  %cmp12.not = icmp ult i64 %7, %shr, !dbg !488
  br i1 %cmp12.not, label %if.end27, label %if.then13, !dbg !490

if.then13:                                        ; preds = %if.end10
  %sub14 = sub i64 %7, %shr, !dbg !491
  %cmp15 = icmp ult i64 %sub14, 48, !dbg !494
  br i1 %cmp15, label %cleanup, label %if.end17, !dbg !495

if.end17:                                         ; preds = %if.then13
  store i64 %shr, ptr %size11, align 8, !dbg !496
  %add.ptr19 = getelementptr inbounds i8, ptr %p, i64 %shr, !dbg !497
  call void @llvm.dbg.value(metadata ptr %add.ptr19, metadata !455, metadata !DIExpression()), !dbg !457
  %8 = load i64, ptr @nodesize, align 8, !dbg !498
  %9 = add i64 %shr, %8, !dbg !499
  %sub21 = sub i64 %7, %9, !dbg !499
  %size22 = getelementptr inbounds %struct.node, ptr %add.ptr19, i64 0, i32 1, !dbg !500
  store i64 %sub21, ptr %size22, align 8, !dbg !501
  store ptr null, ptr %add.ptr19, align 8, !dbg !502
  %free24 = getelementptr inbounds %struct.node, ptr %add.ptr19, i64 0, i32 2, !dbg !503
  store i64 0, ptr %free24, align 8, !dbg !504
  %cksm25 = getelementptr inbounds %struct.node, ptr %add.ptr19, i64 0, i32 3, !dbg !505
  store i64 1437226410, ptr %cksm25, align 8, !dbg !506
  %10 = load i64, ptr @nodesize, align 8, !dbg !507
  %add.ptr26 = getelementptr inbounds i8, ptr %add.ptr19, i64 %10, !dbg !507
  call void @llvm.dbg.value(metadata ptr %add.ptr26, metadata !455, metadata !DIExpression()), !dbg !457
  tail call void @GlobalFree(ptr noundef nonnull %add.ptr26), !dbg !508
  br label %cleanup, !dbg !509

if.end27:                                         ; preds = %if.end10
  %add.ptr28 = getelementptr inbounds i8, ptr %p, i64 %7, !dbg !510
  call void @llvm.dbg.value(metadata ptr %add.ptr28, metadata !455, metadata !DIExpression()), !dbg !457
  %add29 = add i64 %7, %0, !dbg !511
  %size30 = getelementptr inbounds %struct.node, ptr %add.ptr28, i64 0, i32 1, !dbg !512
  %11 = load i64, ptr %size30, align 8, !dbg !512
  %add31 = add i64 %add29, %11, !dbg !513
  call void @llvm.dbg.value(metadata i64 %add31, metadata !448, metadata !DIExpression()), !dbg !457
  %12 = load ptr, ptr @gm, align 8, !dbg !514
  %memlock = getelementptr inbounds %struct.gmem, ptr %12, i64 0, i32 10, !dbg !516
  %call32 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !517
  %13 = load ptr, ptr @endmem, align 8, !dbg !518
  %cmp33 = icmp ult ptr %add.ptr28, %13, !dbg !520
  br i1 %cmp33, label %land.lhs.true, label %if.end83, !dbg !521

land.lhs.true:                                    ; preds = %if.end27
  %free34 = getelementptr inbounds %struct.node, ptr %add.ptr28, i64 0, i32 2, !dbg !522
  %14 = load i64, ptr %free34, align 8, !dbg !522
  %tobool35.not = icmp eq i64 %14, 0, !dbg !523
  %cmp37.not = icmp ult i64 %add31, %shr
  %or.cond = select i1 %tobool35.not, i1 true, i1 %cmp37.not, !dbg !524
  br i1 %or.cond, label %if.end83, label %if.then38, !dbg !524

if.then38:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr null, metadata !453, metadata !DIExpression()), !dbg !457
  %15 = load ptr, ptr @gm, align 8, !dbg !525
  %freelist = getelementptr inbounds %struct.gmem, ptr %15, i64 0, i32 5, !dbg !527
  call void @llvm.dbg.value(metadata ptr undef, metadata !454, metadata !DIExpression()), !dbg !457
  br label %while.cond, !dbg !528

while.cond:                                       ; preds = %while.cond, %if.then38
  %prev.0 = phi ptr [ null, %if.then38 ], [ %curr.0, %while.cond ], !dbg !529
  %curr.0.in = phi ptr [ %freelist, %if.then38 ], [ %curr.0, %while.cond ]
  %curr.0 = load ptr, ptr %curr.0.in, align 8, !dbg !529
  call void @llvm.dbg.value(metadata ptr %curr.0, metadata !454, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %prev.0, metadata !453, metadata !DIExpression()), !dbg !457
  %tobool39.not = icmp ne ptr %curr.0, null, !dbg !530
  %cmp41 = icmp ult ptr %curr.0, %add.ptr28
  %or.cond175 = select i1 %tobool39.not, i1 %cmp41, i1 false, !dbg !531
  %cmp42 = icmp ult ptr %curr.0, %13
  %or.cond176 = select i1 %or.cond175, i1 %cmp42, i1 false, !dbg !531
  br i1 %or.cond176, label %while.cond, label %while.end, !dbg !531, !llvm.loop !532

while.end:                                        ; preds = %while.cond
  %cmp44.not = icmp eq ptr %curr.0, %add.ptr28, !dbg !534
  br i1 %cmp44.not, label %if.end47, label %if.then45, !dbg !536

if.then45:                                        ; preds = %while.end
  %16 = load ptr, ptr @stderr, align 8, !dbg !537
  %17 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 54, i64 1, ptr %16) #17, !dbg !539
  tail call void @exit(i32 noundef 1) #15, !dbg !540
  unreachable, !dbg !540

if.end47:                                         ; preds = %while.end
  %sub48 = sub i64 %add31, %shr, !dbg !541
  %cmp49 = icmp ult i64 %sub48, 48, !dbg !543
  br i1 %cmp49, label %if.then50, label %if.else63, !dbg !544

if.then50:                                        ; preds = %if.end47
  %tobool51.not = icmp eq ptr %prev.0, null, !dbg !545
  %18 = load ptr, ptr %add.ptr28, align 8, !dbg !548
  %freelist.prev.0.lcssa = select i1 %tobool51.not, ptr %freelist, ptr %prev.0
  store ptr %18, ptr %freelist.prev.0.lcssa, align 8, !dbg !548
  store ptr null, ptr %add.ptr28, align 8, !dbg !549
  store i64 0, ptr %free34, align 8, !dbg !550
  store i64 %add31, ptr %size11, align 8, !dbg !551
  %19 = load ptr, ptr @gm, align 8, !dbg !552
  %memlock61 = getelementptr inbounds %struct.gmem, ptr %19, i64 0, i32 10, !dbg !554
  %call62 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock61) #16, !dbg !555
  br label %cleanup, !dbg !556

if.else63:                                        ; preds = %if.end47
  %add.ptr64 = getelementptr inbounds i8, ptr %p, i64 %shr, !dbg !557
  call void @llvm.dbg.value(metadata ptr %add.ptr64, metadata !456, metadata !DIExpression()), !dbg !457
  %20 = load ptr, ptr %add.ptr28, align 8, !dbg !559
  store ptr %20, ptr %add.ptr64, align 8, !dbg !560
  %21 = load i64, ptr @nodesize, align 8, !dbg !561
  %22 = add i64 %shr, %21, !dbg !562
  %sub68 = sub i64 %add31, %22, !dbg !562
  %size69 = getelementptr inbounds %struct.node, ptr %add.ptr64, i64 0, i32 1, !dbg !563
  store i64 %sub68, ptr %size69, align 8, !dbg !564
  %free70 = getelementptr inbounds %struct.node, ptr %add.ptr64, i64 0, i32 2, !dbg !565
  store i64 1, ptr %free70, align 8, !dbg !566
  %cksm71 = getelementptr inbounds %struct.node, ptr %add.ptr64, i64 0, i32 3, !dbg !567
  store i64 1437226410, ptr %cksm71, align 8, !dbg !568
  %tobool72.not = icmp eq ptr %prev.0, null, !dbg !569
  br i1 %tobool72.not, label %if.then73, label %if.end77, !dbg !571

if.then73:                                        ; preds = %if.else63
  %23 = load ptr, ptr @gm, align 8, !dbg !572
  %freelist74 = getelementptr inbounds %struct.gmem, ptr %23, i64 0, i32 5, !dbg !573
  br label %if.end77, !dbg !572

if.end77:                                         ; preds = %if.else63, %if.then73
  %prev.0.lcssa.sink184 = phi ptr [ %freelist74, %if.then73 ], [ %prev.0, %if.else63 ]
  store ptr %add.ptr64, ptr %prev.0.lcssa.sink184, align 8, !dbg !574
  store ptr null, ptr %add.ptr28, align 8, !dbg !575
  store i64 0, ptr %free34, align 8, !dbg !576
  store i64 %shr, ptr %size11, align 8, !dbg !577
  %24 = load ptr, ptr @gm, align 8, !dbg !578
  %memlock81 = getelementptr inbounds %struct.gmem, ptr %24, i64 0, i32 10, !dbg !580
  %call82 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock81) #16, !dbg !581
  br label %cleanup, !dbg !582

if.end83:                                         ; preds = %land.lhs.true, %if.end27
  %25 = load ptr, ptr @gm, align 8, !dbg !583
  %memlock84 = getelementptr inbounds %struct.gmem, ptr %25, i64 0, i32 10, !dbg !585
  %call85 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock84) #16, !dbg !586
  %call86 = tail call ptr @GlobalMalloc(i64 noundef %shr, ptr noundef nonnull @.str.12), !dbg !587
  call void @llvm.dbg.value(metadata ptr %call86, metadata !449, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %call86, metadata !451, metadata !DIExpression()), !dbg !457
  %tobool87.not = icmp eq ptr %call86, null, !dbg !588
  br i1 %tobool87.not, label %cleanup, label %if.end89, !dbg !590

if.end89:                                         ; preds = %if.end83
  call void @llvm.dbg.value(metadata ptr %p, metadata !450, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %7, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_stack_value)), !dbg !457
  call void @llvm.dbg.value(metadata ptr %call86, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %p, metadata !450, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %7, metadata !446, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shr, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !457
  %tobool92.not180 = icmp ult i64 %7, 4, !dbg !591
  br i1 %tobool92.not180, label %while.end95, label %while.body93.preheader, !dbg !591

while.body93.preheader:                           ; preds = %if.end89
  %shr90 = lshr i64 %7, 2, !dbg !592
  call void @llvm.dbg.value(metadata i64 %shr90, metadata !446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !457
  br label %while.body93, !dbg !591

while.body93:                                     ; preds = %while.body93.preheader, %while.body93
  %oldsize.0183 = phi i64 [ %dec, %while.body93 ], [ %shr90, %while.body93.preheader ]
  %s.0182 = phi ptr [ %incdec.ptr94, %while.body93 ], [ %call86, %while.body93.preheader ]
  %r.0181 = phi ptr [ %incdec.ptr, %while.body93 ], [ %p, %while.body93.preheader ]
  call void @llvm.dbg.value(metadata i64 %oldsize.0183, metadata !446, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %s.0182, metadata !451, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata ptr %r.0181, metadata !450, metadata !DIExpression()), !dbg !457
  %dec = add nsw i64 %oldsize.0183, -1, !dbg !593
  call void @llvm.dbg.value(metadata i64 %dec, metadata !446, metadata !DIExpression()), !dbg !457
  %incdec.ptr = getelementptr inbounds i64, ptr %r.0181, i64 1, !dbg !594
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !450, metadata !DIExpression()), !dbg !457
  %26 = load i64, ptr %r.0181, align 8, !dbg !595
  %incdec.ptr94 = getelementptr inbounds i64, ptr %s.0182, i64 1, !dbg !596
  call void @llvm.dbg.value(metadata ptr %incdec.ptr94, metadata !451, metadata !DIExpression()), !dbg !457
  store i64 %26, ptr %s.0182, align 8, !dbg !597
  call void @llvm.dbg.value(metadata i64 %dec, metadata !446, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !457
  %tobool92.not = icmp eq i64 %dec, 0, !dbg !591
  br i1 %tobool92.not, label %while.end95, label %while.body93, !dbg !591, !llvm.loop !598

while.end95:                                      ; preds = %while.body93, %if.end89
  tail call void @GlobalFree(ptr noundef nonnull %p), !dbg !599
  br label %cleanup, !dbg !600

cleanup:                                          ; preds = %if.end83, %if.then13, %while.end95, %if.end77, %if.then50, %if.end17, %if.then2, %if.then
  %retval.0 = phi ptr [ %p, %if.end17 ], [ %p, %if.then50 ], [ %p, %if.end77 ], [ %call86, %while.end95 ], [ %call, %if.then2 ], [ null, %if.then ], [ %p, %if.then13 ], [ null, %if.end83 ], !dbg !457
  ret ptr %retval.0, !dbg !601
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @GlobalFree(ptr noundef %p) local_unnamed_addr #0 !dbg !602 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !604, metadata !DIExpression()), !dbg !611
  %0 = load ptr, ptr @begmem, align 8, !dbg !612
  %tobool.not = icmp eq ptr %0, null, !dbg !612
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !614

if.end:                                           ; preds = %entry
  %1 = load i64, ptr @nodesize, align 8, !dbg !615
  %sub = sub i64 0, %1, !dbg !615
  %add.ptr = getelementptr inbounds i8, ptr %p, i64 %sub, !dbg !615
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !607, metadata !DIExpression()), !dbg !611
  %cksm = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 3, !dbg !616
  %2 = load i64, ptr %cksm, align 8, !dbg !616
  %cmp.not = icmp eq i64 %2, 1437226410, !dbg !618
  br i1 %cmp.not, label %if.end2, label %if.then1, !dbg !619

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr @stderr, align 8, !dbg !620
  %4 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 58, i64 1, ptr %3) #17, !dbg !622
  tail call void @exit(i32 noundef 1) #15, !dbg !623
  unreachable, !dbg !623

if.end2:                                          ; preds = %if.end
  %free = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 2, !dbg !624
  %5 = load i64, ptr %free, align 8, !dbg !624
  %tobool3.not = icmp eq i64 %5, 0, !dbg !626
  br i1 %tobool3.not, label %if.end6, label %if.then4, !dbg !627

if.then4:                                         ; preds = %if.end2
  %6 = load ptr, ptr @stderr, align 8, !dbg !628
  %7 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 48, i64 1, ptr %6) #17, !dbg !630
  tail call void @exit(i32 noundef 1) #15, !dbg !631
  unreachable, !dbg !631

if.end6:                                          ; preds = %if.end2
  call void @llvm.dbg.value(metadata i64 0, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()), !dbg !611
  %8 = load ptr, ptr @gm, align 8, !dbg !632
  %memlock = getelementptr inbounds %struct.gmem, ptr %8, i64 0, i32 10, !dbg !634
  %call7 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !635
  %9 = load ptr, ptr @gm, align 8, !dbg !636
  %freelist = getelementptr inbounds %struct.gmem, ptr %9, i64 0, i32 5, !dbg !638
  %10 = load ptr, ptr %freelist, align 8, !dbg !638
  %tobool8.not = icmp eq ptr %10, null, !dbg !636
  %.pre = load ptr, ptr @endmem, align 8
  br i1 %tobool8.not, label %if.end30, label %while.cond.preheader, !dbg !639

while.cond.preheader:                             ; preds = %if.end6
  call void @llvm.dbg.value(metadata ptr %10, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata ptr null, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 0, metadata !605, metadata !DIExpression()), !dbg !611
  %cmp11273 = icmp ult ptr %10, %add.ptr, !dbg !640
  %cmp12274 = icmp ult ptr %10, %.pre
  %or.cond263275 = select i1 %cmp11273, i1 %cmp12274, i1 false, !dbg !642
  br i1 %or.cond263275, label %while.body.lr.ph, label %while.end, !dbg !642

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %11 = load i64, ptr @nodesize, align 8
  br label %while.body, !dbg !642

while.body:                                       ; preds = %while.body.lr.ph, %if.end17
  %curr.0277 = phi ptr [ %10, %while.body.lr.ph ], [ %add.ptr22, %if.end17 ]
  %prev.0276 = phi ptr [ null, %while.body.lr.ph ], [ %prev.0.curr.0, %if.end17 ]
  call void @llvm.dbg.value(metadata ptr %curr.0277, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata ptr %prev.0276, metadata !608, metadata !DIExpression()), !dbg !611
  %cksm13 = getelementptr inbounds %struct.node, ptr %curr.0277, i64 0, i32 3, !dbg !643
  %12 = load i64, ptr %cksm13, align 8, !dbg !643
  %cmp14.not = icmp eq i64 %12, 1437226410, !dbg !646
  br i1 %cmp14.not, label %if.end17, label %if.then15, !dbg !647

if.then15:                                        ; preds = %while.body
  %13 = load ptr, ptr @stderr, align 8, !dbg !648
  %14 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 47, i64 1, ptr %13) #17, !dbg !650
  tail call void @exit(i32 noundef 1) #15, !dbg !651
  unreachable, !dbg !651

if.end17:                                         ; preds = %while.body
  %free18 = getelementptr inbounds %struct.node, ptr %curr.0277, i64 0, i32 2, !dbg !652
  %15 = load i64, ptr %free18, align 8, !dbg !652
  %tobool19.not = icmp eq i64 %15, 0, !dbg !654
  %prev.0.curr.0 = select i1 %tobool19.not, ptr %prev.0276, ptr %curr.0277
  call void @llvm.dbg.value(metadata ptr %prev.0.curr.0, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i1 %tobool19.not, metadata !605, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !611
  %size = getelementptr inbounds %struct.node, ptr %curr.0277, i64 0, i32 1, !dbg !655
  %16 = load i64, ptr %size, align 8, !dbg !655
  %add = add i64 %11, %16, !dbg !655
  %add.ptr22 = getelementptr inbounds i8, ptr %curr.0277, i64 %add, !dbg !655
  call void @llvm.dbg.value(metadata ptr %add.ptr22, metadata !609, metadata !DIExpression()), !dbg !611
  %cmp11 = icmp ult ptr %add.ptr22, %add.ptr, !dbg !640
  %cmp12 = icmp ult ptr %add.ptr22, %.pre
  %or.cond263 = select i1 %cmp11, i1 %cmp12, i1 false, !dbg !642
  br i1 %or.cond263, label %while.body, label %while.cond.while.end_crit_edge, !dbg !642, !llvm.loop !656

while.cond.while.end_crit_edge:                   ; preds = %if.end17
  %not.tobool19.not.le = xor i1 %tobool19.not, true
  %..le = zext i1 %not.tobool19.not.le to i64
  br i1 %cmp12, label %if.end30, label %if.then24, !dbg !659

while.end:                                        ; preds = %while.cond.preheader
  br i1 %cmp12274, label %if.end30, label %if.then24, !dbg !659

if.then24:                                        ; preds = %while.cond.while.end_crit_edge, %while.end
  %curr.0.lcssa289 = phi ptr [ %add.ptr22, %while.cond.while.end_crit_edge ], [ %10, %while.end ]
  %17 = load ptr, ptr @stdout, align 8, !dbg !660
  %size26 = getelementptr inbounds %struct.node, ptr %curr.0.lcssa289, i64 0, i32 1, !dbg !663
  %18 = load i64, ptr %size26, align 8, !dbg !663
  %call27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef nonnull %10, ptr noundef nonnull %curr.0.lcssa289, i64 noundef %18, ptr noundef %add.ptr, ptr noundef %.pre), !dbg !664
  %19 = load ptr, ptr @stderr, align 8, !dbg !665
  %20 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 62, i64 1, ptr %19) #17, !dbg !666
  tail call void @exit(i32 noundef 1) #15, !dbg !667
  unreachable, !dbg !667

if.end30:                                         ; preds = %if.end6, %while.cond.while.end_crit_edge, %while.end
  %pcom.2 = phi i64 [ 0, %while.end ], [ %..le, %while.cond.while.end_crit_edge ], [ 0, %if.end6 ], !dbg !668
  %prev.2 = phi ptr [ null, %while.end ], [ %prev.0.curr.0, %while.cond.while.end_crit_edge ], [ null, %if.end6 ], !dbg !669
  call void @llvm.dbg.value(metadata ptr %prev.2, metadata !608, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 %pcom.2, metadata !605, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 1, metadata !606, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata ptr null, metadata !610, metadata !DIExpression()), !dbg !611
  %size31 = getelementptr inbounds %struct.node, ptr %add.ptr, i64 0, i32 1, !dbg !670
  %21 = load i64, ptr %size31, align 8, !dbg !670
  %22 = load i64, ptr @nodesize, align 8, !dbg !670
  %add32 = add i64 %22, %21, !dbg !670
  %add.ptr33 = getelementptr inbounds i8, ptr %add.ptr, i64 %add32, !dbg !670
  call void @llvm.dbg.value(metadata ptr %add.ptr33, metadata !609, metadata !DIExpression()), !dbg !611
  %cmp37282 = icmp ult ptr %add.ptr33, %.pre
  br i1 %cmp37282, label %while.body39, label %while.end53.thread, !dbg !671

while.body39:                                     ; preds = %if.end30, %if.end44
  %curr.1284 = phi ptr [ %add.ptr52, %if.end44 ], [ %add.ptr33, %if.end30 ]
  %ncom.0283 = phi i64 [ %.ncom.0, %if.end44 ], [ 1, %if.end30 ]
  call void @llvm.dbg.value(metadata ptr %curr.1284, metadata !609, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 %ncom.0283, metadata !606, metadata !DIExpression()), !dbg !611
  %cksm40 = getelementptr inbounds %struct.node, ptr %curr.1284, i64 0, i32 3, !dbg !672
  %23 = load i64, ptr %cksm40, align 8, !dbg !672
  %cmp41.not = icmp eq i64 %23, 1437226410, !dbg !675
  br i1 %cmp41.not, label %if.end44, label %if.then42, !dbg !676

if.then42:                                        ; preds = %while.body39
  %24 = load ptr, ptr @stderr, align 8, !dbg !677
  %25 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 43, i64 1, ptr %24) #17, !dbg !679
  tail call void @exit(i32 noundef 1) #15, !dbg !680
  unreachable, !dbg !680

if.end44:                                         ; preds = %while.body39
  %free45 = getelementptr inbounds %struct.node, ptr %curr.1284, i64 0, i32 2, !dbg !681
  %26 = load i64, ptr %free45, align 8, !dbg !681
  %tobool46.not = icmp eq i64 %26, 0, !dbg !683
  %.ncom.0 = select i1 %tobool46.not, i64 0, i64 %ncom.0283
  call void @llvm.dbg.value(metadata ptr undef, metadata !610, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 %.ncom.0, metadata !606, metadata !DIExpression()), !dbg !611
  %size50 = getelementptr inbounds %struct.node, ptr %curr.1284, i64 0, i32 1, !dbg !684
  %27 = load i64, ptr %size50, align 8, !dbg !684
  %add51 = add i64 %27, %22, !dbg !684
  %add.ptr52 = getelementptr inbounds i8, ptr %curr.1284, i64 %add51, !dbg !684
  call void @llvm.dbg.value(metadata ptr %add.ptr52, metadata !609, metadata !DIExpression()), !dbg !611
  %tobool35.not296297 = icmp eq ptr %curr.1284, null, !dbg !685
  %tobool35.not296 = select i1 %tobool46.not, i1 true, i1 %tobool35.not296297, !dbg !685
  %cmp37 = icmp ult ptr %add.ptr52, %.pre
  %or.cond264 = select i1 %tobool35.not296, i1 %cmp37, i1 false, !dbg !671
  br i1 %or.cond264, label %while.body39, label %while.end53, !dbg !671, !llvm.loop !686

while.end53:                                      ; preds = %if.end44
  br i1 %tobool35.not296, label %while.end53.thread, label %28, !dbg !689

28:                                               ; preds = %while.end53
  br label %while.end53.thread, !dbg !689

while.end53.thread:                               ; preds = %if.end30, %while.end53, %28
  %tobool35.lcssa294 = phi i1 [ true, %28 ], [ false, %while.end53 ], [ false, %if.end30 ]
  %next.0.lcssa293 = phi ptr [ %curr.1284, %28 ], [ null, %while.end53 ], [ null, %if.end30 ]
  %29 = phi i64 [ %.ncom.0, %28 ], [ 0, %while.end53 ], [ 0, %if.end30 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !606, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !609, metadata !DIExpression()), !dbg !611
  store i64 1, ptr %free, align 8, !dbg !690
  %tobool58 = icmp eq ptr %next.0.lcssa293, null, !dbg !691
  %tobool59 = icmp ne i64 %29, 0
  %or.cond = select i1 %tobool58, i1 true, i1 %tobool59, !dbg !693
  %or.cond.not = xor i1 %or.cond, true, !dbg !693
  %tobool61 = icmp ne i64 %pcom.2, 0
  %or.cond169 = and i1 %tobool61, %or.cond.not, !dbg !693
  br i1 %or.cond169, label %if.then62, label %if.else68, !dbg !693

if.then62:                                        ; preds = %while.end53.thread
  store ptr %next.0.lcssa293, ptr %prev.2, align 8, !dbg !694
  %30 = load i64, ptr %size31, align 8, !dbg !696
  %31 = load i64, ptr @nodesize, align 8, !dbg !697
  %add65 = add i64 %31, %30, !dbg !698
  %size66 = getelementptr inbounds %struct.node, ptr %prev.2, i64 0, i32 1, !dbg !699
  %32 = load i64, ptr %size66, align 8, !dbg !700
  %add67 = add i64 %add65, %32, !dbg !700
  store i64 %add67, ptr %size66, align 8, !dbg !700
  br label %if.end161, !dbg !701

if.else68:                                        ; preds = %while.end53.thread
  %tobool73 = icmp ne ptr %prev.2, null
  %tobool73.not = xor i1 %tobool73, true, !dbg !702
  %or.cond171.not = select i1 %or.cond, i1 true, i1 %tobool73.not, !dbg !702
  %or.cond172 = or i1 %tobool61, %or.cond171.not, !dbg !702
  br i1 %or.cond172, label %if.else79, label %if.then76, !dbg !702

if.then76:                                        ; preds = %if.else68
  store ptr %add.ptr, ptr %prev.2, align 8, !dbg !704
  store ptr %next.0.lcssa293, ptr %add.ptr, align 8, !dbg !706
  br label %if.end161, !dbg !707

if.else79:                                        ; preds = %if.else68
  %or.cond174 = select i1 %or.cond, i1 true, i1 %tobool73, !dbg !708
  br i1 %or.cond174, label %if.else88, label %if.then85, !dbg !708

if.then85:                                        ; preds = %if.else79
  %33 = load ptr, ptr @gm, align 8, !dbg !710
  %freelist86 = getelementptr inbounds %struct.gmem, ptr %33, i64 0, i32 5, !dbg !712
  store ptr %add.ptr, ptr %freelist86, align 8, !dbg !713
  store ptr %next.0.lcssa293, ptr %add.ptr, align 8, !dbg !714
  br label %if.end161, !dbg !715

if.else88:                                        ; preds = %if.else79
  %or.cond175 = and i1 %tobool61, %tobool59, !dbg !716
  br i1 %or.cond175, label %if.then92, label %if.else101, !dbg !716

if.then92:                                        ; preds = %if.else88
  %34 = load ptr, ptr %next.0.lcssa293, align 8, !dbg !718
  store ptr %34, ptr %prev.2, align 8, !dbg !720
  %35 = load i64, ptr %size31, align 8, !dbg !721
  %size96 = getelementptr inbounds %struct.node, ptr %next.0.lcssa293, i64 0, i32 1, !dbg !722
  %36 = load i64, ptr %size96, align 8, !dbg !722
  %add97 = add i64 %36, %35, !dbg !723
  %37 = load i64, ptr @nodesize, align 8, !dbg !724
  %mul = shl i64 %37, 1, !dbg !725
  %add98 = add i64 %add97, %mul, !dbg !726
  %size99 = getelementptr inbounds %struct.node, ptr %prev.2, i64 0, i32 1, !dbg !727
  %38 = load i64, ptr %size99, align 8, !dbg !728
  %add100 = add i64 %add98, %38, !dbg !728
  store i64 %add100, ptr %size99, align 8, !dbg !728
  br label %if.end161, !dbg !729

if.else101:                                       ; preds = %if.else88
  %or.cond176 = select i1 %tobool59, i1 %tobool73, i1 false, !dbg !730
  %or.cond176.not = xor i1 %or.cond176, true, !dbg !730
  %or.cond177 = or i1 %tobool61, %or.cond176.not, !dbg !730
  br i1 %or.cond177, label %if.else115, label %if.then107, !dbg !730

if.then107:                                       ; preds = %if.else101
  store ptr %add.ptr, ptr %prev.2, align 8, !dbg !732
  %39 = load ptr, ptr %next.0.lcssa293, align 8, !dbg !734
  store ptr %39, ptr %add.ptr, align 8, !dbg !735
  %size111 = getelementptr inbounds %struct.node, ptr %next.0.lcssa293, i64 0, i32 1, !dbg !736
  %40 = load i64, ptr %size111, align 8, !dbg !736
  %41 = load i64, ptr @nodesize, align 8, !dbg !737
  %add112 = add i64 %41, %40, !dbg !738
  %42 = load i64, ptr %size31, align 8, !dbg !739
  %add114 = add i64 %add112, %42, !dbg !739
  store i64 %add114, ptr %size31, align 8, !dbg !739
  br label %if.end161, !dbg !740

if.else115:                                       ; preds = %if.else101
  %tobool116 = icmp eq i64 %29, 0, !dbg !741
  %or.cond178 = select i1 %tobool116, i1 true, i1 %tobool73, !dbg !743
  br i1 %or.cond178, label %if.else127, label %if.then119, !dbg !743

if.then119:                                       ; preds = %if.else115
  %43 = load ptr, ptr @gm, align 8, !dbg !744
  %freelist120 = getelementptr inbounds %struct.gmem, ptr %43, i64 0, i32 5, !dbg !746
  store ptr %add.ptr, ptr %freelist120, align 8, !dbg !747
  %44 = load ptr, ptr %next.0.lcssa293, align 8, !dbg !748
  store ptr %44, ptr %add.ptr, align 8, !dbg !749
  %size123 = getelementptr inbounds %struct.node, ptr %next.0.lcssa293, i64 0, i32 1, !dbg !750
  %45 = load i64, ptr %size123, align 8, !dbg !750
  %46 = load i64, ptr @nodesize, align 8, !dbg !751
  %add124 = add i64 %46, %45, !dbg !752
  %47 = load i64, ptr %size31, align 8, !dbg !753
  %add126 = add i64 %add124, %47, !dbg !753
  store i64 %add126, ptr %size31, align 8, !dbg !753
  br label %if.end161, !dbg !754

if.else127:                                       ; preds = %if.else115
  %or.cond179 = and i1 %tobool61, %tobool58, !dbg !755
  br i1 %or.cond179, label %if.then131, label %if.else137, !dbg !755

if.then131:                                       ; preds = %if.else127
  store ptr null, ptr %prev.2, align 8, !dbg !757
  %48 = load i64, ptr %size31, align 8, !dbg !759
  %49 = load i64, ptr @nodesize, align 8, !dbg !760
  %add134 = add i64 %49, %48, !dbg !761
  %size135 = getelementptr inbounds %struct.node, ptr %prev.2, i64 0, i32 1, !dbg !762
  %50 = load i64, ptr %size135, align 8, !dbg !763
  %add136 = add i64 %add134, %50, !dbg !763
  store i64 %add136, ptr %size135, align 8, !dbg !763
  br label %if.end161, !dbg !764

if.else137:                                       ; preds = %if.else127
  %or.cond180 = select i1 %tobool58, i1 %tobool73, i1 false, !dbg !765
  %or.cond180.not = xor i1 %or.cond180, true, !dbg !765
  %or.cond181 = or i1 %tobool61, %or.cond180.not, !dbg !765
  br i1 %or.cond181, label %if.else146, label %if.then143, !dbg !765

if.then143:                                       ; preds = %if.else137
  store ptr %add.ptr, ptr %prev.2, align 8, !dbg !767
  store ptr null, ptr %add.ptr, align 8, !dbg !769
  br label %if.end161, !dbg !770

if.else146:                                       ; preds = %if.else137
  %or.cond182 = select i1 %tobool35.lcssa294, i1 true, i1 %tobool73, !dbg !771
  br i1 %or.cond182, label %if.end161, label %if.then150, !dbg !771

if.then150:                                       ; preds = %if.else146
  %51 = load ptr, ptr @gm, align 8, !dbg !773
  %freelist151 = getelementptr inbounds %struct.gmem, ptr %51, i64 0, i32 5, !dbg !775
  store ptr %add.ptr, ptr %freelist151, align 8, !dbg !776
  store ptr null, ptr %add.ptr, align 8, !dbg !777
  br label %if.end161, !dbg !778

if.end161:                                        ; preds = %if.then76, %if.then92, %if.then119, %if.then143, %if.then150, %if.else146, %if.then131, %if.then107, %if.then85, %if.then62
  %52 = load ptr, ptr @gm, align 8, !dbg !779
  %memlock162 = getelementptr inbounds %struct.gmem, ptr %52, i64 0, i32 10, !dbg !781
  %call163 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock162) #16, !dbg !782
  br label %cleanup, !dbg !783

cleanup:                                          ; preds = %entry, %if.end161
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @GlobalMemAvl() local_unnamed_addr #0 !dbg !785 {
entry:
  %0 = load ptr, ptr @gm, align 8, !dbg !791
  %memlock = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 10, !dbg !793
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !794
  call void @llvm.dbg.value(metadata i64 0, metadata !789, metadata !DIExpression()), !dbg !795
  %1 = load ptr, ptr @gm, align 8, !dbg !796
  %freelist = getelementptr inbounds %struct.gmem, ptr %1, i64 0, i32 5, !dbg !797
  call void @llvm.dbg.value(metadata ptr undef, metadata !790, metadata !DIExpression()), !dbg !795
  %curr.07 = load ptr, ptr %freelist, align 8, !dbg !795
  call void @llvm.dbg.value(metadata ptr %curr.07, metadata !790, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata i64 0, metadata !789, metadata !DIExpression()), !dbg !795
  %tobool.not8 = icmp eq ptr %curr.07, null, !dbg !798
  br i1 %tobool.not8, label %while.end, label %while.body, !dbg !798

while.body:                                       ; preds = %entry, %while.body
  %curr.010 = phi ptr [ %curr.0, %while.body ], [ %curr.07, %entry ]
  %total.09 = phi i64 [ %add, %while.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %total.09, metadata !789, metadata !DIExpression()), !dbg !795
  %size = getelementptr inbounds %struct.node, ptr %curr.010, i64 0, i32 1, !dbg !799
  %2 = load i64, ptr %size, align 8, !dbg !799
  %add = add i64 %2, %total.09, !dbg !801
  call void @llvm.dbg.value(metadata i64 %add, metadata !789, metadata !DIExpression()), !dbg !795
  call void @llvm.dbg.value(metadata ptr undef, metadata !790, metadata !DIExpression()), !dbg !795
  %curr.0 = load ptr, ptr %curr.010, align 8, !dbg !795
  call void @llvm.dbg.value(metadata ptr %curr.0, metadata !790, metadata !DIExpression()), !dbg !795
  %tobool.not = icmp eq ptr %curr.0, null, !dbg !798
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !dbg !798, !llvm.loop !802

while.end.loopexit:                               ; preds = %while.body
  %phi.bo = and i64 %add, 4294967288, !dbg !804
  br label %while.end, !dbg !804

while.end:                                        ; preds = %while.end.loopexit, %entry
  %total.0.lcssa = phi i64 [ 0, %entry ], [ %phi.bo, %while.end.loopexit ]
  call void @llvm.dbg.value(metadata i64 %total.0.lcssa, metadata !789, metadata !DIExpression()), !dbg !795
  %memlock1 = getelementptr inbounds %struct.gmem, ptr %1, i64 0, i32 10, !dbg !805
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock1) #16, !dbg !807
  ret i64 %total.0.lcssa, !dbg !808
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @GlobalMemMax() local_unnamed_addr #0 !dbg !809 {
entry:
  %0 = load ptr, ptr @gm, align 8, !dbg !813
  %memlock = getelementptr inbounds %struct.gmem, ptr %0, i64 0, i32 10, !dbg !815
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %memlock) #16, !dbg !816
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !817
  %1 = load ptr, ptr @gm, align 8, !dbg !818
  %freelist = getelementptr inbounds %struct.gmem, ptr %1, i64 0, i32 5, !dbg !819
  call void @llvm.dbg.value(metadata ptr undef, metadata !812, metadata !DIExpression()), !dbg !817
  %curr.010 = load ptr, ptr %freelist, align 8, !dbg !817
  call void @llvm.dbg.value(metadata ptr %curr.010, metadata !812, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 0, metadata !811, metadata !DIExpression()), !dbg !817
  %tobool.not11 = icmp eq ptr %curr.010, null, !dbg !820
  br i1 %tobool.not11, label %while.end, label %while.body, !dbg !820

while.body:                                       ; preds = %entry, %while.body
  %curr.013 = phi ptr [ %curr.0, %while.body ], [ %curr.010, %entry ]
  %max.012 = phi i64 [ %3, %while.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %max.012, metadata !811, metadata !DIExpression()), !dbg !817
  %size = getelementptr inbounds %struct.node, ptr %curr.013, i64 0, i32 1, !dbg !821
  %2 = load i64, ptr %size, align 8, !dbg !821
  %3 = tail call i64 @llvm.umax.i64(i64 %2, i64 %max.012), !dbg !823
  call void @llvm.dbg.value(metadata i64 %3, metadata !811, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr undef, metadata !812, metadata !DIExpression()), !dbg !817
  %curr.0 = load ptr, ptr %curr.013, align 8, !dbg !817
  call void @llvm.dbg.value(metadata ptr %curr.0, metadata !812, metadata !DIExpression()), !dbg !817
  %tobool.not = icmp eq ptr %curr.0, null, !dbg !820
  br i1 %tobool.not, label %while.end.loopexit, label %while.body, !dbg !820, !llvm.loop !824

while.end.loopexit:                               ; preds = %while.body
  %phi.bo = and i64 %3, 4294967288, !dbg !826
  br label %while.end, !dbg !826

while.end:                                        ; preds = %while.end.loopexit, %entry
  %max.0.lcssa = phi i64 [ 0, %entry ], [ %phi.bo, %while.end.loopexit ]
  call void @llvm.dbg.value(metadata i64 %max.0.lcssa, metadata !811, metadata !DIExpression()), !dbg !817
  %memlock2 = getelementptr inbounds %struct.gmem, ptr %1, i64 0, i32 10, !dbg !827
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %memlock2) #16, !dbg !829
  ret i64 %max.0.lcssa, !dbg !830
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @ObjectMalloc(i64 noundef %ObjectType, i64 noundef %count) local_unnamed_addr #0 !dbg !831 {
entry:
  call void @llvm.dbg.value(metadata i64 %ObjectType, metadata !835, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata i64 %count, metadata !836, metadata !DIExpression()), !dbg !847
  switch i64 %ObjectType, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb2
    i64 2, label %sw.bb14
    i64 3, label %sw.bb28
    i64 6, label %sw.bb51
    i64 7, label %sw.bb63
  ], !dbg !848

sw.bb:                                            ; preds = %entry
  %mul = mul i64 %count, 144, !dbg !849
  call void @llvm.dbg.value(metadata i64 %mul, metadata !837, metadata !DIExpression()), !dbg !847
  %call = tail call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.22), !dbg !850
  call void @llvm.dbg.value(metadata ptr %call, metadata !838, metadata !DIExpression()), !dbg !847
  %0 = load i64, ptr @mem_grid, align 8, !dbg !851
  %add = add nsw i64 %0, %mul, !dbg !851
  store i64 %add, ptr @mem_grid, align 8, !dbg !851
  br label %sw.epilog, !dbg !852

sw.bb2:                                           ; preds = %entry
  %mul3 = mul i64 %count, 40, !dbg !853
  call void @llvm.dbg.value(metadata i64 %mul3, metadata !837, metadata !DIExpression()), !dbg !847
  %call4 = tail call ptr @GlobalMalloc(i64 noundef %mul3, ptr noundef nonnull @.str.23), !dbg !854
  call void @llvm.dbg.value(metadata ptr %call4, metadata !838, metadata !DIExpression()), !dbg !847
  %1 = load i64, ptr @mem_voxel, align 8, !dbg !855
  %add5 = add nsw i64 %1, %mul3, !dbg !855
  store i64 %add5, ptr @mem_voxel, align 8, !dbg !855
  br label %sw.epilog, !dbg !856

sw.bb14:                                          ; preds = %entry
  %mul15 = shl i64 %count, 3, !dbg !857
  call void @llvm.dbg.value(metadata i64 %mul15, metadata !837, metadata !DIExpression()), !dbg !847
  %call16 = tail call ptr @GlobalMalloc(i64 noundef %mul15, ptr noundef nonnull @.str.24), !dbg !858
  call void @llvm.dbg.value(metadata ptr %call16, metadata !838, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata ptr %call16, metadata !842, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i64 0, metadata !839, metadata !DIExpression()), !dbg !859
  %cmp17103 = icmp sgt i64 %count, 0, !dbg !860
  br i1 %cmp17103, label %for.body.preheader, label %for.end, !dbg !863

for.body.preheader:                               ; preds = %sw.bb14
  call void @llvm.memset.p0.i64(ptr align 8 %call16, i8 0, i64 %mul15, i1 false), !dbg !864
  call void @llvm.dbg.value(metadata i32 undef, metadata !839, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i32 undef, metadata !839, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !859
  br label %for.end, !dbg !865

for.end:                                          ; preds = %for.body.preheader, %sw.bb14
  %2 = load i64, ptr @mem_hashtable, align 8, !dbg !865
  %add19 = add nsw i64 %2, %mul15, !dbg !865
  store i64 %add19, ptr @mem_hashtable, align 8, !dbg !865
  br label %sw.epilog, !dbg !866

sw.bb28:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %count, metadata !845, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !867
  %3 = lshr i64 %count, 3, !dbg !868
  %add31 = and i64 %3, 2305843009213693944, !dbg !868
  %mul32 = add nuw nsw i64 %add31, 8, !dbg !868
  call void @llvm.dbg.value(metadata i64 %mul32, metadata !837, metadata !DIExpression()), !dbg !847
  %call33 = tail call ptr @GlobalMalloc(i64 noundef %mul32, ptr noundef nonnull @.str.25), !dbg !869
  call void @llvm.dbg.value(metadata ptr %call33, metadata !838, metadata !DIExpression()), !dbg !847
  call void @llvm.dbg.value(metadata ptr %call33, metadata !846, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i64 0, metadata !843, metadata !DIExpression()), !dbg !867
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %call33, i8 -1, i64 %mul32, i1 false), !dbg !870
  call void @llvm.dbg.value(metadata i32 undef, metadata !843, metadata !DIExpression()), !dbg !867
  call void @llvm.dbg.value(metadata i32 undef, metadata !843, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !867
  %4 = load i64, ptr @mem_emptycells, align 8, !dbg !873
  %add42 = add nsw i64 %4, %mul32, !dbg !873
  store i64 %add42, ptr @mem_emptycells, align 8, !dbg !873
  br label %sw.epilog, !dbg !874

sw.bb51:                                          ; preds = %entry
  %mul52 = mul i64 %count, 120, !dbg !875
  call void @llvm.dbg.value(metadata i64 %mul52, metadata !837, metadata !DIExpression()), !dbg !847
  %call53 = tail call ptr @GlobalMalloc(i64 noundef %mul52, ptr noundef nonnull @.str.26), !dbg !876
  call void @llvm.dbg.value(metadata ptr %call53, metadata !838, metadata !DIExpression()), !dbg !847
  %5 = load i64, ptr @mem_bintree, align 8, !dbg !877
  %add54 = add nsw i64 %5, %mul52, !dbg !877
  store i64 %add54, ptr @mem_bintree, align 8, !dbg !877
  br label %sw.epilog, !dbg !878

sw.bb63:                                          ; preds = %entry
  %mul64 = shl i64 %count, 3, !dbg !879
  call void @llvm.dbg.value(metadata i64 %mul64, metadata !837, metadata !DIExpression()), !dbg !847
  %call65 = tail call ptr @GlobalMalloc(i64 noundef %mul64, ptr noundef nonnull @.str.27), !dbg !880
  call void @llvm.dbg.value(metadata ptr %call65, metadata !838, metadata !DIExpression()), !dbg !847
  %6 = load i64, ptr @mem_pepArray, align 8, !dbg !881
  %add66 = add nsw i64 %6, %mul64, !dbg !881
  store i64 %add66, ptr @mem_pepArray, align 8, !dbg !881
  br label %sw.epilog, !dbg !882

sw.default:                                       ; preds = %entry
  %call75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.28, i64 noundef %ObjectType), !dbg !883
  tail call void @exit(i32 noundef -1) #15, !dbg !884
  unreachable, !dbg !884

sw.epilog:                                        ; preds = %sw.bb63, %sw.bb51, %sw.bb28, %for.end, %sw.bb2, %sw.bb
  %maxmem_pepArray.sink106 = phi ptr [ @maxmem_pepArray, %sw.bb63 ], [ @maxmem_bintree, %sw.bb51 ], [ @maxmem_emptycells, %sw.bb28 ], [ @maxmem_hashtable, %for.end ], [ @maxmem_voxel, %sw.bb2 ], [ @maxmem_grid, %sw.bb ]
  %add66.sink = phi i64 [ %add66, %sw.bb63 ], [ %add54, %sw.bb51 ], [ %add42, %sw.bb28 ], [ %add19, %for.end ], [ %add5, %sw.bb2 ], [ %add, %sw.bb ]
  %p.0 = phi ptr [ %call65, %sw.bb63 ], [ %call53, %sw.bb51 ], [ %call33, %sw.bb28 ], [ %call16, %for.end ], [ %call4, %sw.bb2 ], [ %call, %sw.bb ], !dbg !885
  %7 = load i64, ptr %maxmem_pepArray.sink106, align 8, !dbg !885
  %8 = tail call i64 @llvm.smax.i64(i64 %add66.sink, i64 %7), !dbg !885
  store i64 %8, ptr %maxmem_pepArray.sink106, align 8, !dbg !885
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !838, metadata !DIExpression()), !dbg !847
  ret ptr %p.0, !dbg !886
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ObjectFree(i64 noundef %ObjectType, i64 noundef %count, ptr noundef %p) local_unnamed_addr #0 !dbg !887 {
entry:
  call void @llvm.dbg.value(metadata i64 %ObjectType, metadata !891, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata i64 %count, metadata !892, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr %p, metadata !893, metadata !DIExpression()), !dbg !895
  tail call void @GlobalFree(ptr noundef %p), !dbg !896
  switch i64 %ObjectType, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
    i64 2, label %sw.bb4
    i64 3, label %sw.bb7
    i64 6, label %sw.bb10
    i64 7, label %sw.bb13
  ], !dbg !897

sw.bb:                                            ; preds = %entry
  %mul.neg = mul i64 %count, -144, !dbg !898
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 144, DW_OP_mul, DW_OP_stack_value)), !dbg !895
  %0 = load i64, ptr @mem_grid, align 8, !dbg !900
  %sub = add i64 %0, %mul.neg, !dbg !900
  store i64 %sub, ptr @mem_grid, align 8, !dbg !900
  br label %sw.epilog, !dbg !901

sw.bb1:                                           ; preds = %entry
  %mul2.neg = mul i64 %count, -40, !dbg !902
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 40, DW_OP_mul, DW_OP_stack_value)), !dbg !895
  %1 = load i64, ptr @mem_voxel, align 8, !dbg !903
  %sub3 = add i64 %1, %mul2.neg, !dbg !903
  store i64 %sub3, ptr @mem_voxel, align 8, !dbg !903
  br label %sw.epilog, !dbg !904

sw.bb4:                                           ; preds = %entry
  %mul5.neg = mul i64 %count, -8, !dbg !905
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !895
  %2 = load i64, ptr @mem_hashtable, align 8, !dbg !906
  %sub6 = add i64 %2, %mul5.neg, !dbg !906
  store i64 %sub6, ptr @mem_hashtable, align 8, !dbg !906
  br label %sw.epilog, !dbg !907

sw.bb7:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shr, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !895
  %3 = lshr i64 %count, 3, !dbg !908
  %add = and i64 %3, 2305843009213693944, !dbg !908
  call void @llvm.dbg.value(metadata i64 %mul8.neg, metadata !894, metadata !DIExpression()), !dbg !895
  %4 = load i64, ptr @mem_emptycells, align 8, !dbg !909
  %mul8.neg = sub nuw nsw i64 -8, %add, !dbg !908
  %sub9 = add i64 %mul8.neg, %4, !dbg !909
  store i64 %sub9, ptr @mem_emptycells, align 8, !dbg !909
  br label %sw.epilog, !dbg !910

sw.bb10:                                          ; preds = %entry
  %mul11.neg = mul i64 %count, -120, !dbg !911
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 120, DW_OP_mul, DW_OP_stack_value)), !dbg !895
  %5 = load i64, ptr @mem_bintree, align 8, !dbg !912
  %sub12 = add i64 %5, %mul11.neg, !dbg !912
  store i64 %sub12, ptr @mem_bintree, align 8, !dbg !912
  br label %sw.epilog, !dbg !913

sw.bb13:                                          ; preds = %entry
  %mul14.neg = mul i64 %count, -8, !dbg !914
  call void @llvm.dbg.value(metadata i64 %count, metadata !894, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !895
  %6 = load i64, ptr @mem_pepArray, align 8, !dbg !915
  %sub15 = add i64 %6, %mul14.neg, !dbg !915
  store i64 %sub15, ptr @mem_pepArray, align 8, !dbg !915
  br label %sw.epilog, !dbg !916

sw.default:                                       ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.29, i64 noundef %ObjectType), !dbg !917
  tail call void @exit(i32 noundef -1) #15, !dbg !918
  unreachable, !dbg !918

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb
  ret void, !dbg !919
}

; Function Attrs: noinline nounwind uwtable
define dso_local nonnull ptr @ma_rayinfo(ptr noundef %r) local_unnamed_addr #0 !dbg !920 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !946, metadata !DIExpression()), !dbg !948
  %ri_indx = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 7, !dbg !949
  %0 = load i64, ptr %ri_indx, align 8, !dbg !949
  %cmp = icmp sgt i64 %0, 4, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @stderr, align 8, !dbg !953
  %2 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 18, i64 1, ptr %1) #17, !dbg !955
  tail call void @exit(i32 noundef -1) #15, !dbg !956
  unreachable, !dbg !956

if.end:                                           ; preds = %entry
  %add = add nsw i64 %0, 1, !dbg !957
  %arrayidx = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 9, i64 %0, !dbg !958
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !947, metadata !DIExpression()), !dbg !948
  store i64 %add, ptr %ri_indx, align 8, !dbg !959
  ret ptr %arrayidx, !dbg !960
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @free_rayinfo(ptr nocapture noundef %r) local_unnamed_addr #8 !dbg !961 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !965, metadata !DIExpression()), !dbg !966
  %ri_indx = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 7, !dbg !967
  %0 = load i64, ptr %ri_indx, align 8, !dbg !968
  %sub = add nsw i64 %0, -1, !dbg !968
  store i64 %sub, ptr %ri_indx, align 8, !dbg !968
  ret void, !dbg !969
}

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @reset_rayinfo(ptr nocapture noundef writeonly %r) local_unnamed_addr #9 !dbg !970 {
entry:
  call void @llvm.dbg.value(metadata ptr %r, metadata !972, metadata !DIExpression()), !dbg !973
  %ri_indx = getelementptr inbounds %struct.ray, ptr %r, i64 0, i32 7, !dbg !974
  store i64 0, ptr %ri_indx, align 8, !dbg !975
  ret void, !dbg !976
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ma_print() local_unnamed_addr #10 !dbg !977 {
entry:
  %0 = load i64, ptr @mem_grid, align 8, !dbg !981
  %1 = load i64, ptr @mem_hashtable, align 8, !dbg !982
  %2 = load i64, ptr @mem_emptycells, align 8, !dbg !983
  call void @llvm.dbg.value(metadata i64 undef, metadata !979, metadata !DIExpression()), !dbg !984
  %3 = load i64, ptr @mem_voxel, align 8, !dbg !985
  %4 = load i64, ptr @mem_bintree, align 8, !dbg !986
  %add2 = add i64 %1, %0, !dbg !987
  %add = add i64 %add2, %2, !dbg !988
  %add1 = add i64 %add, %3, !dbg !989
  %add3 = add i64 %add1, %4, !dbg !990
  call void @llvm.dbg.value(metadata i64 %add3, metadata !979, metadata !DIExpression()), !dbg !984
  %5 = load i64, ptr @maxmem_grid, align 8, !dbg !991
  %6 = load i64, ptr @maxmem_hashtable, align 8, !dbg !992
  %7 = load i64, ptr @maxmem_emptycells, align 8, !dbg !993
  call void @llvm.dbg.value(metadata i64 undef, metadata !980, metadata !DIExpression()), !dbg !984
  %8 = load i64, ptr @maxmem_voxel, align 8, !dbg !994
  %9 = load i64, ptr @maxmem_bintree, align 8, !dbg !995
  %add6 = add i64 %6, %5, !dbg !996
  %add4 = add i64 %add6, %7, !dbg !997
  %add5 = add i64 %add4, %8, !dbg !998
  %add7 = add i64 %add5, %9, !dbg !999
  call void @llvm.dbg.value(metadata i64 %add7, metadata !980, metadata !DIExpression()), !dbg !984
  %10 = load ptr, ptr @stdout, align 8, !dbg !1000
  %11 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 69, i64 1, ptr %10), !dbg !1001
  %12 = load ptr, ptr @stdout, align 8, !dbg !1002
  %13 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 69, i64 1, ptr %12), !dbg !1003
  %14 = load ptr, ptr @stdout, align 8, !dbg !1004
  %15 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 70, i64 1, ptr %14), !dbg !1005
  %16 = load ptr, ptr @stdout, align 8, !dbg !1006
  %17 = load i64, ptr @mem_grid, align 8, !dbg !1007
  %18 = load i64, ptr @maxmem_grid, align 8, !dbg !1008
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.34, i64 noundef %17, i64 noundef %18, i64 noundef 144), !dbg !1009
  %19 = load ptr, ptr @stdout, align 8, !dbg !1010
  %20 = load i64, ptr @mem_hashtable, align 8, !dbg !1011
  %21 = load i64, ptr @maxmem_hashtable, align 8, !dbg !1012
  %call11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.35, i64 noundef %20, i64 noundef %21, i64 noundef 8), !dbg !1013
  %22 = load ptr, ptr @stdout, align 8, !dbg !1014
  %23 = load i64, ptr @mem_emptycells, align 8, !dbg !1015
  %24 = load i64, ptr @maxmem_emptycells, align 8, !dbg !1016
  %call12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.36, i64 noundef %23, i64 noundef %24, i64 noundef 8), !dbg !1017
  %25 = load ptr, ptr @stdout, align 8, !dbg !1018
  %26 = load i64, ptr @mem_voxel, align 8, !dbg !1019
  %27 = load i64, ptr @maxmem_voxel, align 8, !dbg !1020
  %call13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.37, i64 noundef %26, i64 noundef %27, i64 noundef 40), !dbg !1021
  %28 = load ptr, ptr @stdout, align 8, !dbg !1022
  %29 = load i64, ptr @mem_bintree, align 8, !dbg !1023
  %30 = load i64, ptr @maxmem_bintree, align 8, !dbg !1024
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.38, i64 noundef %29, i64 noundef %30, i64 noundef 120), !dbg !1025
  %31 = load ptr, ptr @stdout, align 8, !dbg !1026
  %fputc = tail call i32 @fputc(i32 10, ptr %31), !dbg !1027
  %32 = load ptr, ptr @stdout, align 8, !dbg !1028
  %call16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.40, i64 noundef %add3, i64 noundef %add7), !dbg !1029
  ret void, !dbg !1030
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nofree nounwind }
attributes #13 = { argmemonly nofree nounwind willreturn writeonly }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "begmem", scope: !2, file: !3, line: 54, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !163, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "memory.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "189d7c17c8bc707c8d84aea3159c2e64")
!4 = !{!5, !6, !9, !20, !23, !24}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !7, line: 304, baseType: !8)
!7 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "NODE", file: !7, line: 668, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "node", file: !7, line: 661, size: 256, elements: !12)
!12 = !{!13, !15, !17, !19}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !11, file: !7, line: 663, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !11, file: !7, line: 664, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !7, line: 298, baseType: !8)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !11, file: !7, line: 665, baseType: !18, size: 64, offset: 128)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !7, line: 299, baseType: !8)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "cksm", scope: !11, file: !7, line: 666, baseType: !16, size: 64, offset: 192)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !7, line: 290, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !7, line: 603, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !7, line: 582, size: 1216, elements: !27)
!27 = !{!28, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !26, file: !7, line: 584, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !7, line: 572, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !7, line: 539, size: 1152, elements: !32)
!32 = !{!33, !36, !55, !56, !126, !127, !129, !130, !131, !132, !133, !150}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !31, file: !7, line: 541, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !7, line: 297, baseType: !35)
!35 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !31, file: !7, line: 542, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !7, line: 405, baseType: !40)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !7, line: 394, size: 320, elements: !41)
!41 = !{!42, !43, !44, !46, !50, !51}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !40, file: !7, line: 396, baseType: !34, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !40, file: !7, line: 397, baseType: !34, size: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !40, file: !7, line: 398, baseType: !45, size: 64, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !40, file: !7, line: 399, baseType: !47, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !7, line: 287, baseType: !49)
!49 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !40, file: !7, line: 400, baseType: !48, size: 8, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !40, file: !7, line: 403, baseType: !52, size: 56, offset: 264)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 56, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 7)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !31, file: !7, line: 548, baseType: !23, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !31, file: !7, line: 555, baseType: !57, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !7, line: 481, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !7, line: 474, size: 576, elements: !61)
!61 = !{!62, !63, !124, !125}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !60, file: !7, line: 476, baseType: !34, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !60, file: !7, line: 477, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !7, line: 488, size: 1024, elements: !66)
!66 = !{!67, !68, !72, !83, !84, !85, !109, !123}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !65, file: !7, line: 490, baseType: !34, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !7, line: 491, baseType: !69, size: 256, offset: 64)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !65, file: !7, line: 492, baseType: !73, size: 384, offset: 320)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !7, line: 418, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !7, line: 413, size: 384, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !74, file: !7, line: 415, baseType: !77, size: 192)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 192, elements: !80)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !7, line: 310, baseType: !79)
!79 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!80 = !{!81}
!81 = !DISubrange(count: 3)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !74, file: !7, line: 416, baseType: !77, size: 192, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !65, file: !7, line: 493, baseType: !58, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !65, file: !7, line: 494, baseType: !34, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !65, file: !7, line: 495, baseType: !86, size: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !7, line: 340, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !7, line: 327, size: 640, elements: !89)
!89 = !{!90, !94, !98, !99, !100, !101, !105, !106, !107, !108}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !88, file: !7, line: 329, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{!47, null}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !88, file: !7, line: 330, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, null}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !88, file: !7, line: 331, baseType: !95, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !88, file: !7, line: 332, baseType: !95, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !88, file: !7, line: 333, baseType: !95, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !88, file: !7, line: 334, baseType: !102, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{!34, null}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !88, file: !7, line: 335, baseType: !102, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !88, file: !7, line: 336, baseType: !95, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !88, file: !7, line: 337, baseType: !95, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !88, file: !7, line: 338, baseType: !95, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !65, file: !7, line: 496, baseType: !110, size: 64, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !7, line: 357, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !7, line: 347, size: 704, elements: !113)
!113 = !{!114, !117, !118, !119, !120, !121, !122}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !112, file: !7, line: 349, baseType: !115, size: 192)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !7, line: 319, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !7, line: 314, baseType: !77)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !112, file: !7, line: 350, baseType: !115, size: 192, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !112, file: !7, line: 351, baseType: !78, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !112, file: !7, line: 352, baseType: !78, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !112, file: !7, line: 353, baseType: !78, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !112, file: !7, line: 354, baseType: !78, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !112, file: !7, line: 355, baseType: !78, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !65, file: !7, line: 497, baseType: !64, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !60, file: !7, line: 478, baseType: !47, size: 64, offset: 128)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !60, file: !7, line: 479, baseType: !73, size: 384, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !31, file: !7, line: 556, baseType: !34, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !31, file: !7, line: 558, baseType: !128, size: 192, offset: 320)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 192, elements: !80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !31, file: !7, line: 562, baseType: !34, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !31, file: !7, line: 563, baseType: !77, size: 192, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !31, file: !7, line: 564, baseType: !77, size: 192, offset: 768)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !31, file: !7, line: 566, baseType: !34, size: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !31, file: !7, line: 569, baseType: !134, size: 64, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !7, line: 535, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !7, line: 522, size: 960, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !136, file: !7, line: 524, baseType: !57, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !136, file: !7, line: 525, baseType: !77, size: 192, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !136, file: !7, line: 527, baseType: !34, size: 64, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !136, file: !7, line: 528, baseType: !128, size: 192, offset: 320)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !136, file: !7, line: 529, baseType: !128, size: 192, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !136, file: !7, line: 531, baseType: !34, size: 64, offset: 704)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !136, file: !7, line: 532, baseType: !34, size: 64, offset: 768)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !136, file: !7, line: 533, baseType: !146, size: 128, offset: 832)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, elements: !148)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!148 = !{!149}
!149 = !DISubrange(count: 2)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !31, file: !7, line: 570, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !26, file: !7, line: 585, baseType: !77, size: 192, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !26, file: !7, line: 587, baseType: !34, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !26, file: !7, line: 589, baseType: !78, size: 64, offset: 320)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !26, file: !7, line: 591, baseType: !34, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !26, file: !7, line: 593, baseType: !78, size: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !26, file: !7, line: 595, baseType: !77, size: 192, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !26, file: !7, line: 596, baseType: !128, size: 192, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !26, file: !7, line: 597, baseType: !34, size: 64, offset: 896)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !26, file: !7, line: 600, baseType: !128, size: 192, offset: 960)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !26, file: !7, line: 601, baseType: !162, size: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!163 = !{!164, !0, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190}
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nodesize", scope: !2, file: !3, line: 53, type: !16, isLocal: false, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "endmem", scope: !2, file: !3, line: 55, type: !9, isLocal: false, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "mem_grid", scope: !2, file: !3, line: 63, type: !34, isLocal: false, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "maxmem_grid", scope: !2, file: !3, line: 64, type: !34, isLocal: false, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "mem_voxel", scope: !2, file: !3, line: 66, type: !34, isLocal: false, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "maxmem_voxel", scope: !2, file: !3, line: 67, type: !34, isLocal: false, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "mem_hashtable", scope: !2, file: !3, line: 69, type: !34, isLocal: false, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(name: "maxmem_hashtable", scope: !2, file: !3, line: 70, type: !34, isLocal: false, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "mem_emptycells", scope: !2, file: !3, line: 72, type: !34, isLocal: false, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "maxmem_emptycells", scope: !2, file: !3, line: 73, type: !34, isLocal: false, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "mem_bintree", scope: !2, file: !3, line: 75, type: !34, isLocal: false, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "maxmem_bintree", scope: !2, file: !3, line: 76, type: !34, isLocal: false, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "mem_pepArray", scope: !2, file: !3, line: 78, type: !34, isLocal: false, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "maxmem_pepArray", scope: !2, file: !3, line: 79, type: !34, isLocal: false, isDefinition: true)
!192 = !{i32 7, !"Dwarf Version", i32 5}
!193 = !{i32 2, !"Debug Info Version", i32 3}
!194 = !{i32 1, !"wchar_size", i32 4}
!195 = !{i32 7, !"PIC Level", i32 2}
!196 = !{i32 7, !"PIE Level", i32 2}
!197 = !{i32 7, !"uwtable", i32 2}
!198 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!199 = distinct !DISubprogram(name: "LocalMalloc", scope: !3, file: !3, line: 105, type: !200, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!5, !16, !47}
!202 = !{!203, !204, !205}
!203 = !DILocalVariable(name: "n", arg: 1, scope: !199, file: !3, line: 105, type: !16)
!204 = !DILocalVariable(name: "msg", arg: 2, scope: !199, file: !3, line: 105, type: !47)
!205 = !DILocalVariable(name: "p", scope: !199, file: !3, line: 107, type: !5)
!206 = !DILocation(line: 0, scope: !199)
!207 = !DILocation(line: 109, column: 25, scope: !199)
!208 = !DILocation(line: 110, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !199, file: !3, line: 110, column: 6)
!210 = !DILocation(line: 110, column: 6, scope: !199)
!211 = !DILocation(line: 112, column: 52, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 111, column: 3)
!213 = !DILocation(line: 112, column: 3, scope: !212)
!214 = !DILocation(line: 113, column: 3, scope: !212)
!215 = !DILocation(line: 116, column: 2, scope: !199)
!216 = distinct !DISubprogram(name: "LocalFree", scope: !3, file: !3, line: 139, type: !217, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !5}
!219 = !{!220}
!220 = !DILocalVariable(name: "p", arg: 1, scope: !216, file: !3, line: 139, type: !5)
!221 = !DILocation(line: 0, scope: !216)
!222 = !DILocation(line: 141, column: 2, scope: !216)
!223 = !DILocation(line: 143, column: 2, scope: !216)
!224 = distinct !DISubprogram(name: "GlobalHeapWalk", scope: !3, file: !3, line: 161, type: !225, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null}
!227 = !{!228}
!228 = !DILocalVariable(name: "curr", scope: !224, file: !3, line: 163, type: !9)
!229 = !DILocation(line: 165, column: 24, scope: !230)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 165, column: 2)
!231 = !DILocation(line: 165, column: 28, scope: !230)
!232 = !DILocation(line: 165, column: 3, scope: !230)
!233 = !DILocation(line: 166, column: 9, scope: !224)
!234 = !DILocation(line: 0, scope: !224)
!235 = !DILocation(line: 168, column: 42, scope: !224)
!236 = !DILocation(line: 168, column: 46, scope: !224)
!237 = !DILocation(line: 168, column: 37, scope: !224)
!238 = !DILocation(line: 168, column: 2, scope: !224)
!239 = !DILocation(line: 170, column: 2, scope: !224)
!240 = !DILocation(line: 171, column: 2, scope: !224)
!241 = !DILocation(line: 173, column: 16, scope: !224)
!242 = !DILocation(line: 173, column: 14, scope: !224)
!243 = !DILocation(line: 173, column: 2, scope: !224)
!244 = !DILocation(line: 176, column: 4, scope: !245)
!245 = distinct !DILexicalBlock(scope: !224, file: !3, line: 174, column: 3)
!246 = !DILocation(line: 176, column: 26, scope: !245)
!247 = !DILocation(line: 176, column: 15, scope: !245)
!248 = !DILocation(line: 176, column: 38, scope: !245)
!249 = !DILocation(line: 177, column: 11, scope: !245)
!250 = !DILocation(line: 177, column: 5, scope: !245)
!251 = !DILocation(line: 177, column: 42, scope: !245)
!252 = !DILocation(line: 175, column: 3, scope: !245)
!253 = !DILocation(line: 179, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !245, file: !3, line: 179, column: 7)
!255 = !DILocation(line: 179, column: 18, scope: !254)
!256 = !DILocation(line: 179, column: 7, scope: !245)
!257 = !DILocation(line: 181, column: 12, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 180, column: 4)
!259 = !DILocation(line: 181, column: 4, scope: !258)
!260 = !DILocation(line: 182, column: 4, scope: !258)
!261 = !DILocation(line: 185, column: 10, scope: !245)
!262 = distinct !{!262, !243, !263, !264, !265}
!263 = !DILocation(line: 186, column: 3, scope: !224)
!264 = !{!"llvm.loop.mustprogress"}
!265 = !{!"llvm.loop.unroll.disable"}
!266 = !DILocation(line: 188, column: 26, scope: !267)
!267 = distinct !DILexicalBlock(scope: !224, file: !3, line: 188, column: 2)
!268 = !DILocation(line: 188, column: 30, scope: !267)
!269 = !DILocation(line: 188, column: 3, scope: !267)
!270 = !DILocation(line: 189, column: 2, scope: !224)
!271 = !DISubprogram(name: "pthread_mutex_lock", scope: !272, file: !272, line: 738, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!272 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !276}
!275 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !278, line: 72, baseType: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!279 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !278, line: 67, size: 320, elements: !280)
!280 = !{!281, !302, !306}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !279, file: !278, line: 69, baseType: !282, size: 320)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !283, line: 22, size: 320, elements: !284)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!284 = !{!285, !286, !288, !289, !290, !291, !293, !294}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !282, file: !283, line: 24, baseType: !275, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !282, file: !283, line: 25, baseType: !287, size: 32, offset: 32)
!287 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !282, file: !283, line: 26, baseType: !275, size: 32, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !282, file: !283, line: 28, baseType: !287, size: 32, offset: 96)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !282, file: !283, line: 32, baseType: !275, size: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !282, file: !283, line: 34, baseType: !292, size: 16, offset: 160)
!292 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !282, file: !283, line: 35, baseType: !292, size: 16, offset: 176)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !282, file: !283, line: 36, baseType: !295, size: 128, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !296, line: 53, baseType: !297)
!296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !296, line: 49, size: 128, elements: !298)
!298 = !{!299, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !297, file: !296, line: 51, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !297, file: !296, line: 52, baseType: !300, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !279, file: !278, line: 70, baseType: !303, size: 320)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 320, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 40)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !279, file: !278, line: 71, baseType: !35, size: 64)
!307 = !{}
!308 = !DISubprogram(name: "pthread_mutex_unlock", scope: !272, file: !272, line: 756, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !307)
!309 = distinct !DISubprogram(name: "GlobalHeapInit", scope: !3, file: !3, line: 217, type: !310, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!310 = !DISubroutineType(types: !311)
!311 = !{!18, !16}
!312 = !{!313}
!313 = !DILocalVariable(name: "size", arg: 1, scope: !309, file: !3, line: 217, type: !16)
!314 = !DILocation(line: 0, scope: !309)
!315 = !DILocation(line: 219, column: 14, scope: !309)
!316 = !DILocation(line: 220, column: 30, scope: !309)
!317 = !DILocation(line: 220, column: 2, scope: !309)
!318 = !DILocation(line: 220, column: 6, scope: !309)
!319 = !DILocation(line: 220, column: 15, scope: !309)
!320 = !DILocation(line: 222, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !309, file: !3, line: 222, column: 6)
!322 = !DILocation(line: 222, column: 6, scope: !309)
!323 = !DILocation(line: 225, column: 11, scope: !309)
!324 = !DILocation(line: 226, column: 10, scope: !309)
!325 = !DILocation(line: 227, column: 12, scope: !309)
!326 = !DILocation(line: 227, column: 10, scope: !309)
!327 = !DILocation(line: 229, column: 28, scope: !309)
!328 = !DILocation(line: 229, column: 16, scope: !309)
!329 = !DILocation(line: 229, column: 21, scope: !309)
!330 = !DILocation(line: 230, column: 6, scope: !309)
!331 = !DILocation(line: 230, column: 21, scope: !309)
!332 = !DILocation(line: 231, column: 2, scope: !309)
!333 = !DILocation(line: 231, column: 6, scope: !309)
!334 = !DILocation(line: 231, column: 16, scope: !309)
!335 = !DILocation(line: 231, column: 21, scope: !309)
!336 = !DILocation(line: 232, column: 6, scope: !309)
!337 = !DILocation(line: 232, column: 16, scope: !309)
!338 = !DILocation(line: 232, column: 21, scope: !309)
!339 = !DILocation(line: 237, column: 2, scope: !309)
!340 = !DILocation(line: 238, column: 2, scope: !309)
!341 = distinct !DISubprogram(name: "GlobalMalloc", scope: !3, file: !3, line: 270, type: !200, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!342 = !{!343, !344, !345, !346, !347}
!343 = !DILocalVariable(name: "size", arg: 1, scope: !341, file: !3, line: 270, type: !16)
!344 = !DILocalVariable(name: "msg", arg: 2, scope: !341, file: !3, line: 270, type: !47)
!345 = !DILocalVariable(name: "prev", scope: !341, file: !3, line: 272, type: !9)
!346 = !DILocalVariable(name: "curr", scope: !341, file: !3, line: 273, type: !9)
!347 = !DILocalVariable(name: "next", scope: !341, file: !3, line: 274, type: !9)
!348 = !DILocation(line: 0, scope: !341)
!349 = !DILocation(line: 276, column: 7, scope: !350)
!350 = distinct !DILexicalBlock(scope: !341, file: !3, line: 276, column: 6)
!351 = !DILocation(line: 276, column: 6, scope: !341)
!352 = !DILocation(line: 279, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !341, file: !3, line: 279, column: 2)
!354 = !DILocation(line: 279, column: 28, scope: !353)
!355 = !DILocation(line: 279, column: 3, scope: !353)
!356 = !DILocation(line: 282, column: 9, scope: !341)
!357 = !DILocation(line: 282, column: 13, scope: !341)
!358 = !DILocation(line: 283, column: 9, scope: !341)
!359 = !DILocation(line: 289, column: 2, scope: !341)
!360 = !DILocation(line: 289, column: 9, scope: !341)
!361 = !DILocation(line: 289, column: 14, scope: !341)
!362 = !DILocation(line: 289, column: 23, scope: !341)
!363 = !DILocation(line: 289, column: 28, scope: !341)
!364 = !DILocation(line: 291, column: 13, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 291, column: 7)
!366 = distinct !DILexicalBlock(scope: !341, file: !3, line: 290, column: 3)
!367 = !DILocation(line: 291, column: 18, scope: !365)
!368 = !DILocation(line: 291, column: 7, scope: !366)
!369 = !DILocation(line: 293, column: 12, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !3, line: 292, column: 4)
!371 = !DILocation(line: 293, column: 4, scope: !370)
!372 = !DILocation(line: 294, column: 4, scope: !370)
!373 = !DILocation(line: 297, column: 13, scope: !374)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 297, column: 7)
!375 = !DILocation(line: 297, column: 18, scope: !374)
!376 = !DILocation(line: 297, column: 7, scope: !366)
!377 = distinct !{!377, !359, !378, !264, !265}
!378 = !DILocation(line: 305, column: 3, scope: !341)
!379 = !DILocation(line: 299, column: 12, scope: !380)
!380 = distinct !DILexicalBlock(scope: !374, file: !3, line: 298, column: 4)
!381 = !DILocation(line: 299, column: 4, scope: !380)
!382 = !DILocation(line: 300, column: 4, scope: !380)
!383 = !DILocation(line: 310, column: 11, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 309, column: 3)
!385 = distinct !DILexicalBlock(scope: !341, file: !3, line: 308, column: 6)
!386 = !DILocation(line: 310, column: 62, scope: !384)
!387 = !DILocation(line: 310, column: 3, scope: !384)
!388 = !DILocation(line: 311, column: 3, scope: !384)
!389 = !DILocation(line: 320, column: 17, scope: !390)
!390 = distinct !DILexicalBlock(scope: !341, file: !3, line: 320, column: 6)
!391 = !DILocation(line: 320, column: 24, scope: !390)
!392 = !DILocation(line: 320, column: 6, scope: !341)
!393 = !DILocation(line: 322, column: 14, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 321, column: 3)
!395 = !DILocation(line: 323, column: 39, scope: !394)
!396 = !DILocation(line: 323, column: 9, scope: !394)
!397 = !DILocation(line: 323, column: 15, scope: !394)
!398 = !DILocation(line: 324, column: 23, scope: !394)
!399 = !DILocation(line: 324, column: 15, scope: !394)
!400 = !DILocation(line: 325, column: 9, scope: !394)
!401 = !DILocation(line: 325, column: 15, scope: !394)
!402 = !DILocation(line: 326, column: 9, scope: !394)
!403 = !DILocation(line: 326, column: 15, scope: !394)
!404 = !DILocation(line: 327, column: 15, scope: !394)
!405 = !DILocation(line: 328, column: 3, scope: !394)
!406 = !DILocation(line: 330, column: 16, scope: !390)
!407 = !DILocation(line: 0, scope: !390)
!408 = !DILocation(line: 333, column: 7, scope: !409)
!409 = distinct !DILexicalBlock(scope: !341, file: !3, line: 333, column: 6)
!410 = !DILocation(line: 333, column: 6, scope: !341)
!411 = !DILocation(line: 334, column: 3, scope: !409)
!412 = !DILocation(line: 334, column: 7, scope: !409)
!413 = !DILocation(line: 334, column: 16, scope: !409)
!414 = !DILocation(line: 336, column: 16, scope: !409)
!415 = !DILocation(line: 339, column: 26, scope: !416)
!416 = distinct !DILexicalBlock(scope: !341, file: !3, line: 339, column: 2)
!417 = !DILocation(line: 339, column: 30, scope: !416)
!418 = !DILocation(line: 339, column: 3, scope: !416)
!419 = !DILocation(line: 340, column: 13, scope: !341)
!420 = !DILocation(line: 341, column: 8, scope: !341)
!421 = !DILocation(line: 341, column: 13, scope: !341)
!422 = !DILocation(line: 342, column: 12, scope: !341)
!423 = !DILocation(line: 344, column: 2, scope: !341)
!424 = !DILocation(line: 345, column: 2, scope: !341)
!425 = distinct !DISubprogram(name: "GlobalCalloc", scope: !3, file: !3, line: 371, type: !426, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !428)
!426 = !DISubroutineType(types: !427)
!427 = !{!5, !16, !16}
!428 = !{!429, !430, !431, !432, !433}
!429 = !DILocalVariable(name: "n", arg: 1, scope: !425, file: !3, line: 371, type: !16)
!430 = !DILocalVariable(name: "size", arg: 2, scope: !425, file: !3, line: 371, type: !16)
!431 = !DILocalVariable(name: "nbytes", scope: !425, file: !3, line: 373, type: !16)
!432 = !DILocalVariable(name: "p", scope: !425, file: !3, line: 374, type: !23)
!433 = !DILocalVariable(name: "q", scope: !425, file: !3, line: 375, type: !5)
!434 = !DILocation(line: 0, scope: !425)
!435 = !DILocation(line: 377, column: 11, scope: !425)
!436 = !DILocation(line: 379, column: 10, scope: !425)
!437 = !DILocation(line: 382, column: 2, scope: !425)
!438 = !DILocation(line: 383, column: 8, scope: !425)
!439 = !DILocation(line: 385, column: 2, scope: !425)
!440 = distinct !DISubprogram(name: "GlobalRealloc", scope: !3, file: !3, line: 446, type: !441, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{!5, !5, !16}
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!444 = !DILocalVariable(name: "p", arg: 1, scope: !440, file: !3, line: 446, type: !5)
!445 = !DILocalVariable(name: "size", arg: 2, scope: !440, file: !3, line: 446, type: !16)
!446 = !DILocalVariable(name: "oldsize", scope: !440, file: !3, line: 448, type: !16)
!447 = !DILocalVariable(name: "newsize", scope: !440, file: !3, line: 449, type: !16)
!448 = !DILocalVariable(name: "totsize", scope: !440, file: !3, line: 450, type: !16)
!449 = !DILocalVariable(name: "q", scope: !440, file: !3, line: 451, type: !5)
!450 = !DILocalVariable(name: "r", scope: !440, file: !3, line: 452, type: !23)
!451 = !DILocalVariable(name: "s", scope: !440, file: !3, line: 453, type: !23)
!452 = !DILocalVariable(name: "pn", scope: !440, file: !3, line: 454, type: !9)
!453 = !DILocalVariable(name: "prev", scope: !440, file: !3, line: 455, type: !9)
!454 = !DILocalVariable(name: "curr", scope: !440, file: !3, line: 456, type: !9)
!455 = !DILocalVariable(name: "next", scope: !440, file: !3, line: 457, type: !9)
!456 = !DILocalVariable(name: "node", scope: !440, file: !3, line: 458, type: !9)
!457 = !DILocation(line: 0, scope: !440)
!458 = !DILocation(line: 460, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !440, file: !3, line: 460, column: 6)
!460 = !DILocation(line: 460, column: 6, scope: !440)
!461 = !DILocation(line: 462, column: 3, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !3, line: 461, column: 3)
!463 = !DILocation(line: 463, column: 3, scope: !462)
!464 = !DILocation(line: 466, column: 7, scope: !465)
!465 = distinct !DILexicalBlock(scope: !440, file: !3, line: 466, column: 6)
!466 = !DILocation(line: 466, column: 6, scope: !440)
!467 = !DILocation(line: 467, column: 11, scope: !465)
!468 = !DILocation(line: 467, column: 3, scope: !465)
!469 = !DILocation(line: 470, column: 7, scope: !440)
!470 = !DILocation(line: 472, column: 10, scope: !471)
!471 = distinct !DILexicalBlock(scope: !440, file: !3, line: 472, column: 6)
!472 = !DILocation(line: 472, column: 15, scope: !471)
!473 = !DILocation(line: 472, column: 6, scope: !440)
!474 = !DILocation(line: 474, column: 11, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !3, line: 473, column: 3)
!476 = !DILocation(line: 474, column: 3, scope: !475)
!477 = !DILocation(line: 475, column: 3, scope: !475)
!478 = !DILocation(line: 478, column: 10, scope: !479)
!479 = distinct !DILexicalBlock(scope: !440, file: !3, line: 478, column: 6)
!480 = !DILocation(line: 478, column: 6, scope: !479)
!481 = !DILocation(line: 478, column: 6, scope: !440)
!482 = !DILocation(line: 480, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !479, file: !3, line: 479, column: 3)
!484 = !DILocation(line: 480, column: 3, scope: !483)
!485 = !DILocation(line: 481, column: 3, scope: !483)
!486 = !DILocation(line: 485, column: 12, scope: !440)
!487 = !DILocation(line: 486, column: 16, scope: !440)
!488 = !DILocation(line: 494, column: 14, scope: !489)
!489 = distinct !DILexicalBlock(scope: !440, file: !3, line: 494, column: 6)
!490 = !DILocation(line: 494, column: 6, scope: !440)
!491 = !DILocation(line: 496, column: 15, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 496, column: 7)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 495, column: 3)
!494 = !DILocation(line: 496, column: 25, scope: !492)
!495 = !DILocation(line: 496, column: 7, scope: !493)
!496 = !DILocation(line: 499, column: 15, scope: !493)
!497 = !DILocation(line: 501, column: 14, scope: !493)
!498 = !DILocation(line: 502, column: 27, scope: !493)
!499 = !DILocation(line: 502, column: 36, scope: !493)
!500 = !DILocation(line: 502, column: 9, scope: !493)
!501 = !DILocation(line: 502, column: 15, scope: !493)
!502 = !DILocation(line: 503, column: 15, scope: !493)
!503 = !DILocation(line: 504, column: 9, scope: !493)
!504 = !DILocation(line: 504, column: 15, scope: !493)
!505 = !DILocation(line: 505, column: 9, scope: !493)
!506 = !DILocation(line: 505, column: 15, scope: !493)
!507 = !DILocation(line: 506, column: 14, scope: !493)
!508 = !DILocation(line: 508, column: 3, scope: !493)
!509 = !DILocation(line: 509, column: 3, scope: !493)
!510 = !DILocation(line: 518, column: 9, scope: !440)
!511 = !DILocation(line: 519, column: 20, scope: !440)
!512 = !DILocation(line: 519, column: 39, scope: !440)
!513 = !DILocation(line: 519, column: 31, scope: !440)
!514 = !DILocation(line: 521, column: 24, scope: !515)
!515 = distinct !DILexicalBlock(scope: !440, file: !3, line: 521, column: 2)
!516 = !DILocation(line: 521, column: 28, scope: !515)
!517 = !DILocation(line: 521, column: 3, scope: !515)
!518 = !DILocation(line: 522, column: 13, scope: !519)
!519 = distinct !DILexicalBlock(scope: !440, file: !3, line: 522, column: 6)
!520 = !DILocation(line: 522, column: 11, scope: !519)
!521 = !DILocation(line: 522, column: 20, scope: !519)
!522 = !DILocation(line: 522, column: 29, scope: !519)
!523 = !DILocation(line: 522, column: 23, scope: !519)
!524 = !DILocation(line: 522, column: 34, scope: !519)
!525 = !DILocation(line: 527, column: 10, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !3, line: 523, column: 3)
!527 = !DILocation(line: 527, column: 14, scope: !526)
!528 = !DILocation(line: 529, column: 3, scope: !526)
!529 = !DILocation(line: 0, scope: !526)
!530 = !DILocation(line: 529, column: 10, scope: !526)
!531 = !DILocation(line: 529, column: 15, scope: !526)
!532 = distinct !{!532, !528, !533, !264, !265}
!533 = !DILocation(line: 533, column: 4, scope: !526)
!534 = !DILocation(line: 535, column: 12, scope: !535)
!535 = distinct !DILexicalBlock(scope: !526, file: !3, line: 535, column: 7)
!536 = !DILocation(line: 535, column: 7, scope: !526)
!537 = !DILocation(line: 537, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 536, column: 4)
!539 = !DILocation(line: 537, column: 4, scope: !538)
!540 = !DILocation(line: 538, column: 4, scope: !538)
!541 = !DILocation(line: 541, column: 15, scope: !542)
!542 = distinct !DILexicalBlock(scope: !526, file: !3, line: 541, column: 7)
!543 = !DILocation(line: 541, column: 25, scope: !542)
!544 = !DILocation(line: 541, column: 7, scope: !526)
!545 = !DILocation(line: 545, column: 9, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 545, column: 8)
!547 = distinct !DILexicalBlock(scope: !542, file: !3, line: 542, column: 4)
!548 = !DILocation(line: 0, scope: !546)
!549 = !DILocation(line: 550, column: 15, scope: !547)
!550 = !DILocation(line: 551, column: 15, scope: !547)
!551 = !DILocation(line: 552, column: 15, scope: !547)
!552 = !DILocation(line: 554, column: 28, scope: !553)
!553 = distinct !DILexicalBlock(scope: !547, file: !3, line: 554, column: 4)
!554 = !DILocation(line: 554, column: 32, scope: !553)
!555 = !DILocation(line: 554, column: 5, scope: !553)
!556 = !DILocation(line: 555, column: 4, scope: !547)
!557 = !DILocation(line: 561, column: 14, scope: !558)
!558 = distinct !DILexicalBlock(scope: !542, file: !3, line: 558, column: 4)
!559 = !DILocation(line: 562, column: 23, scope: !558)
!560 = !DILocation(line: 562, column: 15, scope: !558)
!561 = !DILocation(line: 563, column: 27, scope: !558)
!562 = !DILocation(line: 563, column: 36, scope: !558)
!563 = !DILocation(line: 563, column: 10, scope: !558)
!564 = !DILocation(line: 563, column: 15, scope: !558)
!565 = !DILocation(line: 564, column: 10, scope: !558)
!566 = !DILocation(line: 564, column: 15, scope: !558)
!567 = !DILocation(line: 565, column: 10, scope: !558)
!568 = !DILocation(line: 565, column: 15, scope: !558)
!569 = !DILocation(line: 567, column: 9, scope: !570)
!570 = distinct !DILexicalBlock(scope: !558, file: !3, line: 567, column: 8)
!571 = !DILocation(line: 567, column: 8, scope: !558)
!572 = !DILocation(line: 568, column: 5, scope: !570)
!573 = !DILocation(line: 568, column: 9, scope: !570)
!574 = !DILocation(line: 0, scope: !570)
!575 = !DILocation(line: 572, column: 15, scope: !558)
!576 = !DILocation(line: 573, column: 15, scope: !558)
!577 = !DILocation(line: 574, column: 15, scope: !558)
!578 = !DILocation(line: 576, column: 28, scope: !579)
!579 = distinct !DILexicalBlock(scope: !558, file: !3, line: 576, column: 4)
!580 = !DILocation(line: 576, column: 32, scope: !579)
!581 = !DILocation(line: 576, column: 5, scope: !579)
!582 = !DILocation(line: 577, column: 4, scope: !558)
!583 = !DILocation(line: 588, column: 26, scope: !584)
!584 = distinct !DILexicalBlock(scope: !440, file: !3, line: 588, column: 2)
!585 = !DILocation(line: 588, column: 30, scope: !584)
!586 = !DILocation(line: 588, column: 3, scope: !584)
!587 = !DILocation(line: 590, column: 10, scope: !440)
!588 = !DILocation(line: 591, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !440, file: !3, line: 591, column: 6)
!590 = !DILocation(line: 591, column: 6, scope: !440)
!591 = !DILocation(line: 597, column: 2, scope: !440)
!592 = !DILocation(line: 595, column: 10, scope: !440)
!593 = !DILocation(line: 597, column: 16, scope: !440)
!594 = !DILocation(line: 598, column: 12, scope: !440)
!595 = !DILocation(line: 598, column: 10, scope: !440)
!596 = !DILocation(line: 598, column: 5, scope: !440)
!597 = !DILocation(line: 598, column: 8, scope: !440)
!598 = distinct !{!598, !591, !594, !264, !265}
!599 = !DILocation(line: 600, column: 2, scope: !440)
!600 = !DILocation(line: 601, column: 2, scope: !440)
!601 = !DILocation(line: 602, column: 2, scope: !440)
!602 = distinct !DISubprogram(name: "GlobalFree", scope: !3, file: !3, line: 624, type: !217, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DILocalVariable(name: "p", arg: 1, scope: !602, file: !3, line: 624, type: !5)
!605 = !DILocalVariable(name: "pcom", scope: !602, file: !3, line: 626, type: !18)
!606 = !DILocalVariable(name: "ncom", scope: !602, file: !3, line: 627, type: !18)
!607 = !DILocalVariable(name: "pn", scope: !602, file: !3, line: 628, type: !9)
!608 = !DILocalVariable(name: "prev", scope: !602, file: !3, line: 629, type: !9)
!609 = !DILocalVariable(name: "curr", scope: !602, file: !3, line: 630, type: !9)
!610 = !DILocalVariable(name: "next", scope: !602, file: !3, line: 631, type: !9)
!611 = !DILocation(line: 0, scope: !602)
!612 = !DILocation(line: 633, column: 7, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !3, line: 633, column: 6)
!614 = !DILocation(line: 633, column: 6, scope: !602)
!615 = !DILocation(line: 637, column: 7, scope: !602)
!616 = !DILocation(line: 639, column: 10, scope: !617)
!617 = distinct !DILexicalBlock(scope: !602, file: !3, line: 639, column: 6)
!618 = !DILocation(line: 639, column: 15, scope: !617)
!619 = !DILocation(line: 639, column: 6, scope: !602)
!620 = !DILocation(line: 641, column: 11, scope: !621)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 640, column: 3)
!622 = !DILocation(line: 641, column: 3, scope: !621)
!623 = !DILocation(line: 642, column: 3, scope: !621)
!624 = !DILocation(line: 645, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !602, file: !3, line: 645, column: 6)
!626 = !DILocation(line: 645, column: 6, scope: !625)
!627 = !DILocation(line: 645, column: 6, scope: !602)
!628 = !DILocation(line: 647, column: 11, scope: !629)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 646, column: 3)
!630 = !DILocation(line: 647, column: 3, scope: !629)
!631 = !DILocation(line: 648, column: 3, scope: !629)
!632 = !DILocation(line: 655, column: 24, scope: !633)
!633 = distinct !DILexicalBlock(scope: !602, file: !3, line: 655, column: 2)
!634 = !DILocation(line: 655, column: 28, scope: !633)
!635 = !DILocation(line: 655, column: 3, scope: !633)
!636 = !DILocation(line: 656, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !602, file: !3, line: 656, column: 6)
!638 = !DILocation(line: 656, column: 10, scope: !637)
!639 = !DILocation(line: 656, column: 6, scope: !602)
!640 = !DILocation(line: 664, column: 15, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 657, column: 3)
!642 = !DILocation(line: 664, column: 20, scope: !641)
!643 = !DILocation(line: 666, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 666, column: 8)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 665, column: 4)
!646 = !DILocation(line: 666, column: 19, scope: !644)
!647 = !DILocation(line: 666, column: 8, scope: !645)
!648 = !DILocation(line: 668, column: 13, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !3, line: 667, column: 5)
!650 = !DILocation(line: 668, column: 5, scope: !649)
!651 = !DILocation(line: 669, column: 5, scope: !649)
!652 = !DILocation(line: 672, column: 14, scope: !653)
!653 = distinct !DILexicalBlock(scope: !645, file: !3, line: 672, column: 8)
!654 = !DILocation(line: 672, column: 8, scope: !653)
!655 = !DILocation(line: 680, column: 11, scope: !645)
!656 = distinct !{!656, !657, !658, !264, !265}
!657 = !DILocation(line: 664, column: 3, scope: !641)
!658 = !DILocation(line: 681, column: 4, scope: !641)
!659 = !DILocation(line: 688, column: 7, scope: !641)
!660 = !DILocation(line: 690, column: 12, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 689, column: 4)
!662 = distinct !DILexicalBlock(scope: !641, file: !3, line: 688, column: 7)
!663 = !DILocation(line: 690, column: 110, scope: !661)
!664 = !DILocation(line: 690, column: 4, scope: !661)
!665 = !DILocation(line: 691, column: 12, scope: !661)
!666 = !DILocation(line: 691, column: 4, scope: !661)
!667 = !DILocation(line: 692, column: 4, scope: !661)
!668 = !DILocation(line: 652, column: 7, scope: !602)
!669 = !DILocation(line: 653, column: 7, scope: !602)
!670 = !DILocation(line: 703, column: 9, scope: !602)
!671 = !DILocation(line: 705, column: 15, scope: !602)
!672 = !DILocation(line: 707, column: 13, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !3, line: 707, column: 7)
!674 = distinct !DILexicalBlock(scope: !602, file: !3, line: 706, column: 3)
!675 = !DILocation(line: 707, column: 18, scope: !673)
!676 = !DILocation(line: 707, column: 7, scope: !674)
!677 = !DILocation(line: 709, column: 12, scope: !678)
!678 = distinct !DILexicalBlock(scope: !673, file: !3, line: 708, column: 4)
!679 = !DILocation(line: 709, column: 4, scope: !678)
!680 = !DILocation(line: 710, column: 4, scope: !678)
!681 = !DILocation(line: 713, column: 13, scope: !682)
!682 = distinct !DILexicalBlock(scope: !674, file: !3, line: 713, column: 7)
!683 = !DILocation(line: 713, column: 7, scope: !682)
!684 = !DILocation(line: 718, column: 10, scope: !674)
!685 = !DILocation(line: 705, column: 10, scope: !602)
!686 = distinct !{!686, !687, !688, !264, !265}
!687 = !DILocation(line: 705, column: 2, scope: !602)
!688 = !DILocation(line: 719, column: 3, scope: !602)
!689 = !DILocation(line: 722, column: 6, scope: !602)
!690 = !DILocation(line: 726, column: 13, scope: !602)
!691 = !DILocation(line: 735, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !602, file: !3, line: 735, column: 6)
!693 = !DILocation(line: 735, column: 11, scope: !692)
!694 = !DILocation(line: 737, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !692, file: !3, line: 736, column: 3)
!696 = !DILocation(line: 738, column: 23, scope: !695)
!697 = !DILocation(line: 738, column: 30, scope: !695)
!698 = !DILocation(line: 738, column: 28, scope: !695)
!699 = !DILocation(line: 738, column: 9, scope: !695)
!700 = !DILocation(line: 738, column: 14, scope: !695)
!701 = !DILocation(line: 739, column: 3, scope: !695)
!702 = !DILocation(line: 741, column: 11, scope: !703)
!703 = distinct !DILexicalBlock(scope: !692, file: !3, line: 741, column: 6)
!704 = !DILocation(line: 743, column: 15, scope: !705)
!705 = distinct !DILexicalBlock(scope: !703, file: !3, line: 742, column: 3)
!706 = !DILocation(line: 744, column: 15, scope: !705)
!707 = !DILocation(line: 745, column: 3, scope: !705)
!708 = !DILocation(line: 747, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !703, file: !3, line: 747, column: 6)
!710 = !DILocation(line: 749, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !3, line: 748, column: 3)
!712 = !DILocation(line: 749, column: 7, scope: !711)
!713 = !DILocation(line: 749, column: 16, scope: !711)
!714 = !DILocation(line: 750, column: 16, scope: !711)
!715 = !DILocation(line: 751, column: 3, scope: !711)
!716 = !DILocation(line: 753, column: 11, scope: !717)
!717 = distinct !DILexicalBlock(scope: !709, file: !3, line: 753, column: 6)
!718 = !DILocation(line: 755, column: 23, scope: !719)
!719 = distinct !DILexicalBlock(scope: !717, file: !3, line: 754, column: 3)
!720 = !DILocation(line: 755, column: 15, scope: !719)
!721 = !DILocation(line: 756, column: 23, scope: !719)
!722 = !DILocation(line: 756, column: 36, scope: !719)
!723 = !DILocation(line: 756, column: 28, scope: !719)
!724 = !DILocation(line: 756, column: 45, scope: !719)
!725 = !DILocation(line: 756, column: 44, scope: !719)
!726 = !DILocation(line: 756, column: 41, scope: !719)
!727 = !DILocation(line: 756, column: 9, scope: !719)
!728 = !DILocation(line: 756, column: 14, scope: !719)
!729 = !DILocation(line: 757, column: 3, scope: !719)
!730 = !DILocation(line: 759, column: 11, scope: !731)
!731 = distinct !DILexicalBlock(scope: !717, file: !3, line: 759, column: 6)
!732 = !DILocation(line: 761, column: 15, scope: !733)
!733 = distinct !DILexicalBlock(scope: !731, file: !3, line: 760, column: 3)
!734 = !DILocation(line: 762, column: 23, scope: !733)
!735 = !DILocation(line: 762, column: 15, scope: !733)
!736 = !DILocation(line: 763, column: 23, scope: !733)
!737 = !DILocation(line: 763, column: 30, scope: !733)
!738 = !DILocation(line: 763, column: 28, scope: !733)
!739 = !DILocation(line: 763, column: 14, scope: !733)
!740 = !DILocation(line: 764, column: 3, scope: !733)
!741 = !DILocation(line: 766, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !731, file: !3, line: 766, column: 6)
!743 = !DILocation(line: 766, column: 11, scope: !742)
!744 = !DILocation(line: 768, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !3, line: 767, column: 3)
!746 = !DILocation(line: 768, column: 7, scope: !745)
!747 = !DILocation(line: 768, column: 16, scope: !745)
!748 = !DILocation(line: 769, column: 24, scope: !745)
!749 = !DILocation(line: 769, column: 16, scope: !745)
!750 = !DILocation(line: 770, column: 24, scope: !745)
!751 = !DILocation(line: 770, column: 31, scope: !745)
!752 = !DILocation(line: 770, column: 29, scope: !745)
!753 = !DILocation(line: 770, column: 15, scope: !745)
!754 = !DILocation(line: 771, column: 3, scope: !745)
!755 = !DILocation(line: 773, column: 12, scope: !756)
!756 = distinct !DILexicalBlock(scope: !742, file: !3, line: 773, column: 6)
!757 = !DILocation(line: 775, column: 15, scope: !758)
!758 = distinct !DILexicalBlock(scope: !756, file: !3, line: 774, column: 3)
!759 = !DILocation(line: 776, column: 23, scope: !758)
!760 = !DILocation(line: 776, column: 30, scope: !758)
!761 = !DILocation(line: 776, column: 28, scope: !758)
!762 = !DILocation(line: 776, column: 9, scope: !758)
!763 = !DILocation(line: 776, column: 14, scope: !758)
!764 = !DILocation(line: 777, column: 3, scope: !758)
!765 = !DILocation(line: 779, column: 12, scope: !766)
!766 = distinct !DILexicalBlock(scope: !756, file: !3, line: 779, column: 6)
!767 = !DILocation(line: 781, column: 15, scope: !768)
!768 = distinct !DILexicalBlock(scope: !766, file: !3, line: 780, column: 3)
!769 = !DILocation(line: 782, column: 15, scope: !768)
!770 = !DILocation(line: 783, column: 3, scope: !768)
!771 = !DILocation(line: 785, column: 12, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !3, line: 785, column: 6)
!773 = !DILocation(line: 787, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 786, column: 3)
!775 = !DILocation(line: 787, column: 7, scope: !774)
!776 = !DILocation(line: 787, column: 16, scope: !774)
!777 = !DILocation(line: 788, column: 16, scope: !774)
!778 = !DILocation(line: 789, column: 3, scope: !774)
!779 = !DILocation(line: 791, column: 26, scope: !780)
!780 = distinct !DILexicalBlock(scope: !602, file: !3, line: 791, column: 2)
!781 = !DILocation(line: 791, column: 30, scope: !780)
!782 = !DILocation(line: 791, column: 3, scope: !780)
!783 = !DILocation(line: 792, column: 2, scope: !602)
!784 = !DILocation(line: 793, column: 2, scope: !602)
!785 = distinct !DISubprogram(name: "GlobalMemAvl", scope: !3, file: !3, line: 812, type: !786, scopeLine: 813, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !788)
!786 = !DISubroutineType(types: !787)
!787 = !{!16}
!788 = !{!789, !790}
!789 = !DILocalVariable(name: "total", scope: !785, file: !3, line: 814, type: !16)
!790 = !DILocalVariable(name: "curr", scope: !785, file: !3, line: 815, type: !9)
!791 = !DILocation(line: 817, column: 24, scope: !792)
!792 = distinct !DILexicalBlock(scope: !785, file: !3, line: 817, column: 2)
!793 = !DILocation(line: 817, column: 28, scope: !792)
!794 = !DILocation(line: 817, column: 3, scope: !792)
!795 = !DILocation(line: 0, scope: !785)
!796 = !DILocation(line: 819, column: 10, scope: !785)
!797 = !DILocation(line: 819, column: 14, scope: !785)
!798 = !DILocation(line: 821, column: 2, scope: !785)
!799 = !DILocation(line: 823, column: 18, scope: !800)
!800 = distinct !DILexicalBlock(scope: !785, file: !3, line: 822, column: 3)
!801 = !DILocation(line: 823, column: 9, scope: !800)
!802 = distinct !{!802, !798, !803, !264, !265}
!803 = !DILocation(line: 825, column: 3, scope: !785)
!804 = !DILocation(line: 827, column: 10, scope: !785)
!805 = !DILocation(line: 829, column: 30, scope: !806)
!806 = distinct !DILexicalBlock(scope: !785, file: !3, line: 829, column: 2)
!807 = !DILocation(line: 829, column: 3, scope: !806)
!808 = !DILocation(line: 830, column: 2, scope: !785)
!809 = distinct !DISubprogram(name: "GlobalMemMax", scope: !3, file: !3, line: 851, type: !786, scopeLine: 852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!810 = !{!811, !812}
!811 = !DILocalVariable(name: "max", scope: !809, file: !3, line: 853, type: !16)
!812 = !DILocalVariable(name: "curr", scope: !809, file: !3, line: 854, type: !9)
!813 = !DILocation(line: 856, column: 24, scope: !814)
!814 = distinct !DILexicalBlock(scope: !809, file: !3, line: 856, column: 2)
!815 = !DILocation(line: 856, column: 28, scope: !814)
!816 = !DILocation(line: 856, column: 3, scope: !814)
!817 = !DILocation(line: 0, scope: !809)
!818 = !DILocation(line: 858, column: 9, scope: !809)
!819 = !DILocation(line: 858, column: 13, scope: !809)
!820 = !DILocation(line: 860, column: 2, scope: !809)
!821 = !DILocation(line: 862, column: 17, scope: !822)
!822 = distinct !DILexicalBlock(scope: !809, file: !3, line: 861, column: 3)
!823 = !DILocation(line: 862, column: 11, scope: !822)
!824 = distinct !{!824, !820, !825, !264, !265}
!825 = !DILocation(line: 864, column: 3, scope: !809)
!826 = !DILocation(line: 866, column: 8, scope: !809)
!827 = !DILocation(line: 868, column: 30, scope: !828)
!828 = distinct !DILexicalBlock(scope: !809, file: !3, line: 868, column: 2)
!829 = !DILocation(line: 868, column: 3, scope: !828)
!830 = !DILocation(line: 869, column: 2, scope: !809)
!831 = distinct !DISubprogram(name: "ObjectMalloc", scope: !3, file: !3, line: 894, type: !832, scopeLine: 895, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{!5, !34, !34}
!834 = !{!835, !836, !837, !838, !839, !842, !843, !845, !846}
!835 = !DILocalVariable(name: "ObjectType", arg: 1, scope: !831, file: !3, line: 894, type: !34)
!836 = !DILocalVariable(name: "count", arg: 2, scope: !831, file: !3, line: 894, type: !34)
!837 = !DILocalVariable(name: "n", scope: !831, file: !3, line: 896, type: !34)
!838 = !DILocalVariable(name: "p", scope: !831, file: !3, line: 897, type: !5)
!839 = !DILocalVariable(name: "i", scope: !840, file: !3, line: 919, type: !34)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 918, column: 4)
!841 = distinct !DILexicalBlock(scope: !831, file: !3, line: 900, column: 3)
!842 = !DILocalVariable(name: "x", scope: !840, file: !3, line: 920, type: !37)
!843 = !DILocalVariable(name: "i", scope: !844, file: !3, line: 936, type: !34)
!844 = distinct !DILexicalBlock(scope: !841, file: !3, line: 935, column: 4)
!845 = !DILocalVariable(name: "w", scope: !844, file: !3, line: 936, type: !34)
!846 = !DILocalVariable(name: "x", scope: !844, file: !3, line: 937, type: !23)
!847 = !DILocation(line: 0, scope: !831)
!848 = !DILocation(line: 899, column: 2, scope: !831)
!849 = !DILocation(line: 902, column: 13, scope: !841)
!850 = !DILocation(line: 903, column: 8, scope: !841)
!851 = !DILocation(line: 905, column: 13, scope: !841)
!852 = !DILocation(line: 907, column: 4, scope: !841)
!853 = !DILocation(line: 910, column: 13, scope: !841)
!854 = !DILocation(line: 911, column: 8, scope: !841)
!855 = !DILocation(line: 913, column: 14, scope: !841)
!856 = !DILocation(line: 915, column: 4, scope: !841)
!857 = !DILocation(line: 922, column: 13, scope: !840)
!858 = !DILocation(line: 923, column: 8, scope: !840)
!859 = !DILocation(line: 0, scope: !840)
!860 = !DILocation(line: 926, column: 18, scope: !861)
!861 = distinct !DILexicalBlock(scope: !862, file: !3, line: 926, column: 4)
!862 = distinct !DILexicalBlock(scope: !840, file: !3, line: 926, column: 4)
!863 = !DILocation(line: 926, column: 4, scope: !862)
!864 = !DILocation(line: 927, column: 10, scope: !861)
!865 = !DILocation(line: 929, column: 18, scope: !840)
!866 = !DILocation(line: 932, column: 4, scope: !841)
!867 = !DILocation(line: 0, scope: !844)
!868 = !DILocation(line: 940, column: 9, scope: !844)
!869 = !DILocation(line: 941, column: 8, scope: !844)
!870 = !DILocation(line: 945, column: 10, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 944, column: 4)
!872 = distinct !DILexicalBlock(scope: !844, file: !3, line: 944, column: 4)
!873 = !DILocation(line: 947, column: 19, scope: !844)
!874 = !DILocation(line: 950, column: 4, scope: !841)
!875 = !DILocation(line: 953, column: 13, scope: !841)
!876 = !DILocation(line: 954, column: 8, scope: !841)
!877 = !DILocation(line: 956, column: 16, scope: !841)
!878 = !DILocation(line: 958, column: 4, scope: !841)
!879 = !DILocation(line: 961, column: 13, scope: !841)
!880 = !DILocation(line: 962, column: 8, scope: !841)
!881 = !DILocation(line: 964, column: 17, scope: !841)
!882 = !DILocation(line: 966, column: 4, scope: !841)
!883 = !DILocation(line: 969, column: 4, scope: !841)
!884 = !DILocation(line: 970, column: 4, scope: !841)
!885 = !DILocation(line: 0, scope: !841)
!886 = !DILocation(line: 973, column: 2, scope: !831)
!887 = distinct !DISubprogram(name: "ObjectFree", scope: !3, file: !3, line: 996, type: !888, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !890)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !34, !34, !5}
!890 = !{!891, !892, !893, !894}
!891 = !DILocalVariable(name: "ObjectType", arg: 1, scope: !887, file: !3, line: 996, type: !34)
!892 = !DILocalVariable(name: "count", arg: 2, scope: !887, file: !3, line: 996, type: !34)
!893 = !DILocalVariable(name: "p", arg: 3, scope: !887, file: !3, line: 996, type: !5)
!894 = !DILocalVariable(name: "n", scope: !887, file: !3, line: 998, type: !34)
!895 = !DILocation(line: 0, scope: !887)
!896 = !DILocation(line: 1000, column: 2, scope: !887)
!897 = !DILocation(line: 1002, column: 2, scope: !887)
!898 = !DILocation(line: 1005, column: 13, scope: !899)
!899 = distinct !DILexicalBlock(scope: !887, file: !3, line: 1003, column: 3)
!900 = !DILocation(line: 1006, column: 13, scope: !899)
!901 = !DILocation(line: 1007, column: 4, scope: !899)
!902 = !DILocation(line: 1010, column: 13, scope: !899)
!903 = !DILocation(line: 1011, column: 14, scope: !899)
!904 = !DILocation(line: 1012, column: 4, scope: !899)
!905 = !DILocation(line: 1015, column: 13, scope: !899)
!906 = !DILocation(line: 1016, column: 18, scope: !899)
!907 = !DILocation(line: 1017, column: 4, scope: !899)
!908 = !DILocation(line: 1021, column: 9, scope: !899)
!909 = !DILocation(line: 1022, column: 19, scope: !899)
!910 = !DILocation(line: 1023, column: 4, scope: !899)
!911 = !DILocation(line: 1026, column: 13, scope: !899)
!912 = !DILocation(line: 1027, column: 16, scope: !899)
!913 = !DILocation(line: 1028, column: 4, scope: !899)
!914 = !DILocation(line: 1031, column: 13, scope: !899)
!915 = !DILocation(line: 1032, column: 17, scope: !899)
!916 = !DILocation(line: 1033, column: 4, scope: !899)
!917 = !DILocation(line: 1036, column: 4, scope: !899)
!918 = !DILocation(line: 1037, column: 4, scope: !899)
!919 = !DILocation(line: 1039, column: 2, scope: !887)
!920 = distinct !DISubprogram(name: "ma_rayinfo", scope: !3, file: !3, line: 1044, type: !921, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!921 = !DISubroutineType(types: !922)
!922 = !{!24, !923}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !7, line: 625, baseType: !925)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !7, line: 611, size: 7104, elements: !926)
!926 = !{!927, !929, !930, !931, !932, !933, !934, !935, !936, !937, !941, !944}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !925, file: !7, line: 613, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !7, line: 301, baseType: !35)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !925, file: !7, line: 614, baseType: !34, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !925, file: !7, line: 614, baseType: !34, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !925, file: !7, line: 615, baseType: !116, size: 192, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !925, file: !7, line: 616, baseType: !116, size: 192, offset: 384)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !925, file: !7, line: 617, baseType: !34, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !925, file: !7, line: 618, baseType: !24, size: 64, offset: 640)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !925, file: !7, line: 619, baseType: !34, size: 64, offset: 704)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !925, file: !7, line: 620, baseType: !128, size: 192, offset: 768)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !925, file: !7, line: 621, baseType: !938, size: 6080, offset: 960)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 6080, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 5)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !925, file: !7, line: 622, baseType: !942, size: 32, offset: 7040)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !7, line: 307, baseType: !943)
!943 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !925, file: !7, line: 623, baseType: !942, size: 32, offset: 7072)
!945 = !{!946, !947}
!946 = !DILocalVariable(name: "r", arg: 1, scope: !920, file: !3, line: 1044, type: !923)
!947 = !DILocalVariable(name: "p", scope: !920, file: !3, line: 1046, type: !24)
!948 = !DILocation(line: 0, scope: !920)
!949 = !DILocation(line: 1048, column: 9, scope: !950)
!950 = distinct !DILexicalBlock(scope: !920, file: !3, line: 1048, column: 6)
!951 = !DILocation(line: 1048, column: 21, scope: !950)
!952 = !DILocation(line: 1048, column: 6, scope: !920)
!953 = !DILocation(line: 1050, column: 11, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1049, column: 3)
!955 = !DILocation(line: 1050, column: 3, scope: !954)
!956 = !DILocation(line: 1051, column: 3, scope: !954)
!957 = !DILocation(line: 1048, column: 17, scope: !950)
!958 = !DILocation(line: 1054, column: 20, scope: !920)
!959 = !DILocation(line: 1062, column: 13, scope: !920)
!960 = !DILocation(line: 1064, column: 2, scope: !920)
!961 = distinct !DISubprogram(name: "free_rayinfo", scope: !3, file: !3, line: 1069, type: !962, scopeLine: 1070, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !923}
!964 = !{!965}
!965 = !DILocalVariable(name: "r", arg: 1, scope: !961, file: !3, line: 1069, type: !923)
!966 = !DILocation(line: 0, scope: !961)
!967 = !DILocation(line: 1071, column: 5, scope: !961)
!968 = !DILocation(line: 1071, column: 13, scope: !961)
!969 = !DILocation(line: 1072, column: 2, scope: !961)
!970 = distinct !DISubprogram(name: "reset_rayinfo", scope: !3, file: !3, line: 1076, type: !962, scopeLine: 1077, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!971 = !{!972}
!972 = !DILocalVariable(name: "r", arg: 1, scope: !970, file: !3, line: 1076, type: !923)
!973 = !DILocation(line: 0, scope: !970)
!974 = !DILocation(line: 1078, column: 5, scope: !970)
!975 = !DILocation(line: 1078, column: 13, scope: !970)
!976 = !DILocation(line: 1079, column: 2, scope: !970)
!977 = distinct !DISubprogram(name: "ma_print", scope: !3, file: !3, line: 1083, type: !225, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !978)
!978 = !{!979, !980}
!979 = !DILocalVariable(name: "mem_total", scope: !977, file: !3, line: 1085, type: !34)
!980 = !DILocalVariable(name: "maxmem_total", scope: !977, file: !3, line: 1086, type: !34)
!981 = !DILocation(line: 1088, column: 18, scope: !977)
!982 = !DILocation(line: 1088, column: 29, scope: !977)
!983 = !DILocation(line: 1088, column: 45, scope: !977)
!984 = !DILocation(line: 0, scope: !977)
!985 = !DILocation(line: 1089, column: 18, scope: !977)
!986 = !DILocation(line: 1089, column: 30, scope: !977)
!987 = !DILocation(line: 1089, column: 28, scope: !977)
!988 = !DILocation(line: 1088, column: 27, scope: !977)
!989 = !DILocation(line: 1088, column: 43, scope: !977)
!990 = !DILocation(line: 1089, column: 15, scope: !977)
!991 = !DILocation(line: 1091, column: 18, scope: !977)
!992 = !DILocation(line: 1091, column: 32, scope: !977)
!993 = !DILocation(line: 1091, column: 51, scope: !977)
!994 = !DILocation(line: 1092, column: 18, scope: !977)
!995 = !DILocation(line: 1092, column: 33, scope: !977)
!996 = !DILocation(line: 1092, column: 31, scope: !977)
!997 = !DILocation(line: 1091, column: 30, scope: !977)
!998 = !DILocation(line: 1091, column: 49, scope: !977)
!999 = !DILocation(line: 1092, column: 15, scope: !977)
!1000 = !DILocation(line: 1094, column: 10, scope: !977)
!1001 = !DILocation(line: 1094, column: 2, scope: !977)
!1002 = !DILocation(line: 1095, column: 10, scope: !977)
!1003 = !DILocation(line: 1095, column: 2, scope: !977)
!1004 = !DILocation(line: 1096, column: 10, scope: !977)
!1005 = !DILocation(line: 1096, column: 2, scope: !977)
!1006 = !DILocation(line: 1097, column: 10, scope: !977)
!1007 = !DILocation(line: 1097, column: 72, scope: !977)
!1008 = !DILocation(line: 1097, column: 89, scope: !977)
!1009 = !DILocation(line: 1097, column: 2, scope: !977)
!1010 = !DILocation(line: 1098, column: 10, scope: !977)
!1011 = !DILocation(line: 1098, column: 72, scope: !977)
!1012 = !DILocation(line: 1098, column: 89, scope: !977)
!1013 = !DILocation(line: 1098, column: 2, scope: !977)
!1014 = !DILocation(line: 1099, column: 10, scope: !977)
!1015 = !DILocation(line: 1099, column: 72, scope: !977)
!1016 = !DILocation(line: 1099, column: 89, scope: !977)
!1017 = !DILocation(line: 1099, column: 2, scope: !977)
!1018 = !DILocation(line: 1100, column: 10, scope: !977)
!1019 = !DILocation(line: 1100, column: 72, scope: !977)
!1020 = !DILocation(line: 1100, column: 89, scope: !977)
!1021 = !DILocation(line: 1100, column: 2, scope: !977)
!1022 = !DILocation(line: 1101, column: 10, scope: !977)
!1023 = !DILocation(line: 1101, column: 72, scope: !977)
!1024 = !DILocation(line: 1101, column: 89, scope: !977)
!1025 = !DILocation(line: 1101, column: 2, scope: !977)
!1026 = !DILocation(line: 1103, column: 10, scope: !977)
!1027 = !DILocation(line: 1103, column: 2, scope: !977)
!1028 = !DILocation(line: 1104, column: 10, scope: !977)
!1029 = !DILocation(line: 1104, column: 2, scope: !977)
!1030 = !DILocation(line: 1105, column: 2, scope: !977)
