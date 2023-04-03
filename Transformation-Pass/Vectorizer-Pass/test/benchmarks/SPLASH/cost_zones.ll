; ModuleID = 'cost_zones.c'
source_filename = "cost_zones.c"
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

@G_Memory = external local_unnamed_addr global ptr, align 8
@Number_Of_Processors = external local_unnamed_addr global i64, align 8
@Grid = external local_unnamed_addr global ptr, align 8
@Local = external local_unnamed_addr global [1024 x %struct._Local_Memory], align 16
@Child_Sequence = internal unnamed_addr constant [4 x [4 x i64]] [[4 x i64] [i64 0, i64 1, i64 2, i64 3], [4 x i64] [i64 2, i64 3, i64 0, i64 1], [4 x i64] [i64 0, i64 3, i64 2, i64 1], [4 x i64] [i64 2, i64 1, i64 0, i64 3]], align 16, !dbg !0
@Direction_Sequence = internal unnamed_addr constant [4 x [4 x i64]] [[4 x i64] [i64 2, i64 0, i64 0, i64 3], [4 x i64] [i64 3, i64 1, i64 1, i64 2], [4 x i64] [i64 0, i64 2, i64 2, i64 1], [4 x i64] [i64 1, i64 3, i64 3, i64 0]], align 16, !dbg !26

; Function Attrs: noinline nounwind uwtable
define dso_local void @CostZones(i64 noundef %my_id) local_unnamed_addr #0 !dbg !39 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !43, metadata !DIExpression()), !dbg !44
  tail call void @PartitionIterate(i64 noundef %my_id, ptr noundef nonnull @ComputeSubTreeCosts, i32 noundef 1) #4, !dbg !45
  %0 = load ptr, ptr @G_Memory, align 8, !dbg !46
  %synch = getelementptr inbounds %struct._G_Mem, ptr %0, i64 0, i32 6, !dbg !48
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %synch) #4, !dbg !49
  %1 = load ptr, ptr @G_Memory, align 8, !dbg !50
  %bar_teller = getelementptr inbounds %struct._G_Mem, ptr %1, i64 0, i32 6, i32 2, !dbg !51
  %2 = load i32, ptr %bar_teller, align 8, !dbg !52
  %inc = add i32 %2, 1, !dbg !52
  store i32 %inc, ptr %bar_teller, align 8, !dbg !52
  %conv = zext i32 %inc to i64, !dbg !53
  %3 = load i64, ptr @Number_Of_Processors, align 8, !dbg !55
  %cmp = icmp eq i64 %3, %conv, !dbg !56
  br i1 %cmp, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %entry
  store i32 0, ptr %bar_teller, align 8, !dbg !58
  %bar_cond = getelementptr inbounds %struct._G_Mem, ptr %1, i64 0, i32 6, i32 1, !dbg !60
  %call8 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #4, !dbg !61
  br label %if.end, !dbg !62

if.else:                                          ; preds = %entry
  %synch2 = getelementptr inbounds %struct._G_Mem, ptr %1, i64 0, i32 6, !dbg !63
  %bar_cond10 = getelementptr inbounds %struct._G_Mem, ptr %1, i64 0, i32 6, i32 1, !dbg !64
  %call13 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond10, ptr noundef nonnull %synch2) #4, !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr @G_Memory, align 8, !dbg !67
  %synch14 = getelementptr inbounds %struct._G_Mem, ptr %4, i64 0, i32 6, !dbg !68
  %call16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %synch14) #4, !dbg !69
  %5 = load ptr, ptr @Grid, align 8, !dbg !70
  %subtree_cost = getelementptr inbounds %struct._Box, ptr %5, i64 0, i32 38, !dbg !71
  %6 = load i64, ptr %subtree_cost, align 8, !dbg !71
  %Total_Work = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 15, !dbg !72
  store i64 %6, ptr %Total_Work, align 8, !dbg !73
  %7 = load i64, ptr @Number_Of_Processors, align 8, !dbg !74
  %div = sdiv i64 %6, %7, !dbg !75
  %mul = mul nsw i64 %div, %my_id, !dbg !76
  %Min_Work = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 16, !dbg !77
  store i64 %mul, ptr %Min_Work, align 8, !dbg !78
  %sub = add nsw i64 %7, -1, !dbg !79
  %cmp20 = icmp eq i64 %sub, %my_id, !dbg !81
  %add = add nsw i64 %mul, %div
  %spec.select = select i1 %cmp20, i64 %6, i64 %add, !dbg !82
  %8 = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 17, !dbg !83
  store i64 %spec.select, ptr %8, align 8, !dbg !84
  tail call void @InitPartition(i64 noundef %my_id) #4, !dbg !85
  %9 = load ptr, ptr @Grid, align 8, !dbg !86
  tail call void @CostZonesHelper(i64 noundef %my_id, ptr noundef %9, i64 noundef 0, i32 noundef 0), !dbg !87
  %10 = load ptr, ptr @G_Memory, align 8, !dbg !88
  %synch35 = getelementptr inbounds %struct._G_Mem, ptr %10, i64 0, i32 6, !dbg !90
  %call37 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %synch35) #4, !dbg !91
  %11 = load ptr, ptr @G_Memory, align 8, !dbg !92
  %bar_teller39 = getelementptr inbounds %struct._G_Mem, ptr %11, i64 0, i32 6, i32 2, !dbg !93
  %12 = load i32, ptr %bar_teller39, align 8, !dbg !94
  %inc40 = add i32 %12, 1, !dbg !94
  store i32 %inc40, ptr %bar_teller39, align 8, !dbg !94
  %conv43 = zext i32 %inc40 to i64, !dbg !95
  %13 = load i64, ptr @Number_Of_Processors, align 8, !dbg !97
  %cmp44 = icmp eq i64 %13, %conv43, !dbg !98
  br i1 %cmp44, label %if.then46, label %if.else52, !dbg !99

