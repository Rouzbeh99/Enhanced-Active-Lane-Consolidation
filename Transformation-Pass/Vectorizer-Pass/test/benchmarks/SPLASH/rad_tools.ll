; ModuleID = 'rad_tools.c'
source_filename = "rad_tools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Elem_Interaction = type { i64, float }
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
%struct._element = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, %struct.Rgb, %struct.Rgb, %struct.Rgb, i64, ptr, ptr, ptr, ptr, ptr, ptr, float }
%struct._interact = type { ptr, ptr, float, float, float, float }

@total_patches = dso_local local_unnamed_addr global i64 0, align 8, !dbg !0
@total_elements = dso_local local_unnamed_addr global i64 0, align 8, !dbg !7
@total_equiv_elements = dso_local local_unnamed_addr global i64 0, align 8, !dbg !10
@total_interactions = dso_local local_unnamed_addr global i64 0, align 8, !dbg !12
@total_comp_visible_interactions = dso_local local_unnamed_addr global i64 0, align 8, !dbg !14
@total_invisible_interactions = dso_local local_unnamed_addr global i64 0, align 8, !dbg !16
@total_match3 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !18
@total_match2 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !20
@total_match1 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !22
@total_match0 = dso_local local_unnamed_addr global i64 0, align 8, !dbg !24
@elem_interaction = dso_local local_unnamed_addr global [101 x %struct.Elem_Interaction] zeroinitializer, align 16, !dbg !26
@many_interaction = dso_local local_unnamed_addr global %struct.Elem_Interaction zeroinitializer, align 8, !dbg !36
@.str = private unnamed_addr constant [23 x i8] c"Rasiosity Statistics\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"    Histogram of interactions/elem\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\09 Interactions  Occurrence\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\09 -------------------------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09 (Over %d)      %ld (%f)\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"\09    %ld          %ld (%f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"    Configurations\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\09Patch assignment: Static equal number\0A\00", align 1
@.str.9 = private unnamed_addr constant [70 x i8] c"\09Always inserting at top of list for visibility testing (not sorted)\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"\09Recursive pruning enabled for BSP tree traversal\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"\09Patch cache:      Enabled\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"\09Always check all other queues when task stealing (not neighbor scheme)\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"    Parameters\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"\09Number of processors:    %ld\0A\00", align 1
@n_processors = external local_unnamed_addr global i64, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"\09Number of task queues:   %ld\0A\00", align 1
@n_taskqueues = external local_unnamed_addr global i64, align 8
@.str.16 = private unnamed_addr constant [31 x i8] c"\09Number of tasks / queue: %ld\0A\00", align 1
@n_tasks_per_queue = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [30 x i8] c"\09Area epsilon:            %f\0A\00", align 1
@Area_epsilon = external local_unnamed_addr global float, align 4
@.str.18 = private unnamed_addr constant [31 x i8] c"\09#inter parallel refine:  %ld\0A\00", align 1
@N_inter_parallel_bf_refine = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [31 x i8] c"\09#visibility comp / task: %ld\0A\00", align 1
@N_visibility_per_task = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [30 x i8] c"\09BF epsilon:              %f\0A\00", align 1
@BFepsilon = external local_unnamed_addr global float, align 4
@.str.21 = private unnamed_addr constant [30 x i8] c"\09Energy convergence:      %f\0A\00", align 1
@Energy_epsilon = external local_unnamed_addr global float, align 4
@.str.22 = private unnamed_addr constant [41 x i8] c"    Iterations to converge:   %ld times\0A\00", align 1
@global = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [20 x i8] c"    Resource Usage\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"\09Number of patches:            %ld\0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"\09Total number of elements:     %ld\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"\09Total number of interactions: %ld\0A\00", align 1
@.str.27 = private unnamed_addr constant [36 x i8] c"\09          completely visible: %ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\09        completely invisible: %ld\0A\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"\09           partially visible: %ld\0A\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"\09Interaction coherence (root interaction not counted)\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"\09       Common for 4 siblings: %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"\09       Common for 3 siblings: %ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"\09       Common for 2 siblings: %ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"\09       Common for no sibling: %ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"\09Avg. elements per patch:      %.1f\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"\09Avg. interactions per patch:  %.1f\0A\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"\09Avg. interactions per element:%.1f\0A\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"\09Number of elements in equivalent uniform mesh: %ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"\09Elem(hierarchical)/Elem(uniform): %.2f%%\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"\09\09Modeling tasks:            %ld\0A\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"\09\09Define patch tasks:        %ld\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\09\09FF refinement tasks:       %ld\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\09\09Ray processing tasks:      %ld\0A\00", align 1
@.str.44 = private unnamed_addr constant [34 x i8] c"\09\09Radiosity Avg/Norm tasks:  %ld\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"\09\09Interaction computations:  %ld\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"\09\09Visibility computations:   %ld\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"\09\09   (%ld of %ld were partially visible)\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"\09\09Ray intersection tests:    %ld\0A\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"\09\09Patch cache hit ratio:     %.2f%%\0A\00", align 1
@.str.50 = private unnamed_addr constant [39 x i8] c"\09\09    (level %ld):             %.2f%%\0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"\09\09Per iteration info.\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"\09\09     [%ld]  Interaction comp:   %ld\0A\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"\09\09          Ray Intersection:   %ld\0A\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"\09\09          Tasks from my Q:    %ld\0A\00", align 1
@.str.55 = private unnamed_addr constant [37 x i8] c"\09\09          Tasks from other Q: %ld\0A\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"\09\09     Process_task wait count: %ld\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"\09\09          Last task: Patch level\0A\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"\09\09           (%ld root inter)\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"\09\09          Last task: Elem level\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"\09\09           (%ld inter, %.3f Elem/Patch)\0A\00", align 1
@n_elements_in_patch = dso_local local_unnamed_addr global i64 0, align 8, !dbg !38
@n_equiv_elem_in_patch = dso_local local_unnamed_addr global i64 0, align 8, !dbg !40
@min_elem_area = dso_local local_unnamed_addr global float 0.000000e+00, align 4, !dbg !42
@n_interactions_in_patch = dso_local local_unnamed_addr global i64 0, align 8, !dbg !44
@n_comp_visible_interactions = dso_local local_unnamed_addr global i64 0, align 8, !dbg !46
@n_invisible_interactions = dso_local local_unnamed_addr global i64 0, align 8, !dbg !48
@.str.62 = private unnamed_addr constant [50 x i8] c"Fatal: Visibility undef list count non zero(%ld)\0A\00", align 1
@time_rad_end = external local_unnamed_addr global i64, align 8
@time_rad_start = external local_unnamed_addr global i64, align 8
@timing = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [27 x i8] c"\09Overall start time\09%20lu\0A\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"\09Overall end time\09%20lu\0A\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"\09Total time with initialization\09%20lu\0A\00", align 1
@.str.67 = private unnamed_addr constant [42 x i8] c"\09Total time without initialization\09%20lu\0A\00", align 1
@.str.69 = private unnamed_addr constant [24 x i8] c"\09 Process %ld  %.2f mS\0A\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c"\09 (total)    %.2f mS\0A\00", align 1
@time_process_start = external local_unnamed_addr global [0 x i64], align 8
@str = private unnamed_addr constant [39 x i8] c"Fatal: Visibility undef list not empty\00", align 1
@str.71 = private unnamed_addr constant [37 x i8] c"Fatal: Interactions count miss match\00", align 1
@str.72 = private unnamed_addr constant [23 x i8] c"\09Process fork overhead\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_statistics(ptr noundef %fd, i64 noundef %process_id) local_unnamed_addr #0 !dbg !57 {
entry:
  call void @llvm.dbg.value(metadata ptr %fd, metadata !123, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !124, metadata !DIExpression()), !dbg !126
  store i64 0, ptr @total_patches, align 8, !dbg !127
  store i64 0, ptr @total_elements, align 8, !dbg !128
  store i64 0, ptr @total_equiv_elements, align 8, !dbg !129
  store i64 0, ptr @total_interactions, align 8, !dbg !130
  store i64 0, ptr @total_comp_visible_interactions, align 8, !dbg !131
  store i64 0, ptr @total_invisible_interactions, align 8, !dbg !132
  store i64 0, ptr @total_match3, align 8, !dbg !133
  store i64 0, ptr @total_match2, align 8, !dbg !134
  store i64 0, ptr @total_match1, align 8, !dbg !135
  store i64 0, ptr @total_match0, align 8, !dbg !136
  call void @llvm.dbg.value(metadata i64 0, metadata !125, metadata !DIExpression()), !dbg !126
  br label %for.body, !dbg !137

for.body:                                         ; preds = %entry, %for.body
  %i.0158 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0158, metadata !125, metadata !DIExpression()), !dbg !126
  %arrayidx = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %i.0158, !dbg !139
  store i64 0, ptr %arrayidx, align 16, !dbg !142
  %area = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %i.0158, i32 1, !dbg !143
  store float 0.000000e+00, ptr %area, align 8, !dbg !144
  %inc = add nuw nsw i64 %i.0158, 1, !dbg !145
  call void @llvm.dbg.value(metadata i64 %inc, metadata !125, metadata !DIExpression()), !dbg !126
  %exitcond.not = icmp eq i64 %inc, 100, !dbg !146
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !137, !llvm.loop !147

for.end:                                          ; preds = %for.body
  store i64 0, ptr @many_interaction, align 8, !dbg !151
  store float 0.000000e+00, ptr getelementptr inbounds (%struct.Elem_Interaction, ptr @many_interaction, i64 0, i32 1), align 8, !dbg !152
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @get_patch_stat, i64 noundef 0, i64 noundef 0) #12, !dbg !153
  %0 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %fd), !dbg !154
  %1 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 35, i64 1, ptr %fd), !dbg !155
  %2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 27, i64 1, ptr %fd), !dbg !156
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 34, i64 1, ptr %fd), !dbg !157
  %4 = load i64, ptr @many_interaction, align 8, !dbg !158
  %cmp5 = icmp sgt i64 %4, 0, !dbg !160
  br i1 %cmp5, label %if.then, label %for.cond8.preheader, !dbg !161

if.then:                                          ; preds = %for.end
  %5 = load float, ptr getelementptr inbounds (%struct.Elem_Interaction, ptr @many_interaction, i64 0, i32 1), align 8, !dbg !162
  %conv = sitofp i64 %4 to float, !dbg !164
  %div = fdiv float %5, %conv, !dbg !165
  %conv6 = fpext float %div to double, !dbg !166
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.4, i32 noundef 100, i64 noundef %4, double noundef %conv6), !dbg !167
  br label %for.cond8.preheader, !dbg !168

for.cond8.preheader:                              ; preds = %if.then, %for.end
  br label %for.cond8, !dbg !169

for.cond8:                                        ; preds = %for.cond8.preheader, %for.cond8
  %i.1 = phi i64 [ %dec, %for.cond8 ], [ 100, %for.cond8.preheader ], !dbg !171
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !125, metadata !DIExpression()), !dbg !126
  %arrayidx9 = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %i.1, !dbg !172
  %6 = load i64, ptr %arrayidx9, align 16, !dbg !174
  %cmp11 = icmp eq i64 %6, 0, !dbg !175
  %dec = add nsw i64 %i.1, -1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %dec, metadata !125, metadata !DIExpression()), !dbg !126
  br i1 %cmp11, label %for.cond8, label %for.cond16.preheader, !dbg !169, !llvm.loop !177

for.cond16.preheader:                             ; preds = %for.cond8
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !125, metadata !DIExpression()), !dbg !126
  %cmp17159 = icmp sgt i64 %i.1, -1, !dbg !179
  br i1 %cmp17159, label %for.body19, label %for.end47, !dbg !182

for.body19:                                       ; preds = %for.cond16.preheader, %for.inc45.for.body19_crit_edge
  %7 = phi i64 [ %.pre, %for.inc45.for.body19_crit_edge ], [ %6, %for.cond16.preheader ], !dbg !183
  %i.2160 = phi i64 [ %dec46, %for.inc45.for.body19_crit_edge ], [ %i.1, %for.cond16.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2160, metadata !125, metadata !DIExpression()), !dbg !126
  %cmp22 = icmp eq i64 %7, 0, !dbg !186
  br i1 %cmp22, label %for.inc45, label %if.else, !dbg !187

if.else:                                          ; preds = %for.body19
  %area37 = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %i.2160, i32 1, !dbg !188
  %8 = load float, ptr %area37, align 8, !dbg !188
  %conv40 = sitofp i64 %7 to float, !dbg !190
  %div41 = fdiv float %8, %conv40, !dbg !191
  %conv42 = fpext float %div41 to double, !dbg !192
  %call43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.6, i64 noundef %i.2160, i64 noundef %7, double noundef %conv42), !dbg !193
  br label %for.inc45

for.inc45:                                        ; preds = %if.else, %for.body19
  call void @llvm.dbg.value(metadata i64 %i.2160, metadata !125, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !126
  %cmp17 = icmp sgt i64 %i.2160, 0, !dbg !179
  br i1 %cmp17, label %for.inc45.for.body19_crit_edge, label %for.end47, !dbg !182, !llvm.loop !194

for.inc45.for.body19_crit_edge:                   ; preds = %for.inc45
  %dec46 = add nsw i64 %i.2160, -1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %dec46, metadata !125, metadata !DIExpression()), !dbg !126
  %arrayidx20.phi.trans.insert = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %dec46
  %.pre = load i64, ptr %arrayidx20.phi.trans.insert, align 16, !dbg !183
  br label %for.body19, !dbg !182

