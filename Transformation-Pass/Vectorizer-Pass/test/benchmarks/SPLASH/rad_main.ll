; ModuleID = 'rad_main.c'
source_filename = "rad_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slider = type { ptr, i64, i64, i64, i64, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.Timing = type { i64, i64, i64, i64, i64 }
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
%struct.Shared_Lock = type { %union.pthread_mutex_t }
%struct.StatisticalInfo = type { [4096 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [2 x i64], [16 x %struct.PerIterationInfo], [4096 x i8] }
%struct.PerIterationInfo = type { i64, i64, i64, i64, i64, ptr }
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }

@__threads__ = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@MAX_ELEMENTS = dso_local local_unnamed_addr global i64 100000, align 8, !dbg !382
@MAX_INTERACTIONS = dso_local local_unnamed_addr global i64 1000000, align 8, !dbg !384
@MAX_ELEMVERTICES = dso_local local_unnamed_addr global i64 100000, align 8, !dbg !386
@MAX_EDGES = dso_local local_unnamed_addr global i64 100000, align 8, !dbg !388
@n_processors = dso_local global i64 1, align 8, !dbg !390
@n_taskqueues = dso_local local_unnamed_addr global i64 1, align 8, !dbg !392
@n_tasks_per_queue = dso_local global i64 200, align 8, !dbg !394
@N_inter_parallel_bf_refine = dso_local global i64 5, align 8, !dbg !396
@N_visibility_per_task = dso_local global i64 4, align 8, !dbg !398
@Area_epsilon = dso_local global float 2.000000e+03, align 4, !dbg !400
@Energy_epsilon = dso_local global float 0x3F0A36E2E0000000, align 4, !dbg !402
@BFepsilon = dso_local global float 0x3F23A92A40000000, align 4, !dbg !404
@batch_mode = dso_local local_unnamed_addr global i64 0, align 8, !dbg !406
@verbose_mode = dso_local local_unnamed_addr global i64 0, align 8, !dbg !408
@.str = private unnamed_addr constant [14 x i8] c"View(X)  deg \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"View(Y)  deg \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"View(Zoom)   \00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"BF-e      0.1%\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Area-e       \00", align 1
@sliders = dso_local global [5 x %struct.slider] [%struct.slider { ptr @.str, i64 -100, i64 100, i64 10, i64 5, ptr @change_view_x }, %struct.slider { ptr @.str.1, i64 -100, i64 100, i64 0, i64 5, ptr @change_view_y }, %struct.slider { ptr @.str.2, i64 0, i64 50, i64 10, i64 6, ptr @change_view_zoom }, %struct.slider { ptr @.str.3, i64 0, i64 50, i64 0, i64 11, ptr @change_BFepsilon }, %struct.slider { ptr @.str.4, i64 0, i64 5000, i64 2000, i64 11, ptr @change_area_epsilon }], align 16, !dbg !410
@.str.5 = private unnamed_addr constant [4 x i8] c"Run\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Step\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Display\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Filled\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Smooth shading\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Show polygon edges\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Show element edges\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Show interactions\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Models\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Room\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"LargeRoom\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"HardCopy(PS)\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Statistics\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"Statistics(file)\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Clear Radiosity Value\00", align 1
@choices = dso_local global <{ { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [27 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, ptr, [28 x ptr] }>, i64, ptr } }> <{ { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr } { ptr @.str.5, <{ ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.5, ptr @.str.6, ptr @.str.7, [29 x ptr] zeroinitializer }>, i64 0, ptr @start_radiosity }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [27 x ptr] }>, i64, ptr } { ptr @.str.8, <{ ptr, ptr, ptr, ptr, ptr, [27 x ptr] }> <{ ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, [27 x ptr] zeroinitializer }>, i64 0, ptr @change_display }, { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr } { ptr @.str.14, <{ ptr, ptr, ptr, [29 x ptr] }> <{ ptr @.str.15, ptr @.str.16, ptr @.str.17, [29 x ptr] zeroinitializer }>, i64 0, ptr @select_model }, { ptr, <{ ptr, ptr, ptr, ptr, [28 x ptr] }>, i64, ptr } { ptr @.str.18, <{ ptr, ptr, ptr, ptr, [28 x ptr] }> <{ ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, [28 x ptr] zeroinitializer }>, i64 0, ptr @utility_tools } }>, align 16, !dbg !426
@model_selector = external local_unnamed_addr global i64, align 8
@__tid__ = dso_local global [256 x i64] zeroinitializer, align 16, !dbg !474
@global = dso_local local_unnamed_addr global ptr null, align 8, !dbg !483
@timing = dso_local local_unnamed_addr global ptr null, align 8, !dbg !485
@time_rad_start = dso_local local_unnamed_addr global i64 0, align 8, !dbg !490
@taskqueue_id = dso_local local_unnamed_addr global [1024 x i64] zeroinitializer, align 16, !dbg !487
@.str.24 = private unnamed_addr constant [28 x i8] c"__threads__<__MAX_THREADS__\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"rad_main.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@__intern__ = dso_local global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !481
@time_rad_end = dso_local local_unnamed_addr global i64 0, align 8, !dbg !492
@dostats = internal unnamed_addr global i1 false, align 8, !dbg !516
@.str.29 = private unnamed_addr constant [21 x i8] c"%8s%20s%20s%12s%12s\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Total\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Refine\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Wait\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"Smooth\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"%8s%20s%20s%12s%12s\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"%8ld%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"\0A\0A%8s%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"\0A%8s%20lu%20lu%12lu%12lu\0A\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Min\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Avg\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@start_radiosity.state = internal unnamed_addr global i64 0, align 8, !dbg !439
@__PRETTY_FUNCTION__.start_radiosity = private unnamed_addr constant [27 x i8] c"void start_radiosity(long)\00", align 1
@disp_fill_mode = internal unnamed_addr global i64 1, align 8, !dbg !498
@disp_patch_switch = internal unnamed_addr global i64 0, align 8, !dbg !500
@disp_mesh_switch = internal unnamed_addr global i64 0, align 8, !dbg !502
@disp_interaction_switch = internal unnamed_addr global i64 0, align 8, !dbg !504
@disp_fill_switch = internal unnamed_addr global i64 1, align 8, !dbg !506
@disp_shade_switch = internal unnamed_addr global i64 0, align 8, !dbg !508
@disp_crnt_view_x = internal unnamed_addr global i64 10, align 8, !dbg !510
@disp_crnt_view_y = internal unnamed_addr global i64 0, align 8, !dbg !512
@disp_crnt_zoom = internal unnamed_addr global float 1.000000e+00, align 4, !dbg !514
@.str.46 = private unnamed_addr constant [13 x i8] c"radiosity.ps\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"radiosity_stat\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [33 x i8] c"Usage:  RADIOSITY  [options..]\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [74 x i8] c"\09Note: Must have a space between option label and numeric value, if any\0A\0A\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"   -p    (d)  # of processes\0A\00", align 1
@.str.52 = private unnamed_addr constant [70 x i8] c"   -tq   (d)  # of tasks per queue: default (200) in code for SPLASH\0A\00", align 1
@.str.53 = private unnamed_addr constant [65 x i8] c"   -ae   (f)  Area epsilon: default (2000.0) in code for SPLASH\0A\00", align 1
@.str.54 = private unnamed_addr constant [82 x i8] c"   -pr   (d)  # of inter for parallel refinement: default (5) in code for SPLASH\0A\00", align 1
@.str.55 = private unnamed_addr constant [78 x i8] c"   -pv   (d)  # of visibility comp in a task: default (4) in code for SPLASH\0A\00", align 1
@.str.56 = private unnamed_addr constant [77 x i8] c"   -bf   (f)  BFepsilon (BF refinement): default (0.015) in code for SPLASH\0A\00", align 1
@.str.57 = private unnamed_addr constant [80 x i8] c"   -en   (f)  Energy epsilon (convergence): default (0.005) in code for SPLASH\0A\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"   -room      Use room model (default=test)\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"   -largeroom Use large room model\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"   -batch     Batch mode (use for SPLASH)\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"   -verbose   Verbose mode (don't use for SPLASH)\0A\00", align 1
@.str.62 = private unnamed_addr constant [59 x i8] c"   -s   Measure per-process timing (don't use for SPLASH)\0A\00", align 1
@time_process_start = dso_local local_unnamed_addr global [1024 x i64] zeroinitializer, align 16, !dbg !494
@.str.63 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"-tq\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"-ae\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"-pr\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"-pv\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"-bf\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"-en\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"-batch\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"-verbose\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"-room\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"-largeroom\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"Bad number of processors: %ld\0A\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"Bad number of task queues: %ld (max: %d)\0A\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"Area epsilon must be positive\0A\00", align 1
@.str.83 = private unnamed_addr constant [32 x i8] c"BFepsilon must be within [0,1]\0A\00", align 1
@str.89 = private unnamed_addr constant [20 x i8] c"Please reset first\07\00", align 1
@str.90 = private unnamed_addr constant [44 x i8] c"TIMING STATISTICS MEASURED BY MAIN PROCESS:\00", align 1
@str.91 = private unnamed_addr constant [27 x i8] c"\0A\0A\0APER-PROCESS STATISTICS:\00", align 1
@str.92 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.93 = private unnamed_addr constant [27 x i8] c"Error in pthread_create().\00", align 1
@str.94 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @change_view_x(i64 noundef %val) #0 !dbg !524 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 %val, ptr @disp_crnt_view_x, align 8, !dbg !528
  tail call fastcc void @change_view(), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @change_view_y(i64 noundef %val) #0 !dbg !531 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %val, ptr @disp_crnt_view_y, align 8, !dbg !535
  tail call fastcc void @change_view(), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @change_view_zoom(i64 noundef %val) #0 !dbg !538 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !540, metadata !DIExpression()), !dbg !541
  %conv = sitofp i64 %val to float, !dbg !542
  %conv2 = fdiv float %conv, 1.000000e+01, !dbg !542
  store float %conv2, ptr @disp_crnt_zoom, align 4, !dbg !543
  tail call fastcc void @change_view(), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @change_BFepsilon(i64 noundef %val) #1 !dbg !546 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !548, metadata !DIExpression()), !dbg !549
  %conv = sitofp i64 %val to float, !dbg !550
  %conv2 = fdiv float %conv, 1.000000e+03, !dbg !550
  store float %conv2, ptr @BFepsilon, align 4, !dbg !551
  ret void, !dbg !552
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @change_area_epsilon(i64 noundef %val) #1 !dbg !553 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !555, metadata !DIExpression()), !dbg !556
  %conv = sitofp i64 %val to float, !dbg !557
  store float %conv, ptr @Area_epsilon, align 4, !dbg !558
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @start_radiosity(i64 noundef %val) #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !445, metadata !DIExpression()), !dbg !560
  switch i64 %val, label %cleanup [
    i64 0, label %if.then
    i64 1, label %if.then178
    i64 2, label %if.then292
  ], !dbg !561

if.then:                                          ; preds = %entry
  %0 = load i64, ptr @start_radiosity.state, align 8, !dbg !562
  %cmp1 = icmp eq i64 %0, -1, !dbg !564
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !565

if.then2:                                         ; preds = %if.then
  %puts373 = tail call i32 @puts(ptr nonnull @str.89), !dbg !566
  br label %cleanup, !dbg !568

if.end:                                           ; preds = %if.then
  %call3 = tail call i64 @time(ptr noundef null) #15, !dbg !569
  store i64 %call3, ptr @time_rad_start, align 8, !dbg !571
  %1 = load ptr, ptr @global, align 8, !dbg !572
  store i64 0, ptr %1, align 8, !dbg !573
  call void @llvm.dbg.value(metadata i64 0, metadata !446, metadata !DIExpression()), !dbg !560
  %2 = load i64, ptr @n_processors, align 8, !dbg !574
  %cmp4388 = icmp sgt i64 %2, 0, !dbg !577
  br i1 %cmp4388, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %if.end, %for.body
  %i.0389 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.0389, metadata !446, metadata !DIExpression()), !dbg !560
  %call5 = tail call i64 @assign_taskq(i64 noundef 0) #15, !dbg !579
  %arrayidx = getelementptr inbounds [1024 x i64], ptr @taskqueue_id, i64 0, i64 %i.0389, !dbg !581
  store i64 %call5, ptr %arrayidx, align 8, !dbg !582
  %inc = add nuw nsw i64 %i.0389, 1, !dbg !583
  call void @llvm.dbg.value(metadata i64 %inc, metadata !446, metadata !DIExpression()), !dbg !560
  %3 = load i64, ptr @n_processors, align 8, !dbg !574
  %cmp4 = icmp slt i64 %inc, %3, !dbg !577
  br i1 %cmp4, label %for.body, label %for.end, !dbg !578, !llvm.loop !584

for.end:                                          ; preds = %for.body, %if.end
  %4 = load i32, ptr @__threads__, align 4, !dbg !588
  %cmp7 = icmp ult i32 %4, 256, !dbg !588
  br i1 %cmp7, label %cond.end, label %cond.false, !dbg !588

cond.false:                                       ; preds = %for.end
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1553, ptr noundef nonnull @__PRETTY_FUNCTION__.start_radiosity) #16, !dbg !588
  unreachable, !dbg !588

cond.end:                                         ; preds = %for.end
  %call8 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @__intern__) #15, !dbg !589
  call void @llvm.dbg.value(metadata i64 0, metadata !459, metadata !DIExpression()), !dbg !590
  %5 = load i64, ptr @n_processors, align 8, !dbg !591
  %cmp10391 = icmp sgt i64 %5, 1, !dbg !594
  br i1 %cmp10391, label %for.body11, label %for.end22, !dbg !595

for.cond9:                                        ; preds = %for.body11
  %inc21 = add nuw nsw i64 %i6.0392, 1, !dbg !596
  call void @llvm.dbg.value(metadata i64 %i6.0392, metadata !459, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !590
  %6 = load i64, ptr @n_processors, align 8, !dbg !591
  %sub = add nsw i64 %6, -1, !dbg !597
  %cmp10 = icmp slt i64 %inc21, %sub, !dbg !594
  br i1 %cmp10, label %for.body11, label %for.end22, !dbg !595, !llvm.loop !598

for.body11:                                       ; preds = %cond.end, %for.cond9
  %i6.0392 = phi i64 [ %inc21, %for.cond9 ], [ 0, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %i6.0392, metadata !459, metadata !DIExpression()), !dbg !590
  %7 = load i32, ptr @__threads__, align 4, !dbg !600
  %inc12 = add i32 %7, 1, !dbg !600
  store i32 %inc12, ptr @__threads__, align 4, !dbg !600
  %idxprom = zext i32 %7 to i64, !dbg !602
  %arrayidx13 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom, !dbg !602
  %call14 = tail call i32 @pthread_create(ptr noundef nonnull %arrayidx13, ptr noundef null, ptr noundef nonnull @radiosity, ptr noundef null) #15, !dbg !603
  call void @llvm.dbg.value(metadata i32 %call14, metadata !463, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !590
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !604
  call void @llvm.dbg.value(metadata i64 %i6.0392, metadata !459, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !590
  br i1 %cmp15.not, label %for.cond9, label %if.then17, !dbg !606

if.then17:                                        ; preds = %for.body11
  %puts372 = tail call i32 @puts(ptr nonnull @str.93), !dbg !607
  tail call void @exit(i32 noundef -1) #16, !dbg !609
  unreachable, !dbg !609

for.end22:                                        ; preds = %for.cond9, %cond.end
  %call23 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @__intern__) #15, !dbg !610
  tail call void @radiosity(), !dbg !611
  %8 = load i64, ptr @n_processors, align 8, !dbg !612
  %conv24 = trunc i64 %8 to i32, !dbg !612
  call void @llvm.dbg.value(metadata i32 %conv24, metadata !464, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !613
  %tobool.not393 = icmp eq i32 %conv24, 0, !dbg !614
  br i1 %tobool.not393, label %while.end, label %while.body.preheader, !dbg !614

while.body.preheader:                             ; preds = %for.end22
  %sext436 = shl i64 %8, 32, !dbg !614
  %9 = ashr exact i64 %sext436, 32, !dbg !614
  br label %while.body, !dbg !614

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv433 = phi i64 [ %9, %while.body.preheader ], [ %indvars.iv.next434, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv433, metadata !464, metadata !DIExpression()), !dbg !613
  %indvars.iv.next434 = add nsw i64 %indvars.iv433, -1, !dbg !615
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next434, metadata !464, metadata !DIExpression()), !dbg !613
  %arrayidx26 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %indvars.iv.next434, !dbg !616
  %10 = load i64, ptr %arrayidx26, align 8, !dbg !616
  %call27 = tail call i32 @pthread_join(i64 noundef %10, ptr noundef null) #15, !dbg !617
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next434, metadata !464, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !613
  %11 = trunc i64 %indvars.iv.next434 to i32, !dbg !614
  %tobool.not = icmp eq i32 %11, 0, !dbg !614
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !614, !llvm.loop !618

while.end:                                        ; preds = %while.body, %for.end22
  %call28 = tail call i64 @time(ptr noundef null) #15, !dbg !620
  store i64 %call28, ptr @time_rad_end, align 8, !dbg !622
  %puts369 = tail call i32 @puts(ptr nonnull @str.90), !dbg !623
  tail call void @print_running_time(i64 noundef 0) #15, !dbg !624
  %.b = load i1, ptr @dostats, align 8, !dbg !625
  br i1 %.b, label %if.then31, label %if.end175, !dbg !627

if.then31:                                        ; preds = %while.end
  %puts370 = tail call i32 @puts(ptr nonnull @str.91), !dbg !628
  %call33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34), !dbg !630
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37), !dbg !631
  call void @llvm.dbg.value(metadata i64 0, metadata !446, metadata !DIExpression()), !dbg !560
  %12 = load i64, ptr @n_processors, align 8, !dbg !632
  %cmp36395 = icmp sgt i64 %12, 0, !dbg !635
  br i1 %cmp36395, label %for.body38, label %for.end46, !dbg !636

for.body38:                                       ; preds = %if.then31, %for.body38
  %i.1396 = phi i64 [ %inc45, %for.body38 ], [ 0, %if.then31 ]
  call void @llvm.dbg.value(metadata i64 %i.1396, metadata !446, metadata !DIExpression()), !dbg !560
  %13 = load ptr, ptr @timing, align 8, !dbg !637
  %arrayidx39 = getelementptr inbounds ptr, ptr %13, i64 %i.1396, !dbg !637
  %14 = load ptr, ptr %arrayidx39, align 8, !dbg !637
  %rad_time = getelementptr inbounds %struct.Timing, ptr %14, i64 0, i32 1, !dbg !638
  %15 = load i64, ptr %rad_time, align 8, !dbg !638
  %refine_time = getelementptr inbounds %struct.Timing, ptr %14, i64 0, i32 2, !dbg !639
  %16 = load i64, ptr %refine_time, align 8, !dbg !639
  %wait_time = getelementptr inbounds %struct.Timing, ptr %14, i64 0, i32 3, !dbg !640
  %17 = load i64, ptr %wait_time, align 8, !dbg !640
  %vertex_time = getelementptr inbounds %struct.Timing, ptr %14, i64 0, i32 4, !dbg !641
  %18 = load i64, ptr %vertex_time, align 8, !dbg !641
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.38, i64 noundef %i.1396, i64 noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18), !dbg !642
  %inc45 = add nuw nsw i64 %i.1396, 1, !dbg !643
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !446, metadata !DIExpression()), !dbg !560
  %19 = load i64, ptr @n_processors, align 8, !dbg !632
  %cmp36 = icmp slt i64 %inc45, %19, !dbg !635
  br i1 %cmp36, label %for.body38, label %for.end46, !dbg !636, !llvm.loop !644

for.end46:                                        ; preds = %for.body38, %if.then31
  %.lcssa = phi i64 [ %12, %if.then31 ], [ %19, %for.body38 ], !dbg !632
  %20 = load ptr, ptr @timing, align 8, !dbg !646
  %21 = load ptr, ptr %20, align 8, !dbg !646
  %rad_time48 = getelementptr inbounds %struct.Timing, ptr %21, i64 0, i32 1, !dbg !647
  %22 = load i64, ptr %rad_time48, align 8, !dbg !647
  call void @llvm.dbg.value(metadata i64 %22, metadata !447, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %22, metadata !448, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %22, metadata !449, metadata !DIExpression()), !dbg !560
  %refine_time54 = getelementptr inbounds %struct.Timing, ptr %21, i64 0, i32 2, !dbg !648
  %23 = load i64, ptr %refine_time54, align 8, !dbg !648
  call void @llvm.dbg.value(metadata i64 %23, metadata !450, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %23, metadata !451, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %23, metadata !452, metadata !DIExpression()), !dbg !560
  %wait_time60 = getelementptr inbounds %struct.Timing, ptr %21, i64 0, i32 3, !dbg !649
  %24 = load i64, ptr %wait_time60, align 8, !dbg !649
  call void @llvm.dbg.value(metadata i64 %24, metadata !453, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %24, metadata !454, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %24, metadata !455, metadata !DIExpression()), !dbg !560
  %vertex_time66 = getelementptr inbounds %struct.Timing, ptr %21, i64 0, i32 4, !dbg !650
  %25 = load i64, ptr %vertex_time66, align 8, !dbg !650
  call void @llvm.dbg.value(metadata i64 %25, metadata !456, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %25, metadata !457, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %25, metadata !458, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 1, metadata !446, metadata !DIExpression()), !dbg !560
  %cmp72397 = icmp sgt i64 %.lcssa, 1, !dbg !651
  br i1 %cmp72397, label %for.body74, label %for.end152, !dbg !654

for.body74:                                       ; preds = %for.end46, %for.body74
  %i.2410 = phi i64 [ %inc151, %for.body74 ], [ 1, %for.end46 ]
  %total_rad_time.0409 = phi i64 [ %add, %for.body74 ], [ %22, %for.end46 ]
  %min_vertex_time.0408 = phi i64 [ %38, %for.body74 ], [ %25, %for.end46 ]
  %max_vertex_time.0407 = phi i64 [ %37, %for.body74 ], [ %25, %for.end46 ]
  %total_vertex_time.0406 = phi i64 [ %add133, %for.body74 ], [ %25, %for.end46 ]
  %min_wait_time.0405 = phi i64 [ %35, %for.body74 ], [ %24, %for.end46 ]
  %max_wait_time.0404 = phi i64 [ %34, %for.body74 ], [ %24, %for.end46 ]
  %total_wait_time.0403 = phi i64 [ %add114, %for.body74 ], [ %24, %for.end46 ]
  %min_refine_time.0402 = phi i64 [ %32, %for.body74 ], [ %23, %for.end46 ]
  %max_refine_time.0401 = phi i64 [ %31, %for.body74 ], [ %23, %for.end46 ]
  %total_refine_time.0400 = phi i64 [ %add95, %for.body74 ], [ %23, %for.end46 ]
  %min_rad_time.0399 = phi i64 [ %29, %for.body74 ], [ %22, %for.end46 ]
  %max_rad_time.0398 = phi i64 [ %28, %for.body74 ], [ %22, %for.end46 ]
  call void @llvm.dbg.value(metadata i64 %i.2410, metadata !446, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %total_rad_time.0409, metadata !447, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %min_vertex_time.0408, metadata !458, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %max_vertex_time.0407, metadata !457, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %total_vertex_time.0406, metadata !456, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %min_wait_time.0405, metadata !455, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %max_wait_time.0404, metadata !454, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %total_wait_time.0403, metadata !453, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %min_refine_time.0402, metadata !452, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %max_refine_time.0401, metadata !451, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %total_refine_time.0400, metadata !450, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %min_rad_time.0399, metadata !449, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.value(metadata i64 %max_rad_time.0398, metadata !448, metadata !DIExpression()), !dbg !560
  %arrayidx75 = getelementptr inbounds ptr, ptr %20, i64 %i.2410, !dbg !655
  %26 = load ptr, ptr %arrayidx75, align 8, !dbg !655
  %rad_time76 = getelementptr inbounds %struct.Timing, ptr %26, i64 0, i32 1, !dbg !657
  %27 = load i64, ptr %rad_time76, align 8, !dbg !657
  %add = add nsw i64 %27, %total_rad_time.0409, !dbg !658
  call void @llvm.dbg.value(metadata i64 %add, metadata !447, metadata !DIExpression()), !dbg !560
  %28 = tail call i64 @llvm.smax.i64(i64 %27, i64 %max_rad_time.0398), !dbg !659
  call void @llvm.dbg.value(metadata i64 %28, metadata !448, metadata !DIExpression()), !dbg !560
  %29 = tail call i64 @llvm.smin.i64(i64 %27, i64 %min_rad_time.0399), !dbg !660
  call void @llvm.dbg.value(metadata i64 %29, metadata !449, metadata !DIExpression()), !dbg !560
  %refine_time94 = getelementptr inbounds %struct.Timing, ptr %26, i64 0, i32 2, !dbg !661
  %30 = load i64, ptr %refine_time94, align 8, !dbg !661
  %add95 = add nsw i64 %30, %total_refine_time.0400, !dbg !662
  call void @llvm.dbg.value(metadata i64 %add95, metadata !450, metadata !DIExpression()), !dbg !560
  %31 = tail call i64 @llvm.smax.i64(i64 %30, i64 %max_refine_time.0401), !dbg !663
  call void @llvm.dbg.value(metadata i64 %31, metadata !451, metadata !DIExpression()), !dbg !560
  %32 = tail call i64 @llvm.smin.i64(i64 %30, i64 %min_refine_time.0402), !dbg !664
  call void @llvm.dbg.value(metadata i64 %32, metadata !452, metadata !DIExpression()), !dbg !560
  %wait_time113 = getelementptr inbounds %struct.Timing, ptr %26, i64 0, i32 3, !dbg !665
  %33 = load i64, ptr %wait_time113, align 8, !dbg !665
  %add114 = add nsw i64 %33, %total_wait_time.0403, !dbg !666
  call void @llvm.dbg.value(metadata i64 %add114, metadata !453, metadata !DIExpression()), !dbg !560
  %34 = tail call i64 @llvm.smax.i64(i64 %33, i64 %max_wait_time.0404), !dbg !667
  call void @llvm.dbg.value(metadata i64 %34, metadata !454, metadata !DIExpression()), !dbg !560
  %35 = tail call i64 @llvm.smin.i64(i64 %33, i64 %min_wait_time.0405), !dbg !668
  call void @llvm.dbg.value(metadata i64 %35, metadata !455, metadata !DIExpression()), !dbg !560
  %vertex_time132 = getelementptr inbounds %struct.Timing, ptr %26, i64 0, i32 4, !dbg !669
  %36 = load i64, ptr %vertex_time132, align 8, !dbg !669
  %add133 = add nsw i64 %36, %total_vertex_time.0406, !dbg !670
  call void @llvm.dbg.value(metadata i64 %add133, metadata !456, metadata !DIExpression()), !dbg !560
  %37 = tail call i64 @llvm.smax.i64(i64 %36, i64 %max_vertex_time.0407), !dbg !671
  call void @llvm.dbg.value(metadata i64 %37, metadata !457, metadata !DIExpression()), !dbg !560
  %38 = tail call i64 @llvm.smin.i64(i64 %36, i64 %min_vertex_time.0408), !dbg !672
  call void @llvm.dbg.value(metadata i64 %38, metadata !458, metadata !DIExpression()), !dbg !560
  %inc151 = add nuw nsw i64 %i.2410, 1, !dbg !673
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !446, metadata !DIExpression()), !dbg !560
  %exitcond.not = icmp eq i64 %inc151, %.lcssa, !dbg !651
  br i1 %exitcond.not, label %for.end152, label %for.body74, !dbg !654, !llvm.loop !674

