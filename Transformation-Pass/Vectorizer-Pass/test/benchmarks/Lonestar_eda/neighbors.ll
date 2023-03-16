; ModuleID = 'neighbors.c'
source_filename = "neighbors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i64, i64 }

@max_arrays_size = dso_local local_unnamed_addr global i64 0, align 8
@nn = dso_local local_unnamed_addr global ptr null, align 8
@sheared = dso_local local_unnamed_addr global ptr null, align 8
@sorted = dso_local local_unnamed_addr global ptr null, align 8
@aux = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Cannot allocate memory in allocate_nn_arrays!\00", align 1
@_pt = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"nn1[i][oct] == -1\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"neighbors.c\00", align 1
@__PRETTY_FUNCTION__.check_nn = private unnamed_addr constant [41 x i8] c"void check_nn(long, Point *, nn_array *)\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"nn1[i][oct] != -1\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"WRONG OCTANT!\0Aoct=%ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"i=%ld, x=%ld, y=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"nn=%ld, x=%ld, y=%ld, dist = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"octant(pt[i], pt[ nn1[i][oct] ]) == oct\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"NNs DON'T MATCH!\0Aoct=%ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"nn1=%ld, x=%ld, y=%ld, dist = %ld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @allocate_nn_arrays(i64 noundef %n) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @max_arrays_size, align 8, !tbaa !5
  %cmp = icmp slt i64 %0, %n
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @nn, align 8, !tbaa !9
  %mul = shl i64 %n, 6
  %call = tail call ptr @realloc(ptr noundef %1, i64 noundef %mul) #13
  store ptr %call, ptr @nn, align 8, !tbaa !9
  %2 = load ptr, ptr @sheared, align 8, !tbaa !9
  %mul1 = shl i64 %n, 4
  %call2 = tail call ptr @realloc(ptr noundef %2, i64 noundef %mul1) #13
  store ptr %call2, ptr @sheared, align 8, !tbaa !9
  %3 = load ptr, ptr @sorted, align 8, !tbaa !9
  %mul3 = shl i64 %n, 3
  %call4 = tail call ptr @realloc(ptr noundef %3, i64 noundef %mul3) #13
  store ptr %call4, ptr @sorted, align 8, !tbaa !9
  %4 = load ptr, ptr @aux, align 8, !tbaa !9
  %call6 = tail call ptr @realloc(ptr noundef %4, i64 noundef %mul3) #13
  store ptr %call6, ptr @aux, align 8, !tbaa !9
  %5 = load ptr, ptr @nn, align 8, !tbaa !9
  %tobool = icmp ne ptr %5, null
  %6 = load ptr, ptr @sheared, align 8
  %tobool7 = icmp ne ptr %6, null
  %or.cond = select i1 %tobool, i1 %tobool7, i1 false
  %7 = load ptr, ptr @sorted, align 8
  %tobool9 = icmp ne ptr %7, null
  %or.cond14 = select i1 %or.cond, i1 %tobool9, i1 false
  %tobool11 = icmp ne ptr %call6, null
  %or.cond15 = and i1 %tobool11, %or.cond14
  br i1 %or.cond15, label %if.end, label %if.then12

if.then12:                                        ; preds = %if.then
  tail call void @err_exit(ptr noundef nonnull @.str) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then12
  store i64 %n, ptr @max_arrays_size, align 8, !tbaa !5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

declare void @err_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @deallocate_nn_arrays() local_unnamed_addr #3 {
entry:
  store i64 0, ptr @max_arrays_size, align 8, !tbaa !5
  %0 = load ptr, ptr @nn, align 8, !tbaa !9
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #14
  store ptr null, ptr @nn, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @sheared, align 8, !tbaa !9
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  tail call void @free(ptr noundef nonnull %1) #14
  store ptr null, ptr @sheared, align 8, !tbaa !9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load ptr, ptr @sorted, align 8, !tbaa !9
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  tail call void @free(ptr noundef nonnull %2) #14
  store ptr null, ptr @sorted, align 8, !tbaa !9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load ptr, ptr @aux, align 8, !tbaa !9
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end6
  tail call void @free(ptr noundef nonnull %3) #14
  store ptr null, ptr @aux, align 8, !tbaa !9
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @ne_sw_combine(i64 noundef %left, i64 noundef %mid, i64 noundef %right, ptr noundef %pt, ptr noundef %sorted, ptr nocapture noundef %aux, i64 noundef %oct, ptr nocapture noundef %nn) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr inbounds i64, ptr %sorted, i64 %mid
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !5
  %y = getelementptr inbounds %struct.point, ptr %pt, i64 %0, i32 1
  %1 = load i64, ptr %y, align 8, !tbaa !11
  %cmp475 = icmp slt i64 %left, %mid
  br i1 %cmp475, label %land.rhs, label %if.end91

land.rhs:                                         ; preds = %entry, %while.body
  %i1.0476 = phi i64 [ %inc, %while.body ], [ %left, %entry ]
  %arrayidx2 = getelementptr inbounds i64, ptr %sorted, i64 %i1.0476
  %2 = load i64, ptr %arrayidx2, align 8, !tbaa !5
  %y4 = getelementptr inbounds %struct.point, ptr %pt, i64 %2, i32 1
  %3 = load i64, ptr %y4, align 8, !tbaa !11
  %cmp5.not = icmp slt i64 %3, %1
  br i1 %cmp5.not, label %if.then, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add i64 %i1.0476, 1
  %exitcond.not = icmp eq i64 %inc, %mid
  br i1 %exitcond.not, label %if.end91, label %land.rhs, !llvm.loop !13

if.then:                                          ; preds = %land.rhs
  %add.ptr = getelementptr inbounds %struct.point, ptr %pt, i64 %2
  %add.ptr9 = getelementptr inbounds %struct.point, ptr %pt, i64 %0
  %call = tail call i64 @dist2(ptr noundef %add.ptr, ptr noundef %add.ptr9) #14
  %inc10 = add nsw i64 %mid, 1
  %cmp12477 = icmp slt i64 %i1.0476, %mid
  %cmp14478 = icmp slt i64 %inc10, %right
  %or.cond479 = select i1 %cmp12477, i1 %cmp14478, i1 false
  br i1 %or.cond479, label %while.body16, label %while.cond62.preheader

while.cond62.preheader:                           ; preds = %if.end60, %if.then
  %i1.1.lcssa = phi i64 [ %i1.0476, %if.then ], [ %i1.2, %if.end60 ]
  %best_i2.0.lcssa = phi i64 [ %mid, %if.then ], [ %best_i2.2, %if.end60 ]
  %cmp63487 = icmp slt i64 %i1.1.lcssa, %mid
  br i1 %cmp63487, label %while.body64.lr.ph, label %if.end91

while.body64.lr.ph:                               ; preds = %while.cond62.preheader
  %arrayidx72 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.0.lcssa
  br label %while.body64

while.body16:                                     ; preds = %if.then, %if.end60
  %best_dist.0483 = phi i64 [ %best_dist.2, %if.end60 ], [ %call, %if.then ]
  %best_i2.0482 = phi i64 [ %best_i2.2, %if.end60 ], [ %mid, %if.then ]
  %i2.0481 = phi i64 [ %i2.1, %if.end60 ], [ %inc10, %if.then ]
  %i1.1480 = phi i64 [ %i1.2, %if.end60 ], [ %i1.0476, %if.then ]
  %arrayidx17 = getelementptr inbounds i64, ptr %sorted, i64 %i1.1480
  %4 = load i64, ptr %arrayidx17, align 8, !tbaa !5
  %arrayidx18 = getelementptr inbounds %struct.point, ptr %pt, i64 %4
  %y19 = getelementptr inbounds %struct.point, ptr %pt, i64 %4, i32 1
  %5 = load i64, ptr %y19, align 8, !tbaa !11
  %arrayidx20 = getelementptr inbounds i64, ptr %sorted, i64 %i2.0481
  %6 = load i64, ptr %arrayidx20, align 8, !tbaa !5
  %y22 = getelementptr inbounds %struct.point, ptr %pt, i64 %6, i32 1
  %7 = load i64, ptr %y22, align 8, !tbaa !11
  %cmp23 = icmp slt i64 %5, %7
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %while.body16
  %arrayidx21 = getelementptr inbounds %struct.point, ptr %pt, i64 %6
  %call29 = tail call i64 @dist2(ptr noundef nonnull %arrayidx18, ptr noundef %arrayidx21) #14
  %cmp30 = icmp slt i64 %call29, %best_dist.0483
  %spec.select = select i1 %cmp30, i64 %i2.0481, i64 %best_i2.0482
  %8 = tail call i64 @llvm.smin.i64(i64 %call29, i64 %best_dist.0483)
  %inc32 = add nsw i64 %i2.0481, 1
  br label %if.end60

if.else:                                          ; preds = %while.body16
  %arrayidx35 = getelementptr inbounds [8 x i64], ptr %nn, i64 %4, i64 %oct
  %9 = load i64, ptr %arrayidx35, align 8, !tbaa !5
  %cmp36 = icmp eq i64 %9, -1
  br i1 %cmp36, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %add.ptr42 = getelementptr inbounds %struct.point, ptr %pt, i64 %9
  %call43 = tail call i64 @dist2(ptr noundef nonnull %arrayidx18, ptr noundef %add.ptr42) #14
  %cmp44 = icmp slt i64 %best_dist.0483, %call43
  br i1 %cmp44, label %lor.lhs.false.if.then45_crit_edge, label %if.end50

lor.lhs.false.if.then45_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load i64, ptr %arrayidx17, align 8, !tbaa !5
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.if.then45_crit_edge, %if.else
  %10 = phi i64 [ %.pre, %lor.lhs.false.if.then45_crit_edge ], [ %4, %if.else ]
  %arrayidx46 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.0482
  %11 = load i64, ptr %arrayidx46, align 8, !tbaa !5
  %arrayidx49 = getelementptr inbounds [8 x i64], ptr %nn, i64 %10, i64 %oct
  store i64 %11, ptr %arrayidx49, align 8, !tbaa !5
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %lor.lhs.false
  %inc51 = add nsw i64 %i1.1480, 1
  %cmp52 = icmp slt i64 %inc51, %mid
  br i1 %cmp52, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end50
  %arrayidx54 = getelementptr inbounds i64, ptr %sorted, i64 %inc51
  %12 = load i64, ptr %arrayidx54, align 8, !tbaa !5
  %add.ptr55 = getelementptr inbounds %struct.point, ptr %pt, i64 %12
  %arrayidx56 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.0482
  %13 = load i64, ptr %arrayidx56, align 8, !tbaa !5
  %add.ptr57 = getelementptr inbounds %struct.point, ptr %pt, i64 %13
  %call58 = tail call i64 @dist2(ptr noundef %add.ptr55, ptr noundef %add.ptr57) #14
  br label %if.end60

if.end60:                                         ; preds = %if.end50, %if.then53, %if.then24
  %i1.2 = phi i64 [ %i1.1480, %if.then24 ], [ %inc51, %if.then53 ], [ %inc51, %if.end50 ]
  %i2.1 = phi i64 [ %inc32, %if.then24 ], [ %i2.0481, %if.then53 ], [ %i2.0481, %if.end50 ]
  %best_i2.2 = phi i64 [ %spec.select, %if.then24 ], [ %best_i2.0482, %if.then53 ], [ %best_i2.0482, %if.end50 ]
  %best_dist.2 = phi i64 [ %8, %if.then24 ], [ %call58, %if.then53 ], [ %best_dist.0483, %if.end50 ]
  %cmp12 = icmp slt i64 %i1.2, %mid
  %cmp14 = icmp slt i64 %i2.1, %right
  %or.cond = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond, label %while.body16, label %while.cond62.preheader, !llvm.loop !15