for.end47:                                        ; preds = %for.inc45, %for.cond16.preheader
  %9 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %fd), !dbg !197
  %10 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 39, i64 1, ptr %fd), !dbg !198
  %11 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 69, i64 1, ptr %fd), !dbg !199
  %12 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 50, i64 1, ptr %fd), !dbg !200
  %13 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 27, i64 1, ptr %fd), !dbg !201
  %14 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 72, i64 1, ptr %fd), !dbg !202
  %15 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 15, i64 1, ptr %fd), !dbg !203
  %16 = load i64, ptr @n_processors, align 8, !dbg !204
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.14, i64 noundef %16), !dbg !205
  %17 = load i64, ptr @n_taskqueues, align 8, !dbg !206
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.15, i64 noundef %17), !dbg !207
  %18 = load i64, ptr @n_tasks_per_queue, align 8, !dbg !208
  %call57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.16, i64 noundef %18), !dbg !209
  %19 = load float, ptr @Area_epsilon, align 4, !dbg !210
  %conv58 = fpext float %19 to double, !dbg !210
  %call59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.17, double noundef %conv58), !dbg !211
  %20 = load i64, ptr @N_inter_parallel_bf_refine, align 8, !dbg !212
  %call60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.18, i64 noundef %20), !dbg !213
  %21 = load i64, ptr @N_visibility_per_task, align 8, !dbg !214
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.19, i64 noundef %21), !dbg !215
  %22 = load float, ptr @BFepsilon, align 4, !dbg !216
  %conv62 = fpext float %22 to double, !dbg !216
  %call63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.20, double noundef %conv62), !dbg !217
  %23 = load float, ptr @Energy_epsilon, align 4, !dbg !218
  %conv64 = fpext float %23 to double, !dbg !218
  %call65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.21, double noundef %conv64), !dbg !219
  %24 = load ptr, ptr @global, align 8, !dbg !220
  %iteration_count = getelementptr inbounds %struct.Global, ptr %24, i64 0, i32 11, !dbg !221
  %25 = load i64, ptr %iteration_count, align 8, !dbg !221
  %call66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.22, i64 noundef %25), !dbg !222
  %26 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr %fd), !dbg !223
  %27 = load i64, ptr @total_patches, align 8, !dbg !224
  %call68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.24, i64 noundef %27), !dbg !225
  %28 = load i64, ptr @total_elements, align 8, !dbg !226
  %call69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.25, i64 noundef %28), !dbg !227
  %29 = load i64, ptr @total_interactions, align 8, !dbg !228
  %call70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.26, i64 noundef %29), !dbg !229
  %30 = load i64, ptr @total_comp_visible_interactions, align 8, !dbg !230
  %call71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.27, i64 noundef %30), !dbg !231
  %31 = load i64, ptr @total_invisible_interactions, align 8, !dbg !232
  %call72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.28, i64 noundef %31), !dbg !233
  %32 = load i64, ptr @total_interactions, align 8, !dbg !234
  %33 = load i64, ptr @total_comp_visible_interactions, align 8, !dbg !235
  %34 = load i64, ptr @total_invisible_interactions, align 8, !dbg !236
  %35 = add i64 %33, %34, !dbg !237
  %sub73 = sub i64 %32, %35, !dbg !237
  %call74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.29, i64 noundef %sub73), !dbg !238
  %36 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 54, i64 1, ptr %fd), !dbg !239
  %37 = load i64, ptr @total_match3, align 8, !dbg !240
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.31, i64 noundef %37), !dbg !241
  %38 = load i64, ptr @total_match2, align 8, !dbg !242
  %call77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.32, i64 noundef %38), !dbg !243
  %39 = load i64, ptr @total_match1, align 8, !dbg !244
  %call78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.33, i64 noundef %39), !dbg !245
  %40 = load i64, ptr @total_match0, align 8, !dbg !246
  %call79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.34, i64 noundef %40), !dbg !247
  %41 = load i64, ptr @total_elements, align 8, !dbg !248
  %conv80 = sitofp i64 %41 to float, !dbg !249
  %42 = load i64, ptr @total_patches, align 8, !dbg !250
  %conv81 = sitofp i64 %42 to float, !dbg !251
  %div82 = fdiv float %conv80, %conv81, !dbg !252
  %conv83 = fpext float %div82 to double, !dbg !249
  %call84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.35, double noundef %conv83), !dbg !253
  %43 = load i64, ptr @total_interactions, align 8, !dbg !254
  %conv85 = sitofp i64 %43 to float, !dbg !255
  %44 = load i64, ptr @total_patches, align 8, !dbg !256
  %conv86 = sitofp i64 %44 to float, !dbg !257
  %div87 = fdiv float %conv85, %conv86, !dbg !258
  %conv88 = fpext float %div87 to double, !dbg !255
  %call89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.36, double noundef %conv88), !dbg !259
  %45 = load i64, ptr @total_interactions, align 8, !dbg !260
  %conv90 = sitofp i64 %45 to float, !dbg !261
  %46 = load i64, ptr @total_elements, align 8, !dbg !262
  %conv91 = sitofp i64 %46 to float, !dbg !263
  %div92 = fdiv float %conv90, %conv91, !dbg !264
  %conv93 = fpext float %div92 to double, !dbg !261
  %call94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.37, double noundef %conv93), !dbg !265
  %47 = load i64, ptr @total_equiv_elements, align 8, !dbg !266
  %call95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.38, i64 noundef %47), !dbg !267
  %48 = load i64, ptr @total_elements, align 8, !dbg !268
  %conv96 = sitofp i64 %48 to float, !dbg !269
  %49 = load i64, ptr @total_equiv_elements, align 8, !dbg !270
  %conv97 = sitofp i64 %49 to float, !dbg !271
  %div98 = fdiv float %conv96, %conv97, !dbg !272
  %conv99 = fpext float %div98 to double, !dbg !269
  %mul = fmul double %conv99, 1.000000e+02, !dbg !273
  %call100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.39, double noundef %mul), !dbg !274
  ret void, !dbg !275
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !276 void @foreach_patch_in_bsp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_patch_stat(ptr noundef %patch, i64 %dummy, i64 noundef %process_id) #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !417, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 undef, metadata !418, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !419, metadata !DIExpression()), !dbg !420
  store i64 0, ptr @n_elements_in_patch, align 8, !dbg !421
  store i64 1, ptr @n_equiv_elem_in_patch, align 8, !dbg !422
  %area = getelementptr inbounds %struct._patch, ptr %patch, i64 0, i32 10, !dbg !423
  %0 = load float, ptr %area, align 4, !dbg !423
  store float %0, ptr @min_elem_area, align 4, !dbg !424
  store i64 0, ptr @n_interactions_in_patch, align 8, !dbg !425
  store i64 0, ptr @n_comp_visible_interactions, align 8, !dbg !426
  store i64 0, ptr @n_invisible_interactions, align 8, !dbg !427
  tail call void @foreach_element_in_patch(ptr noundef %patch, ptr noundef nonnull @get_elem_stat, i64 noundef 0, i64 noundef %process_id) #12, !dbg !428
  %1 = load i64, ptr @total_patches, align 8, !dbg !429
  %inc = add nsw i64 %1, 1, !dbg !429
  store i64 %inc, ptr @total_patches, align 8, !dbg !429
  %2 = load i64, ptr @n_elements_in_patch, align 8, !dbg !430
  %3 = load i64, ptr @total_elements, align 8, !dbg !431
  %add = add nsw i64 %3, %2, !dbg !431
  store i64 %add, ptr @total_elements, align 8, !dbg !431
  %4 = load i64, ptr @n_equiv_elem_in_patch, align 8, !dbg !432
  %5 = load i64, ptr @total_equiv_elements, align 8, !dbg !433
  %add1 = add nsw i64 %5, %4, !dbg !433
  store i64 %add1, ptr @total_equiv_elements, align 8, !dbg !433
  %6 = load i64, ptr @n_interactions_in_patch, align 8, !dbg !434
  %7 = load i64, ptr @total_interactions, align 8, !dbg !435
  %add2 = add nsw i64 %7, %6, !dbg !435
  store i64 %add2, ptr @total_interactions, align 8, !dbg !435
  %8 = load i64, ptr @n_comp_visible_interactions, align 8, !dbg !436
  %9 = load i64, ptr @total_comp_visible_interactions, align 8, !dbg !437
  %add3 = add nsw i64 %9, %8, !dbg !437
  store i64 %add3, ptr @total_comp_visible_interactions, align 8, !dbg !437
  %10 = load i64, ptr @n_invisible_interactions, align 8, !dbg !438
  %11 = load i64, ptr @total_invisible_interactions, align 8, !dbg !439
  %add4 = add nsw i64 %11, %10, !dbg !439
  store i64 %add4, ptr @total_invisible_interactions, align 8, !dbg !439
  ret void, !dbg !440
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_per_process_info(ptr noundef %fd, i64 noundef %process) local_unnamed_addr #4 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata ptr %fd, metadata !443, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %process, metadata !444, metadata !DIExpression()), !dbg !487
  %0 = load ptr, ptr @global, align 8, !dbg !488
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %process), metadata !447, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 9072, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 166257728, DW_OP_stack_value)), !dbg !487
  %total_modeling_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 1, !dbg !489
  %1 = load i64, ptr %total_modeling_tasks, align 8, !dbg !489
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.40, i64 noundef %1), !dbg !490
  %total_def_patch_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 2, !dbg !491
  %2 = load i64, ptr %total_def_patch_tasks, align 8, !dbg !491
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.41, i64 noundef %2), !dbg !492
  %total_ff_ref_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 3, !dbg !493
  %3 = load i64, ptr %total_ff_ref_tasks, align 8, !dbg !493
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.42, i64 noundef %3), !dbg !494
  %total_ray_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 4, !dbg !495
  %4 = load i64, ptr %total_ray_tasks, align 8, !dbg !495
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.43, i64 noundef %4), !dbg !496
  %total_radavg_tasks = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 5, !dbg !497
  %5 = load i64, ptr %total_radavg_tasks, align 8, !dbg !497
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.44, i64 noundef %5), !dbg !498
  %total_interaction_comp = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 7, !dbg !499
  %6 = load i64, ptr %total_interaction_comp, align 8, !dbg !499
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.45, i64 noundef %6), !dbg !500
  %total_visibility_comp = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 8, !dbg !501
  %7 = load i64, ptr %total_visibility_comp, align 8, !dbg !501
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.46, i64 noundef %7), !dbg !502
  %partially_visible = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 9, !dbg !503
  %8 = load i64, ptr %partially_visible, align 8, !dbg !503
  %9 = load i64, ptr %total_visibility_comp, align 8, !dbg !504
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.47, i64 noundef %8, i64 noundef %9), !dbg !505
  %total_ray_intersect_test = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 10, !dbg !506
  %10 = load i64, ptr %total_ray_intersect_test, align 8, !dbg !506
  %call9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.48, i64 noundef %10), !dbg !507
  %total_patch_cache_hit = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 12, !dbg !508
  %11 = load i64, ptr %total_patch_cache_hit, align 8, !dbg !508
  %mul = mul nsw i64 %11, 100, !dbg !509
  %conv = sitofp i64 %mul to double, !dbg !510
  %total_patch_cache_check = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 11, !dbg !511
  %12 = load i64, ptr %total_patch_cache_check, align 8, !dbg !511
  %conv10 = sitofp i64 %12 to double, !dbg !512
  %add = fadd double %conv10, 1.000000e-02, !dbg !513
  %div = fdiv double %conv, %add, !dbg !514
  %call11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.49, double noundef %div), !dbg !515
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !487
  %arrayidx13 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 13, i64 0, !dbg !516
  %13 = load i64, ptr %arrayidx13, align 8, !dbg !516
  %mul14 = mul nsw i64 %13, 100, !dbg !519
  %conv15 = sitofp i64 %mul14 to double, !dbg !516
  %14 = load i64, ptr %total_patch_cache_check, align 8, !dbg !520
  %conv17 = sitofp i64 %14 to double, !dbg !521
  %add18 = fadd double %conv17, 1.000000e-02, !dbg !522
  %div19 = fdiv double %conv15, %add18, !dbg !523
  %call20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.50, i64 noundef 0, double noundef %div19), !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !487
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression()), !dbg !487
  %arrayidx13.c = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 13, i64 1, !dbg !516
  %15 = load i64, ptr %arrayidx13.c, align 8, !dbg !516
  %mul14.c = mul nsw i64 %15, 100, !dbg !519
  %conv15.c = sitofp i64 %mul14.c to double, !dbg !516
  %16 = load i64, ptr %total_patch_cache_check, align 8, !dbg !520
  %conv17.c = sitofp i64 %16 to double, !dbg !521
  %add18.c = fadd double %conv17.c, 1.000000e-02, !dbg !522
  %div19.c = fdiv double %conv15.c, %add18.c, !dbg !523
  %call20.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.50, i64 noundef 1, double noundef %div19.c), !dbg !524
  call void @llvm.dbg.value(metadata i64 0, metadata !445, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !487
  %17 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 22, i64 1, ptr %fd), !dbg !525
  call void @llvm.dbg.value(metadata i64 0, metadata !446, metadata !DIExpression()), !dbg !487
  %18 = load ptr, ptr @global, align 8, !dbg !526
  %iteration_count115 = getelementptr inbounds %struct.Global, ptr %18, i64 0, i32 11, !dbg !529
  %19 = load i64, ptr %iteration_count115, align 8, !dbg !529
  %cmp23116 = icmp sgt i64 %19, 0, !dbg !530
  br i1 %cmp23116, label %for.body25, label %for.end58, !dbg !531

for.body25:                                       ; preds = %entry, %for.inc56
  %iteration.0117 = phi i64 [ %inc57, %for.inc56 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %iteration.0117, metadata !446, metadata !DIExpression()), !dbg !487
  %arrayidx26 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, !dbg !532
  %20 = load i64, ptr %arrayidx26, align 8, !dbg !534
  %call27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.52, i64 noundef %iteration.0117, i64 noundef %20), !dbg !535
  %ray_intersect_test = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, i32 1, !dbg !536
  %21 = load i64, ptr %ray_intersect_test, align 8, !dbg !536
  %call30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.53, i64 noundef %21), !dbg !537
  %tasks_from_myq = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, i32 2, !dbg !538
  %22 = load i64, ptr %tasks_from_myq, align 8, !dbg !538
  %call33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.54, i64 noundef %22), !dbg !539
  %tasks_from_otherq = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, i32 3, !dbg !540
  %23 = load i64, ptr %tasks_from_otherq, align 8, !dbg !540
  %call36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.55, i64 noundef %23), !dbg !541
  %process_tasks_wait = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, i32 4, !dbg !542
  %24 = load i64, ptr %process_tasks_wait, align 8, !dbg !542
  %call39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.56, i64 noundef %24), !dbg !543
  %last_pr_task = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 41, i64 %process, i32 14, i64 %iteration.0117, i32 5, !dbg !544
  %25 = load ptr, ptr %last_pr_task, align 8, !dbg !544
  call void @llvm.dbg.value(metadata ptr %25, metadata !486, metadata !DIExpression()), !dbg !487
  %cmp42 = icmp eq ptr %25, null, !dbg !545
  br i1 %cmp42, label %for.inc56, label %if.end, !dbg !547

if.end:                                           ; preds = %for.body25
  %parent = getelementptr inbounds %struct._element, ptr %25, i64 0, i32 2, !dbg !548
  %26 = load ptr, ptr %parent, align 8, !dbg !548
  %cmp44 = icmp eq ptr %26, null, !dbg !550
  br i1 %cmp44, label %if.then46, label %if.else, !dbg !551

if.then46:                                        ; preds = %if.end
  %27 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 35, i64 1, ptr %fd), !dbg !552
  %n_interactions = getelementptr inbounds %struct._element, ptr %25, i64 0, i32 8, !dbg !554
  %28 = load i64, ptr %n_interactions, align 8, !dbg !554
  %call48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.58, i64 noundef %28), !dbg !555
  br label %for.inc56, !dbg !556