if.then46:                                        ; preds = %if.end
  store i32 0, ptr %bar_teller39, align 8, !dbg !100
  %bar_cond50 = getelementptr inbounds %struct._G_Mem, ptr %11, i64 0, i32 6, i32 1, !dbg !102
  %call51 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond50) #4, !dbg !103
  br label %if.end58, !dbg !104

if.else52:                                        ; preds = %if.end
  %synch41 = getelementptr inbounds %struct._G_Mem, ptr %11, i64 0, i32 6, !dbg !105
  %bar_cond54 = getelementptr inbounds %struct._G_Mem, ptr %11, i64 0, i32 6, i32 1, !dbg !106
  %call57 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond54, ptr noundef nonnull %synch41) #4, !dbg !108
  br label %if.end58

if.end58:                                         ; preds = %if.else52, %if.then46
  %14 = load ptr, ptr @G_Memory, align 8, !dbg !109
  %synch59 = getelementptr inbounds %struct._G_Mem, ptr %14, i64 0, i32 6, !dbg !110
  %call61 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %synch59) #4, !dbg !111
  ret void, !dbg !112
}

declare !dbg !113 void @PartitionIterate(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ComputeSubTreeCosts(i64 %my_id, ptr noundef %b) #0 !dbg !262 {
entry:
  call void @llvm.dbg.value(metadata i64 undef, metadata !264, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata ptr %b, metadata !265, metadata !DIExpression()), !dbg !267
  %0 = load ptr, ptr @G_Memory, align 8, !dbg !268
  %exp_lock_index = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 26, !dbg !270
  %1 = load i64, ptr %exp_lock_index, align 8, !dbg !270
  %arrayidx = getelementptr inbounds %struct._G_Mem, ptr %0, i64 0, i32 5, i64 %1, !dbg !271
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx) #4, !dbg !272
  %type = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 5, !dbg !273
  %2 = load i32, ptr %type, align 8, !dbg !273
  %cmp = icmp eq i32 %2, 1, !dbg !275
  br i1 %cmp, label %while.cond.preheader, label %if.end, !dbg !276

while.cond.preheader:                             ; preds = %entry
  %interaction_synch = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 30
  %num_children = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 12
  %3 = load i64, ptr %interaction_synch, align 8, !dbg !277
  %4 = load i64, ptr %num_children, align 8, !dbg !279
  %cmp1.not46 = icmp eq i64 %3, %4, !dbg !280
  br i1 %cmp1.not46, label %if.end, label %while.body.lr.ph, !dbg !281

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %interaction_synch_cv = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 31
  br label %while.body, !dbg !281

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %5 = load ptr, ptr @G_Memory, align 8, !dbg !282
  %6 = load i64, ptr %exp_lock_index, align 8, !dbg !284
  %arrayidx4 = getelementptr inbounds %struct._G_Mem, ptr %5, i64 0, i32 5, i64 %6, !dbg !285
  %call5 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %interaction_synch_cv, ptr noundef nonnull %arrayidx4) #4, !dbg !286
  %7 = load i64, ptr %interaction_synch, align 8, !dbg !277
  %8 = load i64, ptr %num_children, align 8, !dbg !279
  %cmp1.not = icmp eq i64 %7, %8, !dbg !280
  br i1 %cmp1.not, label %if.end, label %while.body, !dbg !281, !llvm.loop !287

if.end:                                           ; preds = %while.body, %while.cond.preheader, %entry
  %interaction_synch6 = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 30, !dbg !291
  store i64 0, ptr %interaction_synch6, align 8, !dbg !292
  %9 = load ptr, ptr @G_Memory, align 8, !dbg !293
  %10 = load i64, ptr %exp_lock_index, align 8, !dbg !295
  %arrayidx9 = getelementptr inbounds %struct._G_Mem, ptr %9, i64 0, i32 5, i64 %10, !dbg !296
  %call10 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx9) #4, !dbg !297
  tail call void @ComputeCostOfBox(ptr noundef nonnull %b) #4, !dbg !298
  %cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 33, !dbg !299
  %11 = load i64, ptr %cost, align 8, !dbg !299
  %subtree_cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 38, !dbg !300
  %12 = load i64, ptr %subtree_cost, align 8, !dbg !301
  %add = add nsw i64 %12, %11, !dbg !301
  store i64 %add, ptr %subtree_cost, align 8, !dbg !301
  %parent = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 8, !dbg !302
  %13 = load ptr, ptr %parent, align 8, !dbg !302
  call void @llvm.dbg.value(metadata ptr %13, metadata !266, metadata !DIExpression()), !dbg !267
  %cmp11.not = icmp eq ptr %13, null, !dbg !303
  br i1 %cmp11.not, label %if.end28, label %if.then12, !dbg !305