while.body64:                                     ; preds = %while.body64.lr.ph, %if.end88
  %i1.3488 = phi i64 [ %i1.1.lcssa, %while.body64.lr.ph ], [ %inc89, %if.end88 ]
  %arrayidx65 = getelementptr inbounds i64, ptr %sorted, i64 %i1.3488
  %14 = load i64, ptr %arrayidx65, align 8, !tbaa !5
  %arrayidx67 = getelementptr inbounds [8 x i64], ptr %nn, i64 %14, i64 %oct
  %15 = load i64, ptr %arrayidx67, align 8, !tbaa !5
  %cmp68 = icmp eq i64 %15, -1
  br i1 %cmp68, label %if.then83, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %while.body64
  %add.ptr71 = getelementptr inbounds %struct.point, ptr %pt, i64 %14
  %16 = load i64, ptr %arrayidx72, align 8, !tbaa !5
  %add.ptr73 = getelementptr inbounds %struct.point, ptr %pt, i64 %16
  %call74 = tail call i64 @dist2(ptr noundef %add.ptr71, ptr noundef %add.ptr73) #14
  %17 = load i64, ptr %arrayidx65, align 8, !tbaa !5
  %add.ptr76 = getelementptr inbounds %struct.point, ptr %pt, i64 %17
  %arrayidx79 = getelementptr inbounds [8 x i64], ptr %nn, i64 %17, i64 %oct
  %18 = load i64, ptr %arrayidx79, align 8, !tbaa !5
  %add.ptr80 = getelementptr inbounds %struct.point, ptr %pt, i64 %18
  %call81 = tail call i64 @dist2(ptr noundef %add.ptr76, ptr noundef %add.ptr80) #14
  %cmp82 = icmp slt i64 %call74, %call81
  br i1 %cmp82, label %lor.lhs.false69.if.then83_crit_edge, label %if.end88

lor.lhs.false69.if.then83_crit_edge:              ; preds = %lor.lhs.false69
  %.pre533 = load i64, ptr %arrayidx65, align 8, !tbaa !5
  br label %if.then83

if.then83:                                        ; preds = %lor.lhs.false69.if.then83_crit_edge, %while.body64
  %19 = phi i64 [ %.pre533, %lor.lhs.false69.if.then83_crit_edge ], [ %14, %while.body64 ]
  %20 = load i64, ptr %arrayidx72, align 8, !tbaa !5
  %arrayidx87 = getelementptr inbounds [8 x i64], ptr %nn, i64 %19, i64 %oct
  store i64 %20, ptr %arrayidx87, align 8, !tbaa !5
  br label %if.end88

if.end88:                                         ; preds = %if.then83, %lor.lhs.false69
  %inc89 = add i64 %i1.3488, 1
  %exitcond526.not = icmp eq i64 %inc89, %mid
  br i1 %exitcond526.not, label %if.end91, label %while.body64, !llvm.loop !16

if.end91:                                         ; preds = %while.body, %if.end88, %entry, %while.cond62.preheader
  %add = add nsw i64 %oct, 4
  %rem = srem i64 %add, 8
  %sub92 = add nsw i64 %mid, -1
  %arrayidx93 = getelementptr inbounds i64, ptr %sorted, i64 %sub92
  %21 = load i64, ptr %arrayidx93, align 8, !tbaa !5
  %y95 = getelementptr inbounds %struct.point, ptr %pt, i64 %21, i32 1
  %22 = load i64, ptr %y95, align 8, !tbaa !11
  br label %while.cond96

while.cond96:                                     ; preds = %land.rhs98, %if.end91
  %i1.4.in = phi i64 [ %right, %if.end91 ], [ %i1.4, %land.rhs98 ]
  %cmp97.not.not = icmp sgt i64 %i1.4.in, %mid
  br i1 %cmp97.not.not, label %land.rhs98, label %if.end197

land.rhs98:                                       ; preds = %while.cond96
  %i1.4 = add nsw i64 %i1.4.in, -1
  %arrayidx99 = getelementptr inbounds i64, ptr %sorted, i64 %i1.4
  %23 = load i64, ptr %arrayidx99, align 8, !tbaa !5
  %y101 = getelementptr inbounds %struct.point, ptr %pt, i64 %23, i32 1
  %24 = load i64, ptr %y101, align 8, !tbaa !11
  %cmp102.not = icmp sgt i64 %24, %22
  br i1 %cmp102.not, label %if.then107, label %while.cond96, !llvm.loop !17

if.then107:                                       ; preds = %land.rhs98
  %add.ptr109 = getelementptr inbounds %struct.point, ptr %pt, i64 %23
  %add.ptr111 = getelementptr inbounds %struct.point, ptr %pt, i64 %21
  %call112 = tail call i64 @dist2(ptr noundef %add.ptr109, ptr noundef %add.ptr111) #14
  %dec113 = add nsw i64 %mid, -2
  %cmp117.not490 = icmp slt i64 %dec113, %left
  br i1 %cmp117.not490, label %while.cond168.preheader, label %while.body119

while.cond168.preheader:                          ; preds = %if.end166, %if.then107
  %i1.5.lcssa = phi i64 [ %i1.4, %if.then107 ], [ %i1.6, %if.end166 ]
  %best_i2.3.lcssa = phi i64 [ %sub92, %if.then107 ], [ %best_i2.5, %if.end166 ]
  %cmp169.not500 = icmp slt i64 %i1.5.lcssa, %mid
  br i1 %cmp169.not500, label %if.end197, label %while.body170.lr.ph

while.body170.lr.ph:                              ; preds = %while.cond168.preheader
  %arrayidx178 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.3.lcssa
  br label %while.body170

while.body119:                                    ; preds = %if.then107, %if.end166
  %best_dist.3495 = phi i64 [ %best_dist.5, %if.end166 ], [ %call112, %if.then107 ]
  %best_i2.3494 = phi i64 [ %best_i2.5, %if.end166 ], [ %sub92, %if.then107 ]
  %i2.2493 = phi i64 [ %i2.3, %if.end166 ], [ %dec113, %if.then107 ]
  %i1.5492 = phi i64 [ %i1.6, %if.end166 ], [ %i1.4, %if.then107 ]
  %arrayidx120 = getelementptr inbounds i64, ptr %sorted, i64 %i1.5492
  %25 = load i64, ptr %arrayidx120, align 8, !tbaa !5
  %arrayidx121 = getelementptr inbounds %struct.point, ptr %pt, i64 %25
  %y122 = getelementptr inbounds %struct.point, ptr %pt, i64 %25, i32 1
  %26 = load i64, ptr %y122, align 8, !tbaa !11
  %arrayidx123 = getelementptr inbounds i64, ptr %sorted, i64 %i2.2493
  %27 = load i64, ptr %arrayidx123, align 8, !tbaa !5
  %y125 = getelementptr inbounds %struct.point, ptr %pt, i64 %27, i32 1
  %28 = load i64, ptr %y125, align 8, !tbaa !11
  %cmp126 = icmp sgt i64 %26, %28
  br i1 %cmp126, label %if.then127, label %if.else137

if.then127:                                       ; preds = %while.body119
  %arrayidx124 = getelementptr inbounds %struct.point, ptr %pt, i64 %27
  %call132 = tail call i64 @dist2(ptr noundef nonnull %arrayidx121, ptr noundef %arrayidx124) #14
  %cmp133 = icmp slt i64 %call132, %best_dist.3495
  %spec.select467 = select i1 %cmp133, i64 %i2.2493, i64 %best_i2.3494
  %29 = tail call i64 @llvm.smin.i64(i64 %call132, i64 %best_dist.3495)
  %dec136 = add nsw i64 %i2.2493, -1
  br label %if.end166

if.else137:                                       ; preds = %while.body119
  %arrayidx140 = getelementptr inbounds [8 x i64], ptr %nn, i64 %25, i64 %rem
  %30 = load i64, ptr %arrayidx140, align 8, !tbaa !5
  %cmp141 = icmp eq i64 %30, -1
  br i1 %cmp141, label %if.then151, label %lor.lhs.false142

lor.lhs.false142:                                 ; preds = %if.else137
  %add.ptr148 = getelementptr inbounds %struct.point, ptr %pt, i64 %30
  %call149 = tail call i64 @dist2(ptr noundef nonnull %arrayidx121, ptr noundef %add.ptr148) #14
  %cmp150 = icmp slt i64 %best_dist.3495, %call149
  br i1 %cmp150, label %lor.lhs.false142.if.then151_crit_edge, label %if.end156

lor.lhs.false142.if.then151_crit_edge:            ; preds = %lor.lhs.false142
  %.pre534 = load i64, ptr %arrayidx120, align 8, !tbaa !5
  br label %if.then151

if.then151:                                       ; preds = %lor.lhs.false142.if.then151_crit_edge, %if.else137
  %31 = phi i64 [ %.pre534, %lor.lhs.false142.if.then151_crit_edge ], [ %25, %if.else137 ]
  %arrayidx152 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.3494
  %32 = load i64, ptr %arrayidx152, align 8, !tbaa !5
  %arrayidx155 = getelementptr inbounds [8 x i64], ptr %nn, i64 %31, i64 %rem
  store i64 %32, ptr %arrayidx155, align 8, !tbaa !5
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %lor.lhs.false142
  %dec157 = add nsw i64 %i1.5492, -1
  %cmp158.not.not = icmp sgt i64 %i1.5492, %mid
  br i1 %cmp158.not.not, label %if.then159, label %if.end166

if.then159:                                       ; preds = %if.end156
  %arrayidx160 = getelementptr inbounds i64, ptr %sorted, i64 %dec157
  %33 = load i64, ptr %arrayidx160, align 8, !tbaa !5
  %add.ptr161 = getelementptr inbounds %struct.point, ptr %pt, i64 %33
  %arrayidx162 = getelementptr inbounds i64, ptr %sorted, i64 %best_i2.3494
  %34 = load i64, ptr %arrayidx162, align 8, !tbaa !5
  %add.ptr163 = getelementptr inbounds %struct.point, ptr %pt, i64 %34
  %call164 = tail call i64 @dist2(ptr noundef %add.ptr161, ptr noundef %add.ptr163) #14
  br label %if.end166

if.end166:                                        ; preds = %if.end156, %if.then159, %if.then127
  %i1.6 = phi i64 [ %i1.5492, %if.then127 ], [ %dec157, %if.then159 ], [ %dec157, %if.end156 ]
  %i2.3 = phi i64 [ %dec136, %if.then127 ], [ %i2.2493, %if.then159 ], [ %i2.2493, %if.end156 ]
  %best_i2.5 = phi i64 [ %spec.select467, %if.then127 ], [ %best_i2.3494, %if.then159 ], [ %best_i2.3494, %if.end156 ]
  %best_dist.5 = phi i64 [ %29, %if.then127 ], [ %call164, %if.then159 ], [ %best_dist.3495, %if.end156 ]
  %cmp115.not = icmp slt i64 %i1.6, %mid
  %cmp117.not = icmp slt i64 %i2.3, %left
  %or.cond466 = select i1 %cmp115.not, i1 true, i1 %cmp117.not
  br i1 %or.cond466, label %while.cond168.preheader, label %while.body119, !llvm.loop !18

while.body170:                                    ; preds = %while.body170.lr.ph, %if.end194
  %i1.7501 = phi i64 [ %i1.5.lcssa, %while.body170.lr.ph ], [ %dec195, %if.end194 ]
  %arrayidx171 = getelementptr inbounds i64, ptr %sorted, i64 %i1.7501
  %35 = load i64, ptr %arrayidx171, align 8, !tbaa !5
  %arrayidx173 = getelementptr inbounds [8 x i64], ptr %nn, i64 %35, i64 %rem
  %36 = load i64, ptr %arrayidx173, align 8, !tbaa !5
  %cmp174 = icmp eq i64 %36, -1
  br i1 %cmp174, label %if.then189, label %lor.lhs.false175

lor.lhs.false175:                                 ; preds = %while.body170
  %add.ptr177 = getelementptr inbounds %struct.point, ptr %pt, i64 %35
  %37 = load i64, ptr %arrayidx178, align 8, !tbaa !5
  %add.ptr179 = getelementptr inbounds %struct.point, ptr %pt, i64 %37
  %call180 = tail call i64 @dist2(ptr noundef %add.ptr177, ptr noundef %add.ptr179) #14
  %38 = load i64, ptr %arrayidx171, align 8, !tbaa !5
  %add.ptr182 = getelementptr inbounds %struct.point, ptr %pt, i64 %38
  %arrayidx185 = getelementptr inbounds [8 x i64], ptr %nn, i64 %38, i64 %rem
  %39 = load i64, ptr %arrayidx185, align 8, !tbaa !5
  %add.ptr186 = getelementptr inbounds %struct.point, ptr %pt, i64 %39
  %call187 = tail call i64 @dist2(ptr noundef %add.ptr182, ptr noundef %add.ptr186) #14
  %cmp188 = icmp slt i64 %call180, %call187
  br i1 %cmp188, label %lor.lhs.false175.if.then189_crit_edge, label %if.end194

