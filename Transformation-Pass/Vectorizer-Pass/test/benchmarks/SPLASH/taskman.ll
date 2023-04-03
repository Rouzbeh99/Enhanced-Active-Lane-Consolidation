; ModuleID = 'taskman.c'
source_filename = "taskman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.4 = type { [4096 x i8], i64, ptr, i64, [4096 x i8] }
%struct.Global = type { i64, %union.pthread_mutex_t, [1024 x %struct.Task_Queue], [3276800 x %struct._task], %union.pthread_mutex_t, ptr, %union.pthread_mutex_t, i64, %struct.Rgb, %struct.Rgb, float, i64, %union.pthread_mutex_t, i64, i64, [1024 x %struct.Patch_Cost], %struct.anon, i64, %union.pthread_mutex_t, i64, %union.pthread_mutex_t, %union.pthread_mutex_t, ptr, i64, i64, [1024 x %struct._patch], %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, ptr, i64, ptr, %union.pthread_mutex_t, i64, ptr, %union.pthread_mutex_t, i64, ptr, [3900 x %struct.Shared_Lock], [1024 x %struct.StatisticalInfo] }
%struct.Task_Queue = type { [4096 x i8], %union.pthread_mutex_t, ptr, ptr, i64, %union.pthread_mutex_t, i64, ptr, [4096 x i8] }
%struct._task = type { i64, ptr, %union.anon }
%union.anon = type { %struct.Refinement_Task }
%struct.Refinement_Task = type { ptr, ptr, float, i64 }
%struct.Rgb = type { float, float, float }
%struct.Patch_Cost = type { ptr, ptr, i64, i64, i64, [11 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon.0, %union.anon.2, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon.0 = type { i64 }
%union.anon.2 = type { i64 }
%struct._patch = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.Vertex, %struct.Vertex, %struct.Vertex, %struct.PlaneEqu, float, %struct.Rgb, %struct.Rgb, ptr, ptr, ptr, ptr, i64 }
%struct.Vertex = type { float, float, float }
%struct.PlaneEqu = type { %struct.Vertex, float }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, ptr }
%struct.Modeling_Task = type { i64, ptr }
%struct.BSP_Task = type { ptr, ptr }
%struct.Ray_Task = type { i64, ptr }
%struct.Visibility_Task = type { ptr, ptr, i64, ptr }
%struct.RadAvg_Task = type { ptr, i64, i64 }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._interact = type { ptr, ptr, float, float, float, float }

@taskqueue_id = external local_unnamed_addr global [0 x i64], align 8
@n_taskqueues = external local_unnamed_addr global i64, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [39 x i8] c"Panic:process_tasks:Illegal task type\0A\00", align 1
@global = external local_unnamed_addr global ptr, align 8
@n_processors = external local_unnamed_addr global i64, align 8
@n_tasks_per_queue = external local_unnamed_addr global i64, align 8
@N_inter_parallel_bf_refine = external local_unnamed_addr global i64, align 8
@N_visibility_per_task = external local_unnamed_addr global i64, align 8
@task_struct = dso_local local_unnamed_addr global [1024 x %struct.anon.4] zeroinitializer, align 16, !dbg !0
@.str.1 = private unnamed_addr constant [26 x i8] c"Panic(P%ld):No free task\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"  Local %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"  Q0 free %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  Q0 task %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Task (Ray)  (patch ID %ld)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Task (Visibility)  (patch ID %ld)\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Task(Illegal task type %ld)\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"TaskQ: %ld tasks in the queue\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@str = private unnamed_addr constant [14 x i8] c"Task (RadAvg)\00", align 1
@str.15 = private unnamed_addr constant [21 x i8] c"Task (FF Refinement)\00", align 1
@str.16 = private unnamed_addr constant [11 x i8] c"Task (BSP)\00", align 1
@str.17 = private unnamed_addr constant [13 x i8] c"Task (Model)\00", align 1
@str.18 = private unnamed_addr constant [12 x i8] c"Task (NULL)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @process_tasks(i64 noundef %process_id) local_unnamed_addr #0 !dbg !226 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !230, metadata !DIExpression()), !dbg !236
  %arrayidx = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id
  br label %retry_entry, !dbg !237

retry_entry.loopexit:                             ; preds = %if.end38
  %pbar_count51.le = getelementptr inbounds %struct.Global, ptr %27, i64 0, i32 17, !dbg !238
  %dec = add nsw i64 %28, -1, !dbg !239
  store i64 %dec, ptr %pbar_count51.le, align 8, !dbg !239
  %pbar_lock46 = getelementptr inbounds %struct.Global, ptr %27, i64 0, i32 18, !dbg !242
  %call47 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %pbar_lock46) #11, !dbg !244
  call void @llvm.dbg.value(metadata i1 undef, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !236
  br label %retry_entry, !dbg !245

retry_entry:                                      ; preds = %retry_entry.loopexit, %entry
  call void @llvm.dbg.label(metadata !235), !dbg !246
  %0 = load i64, ptr %arrayidx, align 8, !dbg !247
  %1 = load i64, ptr @n_taskqueues, align 8, !dbg !247
  %call = tail call ptr @dequeue_task(i64 noundef %0, i64 noundef %1, i64 noundef %process_id), !dbg !247
  call void @llvm.dbg.value(metadata ptr %call, metadata !231, metadata !DIExpression()), !dbg !236
  %tobool.not109 = icmp eq ptr %call, null, !dbg !245
  br i1 %tobool.not109, label %while.end, label %while.body, !dbg !245

while.body:                                       ; preds = %retry_entry, %sw.epilog
  %t.0110 = phi ptr [ %call22, %sw.epilog ], [ %call, %retry_entry ]
  call void @llvm.dbg.value(metadata ptr %t.0110, metadata !231, metadata !DIExpression()), !dbg !236
  %2 = load i64, ptr %t.0110, align 8, !dbg !248
  switch i64 %2, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
    i64 4, label %sw.bb5
    i64 8, label %sw.bb8
    i64 32, label %sw.bb10
    i64 16, label %sw.bb16
  ], !dbg !250

sw.bb:                                            ; preds = %while.body
  %task = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !251
  %model = getelementptr inbounds %struct.Modeling_Task, ptr %task, i64 0, i32 1, !dbg !253
  %3 = load ptr, ptr %model, align 8, !dbg !253
  %4 = load i64, ptr %task, align 8, !dbg !254
  tail call void @process_model(ptr noundef %3, i64 noundef %4, i64 noundef %process_id) #11, !dbg !255
  br label %sw.epilog, !dbg !256

sw.bb2:                                           ; preds = %while.body
  %task3 = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !257
  %5 = load ptr, ptr %task3, align 8, !dbg !258
  %parent = getelementptr inbounds %struct.BSP_Task, ptr %task3, i64 0, i32 1, !dbg !259
  %6 = load ptr, ptr %parent, align 8, !dbg !259
  tail call void @define_patch(ptr noundef %5, ptr noundef %6, i64 noundef %process_id) #11, !dbg !260
  br label %sw.epilog, !dbg !261

sw.bb5:                                           ; preds = %while.body
  %task6 = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !262
  %7 = load ptr, ptr %task6, align 8, !dbg !263
  %e2 = getelementptr inbounds %struct.Refinement_Task, ptr %task6, i64 0, i32 1, !dbg !264
  %8 = load ptr, ptr %e2, align 8, !dbg !264
  tail call void @ff_refine_elements(ptr noundef %7, ptr noundef %8, i64 noundef 0, i64 noundef %process_id) #11, !dbg !265
  br label %sw.epilog, !dbg !266

sw.bb8:                                           ; preds = %while.body
  %task9 = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !267
  %e = getelementptr inbounds %struct.Ray_Task, ptr %task9, i64 0, i32 1, !dbg !268
  %9 = load ptr, ptr %e, align 8, !dbg !268
  tail call void @process_rays(ptr noundef %9, i64 noundef %process_id) #11, !dbg !269
  br label %sw.epilog, !dbg !270

sw.bb10:                                          ; preds = %while.body
  %task11 = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !271
  %10 = load ptr, ptr %task11, align 8, !dbg !272
  %inter = getelementptr inbounds %struct.Visibility_Task, ptr %task11, i64 0, i32 1, !dbg !273
  %11 = load ptr, ptr %inter, align 8, !dbg !273
  %n_inter = getelementptr inbounds %struct.Visibility_Task, ptr %task11, i64 0, i32 2, !dbg !274
  %12 = load i64, ptr %n_inter, align 8, !dbg !274
  %k = getelementptr inbounds %struct.Visibility_Task, ptr %task11, i64 0, i32 3, !dbg !275
  %13 = load ptr, ptr %k, align 8, !dbg !275
  tail call void @visibility_task(ptr noundef %10, ptr noundef %11, i64 noundef %12, ptr noundef %13, i64 noundef %process_id) #11, !dbg !276
  br label %sw.epilog, !dbg !277

sw.bb16:                                          ; preds = %while.body
  %task17 = getelementptr inbounds %struct._task, ptr %t.0110, i64 0, i32 2, !dbg !278
  %14 = load ptr, ptr %task17, align 8, !dbg !279
  %mode = getelementptr inbounds %struct.RadAvg_Task, ptr %task17, i64 0, i32 2, !dbg !280
  %15 = load i64, ptr %mode, align 8, !dbg !280
  tail call void @radiosity_averaging(ptr noundef %14, i64 noundef %15, i64 noundef %process_id) #11, !dbg !281
  br label %sw.epilog, !dbg !282

sw.default:                                       ; preds = %while.body
  %16 = load ptr, ptr @stderr, align 8, !dbg !283
  %17 = tail call i64 @fwrite(ptr nonnull @.str, i64 38, i64 1, ptr %16) #12, !dbg !284
  br label %sw.epilog, !dbg !285

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb10, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  tail call void @free_task(ptr noundef nonnull %t.0110, i64 noundef %process_id), !dbg !286
  %18 = load i64, ptr %arrayidx, align 8, !dbg !287
  %19 = load i64, ptr @n_taskqueues, align 8, !dbg !287
  %call22 = tail call ptr @dequeue_task(i64 noundef %18, i64 noundef %19, i64 noundef %process_id), !dbg !287
  call void @llvm.dbg.value(metadata ptr %call22, metadata !231, metadata !DIExpression()), !dbg !236
  %tobool.not = icmp eq ptr %call22, null, !dbg !245
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !245, !llvm.loop !288

while.end:                                        ; preds = %sw.epilog, %retry_entry
  %20 = load ptr, ptr @global, align 8, !dbg !292
  %pbar_lock = getelementptr inbounds %struct.Global, ptr %20, i64 0, i32 18, !dbg !294
  %call23 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %pbar_lock) #11, !dbg !295
  %21 = load ptr, ptr @global, align 8, !dbg !296
  %pbar_count = getelementptr inbounds %struct.Global, ptr %21, i64 0, i32 17, !dbg !298
  %22 = load i64, ptr %pbar_count, align 8, !dbg !298
  %23 = load i64, ptr @n_processors, align 8, !dbg !299
  %cmp.not = icmp slt i64 %22, %23, !dbg !300
  %.op = add nsw i64 %22, 1, !dbg !301
  %inc = select i1 %cmp.not, i64 %.op, i64 1, !dbg !301
  store i64 %inc, ptr %pbar_count, align 8, !dbg !301
  %cmp27.not = icmp slt i64 %inc, %23, !dbg !302
  call void @llvm.dbg.value(metadata i64 undef, metadata !232, metadata !DIExpression()), !dbg !236
  %pbar_lock57113 = getelementptr inbounds %struct.Global, ptr %21, i64 0, i32 18, !dbg !236
  %call58114 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %pbar_lock57113) #11, !dbg !236
  call void @llvm.dbg.value(metadata i1 %cmp27.not, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !236
  br i1 %cmp27.not, label %while.body34, label %while.end59, !dbg !303

while.body34:                                     ; preds = %while.end, %cleanup
  %call35 = tail call i64 @_process_task_wait_loop(), !dbg !304
  %tobool36.not = icmp eq i64 %call35, 0, !dbg !304
  br i1 %tobool36.not, label %if.end38, label %while.end59, !dbg !306

if.end38:                                         ; preds = %while.body34
  %24 = load i64, ptr %arrayidx, align 8, !dbg !307
  %25 = load i64, ptr @n_taskqueues, align 8, !dbg !308
  %call40 = tail call i32 @peek_dequeue(i64 noundef %24, i64 noundef %25, i64 undef), !dbg !309
  call void @llvm.dbg.value(metadata i32 %call40, metadata !233, metadata !DIExpression()), !dbg !238
  %tobool41.not = icmp eq i32 %call40, 0, !dbg !310
  %26 = load ptr, ptr @global, align 8, !dbg !238
  %pbar_lock49 = getelementptr inbounds %struct.Global, ptr %26, i64 0, i32 18, !dbg !238
  %call50 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %pbar_lock49) #11, !dbg !238
  %27 = load ptr, ptr @global, align 8, !dbg !238
  %pbar_count51 = getelementptr inbounds %struct.Global, ptr %27, i64 0, i32 17, !dbg !238
  %28 = load i64, ptr %pbar_count51, align 8, !dbg !238
  br i1 %tobool41.not, label %cleanup, label %retry_entry.loopexit, !dbg !311

cleanup:                                          ; preds = %if.end38
  %29 = load i64, ptr @n_processors, align 8, !dbg !312
  %cmp52.not = icmp slt i64 %28, %29, !dbg !313
  call void @llvm.dbg.value(metadata i1 undef, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !236
  %pbar_lock57 = getelementptr inbounds %struct.Global, ptr %27, i64 0, i32 18, !dbg !236
  %call58 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %pbar_lock57) #11, !dbg !236
  call void @llvm.dbg.value(metadata i1 %cmp52.not, metadata !232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !236
  br i1 %cmp52.not, label %while.body34, label %while.end59, !dbg !303

while.end59:                                      ; preds = %while.end, %cleanup, %while.body34
  %30 = load ptr, ptr @global, align 8, !dbg !314
  %barrier = getelementptr inbounds %struct.Global, ptr %30, i64 0, i32 16, !dbg !316
  %call60 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %barrier) #11, !dbg !317
  %31 = load ptr, ptr @global, align 8, !dbg !318
  %bar_teller = getelementptr inbounds %struct.Global, ptr %31, i64 0, i32 16, i32 2, !dbg !319
  %32 = load i32, ptr %bar_teller, align 8, !dbg !320
  %inc62 = add i32 %32, 1, !dbg !320
  store i32 %inc62, ptr %bar_teller, align 8, !dbg !320
  %conv65 = zext i32 %inc62 to i64, !dbg !321
  %33 = load i64, ptr @n_processors, align 8, !dbg !323
  %cmp66 = icmp eq i64 %33, %conv65, !dbg !324
  br i1 %cmp66, label %if.then68, label %if.else, !dbg !325

if.then68:                                        ; preds = %while.end59
  store i32 0, ptr %bar_teller, align 8, !dbg !326
  %bar_cond = getelementptr inbounds %struct.Global, ptr %31, i64 0, i32 16, i32 1, !dbg !328
  %call72 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #11, !dbg !329
  br label %if.end78, !dbg !330

if.else:                                          ; preds = %while.end59
  %barrier63 = getelementptr inbounds %struct.Global, ptr %31, i64 0, i32 16, !dbg !331
  %bar_cond74 = getelementptr inbounds %struct.Global, ptr %31, i64 0, i32 16, i32 1, !dbg !332
  %call77 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond74, ptr noundef nonnull %barrier63) #11, !dbg !334
  br label %if.end78

if.end78:                                         ; preds = %if.else, %if.then68
  %34 = load ptr, ptr @global, align 8, !dbg !335
  %barrier79 = getelementptr inbounds %struct.Global, ptr %34, i64 0, i32 16, !dbg !336
  %call81 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %barrier79) #11, !dbg !337
  ret void, !dbg !338
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @dequeue_task(i64 noundef %qid, i64 noundef %max_visit, i64 noundef %process_id) local_unnamed_addr #0 !dbg !339 {
entry:
  call void @llvm.dbg.value(metadata i64 %qid, metadata !343, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %max_visit, metadata !344, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !345, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr null, metadata !360, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 0, metadata !362, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 -1, metadata !363, metadata !DIExpression()), !dbg !365
  %0 = load i64, ptr @n_taskqueues, align 8, !dbg !366
  %1 = tail call i64 @llvm.smin.i64(i64 %0, i64 %max_visit), !dbg !368
  call void @llvm.dbg.value(metadata i64 %1, metadata !344, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %qid, metadata !343, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 -1, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 0, metadata !362, metadata !DIExpression()), !dbg !365
  %cmp182 = icmp sgt i64 %1, 0, !dbg !369
  br i1 %cmp182, label %while.body, label %while.end, !dbg !370

while.body:                                       ; preds = %entry, %if.end45
  %qid.addr.085 = phi i64 [ %qid.addr.1, %if.end45 ], [ %qid, %entry ]
  %sign.084 = phi i64 [ %sub36, %if.end45 ], [ -1, %entry ]
  %visit_count.083 = phi i64 [ %inc, %if.end45 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %qid.addr.085, metadata !343, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %sign.084, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %visit_count.083, metadata !362, metadata !DIExpression()), !dbg !365
  %2 = load ptr, ptr @global, align 8, !dbg !371
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %qid.addr.085), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !365
  %q_lock = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.085, i32 1, !dbg !373
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %q_lock) #11, !dbg !375
  %n_tasks = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.085, i32 4, !dbg !376
  %3 = load i64, ptr %n_tasks, align 8, !dbg !376
  %cmp2 = icmp sgt i64 %3, 0, !dbg !378
  br i1 %cmp2, label %if.then3, label %if.end32, !dbg !379

if.then3:                                         ; preds = %while.body
  %top = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.085, i32 2, !dbg !380
  %4 = load ptr, ptr %top, align 8, !dbg !380
  %tobool.not = icmp eq ptr %4, null, !dbg !383
  br i1 %tobool.not, label %if.end29, label %if.then4, !dbg !384

if.then4:                                         ; preds = %if.then3
  %arrayidx5 = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !385
  %5 = load i64, ptr %arrayidx5, align 8, !dbg !385
  %cmp6 = icmp eq i64 %qid.addr.085, %5, !dbg !388
  br i1 %cmp6, label %if.then7, label %for.cond, !dbg !389

if.then7:                                         ; preds = %if.then4
  call void @llvm.dbg.value(metadata ptr %4, metadata !360, metadata !DIExpression()), !dbg !365
  %next = getelementptr inbounds %struct._task, ptr %4, i64 0, i32 1, !dbg !390
  %6 = load ptr, ptr %next, align 8, !dbg !390
  store ptr %6, ptr %top, align 8, !dbg !392
  %cmp11 = icmp eq ptr %6, null, !dbg !393
  br i1 %cmp11, label %if.end29.sink.split.sink.split, label %if.end29.sink.split, !dbg !395

for.cond:                                         ; preds = %if.then4, %for.cond
  %t.0 = phi ptr [ %7, %for.cond ], [ %4, %if.then4 ], !dbg !396
  %prev.0 = phi ptr [ %t.0, %for.cond ], [ null, %if.then4 ], !dbg !396
  call void @llvm.dbg.value(metadata ptr %prev.0, metadata !361, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata ptr %t.0, metadata !360, metadata !DIExpression()), !dbg !365
  %next16 = getelementptr inbounds %struct._task, ptr %t.0, i64 0, i32 1, !dbg !399
  %7 = load ptr, ptr %next16, align 8, !dbg !399
  %tobool17.not = icmp eq ptr %7, null, !dbg !401
  br i1 %tobool17.not, label %for.end, label %for.cond, !dbg !401, !llvm.loop !402