for.end152:                                       ; preds = %for.body74, %for.end46
  %max_rad_time.0.lcssa = phi i64 [ %22, %for.end46 ], [ %28, %for.body74 ], !dbg !676
  %min_rad_time.0.lcssa = phi i64 [ %22, %for.end46 ], [ %29, %for.body74 ], !dbg !676
  %total_refine_time.0.lcssa = phi i64 [ %23, %for.end46 ], [ %add95, %for.body74 ], !dbg !676
  %max_refine_time.0.lcssa = phi i64 [ %23, %for.end46 ], [ %31, %for.body74 ], !dbg !676
  %min_refine_time.0.lcssa = phi i64 [ %23, %for.end46 ], [ %32, %for.body74 ], !dbg !676
  %total_wait_time.0.lcssa = phi i64 [ %24, %for.end46 ], [ %add114, %for.body74 ], !dbg !676
  %max_wait_time.0.lcssa = phi i64 [ %24, %for.end46 ], [ %34, %for.body74 ], !dbg !676
  %min_wait_time.0.lcssa = phi i64 [ %24, %for.end46 ], [ %35, %for.body74 ], !dbg !676
  %total_vertex_time.0.lcssa = phi i64 [ %25, %for.end46 ], [ %add133, %for.body74 ], !dbg !676
  %max_vertex_time.0.lcssa = phi i64 [ %25, %for.end46 ], [ %37, %for.body74 ], !dbg !676
  %min_vertex_time.0.lcssa = phi i64 [ %25, %for.end46 ], [ %38, %for.body74 ], !dbg !676
  %total_rad_time.0.lcssa = phi i64 [ %22, %for.end46 ], [ %add, %for.body74 ], !dbg !676
  %call153 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i64 noundef %max_rad_time.0.lcssa, i64 noundef %max_refine_time.0.lcssa, i64 noundef %max_wait_time.0.lcssa, i64 noundef %max_vertex_time.0.lcssa), !dbg !677
  %call154 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i64 noundef %min_rad_time.0.lcssa, i64 noundef %min_refine_time.0.lcssa, i64 noundef %min_wait_time.0.lcssa, i64 noundef %min_vertex_time.0.lcssa), !dbg !678
  %conv155 = sitofp i64 %total_rad_time.0.lcssa to double, !dbg !679
  %39 = load i64, ptr @n_processors, align 8, !dbg !680
  %conv156 = sitofp i64 %39 to double, !dbg !680
  %div = fdiv double %conv155, %conv156, !dbg !681
  %conv157 = fptosi double %div to i64, !dbg !682
  %conv158 = sitofp i64 %total_refine_time.0.lcssa to double, !dbg !683
  %div161 = fdiv double %conv158, %conv156, !dbg !684
  %conv162 = fptosi double %div161 to i64, !dbg !685
  %conv163 = sitofp i64 %total_wait_time.0.lcssa to double, !dbg !686
  %div166 = fdiv double %conv163, %conv156, !dbg !687
  %conv167 = fptosi double %div166 to i64, !dbg !688
  %conv168 = sitofp i64 %total_vertex_time.0.lcssa to double, !dbg !689
  %div171 = fdiv double %conv168, %conv156, !dbg !690
  %conv172 = fptosi double %div171 to i64, !dbg !691
  %call173 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i64 noundef %conv157, i64 noundef %conv162, i64 noundef %conv167, i64 noundef %conv172), !dbg !692
  %puts371 = tail call i32 @puts(ptr nonnull @str.92), !dbg !693
  br label %if.end175, !dbg !694

if.end175:                                        ; preds = %for.end152, %while.end
  %40 = load ptr, ptr @stdout, align 8, !dbg !695
  tail call void @print_statistics(ptr noundef %40, i64 noundef 0) #15, !dbg !696
  %41 = load i64, ptr @disp_fill_mode, align 8, !dbg !697
  %42 = load i64, ptr @disp_patch_switch, align 8, !dbg !698
  %43 = load i64, ptr @disp_mesh_switch, align 8, !dbg !699
  %44 = load i64, ptr @disp_interaction_switch, align 8, !dbg !700
  tail call void @display_scene(i64 noundef %41, i64 noundef %42, i64 noundef %43, i64 noundef %44, i64 noundef 0) #15, !dbg !701
  store i64 -1, ptr @start_radiosity.state, align 8, !dbg !702
  br label %cleanup, !dbg !703

if.then178:                                       ; preds = %entry
  %45 = load i64, ptr @start_radiosity.state, align 8, !dbg !704
  switch i64 %45, label %sw.default [
    i64 -1, label %if.then181
    i64 0, label %sw.bb
    i64 1, label %sw.bb222
  ], !dbg !706

if.then181:                                       ; preds = %if.then178
  %puts368 = tail call i32 @puts(ptr nonnull @str.89), !dbg !707
  br label %cleanup, !dbg !709

sw.bb:                                            ; preds = %if.then178
  %46 = load ptr, ptr @global, align 8, !dbg !710
  store i64 1, ptr %46, align 8, !dbg !711
  call void @llvm.dbg.value(metadata i64 0, metadata !446, metadata !DIExpression()), !dbg !560
  %47 = load i64, ptr @n_processors, align 8, !dbg !712
  %cmp186381 = icmp sgt i64 %47, 0, !dbg !715
  br i1 %cmp186381, label %for.body188, label %for.end193, !dbg !716

for.body188:                                      ; preds = %sw.bb, %for.body188
  %i.3382 = phi i64 [ %inc192, %for.body188 ], [ 0, %sw.bb ]
  call void @llvm.dbg.value(metadata i64 %i.3382, metadata !446, metadata !DIExpression()), !dbg !560
  %call189 = tail call i64 @assign_taskq(i64 noundef 0) #15, !dbg !717
  %arrayidx190 = getelementptr inbounds [1024 x i64], ptr @taskqueue_id, i64 0, i64 %i.3382, !dbg !719
  store i64 %call189, ptr %arrayidx190, align 8, !dbg !720
  %inc192 = add nuw nsw i64 %i.3382, 1, !dbg !721
  call void @llvm.dbg.value(metadata i64 %inc192, metadata !446, metadata !DIExpression()), !dbg !560
  %48 = load i64, ptr @n_processors, align 8, !dbg !712
  %cmp186 = icmp slt i64 %inc192, %48, !dbg !715
  br i1 %cmp186, label %for.body188, label %for.end193, !dbg !716, !llvm.loop !722

for.end193:                                       ; preds = %for.body188, %sw.bb
  %49 = load i32, ptr @__threads__, align 4, !dbg !724
  %cmp196 = icmp ult i32 %49, 256, !dbg !724
  br i1 %cmp196, label %cond.end200, label %cond.false199, !dbg !724

cond.false199:                                    ; preds = %for.end193
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1670, ptr noundef nonnull @__PRETTY_FUNCTION__.start_radiosity) #16, !dbg !724
  unreachable, !dbg !724

cond.end200:                                      ; preds = %for.end193
  %call201 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @__intern__) #15, !dbg !725
  call void @llvm.dbg.value(metadata i64 0, metadata !466, metadata !DIExpression()), !dbg !726
  %50 = load i64, ptr @n_processors, align 8, !dbg !727
  %cmp204384 = icmp sgt i64 %50, 1, !dbg !730
  br i1 %cmp204384, label %for.body206, label %for.end219, !dbg !731

for.cond202:                                      ; preds = %for.body206
  %inc218 = add nuw nsw i64 %i194.0385, 1, !dbg !732
  call void @llvm.dbg.value(metadata i64 %i194.0385, metadata !466, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !726
  %51 = load i64, ptr @n_processors, align 8, !dbg !727
  %sub203 = add nsw i64 %51, -1, !dbg !733
  %cmp204 = icmp slt i64 %inc218, %sub203, !dbg !730
  br i1 %cmp204, label %for.body206, label %for.end219, !dbg !731, !llvm.loop !734

for.body206:                                      ; preds = %cond.end200, %for.cond202
  %i194.0385 = phi i64 [ %inc218, %for.cond202 ], [ 0, %cond.end200 ]
  call void @llvm.dbg.value(metadata i64 %i194.0385, metadata !466, metadata !DIExpression()), !dbg !726
  %52 = load i32, ptr @__threads__, align 4, !dbg !736
  %inc207 = add i32 %52, 1, !dbg !736
  store i32 %inc207, ptr @__threads__, align 4, !dbg !736
  %idxprom208 = zext i32 %52 to i64, !dbg !738
  %arrayidx209 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom208, !dbg !738
  %call210 = tail call i32 @pthread_create(ptr noundef nonnull %arrayidx209, ptr noundef null, ptr noundef nonnull @radiosity, ptr noundef null) #15, !dbg !739
  call void @llvm.dbg.value(metadata i32 %call210, metadata !471, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !726
  %cmp212.not = icmp eq i32 %call210, 0, !dbg !740
  call void @llvm.dbg.value(metadata i64 %i194.0385, metadata !466, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !726
  br i1 %cmp212.not, label %for.cond202, label %if.then214, !dbg !742

if.then214:                                       ; preds = %for.body206
  %puts = tail call i32 @puts(ptr nonnull @str.93), !dbg !743
  tail call void @exit(i32 noundef -1) #16, !dbg !745
  unreachable, !dbg !745

for.end219:                                       ; preds = %for.cond202, %cond.end200
  %call220 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @__intern__) #15, !dbg !746
  tail call void @radiosity(), !dbg !747
  tail call void @init_modeling_tasks(i64 noundef 0) #15, !dbg !748
  tail call void @process_tasks(i64 noundef 0) #15, !dbg !749
  %53 = load i64, ptr @start_radiosity.state, align 8, !dbg !750
  %inc221 = add nsw i64 %53, 1, !dbg !750
  store i64 %inc221, ptr @start_radiosity.state, align 8, !dbg !750
  br label %sw.epilog, !dbg !751

sw.bb222:                                         ; preds = %if.then178
  %call223 = tail call i64 @init_ray_tasks(i64 noundef 0), !dbg !752
  %tobool224.not = icmp eq i64 %call223, 0, !dbg !752
  br i1 %tobool224.not, label %if.else249, label %if.then225, !dbg !754

if.then225:                                       ; preds = %sw.bb222
  %54 = load ptr, ptr @global, align 8, !dbg !755
  %barrier = getelementptr inbounds %struct.Global, ptr %54, i64 0, i32 16, !dbg !758
  %call226 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %barrier) #15, !dbg !759
  %55 = load ptr, ptr @global, align 8, !dbg !760
  %bar_teller = getelementptr inbounds %struct.Global, ptr %55, i64 0, i32 16, i32 2, !dbg !761
  %56 = load i32, ptr %bar_teller, align 8, !dbg !762
  %inc228 = add i32 %56, 1, !dbg !762
  store i32 %inc228, ptr %bar_teller, align 8, !dbg !762
  %conv231 = zext i32 %inc228 to i64, !dbg !763
  %57 = load i64, ptr @n_processors, align 8, !dbg !765
  %cmp232 = icmp eq i64 %57, %conv231, !dbg !766
  br i1 %cmp232, label %if.then234, label %if.else239, !dbg !767

if.then234:                                       ; preds = %if.then225
  store i32 0, ptr %bar_teller, align 8, !dbg !768
  %bar_cond = getelementptr inbounds %struct.Global, ptr %55, i64 0, i32 16, i32 1, !dbg !770
  %call238 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #15, !dbg !771
  br label %if.end245, !dbg !772

if.else239:                                       ; preds = %if.then225
  %barrier229 = getelementptr inbounds %struct.Global, ptr %55, i64 0, i32 16, !dbg !773
  %bar_cond241 = getelementptr inbounds %struct.Global, ptr %55, i64 0, i32 16, i32 1, !dbg !774
  %call244 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond241, ptr noundef nonnull %barrier229) #15, !dbg !776
  br label %if.end245

if.end245:                                        ; preds = %if.else239, %if.then234
  %58 = load ptr, ptr @global, align 8, !dbg !777
  %barrier246 = getelementptr inbounds %struct.Global, ptr %58, i64 0, i32 16, !dbg !778
  %call248 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %barrier246) #15, !dbg !779
  tail call void @process_tasks(i64 noundef 0) #15, !dbg !780
  br label %sw.epilog, !dbg !781

if.else249:                                       ; preds = %sw.bb222
  %59 = load i64, ptr @start_radiosity.state, align 8, !dbg !782
  %inc250 = add nsw i64 %59, 1, !dbg !782
  store i64 %inc250, ptr @start_radiosity.state, align 8, !dbg !782
  br label %sw.epilog

sw.default:                                       ; preds = %if.then178
  %60 = load ptr, ptr @global, align 8, !dbg !783
  %barrier252 = getelementptr inbounds %struct.Global, ptr %60, i64 0, i32 16, !dbg !785
  %call254 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %barrier252) #15, !dbg !786
  %61 = load ptr, ptr @global, align 8, !dbg !787
  %bar_teller256 = getelementptr inbounds %struct.Global, ptr %61, i64 0, i32 16, i32 2, !dbg !788
  %62 = load i32, ptr %bar_teller256, align 8, !dbg !789
  %inc257 = add i32 %62, 1, !dbg !789
  store i32 %inc257, ptr %bar_teller256, align 8, !dbg !789
  %conv260 = zext i32 %inc257 to i64, !dbg !790
  %63 = load i64, ptr @n_processors, align 8, !dbg !792
  %cmp261 = icmp eq i64 %63, %conv260, !dbg !793
  br i1 %cmp261, label %if.then263, label %if.else269, !dbg !794

if.then263:                                       ; preds = %sw.default
  store i32 0, ptr %bar_teller256, align 8, !dbg !795
  %bar_cond267 = getelementptr inbounds %struct.Global, ptr %61, i64 0, i32 16, i32 1, !dbg !797
  %call268 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond267) #15, !dbg !798
  br label %if.end275, !dbg !799

if.else269:                                       ; preds = %sw.default
  %barrier258 = getelementptr inbounds %struct.Global, ptr %61, i64 0, i32 16, !dbg !800
  %bar_cond271 = getelementptr inbounds %struct.Global, ptr %61, i64 0, i32 16, i32 1, !dbg !801
  %call274 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond271, ptr noundef nonnull %barrier258) #15, !dbg !803
  br label %if.end275

if.end275:                                        ; preds = %if.else269, %if.then263
  %64 = load ptr, ptr @global, align 8, !dbg !804
  %barrier276 = getelementptr inbounds %struct.Global, ptr %64, i64 0, i32 16, !dbg !805
  %call278 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %barrier276) #15, !dbg !806
  tail call void @init_radavg_tasks(i64 noundef 0, i64 noundef 0), !dbg !807
  tail call void @process_tasks(i64 noundef 0) #15, !dbg !808
  tail call void @init_radavg_tasks(i64 noundef 1, i64 noundef 0), !dbg !809
  tail call void @process_tasks(i64 noundef 0) #15, !dbg !810
  %65 = load i64, ptr @n_processors, align 8, !dbg !811
  %conv280 = trunc i64 %65 to i32, !dbg !811
  call void @llvm.dbg.value(metadata i32 %conv280, metadata !472, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !812
  %tobool283.not386 = icmp eq i32 %conv280, 0, !dbg !813
  br i1 %tobool283.not386, label %while.end288, label %while.body284.preheader, !dbg !813

while.body284.preheader:                          ; preds = %if.end275
  %sext = shl i64 %65, 32, !dbg !813
  %66 = ashr exact i64 %sext, 32, !dbg !813
  br label %while.body284, !dbg !813

while.body284:                                    ; preds = %while.body284.preheader, %while.body284
  %indvars.iv = phi i64 [ %66, %while.body284.preheader ], [ %indvars.iv.next, %while.body284 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !472, metadata !DIExpression()), !dbg !812
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !814
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !472, metadata !DIExpression()), !dbg !812
  %arrayidx286 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %indvars.iv.next, !dbg !815
  %67 = load i64, ptr %arrayidx286, align 8, !dbg !815
  %call287 = tail call i32 @pthread_join(i64 noundef %67, ptr noundef null) #15, !dbg !816
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !472, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !812
  %68 = trunc i64 %indvars.iv.next to i32, !dbg !813
  %tobool283.not = icmp eq i32 %68, 0, !dbg !813
  br i1 %tobool283.not, label %while.end288, label %while.body284, !dbg !813, !llvm.loop !817

while.end288:                                     ; preds = %while.body284, %if.end275
  store i64 -1, ptr @start_radiosity.state, align 8, !dbg !819
  br label %sw.epilog, !dbg !820

sw.epilog:                                        ; preds = %if.end245, %if.else249, %while.end288, %for.end219
  %69 = load i64, ptr @disp_fill_mode, align 8, !dbg !821
  %70 = load i64, ptr @disp_patch_switch, align 8, !dbg !822
  %71 = load i64, ptr @disp_mesh_switch, align 8, !dbg !823
  %72 = load i64, ptr @disp_interaction_switch, align 8, !dbg !824
  tail call void @display_scene(i64 noundef %69, i64 noundef %70, i64 noundef %71, i64 noundef %72, i64 noundef 0) #15, !dbg !825
  br label %cleanup, !dbg !826

if.then292:                                       ; preds = %entry
  tail call void @init_global(i64 noundef 0), !dbg !827
  tail call void @init_visibility_module(i64 noundef 0) #15, !dbg !830
  tail call void @g_clear() #15, !dbg !831
  store i64 0, ptr @start_radiosity.state, align 8, !dbg !832
  br label %cleanup, !dbg !833

cleanup:                                          ; preds = %if.end175, %if.then292, %sw.epilog, %entry, %if.then181, %if.then2
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @change_display(i64 noundef %val) #0 !dbg !835 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !837, metadata !DIExpression()), !dbg !838
  switch i64 %val, label %return [
    i64 0, label %sw.bb
    i64 1, label %sw.epilogthread-pre-split
    i64 2, label %sw.bb6
    i64 3, label %sw.bb11
    i64 4, label %sw.bb16
  ], !dbg !839

sw.bb:                                            ; preds = %entry
  %0 = load i64, ptr @disp_fill_switch, align 8, !dbg !840
  %tobool.not = icmp eq i64 %0, 0, !dbg !842
  %1 = zext i1 %tobool.not to i64
  store i64 %1, ptr @disp_fill_switch, align 8, !dbg !843
  br label %sw.epilog, !dbg !844

sw.bb6:                                           ; preds = %entry
  br label %sw.epilogthread-pre-split, !dbg !845

sw.bb11:                                          ; preds = %entry
  br label %sw.epilogthread-pre-split, !dbg !846

sw.bb16:                                          ; preds = %entry
  br label %sw.epilogthread-pre-split, !dbg !847

sw.epilogthread-pre-split:                        ; preds = %entry, %sw.bb6, %sw.bb11, %sw.bb16
  %disp_shade_switch.sink27 = phi ptr [ @disp_patch_switch, %sw.bb6 ], [ @disp_mesh_switch, %sw.bb11 ], [ @disp_interaction_switch, %sw.bb16 ], [ @disp_shade_switch, %entry ]
  %2 = load i64, ptr %disp_shade_switch.sink27, align 8, !dbg !848
  %tobool2.not = icmp eq i64 %2, 0, !dbg !848
  %3 = zext i1 %tobool2.not to i64
  store i64 %3, ptr %disp_shade_switch.sink27, align 8, !dbg !848
  %.pr = load i64, ptr @disp_fill_switch, align 8, !dbg !849
  br label %sw.epilog, !dbg !849

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %sw.bb
  %4 = phi i64 [ %.pr, %sw.epilogthread-pre-split ], [ %1, %sw.bb ], !dbg !849
  %cmp = icmp eq i64 %4, 0, !dbg !851
  br i1 %cmp, label %if.end26, label %if.else, !dbg !852

if.else:                                          ; preds = %sw.epilog
  %5 = load i64, ptr @disp_shade_switch, align 8, !dbg !853
  %cmp22 = icmp eq i64 %5, 0, !dbg !856
  %. = select i1 %cmp22, i64 1, i64 2
  br label %if.end26

if.end26:                                         ; preds = %if.else, %sw.epilog
  %.sink = phi i64 [ 0, %sw.epilog ], [ %., %if.else ]
  store i64 %.sink, ptr @disp_fill_mode, align 8, !dbg !857
  %6 = load i64, ptr @disp_patch_switch, align 8, !dbg !858
  %7 = load i64, ptr @disp_mesh_switch, align 8, !dbg !859
  %8 = load i64, ptr @disp_interaction_switch, align 8, !dbg !860
  tail call void @display_scene(i64 noundef %.sink, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef 0) #15, !dbg !861
  br label %return, !dbg !862

return:                                           ; preds = %entry, %if.end26
  ret void, !dbg !862
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @select_model(i64 noundef %val) #1 !dbg !863 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !865, metadata !DIExpression()), !dbg !866
  %switch = icmp ult i64 %val, 3, !dbg !867
  br i1 %switch, label %sw.epilog.sink.split, label %sw.epilog, !dbg !867

sw.epilog.sink.split:                             ; preds = %entry
  store i64 %val, ptr @model_selector, align 8, !dbg !868
  br label %sw.epilog, !dbg !870

sw.epilog:                                        ; preds = %entry, %sw.epilog.sink.split
  ret void, !dbg !870
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @utility_tools(i64 noundef %val) #0 !dbg !871 {
entry:
  call void @llvm.dbg.value(metadata i64 %val, metadata !873, metadata !DIExpression()), !dbg !932
  switch i64 %val, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb1
    i64 2, label %sw.bb2
    i64 3, label %sw.bb6
  ], !dbg !933

sw.bb:                                            ; preds = %entry
  %call = tail call i64 @ps_open(ptr noundef nonnull @.str.46) #15, !dbg !934
  %0 = load i64, ptr @disp_crnt_view_y, align 8, !dbg !936
  %conv = sitofp i64 %0 to float, !dbg !937
  tail call void @ps_setup_view(float noundef 1.000000e+01, float noundef %conv, float noundef 8.000000e+03, float noundef 1.000000e+00) #15, !dbg !938
  %1 = load i64, ptr @disp_fill_mode, align 8, !dbg !939
  %2 = load i64, ptr @disp_patch_switch, align 8, !dbg !940
  %3 = load i64, ptr @disp_mesh_switch, align 8, !dbg !941
  %4 = load i64, ptr @disp_interaction_switch, align 8, !dbg !942
  tail call void @ps_display_scene(i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 0) #15, !dbg !943
  tail call void @ps_close() #15, !dbg !944
  br label %sw.epilog, !dbg !945

sw.bb1:                                           ; preds = %entry
  %5 = load ptr, ptr @stdout, align 8, !dbg !946
  tail call void @print_statistics(ptr noundef %5, i64 noundef 0) #15, !dbg !947
  br label %sw.epilog, !dbg !948

sw.bb2:                                           ; preds = %entry
  %call3 = tail call ptr @fopen(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48), !dbg !949
  call void @llvm.dbg.value(metadata ptr %call3, metadata !874, metadata !DIExpression()), !dbg !932
  %cmp = icmp eq ptr %call3, null, !dbg !951
  br i1 %cmp, label %if.then, label %if.end, !dbg !952

if.then:                                          ; preds = %sw.bb2
  tail call void @perror(ptr noundef nonnull @.str.47) #17, !dbg !953
  br label %sw.epilog, !dbg !955

if.end:                                           ; preds = %sw.bb2
  tail call void @print_statistics(ptr noundef nonnull %call3, i64 noundef 0) #15, !dbg !956
  %call5 = tail call i32 @fclose(ptr noundef nonnull %call3), !dbg !957
  br label %sw.epilog, !dbg !958

sw.bb6:                                           ; preds = %entry
  tail call void @clear_radiosity(i64 noundef 0) #15, !dbg !959
  br label %sw.epilog, !dbg !960

sw.epilog:                                        ; preds = %sw.bb6, %entry, %if.end, %if.then, %sw.bb1, %sw.bb
  ret void, !dbg !961
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #2 !dbg !962 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !967, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata ptr %argv, metadata !968, metadata !DIExpression()), !dbg !989
  tail call fastcc void @parse_args(i32 noundef %argc, ptr noundef %argv), !dbg !990
  %0 = load i64, ptr @model_selector, align 8, !dbg !991
  store i64 %0, ptr getelementptr inbounds (<{ { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, ptr, ptr, [27 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, [29 x ptr] }>, i64, ptr }, { ptr, <{ ptr, ptr, ptr, ptr, [28 x ptr] }>, i64, ptr } }>, ptr @choices, i64 0, i32 2, i32 2), align 8, !dbg !992
  %1 = load i64, ptr @batch_mode, align 8, !dbg !993
  %cmp = icmp eq i64 %1, 0, !dbg !995
  br i1 %cmp, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %entry
  tail call void @g_init(i32 noundef %argc, ptr noundef %argv) #15, !dbg !997
  tail call void @setup_view(float noundef 1.000000e+01, float noundef 0.000000e+00, float noundef 8.000000e+03, float noundef 1.000000e+00, i64 noundef 0) #15, !dbg !999
  br label %if.end, !dbg !1000

if.end:                                           ; preds = %if.then, %entry
  %call = tail call i64 @pthread_self() #18, !dbg !1001
  %2 = load i32, ptr @__threads__, align 4, !dbg !1003
  %inc = add i32 %2, 1, !dbg !1003
  store i32 %inc, ptr @__threads__, align 4, !dbg !1003
  %idxprom = zext i32 %2 to i64, !dbg !1004
  %arrayidx = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom, !dbg !1004
  store i64 %call, ptr %arrayidx, align 8, !dbg !1005
  %3 = load float, ptr @BFepsilon, align 4, !dbg !1006
  %conv = fpext float %3 to double, !dbg !1006
  %cmp1 = fcmp ugt double %conv, 2.000000e-05, !dbg !1008
  br i1 %cmp1, label %if.else, label %if.end26.sink.split, !dbg !1009

if.else:                                          ; preds = %if.end
  %cmp8 = fcmp ugt double %conv, 2.000000e-04, !dbg !1010
  br i1 %cmp8, label %if.else15, label %if.end26.sink.split, !dbg !1012

if.else15:                                        ; preds = %if.else
  %cmp17 = fcmp ugt double %conv, 2.000000e-03, !dbg !1013
  br i1 %cmp17, label %if.end26, label %if.end26.sink.split, !dbg !1015

if.end26.sink.split:                              ; preds = %if.else15, %if.else, %if.end
  %.sink356 = phi i64 [ 30, %if.end ], [ 20, %if.else ], [ 10, %if.else15 ]
  %.sink355 = phi i64 [ 50, %if.end ], [ 30, %if.else ], [ 20, %if.else15 ]
  %4 = load i64, ptr @MAX_ELEMENTS, align 8, !dbg !1016
  %mul11 = mul nsw i64 %4, %.sink356, !dbg !1016
  store i64 %mul11, ptr @MAX_ELEMENTS, align 8, !dbg !1016
  %5 = load i64, ptr @MAX_INTERACTIONS, align 8, !dbg !1016
  %mul12 = mul nsw i64 %5, %.sink355, !dbg !1016
  store i64 %mul12, ptr @MAX_INTERACTIONS, align 8, !dbg !1016
  %6 = load i64, ptr @MAX_ELEMVERTICES, align 8, !dbg !1016
  %mul13 = mul nsw i64 %6, %.sink356, !dbg !1016
  store i64 %mul13, ptr @MAX_ELEMVERTICES, align 8, !dbg !1016
  %7 = load i64, ptr @MAX_EDGES, align 8, !dbg !1016
  %mul14 = mul nsw i64 %7, %.sink356, !dbg !1016
  store i64 %mul14, ptr @MAX_EDGES, align 8, !dbg !1016
  br label %if.end26, !dbg !1017

if.end26:                                         ; preds = %if.end26.sink.split, %if.else15
  %call27 = tail call noalias dereferenceable_or_null(175547456) ptr @malloc(i64 noundef 175547456) #19, !dbg !1017
  store ptr %call27, ptr @global, align 8, !dbg !1018
  %cmp28 = icmp eq ptr %call27, null, !dbg !1019
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !1021

if.then30:                                        ; preds = %if.end26
  %puts289 = tail call i32 @puts(ptr nonnull @str.94), !dbg !1022
  tail call void @exit(i32 noundef 1) #16, !dbg !1024
  unreachable, !dbg !1024

if.end32:                                         ; preds = %if.end26
  tail call void @init_global(i64 noundef 0), !dbg !1025
  %8 = load i64, ptr @n_processors, align 8, !dbg !1026
  %mul33 = shl i64 %8, 3, !dbg !1027
  %call34 = tail call noalias ptr @malloc(i64 noundef %mul33) #19, !dbg !1028
  store ptr %call34, ptr @timing, align 8, !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !989
  %cmp35297 = icmp sgt i64 %8, 0, !dbg !1030
  br i1 %cmp35297, label %for.body.preheader, label %for.end, !dbg !1033

for.body.preheader:                               ; preds = %if.end32
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !989
  %call37366 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19, !dbg !1034
  store ptr %call37366, ptr %call34, align 8, !dbg !1035
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()), !dbg !989
  %9 = load i64, ptr @n_processors, align 8, !dbg !1036
  %cmp35367 = icmp sgt i64 %9, 1, !dbg !1030
  br i1 %cmp35367, label %for.body.for.body_crit_edge, label %for.end, !dbg !1033, !llvm.loop !1037