lor.lhs.false175.if.then189_crit_edge:            ; preds = %lor.lhs.false175
  %.pre535 = load i64, ptr %arrayidx171, align 8, !tbaa !5
  br label %if.then189

if.then189:                                       ; preds = %lor.lhs.false175.if.then189_crit_edge, %while.body170
  %40 = phi i64 [ %.pre535, %lor.lhs.false175.if.then189_crit_edge ], [ %35, %while.body170 ]
  %41 = load i64, ptr %arrayidx178, align 8, !tbaa !5
  %arrayidx193 = getelementptr inbounds [8 x i64], ptr %nn, i64 %40, i64 %rem
  store i64 %41, ptr %arrayidx193, align 8, !tbaa !5
  br label %if.end194

if.end194:                                        ; preds = %if.then189, %lor.lhs.false175
  %dec195 = add nsw i64 %i1.7501, -1
  %cmp169.not.not = icmp sgt i64 %i1.7501, %mid
  br i1 %cmp169.not.not, label %while.body170, label %if.end197, !llvm.loop !19

if.end197:                                        ; preds = %while.cond96, %if.end194, %while.cond168.preheader
  %cmp201503 = icmp slt i64 %mid, %right
  %or.cond469504 = and i1 %cmp475, %cmp201503
  br i1 %or.cond469504, label %while.body203, label %while.cond223.preheader

while.cond223.preheader:                          ; preds = %if.end221, %if.end197
  %i.0.lcssa = phi i64 [ %left, %if.end197 ], [ %i.1, %if.end221 ]
  %j.0.lcssa = phi i64 [ %mid, %if.end197 ], [ %j.1, %if.end221 ]
  %k.0.lcssa = phi i64 [ %left, %if.end197 ], [ %k.1, %if.end221 ]
  %cmp224511 = icmp slt i64 %i.0.lcssa, %mid
  br i1 %cmp224511, label %while.body225.preheader, label %while.cond231.preheader

while.body225.preheader:                          ; preds = %while.cond223.preheader
  %42 = sub i64 %mid, %i.0.lcssa
  %min.iters.check = icmp ult i64 %42, 4
  br i1 %min.iters.check, label %while.body225.preheader603, label %vector.memcheck

vector.memcheck:                                  ; preds = %while.body225.preheader
  %43 = shl i64 %k.0.lcssa, 3
  %uglygep = getelementptr i8, ptr %aux, i64 %43
  %44 = add i64 %k.0.lcssa, %mid
  %45 = shl i64 %i.0.lcssa, 3
  %46 = sub i64 %44, %i.0.lcssa
  %47 = shl i64 %46, 3
  %uglygep546 = getelementptr i8, ptr %aux, i64 %47
  %uglygep547 = getelementptr i8, ptr %sorted, i64 %45
  %bound0 = icmp ult ptr %uglygep, %arrayidx
  %bound1 = icmp ult ptr %uglygep547, %uglygep546
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %while.body225.preheader603, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %42, -4
  %ind.end = add i64 %k.0.lcssa, %n.vec
  %ind.end549 = add i64 %i.0.lcssa, %n.vec
  %48 = add i64 %n.vec, -4
  %49 = lshr exact i64 %48, 2
  %50 = add nuw nsw i64 %49, 1
  %xtraiter = and i64 %50, 1
  %51 = icmp eq i64 %48, 0
  br i1 %51, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %50, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %offset.idx = add i64 %i.0.lcssa, %index
  %offset.idx550 = add i64 %k.0.lcssa, %index
  %52 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx
  %wide.load = load <2 x i64>, ptr %52, align 8, !tbaa !5, !alias.scope !20
  %53 = getelementptr inbounds i64, ptr %52, i64 2
  %wide.load551 = load <2 x i64>, ptr %53, align 8, !tbaa !5, !alias.scope !20
  %54 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx550
  store <2 x i64> %wide.load, ptr %54, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %55 = getelementptr inbounds i64, ptr %54, i64 2
  store <2 x i64> %wide.load551, ptr %55, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %index.next = or i64 %index, 4
  %offset.idx.1 = add i64 %i.0.lcssa, %index.next
  %offset.idx550.1 = add i64 %k.0.lcssa, %index.next
  %56 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx.1
  %wide.load.1 = load <2 x i64>, ptr %56, align 8, !tbaa !5, !alias.scope !20
  %57 = getelementptr inbounds i64, ptr %56, i64 2
  %wide.load551.1 = load <2 x i64>, ptr %57, align 8, !tbaa !5, !alias.scope !20
  %58 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx550.1
  store <2 x i64> %wide.load.1, ptr %58, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %59 = getelementptr inbounds i64, ptr %58, i64 2
  store <2 x i64> %wide.load551.1, ptr %59, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %index.next.1 = add nuw i64 %index, 8
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !25

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %i.0.lcssa, %index.unr
  %offset.idx550.epil = add i64 %k.0.lcssa, %index.unr
  %60 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx.epil
  %wide.load.epil = load <2 x i64>, ptr %60, align 8, !tbaa !5, !alias.scope !20
  %61 = getelementptr inbounds i64, ptr %60, i64 2
  %wide.load551.epil = load <2 x i64>, ptr %61, align 8, !tbaa !5, !alias.scope !20
  %62 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx550.epil
  store <2 x i64> %wide.load.epil, ptr %62, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  %63 = getelementptr inbounds i64, ptr %62, i64 2
  store <2 x i64> %wide.load551.epil, ptr %63, align 8, !tbaa !5, !alias.scope !23, !noalias !20
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %42, %n.vec
  br i1 %cmp.n, label %while.cond231.preheader, label %while.body225.preheader603

while.body225.preheader603:                       ; preds = %vector.memcheck, %while.body225.preheader, %middle.block
  %k.2513.ph = phi i64 [ %k.0.lcssa, %vector.memcheck ], [ %k.0.lcssa, %while.body225.preheader ], [ %ind.end, %middle.block ]
  %i.2512.ph = phi i64 [ %i.0.lcssa, %vector.memcheck ], [ %i.0.lcssa, %while.body225.preheader ], [ %ind.end549, %middle.block ]
  %64 = sub i64 %mid, %i.2512.ph
  %65 = xor i64 %i.2512.ph, -1
  %66 = add i64 %65, %mid
  %xtraiter609 = and i64 %64, 3
  %lcmp.mod610.not = icmp eq i64 %xtraiter609, 0
  br i1 %lcmp.mod610.not, label %while.body225.prol.loopexit, label %while.body225.prol

while.body225.prol:                               ; preds = %while.body225.preheader603, %while.body225.prol
  %k.2513.prol = phi i64 [ %inc228.prol, %while.body225.prol ], [ %k.2513.ph, %while.body225.preheader603 ]
  %i.2512.prol = phi i64 [ %inc226.prol, %while.body225.prol ], [ %i.2512.ph, %while.body225.preheader603 ]
  %prol.iter = phi i64 [ %prol.iter.next, %while.body225.prol ], [ 0, %while.body225.preheader603 ]
  %inc226.prol = add nsw i64 %i.2512.prol, 1
  %arrayidx227.prol = getelementptr inbounds i64, ptr %sorted, i64 %i.2512.prol
  %67 = load i64, ptr %arrayidx227.prol, align 8, !tbaa !5
  %inc228.prol = add nsw i64 %k.2513.prol, 1
  %arrayidx229.prol = getelementptr inbounds i64, ptr %aux, i64 %k.2513.prol
  store i64 %67, ptr %arrayidx229.prol, align 8, !tbaa !5
  %prol.iter.next = add i64 %prol.iter, 1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter609
  br i1 %prol.iter.cmp.not, label %while.body225.prol.loopexit, label %while.body225.prol, !llvm.loop !27

while.body225.prol.loopexit:                      ; preds = %while.body225.prol, %while.body225.preheader603
  %inc228.lcssa.unr = phi i64 [ undef, %while.body225.preheader603 ], [ %inc228.prol, %while.body225.prol ]
  %k.2513.unr = phi i64 [ %k.2513.ph, %while.body225.preheader603 ], [ %inc228.prol, %while.body225.prol ]
  %i.2512.unr = phi i64 [ %i.2512.ph, %while.body225.preheader603 ], [ %inc226.prol, %while.body225.prol ]
  %68 = icmp ult i64 %66, 3
  br i1 %68, label %while.cond231.preheader, label %while.body225

while.body203:                                    ; preds = %if.end197, %if.end221
  %k.0507 = phi i64 [ %k.1, %if.end221 ], [ %left, %if.end197 ]
  %j.0506 = phi i64 [ %j.1, %if.end221 ], [ %mid, %if.end197 ]
  %i.0505 = phi i64 [ %i.1, %if.end221 ], [ %left, %if.end197 ]
  %arrayidx204 = getelementptr inbounds i64, ptr %sorted, i64 %i.0505
  %69 = load i64, ptr %arrayidx204, align 8, !tbaa !5
  %y206 = getelementptr inbounds %struct.point, ptr %pt, i64 %69, i32 1
  %70 = load i64, ptr %y206, align 8, !tbaa !11
  %arrayidx207 = getelementptr inbounds i64, ptr %sorted, i64 %j.0506
  %71 = load i64, ptr %arrayidx207, align 8, !tbaa !5
  %y209 = getelementptr inbounds %struct.point, ptr %pt, i64 %71, i32 1
  %72 = load i64, ptr %y209, align 8, !tbaa !11
  %cmp210.not = icmp slt i64 %70, %72
  br i1 %cmp210.not, label %if.else216, label %if.then211

if.then211:                                       ; preds = %while.body203
  %inc212 = add nsw i64 %i.0505, 1
  br label %if.end221

if.else216:                                       ; preds = %while.body203
  %inc217 = add nsw i64 %j.0506, 1
  br label %if.end221

if.end221:                                        ; preds = %if.else216, %if.then211
  %.sink = phi i64 [ %71, %if.else216 ], [ %69, %if.then211 ]
  %i.1 = phi i64 [ %i.0505, %if.else216 ], [ %inc212, %if.then211 ]
  %j.1 = phi i64 [ %inc217, %if.else216 ], [ %j.0506, %if.then211 ]
  %73 = getelementptr inbounds i64, ptr %aux, i64 %k.0507
  store i64 %.sink, ptr %73, align 8
  %k.1 = add nsw i64 %k.0507, 1
  %cmp199 = icmp slt i64 %i.1, %mid
  %cmp201 = icmp slt i64 %j.1, %right
  %or.cond469 = select i1 %cmp199, i1 %cmp201, i1 false
  br i1 %or.cond469, label %while.body203, label %while.cond223.preheader, !llvm.loop !29

while.cond231.preheader:                          ; preds = %while.body225.prol.loopexit, %while.body225, %middle.block, %while.cond223.preheader
  %k.2.lcssa = phi i64 [ %k.0.lcssa, %while.cond223.preheader ], [ %ind.end, %middle.block ], [ %inc228.lcssa.unr, %while.body225.prol.loopexit ], [ %inc228.3, %while.body225 ]
  %cmp232515 = icmp slt i64 %j.0.lcssa, %right
  br i1 %cmp232515, label %while.body233.preheader, label %for.cond.preheader

while.body233.preheader:                          ; preds = %while.cond231.preheader
  %74 = sub i64 %right, %j.0.lcssa
  %min.iters.check562 = icmp ult i64 %74, 4
  br i1 %min.iters.check562, label %while.body233.preheader602, label %vector.memcheck552

vector.memcheck552:                               ; preds = %while.body233.preheader
  %75 = shl i64 %k.2.lcssa, 3
  %uglygep553 = getelementptr i8, ptr %aux, i64 %75
  %76 = add i64 %k.2.lcssa, %right
  %77 = shl i64 %j.0.lcssa, 3
  %78 = sub i64 %76, %j.0.lcssa
  %79 = shl i64 %78, 3
  %uglygep554 = getelementptr i8, ptr %aux, i64 %79
  %uglygep555 = getelementptr i8, ptr %sorted, i64 %77
  %80 = shl i64 %right, 3
  %uglygep556 = getelementptr i8, ptr %sorted, i64 %80
  %bound0557 = icmp ult ptr %uglygep553, %uglygep556
  %bound1558 = icmp ult ptr %uglygep555, %uglygep554
  %found.conflict559 = and i1 %bound0557, %bound1558
  br i1 %found.conflict559, label %while.body233.preheader602, label %vector.ph563

