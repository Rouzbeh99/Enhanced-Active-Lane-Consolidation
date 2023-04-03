; ModuleID = 'box.c'
source_filename = "box.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Local_Memory = type { [512 x i64], ptr, i64, i64, ptr, i64, i64, ptr, [100 x ptr], i64, ptr, double, double, double, double, i64, i64, i64, i64, double, i64, [10 x %struct._Time_Info], [512 x i64] }
%struct._Time_Info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct._G_Mem = type { %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i64, [2048 x %union.pthread_mutex_t], %struct.anon.2, [1024 x [4 x double]], double, double, double, double, i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.anon.2 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct._Box = type { double, double, double, double, i64, i32, [41 x ptr], i64, ptr, i64, [4 x ptr], [4 x ptr], i64, [3 x ptr], i64, [8 x ptr], i64, [20 x ptr], i64, [27 x ptr], i64, [30 x ptr], i64, [40 x %struct.__Complex], [40 x %struct.__Complex], [40 x %struct.__Complex], i64, i64, i64, %union.pthread_cond_t, i64, %union.pthread_cond_t, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.__Complex = type { double, double }

@Grid = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@G_Memory = external local_unnamed_addr global ptr, align 8
@Local = external local_unnamed_addr global [1024 x %struct._Local_Memory], align 16
@.str = private unnamed_addr constant [32 x i8] c"ERROR (P%d) : Ran out of boxes\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Info for B%f :\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"  X center       = %.40g\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"  Y center       = %.40g\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"  Length         = %.40g\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"  Level          = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"  Type           = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"  Child Num      = %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"  Parent         = B%f\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"  Children's IDs : \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"  Sibling's IDs : \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"  Colleagues' IDs : \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"  U List IDs : \00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"  V List IDs : \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"  W List IDs : \00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"  # of Particles = %ld\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"  Particles' IDs : \00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"  Assigned Process ID : %ld\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"  Cost : %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\09B%f\00", align 1
@Expansion_Terms = external local_unnamed_addr global i64, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"\09a%ld = %.3e + %.3ei\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"\09a%ld = %.3e - %.3ei\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"ERROR (P%d) : NULL list entry\0A\00", align 1
@str = private unnamed_addr constant [35 x i8] c"Box has not been initialized yet.\0A\00", align 1
@str.28 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.29 = private unnamed_addr constant [24 x i8] c"  Parent         = NONE\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateBoxes(i64 noundef %my_id, i64 noundef %num_boxes) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !171, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.value(metadata i64 %num_boxes, metadata !172, metadata !DIExpression()), !dbg !174
  %0 = load ptr, ptr @G_Memory, align 8, !dbg !175
  %mal_lock = getelementptr inbounds %struct._G_Mem, ptr %0, i64 0, i32 1, !dbg !177
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %mal_lock) #12, !dbg !178
  %mul = mul i64 %num_boxes, 3352, !dbg !179
  %call1 = tail call noalias ptr @malloc(i64 noundef %mul) #13, !dbg !180
  %B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 1, !dbg !181
  store ptr %call1, ptr %B_Heap, align 8, !dbg !182
  %1 = load ptr, ptr @G_Memory, align 8, !dbg !183
  %mal_lock2 = getelementptr inbounds %struct._G_Mem, ptr %1, i64 0, i32 1, !dbg !185
  %call3 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %mal_lock2) #12, !dbg !186
  %Max_B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 3, !dbg !187
  store i64 %num_boxes, ptr %Max_B_Heap, align 8, !dbg !188
  %Index_B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 2, !dbg !189
  store i64 0, ptr %Index_B_Heap, align 8, !dbg !190
  call void @llvm.dbg.value(metadata i64 0, metadata !173, metadata !DIExpression()), !dbg !174
  %cmp38 = icmp sgt i64 %num_boxes, 0, !dbg !191
  br i1 %cmp38, label %for.body.lr.ph, label %for.end, !dbg !194

for.body.lr.ph:                                   ; preds = %entry
  %conv13 = sitofp i64 %my_id to double
  %div = fdiv double %conv13, 1.000000e+06
  br label %for.body, !dbg !194

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.039 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.039, metadata !173, metadata !DIExpression()), !dbg !174
  %rem = urem i64 %i.039, 2047, !dbg !195
  %2 = load ptr, ptr %B_Heap, align 8, !dbg !197
  %exp_lock_index = getelementptr inbounds %struct._Box, ptr %2, i64 %i.039, i32 26, !dbg !198
  store i64 %rem, ptr %exp_lock_index, align 8, !dbg !199
  %3 = load ptr, ptr %B_Heap, align 8, !dbg !200
  %particle_lock_index = getelementptr inbounds %struct._Box, ptr %3, i64 %i.039, i32 27, !dbg !201
  store i64 %rem, ptr %particle_lock_index, align 8, !dbg !202
  %conv = sitofp i64 %i.039 to double, !dbg !203
  %add = fadd double %div, %conv, !dbg !204
  %4 = load ptr, ptr %B_Heap, align 8, !dbg !205
  %arrayidx16 = getelementptr inbounds %struct._Box, ptr %4, i64 %i.039, !dbg !206
  store double %add, ptr %arrayidx16, align 8, !dbg !207
  %5 = load ptr, ptr %B_Heap, align 8, !dbg !208
  %arrayidx19 = getelementptr inbounds %struct._Box, ptr %5, i64 %i.039, !dbg !209
  tail call void @ZeroBox(i64 noundef %my_id, ptr noundef %arrayidx19), !dbg !210
  %inc = add nuw nsw i64 %i.039, 1, !dbg !211
  call void @llvm.dbg.value(metadata i64 %inc, metadata !173, metadata !DIExpression()), !dbg !174
  %exitcond.not = icmp eq i64 %inc, %num_boxes, !dbg !191
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !194, !llvm.loop !212

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !216
}

; Function Attrs: nounwind
declare !dbg !217 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !249 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ZeroBox(i64 noundef %my_id, ptr noundef %b) local_unnamed_addr #0 !dbg !250 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !254, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %b, metadata !255, metadata !DIExpression()), !dbg !257
  %type = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 5, !dbg !258
  store i32 0, ptr %type, align 8, !dbg !259
  %num_particles = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 7, !dbg !260
  call void @llvm.dbg.value(metadata i64 0, metadata !256, metadata !DIExpression()), !dbg !257
  %uglygep = getelementptr i8, ptr %b, i64 48, !dbg !261
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %uglygep, i8 0, i64 320, i1 false), !dbg !263
  call void @llvm.dbg.value(metadata i32 undef, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata i32 undef, metadata !256, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !257
  call void @llvm.dbg.value(metadata i64 0, metadata !256, metadata !DIExpression()), !dbg !257
  %uglygep34 = getelementptr i8, ptr %b, i64 400, !dbg !265
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %uglygep34, i8 0, i64 32, i1 false), !dbg !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %num_particles, i8 0, i64 16, i1 false), !dbg !270
  br label %for.body3, !dbg !265

for.body3:                                        ; preds = %entry, %for.body3
  %i.132 = phi i64 [ 0, %entry ], [ %inc7, %for.body3 ]
  call void @llvm.dbg.value(metadata i64 %i.132, metadata !256, metadata !DIExpression()), !dbg !257
  %arrayidx4 = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 11, i64 %i.132, !dbg !271
  store ptr null, ptr %arrayidx4, align 8, !dbg !272
  %inc7 = add nuw nsw i64 %i.132, 1, !dbg !273
  call void @llvm.dbg.value(metadata i64 %inc7, metadata !256, metadata !DIExpression()), !dbg !257
  %exitcond.not = icmp eq i64 %inc7, 4, !dbg !274
  br i1 %exitcond.not, label %for.end8, label %for.body3, !dbg !265, !llvm.loop !275

for.end8:                                         ; preds = %for.body3
  %num_children = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 12, !dbg !277
  store i64 0, ptr %num_children, align 8, !dbg !278
  %construct_synch = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 28, !dbg !279
  store i64 0, ptr %construct_synch, align 8, !dbg !280
  %construct_synch_cv = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 29, !dbg !281
  %call = tail call i32 @pthread_cond_init(ptr noundef nonnull %construct_synch_cv, ptr noundef null) #12, !dbg !282
  %interaction_synch = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 30, !dbg !283
  store i64 0, ptr %interaction_synch, align 8, !dbg !284
  %interaction_synch_cv = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 31, !dbg !285
  %call9 = tail call i32 @pthread_cond_init(ptr noundef nonnull %interaction_synch_cv, ptr noundef null) #12, !dbg !286
  %cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 33, !dbg !287
  store i64 0, ptr %cost, align 8, !dbg !288
  %proc = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 32, !dbg !289
  store i64 %my_id, ptr %proc, align 8, !dbg !290
  %subtree_cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 38, !dbg !291
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %subtree_cost, i8 0, i64 24, i1 false), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeBoxes(i64 noundef %my_id) local_unnamed_addr #0 !dbg !294 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !298, metadata !DIExpression()), !dbg !301
  %B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 1, !dbg !302
  %0 = load ptr, ptr %B_Heap, align 8, !dbg !302
  call void @llvm.dbg.value(metadata ptr %0, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.value(metadata i64 0, metadata !299, metadata !DIExpression()), !dbg !301
  %Index_B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !299, metadata !DIExpression()), !dbg !301
  %1 = load i64, ptr %Index_B_Heap, align 8, !dbg !303
  %cmp10 = icmp sgt i64 %1, 0, !dbg !306
  br i1 %cmp10, label %for.body, label %for.end, !dbg !307

