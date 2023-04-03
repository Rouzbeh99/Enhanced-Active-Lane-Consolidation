; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.GlobalMemory = type { i64, [1025 x [256 x i64]], %struct.anon, %struct.anon.3, %union.pthread_mutex_t, %union.pthread_mutex_t, [1025 x %union.pthread_mutex_t] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@__threads__ = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@ROTATE_STEPS = dso_local local_unnamed_addr global i32 8, align 4, !dbg !118
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@__tid__ = dso_local global [256 x i64] zeroinitializer, align 16, !dbg !120
@num_nodes = dso_local local_unnamed_addr global i64 0, align 8, !dbg !138
@filename = dso_local global [201 x i8] zeroinitializer, align 16, !dbg !173
@.str.2 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@adaptive = external local_unnamed_addr global i16, align 2
@.str.4 = private unnamed_addr constant [55 x i8] c"*****Entering init_decomposition with num_nodes = %ld\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"*****Exited init_decomposition with num_nodes = %ld\0A\00", align 1
@Global = dso_local local_unnamed_addr global ptr null, align 8, !dbg !128
@.str.6 = private unnamed_addr constant [48 x i8] c"wall clock execution time to load map:  %lu ms\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"wall clock execution time to compute normal:  %lu ms\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"wall clock execution time to compute opacity:  %lu ms\0A\00", align 1
@shd_length = dso_local local_unnamed_addr global i64 0, align 8, !dbg !163
@shd_address = dso_local global ptr null, align 8, !dbg !156
@frust_len = external local_unnamed_addr global i64, align 8
@image_len = dso_local local_unnamed_addr global [2 x i64] zeroinitializer, align 16, !dbg !165
@image_length = dso_local global i32 0, align 4, !dbg !169
@image_address = dso_local global ptr null, align 8, !dbg !148
@block_xlen = external local_unnamed_addr global i64, align 8
@block_ylen = external local_unnamed_addr global i64, align 8
@num_blocks = dso_local local_unnamed_addr global i64 0, align 8, !dbg !142
@num_xblocks = dso_local local_unnamed_addr global i64 0, align 8, !dbg !144
@num_yblocks = dso_local local_unnamed_addr global i64 0, align 8, !dbg !146
@image_block = dso_local global ptr null, align 8, !dbg !152
@.str.9 = private unnamed_addr constant [54 x i8] c"wall clock execution time to compute octree:  %lu ms\0A\00", align 1
@mask_image_len = dso_local local_unnamed_addr global [2 x i64] zeroinitializer, align 16, !dbg !167
@mask_image_length = dso_local local_unnamed_addr global i64 0, align 8, !dbg !171
@mask_image_address = dso_local global ptr null, align 8, !dbg !150
@mask_image_block = dso_local global ptr null, align 8, !dbg !154
@map_address = external global ptr, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"__threads__<__MAX_THREADS__\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.Frame = private unnamed_addr constant [13 x i8] c"void Frame()\00", align 1
@__intern__ = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !126
@frame = dso_local local_unnamed_addr global i64 0, align 8, !dbg !140
@background = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s_%ld\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c".tiff\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [38 x i8] c"    Allocating image of %ld bytes...\0A\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"    No space available for image.\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c".pix\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"    Allocating shade lookup table of %ld bytes...\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"    No space available for table.\0A\00", align 1
@image_section = dso_local local_unnamed_addr global [2 x i64] zeroinitializer, align 16, !dbg !130
@voxel_section = dso_local local_unnamed_addr global [3 x i64] zeroinitializer, align 16, !dbg !133
@.str.24 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@sbit_address = dso_local local_unnamed_addr global ptr null, align 8, !dbg !158
@str = private unnamed_addr constant [60 x i8] c"usage:  VOLREND num_processes input_file ROTATE_STEPS [-a] \00", align 1
@str.25 = private unnamed_addr constant [54 x i8] c"usage:  VOLREND num_processes input_file ROTATE_STEPS\00", align 1
@str.26 = private unnamed_addr constant [14 x i8] c"\0ARendering...\00", align 1
@str.27 = private unnamed_addr constant [51 x i8] c"node\09frame\09time\09itime\09rays\09hrays\09samples trilirped\00", align 1
@str.28 = private unnamed_addr constant [27 x i8] c"Error in pthread_create().\00", align 1
@str.29 = private unnamed_addr constant [3 x i8] c"1.\00", align 1
@str.30 = private unnamed_addr constant [3 x i8] c"2.\00", align 1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @mclock(i64 noundef %stoptime, i64 noundef %starttime, ptr nocapture noundef writeonly %exectime) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata i64 %stoptime, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i64 %starttime, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !192, metadata !DIExpression()), !dbg !193
  %cmp = icmp slt i64 %stoptime, %starttime, !dbg !194
  br i1 %cmp, label %if.then, label %if.else, !dbg !196

if.then:                                          ; preds = %entry
  %sub = xor i64 %starttime, -1, !dbg !197
  %add = add i64 %sub, %stoptime, !dbg !198
  %div = udiv i64 %add, 1000, !dbg !199
  br label %if.end, !dbg !200

if.else:                                          ; preds = %entry
  %sub1 = sub nsw i64 %stoptime, %starttime, !dbg !201
  %div2 = sdiv i64 %sub1, 1000, !dbg !202
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i64 [ %div2, %if.else ], [ %div, %if.then ], !dbg !203
  store i64 %storemerge, ptr %exectime, align 8, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readonly %argv) local_unnamed_addr #2 !dbg !205 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !211, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata ptr %argv, metadata !212, metadata !DIExpression()), !dbg !217
  %cmp = icmp slt i32 %argc, 4, !dbg !218
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !220

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 1, !dbg !221
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !221
  %call = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str, i64 noundef 2) #24, !dbg !222
  %cmp1 = icmp eq i32 %call, 0, !dbg !223
  br i1 %cmp1, label %if.then, label %if.end, !dbg !224

if.then:                                          ; preds = %lor.lhs.false, %entry
  %puts37 = tail call i32 @puts(ptr nonnull @str.25), !dbg !225
  tail call void @exit(i32 noundef -1) #25, !dbg !227
  unreachable, !dbg !227

if.end:                                           ; preds = %lor.lhs.false
  %call7 = tail call i64 @pthread_self() #26, !dbg !228
  %1 = load i32, ptr @__threads__, align 4, !dbg !230
  %inc = add i32 %1, 1, !dbg !230
  store i32 %inc, ptr @__threads__, align 4, !dbg !230
  %idxprom = zext i32 %1 to i64, !dbg !231
  %arrayidx8 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom, !dbg !231
  store i64 %call7, ptr %arrayidx8, align 8, !dbg !232
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !233
  %call10 = tail call i64 @atol(ptr noundef %2) #24, !dbg !234
  store i64 %call10, ptr @num_nodes, align 8, !dbg !235
  %arrayidx11 = getelementptr inbounds ptr, ptr %argv, i64 3, !dbg !236
  %3 = load ptr, ptr %arrayidx11, align 8, !dbg !236
  %call12 = tail call i32 @atoi(ptr noundef %3) #24, !dbg !237
  store i32 %call12, ptr @ROTATE_STEPS, align 4, !dbg !238
  %arrayidx13 = getelementptr inbounds ptr, ptr %argv, i64 2, !dbg !239
  %4 = load ptr, ptr %arrayidx13, align 8, !dbg !239
  %call14 = tail call ptr @strcpy(ptr noundef nonnull @filename, ptr noundef nonnull dereferenceable(1) %4) #27, !dbg !240
  %cmp15 = icmp eq i32 %argc, 5, !dbg !241
  br i1 %cmp15, label %if.then16, label %if.end23, !dbg !243

if.then16:                                        ; preds = %if.end
  %arrayidx17 = getelementptr inbounds ptr, ptr %argv, i64 4, !dbg !244
  %5 = load ptr, ptr %arrayidx17, align 8, !dbg !244
  %call18 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(3) @.str.2, i64 noundef 2) #24, !dbg !247
  %cmp19 = icmp eq i32 %call18, 0, !dbg !248
  br i1 %cmp19, label %if.then20, label %if.else, !dbg !249

if.then20:                                        ; preds = %if.then16
  store i16 1, ptr @adaptive, align 2, !dbg !250
  br label %if.end23, !dbg !251

if.else:                                          ; preds = %if.then16
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !252
  tail call void @exit(i32 noundef -1) #25, !dbg !254
  unreachable, !dbg !254

if.end23:                                         ; preds = %if.then20, %if.end
  tail call void @Frame(), !dbg !255
  %6 = load i64, ptr @num_nodes, align 8, !dbg !256
  %cmp24 = icmp slt i64 %6, 2, !dbg !257
  %conv = trunc i64 %6 to i32
  %tobool.not38 = icmp eq i32 %conv, 0
  %or.cond = or i1 %cmp24, %tobool.not38, !dbg !258
  call void @llvm.dbg.value(metadata i32 %conv, metadata !213, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i32 %conv, metadata !213, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !259
  br i1 %or.cond, label %if.end29, label %while.body.preheader, !dbg !258

while.body.preheader:                             ; preds = %if.end23
  %sext = shl i64 %6, 32, !dbg !260
  %7 = ashr exact i64 %sext, 32, !dbg !260
  br label %while.body, !dbg !260

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %7, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !213, metadata !DIExpression()), !dbg !259
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !261
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !213, metadata !DIExpression()), !dbg !259
  %arrayidx27 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %indvars.iv.next, !dbg !262
  %8 = load i64, ptr %arrayidx27, align 8, !dbg !262
  %call28 = tail call i32 @pthread_join(i64 noundef %8, ptr noundef null) #27, !dbg !263
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !213, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !259
  %9 = trunc i64 %indvars.iv.next to i32, !dbg !260
  %tobool.not = icmp eq i32 %9, 0, !dbg !260
  br i1 %tobool.not, label %if.end29, label %while.body, !dbg !260, !llvm.loop !264

if.end29:                                         ; preds = %while.body, %if.end23
  tail call void @exit(i32 noundef 0) #25, !dbg !268
  unreachable, !dbg !268
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !270 i64 @pthread_self() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !275 i64 @atol(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !281 i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Frame() local_unnamed_addr #9 !dbg !284 {
entry:
  %exectime = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exectime) #27, !dbg !297
  tail call void @Init_Options() #27, !dbg !298
  %0 = load i64, ptr @num_nodes, align 8, !dbg !299
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %0), !dbg !300
  %1 = load ptr, ptr @stdout, align 8, !dbg !301
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !302
  tail call void @Init_Decomposition(), !dbg !303
  %2 = load i64, ptr @num_nodes, align 8, !dbg !304
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %2), !dbg !305
  %3 = load ptr, ptr @stdout, align 8, !dbg !306
  %call3 = tail call i32 @fflush(ptr noundef %3), !dbg !307
  %call4 = tail call noalias dereferenceable_or_null(2140480) ptr @malloc(i64 noundef 2140480) #28, !dbg !308
  store ptr %call4, ptr @Global, align 8, !dbg !309
  %SlaveBarrier = getelementptr inbounds %struct.GlobalMemory, ptr %call4, i64 0, i32 2, !dbg !310
  %call5 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %SlaveBarrier, ptr noundef null) #27, !dbg !312
  %4 = load ptr, ptr @Global, align 8, !dbg !313
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %4, i64 0, i32 2, i32 1, !dbg !314
  %call7 = tail call i32 @pthread_cond_init(ptr noundef nonnull %bar_cond, ptr noundef null) #27, !dbg !315
  %5 = load ptr, ptr @Global, align 8, !dbg !316
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %5, i64 0, i32 2, i32 2, !dbg !317
  store i32 0, ptr %bar_teller, align 8, !dbg !318
  %TimeBarrier = getelementptr inbounds %struct.GlobalMemory, ptr %5, i64 0, i32 3, !dbg !319
  %call10 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %TimeBarrier, ptr noundef null) #27, !dbg !321
  %6 = load ptr, ptr @Global, align 8, !dbg !322
  %bar_cond12 = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 3, i32 1, !dbg !323
  %call13 = tail call i32 @pthread_cond_init(ptr noundef nonnull %bar_cond12, ptr noundef null) #27, !dbg !324
  %7 = load ptr, ptr @Global, align 8, !dbg !325
  %bar_teller15 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 2, !dbg !326
  store i32 0, ptr %bar_teller15, align 8, !dbg !327
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 4, !dbg !328
  %call16 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %IndexLock, ptr noundef null) #27, !dbg !330
  %8 = load ptr, ptr @Global, align 8, !dbg !331
  %CountLock = getelementptr inbounds %struct.GlobalMemory, ptr %8, i64 0, i32 5, !dbg !333
  %call17 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %CountLock, ptr noundef null) #27, !dbg !334
  call void @llvm.dbg.value(metadata i32 0, metadata !292, metadata !DIExpression()), !dbg !335
  br label %for.body, !dbg !336

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !292, metadata !DIExpression()), !dbg !335
  %9 = load ptr, ptr @Global, align 8, !dbg !338
  %arrayidx = getelementptr inbounds %struct.GlobalMemory, ptr %9, i64 0, i32 6, i64 %indvars.iv, !dbg !340
  %call19 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %arrayidx, ptr noundef null) #27, !dbg !341
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !342
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !292, metadata !DIExpression()), !dbg !335
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1025, !dbg !343
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !336, !llvm.loop !344

for.end:                                          ; preds = %for.body
  %call20 = tail call i64 @time(ptr noundef null) #27, !dbg !346
  call void @llvm.dbg.value(metadata i64 %call20, metadata !288, metadata !DIExpression()), !dbg !348
  tail call void @Load_Map(ptr noundef nonnull @filename) #27, !dbg !349
  %call21 = tail call i64 @time(ptr noundef null) #27, !dbg !350
  call void @llvm.dbg.value(metadata i64 %call21, metadata !289, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !290, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @mclock(i64 noundef %call21, i64 noundef %call20, ptr noundef nonnull %exectime), !dbg !352
  %10 = load i64, ptr %exectime, align 8, !dbg !353
  call void @llvm.dbg.value(metadata i64 %10, metadata !290, metadata !DIExpression()), !dbg !348
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %10), !dbg !354
  %call23 = tail call i64 @time(ptr noundef null) #27, !dbg !355
  call void @llvm.dbg.value(metadata i64 %call23, metadata !288, metadata !DIExpression()), !dbg !348
  tail call void @Compute_Normal() #27, !dbg !357
  %call24 = tail call i64 @time(ptr noundef null) #27, !dbg !358
  call void @llvm.dbg.value(metadata i64 %call24, metadata !289, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !290, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @mclock(i64 noundef %call24, i64 noundef %call23, ptr noundef nonnull %exectime), !dbg !360
  %11 = load i64, ptr %exectime, align 8, !dbg !361
  call void @llvm.dbg.value(metadata i64 %11, metadata !290, metadata !DIExpression()), !dbg !348
  %call25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %11), !dbg !362
  %call26 = tail call i64 @time(ptr noundef null) #27, !dbg !363
  call void @llvm.dbg.value(metadata i64 %call26, metadata !288, metadata !DIExpression()), !dbg !348
  tail call void @Compute_Opacity() #27, !dbg !365
  %call27 = tail call i64 @time(ptr noundef null) #27, !dbg !366
  call void @llvm.dbg.value(metadata i64 %call27, metadata !289, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !290, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @mclock(i64 noundef %call27, i64 noundef %call26, ptr noundef nonnull %exectime), !dbg !368
  %12 = load i64, ptr %exectime, align 8, !dbg !369
  call void @llvm.dbg.value(metadata i64 %12, metadata !290, metadata !DIExpression()), !dbg !348
  %call28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %12), !dbg !370
  tail call void @Compute_Pre_View() #27, !dbg !371
  store i64 7938, ptr @shd_length, align 8, !dbg !372
  tail call void @Allocate_Shading_Table(ptr noundef nonnull @shd_address, i64 noundef 7938), !dbg !373
  %13 = load i64, ptr @frust_len, align 8, !dbg !374
  store i64 %13, ptr @image_len, align 16, !dbg !375
  store i64 %13, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !376
  %mul = mul nsw i64 %13, %13, !dbg !377
  %conv = trunc i64 %mul to i32, !dbg !378
  store i32 %conv, ptr @image_length, align 4, !dbg !379
  %sext = shl i64 %mul, 32, !dbg !380
  %conv29 = ashr exact i64 %sext, 32, !dbg !380
  tail call void @Allocate_Image(ptr noundef nonnull @image_address, i64 noundef %conv29), !dbg !381
  %14 = load i64, ptr @num_nodes, align 8, !dbg !382
  %cmp30 = icmp eq i64 %14, 1, !dbg !384
  %15 = load i64, ptr @image_len, align 16, !dbg !385
  br i1 %cmp30, label %if.then, label %if.else, !dbg !386

if.then:                                          ; preds = %for.end
  store i64 %15, ptr @block_xlen, align 8, !dbg !387
  %16 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !389
  store i64 %16, ptr @block_ylen, align 8, !dbg !390
  store i64 1, ptr @num_blocks, align 8, !dbg !391
  store i64 1, ptr @num_xblocks, align 8, !dbg !392
  store i64 1, ptr @num_yblocks, align 8, !dbg !393
  %17 = load ptr, ptr @image_address, align 8, !dbg !394
  store ptr %17, ptr @image_block, align 8, !dbg !395
  br label %if.end, !dbg !396

if.else:                                          ; preds = %for.end
  %conv32 = sitofp i64 %15 to float, !dbg !397
  %18 = load i64, ptr @block_xlen, align 8, !dbg !397
  %conv33 = sitofp i64 %18 to float, !dbg !397
  %div = fdiv float %conv32, %conv33, !dbg !397
  %conv37 = fptosi float %div to i64, !dbg !397
  %conv38 = sitofp i64 %conv37 to float, !dbg !397
  %cmp39 = fcmp oeq float %div, %conv38, !dbg !397
  br i1 %cmp39, label %cond.end, label %cond.false, !dbg !397

cond.false:                                       ; preds = %if.else
  %add = add nsw i64 %conv37, 1, !dbg !397
  br label %cond.end, !dbg !397