for.end:                                          ; preds = %for.cond
  %cmp19 = icmp eq ptr %prev.0, null, !dbg !404
  br i1 %cmp19, label %if.then20, label %if.else22, !dbg !406

if.then20:                                        ; preds = %for.end
  store ptr null, ptr %top, align 8, !dbg !407
  br label %if.end29.sink.split.sink.split, !dbg !408

if.else22:                                        ; preds = %for.end
  %next23 = getelementptr inbounds %struct._task, ptr %prev.0, i64 0, i32 1, !dbg !409
  store ptr null, ptr %next23, align 8, !dbg !410
  %.pre = load i64, ptr %n_tasks, align 8, !dbg !411
  br label %if.end29.sink.split.sink.split

if.end29.sink.split.sink.split:                   ; preds = %if.then20, %if.else22, %if.then7
  %.sink = phi ptr [ null, %if.then7 ], [ %prev.0, %if.else22 ], [ %prev.0, %if.then20 ]
  %.lcssa.sink.ph = phi i64 [ %3, %if.then7 ], [ %.pre, %if.else22 ], [ %3, %if.then20 ]
  %t.1.ph.ph = phi ptr [ %4, %if.then7 ], [ %t.0, %if.else22 ], [ %t.0, %if.then20 ]
  %tail = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.085, i32 3, !dbg !412
  store ptr %.sink, ptr %tail, align 8, !dbg !412
  br label %if.end29.sink.split, !dbg !412

if.end29.sink.split:                              ; preds = %if.end29.sink.split.sink.split, %if.then7
  %.lcssa.sink = phi i64 [ %3, %if.then7 ], [ %.lcssa.sink.ph, %if.end29.sink.split.sink.split ]
  %t.1.ph = phi ptr [ %4, %if.then7 ], [ %t.1.ph.ph, %if.end29.sink.split.sink.split ]
  %dec = add nsw i64 %.lcssa.sink, -1, !dbg !412
  store i64 %dec, ptr %n_tasks, align 8, !dbg !412
  br label %if.end29, !dbg !413

if.end29:                                         ; preds = %if.end29.sink.split, %if.then3
  %t.1 = phi ptr [ null, %if.then3 ], [ %t.1.ph, %if.end29.sink.split ], !dbg !365
  call void @llvm.dbg.value(metadata ptr %t.1, metadata !360, metadata !DIExpression()), !dbg !365
  %call31 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !413
  br label %while.end, !dbg !415

if.end32:                                         ; preds = %while.body
  %call34 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !416
  %inc = add nuw nsw i64 %visit_count.083, 1, !dbg !418
  call void @llvm.dbg.value(metadata i64 %inc, metadata !362, metadata !DIExpression()), !dbg !365
  %cmp35 = icmp sgt i64 %sign.084, 0, !dbg !419
  %sub = xor i64 %visit_count.083, -1
  %spec.select80 = select i1 %cmp35, i64 %inc, i64 %sub, !dbg !420
  call void @llvm.dbg.value(metadata i64 %spec.select80, metadata !364, metadata !DIExpression()), !dbg !365
  %sub36 = sub nsw i64 0, %sign.084, !dbg !421
  call void @llvm.dbg.value(metadata i64 %sub36, metadata !363, metadata !DIExpression()), !dbg !365
  %add = add nsw i64 %spec.select80, %qid.addr.085, !dbg !422
  call void @llvm.dbg.value(metadata i64 %add, metadata !343, metadata !DIExpression()), !dbg !365
  %cmp37 = icmp slt i64 %add, 0, !dbg !423
  %8 = load i64, ptr @n_taskqueues, align 8, !dbg !425
  br i1 %cmp37, label %if.then38, label %if.else40, !dbg !426

if.then38:                                        ; preds = %if.end32
  %add39 = add nsw i64 %8, %add, !dbg !427
  call void @llvm.dbg.value(metadata i64 %add39, metadata !343, metadata !DIExpression()), !dbg !365
  br label %if.end45, !dbg !428

if.else40:                                        ; preds = %if.end32
  %cmp41.not = icmp slt i64 %add, %8, !dbg !429
  %sub43 = select i1 %cmp41.not, i64 0, i64 %8, !dbg !431
  %spec.select79 = sub nsw i64 %add, %sub43, !dbg !431
  br label %if.end45, !dbg !431

if.end45:                                         ; preds = %if.else40, %if.then38
  %qid.addr.1 = phi i64 [ %add39, %if.then38 ], [ %spec.select79, %if.else40 ], !dbg !432
  call void @llvm.dbg.value(metadata i64 %qid.addr.1, metadata !343, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %sub36, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.value(metadata i64 %inc, metadata !362, metadata !DIExpression()), !dbg !365
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !369
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !370, !llvm.loop !433

while.end:                                        ; preds = %if.end45, %entry, %if.end29
  %t.2 = phi ptr [ %t.1, %if.end29 ], [ null, %entry ], [ null, %if.end45 ], !dbg !365
  call void @llvm.dbg.value(metadata ptr %t.2, metadata !360, metadata !DIExpression()), !dbg !365
  ret ptr %t.2, !dbg !435
}

declare !dbg !436 void @process_model(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !440 void @define_patch(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !443 void @ff_refine_elements(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !446 void @process_rays(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !449 void @visibility_task(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !452 void @radiosity_averaging(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_task(ptr noundef %task, i64 noundef %process_id) local_unnamed_addr #0 !dbg !455 {
entry:
  call void @llvm.dbg.value(metadata ptr %task, metadata !459, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !460, metadata !DIExpression()), !dbg !465
  %local_free_task = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 2, !dbg !466
  %0 = load ptr, ptr %local_free_task, align 8, !dbg !466
  %next = getelementptr inbounds %struct._task, ptr %task, i64 0, i32 1, !dbg !467
  store ptr %0, ptr %next, align 8, !dbg !468
  store ptr %task, ptr %local_free_task, align 8, !dbg !469
  %n_local_free_task = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 1, !dbg !470
  %1 = load i64, ptr %n_local_free_task, align 8, !dbg !471
  %inc = add nsw i64 %1, 1, !dbg !471
  store i64 %inc, ptr %n_local_free_task, align 8, !dbg !471
  %cmp = icmp sgt i64 %1, 14, !dbg !472
  br i1 %cmp, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @global, align 8, !dbg !475
  %arrayidx6 = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !477
  %3 = load i64, ptr %arrayidx6, align 8, !dbg !477
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %3), metadata !461, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !465
  call void @llvm.dbg.value(metadata i64 1, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.value(metadata ptr %task, metadata !462, metadata !DIExpression()), !dbg !465
  br label %for.inc, !dbg !478

for.inc:                                          ; preds = %if.then, %for.inc
  %p.044 = phi ptr [ %task, %if.then ], [ %p.0, %for.inc ]
  %i.043 = phi i64 [ 1, %if.then ], [ %inc11, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %i.043, metadata !464, metadata !DIExpression()), !dbg !465
  %inc11 = add nuw nsw i64 %i.043, 1, !dbg !480
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !464, metadata !DIExpression()), !dbg !465
  %next12 = getelementptr inbounds %struct._task, ptr %p.044, i64 0, i32 1, !dbg !482
  call void @llvm.dbg.value(metadata ptr undef, metadata !462, metadata !DIExpression()), !dbg !465
  %p.0 = load ptr, ptr %next12, align 8, !dbg !483
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !462, metadata !DIExpression()), !dbg !465
  %exitcond.not = icmp eq i64 %inc11, 8, !dbg !484
  br i1 %exitcond.not, label %for.end, label %for.inc, !dbg !478, !llvm.loop !485

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata ptr %task, metadata !463, metadata !DIExpression()), !dbg !465
  %next15 = getelementptr inbounds %struct._task, ptr %p.0, i64 0, i32 1, !dbg !487
  %4 = load ptr, ptr %next15, align 8, !dbg !487
  store ptr %4, ptr %local_free_task, align 8, !dbg !488
  %sub = add nsw i64 %1, -7, !dbg !489
  store i64 %sub, ptr %n_local_free_task, align 8, !dbg !489
  %f_lock = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %3, i32 5, !dbg !490
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %f_lock) #11, !dbg !492
  %free = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %3, i32 7, !dbg !493
  %5 = load ptr, ptr %free, align 8, !dbg !493
  store ptr %5, ptr %next15, align 8, !dbg !494
  store ptr %task, ptr %free, align 8, !dbg !495
  %n_free = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %3, i32 6, !dbg !496
  %6 = load i64, ptr %n_free, align 8, !dbg !497
  %add = add nsw i64 %6, 8, !dbg !497
  store i64 %add, ptr %n_free, align 8, !dbg !497
  %call23 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %f_lock) #11, !dbg !498
  br label %if.end, !dbg !500

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !501
}

; Function Attrs: nounwind
declare !dbg !502 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !507 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @_process_task_wait_loop() local_unnamed_addr #0 !dbg !508 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 0, metadata !512, metadata !DIExpression()), !dbg !514
  br label %for.body, !dbg !515

for.body:                                         ; preds = %entry, %for.inc
  %i.010 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 0, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.value(metadata i64 %i.010, metadata !512, metadata !DIExpression()), !dbg !514
  %and = and i64 %i.010, 255, !dbg !518
  %cmp1 = icmp eq i64 %and, 0, !dbg !521
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !522

if.then:                                          ; preds = %for.body
  %0 = load ptr, ptr @global, align 8, !dbg !523
  %pbar_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 18, !dbg !526
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %pbar_lock) #11, !dbg !527
  %1 = load ptr, ptr @global, align 8, !dbg !528
  %pbar_count = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 17, !dbg !530
  %2 = load i64, ptr %pbar_count, align 8, !dbg !530
  %3 = load i64, ptr @n_processors, align 8, !dbg !531
  %cmp2.not = icmp sge i64 %2, %3, !dbg !532
  %spec.select = zext i1 %cmp2.not to i64, !dbg !533
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !513, metadata !DIExpression()), !dbg !514
  %pbar_lock4 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 18, !dbg !534
  %call5 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %pbar_lock4) #11, !dbg !536
  br label %for.inc, !dbg !537

for.inc:                                          ; preds = %for.body, %if.then
  %finished.2 = phi i64 [ %spec.select, %if.then ], [ 0, %for.body ], !dbg !514
  call void @llvm.dbg.value(metadata i64 %finished.2, metadata !513, metadata !DIExpression()), !dbg !514
  %inc = add nuw nsw i64 %i.010, 1, !dbg !538
  call void @llvm.dbg.value(metadata i64 %inc, metadata !512, metadata !DIExpression()), !dbg !514
  %cmp = icmp ult i64 %i.010, 999, !dbg !539
  %tobool.not = icmp eq i64 %finished.2, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false, !dbg !515
  br i1 %or.cond, label %for.body, label %for.end, !dbg !515, !llvm.loop !540

for.end:                                          ; preds = %for.inc
  ret i64 %finished.2, !dbg !543
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @peek_dequeue(i64 noundef %qid, i64 noundef %max_visit, i64 %process_id) local_unnamed_addr #0 !dbg !544 {
entry:
  call void @llvm.dbg.value(metadata i64 %qid, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %max_visit, metadata !549, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 undef, metadata !550, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata ptr undef, metadata !553, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i64 0, metadata !554, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 -1, metadata !555, metadata !DIExpression()), !dbg !557
  %0 = load i64, ptr @n_taskqueues, align 8, !dbg !559
  %1 = tail call i64 @llvm.smin.i64(i64 %0, i64 %max_visit), !dbg !561
  call void @llvm.dbg.value(metadata i64 %1, metadata !549, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %qid, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 -1, metadata !555, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 0, metadata !554, metadata !DIExpression()), !dbg !557
  %cmp140 = icmp sgt i64 %1, 0, !dbg !562
  br i1 %cmp140, label %while.body, label %while.end, !dbg !563

while.body:                                       ; preds = %entry, %if.end20
  %qid.addr.043 = phi i64 [ %qid.addr.1, %if.end20 ], [ %qid, %entry ]
  %sign.042 = phi i64 [ %sub12, %if.end20 ], [ -1, %entry ]
  %visit_count.041 = phi i64 [ %inc, %if.end20 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %qid.addr.043, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %sign.042, metadata !555, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %visit_count.041, metadata !554, metadata !DIExpression()), !dbg !557
  %2 = load ptr, ptr @global, align 8, !dbg !564
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %qid.addr.043), metadata !551, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !557
  %q_lock = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.043, i32 1, !dbg !566
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %q_lock) #11, !dbg !568
  %n_tasks = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.043, i32 4, !dbg !569
  %3 = load i64, ptr %n_tasks, align 8, !dbg !569
  %cmp2 = icmp sgt i64 %3, 0, !dbg !571
  br i1 %cmp2, label %if.then3, label %if.end8, !dbg !572

if.then3:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %qid.addr.043), metadata !551, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !557
  %top = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %qid.addr.043, i32 2, !dbg !573
  %4 = load ptr, ptr %top, align 8, !dbg !573
  %tobool.not = icmp ne ptr %4, null, !dbg !576
  %spec.select36 = zext i1 %tobool.not to i32, !dbg !577
  call void @llvm.dbg.value(metadata i32 %spec.select36, metadata !552, metadata !DIExpression()), !dbg !557
  %call7 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !578
  br label %while.end, !dbg !580

if.end8:                                          ; preds = %while.body
  %call10 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !581
  %inc = add nuw nsw i64 %visit_count.041, 1, !dbg !583
  call void @llvm.dbg.value(metadata i64 %inc, metadata !554, metadata !DIExpression()), !dbg !557
  %cmp11 = icmp sgt i64 %sign.042, 0, !dbg !584
  %sub = xor i64 %visit_count.041, -1
  %spec.select38 = select i1 %cmp11, i64 %inc, i64 %sub, !dbg !585
  call void @llvm.dbg.value(metadata i64 %spec.select38, metadata !556, metadata !DIExpression()), !dbg !557
  %sub12 = sub nsw i64 0, %sign.042, !dbg !586
  call void @llvm.dbg.value(metadata i64 %sub12, metadata !555, metadata !DIExpression()), !dbg !557
  %add = add nsw i64 %spec.select38, %qid.addr.043, !dbg !587
  call void @llvm.dbg.value(metadata i64 %add, metadata !548, metadata !DIExpression()), !dbg !557
  %cmp13 = icmp slt i64 %add, 0, !dbg !588
  %5 = load i64, ptr @n_taskqueues, align 8, !dbg !590
  br i1 %cmp13, label %if.then14, label %if.else, !dbg !591

if.then14:                                        ; preds = %if.end8
  %add15 = add nsw i64 %5, %add, !dbg !592
  call void @llvm.dbg.value(metadata i64 %add15, metadata !548, metadata !DIExpression()), !dbg !557
  br label %if.end20, !dbg !593

if.else:                                          ; preds = %if.end8
  %cmp16.not = icmp slt i64 %add, %5, !dbg !594
  %sub18 = select i1 %cmp16.not, i64 0, i64 %5, !dbg !596
  %spec.select37 = sub nsw i64 %add, %sub18, !dbg !596
  br label %if.end20, !dbg !596

if.end20:                                         ; preds = %if.else, %if.then14
  %qid.addr.1 = phi i64 [ %add15, %if.then14 ], [ %spec.select37, %if.else ], !dbg !597
  call void @llvm.dbg.value(metadata i64 %qid.addr.1, metadata !548, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %sub12, metadata !555, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.value(metadata i64 %inc, metadata !554, metadata !DIExpression()), !dbg !557
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !562
  br i1 %exitcond.not, label %while.end, label %while.body, !dbg !563, !llvm.loop !598

while.end:                                        ; preds = %if.end20, %entry, %if.then3
  %task_found.1 = phi i32 [ %spec.select36, %if.then3 ], [ 0, %entry ], [ 0, %if.end20 ], !dbg !557
  call void @llvm.dbg.value(metadata i32 %task_found.1, metadata !552, metadata !DIExpression()), !dbg !557
  ret i32 %task_found.1, !dbg !600
}

; Function Attrs: nounwind
declare !dbg !601 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #4

declare !dbg !644 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_modeling_task(ptr noundef %model, i64 noundef %type, i64 noundef %process_id) local_unnamed_addr #0 !dbg !649 {
entry:
  call void @llvm.dbg.value(metadata ptr %model, metadata !651, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 %type, metadata !652, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !653, metadata !DIExpression()), !dbg !654
  tail call void @process_model(ptr noundef %model, i64 noundef %type, i64 noundef %process_id) #11, !dbg !655
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_bsp_task(ptr noundef %patch, ptr noundef %parent, i64 noundef %process_id) local_unnamed_addr #0 !dbg !657 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !659, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata ptr %parent, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !661, metadata !DIExpression()), !dbg !662
  tail call void @define_patch(ptr noundef %patch, ptr noundef %parent, i64 noundef %process_id) #11, !dbg !663
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_ff_refine_task(ptr noundef %e1, ptr noundef %e2, i64 noundef %level, i64 noundef %process_id) local_unnamed_addr #0 !dbg !665 {
entry:
  call void @llvm.dbg.value(metadata ptr %e1, metadata !667, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata ptr %e2, metadata !668, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %level, metadata !669, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !670, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr @global, align 8, !dbg !673
  %arrayidx = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !675
  %1 = load i64, ptr %arrayidx, align 8, !dbg !675
  %arrayidx1 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %1, !dbg !673
  %2 = load i64, ptr @n_tasks_per_queue, align 8, !dbg !676
  %call = tail call fastcc i32 @taskq_too_long(ptr noundef nonnull %arrayidx1, i64 noundef %2), !dbg !677
  %tobool.not = icmp eq i32 %call, 0, !dbg !677
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !678

if.then:                                          ; preds = %entry
  tail call void @ff_refine_elements(ptr noundef %e1, ptr noundef %e2, i64 noundef %level, i64 noundef %process_id) #11, !dbg !679
  br label %cleanup, !dbg !681

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @get_task(i64 noundef %process_id), !dbg !682
  call void @llvm.dbg.value(metadata ptr %call2, metadata !671, metadata !DIExpression()), !dbg !672
  store i64 4, ptr %call2, align 8, !dbg !683
  %task = getelementptr inbounds %struct._task, ptr %call2, i64 0, i32 2, !dbg !684
  store ptr %e1, ptr %task, align 8, !dbg !685
  %e25 = getelementptr inbounds %struct.Refinement_Task, ptr %task, i64 0, i32 1, !dbg !686
  store ptr %e2, ptr %e25, align 8, !dbg !687
  %level7 = getelementptr inbounds %struct.Refinement_Task, ptr %task, i64 0, i32 3, !dbg !688
  store i64 %level, ptr %level7, align 8, !dbg !689
  %3 = load i64, ptr %arrayidx, align 8, !dbg !690
  tail call void @enqueue_task(i64 noundef %3, ptr noundef nonnull %call2, i64 noundef 1), !dbg !691
  br label %cleanup, !dbg !692

cleanup:                                          ; preds = %if.end, %if.then
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @taskq_too_long(ptr noundef %q, i64 noundef %n_tasks_per_queue) unnamed_addr #0 !dbg !693 {
entry:
  call void @llvm.dbg.value(metadata ptr %q, metadata !697, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata i64 %n_tasks_per_queue, metadata !698, metadata !DIExpression()), !dbg !700
  %q_lock = getelementptr inbounds %struct.Task_Queue, ptr %q, i64 0, i32 1, !dbg !701
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %q_lock) #11, !dbg !703
  %n_tasks = getelementptr inbounds %struct.Task_Queue, ptr %q, i64 0, i32 4, !dbg !704
  %0 = load i64, ptr %n_tasks, align 8, !dbg !704
  %cmp = icmp sgt i64 %0, %n_tasks_per_queue, !dbg !705
  %conv = zext i1 %cmp to i32, !dbg !705
  call void @llvm.dbg.value(metadata i32 %conv, metadata !699, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !700
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !706
  ret i32 %conv, !dbg !708
}

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @get_task(i64 noundef %process_id) local_unnamed_addr #0 !dbg !709 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !713, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i64 0, metadata !718, metadata !DIExpression()), !dbg !719
  %local_free_task = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 2, !dbg !720
  %0 = load ptr, ptr %local_free_task, align 8, !dbg !720
  %cmp = icmp eq ptr %0, null, !dbg !722
  br i1 %cmp, label %if.then, label %if.end41, !dbg !723