vector.ph563:                                     ; preds = %vector.memcheck552
  %n.vec565 = and i64 %74, -4
  %ind.end567 = add i64 %k.2.lcssa, %n.vec565
  %ind.end569 = add i64 %j.0.lcssa, %n.vec565
  %81 = add i64 %n.vec565, -4
  %82 = lshr exact i64 %81, 2
  %83 = add nuw nsw i64 %82, 1
  %xtraiter611 = and i64 %83, 1
  %84 = icmp eq i64 %81, 0
  br i1 %84, label %middle.block560.unr-lcssa, label %vector.ph563.new

vector.ph563.new:                                 ; preds = %vector.ph563
  %unroll_iter613 = and i64 %83, 9223372036854775806
  br label %vector.body571

vector.body571:                                   ; preds = %vector.body571, %vector.ph563.new
  %index572 = phi i64 [ 0, %vector.ph563.new ], [ %index.next577.1, %vector.body571 ]
  %niter614 = phi i64 [ 0, %vector.ph563.new ], [ %niter614.next.1, %vector.body571 ]
  %offset.idx573 = add i64 %j.0.lcssa, %index572
  %offset.idx574 = add i64 %k.2.lcssa, %index572
  %85 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx573
  %wide.load575 = load <2 x i64>, ptr %85, align 8, !tbaa !5, !alias.scope !30
  %86 = getelementptr inbounds i64, ptr %85, i64 2
  %wide.load576 = load <2 x i64>, ptr %86, align 8, !tbaa !5, !alias.scope !30
  %87 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx574
  store <2 x i64> %wide.load575, ptr %87, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  %88 = getelementptr inbounds i64, ptr %87, i64 2
  store <2 x i64> %wide.load576, ptr %88, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  %index.next577 = or i64 %index572, 4
  %offset.idx573.1 = add i64 %j.0.lcssa, %index.next577
  %offset.idx574.1 = add i64 %k.2.lcssa, %index.next577
  %89 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx573.1
  %wide.load575.1 = load <2 x i64>, ptr %89, align 8, !tbaa !5, !alias.scope !30
  %90 = getelementptr inbounds i64, ptr %89, i64 2
  %wide.load576.1 = load <2 x i64>, ptr %90, align 8, !tbaa !5, !alias.scope !30
  %91 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx574.1
  store <2 x i64> %wide.load575.1, ptr %91, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  %92 = getelementptr inbounds i64, ptr %91, i64 2
  store <2 x i64> %wide.load576.1, ptr %92, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  %index.next577.1 = add nuw i64 %index572, 8
  %niter614.next.1 = add i64 %niter614, 2
  %niter614.ncmp.1 = icmp eq i64 %niter614.next.1, %unroll_iter613
  br i1 %niter614.ncmp.1, label %middle.block560.unr-lcssa, label %vector.body571, !llvm.loop !35

middle.block560.unr-lcssa:                        ; preds = %vector.body571, %vector.ph563
  %index572.unr = phi i64 [ 0, %vector.ph563 ], [ %index.next577.1, %vector.body571 ]
  %lcmp.mod612.not = icmp eq i64 %xtraiter611, 0
  br i1 %lcmp.mod612.not, label %middle.block560, label %vector.body571.epil

vector.body571.epil:                              ; preds = %middle.block560.unr-lcssa
  %offset.idx573.epil = add i64 %j.0.lcssa, %index572.unr
  %offset.idx574.epil = add i64 %k.2.lcssa, %index572.unr
  %93 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx573.epil
  %wide.load575.epil = load <2 x i64>, ptr %93, align 8, !tbaa !5, !alias.scope !30
  %94 = getelementptr inbounds i64, ptr %93, i64 2
  %wide.load576.epil = load <2 x i64>, ptr %94, align 8, !tbaa !5, !alias.scope !30
  %95 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx574.epil
  store <2 x i64> %wide.load575.epil, ptr %95, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  %96 = getelementptr inbounds i64, ptr %95, i64 2
  store <2 x i64> %wide.load576.epil, ptr %96, align 8, !tbaa !5, !alias.scope !33, !noalias !30
  br label %middle.block560

middle.block560:                                  ; preds = %middle.block560.unr-lcssa, %vector.body571.epil
  %cmp.n570 = icmp eq i64 %74, %n.vec565
  br i1 %cmp.n570, label %for.cond.preheader, label %while.body233.preheader602

while.body233.preheader602:                       ; preds = %vector.memcheck552, %while.body233.preheader, %middle.block560
  %k.3517.ph = phi i64 [ %k.2.lcssa, %vector.memcheck552 ], [ %k.2.lcssa, %while.body233.preheader ], [ %ind.end567, %middle.block560 ]
  %j.2516.ph = phi i64 [ %j.0.lcssa, %vector.memcheck552 ], [ %j.0.lcssa, %while.body233.preheader ], [ %ind.end569, %middle.block560 ]
  %97 = sub i64 %right, %j.2516.ph
  %98 = xor i64 %j.2516.ph, -1
  %99 = add i64 %98, %right
  %xtraiter615 = and i64 %97, 3
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  br i1 %lcmp.mod616.not, label %while.body233.prol.loopexit, label %while.body233.prol

while.body233.prol:                               ; preds = %while.body233.preheader602, %while.body233.prol
  %k.3517.prol = phi i64 [ %inc236.prol, %while.body233.prol ], [ %k.3517.ph, %while.body233.preheader602 ]
  %j.2516.prol = phi i64 [ %inc234.prol, %while.body233.prol ], [ %j.2516.ph, %while.body233.preheader602 ]
  %prol.iter617 = phi i64 [ %prol.iter617.next, %while.body233.prol ], [ 0, %while.body233.preheader602 ]
  %inc234.prol = add nsw i64 %j.2516.prol, 1
  %arrayidx235.prol = getelementptr inbounds i64, ptr %sorted, i64 %j.2516.prol
  %100 = load i64, ptr %arrayidx235.prol, align 8, !tbaa !5
  %inc236.prol = add nsw i64 %k.3517.prol, 1
  %arrayidx237.prol = getelementptr inbounds i64, ptr %aux, i64 %k.3517.prol
  store i64 %100, ptr %arrayidx237.prol, align 8, !tbaa !5
  %prol.iter617.next = add i64 %prol.iter617, 1
  %prol.iter617.cmp.not = icmp eq i64 %prol.iter617.next, %xtraiter615
  br i1 %prol.iter617.cmp.not, label %while.body233.prol.loopexit, label %while.body233.prol, !llvm.loop !36

while.body233.prol.loopexit:                      ; preds = %while.body233.prol, %while.body233.preheader602
  %k.3517.unr = phi i64 [ %k.3517.ph, %while.body233.preheader602 ], [ %inc236.prol, %while.body233.prol ]
  %j.2516.unr = phi i64 [ %j.2516.ph, %while.body233.preheader602 ], [ %inc234.prol, %while.body233.prol ]
  %101 = icmp ult i64 %99, 3
  br i1 %101, label %for.cond.preheader, label %while.body233

while.body225:                                    ; preds = %while.body225.prol.loopexit, %while.body225
  %k.2513 = phi i64 [ %inc228.3, %while.body225 ], [ %k.2513.unr, %while.body225.prol.loopexit ]
  %i.2512 = phi i64 [ %inc226.3, %while.body225 ], [ %i.2512.unr, %while.body225.prol.loopexit ]
  %inc226 = add nsw i64 %i.2512, 1
  %arrayidx227 = getelementptr inbounds i64, ptr %sorted, i64 %i.2512
  %102 = load i64, ptr %arrayidx227, align 8, !tbaa !5
  %inc228 = add nsw i64 %k.2513, 1
  %arrayidx229 = getelementptr inbounds i64, ptr %aux, i64 %k.2513
  store i64 %102, ptr %arrayidx229, align 8, !tbaa !5
  %inc226.1 = add nsw i64 %i.2512, 2
  %arrayidx227.1 = getelementptr inbounds i64, ptr %sorted, i64 %inc226
  %103 = load i64, ptr %arrayidx227.1, align 8, !tbaa !5
  %inc228.1 = add nsw i64 %k.2513, 2
  %arrayidx229.1 = getelementptr inbounds i64, ptr %aux, i64 %inc228
  store i64 %103, ptr %arrayidx229.1, align 8, !tbaa !5
  %inc226.2 = add nsw i64 %i.2512, 3
  %arrayidx227.2 = getelementptr inbounds i64, ptr %sorted, i64 %inc226.1
  %104 = load i64, ptr %arrayidx227.2, align 8, !tbaa !5
  %inc228.2 = add nsw i64 %k.2513, 3
  %arrayidx229.2 = getelementptr inbounds i64, ptr %aux, i64 %inc228.1
  store i64 %104, ptr %arrayidx229.2, align 8, !tbaa !5
  %inc226.3 = add nsw i64 %i.2512, 4
  %arrayidx227.3 = getelementptr inbounds i64, ptr %sorted, i64 %inc226.2
  %105 = load i64, ptr %arrayidx227.3, align 8, !tbaa !5
  %inc228.3 = add nsw i64 %k.2513, 4
  %arrayidx229.3 = getelementptr inbounds i64, ptr %aux, i64 %inc228.2
  store i64 %105, ptr %arrayidx229.3, align 8, !tbaa !5
  %exitcond528.not.3 = icmp eq i64 %inc226.3, %mid
  br i1 %exitcond528.not.3, label %while.cond231.preheader, label %while.body225, !llvm.loop !37

for.cond.preheader:                               ; preds = %while.body233.prol.loopexit, %while.body233, %middle.block560, %while.cond231.preheader
  %cmp239518 = icmp sgt i64 %right, %left
  br i1 %cmp239518, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %106 = sub i64 %right, %left
  %min.iters.check588 = icmp ult i64 %106, 4
  br i1 %min.iters.check588, label %for.body.preheader601, label %vector.memcheck578

vector.memcheck578:                               ; preds = %for.body.preheader
  %107 = shl i64 %left, 3
  %uglygep579 = getelementptr i8, ptr %sorted, i64 %107
  %108 = shl i64 %right, 3
  %uglygep580 = getelementptr i8, ptr %sorted, i64 %108
  %uglygep581 = getelementptr i8, ptr %aux, i64 %107
  %uglygep582 = getelementptr i8, ptr %aux, i64 %108
  %bound0583 = icmp ult ptr %uglygep579, %uglygep582
  %bound1584 = icmp ult ptr %uglygep581, %uglygep580
  %found.conflict585 = and i1 %bound0583, %bound1584
  br i1 %found.conflict585, label %for.body.preheader601, label %vector.ph589

vector.ph589:                                     ; preds = %vector.memcheck578
  %n.vec591 = and i64 %106, -4
  %ind.end593 = add i64 %n.vec591, %left
  %109 = add i64 %n.vec591, -4
  %110 = lshr exact i64 %109, 2
  %111 = add nuw nsw i64 %110, 1
  %xtraiter618 = and i64 %111, 1
  %112 = icmp eq i64 %109, 0
  br i1 %112, label %middle.block586.unr-lcssa, label %vector.ph589.new

vector.ph589.new:                                 ; preds = %vector.ph589
  %unroll_iter620 = and i64 %111, 9223372036854775806
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph589.new
  %index596 = phi i64 [ 0, %vector.ph589.new ], [ %index.next600.1, %vector.body595 ]
  %niter621 = phi i64 [ 0, %vector.ph589.new ], [ %niter621.next.1, %vector.body595 ]
  %offset.idx597 = add i64 %index596, %left
  %113 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx597
  %wide.load598 = load <2 x i64>, ptr %113, align 8, !tbaa !5, !alias.scope !38
  %114 = getelementptr inbounds i64, ptr %113, i64 2
  %wide.load599 = load <2 x i64>, ptr %114, align 8, !tbaa !5, !alias.scope !38
  %115 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx597
  store <2 x i64> %wide.load598, ptr %115, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  %116 = getelementptr inbounds i64, ptr %115, i64 2
  store <2 x i64> %wide.load599, ptr %116, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  %index.next600 = or i64 %index596, 4
  %offset.idx597.1 = add i64 %index.next600, %left
  %117 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx597.1
  %wide.load598.1 = load <2 x i64>, ptr %117, align 8, !tbaa !5, !alias.scope !38
  %118 = getelementptr inbounds i64, ptr %117, i64 2
  %wide.load599.1 = load <2 x i64>, ptr %118, align 8, !tbaa !5, !alias.scope !38
  %119 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx597.1
  store <2 x i64> %wide.load598.1, ptr %119, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  %120 = getelementptr inbounds i64, ptr %119, i64 2
  store <2 x i64> %wide.load599.1, ptr %120, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  %index.next600.1 = add nuw i64 %index596, 8
  %niter621.next.1 = add i64 %niter621, 2
  %niter621.ncmp.1 = icmp eq i64 %niter621.next.1, %unroll_iter620
  br i1 %niter621.ncmp.1, label %middle.block586.unr-lcssa, label %vector.body595, !llvm.loop !43