if.else:                                          ; preds = %if.end
  %29 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 34, i64 1, ptr %fd), !dbg !557
  %n_interactions50 = getelementptr inbounds %struct._element, ptr %25, i64 0, i32 8, !dbg !559
  %30 = load i64, ptr %n_interactions50, align 8, !dbg !559
  %area = getelementptr inbounds %struct._element, ptr %25, i64 0, i32 21, !dbg !560
  %31 = load float, ptr %area, align 8, !dbg !560
  %patch = getelementptr inbounds %struct._element, ptr %25, i64 0, i32 1, !dbg !561
  %32 = load ptr, ptr %patch, align 8, !dbg !561
  %area51 = getelementptr inbounds %struct._patch, ptr %32, i64 0, i32 10, !dbg !562
  %33 = load float, ptr %area51, align 4, !dbg !562
  %div52 = fdiv float %31, %33, !dbg !563
  %conv53 = fpext float %div52 to double, !dbg !564
  %call54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %fd, ptr noundef nonnull @.str.60, i64 noundef %30, double noundef %conv53), !dbg !565
  br label %for.inc56

for.inc56:                                        ; preds = %if.then46, %if.else, %for.body25
  %inc57 = add nuw nsw i64 %iteration.0117, 1, !dbg !566
  call void @llvm.dbg.value(metadata i64 %inc57, metadata !446, metadata !DIExpression()), !dbg !487
  %34 = load ptr, ptr @global, align 8, !dbg !526
  %iteration_count = getelementptr inbounds %struct.Global, ptr %34, i64 0, i32 11, !dbg !529
  %35 = load i64, ptr %iteration_count, align 8, !dbg !529
  %cmp23 = icmp slt i64 %inc57, %35, !dbg !530
  br i1 %cmp23, label %for.body25, label %for.end58, !dbg !531, !llvm.loop !567

for.end58:                                        ; preds = %for.inc56, %entry
  ret void, !dbg !569
}

declare !dbg !570 void @foreach_element_in_patch(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @get_elem_stat(ptr nocapture noundef readonly %elem, i64 %dummy, i64 noundef %process_id) #4 !dbg !573 {
entry:
  %match0 = alloca i64, align 8
  %match1 = alloca i64, align 8
  %match2 = alloca i64, align 8
  %match3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %elem, metadata !577, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 undef, metadata !578, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !579, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 0, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !590
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match0) #12, !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match1) #12, !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match2) #12, !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %match3) #12, !dbg !591
  %0 = load i64, ptr @n_elements_in_patch, align 8, !dbg !592
  %inc = add nsw i64 %0, 1, !dbg !592
  store i64 %inc, ptr @n_elements_in_patch, align 8, !dbg !592
  %area = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 21
  %1 = load float, ptr %area, align 8
  %min_elem_area.promoted = load float, ptr @min_elem_area, align 4
  %cmp117 = fcmp olt float %1, %min_elem_area.promoted, !dbg !593
  br i1 %cmp117, label %while.body.preheader, label %while.end, !dbg !594

while.body.preheader:                             ; preds = %entry
  %n_equiv_elem_in_patch.promoted = load i64, ptr @n_equiv_elem_in_patch, align 8
  br label %while.body, !dbg !594

while.body:                                       ; preds = %while.body.preheader, %while.body
  %conv1115119 = phi float [ %conv1, %while.body ], [ %min_elem_area.promoted, %while.body.preheader ]
  %mul2116118 = phi i64 [ %mul2, %while.body ], [ %n_equiv_elem_in_patch.promoted, %while.body.preheader ]
  %conv1 = fmul float %conv1115119, 2.500000e-01, !dbg !595
  %mul2 = shl nsw i64 %mul2116118, 2, !dbg !597
  %cmp = fcmp olt float %1, %conv1, !dbg !593
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !594, !llvm.loop !598

while.cond.while.end_crit_edge:                   ; preds = %while.body
  store float %conv1, ptr @min_elem_area, align 4, !dbg !595
  store i64 %mul2, ptr @n_equiv_elem_in_patch, align 8, !dbg !597
  br label %while.end, !dbg !594

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %n_interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 8, !dbg !600
  %2 = load i64, ptr %n_interactions, align 8, !dbg !600
  %3 = load i64, ptr @n_interactions_in_patch, align 8, !dbg !601
  %add = add nsw i64 %3, %2, !dbg !601
  store i64 %add, ptr @n_interactions_in_patch, align 8, !dbg !601
  %interactions = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 7, !dbg !602
  call void @llvm.dbg.value(metadata ptr undef, metadata !580, metadata !DIExpression()), !dbg !590
  %pi.0122 = load ptr, ptr %interactions, align 8, !dbg !604
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 0, metadata !584, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 0, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata ptr %pi.0122, metadata !580, metadata !DIExpression()), !dbg !590
  %tobool.not123 = icmp eq ptr %pi.0122, null, !dbg !605
  br i1 %tobool.not123, label %for.end, label %for.body, !dbg !605

for.body:                                         ; preds = %while.end, %for.inc
  %pi.0127 = phi ptr [ %pi.0, %for.inc ], [ %pi.0122, %while.end ]
  %i_visible.0126 = phi i64 [ %i_visible.1, %for.inc ], [ 0, %while.end ]
  %c_visible.0125 = phi i64 [ %c_visible.1, %for.inc ], [ 0, %while.end ]
  %p_visible.0124 = phi i64 [ %p_visible.1, %for.inc ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i64 %i_visible.0126, metadata !585, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 %c_visible.0125, metadata !584, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 %p_visible.0124, metadata !583, metadata !DIExpression()), !dbg !590
  %visibility = getelementptr inbounds %struct._interact, ptr %pi.0127, i64 0, i32 5, !dbg !606
  %4 = load float, ptr %visibility, align 4, !dbg !606
  %cmp4 = fcmp oeq float %4, 0.000000e+00, !dbg !610
  br i1 %cmp4, label %if.then, label %if.else, !dbg !611

if.then:                                          ; preds = %for.body
  %inc6 = add nsw i64 %i_visible.0126, 1, !dbg !612
  call void @llvm.dbg.value(metadata i64 %inc6, metadata !585, metadata !DIExpression()), !dbg !590
  br label %for.inc, !dbg !613

if.else:                                          ; preds = %for.body
  %cmp9 = fcmp oeq float %4, 1.000000e+00, !dbg !614
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !616

if.then11:                                        ; preds = %if.else
  %inc12 = add nsw i64 %c_visible.0125, 1, !dbg !617
  call void @llvm.dbg.value(metadata i64 %inc12, metadata !584, metadata !DIExpression()), !dbg !590
  br label %for.inc, !dbg !618

if.else13:                                        ; preds = %if.else
  %inc14 = add nsw i64 %p_visible.0124, 1, !dbg !619
  call void @llvm.dbg.value(metadata i64 %inc14, metadata !583, metadata !DIExpression()), !dbg !590
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else13, %if.then11
  %p_visible.1 = phi i64 [ %p_visible.0124, %if.then ], [ %p_visible.0124, %if.then11 ], [ %inc14, %if.else13 ], !dbg !590
  %c_visible.1 = phi i64 [ %c_visible.0125, %if.then ], [ %inc12, %if.then11 ], [ %c_visible.0125, %if.else13 ], !dbg !590
  %i_visible.1 = phi i64 [ %inc6, %if.then ], [ %i_visible.0126, %if.then11 ], [ %i_visible.0126, %if.else13 ], !dbg !590
  call void @llvm.dbg.value(metadata i64 %i_visible.1, metadata !585, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 %c_visible.1, metadata !584, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata i64 %p_visible.1, metadata !583, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.value(metadata ptr undef, metadata !580, metadata !DIExpression()), !dbg !590
  %pi.0 = load ptr, ptr %pi.0127, align 8, !dbg !604
  call void @llvm.dbg.value(metadata ptr %pi.0, metadata !580, metadata !DIExpression()), !dbg !590
  %tobool.not = icmp eq ptr %pi.0, null, !dbg !605
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !605, !llvm.loop !620

for.end:                                          ; preds = %for.inc, %while.end
  %p_visible.0.lcssa = phi i64 [ 0, %while.end ], [ %p_visible.1, %for.inc ], !dbg !622
  %c_visible.0.lcssa = phi i64 [ 0, %while.end ], [ %c_visible.1, %for.inc ], !dbg !623
  %i_visible.0.lcssa = phi i64 [ 0, %while.end ], [ %i_visible.1, %for.inc ], !dbg !590
  %add16 = add i64 %c_visible.0.lcssa, %p_visible.0.lcssa, !dbg !624
  %add17 = add i64 %add16, %i_visible.0.lcssa, !dbg !626
  %cmp19.not = icmp eq i64 %add17, %2, !dbg !627
  br i1 %cmp19.not, label %if.end22, label %if.then21, !dbg !628

if.then21:                                        ; preds = %for.end
  %puts114 = tail call i32 @puts(ptr nonnull @str.71), !dbg !629
  br label %if.end22, !dbg !629

if.end22:                                         ; preds = %if.then21, %for.end
  %n_vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 10, !dbg !630
  %5 = load i64, ptr %n_vis_undef_inter, align 8, !dbg !630
  %cmp23.not = icmp eq i64 %5, 0, !dbg !632
  br i1 %cmp23.not, label %if.end28, label %if.then25, !dbg !633

if.then25:                                        ; preds = %if.end22
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.62, i64 noundef %5), !dbg !634
  br label %if.end28, !dbg !634

if.end28:                                         ; preds = %if.then25, %if.end22
  %vis_undef_inter = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 9, !dbg !635
  %6 = load ptr, ptr %vis_undef_inter, align 8, !dbg !635
  %cmp29.not = icmp eq ptr %6, null, !dbg !637
  br i1 %cmp29.not, label %if.end33, label %if.then31, !dbg !638

if.then31:                                        ; preds = %if.end28
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !639
  br label %if.end33, !dbg !639

if.end33:                                         ; preds = %if.then31, %if.end28
  %7 = load i64, ptr @n_comp_visible_interactions, align 8, !dbg !640
  %add34 = add nsw i64 %7, %c_visible.0.lcssa, !dbg !640
  store i64 %add34, ptr @n_comp_visible_interactions, align 8, !dbg !640
  %8 = load i64, ptr @n_invisible_interactions, align 8, !dbg !641
  %add35 = add nsw i64 %8, %i_visible.0.lcssa, !dbg !641
  store i64 %add35, ptr @n_invisible_interactions, align 8, !dbg !641
  %9 = load i64, ptr %n_interactions, align 8, !dbg !642
  %cmp37 = icmp sgt i64 %9, 100, !dbg !644
  br i1 %cmp37, label %if.then39, label %if.else43, !dbg !645

if.then39:                                        ; preds = %if.end33
  %10 = load i64, ptr @many_interaction, align 8, !dbg !646
  %inc40 = add nsw i64 %10, 1, !dbg !646
  store i64 %inc40, ptr @many_interaction, align 8, !dbg !646
  br label %if.end51, !dbg !648

if.else43:                                        ; preds = %if.end33
  %arrayidx = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %9, !dbg !649
  %11 = load i64, ptr %arrayidx, align 16, !dbg !651
  %inc45 = add nsw i64 %11, 1, !dbg !651
  store i64 %inc45, ptr %arrayidx, align 16, !dbg !651
  %12 = load i64, ptr %n_interactions, align 8, !dbg !652
  %area49 = getelementptr inbounds [101 x %struct.Elem_Interaction], ptr @elem_interaction, i64 0, i64 %12, i32 1, !dbg !653
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.then39
  %area49.sink131 = phi ptr [ %area49, %if.else43 ], [ getelementptr inbounds (%struct.Elem_Interaction, ptr @many_interaction, i64 0, i32 1), %if.then39 ]
  %.sink = load float, ptr %area, align 8, !dbg !654
  %13 = load float, ptr %area49.sink131, align 8, !dbg !654
  %add50 = fadd float %.sink, %13, !dbg !654
  store float %add50, ptr %area49.sink131, align 8, !dbg !654
  %center = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 3, !dbg !655
  %14 = load ptr, ptr %center, align 8, !dbg !655
  %cmp52 = icmp eq ptr %14, null, !dbg !655
  br i1 %cmp52, label %if.end72, label %if.then54, !dbg !657