for.body.for.body_crit_edge:                      ; preds = %for.body.preheader, %for.body.for.body_crit_edge
  %inc39368 = phi i64 [ %inc39, %for.body.for.body_crit_edge ], [ 1, %for.body.preheader ]
  %.pre = load ptr, ptr @timing, align 8, !dbg !1039
  call void @llvm.dbg.value(metadata i64 %inc39368, metadata !969, metadata !DIExpression()), !dbg !989
  %call37 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #19, !dbg !1034
  %arrayidx38 = getelementptr inbounds ptr, ptr %.pre, i64 %inc39368, !dbg !1039
  store ptr %call37, ptr %arrayidx38, align 8, !dbg !1035
  %inc39 = add nuw nsw i64 %inc39368, 1, !dbg !1040
  call void @llvm.dbg.value(metadata i64 %inc39, metadata !969, metadata !DIExpression()), !dbg !989
  %10 = load i64, ptr @n_processors, align 8, !dbg !1036
  %cmp35 = icmp slt i64 %inc39, %10, !dbg !1030
  br i1 %cmp35, label %for.body.for.body_crit_edge, label %for.end, !dbg !1033, !llvm.loop !1037

for.end:                                          ; preds = %for.body.for.body_crit_edge, %for.body.preheader, %if.end32
  tail call void @init_sharedlock(i64 noundef 0) #15, !dbg !1041
  tail call void @init_visibility_module(i64 noundef 0) #15, !dbg !1042
  %11 = load i64, ptr @batch_mode, align 8, !dbg !1043
  %tobool.not = icmp eq i64 %11, 0, !dbg !1043
  br i1 %tobool.not, label %if.else227, label %if.then40, !dbg !1044

if.then40:                                        ; preds = %for.end
  %call41 = tail call i64 @time(ptr noundef null) #15, !dbg !1045
  store i64 %call41, ptr @time_rad_start, align 8, !dbg !1047
  %12 = load ptr, ptr @global, align 8, !dbg !1048
  store i64 0, ptr %12, align 8, !dbg !1049
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !989
  %13 = load i64, ptr @n_processors, align 8, !dbg !1050
  %cmp43299 = icmp sgt i64 %13, 0, !dbg !1053
  br i1 %cmp43299, label %for.body45, label %for.end50, !dbg !1054

for.body45:                                       ; preds = %if.then40, %for.body45
  %i.1300 = phi i64 [ %inc49, %for.body45 ], [ 0, %if.then40 ]
  call void @llvm.dbg.value(metadata i64 %i.1300, metadata !969, metadata !DIExpression()), !dbg !989
  %call46 = tail call i64 @assign_taskq(i64 noundef 0) #15, !dbg !1055
  %arrayidx47 = getelementptr inbounds [1024 x i64], ptr @taskqueue_id, i64 0, i64 %i.1300, !dbg !1057
  store i64 %call46, ptr %arrayidx47, align 8, !dbg !1058
  %inc49 = add nuw nsw i64 %i.1300, 1, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %inc49, metadata !969, metadata !DIExpression()), !dbg !989
  %14 = load i64, ptr @n_processors, align 8, !dbg !1050
  %cmp43 = icmp slt i64 %inc49, %14, !dbg !1053
  br i1 %cmp43, label %for.body45, label %for.end50, !dbg !1054, !llvm.loop !1060

for.end50:                                        ; preds = %for.body45, %if.then40
  %15 = load i32, ptr @__threads__, align 4, !dbg !1062
  %cmp52 = icmp ult i32 %15, 256, !dbg !1062
  br i1 %cmp52, label %cond.end, label %cond.false, !dbg !1062

cond.false:                                       ; preds = %for.end50
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 1391, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #16, !dbg !1062
  unreachable, !dbg !1062

cond.end:                                         ; preds = %for.end50
  %call54 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @__intern__) #15, !dbg !1063
  call void @llvm.dbg.value(metadata i64 0, metadata !982, metadata !DIExpression()), !dbg !1064
  %16 = load i64, ptr @n_processors, align 8, !dbg !1065
  %cmp56302 = icmp sgt i64 %16, 1, !dbg !1068
  br i1 %cmp56302, label %for.body58, label %for.end71, !dbg !1069

for.cond55:                                       ; preds = %for.body58
  %inc70 = add nuw nsw i64 %i51.0303, 1, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %i51.0303, metadata !982, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1064
  %17 = load i64, ptr @n_processors, align 8, !dbg !1065
  %sub = add nsw i64 %17, -1, !dbg !1071
  %cmp56 = icmp slt i64 %inc70, %sub, !dbg !1068
  br i1 %cmp56, label %for.body58, label %for.end71, !dbg !1069, !llvm.loop !1072

for.body58:                                       ; preds = %cond.end, %for.cond55
  %i51.0303 = phi i64 [ %inc70, %for.cond55 ], [ 0, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %i51.0303, metadata !982, metadata !DIExpression()), !dbg !1064
  %18 = load i32, ptr @__threads__, align 4, !dbg !1074
  %inc59 = add i32 %18, 1, !dbg !1074
  store i32 %inc59, ptr @__threads__, align 4, !dbg !1074
  %idxprom60 = zext i32 %18 to i64, !dbg !1076
  %arrayidx61 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %idxprom60, !dbg !1076
  %call62 = tail call i32 @pthread_create(ptr noundef nonnull %arrayidx61, ptr noundef null, ptr noundef nonnull @radiosity, ptr noundef null) #15, !dbg !1077
  call void @llvm.dbg.value(metadata i32 %call62, metadata !986, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !1064
  %cmp64.not = icmp eq i32 %call62, 0, !dbg !1078
  call void @llvm.dbg.value(metadata i64 %i51.0303, metadata !982, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1064
  br i1 %cmp64.not, label %for.cond55, label %if.then66, !dbg !1080

if.then66:                                        ; preds = %for.body58
  %puts288 = tail call i32 @puts(ptr nonnull @str.93), !dbg !1081
  tail call void @exit(i32 noundef -1) #16, !dbg !1083
  unreachable, !dbg !1083

for.end71:                                        ; preds = %for.cond55, %cond.end
  %call72 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @__intern__) #15, !dbg !1084
  tail call void @radiosity(), !dbg !1085
  %19 = load i64, ptr @n_processors, align 8, !dbg !1086
  %conv73 = trunc i64 %19 to i32, !dbg !1086
  call void @llvm.dbg.value(metadata i32 %conv73, metadata !987, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1087
  %tobool74.not304 = icmp eq i32 %conv73, 0, !dbg !1088
  br i1 %tobool74.not304, label %while.end, label %while.body.preheader, !dbg !1088

while.body.preheader:                             ; preds = %for.end71
  %sext = shl i64 %19, 32, !dbg !1088
  %20 = ashr exact i64 %sext, 32, !dbg !1088
  br label %while.body, !dbg !1088

while.body:                                       ; preds = %while.body.preheader, %while.body
  %indvars.iv = phi i64 [ %20, %while.body.preheader ], [ %indvars.iv.next, %while.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !987, metadata !DIExpression()), !dbg !1087
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1089
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !987, metadata !DIExpression()), !dbg !1087
  %arrayidx76 = getelementptr inbounds [256 x i64], ptr @__tid__, i64 0, i64 %indvars.iv.next, !dbg !1090
  %21 = load i64, ptr %arrayidx76, align 8, !dbg !1090
  %call77 = tail call i32 @pthread_join(i64 noundef %21, ptr noundef null) #15, !dbg !1091
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !987, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1087
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !1088
  %tobool74.not = icmp eq i32 %22, 0, !dbg !1088
  br i1 %tobool74.not, label %while.end, label %while.body, !dbg !1088, !llvm.loop !1092

while.end:                                        ; preds = %while.body, %for.end71
  %call78 = tail call i64 @time(ptr noundef null) #15, !dbg !1094
  store i64 %call78, ptr @time_rad_end, align 8, !dbg !1096
  %puts = tail call i32 @puts(ptr nonnull @str.90), !dbg !1097
  tail call void @print_running_time(i64 noundef 0) #15, !dbg !1098
  %.b = load i1, ptr @dostats, align 8, !dbg !1099
  br i1 %.b, label %if.then81, label %if.end226, !dbg !1101

if.then81:                                        ; preds = %while.end
  %puts286 = tail call i32 @puts(ptr nonnull @str.91), !dbg !1102
  %call83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34), !dbg !1104
  %call84 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.37), !dbg !1105
  call void @llvm.dbg.value(metadata i64 0, metadata !969, metadata !DIExpression()), !dbg !989
  %23 = load i64, ptr @n_processors, align 8, !dbg !1106
  %cmp86306 = icmp sgt i64 %23, 0, !dbg !1109
  br i1 %cmp86306, label %for.body88, label %for.end96, !dbg !1110

for.body88:                                       ; preds = %if.then81, %for.body88
  %i.2307 = phi i64 [ %inc95, %for.body88 ], [ 0, %if.then81 ]
  call void @llvm.dbg.value(metadata i64 %i.2307, metadata !969, metadata !DIExpression()), !dbg !989
  %24 = load ptr, ptr @timing, align 8, !dbg !1111
  %arrayidx89 = getelementptr inbounds ptr, ptr %24, i64 %i.2307, !dbg !1111
  %25 = load ptr, ptr %arrayidx89, align 8, !dbg !1111
  %rad_time = getelementptr inbounds %struct.Timing, ptr %25, i64 0, i32 1, !dbg !1112
  %26 = load i64, ptr %rad_time, align 8, !dbg !1112
  %refine_time = getelementptr inbounds %struct.Timing, ptr %25, i64 0, i32 2, !dbg !1113
  %27 = load i64, ptr %refine_time, align 8, !dbg !1113
  %wait_time = getelementptr inbounds %struct.Timing, ptr %25, i64 0, i32 3, !dbg !1114
  %28 = load i64, ptr %wait_time, align 8, !dbg !1114
  %vertex_time = getelementptr inbounds %struct.Timing, ptr %25, i64 0, i32 4, !dbg !1115
  %29 = load i64, ptr %vertex_time, align 8, !dbg !1115
  %call93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.38, i64 noundef %i.2307, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29), !dbg !1116
  %inc95 = add nuw nsw i64 %i.2307, 1, !dbg !1117
  call void @llvm.dbg.value(metadata i64 %inc95, metadata !969, metadata !DIExpression()), !dbg !989
  %30 = load i64, ptr @n_processors, align 8, !dbg !1106
  %cmp86 = icmp slt i64 %inc95, %30, !dbg !1109
  br i1 %cmp86, label %for.body88, label %for.end96, !dbg !1110, !llvm.loop !1118

for.end96:                                        ; preds = %for.body88, %if.then81
  %.lcssa = phi i64 [ %23, %if.then81 ], [ %30, %for.body88 ], !dbg !1106
  %31 = load ptr, ptr @timing, align 8, !dbg !1120
  %32 = load ptr, ptr %31, align 8, !dbg !1120
  %rad_time98 = getelementptr inbounds %struct.Timing, ptr %32, i64 0, i32 1, !dbg !1121
  %33 = load i64, ptr %rad_time98, align 8, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %33, metadata !970, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %33, metadata !971, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %33, metadata !972, metadata !DIExpression()), !dbg !989
  %refine_time104 = getelementptr inbounds %struct.Timing, ptr %32, i64 0, i32 2, !dbg !1122
  %34 = load i64, ptr %refine_time104, align 8, !dbg !1122
  call void @llvm.dbg.value(metadata i64 %34, metadata !973, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %34, metadata !974, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %34, metadata !975, metadata !DIExpression()), !dbg !989
  %wait_time110 = getelementptr inbounds %struct.Timing, ptr %32, i64 0, i32 3, !dbg !1123
  %35 = load i64, ptr %wait_time110, align 8, !dbg !1123
  call void @llvm.dbg.value(metadata i64 %35, metadata !976, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %35, metadata !977, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %35, metadata !978, metadata !DIExpression()), !dbg !989
  %vertex_time116 = getelementptr inbounds %struct.Timing, ptr %32, i64 0, i32 4, !dbg !1124
  %36 = load i64, ptr %vertex_time116, align 8, !dbg !1124
  call void @llvm.dbg.value(metadata i64 %36, metadata !979, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %36, metadata !980, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %36, metadata !981, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 1, metadata !969, metadata !DIExpression()), !dbg !989
  %cmp122308 = icmp sgt i64 %.lcssa, 1, !dbg !1125
  br i1 %cmp122308, label %for.body124, label %for.end202, !dbg !1128

for.body124:                                      ; preds = %for.end96, %for.body124
  %i.3321 = phi i64 [ %inc201, %for.body124 ], [ 1, %for.end96 ]
  %min_vertex_time.0320 = phi i64 [ %49, %for.body124 ], [ %36, %for.end96 ]
  %max_vertex_time.0319 = phi i64 [ %48, %for.body124 ], [ %36, %for.end96 ]
  %total_vertex_time.0318 = phi i64 [ %add183, %for.body124 ], [ %36, %for.end96 ]
  %min_wait_time.0317 = phi i64 [ %46, %for.body124 ], [ %35, %for.end96 ]
  %max_wait_time.0316 = phi i64 [ %45, %for.body124 ], [ %35, %for.end96 ]
  %total_wait_time.0315 = phi i64 [ %add164, %for.body124 ], [ %35, %for.end96 ]
  %min_refine_time.0314 = phi i64 [ %43, %for.body124 ], [ %34, %for.end96 ]
  %max_refine_time.0313 = phi i64 [ %42, %for.body124 ], [ %34, %for.end96 ]
  %total_refine_time.0312 = phi i64 [ %add145, %for.body124 ], [ %34, %for.end96 ]
  %min_rad_time.0311 = phi i64 [ %40, %for.body124 ], [ %33, %for.end96 ]
  %max_rad_time.0310 = phi i64 [ %39, %for.body124 ], [ %33, %for.end96 ]
  %total_rad_time.0309 = phi i64 [ %add, %for.body124 ], [ %33, %for.end96 ]
  call void @llvm.dbg.value(metadata i64 %i.3321, metadata !969, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %min_vertex_time.0320, metadata !981, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %max_vertex_time.0319, metadata !980, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %total_vertex_time.0318, metadata !979, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %min_wait_time.0317, metadata !978, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %max_wait_time.0316, metadata !977, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %total_wait_time.0315, metadata !976, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %min_refine_time.0314, metadata !975, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %max_refine_time.0313, metadata !974, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %total_refine_time.0312, metadata !973, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %min_rad_time.0311, metadata !972, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %max_rad_time.0310, metadata !971, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i64 %total_rad_time.0309, metadata !970, metadata !DIExpression()), !dbg !989
  %arrayidx125 = getelementptr inbounds ptr, ptr %31, i64 %i.3321, !dbg !1129
  %37 = load ptr, ptr %arrayidx125, align 8, !dbg !1129
  %rad_time126 = getelementptr inbounds %struct.Timing, ptr %37, i64 0, i32 1, !dbg !1131
  %38 = load i64, ptr %rad_time126, align 8, !dbg !1131
  %add = add nsw i64 %38, %total_rad_time.0309, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %add, metadata !970, metadata !DIExpression()), !dbg !989
  %39 = tail call i64 @llvm.smax.i64(i64 %38, i64 %max_rad_time.0310), !dbg !1133
  call void @llvm.dbg.value(metadata i64 %39, metadata !971, metadata !DIExpression()), !dbg !989
  %40 = tail call i64 @llvm.smin.i64(i64 %38, i64 %min_rad_time.0311), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %40, metadata !972, metadata !DIExpression()), !dbg !989
  %refine_time144 = getelementptr inbounds %struct.Timing, ptr %37, i64 0, i32 2, !dbg !1135
  %41 = load i64, ptr %refine_time144, align 8, !dbg !1135
  %add145 = add nsw i64 %41, %total_refine_time.0312, !dbg !1136
  call void @llvm.dbg.value(metadata i64 %add145, metadata !973, metadata !DIExpression()), !dbg !989
  %42 = tail call i64 @llvm.smax.i64(i64 %41, i64 %max_refine_time.0313), !dbg !1137
  call void @llvm.dbg.value(metadata i64 %42, metadata !974, metadata !DIExpression()), !dbg !989
  %43 = tail call i64 @llvm.smin.i64(i64 %41, i64 %min_refine_time.0314), !dbg !1138
  call void @llvm.dbg.value(metadata i64 %43, metadata !975, metadata !DIExpression()), !dbg !989
  %wait_time163 = getelementptr inbounds %struct.Timing, ptr %37, i64 0, i32 3, !dbg !1139
  %44 = load i64, ptr %wait_time163, align 8, !dbg !1139
  %add164 = add nsw i64 %44, %total_wait_time.0315, !dbg !1140
  call void @llvm.dbg.value(metadata i64 %add164, metadata !976, metadata !DIExpression()), !dbg !989
  %45 = tail call i64 @llvm.smax.i64(i64 %44, i64 %max_wait_time.0316), !dbg !1141
  call void @llvm.dbg.value(metadata i64 %45, metadata !977, metadata !DIExpression()), !dbg !989
  %46 = tail call i64 @llvm.smin.i64(i64 %44, i64 %min_wait_time.0317), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %46, metadata !978, metadata !DIExpression()), !dbg !989
  %vertex_time182 = getelementptr inbounds %struct.Timing, ptr %37, i64 0, i32 4, !dbg !1143
  %47 = load i64, ptr %vertex_time182, align 8, !dbg !1143
  %add183 = add nsw i64 %47, %total_vertex_time.0318, !dbg !1144
  call void @llvm.dbg.value(metadata i64 %add183, metadata !979, metadata !DIExpression()), !dbg !989
  %48 = tail call i64 @llvm.smax.i64(i64 %47, i64 %max_vertex_time.0319), !dbg !1145
  call void @llvm.dbg.value(metadata i64 %48, metadata !980, metadata !DIExpression()), !dbg !989
  %49 = tail call i64 @llvm.smin.i64(i64 %47, i64 %min_vertex_time.0320), !dbg !1146
  call void @llvm.dbg.value(metadata i64 %49, metadata !981, metadata !DIExpression()), !dbg !989
  %inc201 = add nuw nsw i64 %i.3321, 1, !dbg !1147
  call void @llvm.dbg.value(metadata i64 %inc201, metadata !969, metadata !DIExpression()), !dbg !989
  %exitcond.not = icmp eq i64 %inc201, %.lcssa, !dbg !1125
  br i1 %exitcond.not, label %for.end202, label %for.body124, !dbg !1128, !llvm.loop !1148

for.end202:                                       ; preds = %for.body124, %for.end96
  %total_rad_time.0.lcssa = phi i64 [ %33, %for.end96 ], [ %add, %for.body124 ], !dbg !1150
  %max_rad_time.0.lcssa = phi i64 [ %33, %for.end96 ], [ %39, %for.body124 ], !dbg !1150
  %min_rad_time.0.lcssa = phi i64 [ %33, %for.end96 ], [ %40, %for.body124 ], !dbg !1150
  %total_refine_time.0.lcssa = phi i64 [ %34, %for.end96 ], [ %add145, %for.body124 ], !dbg !1150
  %max_refine_time.0.lcssa = phi i64 [ %34, %for.end96 ], [ %42, %for.body124 ], !dbg !1150
  %min_refine_time.0.lcssa = phi i64 [ %34, %for.end96 ], [ %43, %for.body124 ], !dbg !1150
  %total_wait_time.0.lcssa = phi i64 [ %35, %for.end96 ], [ %add164, %for.body124 ], !dbg !1150
  %max_wait_time.0.lcssa = phi i64 [ %35, %for.end96 ], [ %45, %for.body124 ], !dbg !1150
  %min_wait_time.0.lcssa = phi i64 [ %35, %for.end96 ], [ %46, %for.body124 ], !dbg !1150
  %total_vertex_time.0.lcssa = phi i64 [ %36, %for.end96 ], [ %add183, %for.body124 ], !dbg !1150
  %max_vertex_time.0.lcssa = phi i64 [ %36, %for.end96 ], [ %48, %for.body124 ], !dbg !1150
  %min_vertex_time.0.lcssa = phi i64 [ %36, %for.end96 ], [ %49, %for.body124 ], !dbg !1150
  %call203 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i64 noundef %max_rad_time.0.lcssa, i64 noundef %max_refine_time.0.lcssa, i64 noundef %max_wait_time.0.lcssa, i64 noundef %max_vertex_time.0.lcssa), !dbg !1151
  %call204 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i64 noundef %min_rad_time.0.lcssa, i64 noundef %min_refine_time.0.lcssa, i64 noundef %min_wait_time.0.lcssa, i64 noundef %min_vertex_time.0.lcssa), !dbg !1152
  %conv205 = sitofp i64 %total_rad_time.0.lcssa to double, !dbg !1153
  %50 = load i64, ptr @n_processors, align 8, !dbg !1154
  %conv206 = sitofp i64 %50 to double, !dbg !1154
  %div = fdiv double %conv205, %conv206, !dbg !1155
  %conv208 = fptosi double %div to i64, !dbg !1156
  %conv209 = sitofp i64 %total_refine_time.0.lcssa to double, !dbg !1157
  %div212 = fdiv double %conv209, %conv206, !dbg !1158
  %conv213 = fptosi double %div212 to i64, !dbg !1159
  %conv214 = sitofp i64 %total_wait_time.0.lcssa to double, !dbg !1160
  %div217 = fdiv double %conv214, %conv206, !dbg !1161
  %conv218 = fptosi double %div217 to i64, !dbg !1162
  %conv219 = sitofp i64 %total_vertex_time.0.lcssa to double, !dbg !1163
  %div222 = fdiv double %conv219, %conv206, !dbg !1164
  %conv223 = fptosi double %div222 to i64, !dbg !1165
  %call224 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.43, i64 noundef %conv208, i64 noundef %conv213, i64 noundef %conv218, i64 noundef %conv223), !dbg !1166
  %puts287 = tail call i32 @puts(ptr nonnull @str.92), !dbg !1167
  br label %if.end226, !dbg !1168

if.end226:                                        ; preds = %for.end202, %while.end
  %51 = load ptr, ptr @stdout, align 8, !dbg !1169
  tail call void @print_statistics(ptr noundef %51, i64 noundef 0) #15, !dbg !1170
  br label %if.end228, !dbg !1171

if.else227:                                       ; preds = %for.end
  tail call void @g_start(ptr noundef nonnull @expose_callback, i64 noundef 5, ptr noundef nonnull @sliders, i64 noundef 4, ptr noundef nonnull @choices) #15, !dbg !1172
  br label %if.end228

if.end228:                                        ; preds = %if.else227, %if.end226
  tail call void @exit(i32 noundef 0) #16, !dbg !1174
  unreachable, !dbg !1174
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @parse_args(i32 noundef %argc, ptr nocapture noundef readonly %argv) unnamed_addr #0 !dbg !1176 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1180, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata ptr %argv, metadata !1181, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i64 1, metadata !1182, metadata !DIExpression()), !dbg !1183
  %conv = sext i32 %argc to i64
  call void @llvm.dbg.value(metadata i64 1, metadata !1182, metadata !DIExpression()), !dbg !1183
  %cmp190 = icmp sgt i32 %argc, 1, !dbg !1184
  br i1 %cmp190, label %for.body, label %for.end, !dbg !1187

for.body:                                         ; preds = %entry, %for.inc
  %cnt.0191 = phi i64 [ %inc116, %for.inc ], [ 1, %entry ]
  call void @llvm.dbg.value(metadata i64 %cnt.0191, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %cnt.0191, !dbg !1188
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !1188
  %call = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.63) #20, !dbg !1191
  %cmp2 = icmp eq i32 %call, 0, !dbg !1192
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1193

if.then:                                          ; preds = %for.body
  %inc = add nsw i64 %cnt.0191, 1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx4 = getelementptr inbounds ptr, ptr %argv, i64 %inc, !dbg !1196
  %1 = load ptr, ptr %arrayidx4, align 8, !dbg !1196
  %call5 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef nonnull @n_processors) #15, !dbg !1197
  %2 = load i64, ptr @n_processors, align 8, !dbg !1198
  store i64 %2, ptr @n_taskqueues, align 8, !dbg !1199
  br label %for.inc, !dbg !1200

if.else:                                          ; preds = %for.body
  %call7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.65) #20, !dbg !1201
  %cmp8 = icmp eq i32 %call7, 0, !dbg !1203
  br i1 %cmp8, label %if.then10, label %if.else14, !dbg !1204

if.then10:                                        ; preds = %if.else
  %inc11 = add nsw i64 %cnt.0191, 1, !dbg !1205
  call void @llvm.dbg.value(metadata i64 %inc11, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx12 = getelementptr inbounds ptr, ptr %argv, i64 %inc11, !dbg !1206
  %3 = load ptr, ptr %arrayidx12, align 8, !dbg !1206
  %call13 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %3, ptr noundef nonnull @.str.64, ptr noundef nonnull @n_tasks_per_queue) #15, !dbg !1207
  br label %for.inc, !dbg !1207

if.else14:                                        ; preds = %if.else
  %call16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.66) #20, !dbg !1208
  %cmp17 = icmp eq i32 %call16, 0, !dbg !1210
  br i1 %cmp17, label %if.then19, label %if.else23, !dbg !1211

if.then19:                                        ; preds = %if.else14
  %inc20 = add nsw i64 %cnt.0191, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %inc20, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx21 = getelementptr inbounds ptr, ptr %argv, i64 %inc20, !dbg !1213
  %4 = load ptr, ptr %arrayidx21, align 8, !dbg !1213
  %call22 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %4, ptr noundef nonnull @.str.67, ptr noundef nonnull @Area_epsilon) #15, !dbg !1214
  br label %for.inc, !dbg !1214

if.else23:                                        ; preds = %if.else14
  %call25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.68) #20, !dbg !1215
  %cmp26 = icmp eq i32 %call25, 0, !dbg !1217
  br i1 %cmp26, label %if.then28, label %if.else32, !dbg !1218

if.then28:                                        ; preds = %if.else23
  %inc29 = add nsw i64 %cnt.0191, 1, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %inc29, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx30 = getelementptr inbounds ptr, ptr %argv, i64 %inc29, !dbg !1220
  %5 = load ptr, ptr %arrayidx30, align 8, !dbg !1220
  %call31 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %5, ptr noundef nonnull @.str.64, ptr noundef nonnull @N_inter_parallel_bf_refine) #15, !dbg !1221
  br label %for.inc, !dbg !1221

if.else32:                                        ; preds = %if.else23
  %call34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.69) #20, !dbg !1222
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1224
  br i1 %cmp35, label %if.then37, label %if.else41, !dbg !1225

if.then37:                                        ; preds = %if.else32
  %inc38 = add nsw i64 %cnt.0191, 1, !dbg !1226
  call void @llvm.dbg.value(metadata i64 %inc38, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx39 = getelementptr inbounds ptr, ptr %argv, i64 %inc38, !dbg !1227
  %6 = load ptr, ptr %arrayidx39, align 8, !dbg !1227
  %call40 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %6, ptr noundef nonnull @.str.64, ptr noundef nonnull @N_visibility_per_task) #15, !dbg !1228
  br label %for.inc, !dbg !1228

if.else41:                                        ; preds = %if.else32
  %call43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.70) #20, !dbg !1229
  %cmp44 = icmp eq i32 %call43, 0, !dbg !1231
  br i1 %cmp44, label %if.then46, label %if.else50, !dbg !1232

if.then46:                                        ; preds = %if.else41
  %inc47 = add nsw i64 %cnt.0191, 1, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %inc47, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx48 = getelementptr inbounds ptr, ptr %argv, i64 %inc47, !dbg !1234
  %7 = load ptr, ptr %arrayidx48, align 8, !dbg !1234
  %call49 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %7, ptr noundef nonnull @.str.67, ptr noundef nonnull @BFepsilon) #15, !dbg !1235
  br label %for.inc, !dbg !1235

if.else50:                                        ; preds = %if.else41
  %call52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.71) #20, !dbg !1236
  %cmp53 = icmp eq i32 %call52, 0, !dbg !1238
  br i1 %cmp53, label %if.then55, label %if.else59, !dbg !1239

if.then55:                                        ; preds = %if.else50
  %inc56 = add nsw i64 %cnt.0191, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %inc56, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx57 = getelementptr inbounds ptr, ptr %argv, i64 %inc56, !dbg !1241
  %8 = load ptr, ptr %arrayidx57, align 8, !dbg !1241
  %call58 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %8, ptr noundef nonnull @.str.67, ptr noundef nonnull @Energy_epsilon) #15, !dbg !1242
  br label %for.inc, !dbg !1242