middle.block586.unr-lcssa:                        ; preds = %vector.body595, %vector.ph589
  %index596.unr = phi i64 [ 0, %vector.ph589 ], [ %index.next600.1, %vector.body595 ]
  %lcmp.mod619.not = icmp eq i64 %xtraiter618, 0
  br i1 %lcmp.mod619.not, label %middle.block586, label %vector.body595.epil

vector.body595.epil:                              ; preds = %middle.block586.unr-lcssa
  %offset.idx597.epil = add i64 %index596.unr, %left
  %121 = getelementptr inbounds i64, ptr %aux, i64 %offset.idx597.epil
  %wide.load598.epil = load <2 x i64>, ptr %121, align 8, !tbaa !5, !alias.scope !38
  %122 = getelementptr inbounds i64, ptr %121, i64 2
  %wide.load599.epil = load <2 x i64>, ptr %122, align 8, !tbaa !5, !alias.scope !38
  %123 = getelementptr inbounds i64, ptr %sorted, i64 %offset.idx597.epil
  store <2 x i64> %wide.load598.epil, ptr %123, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  %124 = getelementptr inbounds i64, ptr %123, i64 2
  store <2 x i64> %wide.load599.epil, ptr %124, align 8, !tbaa !5, !alias.scope !41, !noalias !38
  br label %middle.block586

middle.block586:                                  ; preds = %middle.block586.unr-lcssa, %vector.body595.epil
  %cmp.n594 = icmp eq i64 %106, %n.vec591
  br i1 %cmp.n594, label %for.end, label %for.body.preheader601

for.body.preheader601:                            ; preds = %vector.memcheck578, %for.body.preheader, %middle.block586
  %i.3519.ph = phi i64 [ %left, %vector.memcheck578 ], [ %left, %for.body.preheader ], [ %ind.end593, %middle.block586 ]
  %125 = sub i64 %right, %i.3519.ph
  %126 = xor i64 %i.3519.ph, -1
  %127 = add i64 %126, %right
  %xtraiter622 = and i64 %125, 3
  %lcmp.mod623.not = icmp eq i64 %xtraiter622, 0
  br i1 %lcmp.mod623.not, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader601, %for.body.prol
  %i.3519.prol = phi i64 [ %inc242.prol, %for.body.prol ], [ %i.3519.ph, %for.body.preheader601 ]
  %prol.iter624 = phi i64 [ %prol.iter624.next, %for.body.prol ], [ 0, %for.body.preheader601 ]
  %arrayidx240.prol = getelementptr inbounds i64, ptr %aux, i64 %i.3519.prol
  %128 = load i64, ptr %arrayidx240.prol, align 8, !tbaa !5
  %arrayidx241.prol = getelementptr inbounds i64, ptr %sorted, i64 %i.3519.prol
  store i64 %128, ptr %arrayidx241.prol, align 8, !tbaa !5
  %inc242.prol = add nsw i64 %i.3519.prol, 1
  %prol.iter624.next = add i64 %prol.iter624, 1
  %prol.iter624.cmp.not = icmp eq i64 %prol.iter624.next, %xtraiter622
  br i1 %prol.iter624.cmp.not, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !44

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader601
  %i.3519.unr = phi i64 [ %i.3519.ph, %for.body.preheader601 ], [ %inc242.prol, %for.body.prol ]
  %129 = icmp ult i64 %127, 3
  br i1 %129, label %for.end, label %for.body

while.body233:                                    ; preds = %while.body233.prol.loopexit, %while.body233
  %k.3517 = phi i64 [ %inc236.3, %while.body233 ], [ %k.3517.unr, %while.body233.prol.loopexit ]
  %j.2516 = phi i64 [ %inc234.3, %while.body233 ], [ %j.2516.unr, %while.body233.prol.loopexit ]
  %inc234 = add nsw i64 %j.2516, 1
  %arrayidx235 = getelementptr inbounds i64, ptr %sorted, i64 %j.2516
  %130 = load i64, ptr %arrayidx235, align 8, !tbaa !5
  %inc236 = add nsw i64 %k.3517, 1
  %arrayidx237 = getelementptr inbounds i64, ptr %aux, i64 %k.3517
  store i64 %130, ptr %arrayidx237, align 8, !tbaa !5
  %inc234.1 = add nsw i64 %j.2516, 2
  %arrayidx235.1 = getelementptr inbounds i64, ptr %sorted, i64 %inc234
  %131 = load i64, ptr %arrayidx235.1, align 8, !tbaa !5
  %inc236.1 = add nsw i64 %k.3517, 2
  %arrayidx237.1 = getelementptr inbounds i64, ptr %aux, i64 %inc236
  store i64 %131, ptr %arrayidx237.1, align 8, !tbaa !5
  %inc234.2 = add nsw i64 %j.2516, 3
  %arrayidx235.2 = getelementptr inbounds i64, ptr %sorted, i64 %inc234.1
  %132 = load i64, ptr %arrayidx235.2, align 8, !tbaa !5
  %inc236.2 = add nsw i64 %k.3517, 3
  %arrayidx237.2 = getelementptr inbounds i64, ptr %aux, i64 %inc236.1
  store i64 %132, ptr %arrayidx237.2, align 8, !tbaa !5
  %inc234.3 = add nsw i64 %j.2516, 4
  %arrayidx235.3 = getelementptr inbounds i64, ptr %sorted, i64 %inc234.2
  %133 = load i64, ptr %arrayidx235.3, align 8, !tbaa !5
  %inc236.3 = add nsw i64 %k.3517, 4
  %arrayidx237.3 = getelementptr inbounds i64, ptr %aux, i64 %inc236.2
  store i64 %133, ptr %arrayidx237.3, align 8, !tbaa !5
  %exitcond530.not.3 = icmp eq i64 %inc234.3, %right
  br i1 %exitcond530.not.3, label %for.cond.preheader, label %while.body233, !llvm.loop !45

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %i.3519 = phi i64 [ %inc242.3, %for.body ], [ %i.3519.unr, %for.body.prol.loopexit ]
  %arrayidx240 = getelementptr inbounds i64, ptr %aux, i64 %i.3519
  %134 = load i64, ptr %arrayidx240, align 8, !tbaa !5
  %arrayidx241 = getelementptr inbounds i64, ptr %sorted, i64 %i.3519
  store i64 %134, ptr %arrayidx241, align 8, !tbaa !5
  %inc242 = add nsw i64 %i.3519, 1
  %arrayidx240.1 = getelementptr inbounds i64, ptr %aux, i64 %inc242
  %135 = load i64, ptr %arrayidx240.1, align 8, !tbaa !5
  %arrayidx241.1 = getelementptr inbounds i64, ptr %sorted, i64 %inc242
  store i64 %135, ptr %arrayidx241.1, align 8, !tbaa !5
  %inc242.1 = add nsw i64 %i.3519, 2
  %arrayidx240.2 = getelementptr inbounds i64, ptr %aux, i64 %inc242.1
  %136 = load i64, ptr %arrayidx240.2, align 8, !tbaa !5
  %arrayidx241.2 = getelementptr inbounds i64, ptr %sorted, i64 %inc242.1
  store i64 %136, ptr %arrayidx241.2, align 8, !tbaa !5
  %inc242.2 = add nsw i64 %i.3519, 3
  %arrayidx240.3 = getelementptr inbounds i64, ptr %aux, i64 %inc242.2
  %137 = load i64, ptr %arrayidx240.3, align 8, !tbaa !5
  %arrayidx241.3 = getelementptr inbounds i64, ptr %sorted, i64 %inc242.2
  store i64 %137, ptr %arrayidx241.3, align 8, !tbaa !5
  %inc242.3 = add nsw i64 %i.3519, 4
  %exitcond532.not.3 = icmp eq i64 %inc242.3, %right
  br i1 %exitcond532.not.3, label %for.end, label %for.body, !llvm.loop !46

for.end:                                          ; preds = %for.body.prol.loopexit, %for.body, %middle.block586, %for.cond.preheader
  ret void
}

declare i64 @dist2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ne_sw_nearest_neighbors(i64 noundef %left, i64 noundef %right, ptr noundef %pt, ptr noundef %sorted, ptr noundef %aux, i64 noundef %oct, ptr noundef %nn) local_unnamed_addr #0 {
entry:
  %add = add nsw i64 %left, 1
  %cmp = icmp eq i64 %add, %right
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds i64, ptr %sorted, i64 %left
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !5
  %add2 = add nsw i64 %oct, 4
  %rem = srem i64 %add2, 8
  %arrayidx3 = getelementptr inbounds [8 x i64], ptr %nn, i64 %0, i64 %rem
  store i64 -1, ptr %arrayidx3, align 8, !tbaa !5
  %1 = load i64, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds [8 x i64], ptr %nn, i64 %1, i64 %oct
  store i64 -1, ptr %arrayidx6, align 8, !tbaa !5
  br label %common.ret

common.ret:                                       ; preds = %if.then, %if.else
  ret void

if.else:                                          ; preds = %entry
  %add7 = add nsw i64 %right, %left
  %div = sdiv i64 %add7, 2
  tail call void @ne_sw_nearest_neighbors(i64 noundef %left, i64 noundef %div, ptr noundef %pt, ptr noundef %sorted, ptr noundef %aux, i64 noundef %oct, ptr noundef %nn)
  tail call void @ne_sw_nearest_neighbors(i64 noundef %div, i64 noundef %right, ptr noundef %pt, ptr noundef %sorted, ptr noundef %aux, i64 noundef %oct, ptr noundef %nn)
  tail call void @ne_sw_combine(i64 noundef %left, i64 noundef %div, i64 noundef %right, ptr noundef %pt, ptr noundef %sorted, ptr noundef %aux, i64 noundef %oct, ptr noundef %nn)
  br label %common.ret
}

; Function Attrs: nounwind uwtable
define dso_local void @dq_nearest_neighbors(i64 noundef %n, ptr noundef %pt, ptr noundef %nn) local_unnamed_addr #0 {
entry:
  store ptr %pt, ptr @_pt, align 8, !tbaa !9
  %cmp250 = icmp sgt i64 %n, 0
  br i1 %cmp250, label %for.cond1.preheader.us.preheader, label %for.cond1.preheader.preheader

for.cond1.preheader.preheader:                    ; preds = %entry
  %0 = load ptr, ptr @sorted, align 8, !tbaa !9
  tail call void @qsort(ptr noundef %0, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %1 = load ptr, ptr @sheared, align 8, !tbaa !9
  %2 = load ptr, ptr @sorted, align 8, !tbaa !9
  %3 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef 0, ptr noundef %nn)
  %4 = load ptr, ptr @sorted, align 8, !tbaa !9
  tail call void @qsort(ptr noundef %4, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %5 = load ptr, ptr @sheared, align 8, !tbaa !9
  %6 = load ptr, ptr @sorted, align 8, !tbaa !9
  %7 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef 1, ptr noundef %nn)
  %8 = load ptr, ptr @sorted, align 8, !tbaa !9
  tail call void @qsort(ptr noundef %8, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %9 = load ptr, ptr @sheared, align 8, !tbaa !9
  %10 = load ptr, ptr @sorted, align 8, !tbaa !9
  %11 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %9, ptr noundef %10, ptr noundef %11, i64 noundef 2, ptr noundef %nn)
  %12 = load ptr, ptr @sorted, align 8, !tbaa !9
  tail call void @qsort(ptr noundef %12, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  br label %for.end28

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %13 = load ptr, ptr @sheared, align 8, !tbaa !9
  %14 = load ptr, ptr @sorted, align 8, !tbaa !9
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.cond1.preheader.us.preheader, %for.body3.us
  %i.051.us = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %inc.us, %for.body3.us ]
  %arrayidx5.us = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us
  %15 = load i64, ptr %arrayidx5.us, align 8, !tbaa !47
  %y.us = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us, i32 1
  %16 = load i64, ptr %y.us, align 8, !tbaa !11
  %add.us = sub i64 %15, %16
  %arrayidx10.us = getelementptr inbounds %struct.point, ptr %13, i64 %i.051.us
  store i64 %add.us, ptr %arrayidx10.us, align 8, !tbaa !47
  %mul21.us = shl nsw i64 %16, 1
  %y24.us = getelementptr inbounds %struct.point, ptr %13, i64 %i.051.us, i32 1
  store i64 %mul21.us, ptr %y24.us, align 8, !tbaa !11
  %arrayidx25.us = getelementptr inbounds i64, ptr %14, i64 %i.051.us
  store i64 %i.051.us, ptr %arrayidx25.us, align 8, !tbaa !5
  %inc.us = add nuw nsw i64 %i.051.us, 1
  %exitcond.not = icmp eq i64 %inc.us, %n
  br i1 %exitcond.not, label %for.cond1.for.end_crit_edge.us, label %for.body3.us, !llvm.loop !48