if.then54:                                        ; preds = %if.end51
  call void @llvm.dbg.value(metadata i64 0, metadata !589, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %match3, align 8, !dbg !658
  call void @llvm.dbg.value(metadata i64 0, metadata !588, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %match2, align 8, !dbg !660
  call void @llvm.dbg.value(metadata i64 0, metadata !587, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %match1, align 8, !dbg !661
  call void @llvm.dbg.value(metadata i64 0, metadata !586, metadata !DIExpression()), !dbg !590
  store i64 0, ptr %match0, align 8, !dbg !662
  %top = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 4, !dbg !663
  %15 = load ptr, ptr %top, align 8, !dbg !663
  %right = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 6, !dbg !664
  %16 = load ptr, ptr %right, align 8, !dbg !664
  %left = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 5, !dbg !665
  %17 = load ptr, ptr %left, align 8, !dbg !665
  call void @llvm.dbg.value(metadata ptr %match0, metadata !586, metadata !DIExpression(DW_OP_deref)), !dbg !590
  call void @llvm.dbg.value(metadata ptr %match1, metadata !587, metadata !DIExpression(DW_OP_deref)), !dbg !590
  call void @llvm.dbg.value(metadata ptr %match2, metadata !588, metadata !DIExpression(DW_OP_deref)), !dbg !590
  call void @llvm.dbg.value(metadata ptr %match3, metadata !589, metadata !DIExpression(DW_OP_deref)), !dbg !590
  call void @count_interaction(ptr noundef nonnull %14, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef nonnull %match3, ptr noundef nonnull %match2, ptr noundef nonnull %match1, ptr noundef nonnull %match0, i64 noundef %process_id), !dbg !666
  %18 = load ptr, ptr %top, align 8, !dbg !667
  %19 = load ptr, ptr %right, align 8, !dbg !668
  %20 = load ptr, ptr %left, align 8, !dbg !669
  %21 = load ptr, ptr %center, align 8, !dbg !670
  call void @count_interaction(ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef nonnull %match3, ptr noundef nonnull %match2, ptr noundef nonnull %match1, ptr noundef nonnull %match0, i64 noundef %process_id), !dbg !671
  %22 = load ptr, ptr %right, align 8, !dbg !672
  %23 = load ptr, ptr %left, align 8, !dbg !673
  %24 = load ptr, ptr %center, align 8, !dbg !674
  %25 = load ptr, ptr %top, align 8, !dbg !675
  call void @count_interaction(ptr noundef %22, ptr noundef %23, ptr noundef %24, ptr noundef %25, ptr noundef nonnull %match3, ptr noundef nonnull %match2, ptr noundef nonnull %match1, ptr noundef nonnull %match0, i64 noundef %process_id), !dbg !676
  %26 = load ptr, ptr %left, align 8, !dbg !677
  %27 = load ptr, ptr %center, align 8, !dbg !678
  %28 = load ptr, ptr %top, align 8, !dbg !679
  %29 = load ptr, ptr %right, align 8, !dbg !680
  call void @count_interaction(ptr noundef %26, ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef nonnull %match3, ptr noundef nonnull %match2, ptr noundef nonnull %match1, ptr noundef nonnull %match0, i64 noundef %process_id), !dbg !681
  %30 = load i64, ptr %match3, align 8, !dbg !682
  call void @llvm.dbg.value(metadata i64 %30, metadata !589, metadata !DIExpression()), !dbg !590
  %31 = load i64, ptr @total_match3, align 8, !dbg !683
  %add68 = add nsw i64 %31, %30, !dbg !683
  store i64 %add68, ptr @total_match3, align 8, !dbg !683
  %32 = load i64, ptr %match2, align 8, !dbg !684
  call void @llvm.dbg.value(metadata i64 %32, metadata !588, metadata !DIExpression()), !dbg !590
  %33 = load i64, ptr @total_match2, align 8, !dbg !685
  %add69 = add nsw i64 %33, %32, !dbg !685
  store i64 %add69, ptr @total_match2, align 8, !dbg !685
  %34 = load i64, ptr %match1, align 8, !dbg !686
  call void @llvm.dbg.value(metadata i64 %34, metadata !587, metadata !DIExpression()), !dbg !590
  %35 = load i64, ptr @total_match1, align 8, !dbg !687
  %add70 = add nsw i64 %35, %34, !dbg !687
  store i64 %add70, ptr @total_match1, align 8, !dbg !687
  %36 = load i64, ptr %match0, align 8, !dbg !688
  call void @llvm.dbg.value(metadata i64 %36, metadata !586, metadata !DIExpression()), !dbg !590
  %37 = load i64, ptr @total_match0, align 8, !dbg !689
  %add71 = add nsw i64 %37, %36, !dbg !689
  store i64 %add71, ptr @total_match0, align 8, !dbg !689
  br label %if.end72, !dbg !690

if.end72:                                         ; preds = %if.then54, %if.end51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match3) #12, !dbg !691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match2) #12, !dbg !691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match1) #12, !dbg !691
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %match0) #12, !dbg !691
  ret void, !dbg !691
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @count_interaction(ptr nocapture noundef readonly %es, ptr nocapture noundef readonly %e1, ptr nocapture noundef readonly %e2, ptr nocapture noundef readonly %e3, ptr nocapture noundef %c3, ptr nocapture noundef %c2, ptr nocapture noundef %c1, ptr nocapture noundef %c0, i64 noundef %process_id) local_unnamed_addr #5 !dbg !692 {
entry:
  call void @llvm.dbg.value(metadata ptr %es, metadata !697, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %e1, metadata !698, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %e2, metadata !699, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %e3, metadata !700, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %c3, metadata !701, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %c2, metadata !702, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %c1, metadata !703, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata ptr %c0, metadata !704, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !705, metadata !DIExpression()), !dbg !708
  %interactions = getelementptr inbounds %struct._element, ptr %es, i64 0, i32 7, !dbg !709
  call void @llvm.dbg.value(metadata ptr undef, metadata !706, metadata !DIExpression()), !dbg !708
  %pi.021 = load ptr, ptr %interactions, align 8, !dbg !711
  call void @llvm.dbg.value(metadata ptr %pi.021, metadata !706, metadata !DIExpression()), !dbg !708
  %tobool.not22 = icmp eq ptr %pi.021, null, !dbg !712
  br i1 %tobool.not22, label %for.end, label %for.body.lr.ph, !dbg !712

for.body.lr.ph:                                   ; preds = %entry
  %interactions1 = getelementptr inbounds %struct._element, ptr %e1, i64 0, i32 7
  %interactions2 = getelementptr inbounds %struct._element, ptr %e2, i64 0, i32 7
  %interactions4 = getelementptr inbounds %struct._element, ptr %e3, i64 0, i32 7
  br label %for.body, !dbg !712

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %pi.023 = phi ptr [ %pi.021, %for.body.lr.ph ], [ %pi.0, %for.inc ]
  %0 = load ptr, ptr %interactions1, align 8, !dbg !713
  %call = tail call i64 @search_intearction(ptr noundef %0, ptr noundef nonnull %pi.023, i64 undef), !dbg !716
  call void @llvm.dbg.value(metadata i64 %call, metadata !707, metadata !DIExpression()), !dbg !708
  %1 = load ptr, ptr %interactions2, align 8, !dbg !717
  %call3 = tail call i64 @search_intearction(ptr noundef %1, ptr noundef nonnull %pi.023, i64 undef), !dbg !718
  %add = add nsw i64 %call3, %call, !dbg !719
  call void @llvm.dbg.value(metadata i64 %add, metadata !707, metadata !DIExpression()), !dbg !708
  %2 = load ptr, ptr %interactions4, align 8, !dbg !720
  %call5 = tail call i64 @search_intearction(ptr noundef %2, ptr noundef nonnull %pi.023, i64 undef), !dbg !721
  %add6 = add nsw i64 %add, %call5, !dbg !722
  call void @llvm.dbg.value(metadata i64 %add6, metadata !707, metadata !DIExpression()), !dbg !708
  switch i64 %add6, label %for.inc [
    i64 0, label %for.inc.sink.split
    i64 1, label %sw.bb7
    i64 2, label %sw.bb9
    i64 3, label %sw.bb11
  ], !dbg !723

sw.bb7:                                           ; preds = %for.body
  br label %for.inc.sink.split, !dbg !724

sw.bb9:                                           ; preds = %for.body
  br label %for.inc.sink.split, !dbg !726

sw.bb11:                                          ; preds = %for.body
  br label %for.inc.sink.split, !dbg !727

for.inc.sink.split:                               ; preds = %for.body, %sw.bb11, %sw.bb9, %sw.bb7
  %c0.sink24 = phi ptr [ %c1, %sw.bb7 ], [ %c2, %sw.bb9 ], [ %c3, %sw.bb11 ], [ %c0, %for.body ]
  %3 = load i64, ptr %c0.sink24, align 8, !dbg !728
  %inc = add nsw i64 %3, 1, !dbg !728
  store i64 %inc, ptr %c0.sink24, align 8, !dbg !728
  br label %for.inc, !dbg !711

for.inc:                                          ; preds = %for.inc.sink.split, %for.body
  call void @llvm.dbg.value(metadata ptr undef, metadata !706, metadata !DIExpression()), !dbg !708
  %pi.0 = load ptr, ptr %pi.023, align 8, !dbg !711
  call void @llvm.dbg.value(metadata ptr %pi.0, metadata !706, metadata !DIExpression()), !dbg !708
  %tobool.not = icmp eq ptr %pi.0, null, !dbg !712
  br i1 %tobool.not, label %for.end, label %for.body, !dbg !712, !llvm.loop !729

for.end:                                          ; preds = %for.inc, %entry
  ret void, !dbg !731
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i64 @search_intearction(ptr noundef readonly %int_list, ptr nocapture noundef readonly %inter, i64 %process_id) local_unnamed_addr #6 !dbg !732 {
entry:
  call void @llvm.dbg.value(metadata ptr %int_list, metadata !736, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata ptr %inter, metadata !737, metadata !DIExpression()), !dbg !739
  call void @llvm.dbg.value(metadata i64 undef, metadata !738, metadata !DIExpression()), !dbg !739
  %tobool.not4 = icmp eq ptr %int_list, null, !dbg !740
  br i1 %tobool.not4, label %return, label %while.body.lr.ph, !dbg !740

while.body.lr.ph:                                 ; preds = %entry
  %destination1 = getelementptr inbounds %struct._interact, ptr %inter, i64 0, i32 1
  %0 = load ptr, ptr %destination1, align 8
  br label %while.body, !dbg !740

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %int_list.addr.05 = phi ptr [ %int_list, %while.body.lr.ph ], [ %2, %if.end ]
  call void @llvm.dbg.value(metadata ptr %int_list.addr.05, metadata !736, metadata !DIExpression()), !dbg !739
  %destination = getelementptr inbounds %struct._interact, ptr %int_list.addr.05, i64 0, i32 1, !dbg !741
  %1 = load ptr, ptr %destination, align 8, !dbg !741
  %cmp = icmp eq ptr %1, %0, !dbg !744
  br i1 %cmp, label %return, label %if.end, !dbg !745

if.end:                                           ; preds = %while.body
  %2 = load ptr, ptr %int_list.addr.05, align 8, !dbg !746
  call void @llvm.dbg.value(metadata ptr %2, metadata !736, metadata !DIExpression()), !dbg !739
  %tobool.not = icmp eq ptr %2, null, !dbg !740
  br i1 %tobool.not, label %return, label %while.body, !dbg !740, !llvm.loop !747

return:                                           ; preds = %while.body, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ 1, %while.body ], !dbg !739
  ret i64 %retval.0, !dbg !749
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_running_time(i64 noundef %process_id) local_unnamed_addr #4 !dbg !750 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !754, metadata !DIExpression()), !dbg !757
  %0 = load i64, ptr @time_rad_end, align 8, !dbg !758
  %1 = load i64, ptr @time_rad_start, align 8, !dbg !759
  %sub = sub nsw i64 %0, %1, !dbg !760
  call void @llvm.dbg.value(metadata i64 %sub, metadata !755, metadata !DIExpression()), !dbg !757
  %2 = load ptr, ptr @timing, align 8, !dbg !761
  %3 = load ptr, ptr %2, align 8, !dbg !761
  %4 = load i64, ptr %3, align 8, !dbg !762
  %sub1 = sub nsw i64 %0, %4, !dbg !763
  call void @llvm.dbg.value(metadata i64 %sub1, metadata !756, metadata !DIExpression()), !dbg !757
  %cmp = icmp slt i64 %sub, 0, !dbg !764
  %add = add nsw i64 %sub, 2048000000
  %spec.select = select i1 %cmp, i64 %add, i64 %sub, !dbg !766
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !755, metadata !DIExpression()), !dbg !757
  %cmp2 = icmp slt i64 %sub1, 0, !dbg !767
  %add4 = add nsw i64 %sub1, 2048000000
  %spec.select13 = select i1 %cmp2, i64 %add4, i64 %sub1, !dbg !769
  call void @llvm.dbg.value(metadata i64 %spec.select13, metadata !756, metadata !DIExpression()), !dbg !757
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.64, i64 noundef %1), !dbg !770
  %5 = load i64, ptr @time_rad_end, align 8, !dbg !771
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.65, i64 noundef %5), !dbg !772
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.66, i64 noundef %spec.select), !dbg !773
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.67, i64 noundef %spec.select13), !dbg !774
  ret void, !dbg !775
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @print_fork_time(i64 noundef %process_id) local_unnamed_addr #4 !dbg !776 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !778, metadata !DIExpression()), !dbg !780
  %0 = load i64, ptr @n_processors, align 8, !dbg !781
  %cmp = icmp slt i64 %0, 2, !dbg !783
  br i1 %cmp, label %cleanup, label %if.end, !dbg !784

if.end:                                           ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.72), !dbg !785
  call void @llvm.dbg.value(metadata i64 0, metadata !779, metadata !DIExpression()), !dbg !780
  %1 = load i64, ptr @n_processors, align 8, !dbg !786
  %cmp114 = icmp sgt i64 %1, 1, !dbg !789
  br i1 %cmp114, label %for.body, label %for.end, !dbg !790

for.body:                                         ; preds = %if.end, %for.body
  %pid.015 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %pid.015, metadata !779, metadata !DIExpression()), !dbg !780
  %2 = load ptr, ptr @timing, align 8, !dbg !791
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %pid.015, !dbg !791
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !791
  %4 = load i64, ptr %3, align 8, !dbg !793
  %5 = load i64, ptr @time_rad_start, align 8, !dbg !794
  %sub2 = sub nsw i64 %4, %5, !dbg !795
  %conv = sitofp i64 %sub2 to double, !dbg !796
  %div = fdiv double %conv, 1.000000e+03, !dbg !797
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.69, i64 noundef %pid.015, double noundef %div), !dbg !798
  %inc = add nuw nsw i64 %pid.015, 1, !dbg !799
  call void @llvm.dbg.value(metadata i64 %inc, metadata !779, metadata !DIExpression()), !dbg !780
  %6 = load i64, ptr @n_processors, align 8, !dbg !786
  %sub = add nsw i64 %6, -1, !dbg !800
  %cmp1 = icmp slt i64 %inc, %sub, !dbg !789
  br i1 %cmp1, label %for.body, label %for.end, !dbg !790, !llvm.loop !801

for.end:                                          ; preds = %for.body, %if.end
  %.lcssa = phi i64 [ %1, %if.end ], [ %6, %for.body ], !dbg !786
  %sub4 = add nsw i64 %.lcssa, -2, !dbg !803
  %arrayidx5 = getelementptr inbounds [0 x i64], ptr @time_process_start, i64 0, i64 %sub4, !dbg !804
  %7 = load i64, ptr %arrayidx5, align 8, !dbg !804
  %8 = load i64, ptr @time_rad_start, align 8, !dbg !805
  %sub6 = sub nsw i64 %7, %8, !dbg !806
  %conv7 = sitofp i64 %sub6 to double, !dbg !807
  %div8 = fdiv double %conv7, 1.000000e+03, !dbg !808
  %call9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.70, double noundef %div8), !dbg !809
  br label %cleanup, !dbg !810

cleanup:                                          ; preds = %entry, %for.end
  ret void, !dbg !810
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @init_stat_info(i64 noundef %process_id) local_unnamed_addr #5 !dbg !811 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !813, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i64 0, metadata !814, metadata !DIExpression()), !dbg !817
  br label %for.body, !dbg !818