cond.end:                                         ; preds = %if.else, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ %conv37, %if.else ], !dbg !397
  store i64 %cond, ptr @num_xblocks, align 8, !dbg !399
  %19 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !400
  %conv49 = sitofp i64 %19 to float, !dbg !400
  %20 = load i64, ptr @block_ylen, align 8, !dbg !400
  %conv50 = sitofp i64 %20 to float, !dbg !400
  %div51 = fdiv float %conv49, %conv50, !dbg !400
  %conv55 = fptosi float %div51 to i64, !dbg !400
  %conv56 = sitofp i64 %conv55 to float, !dbg !400
  %cmp57 = fcmp oeq float %div51, %conv56, !dbg !400
  br i1 %cmp57, label %cond.end70, label %cond.false64, !dbg !400

cond.false64:                                     ; preds = %cond.end
  %add69 = add nsw i64 %conv55, 1, !dbg !400
  br label %cond.end70, !dbg !400

cond.end70:                                       ; preds = %cond.end, %cond.false64
  %cond71 = phi i64 [ %add69, %cond.false64 ], [ %conv55, %cond.end ], !dbg !400
  store i64 %cond71, ptr @num_yblocks, align 8, !dbg !401
  %mul72 = mul nsw i64 %cond71, %cond, !dbg !402
  store i64 %mul72, ptr @num_blocks, align 8, !dbg !403
  %mul73 = mul nsw i64 %20, %18, !dbg !404
  tail call void @Lallocate_Image(ptr noundef nonnull @image_block, i64 noundef %mul73), !dbg !405
  br label %if.end

if.end:                                           ; preds = %cond.end70, %if.then
  %call74 = tail call i64 @time(ptr noundef null) #27, !dbg !406
  call void @llvm.dbg.value(metadata i64 %call74, metadata !288, metadata !DIExpression()), !dbg !348
  tail call void @Compute_Octree() #27, !dbg !408
  %call75 = tail call i64 @time(ptr noundef null) #27, !dbg !409
  call void @llvm.dbg.value(metadata i64 %call75, metadata !289, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !290, metadata !DIExpression(DW_OP_deref)), !dbg !348
  call void @mclock(i64 noundef %call75, i64 noundef %call74, ptr noundef nonnull %exectime), !dbg !411
  %21 = load i64, ptr %exectime, align 8, !dbg !412
  call void @llvm.dbg.value(metadata i64 %21, metadata !290, metadata !DIExpression()), !dbg !348
  %call76 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %21), !dbg !413
  %22 = load i16, ptr @adaptive, align 2, !dbg !414
  %tobool.not = icmp eq i16 %22, 0, !dbg !414
  br i1 %tobool.not, label %if.end96, label %if.then77, !dbg !416

if.then77:                                        ; preds = %if.end
  %puts138 = tail call i32 @puts(ptr nonnull @str.29), !dbg !417
  call void @llvm.dbg.value(metadata i64 0, metadata !291, metadata !DIExpression()), !dbg !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @mask_image_len, ptr noundef nonnull align 16 dereferenceable(16) @image_len, i64 16, i1 false), !dbg !419
  call void @llvm.dbg.value(metadata i32 undef, metadata !291, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 undef, metadata !291, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !348
  %23 = load i32, ptr @image_length, align 4, !dbg !423
  %conv88 = sext i32 %23 to i64, !dbg !423
  store i64 %conv88, ptr @mask_image_length, align 8, !dbg !424
  tail call void @Allocate_MImage(ptr noundef nonnull @mask_image_address, i64 noundef %conv88), !dbg !425
  %24 = load i64, ptr @num_nodes, align 8, !dbg !426
  %cmp89 = icmp eq i64 %24, 1, !dbg !428
  br i1 %cmp89, label %if.then91, label %if.else92, !dbg !429

if.then91:                                        ; preds = %if.then77
  %25 = load ptr, ptr @mask_image_address, align 8, !dbg !430
  store ptr %25, ptr @mask_image_block, align 8, !dbg !431
  br label %if.end94, !dbg !432

if.else92:                                        ; preds = %if.then77
  %26 = load i64, ptr @block_xlen, align 8, !dbg !433
  %27 = load i64, ptr @block_ylen, align 8, !dbg !434
  %mul93 = mul nsw i64 %27, %26, !dbg !435
  tail call void @Lallocate_Image(ptr noundef nonnull @mask_image_block, i64 noundef %mul93), !dbg !436
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.then91
  %puts139 = tail call i32 @puts(ptr nonnull @str.30), !dbg !437
  br label %if.end96, !dbg !438

if.end96:                                         ; preds = %if.end94, %if.end
  tail call void @Deallocate_Map(ptr noundef nonnull @map_address) #27, !dbg !439
  %28 = load ptr, ptr @Global, align 8, !dbg !440
  store i64 0, ptr %28, align 8, !dbg !441
  %puts = tail call i32 @puts(ptr nonnull @str.26), !dbg !442
  %puts136 = tail call i32 @puts(ptr nonnull @str.27), !dbg !443
  %29 = load i32, ptr @__threads__, align 4, !dbg !444
  %cmp100 = icmp ult i32 %29, 256, !dbg !444
  br i1 %cmp100, label %cond.end104, label %cond.false103, !dbg !444

cond.false103:                                    ; preds = %if.end96
  tail call void @__assert_fail(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 258, ptr noundef nonnull @__PRETTY_FUNCTION__.Frame) #25, !dbg !444
  unreachable, !dbg !444

cond.end104:                                      ; preds = %if.end96
  %call105 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @__intern__) #27, !dbg !445
  call void @llvm.dbg.value(metadata i64 0, metadata !294, metadata !DIExpression()), !dbg !446
  %30 = load i64, ptr @num_nodes, align 8, !dbg !447
  %cmp107143 = icmp sgt i64 %30, 1, !dbg !450
  br i1 %cmp107143, label %for.body109, label %for.end122, !dbg !451

for.cond106:                                      ; preds = %for.body109
  %inc121 = add nuw nsw i64 %i99.0144, 1, !dbg !452
  call void @llvm.dbg.value(metadata i64 %inc121, metadata !294, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.value(metadata i64 %i99.0144, metadata !294, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  %31 = load i64, ptr @num_nodes, align 8, !dbg !447
  %sub = add nsw i64 %31, -1, !dbg !453
  %cmp107 = icmp slt i64 %inc121, %sub, !dbg !450
  br i1 %cmp107, label %for.body109, label %for.end122, !dbg !451, !llvm.loop !454

for.body109:                                      ; preds = %cond.end104, %for.cond106
  %i99.0144 = phi i64 [ %inc121, %for.cond106 ], [ 0, %cond.end104 ]
  call void @llvm.dbg.value(metadata i64 %i99.0144, metadata !294, metadata !DIExpression()), !dbg !446
  %32 = load i32, ptr @__threads__, align 4, !dbg !456
  %inc110 = add i32 %32, 1, !dbg !456
  store i32 %inc110, ptr @__threads__, align 4, !dbg !456
  %idxprom111 = zext i32 %32 to i64, !dbg !458
  %arrayidx112 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom111, !dbg !458
  %call113 = tail call i32 @pthread_create(ptr noundef nonnull %arrayidx112, ptr noundef null, ptr noundef nonnull @Render_Loop, ptr noundef null) #27, !dbg !459
  call void @llvm.dbg.value(metadata i32 %call113, metadata !296, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !446
  %cmp115.not = icmp eq i32 %call113, 0, !dbg !460
  call void @llvm.dbg.value(metadata i64 %i99.0144, metadata !294, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !446
  br i1 %cmp115.not, label %for.cond106, label %if.then117, !dbg !462

if.then117:                                       ; preds = %for.body109
  %puts137 = tail call i32 @puts(ptr nonnull @str.28), !dbg !463
  tail call void @exit(i32 noundef -1) #25, !dbg !465
  unreachable, !dbg !465

for.end122:                                       ; preds = %for.cond106, %cond.end104
  %call123 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @__intern__) #27, !dbg !466
  tail call void @Render_Loop(), !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exectime) #27, !dbg !468
  ret void, !dbg !468
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

declare !dbg !469 i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

declare !dbg !473 void @Init_Options() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !475 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @Init_Decomposition() local_unnamed_addr #12 !dbg !535 {
entry:
  %factors = alloca [1024 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %factors) #27, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %factors, metadata !537, metadata !DIExpression()), !dbg !549
  %0 = load i64, ptr @num_nodes, align 8, !dbg !550
  %cmp = icmp eq i64 %0, 1, !dbg !552
  br i1 %cmp, label %if.then, label %if.else, !dbg !553

if.then:                                          ; preds = %entry
  store i64 1, ptr @image_section, align 16, !dbg !554
  store i64 1, ptr getelementptr inbounds ([2 x i64], ptr @image_section, i64 0, i64 1), align 8, !dbg !556
  store i64 1, ptr @voxel_section, align 16, !dbg !557
  store i64 1, ptr getelementptr inbounds ([3 x i64], ptr @voxel_section, i64 0, i64 1), align 8, !dbg !558
  br label %if.end63, !dbg !559

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i64 1, metadata !547, metadata !DIExpression()), !dbg !560
  %conv = sitofp i64 %0 to double, !dbg !561
  call void @llvm.dbg.value(metadata double %conv, metadata !541, metadata !DIExpression()), !dbg !560
  %call = tail call double @sqrt(double noundef %conv) #27, !dbg !563
  %conv1 = fptosi double %call to i64, !dbg !564
  call void @llvm.dbg.value(metadata i64 %conv1, metadata !544, metadata !DIExpression()), !dbg !560
  %call2 = tail call double @pow(double noundef %conv, double noundef 0x3FD5555555555555) #27, !dbg !565
  %conv3 = fptosi double %call2 to i64, !dbg !566
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !545, metadata !DIExpression()), !dbg !560
  store i64 1, ptr %factors, align 16, !dbg !567
  call void @llvm.dbg.value(metadata i64 2, metadata !543, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 1, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 undef, metadata !546, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata double undef, metadata !542, metadata !DIExpression()), !dbg !560
  %cmp498 = icmp sgt i64 %conv1, 2, !dbg !568
  call void @llvm.assume(i1 %cmp498), !dbg !571
  %1 = load i64, ptr @num_nodes, align 8
  br label %for.body, !dbg !571

for.body:                                         ; preds = %if.else, %for.inc
  %count.0103 = phi i64 [ 1, %if.else ], [ %count.1, %for.inc ]
  %maxcu.0102 = phi i64 [ undef, %if.else ], [ %maxcu.1, %for.inc ]
  %newfactor.0101 = phi double [ undef, %if.else ], [ %newfactor.1, %for.inc ]
  %i.099 = phi i64 [ 2, %if.else ], [ %inc21, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %count.0103, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %maxcu.0102, metadata !546, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata double %newfactor.0101, metadata !542, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %i.099, metadata !543, metadata !DIExpression()), !dbg !560
  %conv6 = sitofp i64 %i.099 to double, !dbg !572
  %div = fdiv double %conv, %conv6, !dbg !572
  %conv9 = fptosi double %div to i64, !dbg !572
  %conv10 = sitofp i64 %conv9 to double, !dbg !572
  %sub = fsub double %div, %conv10, !dbg !572
  %cmp11 = fcmp oeq double %sub, 0.000000e+00, !dbg !575
  br i1 %cmp11, label %if.then13, label %for.inc, !dbg !576

if.then13:                                        ; preds = %for.body
  %inc = add nsw i64 %count.0103, 1, !dbg !577
  call void @llvm.dbg.value(metadata i64 %inc, metadata !547, metadata !DIExpression()), !dbg !560
  %arrayidx14 = getelementptr inbounds [1024 x i64], ptr %factors, i64 0, i64 %count.0103, !dbg !579
  store i64 %i.099, ptr %arrayidx14, align 8, !dbg !580
  %cmp15.not = icmp sgt i64 %i.099, %conv3, !dbg !581
  br i1 %cmp15.not, label %for.inc, label %if.then17, !dbg !583

if.then17:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata i64 %i.099, metadata !546, metadata !DIExpression()), !dbg !560
  %div18 = sdiv i64 %1, %i.099, !dbg !584
  %conv19 = sitofp i64 %div18 to double, !dbg !586
  call void @llvm.dbg.value(metadata double %conv19, metadata !542, metadata !DIExpression()), !dbg !560
  br label %for.inc, !dbg !587

for.inc:                                          ; preds = %for.body, %if.then17, %if.then13
  %newfactor.1 = phi double [ %conv19, %if.then17 ], [ %newfactor.0101, %if.then13 ], [ %newfactor.0101, %for.body ]
  %maxcu.1 = phi i64 [ %i.099, %if.then17 ], [ %maxcu.0102, %if.then13 ], [ %maxcu.0102, %for.body ]
  %count.1 = phi i64 [ %inc, %if.then17 ], [ %inc, %if.then13 ], [ %count.0103, %for.body ], !dbg !588
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %maxcu.1, metadata !546, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata double %newfactor.1, metadata !542, metadata !DIExpression()), !dbg !560
  %inc21 = add nuw nsw i64 %i.099, 1, !dbg !589
  call void @llvm.dbg.value(metadata i64 %inc21, metadata !543, metadata !DIExpression()), !dbg !560
  %exitcond.not = icmp eq i64 %inc21, %conv1, !dbg !568
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !571, !llvm.loop !590

for.end:                                          ; preds = %for.inc
  %dec = add nsw i64 %count.1, -1, !dbg !592
  call void @llvm.dbg.value(metadata i64 %dec, metadata !547, metadata !DIExpression()), !dbg !560
  %arrayidx22 = getelementptr inbounds [1024 x i64], ptr %factors, i64 0, i64 %dec, !dbg !593
  %2 = load i64, ptr %arrayidx22, align 8, !dbg !593
  store i64 %2, ptr @image_section, align 16, !dbg !594
  %div24 = sdiv i64 %1, %2, !dbg !595
  store i64 %div24, ptr getelementptr inbounds ([2 x i64], ptr @image_section, i64 0, i64 1), align 8, !dbg !596
  %call25 = tail call double @sqrt(double noundef %newfactor.1) #27, !dbg !597
  %conv26 = fptosi double %call25 to i64, !dbg !598
  call void @llvm.dbg.value(metadata i64 %conv26, metadata !544, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 1, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 2, metadata !543, metadata !DIExpression()), !dbg !560
  %cmp28106 = icmp sgt i64 %conv26, 2, !dbg !599
  br i1 %cmp28106, label %for.body30, label %for.end46, !dbg !602

for.body30:                                       ; preds = %for.end, %for.inc44
  %count.2109 = phi i64 [ %count.3, %for.inc44 ], [ 1, %for.end ]
  %i.1107 = phi i64 [ %inc45, %for.inc44 ], [ 2, %for.end ]
  call void @llvm.dbg.value(metadata i64 %count.2109, metadata !547, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %i.1107, metadata !543, metadata !DIExpression()), !dbg !560
  %conv31 = sitofp i64 %i.1107 to double, !dbg !603
  %div32 = fdiv double %newfactor.1, %conv31, !dbg !603
  %conv35 = fptosi double %div32 to i64, !dbg !603
  %conv36 = sitofp i64 %conv35 to double, !dbg !603
  %sub37 = fsub double %div32, %conv36, !dbg !603
  %cmp38 = fcmp oeq double %sub37, 0.000000e+00, !dbg !606
  br i1 %cmp38, label %if.then40, label %for.inc44, !dbg !607

if.then40:                                        ; preds = %for.body30
  %inc41 = add nsw i64 %count.2109, 1, !dbg !608
  call void @llvm.dbg.value(metadata i64 %inc41, metadata !547, metadata !DIExpression()), !dbg !560
  %arrayidx42 = getelementptr inbounds [1024 x i64], ptr %factors, i64 0, i64 %count.2109, !dbg !609
  store i64 %i.1107, ptr %arrayidx42, align 8, !dbg !610
  br label %for.inc44, !dbg !609

for.inc44:                                        ; preds = %for.body30, %if.then40
  %count.3 = phi i64 [ %inc41, %if.then40 ], [ %count.2109, %for.body30 ], !dbg !588
  call void @llvm.dbg.value(metadata i64 %count.3, metadata !547, metadata !DIExpression()), !dbg !560
  %inc45 = add nuw nsw i64 %i.1107, 1, !dbg !611
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !543, metadata !DIExpression()), !dbg !560
  %exitcond111.not = icmp eq i64 %inc45, %conv26, !dbg !599
  br i1 %exitcond111.not, label %for.end46, label %for.body30, !dbg !602, !llvm.loop !612

for.end46:                                        ; preds = %for.inc44, %for.end
  %count.2.lcssa = phi i64 [ 1, %for.end ], [ %count.3, %for.inc44 ], !dbg !588
  %dec47 = add nsw i64 %count.2.lcssa, -1, !dbg !614
  call void @llvm.dbg.value(metadata i64 %dec47, metadata !547, metadata !DIExpression()), !dbg !560
  %arrayidx48 = getelementptr inbounds [1024 x i64], ptr %factors, i64 0, i64 %dec47, !dbg !615
  %3 = load i64, ptr %arrayidx48, align 8, !dbg !615
  %4 = tail call i64 @llvm.smin.i64(i64 %3, i64 %maxcu.1), !dbg !615
  store i64 %4, ptr @voxel_section, align 16, !dbg !616
  %5 = tail call i64 @llvm.smax.i64(i64 %3, i64 %maxcu.1), !dbg !617
  store i64 %5, ptr getelementptr inbounds ([3 x i64], ptr @voxel_section, i64 0, i64 1), align 8, !dbg !618
  %conv60 = fptosi double %newfactor.1 to i64, !dbg !619
  %div62 = sdiv i64 %conv60, %3, !dbg !620
  br label %if.end63

if.end63:                                         ; preds = %for.end46, %if.then
  %storemerge = phi i64 [ %div62, %for.end46 ], [ 1, %if.then ], !dbg !621
  store i64 %storemerge, ptr getelementptr inbounds ([3 x i64], ptr @voxel_section, i64 0, i64 2), align 16, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %factors) #27, !dbg !622
  ret void, !dbg !622
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !623 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !637 i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !650 i64 @time(ptr noundef) local_unnamed_addr #14