if.then12:                                        ; preds = %if.end
  %14 = load ptr, ptr @G_Memory, align 8, !dbg !306
  %exp_lock_index14 = getelementptr inbounds %struct._Box, ptr %13, i64 0, i32 26, !dbg !309
  %15 = load i64, ptr %exp_lock_index14, align 8, !dbg !309
  %arrayidx15 = getelementptr inbounds %struct._G_Mem, ptr %14, i64 0, i32 5, i64 %15, !dbg !310
  %call16 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx15) #4, !dbg !311
  %16 = load i64, ptr %subtree_cost, align 8, !dbg !312
  %subtree_cost18 = getelementptr inbounds %struct._Box, ptr %13, i64 0, i32 38, !dbg !313
  %17 = load i64, ptr %subtree_cost18, align 8, !dbg !314
  %add19 = add nsw i64 %17, %16, !dbg !314
  store i64 %add19, ptr %subtree_cost18, align 8, !dbg !314
  %interaction_synch20 = getelementptr inbounds %struct._Box, ptr %13, i64 0, i32 30, !dbg !315
  %18 = load i64, ptr %interaction_synch20, align 8, !dbg !316
  %add21 = add nsw i64 %18, 1, !dbg !316
  store i64 %add21, ptr %interaction_synch20, align 8, !dbg !316
  %interaction_synch_cv22 = getelementptr inbounds %struct._Box, ptr %13, i64 0, i32 31, !dbg !317
  %call23 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %interaction_synch_cv22) #4, !dbg !319
  %19 = load ptr, ptr @G_Memory, align 8, !dbg !320
  %20 = load i64, ptr %exp_lock_index14, align 8, !dbg !322
  %arrayidx26 = getelementptr inbounds %struct._G_Mem, ptr %19, i64 0, i32 5, i64 %20, !dbg !323
  %call27 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx26) #4, !dbg !324
  br label %if.end28, !dbg !325

if.end28:                                         ; preds = %if.then12, %if.end
  ret void, !dbg !326
}

; Function Attrs: nounwind
declare !dbg !327 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !358 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #2

declare !dbg !362 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !367 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare !dbg !368 void @InitPartition(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @CostZonesHelper(i64 noundef %my_id, ptr noundef %b, i64 noundef %work, i32 noundef %dir) local_unnamed_addr #0 !dbg !369 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !374, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata ptr %b, metadata !375, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %work, metadata !376, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %dir, metadata !377, metadata !DIExpression()), !dbg !383
  %type = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 5, !dbg !384
  %0 = load i32, ptr %type, align 8, !dbg !384
  %cmp = icmp eq i32 %0, 0, !dbg !386
  br i1 %cmp, label %if.then, label %if.else, !dbg !387

if.then:                                          ; preds = %entry
  %Min_Work = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 16, !dbg !388
  %1 = load i64, ptr %Min_Work, align 8, !dbg !388
  %cmp1.not = icmp sgt i64 %1, %work, !dbg !391
  br i1 %cmp1.not, label %if.end38, label %if.then2, !dbg !392

if.then2:                                         ; preds = %if.then
  tail call void @InsertBoxInPartition(i64 noundef %my_id, ptr noundef nonnull %b) #4, !dbg !393
  br label %if.end38, !dbg !393

if.else:                                          ; preds = %entry
  %idxprom = zext i32 %dir to i64, !dbg !394
  %arrayidx3 = getelementptr inbounds [4 x [4 x i64]], ptr @Child_Sequence, i64 0, i64 %idxprom, !dbg !394
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !380, metadata !DIExpression()), !dbg !383
  %arrayidx5 = getelementptr inbounds [4 x [4 x i64]], ptr @Direction_Sequence, i64 0, i64 %idxprom, !dbg !396
  call void @llvm.dbg.value(metadata ptr %arrayidx5, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !383
  %Max_Work = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 17, !dbg !397
  call void @llvm.dbg.value(metadata i64 %work, metadata !376, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 0, metadata !379, metadata !DIExpression()), !dbg !383
  %Min_Work15 = getelementptr inbounds [1024 x %struct._Local_Memory], ptr @Local, i64 0, i64 %my_id, i32 16
  %cost = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 33
  br label %land.rhs, !dbg !400

land.rhs:                                         ; preds = %if.else, %for.inc
  %work.addr.068 = phi i64 [ %work, %if.else ], [ %work.addr.2, %for.inc ]
  %i.065 = phi i64 [ 0, %if.else ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %work.addr.068, metadata !376, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i64 %i.065, metadata !379, metadata !DIExpression()), !dbg !383
  %2 = load i64, ptr %Max_Work, align 8, !dbg !397
  %cmp9 = icmp slt i64 %work.addr.068, %2, !dbg !401
  br i1 %cmp9, label %for.body, label %if.end38, !dbg !402

for.body:                                         ; preds = %land.rhs
  %arrayidx10 = getelementptr inbounds i64, ptr %arrayidx3, i64 %i.065, !dbg !403
  %3 = load i64, ptr %arrayidx10, align 8, !dbg !403
  %arrayidx11 = getelementptr inbounds %struct._Box, ptr %b, i64 0, i32 11, i64 %3, !dbg !405
  %4 = load ptr, ptr %arrayidx11, align 8, !dbg !405
  call void @llvm.dbg.value(metadata ptr %4, metadata !378, metadata !DIExpression()), !dbg !383
  %cmp12.not = icmp eq ptr %4, null, !dbg !406
  br i1 %cmp12.not, label %if.end22, label %if.then13, !dbg !408

if.then13:                                        ; preds = %for.body
  %subtree_cost = getelementptr inbounds %struct._Box, ptr %4, i64 0, i32 38, !dbg !409
  %5 = load i64, ptr %subtree_cost, align 8, !dbg !409
  %add = add nsw i64 %5, %work.addr.068, !dbg !412
  %6 = load i64, ptr %Min_Work15, align 8, !dbg !413
  %cmp16.not = icmp slt i64 %add, %6, !dbg !414
  br i1 %cmp16.not, label %if.end22, label %if.then17, !dbg !415

if.then17:                                        ; preds = %if.then13
  %arrayidx18 = getelementptr inbounds i64, ptr %arrayidx5, i64 %i.065, !dbg !416
  %7 = load i64, ptr %arrayidx18, align 8, !dbg !416
  %conv = trunc i64 %7 to i32, !dbg !416
  tail call void @CostZonesHelper(i64 noundef %my_id, ptr noundef nonnull %4, i64 noundef %work.addr.068, i32 noundef %conv), !dbg !417
  %.pre = load i64, ptr %subtree_cost, align 8, !dbg !418
  %.pre70 = add nsw i64 %.pre, %work.addr.068, !dbg !419
  br label %if.end22, !dbg !417

if.end22:                                         ; preds = %if.then13, %if.then17, %for.body
  %work.addr.1 = phi i64 [ %work.addr.068, %for.body ], [ %.pre70, %if.then17 ], [ %add, %if.then13 ]
  call void @llvm.dbg.value(metadata i64 %work.addr.1, metadata !376, metadata !DIExpression()), !dbg !383
  %cmp23 = icmp eq i64 %i.065, 2, !dbg !420
  br i1 %cmp23, label %if.then25, label %for.inc, !dbg !422

if.then25:                                        ; preds = %if.end22
  %8 = load i64, ptr %Min_Work15, align 8, !dbg !423
  %cmp28.not = icmp slt i64 %work.addr.1, %8, !dbg !426
  br i1 %cmp28.not, label %if.end35, label %land.lhs.true, !dbg !427

land.lhs.true:                                    ; preds = %if.then25
  %9 = load i64, ptr %Max_Work, align 8, !dbg !428
  %cmp32 = icmp slt i64 %work.addr.1, %9, !dbg !429
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !430

if.then34:                                        ; preds = %land.lhs.true
  tail call void @InsertBoxInPartition(i64 noundef %my_id, ptr noundef nonnull %b) #4, !dbg !431
  br label %if.end35, !dbg !431

if.end35:                                         ; preds = %if.then34, %land.lhs.true, %if.then25
  %10 = load i64, ptr %cost, align 8, !dbg !432
  %add36 = add nsw i64 %10, %work.addr.1, !dbg !433
  call void @llvm.dbg.value(metadata i64 %add36, metadata !376, metadata !DIExpression()), !dbg !383
  br label %for.inc, !dbg !434

for.inc:                                          ; preds = %if.end22, %if.end35
  %work.addr.2 = phi i64 [ %add36, %if.end35 ], [ %work.addr.1, %if.end22 ], !dbg !435
  call void @llvm.dbg.value(metadata i64 %work.addr.2, metadata !376, metadata !DIExpression()), !dbg !383
  %inc = add nuw nsw i64 %i.065, 1, !dbg !436
  call void @llvm.dbg.value(metadata i64 %inc, metadata !379, metadata !DIExpression()), !dbg !383
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !437
  br i1 %exitcond.not, label %if.end38, label %land.rhs, !dbg !400, !llvm.loop !438

if.end38:                                         ; preds = %land.rhs, %for.inc, %if.then, %if.then2
  ret void, !dbg !440
}