if.else59:                                        ; preds = %if.else50
  %call61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.72) #20, !dbg !1243
  %cmp62 = icmp eq i32 %call61, 0, !dbg !1245
  br i1 %cmp62, label %if.then64, label %if.else65, !dbg !1246

if.then64:                                        ; preds = %if.else59
  store i64 1, ptr @batch_mode, align 8, !dbg !1247
  br label %for.inc, !dbg !1248

if.else65:                                        ; preds = %if.else59
  %call67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.73) #20, !dbg !1249
  %cmp68 = icmp eq i32 %call67, 0, !dbg !1251
  br i1 %cmp68, label %if.then70, label %if.else71, !dbg !1252

if.then70:                                        ; preds = %if.else65
  store i64 1, ptr @verbose_mode, align 8, !dbg !1253
  br label %for.inc, !dbg !1254

if.else71:                                        ; preds = %if.else65
  %call73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.74) #20, !dbg !1255
  %cmp74 = icmp eq i32 %call73, 0, !dbg !1257
  br i1 %cmp74, label %if.then76, label %if.else77, !dbg !1258

if.then76:                                        ; preds = %if.else71
  store i1 true, ptr @dostats, align 8, !dbg !1259
  br label %for.inc, !dbg !1260

if.else77:                                        ; preds = %if.else71
  %call79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.75) #20, !dbg !1261
  %cmp80 = icmp eq i32 %call79, 0, !dbg !1263
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !1264

if.then82:                                        ; preds = %if.else77
  store i64 1, ptr @model_selector, align 8, !dbg !1265
  br label %for.inc, !dbg !1266

if.else83:                                        ; preds = %if.else77
  %call85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.76) #20, !dbg !1267
  %cmp86 = icmp eq i32 %call85, 0, !dbg !1269
  br i1 %cmp86, label %if.then88, label %if.else89, !dbg !1270

if.then88:                                        ; preds = %if.else83
  store i64 2, ptr @model_selector, align 8, !dbg !1271
  br label %for.inc, !dbg !1272

if.else89:                                        ; preds = %if.else83
  %call91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.77) #20, !dbg !1273
  %cmp92 = icmp eq i32 %call91, 0, !dbg !1275
  br i1 %cmp92, label %if.then103, label %lor.lhs.false, !dbg !1276

lor.lhs.false:                                    ; preds = %if.else89
  %call95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.78) #20, !dbg !1277
  %cmp96 = icmp eq i32 %call95, 0, !dbg !1278
  br i1 %cmp96, label %if.then103, label %lor.lhs.false98, !dbg !1279

lor.lhs.false98:                                  ; preds = %lor.lhs.false
  %call100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.79) #20, !dbg !1280
  %cmp101 = icmp eq i32 %call100, 0, !dbg !1281
  br i1 %cmp101, label %if.then103, label %for.inc, !dbg !1282

if.then103:                                       ; preds = %lor.lhs.false98, %lor.lhs.false, %if.else89
  tail call void @print_usage(), !dbg !1283
  tail call void @exit(i32 noundef 0) #16, !dbg !1285
  unreachable, !dbg !1285

for.inc:                                          ; preds = %if.then, %if.then19, %if.then37, %if.then55, %if.then70, %if.then82, %lor.lhs.false98, %if.then88, %if.then76, %if.then64, %if.then46, %if.then28, %if.then10
  %cnt.1 = phi i64 [ %inc, %if.then ], [ %inc11, %if.then10 ], [ %inc20, %if.then19 ], [ %inc29, %if.then28 ], [ %inc38, %if.then37 ], [ %inc47, %if.then46 ], [ %inc56, %if.then55 ], [ %cnt.0191, %if.then64 ], [ %cnt.0191, %if.then70 ], [ %cnt.0191, %if.then76 ], [ %cnt.0191, %if.then82 ], [ %cnt.0191, %if.then88 ], [ %cnt.0191, %lor.lhs.false98 ], !dbg !1286
  call void @llvm.dbg.value(metadata i64 %cnt.1, metadata !1182, metadata !DIExpression()), !dbg !1183
  %inc116 = add nsw i64 %cnt.1, 1, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %inc116, metadata !1182, metadata !DIExpression()), !dbg !1183
  %cmp = icmp slt i64 %inc116, %conv, !dbg !1184
  br i1 %cmp, label %for.body, label %for.end, !dbg !1187, !llvm.loop !1288

for.end:                                          ; preds = %for.inc, %entry
  %9 = load i64, ptr @n_processors, align 8, !dbg !1290
  %10 = add i64 %9, -1025, !dbg !1292
  %11 = icmp ult i64 %10, -1024, !dbg !1292
  br i1 %11, label %if.then122, label %if.end124, !dbg !1292

if.then122:                                       ; preds = %for.end
  %12 = load ptr, ptr @stderr, align 8, !dbg !1293
  %call123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.80, i64 noundef %9) #17, !dbg !1295
  tail call void @exit(i32 noundef 1) #16, !dbg !1296
  unreachable, !dbg !1296

if.end124:                                        ; preds = %for.end
  %13 = load i64, ptr @n_taskqueues, align 8, !dbg !1297
  %14 = add i64 %13, -1025, !dbg !1299
  %15 = icmp ult i64 %14, -1024, !dbg !1299
  br i1 %15, label %if.then130, label %if.end132, !dbg !1299

if.then130:                                       ; preds = %if.end124
  %16 = load ptr, ptr @stderr, align 8, !dbg !1300
  %call131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.81, i64 noundef %13, i32 noundef 1024) #17, !dbg !1302
  tail call void @exit(i32 noundef 1) #16, !dbg !1303
  unreachable, !dbg !1303

if.end132:                                        ; preds = %if.end124
  %17 = load float, ptr @Area_epsilon, align 4, !dbg !1304
  %cmp134 = fcmp olt float %17, 0.000000e+00, !dbg !1306
  br i1 %cmp134, label %if.then136, label %if.end138, !dbg !1307

if.then136:                                       ; preds = %if.end132
  %18 = load ptr, ptr @stderr, align 8, !dbg !1308
  %19 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 30, i64 1, ptr %18) #17, !dbg !1310
  tail call void @exit(i32 noundef 1) #16, !dbg !1311
  unreachable, !dbg !1311

if.end138:                                        ; preds = %if.end132
  %20 = load float, ptr @BFepsilon, align 4, !dbg !1312
  %cmp140 = fcmp olt float %20, 0.000000e+00, !dbg !1314
  br i1 %cmp140, label %if.then142, label %if.end144, !dbg !1315

if.then142:                                       ; preds = %if.end138
  %21 = load ptr, ptr @stderr, align 8, !dbg !1316
  %22 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 31, i64 1, ptr %21) #17, !dbg !1318
  tail call void @exit(i32 noundef 1) #16, !dbg !1319
  unreachable, !dbg !1319

if.end144:                                        ; preds = %if.end138
  ret void, !dbg !1320
}

declare !dbg !1321 void @g_init(i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1323 void @setup_view(float noundef, float noundef, float noundef, float noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare !dbg !1326 i64 @pthread_self() local_unnamed_addr #4

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_global(i64 noundef %process_id) local_unnamed_addr #0 !dbg !1330 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1332, metadata !DIExpression()), !dbg !1333
  %0 = load ptr, ptr @global, align 8, !dbg !1334
  store i64 1, ptr %0, align 8, !dbg !1335
  %1 = load ptr, ptr @global, align 8, !dbg !1336
  %bsp_root = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 5, !dbg !1337
  store ptr null, ptr %bsp_root, align 8, !dbg !1338
  %index_lock = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 1, !dbg !1339
  %call = tail call i32 @pthread_mutex_init(ptr noundef nonnull %index_lock, ptr noundef null) #15, !dbg !1341
  %2 = load ptr, ptr @global, align 8, !dbg !1342
  %bsp_tree_lock = getelementptr inbounds %struct.Global, ptr %2, i64 0, i32 4, !dbg !1344
  %call1 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %bsp_tree_lock, ptr noundef null) #15, !dbg !1345
  %3 = load ptr, ptr @global, align 8, !dbg !1346
  %avg_radiosity_lock = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 6, !dbg !1348
  %call2 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %avg_radiosity_lock, ptr noundef null) #15, !dbg !1349
  %4 = load ptr, ptr @global, align 8, !dbg !1350
  %converged = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 7, !dbg !1351
  %total_energy = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 9, !dbg !1352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %converged, i8 0, i64 20, i1 false), !dbg !1353
  store float 1.000000e+00, ptr %total_energy, align 4, !dbg !1354
  %g7 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 9, i32 1, !dbg !1355
  store float 1.000000e+00, ptr %g7, align 4, !dbg !1356
  %b9 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 9, i32 2, !dbg !1357
  store float 1.000000e+00, ptr %b9, align 4, !dbg !1358
  %total_patch_area = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 10, !dbg !1359
  store float 1.000000e+00, ptr %total_patch_area, align 8, !dbg !1360
  %iteration_count = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 11, !dbg !1361
  store i64 -1, ptr %iteration_count, align 8, !dbg !1362
  %cost_sum_lock = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 12, !dbg !1363
  %call10 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %cost_sum_lock, ptr noundef null) #15, !dbg !1365
  %5 = load ptr, ptr @global, align 8, !dbg !1366
  %cost_sum = getelementptr inbounds %struct.Global, ptr %5, i64 0, i32 13, !dbg !1367
  %barrier = getelementptr inbounds %struct.Global, ptr %5, i64 0, i32 16, !dbg !1368
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %cost_sum, i8 0, i64 16, i1 false), !dbg !1370
  %call11 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %barrier, ptr noundef null) #15, !dbg !1371
  %6 = load ptr, ptr @global, align 8, !dbg !1372
  %bar_cond = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 16, i32 1, !dbg !1373
  %call13 = tail call i32 @pthread_cond_init(ptr noundef nonnull %bar_cond, ptr noundef null) #15, !dbg !1374
  %7 = load ptr, ptr @global, align 8, !dbg !1375
  %bar_teller = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 16, i32 2, !dbg !1376
  store i32 0, ptr %bar_teller, align 8, !dbg !1377
  %pbar_lock = getelementptr inbounds %struct.Global, ptr %7, i64 0, i32 18, !dbg !1378
  %call15 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %pbar_lock, ptr noundef null) #15, !dbg !1380
  %8 = load ptr, ptr @global, align 8, !dbg !1381
  %pbar_count = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 17, !dbg !1382
  store i64 0, ptr %pbar_count, align 8, !dbg !1383
  %task_counter = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 19, !dbg !1384
  store i64 0, ptr %task_counter, align 8, !dbg !1385
  %task_counter_lock = getelementptr inbounds %struct.Global, ptr %8, i64 0, i32 20, !dbg !1386
  %call16 = tail call i32 @pthread_mutex_init(ptr noundef nonnull %task_counter_lock, ptr noundef null) #15, !dbg !1388
  tail call void @init_taskq(i64 noundef %process_id) #15, !dbg !1389
  tail call void @init_patchlist(i64 noundef %process_id) #15, !dbg !1390
  tail call void @init_elemlist(i64 noundef %process_id) #15, !dbg !1391
  tail call void @init_interactionlist(i64 noundef %process_id) #15, !dbg !1392
  tail call void @init_elemvertex(i64 noundef %process_id) #15, !dbg !1393
  tail call void @init_edge(i64 noundef %process_id) #15, !dbg !1394
  tail call void @init_stat_info(i64 noundef %process_id) #15, !dbg !1395
  ret void, !dbg !1396
}

declare !dbg !1397 void @init_sharedlock(i64 noundef) local_unnamed_addr #3

declare !dbg !1398 void @init_visibility_module(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1399 i64 @time(ptr noundef) local_unnamed_addr #8

declare !dbg !1406 i64 @assign_taskq(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1409 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1413 i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind uwtable
define dso_local void @radiosity() #0 !dbg !1430 {
entry:
  %0 = load ptr, ptr @global, align 8, !dbg !1439
  %index_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 1, !dbg !1441
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %index_lock) #15, !dbg !1442
  %1 = load ptr, ptr @global, align 8, !dbg !1443
  %2 = load i64, ptr %1, align 8, !dbg !1444
  %inc = add nsw i64 %2, 1, !dbg !1444
  store i64 %inc, ptr %1, align 8, !dbg !1444
  call void @llvm.dbg.value(metadata i64 %2, metadata !1434, metadata !DIExpression()), !dbg !1445
  %3 = load ptr, ptr @global, align 8, !dbg !1446
  %index_lock1 = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 1, !dbg !1448
  %call2 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %index_lock1) #15, !dbg !1449
  %4 = load i64, ptr @n_processors, align 8, !dbg !1450
  %rem = srem i64 %2, %4, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %rem, metadata !1434, metadata !DIExpression()), !dbg !1445
  %cmp = icmp eq i64 %rem, 0, !dbg !1452
  %.b119 = load i1, ptr @dostats, align 8
  %or.cond = select i1 %cmp, i1 true, i1 %.b119, !dbg !1454
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1454

if.then:                                          ; preds = %entry
  %call3 = tail call i64 @time(ptr noundef null) #15, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %call3, metadata !1435, metadata !DIExpression()), !dbg !1445
  br label %if.end, !dbg !1457

if.end:                                           ; preds = %entry, %if.then
  %rad_start.0 = phi i64 [ %call3, %if.then ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata i64 %rad_start.0, metadata !1435, metadata !DIExpression()), !dbg !1445
  tail call void @init_modeling_tasks(i64 noundef %rem) #15, !dbg !1458
  tail call void @process_tasks(i64 noundef %rem) #15, !dbg !1459
  %call4120 = tail call i64 @init_ray_tasks(i64 noundef %rem), !dbg !1460
  %tobool5.not121 = icmp eq i64 %call4120, 0, !dbg !1461
  br i1 %tobool5.not121, label %while.end, label %while.body, !dbg !1461

while.body:                                       ; preds = %if.end, %if.end23
  %5 = load ptr, ptr @global, align 8, !dbg !1462
  %barrier = getelementptr inbounds %struct.Global, ptr %5, i64 0, i32 16, !dbg !1465
  %call6 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %barrier) #15, !dbg !1466
  %6 = load ptr, ptr @global, align 8, !dbg !1467
  %bar_teller = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 16, i32 2, !dbg !1468
  %7 = load i32, ptr %bar_teller, align 8, !dbg !1469
  %inc8 = add i32 %7, 1, !dbg !1469
  store i32 %inc8, ptr %bar_teller, align 8, !dbg !1469
  %conv = zext i32 %inc8 to i64, !dbg !1470
  %8 = load i64, ptr @n_processors, align 8, !dbg !1472
  %cmp11 = icmp eq i64 %8, %conv, !dbg !1473
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !1474

if.then13:                                        ; preds = %while.body
  store i32 0, ptr %bar_teller, align 8, !dbg !1475
  %bar_cond = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 16, i32 1, !dbg !1477
  %call17 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #15, !dbg !1478
  br label %if.end23, !dbg !1479

if.else:                                          ; preds = %while.body
  %barrier9 = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 16, !dbg !1480
  %bar_cond19 = getelementptr inbounds %struct.Global, ptr %6, i64 0, i32 16, i32 1, !dbg !1481
  %call22 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond19, ptr noundef nonnull %barrier9) #15, !dbg !1483
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then13
  %9 = load ptr, ptr @global, align 8, !dbg !1484
  %barrier24 = getelementptr inbounds %struct.Global, ptr %9, i64 0, i32 16, !dbg !1485
  %call26 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %barrier24) #15, !dbg !1486
  tail call void @process_tasks(i64 noundef %rem) #15, !dbg !1487
  %call4 = tail call i64 @init_ray_tasks(i64 noundef %rem), !dbg !1460
  %tobool5.not = icmp eq i64 %call4, 0, !dbg !1461
  br i1 %tobool5.not, label %while.end, label %while.body, !dbg !1461, !llvm.loop !1488

while.end:                                        ; preds = %if.end23, %if.end
  %.b118 = load i1, ptr @dostats, align 8
  %or.cond89 = select i1 %cmp, i1 true, i1 %.b118, !dbg !1490
  br i1 %or.cond89, label %if.then31, label %if.end33, !dbg !1490

if.then31:                                        ; preds = %while.end
  %call32 = tail call i64 @time(ptr noundef null) #15, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %call32, metadata !1436, metadata !DIExpression()), !dbg !1445
  br label %if.end33, !dbg !1494

if.end33:                                         ; preds = %while.end, %if.then31
  %refine_done.0 = phi i64 [ %call32, %if.then31 ], [ undef, %while.end ]
  call void @llvm.dbg.value(metadata i64 %refine_done.0, metadata !1436, metadata !DIExpression()), !dbg !1445
  %10 = load ptr, ptr @global, align 8, !dbg !1495
  %barrier34 = getelementptr inbounds %struct.Global, ptr %10, i64 0, i32 16, !dbg !1497
  %call36 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %barrier34) #15, !dbg !1498
  %11 = load ptr, ptr @global, align 8, !dbg !1499
  %bar_teller38 = getelementptr inbounds %struct.Global, ptr %11, i64 0, i32 16, i32 2, !dbg !1500
  %12 = load i32, ptr %bar_teller38, align 8, !dbg !1501
  %inc39 = add i32 %12, 1, !dbg !1501
  store i32 %inc39, ptr %bar_teller38, align 8, !dbg !1501
  %conv42 = zext i32 %inc39 to i64, !dbg !1502
  %13 = load i64, ptr @n_processors, align 8, !dbg !1504
  %cmp43 = icmp eq i64 %13, %conv42, !dbg !1505
  br i1 %cmp43, label %if.then45, label %if.else51, !dbg !1506

if.then45:                                        ; preds = %if.end33
  store i32 0, ptr %bar_teller38, align 8, !dbg !1507
  %bar_cond49 = getelementptr inbounds %struct.Global, ptr %11, i64 0, i32 16, i32 1, !dbg !1509
  %call50 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond49) #15, !dbg !1510
  br label %if.end57, !dbg !1511

if.else51:                                        ; preds = %if.end33
  %barrier40 = getelementptr inbounds %struct.Global, ptr %11, i64 0, i32 16, !dbg !1512
  %bar_cond53 = getelementptr inbounds %struct.Global, ptr %11, i64 0, i32 16, i32 1, !dbg !1513
  %call56 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond53, ptr noundef nonnull %barrier40) #15, !dbg !1515
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then45
  %14 = load ptr, ptr @global, align 8, !dbg !1516
  %barrier58 = getelementptr inbounds %struct.Global, ptr %14, i64 0, i32 16, !dbg !1517
  %call60 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %barrier58) #15, !dbg !1518
  %.b117 = load i1, ptr @dostats, align 8
  %or.cond90 = select i1 %cmp, i1 true, i1 %.b117, !dbg !1519
  br i1 %or.cond90, label %if.then65, label %if.end67, !dbg !1519

if.then65:                                        ; preds = %if.end57
  %call66 = tail call i64 @time(ptr noundef null) #15, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %call66, metadata !1437, metadata !DIExpression()), !dbg !1445
  br label %if.end67, !dbg !1523

if.end67:                                         ; preds = %if.end57, %if.then65
  %vertex_start.0 = phi i64 [ %call66, %if.then65 ], [ undef, %if.end57 ]
  call void @llvm.dbg.value(metadata i64 %vertex_start.0, metadata !1437, metadata !DIExpression()), !dbg !1445
  tail call void @init_radavg_tasks(i64 noundef 0, i64 noundef %rem), !dbg !1524
  tail call void @process_tasks(i64 noundef %rem) #15, !dbg !1525
  tail call void @init_radavg_tasks(i64 noundef 1, i64 noundef %rem), !dbg !1526
  tail call void @process_tasks(i64 noundef %rem) #15, !dbg !1527
  %.b116 = load i1, ptr @dostats, align 8
  %or.cond91 = select i1 %cmp, i1 true, i1 %.b116, !dbg !1528
  br i1 %or.cond91, label %if.then72, label %if.end74, !dbg !1528

if.then72:                                        ; preds = %if.end67
  %call73 = tail call i64 @time(ptr noundef null) #15, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %call73, metadata !1438, metadata !DIExpression()), !dbg !1445
  %.b.pre = load i1, ptr @dostats, align 8
  br label %if.end74, !dbg !1532

if.end74:                                         ; preds = %if.end67, %if.then72
  %.b = phi i1 [ %.b.pre, %if.then72 ], [ false, %if.end67 ]
  %vertex_done.0 = phi i64 [ %call73, %if.then72 ], [ undef, %if.end67 ]
  call void @llvm.dbg.value(metadata i64 %vertex_done.0, metadata !1438, metadata !DIExpression()), !dbg !1445
  %or.cond92 = select i1 %cmp, i1 true, i1 %.b, !dbg !1533
  br i1 %or.cond92, label %if.then79, label %if.end88, !dbg !1533

if.then79:                                        ; preds = %if.end74
  %15 = load ptr, ptr @timing, align 8, !dbg !1535
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %rem, !dbg !1535
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !1535
  store i64 %rad_start.0, ptr %16, align 8, !dbg !1537
  %sub = sub nsw i64 %vertex_done.0, %rad_start.0, !dbg !1538
  %17 = load ptr, ptr @timing, align 8, !dbg !1539
  %arrayidx81 = getelementptr inbounds ptr, ptr %17, i64 %rem, !dbg !1539
  %18 = load ptr, ptr %arrayidx81, align 8, !dbg !1539
  %rad_time = getelementptr inbounds %struct.Timing, ptr %18, i64 0, i32 1, !dbg !1540
  store i64 %sub, ptr %rad_time, align 8, !dbg !1541
  %sub82 = sub nsw i64 %refine_done.0, %rad_start.0, !dbg !1542
  %19 = load ptr, ptr %arrayidx81, align 8, !dbg !1543
  %refine_time = getelementptr inbounds %struct.Timing, ptr %19, i64 0, i32 2, !dbg !1544
  store i64 %sub82, ptr %refine_time, align 8, !dbg !1545
  %sub84 = sub nsw i64 %vertex_done.0, %vertex_start.0, !dbg !1546
  %20 = load ptr, ptr %arrayidx81, align 8, !dbg !1547
  %vertex_time = getelementptr inbounds %struct.Timing, ptr %20, i64 0, i32 4, !dbg !1548
  store i64 %sub84, ptr %vertex_time, align 8, !dbg !1549
  %sub86 = sub nsw i64 %vertex_start.0, %refine_done.0, !dbg !1550
  %21 = load ptr, ptr %arrayidx81, align 8, !dbg !1551
  %wait_time = getelementptr inbounds %struct.Timing, ptr %21, i64 0, i32 3, !dbg !1552
  store i64 %sub86, ptr %wait_time, align 8, !dbg !1553
  br label %if.end88, !dbg !1554

if.end88:                                         ; preds = %if.end74, %if.then79
  ret void, !dbg !1555
}

; Function Attrs: nounwind
declare !dbg !1556 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare !dbg !1557 i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1561 void @print_running_time(i64 noundef) local_unnamed_addr #3

declare !dbg !1562 void @print_statistics(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1565 void @g_start(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @expose_callback() #0 !dbg !1571 {
entry:
  %0 = load i64, ptr @disp_fill_mode, align 8, !dbg !1572
  %1 = load i64, ptr @disp_patch_switch, align 8, !dbg !1573
  %2 = load i64, ptr @disp_mesh_switch, align 8, !dbg !1574
  %3 = load i64, ptr @disp_interaction_switch, align 8, !dbg !1575
  tail call void @display_scene(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef 0) #15, !dbg !1576
  ret void, !dbg !1577
}

declare !dbg !1578 void @display_scene(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1581 void @init_modeling_tasks(i64 noundef) local_unnamed_addr #3

declare !dbg !1582 void @process_tasks(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @init_ray_tasks(i64 noundef %process_id) local_unnamed_addr #0 !dbg !1583 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1585, metadata !DIExpression()), !dbg !1587
  %0 = load ptr, ptr @global, align 8, !dbg !1588
  %avg_radiosity_lock = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 6, !dbg !1590
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %avg_radiosity_lock) #15, !dbg !1591
  %call1 = tail call i64 @check_task_counter() #15, !dbg !1592
  %tobool.not = icmp eq i64 %call1, 0, !dbg !1592
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1594

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @global, align 8, !dbg !1595
  %converged = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 7, !dbg !1597
  %2 = load i64, ptr %converged, align 8, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %2, metadata !1586, metadata !DIExpression()), !dbg !1587
  %avg_radiosity_lock2 = getelementptr inbounds %struct.Global, ptr %1, i64 0, i32 6, !dbg !1598
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %avg_radiosity_lock2) #15, !dbg !1600
  %cmp = icmp eq i64 %2, 0, !dbg !1601
  %3 = zext i1 %cmp to i64
  br label %cleanup, !dbg !1602

if.end:                                           ; preds = %entry
  %call6 = tail call i64 @radiosity_converged(i64 noundef %process_id) #15, !dbg !1603
  call void @llvm.dbg.value(metadata i64 %call6, metadata !1586, metadata !DIExpression()), !dbg !1587
  %4 = load ptr, ptr @global, align 8, !dbg !1604
  %converged7 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 7, !dbg !1605
  store i64 %call6, ptr %converged7, align 8, !dbg !1606
  %prev_total_energy = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 8, !dbg !1607
  %total_energy = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 9, !dbg !1608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %prev_total_energy, ptr noundef nonnull align 4 dereferenceable(12) %total_energy, i64 12, i1 false), !dbg !1608
  %iteration_count = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 11, !dbg !1609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %total_energy, i8 0, i64 16, i1 false), !dbg !1610
  %5 = load i64, ptr %iteration_count, align 8, !dbg !1611
  %inc = add nsw i64 %5, 1, !dbg !1611
  store i64 %inc, ptr %iteration_count, align 8, !dbg !1611
  %avg_radiosity_lock11 = getelementptr inbounds %struct.Global, ptr %4, i64 0, i32 6, !dbg !1612
  %call12 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %avg_radiosity_lock11) #15, !dbg !1614
  %tobool13.not = icmp eq i64 %call6, 0, !dbg !1615
  br i1 %tobool13.not, label %if.end15, label %cleanup, !dbg !1617

if.end15:                                         ; preds = %if.end
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @_init_ray_tasks_static, i64 noundef 0, i64 noundef %process_id) #15, !dbg !1618
  br label %cleanup, !dbg !1619

cleanup:                                          ; preds = %if.end, %if.end15, %if.then
  %retval.0 = phi i64 [ 1, %if.end15 ], [ %3, %if.then ], [ 0, %if.end ], !dbg !1587
  ret i64 %retval.0, !dbg !1620
}

; Function Attrs: nounwind
declare !dbg !1621 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #8

declare !dbg !1625 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_radavg_tasks(i64 noundef %mode, i64 noundef %process_id) local_unnamed_addr #0 !dbg !1630 {
entry:
  call void @llvm.dbg.value(metadata i64 %mode, metadata !1634, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1635, metadata !DIExpression()), !dbg !1636
  %call = tail call i64 @check_task_counter() #15, !dbg !1637
  %tobool.not = icmp eq i64 %call, 0, !dbg !1637
  br i1 %tobool.not, label %return, label %if.end, !dbg !1639

if.end:                                           ; preds = %entry
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @_init_radavg_tasks, i64 noundef %mode, i64 noundef %process_id) #15, !dbg !1640
  br label %return, !dbg !1641

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1641
}

declare !dbg !1642 void @g_clear() local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @change_view() unnamed_addr #0 !dbg !1643 {
entry:
  %0 = load i64, ptr @disp_crnt_view_x, align 8, !dbg !1644
  %conv = sitofp i64 %0 to float, !dbg !1645
  %1 = load i64, ptr @disp_crnt_view_y, align 8, !dbg !1646
  %conv1 = sitofp i64 %1 to float, !dbg !1647
  %2 = load float, ptr @disp_crnt_zoom, align 4, !dbg !1648
  tail call void @setup_view(float noundef %conv, float noundef %conv1, float noundef 8.000000e+03, float noundef %2, i64 noundef 0) #15, !dbg !1649
  %3 = load i64, ptr @disp_fill_mode, align 8, !dbg !1650
  %4 = load i64, ptr @disp_patch_switch, align 8, !dbg !1651
  %5 = load i64, ptr @disp_mesh_switch, align 8, !dbg !1652
  %6 = load i64, ptr @disp_interaction_switch, align 8, !dbg !1653
  tail call void @display_scene(i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef 0) #15, !dbg !1654
  ret void, !dbg !1655
}