declare !dbg !656 void @Load_Map(ptr noundef) local_unnamed_addr #11

declare !dbg !659 void @Compute_Normal() local_unnamed_addr #11

declare !dbg !660 void @Compute_Opacity() local_unnamed_addr #11

declare !dbg !661 void @Compute_Pre_View() local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Shading_Table(ptr nocapture noundef %address1, i64 noundef %length) local_unnamed_addr #9 !dbg !662 {
entry:
  call void @llvm.dbg.value(metadata ptr %address1, metadata !667, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata i64 %length, metadata !668, metadata !DIExpression()), !dbg !670
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.22, i64 noundef %length), !dbg !671
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #28, !dbg !672
  store ptr %call2, ptr %address1, align 8, !dbg !673
  %cmp = icmp eq ptr %call2, null, !dbg !674
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !676

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !669, metadata !DIExpression()), !dbg !670
  %cmp310 = icmp sgt i64 %length, 0, !dbg !677
  br i1 %cmp310, label %for.body.preheader, label %for.end, !dbg !680

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !669, metadata !DIExpression()), !dbg !670
  store i8 0, ptr %call2, align 1, !dbg !681
  call void @llvm.dbg.value(metadata i64 1, metadata !669, metadata !DIExpression()), !dbg !670
  %exitcond.not12 = icmp eq i64 %length, 1, !dbg !677
  br i1 %exitcond.not12, label %for.end, label %for.body.for.body_crit_edge, !dbg !680, !llvm.loop !682

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.23), !dbg !684
  unreachable, !dbg !684

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc13 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr %address1, align 8, !dbg !685
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !669, metadata !DIExpression()), !dbg !670
  %add.ptr = getelementptr inbounds i8, ptr %.pre, i64 %inc13, !dbg !686
  store i8 0, ptr %add.ptr, align 1, !dbg !681
  %inc = add nuw nsw i64 %inc13, 1, !dbg !687
  call void @llvm.dbg.value(metadata i64 %inc, metadata !669, metadata !DIExpression()), !dbg !670
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !677
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !dbg !680, !llvm.loop !682

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_Image(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #9 !dbg !689 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !691, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.value(metadata i64 %length, metadata !692, metadata !DIExpression()), !dbg !694
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i64 noundef %length), !dbg !695
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #28, !dbg !696
  store ptr %call2, ptr %address, align 8, !dbg !697
  %cmp = icmp eq ptr %call2, null, !dbg !698
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !700

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !693, metadata !DIExpression()), !dbg !694
  %cmp310 = icmp sgt i64 %length, 0, !dbg !701
  br i1 %cmp310, label %for.body.preheader, label %for.end, !dbg !704

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !693, metadata !DIExpression()), !dbg !694
  store i8 0, ptr %call2, align 1, !dbg !705
  call void @llvm.dbg.value(metadata i64 1, metadata !693, metadata !DIExpression()), !dbg !694
  %exitcond.not12 = icmp eq i64 %length, 1, !dbg !701
  br i1 %exitcond.not12, label %for.end, label %for.body.for.body_crit_edge, !dbg !704, !llvm.loop !706

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !708
  unreachable, !dbg !708

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc13 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr %address, align 8, !dbg !709
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !693, metadata !DIExpression()), !dbg !694
  %add.ptr = getelementptr inbounds i8, ptr %.pre, i64 %inc13, !dbg !710
  store i8 0, ptr %add.ptr, align 1, !dbg !705
  %inc = add nuw nsw i64 %inc13, 1, !dbg !711
  call void @llvm.dbg.value(metadata i64 %inc, metadata !693, metadata !DIExpression()), !dbg !694
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !701
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !dbg !704, !llvm.loop !706

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader
  ret void, !dbg !712
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Lallocate_Image(ptr nocapture noundef writeonly %address, i64 noundef %length) local_unnamed_addr #9 !dbg !713 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !715, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.value(metadata i64 %length, metadata !716, metadata !DIExpression()), !dbg !717
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i64 noundef %length), !dbg !718
  %call1 = tail call noalias ptr @calloc(i64 noundef %length, i64 noundef 1) #29, !dbg !719
  store ptr %call1, ptr %address, align 8, !dbg !720
  %cmp = icmp eq ptr %call1, null, !dbg !721
  br i1 %cmp, label %if.then, label %if.end, !dbg !723

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.20), !dbg !724
  unreachable, !dbg !724

if.end:                                           ; preds = %entry
  ret void, !dbg !725
}

declare !dbg !726 void @Compute_Octree() local_unnamed_addr #11

; Function Attrs: noinline nounwind uwtable
define dso_local void @Allocate_MImage(ptr nocapture noundef %address, i64 noundef %length) local_unnamed_addr #9 !dbg !727 {
entry:
  call void @llvm.dbg.value(metadata ptr %address, metadata !732, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i64 %length, metadata !733, metadata !DIExpression()), !dbg !735
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i64 noundef %length), !dbg !736
  %call2 = tail call noalias ptr @malloc(i64 noundef %length) #28, !dbg !737
  store ptr %call2, ptr %address, align 8, !dbg !738
  %cmp = icmp eq ptr %call2, null, !dbg !739
  br i1 %cmp, label %if.then, label %for.cond.preheader, !dbg !741

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !735
  %cmp310 = icmp sgt i64 %length, 0, !dbg !742
  br i1 %cmp310, label %for.body.preheader, label %for.end, !dbg !745

for.body.preheader:                               ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !734, metadata !DIExpression()), !dbg !735
  store i8 0, ptr %call2, align 1, !dbg !746
  call void @llvm.dbg.value(metadata i64 1, metadata !734, metadata !DIExpression()), !dbg !735
  %exitcond.not12 = icmp eq i64 %length, 1, !dbg !742
  br i1 %exitcond.not12, label %for.end, label %for.body.for.body_crit_edge, !dbg !745, !llvm.loop !747

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Error(ptr noundef nonnull @.str.20), !dbg !749
  unreachable, !dbg !749

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc13 = phi i64 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr %address, align 8, !dbg !750
  call void @llvm.dbg.value(metadata i64 %inc13, metadata !734, metadata !DIExpression()), !dbg !735
  %add.ptr = getelementptr inbounds i8, ptr %.pre, i64 %inc13, !dbg !751
  store i8 0, ptr %add.ptr, align 1, !dbg !746
  %inc = add nuw nsw i64 %inc13, 1, !dbg !752
  call void @llvm.dbg.value(metadata i64 %inc, metadata !734, metadata !DIExpression()), !dbg !735
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !742
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge, !dbg !745, !llvm.loop !747

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %for.cond.preheader
  ret void, !dbg !753
}

declare !dbg !754 void @Deallocate_Map(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !760 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !763 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind uwtable
define dso_local void @Render_Loop() #9 !dbg !780 {
entry:
  %outfile = alloca [201 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %outfile) #27, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %outfile, metadata !786, metadata !DIExpression()), !dbg !793
  %0 = load ptr, ptr @Global, align 8, !dbg !794
  %IndexLock = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 4, !dbg !796
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %IndexLock) #27, !dbg !797
  %1 = load ptr, ptr @Global, align 8, !dbg !798
  %2 = load i64, ptr %1, align 8, !dbg !799
  %inc = add nsw i64 %2, 1, !dbg !799
  store i64 %inc, ptr %1, align 8, !dbg !799
  call void @llvm.dbg.value(metadata i64 %2, metadata !790, metadata !DIExpression()), !dbg !800
  %3 = load ptr, ptr @Global, align 8, !dbg !801
  %IndexLock1 = getelementptr inbounds %struct.GlobalMemory, ptr %3, i64 0, i32 4, !dbg !803
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %IndexLock1) #27, !dbg !804
  %4 = load i64, ptr @num_nodes, align 8, !dbg !805
  %rem = srem i64 %2, %4, !dbg !806
  call void @llvm.dbg.value(metadata i64 %rem, metadata !790, metadata !DIExpression()), !dbg !800
  %conv = sitofp i64 %4 to float, !dbg !807
  %conv4 = fdiv float 1.000000e+00, %conv, !dbg !808
  call void @llvm.dbg.value(metadata float %conv4, metadata !789, metadata !DIExpression()), !dbg !800
  %5 = load i32, ptr @image_length, align 4, !dbg !809
  %conv5 = sitofp i32 %5 to float, !dbg !809
  %mul = fmul float %conv4, %conv5, !dbg !809
  %conv8 = fptosi float %mul to i64, !dbg !809
  %conv9 = sitofp i64 %conv8 to float, !dbg !809
  %cmp = fcmp oeq float %mul, %conv9, !dbg !809
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !809

cond.false:                                       ; preds = %entry
  %add = add nsw i64 %conv8, 1, !dbg !809
  br label %cond.end, !dbg !809

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ %conv8, %entry ], !dbg !809
  call void @llvm.dbg.value(metadata i64 %cond, metadata !787, metadata !DIExpression()), !dbg !800
  %6 = load i64, ptr @mask_image_length, align 8, !dbg !810
  %conv17 = sitofp i64 %6 to float, !dbg !810
  %mul18 = fmul float %conv4, %conv17, !dbg !810
  %conv21 = fptosi float %mul18 to i64, !dbg !810
  %conv22 = sitofp i64 %conv21 to float, !dbg !810
  %cmp23 = fcmp oeq float %mul18, %conv22, !dbg !810
  br i1 %cmp23, label %cond.end34, label %cond.false29, !dbg !810

cond.false29:                                     ; preds = %cond.end
  %add33 = add nsw i64 %conv21, 1, !dbg !810
  br label %cond.end34, !dbg !810

cond.end34:                                       ; preds = %cond.end, %cond.false29
  %cond35 = phi i64 [ %add33, %cond.false29 ], [ %conv21, %cond.end ], !dbg !810
  call void @llvm.dbg.value(metadata i64 %cond35, metadata !788, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i32 0, metadata !791, metadata !DIExpression()), !dbg !800
  %mul43 = mul nsw i64 %cond, %rem
  %mul44 = mul nsw i64 %cond35, %rem
  %cmp89204 = icmp sgt i64 %cond, 0
  %cmp99207 = icmp slt i64 %cond35, 1
  %cmp108 = icmp eq i64 %rem, 0
  %.pre = load i32, ptr @ROTATE_STEPS, align 4, !dbg !811
  br label %for.cond38.preheader, !dbg !817

for.cond38.preheader:                             ; preds = %cond.end34, %for.inc165
  %7 = phi i32 [ %.pre, %cond.end34 ], [ %41, %for.inc165 ], !dbg !811
  %indvars.iv = phi i64 [ 0, %cond.end34 ], [ %indvars.iv.next, %for.inc165 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !791, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i64 0, metadata !782, metadata !DIExpression()), !dbg !800
  %cmp40218 = icmp sgt i32 %7, 0, !dbg !818
  br i1 %cmp40218, label %for.body42.lr.ph, label %for.inc165, !dbg !819

for.body42.lr.ph:                                 ; preds = %for.cond38.preheader
  %8 = trunc i64 %indvars.iv to i32
  br label %for.body42, !dbg !819

for.body42:                                       ; preds = %for.body42.lr.ph, %for.inc162
  %step.0219 = phi i64 [ 0, %for.body42.lr.ph ], [ %inc163, %for.inc162 ]
  call void @llvm.dbg.value(metadata i64 %step.0219, metadata !782, metadata !DIExpression()), !dbg !800
  store i64 %step.0219, ptr @frame, align 8, !dbg !820
  %9 = load ptr, ptr @image_address, align 8, !dbg !822
  %add.ptr = getelementptr inbounds i8, ptr %9, i64 %mul43, !dbg !823
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !784, metadata !DIExpression()), !dbg !800
  %10 = load ptr, ptr @mask_image_address, align 8, !dbg !824
  %add.ptr45 = getelementptr i8, ptr %10, i64 %mul44, !dbg !825
  call void @llvm.dbg.value(metadata ptr %add.ptr45, metadata !785, metadata !DIExpression()), !dbg !800
  %11 = load ptr, ptr @Global, align 8, !dbg !826
  %SlaveBarrier = getelementptr inbounds %struct.GlobalMemory, ptr %11, i64 0, i32 2, !dbg !828
  %call46 = call i32 @pthread_mutex_lock(ptr noundef nonnull %SlaveBarrier) #27, !dbg !829
  %12 = load ptr, ptr @Global, align 8, !dbg !830
  %bar_teller = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 2, i32 2, !dbg !831
  %13 = load i32, ptr %bar_teller, align 8, !dbg !832
  %inc48 = add i32 %13, 1, !dbg !832
  store i32 %inc48, ptr %bar_teller, align 8, !dbg !832
  %conv51 = zext i32 %inc48 to i64, !dbg !833
  %14 = load i64, ptr @num_nodes, align 8, !dbg !835
  %cmp52 = icmp eq i64 %14, %conv51, !dbg !836
  br i1 %cmp52, label %if.then, label %if.else, !dbg !837

if.then:                                          ; preds = %for.body42
  store i32 0, ptr %bar_teller, align 8, !dbg !838
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 2, i32 1, !dbg !840
  %call57 = call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #27, !dbg !841
  br label %if.end, !dbg !842

if.else:                                          ; preds = %for.body42
  %SlaveBarrier49 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 2, !dbg !843
  %bar_cond59 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 2, i32 1, !dbg !844
  %call62 = call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond59, ptr noundef nonnull %SlaveBarrier49) #27, !dbg !846
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr @Global, align 8, !dbg !847
  %SlaveBarrier63 = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 2, !dbg !848
  %call65 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %SlaveBarrier63) #27, !dbg !849
  %16 = load i64, ptr @num_nodes, align 8, !dbg !850
  %sub = add nsw i64 %16, -1, !dbg !852
  %cmp66 = icmp eq i64 %rem, %sub, !dbg !853
  br i1 %cmp66, label %for.cond70.preheader, label %for.cond88.preheader, !dbg !854

for.cond88.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !784, metadata !DIExpression()), !dbg !800
  br i1 %cmp89204, label %for.body91, label %for.end95, !dbg !855

for.cond70.preheader:                             ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %mul43, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !784, metadata !DIExpression()), !dbg !800
  %17 = load i32, ptr @image_length, align 4, !dbg !858
  %conv71210 = sext i32 %17 to i64, !dbg !858
  %cmp72211 = icmp slt i64 %mul43, %conv71210, !dbg !862
  br i1 %cmp72211, label %for.body74, label %for.end, !dbg !863

for.body74:                                       ; preds = %for.cond70.preheader, %for.body74
  %i.0213 = phi i64 [ %inc75, %for.body74 ], [ %mul43, %for.cond70.preheader ]
  %local_image_address.0212 = phi ptr [ %incdec.ptr, %for.body74 ], [ %add.ptr, %for.cond70.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0213, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %local_image_address.0212, metadata !784, metadata !DIExpression()), !dbg !800
  %18 = load i8, ptr @background, align 1, !dbg !864
  %incdec.ptr = getelementptr inbounds i8, ptr %local_image_address.0212, i64 1, !dbg !865
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !784, metadata !DIExpression()), !dbg !800
  store i8 %18, ptr %local_image_address.0212, align 1, !dbg !866
  %inc75 = add nsw i64 %i.0213, 1, !dbg !867
  call void @llvm.dbg.value(metadata i64 %inc75, metadata !783, metadata !DIExpression()), !dbg !800
  %19 = load i32, ptr @image_length, align 4, !dbg !858
  %conv71 = sext i32 %19 to i64, !dbg !858
  %cmp72 = icmp slt i64 %inc75, %conv71, !dbg !862
  br i1 %cmp72, label %for.body74, label %for.end, !dbg !863, !llvm.loop !868

for.end:                                          ; preds = %for.body74, %for.cond70.preheader
  %20 = load i16, ptr @adaptive, align 2, !dbg !870
  %tobool.not = icmp ne i16 %20, 0, !dbg !870
  %21 = load i64, ptr @mask_image_length, align 8
  %cmp79214 = icmp slt i64 %mul44, %21
  %or.cond = select i1 %tobool.not, i1 %cmp79214, i1 false, !dbg !872
  call void @llvm.dbg.value(metadata i64 %mul44, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %add.ptr45, metadata !785, metadata !DIExpression()), !dbg !800
  br i1 %or.cond, label %for.body81, label %if.end107, !dbg !872

for.body81:                                       ; preds = %for.end, %for.body81
  %i.1216 = phi i64 [ %inc84, %for.body81 ], [ %mul44, %for.end ]
  %local_mask_image_address.0215 = phi ptr [ %incdec.ptr82, %for.body81 ], [ %add.ptr45, %for.end ]
  call void @llvm.dbg.value(metadata i64 %i.1216, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %local_mask_image_address.0215, metadata !785, metadata !DIExpression()), !dbg !800
  %incdec.ptr82 = getelementptr inbounds i8, ptr %local_mask_image_address.0215, i64 1, !dbg !873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr82, metadata !785, metadata !DIExpression()), !dbg !800
  store i8 0, ptr %local_mask_image_address.0215, align 1, !dbg !876
  %inc84 = add nsw i64 %i.1216, 1, !dbg !877
  call void @llvm.dbg.value(metadata i64 %inc84, metadata !783, metadata !DIExpression()), !dbg !800
  %22 = load i64, ptr @mask_image_length, align 8, !dbg !878
  %cmp79 = icmp slt i64 %inc84, %22, !dbg !879
  br i1 %cmp79, label %for.body81, label %if.end107, !dbg !880, !llvm.loop !881

for.body91:                                       ; preds = %for.cond88.preheader, %for.body91
  %i.2206 = phi i64 [ %inc94, %for.body91 ], [ 0, %for.cond88.preheader ]
  %local_image_address.1205 = phi ptr [ %incdec.ptr92, %for.body91 ], [ %add.ptr, %for.cond88.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2206, metadata !783, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata ptr %local_image_address.1205, metadata !784, metadata !DIExpression()), !dbg !800
  %23 = load i8, ptr @background, align 1, !dbg !883
  %incdec.ptr92 = getelementptr inbounds i8, ptr %local_image_address.1205, i64 1, !dbg !885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr92, metadata !784, metadata !DIExpression()), !dbg !800
  store i8 %23, ptr %local_image_address.1205, align 1, !dbg !886
  %inc94 = add nuw nsw i64 %i.2206, 1, !dbg !887
  call void @llvm.dbg.value(metadata i64 %inc94, metadata !783, metadata !DIExpression()), !dbg !800
  %exitcond.not = icmp eq i64 %inc94, %cond, !dbg !888
  br i1 %exitcond.not, label %for.end95, label %for.body91, !dbg !855, !llvm.loop !889