if.then:                                          ; preds = %entry
  %arrayidx1 = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !724
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !724
  call void @llvm.dbg.value(metadata i64 %1, metadata !717, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i64 0, metadata !718, metadata !DIExpression()), !dbg !719
  br label %while.body, !dbg !726

while.condthread-pre-split:                       ; preds = %if.end
  %inc26 = add nuw nsw i64 %retry_count.085, 1, !dbg !727
  call void @llvm.dbg.value(metadata i64 %inc26, metadata !718, metadata !DIExpression()), !dbg !719
  %inc22 = add nsw i64 %q_id.084, 1, !dbg !730
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !717, metadata !DIExpression()), !dbg !719
  %2 = load i64, ptr @n_taskqueues, align 8, !dbg !732
  %cmp23.not = icmp slt i64 %inc22, %2, !dbg !733
  %spec.store.select = select i1 %cmp23.not, i64 %inc22, i64 0, !dbg !734
  call void @llvm.dbg.value(metadata i64 %spec.store.select, metadata !717, metadata !DIExpression()), !dbg !719
  %.pr = load ptr, ptr %local_free_task, align 8, !dbg !735
  %cmp4 = icmp eq ptr %.pr, null, !dbg !736
  br i1 %cmp4, label %while.body, label %if.end41, !dbg !726

while.body:                                       ; preds = %if.then, %while.condthread-pre-split
  %retry_count.085 = phi i64 [ 0, %if.then ], [ %inc26, %while.condthread-pre-split ]
  %q_id.084 = phi i64 [ %1, %if.then ], [ %spec.store.select, %while.condthread-pre-split ]
  call void @llvm.dbg.value(metadata i64 %retry_count.085, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i64 %q_id.084, metadata !717, metadata !DIExpression()), !dbg !719
  %3 = load ptr, ptr @global, align 8, !dbg !737
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %q_id.084), metadata !715, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !719
  %f_lock = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 2, i64 %q_id.084, i32 5, !dbg !738
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %f_lock) #11, !dbg !740
  %free = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 2, i64 %q_id.084, i32 7, !dbg !741
  %4 = load ptr, ptr %free, align 8, !dbg !741
  %tobool.not = icmp eq ptr %4, null, !dbg !743
  br i1 %tobool.not, label %if.end, label %land.rhs, !dbg !744

land.rhs:                                         ; preds = %while.body, %for.inc
  %i.087 = phi i64 [ %inc, %for.inc ], [ 1, %while.body ]
  %p.086 = phi ptr [ %5, %for.inc ], [ %4, %while.body ]
  call void @llvm.dbg.value(metadata i64 %i.087, metadata !716, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata ptr %p.086, metadata !714, metadata !DIExpression()), !dbg !719
  %next = getelementptr inbounds %struct._task, ptr %p.086, i64 0, i32 1, !dbg !745
  %5 = load ptr, ptr %next, align 8, !dbg !745
  %tobool9.not = icmp eq ptr %5, null, !dbg !749
  br i1 %tobool9.not, label %for.end, label %for.inc, !dbg !750

for.inc:                                          ; preds = %land.rhs
  %inc = add nuw nsw i64 %i.087, 1, !dbg !751
  call void @llvm.dbg.value(metadata i64 %inc, metadata !716, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata ptr %5, metadata !714, metadata !DIExpression()), !dbg !719
  %exitcond99.not = icmp eq i64 %inc, 8, !dbg !752
  br i1 %exitcond99.not, label %for.end, label %land.rhs, !dbg !749, !llvm.loop !753

for.end:                                          ; preds = %for.inc, %land.rhs
  %p.0.lcssa = phi ptr [ %5, %for.inc ], [ %p.086, %land.rhs ], !dbg !755
  %i.0.lcssa = phi i64 [ 8, %for.inc ], [ %i.087, %land.rhs ], !dbg !755
  store ptr %4, ptr %local_free_task, align 8, !dbg !756
  %n_local_free_task = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 1, !dbg !757
  store i64 %i.0.lcssa, ptr %n_local_free_task, align 8, !dbg !758
  %next15 = getelementptr inbounds %struct._task, ptr %p.0.lcssa, i64 0, i32 1, !dbg !759
  %6 = load ptr, ptr %next15, align 8, !dbg !759
  store ptr %6, ptr %free, align 8, !dbg !760
  %n_free = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 2, i64 %q_id.084, i32 6, !dbg !761
  %7 = load i64, ptr %n_free, align 8, !dbg !762
  %sub = sub nsw i64 %7, %i.0.lcssa, !dbg !762
  store i64 %sub, ptr %n_free, align 8, !dbg !762
  store ptr null, ptr %next15, align 8, !dbg !763
  %call19 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %f_lock) #11, !dbg !764
  %.pre = load ptr, ptr %local_free_task, align 8, !dbg !766
  br label %if.end41, !dbg !767

if.end:                                           ; preds = %while.body
  %call21 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %f_lock) #11, !dbg !768
  call void @llvm.dbg.value(metadata i64 %q_id.084, metadata !717, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !719
  call void @llvm.dbg.value(metadata i64 undef, metadata !717, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i64 %retry_count.085, metadata !718, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !719
  %exitcond = icmp eq i64 %retry_count.085, 32, !dbg !770
  br i1 %exitcond, label %if.then28, label %while.condthread-pre-split, !dbg !771, !llvm.loop !772

if.then28:                                        ; preds = %if.end
  %8 = load ptr, ptr @stderr, align 8, !dbg !774
  %call29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.1, i64 noundef %process_id) #12, !dbg !776
  %9 = load ptr, ptr @stderr, align 8, !dbg !777
  %n_local_free_task31 = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 1, !dbg !778
  %10 = load i64, ptr %n_local_free_task31, align 8, !dbg !778
  %call32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.2, i64 noundef %10) #12, !dbg !779
  %11 = load ptr, ptr @stderr, align 8, !dbg !780
  %12 = load ptr, ptr @global, align 8, !dbg !781
  %task_queue33 = getelementptr inbounds %struct.Global, ptr %12, i64 0, i32 2, !dbg !782
  %n_free35 = getelementptr inbounds %struct.Task_Queue, ptr %task_queue33, i64 0, i32 6, !dbg !783
  %13 = load i64, ptr %n_free35, align 8, !dbg !783
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.3, i64 noundef %13) #12, !dbg !784
  %14 = load ptr, ptr @stderr, align 8, !dbg !785
  %15 = load ptr, ptr @global, align 8, !dbg !786
  %task_queue37 = getelementptr inbounds %struct.Global, ptr %15, i64 0, i32 2, !dbg !787
  %n_tasks = getelementptr inbounds %struct.Task_Queue, ptr %task_queue37, i64 0, i32 4, !dbg !788
  %16 = load i64, ptr %n_tasks, align 8, !dbg !788
  %call39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.4, i64 noundef %16) #12, !dbg !789
  tail call void @exit(i32 noundef 1) #13, !dbg !790
  unreachable, !dbg !790

if.end41:                                         ; preds = %while.condthread-pre-split, %for.end, %entry
  %17 = phi ptr [ %.pre, %for.end ], [ %0, %entry ], [ %.pr, %while.condthread-pre-split ], !dbg !766
  call void @llvm.dbg.value(metadata ptr %17, metadata !714, metadata !DIExpression()), !dbg !719
  %next44 = getelementptr inbounds %struct._task, ptr %17, i64 0, i32 1, !dbg !791
  %18 = load ptr, ptr %next44, align 8, !dbg !791
  store ptr %18, ptr %local_free_task, align 8, !dbg !792
  %n_local_free_task48 = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 1, !dbg !793
  %19 = load i64, ptr %n_local_free_task48, align 8, !dbg !794
  %dec = add nsw i64 %19, -1, !dbg !794
  store i64 %dec, ptr %n_local_free_task48, align 8, !dbg !794
  store ptr null, ptr %next44, align 8, !dbg !795
  ret ptr %17, !dbg !796
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue_task(i64 noundef %qid, ptr noundef %task, i64 noundef %mode) local_unnamed_addr #0 !dbg !797 {
entry:
  call void @llvm.dbg.value(metadata i64 %qid, metadata !801, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata ptr %task, metadata !802, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i64 %mode, metadata !803, metadata !DIExpression()), !dbg !805
  %0 = load ptr, ptr @global, align 8, !dbg !806
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %qid), metadata !804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !805
  %q_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 1, !dbg !807
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %q_lock) #11, !dbg !809
  %tail = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 3, !dbg !810
  %1 = load ptr, ptr %tail, align 8, !dbg !810
  %cmp = icmp eq ptr %1, null, !dbg !812
  br i1 %cmp, label %if.then, label %if.else, !dbg !813

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %qid), metadata !804, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8312, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 48, DW_OP_stack_value)), !dbg !805
  store ptr %task, ptr %tail, align 8, !dbg !814
  %top = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 2, !dbg !816
  store ptr %task, ptr %top, align 8, !dbg !817
  %n_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 4, !dbg !818
  store i64 1, ptr %n_tasks, align 8, !dbg !819
  br label %if.end13, !dbg !820

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i64 %mode, 0, !dbg !821
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !824

if.then3:                                         ; preds = %if.else
  %next = getelementptr inbounds %struct._task, ptr %1, i64 0, i32 1, !dbg !825
  store ptr %task, ptr %next, align 8, !dbg !827
  store ptr %task, ptr %tail, align 8, !dbg !828
  %n_tasks6 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 4, !dbg !829
  %2 = load i64, ptr %n_tasks6, align 8, !dbg !830
  %inc = add nsw i64 %2, 1, !dbg !830
  store i64 %inc, ptr %n_tasks6, align 8, !dbg !830
  br label %if.end13, !dbg !831

if.else7:                                         ; preds = %if.else
  %top8 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 2, !dbg !832
  %3 = load ptr, ptr %top8, align 8, !dbg !832
  %next9 = getelementptr inbounds %struct._task, ptr %task, i64 0, i32 1, !dbg !834
  store ptr %3, ptr %next9, align 8, !dbg !835
  store ptr %task, ptr %top8, align 8, !dbg !836
  %n_tasks11 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 2, i64 %qid, i32 4, !dbg !837
  %4 = load i64, ptr %n_tasks11, align 8, !dbg !838
  %inc12 = add nsw i64 %4, 1, !dbg !838
  store i64 %inc12, ptr %n_tasks11, align 8, !dbg !838
  br label %if.end13