for.body:                                         ; preds = %entry, %for.body
  %i.011 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.011, metadata !299, metadata !DIExpression()), !dbg !301
  %arrayidx2 = getelementptr inbounds %struct._Box, ptr %0, i64 %i.011, !dbg !308
  tail call void @ZeroBox(i64 noundef %my_id, ptr noundef %arrayidx2), !dbg !309
  %inc = add nuw nsw i64 %i.011, 1, !dbg !310
  call void @llvm.dbg.value(metadata i64 %inc, metadata !299, metadata !DIExpression()), !dbg !301
  %2 = load i64, ptr %Index_B_Heap, align 8, !dbg !303
  %cmp = icmp slt i64 %inc, %2, !dbg !306
  br i1 %cmp, label %for.body, label %for.end, !dbg !307, !llvm.loop !311

for.end:                                          ; preds = %for.body, %entry
  store i64 0, ptr %Index_B_Heap, align 8, !dbg !313
  ret void, !dbg !314
}

; Function Attrs: nounwind
declare !dbg !315 i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @InitBox(i64 noundef %my_id, double noundef %x_center, double noundef %y_center, double noundef %length, ptr noundef %parent) local_unnamed_addr #0 !dbg !329 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !333, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata double %x_center, metadata !334, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata double %y_center, metadata !335, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata double %length, metadata !336, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.value(metadata ptr %parent, metadata !337, metadata !DIExpression()), !dbg !339
  %Index_B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 2, !dbg !340
  %0 = load i64, ptr %Index_B_Heap, align 8, !dbg !340
  %Max_B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 3, !dbg !342
  %1 = load i64, ptr %Max_B_Heap, align 8, !dbg !342
  %cmp = icmp eq i64 %0, %1, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @LockedPrint(ptr noundef nonnull @.str, i64 noundef %my_id) #12, !dbg !345
  tail call void @exit(i32 noundef -1) #14, !dbg !347
  unreachable, !dbg !347

if.end:                                           ; preds = %entry
  %B_Heap = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 1, !dbg !348
  %2 = load ptr, ptr %B_Heap, align 8, !dbg !348
  %inc = add nsw i64 %0, 1, !dbg !349
  store i64 %inc, ptr %Index_B_Heap, align 8, !dbg !349
  call void @llvm.dbg.value(metadata !DIArgList(ptr %2, i64 %0), metadata !338, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 3352, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !339
  %x_center6 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, i32 1, !dbg !350
  store double %x_center, ptr %x_center6, align 8, !dbg !351
  %y_center7 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, i32 2, !dbg !352
  store double %y_center, ptr %y_center7, align 8, !dbg !353
  %length8 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, i32 3, !dbg !354
  store double %length, ptr %length8, align 8, !dbg !355
  %parent9 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, i32 8, !dbg !356
  store ptr %parent, ptr %parent9, align 8, !dbg !357
  %cmp10 = icmp eq ptr %parent, null, !dbg !358
  br i1 %cmp10, label %if.end14, label %if.else, !dbg !360

if.else:                                          ; preds = %if.end
  %level12 = getelementptr inbounds %struct._Box, ptr %parent, i64 0, i32 4, !dbg !361
  %3 = load i64, ptr %level12, align 8, !dbg !361
  %add = add nsw i64 %3, 1, !dbg !362
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.else
  %add.sink = phi i64 [ %add, %if.else ], [ 0, %if.end ], !dbg !363
  %4 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, i32 4, !dbg !364
  store i64 %add.sink, ptr %4, align 8, !dbg !365
  %arrayidx5 = getelementptr inbounds %struct._Box, ptr %2, i64 %0, !dbg !366
  call void @llvm.dbg.value(metadata ptr %arrayidx5, metadata !338, metadata !DIExpression()), !dbg !339
  ret ptr %arrayidx5, !dbg !367
}

declare !dbg !368 void @LockedPrint(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintBox(i64 noundef %my_id, ptr noundef %b) local_unnamed_addr #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !374, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.value(metadata ptr %b, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load ptr, ptr @G_Memory, align 8, !dbg !377
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %0) #12, !dbg !379
  %1 = load ptr, ptr @stdout, align 8, !dbg !380
  %call1 = tail call i32 @fflush(ptr noundef %1), !dbg !381
  %cmp.not = icmp eq ptr %b, null, !dbg !382
  br i1 %cmp.not, label %if.else45, label %if.then, !dbg !384

if.then:                                          ; preds = %entry
  %2 = load double, ptr %b, align 8, !dbg !385
  %call2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %2), !dbg !387
  %x_center = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 1, !dbg !388
  %3 = load double, ptr %x_center, align 8, !dbg !388
  %call3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %3), !dbg !389
  %y_center = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 2, !dbg !390
  %4 = load double, ptr %y_center, align 8, !dbg !390
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, double noundef %4), !dbg !391
  %length = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 3, !dbg !392
  %5 = load double, ptr %length, align 8, !dbg !392
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, double noundef %5), !dbg !393
  %level = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 4, !dbg !394
  %6 = load i64, ptr %level, align 8, !dbg !394
  %call6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %6), !dbg !395
  %type = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 5, !dbg !396
  %7 = load i32, ptr %type, align 8, !dbg !396
  %call7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %7), !dbg !397
  %child_num = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 9, !dbg !398
  %8 = load i64, ptr %child_num, align 8, !dbg !398
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %8), !dbg !399
  %parent = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 8, !dbg !400
  %9 = load ptr, ptr %parent, align 8, !dbg !400
  %cmp9 = icmp eq ptr %9, null, !dbg !402
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !403

if.then10:                                        ; preds = %if.then
  %puts82 = tail call i32 @puts(ptr nonnull @str.29), !dbg !404
  br label %if.end, !dbg !404

if.else:                                          ; preds = %if.then
  %10 = load double, ptr %9, align 8, !dbg !405
  %call14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %10), !dbg !406
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then10
  %call15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10), !dbg !407
  %num_children = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 12, !dbg !408
  %11 = load i64, ptr %num_children, align 8, !dbg !408
  %cmp16.not = icmp eq i64 %11, 0, !dbg !410
  br i1 %cmp16.not, label %if.else19, label %if.then17, !dbg !411

if.then17:                                        ; preds = %if.end
  %children = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 11, !dbg !412
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %children, i64 noundef %11), !dbg !413
  br label %if.end21, !dbg !413

if.else19:                                        ; preds = %if.end
  %puts80 = tail call i32 @puts(ptr nonnull @str.28), !dbg !414
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %call22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12), !dbg !415
  %num_siblings = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 14, !dbg !416
  %12 = load i64, ptr %num_siblings, align 8, !dbg !416
  %cmp23.not = icmp eq i64 %12, 0, !dbg !418
  br i1 %cmp23.not, label %if.else27, label %if.then24, !dbg !419

if.then24:                                        ; preds = %if.end21
  %siblings = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 13, !dbg !420
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %siblings, i64 noundef %12), !dbg !421
  br label %if.end29, !dbg !421

if.else27:                                        ; preds = %if.end21
  %puts81 = tail call i32 @puts(ptr nonnull @str.28), !dbg !422
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then24
  %call30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13), !dbg !423
  %colleagues = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 15, !dbg !424
  %num_colleagues = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 16, !dbg !425
  %13 = load i64, ptr %num_colleagues, align 8, !dbg !425
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %colleagues, i64 noundef %13), !dbg !426
  %call32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14), !dbg !427
  %u_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 17, !dbg !428
  %num_u_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 18, !dbg !429
  %14 = load i64, ptr %num_u_list, align 8, !dbg !429
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %u_list, i64 noundef %14), !dbg !430
  %call34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15), !dbg !431
  %v_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 19, !dbg !432
  %num_v_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 20, !dbg !433
  %15 = load i64, ptr %num_v_list, align 8, !dbg !433
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %v_list, i64 noundef %15), !dbg !434
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16), !dbg !435
  %w_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 21, !dbg !436
  %num_w_list = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 22, !dbg !437
  %16 = load i64, ptr %num_w_list, align 8, !dbg !437
  tail call void @PrintBoxArrayIds(ptr noundef nonnull %w_list, i64 noundef %16), !dbg !438
  %num_particles = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 7, !dbg !439
  %17 = load i64, ptr %num_particles, align 8, !dbg !439
  %call38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.17, i64 noundef %17), !dbg !440
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.18), !dbg !441
  %particles = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 6, !dbg !442
  %18 = load i64, ptr %num_particles, align 8, !dbg !443
  tail call void @PrintParticleArrayIds(ptr noundef nonnull %particles, i64 noundef %18) #12, !dbg !444
  %proc = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 32, !dbg !445
  %19 = load i64, ptr %proc, align 8, !dbg !445
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.19, i64 noundef %19), !dbg !446
  %cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 33, !dbg !447
  %20 = load i64, ptr %cost, align 8, !dbg !447
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.20, i64 noundef %20), !dbg !448
  %putchar = tail call i32 @putchar(i32 10), !dbg !449
  br label %if.end47, !dbg !450