for.cond1.for.end_crit_edge.us:                   ; preds = %for.body3.us
  tail call void @qsort(ptr noundef nonnull %14, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %17 = load ptr, ptr @sheared, align 8, !tbaa !9
  %18 = load ptr, ptr @sorted, align 8, !tbaa !9
  %19 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %17, ptr noundef %18, ptr noundef %19, i64 noundef 0, ptr noundef %nn)
  %20 = load ptr, ptr @sheared, align 8, !tbaa !9
  %21 = load ptr, ptr @sorted, align 8, !tbaa !9
  br label %for.body3.us.1

for.body3.us.1:                                   ; preds = %for.body3.us.1, %for.cond1.for.end_crit_edge.us
  %i.051.us.1 = phi i64 [ 0, %for.cond1.for.end_crit_edge.us ], [ %inc.us.1, %for.body3.us.1 ]
  %arrayidx5.us.1 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.1
  %22 = load i64, ptr %arrayidx5.us.1, align 8, !tbaa !47
  %mul.us.1 = shl nsw i64 %22, 1
  %y.us.1 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.1, i32 1
  %23 = load i64, ptr %y.us.1, align 8, !tbaa !11
  %arrayidx10.us.1 = getelementptr inbounds %struct.point, ptr %20, i64 %i.051.us.1
  store i64 %mul.us.1, ptr %arrayidx10.us.1, align 8, !tbaa !47
  %24 = load i64, ptr %arrayidx5.us.1, align 8, !tbaa !47
  %add22.us.1 = sub i64 %23, %24
  %y24.us.1 = getelementptr inbounds %struct.point, ptr %20, i64 %i.051.us.1, i32 1
  store i64 %add22.us.1, ptr %y24.us.1, align 8, !tbaa !11
  %arrayidx25.us.1 = getelementptr inbounds i64, ptr %21, i64 %i.051.us.1
  store i64 %i.051.us.1, ptr %arrayidx25.us.1, align 8, !tbaa !5
  %inc.us.1 = add nuw nsw i64 %i.051.us.1, 1
  %exitcond.1.not = icmp eq i64 %inc.us.1, %n
  br i1 %exitcond.1.not, label %for.cond1.for.end_crit_edge.us.1, label %for.body3.us.1, !llvm.loop !48

for.cond1.for.end_crit_edge.us.1:                 ; preds = %for.body3.us.1
  tail call void @qsort(ptr noundef nonnull %21, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %25 = load ptr, ptr @sheared, align 8, !tbaa !9
  %26 = load ptr, ptr @sorted, align 8, !tbaa !9
  %27 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %25, ptr noundef %26, ptr noundef %27, i64 noundef 1, ptr noundef %nn)
  %28 = load ptr, ptr @sheared, align 8, !tbaa !9
  %29 = load ptr, ptr @sorted, align 8, !tbaa !9
  br label %for.body3.us.2

for.body3.us.2:                                   ; preds = %for.body3.us.2, %for.cond1.for.end_crit_edge.us.1
  %i.051.us.2 = phi i64 [ 0, %for.cond1.for.end_crit_edge.us.1 ], [ %inc.us.2, %for.body3.us.2 ]
  %arrayidx5.us.2 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.2
  %30 = load i64, ptr %arrayidx5.us.2, align 8, !tbaa !47
  %y.us.2 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.2, i32 1
  %31 = load i64, ptr %y.us.2, align 8, !tbaa !11
  %add.us.2 = add nsw i64 %31, %30
  %arrayidx10.us.2 = getelementptr inbounds %struct.point, ptr %28, i64 %i.051.us.2
  store i64 %add.us.2, ptr %arrayidx10.us.2, align 8, !tbaa !47
  %32 = load i64, ptr %arrayidx5.us.2, align 8, !tbaa !47
  %mul16.us.2 = mul nsw i64 %32, -2
  %y24.us.2 = getelementptr inbounds %struct.point, ptr %28, i64 %i.051.us.2, i32 1
  store i64 %mul16.us.2, ptr %y24.us.2, align 8, !tbaa !11
  %arrayidx25.us.2 = getelementptr inbounds i64, ptr %29, i64 %i.051.us.2
  store i64 %i.051.us.2, ptr %arrayidx25.us.2, align 8, !tbaa !5
  %inc.us.2 = add nuw nsw i64 %i.051.us.2, 1
  %exitcond.2.not = icmp eq i64 %inc.us.2, %n
  br i1 %exitcond.2.not, label %for.cond1.for.end_crit_edge.us.2, label %for.body3.us.2, !llvm.loop !48

for.cond1.for.end_crit_edge.us.2:                 ; preds = %for.body3.us.2
  tail call void @qsort(ptr noundef nonnull %29, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  %33 = load ptr, ptr @sheared, align 8, !tbaa !9
  %34 = load ptr, ptr @sorted, align 8, !tbaa !9
  %35 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %33, ptr noundef %34, ptr noundef %35, i64 noundef 2, ptr noundef %nn)
  %36 = load ptr, ptr @sheared, align 8, !tbaa !9
  %37 = load ptr, ptr @sorted, align 8, !tbaa !9
  br label %for.body3.us.3

for.body3.us.3:                                   ; preds = %for.body3.us.3, %for.cond1.for.end_crit_edge.us.2
  %i.051.us.3 = phi i64 [ 0, %for.cond1.for.end_crit_edge.us.2 ], [ %inc.us.3, %for.body3.us.3 ]
  %arrayidx5.us.3 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.3
  %y.us.3 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.051.us.3, i32 1
  %38 = load i64, ptr %y.us.3, align 8, !tbaa !11
  %mul9.us.3 = shl nsw i64 %38, 1
  %arrayidx10.us.3 = getelementptr inbounds %struct.point, ptr %36, i64 %i.051.us.3
  store i64 %mul9.us.3, ptr %arrayidx10.us.3, align 8, !tbaa !47
  %39 = load i64, ptr %arrayidx5.us.3, align 8, !tbaa !47
  %40 = add i64 %38, %39
  %add22.us.3 = sub i64 0, %40
  %y24.us.3 = getelementptr inbounds %struct.point, ptr %36, i64 %i.051.us.3, i32 1
  store i64 %add22.us.3, ptr %y24.us.3, align 8, !tbaa !11
  %arrayidx25.us.3 = getelementptr inbounds i64, ptr %37, i64 %i.051.us.3
  store i64 %i.051.us.3, ptr %arrayidx25.us.3, align 8, !tbaa !5
  %inc.us.3 = add nuw nsw i64 %i.051.us.3, 1
  %exitcond.3.not = icmp eq i64 %inc.us.3, %n
  br i1 %exitcond.3.not, label %for.cond1.for.end_crit_edge.us.3, label %for.body3.us.3, !llvm.loop !48

for.cond1.for.end_crit_edge.us.3:                 ; preds = %for.body3.us.3
  tail call void @qsort(ptr noundef nonnull %37, i64 noundef %n, i64 noundef 8, ptr noundef nonnull @compare_x) #14
  br label %for.end28

for.end28:                                        ; preds = %for.cond1.preheader.preheader, %for.cond1.for.end_crit_edge.us.3
  %41 = load ptr, ptr @sheared, align 8, !tbaa !9
  %42 = load ptr, ptr @sorted, align 8, !tbaa !9
  %43 = load ptr, ptr @aux, align 8, !tbaa !9
  tail call void @ne_sw_nearest_neighbors(i64 noundef 0, i64 noundef %n, ptr noundef %41, ptr noundef %42, ptr noundef %43, i64 noundef 3, ptr noundef %nn)
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define internal i32 @compare_x(ptr nocapture noundef readonly %i, ptr nocapture noundef readonly %j) #6 {
entry:
  %0 = load ptr, ptr @sheared, align 8, !tbaa !9
  %1 = load i64, ptr %i, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.point, ptr %0, i64 %1
  %2 = load i64, ptr %arrayidx, align 8, !tbaa !47
  %3 = load i64, ptr %j, align 8, !tbaa !5
  %arrayidx1 = getelementptr inbounds %struct.point, ptr %0, i64 %3
  %4 = load i64, ptr %arrayidx1, align 8, !tbaa !47
  %cmp = icmp eq i64 %2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %y = getelementptr inbounds %struct.point, ptr %0, i64 %1, i32 1
  %5 = load i64, ptr %y, align 8, !tbaa !11
  %y5 = getelementptr inbounds %struct.point, ptr %0, i64 %3, i32 1
  %6 = load i64, ptr %y5, align 8, !tbaa !11
  %sub = sub nsw i64 %5, %6
  br label %return

if.else:                                          ; preds = %entry
  %sub10 = sub nsw i64 %2, %4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0.in = phi i64 [ %sub, %if.then ], [ %sub10, %if.else ]
  %retval.0 = trunc i64 %retval.0.in to i32
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @octant(i64 %from.coerce0, i64 %from.coerce1, i64 %to.coerce0, i64 %to.coerce1) local_unnamed_addr #7 {
entry:
  %sub = sub nsw i64 %to.coerce0, %from.coerce0
  %sub3 = sub nsw i64 %to.coerce1, %from.coerce1
  %cmp = icmp sgt i64 %sub, 0
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  %cmp4.not = icmp ne i64 %to.coerce0, %from.coerce0
  %cond = sext i1 %cmp4.not to i64
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond5 = phi i64 [ %cond, %cond.false ], [ 1, %entry ]
  %cmp6 = icmp sgt i64 %sub3, 0
  br i1 %cmp6, label %cond.end11, label %cond.false8

cond.false8:                                      ; preds = %cond.end
  %cmp9.not = icmp ne i64 %to.coerce1, %from.coerce1
  %cond10 = sext i1 %cmp9.not to i64
  br label %cond.end11

cond.end11:                                       ; preds = %cond.end, %cond.false8
  %cond12 = phi i64 [ %cond10, %cond.false8 ], [ 1, %cond.end ]
  %add = add nsw i64 %sub3, %sub
  %cmp13 = icmp sgt i64 %add, 0
  br i1 %cmp13, label %cond.end21, label %cond.false16

cond.false16:                                     ; preds = %cond.end11
  %cmp18.not = icmp ne i64 %add, 0
  %cond20 = sext i1 %cmp18.not to i64
  br label %cond.end21

cond.end21:                                       ; preds = %cond.end11, %cond.false16
  %cond22 = phi i64 [ %cond20, %cond.false16 ], [ 1, %cond.end11 ]
  %cmp24 = icmp sgt i64 %sub, %sub3
  br i1 %cmp24, label %cond.end32, label %cond.false27

cond.false27:                                     ; preds = %cond.end21
  %cmp29.not = icmp ne i64 %sub, %sub3
  %cond31 = sext i1 %cmp29.not to i64
  br label %cond.end32

cond.end32:                                       ; preds = %cond.end21, %cond.false27
  %cond33 = phi i64 [ %cond31, %cond.false27 ], [ 1, %cond.end21 ]
  %mul = mul nsw i64 %cond12, %cond5
  %cmp36 = icmp slt i64 %sub3, 0
  %cmp38 = icmp eq i64 %to.coerce1, %from.coerce1
  %or.cond = select i1 %cmp38, i1 %cmp, i1 false
  %or.cond86 = select i1 %cmp36, i1 true, i1 %or.cond
  %spec.select87 = select i1 %or.cond86, i64 4, i64 0
  %cmp43 = icmp slt i64 %mul, 0
  %or.cond63 = select i1 %cmp43, i1 true, i1 %cmp38
  %add49 = or i64 %spec.select87, 2
  %spec.select = select i1 %or.cond63, i64 %add49, i64 %spec.select87
  %mul34 = mul nsw i64 %cond22, %mul
  %mul51 = mul nsw i64 %mul34, %cond33
  %cmp52 = icmp slt i64 %mul51, 0
  %or.cond64 = select i1 %cmp52, i1 true, i1 %cmp38
  %cmp58 = icmp eq i64 %to.coerce0, %from.coerce0
  %or.cond65 = select i1 %or.cond64, i1 true, i1 %cmp58
  %add61 = zext i1 %or.cond65 to i64
  %spec.select88 = or i64 %spec.select, %add61
  ret i64 %spec.select88
}