for.body:                                         ; preds = %entry, %for.body
  %pid.056 = phi i64 [ 0, %entry ], [ %inc23, %for.body ]
  call void @llvm.dbg.value(metadata i64 %pid.056, metadata !814, metadata !DIExpression()), !dbg !817
  %0 = mul nuw nsw i64 %pid.056, 9072, !dbg !820
  %1 = add nuw nsw i64 %0, 166261936, !dbg !820
  %2 = add nuw nsw i64 %0, 166261920, !dbg !820
  %3 = load ptr, ptr @global, align 8, !dbg !820
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %pid.056), metadata !816, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 9072, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst, 166257728, DW_OP_stack_value)), !dbg !817
  %total_modeling_tasks = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 41, i64 %pid.056, i32 1, !dbg !823
  %total_interaction_comp = getelementptr inbounds %struct.Global, ptr %3, i64 0, i32 41, i64 %pid.056, i32 7, !dbg !824
  call void @llvm.dbg.value(metadata i64 0, metadata !815, metadata !DIExpression()), !dbg !817
  %uglygep = getelementptr i8, ptr %3, i64 %2, !dbg !825
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %total_modeling_tasks, i8 0, i64 40, i1 false), !dbg !827
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %total_interaction_comp, i8 0, i64 48, i1 false), !dbg !828
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !dbg !829
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !817
  %uglygep57 = getelementptr i8, ptr %3, i64 %1, !dbg !831
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(768) %uglygep57, i8 0, i64 768, i1 false), !dbg !833
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata i32 undef, metadata !815, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !817
  %inc23 = add nuw nsw i64 %pid.056, 1, !dbg !836
  call void @llvm.dbg.value(metadata i64 %inc23, metadata !814, metadata !DIExpression()), !dbg !817
  %exitcond.not = icmp eq i64 %inc23, 1024, !dbg !837
  br i1 %exitcond.not, label %for.end24, label %for.body, !dbg !818, !llvm.loop !838

for.end24:                                        ; preds = %for.body
  ret void, !dbg !840
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clear_radiosity(i64 noundef %process_id) local_unnamed_addr #0 !dbg !841 {
entry:
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !843, metadata !DIExpression()), !dbg !844
  tail call void @foreach_patch_in_bsp(ptr noundef nonnull @clear_patch_radiosity, i64 noundef 0, i64 noundef 0) #12, !dbg !845
  ret void, !dbg !846
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clear_patch_radiosity(ptr noundef %patch, i64 %dummy, i64 noundef %process_id) #0 !dbg !847 {
entry:
  call void @llvm.dbg.value(metadata ptr %patch, metadata !849, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i64 undef, metadata !850, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !851, metadata !DIExpression()), !dbg !852
  tail call void @foreach_element_in_patch(ptr noundef %patch, ptr noundef nonnull @clear_element_radiosity, i64 noundef 0, i64 noundef %process_id) #12, !dbg !853
  ret void, !dbg !854
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define internal void @clear_element_radiosity(ptr nocapture noundef writeonly %elem, i64 noundef %dummy, i64 noundef %process_id) #7 !dbg !855 {
entry:
  call void @llvm.dbg.value(metadata ptr %elem, metadata !857, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i64 %dummy, metadata !858, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i64 %process_id, metadata !859, metadata !DIExpression()), !dbg !860
  %rad = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, !dbg !861
  store float 0.000000e+00, ptr %rad, align 8, !dbg !862
  %g = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, i32 1, !dbg !863
  store float 0.000000e+00, ptr %g, align 4, !dbg !864
  %b = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 11, i32 2, !dbg !865
  store float 0.000000e+00, ptr %b, align 8, !dbg !866
  %rad_subtree = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, !dbg !867
  store float 0.000000e+00, ptr %rad_subtree, align 8, !dbg !868
  %g5 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, i32 1, !dbg !869
  store float 0.000000e+00, ptr %g5, align 4, !dbg !870
  %b7 = getelementptr inbounds %struct._element, ptr %elem, i64 0, i32 13, i32 2, !dbg !871
  store float 0.000000e+00, ptr %b7, align 8, !dbg !872
  %0 = load ptr, ptr @global, align 8, !dbg !873
  %prev_total_energy = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 8, !dbg !874
  %total_energy = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, !dbg !875
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %prev_total_energy, ptr noundef nonnull align 4 dereferenceable(12) %total_energy, i64 12, i1 false), !dbg !875
  store float 0.000000e+00, ptr %total_energy, align 4, !dbg !876
  %g11 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, i32 1, !dbg !877
  store float 0.000000e+00, ptr %g11, align 4, !dbg !878
  %b13 = getelementptr inbounds %struct.Global, ptr %0, i64 0, i32 9, i32 2, !dbg !879
  store float 0.000000e+00, ptr %b13, align 4, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "total_patches", scope: !2, file: !3, line: 1180, type: !9, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "rad_tools.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "828c53ebc4433ea5d576304ed732e5e6")