if.else45:                                        ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !451
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.end29
  %21 = load ptr, ptr @G_Memory, align 8, !dbg !452
  %call49 = tail call i32 @pthread_mutex_unlock(ptr noundef %21) #12, !dbg !454
  ret void, !dbg !455
}

; Function Attrs: nofree nounwind
declare !dbg !456 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintBoxArrayIds(ptr nocapture noundef readonly %b_array, i64 noundef %array_length) local_unnamed_addr #6 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata ptr %b_array, metadata !521, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 %array_length, metadata !522, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 0, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 0, metadata !523, metadata !DIExpression()), !dbg !525
  %cmp14 = icmp sgt i64 %array_length, 0, !dbg !526
  br i1 %cmp14, label %for.body, label %for.end, !dbg !529

for.body:                                         ; preds = %entry, %if.end6
  %tab_count.016 = phi i64 [ %sub, %if.end6 ], [ 0, %entry ]
  %i.015 = phi i64 [ %inc, %if.end6 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %tab_count.016, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i64 %i.015, metadata !523, metadata !DIExpression()), !dbg !525
  %cmp1 = icmp eq i64 %tab_count.016, 0, !dbg !530
  br i1 %cmp1, label %if.then, label %if.end, !dbg !533

if.then:                                          ; preds = %for.body
  %putchar13 = tail call i32 @putchar(i32 10), !dbg !534
  call void @llvm.dbg.value(metadata i64 4, metadata !524, metadata !DIExpression()), !dbg !525
  br label %if.end, !dbg !536

if.end:                                           ; preds = %if.then, %for.body
  %tab_count.1 = phi i64 [ 4, %if.then ], [ %tab_count.016, %for.body ], !dbg !525
  call void @llvm.dbg.value(metadata i64 %tab_count.1, metadata !524, metadata !DIExpression()), !dbg !525
  %arrayidx = getelementptr inbounds ptr, ptr %b_array, i64 %i.015, !dbg !537
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !537
  %cmp2.not = icmp eq ptr %0, null, !dbg !539
  br i1 %cmp2.not, label %if.end6, label %if.then3, !dbg !540

if.then3:                                         ; preds = %if.end
  %1 = load double, ptr %0, align 8, !dbg !541
  %call5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.23, double noundef %1), !dbg !542
  br label %if.end6, !dbg !542

if.end6:                                          ; preds = %if.then3, %if.end
  %sub = add nsw i64 %tab_count.1, -1, !dbg !543
  call void @llvm.dbg.value(metadata i64 %sub, metadata !524, metadata !DIExpression()), !dbg !525
  %inc = add nuw nsw i64 %i.015, 1, !dbg !544
  call void @llvm.dbg.value(metadata i64 %inc, metadata !523, metadata !DIExpression()), !dbg !525
  %exitcond.not = icmp eq i64 %inc, %array_length, !dbg !526
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !529, !llvm.loop !545

for.end:                                          ; preds = %if.end6, %entry
  %putchar = tail call i32 @putchar(i32 10), !dbg !547
  ret void, !dbg !548
}

declare !dbg !549 void @PrintParticleArrayIds(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintExpansionTerms(ptr nocapture noundef readonly %expansion) local_unnamed_addr #6 !dbg !553 {
entry:
  call void @llvm.dbg.value(metadata ptr %expansion, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 0, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 0, metadata !559, metadata !DIExpression()), !dbg !561
  %0 = load i64, ptr @Expansion_Terms, align 8, !dbg !562
  %cmp30 = icmp sgt i64 %0, 0, !dbg !565
  br i1 %cmp30, label %for.body, label %for.end, !dbg !566

for.body:                                         ; preds = %entry, %if.end14
  %tab_count.033 = phi i64 [ %tab_count.1, %if.end14 ], [ 0, %entry ]
  %i.031 = phi i64 [ %inc, %if.end14 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %tab_count.033, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.value(metadata i64 %i.031, metadata !559, metadata !DIExpression()), !dbg !561
  %cmp1 = icmp eq i64 %tab_count.033, 0, !dbg !567
  br i1 %cmp1, label %if.then, label %if.end, !dbg !570

if.then:                                          ; preds = %for.body
  %putchar29 = tail call i32 @putchar(i32 10), !dbg !571
  call void @llvm.dbg.value(metadata i64 2, metadata !560, metadata !DIExpression()), !dbg !561
  br label %if.end, !dbg !573

if.end:                                           ; preds = %if.then, %for.body
  %tab_count.1 = phi i64 [ 1, %if.then ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !560, metadata !DIExpression()), !dbg !561
  %arrayidx = getelementptr inbounds %struct.__Complex, ptr %expansion, i64 %i.031, !dbg !574
  %i2 = getelementptr inbounds %struct.__Complex, ptr %expansion, i64 %i.031, i32 1, !dbg !576
  %1 = load double, ptr %i2, align 8, !dbg !576
  %cmp3 = fcmp ult double %1, 0.000000e+00, !dbg !577
  %2 = load double, ptr %arrayidx, align 8, !dbg !578
  br i1 %cmp3, label %if.else, label %if.then4, !dbg !579

if.then4:                                         ; preds = %if.end
  %call8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.24, i64 noundef %i.031, double noundef %2, double noundef %1), !dbg !580
  br label %if.end14, !dbg !580

if.else:                                          ; preds = %if.end
  %fneg = fneg double %1, !dbg !581
  %call13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.25, i64 noundef %i.031, double noundef %2, double noundef %fneg), !dbg !582
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  call void @llvm.dbg.value(metadata i64 %tab_count.1, metadata !560, metadata !DIExpression()), !dbg !561
  %inc = add nuw nsw i64 %i.031, 1, !dbg !583
  call void @llvm.dbg.value(metadata i64 %inc, metadata !559, metadata !DIExpression()), !dbg !561
  %3 = load i64, ptr @Expansion_Terms, align 8, !dbg !562
  %cmp = icmp slt i64 %inc, %3, !dbg !565
  br i1 %cmp, label %for.body, label %for.end, !dbg !566, !llvm.loop !584

for.end:                                          ; preds = %if.end14, %entry
  %putchar = tail call i32 @putchar(i32 10), !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ListIterate(i64 noundef %my_id, ptr noundef %b, ptr nocapture noundef readonly %list, i64 noundef %length, ptr nocapture noundef readonly %function) local_unnamed_addr #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !596, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr %b, metadata !597, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr %list, metadata !598, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i64 %length, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata ptr %function, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i64 0, metadata !601, metadata !DIExpression()), !dbg !602
  %cmp8 = icmp sgt i64 %length, 0, !dbg !603
  br i1 %cmp8, label %for.body, label %for.end, !dbg !606

for.body:                                         ; preds = %entry, %if.end
  %i.09 = phi i64 [ %inc, %if.end ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.09, metadata !601, metadata !DIExpression()), !dbg !602
  %arrayidx = getelementptr inbounds ptr, ptr %list, i64 %i.09, !dbg !607
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !607
  %cmp1 = icmp eq ptr %0, null, !dbg !610
  br i1 %cmp1, label %if.then, label %if.end, !dbg !611

if.then:                                          ; preds = %for.body
  tail call void (ptr, ...) @LockedPrint(ptr noundef nonnull @.str.26, i64 noundef %my_id) #12, !dbg !612
  tail call void @exit(i32 noundef -1) #14, !dbg !614
  unreachable, !dbg !614

if.end:                                           ; preds = %for.body
  tail call void %function(i64 noundef %my_id, ptr noundef nonnull %0, ptr noundef %b) #12, !dbg !615
  %inc = add nuw nsw i64 %i.09, 1, !dbg !616
  call void @llvm.dbg.value(metadata i64 %inc, metadata !601, metadata !DIExpression()), !dbg !602
  %exitcond.not = icmp eq i64 %inc, %length, !dbg !603
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !606, !llvm.loop !617