if.end13:                                         ; preds = %if.then3, %if.else7, %if.then
  %call15 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %q_lock) #11, !dbg !839
  ret void, !dbg !841
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_ray_task(ptr noundef %e, i64 noundef %process_id) local_unnamed_addr #0 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !844, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !845, metadata !DIExpression()), !dbg !846
  %n_interactions = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 8, !dbg !847
  %0 = load i64, ptr %n_interactions, align 8, !dbg !847
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 10, !dbg !849
  %1 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !849
  %add = add nsw i64 %1, %0, !dbg !850
  %2 = load i64, ptr @N_inter_parallel_bf_refine, align 8, !dbg !851
  %cmp = icmp slt i64 %add, %2, !dbg !852
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !853

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr @global, align 8, !dbg !854
  %arrayidx = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !855
  %4 = load i64, ptr %arrayidx, align 8, !dbg !855
  %arrayidx1 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 2, i64 %4, !dbg !854
  %5 = load i64, ptr @n_tasks_per_queue, align 8, !dbg !856
  %call = tail call fastcc i32 @taskq_too_long(ptr noundef nonnull %arrayidx1, i64 noundef %5), !dbg !857
  %tobool.not = icmp eq i32 %call, 0, !dbg !857
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !858

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @process_rays(ptr noundef nonnull %e, i64 noundef %process_id) #11, !dbg !859
  br label %return, !dbg !861

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %arrayidx, align 8, !dbg !862
  tail call void @enqueue_ray_task(i64 noundef %6, ptr noundef nonnull %e, i64 noundef 1, i64 noundef %process_id), !dbg !863
  br label %return, !dbg !864

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !864
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue_ray_task(i64 noundef %qid, ptr noundef %e, i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !865 {
entry:
  call void @llvm.dbg.value(metadata i64 %qid, metadata !869, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata ptr %e, metadata !870, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %mode, metadata !871, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !872, metadata !DIExpression()), !dbg !874
  %call = tail call ptr @get_task(i64 noundef %process_id), !dbg !875
  call void @llvm.dbg.value(metadata ptr %call, metadata !873, metadata !DIExpression()), !dbg !874
  store i64 8, ptr %call, align 8, !dbg !876
  %task = getelementptr inbounds %struct._task, ptr %call, i64 0, i32 2, !dbg !877
  %e1 = getelementptr inbounds %struct.Ray_Task, ptr %task, i64 0, i32 1, !dbg !878
  store ptr %e, ptr %e1, align 8, !dbg !879
  tail call void @enqueue_task(i64 noundef %qid, ptr noundef nonnull %call, i64 noundef %mode), !dbg !880
  ret void, !dbg !881
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_visibility_tasks(ptr noundef %e, ptr noundef %k, i64 noundef %process_id) local_unnamed_addr #0 !dbg !882 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !886, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %k, metadata !887, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !888, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !895, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()), !dbg !901
  %vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 9, !dbg !902
  call void @llvm.dbg.value(metadata ptr undef, metadata !892, metadata !DIExpression()), !dbg !901
  %top.097 = load ptr, ptr %vis_undef_inter, align 8, !dbg !904
  call void @llvm.dbg.value(metadata i64 0, metadata !895, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %top.097, metadata !892, metadata !DIExpression()), !dbg !901
  %tobool.not98 = icmp eq ptr %top.097, null, !dbg !905
  br i1 %tobool.not98, label %if.then2, label %for.body, !dbg !905

for.body:                                         ; preds = %entry, %for.inc
  %top.0100 = phi ptr [ %top.0, %for.inc ], [ %top.097, %entry ]
  %total_undefs.099 = phi i64 [ %total_undefs.1, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %total_undefs.099, metadata !895, metadata !DIExpression()), !dbg !901
  %visibility = getelementptr inbounds %struct._interact, ptr %top.0100, i64 0, i32 5, !dbg !906
  %0 = load float, ptr %visibility, align 4, !dbg !906
  %cmp = fcmp oeq float %0, -1.000000e+00, !dbg !910
  br i1 %cmp, label %if.then, label %for.inc, !dbg !911

if.then:                                          ; preds = %for.body
  %inc = add nsw i64 %total_undefs.099, 1, !dbg !912
  call void @llvm.dbg.value(metadata i64 %inc, metadata !895, metadata !DIExpression()), !dbg !901
  br label %for.inc, !dbg !913

for.inc:                                          ; preds = %for.body, %if.then
  %total_undefs.1 = phi i64 [ %inc, %if.then ], [ %total_undefs.099, %for.body ], !dbg !901
  call void @llvm.dbg.value(metadata i64 %total_undefs.1, metadata !895, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr undef, metadata !892, metadata !DIExpression()), !dbg !901
  %top.0 = load ptr, ptr %top.0100, align 8, !dbg !904
  call void @llvm.dbg.value(metadata ptr %top.0, metadata !892, metadata !DIExpression()), !dbg !901
  %tobool.not = icmp eq ptr %top.0, null, !dbg !905
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !905, !llvm.loop !914

for.end:                                          ; preds = %for.inc
  %cmp1 = icmp eq i64 %total_undefs.1, 0, !dbg !916
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !918

if.then2:                                         ; preds = %entry, %for.end
  tail call void (ptr, i64, ...) %k(ptr noundef %e, i64 noundef %process_id) #11, !dbg !919
  br label %cleanup50, !dbg !921

if.end3:                                          ; preds = %for.end
  %1 = load i64, ptr @N_visibility_per_task, align 8, !dbg !922
  %cmp4 = icmp slt i64 %total_undefs.1, %1, !dbg !924
  br i1 %cmp4, label %if.then7, label %lor.lhs.false, !dbg !925

lor.lhs.false:                                    ; preds = %if.end3
  %2 = load ptr, ptr @global, align 8, !dbg !926
  %arrayidx = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !927
  %3 = load i64, ptr %arrayidx, align 8, !dbg !927
  %arrayidx5 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %3, !dbg !926
  %4 = load i64, ptr @n_tasks_per_queue, align 8, !dbg !928
  %call = tail call fastcc i32 @taskq_too_long(ptr noundef nonnull %arrayidx5, i64 noundef %4), !dbg !929
  %tobool6.not = icmp eq i32 %call, 0, !dbg !929
  br i1 %tobool6.not, label %if.end9, label %lor.lhs.false.if.then7_crit_edge, !dbg !930

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %vis_undef_inter, align 8, !dbg !931
  br label %if.then7, !dbg !930

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end3
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then7_crit_edge ], [ %top.097, %if.end3 ], !dbg !931
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 10, !dbg !933
  %6 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !933
  tail call void @visibility_task(ptr noundef %e, ptr noundef %5, i64 noundef %6, ptr noundef %k, i64 noundef %process_id) #11, !dbg !934
  br label %cleanup50, !dbg !935

if.end9:                                          ; preds = %lor.lhs.false
  %7 = load i64, ptr @N_visibility_per_task, align 8, !dbg !936
  %add = add i64 %total_undefs.1, -1, !dbg !937
  %sub = add i64 %add, %7, !dbg !938
  %div = sdiv i64 %sub, %7, !dbg !939
  call void @llvm.dbg.value(metadata i64 %div, metadata !889, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !890, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !891, metadata !DIExpression()), !dbg !901
  %8 = load ptr, ptr %vis_undef_inter, align 8, !dbg !940
  call void @llvm.dbg.value(metadata ptr %8, metadata !892, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %8, metadata !893, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !896, metadata !DIExpression()), !dbg !901
  %tobool12.not101 = icmp eq ptr %8, null, !dbg !941
  br i1 %tobool12.not101, label %cleanup50, label %for.body13, !dbg !941

for.body13:                                       ; preds = %if.end9, %cleanup
  %remainder.0106 = phi i64 [ %remainder.2, %cleanup ], [ 0, %if.end9 ]
  %tasks_created.0105 = phi i64 [ %tasks_created.2, %cleanup ], [ 0, %if.end9 ]
  %i_cnt.0104 = phi i64 [ %i_cnt.4, %cleanup ], [ 0, %if.end9 ]
  %tail.0103 = phi ptr [ %13, %cleanup ], [ %8, %if.end9 ]
  %top.1102 = phi ptr [ %top.3, %cleanup ], [ %8, %if.end9 ]
  call void @llvm.dbg.value(metadata i64 %remainder.0106, metadata !890, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %tasks_created.0105, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %i_cnt.0104, metadata !891, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %tail.0103, metadata !893, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %top.1102, metadata !892, metadata !DIExpression()), !dbg !901
  %inc14 = add nsw i64 %i_cnt.0104, 1, !dbg !942
  call void @llvm.dbg.value(metadata i64 %inc14, metadata !891, metadata !DIExpression()), !dbg !901
  %visibility15 = getelementptr inbounds %struct._interact, ptr %tail.0103, i64 0, i32 5, !dbg !943
  %9 = load float, ptr %visibility15, align 4, !dbg !943
  %cmp16 = fcmp une float %9, -1.000000e+00, !dbg !944
  call void @llvm.dbg.value(metadata i1 %cmp16, metadata !897, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !945
  br i1 %cmp16, label %cleanupthread-pre-split, label %if.end19, !dbg !946

if.end19:                                         ; preds = %for.body13
  %add20 = add nsw i64 %remainder.0106, %div, !dbg !947
  call void @llvm.dbg.value(metadata i64 %add20, metadata !890, metadata !DIExpression()), !dbg !901
  %cmp21.not = icmp slt i64 %add20, %total_undefs.1, !dbg !948
  br i1 %cmp21.not, label %cleanupthread-pre-split, label %if.then23, !dbg !950

if.then23:                                        ; preds = %if.end19
  %inc24 = add nsw i64 %tasks_created.0105, 1, !dbg !951
  call void @llvm.dbg.value(metadata i64 %inc24, metadata !896, metadata !DIExpression()), !dbg !901
  %cmp25.not = icmp slt i64 %inc24, %div, !dbg !953
  br i1 %cmp25.not, label %if.end36, label %for.cond28, !dbg !955

for.cond28:                                       ; preds = %if.then23, %for.cond28
  %tail.1 = phi ptr [ %10, %for.cond28 ], [ %tail.0103, %if.then23 ], !dbg !956
  %i_cnt.1 = phi i64 [ %inc34, %for.cond28 ], [ %inc14, %if.then23 ], !dbg !945
  call void @llvm.dbg.value(metadata i64 %i_cnt.1, metadata !891, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %tail.1, metadata !893, metadata !DIExpression()), !dbg !901
  %10 = load ptr, ptr %tail.1, align 8, !dbg !957
  %tobool30.not = icmp eq ptr %10, null, !dbg !960
  call void @llvm.dbg.value(metadata ptr %10, metadata !893, metadata !DIExpression()), !dbg !901
  %inc34 = add nsw i64 %i_cnt.1, 1, !dbg !961
  call void @llvm.dbg.value(metadata i64 %inc34, metadata !891, metadata !DIExpression()), !dbg !901
  br i1 %tobool30.not, label %if.end36, label %for.cond28, !dbg !960, !llvm.loop !962

if.end36:                                         ; preds = %for.cond28, %if.then23
  %tail.2 = phi ptr [ %tail.0103, %if.then23 ], [ %tail.1, %for.cond28 ], !dbg !964
  %i_cnt.2 = phi i64 [ %inc14, %if.then23 ], [ %i_cnt.1, %for.cond28 ], !dbg !942
  call void @llvm.dbg.value(metadata i64 %i_cnt.2, metadata !891, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %tail.2, metadata !893, metadata !DIExpression()), !dbg !901
  %call37 = tail call ptr @get_task(i64 noundef %process_id), !dbg !965
  call void @llvm.dbg.value(metadata ptr %call37, metadata !894, metadata !DIExpression()), !dbg !901
  store i64 32, ptr %call37, align 8, !dbg !966
  %task = getelementptr inbounds %struct._task, ptr %call37, i64 0, i32 2, !dbg !967
  store ptr %e, ptr %task, align 8, !dbg !968
  %inter = getelementptr inbounds %struct.Visibility_Task, ptr %task, i64 0, i32 1, !dbg !969
  store ptr %top.1102, ptr %inter, align 8, !dbg !970
  %n_inter = getelementptr inbounds %struct.Visibility_Task, ptr %task, i64 0, i32 2, !dbg !971
  store i64 %i_cnt.2, ptr %n_inter, align 8, !dbg !972
  %k42 = getelementptr inbounds %struct.Visibility_Task, ptr %task, i64 0, i32 3, !dbg !973
  store ptr %k, ptr %k42, align 8, !dbg !974
  %11 = load i64, ptr %arrayidx, align 8, !dbg !975
  tail call void @enqueue_task(i64 noundef %11, ptr noundef nonnull %call37, i64 noundef 1), !dbg !976
  %12 = load ptr, ptr %tail.2, align 8, !dbg !977
  call void @llvm.dbg.value(metadata ptr %12, metadata !892, metadata !DIExpression()), !dbg !901
  %sub45 = sub nsw i64 %add20, %total_undefs.1, !dbg !978
  call void @llvm.dbg.value(metadata i64 %sub45, metadata !890, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 0, metadata !891, metadata !DIExpression()), !dbg !901
  br label %cleanup, !dbg !979

cleanupthread-pre-split:                          ; preds = %for.body13, %if.end19
  %remainder.2.ph = phi i64 [ %add20, %if.end19 ], [ %remainder.0106, %for.body13 ]
  %.pr = load ptr, ptr %tail.0103, align 8, !dbg !980
  br label %cleanup, !dbg !980

cleanup:                                          ; preds = %cleanupthread-pre-split, %if.end36
  %13 = phi ptr [ %.pr, %cleanupthread-pre-split ], [ %12, %if.end36 ], !dbg !980
  %top.3 = phi ptr [ %top.1102, %cleanupthread-pre-split ], [ %12, %if.end36 ], !dbg !956
  %i_cnt.4 = phi i64 [ %inc14, %cleanupthread-pre-split ], [ 0, %if.end36 ], !dbg !945
  %tasks_created.2 = phi i64 [ %tasks_created.0105, %cleanupthread-pre-split ], [ %inc24, %if.end36 ], !dbg !901
  %remainder.2 = phi i64 [ %remainder.2.ph, %cleanupthread-pre-split ], [ %sub45, %if.end36 ], !dbg !901
  call void @llvm.dbg.value(metadata i64 %remainder.2, metadata !890, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %tasks_created.2, metadata !896, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata i64 %i_cnt.4, metadata !891, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %top.3, metadata !892, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr %13, metadata !893, metadata !DIExpression()), !dbg !901
  %tobool12.not = icmp eq ptr %13, null, !dbg !941
  br i1 %tobool12.not, label %cleanup50, label %for.body13, !dbg !941, !llvm.loop !981

cleanup50:                                        ; preds = %cleanup, %if.end9, %if.then7, %if.then2
  ret void, !dbg !983
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @create_radavg_task(ptr noundef %e, i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !984 {
entry:
  call void @llvm.dbg.value(metadata ptr %e, metadata !986, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %mode, metadata !987, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !988, metadata !DIExpression()), !dbg !989
  %n_interactions = getelementptr inbounds %struct._element, ptr %e, i64 0, i32 8, !dbg !990
  %0 = load i64, ptr %n_interactions, align 8, !dbg !990
  %1 = load i64, ptr @N_inter_parallel_bf_refine, align 8, !dbg !992
  %cmp = icmp slt i64 %0, %1, !dbg !993
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !994

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr @global, align 8, !dbg !995
  %arrayidx = getelementptr inbounds [0 x i64], ptr @taskqueue_id, i64 0, i64 %process_id, !dbg !996
  %3 = load i64, ptr %arrayidx, align 8, !dbg !996
  %arrayidx1 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 2, i64 %3, !dbg !995
  %4 = load i64, ptr @n_tasks_per_queue, align 8, !dbg !997
  %call = tail call fastcc i32 @taskq_too_long(ptr noundef nonnull %arrayidx1, i64 noundef %4), !dbg !998
  %tobool.not = icmp eq i32 %call, 0, !dbg !998
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !999

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @radiosity_averaging(ptr noundef nonnull %e, i64 noundef %mode, i64 noundef %process_id) #11, !dbg !1000
  br label %return, !dbg !1002

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i64, ptr %arrayidx, align 8, !dbg !1003
  tail call void @enqueue_radavg_task(i64 noundef %5, ptr noundef nonnull %e, i64 noundef %mode, i64 noundef %process_id), !dbg !1004
  br label %return, !dbg !1005

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1005
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue_radavg_task(i64 noundef %qid, ptr noundef %e, i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1006 {
entry:
  call void @llvm.dbg.value(metadata i64 %qid, metadata !1008, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata ptr %e, metadata !1009, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %mode, metadata !1010, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1011, metadata !DIExpression()), !dbg !1013
  %call = tail call ptr @get_task(i64 noundef %process_id), !dbg !1014
  call void @llvm.dbg.value(metadata ptr %call, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i64 16, ptr %call, align 8, !dbg !1015
  %task = getelementptr inbounds %struct._task, ptr %call, i64 0, i32 2, !dbg !1016
  store ptr %e, ptr %task, align 8, !dbg !1017
  %mode3 = getelementptr inbounds %struct.RadAvg_Task, ptr %task, i64 0, i32 2, !dbg !1018
  store i64 %mode, ptr %mode3, align 8, !dbg !1019
  tail call void @enqueue_task(i64 noundef %qid, ptr noundef nonnull %call, i64 noundef 1), !dbg !1020
  ret void, !dbg !1021
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_taskq(i64 noundef %process_id) local_unnamed_addr #0 !dbg !1022 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1024, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1030
  %crnt_taskq_id = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 3, !dbg !1031
  store i64 0, ptr %crnt_taskq_id, align 8, !dbg !1032
  %0 = load i64, ptr @n_taskqueues, align 8, !dbg !1033
  %sub = add nsw i64 %0, 3276799, !dbg !1034
  %div = sdiv i64 %sub, %0, !dbg !1035
  call void @llvm.dbg.value(metadata i64 %div, metadata !1028, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1030
  %cmp64 = icmp sgt i64 %0, 0, !dbg !1036
  br i1 %cmp64, label %for.body, label %for.end36, !dbg !1039

for.body:                                         ; preds = %entry, %for.end
  %task_index.066 = phi i64 [ %add5, %for.end ], [ 0, %entry ]
  %qid.065 = phi i64 [ %inc35, %for.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %task_index.066, metadata !1027, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %qid.065, metadata !1026, metadata !DIExpression()), !dbg !1030
  %add1 = add nsw i64 %task_index.066, %div, !dbg !1040
  %cmp2 = icmp sgt i64 %add1, 3276800, !dbg !1043
  %sub3 = sub nsw i64 3276800, %task_index.066
  %spec.select = select i1 %cmp2, i64 %sub3, i64 %div, !dbg !1044
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1029, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %task_index.066, metadata !1025, metadata !DIExpression()), !dbg !1030
  %add5 = add nsw i64 %spec.select, %task_index.066
  %sub6 = add i64 %add5, -1
  call void @llvm.dbg.value(metadata i64 %task_index.066, metadata !1025, metadata !DIExpression()), !dbg !1030
  %cmp761 = icmp slt i64 %task_index.066, %sub6, !dbg !1045
  br i1 %cmp761, label %for.body8, label %for.end, !dbg !1048

for.body8:                                        ; preds = %for.body, %for.body8
  %i.062 = phi i64 [ %add9, %for.body8 ], [ %task_index.066, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.062, metadata !1025, metadata !DIExpression()), !dbg !1030
  %1 = load ptr, ptr @global, align 8, !dbg !1049
  %add9 = add nsw i64 %i.062, 1, !dbg !1050
  %arrayidx10 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 3, i64 %add9, !dbg !1049
  %next = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 3, i64 %i.062, i32 1, !dbg !1051
  store ptr %arrayidx10, ptr %next, align 8, !dbg !1052
  call void @llvm.dbg.value(metadata i64 %add9, metadata !1025, metadata !DIExpression()), !dbg !1030
  %exitcond.not = icmp eq i64 %add9, %sub6, !dbg !1045
  br i1 %exitcond.not, label %for.end, label %for.body8, !dbg !1048, !llvm.loop !1053

for.end:                                          ; preds = %for.body8, %for.body
  %i.0.lcssa = phi i64 [ %task_index.066, %for.body ], [ %sub6, %for.body8 ], !dbg !1055
  %2 = load ptr, ptr @global, align 8, !dbg !1056
  %next15 = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 3, i64 %i.0.lcssa, i32 1, !dbg !1057
  store ptr null, ptr %next15, align 8, !dbg !1058
  %3 = load ptr, ptr @global, align 8, !dbg !1059
  %arrayidx17 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 3, i64 %task_index.066, !dbg !1059
  %free = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 2, i64 %qid.065, i32 7, !dbg !1060
  store ptr %arrayidx17, ptr %free, align 8, !dbg !1061
  %4 = load ptr, ptr @global, align 8, !dbg !1062
  %n_free = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 2, i64 %qid.065, i32 6, !dbg !1063
  store i64 %spec.select, ptr %n_free, align 8, !dbg !1064
  %5 = load ptr, ptr @global, align 8, !dbg !1065
  %top = getelementptr inbounds %struct.Global, ptr %5, i64 0, i32 2, i64 %qid.065, i32 2, !dbg !1066
  store ptr null, ptr %top, align 8, !dbg !1067
  %6 = load ptr, ptr @global, align 8, !dbg !1068
  %tail = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 2, i64 %qid.065, i32 3, !dbg !1069
  store ptr null, ptr %tail, align 8, !dbg !1070
  %7 = load ptr, ptr @global, align 8, !dbg !1071
  %n_tasks27 = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 2, i64 %qid.065, i32 4, !dbg !1072
  store i64 0, ptr %n_tasks27, align 8, !dbg !1073
  %8 = load ptr, ptr @global, align 8, !dbg !1074
  %q_lock = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 2, i64 %qid.065, i32 1, !dbg !1076
  %call = tail call i32 @pthread_mutex_init(ptr noundef nonnull %q_lock, ptr noundef null) #11, !dbg !1077
  %9 = load ptr, ptr @global, align 8, !dbg !1078
  %f_lock = getelementptr inbounds %struct.Global, ptr %9, i64 0, i32 2, i64 %qid.065, i32 5, !dbg !1080
  %call32 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %f_lock, ptr noundef null) #11, !dbg !1081
  call void @llvm.dbg.value(metadata i64 undef, metadata !1027, metadata !DIExpression()), !dbg !1030
  %inc35 = add nuw nsw i64 %qid.065, 1, !dbg !1082
  call void @llvm.dbg.value(metadata i64 %add5, metadata !1027, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %inc35, metadata !1026, metadata !DIExpression()), !dbg !1030
  %10 = load i64, ptr @n_taskqueues, align 8, !dbg !1083
  %cmp = icmp slt i64 %inc35, %10, !dbg !1036
  br i1 %cmp, label %for.body, label %for.end36, !dbg !1039, !llvm.loop !1084

for.end36:                                        ; preds = %for.end, %entry
  %n_local_free_task = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 1, !dbg !1086
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %n_local_free_task, i8 0, i64 16, i1 false), !dbg !1087
  ret void, !dbg !1088
}

; Function Attrs: nounwind
declare !dbg !1089 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @check_task_counter() local_unnamed_addr #0 !dbg !1100 {
entry:
  call void @llvm.dbg.value(metadata i64 0, metadata !1102, metadata !DIExpression()), !dbg !1103
  %0 = load ptr, ptr @global, align 8, !dbg !1104
  %task_counter_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 20, !dbg !1106
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %task_counter_lock) #11, !dbg !1107
  %1 = load ptr, ptr @global, align 8, !dbg !1108
  %task_counter = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 19, !dbg !1110
  %2 = load i64, ptr %task_counter, align 8, !dbg !1110
  %cmp = icmp eq i64 %2, 0, !dbg !1111
  %spec.select = zext i1 %cmp to i64, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1102, metadata !DIExpression()), !dbg !1103
  %inc = add nsw i64 %2, 1, !dbg !1113
  %3 = load i64, ptr @n_processors, align 8, !dbg !1114
  %cmp3.not = icmp slt i64 %inc, %3, !dbg !1116
  %spec.store.select = select i1 %cmp3.not, i64 %inc, i64 0, !dbg !1117
  store i64 %spec.store.select, ptr %task_counter, align 8, !dbg !1103
  %task_counter_lock7 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 20, !dbg !1118
  %call8 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %task_counter_lock7) #11, !dbg !1120
  ret i64 %spec.select, !dbg !1121
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i64 @assign_taskq(i64 noundef %process_id) local_unnamed_addr #6 !dbg !1122 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1126, metadata !DIExpression()), !dbg !1128
  %crnt_taskq_id = getelementptr inbounds [1024 x %struct.anon.4], ptr @task_struct, i64 0, i64 %process_id, i32 3, !dbg !1129
  %0 = load i64, ptr %crnt_taskq_id, align 8, !dbg !1130
  %inc = add nsw i64 %0, 1, !dbg !1130
  call void @llvm.dbg.value(metadata i64 %0, metadata !1127, metadata !DIExpression()), !dbg !1128
  %1 = load i64, ptr @n_taskqueues, align 8, !dbg !1131
  %cmp.not = icmp slt i64 %inc, %1, !dbg !1133
  %spec.store.select = select i1 %cmp.not, i64 %inc, i64 0, !dbg !1134
  store i64 %spec.store.select, ptr %crnt_taskq_id, align 8, !dbg !1128
  ret i64 %0, !dbg !1135
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_task(ptr noundef readonly %task) local_unnamed_addr #7 !dbg !1136 {
entry:
  call void @llvm.dbg.value(metadata ptr %task, metadata !1140, metadata !DIExpression()), !dbg !1141
  %cmp = icmp eq ptr %task, null, !dbg !1142
  br i1 %cmp, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %entry
  %puts26 = tail call i32 @puts(ptr nonnull @str.18), !dbg !1145
  br label %sw.epilog, !dbg !1147

if.end:                                           ; preds = %entry
  %0 = load i64, ptr %task, align 8, !dbg !1148
  switch i64 %0, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb2
    i64 4, label %sw.bb4
    i64 8, label %sw.bb6
    i64 32, label %sw.bb9
    i64 16, label %sw.bb15
  ], !dbg !1149

sw.bb:                                            ; preds = %if.end
  %puts25 = tail call i32 @puts(ptr nonnull @str.17), !dbg !1150
  br label %sw.epilog, !dbg !1152

sw.bb2:                                           ; preds = %if.end
  %puts24 = tail call i32 @puts(ptr nonnull @str.16), !dbg !1153
  br label %sw.epilog, !dbg !1154

sw.bb4:                                           ; preds = %if.end
  %puts23 = tail call i32 @puts(ptr nonnull @str.15), !dbg !1155
  br label %sw.epilog, !dbg !1156