; Function Attrs: nounwind uwtable
define dso_local void @brute_force_nearest_neighbors(i64 noundef %n, ptr nocapture noundef readonly %pt, ptr nocapture noundef %nn) local_unnamed_addr #0 {
entry:
  %cmp98 = icmp sgt i64 %n, 0
  br i1 %cmp98, label %for.body10.preheader, label %for.end50

for.body10.preheader:                             ; preds = %entry
  %0 = shl nuw i64 %n, 6
  call void @llvm.memset.p0.i64(ptr align 8 %nn, i8 -1, i64 %0, i1 false), !tbaa !5
  br label %for.body10

for.cond8.loopexit:                               ; preds = %for.inc45, %for.body10
  %exitcond.not = icmp eq i64 %add, %n
  br i1 %exitcond.not, label %for.end50, label %for.body10, !llvm.loop !49

for.body10:                                       ; preds = %for.body10.preheader, %for.cond8.loopexit
  %i.1103 = phi i64 [ %add, %for.cond8.loopexit ], [ 0, %for.body10.preheader ]
  %add = add nuw nsw i64 %i.1103, 1
  %cmp12100 = icmp slt i64 %add, %n
  br i1 %cmp12100, label %for.body13.lr.ph, label %for.cond8.loopexit

for.body13.lr.ph:                                 ; preds = %for.body10
  %arrayidx14 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.1103
  %1 = getelementptr inbounds { i64, i64 }, ptr %arrayidx14, i64 0, i32 1
  br label %for.body13

for.body13:                                       ; preds = %for.body13.lr.ph, %for.inc45
  %j.0101 = phi i64 [ %add, %for.body13.lr.ph ], [ %inc46, %for.inc45 ]
  %arrayidx15 = getelementptr inbounds %struct.point, ptr %pt, i64 %j.0101
  %2 = load i64, ptr %arrayidx14, align 8
  %3 = load i64, ptr %1, align 8
  %4 = load i64, ptr %arrayidx15, align 8
  %5 = getelementptr inbounds { i64, i64 }, ptr %arrayidx15, i64 0, i32 1
  %6 = load i64, ptr %5, align 8
  %call = tail call i64 @dist(i64 %2, i64 %3, i64 %4, i64 %6) #14
  %7 = load i64, ptr %arrayidx14, align 8
  %8 = load i64, ptr %1, align 8
  %9 = load i64, ptr %arrayidx15, align 8
  %10 = load i64, ptr %5, align 8
  %sub.i = sub nsw i64 %9, %7
  %sub3.i = sub nsw i64 %10, %8
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %for.body13
  %cmp4.not.i = icmp ne i64 %9, %7
  %cond.i = sext i1 %cmp4.not.i to i64
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body13
  %cond5.i = phi i64 [ %cond.i, %cond.false.i ], [ 1, %for.body13 ]
  %cmp6.i = icmp sgt i64 %sub3.i, 0
  br i1 %cmp6.i, label %cond.end11.i, label %cond.false8.i

cond.false8.i:                                    ; preds = %cond.end.i
  %cmp9.not.i = icmp ne i64 %10, %8
  %cond10.i = sext i1 %cmp9.not.i to i64
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i
  %cond12.i = phi i64 [ %cond10.i, %cond.false8.i ], [ 1, %cond.end.i ]
  %add.i = add nsw i64 %sub3.i, %sub.i
  %cmp13.i = icmp sgt i64 %add.i, 0
  br i1 %cmp13.i, label %cond.end21.i, label %cond.false16.i

cond.false16.i:                                   ; preds = %cond.end11.i
  %cmp18.not.i = icmp ne i64 %add.i, 0
  %cond20.i = sext i1 %cmp18.not.i to i64
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.false16.i, %cond.end11.i
  %cond22.i = phi i64 [ %cond20.i, %cond.false16.i ], [ 1, %cond.end11.i ]
  %cmp24.i = icmp sgt i64 %sub.i, %sub3.i
  br i1 %cmp24.i, label %octant.exit, label %cond.false27.i

cond.false27.i:                                   ; preds = %cond.end21.i
  %cmp29.not.i = icmp ne i64 %sub.i, %sub3.i
  %cond31.i = sext i1 %cmp29.not.i to i64
  br label %octant.exit

octant.exit:                                      ; preds = %cond.end21.i, %cond.false27.i
  %cond33.i = phi i64 [ %cond31.i, %cond.false27.i ], [ 1, %cond.end21.i ]
  %mul.i = mul nsw i64 %cond12.i, %cond5.i
  %cmp36.i = icmp slt i64 %sub3.i, 0
  %cmp38.i = icmp eq i64 %10, %8
  %or.cond.i = select i1 %cmp38.i, i1 %cmp.i, i1 false
  %or.cond86.i = select i1 %cmp36.i, i1 true, i1 %or.cond.i
  %spec.select87.i = select i1 %or.cond86.i, i64 4, i64 0
  %cmp43.i = icmp slt i64 %mul.i, 0
  %or.cond63.i = select i1 %cmp43.i, i1 true, i1 %cmp38.i
  %add49.i = or i64 %spec.select87.i, 2
  %spec.select.i = select i1 %or.cond63.i, i64 %add49.i, i64 %spec.select87.i
  %mul34.i = mul nsw i64 %cond22.i, %mul.i
  %mul51.i = mul nsw i64 %mul34.i, %cond33.i
  %cmp52.i = icmp slt i64 %mul51.i, 0
  %or.cond64.i = select i1 %cmp52.i, i1 true, i1 %cmp38.i
  %cmp58.i = icmp eq i64 %9, %7
  %or.cond65.i = select i1 %or.cond64.i, i1 true, i1 %cmp58.i
  %add61.i = zext i1 %or.cond65.i to i64
  %spec.select88.i = or i64 %spec.select.i, %add61.i
  %arrayidx20 = getelementptr inbounds [8 x i64], ptr %nn, i64 %i.1103, i64 %spec.select88.i
  %11 = load i64, ptr %arrayidx20, align 8, !tbaa !5
  %cmp21 = icmp eq i64 %11, -1
  br i1 %cmp21, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %octant.exit
  %arrayidx25 = getelementptr inbounds %struct.point, ptr %pt, i64 %11
  %12 = load i64, ptr %arrayidx25, align 8
  %13 = getelementptr inbounds { i64, i64 }, ptr %arrayidx25, i64 0, i32 1
  %14 = load i64, ptr %13, align 8
  %call26 = tail call i64 @dist(i64 %7, i64 %8, i64 %12, i64 %14) #14
  %cmp27 = icmp slt i64 %call, %call26
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %octant.exit
  store i64 %j.0101, ptr %arrayidx20, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %add30 = add nuw nsw i64 %spec.select88.i, 4
  %rem = and i64 %add30, 7
  %arrayidx32 = getelementptr inbounds [8 x i64], ptr %nn, i64 %j.0101, i64 %rem
  %15 = load i64, ptr %arrayidx32, align 8, !tbaa !5
  %cmp33 = icmp eq i64 %15, -1
  br i1 %cmp33, label %if.then41, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %if.end
  %arrayidx38 = getelementptr inbounds %struct.point, ptr %pt, i64 %15
  %16 = load i64, ptr %arrayidx15, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %arrayidx38, align 8
  %19 = getelementptr inbounds { i64, i64 }, ptr %arrayidx38, i64 0, i32 1
  %20 = load i64, ptr %19, align 8
  %call39 = tail call i64 @dist(i64 %16, i64 %17, i64 %18, i64 %20) #14
  %cmp40 = icmp slt i64 %call, %call39
  br i1 %cmp40, label %if.then41, label %for.inc45

if.then41:                                        ; preds = %lor.lhs.false34, %if.end
  store i64 %i.1103, ptr %arrayidx32, align 8, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %lor.lhs.false34, %if.then41
  %inc46 = add nuw nsw i64 %j.0101, 1
  %cmp12 = icmp slt i64 %inc46, %n
  br i1 %cmp12, label %for.body13, label %for.cond8.loopexit, !llvm.loop !50

for.end50:                                        ; preds = %for.cond8.loopexit, %entry
  ret void
}

declare i64 @dist(i64, i64, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @check_nn(i64 noundef %n, ptr nocapture noundef readonly %pt, ptr nocapture noundef readonly %nn) local_unnamed_addr #0 {
entry:
  %call = tail call noalias ptr @calloc(i64 noundef %n, i64 noundef 64) #15
  tail call void @brute_force_nearest_neighbors(i64 noundef %n, ptr noundef %pt, ptr noundef %call)
  %cmp224 = icmp sgt i64 %n, 0
  br i1 %cmp224, label %for.cond1.preheader, label %for.end90

for.cond1.preheader:                              ; preds = %entry, %for.inc88
  %i.0225 = phi i64 [ %inc89, %for.inc88 ], [ 0, %entry ]
  %arrayidx17 = getelementptr inbounds %struct.point, ptr %pt, i64 %i.0225
  %0 = getelementptr inbounds { i64, i64 }, ptr %arrayidx17, i64 0, i32 1
  %y = getelementptr inbounds %struct.point, ptr %pt, i64 %i.0225, i32 1
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %oct.0222 = phi i64 [ 0, %for.cond1.preheader ], [ %inc, %for.inc ]
  %arrayidx4 = getelementptr inbounds [8 x i64], ptr %nn, i64 %i.0225, i64 %oct.0222
  %1 = load i64, ptr %arrayidx4, align 8, !tbaa !5
  %cmp5 = icmp eq i64 %1, -1
  %arrayidx7 = getelementptr inbounds [8 x i64], ptr %call, i64 %i.0225, i64 %oct.0222
  %2 = load i64, ptr %arrayidx7, align 8, !tbaa !5
  %cmp8 = icmp eq i64 %2, -1
  br i1 %cmp5, label %if.then, label %if.else10

if.then:                                          ; preds = %for.body3
  br i1 %cmp8, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 486, ptr noundef nonnull @__PRETTY_FUNCTION__.check_nn) #16
  unreachable

if.else10:                                        ; preds = %for.body3
  br i1 %cmp8, label %if.else15, label %if.end16

if.else15:                                        ; preds = %if.else10
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, i32 noundef 490, ptr noundef nonnull @__PRETTY_FUNCTION__.check_nn) #16
  unreachable

if.end16:                                         ; preds = %if.else10
  %arrayidx20 = getelementptr inbounds %struct.point, ptr %pt, i64 %1
  %3 = load i64, ptr %arrayidx17, align 8
  %4 = load i64, ptr %0, align 8
  %5 = load i64, ptr %arrayidx20, align 8
  %6 = getelementptr inbounds { i64, i64 }, ptr %arrayidx20, i64 0, i32 1
  %7 = load i64, ptr %6, align 8
  %sub.i = sub nsw i64 %5, %3
  %sub3.i = sub nsw i64 %7, %4
  %cmp.i = icmp sgt i64 %sub.i, 0
  br i1 %cmp.i, label %cond.end.i, label %cond.false.i

cond.false.i:                                     ; preds = %if.end16
  %cmp4.not.i = icmp ne i64 %5, %3
  %cond.i = sext i1 %cmp4.not.i to i64
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.end16
  %cond5.i = phi i64 [ %cond.i, %cond.false.i ], [ 1, %if.end16 ]
  %cmp6.i = icmp sgt i64 %sub3.i, 0
  br i1 %cmp6.i, label %cond.end11.i, label %cond.false8.i

cond.false8.i:                                    ; preds = %cond.end.i
  %cmp9.not.i = icmp ne i64 %7, %4
  %cond10.i = sext i1 %cmp9.not.i to i64
  br label %cond.end11.i

cond.end11.i:                                     ; preds = %cond.false8.i, %cond.end.i
  %cond12.i = phi i64 [ %cond10.i, %cond.false8.i ], [ 1, %cond.end.i ]
  %add.i = add nsw i64 %sub3.i, %sub.i
  %cmp13.i = icmp sgt i64 %add.i, 0
  br i1 %cmp13.i, label %cond.end21.i, label %cond.false16.i