for.end:                                          ; preds = %if.end, %entry
  ret void, !dbg !619
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i64 @AdjacentBoxes(ptr nocapture noundef readonly %b1, ptr nocapture noundef readonly %b2) local_unnamed_addr #7 !dbg !620 {
entry:
  call void @llvm.dbg.value(metadata ptr %b1, metadata !624, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.value(metadata ptr %b2, metadata !625, metadata !DIExpression()), !dbg !630
  %length = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 3, !dbg !631
  %0 = load double, ptr %length, align 8, !dbg !631
  %div = fmul double %0, 5.000000e-01, !dbg !632
  %length1 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 3, !dbg !633
  %1 = load double, ptr %length1, align 8, !dbg !633
  %div2 = fmul double %1, 5.000000e-01, !dbg !634
  %add = fadd double %div, %div2, !dbg !635
  call void @llvm.dbg.value(metadata double %add, metadata !626, metadata !DIExpression()), !dbg !630
  %x_center = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 1, !dbg !636
  %2 = load double, ptr %x_center, align 8, !dbg !636
  %x_center3 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 1, !dbg !637
  %3 = load double, ptr %x_center3, align 8, !dbg !637
  %sub = fsub double %2, %3, !dbg !638
  %4 = tail call double @llvm.fabs.f64(double %sub), !dbg !639
  call void @llvm.dbg.value(metadata double %4, metadata !627, metadata !DIExpression()), !dbg !630
  %y_center = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 2, !dbg !640
  %5 = load double, ptr %y_center, align 8, !dbg !640
  %y_center4 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 2, !dbg !641
  %6 = load double, ptr %y_center4, align 8, !dbg !641
  %sub5 = fsub double %5, %6, !dbg !642
  %7 = tail call double @llvm.fabs.f64(double %sub5), !dbg !643
  call void @llvm.dbg.value(metadata double %7, metadata !628, metadata !DIExpression()), !dbg !630
  %cmp = fcmp une double %4, %add, !dbg !644
  %cmp6 = fcmp ugt double %7, %add
  %or.cond = select i1 %cmp, i1 true, i1 %cmp6, !dbg !646
  br i1 %or.cond, label %if.else, label %if.end12, !dbg !646

if.else:                                          ; preds = %entry
  %cmp7 = fcmp oeq double %7, %add, !dbg !647
  %cmp9 = fcmp ole double %4, %add
  %or.cond22 = select i1 %cmp7, i1 %cmp9, i1 false, !dbg !649
  %spec.select = zext i1 %or.cond22 to i64, !dbg !649
  br label %if.end12, !dbg !649

if.end12:                                         ; preds = %if.else, %entry
  %ret_val.0 = phi i64 [ 1, %entry ], [ %spec.select, %if.else ], !dbg !650
  call void @llvm.dbg.value(metadata i64 %ret_val.0, metadata !629, metadata !DIExpression()), !dbg !630
  ret i64 %ret_val.0, !dbg !651
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #8

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local i64 @WellSeparatedBoxes(ptr nocapture noundef readonly %b1, ptr nocapture noundef readonly %b2) local_unnamed_addr #7 !dbg !652 {
entry:
  call void @llvm.dbg.value(metadata ptr %b1, metadata !654, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr %b2, metadata !655, metadata !DIExpression()), !dbg !660
  %length = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 3, !dbg !661
  %0 = load double, ptr %length, align 8, !dbg !661
  %length1 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 3, !dbg !663
  %1 = load double, ptr %length1, align 8, !dbg !663
  %cmp = fcmp ogt double %0, %1, !dbg !664
  call void @llvm.dbg.value(metadata double undef, metadata !656, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata double undef, metadata !656, metadata !DIExpression()), !dbg !660
  %. = select i1 %cmp, double %0, double %1
  %min_ws_distance.0 = fmul double %., 2.000000e+00, !dbg !665
  call void @llvm.dbg.value(metadata double %min_ws_distance.0, metadata !656, metadata !DIExpression()), !dbg !660
  %x_center = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 1, !dbg !666
  %2 = load double, ptr %x_center, align 8, !dbg !666
  %x_center5 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 1, !dbg !667
  %3 = load double, ptr %x_center5, align 8, !dbg !667
  %sub = fsub double %2, %3, !dbg !668
  %4 = tail call double @llvm.fabs.f64(double %sub), !dbg !669
  call void @llvm.dbg.value(metadata double %4, metadata !657, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata double undef, metadata !658, metadata !DIExpression()), !dbg !660
  %cmp8 = fcmp ult double %4, %min_ws_distance.0, !dbg !670
  br i1 %cmp8, label %lor.lhs.false, label %if.end12, !dbg !672

lor.lhs.false:                                    ; preds = %entry
  %y_center = getelementptr inbounds %struct._Box, ptr %b1, i64 0, i32 2, !dbg !673
  %5 = load double, ptr %y_center, align 8, !dbg !673
  %y_center6 = getelementptr inbounds %struct._Box, ptr %b2, i64 0, i32 2, !dbg !674
  %6 = load double, ptr %y_center6, align 8, !dbg !674
  %sub7 = fsub double %5, %6, !dbg !675
  %7 = tail call double @llvm.fabs.f64(double %sub7), !dbg !676
  call void @llvm.dbg.value(metadata double %7, metadata !658, metadata !DIExpression()), !dbg !660
  %cmp9 = fcmp ult double %7, %min_ws_distance.0, !dbg !677
  br i1 %cmp9, label %if.else11, label %if.end12, !dbg !678

if.else11:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i64 0, metadata !659, metadata !DIExpression()), !dbg !660
  br label %if.end12