for.end95:                                        ; preds = %for.body91, %for.cond88.preheader
  %24 = load i16, ptr @adaptive, align 2, !dbg !891
  %tobool96.not = icmp eq i16 %24, 0, !dbg !891
  %brmerge = select i1 %tobool96.not, i1 true, i1 %cmp99207, !dbg !893
  br i1 %brmerge, label %if.end107, label %for.body101.preheader, !dbg !893

for.body101.preheader:                            ; preds = %for.end95
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr45, i8 0, i64 %cond35, i1 false), !dbg !894
  call void @llvm.dbg.value(metadata i32 undef, metadata !785, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !800
  call void @llvm.dbg.value(metadata i32 undef, metadata !783, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !800
  br label %if.end107, !dbg !897

if.end107:                                        ; preds = %for.body81, %for.body101.preheader, %for.end95, %for.end
  br i1 %cmp108, label %if.then110, label %if.end112, !dbg !897

if.then110:                                       ; preds = %if.end107
  call void @Select_View(double noundef 3.000000e+00, i64 noundef %indvars.iv) #27, !dbg !898
  br label %if.end112, !dbg !901

if.end112:                                        ; preds = %if.then110, %if.end107
  %25 = load ptr, ptr @Global, align 8, !dbg !902
  %SlaveBarrier113 = getelementptr inbounds %struct.GlobalMemory, ptr %25, i64 0, i32 2, !dbg !904
  %call115 = call i32 @pthread_mutex_lock(ptr noundef nonnull %SlaveBarrier113) #27, !dbg !905
  %26 = load ptr, ptr @Global, align 8, !dbg !906
  %bar_teller117 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 2, i32 2, !dbg !907
  %27 = load i32, ptr %bar_teller117, align 8, !dbg !908
  %inc118 = add i32 %27, 1, !dbg !908
  store i32 %inc118, ptr %bar_teller117, align 8, !dbg !908
  %conv121 = zext i32 %inc118 to i64, !dbg !909
  %28 = load i64, ptr @num_nodes, align 8, !dbg !911
  %cmp122 = icmp eq i64 %28, %conv121, !dbg !912
  br i1 %cmp122, label %if.then124, label %if.else130, !dbg !913

if.then124:                                       ; preds = %if.end112
  store i32 0, ptr %bar_teller117, align 8, !dbg !914
  %bar_cond128 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 2, i32 1, !dbg !916
  %call129 = call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond128) #27, !dbg !917
  br label %if.end136, !dbg !918

if.else130:                                       ; preds = %if.end112
  %SlaveBarrier119 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 2, !dbg !919
  %bar_cond132 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 2, i32 1, !dbg !920
  %call135 = call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond132, ptr noundef nonnull %SlaveBarrier119) #27, !dbg !922
  br label %if.end136

if.end136:                                        ; preds = %if.else130, %if.then124
  %29 = load ptr, ptr @Global, align 8, !dbg !923
  %SlaveBarrier137 = getelementptr inbounds %struct.GlobalMemory, ptr %29, i64 0, i32 2, !dbg !924
  %call139 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %SlaveBarrier137) #27, !dbg !925
  %30 = load i64, ptr @num_nodes, align 8, !dbg !926
  %31 = load ptr, ptr @Global, align 8, !dbg !927
  %arrayidx = getelementptr inbounds %struct.GlobalMemory, ptr %31, i64 0, i32 1, i64 %30, !dbg !927
  store i64 %30, ptr %arrayidx, align 8, !dbg !928
  %32 = load ptr, ptr @Global, align 8, !dbg !929
  %arrayidx142 = getelementptr inbounds %struct.GlobalMemory, ptr %32, i64 0, i32 1, i64 %rem, !dbg !929
  store i64 0, ptr %arrayidx142, align 8, !dbg !930
  call void @Render(i64 noundef %rem) #27, !dbg !931
  br i1 %cmp108, label %if.then146, label %for.inc162, !dbg !932

if.then146:                                       ; preds = %if.end136
  %33 = load i32, ptr @ROTATE_STEPS, align 4, !dbg !933
  %cmp147 = icmp sgt i32 %33, 1, !dbg !937
  br i1 %cmp147, label %if.then149, label %if.else157, !dbg !938

if.then149:                                       ; preds = %if.then146
  %mul150 = mul nsw i32 %33, %8, !dbg !939
  %add151 = add nsw i32 %mul150, 1000, !dbg !941
  %conv152 = sext i32 %add151 to i64, !dbg !942
  %add153 = add nsw i64 %step.0219, %conv152, !dbg !943
  %call154 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %outfile, ptr noundef nonnull @.str.17, ptr noundef nonnull @filename, i64 noundef %add153) #27, !dbg !944
  %34 = load i64, ptr @image_len, align 16, !dbg !945
  %35 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !946
  %36 = load ptr, ptr @image_address, align 8, !dbg !947
  %call156 = call i64 @WriteGrayscaleTIFF(ptr noundef nonnull %outfile, i64 noundef %34, i64 noundef %35, i64 noundef %34, ptr noundef %36), !dbg !948
  br label %for.inc162, !dbg !949

if.else157:                                       ; preds = %if.then146
  %strlen = call i64 @strlen(ptr noundef nonnull @filename), !dbg !950
  %endptr = getelementptr i8, ptr @filename, i64 %strlen, !dbg !950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr, ptr noundef nonnull align 1 dereferenceable(6) @.str.18, i64 6, i1 false), !dbg !950
  %37 = load i64, ptr @image_len, align 16, !dbg !952
  %38 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !953
  %39 = load ptr, ptr @image_address, align 8, !dbg !954
  %call159 = call i64 @WriteGrayscaleTIFF(ptr noundef nonnull @filename, i64 noundef %37, i64 noundef %38, i64 noundef %37, ptr noundef %39), !dbg !955
  br label %for.inc162

for.inc162:                                       ; preds = %if.end136, %if.else157, %if.then149
  %inc163 = add nuw nsw i64 %step.0219, 1, !dbg !956
  call void @llvm.dbg.value(metadata i64 %inc163, metadata !782, metadata !DIExpression()), !dbg !800
  %40 = load i32, ptr @ROTATE_STEPS, align 4, !dbg !811
  %conv39 = sext i32 %40 to i64, !dbg !811
  %cmp40 = icmp slt i64 %inc163, %conv39, !dbg !818
  br i1 %cmp40, label %for.body42, label %for.inc165, !dbg !819, !llvm.loop !957

for.inc165:                                       ; preds = %for.inc162, %for.cond38.preheader
  %41 = phi i32 [ %7, %for.cond38.preheader ], [ %40, %for.inc162 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !959
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !791, metadata !DIExpression()), !dbg !800
  %exitcond225.not = icmp eq i64 %indvars.iv.next, 3, !dbg !960
  br i1 %exitcond225.not, label %for.end167, label %for.cond38.preheader, !dbg !817, !llvm.loop !961

for.end167:                                       ; preds = %for.inc165
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %outfile) #27, !dbg !963
  ret void, !dbg !963
}

; Function Attrs: nounwind
declare !dbg !964 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !965 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #14

declare !dbg !968 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #11

declare !dbg !972 void @Select_View(double noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !975 void @Render(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @WriteGrayscaleTIFF(ptr noundef %filename, i64 noundef %width, i64 noundef %height, i64 noundef %scanbytes, ptr noundef %data) local_unnamed_addr #9 !dbg !978 {
entry:
  %cmap = alloca [256 x i64], align 16
  call void @llvm.dbg.value(metadata ptr %filename, metadata !982, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %width, metadata !983, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %height, metadata !984, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %scanbytes, metadata !985, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %data, metadata !986, metadata !DIExpression()), !dbg !997
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %cmap) #27, !dbg !998
  call void @llvm.dbg.declare(metadata ptr %cmap, metadata !990, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata double 2.570000e+02, metadata !988, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 0, metadata !989, metadata !DIExpression()), !dbg !997
  br label %for.body, !dbg !1000

for.body:                                         ; preds = %entry, %for.body
  %c.048 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %c.048, metadata !989, metadata !DIExpression()), !dbg !997
  %conv = sitofp i64 %c.048 to double, !dbg !1002
  %mul = fmul double %conv, 2.570000e+02, !dbg !1004
  %conv1 = fptosi double %mul to i64, !dbg !1005
  %arrayidx = getelementptr inbounds [256 x i64], ptr %cmap, i64 0, i64 %c.048, !dbg !1006
  store i64 %conv1, ptr %arrayidx, align 8, !dbg !1007
  %inc = add nuw nsw i64 %c.048, 1, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %inc, metadata !989, metadata !DIExpression()), !dbg !997
  %exitcond.not = icmp eq i64 %inc, 256, !dbg !1009
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !1000, !llvm.loop !1010

for.end:                                          ; preds = %for.body
  %call = tail call ptr @TIFFOpen(ptr noundef %filename, ptr noundef nonnull @.str.24) #27, !dbg !1012
  call void @llvm.dbg.value(metadata ptr %call, metadata !992, metadata !DIExpression()), !dbg !997
  %cmp2 = icmp eq ptr %call, null, !dbg !1014
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !1015

if.end:                                           ; preds = %for.end
  %call4 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 256, i64 noundef %width) #27, !dbg !1016
  %call5 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 257, i64 noundef %height) #27, !dbg !1017
  %call6 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 258, i32 noundef 8) #27, !dbg !1018
  %call7 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 277, i32 noundef 1) #27, !dbg !1019
  %call8 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 284, i32 noundef 1) #27, !dbg !1020
  %call9 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 259, i32 noundef 5) #27, !dbg !1021
  %call10 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 274, i32 noundef 4) #27, !dbg !1022
  %call11 = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 262, i32 noundef 3) #27, !dbg !1023
  %call14 = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %call, i32 noundef 320, ptr noundef nonnull %cmap, ptr noundef nonnull %cmap, ptr noundef nonnull %cmap) #27, !dbg !1024
  call void @llvm.dbg.value(metadata i64 0, metadata !987, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata ptr %data, metadata !986, metadata !DIExpression()), !dbg !997
  %cmp1649 = icmp sgt i64 %height, 0, !dbg !1025
  br i1 %cmp1649, label %for.body18, label %cleanup.sink.split, !dbg !1028

for.body18:                                       ; preds = %if.end, %if.end22
  %data.addr.051 = phi ptr [ %add.ptr, %if.end22 ], [ %data, %if.end ]
  %y.050 = phi i64 [ %inc24, %if.end22 ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata ptr %data.addr.051, metadata !986, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %y.050, metadata !987, metadata !DIExpression()), !dbg !997
  %conv19 = trunc i64 %y.050 to i32, !dbg !1029
  %call20 = call i32 @TIFFWriteScanline(ptr noundef nonnull %call, ptr noundef %data.addr.051, i32 noundef %conv19, i32 noundef 0) #27, !dbg !1032
  %tobool.not = icmp eq i32 %call20, 0, !dbg !1032
  br i1 %tobool.not, label %cleanup.sink.split, label %if.end22, !dbg !1033

if.end22:                                         ; preds = %for.body18
  %add.ptr = getelementptr inbounds i8, ptr %data.addr.051, i64 %scanbytes, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !986, metadata !DIExpression()), !dbg !997
  %inc24 = add nuw nsw i64 %y.050, 1, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !987, metadata !DIExpression()), !dbg !997
  %exitcond52.not = icmp eq i64 %inc24, %height, !dbg !1025
  br i1 %exitcond52.not, label %cleanup.sink.split, label %for.body18, !dbg !1028, !llvm.loop !1036

cleanup.sink.split:                               ; preds = %if.end22, %for.body18, %if.end
  %retval.0.ph = phi i64 [ 1, %if.end ], [ 0, %for.body18 ], [ 1, %if.end22 ]
  call void @TIFFClose(ptr noundef nonnull %call) #27, !dbg !997
  br label %cleanup, !dbg !1038

cleanup:                                          ; preds = %cleanup.sink.split, %for.end
  %retval.0 = phi i64 [ 0, %for.end ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !997
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %cmap) #27, !dbg !1038
  ret i64 %retval.0, !dbg !1038
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @Error(ptr nocapture noundef readonly %string, ...) local_unnamed_addr #2 !dbg !1039 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %string, metadata !1043, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #27, !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1044, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr null, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1058, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1059, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1060, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1061, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1062, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1063, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata ptr null, metadata !1064, metadata !DIExpression()), !dbg !1065
  call void @llvm.va_start(ptr nonnull %ap), !dbg !1068
  %gp_offset = load i32, ptr %ap, align 16, !dbg !1069
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1069
  br i1 %fits_in_gp, label %vaarg.end, label %vaarg.end.thread, !dbg !1069

vaarg.end.thread:                                 ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1069
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !1069
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8, !dbg !1069
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !1069
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  br label %vaarg.end12.thread, !dbg !1070

vaarg.end:                                        ; preds = %entry
  %0 = add nuw nsw i32 %gp_offset, 8, !dbg !1069
  store i32 %0, ptr %ap, align 16, !dbg !1069
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %fits_in_gp5 = icmp ult i32 %gp_offset, 33, !dbg !1070
  br i1 %fits_in_gp5, label %vaarg.end12, label %vaarg.end12.thread, !dbg !1070

vaarg.end12.thread:                               ; preds = %vaarg.end, %vaarg.end.thread
  %overflow_arg_area_p9 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1070
  %overflow_arg_area10 = load ptr, ptr %overflow_arg_area_p9, align 8, !dbg !1070
  %overflow_arg_area.next11 = getelementptr i8, ptr %overflow_arg_area10, i64 8, !dbg !1070
  store ptr %overflow_arg_area.next11, ptr %overflow_arg_area_p9, align 8, !dbg !1070
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  br label %vaarg.end24.thread, !dbg !1071

vaarg.end12:                                      ; preds = %vaarg.end
  %1 = add nuw nsw i32 %gp_offset, 16, !dbg !1070
  store i32 %1, ptr %ap, align 16, !dbg !1070
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %fits_in_gp17 = icmp ult i32 %gp_offset, 25, !dbg !1071
  br i1 %fits_in_gp17, label %vaarg.end24, label %vaarg.end24.thread, !dbg !1071

vaarg.end24.thread:                               ; preds = %vaarg.end12, %vaarg.end12.thread
  %overflow_arg_area_p21 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1071
  %overflow_arg_area22 = load ptr, ptr %overflow_arg_area_p21, align 8, !dbg !1071
  %overflow_arg_area.next23 = getelementptr i8, ptr %overflow_arg_area22, i64 8, !dbg !1071
  store ptr %overflow_arg_area.next23, ptr %overflow_arg_area_p21, align 8, !dbg !1071
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  br label %vaarg.end36.thread, !dbg !1072

vaarg.end24:                                      ; preds = %vaarg.end12
  %2 = add nuw nsw i32 %gp_offset, 24, !dbg !1071
  store i32 %2, ptr %ap, align 16, !dbg !1071
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %fits_in_gp29 = icmp ult i32 %gp_offset, 17, !dbg !1072
  br i1 %fits_in_gp29, label %vaarg.end36, label %vaarg.end36.thread, !dbg !1072

vaarg.end36.thread:                               ; preds = %vaarg.end24, %vaarg.end24.thread
  %overflow_arg_area_p33 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1072
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p33, align 8, !dbg !1072
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i64 8, !dbg !1072
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p33, align 8, !dbg !1072
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  br label %vaarg.end48.thread, !dbg !1073

vaarg.end36:                                      ; preds = %vaarg.end24
  %3 = add nuw nsw i32 %gp_offset, 32, !dbg !1072
  store i32 %3, ptr %ap, align 16, !dbg !1072
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %fits_in_gp41 = icmp ult i32 %gp_offset, 9, !dbg !1073
  br i1 %fits_in_gp41, label %vaarg.end48, label %vaarg.end48.thread, !dbg !1073

vaarg.end48.thread:                               ; preds = %vaarg.end36, %vaarg.end36.thread
  %overflow_arg_area_p45 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1073
  %overflow_arg_area46 = load ptr, ptr %overflow_arg_area_p45, align 8, !dbg !1073
  %overflow_arg_area.next47 = getelementptr i8, ptr %overflow_arg_area46, i64 8, !dbg !1073
  store ptr %overflow_arg_area.next47, ptr %overflow_arg_area_p45, align 8, !dbg !1073
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  br label %vaarg.in_mem56, !dbg !1074

vaarg.end48:                                      ; preds = %vaarg.end36
  %4 = add nuw nsw i32 %gp_offset, 40, !dbg !1073
  store i32 %4, ptr %ap, align 16, !dbg !1073
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %fits_in_gp53 = icmp eq i32 %gp_offset, 0, !dbg !1074
  br i1 %fits_in_gp53, label %vaarg.in_reg54, label %vaarg.in_mem56, !dbg !1074

vaarg.in_reg54:                                   ; preds = %vaarg.end48
  %5 = add nuw nsw i32 %gp_offset, 48, !dbg !1074
  store i32 %5, ptr %ap, align 16, !dbg !1074
  br label %vaarg.end84, !dbg !1074

vaarg.in_mem56:                                   ; preds = %vaarg.end48.thread, %vaarg.end48
  %overflow_arg_area_p57 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1074
  %overflow_arg_area58 = load ptr, ptr %overflow_arg_area_p57, align 8, !dbg !1074
  %overflow_arg_area.next59 = getelementptr i8, ptr %overflow_arg_area58, i64 8, !dbg !1074
  store ptr %overflow_arg_area.next59, ptr %overflow_arg_area_p57, align 8, !dbg !1074
  br label %vaarg.end84, !dbg !1074