sw.bb6:                                           ; preds = %if.end
  %task7 = getelementptr inbounds %struct._task, ptr %task, i64 0, i32 2, !dbg !1157
  %e = getelementptr inbounds %struct.Ray_Task, ptr %task7, i64 0, i32 1, !dbg !1158
  %1 = load ptr, ptr %e, align 8, !dbg !1158
  %patch = getelementptr inbounds %struct._element, ptr %1, i64 0, i32 1, !dbg !1159
  %2 = load ptr, ptr %patch, align 8, !dbg !1159
  %seq_no = getelementptr inbounds %struct._patch, ptr %2, i64 0, i32 17, !dbg !1160
  %3 = load i64, ptr %seq_no, align 8, !dbg !1160
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %3), !dbg !1161
  br label %sw.epilog, !dbg !1162

sw.bb9:                                           ; preds = %if.end
  %task10 = getelementptr inbounds %struct._task, ptr %task, i64 0, i32 2, !dbg !1163
  %4 = load ptr, ptr %task10, align 8, !dbg !1164
  %patch12 = getelementptr inbounds %struct._element, ptr %4, i64 0, i32 1, !dbg !1165
  %5 = load ptr, ptr %patch12, align 8, !dbg !1165
  %seq_no13 = getelementptr inbounds %struct._patch, ptr %5, i64 0, i32 17, !dbg !1166
  %6 = load i64, ptr %seq_no13, align 8, !dbg !1166
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %6), !dbg !1167
  br label %sw.epilog, !dbg !1168

sw.bb15:                                          ; preds = %if.end
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !1169
  br label %sw.epilog, !dbg !1170

sw.default:                                       ; preds = %if.end
  %7 = load ptr, ptr @stderr, align 8, !dbg !1171
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.12, i64 noundef %0) #12, !dbg !1172
  br label %sw.epilog, !dbg !1173

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb15, %sw.bb9, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  ret void, !dbg !1174
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_taskq(ptr nocapture noundef readonly %tq) local_unnamed_addr #7 !dbg !1175 {
entry:
  call void @llvm.dbg.value(metadata ptr %tq, metadata !1179, metadata !DIExpression()), !dbg !1181
  %n_tasks = getelementptr inbounds %struct.Task_Queue, ptr %tq, i64 0, i32 4, !dbg !1182
  %0 = load i64, ptr %n_tasks, align 8, !dbg !1182
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %0), !dbg !1183
  %top = getelementptr inbounds %struct.Task_Queue, ptr %tq, i64 0, i32 2, !dbg !1184
  call void @llvm.dbg.value(metadata ptr undef, metadata !1180, metadata !DIExpression()), !dbg !1181
  %t.05 = load ptr, ptr %top, align 8, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %t.05, metadata !1180, metadata !DIExpression()), !dbg !1181
  %tobool.not6 = icmp eq ptr %t.05, null, !dbg !1187
  br i1 %tobool.not6, label %for.end, label %for.body, !dbg !1187