declare !dbg !1656 i64 @ps_open(ptr noundef) local_unnamed_addr #3

declare !dbg !1660 void @ps_setup_view(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare !dbg !1663 void @ps_display_scene(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1664 void @ps_close() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1665 void @perror(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1671 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1674 void @clear_radiosity(i64 noundef) local_unnamed_addr #3

declare !dbg !1675 i64 @check_task_counter() local_unnamed_addr #3

declare !dbg !1678 i64 @radiosity_converged(i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare !dbg !1679 void @foreach_patch_in_bsp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define internal void @_init_ray_tasks_static(ptr nocapture noundef readonly %p, i64 noundef %dummy, i64 noundef %process_id) #0 !dbg !1682 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1686, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i64 %dummy, metadata !1687, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1688, metadata !DIExpression()), !dbg !1689
  %el_root = getelementptr inbounds %struct._patch, ptr %p, i64 0, i32 16, !dbg !1690
  %0 = load ptr, ptr %el_root, align 8, !dbg !1690
  %rad_in = getelementptr inbounds %struct._element, ptr %0, i64 0, i32 12, !dbg !1691
  store float 0.000000e+00, ptr %rad_in, align 4, !dbg !1692
  %1 = load ptr, ptr %el_root, align 8, !dbg !1693
  %g = getelementptr inbounds %struct._element, ptr %1, i64 0, i32 12, i32 1, !dbg !1694
  store float 0.000000e+00, ptr %g, align 4, !dbg !1695
  %2 = load ptr, ptr %el_root, align 8, !dbg !1696
  %b = getelementptr inbounds %struct._element, ptr %2, i64 0, i32 12, i32 2, !dbg !1697
  store float 0.000000e+00, ptr %b, align 4, !dbg !1698
  %seq_no = getelementptr inbounds %struct._patch, ptr %p, i64 0, i32 17, !dbg !1699
  %3 = load i64, ptr %seq_no, align 8, !dbg !1699
  %shr = ashr i64 %3, 2, !dbg !1700
  %4 = load i64, ptr @n_taskqueues, align 8, !dbg !1701
  %rem = srem i64 %shr, %4, !dbg !1702
  %5 = load ptr, ptr %el_root, align 8, !dbg !1703
  tail call void @enqueue_ray_task(i64 noundef %rem, ptr noundef %5, i64 noundef 0, i64 noundef %process_id) #15, !dbg !1704
  ret void, !dbg !1705
}

; Function Attrs: noinline nounwind uwtable
define internal void @_init_radavg_tasks(ptr nocapture noundef readonly %p, i64 noundef %mode, i64 noundef %process_id) #0 !dbg !1706 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !1708, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %mode, metadata !1709, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !1710, metadata !DIExpression()), !dbg !1711
  %seq_no = getelementptr inbounds %struct._patch, ptr %p, i64 0, i32 17, !dbg !1712
  %0 = load i64, ptr %seq_no, align 8, !dbg !1712
  %1 = load i64, ptr @n_taskqueues, align 8, !dbg !1713
  %rem = srem i64 %0, %1, !dbg !1714
  %el_root = getelementptr inbounds %struct._patch, ptr %p, i64 0, i32 16, !dbg !1715
  %2 = load ptr, ptr %el_root, align 8, !dbg !1715
  tail call void @enqueue_radavg_task(i64 noundef %rem, ptr noundef %2, i64 noundef %mode, i64 noundef %process_id) #15, !dbg !1716
  ret void, !dbg !1717
}

; Function Attrs: nounwind
declare !dbg !1718 i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1729 i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #8

declare !dbg !1740 void @init_taskq(i64 noundef) local_unnamed_addr #3

declare !dbg !1741 void @init_patchlist(i64 noundef) local_unnamed_addr #3

declare !dbg !1742 void @init_elemlist(i64 noundef) local_unnamed_addr #3

declare !dbg !1743 void @init_interactionlist(i64 noundef) local_unnamed_addr #3

declare !dbg !1744 void @init_elemvertex(i64 noundef) local_unnamed_addr #3

declare !dbg !1745 void @init_edge(i64 noundef) local_unnamed_addr #3

declare !dbg !1746 void @init_stat_info(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_usage() local_unnamed_addr #10 !dbg !1747 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !dbg !1748
  %1 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 32, i64 1, ptr %0) #17, !dbg !1749
  %2 = load ptr, ptr @stderr, align 8, !dbg !1750
  %3 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 73, i64 1, ptr %2) #17, !dbg !1751
  %4 = load ptr, ptr @stderr, align 8, !dbg !1752
  %5 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 29, i64 1, ptr %4) #17, !dbg !1753
  %6 = load ptr, ptr @stderr, align 8, !dbg !1754
  %7 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 69, i64 1, ptr %6) #17, !dbg !1755
  %8 = load ptr, ptr @stderr, align 8, !dbg !1756
  %9 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 64, i64 1, ptr %8) #17, !dbg !1757
  %10 = load ptr, ptr @stderr, align 8, !dbg !1758
  %11 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 81, i64 1, ptr %10) #17, !dbg !1759
  %12 = load ptr, ptr @stderr, align 8, !dbg !1760
  %13 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 77, i64 1, ptr %12) #17, !dbg !1761
  %14 = load ptr, ptr @stderr, align 8, !dbg !1762
  %15 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 76, i64 1, ptr %14) #17, !dbg !1763
  %16 = load ptr, ptr @stderr, align 8, !dbg !1764
  %17 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 79, i64 1, ptr %16) #17, !dbg !1765
  %18 = load ptr, ptr @stderr, align 8, !dbg !1766
  %19 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 44, i64 1, ptr %18) #17, !dbg !1767
  %20 = load ptr, ptr @stderr, align 8, !dbg !1768
  %21 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 35, i64 1, ptr %20) #17, !dbg !1769
  %22 = load ptr, ptr @stderr, align 8, !dbg !1770
  %23 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 42, i64 1, ptr %22) #17, !dbg !1771
  %24 = load ptr, ptr @stderr, align 8, !dbg !1772
  %25 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 50, i64 1, ptr %24) #17, !dbg !1773
  %26 = load ptr, ptr @stderr, align 8, !dbg !1774
  %27 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 58, i64 1, ptr %26) #17, !dbg !1775
  ret void, !dbg !1776
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !1777 void @enqueue_ray_task(i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1780 void @enqueue_radavg_task(i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind }
attributes #14 = { argmemonly nofree nounwind willreturn writeonly }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind readnone willreturn }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!517, !518, !519, !520, !521, !522}
!llvm.ident = !{!523}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__threads__", scope: !2, file: !3, line: 52, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !381, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rad_main.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "ff6cff6222bb49dd444d654ae16832a8")
!4 = !{!5, !366, !367, !376, !379, !10, !380, !81}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "Global", file: !3, line: 1017, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 950, size: 1404379648, elements: !8)
!8 = !{!9, !11, !44, !230, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !259, !304, !305, !306, !307, !308, !309, !310, !311, !312, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !332}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !7, file: !3, line: 954, baseType: !10, size: 64)
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "index_lock", scope: !7, file: !3, line: 955, baseType: !12, size: 320, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !13, line: 72, baseType: !14)
!13 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 67, size: 320, elements: !15)
!15 = !{!16, !38, !43}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !14, file: !13, line: 69, baseType: !17, size: 320)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !18, line: 22, size: 320, elements: !19)
!18 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!19 = !{!20, !22, !24, !25, !26, !27, !29, !30}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !17, file: !18, line: 24, baseType: !21, size: 32)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !17, file: !18, line: 25, baseType: !23, size: 32, offset: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !17, file: !18, line: 26, baseType: !21, size: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !17, file: !18, line: 28, baseType: !23, size: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !17, file: !18, line: 32, baseType: !21, size: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !17, file: !18, line: 34, baseType: !28, size: 16, offset: 160)
!28 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !17, file: !18, line: 35, baseType: !28, size: 16, offset: 176)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !17, file: !18, line: 36, baseType: !31, size: 128, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !32, line: 53, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !32, line: 49, size: 128, elements: !34)
!34 = !{!35, !37}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !33, file: !32, line: 51, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !33, file: !32, line: 52, baseType: !36, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !14, file: !13, line: 70, baseType: !39, size: 320)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 320, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{!42}
!42 = !DISubrange(count: 40)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !14, file: !13, line: 71, baseType: !10, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "task_queue", scope: !7, file: !3, line: 956, baseType: !45, size: 68091904, offset: 384)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 68091904, elements: !228)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "Task_Queue", file: !3, line: 686, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 675, size: 66496, elements: !48)
!48 = !{!49, !53, !54, !222, !223, !224, !225, !226, !227}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !47, file: !3, line: 676, baseType: !50, size: 32768)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32768, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 4096)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "q_lock", scope: !47, file: !3, line: 678, baseType: !12, size: 320, offset: 32768)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !47, file: !3, line: 679, baseType: !55, size: 64, offset: 33088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "Task", file: !3, line: 672, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_task", file: !3, line: 661, size: 384, elements: !58)
!58 = !{!59, !60, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "task_type", scope: !57, file: !3, line: 662, baseType: !10, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !57, file: !3, line: 663, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !57, file: !3, line: 671, baseType: !63, size: 256, offset: 128)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !57, file: !3, line: 664, size: 256, elements: !64)
!64 = !{!65, !95, !188, !196, !202, !215}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !63, file: !3, line: 665, baseType: !66, size: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "Modeling_Task", file: !3, line: 610, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 607, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !67, file: !3, line: 608, baseType: !10, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !67, file: !3, line: 609, baseType: !71, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "Model", file: !3, line: 521, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 517, size: 576, elements: !74)
!74 = !{!75, !84, !85}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !73, file: !3, line: 518, baseType: !76, size: 96)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !77, line: 24, baseType: !78)
!77 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 22, size: 96, elements: !79)
!79 = !{!80, !82, !83}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !78, file: !77, line: 23, baseType: !81, size: 32)
!81 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !78, file: !77, line: 23, baseType: !81, size: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !78, file: !77, line: 23, baseType: !81, size: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !73, file: !3, line: 519, baseType: !76, size: 96, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy", scope: !73, file: !3, line: 520, baseType: !86, size: 384, offset: 192)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 384, elements: !93)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !77, line: 14, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 12, size: 96, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !88, file: !77, line: 13, baseType: !81, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !88, file: !77, line: 13, baseType: !81, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !88, file: !77, line: 13, baseType: !81, size: 32, offset: 64)
!93 = !{!94}
!94 = !DISubrange(count: 4)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "bsp", scope: !63, file: !3, line: 666, baseType: !96, size: 128)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "BSP_Task", file: !3, line: 617, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 614, size: 128, elements: !98)
!98 = !{!99, !187}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !97, file: !3, line: 615, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 356, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 340, size: 1344, elements: !103)
!103 = !{!104, !118, !119, !120, !131, !132, !133, !134, !135, !136, !142, !143, !144, !145, !147, !148, !149, !186}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !102, file: !3, line: 341, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 264, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 259, size: 320, elements: !108)
!108 = !{!109, !110, !111, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !107, file: !3, line: 260, baseType: !87, size: 96)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !107, file: !3, line: 261, baseType: !76, size: 96, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !107, file: !3, line: 262, baseType: !81, size: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !107, file: !3, line: 263, baseType: !113, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 125, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 122, size: 320, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !115, file: !3, line: 124, baseType: !12, size: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !102, file: !3, line: 341, baseType: !105, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !102, file: !3, line: 341, baseType: !105, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !102, file: !3, line: 342, baseType: !121, size: 64, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 287, baseType: !123)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 283, size: 320, elements: !124)
!124 = !{!125, !126, !127, !129, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !123, file: !3, line: 284, baseType: !105, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !123, file: !3, line: 284, baseType: !105, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !123, file: !3, line: 285, baseType: !128, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !123, file: !3, line: 285, baseType: !128, size: 64, offset: 192)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !123, file: !3, line: 286, baseType: !113, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !102, file: !3, line: 342, baseType: !121, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !102, file: !3, line: 342, baseType: !121, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !102, file: !3, line: 343, baseType: !87, size: 96, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !102, file: !3, line: 343, baseType: !87, size: 96, offset: 480)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !102, file: !3, line: 343, baseType: !87, size: 96, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !102, file: !3, line: 344, baseType: !137, size: 128, offset: 672)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 312, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 308, size: 128, elements: !139)
!139 = !{!140, !141}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !138, file: !3, line: 309, baseType: !87, size: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !138, file: !3, line: 310, baseType: !81, size: 32, offset: 96)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !102, file: !3, line: 345, baseType: !81, size: 32, offset: 800)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !102, file: !3, line: 346, baseType: !76, size: 96, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !102, file: !3, line: 348, baseType: !76, size: 96, offset: 928)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !102, file: !3, line: 350, baseType: !146, size: 64, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !102, file: !3, line: 351, baseType: !146, size: 64, offset: 1088)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !102, file: !3, line: 352, baseType: !146, size: 64, offset: 1152)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !102, file: !3, line: 354, baseType: !150, size: 64, offset: 1216)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 396, size: 1536, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !151, file: !3, line: 397, baseType: !113, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !151, file: !3, line: 398, baseType: !100, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !3, line: 400, baseType: !150, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !151, file: !3, line: 401, baseType: !150, size: 64, offset: 192)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !151, file: !3, line: 402, baseType: !150, size: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !151, file: !3, line: 403, baseType: !150, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !151, file: !3, line: 404, baseType: !150, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !151, file: !3, line: 406, baseType: !161, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 442, size: 256, elements: !163)
!163 = !{!164, !165, !168, !169, !170, !171}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !3, line: 443, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !162, file: !3, line: 444, baseType: !166, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 421, baseType: !151)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !162, file: !3, line: 445, baseType: !81, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !162, file: !3, line: 446, baseType: !81, size: 32, offset: 160)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !162, file: !3, line: 447, baseType: !81, size: 32, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !162, file: !3, line: 448, baseType: !81, size: 32, offset: 224)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !151, file: !3, line: 407, baseType: !10, size: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !151, file: !3, line: 408, baseType: !161, size: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !151, file: !3, line: 409, baseType: !10, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !151, file: !3, line: 411, baseType: !76, size: 96, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !151, file: !3, line: 413, baseType: !76, size: 96, offset: 800)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !151, file: !3, line: 414, baseType: !76, size: 96, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !151, file: !3, line: 416, baseType: !10, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !151, file: !3, line: 418, baseType: !105, size: 64, offset: 1088)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !151, file: !3, line: 418, baseType: !105, size: 64, offset: 1152)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !151, file: !3, line: 418, baseType: !105, size: 64, offset: 1216)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !151, file: !3, line: 419, baseType: !121, size: 64, offset: 1280)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !151, file: !3, line: 419, baseType: !121, size: 64, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !151, file: !3, line: 419, baseType: !121, size: 64, offset: 1408)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !151, file: !3, line: 420, baseType: !81, size: 32, offset: 1472)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !102, file: !3, line: 355, baseType: !10, size: 64, offset: 1280)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !3, line: 616, baseType: !100, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !63, file: !3, line: 667, baseType: !189, size: 256)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "Refinement_Task", file: !3, line: 625, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 621, size: 256, elements: !191)
!191 = !{!192, !193, !194, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "e1", scope: !190, file: !3, line: 622, baseType: !166, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "e2", scope: !190, file: !3, line: 622, baseType: !166, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !190, file: !3, line: 623, baseType: !81, size: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !190, file: !3, line: 624, baseType: !10, size: 64, offset: 192)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ray", scope: !63, file: !3, line: 668, baseType: !197, size: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ray_Task", file: !3, line: 631, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 628, size: 128, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ray_type", scope: !198, file: !3, line: 629, baseType: !10, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !198, file: !3, line: 630, baseType: !166, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "vis", scope: !63, file: !3, line: 669, baseType: !203, size: 256)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "Visibility_Task", file: !3, line: 639, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 634, size: 256, elements: !205)
!205 = !{!206, !207, !210, !211}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !204, file: !3, line: 635, baseType: !166, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !204, file: !3, line: 636, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !3, line: 449, baseType: !162)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "n_inter", scope: !204, file: !3, line: 637, baseType: !10, size: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "k", scope: !204, file: !3, line: 638, baseType: !212, size: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, null}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !63, file: !3, line: 670, baseType: !216, size: 192)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "RadAvg_Task", file: !3, line: 650, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 646, size: 192, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !217, file: !3, line: 647, baseType: !166, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !217, file: !3, line: 648, baseType: !10, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !217, file: !3, line: 649, baseType: !10, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !47, file: !3, line: 679, baseType: !55, size: 64, offset: 33152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "n_tasks", scope: !47, file: !3, line: 680, baseType: !10, size: 64, offset: 33216)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !47, file: !3, line: 681, baseType: !12, size: 320, offset: 33280)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "n_free", scope: !47, file: !3, line: 682, baseType: !10, size: 64, offset: 33600)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !47, file: !3, line: 683, baseType: !55, size: 64, offset: 33664)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !47, file: !3, line: 684, baseType: !50, size: 32768, offset: 33728)
!228 = !{!229}
!229 = !DISubrange(count: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "task_buf", scope: !7, file: !3, line: 957, baseType: !231, size: 1258291200, offset: 68092288)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1258291200, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 3276800)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_tree_lock", scope: !7, file: !3, line: 960, baseType: !12, size: 320, offset: 1326383488)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_root", scope: !7, file: !3, line: 961, baseType: !100, size: 64, offset: 1326383808)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "avg_radiosity_lock", scope: !7, file: !3, line: 964, baseType: !12, size: 320, offset: 1326383872)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "converged", scope: !7, file: !3, line: 965, baseType: !10, size: 64, offset: 1326384192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prev_total_energy", scope: !7, file: !3, line: 966, baseType: !76, size: 96, offset: 1326384256)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "total_energy", scope: !7, file: !3, line: 967, baseType: !76, size: 96, offset: 1326384352)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "total_patch_area", scope: !7, file: !3, line: 968, baseType: !81, size: 32, offset: 1326384448)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "iteration_count", scope: !7, file: !3, line: 969, baseType: !10, size: 64, offset: 1326384512)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "cost_sum_lock", scope: !7, file: !3, line: 972, baseType: !12, size: 320, offset: 1326384576)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "cost_sum", scope: !7, file: !3, line: 973, baseType: !10, size: 64, offset: 1326384896)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cost_estimate_sum", scope: !7, file: !3, line: 974, baseType: !10, size: 64, offset: 1326384960)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "patch_cost", scope: !7, file: !3, line: 975, baseType: !246, size: 1048576, offset: 1326385024)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1048576, elements: !228)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch_Cost", file: !3, line: 366, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 359, size: 1024, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !248, file: !3, line: 360, baseType: !100, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cost_lock", scope: !248, file: !3, line: 361, baseType: !113, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "n_bsp_node", scope: !248, file: !3, line: 362, baseType: !10, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "n_total_inter", scope: !248, file: !3, line: 363, baseType: !10, size: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "cost_estimate", scope: !248, file: !3, line: 364, baseType: !10, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "cost_history", scope: !248, file: !3, line: 365, baseType: !256, size: 704, offset: 320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 704, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 11)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "barrier", scope: !7, file: !3, line: 978, baseType: !260, size: 768, offset: 1327433600)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !3, line: 978, size: 768, elements: !261)
!261 = !{!262, !263, !303}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bar_mutex", scope: !260, file: !3, line: 978, baseType: !12, size: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "bar_cond", scope: !260, file: !3, line: 978, baseType: !264, size: 384, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !13, line: 80, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 75, size: 384, elements: !266)
!266 = !{!267, !297, !301}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !265, file: !13, line: 77, baseType: !268, size: 384)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !32, line: 92, size: 384, elements: !269)
!269 = !{!270, !280, !289, !293, !294, !295, !296}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !32, line: 94, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !32, line: 94, size: 64, elements: !272)
!272 = !{!273, !275}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !271, file: !32, line: 96, baseType: !274, size: 64)
!274 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !271, file: !32, line: 101, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !32, line: 97, size: 64, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !276, file: !32, line: 99, baseType: !23, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !276, file: !32, line: 100, baseType: !23, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !32, line: 103, baseType: !281, size: 64, offset: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !32, line: 103, size: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !281, file: !32, line: 105, baseType: !274, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !281, file: !32, line: 110, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !32, line: 106, size: 64, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !285, file: !32, line: 108, baseType: !23, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !285, file: !32, line: 109, baseType: !23, size: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !268, file: !32, line: 112, baseType: !290, size: 64, offset: 128)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 2)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !268, file: !32, line: 113, baseType: !290, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !268, file: !32, line: 114, baseType: !23, size: 32, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !268, file: !32, line: 115, baseType: !23, size: 32, offset: 288)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !268, file: !32, line: 116, baseType: !290, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !265, file: !13, line: 78, baseType: !298, size: 384)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 384, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 48)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !265, file: !13, line: 79, baseType: !302, size: 64)
!302 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bar_teller", scope: !260, file: !3, line: 978, baseType: !23, size: 32, offset: 704)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "pbar_count", scope: !7, file: !3, line: 981, baseType: !10, size: 64, offset: 1327434368)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "pbar_lock", scope: !7, file: !3, line: 982, baseType: !12, size: 320, offset: 1327434432)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "task_counter", scope: !7, file: !3, line: 985, baseType: !10, size: 64, offset: 1327434752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "task_counter_lock", scope: !7, file: !3, line: 986, baseType: !12, size: 320, offset: 1327434816)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "free_patch_lock", scope: !7, file: !3, line: 989, baseType: !12, size: 320, offset: 1327435136)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "free_patch", scope: !7, file: !3, line: 990, baseType: !100, size: 64, offset: 1327435456)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "n_total_patches", scope: !7, file: !3, line: 991, baseType: !10, size: 64, offset: 1327435520)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "n_free_patches", scope: !7, file: !3, line: 992, baseType: !10, size: 64, offset: 1327435584)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "patch_buf", scope: !7, file: !3, line: 993, baseType: !313, size: 1376256, offset: 1327435648)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 1376256, elements: !228)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "free_element_lock", scope: !7, file: !3, line: 995, baseType: !12, size: 320, offset: 1328811904)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "free_element", scope: !7, file: !3, line: 996, baseType: !166, size: 64, offset: 1328812224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "n_free_elements", scope: !7, file: !3, line: 997, baseType: !10, size: 64, offset: 1328812288)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "element_buf", scope: !7, file: !3, line: 998, baseType: !166, size: 64, offset: 1328812352)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "free_interaction_lock", scope: !7, file: !3, line: 1000, baseType: !12, size: 320, offset: 1328812416)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "free_interaction", scope: !7, file: !3, line: 1001, baseType: !208, size: 64, offset: 1328812736)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "n_free_interactions", scope: !7, file: !3, line: 1002, baseType: !10, size: 64, offset: 1328812800)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "interaction_buf", scope: !7, file: !3, line: 1003, baseType: !208, size: 64, offset: 1328812864)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "free_elemvertex_lock", scope: !7, file: !3, line: 1005, baseType: !12, size: 320, offset: 1328812928)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "free_elemvertex", scope: !7, file: !3, line: 1006, baseType: !10, size: 64, offset: 1328813248)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "elemvertex_buf", scope: !7, file: !3, line: 1007, baseType: !105, size: 64, offset: 1328813312)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "free_edge_lock", scope: !7, file: !3, line: 1009, baseType: !12, size: 320, offset: 1328813376)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "free_edge", scope: !7, file: !3, line: 1010, baseType: !10, size: 64, offset: 1328813696)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "edge_buf", scope: !7, file: !3, line: 1011, baseType: !121, size: 64, offset: 1328813760)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sh_lock", scope: !7, file: !3, line: 1013, baseType: !329, size: 1248000, offset: 1328813824)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1248000, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 3900)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "stat_info", scope: !7, file: !3, line: 1015, baseType: !333, size: 74317824, offset: 1330061824)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 74317824, elements: !228)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatisticalInfo", file: !3, line: 937, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 917, size: 72576, elements: !336)
!336 = !{!337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !352, !365}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !335, file: !3, line: 919, baseType: !50, size: 32768)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "total_modeling_tasks", scope: !335, file: !3, line: 921, baseType: !10, size: 64, offset: 32768)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "total_def_patch_tasks", scope: !335, file: !3, line: 922, baseType: !10, size: 64, offset: 32832)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "total_ff_ref_tasks", scope: !335, file: !3, line: 923, baseType: !10, size: 64, offset: 32896)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "total_ray_tasks", scope: !335, file: !3, line: 924, baseType: !10, size: 64, offset: 32960)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "total_radavg_tasks", scope: !335, file: !3, line: 925, baseType: !10, size: 64, offset: 33024)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "total_direct_radavg_tasks", scope: !335, file: !3, line: 926, baseType: !10, size: 64, offset: 33088)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "total_interaction_comp", scope: !335, file: !3, line: 927, baseType: !10, size: 64, offset: 33152)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "total_visibility_comp", scope: !335, file: !3, line: 928, baseType: !10, size: 64, offset: 33216)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "partially_visible", scope: !335, file: !3, line: 929, baseType: !10, size: 64, offset: 33280)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "total_ray_intersect_test", scope: !335, file: !3, line: 930, baseType: !10, size: 64, offset: 33344)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "total_patch_cache_check", scope: !335, file: !3, line: 931, baseType: !10, size: 64, offset: 33408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "total_patch_cache_hit", scope: !335, file: !3, line: 932, baseType: !10, size: 64, offset: 33472)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "patch_cache_hit", scope: !335, file: !3, line: 933, baseType: !351, size: 128, offset: 33536)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !291)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "per_iteration", scope: !335, file: !3, line: 934, baseType: !353, size: 6144, offset: 33664)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 6144, elements: !363)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerIterationInfo", file: !3, line: 914, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 906, size: 384, elements: !356)
!356 = !{!357, !358, !359, !360, !361, !362}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_comp", scope: !355, file: !3, line: 908, baseType: !10, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ray_intersect_test", scope: !355, file: !3, line: 909, baseType: !10, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tasks_from_myq", scope: !355, file: !3, line: 910, baseType: !10, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tasks_from_otherq", scope: !355, file: !3, line: 911, baseType: !10, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "process_tasks_wait", scope: !355, file: !3, line: 912, baseType: !10, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "last_pr_task", scope: !355, file: !3, line: 913, baseType: !150, size: 64, offset: 320)
!363 = !{!364}
!364 = !DISubrange(count: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !335, file: !3, line: 935, baseType: !50, size: 32768, offset: 39808)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timing", file: !3, line: 948, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 945, size: 320, elements: !370)
!370 = !{!371, !372, !373, !374, !375}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rad_start", scope: !369, file: !3, line: 947, baseType: !10, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rad_time", scope: !369, file: !3, line: 947, baseType: !10, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "refine_time", scope: !369, file: !3, line: 947, baseType: !10, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_time", scope: !369, file: !3, line: 947, baseType: !10, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vertex_time", scope: !369, file: !3, line: 947, baseType: !10, size: 64, offset: 256)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!379, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!380 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!381 = !{!0, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !426, !439, !474, !481, !483, !485, !487, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514}
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "MAX_ELEMENTS", scope: !2, file: !3, line: 1192, type: !10, isLocal: false, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "MAX_INTERACTIONS", scope: !2, file: !3, line: 1193, type: !10, isLocal: false, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "MAX_ELEMVERTICES", scope: !2, file: !3, line: 1194, type: !10, isLocal: false, isDefinition: true)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "MAX_EDGES", scope: !2, file: !3, line: 1195, type: !10, isLocal: false, isDefinition: true)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "n_processors", scope: !2, file: !3, line: 1203, type: !10, isLocal: false, isDefinition: true)
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "n_taskqueues", scope: !2, file: !3, line: 1204, type: !10, isLocal: false, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "n_tasks_per_queue", scope: !2, file: !3, line: 1205, type: !10, isLocal: false, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "N_inter_parallel_bf_refine", scope: !2, file: !3, line: 1206, type: !10, isLocal: false, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "N_visibility_per_task", scope: !2, file: !3, line: 1207, type: !10, isLocal: false, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "Area_epsilon", scope: !2, file: !3, line: 1208, type: !81, isLocal: false, isDefinition: true)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(name: "Energy_epsilon", scope: !2, file: !3, line: 1209, type: !81, isLocal: false, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "BFepsilon", scope: !2, file: !3, line: 1210, type: !81, isLocal: false, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "batch_mode", scope: !2, file: !3, line: 1212, type: !10, isLocal: false, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "verbose_mode", scope: !2, file: !3, line: 1213, type: !10, isLocal: false, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "sliders", scope: !2, file: !3, line: 1235, type: !412, isLocal: false, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 1920, elements: !424)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "slider", file: !414, line: 49, baseType: !415)
!414 = !DIFile(filename: "./glibdumb/glib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "91b54e106f52da85fe06b27d69797b77")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 43, size: 384, elements: !416)
!416 = !{!417, !419, !420, !421, !422, !423}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !414, line: 44, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !415, file: !414, line: 45, baseType: !10, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !415, file: !414, line: 45, baseType: !10, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "init_value", scope: !415, file: !414, line: 46, baseType: !10, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ticks", scope: !415, file: !414, line: 47, baseType: !10, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !415, file: !414, line: 48, baseType: !212, size: 64, offset: 320)
!424 = !{!425}
!425 = !DISubrange(count: 5)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(name: "choices", scope: !2, file: !3, line: 1262, type: !428, isLocal: false, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 8960, elements: !93)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "choice", file: !414, line: 59, baseType: !430)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !414, line: 54, size: 2240, elements: !431)
!431 = !{!432, !433, !437, !438}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !414, line: 55, baseType: !418, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "possibilities", scope: !430, file: !414, line: 56, baseType: !434, size: 2048, offset: 64)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "init_value", scope: !430, file: !414, line: 57, baseType: !10, size: 64, offset: 2112)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !430, file: !414, line: 58, baseType: !212, size: 64, offset: 2176)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "state", scope: !441, file: !3, line: 1516, type: !10, isLocal: true, isDefinition: true)
!441 = distinct !DISubprogram(name: "start_radiosity", scope: !3, file: !3, line: 1513, type: !442, scopeLine: 1515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !10}
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !463, !464, !466, !471, !472}
!445 = !DILocalVariable(name: "val", arg: 1, scope: !441, file: !3, line: 1513, type: !10)
!446 = !DILocalVariable(name: "i", scope: !441, file: !3, line: 1517, type: !10)
!447 = !DILocalVariable(name: "total_rad_time", scope: !441, file: !3, line: 1518, type: !10)
!448 = !DILocalVariable(name: "max_rad_time", scope: !441, file: !3, line: 1518, type: !10)
!449 = !DILocalVariable(name: "min_rad_time", scope: !441, file: !3, line: 1518, type: !10)
!450 = !DILocalVariable(name: "total_refine_time", scope: !441, file: !3, line: 1519, type: !10)
!451 = !DILocalVariable(name: "max_refine_time", scope: !441, file: !3, line: 1519, type: !10)
!452 = !DILocalVariable(name: "min_refine_time", scope: !441, file: !3, line: 1519, type: !10)
!453 = !DILocalVariable(name: "total_wait_time", scope: !441, file: !3, line: 1520, type: !10)
!454 = !DILocalVariable(name: "max_wait_time", scope: !441, file: !3, line: 1520, type: !10)
!455 = !DILocalVariable(name: "min_wait_time", scope: !441, file: !3, line: 1520, type: !10)
!456 = !DILocalVariable(name: "total_vertex_time", scope: !441, file: !3, line: 1521, type: !10)
!457 = !DILocalVariable(name: "max_vertex_time", scope: !441, file: !3, line: 1521, type: !10)
!458 = !DILocalVariable(name: "min_vertex_time", scope: !441, file: !3, line: 1521, type: !10)
!459 = !DILocalVariable(name: "i", scope: !460, file: !3, line: 1551, type: !10)
!460 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1550, column: 13)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 1530, column: 9)
!462 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1529, column: 9)
!463 = !DILocalVariable(name: "Error", scope: !460, file: !3, line: 1551, type: !10)
!464 = !DILocalVariable(name: "aantal", scope: !465, file: !3, line: 1566, type: !21)
!465 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1566, column: 13)
!466 = !DILocalVariable(name: "i", scope: !467, file: !3, line: 1668, type: !10)
!467 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1667, column: 21)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 1656, column: 17)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 1647, column: 9)
!470 = distinct !DILexicalBlock(scope: !462, file: !3, line: 1646, column: 14)
!471 = !DILocalVariable(name: "Error", scope: !467, file: !3, line: 1668, type: !10)
!472 = !DILocalVariable(name: "aantal", scope: !473, file: !3, line: 1728, type: !21)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1728, column: 21)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(name: "__tid__", scope: !2, file: !3, line: 51, type: !476, isLocal: false, isDefinition: true)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 16384, elements: !479)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !13, line: 27, baseType: !478)
!478 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!479 = !{!480}
!480 = !DISubrange(count: 256)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "__intern__", scope: !2, file: !3, line: 53, type: !12, isLocal: false, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "global", scope: !2, file: !3, line: 1189, type: !5, isLocal: false, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "timing", scope: !2, file: !3, line: 1190, type: !366, isLocal: false, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "taskqueue_id", scope: !2, file: !3, line: 1223, type: !489, isLocal: false, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 65536, elements: !228)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "time_rad_start", scope: !2, file: !3, line: 1224, type: !10, isLocal: false, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "time_rad_end", scope: !2, file: !3, line: 1224, type: !10, isLocal: false, isDefinition: true)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "time_process_start", scope: !2, file: !3, line: 1224, type: !489, isLocal: false, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "dostats", scope: !2, file: !3, line: 1290, type: !10, isLocal: true, isDefinition: true)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "disp_fill_mode", scope: !2, file: !3, line: 1501, type: !10, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "disp_patch_switch", scope: !2, file: !3, line: 1502, type: !10, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "disp_mesh_switch", scope: !2, file: !3, line: 1503, type: !10, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "disp_interaction_switch", scope: !2, file: !3, line: 1504, type: !10, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "disp_fill_switch", scope: !2, file: !3, line: 1499, type: !10, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "disp_shade_switch", scope: !2, file: !3, line: 1500, type: !10, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "disp_crnt_view_x", scope: !2, file: !3, line: 1505, type: !10, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(name: "disp_crnt_view_y", scope: !2, file: !3, line: 1506, type: !10, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "disp_crnt_zoom", scope: !2, file: !3, line: 1507, type: !81, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!517 = !{i32 7, !"Dwarf Version", i32 5}
!518 = !{i32 2, !"Debug Info Version", i32 3}
!519 = !{i32 1, !"wchar_size", i32 4}
!520 = !{i32 7, !"PIC Level", i32 2}
!521 = !{i32 7, !"PIE Level", i32 2}
!522 = !{i32 7, !"uwtable", i32 2}
!523 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!524 = distinct !DISubprogram(name: "change_view_x", scope: !3, file: !3, line: 1832, type: !442, scopeLine: 1834, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !525)
!525 = !{!526}
!526 = !DILocalVariable(name: "val", arg: 1, scope: !524, file: !3, line: 1832, type: !10)
!527 = !DILocation(line: 0, scope: !524)
!528 = !DILocation(line: 1840, column: 22, scope: !524)
!529 = !DILocation(line: 1841, column: 5, scope: !524)
!530 = !DILocation(line: 1842, column: 1, scope: !524)
!531 = distinct !DISubprogram(name: "change_view_y", scope: !3, file: !3, line: 1848, type: !442, scopeLine: 1850, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533}
!533 = !DILocalVariable(name: "val", arg: 1, scope: !531, file: !3, line: 1848, type: !10)
!534 = !DILocation(line: 0, scope: !531)
!535 = !DILocation(line: 1856, column: 22, scope: !531)
!536 = !DILocation(line: 1857, column: 5, scope: !531)
!537 = !DILocation(line: 1858, column: 1, scope: !531)
!538 = distinct !DISubprogram(name: "change_view_zoom", scope: !3, file: !3, line: 1864, type: !442, scopeLine: 1866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!539 = !{!540}
!540 = !DILocalVariable(name: "val", arg: 1, scope: !538, file: !3, line: 1864, type: !10)
!541 = !DILocation(line: 0, scope: !538)
!542 = !DILocation(line: 1872, column: 22, scope: !538)
!543 = !DILocation(line: 1872, column: 20, scope: !538)
!544 = !DILocation(line: 1873, column: 5, scope: !538)
!545 = !DILocation(line: 1874, column: 1, scope: !538)
!546 = distinct !DISubprogram(name: "change_BFepsilon", scope: !3, file: !3, line: 1880, type: !442, scopeLine: 1882, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!547 = !{!548}
!548 = !DILocalVariable(name: "val", arg: 1, scope: !546, file: !3, line: 1880, type: !10)
!549 = !DILocation(line: 0, scope: !546)
!550 = !DILocation(line: 1886, column: 17, scope: !546)
!551 = !DILocation(line: 1886, column: 15, scope: !546)
!552 = !DILocation(line: 1887, column: 1, scope: !546)
!553 = distinct !DISubprogram(name: "change_area_epsilon", scope: !3, file: !3, line: 1894, type: !442, scopeLine: 1896, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !554)
!554 = !{!555}
!555 = !DILocalVariable(name: "val", arg: 1, scope: !553, file: !3, line: 1894, type: !10)
!556 = !DILocation(line: 0, scope: !553)
!557 = !DILocation(line: 1900, column: 20, scope: !553)
!558 = !DILocation(line: 1900, column: 18, scope: !553)
!559 = !DILocation(line: 1901, column: 1, scope: !553)
!560 = !DILocation(line: 0, scope: !441)
!561 = !DILocation(line: 1529, column: 9, scope: !441)
!562 = !DILocation(line: 1531, column: 17, scope: !563)
!563 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1531, column: 17)
!564 = !DILocation(line: 1531, column: 23, scope: !563)
!565 = !DILocation(line: 1531, column: 17, scope: !461)
!566 = !DILocation(line: 1533, column: 21, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !3, line: 1532, column: 17)
!568 = !DILocation(line: 1534, column: 21, scope: !567)
!569 = !DILocation(line: 1538, column: 47, scope: !570)
!570 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1538, column: 13)
!571 = !DILocation(line: 1538, column: 45, scope: !570)
!572 = !DILocation(line: 1541, column: 13, scope: !461)
!573 = !DILocation(line: 1541, column: 27, scope: !461)
!574 = !DILocation(line: 1544, column: 30, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 1544, column: 13)
!576 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1544, column: 13)
!577 = !DILocation(line: 1544, column: 28, scope: !575)
!578 = !DILocation(line: 1544, column: 13, scope: !576)
!579 = !DILocation(line: 1546, column: 39, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !3, line: 1545, column: 17)
!581 = !DILocation(line: 1546, column: 21, scope: !580)
!582 = !DILocation(line: 1546, column: 37, scope: !580)
!583 = !DILocation(line: 1544, column: 46, scope: !575)
!584 = distinct !{!584, !578, !585, !586, !587}
!585 = !DILocation(line: 1547, column: 17, scope: !576)
!586 = !{!"llvm.loop.mustprogress"}
!587 = !{!"llvm.loop.unroll.disable"}
!588 = !DILocation(line: 1553, column: 2, scope: !460)
!589 = !DILocation(line: 1554, column: 2, scope: !460)
!590 = !DILocation(line: 0, scope: !460)
!591 = !DILocation(line: 1555, column: 19, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 1555, column: 2)
!593 = distinct !DILexicalBlock(scope: !460, file: !3, line: 1555, column: 2)
!594 = !DILocation(line: 1555, column: 16, scope: !592)
!595 = !DILocation(line: 1555, column: 2, scope: !593)
!596 = !DILocation(line: 1555, column: 39, scope: !592)
!597 = !DILocation(line: 1555, column: 33, scope: !592)
!598 = distinct !{!598, !595, !599, !586, !587}
!599 = !DILocation(line: 1561, column: 2, scope: !593)
!600 = !DILocation(line: 1556, column: 46, scope: !601)
!601 = distinct !DILexicalBlock(scope: !592, file: !3, line: 1555, column: 43)
!602 = !DILocation(line: 1556, column: 27, scope: !601)
!603 = !DILocation(line: 1556, column: 11, scope: !601)
!604 = !DILocation(line: 1557, column: 13, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 1557, column: 7)
!606 = !DILocation(line: 1557, column: 7, scope: !601)
!607 = !DILocation(line: 1558, column: 4, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 1557, column: 19)
!609 = !DILocation(line: 1559, column: 4, scope: !608)
!610 = !DILocation(line: 1562, column: 2, scope: !460)
!611 = !DILocation(line: 1564, column: 2, scope: !460)
!612 = !DILocation(line: 1566, column: 25, scope: !465)
!613 = !DILocation(line: 0, scope: !465)
!614 = !DILocation(line: 1566, column: 39, scope: !465)
!615 = !DILocation(line: 1566, column: 52, scope: !465)
!616 = !DILocation(line: 1566, column: 69, scope: !465)
!617 = !DILocation(line: 1566, column: 56, scope: !465)
!618 = distinct !{!618, !614, !619, !586, !587}
!619 = !DILocation(line: 1566, column: 90, scope: !465)
!620 = !DILocation(line: 1568, column: 45, scope: !621)
!621 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1568, column: 13)
!622 = !DILocation(line: 1568, column: 43, scope: !621)
!623 = !DILocation(line: 1572, column: 13, scope: !461)
!624 = !DILocation(line: 1574, column: 13, scope: !461)
!625 = !DILocation(line: 1576, column: 17, scope: !626)
!626 = distinct !DILexicalBlock(scope: !461, file: !3, line: 1576, column: 17)
!627 = !DILocation(line: 1576, column: 17, scope: !461)
!628 = !DILocation(line: 1577, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !626, file: !3, line: 1576, column: 26)
!630 = !DILocation(line: 1579, column: 17, scope: !629)
!631 = !DILocation(line: 1580, column: 17, scope: !629)
!632 = !DILocation(line: 1582, column: 33, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 1582, column: 17)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 1582, column: 17)
!635 = !DILocation(line: 1582, column: 31, scope: !633)
!636 = !DILocation(line: 1582, column: 17, scope: !634)
!637 = !DILocation(line: 1583, column: 59, scope: !633)
!638 = !DILocation(line: 1583, column: 70, scope: !633)
!639 = !DILocation(line: 1583, column: 91, scope: !633)
!640 = !DILocation(line: 1583, column: 115, scope: !633)
!641 = !DILocation(line: 1583, column: 137, scope: !633)
!642 = !DILocation(line: 1583, column: 21, scope: !633)
!643 = !DILocation(line: 1582, column: 48, scope: !633)
!644 = distinct !{!644, !636, !645, !586, !587}
!645 = !DILocation(line: 1583, column: 148, scope: !634)
!646 = !DILocation(line: 1585, column: 34, scope: !629)
!647 = !DILocation(line: 1585, column: 45, scope: !629)
!648 = !DILocation(line: 1589, column: 48, scope: !629)
!649 = !DILocation(line: 1593, column: 46, scope: !629)
!650 = !DILocation(line: 1597, column: 48, scope: !629)
!651 = !DILocation(line: 1601, column: 31, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 1601, column: 17)
!653 = distinct !DILexicalBlock(scope: !629, file: !3, line: 1601, column: 17)
!654 = !DILocation(line: 1601, column: 17, scope: !653)
!655 = !DILocation(line: 1602, column: 39, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !3, line: 1601, column: 52)
!657 = !DILocation(line: 1602, column: 50, scope: !656)
!658 = !DILocation(line: 1602, column: 36, scope: !656)
!659 = !DILocation(line: 1603, column: 25, scope: !656)
!660 = !DILocation(line: 1605, column: 25, scope: !656)
!661 = !DILocation(line: 1608, column: 53, scope: !656)
!662 = !DILocation(line: 1608, column: 39, scope: !656)
!663 = !DILocation(line: 1609, column: 25, scope: !656)
!664 = !DILocation(line: 1611, column: 25, scope: !656)
!665 = !DILocation(line: 1614, column: 51, scope: !656)
!666 = !DILocation(line: 1614, column: 37, scope: !656)
!667 = !DILocation(line: 1615, column: 25, scope: !656)
!668 = !DILocation(line: 1617, column: 25, scope: !656)
!669 = !DILocation(line: 1620, column: 53, scope: !656)
!670 = !DILocation(line: 1620, column: 39, scope: !656)
!671 = !DILocation(line: 1621, column: 25, scope: !656)
!672 = !DILocation(line: 1623, column: 25, scope: !656)
!673 = !DILocation(line: 1601, column: 48, scope: !652)
!674 = distinct !{!674, !654, !675, !586, !587}
!675 = !DILocation(line: 1625, column: 17, scope: !653)
!676 = !DILocation(line: 0, scope: !629)
!677 = !DILocation(line: 1628, column: 17, scope: !629)
!678 = !DILocation(line: 1629, column: 17, scope: !629)
!679 = !DILocation(line: 1630, column: 70, scope: !629)
!680 = !DILocation(line: 1630, column: 114, scope: !629)
!681 = !DILocation(line: 1630, column: 95, scope: !629)
!682 = !DILocation(line: 1630, column: 61, scope: !629)
!683 = !DILocation(line: 1630, column: 140, scope: !629)
!684 = !DILocation(line: 1630, column: 168, scope: !629)
!685 = !DILocation(line: 1630, column: 131, scope: !629)
!686 = !DILocation(line: 1630, column: 213, scope: !629)
!687 = !DILocation(line: 1630, column: 239, scope: !629)
!688 = !DILocation(line: 1630, column: 204, scope: !629)
!689 = !DILocation(line: 1630, column: 284, scope: !629)
!690 = !DILocation(line: 1630, column: 312, scope: !629)
!691 = !DILocation(line: 1630, column: 275, scope: !629)
!692 = !DILocation(line: 1630, column: 17, scope: !629)
!693 = !DILocation(line: 1631, column: 17, scope: !629)
!694 = !DILocation(line: 1633, column: 13, scope: !629)
!695 = !DILocation(line: 1637, column: 31, scope: !461)
!696 = !DILocation(line: 1637, column: 13, scope: !461)
!697 = !DILocation(line: 1640, column: 28, scope: !461)
!698 = !DILocation(line: 1640, column: 44, scope: !461)
!699 = !DILocation(line: 1641, column: 27, scope: !461)
!700 = !DILocation(line: 1641, column: 45, scope: !461)
!701 = !DILocation(line: 1640, column: 13, scope: !461)
!702 = !DILocation(line: 1643, column: 19, scope: !461)
!703 = !DILocation(line: 1644, column: 9, scope: !461)
!704 = !DILocation(line: 1648, column: 17, scope: !705)
!705 = distinct !DILexicalBlock(scope: !469, file: !3, line: 1648, column: 17)
!706 = !DILocation(line: 1648, column: 17, scope: !469)
!707 = !DILocation(line: 1650, column: 21, scope: !708)
!708 = distinct !DILexicalBlock(scope: !705, file: !3, line: 1649, column: 17)
!709 = !DILocation(line: 1651, column: 21, scope: !708)
!710 = !DILocation(line: 1660, column: 21, scope: !468)
!711 = !DILocation(line: 1660, column: 35, scope: !468)
!712 = !DILocation(line: 1662, column: 39, scope: !713)
!713 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1662, column: 21)
!714 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1662, column: 21)
!715 = !DILocation(line: 1662, column: 37, scope: !713)
!716 = !DILocation(line: 1662, column: 21, scope: !714)
!717 = !DILocation(line: 1664, column: 47, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !3, line: 1663, column: 25)
!719 = !DILocation(line: 1664, column: 29, scope: !718)
!720 = !DILocation(line: 1664, column: 45, scope: !718)
!721 = !DILocation(line: 1662, column: 55, scope: !713)
!722 = distinct !{!722, !716, !723, !586, !587}
!723 = !DILocation(line: 1665, column: 25, scope: !714)
!724 = !DILocation(line: 1670, column: 2, scope: !467)
!725 = !DILocation(line: 1671, column: 2, scope: !467)
!726 = !DILocation(line: 0, scope: !467)
!727 = !DILocation(line: 1672, column: 19, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1672, column: 2)
!729 = distinct !DILexicalBlock(scope: !467, file: !3, line: 1672, column: 2)
!730 = !DILocation(line: 1672, column: 16, scope: !728)
!731 = !DILocation(line: 1672, column: 2, scope: !729)
!732 = !DILocation(line: 1672, column: 47, scope: !728)
!733 = !DILocation(line: 1672, column: 41, scope: !728)
!734 = distinct !{!734, !731, !735, !586, !587}
!735 = !DILocation(line: 1678, column: 2, scope: !729)
!736 = !DILocation(line: 1673, column: 46, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !3, line: 1672, column: 51)
!738 = !DILocation(line: 1673, column: 27, scope: !737)
!739 = !DILocation(line: 1673, column: 11, scope: !737)
!740 = !DILocation(line: 1674, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !3, line: 1674, column: 7)
!742 = !DILocation(line: 1674, column: 7, scope: !737)
!743 = !DILocation(line: 1675, column: 4, scope: !744)
!744 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1674, column: 19)
!745 = !DILocation(line: 1676, column: 4, scope: !744)
!746 = !DILocation(line: 1679, column: 2, scope: !467)
!747 = !DILocation(line: 1681, column: 2, scope: !467)
!748 = !DILocation(line: 1687, column: 21, scope: !468)
!749 = !DILocation(line: 1688, column: 21, scope: !468)
!750 = !DILocation(line: 1689, column: 27, scope: !468)
!751 = !DILocation(line: 1690, column: 21, scope: !468)
!752 = !DILocation(line: 1693, column: 25, scope: !753)
!753 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1693, column: 25)
!754 = !DILocation(line: 1693, column: 25, scope: !468)
!755 = !DILocation(line: 1696, column: 23, scope: !756)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 1695, column: 29)
!757 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1694, column: 25)
!758 = !DILocation(line: 1696, column: 31, scope: !756)
!759 = !DILocation(line: 1696, column: 1, scope: !756)
!760 = !DILocation(line: 1697, column: 2, scope: !756)
!761 = !DILocation(line: 1697, column: 19, scope: !756)
!762 = !DILocation(line: 1697, column: 29, scope: !756)
!763 = !DILocation(line: 1698, column: 5, scope: !764)
!764 = distinct !DILexicalBlock(scope: !756, file: !3, line: 1698, column: 5)
!765 = !DILocation(line: 1698, column: 38, scope: !764)
!766 = !DILocation(line: 1698, column: 34, scope: !764)
!767 = !DILocation(line: 1698, column: 5, scope: !756)
!768 = !DILocation(line: 1699, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 1698, column: 53)
!770 = !DILocation(line: 1700, column: 45, scope: !769)
!771 = !DILocation(line: 1700, column: 2, scope: !769)
!772 = !DILocation(line: 1701, column: 1, scope: !769)
!773 = !DILocation(line: 1698, column: 14, scope: !764)
!774 = !DILocation(line: 1702, column: 40, scope: !775)
!775 = distinct !DILexicalBlock(scope: !764, file: !3, line: 1701, column: 8)
!776 = !DILocation(line: 1702, column: 2, scope: !775)
!777 = !DILocation(line: 1704, column: 25, scope: !756)
!778 = !DILocation(line: 1704, column: 33, scope: !756)
!779 = !DILocation(line: 1704, column: 1, scope: !756)
!780 = !DILocation(line: 1706, column: 29, scope: !757)
!781 = !DILocation(line: 1707, column: 25, scope: !757)
!782 = !DILocation(line: 1709, column: 30, scope: !753)
!783 = !DILocation(line: 1713, column: 23, scope: !784)
!784 = distinct !DILexicalBlock(scope: !468, file: !3, line: 1712, column: 21)
!785 = !DILocation(line: 1713, column: 31, scope: !784)
!786 = !DILocation(line: 1713, column: 1, scope: !784)
!787 = !DILocation(line: 1714, column: 2, scope: !784)
!788 = !DILocation(line: 1714, column: 19, scope: !784)
!789 = !DILocation(line: 1714, column: 29, scope: !784)
!790 = !DILocation(line: 1715, column: 5, scope: !791)
!791 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1715, column: 5)
!792 = !DILocation(line: 1715, column: 38, scope: !791)
!793 = !DILocation(line: 1715, column: 34, scope: !791)
!794 = !DILocation(line: 1715, column: 5, scope: !784)
!795 = !DILocation(line: 1716, column: 31, scope: !796)
!796 = distinct !DILexicalBlock(scope: !791, file: !3, line: 1715, column: 53)
!797 = !DILocation(line: 1717, column: 45, scope: !796)
!798 = !DILocation(line: 1717, column: 2, scope: !796)
!799 = !DILocation(line: 1718, column: 1, scope: !796)
!800 = !DILocation(line: 1715, column: 14, scope: !791)
!801 = !DILocation(line: 1719, column: 40, scope: !802)
!802 = distinct !DILexicalBlock(scope: !791, file: !3, line: 1718, column: 8)
!803 = !DILocation(line: 1719, column: 2, scope: !802)
!804 = !DILocation(line: 1721, column: 25, scope: !784)
!805 = !DILocation(line: 1721, column: 33, scope: !784)
!806 = !DILocation(line: 1721, column: 1, scope: !784)
!807 = !DILocation(line: 1723, column: 21, scope: !468)
!808 = !DILocation(line: 1724, column: 21, scope: !468)
!809 = !DILocation(line: 1725, column: 21, scope: !468)
!810 = !DILocation(line: 1726, column: 21, scope: !468)
!811 = !DILocation(line: 1728, column: 33, scope: !473)
!812 = !DILocation(line: 0, scope: !473)
!813 = !DILocation(line: 1728, column: 55, scope: !473)
!814 = !DILocation(line: 1728, column: 68, scope: !473)
!815 = !DILocation(line: 1728, column: 85, scope: !473)
!816 = !DILocation(line: 1728, column: 72, scope: !473)
!817 = distinct !{!817, !813, !818, !586, !587}
!818 = !DILocation(line: 1728, column: 106, scope: !473)
!819 = !DILocation(line: 1729, column: 31, scope: !468)
!820 = !DILocation(line: 1730, column: 17, scope: !468)
!821 = !DILocation(line: 1733, column: 28, scope: !469)
!822 = !DILocation(line: 1733, column: 44, scope: !469)
!823 = !DILocation(line: 1734, column: 27, scope: !469)
!824 = !DILocation(line: 1734, column: 45, scope: !469)
!825 = !DILocation(line: 1733, column: 13, scope: !469)
!826 = !DILocation(line: 1735, column: 9, scope: !469)
!827 = !DILocation(line: 1740, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 1738, column: 9)
!829 = distinct !DILexicalBlock(scope: !470, file: !3, line: 1737, column: 14)
!830 = !DILocation(line: 1741, column: 13, scope: !828)
!831 = !DILocation(line: 1742, column: 13, scope: !828)
!832 = !DILocation(line: 1743, column: 19, scope: !828)
!833 = !DILocation(line: 1744, column: 9, scope: !828)
!834 = !DILocation(line: 1745, column: 1, scope: !441)
!835 = distinct !DISubprogram(name: "change_display", scope: !3, file: !3, line: 1760, type: !442, scopeLine: 1762, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!836 = !{!837}
!837 = !DILocalVariable(name: "val", arg: 1, scope: !835, file: !3, line: 1760, type: !10)
!838 = !DILocation(line: 0, scope: !835)
!839 = !DILocation(line: 1770, column: 5, scope: !835)
!840 = !DILocation(line: 1773, column: 35, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1771, column: 9)
!842 = !DILocation(line: 1773, column: 33, scope: !841)
!843 = !DILocation(line: 1773, column: 30, scope: !841)
!844 = !DILocation(line: 1774, column: 13, scope: !841)
!845 = !DILocation(line: 1780, column: 13, scope: !841)
!846 = !DILocation(line: 1783, column: 13, scope: !841)
!847 = !DILocation(line: 1786, column: 13, scope: !841)
!848 = !DILocation(line: 0, scope: !841)
!849 = !DILocation(line: 1791, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1791, column: 9)
!851 = !DILocation(line: 1791, column: 26, scope: !850)
!852 = !DILocation(line: 1791, column: 9, scope: !835)
!853 = !DILocation(line: 1795, column: 17, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 1795, column: 17)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 1794, column: 9)
!856 = !DILocation(line: 1795, column: 35, scope: !854)
!857 = !DILocation(line: 0, scope: !850)
!858 = !DILocation(line: 1802, column: 36, scope: !835)
!859 = !DILocation(line: 1803, column: 19, scope: !835)
!860 = !DILocation(line: 1803, column: 37, scope: !835)
!861 = !DILocation(line: 1802, column: 5, scope: !835)
!862 = !DILocation(line: 1804, column: 1, scope: !835)
!863 = distinct !DISubprogram(name: "select_model", scope: !3, file: !3, line: 1915, type: !442, scopeLine: 1917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!864 = !{!865}
!865 = !DILocalVariable(name: "val", arg: 1, scope: !863, file: !3, line: 1915, type: !10)
!866 = !DILocation(line: 0, scope: !863)
!867 = !DILocation(line: 1921, column: 5, scope: !863)
!868 = !DILocation(line: 0, scope: !869)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 1922, column: 9)
!870 = !DILocation(line: 1933, column: 1, scope: !863)
!871 = distinct !DISubprogram(name: "utility_tools", scope: !3, file: !3, line: 1949, type: !442, scopeLine: 1951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!872 = !{!873, !874}
!873 = !DILocalVariable(name: "val", arg: 1, scope: !871, file: !3, line: 1949, type: !10)
!874 = !DILocalVariable(name: "fd", scope: !871, file: !3, line: 1952, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !877, line: 7, baseType: !878)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !879, line: 49, size: 1728, elements: !880)
!879 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !896, !898, !899, !900, !903, !905, !907, !911, !914, !916, !919, !922, !923, !924, !927, !928}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !878, file: !879, line: 51, baseType: !21, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !878, file: !879, line: 54, baseType: !418, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !878, file: !879, line: 55, baseType: !418, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !878, file: !879, line: 56, baseType: !418, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !878, file: !879, line: 57, baseType: !418, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !878, file: !879, line: 58, baseType: !418, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !878, file: !879, line: 59, baseType: !418, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !878, file: !879, line: 60, baseType: !418, size: 64, offset: 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !878, file: !879, line: 61, baseType: !418, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !878, file: !879, line: 64, baseType: !418, size: 64, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !878, file: !879, line: 65, baseType: !418, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !878, file: !879, line: 66, baseType: !418, size: 64, offset: 704)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !878, file: !879, line: 68, baseType: !894, size: 64, offset: 768)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !879, line: 36, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !878, file: !879, line: 70, baseType: !897, size: 64, offset: 832)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !878, file: !879, line: 72, baseType: !21, size: 32, offset: 896)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !878, file: !879, line: 73, baseType: !21, size: 32, offset: 928)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !878, file: !879, line: 74, baseType: !901, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !902, line: 152, baseType: !10)
!902 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !878, file: !879, line: 77, baseType: !904, size: 16, offset: 1024)
!904 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !878, file: !879, line: 78, baseType: !906, size: 8, offset: 1040)
!906 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !878, file: !879, line: 79, baseType: !908, size: 8, offset: 1048)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 8, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 1)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !878, file: !879, line: 81, baseType: !912, size: 64, offset: 1088)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !879, line: 43, baseType: null)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !878, file: !879, line: 89, baseType: !915, size: 64, offset: 1152)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !902, line: 153, baseType: !10)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !878, file: !879, line: 91, baseType: !917, size: 64, offset: 1216)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !879, line: 37, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !878, file: !879, line: 92, baseType: !920, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !879, line: 38, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !878, file: !879, line: 93, baseType: !897, size: 64, offset: 1344)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !878, file: !879, line: 94, baseType: !379, size: 64, offset: 1408)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !878, file: !879, line: 95, baseType: !925, size: 64, offset: 1472)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !926, line: 46, baseType: !478)
!926 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !878, file: !879, line: 96, baseType: !21, size: 32, offset: 1536)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !878, file: !879, line: 98, baseType: !929, size: 160, offset: 1568)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 20)
!932 = !DILocation(line: 0, scope: !871)
!933 = !DILocation(line: 1957, column: 5, scope: !871)
!934 = !DILocation(line: 1961, column: 13, scope: !935)
!935 = distinct !DILexicalBlock(scope: !871, file: !3, line: 1958, column: 9)
!936 = !DILocation(line: 1964, column: 52, scope: !935)
!937 = !DILocation(line: 1964, column: 45, scope: !935)
!938 = !DILocation(line: 1964, column: 13, scope: !935)
!939 = !DILocation(line: 1968, column: 31, scope: !935)
!940 = !DILocation(line: 1968, column: 47, scope: !935)
!941 = !DILocation(line: 1969, column: 30, scope: !935)
!942 = !DILocation(line: 1969, column: 48, scope: !935)
!943 = !DILocation(line: 1968, column: 13, scope: !935)
!944 = !DILocation(line: 1972, column: 13, scope: !935)
!945 = !DILocation(line: 1973, column: 13, scope: !935)
!946 = !DILocation(line: 1975, column: 31, scope: !935)
!947 = !DILocation(line: 1975, column: 13, scope: !935)
!948 = !DILocation(line: 1976, column: 13, scope: !935)
!949 = !DILocation(line: 1978, column: 23, scope: !950)
!950 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1978, column: 17)
!951 = !DILocation(line: 1978, column: 55, scope: !950)
!952 = !DILocation(line: 1978, column: 17, scope: !935)
!953 = !DILocation(line: 1980, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1979, column: 17)
!955 = !DILocation(line: 1981, column: 21, scope: !954)
!956 = !DILocation(line: 1983, column: 13, scope: !935)
!957 = !DILocation(line: 1984, column: 13, scope: !935)
!958 = !DILocation(line: 1985, column: 13, scope: !935)
!959 = !DILocation(line: 1987, column: 13, scope: !935)
!960 = !DILocation(line: 1988, column: 9, scope: !935)
!961 = !DILocation(line: 1989, column: 1, scope: !871)
!962 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1292, type: !963, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!963 = !DISubroutineType(types: !964)
!964 = !{!21, !21, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!966 = !{!967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !986, !987}
!967 = !DILocalVariable(name: "argc", arg: 1, scope: !962, file: !3, line: 1292, type: !21)
!968 = !DILocalVariable(name: "argv", arg: 2, scope: !962, file: !3, line: 1292, type: !965)
!969 = !DILocalVariable(name: "i", scope: !962, file: !3, line: 1294, type: !10)
!970 = !DILocalVariable(name: "total_rad_time", scope: !962, file: !3, line: 1295, type: !10)
!971 = !DILocalVariable(name: "max_rad_time", scope: !962, file: !3, line: 1295, type: !10)
!972 = !DILocalVariable(name: "min_rad_time", scope: !962, file: !3, line: 1295, type: !10)
!973 = !DILocalVariable(name: "total_refine_time", scope: !962, file: !3, line: 1296, type: !10)
!974 = !DILocalVariable(name: "max_refine_time", scope: !962, file: !3, line: 1296, type: !10)
!975 = !DILocalVariable(name: "min_refine_time", scope: !962, file: !3, line: 1296, type: !10)
!976 = !DILocalVariable(name: "total_wait_time", scope: !962, file: !3, line: 1297, type: !10)
!977 = !DILocalVariable(name: "max_wait_time", scope: !962, file: !3, line: 1297, type: !10)
!978 = !DILocalVariable(name: "min_wait_time", scope: !962, file: !3, line: 1297, type: !10)
!979 = !DILocalVariable(name: "total_vertex_time", scope: !962, file: !3, line: 1298, type: !10)
!980 = !DILocalVariable(name: "max_vertex_time", scope: !962, file: !3, line: 1298, type: !10)
!981 = !DILocalVariable(name: "min_vertex_time", scope: !962, file: !3, line: 1298, type: !10)
!982 = !DILocalVariable(name: "i", scope: !983, file: !3, line: 1389, type: !10)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1388, column: 13)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1374, column: 9)
!985 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1373, column: 9)
!986 = !DILocalVariable(name: "Error", scope: !983, file: !3, line: 1389, type: !10)
!987 = !DILocalVariable(name: "aantal", scope: !988, file: !3, line: 1404, type: !21)
!988 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1404, column: 13)
!989 = !DILocation(line: 0, scope: !962)
!990 = !DILocation(line: 1301, column: 5, scope: !962)
!991 = !DILocation(line: 1302, column: 29, scope: !962)
!992 = !DILocation(line: 1302, column: 27, scope: !962)
!993 = !DILocation(line: 1305, column: 9, scope: !994)
!994 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1305, column: 9)
!995 = !DILocation(line: 1305, column: 20, scope: !994)
!996 = !DILocation(line: 1305, column: 9, scope: !962)
!997 = !DILocation(line: 1307, column: 13, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !3, line: 1306, column: 9)
!999 = !DILocation(line: 1308, column: 13, scope: !998)
!1000 = !DILocation(line: 1310, column: 9, scope: !998)
!1001 = !DILocation(line: 1313, column: 29, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1313, column: 5)
!1003 = !DILocation(line: 1313, column: 25, scope: !1002)
!1004 = !DILocation(line: 1313, column: 6, scope: !1002)
!1005 = !DILocation(line: 1313, column: 28, scope: !1002)
!1006 = !DILocation(line: 1316, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1316, column: 8)
!1008 = !DILocation(line: 1316, column: 18, scope: !1007)
!1009 = !DILocation(line: 1316, column: 8, scope: !962)
!1010 = !DILocation(line: 1322, column: 24, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !3, line: 1322, column: 14)
!1012 = !DILocation(line: 1322, column: 14, scope: !1007)
!1013 = !DILocation(line: 1328, column: 24, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 1328, column: 14)
!1015 = !DILocation(line: 1328, column: 14, scope: !1011)
!1016 = !DILocation(line: 0, scope: !1007)
!1017 = !DILocation(line: 1336, column: 25, scope: !962)
!1018 = !DILocation(line: 1336, column: 12, scope: !962)
!1019 = !DILocation(line: 1337, column: 16, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1337, column: 9)
!1021 = !DILocation(line: 1337, column: 9, scope: !962)
!1022 = !DILocation(line: 1339, column: 13, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 1338, column: 9)
!1024 = !DILocation(line: 1340, column: 13, scope: !1023)
!1025 = !DILocation(line: 1342, column: 5, scope: !962)
!1026 = !DILocation(line: 1344, column: 33, scope: !962)
!1027 = !DILocation(line: 1344, column: 46, scope: !962)
!1028 = !DILocation(line: 1344, column: 26, scope: !962)
!1029 = !DILocation(line: 1344, column: 12, scope: !962)
!1030 = !DILocation(line: 1345, column: 19, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 1345, column: 5)
!1032 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1345, column: 5)
!1033 = !DILocation(line: 1345, column: 5, scope: !1032)
!1034 = !DILocation(line: 1346, column: 32, scope: !1031)
!1035 = !DILocation(line: 1346, column: 19, scope: !1031)
!1036 = !DILocation(line: 1345, column: 21, scope: !1031)
!1037 = distinct !{!1037, !1033, !1038, !586, !587}
!1038 = !DILocation(line: 1346, column: 53, scope: !1032)
!1039 = !DILocation(line: 1346, column: 9, scope: !1031)
!1040 = !DILocation(line: 1345, column: 36, scope: !1031)
!1041 = !DILocation(line: 1349, column: 5, scope: !962)
!1042 = !DILocation(line: 1352, column: 5, scope: !962)
!1043 = !DILocation(line: 1373, column: 9, scope: !985)
!1044 = !DILocation(line: 1373, column: 9, scope: !962)
!1045 = !DILocation(line: 1378, column: 47, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1378, column: 13)
!1047 = !DILocation(line: 1378, column: 45, scope: !1046)
!1048 = !DILocation(line: 1381, column: 13, scope: !984)
!1049 = !DILocation(line: 1381, column: 27, scope: !984)
!1050 = !DILocation(line: 1382, column: 30, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 1382, column: 13)
!1052 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1382, column: 13)
!1053 = !DILocation(line: 1382, column: 28, scope: !1051)
!1054 = !DILocation(line: 1382, column: 13, scope: !1052)
!1055 = !DILocation(line: 1384, column: 39, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 1383, column: 17)
!1057 = !DILocation(line: 1384, column: 21, scope: !1056)
!1058 = !DILocation(line: 1384, column: 37, scope: !1056)
!1059 = !DILocation(line: 1382, column: 46, scope: !1051)
!1060 = distinct !{!1060, !1054, !1061, !586, !587}
!1061 = !DILocation(line: 1385, column: 17, scope: !1052)
!1062 = !DILocation(line: 1391, column: 2, scope: !983)
!1063 = !DILocation(line: 1392, column: 2, scope: !983)
!1064 = !DILocation(line: 0, scope: !983)
!1065 = !DILocation(line: 1393, column: 19, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 1393, column: 2)
!1067 = distinct !DILexicalBlock(scope: !983, file: !3, line: 1393, column: 2)
!1068 = !DILocation(line: 1393, column: 16, scope: !1066)
!1069 = !DILocation(line: 1393, column: 2, scope: !1067)
!1070 = !DILocation(line: 1393, column: 39, scope: !1066)
!1071 = !DILocation(line: 1393, column: 33, scope: !1066)
!1072 = distinct !{!1072, !1069, !1073, !586, !587}
!1073 = !DILocation(line: 1399, column: 2, scope: !1067)
!1074 = !DILocation(line: 1394, column: 46, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 1393, column: 43)
!1076 = !DILocation(line: 1394, column: 27, scope: !1075)
!1077 = !DILocation(line: 1394, column: 11, scope: !1075)
!1078 = !DILocation(line: 1395, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 1395, column: 7)
!1080 = !DILocation(line: 1395, column: 7, scope: !1075)
!1081 = !DILocation(line: 1396, column: 4, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 1395, column: 19)
!1083 = !DILocation(line: 1397, column: 4, scope: !1082)
!1084 = !DILocation(line: 1400, column: 2, scope: !983)
!1085 = !DILocation(line: 1402, column: 2, scope: !983)
!1086 = !DILocation(line: 1404, column: 25, scope: !988)
!1087 = !DILocation(line: 0, scope: !988)
!1088 = !DILocation(line: 1404, column: 39, scope: !988)
!1089 = !DILocation(line: 1404, column: 52, scope: !988)
!1090 = !DILocation(line: 1404, column: 69, scope: !988)
!1091 = !DILocation(line: 1404, column: 56, scope: !988)
!1092 = distinct !{!1092, !1088, !1093, !586, !587}
!1093 = !DILocation(line: 1404, column: 90, scope: !988)
!1094 = !DILocation(line: 1408, column: 45, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1408, column: 13)
!1096 = !DILocation(line: 1408, column: 43, scope: !1095)
!1097 = !DILocation(line: 1411, column: 13, scope: !984)
!1098 = !DILocation(line: 1413, column: 13, scope: !984)
!1099 = !DILocation(line: 1415, column: 17, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !984, file: !3, line: 1415, column: 17)
!1101 = !DILocation(line: 1415, column: 17, scope: !984)
!1102 = !DILocation(line: 1416, column: 17, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 1415, column: 26)
!1104 = !DILocation(line: 1418, column: 17, scope: !1103)
!1105 = !DILocation(line: 1419, column: 17, scope: !1103)
!1106 = !DILocation(line: 1420, column: 33, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 1420, column: 17)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 1420, column: 17)
!1109 = !DILocation(line: 1420, column: 31, scope: !1107)
!1110 = !DILocation(line: 1420, column: 17, scope: !1108)
!1111 = !DILocation(line: 1421, column: 59, scope: !1107)
!1112 = !DILocation(line: 1421, column: 70, scope: !1107)
!1113 = !DILocation(line: 1421, column: 91, scope: !1107)
!1114 = !DILocation(line: 1421, column: 115, scope: !1107)
!1115 = !DILocation(line: 1421, column: 137, scope: !1107)
!1116 = !DILocation(line: 1421, column: 21, scope: !1107)
!1117 = !DILocation(line: 1420, column: 48, scope: !1107)
!1118 = distinct !{!1118, !1110, !1119, !586, !587}
!1119 = !DILocation(line: 1421, column: 148, scope: !1108)
!1120 = !DILocation(line: 1423, column: 34, scope: !1103)
!1121 = !DILocation(line: 1423, column: 45, scope: !1103)
!1122 = !DILocation(line: 1427, column: 48, scope: !1103)
!1123 = !DILocation(line: 1431, column: 46, scope: !1103)
!1124 = !DILocation(line: 1435, column: 48, scope: !1103)
!1125 = !DILocation(line: 1439, column: 31, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 1439, column: 17)
!1127 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 1439, column: 17)
!1128 = !DILocation(line: 1439, column: 17, scope: !1127)
!1129 = !DILocation(line: 1440, column: 39, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1439, column: 52)
!1131 = !DILocation(line: 1440, column: 50, scope: !1130)
!1132 = !DILocation(line: 1440, column: 36, scope: !1130)
!1133 = !DILocation(line: 1441, column: 25, scope: !1130)
!1134 = !DILocation(line: 1443, column: 25, scope: !1130)
!1135 = !DILocation(line: 1446, column: 53, scope: !1130)
!1136 = !DILocation(line: 1446, column: 39, scope: !1130)
!1137 = !DILocation(line: 1447, column: 25, scope: !1130)
!1138 = !DILocation(line: 1449, column: 25, scope: !1130)
!1139 = !DILocation(line: 1452, column: 51, scope: !1130)
!1140 = !DILocation(line: 1452, column: 37, scope: !1130)
!1141 = !DILocation(line: 1453, column: 25, scope: !1130)
!1142 = !DILocation(line: 1455, column: 25, scope: !1130)
!1143 = !DILocation(line: 1458, column: 53, scope: !1130)
!1144 = !DILocation(line: 1458, column: 39, scope: !1130)
!1145 = !DILocation(line: 1459, column: 25, scope: !1130)
!1146 = !DILocation(line: 1461, column: 25, scope: !1130)
!1147 = !DILocation(line: 1439, column: 48, scope: !1126)
!1148 = distinct !{!1148, !1128, !1149, !586, !587}
!1149 = !DILocation(line: 1463, column: 17, scope: !1127)
!1150 = !DILocation(line: 0, scope: !1103)
!1151 = !DILocation(line: 1465, column: 17, scope: !1103)
!1152 = !DILocation(line: 1466, column: 17, scope: !1103)
!1153 = !DILocation(line: 1467, column: 70, scope: !1103)
!1154 = !DILocation(line: 1467, column: 114, scope: !1103)
!1155 = !DILocation(line: 1467, column: 95, scope: !1103)
!1156 = !DILocation(line: 1467, column: 61, scope: !1103)
!1157 = !DILocation(line: 1467, column: 140, scope: !1103)
!1158 = !DILocation(line: 1467, column: 168, scope: !1103)
!1159 = !DILocation(line: 1467, column: 131, scope: !1103)
!1160 = !DILocation(line: 1467, column: 213, scope: !1103)
!1161 = !DILocation(line: 1467, column: 239, scope: !1103)
!1162 = !DILocation(line: 1467, column: 204, scope: !1103)
!1163 = !DILocation(line: 1467, column: 284, scope: !1103)
!1164 = !DILocation(line: 1467, column: 312, scope: !1103)
!1165 = !DILocation(line: 1467, column: 275, scope: !1103)
!1166 = !DILocation(line: 1467, column: 17, scope: !1103)
!1167 = !DILocation(line: 1468, column: 17, scope: !1103)
!1168 = !DILocation(line: 1470, column: 13, scope: !1103)
!1169 = !DILocation(line: 1474, column: 31, scope: !984)
!1170 = !DILocation(line: 1474, column: 13, scope: !984)
!1171 = !DILocation(line: 1475, column: 9, scope: !984)
!1172 = !DILocation(line: 1482, column: 13, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !985, file: !3, line: 1477, column: 9)
!1174 = !DILocation(line: 1485, column: 6, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !962, file: !3, line: 1485, column: 5)
!1176 = distinct !DISubprogram(name: "parse_args", scope: !3, file: !3, line: 2351, type: !1177, scopeLine: 2352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !21, !965}
!1179 = !{!1180, !1181, !1182}
!1180 = !DILocalVariable(name: "argc", arg: 1, scope: !1176, file: !3, line: 2351, type: !21)
!1181 = !DILocalVariable(name: "argv", arg: 2, scope: !1176, file: !3, line: 2351, type: !965)
!1182 = !DILocalVariable(name: "cnt", scope: !1176, file: !3, line: 2353, type: !10)
!1183 = !DILocation(line: 0, scope: !1176)
!1184 = !DILocation(line: 2356, column: 24, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 2356, column: 5)
!1186 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 2356, column: 5)
!1187 = !DILocation(line: 2356, column: 5, scope: !1186)
!1188 = !DILocation(line: 2358, column: 25, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 2358, column: 17)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 2357, column: 9)
!1191 = !DILocation(line: 2358, column: 17, scope: !1189)
!1192 = !DILocation(line: 2358, column: 43, scope: !1189)
!1193 = !DILocation(line: 2358, column: 17, scope: !1190)
!1194 = !DILocation(line: 2359, column: 30, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 2358, column: 50)
!1196 = !DILocation(line: 2359, column: 25, scope: !1195)
!1197 = !DILocation(line: 2359, column: 17, scope: !1195)
!1198 = !DILocation(line: 2360, column: 32, scope: !1195)
!1199 = !DILocation(line: 2360, column: 30, scope: !1195)
!1200 = !DILocation(line: 2361, column: 13, scope: !1195)
!1201 = !DILocation(line: 2362, column: 22, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 2362, column: 22)
!1203 = !DILocation(line: 2362, column: 49, scope: !1202)
!1204 = !DILocation(line: 2362, column: 22, scope: !1189)
!1205 = !DILocation(line: 2363, column: 30, scope: !1202)
!1206 = !DILocation(line: 2363, column: 25, scope: !1202)
!1207 = !DILocation(line: 2363, column: 17, scope: !1202)
!1208 = !DILocation(line: 2364, column: 22, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 2364, column: 22)
!1210 = !DILocation(line: 2364, column: 49, scope: !1209)
!1211 = !DILocation(line: 2364, column: 22, scope: !1202)
!1212 = !DILocation(line: 2365, column: 30, scope: !1209)
!1213 = !DILocation(line: 2365, column: 25, scope: !1209)
!1214 = !DILocation(line: 2365, column: 17, scope: !1209)
!1215 = !DILocation(line: 2366, column: 22, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1209, file: !3, line: 2366, column: 22)
!1217 = !DILocation(line: 2366, column: 49, scope: !1216)
!1218 = !DILocation(line: 2366, column: 22, scope: !1209)
!1219 = !DILocation(line: 2367, column: 30, scope: !1216)
!1220 = !DILocation(line: 2367, column: 25, scope: !1216)
!1221 = !DILocation(line: 2367, column: 17, scope: !1216)
!1222 = !DILocation(line: 2368, column: 22, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 2368, column: 22)
!1224 = !DILocation(line: 2368, column: 49, scope: !1223)
!1225 = !DILocation(line: 2368, column: 22, scope: !1216)
!1226 = !DILocation(line: 2369, column: 30, scope: !1223)
!1227 = !DILocation(line: 2369, column: 25, scope: !1223)
!1228 = !DILocation(line: 2369, column: 17, scope: !1223)
!1229 = !DILocation(line: 2370, column: 22, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 2370, column: 22)
!1231 = !DILocation(line: 2370, column: 49, scope: !1230)
!1232 = !DILocation(line: 2370, column: 22, scope: !1223)
!1233 = !DILocation(line: 2371, column: 30, scope: !1230)
!1234 = !DILocation(line: 2371, column: 25, scope: !1230)
!1235 = !DILocation(line: 2371, column: 17, scope: !1230)
!1236 = !DILocation(line: 2372, column: 22, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 2372, column: 22)
!1238 = !DILocation(line: 2372, column: 49, scope: !1237)
!1239 = !DILocation(line: 2372, column: 22, scope: !1230)
!1240 = !DILocation(line: 2373, column: 30, scope: !1237)
!1241 = !DILocation(line: 2373, column: 25, scope: !1237)
!1242 = !DILocation(line: 2373, column: 17, scope: !1237)
!1243 = !DILocation(line: 2375, column: 22, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 2375, column: 22)
!1245 = !DILocation(line: 2375, column: 52, scope: !1244)
!1246 = !DILocation(line: 2375, column: 22, scope: !1237)
!1247 = !DILocation(line: 2376, column: 28, scope: !1244)
!1248 = !DILocation(line: 2376, column: 17, scope: !1244)
!1249 = !DILocation(line: 2377, column: 22, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 2377, column: 22)
!1251 = !DILocation(line: 2377, column: 54, scope: !1250)
!1252 = !DILocation(line: 2377, column: 22, scope: !1244)
!1253 = !DILocation(line: 2378, column: 30, scope: !1250)
!1254 = !DILocation(line: 2378, column: 17, scope: !1250)
!1255 = !DILocation(line: 2379, column: 22, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 2379, column: 22)
!1257 = !DILocation(line: 2379, column: 48, scope: !1256)
!1258 = !DILocation(line: 2379, column: 22, scope: !1250)
!1259 = !DILocation(line: 2380, column: 25, scope: !1256)
!1260 = !DILocation(line: 2380, column: 17, scope: !1256)
!1261 = !DILocation(line: 2381, column: 22, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 2381, column: 22)
!1263 = !DILocation(line: 2381, column: 51, scope: !1262)
!1264 = !DILocation(line: 2381, column: 22, scope: !1256)
!1265 = !DILocation(line: 2382, column: 32, scope: !1262)
!1266 = !DILocation(line: 2382, column: 17, scope: !1262)
!1267 = !DILocation(line: 2383, column: 22, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 2383, column: 22)
!1269 = !DILocation(line: 2383, column: 56, scope: !1268)
!1270 = !DILocation(line: 2383, column: 22, scope: !1262)
!1271 = !DILocation(line: 2384, column: 32, scope: !1268)
!1272 = !DILocation(line: 2384, column: 17, scope: !1268)
!1273 = !DILocation(line: 2385, column: 23, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 2385, column: 21)
!1275 = !DILocation(line: 2385, column: 52, scope: !1274)
!1276 = !DILocation(line: 2385, column: 59, scope: !1274)
!1277 = !DILocation(line: 2385, column: 64, scope: !1274)
!1278 = !DILocation(line: 2385, column: 90, scope: !1274)
!1279 = !DILocation(line: 2385, column: 97, scope: !1274)
!1280 = !DILocation(line: 2385, column: 102, scope: !1274)
!1281 = !DILocation(line: 2385, column: 128, scope: !1274)
!1282 = !DILocation(line: 2385, column: 21, scope: !1268)
!1283 = !DILocation(line: 2386, column: 17, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 2385, column: 140)
!1285 = !DILocation(line: 2387, column: 17, scope: !1284)
!1286 = !DILocation(line: 0, scope: !1186)
!1287 = !DILocation(line: 2356, column: 36, scope: !1185)
!1288 = distinct !{!1288, !1187, !1289, !586, !587}
!1289 = !DILocation(line: 2389, column: 9, scope: !1186)
!1290 = !DILocation(line: 2393, column: 10, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 2393, column: 9)
!1292 = !DILocation(line: 2393, column: 28, scope: !1291)
!1293 = !DILocation(line: 2395, column: 22, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 2394, column: 9)
!1295 = !DILocation(line: 2395, column: 13, scope: !1294)
!1296 = !DILocation(line: 2397, column: 13, scope: !1294)
!1297 = !DILocation(line: 2399, column: 10, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 2399, column: 9)
!1299 = !DILocation(line: 2399, column: 28, scope: !1298)
!1300 = !DILocation(line: 2401, column: 22, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !3, line: 2400, column: 9)
!1302 = !DILocation(line: 2401, column: 13, scope: !1301)
!1303 = !DILocation(line: 2403, column: 13, scope: !1301)
!1304 = !DILocation(line: 2406, column: 9, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 2406, column: 9)
!1306 = !DILocation(line: 2406, column: 22, scope: !1305)
!1307 = !DILocation(line: 2406, column: 9, scope: !1176)
!1308 = !DILocation(line: 2408, column: 22, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 2407, column: 9)
!1310 = !DILocation(line: 2408, column: 13, scope: !1309)
!1311 = !DILocation(line: 2409, column: 13, scope: !1309)
!1312 = !DILocation(line: 2411, column: 9, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 2411, column: 9)
!1314 = !DILocation(line: 2411, column: 19, scope: !1313)
!1315 = !DILocation(line: 2411, column: 9, scope: !1176)
!1316 = !DILocation(line: 2413, column: 22, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 2412, column: 9)
!1318 = !DILocation(line: 2413, column: 13, scope: !1317)
!1319 = !DILocation(line: 2414, column: 13, scope: !1317)
!1320 = !DILocation(line: 2416, column: 1, scope: !1176)
!1321 = !DISubprogram(name: "g_init", scope: !414, file: !414, line: 67, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1322 = !{}
!1323 = !DISubprogram(name: "setup_view", scope: !3, file: !3, line: 1054, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !81, !81, !81, !81, !10}
!1326 = !DISubprogram(name: "pthread_self", scope: !1327, file: !1327, line: 251, type: !1328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1327 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!477}
!1330 = distinct !DISubprogram(name: "init_global", scope: !3, file: !3, line: 2291, type: !442, scopeLine: 2292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1331)
!1331 = !{!1332}
!1332 = !DILocalVariable(name: "process_id", arg: 1, scope: !1330, file: !3, line: 2291, type: !10)
!1333 = !DILocation(line: 0, scope: !1330)
!1334 = !DILocation(line: 2294, column: 5, scope: !1330)
!1335 = !DILocation(line: 2294, column: 19, scope: !1330)
!1336 = !DILocation(line: 2295, column: 5, scope: !1330)
!1337 = !DILocation(line: 2295, column: 13, scope: !1330)
!1338 = !DILocation(line: 2295, column: 22, scope: !1330)
!1339 = !DILocation(line: 2296, column: 35, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2296, column: 5)
!1341 = !DILocation(line: 2296, column: 6, scope: !1340)
!1342 = !DILocation(line: 2297, column: 27, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2297, column: 5)
!1344 = !DILocation(line: 2297, column: 35, scope: !1343)
!1345 = !DILocation(line: 2297, column: 6, scope: !1343)
!1346 = !DILocation(line: 2300, column: 27, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2300, column: 5)
!1348 = !DILocation(line: 2300, column: 35, scope: !1347)
!1349 = !DILocation(line: 2300, column: 6, scope: !1347)
!1350 = !DILocation(line: 2301, column: 5, scope: !1330)
!1351 = !DILocation(line: 2301, column: 13, scope: !1330)
!1352 = !DILocation(line: 2305, column: 13, scope: !1330)
!1353 = !DILocation(line: 2302, column: 33, scope: !1330)
!1354 = !DILocation(line: 2305, column: 28, scope: !1330)
!1355 = !DILocation(line: 2306, column: 26, scope: !1330)
!1356 = !DILocation(line: 2306, column: 28, scope: !1330)
!1357 = !DILocation(line: 2307, column: 26, scope: !1330)
!1358 = !DILocation(line: 2307, column: 28, scope: !1330)
!1359 = !DILocation(line: 2308, column: 13, scope: !1330)
!1360 = !DILocation(line: 2308, column: 30, scope: !1330)
!1361 = !DILocation(line: 2309, column: 13, scope: !1330)
!1362 = !DILocation(line: 2309, column: 29, scope: !1330)
!1363 = !DILocation(line: 2312, column: 35, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2312, column: 5)
!1365 = !DILocation(line: 2312, column: 6, scope: !1364)
!1366 = !DILocation(line: 2313, column: 5, scope: !1330)
!1367 = !DILocation(line: 2313, column: 13, scope: !1330)
!1368 = !DILocation(line: 2318, column: 32, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2317, column: 5)
!1370 = !DILocation(line: 2314, column: 31, scope: !1330)
!1371 = !DILocation(line: 2318, column: 2, scope: !1369)
!1372 = !DILocation(line: 2319, column: 23, scope: !1369)
!1373 = !DILocation(line: 2319, column: 40, scope: !1369)
!1374 = !DILocation(line: 2319, column: 2, scope: !1369)
!1375 = !DILocation(line: 2320, column: 3, scope: !1369)
!1376 = !DILocation(line: 2320, column: 20, scope: !1369)
!1377 = !DILocation(line: 2320, column: 30, scope: !1369)
!1378 = !DILocation(line: 2322, column: 35, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2322, column: 5)
!1380 = !DILocation(line: 2322, column: 6, scope: !1379)
!1381 = !DILocation(line: 2323, column: 5, scope: !1330)
!1382 = !DILocation(line: 2323, column: 13, scope: !1330)
!1383 = !DILocation(line: 2323, column: 24, scope: !1330)
!1384 = !DILocation(line: 2326, column: 13, scope: !1330)
!1385 = !DILocation(line: 2326, column: 26, scope: !1330)
!1386 = !DILocation(line: 2327, column: 35, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 2327, column: 5)
!1388 = !DILocation(line: 2327, column: 6, scope: !1387)
!1389 = !DILocation(line: 2330, column: 5, scope: !1330)
!1390 = !DILocation(line: 2333, column: 5, scope: !1330)
!1391 = !DILocation(line: 2334, column: 5, scope: !1330)
!1392 = !DILocation(line: 2335, column: 5, scope: !1330)
!1393 = !DILocation(line: 2336, column: 5, scope: !1330)
!1394 = !DILocation(line: 2337, column: 5, scope: !1330)
!1395 = !DILocation(line: 2340, column: 5, scope: !1330)
!1396 = !DILocation(line: 2342, column: 1, scope: !1330)
!1397 = !DISubprogram(name: "init_sharedlock", scope: !3, file: !3, line: 1157, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1398 = !DISubprogram(name: "init_visibility_module", scope: !3, file: !3, line: 1163, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1399 = !DISubprogram(name: "time", scope: !3, file: !3, line: 1378, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!1402, !1405}
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !1403, line: 7, baseType: !1404)
!1403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !902, line: 160, baseType: !10)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!1406 = !DISubprogram(name: "assign_taskq", scope: !3, file: !3, line: 721, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!10, !10}
!1409 = !DISubprogram(name: "pthread_mutex_lock", scope: !1327, file: !1327, line: 738, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!21, !1412}
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!1413 = !DISubprogram(name: "pthread_create", scope: !1327, file: !1327, line: 198, type: !1414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!21, !1416, !1418, !376, !1429}
!1416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_attr_t", file: !13, line: 62, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "pthread_attr_t", file: !13, line: 56, size: 448, elements: !1423)
!1423 = !{!1424, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1422, file: !13, line: 58, baseType: !1425, size: 448)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 448, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 56)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1422, file: !13, line: 59, baseType: !10, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !379)
!1430 = distinct !DISubprogram(name: "radiosity", scope: !3, file: !3, line: 2013, type: !1431, scopeLine: 2014, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null}
!1433 = !{!1434, !1435, !1436, !1437, !1438}
!1434 = !DILocalVariable(name: "process_id", scope: !1430, file: !3, line: 2015, type: !10)
!1435 = !DILocalVariable(name: "rad_start", scope: !1430, file: !3, line: 2016, type: !10)
!1436 = !DILocalVariable(name: "refine_done", scope: !1430, file: !3, line: 2016, type: !10)
!1437 = !DILocalVariable(name: "vertex_start", scope: !1430, file: !3, line: 2016, type: !10)
!1438 = !DILocalVariable(name: "vertex_done", scope: !1430, file: !3, line: 2016, type: !10)
!1439 = !DILocation(line: 2018, column: 27, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2018, column: 5)
!1441 = !DILocation(line: 2018, column: 35, scope: !1440)
!1442 = !DILocation(line: 2018, column: 6, scope: !1440)
!1443 = !DILocation(line: 2019, column: 18, scope: !1430)
!1444 = !DILocation(line: 2019, column: 31, scope: !1430)
!1445 = !DILocation(line: 0, scope: !1430)
!1446 = !DILocation(line: 2020, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2020, column: 5)
!1448 = !DILocation(line: 2020, column: 37, scope: !1447)
!1449 = !DILocation(line: 2020, column: 6, scope: !1447)
!1450 = !DILocation(line: 2021, column: 31, scope: !1430)
!1451 = !DILocation(line: 2021, column: 29, scope: !1430)
!1452 = !DILocation(line: 2023, column: 21, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2023, column: 9)
!1454 = !DILocation(line: 2023, column: 27, scope: !1453)
!1455 = !DILocation(line: 2024, column: 37, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !3, line: 2024, column: 9)
!1457 = !DILocation(line: 2024, column: 45, scope: !1456)
!1458 = !DILocation(line: 2034, column: 5, scope: !1430)
!1459 = !DILocation(line: 2035, column: 5, scope: !1430)
!1460 = !DILocation(line: 2038, column: 12, scope: !1430)
!1461 = !DILocation(line: 2038, column: 5, scope: !1430)
!1462 = !DILocation(line: 2042, column: 23, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 2041, column: 13)
!1464 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2039, column: 9)
!1465 = !DILocation(line: 2042, column: 31, scope: !1463)
!1466 = !DILocation(line: 2042, column: 1, scope: !1463)
!1467 = !DILocation(line: 2043, column: 2, scope: !1463)
!1468 = !DILocation(line: 2043, column: 19, scope: !1463)
!1469 = !DILocation(line: 2043, column: 29, scope: !1463)
!1470 = !DILocation(line: 2044, column: 5, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !3, line: 2044, column: 5)
!1472 = !DILocation(line: 2044, column: 38, scope: !1471)
!1473 = !DILocation(line: 2044, column: 34, scope: !1471)
!1474 = !DILocation(line: 2044, column: 5, scope: !1463)
!1475 = !DILocation(line: 2045, column: 31, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 2044, column: 53)
!1477 = !DILocation(line: 2046, column: 45, scope: !1476)
!1478 = !DILocation(line: 2046, column: 2, scope: !1476)
!1479 = !DILocation(line: 2047, column: 1, scope: !1476)
!1480 = !DILocation(line: 2044, column: 14, scope: !1471)
!1481 = !DILocation(line: 2048, column: 40, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 2047, column: 8)
!1483 = !DILocation(line: 2048, column: 2, scope: !1482)
!1484 = !DILocation(line: 2050, column: 25, scope: !1463)
!1485 = !DILocation(line: 2050, column: 33, scope: !1463)
!1486 = !DILocation(line: 2050, column: 1, scope: !1463)
!1487 = !DILocation(line: 2054, column: 13, scope: !1464)
!1488 = distinct !{!1488, !1461, !1489, !586, !587}
!1489 = !DILocation(line: 2055, column: 9, scope: !1430)
!1490 = !DILocation(line: 2057, column: 27, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2057, column: 9)
!1492 = !DILocation(line: 2058, column: 39, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1491, file: !3, line: 2058, column: 9)
!1494 = !DILocation(line: 2058, column: 47, scope: !1493)
!1495 = !DILocation(line: 2061, column: 23, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2060, column: 5)
!1497 = !DILocation(line: 2061, column: 31, scope: !1496)
!1498 = !DILocation(line: 2061, column: 1, scope: !1496)
!1499 = !DILocation(line: 2062, column: 2, scope: !1496)
!1500 = !DILocation(line: 2062, column: 19, scope: !1496)
!1501 = !DILocation(line: 2062, column: 29, scope: !1496)
!1502 = !DILocation(line: 2063, column: 5, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 2063, column: 5)
!1504 = !DILocation(line: 2063, column: 38, scope: !1503)
!1505 = !DILocation(line: 2063, column: 34, scope: !1503)
!1506 = !DILocation(line: 2063, column: 5, scope: !1496)
!1507 = !DILocation(line: 2064, column: 31, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 2063, column: 53)
!1509 = !DILocation(line: 2065, column: 45, scope: !1508)
!1510 = !DILocation(line: 2065, column: 2, scope: !1508)
!1511 = !DILocation(line: 2066, column: 1, scope: !1508)
!1512 = !DILocation(line: 2063, column: 14, scope: !1503)
!1513 = !DILocation(line: 2067, column: 40, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 2066, column: 8)
!1515 = !DILocation(line: 2067, column: 2, scope: !1514)
!1516 = !DILocation(line: 2069, column: 25, scope: !1496)
!1517 = !DILocation(line: 2069, column: 33, scope: !1496)
!1518 = !DILocation(line: 2069, column: 1, scope: !1496)
!1519 = !DILocation(line: 2072, column: 27, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2072, column: 9)
!1521 = !DILocation(line: 2073, column: 40, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 2073, column: 9)
!1523 = !DILocation(line: 2073, column: 48, scope: !1522)
!1524 = !DILocation(line: 2076, column: 5, scope: !1430)
!1525 = !DILocation(line: 2077, column: 5, scope: !1430)
!1526 = !DILocation(line: 2080, column: 5, scope: !1430)
!1527 = !DILocation(line: 2081, column: 5, scope: !1430)
!1528 = !DILocation(line: 2083, column: 27, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2083, column: 9)
!1530 = !DILocation(line: 2084, column: 39, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 2084, column: 9)
!1532 = !DILocation(line: 2084, column: 47, scope: !1531)
!1533 = !DILocation(line: 2086, column: 27, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 2086, column: 9)
!1535 = !DILocation(line: 2087, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 2086, column: 41)
!1537 = !DILocation(line: 2087, column: 39, scope: !1536)
!1538 = !DILocation(line: 2088, column: 52, scope: !1536)
!1539 = !DILocation(line: 2088, column: 9, scope: !1536)
!1540 = !DILocation(line: 2088, column: 29, scope: !1536)
!1541 = !DILocation(line: 2088, column: 38, scope: !1536)
!1542 = !DILocation(line: 2089, column: 55, scope: !1536)
!1543 = !DILocation(line: 2089, column: 9, scope: !1536)
!1544 = !DILocation(line: 2089, column: 29, scope: !1536)
!1545 = !DILocation(line: 2089, column: 41, scope: !1536)
!1546 = !DILocation(line: 2090, column: 55, scope: !1536)
!1547 = !DILocation(line: 2090, column: 9, scope: !1536)
!1548 = !DILocation(line: 2090, column: 29, scope: !1536)
!1549 = !DILocation(line: 2090, column: 41, scope: !1536)
!1550 = !DILocation(line: 2091, column: 54, scope: !1536)
!1551 = !DILocation(line: 2091, column: 9, scope: !1536)
!1552 = !DILocation(line: 2091, column: 29, scope: !1536)
!1553 = !DILocation(line: 2091, column: 39, scope: !1536)
!1554 = !DILocation(line: 2092, column: 5, scope: !1536)
!1555 = !DILocation(line: 2094, column: 1, scope: !1430)
!1556 = !DISubprogram(name: "pthread_mutex_unlock", scope: !1327, file: !1327, line: 756, type: !1410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1557 = !DISubprogram(name: "pthread_join", scope: !1327, file: !1327, line: 215, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!21, !477, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1561 = !DISubprogram(name: "print_running_time", scope: !3, file: !3, line: 1130, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1562 = !DISubprogram(name: "print_statistics", scope: !3, file: !3, line: 1124, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !875, !10}
!1565 = !DISubprogram(name: "g_start", scope: !414, file: !414, line: 68, type: !1566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1568, !10, !1569, !10, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!1571 = distinct !DISubprogram(name: "expose_callback", scope: !3, file: !3, line: 1998, type: !1431, scopeLine: 1999, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1572 = !DILocation(line: 2001, column: 20, scope: !1571)
!1573 = !DILocation(line: 2001, column: 36, scope: !1571)
!1574 = !DILocation(line: 2002, column: 19, scope: !1571)
!1575 = !DILocation(line: 2002, column: 37, scope: !1571)
!1576 = !DILocation(line: 2001, column: 5, scope: !1571)
!1577 = !DILocation(line: 2003, column: 1, scope: !1571)
!1578 = !DISubprogram(name: "display_scene", scope: !3, file: !3, line: 1055, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !10, !10, !10, !10, !10}
!1581 = !DISubprogram(name: "init_modeling_tasks", scope: !3, file: !3, line: 541, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1582 = !DISubprogram(name: "process_tasks", scope: !3, file: !3, line: 704, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1583 = distinct !DISubprogram(name: "init_ray_tasks", scope: !3, file: !3, line: 2124, type: !1407, scopeLine: 2125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1584)
!1584 = !{!1585, !1586}
!1585 = !DILocalVariable(name: "process_id", arg: 1, scope: !1583, file: !3, line: 2124, type: !10)
!1586 = !DILocalVariable(name: "conv", scope: !1583, file: !3, line: 2126, type: !10)
!1587 = !DILocation(line: 0, scope: !1583)
!1588 = !DILocation(line: 2129, column: 27, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2129, column: 5)
!1590 = !DILocation(line: 2129, column: 35, scope: !1589)
!1591 = !DILocation(line: 2129, column: 6, scope: !1589)
!1592 = !DILocation(line: 2130, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2130, column: 9)
!1594 = !DILocation(line: 2130, column: 9, scope: !1583)
!1595 = !DILocation(line: 2132, column: 20, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 2131, column: 9)
!1597 = !DILocation(line: 2132, column: 28, scope: !1596)
!1598 = !DILocation(line: 2133, column: 45, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 2133, column: 13)
!1600 = !DILocation(line: 2133, column: 14, scope: !1599)
!1601 = !DILocation(line: 2134, column: 26, scope: !1596)
!1602 = !DILocation(line: 2134, column: 13, scope: !1596)
!1603 = !DILocation(line: 2138, column: 12, scope: !1583)
!1604 = !DILocation(line: 2139, column: 5, scope: !1583)
!1605 = !DILocation(line: 2139, column: 13, scope: !1583)
!1606 = !DILocation(line: 2139, column: 23, scope: !1583)
!1607 = !DILocation(line: 2142, column: 13, scope: !1583)
!1608 = !DILocation(line: 2142, column: 41, scope: !1583)
!1609 = !DILocation(line: 2149, column: 13, scope: !1583)
!1610 = !DILocation(line: 2144, column: 28, scope: !1583)
!1611 = !DILocation(line: 2149, column: 28, scope: !1583)
!1612 = !DILocation(line: 2150, column: 37, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2150, column: 5)
!1614 = !DILocation(line: 2150, column: 6, scope: !1613)
!1615 = !DILocation(line: 2153, column: 9, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1583, file: !3, line: 2153, column: 9)
!1617 = !DILocation(line: 2153, column: 9, scope: !1583)
!1618 = !DILocation(line: 2179, column: 5, scope: !1583)
!1619 = !DILocation(line: 2181, column: 5, scope: !1583)
!1620 = !DILocation(line: 2182, column: 1, scope: !1583)
!1621 = !DISubprogram(name: "pthread_cond_broadcast", scope: !1327, file: !1327, line: 978, type: !1622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!21, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1625 = !DISubprogram(name: "pthread_cond_wait", scope: !1327, file: !1327, line: 986, type: !1626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!21, !1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1624)
!1629 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1412)
!1630 = distinct !DISubprogram(name: "init_radavg_tasks", scope: !3, file: !3, line: 2265, type: !1631, scopeLine: 2266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{null, !10, !10}
!1633 = !{!1634, !1635}
!1634 = !DILocalVariable(name: "mode", arg: 1, scope: !1630, file: !3, line: 2265, type: !10)
!1635 = !DILocalVariable(name: "process_id", arg: 2, scope: !1630, file: !3, line: 2265, type: !10)
!1636 = !DILocation(line: 0, scope: !1630)
!1637 = !DILocation(line: 2269, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 2269, column: 9)
!1639 = !DILocation(line: 2269, column: 9, scope: !1630)
!1640 = !DILocation(line: 2273, column: 5, scope: !1630)
!1641 = !DILocation(line: 2274, column: 1, scope: !1630)
!1642 = !DISubprogram(name: "g_clear", scope: !414, file: !414, line: 74, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1643 = distinct !DISubprogram(name: "change_view", scope: !3, file: !3, line: 1817, type: !1431, scopeLine: 1818, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1644 = !DILocation(line: 1820, column: 24, scope: !1643)
!1645 = !DILocation(line: 1820, column: 17, scope: !1643)
!1646 = !DILocation(line: 1820, column: 49, scope: !1643)
!1647 = !DILocation(line: 1820, column: 42, scope: !1643)
!1648 = !DILocation(line: 1821, column: 32, scope: !1643)
!1649 = !DILocation(line: 1820, column: 5, scope: !1643)
!1650 = !DILocation(line: 1824, column: 20, scope: !1643)
!1651 = !DILocation(line: 1824, column: 36, scope: !1643)
!1652 = !DILocation(line: 1825, column: 19, scope: !1643)
!1653 = !DILocation(line: 1825, column: 37, scope: !1643)
!1654 = !DILocation(line: 1824, column: 5, scope: !1643)
!1655 = !DILocation(line: 1826, column: 1, scope: !1643)
!1656 = !DISubprogram(name: "ps_open", scope: !1657, file: !1657, line: 39, type: !1658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1657 = !DIFile(filename: "./glibps/pslib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "47df8265542401f634629448fc73856a")
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!10, !418}
!1660 = !DISubprogram(name: "ps_setup_view", scope: !1657, file: !1657, line: 47, type: !1661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !81, !81, !81, !81}
!1663 = !DISubprogram(name: "ps_display_scene", scope: !3, file: !3, line: 1064, type: !1579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1664 = !DISubprogram(name: "ps_close", scope: !1657, file: !1657, line: 40, type: !1431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1665 = !DISubprogram(name: "perror", scope: !1666, file: !1666, line: 775, type: !1667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1666 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{null, !1669}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!1671 = !DISubprogram(name: "fclose", scope: !1666, file: !1666, line: 213, type: !1672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!21, !875}
!1674 = !DISubprogram(name: "clear_radiosity", scope: !3, file: !3, line: 1133, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1675 = !DISubprogram(name: "check_task_counter", scope: !3, file: !3, line: 720, type: !1676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!10}
!1678 = !DISubprogram(name: "radiosity_converged", scope: !3, file: !3, line: 1083, type: !1407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1679 = !DISubprogram(name: "foreach_patch_in_bsp", scope: !3, file: !3, line: 452, type: !1680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{null, !212, !10, !10}
!1682 = distinct !DISubprogram(name: "_init_ray_tasks_static", scope: !3, file: !3, line: 2185, type: !1683, scopeLine: 2186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1685)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{null, !100, !10, !10}
!1685 = !{!1686, !1687, !1688}
!1686 = !DILocalVariable(name: "p", arg: 1, scope: !1682, file: !3, line: 2185, type: !100)
!1687 = !DILocalVariable(name: "dummy", arg: 2, scope: !1682, file: !3, line: 2185, type: !10)
!1688 = !DILocalVariable(name: "process_id", arg: 3, scope: !1682, file: !3, line: 2185, type: !10)
!1689 = !DILocation(line: 0, scope: !1682)
!1690 = !DILocation(line: 2188, column: 8, scope: !1682)
!1691 = !DILocation(line: 2188, column: 17, scope: !1682)
!1692 = !DILocation(line: 2188, column: 26, scope: !1682)
!1693 = !DILocation(line: 2189, column: 8, scope: !1682)
!1694 = !DILocation(line: 2189, column: 24, scope: !1682)
!1695 = !DILocation(line: 2189, column: 26, scope: !1682)
!1696 = !DILocation(line: 2190, column: 8, scope: !1682)
!1697 = !DILocation(line: 2190, column: 24, scope: !1682)
!1698 = !DILocation(line: 2190, column: 26, scope: !1682)
!1699 = !DILocation(line: 2192, column: 27, scope: !1682)
!1700 = !DILocation(line: 2192, column: 34, scope: !1682)
!1701 = !DILocation(line: 2192, column: 42, scope: !1682)
!1702 = !DILocation(line: 2192, column: 40, scope: !1682)
!1703 = !DILocation(line: 2192, column: 59, scope: !1682)
!1704 = !DILocation(line: 2192, column: 5, scope: !1682)
!1705 = !DILocation(line: 2194, column: 1, scope: !1682)
!1706 = distinct !DISubprogram(name: "_init_radavg_tasks", scope: !3, file: !3, line: 2277, type: !1683, scopeLine: 2278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DILocalVariable(name: "p", arg: 1, scope: !1706, file: !3, line: 2277, type: !100)
!1709 = !DILocalVariable(name: "mode", arg: 2, scope: !1706, file: !3, line: 2277, type: !10)
!1710 = !DILocalVariable(name: "process_id", arg: 3, scope: !1706, file: !3, line: 2277, type: !10)
!1711 = !DILocation(line: 0, scope: !1706)
!1712 = !DILocation(line: 2279, column: 29, scope: !1706)
!1713 = !DILocation(line: 2279, column: 38, scope: !1706)
!1714 = !DILocation(line: 2279, column: 36, scope: !1706)
!1715 = !DILocation(line: 2279, column: 55, scope: !1706)
!1716 = !DILocation(line: 2279, column: 5, scope: !1706)
!1717 = !DILocation(line: 2280, column: 1, scope: !1706)
!1718 = !DISubprogram(name: "pthread_mutex_init", scope: !1327, file: !1327, line: 725, type: !1719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!21, !1412, !1721}
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutexattr_t", file: !13, line: 36, baseType: !1724)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 32, size: 32, elements: !1725)
!1725 = !{!1726, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1724, file: !13, line: 34, baseType: !1727, size: 32)
!1727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !93)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1724, file: !13, line: 35, baseType: !21, size: 32)
!1729 = !DISubprogram(name: "pthread_cond_init", scope: !1327, file: !1327, line: 965, type: !1730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!21, !1628, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !13, line: 45, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !13, line: 41, size: 32, elements: !1737)
!1737 = !{!1738, !1739}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !1736, file: !13, line: 43, baseType: !1727, size: 32)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !1736, file: !13, line: 44, baseType: !21, size: 32)
!1740 = !DISubprogram(name: "init_taskq", scope: !3, file: !3, line: 719, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1741 = !DISubprogram(name: "init_patchlist", scope: !3, file: !3, line: 459, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1742 = !DISubprogram(name: "init_elemlist", scope: !3, file: !3, line: 1089, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1743 = !DISubprogram(name: "init_interactionlist", scope: !3, file: !3, line: 1100, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1744 = !DISubprogram(name: "init_elemvertex", scope: !3, file: !3, line: 1151, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1745 = !DISubprogram(name: "init_edge", scope: !3, file: !3, line: 1156, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1746 = !DISubprogram(name: "init_stat_info", scope: !3, file: !3, line: 1132, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1747 = distinct !DISubprogram(name: "print_usage", scope: !3, file: !3, line: 2426, type: !1431, scopeLine: 2427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1322)
!1748 = !DILocation(line: 2428, column: 14, scope: !1747)
!1749 = !DILocation(line: 2428, column: 5, scope: !1747)
!1750 = !DILocation(line: 2429, column: 14, scope: !1747)
!1751 = !DILocation(line: 2429, column: 5, scope: !1747)
!1752 = !DILocation(line: 2430, column: 14, scope: !1747)
!1753 = !DILocation(line: 2430, column: 5, scope: !1747)
!1754 = !DILocation(line: 2431, column: 14, scope: !1747)
!1755 = !DILocation(line: 2431, column: 5, scope: !1747)
!1756 = !DILocation(line: 2432, column: 14, scope: !1747)
!1757 = !DILocation(line: 2432, column: 5, scope: !1747)
!1758 = !DILocation(line: 2433, column: 14, scope: !1747)
!1759 = !DILocation(line: 2433, column: 5, scope: !1747)
!1760 = !DILocation(line: 2434, column: 14, scope: !1747)
!1761 = !DILocation(line: 2434, column: 5, scope: !1747)
!1762 = !DILocation(line: 2435, column: 14, scope: !1747)
!1763 = !DILocation(line: 2435, column: 5, scope: !1747)
!1764 = !DILocation(line: 2436, column: 14, scope: !1747)
!1765 = !DILocation(line: 2436, column: 5, scope: !1747)
!1766 = !DILocation(line: 2437, column: 14, scope: !1747)
!1767 = !DILocation(line: 2437, column: 5, scope: !1747)
!1768 = !DILocation(line: 2438, column: 14, scope: !1747)
!1769 = !DILocation(line: 2438, column: 5, scope: !1747)
!1770 = !DILocation(line: 2439, column: 14, scope: !1747)
!1771 = !DILocation(line: 2439, column: 5, scope: !1747)
!1772 = !DILocation(line: 2440, column: 14, scope: !1747)
!1773 = !DILocation(line: 2440, column: 5, scope: !1747)
!1774 = !DILocation(line: 2441, column: 14, scope: !1747)
!1775 = !DILocation(line: 2441, column: 5, scope: !1747)
!1776 = !DILocation(line: 2442, column: 1, scope: !1747)
!1777 = !DISubprogram(name: "enqueue_ray_task", scope: !3, file: !3, line: 710, type: !1778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !10, !166, !10, !10}
!1780 = !DISubprogram(name: "enqueue_radavg_task", scope: !3, file: !3, line: 713, type: !1778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1322)