if.end12:                                         ; preds = %entry, %lor.lhs.false, %if.else11
  %ret_val.0 = phi i64 [ 0, %if.else11 ], [ 1, %lor.lhs.false ], [ 1, %entry ], !dbg !679
  call void @llvm.dbg.value(metadata i64 %ret_val.0, metadata !659, metadata !DIExpression()), !dbg !660
  ret i64 %ret_val.0, !dbg !680
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Grid", scope: !2, file: !3, line: 30, type: !17, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !16, globals: !159, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "box.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "b3c0231cd36fe00788e3bab802f1d821")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./box.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "6691501807284fe2fdbc3ead25fd1752")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "CHILDLESS", value: 0)
!10 = !DIEnumerator(name: "PARENT", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 136, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./defs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "8ebedd23a1904a3430b249c025f1869e")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "FALSE", value: 0)
!15 = !DIEnumerator(name: "TRUE", value: 1)
!16 = !{!17, !22, !158, !24}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "box", file: !6, line: 37, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Box", file: !6, line: 70, size: 26816, elements: !20)
!20 = !{!21, !23, !25, !26, !27, !29, !31, !59, !60, !61, !62, !66, !67, !68, !72, !73, !77, !78, !82, !83, !87, !88, !92, !93, !97, !98, !99, !100, !101, !102, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !19, file: !6, line: 72, baseType: !22, size: 64)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "x_center", scope: !19, file: !6, line: 73, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !12, line: 140, baseType: !22)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "y_center", scope: !19, file: !6, line: 74, baseType: !24, size: 64, offset: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !19, file: !6, line: 75, baseType: !24, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !19, file: !6, line: 76, baseType: !28, size: 64, offset: 256)
!28 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !19, file: !6, line: 77, baseType: !30, size: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "box_type", file: !6, line: 42, baseType: !5)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "particles", scope: !19, file: !6, line: 78, baseType: !32, size: 2624, offset: 384)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 2624, elements: !57)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "particle", file: !35, line: 24, baseType: !36)
!35 = !DIFile(filename: "./particle.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "4cd77da270cc740df8f78374a24bb947")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Particle", file: !35, line: 38, size: 832, elements: !37)
!37 = !{!38, !39, !40, !41, !47, !48, !49, !55, !56}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !36, file: !35, line: 40, baseType: !28, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "charge", scope: !36, file: !35, line: 41, baseType: !24, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !36, file: !35, line: 42, baseType: !24, size: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !36, file: !35, line: 43, baseType: !42, size: 128, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector", file: !12, line: 148, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector", file: !12, line: 149, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !43, file: !12, line: 150, baseType: !24, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !43, file: !12, line: 151, baseType: !24, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !36, file: !35, line: 44, baseType: !42, size: 128, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "vel", scope: !36, file: !35, line: 45, baseType: !42, size: 128, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !36, file: !35, line: 46, baseType: !50, size: 128, offset: 576)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !12, line: 142, baseType: !51)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__Complex", file: !12, line: 143, size: 128, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !51, file: !12, line: 144, baseType: !24, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !51, file: !12, line: 145, baseType: !24, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !36, file: !35, line: 47, baseType: !28, size: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !36, file: !35, line: 48, baseType: !24, size: 64, offset: 768)
!57 = !{!58}
!58 = !DISubrange(count: 41)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "num_particles", scope: !19, file: !6, line: 79, baseType: !28, size: 64, offset: 3008)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !19, file: !6, line: 80, baseType: !17, size: 64, offset: 3072)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !19, file: !6, line: 81, baseType: !28, size: 64, offset: 3136)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !19, file: !6, line: 82, baseType: !63, size: 256, offset: 3200)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 256, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 4)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !19, file: !6, line: 83, baseType: !63, size: 256, offset: 3456)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !19, file: !6, line: 84, baseType: !28, size: 64, offset: 3712)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !19, file: !6, line: 85, baseType: !69, size: 192, offset: 3776)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 3)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "num_siblings", scope: !19, file: !6, line: 86, baseType: !28, size: 64, offset: 3968)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "colleagues", scope: !19, file: !6, line: 87, baseType: !74, size: 512, offset: 4032)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 8)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "num_colleagues", scope: !19, file: !6, line: 88, baseType: !28, size: 64, offset: 4544)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "u_list", scope: !19, file: !6, line: 89, baseType: !79, size: 1280, offset: 4608)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1280, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "num_u_list", scope: !19, file: !6, line: 90, baseType: !28, size: 64, offset: 5888)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "v_list", scope: !19, file: !6, line: 91, baseType: !84, size: 1728, offset: 5952)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1728, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 27)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_list", scope: !19, file: !6, line: 92, baseType: !28, size: 64, offset: 7680)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "w_list", scope: !19, file: !6, line: 93, baseType: !89, size: 1920, offset: 7744)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 1920, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 30)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "num_w_list", scope: !19, file: !6, line: 94, baseType: !28, size: 64, offset: 9664)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "mp_expansion", scope: !19, file: !6, line: 95, baseType: !94, size: 5120, offset: 9728)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 5120, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 40)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "local_expansion", scope: !19, file: !6, line: 96, baseType: !94, size: 5120, offset: 14848)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x_expansion", scope: !19, file: !6, line: 97, baseType: !94, size: 5120, offset: 19968)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "exp_lock_index", scope: !19, file: !6, line: 98, baseType: !28, size: 64, offset: 25088)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "particle_lock_index", scope: !19, file: !6, line: 99, baseType: !28, size: 64, offset: 25152)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "construct_synch", scope: !19, file: !6, line: 100, baseType: !28, size: 64, offset: 25216)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "construct_synch_cv", scope: !19, file: !6, line: 101, baseType: !103, size: 384, offset: 25280)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !104, line: 80, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !104, line: 75, size: 384, elements: !106)
!106 = !{!107, !138, !143}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !105, file: !104, line: 77, baseType: !108, size: 384)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !109, line: 92, size: 384, elements: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!110 = !{!111, !121, !130, !134, !135, !136, !137}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !109, line: 94, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !109, line: 94, size: 64, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !112, file: !109, line: 96, baseType: !115, size: 64)
!115 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !112, file: !109, line: 101, baseType: !117, size: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !109, line: 97, size: 64, elements: !118)
!118 = !{!119, !120}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !117, file: !109, line: 99, baseType: !7, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !117, file: !109, line: 100, baseType: !7, size: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !108, file: !109, line: 103, baseType: !122, size: 64, offset: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !108, file: !109, line: 103, size: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !122, file: !109, line: 105, baseType: !115, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !122, file: !109, line: 110, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !122, file: !109, line: 106, size: 64, elements: !127)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !126, file: !109, line: 108, baseType: !7, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !126, file: !109, line: 109, baseType: !7, size: 32, offset: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !108, file: !109, line: 112, baseType: !131, size: 64, offset: 128)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 2)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !108, file: !109, line: 113, baseType: !131, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !108, file: !109, line: 114, baseType: !7, size: 32, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !108, file: !109, line: 115, baseType: !7, size: 32, offset: 288)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !108, file: !109, line: 116, baseType: !131, size: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !105, file: !104, line: 78, baseType: !139, size: 384)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 384, elements: !141)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!141 = !{!142}
!142 = !DISubrange(count: 48)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !105, file: !104, line: 79, baseType: !144, size: 64)
!144 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "interaction_synch", scope: !19, file: !6, line: 102, baseType: !28, size: 64, offset: 25664)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "interaction_synch_cv", scope: !19, file: !6, line: 103, baseType: !103, size: 384, offset: 25728)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !19, file: !6, line: 104, baseType: !28, size: 64, offset: 26112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !19, file: !6, line: 105, baseType: !28, size: 64, offset: 26176)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "u_cost", scope: !19, file: !6, line: 106, baseType: !28, size: 64, offset: 26240)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "v_cost", scope: !19, file: !6, line: 107, baseType: !28, size: 64, offset: 26304)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "w_cost", scope: !19, file: !6, line: 108, baseType: !28, size: 64, offset: 26368)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_cost", scope: !19, file: !6, line: 109, baseType: !28, size: 64, offset: 26432)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_cost", scope: !19, file: !6, line: 110, baseType: !28, size: 64, offset: 26496)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !19, file: !6, line: 111, baseType: !17, size: 64, offset: 26560)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !19, file: !6, line: 112, baseType: !17, size: 64, offset: 26624)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "link1", scope: !19, file: !6, line: 113, baseType: !17, size: 64, offset: 26688)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "link2", scope: !19, file: !6, line: 114, baseType: !17, size: 64, offset: 26752)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!159 = !{!0}
!160 = !{i32 7, !"Dwarf Version", i32 5}
!161 = !{i32 2, !"Debug Info Version", i32 3}
!162 = !{i32 1, !"wchar_size", i32 4}
!163 = !{i32 7, !"PIC Level", i32 2}
!164 = !{i32 7, !"PIE Level", i32 2}
!165 = !{i32 7, !"uwtable", i32 2}
!166 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!167 = distinct !DISubprogram(name: "CreateBoxes", scope: !3, file: !3, line: 35, type: !168, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !28, !28}
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(name: "my_id", arg: 1, scope: !167, file: !3, line: 35, type: !28)
!172 = !DILocalVariable(name: "num_boxes", arg: 2, scope: !167, file: !3, line: 35, type: !28)
!173 = !DILocalVariable(name: "i", scope: !167, file: !3, line: 37, type: !28)
!174 = !DILocation(line: 0, scope: !167)
!175 = !DILocation(line: 39, column: 26, scope: !176)
!176 = distinct !DILexicalBlock(scope: !167, file: !3, line: 39, column: 4)
!177 = !DILocation(line: 39, column: 36, scope: !176)
!178 = !DILocation(line: 39, column: 5, scope: !176)
!179 = !DILocation(line: 40, column: 51, scope: !167)
!180 = !DILocation(line: 40, column: 34, scope: !167)
!181 = !DILocation(line: 40, column: 17, scope: !167)
!182 = !DILocation(line: 40, column: 24, scope: !167)
!183 = !DILocation(line: 59, column: 28, scope: !184)
!184 = distinct !DILexicalBlock(scope: !167, file: !3, line: 59, column: 4)
!185 = !DILocation(line: 59, column: 38, scope: !184)
!186 = !DILocation(line: 59, column: 5, scope: !184)
!187 = !DILocation(line: 60, column: 17, scope: !167)
!188 = !DILocation(line: 60, column: 28, scope: !167)
!189 = !DILocation(line: 61, column: 17, scope: !167)
!190 = !DILocation(line: 61, column: 30, scope: !167)
!191 = !DILocation(line: 63, column: 18, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 63, column: 4)
!193 = distinct !DILexicalBlock(scope: !167, file: !3, line: 63, column: 4)
!194 = !DILocation(line: 63, column: 4, scope: !193)
!195 = !DILocation(line: 64, column: 49, scope: !196)
!196 = distinct !DILexicalBlock(scope: !192, file: !3, line: 63, column: 36)
!197 = !DILocation(line: 64, column: 20, scope: !196)
!198 = !DILocation(line: 64, column: 30, scope: !196)
!199 = !DILocation(line: 64, column: 45, scope: !196)
!200 = !DILocation(line: 65, column: 20, scope: !196)
!201 = !DILocation(line: 65, column: 30, scope: !196)
!202 = !DILocation(line: 65, column: 50, scope: !196)
!203 = !DILocation(line: 66, column: 35, scope: !196)
!204 = !DILocation(line: 66, column: 37, scope: !196)
!205 = !DILocation(line: 66, column: 20, scope: !196)
!206 = !DILocation(line: 66, column: 7, scope: !196)
!207 = !DILocation(line: 66, column: 33, scope: !196)
!208 = !DILocation(line: 67, column: 36, scope: !196)
!209 = !DILocation(line: 67, column: 23, scope: !196)
!210 = !DILocation(line: 67, column: 7, scope: !196)
!211 = !DILocation(line: 63, column: 32, scope: !192)
!212 = distinct !{!212, !194, !213, !214, !215}
!213 = !DILocation(line: 68, column: 4, scope: !193)
!214 = !{!"llvm.loop.mustprogress"}
!215 = !{!"llvm.loop.unroll.disable"}
!216 = !DILocation(line: 69, column: 1, scope: !167)
!217 = !DISubprogram(name: "pthread_mutex_lock", scope: !218, file: !218, line: 738, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!218 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!219 = !DISubroutineType(types: !220)
!220 = !{!221, !222}
!221 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !104, line: 72, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !104, line: 67, size: 320, elements: !225)
!225 = !{!226, !245, !247}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !224, file: !104, line: 69, baseType: !227, size: 320)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !228, line: 22, size: 320, elements: !229)
!228 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!229 = !{!230, !231, !232, !233, !234, !235, !237, !238}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !227, file: !228, line: 24, baseType: !221, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !227, file: !228, line: 25, baseType: !7, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !227, file: !228, line: 26, baseType: !221, size: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !227, file: !228, line: 28, baseType: !7, size: 32, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !227, file: !228, line: 32, baseType: !221, size: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !227, file: !228, line: 34, baseType: !236, size: 16, offset: 160)
!236 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !227, file: !228, line: 35, baseType: !236, size: 16, offset: 176)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !227, file: !228, line: 36, baseType: !239, size: 128, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !109, line: 53, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !109, line: 49, size: 128, elements: !241)
!241 = !{!242, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !240, file: !109, line: 51, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !240, file: !109, line: 52, baseType: !243, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !224, file: !104, line: 70, baseType: !246, size: 320)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 320, elements: !95)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !224, file: !104, line: 71, baseType: !28, size: 64)
!248 = !{}
!249 = !DISubprogram(name: "pthread_mutex_unlock", scope: !218, file: !218, line: 756, type: !219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!250 = distinct !DISubprogram(name: "ZeroBox", scope: !3, file: !3, line: 86, type: !251, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !28, !17}
!253 = !{!254, !255, !256}
!254 = !DILocalVariable(name: "my_id", arg: 1, scope: !250, file: !3, line: 86, type: !28)
!255 = !DILocalVariable(name: "b", arg: 2, scope: !250, file: !3, line: 86, type: !17)
!256 = !DILocalVariable(name: "i", scope: !250, file: !3, line: 88, type: !28)
!257 = !DILocation(line: 0, scope: !250)
!258 = !DILocation(line: 90, column: 7, scope: !250)
!259 = !DILocation(line: 90, column: 12, scope: !250)
!260 = !DILocation(line: 91, column: 7, scope: !250)
!261 = !DILocation(line: 92, column: 4, scope: !262)
!262 = distinct !DILexicalBlock(scope: !250, file: !3, line: 92, column: 4)
!263 = !DILocation(line: 93, column: 23, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !3, line: 92, column: 4)
!265 = !DILocation(line: 95, column: 4, scope: !266)
!266 = distinct !DILexicalBlock(scope: !250, file: !3, line: 95, column: 4)
!267 = !DILocation(line: 97, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 95, column: 40)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 95, column: 4)
!270 = !DILocation(line: 91, column: 21, scope: !250)
!271 = !DILocation(line: 96, column: 7, scope: !268)
!272 = !DILocation(line: 96, column: 22, scope: !268)
!273 = !DILocation(line: 95, column: 36, scope: !269)
!274 = !DILocation(line: 95, column: 18, scope: !269)
!275 = distinct !{!275, !265, !276, !214, !215}
!276 = !DILocation(line: 98, column: 4, scope: !266)
!277 = !DILocation(line: 99, column: 7, scope: !250)
!278 = !DILocation(line: 99, column: 20, scope: !250)
!279 = !DILocation(line: 100, column: 7, scope: !250)
!280 = !DILocation(line: 100, column: 23, scope: !250)
!281 = !DILocation(line: 101, column: 27, scope: !250)
!282 = !DILocation(line: 101, column: 4, scope: !250)
!283 = !DILocation(line: 102, column: 7, scope: !250)
!284 = !DILocation(line: 102, column: 25, scope: !250)
!285 = !DILocation(line: 103, column: 27, scope: !250)
!286 = !DILocation(line: 103, column: 4, scope: !250)
!287 = !DILocation(line: 104, column: 7, scope: !250)
!288 = !DILocation(line: 104, column: 12, scope: !250)
!289 = !DILocation(line: 105, column: 7, scope: !250)
!290 = !DILocation(line: 105, column: 12, scope: !250)
!291 = !DILocation(line: 106, column: 7, scope: !250)
!292 = !DILocation(line: 107, column: 12, scope: !250)
!293 = !DILocation(line: 109, column: 1, scope: !250)
!294 = distinct !DISubprogram(name: "FreeBoxes", scope: !3, file: !3, line: 73, type: !295, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !28}
!297 = !{!298, !299, !300}
!298 = !DILocalVariable(name: "my_id", arg: 1, scope: !294, file: !3, line: 73, type: !28)
!299 = !DILocalVariable(name: "i", scope: !294, file: !3, line: 75, type: !28)
!300 = !DILocalVariable(name: "b_array", scope: !294, file: !3, line: 76, type: !17)
!301 = !DILocation(line: 0, scope: !294)
!302 = !DILocation(line: 78, column: 27, scope: !294)
!303 = !DILocation(line: 79, column: 33, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !3, line: 79, column: 4)
!305 = distinct !DILexicalBlock(scope: !294, file: !3, line: 79, column: 4)
!306 = !DILocation(line: 79, column: 18, scope: !304)
!307 = !DILocation(line: 79, column: 4, scope: !305)
!308 = !DILocation(line: 80, column: 23, scope: !304)
!309 = !DILocation(line: 80, column: 7, scope: !304)
!310 = !DILocation(line: 79, column: 48, scope: !304)
!311 = distinct !{!311, !307, !312, !214, !215}
!312 = !DILocation(line: 80, column: 33, scope: !305)
!313 = !DILocation(line: 81, column: 30, scope: !294)
!314 = !DILocation(line: 82, column: 1, scope: !294)
!315 = !DISubprogram(name: "pthread_cond_init", scope: !218, file: !218, line: 965, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!316 = !DISubroutineType(types: !317)
!317 = !{!221, !318, !320}
!318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_condattr_t", file: !104, line: 45, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !104, line: 41, size: 32, elements: !325)
!325 = !{!326, !328}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !324, file: !104, line: 43, baseType: !327, size: 32)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 32, elements: !64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !324, file: !104, line: 44, baseType: !221, size: 32)
!329 = distinct !DISubprogram(name: "InitBox", scope: !3, file: !3, line: 128, type: !330, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!17, !28, !24, !24, !24, !17}
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DILocalVariable(name: "my_id", arg: 1, scope: !329, file: !3, line: 128, type: !28)
!334 = !DILocalVariable(name: "x_center", arg: 2, scope: !329, file: !3, line: 128, type: !24)
!335 = !DILocalVariable(name: "y_center", arg: 3, scope: !329, file: !3, line: 128, type: !24)
!336 = !DILocalVariable(name: "length", arg: 4, scope: !329, file: !3, line: 128, type: !24)
!337 = !DILocalVariable(name: "parent", arg: 5, scope: !329, file: !3, line: 128, type: !17)
!338 = !DILocalVariable(name: "b", scope: !329, file: !3, line: 130, type: !17)
!339 = !DILocation(line: 0, scope: !329)
!340 = !DILocation(line: 132, column: 21, scope: !341)
!341 = distinct !DILexicalBlock(scope: !329, file: !3, line: 132, column: 8)
!342 = !DILocation(line: 132, column: 50, scope: !341)
!343 = !DILocation(line: 132, column: 34, scope: !341)
!344 = !DILocation(line: 132, column: 8, scope: !329)
!345 = !DILocation(line: 133, column: 7, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !3, line: 132, column: 62)
!347 = !DILocation(line: 134, column: 7, scope: !346)
!348 = !DILocation(line: 136, column: 22, scope: !329)
!349 = !DILocation(line: 136, column: 54, scope: !329)
!350 = !DILocation(line: 137, column: 7, scope: !329)
!351 = !DILocation(line: 137, column: 16, scope: !329)
!352 = !DILocation(line: 138, column: 7, scope: !329)
!353 = !DILocation(line: 138, column: 16, scope: !329)
!354 = !DILocation(line: 139, column: 7, scope: !329)
!355 = !DILocation(line: 139, column: 14, scope: !329)
!356 = !DILocation(line: 140, column: 7, scope: !329)
!357 = !DILocation(line: 140, column: 14, scope: !329)
!358 = !DILocation(line: 141, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !329, file: !3, line: 141, column: 8)
!360 = !DILocation(line: 141, column: 8, scope: !329)
!361 = !DILocation(line: 144, column: 26, scope: !359)
!362 = !DILocation(line: 144, column: 32, scope: !359)
!363 = !DILocation(line: 0, scope: !359)
!364 = !DILocation(line: 142, column: 10, scope: !359)
!365 = !DILocation(line: 142, column: 16, scope: !359)
!366 = !DILocation(line: 136, column: 9, scope: !329)
!367 = !DILocation(line: 145, column: 4, scope: !329)
!368 = !DISubprogram(name: "LockedPrint", scope: !12, file: !12, line: 175, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371, null}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!372 = distinct !DISubprogram(name: "PrintBox", scope: !3, file: !3, line: 160, type: !251, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "my_id", arg: 1, scope: !372, file: !3, line: 160, type: !28)
!375 = !DILocalVariable(name: "b", arg: 2, scope: !372, file: !3, line: 160, type: !17)
!376 = !DILocation(line: 0, scope: !372)
!377 = !DILocation(line: 163, column: 26, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !3, line: 163, column: 4)
!379 = !DILocation(line: 163, column: 5, scope: !378)
!380 = !DILocation(line: 164, column: 11, scope: !372)
!381 = !DILocation(line: 164, column: 4, scope: !372)
!382 = !DILocation(line: 165, column: 10, scope: !383)
!383 = distinct !DILexicalBlock(scope: !372, file: !3, line: 165, column: 8)
!384 = !DILocation(line: 165, column: 8, scope: !372)
!385 = !DILocation(line: 166, column: 37, scope: !386)
!386 = distinct !DILexicalBlock(scope: !383, file: !3, line: 165, column: 19)
!387 = !DILocation(line: 166, column: 7, scope: !386)
!388 = !DILocation(line: 167, column: 47, scope: !386)
!389 = !DILocation(line: 167, column: 7, scope: !386)
!390 = !DILocation(line: 168, column: 47, scope: !386)
!391 = !DILocation(line: 168, column: 7, scope: !386)
!392 = !DILocation(line: 169, column: 47, scope: !386)
!393 = !DILocation(line: 169, column: 7, scope: !386)
!394 = !DILocation(line: 170, column: 45, scope: !386)
!395 = !DILocation(line: 170, column: 7, scope: !386)
!396 = !DILocation(line: 171, column: 44, scope: !386)
!397 = !DILocation(line: 171, column: 7, scope: !386)
!398 = !DILocation(line: 172, column: 45, scope: !386)
!399 = !DILocation(line: 172, column: 7, scope: !386)
!400 = !DILocation(line: 173, column: 14, scope: !401)
!401 = distinct !DILexicalBlock(scope: !386, file: !3, line: 173, column: 11)
!402 = !DILocation(line: 173, column: 21, scope: !401)
!403 = !DILocation(line: 173, column: 11, scope: !386)
!404 = !DILocation(line: 174, column: 3, scope: !401)
!405 = !DILocation(line: 176, column: 49, scope: !401)
!406 = !DILocation(line: 176, column: 3, scope: !401)
!407 = !DILocation(line: 177, column: 7, scope: !386)
!408 = !DILocation(line: 178, column: 14, scope: !409)
!409 = distinct !DILexicalBlock(scope: !386, file: !3, line: 178, column: 11)
!410 = !DILocation(line: 178, column: 27, scope: !409)
!411 = !DILocation(line: 178, column: 11, scope: !386)
!412 = !DILocation(line: 179, column: 23, scope: !409)
!413 = !DILocation(line: 179, column: 3, scope: !409)
!414 = !DILocation(line: 181, column: 3, scope: !409)
!415 = !DILocation(line: 182, column: 7, scope: !386)
!416 = !DILocation(line: 183, column: 14, scope: !417)
!417 = distinct !DILexicalBlock(scope: !386, file: !3, line: 183, column: 11)
!418 = !DILocation(line: 183, column: 27, scope: !417)
!419 = !DILocation(line: 183, column: 11, scope: !386)
!420 = !DILocation(line: 184, column: 23, scope: !417)
!421 = !DILocation(line: 184, column: 3, scope: !417)
!422 = !DILocation(line: 186, column: 3, scope: !417)
!423 = !DILocation(line: 187, column: 7, scope: !386)
!424 = !DILocation(line: 188, column: 27, scope: !386)
!425 = !DILocation(line: 188, column: 42, scope: !386)
!426 = !DILocation(line: 188, column: 7, scope: !386)
!427 = !DILocation(line: 189, column: 7, scope: !386)
!428 = !DILocation(line: 190, column: 27, scope: !386)
!429 = !DILocation(line: 190, column: 38, scope: !386)
!430 = !DILocation(line: 190, column: 7, scope: !386)
!431 = !DILocation(line: 191, column: 7, scope: !386)
!432 = !DILocation(line: 192, column: 27, scope: !386)
!433 = !DILocation(line: 192, column: 38, scope: !386)
!434 = !DILocation(line: 192, column: 7, scope: !386)
!435 = !DILocation(line: 193, column: 7, scope: !386)
!436 = !DILocation(line: 194, column: 27, scope: !386)
!437 = !DILocation(line: 194, column: 38, scope: !386)
!438 = !DILocation(line: 194, column: 7, scope: !386)
!439 = !DILocation(line: 195, column: 45, scope: !386)
!440 = !DILocation(line: 195, column: 7, scope: !386)
!441 = !DILocation(line: 196, column: 7, scope: !386)
!442 = !DILocation(line: 197, column: 32, scope: !386)
!443 = !DILocation(line: 197, column: 46, scope: !386)
!444 = !DILocation(line: 197, column: 7, scope: !386)
!445 = !DILocation(line: 198, column: 50, scope: !386)
!446 = !DILocation(line: 198, column: 7, scope: !386)
!447 = !DILocation(line: 199, column: 35, scope: !386)
!448 = !DILocation(line: 199, column: 7, scope: !386)
!449 = !DILocation(line: 200, column: 7, scope: !386)
!450 = !DILocation(line: 201, column: 4, scope: !386)
!451 = !DILocation(line: 203, column: 7, scope: !383)
!452 = !DILocation(line: 204, column: 28, scope: !453)
!453 = distinct !DILexicalBlock(scope: !372, file: !3, line: 204, column: 4)
!454 = !DILocation(line: 204, column: 5, scope: !453)
!455 = !DILocation(line: 205, column: 1, scope: !372)
!456 = !DISubprogram(name: "fflush", scope: !457, file: !457, line: 218, type: !458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!457 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!458 = !DISubroutineType(types: !459)
!459 = !{!221, !460}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !462, line: 7, baseType: !463)
!462 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !464, line: 49, size: 1728, elements: !465)
!464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!465 = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !481, !483, !484, !485, !488, !490, !492, !496, !499, !501, !504, !507, !508, !509, !513, !514}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !463, file: !464, line: 51, baseType: !221, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !463, file: !464, line: 54, baseType: !371, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !463, file: !464, line: 55, baseType: !371, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !463, file: !464, line: 56, baseType: !371, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !463, file: !464, line: 57, baseType: !371, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !463, file: !464, line: 58, baseType: !371, size: 64, offset: 320)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !463, file: !464, line: 59, baseType: !371, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !463, file: !464, line: 60, baseType: !371, size: 64, offset: 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !463, file: !464, line: 61, baseType: !371, size: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !463, file: !464, line: 64, baseType: !371, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !463, file: !464, line: 65, baseType: !371, size: 64, offset: 640)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !463, file: !464, line: 66, baseType: !371, size: 64, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !463, file: !464, line: 68, baseType: !479, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !464, line: 36, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !463, file: !464, line: 70, baseType: !482, size: 64, offset: 832)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !463, file: !464, line: 72, baseType: !221, size: 32, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !463, file: !464, line: 73, baseType: !221, size: 32, offset: 928)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !463, file: !464, line: 74, baseType: !486, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !487, line: 152, baseType: !28)
!487 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !463, file: !464, line: 77, baseType: !489, size: 16, offset: 1024)
!489 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !463, file: !464, line: 78, baseType: !491, size: 8, offset: 1040)
!491 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !463, file: !464, line: 79, baseType: !493, size: 8, offset: 1048)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 8, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 1)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !463, file: !464, line: 81, baseType: !497, size: 64, offset: 1088)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !464, line: 43, baseType: null)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !463, file: !464, line: 89, baseType: !500, size: 64, offset: 1152)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !487, line: 153, baseType: !28)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !463, file: !464, line: 91, baseType: !502, size: 64, offset: 1216)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !464, line: 37, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !463, file: !464, line: 92, baseType: !505, size: 64, offset: 1280)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !464, line: 38, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !463, file: !464, line: 93, baseType: !482, size: 64, offset: 1344)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !463, file: !464, line: 94, baseType: !158, size: 64, offset: 1408)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !463, file: !464, line: 95, baseType: !510, size: 64, offset: 1472)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !511, line: 46, baseType: !512)
!511 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!512 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !463, file: !464, line: 96, baseType: !221, size: 32, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !463, file: !464, line: 98, baseType: !515, size: 160, offset: 1568)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 160, elements: !80)
!516 = distinct !DISubprogram(name: "PrintBoxArrayIds", scope: !3, file: !3, line: 221, type: !517, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519, !28}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!520 = !{!521, !522, !523, !524}
!521 = !DILocalVariable(name: "b_array", arg: 1, scope: !516, file: !3, line: 221, type: !519)
!522 = !DILocalVariable(name: "array_length", arg: 2, scope: !516, file: !3, line: 221, type: !28)
!523 = !DILocalVariable(name: "i", scope: !516, file: !3, line: 223, type: !28)
!524 = !DILocalVariable(name: "tab_count", scope: !516, file: !3, line: 224, type: !28)
!525 = !DILocation(line: 0, scope: !516)
!526 = !DILocation(line: 227, column: 18, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 227, column: 4)
!528 = distinct !DILexicalBlock(scope: !516, file: !3, line: 227, column: 4)
!529 = !DILocation(line: 227, column: 4, scope: !528)
!530 = !DILocation(line: 228, column: 21, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 228, column: 11)
!532 = distinct !DILexicalBlock(scope: !527, file: !3, line: 227, column: 39)
!533 = !DILocation(line: 228, column: 11, scope: !532)
!534 = !DILocation(line: 229, column: 3, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !3, line: 228, column: 27)
!536 = !DILocation(line: 231, column: 7, scope: !535)
!537 = !DILocation(line: 232, column: 11, scope: !538)
!538 = distinct !DILexicalBlock(scope: !532, file: !3, line: 232, column: 11)
!539 = !DILocation(line: 232, column: 22, scope: !538)
!540 = !DILocation(line: 232, column: 11, scope: !532)
!541 = !DILocation(line: 233, column: 31, scope: !538)
!542 = !DILocation(line: 233, column: 3, scope: !538)
!543 = !DILocation(line: 234, column: 17, scope: !532)
!544 = !DILocation(line: 227, column: 35, scope: !527)
!545 = distinct !{!545, !529, !546, !214, !215}
!546 = !DILocation(line: 235, column: 4, scope: !528)
!547 = !DILocation(line: 236, column: 4, scope: !516)
!548 = !DILocation(line: 237, column: 1, scope: !516)
!549 = !DISubprogram(name: "PrintParticleArrayIds", scope: !35, file: !35, line: 66, type: !550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !248)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552, !28}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!553 = distinct !DISubprogram(name: "PrintExpansionTerms", scope: !3, file: !3, line: 251, type: !554, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !557)
!554 = !DISubroutineType(types: !555)
!555 = !{null, !556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(name: "expansion", arg: 1, scope: !553, file: !3, line: 251, type: !556)
!559 = !DILocalVariable(name: "i", scope: !553, file: !3, line: 253, type: !28)
!560 = !DILocalVariable(name: "tab_count", scope: !553, file: !3, line: 254, type: !28)
!561 = !DILocation(line: 0, scope: !553)
!562 = !DILocation(line: 256, column: 20, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 256, column: 4)
!564 = distinct !DILexicalBlock(scope: !553, file: !3, line: 256, column: 4)
!565 = !DILocation(line: 256, column: 18, scope: !563)
!566 = !DILocation(line: 256, column: 4, scope: !564)
!567 = !DILocation(line: 257, column: 21, scope: !568)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 257, column: 11)
!569 = distinct !DILexicalBlock(scope: !563, file: !3, line: 256, column: 42)
!570 = !DILocation(line: 257, column: 11, scope: !569)
!571 = !DILocation(line: 258, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !568, file: !3, line: 257, column: 27)
!573 = !DILocation(line: 260, column: 7, scope: !572)
!574 = !DILocation(line: 261, column: 11, scope: !575)
!575 = distinct !DILexicalBlock(scope: !569, file: !3, line: 261, column: 11)
!576 = !DILocation(line: 261, column: 24, scope: !575)
!577 = !DILocation(line: 261, column: 26, scope: !575)
!578 = !DILocation(line: 0, scope: !575)
!579 = !DILocation(line: 261, column: 11, scope: !569)
!580 = !DILocation(line: 262, column: 3, scope: !575)
!581 = !DILocation(line: 264, column: 54, scope: !575)
!582 = !DILocation(line: 264, column: 3, scope: !575)
!583 = !DILocation(line: 256, column: 38, scope: !563)
!584 = distinct !{!584, !566, !585, !214, !215}
!585 = !DILocation(line: 266, column: 4, scope: !564)
!586 = !DILocation(line: 267, column: 4, scope: !553)
!587 = !DILocation(line: 268, column: 1, scope: !553)
!588 = distinct !DISubprogram(name: "ListIterate", scope: !3, file: !3, line: 272, type: !589, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !28, !17, !519, !28, !591}
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_function", file: !6, line: 40, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !28, !17, !17}
!595 = !{!596, !597, !598, !599, !600, !601}
!596 = !DILocalVariable(name: "my_id", arg: 1, scope: !588, file: !3, line: 272, type: !28)
!597 = !DILocalVariable(name: "b", arg: 2, scope: !588, file: !3, line: 272, type: !17)
!598 = !DILocalVariable(name: "list", arg: 3, scope: !588, file: !3, line: 272, type: !519)
!599 = !DILocalVariable(name: "length", arg: 4, scope: !588, file: !3, line: 272, type: !28)
!600 = !DILocalVariable(name: "function", arg: 5, scope: !588, file: !3, line: 272, type: !591)
!601 = !DILocalVariable(name: "i", scope: !588, file: !3, line: 274, type: !28)
!602 = !DILocation(line: 0, scope: !588)
!603 = !DILocation(line: 276, column: 18, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 276, column: 4)
!605 = distinct !DILexicalBlock(scope: !588, file: !3, line: 276, column: 4)
!606 = !DILocation(line: 276, column: 4, scope: !605)
!607 = !DILocation(line: 277, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !3, line: 277, column: 11)
!609 = distinct !DILexicalBlock(scope: !604, file: !3, line: 276, column: 33)
!610 = !DILocation(line: 277, column: 19, scope: !608)
!611 = !DILocation(line: 277, column: 11, scope: !609)
!612 = !DILocation(line: 278, column: 3, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !3, line: 277, column: 28)
!614 = !DILocation(line: 279, column: 3, scope: !613)
!615 = !DILocation(line: 281, column: 7, scope: !609)
!616 = !DILocation(line: 276, column: 29, scope: !604)
!617 = distinct !{!617, !606, !618, !214, !215}
!618 = !DILocation(line: 282, column: 4, scope: !605)
!619 = !DILocation(line: 283, column: 1, scope: !588)
!620 = distinct !DISubprogram(name: "AdjacentBoxes", scope: !3, file: !3, line: 303, type: !621, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !623)
!621 = !DISubroutineType(types: !622)
!622 = !{!28, !17, !17}
!623 = !{!624, !625, !626, !627, !628, !629}
!624 = !DILocalVariable(name: "b1", arg: 1, scope: !620, file: !3, line: 303, type: !17)
!625 = !DILocalVariable(name: "b2", arg: 2, scope: !620, file: !3, line: 303, type: !17)
!626 = !DILocalVariable(name: "exact_separation", scope: !620, file: !3, line: 305, type: !24)
!627 = !DILocalVariable(name: "x_separation", scope: !620, file: !3, line: 306, type: !24)
!628 = !DILocalVariable(name: "y_separation", scope: !620, file: !3, line: 307, type: !24)
!629 = !DILocalVariable(name: "ret_val", scope: !620, file: !3, line: 308, type: !28)
!630 = !DILocation(line: 0, scope: !620)
!631 = !DILocation(line: 310, column: 28, scope: !620)
!632 = !DILocation(line: 310, column: 35, scope: !620)
!633 = !DILocation(line: 310, column: 56, scope: !620)
!634 = !DILocation(line: 310, column: 63, scope: !620)
!635 = !DILocation(line: 310, column: 49, scope: !620)
!636 = !DILocation(line: 311, column: 44, scope: !620)
!637 = !DILocation(line: 311, column: 59, scope: !620)
!638 = !DILocation(line: 311, column: 53, scope: !620)
!639 = !DILocation(line: 311, column: 26, scope: !620)
!640 = !DILocation(line: 312, column: 44, scope: !620)
!641 = !DILocation(line: 312, column: 59, scope: !620)
!642 = !DILocation(line: 312, column: 53, scope: !620)
!643 = !DILocation(line: 312, column: 26, scope: !620)
!644 = !DILocation(line: 314, column: 22, scope: !645)
!645 = distinct !DILexicalBlock(scope: !620, file: !3, line: 314, column: 8)
!646 = !DILocation(line: 314, column: 43, scope: !645)
!647 = !DILocation(line: 318, column: 25, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !3, line: 318, column: 11)
!649 = !DILocation(line: 318, column: 46, scope: !648)
!650 = !DILocation(line: 0, scope: !645)
!651 = !DILocation(line: 324, column: 4, scope: !620)
!652 = distinct !DISubprogram(name: "WellSeparatedBoxes", scope: !3, file: !3, line: 346, type: !621, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!653 = !{!654, !655, !656, !657, !658, !659}
!654 = !DILocalVariable(name: "b1", arg: 1, scope: !652, file: !3, line: 346, type: !17)
!655 = !DILocalVariable(name: "b2", arg: 2, scope: !652, file: !3, line: 346, type: !17)
!656 = !DILocalVariable(name: "min_ws_distance", scope: !652, file: !3, line: 348, type: !24)
!657 = !DILocalVariable(name: "x_separation", scope: !652, file: !3, line: 349, type: !24)
!658 = !DILocalVariable(name: "y_separation", scope: !652, file: !3, line: 350, type: !24)
!659 = !DILocalVariable(name: "ret_val", scope: !652, file: !3, line: 351, type: !28)
!660 = !DILocation(line: 0, scope: !652)
!661 = !DILocation(line: 353, column: 12, scope: !662)
!662 = distinct !DILexicalBlock(scope: !652, file: !3, line: 353, column: 8)
!663 = !DILocation(line: 353, column: 25, scope: !662)
!664 = !DILocation(line: 353, column: 19, scope: !662)
!665 = !DILocation(line: 0, scope: !662)
!666 = !DILocation(line: 358, column: 44, scope: !652)
!667 = !DILocation(line: 358, column: 59, scope: !652)
!668 = !DILocation(line: 358, column: 53, scope: !652)
!669 = !DILocation(line: 358, column: 26, scope: !652)
!670 = !DILocation(line: 361, column: 22, scope: !671)
!671 = distinct !DILexicalBlock(scope: !652, file: !3, line: 361, column: 8)
!672 = !DILocation(line: 361, column: 42, scope: !671)
!673 = !DILocation(line: 359, column: 44, scope: !652)
!674 = !DILocation(line: 359, column: 59, scope: !652)
!675 = !DILocation(line: 359, column: 53, scope: !652)
!676 = !DILocation(line: 359, column: 26, scope: !652)
!677 = !DILocation(line: 361, column: 59, scope: !671)
!678 = !DILocation(line: 361, column: 8, scope: !652)
!679 = !DILocation(line: 0, scope: !671)
!680 = !DILocation(line: 366, column: 4, scope: !652)