for.body:                                         ; preds = %entry, %for.body
  %t.07 = phi ptr [ %t.0, %for.body ], [ %t.05, %entry ]
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14), !dbg !1188
  tail call void @print_task(ptr noundef nonnull %t.07), !dbg !1191
  %next = getelementptr inbounds %struct._task, ptr %t.07, i64 0, i32 1, !dbg !1192
  call void @llvm.dbg.value(metadata ptr undef, metadata !1180, metadata !DIExpression()), !dbg !1181
  %t.0 = load ptr, ptr %next, align 8, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %t.0, metadata !1180, metadata !DIExpression()), !dbg !1181
  %tobool.not = icmp eq ptr %t.0, null, !dbg !1187
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !1187, !llvm.loop !1193

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !1195
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nounwind }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "task_struct", scope: !2, file: !3, line: 1183, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "taskman.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "5e9dcf901a084608291f14ef23a97307")
!4 = !{!5}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!0}
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 67305472, elements: !217)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1175, size: 65728, elements: !9)
!9 = !{!10, !15, !17, !215, !216}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !8, file: !3, line: 1176, baseType: !11, size: 32768)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32768, elements: !13)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14}
!14 = !DISubrange(count: 4096)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "n_local_free_task", scope: !8, file: !3, line: 1178, baseType: !16, size: 64, offset: 32768)
!16 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "local_free_task", scope: !8, file: !3, line: 1179, baseType: !18, size: 64, offset: 32832)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Task", file: !3, line: 665, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_task", file: !3, line: 654, size: 384, elements: !21)
!21 = !{!22, !23, !25}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "task_type", scope: !20, file: !3, line: 655, baseType: !16, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !20, file: !3, line: 656, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !20, file: !3, line: 664, baseType: !26, size: 256, offset: 128)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !20, file: !3, line: 657, size: 256, elements: !27)
!27 = !{!28, !57, !181, !189, !195, !208}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !26, file: !3, line: 658, baseType: !29, size: 128)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Modeling_Task", file: !3, line: 603, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 600, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !3, line: 601, baseType: !16, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !30, file: !3, line: 602, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "Model", file: !3, line: 514, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 510, size: 576, elements: !37)
!37 = !{!38, !46, !47}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !36, file: !3, line: 511, baseType: !39, size: 96)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !40, line: 24, baseType: !41)
!40 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 22, size: 96, elements: !42)
!42 = !{!43, !44, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !41, file: !40, line: 23, baseType: !5, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !41, file: !40, line: 23, baseType: !5, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !41, file: !40, line: 23, baseType: !5, size: 32, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !36, file: !3, line: 512, baseType: !39, size: 96, offset: 96)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy", scope: !36, file: !3, line: 513, baseType: !48, size: 384, offset: 192)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 384, elements: !55)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !40, line: 14, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !40, line: 12, size: 96, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !50, file: !40, line: 13, baseType: !5, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !50, file: !40, line: 13, baseType: !5, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !50, file: !40, line: 13, baseType: !5, size: 32, offset: 64)
!55 = !{!56}
!56 = !DISubrange(count: 4)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "bsp", scope: !26, file: !3, line: 659, baseType: !58, size: 128)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "BSP_Task", file: !3, line: 610, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 607, size: 128, elements: !60)
!60 = !{!61, !180}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !59, file: !3, line: 608, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 349, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 333, size: 1344, elements: !65)
!65 = !{!66, !111, !112, !113, !124, !125, !126, !127, !128, !129, !135, !136, !137, !138, !140, !141, !142, !179}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !64, file: !3, line: 334, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 257, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 252, size: 320, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !69, file: !3, line: 253, baseType: !49, size: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !69, file: !3, line: 254, baseType: !39, size: 96, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !69, file: !3, line: 255, baseType: !5, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !69, file: !3, line: 256, baseType: !75, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 118, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 115, size: 320, elements: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !3, line: 117, baseType: !80, size: 320)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !81, line: 72, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !81, line: 67, size: 320, elements: !83)
!83 = !{!84, !106, !110}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !82, file: !81, line: 69, baseType: !85, size: 320)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !86, line: 22, size: 320, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!87 = !{!88, !90, !92, !93, !94, !95, !97, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !85, file: !86, line: 24, baseType: !89, size: 32)
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !86, line: 25, baseType: !91, size: 32, offset: 32)
!91 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !85, file: !86, line: 26, baseType: !89, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !85, file: !86, line: 28, baseType: !91, size: 32, offset: 96)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !85, file: !86, line: 32, baseType: !89, size: 32, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !85, file: !86, line: 34, baseType: !96, size: 16, offset: 160)
!96 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !85, file: !86, line: 35, baseType: !96, size: 16, offset: 176)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !85, file: !86, line: 36, baseType: !99, size: 128, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !100, line: 53, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !100, line: 49, size: 128, elements: !102)
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !101, file: !100, line: 51, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !101, file: !100, line: 52, baseType: !104, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !82, file: !81, line: 70, baseType: !107, size: 320)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 40)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !82, file: !81, line: 71, baseType: !16, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !64, file: !3, line: 334, baseType: !67, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !64, file: !3, line: 334, baseType: !67, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !64, file: !3, line: 335, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 280, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 276, size: 320, elements: !117)
!117 = !{!118, !119, !120, !122, !123}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !116, file: !3, line: 277, baseType: !67, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !116, file: !3, line: 277, baseType: !67, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !116, file: !3, line: 278, baseType: !121, size: 64, offset: 128)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !116, file: !3, line: 278, baseType: !121, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !116, file: !3, line: 279, baseType: !75, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !64, file: !3, line: 335, baseType: !114, size: 64, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !64, file: !3, line: 335, baseType: !114, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !64, file: !3, line: 336, baseType: !49, size: 96, offset: 384)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !64, file: !3, line: 336, baseType: !49, size: 96, offset: 480)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !64, file: !3, line: 336, baseType: !49, size: 96, offset: 576)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !64, file: !3, line: 337, baseType: !130, size: 128, offset: 672)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 305, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 301, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !131, file: !3, line: 302, baseType: !49, size: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !131, file: !3, line: 303, baseType: !5, size: 32, offset: 96)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !64, file: !3, line: 338, baseType: !5, size: 32, offset: 800)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !64, file: !3, line: 339, baseType: !39, size: 96, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !64, file: !3, line: 341, baseType: !39, size: 96, offset: 928)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !64, file: !3, line: 343, baseType: !139, size: 64, offset: 1024)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !64, file: !3, line: 344, baseType: !139, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !64, file: !3, line: 345, baseType: !139, size: 64, offset: 1152)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !64, file: !3, line: 347, baseType: !143, size: 64, offset: 1216)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 389, size: 1536, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !144, file: !3, line: 390, baseType: !75, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !144, file: !3, line: 391, baseType: !62, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !3, line: 393, baseType: !143, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !144, file: !3, line: 394, baseType: !143, size: 64, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !144, file: !3, line: 395, baseType: !143, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !144, file: !3, line: 396, baseType: !143, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !144, file: !3, line: 397, baseType: !143, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !144, file: !3, line: 399, baseType: !154, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 435, size: 256, elements: !156)
!156 = !{!157, !158, !161, !162, !163, !164}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !3, line: 436, baseType: !154, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !155, file: !3, line: 437, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 414, baseType: !144)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !155, file: !3, line: 438, baseType: !5, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !155, file: !3, line: 439, baseType: !5, size: 32, offset: 160)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !155, file: !3, line: 440, baseType: !5, size: 32, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !155, file: !3, line: 441, baseType: !5, size: 32, offset: 224)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !144, file: !3, line: 400, baseType: !16, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !144, file: !3, line: 401, baseType: !154, size: 64, offset: 576)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !144, file: !3, line: 402, baseType: !16, size: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !144, file: !3, line: 404, baseType: !39, size: 96, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !144, file: !3, line: 406, baseType: !39, size: 96, offset: 800)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !144, file: !3, line: 407, baseType: !39, size: 96, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !144, file: !3, line: 409, baseType: !16, size: 64, offset: 1024)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !144, file: !3, line: 411, baseType: !67, size: 64, offset: 1088)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !144, file: !3, line: 411, baseType: !67, size: 64, offset: 1152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !144, file: !3, line: 411, baseType: !67, size: 64, offset: 1216)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !144, file: !3, line: 412, baseType: !114, size: 64, offset: 1280)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !144, file: !3, line: 412, baseType: !114, size: 64, offset: 1344)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !144, file: !3, line: 412, baseType: !114, size: 64, offset: 1408)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !144, file: !3, line: 413, baseType: !5, size: 32, offset: 1472)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !64, file: !3, line: 348, baseType: !16, size: 64, offset: 1280)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !59, file: !3, line: 609, baseType: !62, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !26, file: !3, line: 660, baseType: !182, size: 256)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "Refinement_Task", file: !3, line: 618, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 614, size: 256, elements: !184)
!184 = !{!185, !186, !187, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "e1", scope: !183, file: !3, line: 615, baseType: !159, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !183, file: !3, line: 615, baseType: !159, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !183, file: !3, line: 616, baseType: !5, size: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !183, file: !3, line: 617, baseType: !16, size: 64, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ray", scope: !26, file: !3, line: 661, baseType: !190, size: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ray_Task", file: !3, line: 624, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 621, size: 128, elements: !192)
!192 = !{!193, !194}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ray_type", scope: !191, file: !3, line: 622, baseType: !16, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !191, file: !3, line: 623, baseType: !159, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "vis", scope: !26, file: !3, line: 662, baseType: !196, size: 256)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "Visibility_Task", file: !3, line: 632, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 627, size: 256, elements: !198)
!198 = !{!199, !200, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !197, file: !3, line: 628, baseType: !159, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !197, file: !3, line: 629, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !3, line: 442, baseType: !155)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "n_inter", scope: !197, file: !3, line: 630, baseType: !16, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !197, file: !3, line: 631, baseType: !205, size: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{null, null}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !26, file: !3, line: 663, baseType: !209, size: 192)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "RadAvg_Task", file: !3, line: 643, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 639, size: 192, elements: !211)
!211 = !{!212, !213, !214}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !210, file: !3, line: 640, baseType: !159, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !210, file: !3, line: 641, baseType: !16, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !210, file: !3, line: 642, baseType: !16, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "crnt_taskq_id", scope: !8, file: !3, line: 1180, baseType: !16, size: 64, offset: 32896)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !8, file: !3, line: 1181, baseType: !11, size: 32768, offset: 32960)
!217 = !{!218}
!218 = !DISubrange(count: 1024)
!219 = !{i32 7, !"Dwarf Version", i32 5}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{i32 7, !"PIC Level", i32 2}
!223 = !{i32 7, !"PIE Level", i32 2}
!224 = !{i32 7, !"uwtable", i32 2}
!225 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!226 = distinct !DISubprogram(name: "process_tasks", scope: !3, file: !3, line: 1204, type: !227, scopeLine: 1205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !16}
!229 = !{!230, !231, !232, !233, !235}
!230 = !DILocalVariable(name: "process_id", arg: 1, scope: !226, file: !3, line: 1204, type: !16)
!231 = !DILocalVariable(name: "t", scope: !226, file: !3, line: 1206, type: !18)
!232 = !DILocalVariable(name: "bar_done", scope: !226, file: !3, line: 1258, type: !16)
!233 = !DILocalVariable(name: "has_task", scope: !234, file: !3, line: 1273, type: !89)
!234 = distinct !DILexicalBlock(scope: !226, file: !3, line: 1261, column: 9)
!235 = !DILabel(scope: !226, name: "retry_entry", file: !3, line: 1208)
!236 = !DILocation(line: 0, scope: !226)
!237 = !DILocation(line: 1206, column: 5, scope: !226)
!238 = !DILocation(line: 0, scope: !234)
!239 = !DILocation(line: 1276, column: 39, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 1274, column: 23)
!241 = distinct !DILexicalBlock(scope: !234, file: !3, line: 1274, column: 13)
!242 = !DILocation(line: 1277, column: 53, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 1277, column: 21)
!244 = !DILocation(line: 1277, column: 22, scope: !243)
!245 = !DILocation(line: 1211, column: 5, scope: !226)
!246 = !DILocation(line: 1208, column: 1, scope: !226)
!247 = !DILocation(line: 1209, column: 9, scope: !226)
!248 = !DILocation(line: 1213, column: 24, scope: !249)
!249 = distinct !DILexicalBlock(scope: !226, file: !3, line: 1212, column: 9)
!250 = !DILocation(line: 1213, column: 13, scope: !249)
!251 = !DILocation(line: 1216, column: 39, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !3, line: 1214, column: 17)
!253 = !DILocation(line: 1216, column: 50, scope: !252)
!254 = !DILocation(line: 1216, column: 71, scope: !252)
!255 = !DILocation(line: 1216, column: 21, scope: !252)
!256 = !DILocation(line: 1217, column: 21, scope: !252)
!257 = !DILocation(line: 1219, column: 38, scope: !252)
!258 = !DILocation(line: 1219, column: 47, scope: !252)
!259 = !DILocation(line: 1219, column: 66, scope: !252)
!260 = !DILocation(line: 1219, column: 21, scope: !252)
!261 = !DILocation(line: 1220, column: 21, scope: !252)
!262 = !DILocation(line: 1222, column: 44, scope: !252)
!263 = !DILocation(line: 1222, column: 53, scope: !252)
!264 = !DILocation(line: 1222, column: 69, scope: !252)
!265 = !DILocation(line: 1222, column: 21, scope: !252)
!266 = !DILocation(line: 1223, column: 21, scope: !252)
!267 = !DILocation(line: 1225, column: 38, scope: !252)
!268 = !DILocation(line: 1225, column: 47, scope: !252)
!269 = !DILocation(line: 1225, column: 21, scope: !252)
!270 = !DILocation(line: 1226, column: 21, scope: !252)
!271 = !DILocation(line: 1228, column: 41, scope: !252)
!272 = !DILocation(line: 1228, column: 50, scope: !252)
!273 = !DILocation(line: 1228, column: 65, scope: !252)
!274 = !DILocation(line: 1229, column: 49, scope: !252)
!275 = !DILocation(line: 1229, column: 70, scope: !252)
!276 = !DILocation(line: 1228, column: 21, scope: !252)
!277 = !DILocation(line: 1230, column: 21, scope: !252)
!278 = !DILocation(line: 1232, column: 45, scope: !252)
!279 = !DILocation(line: 1232, column: 54, scope: !252)
!280 = !DILocation(line: 1232, column: 69, scope: !252)
!281 = !DILocation(line: 1232, column: 21, scope: !252)
!282 = !DILocation(line: 1233, column: 21, scope: !252)
!283 = !DILocation(line: 1235, column: 30, scope: !252)
!284 = !DILocation(line: 1235, column: 21, scope: !252)
!285 = !DILocation(line: 1236, column: 17, scope: !252)
!286 = !DILocation(line: 1239, column: 13, scope: !249)
!287 = !DILocation(line: 1242, column: 17, scope: !249)
!288 = distinct !{!288, !245, !289, !290, !291}
!289 = !DILocation(line: 1243, column: 9, scope: !226)
!290 = !{!"llvm.loop.mustprogress"}
!291 = !{!"llvm.loop.unroll.disable"}
!292 = !DILocation(line: 1249, column: 27, scope: !293)
!293 = distinct !DILexicalBlock(scope: !226, file: !3, line: 1249, column: 5)
!294 = !DILocation(line: 1249, column: 35, scope: !293)
!295 = !DILocation(line: 1249, column: 6, scope: !293)
!296 = !DILocation(line: 1251, column: 9, scope: !297)
!297 = distinct !DILexicalBlock(scope: !226, file: !3, line: 1251, column: 9)
!298 = !DILocation(line: 1251, column: 17, scope: !297)
!299 = !DILocation(line: 1251, column: 31, scope: !297)
!300 = !DILocation(line: 1251, column: 28, scope: !297)
!301 = !DILocation(line: 1255, column: 23, scope: !226)
!302 = !DILocation(line: 1258, column: 42, scope: !226)
!303 = !DILocation(line: 1260, column: 5, scope: !226)
!304 = !DILocation(line: 1263, column: 17, scope: !305)
!305 = distinct !DILexicalBlock(scope: !234, file: !3, line: 1263, column: 17)
!306 = !DILocation(line: 1263, column: 17, scope: !234)
!307 = !DILocation(line: 1273, column: 38, scope: !234)
!308 = !DILocation(line: 1273, column: 64, scope: !234)
!309 = !DILocation(line: 1273, column: 24, scope: !234)
!310 = !DILocation(line: 1274, column: 13, scope: !241)
!311 = !DILocation(line: 1274, column: 13, scope: !234)
!312 = !DILocation(line: 1282, column: 43, scope: !234)
!313 = !DILocation(line: 1282, column: 41, scope: !234)
!314 = !DILocation(line: 1287, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !226, file: !3, line: 1286, column: 5)
!316 = !DILocation(line: 1287, column: 31, scope: !315)
!317 = !DILocation(line: 1287, column: 1, scope: !315)
!318 = !DILocation(line: 1288, column: 2, scope: !315)
!319 = !DILocation(line: 1288, column: 19, scope: !315)
!320 = !DILocation(line: 1288, column: 29, scope: !315)
!321 = !DILocation(line: 1289, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 1289, column: 5)
!323 = !DILocation(line: 1289, column: 38, scope: !322)
!324 = !DILocation(line: 1289, column: 34, scope: !322)
!325 = !DILocation(line: 1289, column: 5, scope: !315)
!326 = !DILocation(line: 1290, column: 31, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !3, line: 1289, column: 53)
!328 = !DILocation(line: 1291, column: 45, scope: !327)
!329 = !DILocation(line: 1291, column: 2, scope: !327)
!330 = !DILocation(line: 1292, column: 1, scope: !327)
!331 = !DILocation(line: 1289, column: 14, scope: !322)
!332 = !DILocation(line: 1293, column: 40, scope: !333)
!333 = distinct !DILexicalBlock(scope: !322, file: !3, line: 1292, column: 8)
!334 = !DILocation(line: 1293, column: 2, scope: !333)
!335 = !DILocation(line: 1295, column: 25, scope: !315)
!336 = !DILocation(line: 1295, column: 33, scope: !315)
!337 = !DILocation(line: 1295, column: 1, scope: !315)
!338 = !DILocation(line: 1297, column: 1, scope: !226)
!339 = distinct !DISubprogram(name: "dequeue_task", scope: !3, file: !3, line: 1581, type: !340, scopeLine: 1590, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!18, !16, !16, !16}
!342 = !{!343, !344, !345, !346, !360, !361, !362, !363, !364}
!343 = !DILocalVariable(name: "qid", arg: 1, scope: !339, file: !3, line: 1581, type: !16)
!344 = !DILocalVariable(name: "max_visit", arg: 2, scope: !339, file: !3, line: 1581, type: !16)
!345 = !DILocalVariable(name: "process_id", arg: 3, scope: !339, file: !3, line: 1581, type: !16)
!346 = !DILocalVariable(name: "tq", scope: !339, file: !3, line: 1591, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "Task_Queue", file: !3, line: 679, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 668, size: 66496, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !357, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !349, file: !3, line: 669, baseType: !11, size: 32768)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "q_lock", scope: !349, file: !3, line: 671, baseType: !80, size: 320, offset: 32768)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !349, file: !3, line: 672, baseType: !18, size: 64, offset: 33088)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !349, file: !3, line: 672, baseType: !18, size: 64, offset: 33152)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "n_tasks", scope: !349, file: !3, line: 673, baseType: !16, size: 64, offset: 33216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !349, file: !3, line: 674, baseType: !80, size: 320, offset: 33280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "n_free", scope: !349, file: !3, line: 675, baseType: !16, size: 64, offset: 33600)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !349, file: !3, line: 676, baseType: !18, size: 64, offset: 33664)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !349, file: !3, line: 677, baseType: !11, size: 32768, offset: 33728)
!360 = !DILocalVariable(name: "t", scope: !339, file: !3, line: 1592, type: !18)
!361 = !DILocalVariable(name: "prev", scope: !339, file: !3, line: 1593, type: !18)
!362 = !DILocalVariable(name: "visit_count", scope: !339, file: !3, line: 1594, type: !16)
!363 = !DILocalVariable(name: "sign", scope: !339, file: !3, line: 1595, type: !16)
!364 = !DILocalVariable(name: "offset", scope: !339, file: !3, line: 1596, type: !16)
!365 = !DILocation(line: 0, scope: !339)
!366 = !DILocation(line: 1599, column: 21, scope: !367)
!367 = distinct !DILexicalBlock(scope: !339, file: !3, line: 1599, column: 9)
!368 = !DILocation(line: 1599, column: 9, scope: !339)
!369 = !DILocation(line: 1603, column: 24, scope: !339)
!370 = !DILocation(line: 1603, column: 5, scope: !339)
!371 = !DILocation(line: 1606, column: 19, scope: !372)
!372 = distinct !DILexicalBlock(scope: !339, file: !3, line: 1604, column: 9)
!373 = !DILocation(line: 1609, column: 47, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !3, line: 1609, column: 21)
!375 = !DILocation(line: 1609, column: 22, scope: !374)
!376 = !DILocation(line: 1610, column: 11, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 1610, column: 7)
!378 = !DILocation(line: 1610, column: 19, scope: !377)
!379 = !DILocation(line: 1610, column: 7, scope: !372)
!380 = !DILocation(line: 1612, column: 29, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !3, line: 1612, column: 25)
!382 = distinct !DILexicalBlock(scope: !377, file: !3, line: 1611, column: 3)
!383 = !DILocation(line: 1612, column: 25, scope: !381)
!384 = !DILocation(line: 1612, column: 25, scope: !382)
!385 = !DILocation(line: 1614, column: 40, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !3, line: 1614, column: 33)
!387 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1613, column: 25)
!388 = !DILocation(line: 1614, column: 37, scope: !386)
!389 = !DILocation(line: 1614, column: 33, scope: !387)
!390 = !DILocation(line: 1617, column: 50, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1615, column: 33)
!392 = !DILocation(line: 1617, column: 45, scope: !391)
!393 = !DILocation(line: 1618, column: 49, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1618, column: 41)
!395 = !DILocation(line: 1618, column: 41, scope: !391)
!396 = !DILocation(line: 0, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1625, column: 37)
!398 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1623, column: 33)
!399 = !DILocation(line: 1625, column: 69, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !3, line: 1625, column: 37)
!401 = !DILocation(line: 1625, column: 37, scope: !397)
!402 = distinct !{!402, !401, !403, !290, !291}
!403 = !DILocation(line: 1626, column: 65, scope: !397)
!404 = !DILocation(line: 1628, column: 46, scope: !405)
!405 = distinct !DILexicalBlock(scope: !398, file: !3, line: 1628, column: 41)
!406 = !DILocation(line: 1628, column: 41, scope: !398)
!407 = !DILocation(line: 1629, column: 49, scope: !405)
!408 = !DILocation(line: 1629, column: 41, scope: !405)
!409 = !DILocation(line: 1631, column: 47, scope: !405)
!410 = !DILocation(line: 1631, column: 52, scope: !405)
!411 = !DILocation(line: 1633, column: 48, scope: !398)
!412 = !DILocation(line: 0, scope: !386)
!413 = !DILocation(line: 1637, column: 22, scope: !414)
!414 = distinct !DILexicalBlock(scope: !382, file: !3, line: 1637, column: 21)
!415 = !DILocation(line: 1638, column: 21, scope: !382)
!416 = !DILocation(line: 1641, column: 4, scope: !417)
!417 = distinct !DILexicalBlock(scope: !372, file: !3, line: 1641, column: 3)
!418 = !DILocation(line: 1644, column: 24, scope: !372)
!419 = !DILocation(line: 1647, column: 28, scope: !372)
!420 = !DILocation(line: 1647, column: 22, scope: !372)
!421 = !DILocation(line: 1648, column: 20, scope: !372)
!422 = !DILocation(line: 1650, column: 17, scope: !372)
!423 = !DILocation(line: 1651, column: 21, scope: !424)
!424 = distinct !DILexicalBlock(scope: !372, file: !3, line: 1651, column: 17)
!425 = !DILocation(line: 0, scope: !424)
!426 = !DILocation(line: 1651, column: 17, scope: !372)
!427 = !DILocation(line: 1652, column: 21, scope: !424)
!428 = !DILocation(line: 1652, column: 17, scope: !424)
!429 = !DILocation(line: 1653, column: 26, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !3, line: 1653, column: 22)
!431 = !DILocation(line: 1653, column: 22, scope: !424)
!432 = !DILocation(line: 0, scope: !372)
!433 = distinct !{!433, !370, !434, !290, !291}
!434 = !DILocation(line: 1655, column: 9, scope: !339)
!435 = !DILocation(line: 1657, column: 5, scope: !339)
!436 = !DISubprogram(name: "process_model", scope: !3, file: !3, line: 535, type: !437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !34, !16, !16}
!439 = !{}
!440 = !DISubprogram(name: "define_patch", scope: !3, file: !3, line: 447, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !62, !62, !16}
!443 = !DISubprogram(name: "ff_refine_elements", scope: !3, file: !3, line: 1072, type: !444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !159, !159, !16, !16}
!446 = !DISubprogram(name: "process_rays", scope: !3, file: !3, line: 1078, type: !447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !159, !16}
!449 = !DISubprogram(name: "visibility_task", scope: !3, file: !3, line: 1169, type: !450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !159, !201, !16, !205, !16}
!452 = !DISubprogram(name: "radiosity_averaging", scope: !3, file: !3, line: 1046, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !159, !16, !16}
!455 = distinct !DISubprogram(name: "free_task", scope: !3, file: !3, line: 1794, type: !456, scopeLine: 1795, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !18, !16}
!458 = !{!459, !460, !461, !462, !463, !464}
!459 = !DILocalVariable(name: "task", arg: 1, scope: !455, file: !3, line: 1794, type: !18)
!460 = !DILocalVariable(name: "process_id", arg: 2, scope: !455, file: !3, line: 1794, type: !16)
!461 = !DILocalVariable(name: "tq", scope: !455, file: !3, line: 1796, type: !347)
!462 = !DILocalVariable(name: "p", scope: !455, file: !3, line: 1797, type: !18)
!463 = !DILocalVariable(name: "top", scope: !455, file: !3, line: 1797, type: !18)
!464 = !DILocalVariable(name: "i", scope: !455, file: !3, line: 1798, type: !16)
!465 = !DILocation(line: 0, scope: !455)
!466 = !DILocation(line: 1801, column: 42, scope: !455)
!467 = !DILocation(line: 1801, column: 11, scope: !455)
!468 = !DILocation(line: 1801, column: 16, scope: !455)
!469 = !DILocation(line: 1802, column: 45, scope: !455)
!470 = !DILocation(line: 1803, column: 29, scope: !455)
!471 = !DILocation(line: 1803, column: 46, scope: !455)
!472 = !DILocation(line: 1806, column: 51, scope: !473)
!473 = distinct !DILexicalBlock(scope: !455, file: !3, line: 1806, column: 9)
!474 = !DILocation(line: 1806, column: 9, scope: !455)
!475 = !DILocation(line: 1808, column: 19, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 1807, column: 9)
!477 = !DILocation(line: 1808, column: 39, scope: !476)
!478 = !DILocation(line: 1810, column: 13, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !3, line: 1810, column: 13)
!480 = !DILocation(line: 1811, column: 48, scope: !481)
!481 = distinct !DILexicalBlock(scope: !479, file: !3, line: 1810, column: 13)
!482 = !DILocation(line: 1811, column: 59, scope: !481)
!483 = !DILocation(line: 0, scope: !479)
!484 = !DILocation(line: 1811, column: 19, scope: !481)
!485 = distinct !{!485, !478, !486, !290, !291}
!486 = !DILocation(line: 1811, column: 66, scope: !479)
!487 = !DILocation(line: 1815, column: 58, scope: !476)
!488 = !DILocation(line: 1815, column: 53, scope: !476)
!489 = !DILocation(line: 1816, column: 55, scope: !476)
!490 = !DILocation(line: 1819, column: 39, scope: !491)
!491 = distinct !DILexicalBlock(scope: !476, file: !3, line: 1819, column: 13)
!492 = !DILocation(line: 1819, column: 14, scope: !491)
!493 = !DILocation(line: 1820, column: 27, scope: !476)
!494 = !DILocation(line: 1820, column: 21, scope: !476)
!495 = !DILocation(line: 1821, column: 22, scope: !476)
!496 = !DILocation(line: 1822, column: 17, scope: !476)
!497 = !DILocation(line: 1822, column: 24, scope: !476)
!498 = !DILocation(line: 1823, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !476, file: !3, line: 1823, column: 13)
!500 = !DILocation(line: 1824, column: 9, scope: !476)
!501 = !DILocation(line: 1825, column: 1, scope: !455)
!502 = !DISubprogram(name: "pthread_mutex_lock", scope: !503, file: !503, line: 738, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!503 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!504 = !DISubroutineType(types: !505)
!505 = !{!89, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!507 = !DISubprogram(name: "pthread_mutex_unlock", scope: !503, file: !503, line: 756, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!508 = distinct !DISubprogram(name: "_process_task_wait_loop", scope: !3, file: !3, line: 1299, type: !509, scopeLine: 1300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!16}
!511 = !{!512, !513}
!512 = !DILocalVariable(name: "i", scope: !508, file: !3, line: 1301, type: !16)
!513 = !DILocalVariable(name: "finished", scope: !508, file: !3, line: 1302, type: !16)
!514 = !DILocation(line: 0, scope: !508)
!515 = !DILocation(line: 1305, column: 27, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 1305, column: 5)
!517 = distinct !DILexicalBlock(scope: !508, file: !3, line: 1305, column: 5)
!518 = !DILocation(line: 1307, column: 17, scope: !519)
!519 = distinct !DILexicalBlock(scope: !520, file: !3, line: 1307, column: 13)
!520 = distinct !DILexicalBlock(scope: !516, file: !3, line: 1306, column: 9)
!521 = !DILocation(line: 1307, column: 25, scope: !519)
!522 = !DILocation(line: 1307, column: 13, scope: !520)
!523 = !DILocation(line: 1308, column: 26, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 1308, column: 4)
!525 = distinct !DILexicalBlock(scope: !519, file: !3, line: 1307, column: 32)
!526 = !DILocation(line: 1308, column: 34, scope: !524)
!527 = !DILocation(line: 1308, column: 5, scope: !524)
!528 = !DILocation(line: 1309, column: 16, scope: !529)
!529 = distinct !DILexicalBlock(scope: !525, file: !3, line: 1309, column: 16)
!530 = !DILocation(line: 1309, column: 24, scope: !529)
!531 = !DILocation(line: 1309, column: 38, scope: !529)
!532 = !DILocation(line: 1309, column: 35, scope: !529)
!533 = !DILocation(line: 1309, column: 16, scope: !525)
!534 = !DILocation(line: 1311, column: 36, scope: !535)
!535 = distinct !DILexicalBlock(scope: !525, file: !3, line: 1311, column: 4)
!536 = !DILocation(line: 1311, column: 5, scope: !535)
!537 = !DILocation(line: 1312, column: 9, scope: !525)
!538 = !DILocation(line: 1305, column: 44, scope: !516)
!539 = !DILocation(line: 1305, column: 20, scope: !516)
!540 = distinct !{!540, !541, !542, !290, !291}
!541 = !DILocation(line: 1305, column: 5, scope: !517)
!542 = !DILocation(line: 1313, column: 9, scope: !517)
!543 = !DILocation(line: 1315, column: 5, scope: !508)
!544 = distinct !DISubprogram(name: "peek_dequeue", scope: !3, file: !3, line: 1660, type: !545, scopeLine: 1665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!89, !16, !16, !16}
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556}
!548 = !DILocalVariable(name: "qid", arg: 1, scope: !544, file: !3, line: 1660, type: !16)
!549 = !DILocalVariable(name: "max_visit", arg: 2, scope: !544, file: !3, line: 1660, type: !16)
!550 = !DILocalVariable(name: "process_id", arg: 3, scope: !544, file: !3, line: 1660, type: !16)
!551 = !DILocalVariable(name: "tq", scope: !544, file: !3, line: 1666, type: !347)
!552 = !DILocalVariable(name: "task_found", scope: !544, file: !3, line: 1667, type: !89)
!553 = !DILocalVariable(name: "prev", scope: !544, file: !3, line: 1668, type: !18)
!554 = !DILocalVariable(name: "visit_count", scope: !544, file: !3, line: 1669, type: !16)
!555 = !DILocalVariable(name: "sign", scope: !544, file: !3, line: 1670, type: !16)
!556 = !DILocalVariable(name: "offset", scope: !544, file: !3, line: 1671, type: !16)
!557 = !DILocation(line: 0, scope: !544)
!558 = !DILocation(line: 1668, column: 11, scope: !544)
!559 = !DILocation(line: 1674, column: 21, scope: !560)
!560 = distinct !DILexicalBlock(scope: !544, file: !3, line: 1674, column: 9)
!561 = !DILocation(line: 1674, column: 9, scope: !544)
!562 = !DILocation(line: 1678, column: 24, scope: !544)
!563 = !DILocation(line: 1678, column: 5, scope: !544)
!564 = !DILocation(line: 1681, column: 15, scope: !565)
!565 = distinct !DILexicalBlock(scope: !544, file: !3, line: 1679, column: 5)
!566 = !DILocation(line: 1684, column: 35, scope: !567)
!567 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1684, column: 9)
!568 = !DILocation(line: 1684, column: 10, scope: !567)
!569 = !DILocation(line: 1685, column: 11, scope: !570)
!570 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1685, column: 7)
!571 = !DILocation(line: 1685, column: 19, scope: !570)
!572 = !DILocation(line: 1685, column: 7, scope: !565)
!573 = !DILocation(line: 1687, column: 13, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1687, column: 9)
!575 = distinct !DILexicalBlock(scope: !570, file: !3, line: 1686, column: 3)
!576 = !DILocation(line: 1687, column: 9, scope: !574)
!577 = !DILocation(line: 1687, column: 9, scope: !575)
!578 = !DILocation(line: 1692, column: 5, scope: !579)
!579 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1692, column: 4)
!580 = !DILocation(line: 1693, column: 4, scope: !575)
!581 = !DILocation(line: 1696, column: 4, scope: !582)
!582 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1696, column: 3)
!583 = !DILocation(line: 1699, column: 20, scope: !565)
!584 = !DILocation(line: 1702, column: 24, scope: !565)
!585 = !DILocation(line: 1702, column: 18, scope: !565)
!586 = !DILocation(line: 1703, column: 16, scope: !565)
!587 = !DILocation(line: 1705, column: 13, scope: !565)
!588 = !DILocation(line: 1706, column: 17, scope: !589)
!589 = distinct !DILexicalBlock(scope: !565, file: !3, line: 1706, column: 13)
!590 = !DILocation(line: 0, scope: !589)
!591 = !DILocation(line: 1706, column: 13, scope: !565)
!592 = !DILocation(line: 1707, column: 17, scope: !589)
!593 = !DILocation(line: 1707, column: 13, scope: !589)
!594 = !DILocation(line: 1708, column: 22, scope: !595)
!595 = distinct !DILexicalBlock(scope: !589, file: !3, line: 1708, column: 18)
!596 = !DILocation(line: 1708, column: 18, scope: !589)
!597 = !DILocation(line: 0, scope: !565)
!598 = distinct !{!598, !563, !599, !290, !291}
!599 = !DILocation(line: 1710, column: 5, scope: !544)
!600 = !DILocation(line: 1712, column: 5, scope: !544)
!601 = !DISubprogram(name: "pthread_cond_broadcast", scope: !503, file: !503, line: 978, type: !602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!602 = !DISubroutineType(types: !603)
!603 = !{!89, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !81, line: 80, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !81, line: 75, size: 384, elements: !607)
!607 = !{!608, !638, !642}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !606, file: !81, line: 77, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !100, line: 92, size: 384, elements: !610)
!610 = !{!611, !621, !630, !634, !635, !636, !637}
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !100, line: 94, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !100, line: 94, size: 64, elements: !613)
!613 = !{!614, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !612, file: !100, line: 96, baseType: !615, size: 64)
!615 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !612, file: !100, line: 101, baseType: !617, size: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !612, file: !100, line: 97, size: 64, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !617, file: !100, line: 99, baseType: !91, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !617, file: !100, line: 100, baseType: !91, size: 32, offset: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !100, line: 103, baseType: !622, size: 64, offset: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !609, file: !100, line: 103, size: 64, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !622, file: !100, line: 105, baseType: !615, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !622, file: !100, line: 110, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !622, file: !100, line: 106, size: 64, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !626, file: !100, line: 108, baseType: !91, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !626, file: !100, line: 109, baseType: !91, size: 32, offset: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !609, file: !100, line: 112, baseType: !631, size: 64, offset: 128)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 2)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !609, file: !100, line: 113, baseType: !631, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !609, file: !100, line: 114, baseType: !91, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !609, file: !100, line: 115, baseType: !91, size: 32, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !609, file: !100, line: 116, baseType: !631, size: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !606, file: !81, line: 78, baseType: !639, size: 384)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 384, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 48)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !606, file: !81, line: 79, baseType: !643, size: 64)
!643 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!644 = !DISubprogram(name: "pthread_cond_wait", scope: !503, file: !503, line: 986, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!645 = !DISubroutineType(types: !646)
!646 = !{!89, !647, !648}
!647 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !604)
!648 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !506)
!649 = distinct !DISubprogram(name: "create_modeling_task", scope: !3, file: !3, line: 1332, type: !437, scopeLine: 1333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!650 = !{!651, !652, !653}
!651 = !DILocalVariable(name: "model", arg: 1, scope: !649, file: !3, line: 1332, type: !34)
!652 = !DILocalVariable(name: "type", arg: 2, scope: !649, file: !3, line: 1332, type: !16)
!653 = !DILocalVariable(name: "process_id", arg: 3, scope: !649, file: !3, line: 1332, type: !16)
!654 = !DILocation(line: 0, scope: !649)
!655 = !DILocation(line: 1337, column: 5, scope: !649)
!656 = !DILocation(line: 1338, column: 5, scope: !649)
!657 = distinct !DISubprogram(name: "create_bsp_task", scope: !3, file: !3, line: 1342, type: !441, scopeLine: 1343, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "patch", arg: 1, scope: !657, file: !3, line: 1342, type: !62)
!660 = !DILocalVariable(name: "parent", arg: 2, scope: !657, file: !3, line: 1342, type: !62)
!661 = !DILocalVariable(name: "process_id", arg: 3, scope: !657, file: !3, line: 1342, type: !16)
!662 = !DILocation(line: 0, scope: !657)
!663 = !DILocation(line: 1345, column: 5, scope: !657)
!664 = !DILocation(line: 1346, column: 5, scope: !657)
!665 = distinct !DISubprogram(name: "create_ff_refine_task", scope: !3, file: !3, line: 1351, type: !444, scopeLine: 1352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!666 = !{!667, !668, !669, !670, !671}
!667 = !DILocalVariable(name: "e1", arg: 1, scope: !665, file: !3, line: 1351, type: !159)
!668 = !DILocalVariable(name: "e2", arg: 2, scope: !665, file: !3, line: 1351, type: !159)
!669 = !DILocalVariable(name: "level", arg: 3, scope: !665, file: !3, line: 1351, type: !16)
!670 = !DILocalVariable(name: "process_id", arg: 4, scope: !665, file: !3, line: 1351, type: !16)
!671 = !DILocalVariable(name: "t", scope: !665, file: !3, line: 1353, type: !18)
!672 = !DILocation(line: 0, scope: !665)
!673 = !DILocation(line: 1356, column: 25, scope: !674)
!674 = distinct !DILexicalBlock(scope: !665, file: !3, line: 1356, column: 9)
!675 = !DILocation(line: 1356, column: 45, scope: !674)
!676 = !DILocation(line: 1356, column: 73, scope: !674)
!677 = !DILocation(line: 1356, column: 9, scope: !674)
!678 = !DILocation(line: 1356, column: 9, scope: !665)
!679 = !DILocation(line: 1359, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !674, file: !3, line: 1357, column: 9)
!681 = !DILocation(line: 1360, column: 13, scope: !680)
!682 = !DILocation(line: 1364, column: 9, scope: !665)
!683 = !DILocation(line: 1365, column: 18, scope: !665)
!684 = !DILocation(line: 1366, column: 8, scope: !665)
!685 = !DILocation(line: 1366, column: 33, scope: !665)
!686 = !DILocation(line: 1367, column: 17, scope: !665)
!687 = !DILocation(line: 1367, column: 33, scope: !665)
!688 = !DILocation(line: 1368, column: 17, scope: !665)
!689 = !DILocation(line: 1368, column: 33, scope: !665)
!690 = !DILocation(line: 1371, column: 19, scope: !665)
!691 = !DILocation(line: 1371, column: 5, scope: !665)
!692 = !DILocation(line: 1372, column: 1, scope: !665)
!693 = distinct !DISubprogram(name: "taskq_too_long", scope: !3, file: !3, line: 687, type: !694, scopeLine: 687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{!89, !347, !16}
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "q", arg: 1, scope: !693, file: !3, line: 687, type: !347)
!698 = !DILocalVariable(name: "n_tasks_per_queue", arg: 2, scope: !693, file: !3, line: 687, type: !16)
!699 = !DILocalVariable(name: "too_long", scope: !693, file: !3, line: 689, type: !16)
!700 = !DILocation(line: 0, scope: !693)
!701 = !DILocation(line: 688, column: 27, scope: !702)
!702 = distinct !DILexicalBlock(scope: !693, file: !3, line: 688, column: 2)
!703 = !DILocation(line: 688, column: 3, scope: !702)
!704 = !DILocation(line: 689, column: 24, scope: !693)
!705 = !DILocation(line: 689, column: 32, scope: !693)
!706 = !DILocation(line: 690, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !693, file: !3, line: 690, column: 2)
!708 = !DILocation(line: 691, column: 5, scope: !693)
!709 = distinct !DISubprogram(name: "get_task", scope: !3, file: !3, line: 1724, type: !710, scopeLine: 1725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !712)
!710 = !DISubroutineType(types: !711)
!711 = !{!18, !16}
!712 = !{!713, !714, !715, !716, !717, !718}
!713 = !DILocalVariable(name: "process_id", arg: 1, scope: !709, file: !3, line: 1724, type: !16)
!714 = !DILocalVariable(name: "p", scope: !709, file: !3, line: 1726, type: !18)
!715 = !DILocalVariable(name: "tq", scope: !709, file: !3, line: 1727, type: !347)
!716 = !DILocalVariable(name: "i", scope: !709, file: !3, line: 1728, type: !16)
!717 = !DILocalVariable(name: "q_id", scope: !709, file: !3, line: 1729, type: !16)
!718 = !DILocalVariable(name: "retry_count", scope: !709, file: !3, line: 1730, type: !16)
!719 = !DILocation(line: 0, scope: !709)
!720 = !DILocation(line: 1733, column: 33, scope: !721)
!721 = distinct !DILexicalBlock(scope: !709, file: !3, line: 1733, column: 9)
!722 = !DILocation(line: 1733, column: 49, scope: !721)
!723 = !DILocation(line: 1733, column: 9, scope: !709)
!724 = !DILocation(line: 1736, column: 20, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !3, line: 1734, column: 9)
!726 = !DILocation(line: 1738, column: 13, scope: !725)
!727 = !DILocation(line: 1765, column: 25, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1765, column: 25)
!729 = distinct !DILexicalBlock(scope: !725, file: !3, line: 1739, column: 17)
!730 = !DILocation(line: 1761, column: 25, scope: !731)
!731 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1761, column: 25)
!732 = !DILocation(line: 1761, column: 35, scope: !731)
!733 = !DILocation(line: 1761, column: 32, scope: !731)
!734 = !DILocation(line: 1761, column: 25, scope: !729)
!735 = !DILocation(line: 1738, column: 44, scope: !725)
!736 = !DILocation(line: 1738, column: 60, scope: !725)
!737 = !DILocation(line: 1740, column: 27, scope: !729)
!738 = !DILocation(line: 1742, column: 55, scope: !739)
!739 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1742, column: 29)
!740 = !DILocation(line: 1742, column: 30, scope: !739)
!741 = !DILocation(line: 1743, column: 37, scope: !742)
!742 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1743, column: 33)
!743 = !DILocation(line: 1743, column: 33, scope: !742)
!744 = !DILocation(line: 1743, column: 33, scope: !729)
!745 = !DILocation(line: 1747, column: 75, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1746, column: 37)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1746, column: 37)
!748 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1744, column: 33)
!749 = !DILocation(line: 1747, column: 69, scope: !746)
!750 = !DILocation(line: 1746, column: 37, scope: !747)
!751 = !DILocation(line: 1748, column: 42, scope: !746)
!752 = !DILocation(line: 1747, column: 44, scope: !746)
!753 = distinct !{!753, !750, !754, !290, !291}
!754 = !DILocation(line: 1748, column: 60, scope: !747)
!755 = !DILocation(line: 0, scope: !747)
!756 = !DILocation(line: 1750, column: 77, scope: !748)
!757 = !DILocation(line: 1751, column: 61, scope: !748)
!758 = !DILocation(line: 1751, column: 79, scope: !748)
!759 = !DILocation(line: 1752, column: 51, scope: !748)
!760 = !DILocation(line: 1752, column: 46, scope: !748)
!761 = !DILocation(line: 1753, column: 41, scope: !748)
!762 = !DILocation(line: 1753, column: 48, scope: !748)
!763 = !DILocation(line: 1754, column: 45, scope: !748)
!764 = !DILocation(line: 1755, column: 38, scope: !765)
!765 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1755, column: 37)
!766 = !DILocation(line: 1781, column: 33, scope: !709)
!767 = !DILocation(line: 1756, column: 37, scope: !748)
!768 = !DILocation(line: 1758, column: 30, scope: !769)
!769 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1758, column: 29)
!770 = !DILocation(line: 1765, column: 39, scope: !728)
!771 = !DILocation(line: 1765, column: 25, scope: !729)
!772 = distinct !{!772, !726, !773, !290, !291}
!773 = !DILocation(line: 1776, column: 17, scope: !725)
!774 = !DILocation(line: 1767, column: 38, scope: !775)
!775 = distinct !DILexicalBlock(scope: !728, file: !3, line: 1766, column: 25)
!776 = !DILocation(line: 1767, column: 29, scope: !775)
!777 = !DILocation(line: 1769, column: 38, scope: !775)
!778 = !DILocation(line: 1769, column: 87, scope: !775)
!779 = !DILocation(line: 1769, column: 29, scope: !775)
!780 = !DILocation(line: 1770, column: 38, scope: !775)
!781 = !DILocation(line: 1771, column: 37, scope: !775)
!782 = !DILocation(line: 1771, column: 45, scope: !775)
!783 = !DILocation(line: 1771, column: 59, scope: !775)
!784 = !DILocation(line: 1770, column: 29, scope: !775)
!785 = !DILocation(line: 1772, column: 38, scope: !775)
!786 = !DILocation(line: 1773, column: 37, scope: !775)
!787 = !DILocation(line: 1773, column: 45, scope: !775)
!788 = !DILocation(line: 1773, column: 59, scope: !775)
!789 = !DILocation(line: 1772, column: 29, scope: !775)
!790 = !DILocation(line: 1774, column: 29, scope: !775)
!791 = !DILocation(line: 1782, column: 50, scope: !709)
!792 = !DILocation(line: 1782, column: 45, scope: !709)
!793 = !DILocation(line: 1783, column: 29, scope: !709)
!794 = !DILocation(line: 1783, column: 46, scope: !709)
!795 = !DILocation(line: 1786, column: 13, scope: !709)
!796 = !DILocation(line: 1789, column: 5, scope: !709)
!797 = distinct !DISubprogram(name: "enqueue_task", scope: !3, file: !3, line: 1540, type: !798, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !800)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !16, !18, !16}
!800 = !{!801, !802, !803, !804}
!801 = !DILocalVariable(name: "qid", arg: 1, scope: !797, file: !3, line: 1540, type: !16)
!802 = !DILocalVariable(name: "task", arg: 2, scope: !797, file: !3, line: 1540, type: !18)
!803 = !DILocalVariable(name: "mode", arg: 3, scope: !797, file: !3, line: 1540, type: !16)
!804 = !DILocalVariable(name: "tq", scope: !797, file: !3, line: 1542, type: !347)
!805 = !DILocation(line: 0, scope: !797)
!806 = !DILocation(line: 1545, column: 11, scope: !797)
!807 = !DILocation(line: 1548, column: 31, scope: !808)
!808 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1548, column: 5)
!809 = !DILocation(line: 1548, column: 6, scope: !808)
!810 = !DILocation(line: 1550, column: 13, scope: !811)
!811 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1550, column: 9)
!812 = !DILocation(line: 1550, column: 18, scope: !811)
!813 = !DILocation(line: 1550, column: 9, scope: !797)
!814 = !DILocation(line: 1553, column: 25, scope: !815)
!815 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1551, column: 9)
!816 = !DILocation(line: 1554, column: 17, scope: !815)
!817 = !DILocation(line: 1554, column: 25, scope: !815)
!818 = !DILocation(line: 1555, column: 17, scope: !815)
!819 = !DILocation(line: 1555, column: 25, scope: !815)
!820 = !DILocation(line: 1556, column: 9, scope: !815)
!821 = !DILocation(line: 1560, column: 22, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 1560, column: 17)
!823 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1558, column: 9)
!824 = !DILocation(line: 1560, column: 17, scope: !823)
!825 = !DILocation(line: 1562, column: 31, scope: !826)
!826 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1561, column: 17)
!827 = !DILocation(line: 1562, column: 36, scope: !826)
!828 = !DILocation(line: 1563, column: 30, scope: !826)
!829 = !DILocation(line: 1564, column: 25, scope: !826)
!830 = !DILocation(line: 1564, column: 32, scope: !826)
!831 = !DILocation(line: 1565, column: 17, scope: !826)
!832 = !DILocation(line: 1568, column: 38, scope: !833)
!833 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1567, column: 17)
!834 = !DILocation(line: 1568, column: 27, scope: !833)
!835 = !DILocation(line: 1568, column: 32, scope: !833)
!836 = !DILocation(line: 1569, column: 29, scope: !833)
!837 = !DILocation(line: 1570, column: 25, scope: !833)
!838 = !DILocation(line: 1570, column: 32, scope: !833)
!839 = !DILocation(line: 1575, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1575, column: 5)
!841 = !DILocation(line: 1576, column: 1, scope: !797)
!842 = distinct !DISubprogram(name: "create_ray_task", scope: !3, file: !3, line: 1377, type: !447, scopeLine: 1378, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!843 = !{!844, !845}
!844 = !DILocalVariable(name: "e", arg: 1, scope: !842, file: !3, line: 1377, type: !159)
!845 = !DILocalVariable(name: "process_id", arg: 2, scope: !842, file: !3, line: 1377, type: !16)
!846 = !DILocation(line: 0, scope: !842)
!847 = !DILocation(line: 1380, column: 16, scope: !848)
!848 = distinct !DILexicalBlock(scope: !842, file: !3, line: 1380, column: 11)
!849 = !DILocation(line: 1380, column: 36, scope: !848)
!850 = !DILocation(line: 1380, column: 31, scope: !848)
!851 = !DILocation(line: 1381, column: 14, scope: !848)
!852 = !DILocation(line: 1381, column: 12, scope: !848)
!853 = !DILocation(line: 1382, column: 8, scope: !848)
!854 = !DILocation(line: 1382, column: 27, scope: !848)
!855 = !DILocation(line: 1382, column: 47, scope: !848)
!856 = !DILocation(line: 1382, column: 75, scope: !848)
!857 = !DILocation(line: 1382, column: 11, scope: !848)
!858 = !DILocation(line: 1380, column: 11, scope: !842)
!859 = !DILocation(line: 1386, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1383, column: 9)
!861 = !DILocation(line: 1387, column: 13, scope: !860)
!862 = !DILocation(line: 1391, column: 23, scope: !842)
!863 = !DILocation(line: 1391, column: 5, scope: !842)
!864 = !DILocation(line: 1392, column: 1, scope: !842)
!865 = distinct !DISubprogram(name: "enqueue_ray_task", scope: !3, file: !3, line: 1395, type: !866, scopeLine: 1396, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !16, !159, !16, !16}
!868 = !{!869, !870, !871, !872, !873}
!869 = !DILocalVariable(name: "qid", arg: 1, scope: !865, file: !3, line: 1395, type: !16)
!870 = !DILocalVariable(name: "e", arg: 2, scope: !865, file: !3, line: 1395, type: !159)
!871 = !DILocalVariable(name: "mode", arg: 3, scope: !865, file: !3, line: 1395, type: !16)
!872 = !DILocalVariable(name: "process_id", arg: 4, scope: !865, file: !3, line: 1395, type: !16)
!873 = !DILocalVariable(name: "t", scope: !865, file: !3, line: 1397, type: !18)
!874 = !DILocation(line: 0, scope: !865)
!875 = !DILocation(line: 1400, column: 9, scope: !865)
!876 = !DILocation(line: 1401, column: 18, scope: !865)
!877 = !DILocation(line: 1402, column: 8, scope: !865)
!878 = !DILocation(line: 1402, column: 17, scope: !865)
!879 = !DILocation(line: 1402, column: 23, scope: !865)
!880 = !DILocation(line: 1405, column: 5, scope: !865)
!881 = !DILocation(line: 1406, column: 1, scope: !865)
!882 = distinct !DISubprogram(name: "create_visibility_tasks", scope: !3, file: !3, line: 1409, type: !883, scopeLine: 1410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !159, !205, !16}
!885 = !{!886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897}
!886 = !DILocalVariable(name: "e", arg: 1, scope: !882, file: !3, line: 1409, type: !159)
!887 = !DILocalVariable(name: "k", arg: 2, scope: !882, file: !3, line: 1409, type: !205)
!888 = !DILocalVariable(name: "process_id", arg: 3, scope: !882, file: !3, line: 1409, type: !16)
!889 = !DILocalVariable(name: "n_tasks", scope: !882, file: !3, line: 1411, type: !16)
!890 = !DILocalVariable(name: "remainder", scope: !882, file: !3, line: 1412, type: !16)
!891 = !DILocalVariable(name: "i_cnt", scope: !882, file: !3, line: 1413, type: !16)
!892 = !DILocalVariable(name: "top", scope: !882, file: !3, line: 1414, type: !201)
!893 = !DILocalVariable(name: "tail", scope: !882, file: !3, line: 1414, type: !201)
!894 = !DILocalVariable(name: "t", scope: !882, file: !3, line: 1415, type: !18)
!895 = !DILocalVariable(name: "total_undefs", scope: !882, file: !3, line: 1416, type: !16)
!896 = !DILocalVariable(name: "tasks_created", scope: !882, file: !3, line: 1417, type: !16)
!897 = !DILocalVariable(name: "_c", scope: !898, file: !3, line: 1461, type: !89)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 1458, column: 9)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1457, column: 5)
!900 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1457, column: 5)
!901 = !DILocation(line: 0, scope: !882)
!902 = !DILocation(line: 1420, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1420, column: 5)
!904 = !DILocation(line: 0, scope: !903)
!905 = !DILocation(line: 1420, column: 5, scope: !903)
!906 = !DILocation(line: 1421, column: 18, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 1421, column: 13)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1420, column: 61)
!909 = distinct !DILexicalBlock(scope: !903, file: !3, line: 1420, column: 5)
!910 = !DILocation(line: 1421, column: 29, scope: !907)
!911 = !DILocation(line: 1421, column: 13, scope: !908)
!912 = !DILocation(line: 1422, column: 25, scope: !907)
!913 = !DILocation(line: 1422, column: 13, scope: !907)
!914 = distinct !{!914, !905, !915, !290, !291}
!915 = !DILocation(line: 1423, column: 2, scope: !903)
!916 = !DILocation(line: 1425, column: 22, scope: !917)
!917 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1425, column: 9)
!918 = !DILocation(line: 1425, column: 9, scope: !882)
!919 = !DILocation(line: 1429, column: 13, scope: !920)
!920 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1426, column: 9)
!921 = !DILocation(line: 1430, column: 13, scope: !920)
!922 = !DILocation(line: 1434, column: 27, scope: !923)
!923 = distinct !DILexicalBlock(scope: !882, file: !3, line: 1434, column: 11)
!924 = !DILocation(line: 1434, column: 25, scope: !923)
!925 = !DILocation(line: 1435, column: 8, scope: !923)
!926 = !DILocation(line: 1435, column: 27, scope: !923)
!927 = !DILocation(line: 1435, column: 47, scope: !923)
!928 = !DILocation(line: 1435, column: 75, scope: !923)
!929 = !DILocation(line: 1435, column: 11, scope: !923)
!930 = !DILocation(line: 1434, column: 11, scope: !882)
!931 = !DILocation(line: 1439, column: 36, scope: !932)
!932 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1436, column: 9)
!933 = !DILocation(line: 1440, column: 32, scope: !932)
!934 = !DILocation(line: 1439, column: 13, scope: !932)
!935 = !DILocation(line: 1442, column: 13, scope: !932)
!936 = !DILocation(line: 1453, column: 31, scope: !882)
!937 = !DILocation(line: 1453, column: 29, scope: !882)
!938 = !DILocation(line: 1453, column: 53, scope: !882)
!939 = !DILocation(line: 1454, column: 9, scope: !882)
!940 = !DILocation(line: 1457, column: 19, scope: !900)
!941 = !DILocation(line: 1457, column: 5, scope: !900)
!942 = !DILocation(line: 1459, column: 18, scope: !898)
!943 = !DILocation(line: 1461, column: 19, scope: !898)
!944 = !DILocation(line: 1461, column: 30, scope: !898)
!945 = !DILocation(line: 0, scope: !898)
!946 = !DILocation(line: 1462, column: 16, scope: !898)
!947 = !DILocation(line: 1465, column: 23, scope: !898)
!948 = !DILocation(line: 1467, column: 27, scope: !949)
!949 = distinct !DILexicalBlock(scope: !898, file: !3, line: 1467, column: 17)
!950 = !DILocation(line: 1467, column: 17, scope: !898)
!951 = !DILocation(line: 1473, column: 34, scope: !952)
!952 = distinct !DILexicalBlock(scope: !949, file: !3, line: 1468, column: 17)
!953 = !DILocation(line: 1474, column: 39, scope: !954)
!954 = distinct !DILexicalBlock(scope: !952, file: !3, line: 1474, column: 25)
!955 = !DILocation(line: 1474, column: 25, scope: !952)
!956 = !DILocation(line: 0, scope: !900)
!957 = !DILocation(line: 1475, column: 38, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 1475, column: 25)
!959 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1475, column: 25)
!960 = !DILocation(line: 1475, column: 25, scope: !959)
!961 = !DILocation(line: 1475, column: 69, scope: !958)
!962 = distinct !{!962, !960, !963, !290, !291}
!963 = !DILocation(line: 1475, column: 74, scope: !959)
!964 = !DILocation(line: 1457, column: 41, scope: !900)
!965 = !DILocation(line: 1478, column: 25, scope: !952)
!966 = !DILocation(line: 1479, column: 34, scope: !952)
!967 = !DILocation(line: 1480, column: 24, scope: !952)
!968 = !DILocation(line: 1480, column: 41, scope: !952)
!969 = !DILocation(line: 1481, column: 33, scope: !952)
!970 = !DILocation(line: 1481, column: 41, scope: !952)
!971 = !DILocation(line: 1482, column: 33, scope: !952)
!972 = !DILocation(line: 1482, column: 41, scope: !952)
!973 = !DILocation(line: 1483, column: 33, scope: !952)
!974 = !DILocation(line: 1483, column: 41, scope: !952)
!975 = !DILocation(line: 1486, column: 35, scope: !952)
!976 = !DILocation(line: 1486, column: 21, scope: !952)
!977 = !DILocation(line: 1489, column: 33, scope: !952)
!978 = !DILocation(line: 1490, column: 31, scope: !952)
!979 = !DILocation(line: 1492, column: 17, scope: !952)
!980 = !DILocation(line: 1457, column: 69, scope: !899)
!981 = distinct !{!981, !941, !982, !290, !291}
!982 = !DILocation(line: 1493, column: 9, scope: !900)
!983 = !DILocation(line: 1494, column: 1, scope: !882)
!984 = distinct !DISubprogram(name: "create_radavg_task", scope: !3, file: !3, line: 1499, type: !453, scopeLine: 1500, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !985)
!985 = !{!986, !987, !988}
!986 = !DILocalVariable(name: "e", arg: 1, scope: !984, file: !3, line: 1499, type: !159)
!987 = !DILocalVariable(name: "mode", arg: 2, scope: !984, file: !3, line: 1499, type: !16)
!988 = !DILocalVariable(name: "process_id", arg: 3, scope: !984, file: !3, line: 1499, type: !16)
!989 = !DILocation(line: 0, scope: !984)
!990 = !DILocation(line: 1502, column: 15, scope: !991)
!991 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1502, column: 11)
!992 = !DILocation(line: 1502, column: 32, scope: !991)
!993 = !DILocation(line: 1502, column: 30, scope: !991)
!994 = !DILocation(line: 1503, column: 8, scope: !991)
!995 = !DILocation(line: 1503, column: 27, scope: !991)
!996 = !DILocation(line: 1503, column: 47, scope: !991)
!997 = !DILocation(line: 1503, column: 75, scope: !991)
!998 = !DILocation(line: 1503, column: 11, scope: !991)
!999 = !DILocation(line: 1502, column: 11, scope: !984)
!1000 = !DILocation(line: 1507, column: 13, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !991, file: !3, line: 1504, column: 9)
!1002 = !DILocation(line: 1508, column: 13, scope: !1001)
!1003 = !DILocation(line: 1512, column: 26, scope: !984)
!1004 = !DILocation(line: 1512, column: 5, scope: !984)
!1005 = !DILocation(line: 1513, column: 1, scope: !984)
!1006 = distinct !DISubprogram(name: "enqueue_radavg_task", scope: !3, file: !3, line: 1516, type: !866, scopeLine: 1517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012}
!1008 = !DILocalVariable(name: "qid", arg: 1, scope: !1006, file: !3, line: 1516, type: !16)
!1009 = !DILocalVariable(name: "e", arg: 2, scope: !1006, file: !3, line: 1516, type: !159)
!1010 = !DILocalVariable(name: "mode", arg: 3, scope: !1006, file: !3, line: 1516, type: !16)
!1011 = !DILocalVariable(name: "process_id", arg: 4, scope: !1006, file: !3, line: 1516, type: !16)
!1012 = !DILocalVariable(name: "t", scope: !1006, file: !3, line: 1518, type: !18)
!1013 = !DILocation(line: 0, scope: !1006)
!1014 = !DILocation(line: 1521, column: 9, scope: !1006)
!1015 = !DILocation(line: 1522, column: 18, scope: !1006)
!1016 = !DILocation(line: 1523, column: 8, scope: !1006)
!1017 = !DILocation(line: 1523, column: 23, scope: !1006)
!1018 = !DILocation(line: 1524, column: 17, scope: !1006)
!1019 = !DILocation(line: 1524, column: 23, scope: !1006)
!1020 = !DILocation(line: 1527, column: 5, scope: !1006)
!1021 = !DILocation(line: 1528, column: 1, scope: !1006)
!1022 = distinct !DISubprogram(name: "init_taskq", scope: !3, file: !3, line: 1839, type: !227, scopeLine: 1840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1023 = !{!1024, !1025, !1026, !1027, !1028, !1029}
!1024 = !DILocalVariable(name: "process_id", arg: 1, scope: !1022, file: !3, line: 1839, type: !16)
!1025 = !DILocalVariable(name: "i", scope: !1022, file: !3, line: 1841, type: !16)
!1026 = !DILocalVariable(name: "qid", scope: !1022, file: !3, line: 1842, type: !16)
!1027 = !DILocalVariable(name: "task_index", scope: !1022, file: !3, line: 1843, type: !16)
!1028 = !DILocalVariable(name: "task_per_queue", scope: !1022, file: !3, line: 1844, type: !16)
!1029 = !DILocalVariable(name: "n_tasks", scope: !1022, file: !3, line: 1845, type: !16)
!1030 = !DILocation(line: 0, scope: !1022)
!1031 = !DILocation(line: 1848, column: 29, scope: !1022)
!1032 = !DILocation(line: 1848, column: 43, scope: !1022)
!1033 = !DILocation(line: 1851, column: 35, scope: !1022)
!1034 = !DILocation(line: 1851, column: 48, scope: !1022)
!1035 = !DILocation(line: 1851, column: 53, scope: !1022)
!1036 = !DILocation(line: 1853, column: 24, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 1853, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 1853, column: 5)
!1039 = !DILocation(line: 1853, column: 5, scope: !1038)
!1040 = !DILocation(line: 1856, column: 28, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1856, column: 17)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 1854, column: 9)
!1043 = !DILocation(line: 1856, column: 45, scope: !1041)
!1044 = !DILocation(line: 1856, column: 17, scope: !1042)
!1045 = !DILocation(line: 1861, column: 37, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 1861, column: 13)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1861, column: 13)
!1048 = !DILocation(line: 1861, column: 13, scope: !1047)
!1049 = !DILocation(line: 1862, column: 45, scope: !1046)
!1050 = !DILocation(line: 1862, column: 63, scope: !1046)
!1051 = !DILocation(line: 1862, column: 37, scope: !1046)
!1052 = !DILocation(line: 1862, column: 42, scope: !1046)
!1053 = distinct !{!1053, !1048, !1054, !290, !291}
!1054 = !DILocation(line: 1862, column: 65, scope: !1047)
!1055 = !DILocation(line: 0, scope: !1047)
!1056 = !DILocation(line: 1863, column: 13, scope: !1042)
!1057 = !DILocation(line: 1863, column: 35, scope: !1042)
!1058 = !DILocation(line: 1863, column: 40, scope: !1042)
!1059 = !DILocation(line: 1865, column: 47, scope: !1042)
!1060 = !DILocation(line: 1865, column: 39, scope: !1042)
!1061 = !DILocation(line: 1865, column: 44, scope: !1042)
!1062 = !DILocation(line: 1866, column: 13, scope: !1042)
!1063 = !DILocation(line: 1866, column: 39, scope: !1042)
!1064 = !DILocation(line: 1866, column: 46, scope: !1042)
!1065 = !DILocation(line: 1869, column: 13, scope: !1042)
!1066 = !DILocation(line: 1869, column: 39, scope: !1042)
!1067 = !DILocation(line: 1869, column: 47, scope: !1042)
!1068 = !DILocation(line: 1870, column: 13, scope: !1042)
!1069 = !DILocation(line: 1870, column: 39, scope: !1042)
!1070 = !DILocation(line: 1870, column: 47, scope: !1042)
!1071 = !DILocation(line: 1871, column: 13, scope: !1042)
!1072 = !DILocation(line: 1871, column: 39, scope: !1042)
!1073 = !DILocation(line: 1871, column: 47, scope: !1042)
!1074 = !DILocation(line: 1874, column: 35, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1874, column: 13)
!1076 = !DILocation(line: 1874, column: 61, scope: !1075)
!1077 = !DILocation(line: 1874, column: 14, scope: !1075)
!1078 = !DILocation(line: 1875, column: 35, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 1875, column: 13)
!1080 = !DILocation(line: 1875, column: 61, scope: !1079)
!1081 = !DILocation(line: 1875, column: 14, scope: !1079)
!1082 = !DILocation(line: 1853, column: 44, scope: !1037)
!1083 = !DILocation(line: 1853, column: 26, scope: !1037)
!1084 = distinct !{!1084, !1039, !1085, !290, !291}
!1085 = !DILocation(line: 1879, column: 9, scope: !1038)
!1086 = !DILocation(line: 1882, column: 29, scope: !1022)
!1087 = !DILocation(line: 1883, column: 52, scope: !1022)
!1088 = !DILocation(line: 1884, column: 1, scope: !1022)
!1089 = !DISubprogram(name: "pthread_mutex_init", scope: !503, file: !503, line: 725, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !439)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!89, !506, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !81, line: 36, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !81, line: 32, size: 32, elements: !1096)
!1096 = !{!1097, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1095, file: !81, line: 34, baseType: !1098, size: 32)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !55)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1095, file: !81, line: 35, baseType: !89, size: 32)
!1100 = distinct !DISubprogram(name: "check_task_counter", scope: !3, file: !3, line: 1896, type: !509, scopeLine: 1897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1101 = !{!1102}
!1102 = !DILocalVariable(name: "flag", scope: !1100, file: !3, line: 1898, type: !16)
!1103 = !DILocation(line: 0, scope: !1100)
!1104 = !DILocation(line: 1901, column: 27, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1901, column: 5)
!1106 = !DILocation(line: 1901, column: 35, scope: !1105)
!1107 = !DILocation(line: 1901, column: 6, scope: !1105)
!1108 = !DILocation(line: 1903, column: 9, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1903, column: 9)
!1110 = !DILocation(line: 1903, column: 17, scope: !1109)
!1111 = !DILocation(line: 1903, column: 30, scope: !1109)
!1112 = !DILocation(line: 1903, column: 9, scope: !1100)
!1113 = !DILocation(line: 1907, column: 25, scope: !1100)
!1114 = !DILocation(line: 1908, column: 33, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1908, column: 9)
!1116 = !DILocation(line: 1908, column: 30, scope: !1115)
!1117 = !DILocation(line: 1908, column: 9, scope: !1100)
!1118 = !DILocation(line: 1911, column: 37, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1911, column: 5)
!1120 = !DILocation(line: 1911, column: 6, scope: !1119)
!1121 = !DILocation(line: 1913, column: 5, scope: !1100)
!1122 = distinct !DISubprogram(name: "assign_taskq", scope: !3, file: !3, line: 1926, type: !1123, scopeLine: 1927, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1125)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!16, !16}
!1125 = !{!1126, !1127}
!1126 = !DILocalVariable(name: "process_id", arg: 1, scope: !1122, file: !3, line: 1926, type: !16)
!1127 = !DILocalVariable(name: "qid", scope: !1122, file: !3, line: 1928, type: !16)
!1128 = !DILocation(line: 0, scope: !1122)
!1129 = !DILocation(line: 1930, column: 35, scope: !1122)
!1130 = !DILocation(line: 1930, column: 48, scope: !1122)
!1131 = !DILocation(line: 1932, column: 50, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 1932, column: 9)
!1133 = !DILocation(line: 1932, column: 47, scope: !1132)
!1134 = !DILocation(line: 1932, column: 9, scope: !1122)
!1135 = !DILocation(line: 1935, column: 5, scope: !1122)
!1136 = distinct !DISubprogram(name: "print_task", scope: !3, file: !3, line: 1948, type: !1137, scopeLine: 1949, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !18}
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "task", arg: 1, scope: !1136, file: !3, line: 1948, type: !18)
!1141 = !DILocation(line: 0, scope: !1136)
!1142 = !DILocation(line: 1950, column: 14, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1950, column: 9)
!1144 = !DILocation(line: 1950, column: 9, scope: !1136)
!1145 = !DILocation(line: 1952, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 1951, column: 9)
!1147 = !DILocation(line: 1953, column: 13, scope: !1146)
!1148 = !DILocation(line: 1956, column: 19, scope: !1136)
!1149 = !DILocation(line: 1956, column: 5, scope: !1136)
!1150 = !DILocation(line: 1959, column: 13, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 1957, column: 9)
!1152 = !DILocation(line: 1960, column: 13, scope: !1151)
!1153 = !DILocation(line: 1962, column: 13, scope: !1151)
!1154 = !DILocation(line: 1963, column: 13, scope: !1151)
!1155 = !DILocation(line: 1965, column: 13, scope: !1151)
!1156 = !DILocation(line: 1966, column: 13, scope: !1151)
!1157 = !DILocation(line: 1969, column: 26, scope: !1151)
!1158 = !DILocation(line: 1969, column: 35, scope: !1151)
!1159 = !DILocation(line: 1969, column: 38, scope: !1151)
!1160 = !DILocation(line: 1969, column: 45, scope: !1151)
!1161 = !DILocation(line: 1968, column: 13, scope: !1151)
!1162 = !DILocation(line: 1970, column: 13, scope: !1151)
!1163 = !DILocation(line: 1973, column: 26, scope: !1151)
!1164 = !DILocation(line: 1973, column: 35, scope: !1151)
!1165 = !DILocation(line: 1973, column: 38, scope: !1151)
!1166 = !DILocation(line: 1973, column: 45, scope: !1151)
!1167 = !DILocation(line: 1972, column: 13, scope: !1151)
!1168 = !DILocation(line: 1974, column: 13, scope: !1151)
!1169 = !DILocation(line: 1976, column: 13, scope: !1151)
!1170 = !DILocation(line: 1977, column: 13, scope: !1151)
!1171 = !DILocation(line: 1979, column: 22, scope: !1151)
!1172 = !DILocation(line: 1979, column: 13, scope: !1151)
!1173 = !DILocation(line: 1980, column: 9, scope: !1151)
!1174 = !DILocation(line: 1981, column: 1, scope: !1136)
!1175 = distinct !DISubprogram(name: "print_taskq", scope: !3, file: !3, line: 1984, type: !1176, scopeLine: 1985, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1178)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !347}
!1178 = !{!1179, !1180}
!1179 = !DILocalVariable(name: "tq", arg: 1, scope: !1175, file: !3, line: 1984, type: !347)
!1180 = !DILocalVariable(name: "t", scope: !1175, file: !3, line: 1986, type: !18)
!1181 = !DILocation(line: 0, scope: !1175)
!1182 = !DILocation(line: 1988, column: 48, scope: !1175)
!1183 = !DILocation(line: 1988, column: 5, scope: !1175)
!1184 = !DILocation(line: 1989, column: 14, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1175, file: !3, line: 1989, column: 5)
!1186 = !DILocation(line: 0, scope: !1185)
!1187 = !DILocation(line: 1989, column: 5, scope: !1185)
!1188 = !DILocation(line: 1991, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 1990, column: 9)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 1989, column: 5)
!1191 = !DILocation(line: 1992, column: 13, scope: !1189)
!1192 = !DILocation(line: 1989, column: 41, scope: !1190)
!1193 = distinct !{!1193, !1187, !1194, !290, !291}
!1194 = !DILocation(line: 1993, column: 9, scope: !1185)
!1195 = !DILocation(line: 1994, column: 1, scope: !1175)