!4 = !{!5}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!0, !7, !10, !12, !14, !16, !18, !20, !22, !24, !26, !36, !38, !40, !42, !44, !46, !48}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "total_elements", scope: !2, file: !3, line: 1181, type: !9, isLocal: false, isDefinition: true)
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "total_equiv_elements", scope: !2, file: !3, line: 1182, type: !9, isLocal: false, isDefinition: true)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "total_interactions", scope: !2, file: !3, line: 1183, type: !9, isLocal: false, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "total_comp_visible_interactions", scope: !2, file: !3, line: 1184, type: !9, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "total_invisible_interactions", scope: !2, file: !3, line: 1185, type: !9, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "total_match3", scope: !2, file: !3, line: 1186, type: !9, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "total_match2", scope: !2, file: !3, line: 1186, type: !9, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "total_match1", scope: !2, file: !3, line: 1186, type: !9, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "total_match0", scope: !2, file: !3, line: 1186, type: !9, isLocal: false, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "elem_interaction", scope: !2, file: !3, line: 1195, type: !28, isLocal: false, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 12928, elements: !34)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elem_Interaction", file: !3, line: 1193, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 1189, size: 128, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !30, file: !3, line: 1191, baseType: !9, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !30, file: !3, line: 1192, baseType: !5, size: 32, offset: 64)
!34 = !{!35}
!35 = !DISubrange(count: 101)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "many_interaction", scope: !2, file: !3, line: 1196, type: !29, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "n_elements_in_patch", scope: !2, file: !3, line: 1403, type: !9, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "n_equiv_elem_in_patch", scope: !2, file: !3, line: 1404, type: !9, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "min_elem_area", scope: !2, file: !3, line: 1405, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "n_interactions_in_patch", scope: !2, file: !3, line: 1406, type: !9, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "n_comp_visible_interactions", scope: !2, file: !3, line: 1407, type: !9, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "n_invisible_interactions", scope: !2, file: !3, line: 1408, type: !9, isLocal: false, isDefinition: true)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{i32 7, !"PIC Level", i32 2}
!54 = !{i32 7, !"PIE Level", i32 2}
!55 = !{i32 7, !"uwtable", i32 2}
!56 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!57 = distinct !DISubprogram(name: "print_statistics", scope: !3, file: !3, line: 1205, type: !58, scopeLine: 1206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !9}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !62, line: 7, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !64, line: 49, size: 1728, elements: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!65 = !{!66, !68, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !84, !86, !87, !88, !91, !93, !95, !99, !102, !104, !107, !110, !111, !113, !117, !118}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !63, file: !64, line: 51, baseType: !67, size: 32)
!67 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !63, file: !64, line: 54, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !63, file: !64, line: 55, baseType: !69, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !63, file: !64, line: 56, baseType: !69, size: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !63, file: !64, line: 57, baseType: !69, size: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !63, file: !64, line: 58, baseType: !69, size: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !63, file: !64, line: 59, baseType: !69, size: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !63, file: !64, line: 60, baseType: !69, size: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !63, file: !64, line: 61, baseType: !69, size: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !63, file: !64, line: 64, baseType: !69, size: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !63, file: !64, line: 65, baseType: !69, size: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !63, file: !64, line: 66, baseType: !69, size: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !63, file: !64, line: 68, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !64, line: 36, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !63, file: !64, line: 70, baseType: !85, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !63, file: !64, line: 72, baseType: !67, size: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !63, file: !64, line: 73, baseType: !67, size: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !63, file: !64, line: 74, baseType: !89, size: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !90, line: 152, baseType: !9)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !63, file: !64, line: 77, baseType: !92, size: 16, offset: 1024)
!92 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !63, file: !64, line: 78, baseType: !94, size: 8, offset: 1040)
!94 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !63, file: !64, line: 79, baseType: !96, size: 8, offset: 1048)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 8, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 1)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !63, file: !64, line: 81, baseType: !100, size: 64, offset: 1088)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !64, line: 43, baseType: null)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !63, file: !64, line: 89, baseType: !103, size: 64, offset: 1152)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !90, line: 153, baseType: !9)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !63, file: !64, line: 91, baseType: !105, size: 64, offset: 1216)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !64, line: 37, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !63, file: !64, line: 92, baseType: !108, size: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !64, line: 38, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !63, file: !64, line: 93, baseType: !85, size: 64, offset: 1344)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !63, file: !64, line: 94, baseType: !112, size: 64, offset: 1408)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !63, file: !64, line: 95, baseType: !114, size: 64, offset: 1472)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 46, baseType: !116)
!115 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !63, file: !64, line: 96, baseType: !67, size: 32, offset: 1536)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !63, file: !64, line: 98, baseType: !119, size: 160, offset: 1568)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 160, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 20)
!122 = !{!123, !124, !125}
!123 = !DILocalVariable(name: "fd", arg: 1, scope: !57, file: !3, line: 1205, type: !60)
!124 = !DILocalVariable(name: "process_id", arg: 2, scope: !57, file: !3, line: 1205, type: !9)
!125 = !DILocalVariable(name: "i", scope: !57, file: !3, line: 1207, type: !9)
!126 = !DILocation(line: 0, scope: !57)
!127 = !DILocation(line: 1210, column: 19, scope: !57)
!128 = !DILocation(line: 1211, column: 20, scope: !57)
!129 = !DILocation(line: 1212, column: 26, scope: !57)
!130 = !DILocation(line: 1213, column: 24, scope: !57)
!131 = !DILocation(line: 1214, column: 37, scope: !57)
!132 = !DILocation(line: 1215, column: 34, scope: !57)
!133 = !DILocation(line: 1216, column: 18, scope: !57)
!134 = !DILocation(line: 1217, column: 18, scope: !57)
!135 = !DILocation(line: 1218, column: 18, scope: !57)
!136 = !DILocation(line: 1219, column: 18, scope: !57)
!137 = !DILocation(line: 1221, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !57, file: !3, line: 1221, column: 5)
!139 = !DILocation(line: 1223, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 1222, column: 9)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 1221, column: 5)
!142 = !DILocation(line: 1223, column: 39, scope: !140)
!143 = !DILocation(line: 1224, column: 33, scope: !140)
!144 = !DILocation(line: 1224, column: 38, scope: !140)
!145 = !DILocation(line: 1221, column: 53, scope: !141)
!146 = !DILocation(line: 1221, column: 20, scope: !141)
!147 = distinct !{!147, !137, !148, !149, !150}
!148 = !DILocation(line: 1225, column: 9, scope: !138)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !DILocation(line: 1226, column: 28, scope: !57)
!152 = !DILocation(line: 1227, column: 28, scope: !57)
!153 = !DILocation(line: 1229, column: 5, scope: !57)
!154 = !DILocation(line: 1231, column: 5, scope: !57)
!155 = !DILocation(line: 1233, column: 5, scope: !57)
!156 = !DILocation(line: 1234, column: 5, scope: !57)
!157 = !DILocation(line: 1235, column: 5, scope: !57)
!158 = !DILocation(line: 1236, column: 26, scope: !159)
!159 = distinct !DILexicalBlock(scope: !57, file: !3, line: 1236, column: 9)
!160 = !DILocation(line: 1236, column: 32, scope: !159)
!161 = !DILocation(line: 1236, column: 9, scope: !57)
!162 = !DILocation(line: 1241, column: 38, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !3, line: 1237, column: 9)
!164 = !DILocation(line: 1241, column: 45, scope: !163)
!165 = !DILocation(line: 1241, column: 43, scope: !163)
!166 = !DILocation(line: 1241, column: 21, scope: !163)
!167 = !DILocation(line: 1238, column: 13, scope: !163)
!168 = !DILocation(line: 1242, column: 9, scope: !163)
!169 = !DILocation(line: 1243, column: 5, scope: !170)
!170 = distinct !DILexicalBlock(scope: !57, file: !3, line: 1243, column: 5)
!171 = !DILocation(line: 0, scope: !170)
!172 = !DILocation(line: 1244, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 1243, column: 5)
!174 = !DILocation(line: 1244, column: 29, scope: !173)
!175 = !DILocation(line: 1244, column: 35, scope: !173)
!176 = !DILocation(line: 1244, column: 43, scope: !173)
!177 = distinct !{!177, !169, !178, !149, !150}
!178 = !DILocation(line: 1244, column: 48, scope: !170)
!179 = !DILocation(line: 1245, column: 14, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 1245, column: 5)
!181 = distinct !DILexicalBlock(scope: !57, file: !3, line: 1245, column: 5)
!182 = !DILocation(line: 1245, column: 5, scope: !181)
!183 = !DILocation(line: 1247, column: 37, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 1247, column: 17)
!185 = distinct !DILexicalBlock(scope: !180, file: !3, line: 1246, column: 9)
!186 = !DILocation(line: 1247, column: 43, scope: !184)
!187 = !DILocation(line: 1247, column: 17, scope: !185)
!188 = !DILocation(line: 1257, column: 45, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !3, line: 1250, column: 17)
!190 = !DILocation(line: 1257, column: 52, scope: !189)
!191 = !DILocation(line: 1257, column: 50, scope: !189)
!192 = !DILocation(line: 1257, column: 25, scope: !189)
!193 = !DILocation(line: 1255, column: 17, scope: !189)
!194 = distinct !{!194, !182, !195, !149, !150}
!195 = !DILocation(line: 1258, column: 9, scope: !181)
!196 = !DILocation(line: 1245, column: 22, scope: !180)
!197 = !DILocation(line: 1260, column: 5, scope: !57)
!198 = !DILocation(line: 1266, column: 5, scope: !57)
!199 = !DILocation(line: 1269, column: 5, scope: !57)
!200 = !DILocation(line: 1270, column: 5, scope: !57)
!201 = !DILocation(line: 1271, column: 5, scope: !57)
!202 = !DILocation(line: 1272, column: 5, scope: !57)
!203 = !DILocation(line: 1275, column: 5, scope: !57)
!204 = !DILocation(line: 1276, column: 54, scope: !57)
!205 = !DILocation(line: 1276, column: 5, scope: !57)
!206 = !DILocation(line: 1277, column: 54, scope: !57)
!207 = !DILocation(line: 1277, column: 5, scope: !57)
!208 = !DILocation(line: 1278, column: 54, scope: !57)
!209 = !DILocation(line: 1278, column: 5, scope: !57)
!210 = !DILocation(line: 1279, column: 53, scope: !57)
!211 = !DILocation(line: 1279, column: 5, scope: !57)
!212 = !DILocation(line: 1281, column: 13, scope: !57)
!213 = !DILocation(line: 1280, column: 5, scope: !57)
!214 = !DILocation(line: 1282, column: 54, scope: !57)
!215 = !DILocation(line: 1282, column: 5, scope: !57)
!216 = !DILocation(line: 1283, column: 53, scope: !57)
!217 = !DILocation(line: 1283, column: 5, scope: !57)
!218 = !DILocation(line: 1284, column: 53, scope: !57)
!219 = !DILocation(line: 1284, column: 5, scope: !57)
!220 = !DILocation(line: 1287, column: 13, scope: !57)
!221 = !DILocation(line: 1287, column: 21, scope: !57)
!222 = !DILocation(line: 1286, column: 5, scope: !57)
!223 = !DILocation(line: 1289, column: 5, scope: !57)
!224 = !DILocation(line: 1290, column: 59, scope: !57)
!225 = !DILocation(line: 1290, column: 5, scope: !57)
!226 = !DILocation(line: 1291, column: 59, scope: !57)
!227 = !DILocation(line: 1291, column: 5, scope: !57)
!228 = !DILocation(line: 1292, column: 59, scope: !57)
!229 = !DILocation(line: 1292, column: 5, scope: !57)
!230 = !DILocation(line: 1294, column: 13, scope: !57)
!231 = !DILocation(line: 1293, column: 5, scope: !57)
!232 = !DILocation(line: 1296, column: 13, scope: !57)
!233 = !DILocation(line: 1295, column: 5, scope: !57)
!234 = !DILocation(line: 1298, column: 13, scope: !57)
!235 = !DILocation(line: 1298, column: 34, scope: !57)
!236 = !DILocation(line: 1299, column: 15, scope: !57)
!237 = !DILocation(line: 1299, column: 13, scope: !57)
!238 = !DILocation(line: 1297, column: 5, scope: !57)
!239 = !DILocation(line: 1300, column: 5, scope: !57)
!240 = !DILocation(line: 1301, column: 59, scope: !57)
!241 = !DILocation(line: 1301, column: 5, scope: !57)
!242 = !DILocation(line: 1302, column: 59, scope: !57)
!243 = !DILocation(line: 1302, column: 5, scope: !57)
!244 = !DILocation(line: 1303, column: 59, scope: !57)
!245 = !DILocation(line: 1303, column: 5, scope: !57)
!246 = !DILocation(line: 1304, column: 59, scope: !57)
!247 = !DILocation(line: 1304, column: 5, scope: !57)
!248 = !DILocation(line: 1306, column: 20, scope: !57)
!249 = !DILocation(line: 1306, column: 13, scope: !57)
!250 = !DILocation(line: 1306, column: 44, scope: !57)
!251 = !DILocation(line: 1306, column: 37, scope: !57)
!252 = !DILocation(line: 1306, column: 35, scope: !57)
!253 = !DILocation(line: 1305, column: 5, scope: !57)
!254 = !DILocation(line: 1308, column: 20, scope: !57)
!255 = !DILocation(line: 1308, column: 13, scope: !57)
!256 = !DILocation(line: 1308, column: 48, scope: !57)
!257 = !DILocation(line: 1308, column: 41, scope: !57)
!258 = !DILocation(line: 1308, column: 39, scope: !57)
!259 = !DILocation(line: 1307, column: 5, scope: !57)
!260 = !DILocation(line: 1310, column: 20, scope: !57)
!261 = !DILocation(line: 1310, column: 13, scope: !57)
!262 = !DILocation(line: 1310, column: 48, scope: !57)
!263 = !DILocation(line: 1310, column: 41, scope: !57)
!264 = !DILocation(line: 1310, column: 39, scope: !57)
!265 = !DILocation(line: 1309, column: 5, scope: !57)
!266 = !DILocation(line: 1312, column: 13, scope: !57)
!267 = !DILocation(line: 1311, column: 5, scope: !57)
!268 = !DILocation(line: 1314, column: 20, scope: !57)
!269 = !DILocation(line: 1314, column: 13, scope: !57)
!270 = !DILocation(line: 1314, column: 44, scope: !57)
!271 = !DILocation(line: 1314, column: 37, scope: !57)
!272 = !DILocation(line: 1314, column: 35, scope: !57)
!273 = !DILocation(line: 1314, column: 65, scope: !57)
!274 = !DILocation(line: 1313, column: 5, scope: !57)
!275 = !DILocation(line: 1315, column: 1, scope: !57)
!276 = !DISubprogram(name: "foreach_patch_in_bsp", scope: !3, file: !3, line: 441, type: !277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !282)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !279, !9, !9}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, null}
!282 = !{}
!283 = distinct !DISubprogram(name: "get_patch_stat", scope: !3, file: !3, line: 1411, type: !284, scopeLine: 1412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !286, !9, !9}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "Patch", file: !3, line: 345, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_patch", file: !3, line: 329, size: 1344, elements: !289)
!289 = !{!290, !347, !348, !349, !360, !361, !362, !363, !364, !365, !371, !372, !373, !374, !376, !377, !378, !415}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !288, file: !3, line: 330, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ElemVertex", file: !3, line: 253, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_elemvertex", file: !3, line: 248, size: 320, elements: !294)
!294 = !{!295, !303, !310, !311}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !293, file: !3, line: 249, baseType: !296, size: 96)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !297, line: 14, baseType: !298)
!297 = !DIFile(filename: "./glibps/../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 12, size: 96, elements: !299)
!299 = !{!300, !301, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !298, file: !297, line: 13, baseType: !5, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !298, file: !297, line: 13, baseType: !5, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !298, file: !297, line: 13, baseType: !5, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !293, file: !3, line: 250, baseType: !304, size: 96, offset: 96)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !297, line: 24, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 22, size: 96, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !305, file: !297, line: 23, baseType: !5, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !305, file: !297, line: 23, baseType: !5, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !305, file: !297, line: 23, baseType: !5, size: 32, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !293, file: !3, line: 251, baseType: !5, size: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ev_lock", scope: !293, file: !3, line: 252, baseType: !312, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "Shared_Lock", file: !3, line: 114, baseType: !314)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 111, size: 320, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !314, file: !3, line: 113, baseType: !317, size: 320)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !318, line: 72, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!319 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !318, line: 67, size: 320, elements: !320)
!320 = !{!321, !342, !346}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !319, file: !318, line: 69, baseType: !322, size: 320)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !323, line: 22, size: 320, elements: !324)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!324 = !{!325, !326, !328, !329, !330, !331, !333, !334}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !322, file: !323, line: 24, baseType: !67, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !322, file: !323, line: 25, baseType: !327, size: 32, offset: 32)
!327 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !322, file: !323, line: 26, baseType: !67, size: 32, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !322, file: !323, line: 28, baseType: !327, size: 32, offset: 96)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !322, file: !323, line: 32, baseType: !67, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !322, file: !323, line: 34, baseType: !332, size: 16, offset: 160)
!332 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !322, file: !323, line: 35, baseType: !332, size: 16, offset: 176)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !322, file: !323, line: 36, baseType: !335, size: 128, offset: 192)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !336, line: 53, baseType: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !336, line: 49, size: 128, elements: !338)
!338 = !{!339, !341}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !337, file: !336, line: 51, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !337, file: !336, line: 52, baseType: !340, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !319, file: !318, line: 70, baseType: !343, size: 320)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 320, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 40)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !319, file: !318, line: 71, baseType: !9, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !288, file: !3, line: 330, baseType: !291, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !288, file: !3, line: 330, baseType: !291, size: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !288, file: !3, line: 331, baseType: !350, size: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "Edge", file: !3, line: 276, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_edge", file: !3, line: 272, size: 320, elements: !353)
!353 = !{!354, !355, !356, !358, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !352, file: !3, line: 273, baseType: !291, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !352, file: !3, line: 273, baseType: !291, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ea", scope: !352, file: !3, line: 274, baseType: !357, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "eb", scope: !352, file: !3, line: 274, baseType: !357, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "edge_lock", scope: !352, file: !3, line: 275, baseType: !312, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !288, file: !3, line: 331, baseType: !350, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !288, file: !3, line: 331, baseType: !350, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "p1", scope: !288, file: !3, line: 332, baseType: !296, size: 96, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "p2", scope: !288, file: !3, line: 332, baseType: !296, size: 96, offset: 480)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "p3", scope: !288, file: !3, line: 332, baseType: !296, size: 96, offset: 576)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "plane_equ", scope: !288, file: !3, line: 333, baseType: !366, size: 128, offset: 672)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PlaneEqu", file: !3, line: 301, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 297, size: 128, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !367, file: !3, line: 298, baseType: !296, size: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !367, file: !3, line: 299, baseType: !5, size: 32, offset: 96)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !288, file: !3, line: 334, baseType: !5, size: 32, offset: 800)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !288, file: !3, line: 335, baseType: !304, size: 96, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "emittance", scope: !288, file: !3, line: 337, baseType: !304, size: 96, offset: 928)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_positive", scope: !288, file: !3, line: 339, baseType: !375, size: 64, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_negative", scope: !288, file: !3, line: 340, baseType: !375, size: 64, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "bsp_parent", scope: !288, file: !3, line: 341, baseType: !375, size: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "el_root", scope: !288, file: !3, line: 343, baseType: !379, size: 64, offset: 1216)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !3, line: 385, size: 1536, elements: !381)
!381 = !{!382, !383, !384, !385, !386, !387, !388, !389, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "elem_lock", scope: !380, file: !3, line: 386, baseType: !312, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "patch", scope: !380, file: !3, line: 387, baseType: !286, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !380, file: !3, line: 389, baseType: !379, size: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !380, file: !3, line: 390, baseType: !379, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !380, file: !3, line: 391, baseType: !379, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !380, file: !3, line: 392, baseType: !379, size: 64, offset: 320)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !380, file: !3, line: 393, baseType: !379, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "interactions", scope: !380, file: !3, line: 395, baseType: !390, size: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interact", file: !3, line: 431, size: 256, elements: !392)
!392 = !{!393, !394, !397, !398, !399, !400}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !3, line: 432, baseType: !390, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "destination", scope: !391, file: !3, line: 433, baseType: !395, size: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "Element", file: !3, line: 410, baseType: !380)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_out", scope: !391, file: !3, line: 434, baseType: !5, size: 32, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "formfactor_err", scope: !391, file: !3, line: 435, baseType: !5, size: 32, offset: 160)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "area_ratio", scope: !391, file: !3, line: 436, baseType: !5, size: 32, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !391, file: !3, line: 437, baseType: !5, size: 32, offset: 224)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "n_interactions", scope: !380, file: !3, line: 396, baseType: !9, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "vis_undef_inter", scope: !380, file: !3, line: 397, baseType: !390, size: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "n_vis_undef_inter", scope: !380, file: !3, line: 398, baseType: !9, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rad", scope: !380, file: !3, line: 400, baseType: !304, size: 96, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rad_in", scope: !380, file: !3, line: 402, baseType: !304, size: 96, offset: 800)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "rad_subtree", scope: !380, file: !3, line: 403, baseType: !304, size: 96, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "join_counter", scope: !380, file: !3, line: 405, baseType: !9, size: 64, offset: 1024)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ev1", scope: !380, file: !3, line: 407, baseType: !291, size: 64, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ev2", scope: !380, file: !3, line: 407, baseType: !291, size: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ev3", scope: !380, file: !3, line: 407, baseType: !291, size: 64, offset: 1216)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "e12", scope: !380, file: !3, line: 408, baseType: !350, size: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "e23", scope: !380, file: !3, line: 408, baseType: !350, size: 64, offset: 1344)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "e31", scope: !380, file: !3, line: 408, baseType: !350, size: 64, offset: 1408)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !380, file: !3, line: 409, baseType: !5, size: 32, offset: 1472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_no", scope: !288, file: !3, line: 344, baseType: !9, size: 64, offset: 1280)
!416 = !{!417, !418, !419}
!417 = !DILocalVariable(name: "patch", arg: 1, scope: !283, file: !3, line: 1411, type: !286)
!418 = !DILocalVariable(name: "dummy", arg: 2, scope: !283, file: !3, line: 1411, type: !9)
!419 = !DILocalVariable(name: "process_id", arg: 3, scope: !283, file: !3, line: 1411, type: !9)
!420 = !DILocation(line: 0, scope: !283)
!421 = !DILocation(line: 1414, column: 25, scope: !283)
!422 = !DILocation(line: 1415, column: 27, scope: !283)
!423 = !DILocation(line: 1416, column: 28, scope: !283)
!424 = !DILocation(line: 1416, column: 19, scope: !283)
!425 = !DILocation(line: 1417, column: 29, scope: !283)
!426 = !DILocation(line: 1418, column: 33, scope: !283)
!427 = !DILocation(line: 1419, column: 30, scope: !283)
!428 = !DILocation(line: 1422, column: 5, scope: !283)
!429 = !DILocation(line: 1425, column: 18, scope: !283)
!430 = !DILocation(line: 1426, column: 23, scope: !283)
!431 = !DILocation(line: 1426, column: 20, scope: !283)
!432 = !DILocation(line: 1427, column: 29, scope: !283)
!433 = !DILocation(line: 1427, column: 26, scope: !283)
!434 = !DILocation(line: 1428, column: 27, scope: !283)
!435 = !DILocation(line: 1428, column: 24, scope: !283)
!436 = !DILocation(line: 1429, column: 40, scope: !283)
!437 = !DILocation(line: 1429, column: 37, scope: !283)
!438 = !DILocation(line: 1430, column: 37, scope: !283)
!439 = !DILocation(line: 1430, column: 34, scope: !283)
!440 = !DILocation(line: 1442, column: 1, scope: !283)
!441 = distinct !DISubprogram(name: "print_per_process_info", scope: !3, file: !3, line: 1326, type: !58, scopeLine: 1327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!442 = !{!443, !444, !445, !446, !447, !486}
!443 = !DILocalVariable(name: "fd", arg: 1, scope: !441, file: !3, line: 1326, type: !60)
!444 = !DILocalVariable(name: "process", arg: 2, scope: !441, file: !3, line: 1326, type: !9)
!445 = !DILocalVariable(name: "cache_line", scope: !441, file: !3, line: 1328, type: !9)
!446 = !DILocalVariable(name: "iteration", scope: !441, file: !3, line: 1329, type: !9)
!447 = !DILocalVariable(name: "ps", scope: !441, file: !3, line: 1330, type: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatisticalInfo", file: !3, line: 926, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 906, size: 72576, elements: !451)
!451 = !{!452, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !485}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !450, file: !3, line: 908, baseType: !453, size: 32768)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 32768, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 4096)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "total_modeling_tasks", scope: !450, file: !3, line: 910, baseType: !9, size: 64, offset: 32768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "total_def_patch_tasks", scope: !450, file: !3, line: 911, baseType: !9, size: 64, offset: 32832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "total_ff_ref_tasks", scope: !450, file: !3, line: 912, baseType: !9, size: 64, offset: 32896)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "total_ray_tasks", scope: !450, file: !3, line: 913, baseType: !9, size: 64, offset: 32960)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "total_radavg_tasks", scope: !450, file: !3, line: 914, baseType: !9, size: 64, offset: 33024)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "total_direct_radavg_tasks", scope: !450, file: !3, line: 915, baseType: !9, size: 64, offset: 33088)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "total_interaction_comp", scope: !450, file: !3, line: 916, baseType: !9, size: 64, offset: 33152)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "total_visibility_comp", scope: !450, file: !3, line: 917, baseType: !9, size: 64, offset: 33216)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "partially_visible", scope: !450, file: !3, line: 918, baseType: !9, size: 64, offset: 33280)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "total_ray_intersect_test", scope: !450, file: !3, line: 919, baseType: !9, size: 64, offset: 33344)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "total_patch_cache_check", scope: !450, file: !3, line: 920, baseType: !9, size: 64, offset: 33408)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "total_patch_cache_hit", scope: !450, file: !3, line: 921, baseType: !9, size: 64, offset: 33472)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "patch_cache_hit", scope: !450, file: !3, line: 922, baseType: !469, size: 128, offset: 33536)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 128, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 2)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "per_iteration", scope: !450, file: !3, line: 923, baseType: !473, size: 6144, offset: 33664)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 6144, elements: !483)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerIterationInfo", file: !3, line: 903, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 895, size: 384, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !482}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_comp", scope: !475, file: !3, line: 897, baseType: !9, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ray_intersect_test", scope: !475, file: !3, line: 898, baseType: !9, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tasks_from_myq", scope: !475, file: !3, line: 899, baseType: !9, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tasks_from_otherq", scope: !475, file: !3, line: 900, baseType: !9, size: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "process_tasks_wait", scope: !475, file: !3, line: 901, baseType: !9, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "last_pr_task", scope: !475, file: !3, line: 902, baseType: !379, size: 64, offset: 320)
!483 = !{!484}
!484 = !DISubrange(count: 16)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !450, file: !3, line: 924, baseType: !453, size: 32768, offset: 39808)
!486 = !DILocalVariable(name: "e", scope: !441, file: !3, line: 1331, type: !395)
!487 = !DILocation(line: 0, scope: !441)
!488 = !DILocation(line: 1333, column: 11, scope: !441)
!489 = !DILocation(line: 1336, column: 9, scope: !441)
!490 = !DILocation(line: 1335, column: 5, scope: !441)
!491 = !DILocation(line: 1338, column: 9, scope: !441)
!492 = !DILocation(line: 1337, column: 5, scope: !441)
!493 = !DILocation(line: 1340, column: 9, scope: !441)
!494 = !DILocation(line: 1339, column: 5, scope: !441)
!495 = !DILocation(line: 1342, column: 9, scope: !441)
!496 = !DILocation(line: 1341, column: 5, scope: !441)
!497 = !DILocation(line: 1344, column: 9, scope: !441)
!498 = !DILocation(line: 1343, column: 5, scope: !441)
!499 = !DILocation(line: 1346, column: 9, scope: !441)
!500 = !DILocation(line: 1345, column: 5, scope: !441)
!501 = !DILocation(line: 1348, column: 9, scope: !441)
!502 = !DILocation(line: 1347, column: 5, scope: !441)
!503 = !DILocation(line: 1350, column: 9, scope: !441)
!504 = !DILocation(line: 1351, column: 9, scope: !441)
!505 = !DILocation(line: 1349, column: 5, scope: !441)
!506 = !DILocation(line: 1353, column: 9, scope: !441)
!507 = !DILocation(line: 1352, column: 5, scope: !441)
!508 = !DILocation(line: 1355, column: 9, scope: !441)
!509 = !DILocation(line: 1355, column: 31, scope: !441)
!510 = !DILocation(line: 1355, column: 5, scope: !441)
!511 = !DILocation(line: 1356, column: 10, scope: !441)
!512 = !DILocation(line: 1356, column: 6, scope: !441)
!513 = !DILocation(line: 1356, column: 34, scope: !441)
!514 = !DILocation(line: 1355, column: 37, scope: !441)
!515 = !DILocation(line: 1354, column: 5, scope: !441)
!516 = !DILocation(line: 1360, column: 5, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 1357, column: 5)
!518 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1357, column: 5)
!519 = !DILocation(line: 1360, column: 37, scope: !517)
!520 = !DILocation(line: 1361, column: 10, scope: !517)
!521 = !DILocation(line: 1361, column: 6, scope: !517)
!522 = !DILocation(line: 1361, column: 34, scope: !517)
!523 = !DILocation(line: 1360, column: 43, scope: !517)
!524 = !DILocation(line: 1358, column: 5, scope: !517)
!525 = !DILocation(line: 1364, column: 5, scope: !441)
!526 = !DILocation(line: 1365, column: 38, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 1365, column: 5)
!528 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1365, column: 5)
!529 = !DILocation(line: 1365, column: 46, scope: !527)
!530 = !DILocation(line: 1365, column: 36, scope: !527)
!531 = !DILocation(line: 1365, column: 5, scope: !528)
!532 = !DILocation(line: 1368, column: 20, scope: !533)
!533 = distinct !DILexicalBlock(scope: !527, file: !3, line: 1366, column: 5)
!534 = !DILocation(line: 1368, column: 49, scope: !533)
!535 = !DILocation(line: 1367, column: 9, scope: !533)
!536 = !DILocation(line: 1370, column: 38, scope: !533)
!537 = !DILocation(line: 1369, column: 9, scope: !533)
!538 = !DILocation(line: 1372, column: 38, scope: !533)
!539 = !DILocation(line: 1371, column: 9, scope: !533)
!540 = !DILocation(line: 1374, column: 38, scope: !533)
!541 = !DILocation(line: 1373, column: 9, scope: !533)
!542 = !DILocation(line: 1376, column: 38, scope: !533)
!543 = !DILocation(line: 1375, column: 9, scope: !533)
!544 = !DILocation(line: 1377, column: 42, scope: !533)
!545 = !DILocation(line: 1378, column: 15, scope: !546)
!546 = distinct !DILexicalBlock(scope: !533, file: !3, line: 1378, column: 13)
!547 = !DILocation(line: 1378, column: 13, scope: !533)
!548 = !DILocation(line: 1380, column: 16, scope: !549)
!549 = distinct !DILexicalBlock(scope: !533, file: !3, line: 1380, column: 13)
!550 = !DILocation(line: 1380, column: 23, scope: !549)
!551 = !DILocation(line: 1380, column: 13, scope: !533)
!552 = !DILocation(line: 1382, column: 13, scope: !553)
!553 = distinct !DILexicalBlock(scope: !549, file: !3, line: 1381, column: 9)
!554 = !DILocation(line: 1384, column: 16, scope: !553)
!555 = !DILocation(line: 1383, column: 13, scope: !553)
!556 = !DILocation(line: 1385, column: 9, scope: !553)
!557 = !DILocation(line: 1388, column: 13, scope: !558)
!558 = distinct !DILexicalBlock(scope: !549, file: !3, line: 1387, column: 9)
!559 = !DILocation(line: 1390, column: 16, scope: !558)
!560 = !DILocation(line: 1390, column: 35, scope: !558)
!561 = !DILocation(line: 1390, column: 45, scope: !558)
!562 = !DILocation(line: 1390, column: 52, scope: !558)
!563 = !DILocation(line: 1390, column: 40, scope: !558)
!564 = !DILocation(line: 1390, column: 32, scope: !558)
!565 = !DILocation(line: 1389, column: 13, scope: !558)
!566 = !DILocation(line: 1365, column: 73, scope: !527)
!567 = distinct !{!567, !531, !568, !149, !150}
!568 = !DILocation(line: 1392, column: 5, scope: !528)
!569 = !DILocation(line: 1393, column: 1, scope: !441)
!570 = !DISubprogram(name: "foreach_element_in_patch", scope: !3, file: !3, line: 1066, type: !571, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !282)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !286, !279, !9, !9}
!573 = distinct !DISubprogram(name: "get_elem_stat", scope: !3, file: !3, line: 1444, type: !574, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !395, !9, !9}
!576 = !{!577, !578, !579, !580, !583, !584, !585, !586, !587, !588, !589}
!577 = !DILocalVariable(name: "elem", arg: 1, scope: !573, file: !3, line: 1444, type: !395)
!578 = !DILocalVariable(name: "dummy", arg: 2, scope: !573, file: !3, line: 1444, type: !9)
!579 = !DILocalVariable(name: "process_id", arg: 3, scope: !573, file: !3, line: 1444, type: !9)
!580 = !DILocalVariable(name: "pi", scope: !573, file: !3, line: 1446, type: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "Interaction", file: !3, line: 438, baseType: !391)
!583 = !DILocalVariable(name: "p_visible", scope: !573, file: !3, line: 1447, type: !9)
!584 = !DILocalVariable(name: "c_visible", scope: !573, file: !3, line: 1448, type: !9)
!585 = !DILocalVariable(name: "i_visible", scope: !573, file: !3, line: 1449, type: !9)
!586 = !DILocalVariable(name: "match0", scope: !573, file: !3, line: 1450, type: !9)
!587 = !DILocalVariable(name: "match1", scope: !573, file: !3, line: 1450, type: !9)
!588 = !DILocalVariable(name: "match2", scope: !573, file: !3, line: 1450, type: !9)
!589 = !DILocalVariable(name: "match3", scope: !573, file: !3, line: 1450, type: !9)
!590 = !DILocation(line: 0, scope: !573)
!591 = !DILocation(line: 1450, column: 5, scope: !573)
!592 = !DILocation(line: 1452, column: 24, scope: !573)
!593 = !DILocation(line: 1454, column: 23, scope: !573)
!594 = !DILocation(line: 1454, column: 5, scope: !573)
!595 = !DILocation(line: 1456, column: 23, scope: !596)
!596 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1455, column: 5)
!597 = !DILocation(line: 1457, column: 31, scope: !596)
!598 = distinct !{!598, !594, !599, !149, !150}
!599 = !DILocation(line: 1458, column: 5, scope: !573)
!600 = !DILocation(line: 1461, column: 38, scope: !573)
!601 = !DILocation(line: 1461, column: 29, scope: !573)
!602 = !DILocation(line: 1462, column: 21, scope: !603)
!603 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1462, column: 5)
!604 = !DILocation(line: 0, scope: !603)
!605 = !DILocation(line: 1462, column: 5, scope: !603)
!606 = !DILocation(line: 1464, column: 17, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 1464, column: 13)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 1463, column: 5)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 1462, column: 5)
!610 = !DILocation(line: 1464, column: 28, scope: !607)
!611 = !DILocation(line: 1464, column: 13, scope: !608)
!612 = !DILocation(line: 1465, column: 18, scope: !607)
!613 = !DILocation(line: 1465, column: 9, scope: !607)
!614 = !DILocation(line: 1466, column: 33, scope: !615)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 1466, column: 18)
!616 = !DILocation(line: 1466, column: 18, scope: !607)
!617 = !DILocation(line: 1467, column: 18, scope: !615)
!618 = !DILocation(line: 1467, column: 9, scope: !615)
!619 = !DILocation(line: 1469, column: 18, scope: !615)
!620 = distinct !{!620, !605, !621, !149, !150}
!621 = !DILocation(line: 1470, column: 5, scope: !603)
!622 = !DILocation(line: 1447, column: 10, scope: !573)
!623 = !DILocation(line: 1448, column: 10, scope: !573)
!624 = !DILocation(line: 1471, column: 19, scope: !625)
!625 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1471, column: 9)
!626 = !DILocation(line: 1471, column: 31, scope: !625)
!627 = !DILocation(line: 1471, column: 43, scope: !625)
!628 = !DILocation(line: 1471, column: 9, scope: !573)
!629 = !DILocation(line: 1472, column: 5, scope: !625)
!630 = !DILocation(line: 1473, column: 15, scope: !631)
!631 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1473, column: 9)
!632 = !DILocation(line: 1473, column: 33, scope: !631)
!633 = !DILocation(line: 1473, column: 9, scope: !573)
!634 = !DILocation(line: 1474, column: 5, scope: !631)
!635 = !DILocation(line: 1476, column: 15, scope: !636)
!636 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1476, column: 9)
!637 = !DILocation(line: 1476, column: 31, scope: !636)
!638 = !DILocation(line: 1476, column: 9, scope: !573)
!639 = !DILocation(line: 1477, column: 5, scope: !636)
!640 = !DILocation(line: 1479, column: 33, scope: !573)
!641 = !DILocation(line: 1480, column: 33, scope: !573)
!642 = !DILocation(line: 1484, column: 15, scope: !643)
!643 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1484, column: 9)
!644 = !DILocation(line: 1484, column: 30, scope: !643)
!645 = !DILocation(line: 1484, column: 9, scope: !573)
!646 = !DILocation(line: 1486, column: 31, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !3, line: 1485, column: 5)
!648 = !DILocation(line: 1488, column: 5, scope: !647)
!649 = !DILocation(line: 1491, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !643, file: !3, line: 1490, column: 5)
!651 = !DILocation(line: 1491, column: 55, scope: !650)
!652 = !DILocation(line: 1492, column: 33, scope: !650)
!653 = !DILocation(line: 1492, column: 50, scope: !650)
!654 = !DILocation(line: 0, scope: !643)
!655 = !DILocation(line: 1496, column: 11, scope: !656)
!656 = distinct !DILexicalBlock(scope: !573, file: !3, line: 1496, column: 9)
!657 = !DILocation(line: 1496, column: 9, scope: !573)
!658 = !DILocation(line: 1498, column: 43, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !3, line: 1497, column: 5)
!660 = !DILocation(line: 1498, column: 34, scope: !659)
!661 = !DILocation(line: 1498, column: 25, scope: !659)
!662 = !DILocation(line: 1498, column: 16, scope: !659)
!663 = !DILocation(line: 1500, column: 47, scope: !659)
!664 = !DILocation(line: 1500, column: 58, scope: !659)
!665 = !DILocation(line: 1500, column: 71, scope: !659)
!666 = !DILocation(line: 1500, column: 9, scope: !659)
!667 = !DILocation(line: 1502, column: 33, scope: !659)
!668 = !DILocation(line: 1502, column: 44, scope: !659)
!669 = !DILocation(line: 1502, column: 57, scope: !659)
!670 = !DILocation(line: 1502, column: 69, scope: !659)
!671 = !DILocation(line: 1502, column: 9, scope: !659)
!672 = !DILocation(line: 1504, column: 33, scope: !659)
!673 = !DILocation(line: 1504, column: 46, scope: !659)
!674 = !DILocation(line: 1504, column: 58, scope: !659)
!675 = !DILocation(line: 1504, column: 72, scope: !659)
!676 = !DILocation(line: 1504, column: 9, scope: !659)
!677 = !DILocation(line: 1506, column: 33, scope: !659)
!678 = !DILocation(line: 1506, column: 45, scope: !659)
!679 = !DILocation(line: 1506, column: 59, scope: !659)
!680 = !DILocation(line: 1506, column: 70, scope: !659)
!681 = !DILocation(line: 1506, column: 9, scope: !659)
!682 = !DILocation(line: 1509, column: 25, scope: !659)
!683 = !DILocation(line: 1509, column: 22, scope: !659)
!684 = !DILocation(line: 1510, column: 25, scope: !659)
!685 = !DILocation(line: 1510, column: 22, scope: !659)
!686 = !DILocation(line: 1511, column: 25, scope: !659)
!687 = !DILocation(line: 1511, column: 22, scope: !659)
!688 = !DILocation(line: 1512, column: 25, scope: !659)
!689 = !DILocation(line: 1512, column: 22, scope: !659)
!690 = !DILocation(line: 1513, column: 5, scope: !659)
!691 = !DILocation(line: 1514, column: 1, scope: !573)
!692 = distinct !DISubprogram(name: "count_interaction", scope: !3, file: !3, line: 1518, type: !693, scopeLine: 1519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !395, !395, !395, !395, !695, !695, !695, !695, !9}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!697 = !DILocalVariable(name: "es", arg: 1, scope: !692, file: !3, line: 1518, type: !395)
!698 = !DILocalVariable(name: "e1", arg: 2, scope: !692, file: !3, line: 1518, type: !395)
!699 = !DILocalVariable(name: "e2", arg: 3, scope: !692, file: !3, line: 1518, type: !395)
!700 = !DILocalVariable(name: "e3", arg: 4, scope: !692, file: !3, line: 1518, type: !395)
!701 = !DILocalVariable(name: "c3", arg: 5, scope: !692, file: !3, line: 1518, type: !695)
!702 = !DILocalVariable(name: "c2", arg: 6, scope: !692, file: !3, line: 1518, type: !695)
!703 = !DILocalVariable(name: "c1", arg: 7, scope: !692, file: !3, line: 1518, type: !695)
!704 = !DILocalVariable(name: "c0", arg: 8, scope: !692, file: !3, line: 1518, type: !695)
!705 = !DILocalVariable(name: "process_id", arg: 9, scope: !692, file: !3, line: 1518, type: !9)
!706 = !DILocalVariable(name: "pi", scope: !692, file: !3, line: 1520, type: !581)
!707 = !DILocalVariable(name: "occurrence", scope: !692, file: !3, line: 1521, type: !9)
!708 = !DILocation(line: 0, scope: !692)
!709 = !DILocation(line: 1523, column: 19, scope: !710)
!710 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1523, column: 5)
!711 = !DILocation(line: 0, scope: !710)
!712 = !DILocation(line: 1523, column: 5, scope: !710)
!713 = !DILocation(line: 1525, column: 47, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !3, line: 1524, column: 5)
!715 = distinct !DILexicalBlock(scope: !710, file: !3, line: 1523, column: 5)
!716 = !DILocation(line: 1525, column: 23, scope: !714)
!717 = !DILocation(line: 1526, column: 47, scope: !714)
!718 = !DILocation(line: 1526, column: 23, scope: !714)
!719 = !DILocation(line: 1526, column: 20, scope: !714)
!720 = !DILocation(line: 1527, column: 47, scope: !714)
!721 = !DILocation(line: 1527, column: 23, scope: !714)
!722 = !DILocation(line: 1527, column: 20, scope: !714)
!723 = !DILocation(line: 1528, column: 9, scope: !714)
!724 = !DILocation(line: 1531, column: 32, scope: !725)
!725 = distinct !DILexicalBlock(scope: !714, file: !3, line: 1529, column: 9)
!726 = !DILocation(line: 1532, column: 32, scope: !725)
!727 = !DILocation(line: 1533, column: 32, scope: !725)
!728 = !DILocation(line: 0, scope: !725)
!729 = distinct !{!729, !712, !730, !149, !150}
!730 = !DILocation(line: 1535, column: 5, scope: !710)
!731 = !DILocation(line: 1536, column: 1, scope: !692)
!732 = distinct !DISubprogram(name: "search_intearction", scope: !3, file: !3, line: 1538, type: !733, scopeLine: 1539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !735)
!733 = !DISubroutineType(types: !734)
!734 = !{!9, !581, !581, !9}
!735 = !{!736, !737, !738}
!736 = !DILocalVariable(name: "int_list", arg: 1, scope: !732, file: !3, line: 1538, type: !581)
!737 = !DILocalVariable(name: "inter", arg: 2, scope: !732, file: !3, line: 1538, type: !581)
!738 = !DILocalVariable(name: "process_id", arg: 3, scope: !732, file: !3, line: 1538, type: !9)
!739 = !DILocation(line: 0, scope: !732)
!740 = !DILocation(line: 1540, column: 5, scope: !732)
!741 = !DILocation(line: 1542, column: 23, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 1542, column: 13)
!743 = distinct !DILexicalBlock(scope: !732, file: !3, line: 1541, column: 5)
!744 = !DILocation(line: 1542, column: 35, scope: !742)
!745 = !DILocation(line: 1542, column: 13, scope: !743)
!746 = !DILocation(line: 1545, column: 30, scope: !743)
!747 = distinct !{!747, !740, !748, !149, !150}
!748 = !DILocation(line: 1546, column: 5, scope: !732)
!749 = !DILocation(line: 1549, column: 1, scope: !732)
!750 = distinct !DISubprogram(name: "print_running_time", scope: !3, file: !3, line: 1557, type: !751, scopeLine: 1558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{null, !9}
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(name: "process_id", arg: 1, scope: !750, file: !3, line: 1557, type: !9)
!755 = !DILocalVariable(name: "time_diff", scope: !750, file: !3, line: 1559, type: !9)
!756 = !DILocalVariable(name: "time_diff1", scope: !750, file: !3, line: 1559, type: !9)
!757 = !DILocation(line: 0, scope: !750)
!758 = !DILocation(line: 1561, column: 17, scope: !750)
!759 = !DILocation(line: 1561, column: 32, scope: !750)
!760 = !DILocation(line: 1561, column: 30, scope: !750)
!761 = !DILocation(line: 1562, column: 33, scope: !750)
!762 = !DILocation(line: 1562, column: 44, scope: !750)
!763 = !DILocation(line: 1562, column: 31, scope: !750)
!764 = !DILocation(line: 1563, column: 19, scope: !765)
!765 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1563, column: 9)
!766 = !DILocation(line: 1563, column: 9, scope: !750)
!767 = !DILocation(line: 1565, column: 20, scope: !768)
!768 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1565, column: 9)
!769 = !DILocation(line: 1565, column: 9, scope: !750)
!770 = !DILocation(line: 1568, column: 5, scope: !750)
!771 = !DILocation(line: 1569, column: 44, scope: !750)
!772 = !DILocation(line: 1569, column: 5, scope: !750)
!773 = !DILocation(line: 1570, column: 5, scope: !750)
!774 = !DILocation(line: 1571, column: 5, scope: !750)
!775 = !DILocation(line: 1572, column: 1, scope: !750)
!776 = distinct !DISubprogram(name: "print_fork_time", scope: !3, file: !3, line: 1581, type: !751, scopeLine: 1582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!777 = !{!778, !779}
!778 = !DILocalVariable(name: "process_id", arg: 1, scope: !776, file: !3, line: 1581, type: !9)
!779 = !DILocalVariable(name: "pid", scope: !776, file: !3, line: 1583, type: !9)
!780 = !DILocation(line: 0, scope: !776)
!781 = !DILocation(line: 1585, column: 9, scope: !782)
!782 = distinct !DILexicalBlock(scope: !776, file: !3, line: 1585, column: 9)
!783 = !DILocation(line: 1585, column: 22, scope: !782)
!784 = !DILocation(line: 1585, column: 9, scope: !776)
!785 = !DILocation(line: 1588, column: 5, scope: !776)
!786 = !DILocation(line: 1589, column: 26, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1589, column: 5)
!788 = distinct !DILexicalBlock(scope: !776, file: !3, line: 1589, column: 5)
!789 = !DILocation(line: 1589, column: 24, scope: !787)
!790 = !DILocation(line: 1589, column: 5, scope: !788)
!791 = !DILocation(line: 1593, column: 10, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !3, line: 1590, column: 5)
!793 = !DILocation(line: 1593, column: 23, scope: !792)
!794 = !DILocation(line: 1593, column: 35, scope: !792)
!795 = !DILocation(line: 1593, column: 33, scope: !792)
!796 = !DILocation(line: 1593, column: 9, scope: !792)
!797 = !DILocation(line: 1593, column: 51, scope: !792)
!798 = !DILocation(line: 1591, column: 9, scope: !792)
!799 = !DILocation(line: 1589, column: 46, scope: !787)
!800 = !DILocation(line: 1589, column: 38, scope: !787)
!801 = distinct !{!801, !790, !802, !149, !150}
!802 = !DILocation(line: 1594, column: 5, scope: !788)
!803 = !DILocation(line: 1597, column: 37, scope: !776)
!804 = !DILocation(line: 1597, column: 6, scope: !776)
!805 = !DILocation(line: 1597, column: 43, scope: !776)
!806 = !DILocation(line: 1597, column: 41, scope: !776)
!807 = !DILocation(line: 1597, column: 5, scope: !776)
!808 = !DILocation(line: 1597, column: 59, scope: !776)
!809 = !DILocation(line: 1596, column: 5, scope: !776)
!810 = !DILocation(line: 1598, column: 1, scope: !776)
!811 = distinct !DISubprogram(name: "init_stat_info", scope: !3, file: !3, line: 1607, type: !751, scopeLine: 1608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!812 = !{!813, !814, !815, !816}
!813 = !DILocalVariable(name: "process_id", arg: 1, scope: !811, file: !3, line: 1607, type: !9)
!814 = !DILocalVariable(name: "pid", scope: !811, file: !3, line: 1609, type: !9)
!815 = !DILocalVariable(name: "i", scope: !811, file: !3, line: 1610, type: !9)
!816 = !DILocalVariable(name: "ps", scope: !811, file: !3, line: 1611, type: !448)
!817 = !DILocation(line: 0, scope: !811)
!818 = !DILocation(line: 1613, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !811, file: !3, line: 1613, column: 5)
!820 = !DILocation(line: 1615, column: 15, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1614, column: 5)
!822 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1613, column: 5)
!823 = !DILocation(line: 1616, column: 13, scope: !821)
!824 = !DILocation(line: 1621, column: 13, scope: !821)
!825 = !DILocation(line: 1628, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1628, column: 9)
!827 = !DILocation(line: 1617, column: 37, scope: !821)
!828 = !DILocation(line: 1621, column: 37, scope: !821)
!829 = !DILocation(line: 1629, column: 34, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !3, line: 1628, column: 9)
!831 = !DILocation(line: 1631, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1631, column: 9)
!833 = !DILocation(line: 1633, column: 55, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1632, column: 9)
!835 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1631, column: 9)
!836 = !DILocation(line: 1613, column: 46, scope: !822)
!837 = !DILocation(line: 1613, column: 24, scope: !822)
!838 = distinct !{!838, !818, !839, !149, !150}
!839 = !DILocation(line: 1640, column: 5, scope: !819)
!840 = !DILocation(line: 1641, column: 1, scope: !811)
!841 = distinct !DISubprogram(name: "clear_radiosity", scope: !3, file: !3, line: 1651, type: !751, scopeLine: 1652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!842 = !{!843}
!843 = !DILocalVariable(name: "process_id", arg: 1, scope: !841, file: !3, line: 1651, type: !9)
!844 = !DILocation(line: 0, scope: !841)
!845 = !DILocation(line: 1653, column: 5, scope: !841)
!846 = !DILocation(line: 1654, column: 1, scope: !841)
!847 = distinct !DISubprogram(name: "clear_patch_radiosity", scope: !3, file: !3, line: 1657, type: !284, scopeLine: 1658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(name: "patch", arg: 1, scope: !847, file: !3, line: 1657, type: !286)
!850 = !DILocalVariable(name: "dummy", arg: 2, scope: !847, file: !3, line: 1657, type: !9)
!851 = !DILocalVariable(name: "process_id", arg: 3, scope: !847, file: !3, line: 1657, type: !9)
!852 = !DILocation(line: 0, scope: !847)
!853 = !DILocation(line: 1659, column: 5, scope: !847)
!854 = !DILocation(line: 1660, column: 1, scope: !847)
!855 = distinct !DISubprogram(name: "clear_element_radiosity", scope: !3, file: !3, line: 1663, type: !574, scopeLine: 1664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !856)
!856 = !{!857, !858, !859}
!857 = !DILocalVariable(name: "elem", arg: 1, scope: !855, file: !3, line: 1663, type: !395)
!858 = !DILocalVariable(name: "dummy", arg: 2, scope: !855, file: !3, line: 1663, type: !9)
!859 = !DILocalVariable(name: "process_id", arg: 3, scope: !855, file: !3, line: 1663, type: !9)
!860 = !DILocation(line: 0, scope: !855)
!861 = !DILocation(line: 1665, column: 11, scope: !855)
!862 = !DILocation(line: 1665, column: 17, scope: !855)
!863 = !DILocation(line: 1666, column: 15, scope: !855)
!864 = !DILocation(line: 1666, column: 17, scope: !855)
!865 = !DILocation(line: 1667, column: 15, scope: !855)
!866 = !DILocation(line: 1667, column: 17, scope: !855)
!867 = !DILocation(line: 1669, column: 11, scope: !855)
!868 = !DILocation(line: 1669, column: 25, scope: !855)
!869 = !DILocation(line: 1670, column: 23, scope: !855)
!870 = !DILocation(line: 1670, column: 25, scope: !855)
!871 = !DILocation(line: 1671, column: 23, scope: !855)
!872 = !DILocation(line: 1671, column: 25, scope: !855)
!873 = !DILocation(line: 1673, column: 5, scope: !855)
!874 = !DILocation(line: 1673, column: 13, scope: !855)
!875 = !DILocation(line: 1673, column: 41, scope: !855)
!876 = !DILocation(line: 1674, column: 28, scope: !855)
!877 = !DILocation(line: 1675, column: 26, scope: !855)
!878 = !DILocation(line: 1675, column: 28, scope: !855)
!879 = !DILocation(line: 1676, column: 26, scope: !855)
!880 = !DILocation(line: 1676, column: 28, scope: !855)
!881 = !DILocation(line: 1677, column: 1, scope: !855)