cond.false16.i:                                   ; preds = %cond.end11.i
  %cmp18.not.i = icmp ne i64 %add.i, 0
  %cond20.i = sext i1 %cmp18.not.i to i64
  br label %cond.end21.i

cond.end21.i:                                     ; preds = %cond.false16.i, %cond.end11.i
  %cond22.i = phi i64 [ %cond20.i, %cond.false16.i ], [ 1, %cond.end11.i ]
  %cmp24.i = icmp sgt i64 %sub.i, %sub3.i
  br i1 %cmp24.i, label %octant.exit, label %cond.false27.i

cond.false27.i:                                   ; preds = %cond.end21.i
  %cmp29.not.i = icmp ne i64 %sub.i, %sub3.i
  %cond31.i = sext i1 %cmp29.not.i to i64
  br label %octant.exit

octant.exit:                                      ; preds = %cond.end21.i, %cond.false27.i
  %cond33.i = phi i64 [ %cond31.i, %cond.false27.i ], [ 1, %cond.end21.i ]
  %mul.i = mul nsw i64 %cond12.i, %cond5.i
  %cmp36.i = icmp slt i64 %sub3.i, 0
  %cmp38.i = icmp eq i64 %7, %4
  %or.cond.i = select i1 %cmp38.i, i1 %cmp.i, i1 false
  %or.cond86.i = select i1 %cmp36.i, i1 true, i1 %or.cond.i
  %spec.select87.i = select i1 %or.cond86.i, i64 4, i64 0
  %cmp43.i = icmp slt i64 %mul.i, 0
  %or.cond63.i = select i1 %cmp43.i, i1 true, i1 %cmp38.i
  %add49.i = or i64 %spec.select87.i, 2
  %spec.select.i = select i1 %or.cond63.i, i64 %add49.i, i64 %spec.select87.i
  %mul34.i = mul nsw i64 %cond22.i, %mul.i
  %mul51.i = mul nsw i64 %mul34.i, %cond33.i
  %cmp52.i = icmp slt i64 %mul51.i, 0
  %or.cond64.i = select i1 %cmp52.i, i1 true, i1 %cmp38.i
  %cmp58.i = icmp eq i64 %5, %3
  %or.cond65.i = select i1 %or.cond64.i, i1 true, i1 %cmp58.i
  %add61.i = zext i1 %or.cond65.i to i64
  %spec.select88.i = or i64 %spec.select.i, %add61.i
  %cmp22.not = icmp eq i64 %spec.select88.i, %oct.0222
  br i1 %cmp22.not, label %if.end38, label %if.then23

if.then23:                                        ; preds = %octant.exit
  %call24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i64 noundef %oct.0222)
  %8 = load i64, ptr %arrayidx17, align 8, !tbaa !47
  %9 = load i64, ptr %y, align 8, !tbaa !11
  %call27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %i.0225, i64 noundef %8, i64 noundef %9)
  %10 = load i64, ptr %arrayidx4, align 8, !tbaa !5
  %arrayidx30 = getelementptr inbounds %struct.point, ptr %pt, i64 %10
  %11 = load i64, ptr %arrayidx30, align 8, !tbaa !47
  %y33 = getelementptr inbounds %struct.point, ptr %pt, i64 %10, i32 1
  %12 = load i64, ptr %y33, align 8
  %13 = load i64, ptr %arrayidx17, align 8
  %14 = load i64, ptr %0, align 8
  %call36 = tail call i64 @dist(i64 %13, i64 %14, i64 %11, i64 %12) #14
  %call37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %10, i64 noundef %11, i64 noundef %12, i64 noundef %call36)
  %.pre = load i64, ptr %arrayidx17, align 8
  %.pre227 = load i64, ptr %0, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then23, %octant.exit
  %15 = phi i64 [ %.pre227, %if.then23 ], [ %4, %octant.exit ]
  %16 = phi i64 [ %.pre, %if.then23 ], [ %3, %octant.exit ]
  %arrayidx42 = getelementptr inbounds %struct.point, ptr %pt, i64 %2
  %17 = load i64, ptr %arrayidx42, align 8
  %18 = getelementptr inbounds { i64, i64 }, ptr %arrayidx42, i64 0, i32 1
  %19 = load i64, ptr %18, align 8
  %sub.i177 = sub nsw i64 %17, %16
  %sub3.i178 = sub nsw i64 %19, %15
  %cmp.i179 = icmp sgt i64 %sub.i177, 0
  br i1 %cmp.i179, label %cond.end.i185, label %cond.false.i182

cond.false.i182:                                  ; preds = %if.end38
  %cmp4.not.i180 = icmp ne i64 %17, %16
  %cond.i181 = sext i1 %cmp4.not.i180 to i64
  br label %cond.end.i185

cond.end.i185:                                    ; preds = %cond.false.i182, %if.end38
  %cond5.i183 = phi i64 [ %cond.i181, %cond.false.i182 ], [ 1, %if.end38 ]
  %cmp6.i184 = icmp sgt i64 %sub3.i178, 0
  br i1 %cmp6.i184, label %cond.end11.i192, label %cond.false8.i188

cond.false8.i188:                                 ; preds = %cond.end.i185
  %cmp9.not.i186 = icmp ne i64 %19, %15
  %cond10.i187 = sext i1 %cmp9.not.i186 to i64
  br label %cond.end11.i192

cond.end11.i192:                                  ; preds = %cond.false8.i188, %cond.end.i185
  %cond12.i189 = phi i64 [ %cond10.i187, %cond.false8.i188 ], [ 1, %cond.end.i185 ]
  %add.i190 = add nsw i64 %sub3.i178, %sub.i177
  %cmp13.i191 = icmp sgt i64 %add.i190, 0
  br i1 %cmp13.i191, label %cond.end21.i198, label %cond.false16.i195

cond.false16.i195:                                ; preds = %cond.end11.i192
  %cmp18.not.i193 = icmp ne i64 %add.i190, 0
  %cond20.i194 = sext i1 %cmp18.not.i193 to i64
  br label %cond.end21.i198

cond.end21.i198:                                  ; preds = %cond.false16.i195, %cond.end11.i192
  %cond22.i196 = phi i64 [ %cond20.i194, %cond.false16.i195 ], [ 1, %cond.end11.i192 ]
  %cmp24.i197 = icmp sgt i64 %sub.i177, %sub3.i178
  br i1 %cmp24.i197, label %octant.exit221, label %cond.false27.i201

cond.false27.i201:                                ; preds = %cond.end21.i198
  %cmp29.not.i199 = icmp ne i64 %sub.i177, %sub3.i178
  %cond31.i200 = sext i1 %cmp29.not.i199 to i64
  br label %octant.exit221

octant.exit221:                                   ; preds = %cond.end21.i198, %cond.false27.i201
  %cond33.i202 = phi i64 [ %cond31.i200, %cond.false27.i201 ], [ 1, %cond.end21.i198 ]
  %mul.i203 = mul nsw i64 %cond12.i189, %cond5.i183
  %cmp36.i204 = icmp slt i64 %sub3.i178, 0
  %cmp38.i205 = icmp eq i64 %19, %15
  %or.cond.i206 = select i1 %cmp38.i205, i1 %cmp.i179, i1 false
  %or.cond86.i207 = select i1 %cmp36.i204, i1 true, i1 %or.cond.i206
  %spec.select87.i208 = select i1 %or.cond86.i207, i64 4, i64 0
  %cmp43.i209 = icmp slt i64 %mul.i203, 0
  %or.cond63.i210 = select i1 %cmp43.i209, i1 true, i1 %cmp38.i205
  %add49.i211 = or i64 %spec.select87.i208, 2
  %spec.select.i212 = select i1 %or.cond63.i210, i64 %add49.i211, i64 %spec.select87.i208
  %mul34.i213 = mul nsw i64 %cond22.i196, %mul.i203
  %mul51.i214 = mul nsw i64 %mul34.i213, %cond33.i202
  %cmp52.i215 = icmp slt i64 %mul51.i214, 0
  %or.cond64.i216 = select i1 %cmp52.i215, i1 true, i1 %cmp38.i205
  %cmp58.i217 = icmp eq i64 %17, %16
  %or.cond65.i218 = select i1 %or.cond64.i216, i1 true, i1 %cmp58.i217
  %add61.i219 = zext i1 %or.cond65.i218 to i64
  %spec.select88.i220 = or i64 %spec.select.i212, %add61.i219
  %cmp44 = icmp eq i64 %spec.select88.i220, %oct.0222
  br i1 %cmp44, label %if.end47, label %if.else46

if.else46:                                        ; preds = %octant.exit221
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 502, ptr noundef nonnull @__PRETTY_FUNCTION__.check_nn) #16
  unreachable

if.end47:                                         ; preds = %octant.exit221
  %20 = load i64, ptr %arrayidx4, align 8, !tbaa !5
  %arrayidx51 = getelementptr inbounds %struct.point, ptr %pt, i64 %20
  %21 = load i64, ptr %arrayidx51, align 8
  %22 = getelementptr inbounds { i64, i64 }, ptr %arrayidx51, i64 0, i32 1
  %23 = load i64, ptr %22, align 8
  %call52 = tail call i64 @dist(i64 %16, i64 %15, i64 %21, i64 %23) #14
  %24 = load i64, ptr %arrayidx17, align 8
  %25 = load i64, ptr %0, align 8
  %26 = load i64, ptr %arrayidx42, align 8
  %27 = load i64, ptr %18, align 8
  %call57 = tail call i64 @dist(i64 %24, i64 %25, i64 %26, i64 %27) #14
  %cmp58.not = icmp eq i64 %call52, %call57
  br i1 %cmp58.not, label %for.inc, label %if.then59

if.then59:                                        ; preds = %if.end47
  %call60 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %oct.0222)
  %28 = load i64, ptr %arrayidx17, align 8, !tbaa !47
  %29 = load i64, ptr %y, align 8, !tbaa !11
  %call65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %i.0225, i64 noundef %28, i64 noundef %29)
  %30 = load i64, ptr %arrayidx4, align 8, !tbaa !5
  %arrayidx68 = getelementptr inbounds %struct.point, ptr %pt, i64 %30
  %31 = load i64, ptr %arrayidx68, align 8, !tbaa !47
  %y71 = getelementptr inbounds %struct.point, ptr %pt, i64 %30, i32 1
  %32 = load i64, ptr %y71, align 8
  %33 = load i64, ptr %arrayidx17, align 8
  %34 = load i64, ptr %0, align 8
  %call74 = tail call i64 @dist(i64 %33, i64 %34, i64 %31, i64 %32) #14
  %call75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %30, i64 noundef %31, i64 noundef %32, i64 noundef %call74)
  %35 = load i64, ptr %arrayidx42, align 8, !tbaa !47
  %y81 = getelementptr inbounds %struct.point, ptr %pt, i64 %2, i32 1
  %36 = load i64, ptr %y81, align 8
  %37 = load i64, ptr %arrayidx17, align 8
  %38 = load i64, ptr %0, align 8
  %call84 = tail call i64 @dist(i64 %37, i64 %38, i64 %35, i64 %36) #14
  %call85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %2, i64 noundef %35, i64 noundef %36, i64 noundef %call84)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.then59, %if.end47
  %inc = add nuw nsw i64 %oct.0222, 1
  %exitcond.not = icmp eq i64 %inc, 8
  br i1 %exitcond.not, label %for.inc88, label %for.body3, !llvm.loop !51

for.inc88:                                        ; preds = %for.inc
  %inc89 = add nuw nsw i64 %i.0225, 1
  %exitcond226.not = icmp eq i64 %inc89, %n
  br i1 %exitcond226.not, label %for.end90, label %for.cond1.preheader, !llvm.loop !52

for.end90:                                        ; preds = %for.inc88, %entry
  tail call void @free(ptr noundef %call) #14
  ret void
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"point", !6, i64 0, !6, i64 8}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !14, !26}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !14}
!30 = !{!31}
!31 = distinct !{!31, !32}
!32 = distinct !{!32, !"LVerDomain"}
!33 = !{!34}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !14, !26}
!36 = distinct !{!36, !28}
!37 = distinct !{!37, !14, !26}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !14, !26}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !14, !26}
!46 = distinct !{!46, !14, !26}
!47 = !{!12, !6, i64 0}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