vaarg.end84:                                      ; preds = %vaarg.in_mem56, %vaarg.in_reg54
  call void @llvm.dbg.value(metadata ptr undef, metadata !1057, metadata !DIExpression()), !dbg !1065
  %overflow_arg_area_p69 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1075
  %overflow_arg_area70 = load ptr, ptr %overflow_arg_area_p69, align 8, !dbg !1075
  %overflow_arg_area.next71 = getelementptr i8, ptr %overflow_arg_area70, i64 8, !dbg !1075
  %overflow_arg_area_p81 = getelementptr inbounds %struct.__va_list_tag, ptr %ap, i64 0, i32 2, !dbg !1076
  %overflow_arg_area.next83 = getelementptr i8, ptr %overflow_arg_area70, i64 16, !dbg !1076
  store ptr %overflow_arg_area.next83, ptr %overflow_arg_area_p81, align 8, !dbg !1076
  %6 = load ptr, ptr %overflow_arg_area.next71, align 8, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %6, metadata !1057, metadata !DIExpression()), !dbg !1065
  call void @llvm.va_end(ptr nonnull %ap), !dbg !1077
  %7 = load ptr, ptr @stderr, align 8, !dbg !1078
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef %string, ptr noundef %6, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #30, !dbg !1079
  call void @exit(i32 noundef 1) #25, !dbg !1080
  unreachable, !dbg !1080
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Store_Image(ptr nocapture noundef readonly %filename) local_unnamed_addr #9 !dbg !1081 {
entry:
  %local_filename = alloca [201 x i8], align 16
  %pix_version = alloca i16, align 2
  %local_image_len = alloca [3 x i16], align 2
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1083, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 201, ptr nonnull %local_filename) #27, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %local_filename, metadata !1084, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pix_version) #27, !dbg !1092
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %local_image_len) #27, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %local_image_len, metadata !1087, metadata !DIExpression()), !dbg !1094
  %0 = load i64, ptr @image_len, align 16, !dbg !1095
  %conv = trunc i64 %0 to i16, !dbg !1095
  store i16 %conv, ptr %local_image_len, align 2, !dbg !1096
  %1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !1097
  %conv1 = trunc i64 %1 to i16, !dbg !1097
  %arrayidx2 = getelementptr inbounds [3 x i16], ptr %local_image_len, i64 0, i64 1, !dbg !1098
  store i16 %conv1, ptr %arrayidx2, align 2, !dbg !1099
  %arrayidx3 = getelementptr inbounds [3 x i16], ptr %local_image_len, i64 0, i64 2, !dbg !1100
  store i16 1, ptr %arrayidx3, align 2, !dbg !1101
  call void @llvm.dbg.value(metadata i16 1, metadata !1086, metadata !DIExpression()), !dbg !1089
  store i16 1, ptr %pix_version, align 2, !dbg !1102
  %call = call ptr @strcpy(ptr noundef nonnull %local_filename, ptr noundef nonnull dereferenceable(1) %filename) #27, !dbg !1103
  %strlen = call i64 @strlen(ptr noundef nonnull %local_filename), !dbg !1104
  %endptr = getelementptr i8, ptr %local_filename, i64 %strlen, !dbg !1104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr, ptr noundef nonnull align 1 dereferenceable(5) @.str.21, i64 5, i1 false), !dbg !1104
  %call7 = call i32 @Create_File(ptr noundef nonnull %local_filename) #27, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %call7, metadata !1085, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1089
  call void @llvm.dbg.value(metadata ptr %pix_version, metadata !1086, metadata !DIExpression(DW_OP_deref)), !dbg !1089
  call void @Write_Shorts(i32 noundef %call7, ptr noundef nonnull %pix_version, i64 noundef 2) #27, !dbg !1106
  call void @Write_Shorts(i32 noundef %call7, ptr noundef nonnull %local_image_len, i64 noundef 6) #27, !dbg !1107
  call void @Write_Longs(i32 noundef %call7, ptr noundef nonnull @image_length, i64 noundef 4) #27, !dbg !1108
  %2 = load ptr, ptr @image_address, align 8, !dbg !1109
  %3 = load i32, ptr @image_length, align 4, !dbg !1110
  %conv14 = sext i32 %3 to i64, !dbg !1110
  call void @Write_Bytes(i32 noundef %call7, ptr noundef %2, i64 noundef %conv14) #27, !dbg !1111
  call void @Close_File(i32 noundef %call7) #27, !dbg !1112
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %local_image_len) #27, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pix_version) #27, !dbg !1113
  call void @llvm.lifetime.end.p0(i64 201, ptr nonnull %local_filename) #27, !dbg !1113
  ret void, !dbg !1113
}

declare !dbg !1114 i32 @Create_File(ptr noundef) local_unnamed_addr #11