declare !dbg !441 void @ComputeCostOfBox(ptr noundef) local_unnamed_addr #1

declare !dbg !444 void @InsertBoxInPartition(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Child_Sequence", scope: !2, file: !3, line: 29, type: !28, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !23, globals: !25, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "cost_zones.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "8971fb5749ba1db621d16eb710448190")
!4 = !{!5, !12, !17}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./partition_grid.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "ed4f6cbd081cce65da295411a6018617")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "TOP", value: 0)
!10 = !DIEnumerator(name: "BOTTOM", value: 1)
!11 = !DIEnumerator(name: "CHILDREN", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 42, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./box.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "6691501807284fe2fdbc3ead25fd1752")
!14 = !{!15, !16}
!15 = !DIEnumerator(name: "CHILDLESS", value: 0)
!16 = !DIEnumerator(name: "PARENT", value: 1)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 27, baseType: !7, size: 32, elements: !18)
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "RIGHT", value: 0)
!20 = !DIEnumerator(name: "LEFT", value: 1)
!21 = !DIEnumerator(name: "UP", value: 2)
!22 = !DIEnumerator(name: "DOWN", value: 3)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!0, !26}
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "Direction_Sequence", scope: !2, file: !3, line: 36, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1024, elements: !30)
!29 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!30 = !{!31, !31}
!31 = !DISubrange(count: 4)
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 2}
!38 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!39 = distinct !DISubprogram(name: "CostZones", scope: !3, file: !3, line: 49, type: !40, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !29}
!42 = !{!43}
!43 = !DILocalVariable(name: "my_id", arg: 1, scope: !39, file: !3, line: 49, type: !29)
!44 = !DILocation(line: 0, scope: !39)
!45 = !DILocation(line: 51, column: 4, scope: !39)
!46 = !DILocation(line: 53, column: 23, scope: !47)
!47 = distinct !DILexicalBlock(scope: !39, file: !3, line: 52, column: 4)
!48 = !DILocation(line: 53, column: 33, scope: !47)
!49 = !DILocation(line: 53, column: 1, scope: !47)
!50 = !DILocation(line: 54, column: 2, scope: !47)
!51 = !DILocation(line: 54, column: 19, scope: !47)
!52 = !DILocation(line: 54, column: 29, scope: !47)
!53 = !DILocation(line: 55, column: 5, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !3, line: 55, column: 5)
!55 = !DILocation(line: 55, column: 38, scope: !54)
!56 = !DILocation(line: 55, column: 34, scope: !54)
!57 = !DILocation(line: 55, column: 5, scope: !47)
!58 = !DILocation(line: 56, column: 31, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !3, line: 55, column: 61)
!60 = !DILocation(line: 57, column: 45, scope: !59)
!61 = !DILocation(line: 57, column: 2, scope: !59)
!62 = !DILocation(line: 58, column: 1, scope: !59)
!63 = !DILocation(line: 55, column: 16, scope: !54)
!64 = !DILocation(line: 59, column: 40, scope: !65)
!65 = distinct !DILexicalBlock(scope: !54, file: !3, line: 58, column: 8)
!66 = !DILocation(line: 59, column: 2, scope: !65)
!67 = !DILocation(line: 61, column: 25, scope: !47)
!68 = !DILocation(line: 61, column: 35, scope: !47)
!69 = !DILocation(line: 61, column: 1, scope: !47)
!70 = !DILocation(line: 63, column: 30, scope: !39)
!71 = !DILocation(line: 63, column: 36, scope: !39)
!72 = !DILocation(line: 63, column: 17, scope: !39)
!73 = !DILocation(line: 63, column: 28, scope: !39)
!74 = !DILocation(line: 64, column: 56, scope: !39)
!75 = !DILocation(line: 64, column: 54, scope: !39)
!76 = !DILocation(line: 65, column: 7, scope: !39)
!77 = !DILocation(line: 64, column: 17, scope: !39)
!78 = !DILocation(line: 64, column: 26, scope: !39)
!79 = !DILocation(line: 66, column: 39, scope: !80)
!80 = distinct !DILexicalBlock(scope: !39, file: !3, line: 66, column: 8)
!81 = !DILocation(line: 66, column: 14, scope: !80)
!82 = !DILocation(line: 66, column: 8, scope: !39)
!83 = !DILocation(line: 67, column: 20, scope: !80)
!84 = !DILocation(line: 67, column: 29, scope: !80)
!85 = !DILocation(line: 72, column: 4, scope: !39)
!86 = !DILocation(line: 73, column: 27, scope: !39)
!87 = !DILocation(line: 73, column: 4, scope: !39)
!88 = !DILocation(line: 75, column: 23, scope: !89)
!89 = distinct !DILexicalBlock(scope: !39, file: !3, line: 74, column: 4)
!90 = !DILocation(line: 75, column: 33, scope: !89)
!91 = !DILocation(line: 75, column: 1, scope: !89)
!92 = !DILocation(line: 76, column: 2, scope: !89)
!93 = !DILocation(line: 76, column: 19, scope: !89)
!94 = !DILocation(line: 76, column: 29, scope: !89)
!95 = !DILocation(line: 77, column: 5, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !3, line: 77, column: 5)
!97 = !DILocation(line: 77, column: 38, scope: !96)
!98 = !DILocation(line: 77, column: 34, scope: !96)
!99 = !DILocation(line: 77, column: 5, scope: !89)
!100 = !DILocation(line: 78, column: 31, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !3, line: 77, column: 61)
!102 = !DILocation(line: 79, column: 45, scope: !101)
!103 = !DILocation(line: 79, column: 2, scope: !101)
!104 = !DILocation(line: 80, column: 1, scope: !101)
!105 = !DILocation(line: 77, column: 16, scope: !96)
!106 = !DILocation(line: 81, column: 40, scope: !107)
!107 = distinct !DILexicalBlock(scope: !96, file: !3, line: 80, column: 8)
!108 = !DILocation(line: 81, column: 2, scope: !107)
!109 = !DILocation(line: 83, column: 25, scope: !89)
!110 = !DILocation(line: 83, column: 35, scope: !89)
!111 = !DILocation(line: 83, column: 1, scope: !89)
!112 = !DILocation(line: 85, column: 1, scope: !39)
!113 = !DISubprogram(name: "PartitionIterate", scope: !6, file: !6, line: 32, type: !114, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !29, !116, !260}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition_function", file: !6, line: 26, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !29, !120}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "box", file: !13, line: 37, baseType: !122)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Box", file: !13, line: 70, size: 26816, elements: !123)
!123 = !{!124, !126, !129, !130, !131, !132, !134, !162, !163, !164, !165, !168, !169, !170, !174, !175, !179, !180, !184, !185, !189, !190, !194, !195, !199, !200, !201, !202, !203, !204, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !122, file: !13, line: 72, baseType: !125, size: 64)
!125 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "x_center", scope: !122, file: !13, line: 73, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !128, line: 140, baseType: !125)
!128 = !DIFile(filename: "./defs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "8ebedd23a1904a3430b249c025f1869e")
!129 = !DIDerivedType(tag: DW_TAG_member, name: "y_center", scope: !122, file: !13, line: 74, baseType: !127, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !122, file: !13, line: 75, baseType: !127, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !122, file: !13, line: 76, baseType: !29, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !13, line: 77, baseType: !133, size: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "box_type", file: !13, line: 42, baseType: !12)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "particles", scope: !122, file: !13, line: 78, baseType: !135, size: 2624, offset: 384)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 2624, elements: !160)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "particle", file: !138, line: 24, baseType: !139)
!138 = !DIFile(filename: "./particle.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "4cd77da270cc740df8f78374a24bb947")
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Particle", file: !138, line: 38, size: 832, elements: !140)
!140 = !{!141, !142, !143, !144, !150, !151, !152, !158, !159}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !139, file: !138, line: 40, baseType: !29, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "charge", scope: !139, file: !138, line: 41, baseType: !127, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !139, file: !138, line: 42, baseType: !127, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !139, file: !138, line: 43, baseType: !145, size: 128, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector", file: !128, line: 148, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector", file: !128, line: 149, size: 128, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !146, file: !128, line: 150, baseType: !127, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !146, file: !128, line: 151, baseType: !127, size: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !139, file: !138, line: 44, baseType: !145, size: 128, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "vel", scope: !139, file: !138, line: 45, baseType: !145, size: 128, offset: 448)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !139, file: !138, line: 46, baseType: !153, size: 128, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !128, line: 142, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__Complex", file: !128, line: 143, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !154, file: !128, line: 144, baseType: !127, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !154, file: !128, line: 145, baseType: !127, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !139, file: !138, line: 47, baseType: !29, size: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "box", scope: !139, file: !138, line: 48, baseType: !127, size: 64, offset: 768)
!160 = !{!161}
!161 = !DISubrange(count: 41)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "num_particles", scope: !122, file: !13, line: 79, baseType: !29, size: 64, offset: 3008)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !122, file: !13, line: 80, baseType: !120, size: 64, offset: 3072)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !122, file: !13, line: 81, baseType: !29, size: 64, offset: 3136)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !122, file: !13, line: 82, baseType: !166, size: 256, offset: 3200)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 256, elements: !167)
!167 = !{!31}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !122, file: !13, line: 83, baseType: !166, size: 256, offset: 3456)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_children", scope: !122, file: !13, line: 84, baseType: !29, size: 64, offset: 3712)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "siblings", scope: !122, file: !13, line: 85, baseType: !171, size: 192, offset: 3776)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 3)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "num_siblings", scope: !122, file: !13, line: 86, baseType: !29, size: 64, offset: 3968)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "colleagues", scope: !122, file: !13, line: 87, baseType: !176, size: 512, offset: 4032)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 512, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "num_colleagues", scope: !122, file: !13, line: 88, baseType: !29, size: 64, offset: 4544)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "u_list", scope: !122, file: !13, line: 89, baseType: !181, size: 1280, offset: 4608)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1280, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 20)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "num_u_list", scope: !122, file: !13, line: 90, baseType: !29, size: 64, offset: 5888)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "v_list", scope: !122, file: !13, line: 91, baseType: !186, size: 1728, offset: 5952)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1728, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 27)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_list", scope: !122, file: !13, line: 92, baseType: !29, size: 64, offset: 7680)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "w_list", scope: !122, file: !13, line: 93, baseType: !191, size: 1920, offset: 7744)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 1920, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 30)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "num_w_list", scope: !122, file: !13, line: 94, baseType: !29, size: 64, offset: 9664)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mp_expansion", scope: !122, file: !13, line: 95, baseType: !196, size: 5120, offset: 9728)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 5120, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 40)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "local_expansion", scope: !122, file: !13, line: 96, baseType: !196, size: 5120, offset: 14848)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "x_expansion", scope: !122, file: !13, line: 97, baseType: !196, size: 5120, offset: 19968)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "exp_lock_index", scope: !122, file: !13, line: 98, baseType: !29, size: 64, offset: 25088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "particle_lock_index", scope: !122, file: !13, line: 99, baseType: !29, size: 64, offset: 25152)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "construct_synch", scope: !122, file: !13, line: 100, baseType: !29, size: 64, offset: 25216)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "construct_synch_cv", scope: !122, file: !13, line: 101, baseType: !205, size: 384, offset: 25280)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !206, line: 80, baseType: !207)
!206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!207 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !206, line: 75, size: 384, elements: !208)
!208 = !{!209, !240, !245}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !207, file: !206, line: 77, baseType: !210, size: 384)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !211, line: 92, size: 384, elements: !212)
!211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!212 = !{!213, !223, !232, !236, !237, !238, !239}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !211, line: 94, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 94, size: 64, elements: !215)
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !214, file: !211, line: 96, baseType: !217, size: 64)
!217 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !214, file: !211, line: 101, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !214, file: !211, line: 97, size: 64, elements: !220)
!220 = !{!221, !222}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !219, file: !211, line: 99, baseType: !7, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !219, file: !211, line: 100, baseType: !7, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !210, file: !211, line: 103, baseType: !224, size: 64, offset: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !210, file: !211, line: 103, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !224, file: !211, line: 105, baseType: !217, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !224, file: !211, line: 110, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !211, line: 106, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !228, file: !211, line: 108, baseType: !7, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !228, file: !211, line: 109, baseType: !7, size: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !210, file: !211, line: 112, baseType: !233, size: 64, offset: 128)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 2)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !210, file: !211, line: 113, baseType: !233, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !210, file: !211, line: 114, baseType: !7, size: 32, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !210, file: !211, line: 115, baseType: !7, size: 32, offset: 288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !210, file: !211, line: 116, baseType: !233, size: 64, offset: 320)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !207, file: !206, line: 78, baseType: !241, size: 384)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 384, elements: !243)
!242 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!243 = !{!244}
!244 = !DISubrange(count: 48)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !207, file: !206, line: 79, baseType: !246, size: 64)
!246 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "interaction_synch", scope: !122, file: !13, line: 102, baseType: !29, size: 64, offset: 25664)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "interaction_synch_cv", scope: !122, file: !13, line: 103, baseType: !205, size: 384, offset: 25728)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !122, file: !13, line: 104, baseType: !29, size: 64, offset: 26112)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !122, file: !13, line: 105, baseType: !29, size: 64, offset: 26176)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "u_cost", scope: !122, file: !13, line: 106, baseType: !29, size: 64, offset: 26240)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "v_cost", scope: !122, file: !13, line: 107, baseType: !29, size: 64, offset: 26304)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "w_cost", scope: !122, file: !13, line: 108, baseType: !29, size: 64, offset: 26368)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "p_cost", scope: !122, file: !13, line: 109, baseType: !29, size: 64, offset: 26432)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_cost", scope: !122, file: !13, line: 110, baseType: !29, size: 64, offset: 26496)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !13, line: 111, baseType: !120, size: 64, offset: 26560)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !13, line: 112, baseType: !120, size: 64, offset: 26624)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "link1", scope: !122, file: !13, line: 113, baseType: !120, size: 64, offset: 26688)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "link2", scope: !122, file: !13, line: 114, baseType: !120, size: 64, offset: 26752)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition_start", file: !6, line: 28, baseType: !5)
!261 = !{}
!262 = distinct !DISubprogram(name: "ComputeSubTreeCosts", scope: !3, file: !3, line: 89, type: !118, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!263 = !{!264, !265, !266}
!264 = !DILocalVariable(name: "my_id", arg: 1, scope: !262, file: !3, line: 89, type: !29)
!265 = !DILocalVariable(name: "b", arg: 2, scope: !262, file: !3, line: 89, type: !120)
!266 = !DILocalVariable(name: "pb", scope: !262, file: !3, line: 91, type: !120)
!267 = !DILocation(line: 0, scope: !262)
!268 = !DILocation(line: 93, column: 27, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !3, line: 93, column: 4)
!270 = !DILocation(line: 93, column: 53, scope: !269)
!271 = !DILocation(line: 93, column: 26, scope: !269)
!272 = !DILocation(line: 93, column: 5, scope: !269)
!273 = !DILocation(line: 94, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !262, file: !3, line: 94, column: 8)
!275 = !DILocation(line: 94, column: 16, scope: !274)
!276 = !DILocation(line: 94, column: 8, scope: !262)
!277 = !DILocation(line: 95, column: 14, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 94, column: 27)
!279 = !DILocation(line: 95, column: 38, scope: !278)
!280 = !DILocation(line: 95, column: 32, scope: !278)
!281 = !DILocation(line: 95, column: 5, scope: !278)
!282 = !DILocation(line: 96, column: 58, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 96, column: 6)
!284 = !DILocation(line: 96, column: 83, scope: !283)
!285 = !DILocation(line: 96, column: 57, scope: !283)
!286 = !DILocation(line: 96, column: 8, scope: !283)
!287 = distinct !{!287, !281, !288, !289, !290}
!288 = !DILocation(line: 96, column: 103, scope: !278)
!289 = !{!"llvm.loop.mustprogress"}
!290 = !{!"llvm.loop.unroll.disable"}
!291 = !DILocation(line: 98, column: 7, scope: !262)
!292 = !DILocation(line: 98, column: 25, scope: !262)
!293 = !DILocation(line: 99, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !262, file: !3, line: 99, column: 4)
!295 = !DILocation(line: 99, column: 55, scope: !294)
!296 = !DILocation(line: 99, column: 28, scope: !294)
!297 = !DILocation(line: 99, column: 5, scope: !294)
!298 = !DILocation(line: 100, column: 4, scope: !262)
!299 = !DILocation(line: 101, column: 26, scope: !262)
!300 = !DILocation(line: 101, column: 7, scope: !262)
!301 = !DILocation(line: 101, column: 20, scope: !262)
!302 = !DILocation(line: 102, column: 12, scope: !262)
!303 = !DILocation(line: 103, column: 11, scope: !304)
!304 = distinct !DILexicalBlock(scope: !262, file: !3, line: 103, column: 8)
!305 = !DILocation(line: 103, column: 8, scope: !262)
!306 = !DILocation(line: 104, column: 30, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 104, column: 7)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 103, column: 20)
!309 = !DILocation(line: 104, column: 57, scope: !307)
!310 = !DILocation(line: 104, column: 29, scope: !307)
!311 = !DILocation(line: 104, column: 8, scope: !307)
!312 = !DILocation(line: 105, column: 30, scope: !308)
!313 = !DILocation(line: 105, column: 11, scope: !308)
!314 = !DILocation(line: 105, column: 24, scope: !308)
!315 = !DILocation(line: 106, column: 11, scope: !308)
!316 = !DILocation(line: 106, column: 29, scope: !308)
!317 = !DILocation(line: 107, column: 38, scope: !318)
!318 = distinct !DILexicalBlock(scope: !308, file: !3, line: 107, column: 7)
!319 = !DILocation(line: 107, column: 9, scope: !318)
!320 = !DILocation(line: 108, column: 32, scope: !321)
!321 = distinct !DILexicalBlock(scope: !308, file: !3, line: 108, column: 7)
!322 = !DILocation(line: 108, column: 59, scope: !321)
!323 = !DILocation(line: 108, column: 31, scope: !321)
!324 = !DILocation(line: 108, column: 8, scope: !321)
!325 = !DILocation(line: 109, column: 4, scope: !308)
!326 = !DILocation(line: 110, column: 1, scope: !262)
!327 = !DISubprogram(name: "pthread_mutex_lock", scope: !328, file: !328, line: 738, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!328 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !332}
!331 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !206, line: 72, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !206, line: 67, size: 320, elements: !335)
!335 = !{!336, !355, !357}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !334, file: !206, line: 69, baseType: !337, size: 320)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !338, line: 22, size: 320, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!339 = !{!340, !341, !342, !343, !344, !345, !347, !348}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !337, file: !338, line: 24, baseType: !331, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !337, file: !338, line: 25, baseType: !7, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !337, file: !338, line: 26, baseType: !331, size: 32, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !337, file: !338, line: 28, baseType: !7, size: 32, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !337, file: !338, line: 32, baseType: !331, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !337, file: !338, line: 34, baseType: !346, size: 16, offset: 160)
!346 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !337, file: !338, line: 35, baseType: !346, size: 16, offset: 176)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !337, file: !338, line: 36, baseType: !349, size: 128, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !211, line: 53, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !211, line: 49, size: 128, elements: !351)
!351 = !{!352, !354}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !350, file: !211, line: 51, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !350, file: !211, line: 52, baseType: !353, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !334, file: !206, line: 70, baseType: !356, size: 320)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 320, elements: !197)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !334, file: !206, line: 71, baseType: !29, size: 64)
!358 = !DISubprogram(name: "pthread_cond_broadcast", scope: !328, file: !328, line: 978, type: !359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!359 = !DISubroutineType(types: !360)
!360 = !{!331, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!362 = !DISubprogram(name: "pthread_cond_wait", scope: !328, file: !328, line: 986, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!363 = !DISubroutineType(types: !364)
!364 = !{!331, !365, !366}
!365 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !361)
!366 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !332)
!367 = !DISubprogram(name: "pthread_mutex_unlock", scope: !328, file: !328, line: 756, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!368 = !DISubprogram(name: "InitPartition", scope: !6, file: !6, line: 31, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!369 = distinct !DISubprogram(name: "CostZonesHelper", scope: !3, file: !3, line: 114, type: !370, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !29, !120, !29, !372}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "direction", file: !3, line: 27, baseType: !17)
!373 = !{!374, !375, !376, !377, !378, !379, !380, !382}
!374 = !DILocalVariable(name: "my_id", arg: 1, scope: !369, file: !3, line: 114, type: !29)
!375 = !DILocalVariable(name: "b", arg: 2, scope: !369, file: !3, line: 114, type: !120)
!376 = !DILocalVariable(name: "work", arg: 3, scope: !369, file: !3, line: 114, type: !29)
!377 = !DILocalVariable(name: "dir", arg: 4, scope: !369, file: !3, line: 114, type: !372)
!378 = !DILocalVariable(name: "cb", scope: !369, file: !3, line: 116, type: !120)
!379 = !DILocalVariable(name: "i", scope: !369, file: !3, line: 117, type: !29)
!380 = !DILocalVariable(name: "next_child", scope: !369, file: !3, line: 118, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!382 = !DILocalVariable(name: "child_dir", scope: !369, file: !3, line: 119, type: !381)
!383 = !DILocation(line: 0, scope: !369)
!384 = !DILocation(line: 121, column: 11, scope: !385)
!385 = distinct !DILexicalBlock(scope: !369, file: !3, line: 121, column: 8)
!386 = !DILocation(line: 121, column: 16, scope: !385)
!387 = !DILocation(line: 121, column: 8, scope: !369)
!388 = !DILocation(line: 122, column: 32, scope: !389)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 122, column: 11)
!390 = distinct !DILexicalBlock(scope: !385, file: !3, line: 121, column: 30)
!391 = !DILocation(line: 122, column: 16, scope: !389)
!392 = !DILocation(line: 122, column: 11, scope: !390)
!393 = !DILocation(line: 123, column: 3, scope: !389)
!394 = !DILocation(line: 126, column: 20, scope: !395)
!395 = distinct !DILexicalBlock(scope: !385, file: !3, line: 125, column: 9)
!396 = !DILocation(line: 127, column: 19, scope: !395)
!397 = !DILocation(line: 128, column: 63, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 128, column: 7)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 128, column: 7)
!400 = !DILocation(line: 128, column: 39, scope: !398)
!401 = !DILocation(line: 128, column: 48, scope: !398)
!402 = !DILocation(line: 128, column: 7, scope: !399)
!403 = !DILocation(line: 130, column: 20, scope: !404)
!404 = distinct !DILexicalBlock(scope: !398, file: !3, line: 129, column: 10)
!405 = !DILocation(line: 130, column: 8, scope: !404)
!406 = !DILocation(line: 131, column: 10, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 131, column: 7)
!408 = !DILocation(line: 131, column: 7, scope: !404)
!409 = !DILocation(line: 132, column: 22, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 132, column: 10)
!411 = distinct !DILexicalBlock(scope: !407, file: !3, line: 131, column: 19)
!412 = !DILocation(line: 132, column: 16, scope: !410)
!413 = !DILocation(line: 132, column: 52, scope: !410)
!414 = !DILocation(line: 132, column: 36, scope: !410)
!415 = !DILocation(line: 132, column: 10, scope: !411)
!416 = !DILocation(line: 133, column: 42, scope: !410)
!417 = !DILocation(line: 133, column: 9, scope: !410)
!418 = !DILocation(line: 134, column: 18, scope: !411)
!419 = !DILocation(line: 134, column: 11, scope: !411)
!420 = !DILocation(line: 136, column: 9, scope: !421)
!421 = distinct !DILexicalBlock(scope: !404, file: !3, line: 136, column: 7)
!422 = !DILocation(line: 136, column: 7, scope: !404)
!423 = !DILocation(line: 137, column: 32, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !3, line: 137, column: 10)
!425 = distinct !DILexicalBlock(scope: !421, file: !3, line: 136, column: 15)
!426 = !DILocation(line: 137, column: 16, scope: !424)
!427 = !DILocation(line: 138, column: 3, scope: !424)
!428 = !DILocation(line: 138, column: 27, scope: !424)
!429 = !DILocation(line: 138, column: 12, scope: !424)
!430 = !DILocation(line: 137, column: 10, scope: !425)
!431 = !DILocation(line: 139, column: 9, scope: !424)
!432 = !DILocation(line: 140, column: 17, scope: !425)
!433 = !DILocation(line: 140, column: 11, scope: !425)
!434 = !DILocation(line: 141, column: 3, scope: !425)
!435 = !DILocation(line: 0, scope: !404)
!436 = !DILocation(line: 129, column: 6, scope: !398)
!437 = !DILocation(line: 128, column: 22, scope: !398)
!438 = distinct !{!438, !402, !439, !289, !290}
!439 = !DILocation(line: 142, column: 7, scope: !399)
!440 = !DILocation(line: 145, column: 1, scope: !369)
!441 = !DISubprogram(name: "ComputeCostOfBox", scope: !6, file: !6, line: 36, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !120}
!444 = !DISubprogram(name: "InsertBoxInPartition", scope: !6, file: !6, line: 34, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !261)