declare !dbg !1117 void @Write_Shorts(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !1120 void @Write_Longs(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !1121 void @Write_Bytes(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

declare !dbg !1122 void @Close_File(i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #17

declare !dbg !1125 ptr @TIFFOpen(ptr noundef, ptr noundef) local_unnamed_addr #11

declare !dbg !1128 i32 @TIFFSetField(ptr noundef, i32 noundef, ...) local_unnamed_addr #11

declare !dbg !1131 i32 @TIFFWriteScanline(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

declare !dbg !1134 void @TIFFClose(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture) local_unnamed_addr #20

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #23

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { nofree nounwind }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { argmemonly nofree nounwind willreturn }
attributes #22 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { nounwind readonly willreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { nounwind readnone willreturn }
attributes #27 = { nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__threads__", scope: !2, file: !3, line: 54, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !117, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "main.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "79961a4a361392e822d41222fee970f1")
!4 = !{!5, !104, !10, !105, !109, !112, !113, !115, !116}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlobalMemory", file: !7, line: 28, size: 17123840, elements: !8)
!7 = !DIFile(filename: "./anl.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "ab8287c4fdcda506e980865b51f16a15")
!8 = !{!9, !11, !16, !93, !99, !100, !101}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "Index", scope: !6, file: !7, line: 29, baseType: !10, size: 64)
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "Queue", scope: !6, file: !7, line: 31, baseType: !12, size: 16793600, offset: 64)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16793600, elements: !13)
!13 = !{!14, !15}
!14 = !DISubrange(count: 1025)
!15 = !DISubrange(count: 256)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "SlaveBarrier", scope: !6, file: !7, line: 32, baseType: !17, size: 768, offset: 16793664)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !7, line: 32, size: 768, elements: !18)
!18 = !{!19, !52, !92}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "bar_mutex", scope: !17, file: !7, line: 32, baseType: !20, size: 320)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !21, line: 72, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 67, size: 320, elements: !23)
!23 = !{!24, !46, !51}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !22, file: !21, line: 69, baseType: !25, size: 320)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !26, line: 22, size: 320, elements: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!27 = !{!28, !30, !32, !33, !34, !35, !37, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !25, file: !26, line: 24, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !25, file: !26, line: 25, baseType: !31, size: 32, offset: 32)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !25, file: !26, line: 26, baseType: !29, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !25, file: !26, line: 28, baseType: !31, size: 32, offset: 96)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !25, file: !26, line: 32, baseType: !29, size: 32, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !25, file: !26, line: 34, baseType: !36, size: 16, offset: 160)
!36 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !25, file: !26, line: 35, baseType: !36, size: 16, offset: 176)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !25, file: !26, line: 36, baseType: !39, size: 128, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !40, line: 53, baseType: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !40, line: 49, size: 128, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !41, file: !40, line: 51, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !41, file: !40, line: 52, baseType: !44, size: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !22, file: !21, line: 70, baseType: !47, size: 320)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 320, elements: !49)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !{!50}
!50 = !DISubrange(count: 40)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !22, file: !21, line: 71, baseType: !10, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "bar_cond", scope: !17, file: !7, line: 32, baseType: !53, size: 384, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !21, line: 80, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 75, size: 384, elements: !55)
!55 = !{!56, !86, !90}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !54, file: !21, line: 77, baseType: !57, size: 384)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !40, line: 92, size: 384, elements: !58)
!58 = !{!59, !69, !78, !82, !83, !84, !85}
!59 = !DIDerivedType(tag: DW_TAG_member, scope: !57, file: !40, line: 94, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !40, line: 94, size: 64, elements: !61)
!61 = !{!62, !64}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !60, file: !40, line: 96, baseType: !63, size: 64)
!63 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !60, file: !40, line: 101, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !60, file: !40, line: 97, size: 64, elements: !66)
!66 = !{!67, !68}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !65, file: !40, line: 99, baseType: !31, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !65, file: !40, line: 100, baseType: !31, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !57, file: !40, line: 103, baseType: !70, size: 64, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !40, line: 103, size: 64, elements: !71)
!71 = !{!72, !73}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !70, file: !40, line: 105, baseType: !63, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !70, file: !40, line: 110, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !40, line: 106, size: 64, elements: !75)
!75 = !{!76, !77}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !74, file: !40, line: 108, baseType: !31, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !74, file: !40, line: 109, baseType: !31, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !57, file: !40, line: 112, baseType: !79, size: 64, offset: 128)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 2)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !57, file: !40, line: 113, baseType: !79, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !57, file: !40, line: 114, baseType: !31, size: 32, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !57, file: !40, line: 115, baseType: !31, size: 32, offset: 288)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !57, file: !40, line: 116, baseType: !79, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !54, file: !21, line: 78, baseType: !87, size: 384)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 384, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 48)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !54, file: !21, line: 79, baseType: !91, size: 64)
!91 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bar_teller", scope: !17, file: !7, line: 32, baseType: !31, size: 32, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "TimeBarrier", scope: !6, file: !7, line: 33, baseType: !94, size: 768, offset: 16794432)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !7, line: 33, size: 768, elements: !95)
!95 = !{!96, !97, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "bar_mutex", scope: !94, file: !7, line: 33, baseType: !20, size: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "bar_cond", scope: !94, file: !7, line: 33, baseType: !53, size: 384, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "bar_teller", scope: !94, file: !7, line: 33, baseType: !31, size: 32, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "IndexLock", scope: !6, file: !7, line: 34, baseType: !20, size: 320, offset: 16795200)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "CountLock", scope: !6, file: !7, line: 35, baseType: !20, size: 320, offset: 16795520)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "QLock", scope: !6, file: !7, line: 36, baseType: !102, size: 328000, offset: 16795840)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 328000, elements: !103)
!103 = !{!14}
!104 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIXEL", file: !107, line: 30, baseType: !108)
!107 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!112, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPIXEL", file: !107, line: 31, baseType: !108)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!116 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!117 = !{!0, !118, !120, !126, !128, !130, !133, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !163, !165, !167, !169, !171, !173}
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "ROTATE_STEPS", scope: !2, file: !3, line: 60, type: !29, isLocal: false, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "__tid__", scope: !2, file: !3, line: 53, type: !122, isLocal: false, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16384, elements: !125)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !21, line: 27, baseType: !124)
!124 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!125 = !{!15}
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__intern__", scope: !2, file: !3, line: 55, type: !20, isLocal: false, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "Global", scope: !2, file: !3, line: 62, type: !5, isLocal: false, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "image_section", scope: !2, file: !3, line: 64, type: !132, isLocal: false, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !80)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "voxel_section", scope: !2, file: !3, line: 65, type: !135, isLocal: false, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 3)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "num_nodes", scope: !2, file: !3, line: 67, type: !10, isLocal: false, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "frame", scope: !2, file: !3, line: 67, type: !10, isLocal: false, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "num_blocks", scope: !2, file: !3, line: 68, type: !10, isLocal: false, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "num_xblocks", scope: !2, file: !3, line: 68, type: !10, isLocal: false, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "num_yblocks", scope: !2, file: !3, line: 68, type: !10, isLocal: false, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "image_address", scope: !2, file: !3, line: 69, type: !105, isLocal: false, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "mask_image_address", scope: !2, file: !3, line: 70, type: !113, isLocal: false, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "image_block", scope: !2, file: !3, line: 71, type: !105, isLocal: false, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "mask_image_block", scope: !2, file: !3, line: 71, type: !105, isLocal: false, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "shd_address", scope: !2, file: !3, line: 72, type: !105, isLocal: false, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "sbit_address", scope: !2, file: !3, line: 73, type: !160, isLocal: false, isDefinition: true)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOLEAN", file: !107, line: 34, baseType: !162)
!162 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "shd_length", scope: !2, file: !3, line: 74, type: !10, isLocal: false, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "image_len", scope: !2, file: !3, line: 75, type: !132, isLocal: false, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "mask_image_len", scope: !2, file: !3, line: 75, type: !132, isLocal: false, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "image_length", scope: !2, file: !3, line: 76, type: !29, isLocal: false, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "mask_image_length", scope: !2, file: !3, line: 77, type: !10, isLocal: false, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "filename", scope: !2, file: !3, line: 78, type: !175, isLocal: false, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1608, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 201)
!178 = !{i32 7, !"Dwarf Version", i32 5}
!179 = !{i32 2, !"Debug Info Version", i32 3}
!180 = !{i32 1, !"wchar_size", i32 4}
!181 = !{i32 7, !"PIC Level", i32 2}
!182 = !{i32 7, !"PIE Level", i32 2}
!183 = !{i32 7, !"uwtable", i32 2}
!184 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!185 = distinct !DISubprogram(name: "mclock", scope: !3, file: !3, line: 80, type: !186, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !10, !10, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!189 = !{!190, !191, !192}
!190 = !DILocalVariable(name: "stoptime", arg: 1, scope: !185, file: !3, line: 80, type: !10)
!191 = !DILocalVariable(name: "starttime", arg: 2, scope: !185, file: !3, line: 80, type: !10)
!192 = !DILocalVariable(name: "exectime", arg: 3, scope: !185, file: !3, line: 80, type: !188)
!193 = !DILocation(line: 0, scope: !185)
!194 = !DILocation(line: 82, column: 16, scope: !195)
!195 = distinct !DILexicalBlock(scope: !185, file: !3, line: 82, column: 7)
!196 = !DILocation(line: 82, column: 7, scope: !185)
!197 = !DILocation(line: 83, column: 29, scope: !195)
!198 = !DILocation(line: 83, column: 42, scope: !195)
!199 = !DILocation(line: 83, column: 53, scope: !195)
!200 = !DILocation(line: 83, column: 5, scope: !195)
!201 = !DILocation(line: 85, column: 27, scope: !195)
!202 = !DILocation(line: 85, column: 39, scope: !195)
!203 = !DILocation(line: 0, scope: !195)
!204 = !DILocation(line: 86, column: 1, scope: !185)
!205 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 89, type: !206, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!206 = !DISubroutineType(types: !207)
!207 = !{!29, !29, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!210 = !{!211, !212, !213}
!211 = !DILocalVariable(name: "argc", arg: 1, scope: !205, file: !3, line: 89, type: !29)
!212 = !DILocalVariable(name: "argv", arg: 2, scope: !205, file: !3, line: 89, type: !208)
!213 = !DILocalVariable(name: "aantal", scope: !214, file: !3, line: 117, type: !29)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 117, column: 5)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 116, column: 22)
!216 = distinct !DILexicalBlock(scope: !205, file: !3, line: 116, column: 7)
!217 = !DILocation(line: 0, scope: !205)
!218 = !DILocation(line: 91, column: 13, scope: !219)
!219 = distinct !DILexicalBlock(scope: !205, file: !3, line: 91, column: 7)
!220 = !DILocation(line: 91, column: 18, scope: !219)
!221 = !DILocation(line: 91, column: 30, scope: !219)
!222 = !DILocation(line: 91, column: 22, scope: !219)
!223 = !DILocation(line: 91, column: 57, scope: !219)
!224 = !DILocation(line: 91, column: 63, scope: !219)
!225 = !DILocation(line: 92, column: 5, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !3, line: 91, column: 108)
!227 = !DILocation(line: 93, column: 5, scope: !226)
!228 = !DILocation(line: 96, column: 27, scope: !229)
!229 = distinct !DILexicalBlock(scope: !205, file: !3, line: 96, column: 3)
!230 = !DILocation(line: 96, column: 23, scope: !229)
!231 = !DILocation(line: 96, column: 4, scope: !229)
!232 = !DILocation(line: 96, column: 26, scope: !229)
!233 = !DILocation(line: 98, column: 20, scope: !205)
!234 = !DILocation(line: 98, column: 15, scope: !205)
!235 = !DILocation(line: 98, column: 13, scope: !205)
!236 = !DILocation(line: 99, column: 23, scope: !205)
!237 = !DILocation(line: 99, column: 18, scope: !205)
!238 = !DILocation(line: 99, column: 16, scope: !205)
!239 = !DILocation(line: 101, column: 19, scope: !205)
!240 = !DILocation(line: 101, column: 3, scope: !205)
!241 = !DILocation(line: 103, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !205, file: !3, line: 103, column: 7)
!243 = !DILocation(line: 103, column: 7, scope: !205)
!244 = !DILocation(line: 104, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 104, column: 9)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 103, column: 18)
!247 = !DILocation(line: 104, column: 9, scope: !245)
!248 = !DILocation(line: 104, column: 44, scope: !245)
!249 = !DILocation(line: 104, column: 9, scope: !246)
!250 = !DILocation(line: 105, column: 16, scope: !245)
!251 = !DILocation(line: 110, column: 3, scope: !246)
!252 = !DILocation(line: 107, column: 7, scope: !253)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 106, column: 10)
!254 = !DILocation(line: 108, column: 7, scope: !253)
!255 = !DILocation(line: 112, column: 3, scope: !205)
!256 = !DILocation(line: 116, column: 7, scope: !216)
!257 = !DILocation(line: 116, column: 17, scope: !216)
!258 = !DILocation(line: 116, column: 7, scope: !205)
!259 = !DILocation(line: 0, scope: !214)
!260 = !DILocation(line: 117, column: 28, scope: !214)
!261 = !DILocation(line: 117, column: 41, scope: !214)
!262 = !DILocation(line: 117, column: 58, scope: !214)
!263 = !DILocation(line: 117, column: 45, scope: !214)
!264 = distinct !{!264, !260, !265, !266, !267}
!265 = !DILocation(line: 117, column: 79, scope: !214)
!266 = !{!"llvm.loop.mustprogress"}
!267 = !{!"llvm.loop.unroll.disable"}
!268 = !DILocation(line: 120, column: 4, scope: !269)
!269 = distinct !DILexicalBlock(scope: !205, file: !3, line: 120, column: 3)
!270 = !DISubprogram(name: "pthread_self", scope: !271, file: !271, line: 251, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!271 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!272 = !DISubroutineType(types: !273)
!273 = !{!123}
!274 = !{}
!275 = !DISubprogram(name: "atol", scope: !276, file: !276, line: 107, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!276 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!277 = !DISubroutineType(types: !278)
!278 = !{!10, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!281 = !DISubprogram(name: "atoi", scope: !276, file: !276, line: 104, type: !282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!282 = !DISubroutineType(types: !283)
!283 = !{!29, !279}
!284 = distinct !DISubprogram(name: "Frame", scope: !3, file: !3, line: 124, type: !285, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{null}
!287 = !{!288, !289, !290, !291, !292, !294, !296}
!288 = !DILocalVariable(name: "starttime", scope: !284, file: !3, line: 126, type: !10)
!289 = !DILocalVariable(name: "stoptime", scope: !284, file: !3, line: 126, type: !10)
!290 = !DILocalVariable(name: "exectime", scope: !284, file: !3, line: 126, type: !10)
!291 = !DILocalVariable(name: "i", scope: !284, file: !3, line: 126, type: !10)
!292 = !DILocalVariable(name: "i", scope: !293, file: !3, line: 153, type: !29)
!293 = distinct !DILexicalBlock(scope: !284, file: !3, line: 153, column: 3)
!294 = !DILocalVariable(name: "i", scope: !295, file: !3, line: 256, type: !10)
!295 = distinct !DILexicalBlock(scope: !284, file: !3, line: 255, column: 3)
!296 = !DILocalVariable(name: "Error", scope: !295, file: !3, line: 256, type: !10)
!297 = !DILocation(line: 126, column: 3, scope: !284)
!298 = !DILocation(line: 128, column: 3, scope: !284)
!299 = !DILocation(line: 130, column: 68, scope: !284)
!300 = !DILocation(line: 130, column: 3, scope: !284)
!301 = !DILocation(line: 131, column: 10, scope: !284)
!302 = !DILocation(line: 131, column: 3, scope: !284)
!303 = !DILocation(line: 133, column: 3, scope: !284)
!304 = !DILocation(line: 135, column: 66, scope: !284)
!305 = !DILocation(line: 135, column: 3, scope: !284)
!306 = !DILocation(line: 136, column: 10, scope: !284)
!307 = !DILocation(line: 136, column: 3, scope: !284)
!308 = !DILocation(line: 140, column: 35, scope: !284)
!309 = !DILocation(line: 140, column: 10, scope: !284)
!310 = !DILocation(line: 142, column: 32, scope: !311)
!311 = distinct !DILexicalBlock(scope: !284, file: !3, line: 141, column: 3)
!312 = !DILocation(line: 142, column: 2, scope: !311)
!313 = !DILocation(line: 143, column: 23, scope: !311)
!314 = !DILocation(line: 143, column: 45, scope: !311)
!315 = !DILocation(line: 143, column: 2, scope: !311)
!316 = !DILocation(line: 144, column: 3, scope: !311)
!317 = !DILocation(line: 144, column: 25, scope: !311)
!318 = !DILocation(line: 144, column: 35, scope: !311)
!319 = !DILocation(line: 147, column: 32, scope: !320)
!320 = distinct !DILexicalBlock(scope: !284, file: !3, line: 146, column: 3)
!321 = !DILocation(line: 147, column: 2, scope: !320)
!322 = !DILocation(line: 148, column: 23, scope: !320)
!323 = !DILocation(line: 148, column: 44, scope: !320)
!324 = !DILocation(line: 148, column: 2, scope: !320)
!325 = !DILocation(line: 149, column: 3, scope: !320)
!326 = !DILocation(line: 149, column: 24, scope: !320)
!327 = !DILocation(line: 149, column: 34, scope: !320)
!328 = !DILocation(line: 151, column: 33, scope: !329)
!329 = distinct !DILexicalBlock(scope: !284, file: !3, line: 151, column: 3)
!330 = !DILocation(line: 151, column: 4, scope: !329)
!331 = !DILocation(line: 152, column: 25, scope: !332)
!332 = distinct !DILexicalBlock(scope: !284, file: !3, line: 152, column: 3)
!333 = !DILocation(line: 152, column: 33, scope: !332)
!334 = !DILocation(line: 152, column: 4, scope: !332)
!335 = !DILocation(line: 0, scope: !293)
!336 = !DILocation(line: 153, column: 12, scope: !337)
!337 = distinct !DILexicalBlock(scope: !293, file: !3, line: 153, column: 12)
!338 = !DILocation(line: 153, column: 71, scope: !339)
!339 = distinct !DILexicalBlock(scope: !337, file: !3, line: 153, column: 12)
!340 = !DILocation(line: 153, column: 70, scope: !339)
!341 = !DILocation(line: 153, column: 49, scope: !339)
!342 = !DILocation(line: 153, column: 45, scope: !339)
!343 = !DILocation(line: 153, column: 25, scope: !339)
!344 = distinct !{!344, !336, !345, !266, !267}
!345 = !DILocation(line: 153, column: 95, scope: !337)
!346 = !DILocation(line: 157, column: 31, scope: !347)
!347 = distinct !DILexicalBlock(scope: !284, file: !3, line: 157, column: 3)
!348 = !DILocation(line: 0, scope: !284)
!349 = !DILocation(line: 158, column: 3, scope: !284)
!350 = !DILocation(line: 159, column: 30, scope: !351)
!351 = distinct !DILexicalBlock(scope: !284, file: !3, line: 159, column: 3)
!352 = !DILocation(line: 160, column: 3, scope: !284)
!353 = !DILocation(line: 161, column: 62, scope: !284)
!354 = !DILocation(line: 161, column: 3, scope: !284)
!355 = !DILocation(line: 164, column: 31, scope: !356)
!356 = distinct !DILexicalBlock(scope: !284, file: !3, line: 164, column: 3)
!357 = !DILocation(line: 166, column: 3, scope: !284)
!358 = !DILocation(line: 173, column: 30, scope: !359)
!359 = distinct !DILexicalBlock(scope: !284, file: !3, line: 173, column: 3)
!360 = !DILocation(line: 174, column: 3, scope: !284)
!361 = !DILocation(line: 175, column: 68, scope: !284)
!362 = !DILocation(line: 175, column: 3, scope: !284)
!363 = !DILocation(line: 177, column: 31, scope: !364)
!364 = distinct !DILexicalBlock(scope: !284, file: !3, line: 177, column: 3)
!365 = !DILocation(line: 179, column: 3, scope: !284)
!366 = !DILocation(line: 186, column: 30, scope: !367)
!367 = distinct !DILexicalBlock(scope: !284, file: !3, line: 186, column: 3)
!368 = !DILocation(line: 187, column: 3, scope: !284)
!369 = !DILocation(line: 188, column: 69, scope: !284)
!370 = !DILocation(line: 188, column: 3, scope: !284)
!371 = !DILocation(line: 190, column: 3, scope: !284)
!372 = !DILocation(line: 191, column: 14, scope: !284)
!373 = !DILocation(line: 192, column: 3, scope: !284)
!374 = !DILocation(line: 194, column: 18, scope: !284)
!375 = !DILocation(line: 194, column: 16, scope: !284)
!376 = !DILocation(line: 195, column: 16, scope: !284)
!377 = !DILocation(line: 196, column: 31, scope: !284)
!378 = !DILocation(line: 196, column: 18, scope: !284)
!379 = !DILocation(line: 196, column: 16, scope: !284)
!380 = !DILocation(line: 197, column: 33, scope: !284)
!381 = !DILocation(line: 197, column: 3, scope: !284)
!382 = !DILocation(line: 199, column: 7, scope: !383)
!383 = distinct !DILexicalBlock(scope: !284, file: !3, line: 199, column: 7)
!384 = !DILocation(line: 199, column: 17, scope: !383)
!385 = !DILocation(line: 0, scope: !383)
!386 = !DILocation(line: 199, column: 7, scope: !284)
!387 = !DILocation(line: 200, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !383, file: !3, line: 199, column: 23)
!389 = !DILocation(line: 201, column: 18, scope: !388)
!390 = !DILocation(line: 201, column: 16, scope: !388)
!391 = !DILocation(line: 202, column: 16, scope: !388)
!392 = !DILocation(line: 203, column: 17, scope: !388)
!393 = !DILocation(line: 204, column: 17, scope: !388)
!394 = !DILocation(line: 205, column: 19, scope: !388)
!395 = !DILocation(line: 205, column: 17, scope: !388)
!396 = !DILocation(line: 206, column: 3, scope: !388)
!397 = !DILocation(line: 208, column: 19, scope: !398)
!398 = distinct !DILexicalBlock(scope: !383, file: !3, line: 207, column: 8)
!399 = !DILocation(line: 208, column: 17, scope: !398)
!400 = !DILocation(line: 209, column: 19, scope: !398)
!401 = !DILocation(line: 209, column: 17, scope: !398)
!402 = !DILocation(line: 210, column: 30, scope: !398)
!403 = !DILocation(line: 210, column: 16, scope: !398)
!404 = !DILocation(line: 211, column: 44, scope: !398)
!405 = !DILocation(line: 211, column: 5, scope: !398)
!406 = !DILocation(line: 214, column: 31, scope: !407)
!407 = distinct !DILexicalBlock(scope: !284, file: !3, line: 214, column: 3)
!408 = !DILocation(line: 216, column: 3, scope: !284)
!409 = !DILocation(line: 223, column: 30, scope: !410)
!410 = distinct !DILexicalBlock(scope: !284, file: !3, line: 223, column: 3)
!411 = !DILocation(line: 224, column: 3, scope: !284)
!412 = !DILocation(line: 225, column: 68, scope: !284)
!413 = !DILocation(line: 225, column: 3, scope: !284)
!414 = !DILocation(line: 231, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !284, file: !3, line: 231, column: 7)
!416 = !DILocation(line: 231, column: 7, scope: !284)
!417 = !DILocation(line: 232, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !3, line: 231, column: 17)
!419 = !DILocation(line: 234, column: 25, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !3, line: 233, column: 26)
!421 = distinct !DILexicalBlock(scope: !422, file: !3, line: 233, column: 5)
!422 = distinct !DILexicalBlock(scope: !418, file: !3, line: 233, column: 5)
!423 = !DILocation(line: 236, column: 25, scope: !418)
!424 = !DILocation(line: 236, column: 23, scope: !418)
!425 = !DILocation(line: 237, column: 5, scope: !418)
!426 = !DILocation(line: 238, column: 9, scope: !427)
!427 = distinct !DILexicalBlock(scope: !418, file: !3, line: 238, column: 9)
!428 = !DILocation(line: 238, column: 19, scope: !427)
!429 = !DILocation(line: 238, column: 9, scope: !418)
!430 = !DILocation(line: 239, column: 35, scope: !427)
!431 = !DILocation(line: 239, column: 24, scope: !427)
!432 = !DILocation(line: 239, column: 7, scope: !427)
!433 = !DILocation(line: 241, column: 42, scope: !427)
!434 = !DILocation(line: 241, column: 53, scope: !427)
!435 = !DILocation(line: 241, column: 52, scope: !427)
!436 = !DILocation(line: 241, column: 7, scope: !427)
!437 = !DILocation(line: 242, column: 5, scope: !418)
!438 = !DILocation(line: 243, column: 3, scope: !418)
!439 = !DILocation(line: 246, column: 3, scope: !284)
!440 = !DILocation(line: 249, column: 3, scope: !284)
!441 = !DILocation(line: 249, column: 17, scope: !284)
!442 = !DILocation(line: 251, column: 3, scope: !284)
!443 = !DILocation(line: 252, column: 3, scope: !284)
!444 = !DILocation(line: 258, column: 2, scope: !295)
!445 = !DILocation(line: 259, column: 2, scope: !295)
!446 = !DILocation(line: 0, scope: !295)
!447 = !DILocation(line: 260, column: 19, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 260, column: 2)
!449 = distinct !DILexicalBlock(scope: !295, file: !3, line: 260, column: 2)
!450 = !DILocation(line: 260, column: 16, scope: !448)
!451 = !DILocation(line: 260, column: 2, scope: !449)
!452 = !DILocation(line: 260, column: 36, scope: !448)
!453 = !DILocation(line: 260, column: 30, scope: !448)
!454 = distinct !{!454, !451, !455, !266, !267}
!455 = !DILocation(line: 266, column: 2, scope: !449)
!456 = !DILocation(line: 261, column: 46, scope: !457)
!457 = distinct !DILexicalBlock(scope: !448, file: !3, line: 260, column: 40)
!458 = !DILocation(line: 261, column: 27, scope: !457)
!459 = !DILocation(line: 261, column: 11, scope: !457)
!460 = !DILocation(line: 262, column: 13, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !3, line: 262, column: 7)
!462 = !DILocation(line: 262, column: 7, scope: !457)
!463 = !DILocation(line: 263, column: 4, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 262, column: 19)
!465 = !DILocation(line: 264, column: 4, scope: !464)
!466 = !DILocation(line: 267, column: 2, scope: !295)
!467 = !DILocation(line: 269, column: 2, scope: !295)
!468 = !DILocation(line: 271, column: 1, scope: !284)
!469 = !DISubprogram(name: "pthread_join", scope: !271, file: !271, line: 215, type: !470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!470 = !DISubroutineType(types: !471)
!471 = !{!29, !123, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!473 = !DISubprogram(name: "Init_Options", scope: !474, file: !474, line: 227, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!474 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!475 = !DISubprogram(name: "fflush", scope: !476, file: !476, line: 218, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!476 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!477 = !DISubroutineType(types: !478)
!478 = !{!29, !479}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !481, line: 7, baseType: !482)
!481 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !483, line: 49, size: 1728, elements: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!484 = !{!485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !500, !502, !503, !504, !507, !508, !510, !514, !517, !519, !522, !525, !526, !527, !530, !531}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !482, file: !483, line: 51, baseType: !29, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !482, file: !483, line: 54, baseType: !209, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !482, file: !483, line: 55, baseType: !209, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !482, file: !483, line: 56, baseType: !209, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !482, file: !483, line: 57, baseType: !209, size: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !482, file: !483, line: 58, baseType: !209, size: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !482, file: !483, line: 59, baseType: !209, size: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !482, file: !483, line: 60, baseType: !209, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !482, file: !483, line: 61, baseType: !209, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !482, file: !483, line: 64, baseType: !209, size: 64, offset: 576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !482, file: !483, line: 65, baseType: !209, size: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !482, file: !483, line: 66, baseType: !209, size: 64, offset: 704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !482, file: !483, line: 68, baseType: !498, size: 64, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !483, line: 36, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !482, file: !483, line: 70, baseType: !501, size: 64, offset: 832)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !482, file: !483, line: 72, baseType: !29, size: 32, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !482, file: !483, line: 73, baseType: !29, size: 32, offset: 928)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !482, file: !483, line: 74, baseType: !505, size: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !506, line: 152, baseType: !10)
!506 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !482, file: !483, line: 77, baseType: !162, size: 16, offset: 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !482, file: !483, line: 78, baseType: !509, size: 8, offset: 1040)
!509 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !482, file: !483, line: 79, baseType: !511, size: 8, offset: 1048)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 1)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !482, file: !483, line: 81, baseType: !515, size: 64, offset: 1088)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !483, line: 43, baseType: null)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !482, file: !483, line: 89, baseType: !518, size: 64, offset: 1152)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !506, line: 153, baseType: !10)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !482, file: !483, line: 91, baseType: !520, size: 64, offset: 1216)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !483, line: 37, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !482, file: !483, line: 92, baseType: !523, size: 64, offset: 1280)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !483, line: 38, flags: DIFlagFwdDecl)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !482, file: !483, line: 93, baseType: !501, size: 64, offset: 1344)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !482, file: !483, line: 94, baseType: !112, size: 64, offset: 1408)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !482, file: !483, line: 95, baseType: !528, size: 64, offset: 1472)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !529, line: 46, baseType: !124)
!529 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !482, file: !483, line: 96, baseType: !29, size: 32, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !482, file: !483, line: 98, baseType: !532, size: 160, offset: 1568)
!532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, elements: !533)
!533 = !{!534}
!534 = !DISubrange(count: 20)
!535 = distinct !DISubprogram(name: "Init_Decomposition", scope: !3, file: !3, line: 525, type: !285, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{!537, !541, !542, !543, !544, !545, !546, !547}
!537 = !DILocalVariable(name: "factors", scope: !535, file: !3, line: 527, type: !538)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 65536, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1024)
!541 = !DILocalVariable(name: "processors", scope: !535, file: !3, line: 528, type: !116)
!542 = !DILocalVariable(name: "newfactor", scope: !535, file: !3, line: 528, type: !116)
!543 = !DILocalVariable(name: "i", scope: !535, file: !3, line: 529, type: !10)
!544 = !DILocalVariable(name: "sq", scope: !535, file: !3, line: 529, type: !10)
!545 = !DILocalVariable(name: "cu", scope: !535, file: !3, line: 529, type: !10)
!546 = !DILocalVariable(name: "maxcu", scope: !535, file: !3, line: 529, type: !10)
!547 = !DILocalVariable(name: "count", scope: !535, file: !3, line: 529, type: !10)
!548 = !DILocation(line: 527, column: 3, scope: !535)
!549 = !DILocation(line: 527, column: 8, scope: !535)
!550 = !DILocation(line: 533, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !535, file: !3, line: 533, column: 7)
!552 = !DILocation(line: 533, column: 17, scope: !551)
!553 = !DILocation(line: 533, column: 7, scope: !535)
!554 = !DILocation(line: 534, column: 22, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !3, line: 533, column: 23)
!556 = !DILocation(line: 535, column: 22, scope: !555)
!557 = !DILocation(line: 536, column: 22, scope: !555)
!558 = !DILocation(line: 537, column: 22, scope: !555)
!559 = !DILocation(line: 539, column: 3, scope: !555)
!560 = !DILocation(line: 0, scope: !535)
!561 = !DILocation(line: 542, column: 18, scope: !562)
!562 = distinct !DILexicalBlock(scope: !551, file: !3, line: 540, column: 8)
!563 = !DILocation(line: 543, column: 16, scope: !562)
!564 = !DILocation(line: 543, column: 10, scope: !562)
!565 = !DILocation(line: 544, column: 16, scope: !562)
!566 = !DILocation(line: 544, column: 10, scope: !562)
!567 = !DILocation(line: 545, column: 16, scope: !562)
!568 = !DILocation(line: 547, column: 16, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 547, column: 5)
!570 = distinct !DILexicalBlock(scope: !562, file: !3, line: 547, column: 5)
!571 = !DILocation(line: 547, column: 5, scope: !570)
!572 = !DILocation(line: 548, column: 11, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 548, column: 11)
!574 = distinct !DILexicalBlock(scope: !569, file: !3, line: 547, column: 26)
!575 = !DILocation(line: 548, column: 39, scope: !573)
!576 = !DILocation(line: 548, column: 11, scope: !574)
!577 = !DILocation(line: 549, column: 22, scope: !578)
!578 = distinct !DILexicalBlock(scope: !573, file: !3, line: 548, column: 47)
!579 = !DILocation(line: 549, column: 9, scope: !578)
!580 = !DILocation(line: 549, column: 26, scope: !578)
!581 = !DILocation(line: 550, column: 15, scope: !582)
!582 = distinct !DILexicalBlock(scope: !578, file: !3, line: 550, column: 13)
!583 = !DILocation(line: 550, column: 13, scope: !578)
!584 = !DILocation(line: 552, column: 41, scope: !585)
!585 = distinct !DILexicalBlock(scope: !582, file: !3, line: 550, column: 22)
!586 = !DILocation(line: 552, column: 23, scope: !585)
!587 = !DILocation(line: 553, column: 9, scope: !585)
!588 = !DILocation(line: 0, scope: !562)
!589 = !DILocation(line: 547, column: 22, scope: !569)
!590 = distinct !{!590, !571, !591, !266, !267}
!591 = !DILocation(line: 555, column: 5, scope: !570)
!592 = !DILocation(line: 556, column: 10, scope: !562)
!593 = !DILocation(line: 557, column: 24, scope: !562)
!594 = !DILocation(line: 557, column: 22, scope: !562)
!595 = !DILocation(line: 558, column: 33, scope: !562)
!596 = !DILocation(line: 558, column: 22, scope: !562)
!597 = !DILocation(line: 560, column: 16, scope: !562)
!598 = !DILocation(line: 560, column: 10, scope: !562)
!599 = !DILocation(line: 563, column: 16, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 563, column: 5)
!601 = distinct !DILexicalBlock(scope: !562, file: !3, line: 563, column: 5)
!602 = !DILocation(line: 563, column: 5, scope: !601)
!603 = !DILocation(line: 564, column: 11, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 564, column: 11)
!605 = distinct !DILexicalBlock(scope: !600, file: !3, line: 563, column: 26)
!606 = !DILocation(line: 564, column: 38, scope: !604)
!607 = !DILocation(line: 564, column: 11, scope: !605)
!608 = !DILocation(line: 565, column: 22, scope: !604)
!609 = !DILocation(line: 565, column: 9, scope: !604)
!610 = !DILocation(line: 565, column: 26, scope: !604)
!611 = !DILocation(line: 563, column: 22, scope: !600)
!612 = distinct !{!612, !602, !613, !266, !267}
!613 = !DILocation(line: 566, column: 5, scope: !601)
!614 = !DILocation(line: 567, column: 10, scope: !562)
!615 = !DILocation(line: 568, column: 24, scope: !562)
!616 = !DILocation(line: 568, column: 22, scope: !562)
!617 = !DILocation(line: 569, column: 24, scope: !562)
!618 = !DILocation(line: 569, column: 22, scope: !562)
!619 = !DILocation(line: 570, column: 24, scope: !562)
!620 = !DILocation(line: 570, column: 39, scope: !562)
!621 = !DILocation(line: 0, scope: !551)
!622 = !DILocation(line: 572, column: 1, scope: !535)
!623 = !DISubprogram(name: "pthread_mutex_init", scope: !271, file: !271, line: 725, type: !624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!624 = !DISubroutineType(types: !625)
!625 = !{!29, !626, !627}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !21, line: 36, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 32, size: 32, elements: !631)
!631 = !{!632, !636}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !630, file: !21, line: 34, baseType: !633, size: 32)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 4)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !630, file: !21, line: 35, baseType: !29, size: 32)
!637 = !DISubprogram(name: "pthread_cond_init", scope: !271, file: !271, line: 965, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!638 = !DISubroutineType(types: !639)
!639 = !{!29, !640, !642}
!640 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !643)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !21, line: 45, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !21, line: 41, size: 32, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !646, file: !21, line: 43, baseType: !633, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !646, file: !21, line: 44, baseType: !29, size: 32)
!650 = !DISubprogram(name: "time", scope: !3, file: !3, line: 157, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!651 = !DISubroutineType(types: !652)
!652 = !{!653, !188}
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !654, line: 7, baseType: !655)
!654 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !506, line: 160, baseType: !10)
!656 = !DISubprogram(name: "Load_Map", scope: !474, file: !474, line: 197, type: !657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !209}
!659 = !DISubprogram(name: "Compute_Normal", scope: !474, file: !474, line: 202, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!660 = !DISubprogram(name: "Compute_Opacity", scope: !474, file: !474, line: 219, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!661 = !DISubprogram(name: "Compute_Pre_View", scope: !474, file: !474, line: 242, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!662 = distinct !DISubprogram(name: "Allocate_Shading_Table", scope: !3, file: !3, line: 501, type: !663, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !665, !10}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!666 = !{!667, !668, !669}
!667 = !DILocalVariable(name: "address1", arg: 1, scope: !662, file: !3, line: 501, type: !665)
!668 = !DILocalVariable(name: "length", arg: 2, scope: !662, file: !3, line: 501, type: !10)
!669 = !DILocalVariable(name: "i", scope: !662, file: !3, line: 503, type: !10)
!670 = !DILocation(line: 0, scope: !662)
!671 = !DILocation(line: 505, column: 3, scope: !662)
!672 = !DILocation(line: 511, column: 24, scope: !662)
!673 = !DILocation(line: 511, column: 13, scope: !662)
!674 = !DILocation(line: 513, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !662, file: !3, line: 513, column: 7)
!676 = !DILocation(line: 513, column: 7, scope: !662)
!677 = !DILocation(line: 520, column: 14, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 520, column: 3)
!679 = distinct !DILexicalBlock(scope: !662, file: !3, line: 520, column: 3)
!680 = !DILocation(line: 520, column: 3, scope: !679)
!681 = !DILocation(line: 520, column: 43, scope: !678)
!682 = distinct !{!682, !680, !683, !266, !267}
!683 = !DILocation(line: 520, column: 45, scope: !679)
!684 = !DILocation(line: 514, column: 5, scope: !675)
!685 = !DILocation(line: 520, column: 30, scope: !678)
!686 = !DILocation(line: 520, column: 39, scope: !678)
!687 = !DILocation(line: 520, column: 24, scope: !678)
!688 = !DILocation(line: 522, column: 1, scope: !662)
!689 = distinct !DISubprogram(name: "Allocate_Image", scope: !3, file: !3, line: 429, type: !663, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !690)
!690 = !{!691, !692, !693}
!691 = !DILocalVariable(name: "address", arg: 1, scope: !689, file: !3, line: 429, type: !665)
!692 = !DILocalVariable(name: "length", arg: 2, scope: !689, file: !3, line: 429, type: !10)
!693 = !DILocalVariable(name: "i", scope: !689, file: !3, line: 431, type: !10)
!694 = !DILocation(line: 0, scope: !689)
!695 = !DILocation(line: 433, column: 3, scope: !689)
!696 = !DILocation(line: 435, column: 23, scope: !689)
!697 = !DILocation(line: 435, column: 12, scope: !689)
!698 = !DILocation(line: 437, column: 16, scope: !699)
!699 = distinct !DILexicalBlock(scope: !689, file: !3, line: 437, column: 7)
!700 = !DILocation(line: 437, column: 7, scope: !689)
!701 = !DILocation(line: 440, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 440, column: 3)
!703 = distinct !DILexicalBlock(scope: !689, file: !3, line: 440, column: 3)
!704 = !DILocation(line: 440, column: 3, scope: !703)
!705 = !DILocation(line: 440, column: 42, scope: !702)
!706 = distinct !{!706, !704, !707, !266, !267}
!707 = !DILocation(line: 440, column: 44, scope: !703)
!708 = !DILocation(line: 438, column: 4, scope: !699)
!709 = !DILocation(line: 440, column: 30, scope: !702)
!710 = !DILocation(line: 440, column: 38, scope: !702)
!711 = !DILocation(line: 440, column: 24, scope: !702)
!712 = !DILocation(line: 442, column: 1, scope: !689)
!713 = distinct !DISubprogram(name: "Lallocate_Image", scope: !3, file: !3, line: 465, type: !663, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!714 = !{!715, !716}
!715 = !DILocalVariable(name: "address", arg: 1, scope: !713, file: !3, line: 465, type: !665)
!716 = !DILocalVariable(name: "length", arg: 2, scope: !713, file: !3, line: 465, type: !10)
!717 = !DILocation(line: 0, scope: !713)
!718 = !DILocation(line: 467, column: 3, scope: !713)
!719 = !DILocation(line: 468, column: 23, scope: !713)
!720 = !DILocation(line: 468, column: 12, scope: !713)
!721 = !DILocation(line: 469, column: 16, scope: !722)
!722 = distinct !DILexicalBlock(scope: !713, file: !3, line: 469, column: 7)
!723 = !DILocation(line: 469, column: 7, scope: !713)
!724 = !DILocation(line: 470, column: 5, scope: !722)
!725 = !DILocation(line: 472, column: 1, scope: !713)
!726 = !DISubprogram(name: "Compute_Octree", scope: !474, file: !474, line: 210, type: !285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!727 = distinct !DISubprogram(name: "Allocate_MImage", scope: !3, file: !3, line: 445, type: !728, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !730, !10}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(name: "address", arg: 1, scope: !727, file: !3, line: 445, type: !730)
!733 = !DILocalVariable(name: "length", arg: 2, scope: !727, file: !3, line: 445, type: !10)
!734 = !DILocalVariable(name: "i", scope: !727, file: !3, line: 447, type: !10)
!735 = !DILocation(line: 0, scope: !727)
!736 = !DILocation(line: 449, column: 3, scope: !727)
!737 = !DILocation(line: 451, column: 24, scope: !727)
!738 = !DILocation(line: 451, column: 12, scope: !727)
!739 = !DILocation(line: 453, column: 16, scope: !740)
!740 = distinct !DILexicalBlock(scope: !727, file: !3, line: 453, column: 7)
!741 = !DILocation(line: 453, column: 7, scope: !727)
!742 = !DILocation(line: 460, column: 14, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 460, column: 3)
!744 = distinct !DILexicalBlock(scope: !727, file: !3, line: 460, column: 3)
!745 = !DILocation(line: 460, column: 3, scope: !744)
!746 = !DILocation(line: 460, column: 42, scope: !743)
!747 = distinct !{!747, !745, !748, !266, !267}
!748 = !DILocation(line: 460, column: 44, scope: !744)
!749 = !DILocation(line: 454, column: 5, scope: !740)
!750 = !DILocation(line: 460, column: 30, scope: !743)
!751 = !DILocation(line: 460, column: 38, scope: !743)
!752 = !DILocation(line: 460, column: 24, scope: !743)
!753 = !DILocation(line: 462, column: 1, scope: !727)
!754 = !DISubprogram(name: "Deallocate_Map", scope: !474, file: !474, line: 199, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "DENSITY", file: !107, line: 27, baseType: !108)
!760 = !DISubprogram(name: "pthread_mutex_lock", scope: !271, file: !271, line: 738, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!761 = !DISubroutineType(types: !762)
!762 = !{!29, !626}
!763 = !DISubprogram(name: "pthread_create", scope: !271, file: !271, line: 198, type: !764, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!764 = !DISubroutineType(types: !765)
!765 = !{!29, !766, !768, !109, !779}
!766 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !21, line: 62, baseType: !772)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !21, line: 56, size: 448, elements: !773)
!773 = !{!774, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !772, file: !21, line: 58, baseType: !775, size: 448)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 448, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 56)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !772, file: !21, line: 59, baseType: !10, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!780 = distinct !DISubprogram(name: "Render_Loop", scope: !3, file: !3, line: 274, type: !285, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791}
!782 = !DILocalVariable(name: "step", scope: !780, file: !3, line: 276, type: !10)
!783 = !DILocalVariable(name: "i", scope: !780, file: !3, line: 276, type: !10)
!784 = !DILocalVariable(name: "local_image_address", scope: !780, file: !3, line: 277, type: !105)
!785 = !DILocalVariable(name: "local_mask_image_address", scope: !780, file: !3, line: 278, type: !113)
!786 = !DILocalVariable(name: "outfile", scope: !780, file: !3, line: 279, type: !175)
!787 = !DILocalVariable(name: "image_partition", scope: !780, file: !3, line: 280, type: !10)
!788 = !DILocalVariable(name: "mask_image_partition", scope: !780, file: !3, line: 280, type: !10)
!789 = !DILocalVariable(name: "inv_num_nodes", scope: !780, file: !3, line: 281, type: !104)
!790 = !DILocalVariable(name: "my_node", scope: !780, file: !3, line: 282, type: !10)
!791 = !DILocalVariable(name: "dim", scope: !780, file: !3, line: 299, type: !29)
!792 = !DILocation(line: 279, column: 3, scope: !780)
!793 = !DILocation(line: 279, column: 8, scope: !780)
!794 = !DILocation(line: 284, column: 25, scope: !795)
!795 = distinct !DILexicalBlock(scope: !780, file: !3, line: 284, column: 3)
!796 = !DILocation(line: 284, column: 33, scope: !795)
!797 = !DILocation(line: 284, column: 4, scope: !795)
!798 = !DILocation(line: 285, column: 13, scope: !780)
!799 = !DILocation(line: 285, column: 26, scope: !780)
!800 = !DILocation(line: 0, scope: !780)
!801 = !DILocation(line: 286, column: 27, scope: !802)
!802 = distinct !DILexicalBlock(scope: !780, file: !3, line: 286, column: 3)
!803 = !DILocation(line: 286, column: 35, scope: !802)
!804 = !DILocation(line: 286, column: 4, scope: !802)
!805 = !DILocation(line: 287, column: 21, scope: !780)
!806 = !DILocation(line: 287, column: 20, scope: !780)
!807 = !DILocation(line: 294, column: 23, scope: !780)
!808 = !DILocation(line: 294, column: 19, scope: !780)
!809 = !DILocation(line: 295, column: 21, scope: !780)
!810 = !DILocation(line: 296, column: 26, scope: !780)
!811 = !DILocation(line: 303, column: 23, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 303, column: 5)
!813 = distinct !DILexicalBlock(scope: !814, file: !3, line: 303, column: 5)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 300, column: 30)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 300, column: 3)
!816 = distinct !DILexicalBlock(scope: !780, file: !3, line: 300, column: 3)
!817 = !DILocation(line: 300, column: 3, scope: !816)
!818 = !DILocation(line: 303, column: 22, scope: !812)
!819 = !DILocation(line: 303, column: 5, scope: !813)
!820 = !DILocation(line: 309, column: 13, scope: !821)
!821 = distinct !DILexicalBlock(scope: !812, file: !3, line: 303, column: 45)
!822 = !DILocation(line: 311, column: 29, scope: !821)
!823 = !DILocation(line: 311, column: 43, scope: !821)
!824 = !DILocation(line: 312, column: 34, scope: !821)
!825 = !DILocation(line: 312, column: 53, scope: !821)
!826 = !DILocation(line: 316, column: 23, scope: !827)
!827 = distinct !DILexicalBlock(scope: !821, file: !3, line: 315, column: 7)
!828 = !DILocation(line: 316, column: 31, scope: !827)
!829 = !DILocation(line: 316, column: 1, scope: !827)
!830 = !DILocation(line: 317, column: 2, scope: !827)
!831 = !DILocation(line: 317, column: 24, scope: !827)
!832 = !DILocation(line: 317, column: 34, scope: !827)
!833 = !DILocation(line: 318, column: 5, scope: !834)
!834 = distinct !DILexicalBlock(scope: !827, file: !3, line: 318, column: 5)
!835 = !DILocation(line: 318, column: 43, scope: !834)
!836 = !DILocation(line: 318, column: 39, scope: !834)
!837 = !DILocation(line: 318, column: 5, scope: !827)
!838 = !DILocation(line: 319, column: 36, scope: !839)
!839 = distinct !DILexicalBlock(scope: !834, file: !3, line: 318, column: 55)
!840 = !DILocation(line: 320, column: 50, scope: !839)
!841 = !DILocation(line: 320, column: 2, scope: !839)
!842 = !DILocation(line: 321, column: 1, scope: !839)
!843 = !DILocation(line: 318, column: 14, scope: !834)
!844 = !DILocation(line: 322, column: 45, scope: !845)
!845 = distinct !DILexicalBlock(scope: !834, file: !3, line: 321, column: 8)
!846 = !DILocation(line: 322, column: 2, scope: !845)
!847 = !DILocation(line: 324, column: 25, scope: !827)
!848 = !DILocation(line: 324, column: 33, scope: !827)
!849 = !DILocation(line: 324, column: 1, scope: !827)
!850 = !DILocation(line: 327, column: 22, scope: !851)
!851 = distinct !DILexicalBlock(scope: !821, file: !3, line: 327, column: 11)
!852 = !DILocation(line: 327, column: 31, scope: !851)
!853 = !DILocation(line: 327, column: 19, scope: !851)
!854 = !DILocation(line: 327, column: 11, scope: !821)
!855 = !DILocation(line: 335, column: 2, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 335, column: 2)
!857 = distinct !DILexicalBlock(scope: !851, file: !3, line: 334, column: 12)
!858 = !DILocation(line: 328, column: 36, scope: !859)
!859 = distinct !DILexicalBlock(scope: !860, file: !3, line: 328, column: 2)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 328, column: 2)
!861 = distinct !DILexicalBlock(scope: !851, file: !3, line: 327, column: 35)
!862 = !DILocation(line: 328, column: 35, scope: !859)
!863 = !DILocation(line: 328, column: 2, scope: !860)
!864 = !DILocation(line: 329, column: 29, scope: !859)
!865 = !DILocation(line: 329, column: 24, scope: !859)
!866 = !DILocation(line: 329, column: 27, scope: !859)
!867 = !DILocation(line: 328, column: 51, scope: !859)
!868 = distinct !{!868, !863, !869, !266, !267}
!869 = !DILocation(line: 329, column: 29, scope: !860)
!870 = !DILocation(line: 330, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !861, file: !3, line: 330, column: 6)
!872 = !DILocation(line: 330, column: 6, scope: !861)
!873 = !DILocation(line: 332, column: 31, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 331, column: 4)
!875 = distinct !DILexicalBlock(scope: !871, file: !3, line: 331, column: 4)
!876 = !DILocation(line: 332, column: 34, scope: !874)
!877 = !DILocation(line: 331, column: 63, scope: !874)
!878 = !DILocation(line: 331, column: 43, scope: !874)
!879 = !DILocation(line: 331, column: 42, scope: !874)
!880 = !DILocation(line: 331, column: 4, scope: !875)
!881 = distinct !{!881, !880, !882, !266, !267}
!882 = !DILocation(line: 332, column: 36, scope: !875)
!883 = !DILocation(line: 336, column: 29, scope: !884)
!884 = distinct !DILexicalBlock(scope: !856, file: !3, line: 335, column: 2)
!885 = !DILocation(line: 336, column: 24, scope: !884)
!886 = !DILocation(line: 336, column: 27, scope: !884)
!887 = !DILocation(line: 335, column: 32, scope: !884)
!888 = !DILocation(line: 335, column: 13, scope: !884)
!889 = distinct !{!889, !855, !890, !266, !267}
!890 = !DILocation(line: 336, column: 29, scope: !856)
!891 = !DILocation(line: 337, column: 6, scope: !892)
!892 = distinct !DILexicalBlock(scope: !857, file: !3, line: 337, column: 6)
!893 = !DILocation(line: 337, column: 6, scope: !857)
!894 = !DILocation(line: 339, column: 34, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !3, line: 338, column: 4)
!896 = distinct !DILexicalBlock(scope: !892, file: !3, line: 338, column: 4)
!897 = !DILocation(line: 342, column: 11, scope: !821)
!898 = !DILocation(line: 344, column: 2, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 342, column: 28)
!900 = distinct !DILexicalBlock(scope: !821, file: !3, line: 342, column: 11)
!901 = !DILocation(line: 348, column: 1, scope: !899)
!902 = !DILocation(line: 351, column: 23, scope: !903)
!903 = distinct !DILexicalBlock(scope: !821, file: !3, line: 350, column: 7)
!904 = !DILocation(line: 351, column: 31, scope: !903)
!905 = !DILocation(line: 351, column: 1, scope: !903)
!906 = !DILocation(line: 352, column: 2, scope: !903)
!907 = !DILocation(line: 352, column: 24, scope: !903)
!908 = !DILocation(line: 352, column: 34, scope: !903)
!909 = !DILocation(line: 353, column: 5, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !3, line: 353, column: 5)
!911 = !DILocation(line: 353, column: 43, scope: !910)
!912 = !DILocation(line: 353, column: 39, scope: !910)
!913 = !DILocation(line: 353, column: 5, scope: !903)
!914 = !DILocation(line: 354, column: 36, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 353, column: 55)
!916 = !DILocation(line: 355, column: 50, scope: !915)
!917 = !DILocation(line: 355, column: 2, scope: !915)
!918 = !DILocation(line: 356, column: 1, scope: !915)
!919 = !DILocation(line: 353, column: 14, scope: !910)
!920 = !DILocation(line: 357, column: 45, scope: !921)
!921 = distinct !DILexicalBlock(scope: !910, file: !3, line: 356, column: 8)
!922 = !DILocation(line: 357, column: 2, scope: !921)
!923 = !DILocation(line: 359, column: 25, scope: !903)
!924 = !DILocation(line: 359, column: 33, scope: !903)
!925 = !DILocation(line: 359, column: 1, scope: !903)
!926 = !DILocation(line: 362, column: 37, scope: !821)
!927 = !DILocation(line: 362, column: 7, scope: !821)
!928 = !DILocation(line: 362, column: 35, scope: !821)
!929 = !DILocation(line: 363, column: 7, scope: !821)
!930 = !DILocation(line: 363, column: 33, scope: !821)
!931 = !DILocation(line: 365, column: 7, scope: !821)
!932 = !DILocation(line: 367, column: 11, scope: !821)
!933 = !DILocation(line: 368, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 368, column: 6)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 367, column: 28)
!936 = distinct !DILexicalBlock(scope: !821, file: !3, line: 367, column: 11)
!937 = !DILocation(line: 368, column: 19, scope: !934)
!938 = !DILocation(line: 368, column: 6, scope: !935)
!939 = !DILocation(line: 370, column: 48, scope: !940)
!940 = distinct !DILexicalBlock(scope: !934, file: !3, line: 368, column: 24)
!941 = !DILocation(line: 370, column: 44, scope: !940)
!942 = !DILocation(line: 370, column: 40, scope: !940)
!943 = !DILocation(line: 370, column: 61, scope: !940)
!944 = !DILocation(line: 370, column: 4, scope: !940)
!945 = !DILocation(line: 382, column: 29, scope: !940)
!946 = !DILocation(line: 382, column: 42, scope: !940)
!947 = !DILocation(line: 382, column: 69, scope: !940)
!948 = !DILocation(line: 382, column: 1, scope: !940)
!949 = !DILocation(line: 383, column: 2, scope: !940)
!950 = !DILocation(line: 392, column: 11, scope: !951)
!951 = distinct !DILexicalBlock(scope: !934, file: !3, line: 383, column: 9)
!952 = !DILocation(line: 393, column: 30, scope: !951)
!953 = !DILocation(line: 393, column: 43, scope: !951)
!954 = !DILocation(line: 393, column: 70, scope: !951)
!955 = !DILocation(line: 393, column: 1, scope: !951)
!956 = !DILocation(line: 303, column: 41, scope: !812)
!957 = distinct !{!957, !819, !958, !266, !267}
!958 = !DILocation(line: 396, column: 5, scope: !813)
!959 = !DILocation(line: 300, column: 26, scope: !815)
!960 = !DILocation(line: 300, column: 18, scope: !815)
!961 = distinct !{!961, !817, !962, !266, !267}
!962 = !DILocation(line: 398, column: 3, scope: !816)
!963 = !DILocation(line: 400, column: 1, scope: !780)
!964 = !DISubprogram(name: "pthread_mutex_unlock", scope: !271, file: !271, line: 756, type: !761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!965 = !DISubprogram(name: "pthread_cond_broadcast", scope: !271, file: !271, line: 978, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!966 = !DISubroutineType(types: !967)
!967 = !{!29, !641}
!968 = !DISubprogram(name: "pthread_cond_wait", scope: !271, file: !271, line: 986, type: !969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!969 = !DISubroutineType(types: !970)
!970 = !{!29, !640, !971}
!971 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !626)
!972 = !DISubprogram(name: "Select_View", scope: !474, file: !474, line: 243, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!973 = !DISubroutineType(types: !974)
!974 = !{null, !116, !10}
!975 = !DISubprogram(name: "Render", scope: !474, file: !474, line: 237, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !10}
!978 = distinct !DISubprogram(name: "WriteGrayscaleTIFF", scope: !3, file: !3, line: 584, type: !979, scopeLine: 585, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !981)
!979 = !DISubroutineType(types: !980)
!980 = !{!10, !209, !10, !10, !10, !115}
!981 = !{!982, !983, !984, !985, !986, !987, !988, !989, !990, !992}
!982 = !DILocalVariable(name: "filename", arg: 1, scope: !978, file: !3, line: 584, type: !209)
!983 = !DILocalVariable(name: "width", arg: 2, scope: !978, file: !3, line: 584, type: !10)
!984 = !DILocalVariable(name: "height", arg: 3, scope: !978, file: !3, line: 584, type: !10)
!985 = !DILocalVariable(name: "scanbytes", arg: 4, scope: !978, file: !3, line: 584, type: !10)
!986 = !DILocalVariable(name: "data", arg: 5, scope: !978, file: !3, line: 584, type: !115)
!987 = !DILocalVariable(name: "y", scope: !978, file: !3, line: 586, type: !10)
!988 = !DILocalVariable(name: "factor", scope: !978, file: !3, line: 587, type: !116)
!989 = !DILocalVariable(name: "c", scope: !978, file: !3, line: 588, type: !10)
!990 = !DILocalVariable(name: "cmap", scope: !978, file: !3, line: 589, type: !991)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16384, elements: !125)
!992 = !DILocalVariable(name: "outimage", scope: !978, file: !3, line: 590, type: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "TIFF", file: !995, line: 39, baseType: !996)
!995 = !DIFile(filename: "./libtiff/tiffio.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "be1851600f84a41c6d0e808a316e0387")
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "tiff", file: !995, line: 39, flags: DIFlagFwdDecl)
!997 = !DILocation(line: 0, scope: !978)
!998 = !DILocation(line: 589, column: 5, scope: !978)
!999 = !DILocation(line: 589, column: 19, scope: !978)
!1000 = !DILocation(line: 594, column: 5, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !978, file: !3, line: 594, column: 5)
!1002 = !DILocation(line: 595, column: 26, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 594, column: 5)
!1004 = !DILocation(line: 595, column: 28, scope: !1003)
!1005 = !DILocation(line: 595, column: 19, scope: !1003)
!1006 = !DILocation(line: 595, column: 9, scope: !1003)
!1007 = !DILocation(line: 595, column: 17, scope: !1003)
!1008 = !DILocation(line: 594, column: 27, scope: !1003)
!1009 = !DILocation(line: 594, column: 19, scope: !1003)
!1010 = distinct !{!1010, !1000, !1011, !266, !267}
!1011 = !DILocation(line: 595, column: 36, scope: !1001)
!1012 = !DILocation(line: 598, column: 21, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !978, file: !3, line: 598, column: 9)
!1014 = !DILocation(line: 598, column: 46, scope: !1013)
!1015 = !DILocation(line: 598, column: 9, scope: !978)
!1016 = !DILocation(line: 600, column: 5, scope: !978)
!1017 = !DILocation(line: 601, column: 5, scope: !978)
!1018 = !DILocation(line: 602, column: 5, scope: !978)
!1019 = !DILocation(line: 603, column: 5, scope: !978)
!1020 = !DILocation(line: 604, column: 5, scope: !978)
!1021 = !DILocation(line: 605, column: 5, scope: !978)
!1022 = !DILocation(line: 606, column: 5, scope: !978)
!1023 = !DILocation(line: 607, column: 5, scope: !978)
!1024 = !DILocation(line: 608, column: 5, scope: !978)
!1025 = !DILocation(line: 611, column: 19, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 611, column: 5)
!1027 = distinct !DILexicalBlock(scope: !978, file: !3, line: 611, column: 5)
!1028 = !DILocation(line: 611, column: 5, scope: !1027)
!1029 = !DILocation(line: 612, column: 48, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 612, column: 13)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 611, column: 34)
!1032 = !DILocation(line: 612, column: 14, scope: !1030)
!1033 = !DILocation(line: 612, column: 13, scope: !1031)
!1034 = !DILocation(line: 616, column: 14, scope: !1031)
!1035 = !DILocation(line: 611, column: 30, scope: !1026)
!1036 = distinct !{!1036, !1028, !1037, !266, !267}
!1037 = !DILocation(line: 617, column: 5, scope: !1027)
!1038 = !DILocation(line: 622, column: 1, scope: !978)
!1039 = distinct !DISubprogram(name: "Error", scope: !3, file: !3, line: 409, type: !1040, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !209, null}
!1042 = !{!1043, !1044, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1043 = !DILocalVariable(name: "string", arg: 1, scope: !1039, file: !3, line: 409, type: !209)
!1044 = !DILocalVariable(name: "ap", scope: !1039, file: !3, line: 411, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !476, line: 52, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1047, line: 32, baseType: !1048)
!1047 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1049, baseType: !1050)
!1049 = !DIFile(filename: "main.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend")
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1051, size: 192, elements: !512)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1051, file: !1049, line: 411, baseType: !31, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1051, file: !1049, line: 411, baseType: !31, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1051, file: !1049, line: 411, baseType: !112, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1051, file: !1049, line: 411, baseType: !112, size: 64, offset: 128)
!1057 = !DILocalVariable(name: "arg1", scope: !1039, file: !3, line: 412, type: !209)
!1058 = !DILocalVariable(name: "arg2", scope: !1039, file: !3, line: 412, type: !209)
!1059 = !DILocalVariable(name: "arg3", scope: !1039, file: !3, line: 412, type: !209)
!1060 = !DILocalVariable(name: "arg4", scope: !1039, file: !3, line: 412, type: !209)
!1061 = !DILocalVariable(name: "arg5", scope: !1039, file: !3, line: 412, type: !209)
!1062 = !DILocalVariable(name: "arg6", scope: !1039, file: !3, line: 412, type: !209)
!1063 = !DILocalVariable(name: "arg7", scope: !1039, file: !3, line: 412, type: !209)
!1064 = !DILocalVariable(name: "arg8", scope: !1039, file: !3, line: 412, type: !209)
!1065 = !DILocation(line: 0, scope: !1039)
!1066 = !DILocation(line: 411, column: 2, scope: !1039)
!1067 = !DILocation(line: 411, column: 10, scope: !1039)
!1068 = !DILocation(line: 414, column: 2, scope: !1039)
!1069 = !DILocation(line: 415, column: 9, scope: !1039)
!1070 = !DILocation(line: 416, column: 9, scope: !1039)
!1071 = !DILocation(line: 417, column: 9, scope: !1039)
!1072 = !DILocation(line: 418, column: 9, scope: !1039)
!1073 = !DILocation(line: 419, column: 9, scope: !1039)
!1074 = !DILocation(line: 420, column: 9, scope: !1039)
!1075 = !DILocation(line: 421, column: 9, scope: !1039)
!1076 = !DILocation(line: 422, column: 9, scope: !1039)
!1077 = !DILocation(line: 423, column: 2, scope: !1039)
!1078 = !DILocation(line: 424, column: 10, scope: !1039)
!1079 = !DILocation(line: 424, column: 2, scope: !1039)
!1080 = !DILocation(line: 425, column: 2, scope: !1039)
!1081 = distinct !DISubprogram(name: "Store_Image", scope: !3, file: !3, line: 475, type: !657, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1082)
!1082 = !{!1083, !1084, !1085, !1086, !1087}
!1083 = !DILocalVariable(name: "filename", arg: 1, scope: !1081, file: !3, line: 475, type: !209)
!1084 = !DILocalVariable(name: "local_filename", scope: !1081, file: !3, line: 477, type: !175)
!1085 = !DILocalVariable(name: "fd", scope: !1081, file: !3, line: 478, type: !10)
!1086 = !DILocalVariable(name: "pix_version", scope: !1081, file: !3, line: 479, type: !36)
!1087 = !DILocalVariable(name: "local_image_len", scope: !1081, file: !3, line: 480, type: !1088)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 48, elements: !136)
!1089 = !DILocation(line: 0, scope: !1081)
!1090 = !DILocation(line: 477, column: 3, scope: !1081)
!1091 = !DILocation(line: 477, column: 8, scope: !1081)
!1092 = !DILocation(line: 479, column: 3, scope: !1081)
!1093 = !DILocation(line: 480, column: 3, scope: !1081)
!1094 = !DILocation(line: 480, column: 9, scope: !1081)
!1095 = !DILocation(line: 483, column: 24, scope: !1081)
!1096 = !DILocation(line: 483, column: 22, scope: !1081)
!1097 = !DILocation(line: 484, column: 24, scope: !1081)
!1098 = !DILocation(line: 484, column: 3, scope: !1081)
!1099 = !DILocation(line: 484, column: 22, scope: !1081)
!1100 = !DILocation(line: 485, column: 3, scope: !1081)
!1101 = !DILocation(line: 485, column: 22, scope: !1081)
!1102 = !DILocation(line: 487, column: 15, scope: !1081)
!1103 = !DILocation(line: 488, column: 3, scope: !1081)
!1104 = !DILocation(line: 489, column: 3, scope: !1081)
!1105 = !DILocation(line: 490, column: 8, scope: !1081)
!1106 = !DILocation(line: 491, column: 3, scope: !1081)
!1107 = !DILocation(line: 493, column: 3, scope: !1081)
!1108 = !DILocation(line: 494, column: 3, scope: !1081)
!1109 = !DILocation(line: 496, column: 18, scope: !1081)
!1110 = !DILocation(line: 496, column: 39, scope: !1081)
!1111 = !DILocation(line: 496, column: 3, scope: !1081)
!1112 = !DILocation(line: 497, column: 3, scope: !1081)
!1113 = !DILocation(line: 498, column: 1, scope: !1081)
!1114 = !DISubprogram(name: "Create_File", scope: !474, file: !474, line: 173, type: !1115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!29, !209}
!1117 = !DISubprogram(name: "Write_Shorts", scope: !474, file: !474, line: 176, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !29, !115, !10}
!1120 = !DISubprogram(name: "Write_Longs", scope: !474, file: !474, line: 177, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1121 = !DISubprogram(name: "Write_Bytes", scope: !474, file: !474, line: 175, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1122 = !DISubprogram(name: "Close_File", scope: !474, file: !474, line: 181, type: !1123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !29}
!1125 = !DISubprogram(name: "TIFFOpen", scope: !995, file: !995, line: 124, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!993, !209, !209}
!1128 = !DISubprogram(name: "TIFFSetField", scope: !995, file: !995, line: 110, type: !1129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!29, !993, !29, null}
!1131 = !DISubprogram(name: "TIFFWriteScanline", scope: !995, file: !995, line: 133, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!29, !993, !115, !31, !31}
!1134 = !DISubprogram(name: "TIFFClose", scope: !995, file: !995, line: 87, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !274)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !993}
