; ModuleID = 'scalar_lbm-before.ll'
source_filename = "lbm-src/scalar_lbm.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"LBM_allocateGrid: could not allocate %.1f MByte\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [148 x i8] c"LBM_showGridStatistics:\0A\09nObstacleCells: %7i nAccelCells: %7i nFluidCells: %7i\0A\09minRho: %8.6f maxRho: %8.6f Mass: %e\0A\09minU  : %8.6f maxU  : %8.6f\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%e %e %e\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"LBM_compareVelocityField: maxDiff = %e  \0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @LBM_allocateGrid(ptr nocapture noundef writeonly %ptr) local_unnamed_addr #0 {
entry:
  %call = tail call noalias dereferenceable_or_null(214400000) ptr @malloc(i64 noundef 214400000) #13
  store ptr %call, ptr %ptr, align 8, !tbaa !5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef 0x40698EF800000000)
  tail call void @exit(i32 noundef 1) #14
  unreachable

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds double, ptr %call, i64 400000
  store ptr %add.ptr, ptr %ptr, align 8, !tbaa !5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @LBM_freeGrid(ptr nocapture noundef %ptr) local_unnamed_addr #5 {
entry:
  %0 = load ptr, ptr %ptr, align 8, !tbaa !5
  %add.ptr = getelementptr inbounds double, ptr %0, i64 -400000
  tail call void @free(ptr noundef nonnull %add.ptr) #15
  store ptr null, ptr %ptr, align 8, !tbaa !5
  ret void
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind writeonly uwtable
define dso_local void @LBM_initializeGrid(ptr nocapture noundef writeonly %grid) local_unnamed_addr #7 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ -400000, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %indvars.iv
  store double 0x3FD5555555555555, ptr %arrayidx, align 8, !tbaa !9
  %0 = or i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds double, ptr %grid, i64 %0
  store double 0x3FAC71C71C71C71C, ptr %arrayidx3, align 8, !tbaa !9
  %1 = or i64 %indvars.iv, 2
  %arrayidx6 = getelementptr inbounds double, ptr %grid, i64 %1
  store double 0x3FAC71C71C71C71C, ptr %arrayidx6, align 8, !tbaa !9
  %2 = or i64 %indvars.iv, 3
  %arrayidx9 = getelementptr inbounds double, ptr %grid, i64 %2
  store double 0x3FAC71C71C71C71C, ptr %arrayidx9, align 8, !tbaa !9
  %3 = add nsw i64 %indvars.iv, 4
  %arrayidx12 = getelementptr inbounds double, ptr %grid, i64 %3
  store double 0x3FAC71C71C71C71C, ptr %arrayidx12, align 8, !tbaa !9
  %4 = add nsw i64 %indvars.iv, 5
  %arrayidx15 = getelementptr inbounds double, ptr %grid, i64 %4
  store double 0x3FAC71C71C71C71C, ptr %arrayidx15, align 8, !tbaa !9
  %5 = add nsw i64 %indvars.iv, 6
  %arrayidx18 = getelementptr inbounds double, ptr %grid, i64 %5
  store double 0x3FAC71C71C71C71C, ptr %arrayidx18, align 8, !tbaa !9
  %6 = add nsw i64 %indvars.iv, 7
  %arrayidx21 = getelementptr inbounds double, ptr %grid, i64 %6
  store double 0x3F9C71C71C71C71C, ptr %arrayidx21, align 8, !tbaa !9
  %7 = add nsw i64 %indvars.iv, 8
  %arrayidx24 = getelementptr inbounds double, ptr %grid, i64 %7
  store double 0x3F9C71C71C71C71C, ptr %arrayidx24, align 8, !tbaa !9
  %8 = add nsw i64 %indvars.iv, 9
  %arrayidx27 = getelementptr inbounds double, ptr %grid, i64 %8
  store double 0x3F9C71C71C71C71C, ptr %arrayidx27, align 8, !tbaa !9
  %9 = add nsw i64 %indvars.iv, 10
  %arrayidx30 = getelementptr inbounds double, ptr %grid, i64 %9
  store double 0x3F9C71C71C71C71C, ptr %arrayidx30, align 8, !tbaa !9
  %10 = add nsw i64 %indvars.iv, 11
  %arrayidx33 = getelementptr inbounds double, ptr %grid, i64 %10
  store double 0x3F9C71C71C71C71C, ptr %arrayidx33, align 8, !tbaa !9
  %11 = add nsw i64 %indvars.iv, 12
  %arrayidx36 = getelementptr inbounds double, ptr %grid, i64 %11
  store double 0x3F9C71C71C71C71C, ptr %arrayidx36, align 8, !tbaa !9
  %12 = add nsw i64 %indvars.iv, 13
  %arrayidx39 = getelementptr inbounds double, ptr %grid, i64 %12
  store double 0x3F9C71C71C71C71C, ptr %arrayidx39, align 8, !tbaa !9
  %13 = add nsw i64 %indvars.iv, 14
  %arrayidx42 = getelementptr inbounds double, ptr %grid, i64 %13
  store double 0x3F9C71C71C71C71C, ptr %arrayidx42, align 8, !tbaa !9
  %14 = add nsw i64 %indvars.iv, 15
  %arrayidx45 = getelementptr inbounds double, ptr %grid, i64 %14
  store double 0x3F9C71C71C71C71C, ptr %arrayidx45, align 8, !tbaa !9
  %15 = add nsw i64 %indvars.iv, 16
  %arrayidx48 = getelementptr inbounds double, ptr %grid, i64 %15
  store double 0x3F9C71C71C71C71C, ptr %arrayidx48, align 8, !tbaa !9
  %16 = add nsw i64 %indvars.iv, 17
  %arrayidx51 = getelementptr inbounds double, ptr %grid, i64 %16
  store double 0x3F9C71C71C71C71C, ptr %arrayidx51, align 8, !tbaa !9
  %17 = add nsw i64 %indvars.iv, 18
  %arrayidx54 = getelementptr inbounds double, ptr %grid, i64 %17
  store double 0x3F9C71C71C71C71C, ptr %arrayidx54, align 8, !tbaa !9
  %18 = add nsw i64 %indvars.iv, 19
  %arrayidx57 = getelementptr inbounds double, ptr %grid, i64 %18
  store i32 0, ptr %arrayidx57, align 4, !tbaa !11
  %indvars.iv.next = add nsw i64 %indvars.iv, 20
  %cmp = icmp slt i64 %indvars.iv, 26399980
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !13

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @LBM_swapGrids(ptr nocapture noundef %grid1, ptr nocapture noundef %grid2) local_unnamed_addr #8 {
entry:
  %0 = load ptr, ptr %grid1, align 8, !tbaa !5
  %1 = load ptr, ptr %grid2, align 8, !tbaa !5
  store ptr %1, ptr %grid1, align 8, !tbaa !5
  store ptr %0, ptr %grid2, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LBM_loadObstacleFile(ptr nocapture noundef %grid, ptr nocapture noundef readonly %filename) local_unnamed_addr #9 {
entry:
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull @.str.1)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end17, %entry
  %indvars.iv46 = phi i64 [ 0, %entry ], [ %indvars.iv.next47, %for.end17 ]
  %0 = mul nuw nsw i64 %indvars.iv46, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end, %for.cond1.preheader
  %indvars.iv40 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next41, %for.end ]
  %1 = mul nuw nsw i64 %indvars.iv40, 100
  %2 = add nuw nsw i64 %1, %0
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %call7 = tail call i32 @fgetc(ptr noundef %call)
  %cmp8.not = icmp eq i32 %call7, 46
  br i1 %cmp8.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body6
  %3 = add nuw nsw i64 %2, %indvars.iv
  %4 = mul nuw nsw i64 %3, 20
  %5 = add nuw nsw i64 %4, 19
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %5
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %or = or i32 %6, 1
  store i32 %or, ptr %arrayidx, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.end, label %for.body6, !llvm.loop !16

for.end:                                          ; preds = %for.inc
  %call14 = tail call i32 @fgetc(ptr noundef %call)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next41, 100
  br i1 %exitcond45.not, label %for.end17, label %for.cond4.preheader, !llvm.loop !17

for.end17:                                        ; preds = %for.end
  %call18 = tail call i32 @fgetc(ptr noundef %call)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, 130
  br i1 %exitcond50.not, label %for.end21, label %for.cond1.preheader, !llvm.loop !18

for.end21:                                        ; preds = %for.end17
  %call22 = tail call i32 @fclose(ptr noundef %call)
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_initializeSpecialCellsForLDC(ptr nocapture noundef %grid) local_unnamed_addr #10 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc48, %entry
  %indvars.iv144 = phi i64 [ -2, %entry ], [ %indvars.iv.next145, %for.inc48 ]
  %0 = icmp eq i64 %indvars.iv144, 1
  %1 = icmp eq i64 %indvars.iv144, 128
  %or.cond55 = or i1 %0, %1
  %2 = mul nsw i64 %indvars.iv144, 10000
  %3 = trunc i64 %indvars.iv144 to i32
  switch i32 %3, label %for.cond4.preheader.preheader [
    i32 129, label %for.cond4.preheader.us.preheader
    i32 0, label %for.cond4.preheader.us.preheader
  ]

for.cond4.preheader.preheader:                    ; preds = %for.cond1.preheader
  br label %for.cond4.preheader

for.cond4.preheader.us.preheader:                 ; preds = %for.cond1.preheader, %for.cond1.preheader
  br label %for.cond4.preheader.us

for.cond4.preheader.us:                           ; preds = %for.inc45.split.us.us, %for.cond4.preheader.us.preheader
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc45.split.us.us ], [ 0, %for.cond4.preheader.us.preheader ]
  %4 = mul nuw nsw i64 %indvars.iv106, 100
  %5 = add nsw i64 %4, %2
  br label %for.body6.us.us

for.body6.us.us:                                  ; preds = %for.body6.us.us, %for.cond4.preheader.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us.us ], [ 0, %for.cond4.preheader.us ]
  %6 = add nsw i64 %5, %indvars.iv
  %7 = mul nsw i64 %6, 20
  %8 = add nsw i64 %7, 19
  %arrayidx.us.us = getelementptr inbounds double, ptr %grid, i64 %8
  %9 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !11
  %or.us.us = or i32 %9, 1
  store i32 %or.us.us, ptr %arrayidx.us.us, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc45.split.us.us, label %for.body6.us.us, !llvm.loop !19

for.inc45.split.us.us:                            ; preds = %for.body6.us.us
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next107, 100
  br i1 %exitcond111.not, label %for.inc48.loopexit3, label %for.cond4.preheader.us, !llvm.loop !20

for.cond4.preheader:                              ; preds = %for.cond4.preheader.preheader, %for.inc45
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.inc45 ], [ 0, %for.cond4.preheader.preheader ]
  %10 = mul nuw nsw i64 %indvars.iv136, 100
  %11 = add nsw i64 %10, %2
  %12 = trunc i64 %indvars.iv136 to i32
  switch i32 %12, label %for.cond4.preheader.split [
    i32 99, label %for.body6.us.preheader
    i32 0, label %for.body6.us.preheader
  ]

for.body6.us.preheader:                           ; preds = %for.cond4.preheader, %for.cond4.preheader
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us, %for.body6.us.preheader
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body6.us ], [ 0, %for.body6.us.preheader ]
  %13 = add nsw i64 %11, %indvars.iv112
  %14 = mul nsw i64 %13, 20
  %15 = add nsw i64 %14, 19
  %arrayidx.us = getelementptr inbounds double, ptr %grid, i64 %15
  %16 = load i32, ptr %arrayidx.us, align 4, !tbaa !11
  %or.us = or i32 %16, 1
  store i32 %or.us, ptr %arrayidx.us, align 4, !tbaa !11
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, 100
  br i1 %exitcond118.not, label %for.inc45.loopexit2, label %for.body6.us, !llvm.loop !19

for.cond4.preheader.split:                        ; preds = %for.cond4.preheader
  %17 = trunc i64 %indvars.iv136 to i32
  %18 = add i32 %17, -2
  %19 = icmp ult i32 %18, 96
  %20 = and i1 %19, %or.cond55
  br i1 %20, label %for.body6.preheader, label %for.body6.us85.preheader

for.body6.us85.preheader:                         ; preds = %for.cond4.preheader.split
  br label %for.body6.us85

for.body6.preheader:                              ; preds = %for.cond4.preheader.split
  br label %for.body6

for.body6.us85:                                   ; preds = %for.body6.us85.preheader, %for.inc.us94
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc.us94 ], [ 0, %for.body6.us85.preheader ]
  %21 = trunc i64 %indvars.iv119 to i32
  switch i32 %21, label %for.inc.us94 [
    i32 99, label %if.then.us87
    i32 0, label %if.then.us87
  ]

if.then.us87:                                     ; preds = %for.body6.us85, %for.body6.us85
  %22 = add nsw i64 %11, %indvars.iv119
  %23 = mul nsw i64 %22, 20
  %24 = add nsw i64 %23, 19
  %arrayidx.us92 = getelementptr inbounds double, ptr %grid, i64 %24
  %25 = load i32, ptr %arrayidx.us92, align 4, !tbaa !11
  %or.us93 = or i32 %25, 1
  store i32 %or.us93, ptr %arrayidx.us92, align 4, !tbaa !11
  br label %for.inc.us94

for.inc.us94:                                     ; preds = %if.then.us87, %for.body6.us85
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next120, 100
  br i1 %exitcond125.not, label %for.inc45.loopexit1, label %for.body6.us85, !llvm.loop !19

for.body6:                                        ; preds = %for.body6.preheader, %for.inc
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.inc ], [ 0, %for.body6.preheader ]
  %26 = trunc i64 %indvars.iv126 to i32
  switch i32 %26, label %if.else [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %for.body6, %for.body6
  %27 = add nsw i64 %11, %indvars.iv126
  %28 = mul nsw i64 %27, 20
  %29 = add nsw i64 %28, 19
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body6
  %30 = trunc i64 %indvars.iv126 to i32
  %31 = add i32 %30, -2
  %32 = icmp ult i32 %31, 96
  br i1 %32, label %if.then32, label %for.inc

if.then32:                                        ; preds = %if.else
  %33 = add nsw i64 %11, %indvars.iv126
  %34 = mul i64 %33, 20
  %35 = add i64 %34, 19
  %idxprom4182 = and i64 %35, 4294967295
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then32, %if.then
  %idxprom4182.sink = phi i64 [ %idxprom4182, %if.then32 ], [ %29, %if.then ]
  %.sink154 = phi i32 [ 2, %if.then32 ], [ 1, %if.then ]
  %arrayidx42 = getelementptr inbounds double, ptr %grid, i64 %idxprom4182.sink
  %36 = load i32, ptr %arrayidx42, align 4, !tbaa !11
  %or = or i32 %36, %.sink154
  store i32 %or, ptr %arrayidx42, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next127, 100
  br i1 %exitcond135.not, label %for.inc45.loopexit, label %for.body6, !llvm.loop !19

for.inc45.loopexit:                               ; preds = %for.inc
  br label %for.inc45

for.inc45.loopexit1:                              ; preds = %for.inc.us94
  br label %for.inc45

for.inc45.loopexit2:                              ; preds = %for.body6.us
  br label %for.inc45

for.inc45:                                        ; preds = %for.inc45.loopexit2, %for.inc45.loopexit1, %for.inc45.loopexit
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next137, 100
  br i1 %exitcond143.not, label %for.inc48.loopexit, label %for.cond4.preheader, !llvm.loop !20

for.inc48.loopexit:                               ; preds = %for.inc45
  br label %for.inc48

for.inc48.loopexit3:                              ; preds = %for.inc45.split.us.us
  br label %for.inc48

for.inc48:                                        ; preds = %for.inc48.loopexit3, %for.inc48.loopexit
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next145, 132
  br i1 %exitcond150.not, label %for.end50, label %for.cond1.preheader, !llvm.loop !21

for.end50:                                        ; preds = %for.inc48
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_initializeSpecialCellsForChannel(ptr nocapture noundef %grid) local_unnamed_addr #10 {
entry:
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc46, %entry
  %indvars.iv94 = phi i64 [ -2, %entry ], [ %indvars.iv.next95, %for.inc46 ]
  %0 = mul nsw i64 %indvars.iv94, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc43, %for.cond1.preheader
  %indvars.iv88 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next89, %for.inc43 ]
  %1 = mul nuw nsw i64 %indvars.iv88, 100
  %2 = add nsw i64 %1, %0
  %3 = trunc i64 %indvars.iv88 to i32
  switch i32 %3, label %for.body6.preheader [
    i32 99, label %for.body6.us.preheader
    i32 0, label %for.body6.us.preheader
  ]

for.body6.preheader:                              ; preds = %for.cond4.preheader
  br label %for.body6

for.body6.us.preheader:                           ; preds = %for.cond4.preheader, %for.cond4.preheader
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us, %for.body6.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us ], [ 0, %for.body6.us.preheader ]
  %4 = add nsw i64 %2, %indvars.iv
  %5 = mul nsw i64 %4, 20
  %6 = add nsw i64 %5, 19
  %arrayidx.us = getelementptr inbounds double, ptr %grid, i64 %6
  %7 = load i32, ptr %arrayidx.us, align 4, !tbaa !11
  %or.us = or i32 %7, 1
  store i32 %or.us, ptr %arrayidx.us, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc43.loopexit1, label %for.body6.us, !llvm.loop !22

for.body6:                                        ; preds = %for.body6.preheader, %for.inc
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc ], [ 0, %for.body6.preheader ]
  %8 = trunc i64 %indvars.iv81 to i32
  switch i32 %8, label %for.inc [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %for.body6, %for.body6
  %9 = add nsw i64 %2, %indvars.iv81
  %10 = mul nsw i64 %9, 20
  %11 = add nsw i64 %10, 19
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %11
  %12 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %or = or i32 %12, 1
  store i32 %or, ptr %arrayidx, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body6
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next82, 100
  br i1 %exitcond87.not, label %for.inc43.loopexit, label %for.body6, !llvm.loop !22

for.inc43.loopexit:                               ; preds = %for.inc
  br label %for.inc43

for.inc43.loopexit1:                              ; preds = %for.body6.us
  br label %for.inc43

for.inc43:                                        ; preds = %for.inc43.loopexit1, %for.inc43.loopexit
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next89, 100
  br i1 %exitcond93.not, label %for.inc46, label %for.cond4.preheader, !llvm.loop !23

for.inc46:                                        ; preds = %for.inc43
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, 132
  br i1 %exitcond98.not, label %for.end48, label %for.cond1.preheader, !llvm.loop !24

for.end48:                                        ; preds = %for.inc46
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_performStreamCollideBGK(ptr noundef readonly %srcGrid, ptr noundef writeonly %dstGrid) local_unnamed_addr #10 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = add nuw nsw i64 %indvars.iv, 19
  %arrayidx = getelementptr inbounds double, ptr %srcGrid, i64 %0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !11
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx117 = getelementptr inbounds double, ptr %srcGrid, i64 %indvars.iv
  %2 = load double, ptr %arrayidx117, align 8, !tbaa !9
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx6 = getelementptr inbounds double, ptr %dstGrid, i64 %indvars.iv
  store double %2, ptr %arrayidx6, align 8, !tbaa !9
  %3 = or i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds double, ptr %srcGrid, i64 %3
  %4 = load double, ptr %arrayidx9, align 8, !tbaa !9
  %5 = add nsw i64 %indvars.iv, -1998
  %arrayidx12 = getelementptr inbounds double, ptr %dstGrid, i64 %5
  store double %4, ptr %arrayidx12, align 8, !tbaa !9
  %6 = or i64 %indvars.iv, 2
  %arrayidx15 = getelementptr inbounds double, ptr %srcGrid, i64 %6
  %7 = load double, ptr %arrayidx15, align 8, !tbaa !9
  %8 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx18 = getelementptr inbounds double, ptr %dstGrid, i64 %8
  store double %7, ptr %arrayidx18, align 8, !tbaa !9
  %9 = or i64 %indvars.iv, 3
  %arrayidx21 = getelementptr inbounds double, ptr %srcGrid, i64 %9
  %10 = load double, ptr %arrayidx21, align 8, !tbaa !9
  %11 = add nsw i64 %indvars.iv, -16
  %arrayidx24 = getelementptr inbounds double, ptr %dstGrid, i64 %11
  store double %10, ptr %arrayidx24, align 8, !tbaa !9
  %12 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx27 = getelementptr inbounds double, ptr %srcGrid, i64 %12
  %13 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %14 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx30 = getelementptr inbounds double, ptr %dstGrid, i64 %14
  store double %13, ptr %arrayidx30, align 8, !tbaa !9
  %15 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx33 = getelementptr inbounds double, ptr %srcGrid, i64 %15
  %16 = load double, ptr %arrayidx33, align 8, !tbaa !9
  %17 = add nsw i64 %indvars.iv, -199994
  %arrayidx36 = getelementptr inbounds double, ptr %dstGrid, i64 %17
  store double %16, ptr %arrayidx36, align 8, !tbaa !9
  %18 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx39 = getelementptr inbounds double, ptr %srcGrid, i64 %18
  %19 = load double, ptr %arrayidx39, align 8, !tbaa !9
  %20 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx42 = getelementptr inbounds double, ptr %dstGrid, i64 %20
  store double %19, ptr %arrayidx42, align 8, !tbaa !9
  %21 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx45 = getelementptr inbounds double, ptr %srcGrid, i64 %21
  %22 = load double, ptr %arrayidx45, align 8, !tbaa !9
  %23 = add nsw i64 %indvars.iv, -2010
  %arrayidx48 = getelementptr inbounds double, ptr %dstGrid, i64 %23
  store double %22, ptr %arrayidx48, align 8, !tbaa !9
  %24 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx51 = getelementptr inbounds double, ptr %srcGrid, i64 %24
  %25 = load double, ptr %arrayidx51, align 8, !tbaa !9
  %26 = add nsw i64 %indvars.iv, -1971
  %arrayidx54 = getelementptr inbounds double, ptr %dstGrid, i64 %26
  store double %25, ptr %arrayidx54, align 8, !tbaa !9
  %27 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx57 = getelementptr inbounds double, ptr %srcGrid, i64 %27
  %28 = load double, ptr %arrayidx57, align 8, !tbaa !9
  %29 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx60 = getelementptr inbounds double, ptr %dstGrid, i64 %29
  store double %28, ptr %arrayidx60, align 8, !tbaa !9
  %30 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx63 = getelementptr inbounds double, ptr %srcGrid, i64 %30
  %31 = load double, ptr %arrayidx63, align 8, !tbaa !9
  %32 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx66 = getelementptr inbounds double, ptr %dstGrid, i64 %32
  store double %31, ptr %arrayidx66, align 8, !tbaa !9
  %33 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx69 = getelementptr inbounds double, ptr %srcGrid, i64 %33
  %34 = load double, ptr %arrayidx69, align 8, !tbaa !9
  %35 = add nsw i64 %indvars.iv, -201986
  %arrayidx72 = getelementptr inbounds double, ptr %dstGrid, i64 %35
  store double %34, ptr %arrayidx72, align 8, !tbaa !9
  %36 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx75 = getelementptr inbounds double, ptr %srcGrid, i64 %36
  %37 = load double, ptr %arrayidx75, align 8, !tbaa !9
  %38 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx78 = getelementptr inbounds double, ptr %dstGrid, i64 %38
  store double %37, ptr %arrayidx78, align 8, !tbaa !9
  %39 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx81 = getelementptr inbounds double, ptr %srcGrid, i64 %39
  %40 = load double, ptr %arrayidx81, align 8, !tbaa !9
  %41 = add nsw i64 %indvars.iv, -197988
  %arrayidx84 = getelementptr inbounds double, ptr %dstGrid, i64 %41
  store double %40, ptr %arrayidx84, align 8, !tbaa !9
  %42 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx87 = getelementptr inbounds double, ptr %srcGrid, i64 %42
  %43 = load double, ptr %arrayidx87, align 8, !tbaa !9
  %44 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx90 = getelementptr inbounds double, ptr %dstGrid, i64 %44
  store double %43, ptr %arrayidx90, align 8, !tbaa !9
  %45 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx93 = getelementptr inbounds double, ptr %srcGrid, i64 %45
  %46 = load double, ptr %arrayidx93, align 8, !tbaa !9
  %47 = add nsw i64 %indvars.iv, -200002
  %arrayidx96 = getelementptr inbounds double, ptr %dstGrid, i64 %47
  store double %46, ptr %arrayidx96, align 8, !tbaa !9
  %48 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx99 = getelementptr inbounds double, ptr %srcGrid, i64 %48
  %49 = load double, ptr %arrayidx99, align 8, !tbaa !9
  %50 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx102 = getelementptr inbounds double, ptr %dstGrid, i64 %50
  store double %49, ptr %arrayidx102, align 8, !tbaa !9
  %51 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx105 = getelementptr inbounds double, ptr %srcGrid, i64 %51
  %52 = load double, ptr %arrayidx105, align 8, !tbaa !9
  %53 = add nsw i64 %indvars.iv, -199964
  %arrayidx108 = getelementptr inbounds double, ptr %dstGrid, i64 %53
  store double %52, ptr %arrayidx108, align 8, !tbaa !9
  %54 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx111 = getelementptr inbounds double, ptr %srcGrid, i64 %54
  %55 = load double, ptr %arrayidx111, align 8, !tbaa !9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %56 = or i64 %indvars.iv, 1
  %arrayidx120 = getelementptr inbounds double, ptr %srcGrid, i64 %56
  %57 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add121 = fadd fast double %57, %2
  %58 = or i64 %indvars.iv, 2
  %arrayidx124 = getelementptr inbounds double, ptr %srcGrid, i64 %58
  %59 = load double, ptr %arrayidx124, align 8, !tbaa !9
  %add125 = fadd fast double %add121, %59
  %60 = or i64 %indvars.iv, 3
  %arrayidx128 = getelementptr inbounds double, ptr %srcGrid, i64 %60
  %61 = load double, ptr %arrayidx128, align 8, !tbaa !9
  %add129 = fadd fast double %add125, %61
  %62 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx132 = getelementptr inbounds double, ptr %srcGrid, i64 %62
  %63 = load double, ptr %arrayidx132, align 8, !tbaa !9
  %add133 = fadd fast double %add129, %63
  %64 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx136 = getelementptr inbounds double, ptr %srcGrid, i64 %64
  %65 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %add137 = fadd fast double %add133, %65
  %66 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx140 = getelementptr inbounds double, ptr %srcGrid, i64 %66
  %67 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add141 = fadd fast double %add137, %67
  %68 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx144 = getelementptr inbounds double, ptr %srcGrid, i64 %68
  %69 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %add145 = fadd fast double %add141, %69
  %70 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx148 = getelementptr inbounds double, ptr %srcGrid, i64 %70
  %71 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %add149 = fadd fast double %add145, %71
  %72 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx152 = getelementptr inbounds double, ptr %srcGrid, i64 %72
  %73 = load double, ptr %arrayidx152, align 8, !tbaa !9
  %add153 = fadd fast double %add149, %73
  %74 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx156 = getelementptr inbounds double, ptr %srcGrid, i64 %74
  %75 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %add157 = fadd fast double %add153, %75
  %76 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx160 = getelementptr inbounds double, ptr %srcGrid, i64 %76
  %77 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %add161 = fadd fast double %add157, %77
  %78 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx164 = getelementptr inbounds double, ptr %srcGrid, i64 %78
  %79 = load double, ptr %arrayidx164, align 8, !tbaa !9
  %add165 = fadd fast double %add161, %79
  %80 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx168 = getelementptr inbounds double, ptr %srcGrid, i64 %80
  %81 = load double, ptr %arrayidx168, align 8, !tbaa !9
  %add169 = fadd fast double %add165, %81
  %82 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx172 = getelementptr inbounds double, ptr %srcGrid, i64 %82
  %83 = load double, ptr %arrayidx172, align 8, !tbaa !9
  %add173 = fadd fast double %add169, %83
  %84 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx176 = getelementptr inbounds double, ptr %srcGrid, i64 %84
  %85 = load double, ptr %arrayidx176, align 8, !tbaa !9
  %add177 = fadd fast double %add173, %85
  %86 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx180 = getelementptr inbounds double, ptr %srcGrid, i64 %86
  %87 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %add181 = fadd fast double %add177, %87
  %88 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx184 = getelementptr inbounds double, ptr %srcGrid, i64 %88
  %89 = load double, ptr %arrayidx184, align 8, !tbaa !9
  %add185 = fadd fast double %add181, %89
  %90 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx188 = getelementptr inbounds double, ptr %srcGrid, i64 %90
  %91 = load double, ptr %arrayidx188, align 8, !tbaa !9
  %add189 = fadd fast double %add185, %91
  %92 = fadd fast double %61, %69
  %93 = fadd fast double %63, %71
  %94 = fadd fast double %92, %73
  %95 = fadd fast double %93, %75
  %96 = fsub fast double %94, %95
  %sub211 = fadd fast double %96, %85
  %add215 = fadd fast double %sub211, %87
  %97 = fadd fast double %89, %91
  %sub227 = fsub fast double %add215, %97
  %.neg1007 = fsub fast double %57, %59
  %.neg1004 = fadd fast double %.neg1007, %69
  %sub234 = fadd fast double %.neg1004, %71
  %98 = fadd fast double %73, %75
  %add242 = fsub fast double %sub234, %98
  %sub250 = fadd fast double %add242, %77
  %add254 = fadd fast double %sub250, %79
  %99 = fadd fast double %81, %83
  %sub266 = fsub fast double %add254, %99
  %100 = fadd fast double %65, %77
  %101 = fadd fast double %67, %79
  %102 = fadd fast double %100, %81
  %103 = fadd fast double %101, %83
  %104 = fadd fast double %102, %85
  %105 = fadd fast double %103, %87
  %106 = fadd fast double %104, %89
  %107 = fadd fast double %105, %91
  %sub305 = fsub fast double %106, %107
  %div = fdiv fast double %sub227, %add189
  %div306 = fdiv fast double %sub266, %add189
  %div307 = fdiv fast double %sub305, %add189
  %and311 = and i32 %1, 2
  %tobool312.not = icmp eq i32 %and311, 0
  %uy.0 = select i1 %tobool312.not, double %div306, double 2.000000e-03
  %uz.0 = select i1 %tobool312.not, double %div307, double 0.000000e+00
  %ux.0 = select i1 %tobool312.not, double %div, double 5.000000e-03
  %mul = fmul fast double %ux.0, %ux.0
  %mul315 = fmul fast double %uy.0, %uy.0
  %add316 = fadd fast double %mul, %mul315
  %mul317 = fmul fast double %uz.0, %uz.0
  %add318 = fadd fast double %add316, %mul317
  %mul319 = fmul fast double %add318, 1.500000e+00
  %mul323 = fmul fast double %2, 0x3FEE666666666666
  %mul324 = fmul fast double %add189, 0x3FE4CCCCCCCCCCCC
  %sub325 = fsub fast double 1.000000e+00, %mul319
  %mul326 = fmul fast double %mul324, %sub325
  %108 = fsub fast double %mul326, %mul323
  %arrayidx330 = getelementptr inbounds double, ptr %dstGrid, i64 %indvars.iv
  store double %108, ptr %arrayidx330, align 8, !tbaa !9
  %109 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %mul334 = fmul fast double %109, 0x3FEE666666666666
  %mul335 = fmul fast double %add189, 0x3FBBBBBBBBBBBBBB
  %mul336 = fmul fast double %uy.0, 4.500000e+00
  %add337 = fadd fast double %mul336, 3.000000e+00
  %mul338 = fmul fast double %add337, %uy.0
  %add339 = fadd fast double %mul338, 1.000000e+00
  %sub340 = fsub fast double %add339, %mul319
  %mul341 = fmul fast double %sub340, %mul335
  %110 = fsub fast double %mul341, %mul334
  %111 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx345 = getelementptr inbounds double, ptr %dstGrid, i64 %111
  store double %110, ptr %arrayidx345, align 8, !tbaa !9
  %112 = load double, ptr %arrayidx124, align 8, !tbaa !9
  %mul349 = fmul fast double %112, 0x3FEE666666666666
  %sub352 = fadd fast double %mul336, -3.000000e+00
  %mul353 = fmul fast double %sub352, %uy.0
  %add354 = fadd fast double %mul353, 1.000000e+00
  %sub355 = fsub fast double %add354, %mul319
  %mul356 = fmul fast double %sub355, %mul335
  %113 = fsub fast double %mul356, %mul349
  %114 = add nsw i64 %indvars.iv, -1998
  %arrayidx360 = getelementptr inbounds double, ptr %dstGrid, i64 %114
  store double %113, ptr %arrayidx360, align 8, !tbaa !9
  %115 = load double, ptr %arrayidx128, align 8, !tbaa !9
  %mul364 = fmul fast double %115, 0x3FEE666666666666
  %mul366 = fmul fast double %ux.0, 4.500000e+00
  %add367 = fadd fast double %mul366, 3.000000e+00
  %mul368 = fmul fast double %add367, %ux.0
  %add369 = fadd fast double %mul368, 1.000000e+00
  %sub370 = fsub fast double %add369, %mul319
  %mul371 = fmul fast double %sub370, %mul335
  %116 = fsub fast double %mul371, %mul364
  %117 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx375 = getelementptr inbounds double, ptr %dstGrid, i64 %117
  store double %116, ptr %arrayidx375, align 8, !tbaa !9
  %118 = load double, ptr %arrayidx132, align 8, !tbaa !9
  %mul379 = fmul fast double %118, 0x3FEE666666666666
  %sub382 = fadd fast double %mul366, -3.000000e+00
  %mul383 = fmul fast double %sub382, %ux.0
  %add384 = fadd fast double %mul383, 1.000000e+00
  %sub385 = fsub fast double %add384, %mul319
  %mul386 = fmul fast double %sub385, %mul335
  %119 = fsub fast double %mul386, %mul379
  %120 = add nsw i64 %indvars.iv, -16
  %arrayidx390 = getelementptr inbounds double, ptr %dstGrid, i64 %120
  store double %119, ptr %arrayidx390, align 8, !tbaa !9
  %121 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %mul394 = fmul fast double %121, 0x3FEE666666666666
  %mul396 = fmul fast double %uz.0, 4.500000e+00
  %add397 = fadd fast double %mul396, 3.000000e+00
  %mul398 = fmul fast double %add397, %uz.0
  %add399 = fadd fast double %mul398, 1.000000e+00
  %sub400 = fsub fast double %add399, %mul319
  %mul401 = fmul fast double %sub400, %mul335
  %122 = fsub fast double %mul401, %mul394
  %123 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx405 = getelementptr inbounds double, ptr %dstGrid, i64 %123
  store double %122, ptr %arrayidx405, align 8, !tbaa !9
  %124 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %mul409 = fmul fast double %124, 0x3FEE666666666666
  %sub412 = fadd fast double %mul396, -3.000000e+00
  %mul413 = fmul fast double %sub412, %uz.0
  %add414 = fadd fast double %mul413, 1.000000e+00
  %sub415 = fsub fast double %add414, %mul319
  %mul416 = fmul fast double %sub415, %mul335
  %125 = fsub fast double %mul416, %mul409
  %126 = add nsw i64 %indvars.iv, -199994
  %arrayidx420 = getelementptr inbounds double, ptr %dstGrid, i64 %126
  store double %125, ptr %arrayidx420, align 8, !tbaa !9
  %127 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %mul424 = fmul fast double %127, 0x3FEE666666666666
  %mul425 = fmul fast double %add189, 0x3FABBBBBBBBBBBBB
  %add426 = fadd fast double %ux.0, %uy.0
  %mul428 = fmul fast double %add426, 4.500000e+00
  %add429 = fadd fast double %mul428, 3.000000e+00
  %mul430 = fmul fast double %add429, %add426
  %add431 = fadd fast double %mul430, 1.000000e+00
  %sub432 = fsub fast double %add431, %mul319
  %mul433 = fmul fast double %sub432, %mul425
  %128 = fsub fast double %mul433, %mul424
  %129 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx437 = getelementptr inbounds double, ptr %dstGrid, i64 %129
  store double %128, ptr %arrayidx437, align 8, !tbaa !9
  %130 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %mul441 = fmul fast double %130, 0x3FEE666666666666
  %fneg = fneg fast double %ux.0
  %add443 = fsub fast double %uy.0, %ux.0
  %mul446 = fmul fast double %add443, 4.500000e+00
  %add447 = fadd fast double %mul446, 3.000000e+00
  %mul448 = fmul fast double %add447, %add443
  %add449 = fadd fast double %mul448, 1.000000e+00
  %sub450 = fsub fast double %add449, %mul319
  %mul451 = fmul fast double %sub450, %mul425
  %131 = fsub fast double %mul451, %mul441
  %132 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx455 = getelementptr inbounds double, ptr %dstGrid, i64 %132
  store double %131, ptr %arrayidx455, align 8, !tbaa !9
  %133 = load double, ptr %arrayidx152, align 8, !tbaa !9
  %mul459 = fmul fast double %133, 0x3FEE666666666666
  %sub461 = fsub fast double %ux.0, %uy.0
  %mul463 = fmul fast double %sub461, 4.500000e+00
  %add464 = fadd fast double %mul463, 3.000000e+00
  %mul465 = fmul fast double %add464, %sub461
  %add466 = fadd fast double %mul465, 1.000000e+00
  %sub467 = fsub fast double %add466, %mul319
  %mul468 = fmul fast double %sub467, %mul425
  %134 = fsub fast double %mul468, %mul459
  %135 = add nsw i64 %indvars.iv, -1971
  %arrayidx472 = getelementptr inbounds double, ptr %dstGrid, i64 %135
  store double %134, ptr %arrayidx472, align 8, !tbaa !9
  %136 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %mul476 = fmul fast double %136, 0x3FEE666666666666
  %sub479 = fsub fast double %fneg, %uy.0
  %mul482 = fmul fast double %sub479, 4.500000e+00
  %add483 = fadd fast double %mul482, 3.000000e+00
  %mul484 = fmul fast double %add483, %sub479
  %add485 = fadd fast double %mul484, 1.000000e+00
  %sub486 = fsub fast double %add485, %mul319
  %mul487 = fmul fast double %sub486, %mul425
  %137 = fsub fast double %mul487, %mul476
  %138 = add nsw i64 %indvars.iv, -2010
  %arrayidx491 = getelementptr inbounds double, ptr %dstGrid, i64 %138
  store double %137, ptr %arrayidx491, align 8, !tbaa !9
  %139 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %mul495 = fmul fast double %139, 0x3FEE666666666666
  %add497 = fadd fast double %uy.0, %uz.0
  %mul499 = fmul fast double %add497, 4.500000e+00
  %add500 = fadd fast double %mul499, 3.000000e+00
  %mul501 = fmul fast double %add500, %add497
  %add502 = fadd fast double %mul501, 1.000000e+00
  %sub503 = fsub fast double %add502, %mul319
  %mul504 = fmul fast double %sub503, %mul425
  %140 = fsub fast double %mul504, %mul495
  %141 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx508 = getelementptr inbounds double, ptr %dstGrid, i64 %141
  store double %140, ptr %arrayidx508, align 8, !tbaa !9
  %142 = load double, ptr %arrayidx164, align 8, !tbaa !9
  %mul512 = fmul fast double %142, 0x3FEE666666666666
  %sub514 = fsub fast double %uy.0, %uz.0
  %mul516 = fmul fast double %sub514, 4.500000e+00
  %add517 = fadd fast double %mul516, 3.000000e+00
  %mul518 = fmul fast double %add517, %sub514
  %add519 = fadd fast double %mul518, 1.000000e+00
  %sub520 = fsub fast double %add519, %mul319
  %mul521 = fmul fast double %sub520, %mul425
  %143 = fsub fast double %mul521, %mul512
  %144 = add nsw i64 %indvars.iv, -197988
  %arrayidx525 = getelementptr inbounds double, ptr %dstGrid, i64 %144
  store double %143, ptr %arrayidx525, align 8, !tbaa !9
  %145 = load double, ptr %arrayidx168, align 8, !tbaa !9
  %mul529 = fmul fast double %145, 0x3FEE666666666666
  %add532 = fsub fast double %uz.0, %uy.0
  %mul535 = fmul fast double %add532, 4.500000e+00
  %add536 = fadd fast double %mul535, 3.000000e+00
  %mul537 = fmul fast double %add536, %add532
  %add538 = fadd fast double %mul537, 1.000000e+00
  %sub539 = fsub fast double %add538, %mul319
  %mul540 = fmul fast double %sub539, %mul425
  %146 = fsub fast double %mul540, %mul529
  %147 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx544 = getelementptr inbounds double, ptr %dstGrid, i64 %147
  store double %146, ptr %arrayidx544, align 8, !tbaa !9
  %148 = load double, ptr %arrayidx172, align 8, !tbaa !9
  %mul548 = fmul fast double %148, 0x3FEE666666666666
  %149 = fadd fast double %mul499, -3.000000e+00
  %.neg1015 = fmul fast double %149, %add497
  %sub558 = fadd fast double %sub325, %.neg1015
  %mul559 = fmul fast double %sub558, %mul425
  %150 = fsub fast double %mul559, %mul548
  %151 = add nsw i64 %indvars.iv, -201986
  %arrayidx563 = getelementptr inbounds double, ptr %dstGrid, i64 %151
  store double %150, ptr %arrayidx563, align 8, !tbaa !9
  %152 = load double, ptr %arrayidx176, align 8, !tbaa !9
  %mul567 = fmul fast double %152, 0x3FEE666666666666
  %add569 = fadd fast double %ux.0, %uz.0
  %mul571 = fmul fast double %add569, 4.500000e+00
  %add572 = fadd fast double %mul571, 3.000000e+00
  %mul573 = fmul fast double %add572, %add569
  %add574 = fadd fast double %mul573, 1.000000e+00
  %sub575 = fsub fast double %add574, %mul319
  %mul576 = fmul fast double %sub575, %mul425
  %153 = fsub fast double %mul576, %mul567
  %154 = add nuw nsw i64 %indvars.iv, 200035
  %arrayidx580 = getelementptr inbounds double, ptr %dstGrid, i64 %154
  store double %153, ptr %arrayidx580, align 8, !tbaa !9
  %155 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %mul584 = fmul fast double %155, 0x3FEE666666666666
  %sub586 = fsub fast double %ux.0, %uz.0
  %mul588 = fmul fast double %sub586, 4.500000e+00
  %add589 = fadd fast double %mul588, 3.000000e+00
  %mul590 = fmul fast double %add589, %sub586
  %add591 = fadd fast double %mul590, 1.000000e+00
  %sub592 = fsub fast double %add591, %mul319
  %mul593 = fmul fast double %sub592, %mul425
  %156 = fsub fast double %mul593, %mul584
  %157 = add nsw i64 %indvars.iv, -199964
  %arrayidx597 = getelementptr inbounds double, ptr %dstGrid, i64 %157
  store double %156, ptr %arrayidx597, align 8, !tbaa !9
  %158 = load double, ptr %arrayidx184, align 8, !tbaa !9
  %mul601 = fmul fast double %158, 0x3FEE666666666666
  %add604 = fsub fast double %uz.0, %ux.0
  %mul607 = fmul fast double %add604, 4.500000e+00
  %add608 = fadd fast double %mul607, 3.000000e+00
  %mul609 = fmul fast double %add608, %add604
  %add610 = fadd fast double %mul609, 1.000000e+00
  %sub611 = fsub fast double %add610, %mul319
  %mul612 = fmul fast double %sub611, %mul425
  %159 = fsub fast double %mul612, %mul601
  %160 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx616 = getelementptr inbounds double, ptr %dstGrid, i64 %160
  store double %159, ptr %arrayidx616, align 8, !tbaa !9
  %161 = load double, ptr %arrayidx188, align 8, !tbaa !9
  %mul620 = fmul fast double %161, 0x3FEE666666666666
  %sub623 = fsub fast double %fneg, %uz.0
  %mul626 = fmul fast double %sub623, 4.500000e+00
  %add627 = fadd fast double %mul626, 3.000000e+00
  %mul628 = fmul fast double %add627, %sub623
  %add629 = fadd fast double %mul628, 1.000000e+00
  %sub630 = fsub fast double %add629, %mul319
  %mul631 = fmul fast double %sub630, %mul425
  %162 = fsub fast double %mul631, %mul620
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %.sink1094 = phi i64 [ -200002, %if.end ], [ 200035, %if.then ]
  %.sink = phi double [ %162, %if.end ], [ %55, %if.then ]
  %163 = add nsw i64 %indvars.iv, %.sink1094
  %arrayidx635 = getelementptr inbounds double, ptr %dstGrid, i64 %163
  store double %.sink, ptr %arrayidx635, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %cmp = icmp ult i64 %indvars.iv, 25999980
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !25

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_performStreamCollideTRT(ptr noalias noundef readonly %srcGrid, ptr noalias noundef writeonly %dstGrid) local_unnamed_addr #10 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %0 = add nuw nsw i64 %indvars.iv, 19
  %arrayidx2 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %0
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !11
  %and = and i32 %1, 1
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx119 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %indvars.iv
  %2 = load double, ptr %arrayidx119, align 8, !tbaa !9
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %indvars.iv
  store double %2, ptr %arrayidx8, align 8, !tbaa !9
  %3 = or i64 %indvars.iv, 1
  %arrayidx11 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %3
  %4 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %5 = add nsw i64 %indvars.iv, -1998
  %arrayidx14 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %5
  store double %4, ptr %arrayidx14, align 8, !tbaa !9
  %6 = or i64 %indvars.iv, 2
  %arrayidx17 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %6
  %7 = load double, ptr %arrayidx17, align 8, !tbaa !9
  %8 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx20 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %8
  store double %7, ptr %arrayidx20, align 8, !tbaa !9
  %9 = or i64 %indvars.iv, 3
  %arrayidx23 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %9
  %10 = load double, ptr %arrayidx23, align 8, !tbaa !9
  %11 = add nsw i64 %indvars.iv, -16
  %arrayidx26 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %11
  store double %10, ptr %arrayidx26, align 8, !tbaa !9
  %12 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx29 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %12
  %13 = load double, ptr %arrayidx29, align 8, !tbaa !9
  %14 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx32 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %14
  store double %13, ptr %arrayidx32, align 8, !tbaa !9
  %15 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx35 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %15
  %16 = load double, ptr %arrayidx35, align 8, !tbaa !9
  %17 = add nsw i64 %indvars.iv, -199994
  %arrayidx38 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %17
  store double %16, ptr %arrayidx38, align 8, !tbaa !9
  %18 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx41 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %18
  %19 = load double, ptr %arrayidx41, align 8, !tbaa !9
  %20 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx44 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %20
  store double %19, ptr %arrayidx44, align 8, !tbaa !9
  %21 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx47 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %21
  %22 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %23 = add nsw i64 %indvars.iv, -2010
  %arrayidx50 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %23
  store double %22, ptr %arrayidx50, align 8, !tbaa !9
  %24 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx53 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %24
  %25 = load double, ptr %arrayidx53, align 8, !tbaa !9
  %26 = add nsw i64 %indvars.iv, -1971
  %arrayidx56 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %26
  store double %25, ptr %arrayidx56, align 8, !tbaa !9
  %27 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx59 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %27
  %28 = load double, ptr %arrayidx59, align 8, !tbaa !9
  %29 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx62 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %29
  store double %28, ptr %arrayidx62, align 8, !tbaa !9
  %30 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx65 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %30
  %31 = load double, ptr %arrayidx65, align 8, !tbaa !9
  %32 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx68 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %32
  store double %31, ptr %arrayidx68, align 8, !tbaa !9
  %33 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx71 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %33
  %34 = load double, ptr %arrayidx71, align 8, !tbaa !9
  %35 = add nsw i64 %indvars.iv, -201986
  %arrayidx74 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %35
  store double %34, ptr %arrayidx74, align 8, !tbaa !9
  %36 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx77 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %36
  %37 = load double, ptr %arrayidx77, align 8, !tbaa !9
  %38 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx80 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %38
  store double %37, ptr %arrayidx80, align 8, !tbaa !9
  %39 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx83 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %39
  %40 = load double, ptr %arrayidx83, align 8, !tbaa !9
  %41 = add nsw i64 %indvars.iv, -197988
  %arrayidx86 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %41
  store double %40, ptr %arrayidx86, align 8, !tbaa !9
  %42 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx89 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %42
  %43 = load double, ptr %arrayidx89, align 8, !tbaa !9
  %44 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx92 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %44
  store double %43, ptr %arrayidx92, align 8, !tbaa !9
  %45 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx95 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %45
  %46 = load double, ptr %arrayidx95, align 8, !tbaa !9
  %47 = add nsw i64 %indvars.iv, -200002
  %arrayidx98 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %47
  store double %46, ptr %arrayidx98, align 8, !tbaa !9
  %48 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx101 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %48
  %49 = load double, ptr %arrayidx101, align 8, !tbaa !9
  %50 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx104 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %50
  store double %49, ptr %arrayidx104, align 8, !tbaa !9
  %51 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx107 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %51
  %52 = load double, ptr %arrayidx107, align 8, !tbaa !9
  %53 = add nsw i64 %indvars.iv, -199964
  %arrayidx110 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %53
  store double %52, ptr %arrayidx110, align 8, !tbaa !9
  %54 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx113 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %54
  %55 = load double, ptr %arrayidx113, align 8, !tbaa !9
  %if.then.149 = add nsw i64 %indvars.iv, 200035
  %if.then.arrayidx965 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %if.then.149
  store double %55, ptr %if.then.arrayidx965, align 8, !tbaa !9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %56 = or i64 %indvars.iv, 1
  %arrayidx122 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %56
  %57 = load double, ptr %arrayidx122, align 8, !tbaa !9
  %add123 = fadd fast double %57, %2
  %58 = or i64 %indvars.iv, 2
  %arrayidx126 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %58
  %59 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %add127 = fadd fast double %add123, %59
  %60 = or i64 %indvars.iv, 3
  %arrayidx130 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %60
  %61 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add131 = fadd fast double %add127, %61
  %62 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx134 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %62
  %63 = load double, ptr %arrayidx134, align 8, !tbaa !9
  %add135 = fadd fast double %add131, %63
  %64 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx138 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %64
  %65 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %add139 = fadd fast double %add135, %65
  %66 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx142 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %66
  %67 = load double, ptr %arrayidx142, align 8, !tbaa !9
  %add143 = fadd fast double %add139, %67
  %68 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx146 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %68
  %69 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %add147 = fadd fast double %add143, %69
  %70 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx150 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %70
  %71 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %add151 = fadd fast double %add147, %71
  %72 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx154 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %72
  %73 = load double, ptr %arrayidx154, align 8, !tbaa !9
  %add155 = fadd fast double %add151, %73
  %74 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx158 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %74
  %75 = load double, ptr %arrayidx158, align 8, !tbaa !9
  %add159 = fadd fast double %add155, %75
  %76 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx162 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %76
  %77 = load double, ptr %arrayidx162, align 8, !tbaa !9
  %add163 = fadd fast double %add159, %77
  %78 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx166 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %78
  %79 = load double, ptr %arrayidx166, align 8, !tbaa !9
  %add167 = fadd fast double %add163, %79
  %80 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx170 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %80
  %81 = load double, ptr %arrayidx170, align 8, !tbaa !9
  %add171 = fadd fast double %add167, %81
  %82 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx174 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %82
  %83 = load double, ptr %arrayidx174, align 8, !tbaa !9
  %add175 = fadd fast double %add171, %83
  %84 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx178 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %84
  %85 = load double, ptr %arrayidx178, align 8, !tbaa !9
  %add179 = fadd fast double %add175, %85
  %86 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx182 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %86
  %87 = load double, ptr %arrayidx182, align 8, !tbaa !9
  %add183 = fadd fast double %add179, %87
  %88 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx186 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %88
  %89 = load double, ptr %arrayidx186, align 8, !tbaa !9
  %add187 = fadd fast double %add183, %89
  %90 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx190 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %90
  %91 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %add191 = fadd fast double %add187, %91
  %92 = fadd fast double %61, %69
  %93 = fadd fast double %63, %71
  %94 = fadd fast double %92, %73
  %95 = fadd fast double %93, %75
  %96 = fsub fast double %94, %95
  %sub213 = fadd fast double %96, %85
  %add217 = fadd fast double %sub213, %87
  %97 = fadd fast double %89, %91
  %sub229 = fsub fast double %add217, %97
  %sub236 = fsub fast double %57, %59
  %.neg1386 = fadd fast double %69, %sub236
  %.neg1383 = fadd fast double %.neg1386, %71
  %98 = fadd fast double %73, %75
  %add244 = fsub fast double %.neg1383, %98
  %sub252 = fadd fast double %add244, %77
  %add256 = fadd fast double %sub252, %79
  %99 = fadd fast double %81, %83
  %sub268 = fsub fast double %add256, %99
  %100 = fadd fast double %65, %77
  %101 = fadd fast double %67, %79
  %102 = fadd fast double %100, %81
  %103 = fadd fast double %101, %83
  %104 = fadd fast double %102, %85
  %105 = fadd fast double %103, %87
  %106 = fadd fast double %104, %89
  %107 = fadd fast double %105, %91
  %sub307 = fsub fast double %106, %107
  %div = fdiv fast double %sub229, %add191
  %div308 = fdiv fast double %sub268, %add191
  %div309 = fdiv fast double %sub307, %add191
  %and313 = and i32 %1, 2
  %tobool314.not = icmp eq i32 %and313, 0
  %uz.0 = select i1 %tobool314.not, double %div309, double 0.000000e+00
  %uy.0 = select i1 %tobool314.not, double %div308, double 2.000000e-03
  %ux.0 = select i1 %tobool314.not, double %div, double 5.000000e-03
  %mul = fmul fast double %ux.0, %ux.0
  %mul317 = fmul fast double %uy.0, %uy.0
  %add318 = fadd fast double %mul, %mul317
  %mul319 = fmul fast double %uz.0, %uz.0
  %add320 = fadd fast double %add318, %mul319
  %mul321 = fmul fast double %add320, 1.500000e+00
  %mul322 = fmul fast double %add191, 0x3FD5555555555555
  %sub323 = fsub fast double 1.000000e+00, %mul321
  %mul324 = fmul fast double %mul322, %sub323
  %mul326 = fmul fast double %add191, 0x3FAC71C71C71C71C
  %mul328 = fmul fast double %mul317, 4.500000e+00
  %add329 = fadd fast double %mul328, 1.000000e+00
  %sub330 = fsub fast double %add329, %mul321
  %mul331 = fmul fast double %sub330, %mul326
  %mul336 = fmul fast double %mul, 4.500000e+00
  %add337 = fadd fast double %mul336, 1.000000e+00
  %sub338 = fsub fast double %add337, %mul321
  %mul339 = fmul fast double %sub338, %mul326
  %mul344 = fmul fast double %mul319, 4.500000e+00
  %add345 = fadd fast double %mul344, 1.000000e+00
  %sub346 = fsub fast double %add345, %mul321
  %mul347 = fmul fast double %sub346, %mul326
  %mul350 = fmul fast double %add191, 0x3F9C71C71C71C71C
  %add351 = fadd fast double %ux.0, %uy.0
  %108 = fmul fast double %add351, %add351
  %mul354 = fmul fast double %108, 4.500000e+00
  %add355 = fadd fast double %mul354, 1.000000e+00
  %sub356 = fsub fast double %add355, %mul321
  %mul357 = fmul fast double %sub356, %mul350
  %add361 = fsub fast double %uy.0, %ux.0
  %109 = fmul fast double %add361, %add361
  %mul365 = fmul fast double %109, 4.500000e+00
  %add366 = fadd fast double %mul365, 1.000000e+00
  %sub367 = fsub fast double %add366, %mul321
  %mul368 = fmul fast double %sub367, %mul350
  %add372 = fadd fast double %uy.0, %uz.0
  %110 = fmul fast double %add372, %add372
  %mul375 = fmul fast double %110, 4.500000e+00
  %add376 = fadd fast double %mul375, 1.000000e+00
  %sub377 = fsub fast double %add376, %mul321
  %mul378 = fmul fast double %sub377, %mul350
  %sub382 = fsub fast double %uy.0, %uz.0
  %111 = fmul fast double %sub382, %sub382
  %mul385 = fmul fast double %111, 4.500000e+00
  %add386 = fadd fast double %mul385, 1.000000e+00
  %sub387 = fsub fast double %add386, %mul321
  %mul388 = fmul fast double %sub387, %mul350
  %add392 = fadd fast double %ux.0, %uz.0
  %112 = fmul fast double %add392, %add392
  %mul395 = fmul fast double %112, 4.500000e+00
  %add396 = fadd fast double %mul395, 1.000000e+00
  %sub397 = fsub fast double %add396, %mul321
  %mul398 = fmul fast double %sub397, %mul350
  %sub402 = fsub fast double %ux.0, %uz.0
  %113 = fmul fast double %sub402, %sub402
  %mul405 = fmul fast double %113, 4.500000e+00
  %add406 = fadd fast double %mul405, 1.000000e+00
  %sub407 = fsub fast double %add406, %mul321
  %mul408 = fmul fast double %sub407, %mul350
  %mul413 = fmul fast double %add191, 0x3FC5555555555555
  %mul414 = fmul fast double %uy.0, %mul413
  %mul420 = fmul fast double %ux.0, %mul413
  %mul426 = fmul fast double %uz.0, %mul413
  %mul431 = fmul fast double %add191, 0x3FB5555555555555
  %mul433 = fmul fast double %add351, %mul431
  %mul441 = fmul fast double %add361, %mul431
  %mul448 = fmul fast double %add372, %mul431
  %mul455 = fmul fast double %sub382, %mul431
  %mul462 = fmul fast double %add392, %mul431
  %mul469 = fmul fast double %sub402, %mul431
  %add483 = fadd fast double %59, %57
  %mul484 = fmul fast double %add483, 5.000000e-01
  %add493 = fadd fast double %63, %61
  %mul494 = fmul fast double %add493, 5.000000e-01
  %add503 = fadd fast double %67, %65
  %mul504 = fmul fast double %add503, 5.000000e-01
  %add513 = fadd fast double %75, %69
  %mul514 = fmul fast double %add513, 5.000000e-01
  %add523 = fadd fast double %73, %71
  %mul524 = fmul fast double %add523, 5.000000e-01
  %add533 = fadd fast double %83, %77
  %mul534 = fmul fast double %add533, 5.000000e-01
  %add543 = fadd fast double %81, %79
  %mul544 = fmul fast double %add543, 5.000000e-01
  %add553 = fadd fast double %91, %85
  %mul554 = fmul fast double %add553, 5.000000e-01
  %add563 = fadd fast double %89, %87
  %mul564 = fmul fast double %add563, 5.000000e-01
  %mul575 = fmul fast double %sub236, 5.000000e-01
  %sub585 = fsub fast double %61, %63
  %mul586 = fmul fast double %sub585, 5.000000e-01
  %sub596 = fsub fast double %65, %67
  %mul597 = fmul fast double %sub596, 5.000000e-01
  %sub607 = fsub fast double %69, %75
  %mul608 = fmul fast double %sub607, 5.000000e-01
  %sub618 = fsub fast double %71, %73
  %mul619 = fmul fast double %sub618, 5.000000e-01
  %sub629 = fsub fast double %77, %83
  %mul630 = fmul fast double %sub629, 5.000000e-01
  %sub640 = fsub fast double %79, %81
  %mul641 = fmul fast double %sub640, 5.000000e-01
  %sub651 = fsub fast double %85, %91
  %mul652 = fmul fast double %sub651, 5.000000e-01
  %sub662 = fsub fast double %87, %89
  %mul663 = fmul fast double %sub662, 5.000000e-01
  %sub672 = fsub fast double %2, %mul324
  %mul673 = fmul fast double %sub672, 1.950000e+00
  %sub674 = fsub fast double %2, %mul673
  %arrayidx677 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %indvars.iv
  store double %sub674, ptr %arrayidx677, align 8, !tbaa !9
  %114 = load double, ptr %arrayidx122, align 8, !tbaa !9
  %sub683 = fsub fast double %mul484, %mul331
  %mul684.neg = fmul fast double %sub683, -1.950000e+00
  %sub688 = fsub fast double %mul575, %mul414
  %mul689.neg = fmul fast double %sub688, 0xBFB0ECF56BE69CA7
  %.neg1394 = fadd fast double %mul689.neg, %114
  %sub690 = fadd fast double %.neg1394, %mul684.neg
  %115 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx693 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %115
  store double %sub690, ptr %arrayidx693, align 8, !tbaa !9
  %116 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %sub704 = fsub fast double %mul414, %mul575
  %mul705.neg = fmul fast double %sub704, 0xBFB0ECF56BE69CA7
  %.neg1395 = fadd fast double %mul705.neg, %116
  %sub706 = fadd fast double %.neg1395, %mul684.neg
  %117 = add nsw i64 %indvars.iv, -1998
  %arrayidx709 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %117
  store double %sub706, ptr %arrayidx709, align 8, !tbaa !9
  %118 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %sub715 = fsub fast double %mul494, %mul339
  %mul716.neg = fmul fast double %sub715, -1.950000e+00
  %sub720 = fsub fast double %mul586, %mul420
  %mul721.neg = fmul fast double %sub720, 0xBFB0ECF56BE69CA7
  %.neg1396 = fadd fast double %118, %mul721.neg
  %sub722 = fadd fast double %.neg1396, %mul716.neg
  %119 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx725 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %119
  store double %sub722, ptr %arrayidx725, align 8, !tbaa !9
  %120 = load double, ptr %arrayidx134, align 8, !tbaa !9
  %sub736 = fsub fast double %mul420, %mul586
  %mul737.neg = fmul fast double %sub736, 0xBFB0ECF56BE69CA7
  %.neg1397 = fadd fast double %120, %mul737.neg
  %sub738 = fadd fast double %.neg1397, %mul716.neg
  %121 = add nsw i64 %indvars.iv, -16
  %arrayidx741 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %121
  store double %sub738, ptr %arrayidx741, align 8, !tbaa !9
  %122 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %sub747 = fsub fast double %mul504, %mul347
  %mul748.neg = fmul fast double %sub747, -1.950000e+00
  %sub752 = fsub fast double %mul597, %mul426
  %mul753.neg = fmul fast double %sub752, 0xBFB0ECF56BE69CA7
  %.neg1398 = fadd fast double %122, %mul753.neg
  %sub754 = fadd fast double %.neg1398, %mul748.neg
  %123 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx757 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %123
  store double %sub754, ptr %arrayidx757, align 8, !tbaa !9
  %124 = load double, ptr %arrayidx142, align 8, !tbaa !9
  %sub768 = fsub fast double %mul426, %mul597
  %mul769.neg = fmul fast double %sub768, 0xBFB0ECF56BE69CA7
  %.neg1399 = fadd fast double %mul748.neg, %mul769.neg
  %sub770 = fadd fast double %.neg1399, %124
  %125 = add nsw i64 %indvars.iv, -199994
  %arrayidx773 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %125
  store double %sub770, ptr %arrayidx773, align 8, !tbaa !9
  %126 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %sub779 = fsub fast double %mul514, %mul357
  %mul780.neg = fmul fast double %sub779, -1.950000e+00
  %sub784 = fsub fast double %mul608, %mul433
  %mul785.neg = fmul fast double %sub784, 0xBFB0ECF56BE69CA7
  %.neg1400 = fadd fast double %mul780.neg, %mul785.neg
  %sub786 = fadd fast double %.neg1400, %126
  %127 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx789 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %127
  store double %sub786, ptr %arrayidx789, align 8, !tbaa !9
  %128 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %sub795 = fsub fast double %mul524, %mul368
  %mul796.neg = fmul fast double %sub795, -1.950000e+00
  %sub800 = fsub fast double %mul619, %mul441
  %mul801.neg = fmul fast double %sub800, 0xBFB0ECF56BE69CA7
  %.neg1401 = fadd fast double %mul796.neg, %mul801.neg
  %sub802 = fadd fast double %.neg1401, %128
  %129 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx805 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %129
  store double %sub802, ptr %arrayidx805, align 8, !tbaa !9
  %130 = load double, ptr %arrayidx154, align 8, !tbaa !9
  %sub816 = fsub fast double %mul441, %mul619
  %mul817.neg = fmul fast double %sub816, 0xBFB0ECF56BE69CA7
  %.neg1402 = fadd fast double %mul796.neg, %mul817.neg
  %sub818 = fadd fast double %.neg1402, %130
  %131 = add nsw i64 %indvars.iv, -1971
  %arrayidx821 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %131
  store double %sub818, ptr %arrayidx821, align 8, !tbaa !9
  %132 = load double, ptr %arrayidx158, align 8, !tbaa !9
  %sub832 = fsub fast double %mul433, %mul608
  %mul833.neg = fmul fast double %sub832, 0xBFB0ECF56BE69CA7
  %.neg1403 = fadd fast double %mul780.neg, %mul833.neg
  %sub834 = fadd fast double %.neg1403, %132
  %133 = add nsw i64 %indvars.iv, -2010
  %arrayidx837 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %133
  store double %sub834, ptr %arrayidx837, align 8, !tbaa !9
  %134 = load double, ptr %arrayidx162, align 8, !tbaa !9
  %sub843 = fsub fast double %mul534, %mul378
  %mul844.neg = fmul fast double %sub843, -1.950000e+00
  %sub848 = fsub fast double %mul630, %mul448
  %mul849.neg = fmul fast double %sub848, 0xBFB0ECF56BE69CA7
  %.neg1404 = fadd fast double %mul844.neg, %mul849.neg
  %sub850 = fadd fast double %.neg1404, %134
  %135 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx853 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %135
  store double %sub850, ptr %arrayidx853, align 8, !tbaa !9
  %136 = load double, ptr %arrayidx166, align 8, !tbaa !9
  %sub859 = fsub fast double %mul544, %mul388
  %mul860.neg = fmul fast double %sub859, -1.950000e+00
  %sub864 = fsub fast double %mul641, %mul455
  %mul865.neg = fmul fast double %sub864, 0xBFB0ECF56BE69CA7
  %.neg1405 = fadd fast double %mul860.neg, %mul865.neg
  %sub866 = fadd fast double %.neg1405, %136
  %137 = add nsw i64 %indvars.iv, -197988
  %arrayidx869 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %137
  store double %sub866, ptr %arrayidx869, align 8, !tbaa !9
  %138 = load double, ptr %arrayidx170, align 8, !tbaa !9
  %sub880 = fsub fast double %mul455, %mul641
  %mul881.neg = fmul fast double %sub880, 0xBFB0ECF56BE69CA7
  %.neg1406 = fadd fast double %mul860.neg, %mul881.neg
  %sub882 = fadd fast double %.neg1406, %138
  %139 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx885 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %139
  store double %sub882, ptr %arrayidx885, align 8, !tbaa !9
  %140 = load double, ptr %arrayidx174, align 8, !tbaa !9
  %sub896 = fsub fast double %mul448, %mul630
  %mul897.neg = fmul fast double %sub896, 0xBFB0ECF56BE69CA7
  %.neg1407 = fadd fast double %mul844.neg, %mul897.neg
  %sub898 = fadd fast double %.neg1407, %140
  %141 = add nsw i64 %indvars.iv, -201986
  %arrayidx901 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %141
  store double %sub898, ptr %arrayidx901, align 8, !tbaa !9
  %142 = load double, ptr %arrayidx178, align 8, !tbaa !9
  %sub907 = fsub fast double %mul554, %mul398
  %mul908.neg = fmul fast double %sub907, -1.950000e+00
  %sub912 = fsub fast double %mul652, %mul462
  %mul913.neg = fmul fast double %sub912, 0xBFB0ECF56BE69CA7
  %.neg1408 = fadd fast double %mul908.neg, %mul913.neg
  %sub914 = fadd fast double %.neg1408, %142
  %143 = add nuw nsw i64 %indvars.iv, 200035
  %arrayidx917 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %143
  store double %sub914, ptr %arrayidx917, align 8, !tbaa !9
  %144 = load double, ptr %arrayidx182, align 8, !tbaa !9
  %sub923 = fsub fast double %mul564, %mul408
  %mul924.neg = fmul fast double %sub923, -1.950000e+00
  %sub928 = fsub fast double %mul663, %mul469
  %mul929.neg = fmul fast double %sub928, 0xBFB0ECF56BE69CA7
  %.neg1409 = fadd fast double %mul924.neg, %mul929.neg
  %sub930 = fadd fast double %.neg1409, %144
  %145 = add nsw i64 %indvars.iv, -199964
  %arrayidx933 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %145
  store double %sub930, ptr %arrayidx933, align 8, !tbaa !9
  %146 = load double, ptr %arrayidx186, align 8, !tbaa !9
  %sub944 = fsub fast double %mul469, %mul663
  %mul945.neg = fmul fast double %sub944, 0xBFB0ECF56BE69CA7
  %.neg1410 = fadd fast double %mul924.neg, %mul945.neg
  %sub946 = fadd fast double %.neg1410, %146
  %147 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx949 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %147
  store double %sub946, ptr %arrayidx949, align 8, !tbaa !9
  %148 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %sub960 = fsub fast double %mul462, %mul652
  %mul961.neg = fmul fast double %sub960, 0xBFB0ECF56BE69CA7
  %.neg1411 = fadd fast double %mul908.neg, %mul961.neg
  %sub962 = fadd fast double %.neg1411, %148
  %if.end.149 = add nsw i64 %indvars.iv, -200002
  %if.end.arrayidx965 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %if.end.149
  store double %sub962, ptr %if.end.arrayidx965, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %cmp = icmp ult i64 %indvars.iv, 25999980
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !26

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @LBM_handleInOutFlow(ptr noundef %srcGrid) local_unnamed_addr #10 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %indvars1713 = trunc i64 %indvars.iv to i32
  %0 = add nuw nsw i64 %indvars.iv, 200000
  %arrayidx = getelementptr inbounds double, ptr %srcGrid, i64 %0
  %1 = load double, ptr %arrayidx, align 8, !tbaa !9
  %2 = add nuw nsw i64 %indvars.iv, 200001
  %arrayidx3 = getelementptr inbounds double, ptr %srcGrid, i64 %2
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %add4 = fadd fast double %3, %1
  %4 = add nuw nsw i64 %indvars.iv, 200002
  %arrayidx7 = getelementptr inbounds double, ptr %srcGrid, i64 %4
  %5 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %add8 = fadd fast double %add4, %5
  %6 = add nuw nsw i64 %indvars.iv, 200003
  %arrayidx11 = getelementptr inbounds double, ptr %srcGrid, i64 %6
  %7 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %add12 = fadd fast double %add8, %7
  %8 = add nuw nsw i64 %indvars.iv, 200004
  %arrayidx15 = getelementptr inbounds double, ptr %srcGrid, i64 %8
  %9 = load double, ptr %arrayidx15, align 8, !tbaa !9
  %add16 = fadd fast double %add12, %9
  %10 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx19 = getelementptr inbounds double, ptr %srcGrid, i64 %10
  %11 = load double, ptr %arrayidx19, align 8, !tbaa !9
  %add20 = fadd fast double %add16, %11
  %12 = add nuw nsw i64 %indvars.iv, 200006
  %arrayidx23 = getelementptr inbounds double, ptr %srcGrid, i64 %12
  %13 = load double, ptr %arrayidx23, align 8, !tbaa !9
  %add24 = fadd fast double %add20, %13
  %14 = add nuw nsw i64 %indvars.iv, 200007
  %arrayidx27 = getelementptr inbounds double, ptr %srcGrid, i64 %14
  %15 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %add28 = fadd fast double %add24, %15
  %16 = add nuw nsw i64 %indvars.iv, 200008
  %arrayidx31 = getelementptr inbounds double, ptr %srcGrid, i64 %16
  %17 = load double, ptr %arrayidx31, align 8, !tbaa !9
  %add32 = fadd fast double %add28, %17
  %18 = add nuw nsw i64 %indvars.iv, 200009
  %arrayidx35 = getelementptr inbounds double, ptr %srcGrid, i64 %18
  %19 = load double, ptr %arrayidx35, align 8, !tbaa !9
  %add36 = fadd fast double %add32, %19
  %20 = add nuw nsw i64 %indvars.iv, 200010
  %arrayidx39 = getelementptr inbounds double, ptr %srcGrid, i64 %20
  %21 = load double, ptr %arrayidx39, align 8, !tbaa !9
  %add40 = fadd fast double %add36, %21
  %22 = add nuw nsw i64 %indvars.iv, 200011
  %arrayidx43 = getelementptr inbounds double, ptr %srcGrid, i64 %22
  %23 = load double, ptr %arrayidx43, align 8, !tbaa !9
  %add44 = fadd fast double %add40, %23
  %24 = add nuw nsw i64 %indvars.iv, 200012
  %arrayidx47 = getelementptr inbounds double, ptr %srcGrid, i64 %24
  %25 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %add48 = fadd fast double %add44, %25
  %26 = add nuw nsw i64 %indvars.iv, 200013
  %arrayidx51 = getelementptr inbounds double, ptr %srcGrid, i64 %26
  %27 = load double, ptr %arrayidx51, align 8, !tbaa !9
  %add52 = fadd fast double %add48, %27
  %28 = add nuw nsw i64 %indvars.iv, 200014
  %arrayidx55 = getelementptr inbounds double, ptr %srcGrid, i64 %28
  %29 = load double, ptr %arrayidx55, align 8, !tbaa !9
  %add56 = fadd fast double %add52, %29
  %30 = add nuw nsw i64 %indvars.iv, 200015
  %arrayidx59 = getelementptr inbounds double, ptr %srcGrid, i64 %30
  %31 = load double, ptr %arrayidx59, align 8, !tbaa !9
  %add60 = fadd fast double %add56, %31
  %32 = add nuw nsw i64 %indvars.iv, 200016
  %arrayidx63 = getelementptr inbounds double, ptr %srcGrid, i64 %32
  %33 = load double, ptr %arrayidx63, align 8, !tbaa !9
  %add64 = fadd fast double %add60, %33
  %34 = add nuw nsw i64 %indvars.iv, 200017
  %arrayidx67 = getelementptr inbounds double, ptr %srcGrid, i64 %34
  %35 = load double, ptr %arrayidx67, align 8, !tbaa !9
  %add68 = fadd fast double %add64, %35
  %36 = add nuw nsw i64 %indvars.iv, 200018
  %arrayidx71 = getelementptr inbounds double, ptr %srcGrid, i64 %36
  %37 = load double, ptr %arrayidx71, align 8, !tbaa !9
  %add72 = fadd fast double %add68, %37
  %38 = add nuw nsw i64 %indvars.iv, 400000
  %arrayidx75 = getelementptr inbounds double, ptr %srcGrid, i64 %38
  %39 = load double, ptr %arrayidx75, align 8, !tbaa !9
  %40 = add nuw nsw i64 %indvars.iv, 400001
  %arrayidx78 = getelementptr inbounds double, ptr %srcGrid, i64 %40
  %41 = load double, ptr %arrayidx78, align 8, !tbaa !9
  %42 = add nuw nsw i64 %indvars.iv, 400002
  %arrayidx82 = getelementptr inbounds double, ptr %srcGrid, i64 %42
  %43 = load double, ptr %arrayidx82, align 8, !tbaa !9
  %44 = add nuw nsw i64 %indvars.iv, 400003
  %arrayidx86 = getelementptr inbounds double, ptr %srcGrid, i64 %44
  %45 = load double, ptr %arrayidx86, align 8, !tbaa !9
  %46 = add nuw nsw i64 %indvars.iv, 400004
  %arrayidx90 = getelementptr inbounds double, ptr %srcGrid, i64 %46
  %47 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %48 = add nuw nsw i64 %indvars.iv, 400005
  %arrayidx94 = getelementptr inbounds double, ptr %srcGrid, i64 %48
  %49 = load double, ptr %arrayidx94, align 8, !tbaa !9
  %50 = add nuw nsw i64 %indvars.iv, 400006
  %arrayidx98 = getelementptr inbounds double, ptr %srcGrid, i64 %50
  %51 = load double, ptr %arrayidx98, align 8, !tbaa !9
  %52 = add nuw nsw i64 %indvars.iv, 400007
  %arrayidx102 = getelementptr inbounds double, ptr %srcGrid, i64 %52
  %53 = load double, ptr %arrayidx102, align 8, !tbaa !9
  %54 = add nuw nsw i64 %indvars.iv, 400008
  %arrayidx106 = getelementptr inbounds double, ptr %srcGrid, i64 %54
  %55 = load double, ptr %arrayidx106, align 8, !tbaa !9
  %56 = add nuw nsw i64 %indvars.iv, 400009
  %arrayidx110 = getelementptr inbounds double, ptr %srcGrid, i64 %56
  %57 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %58 = add nuw nsw i64 %indvars.iv, 400010
  %arrayidx114 = getelementptr inbounds double, ptr %srcGrid, i64 %58
  %59 = load double, ptr %arrayidx114, align 8, !tbaa !9
  %60 = add nuw nsw i64 %indvars.iv, 400011
  %arrayidx118 = getelementptr inbounds double, ptr %srcGrid, i64 %60
  %61 = load double, ptr %arrayidx118, align 8, !tbaa !9
  %62 = add nuw nsw i64 %indvars.iv, 400012
  %arrayidx122 = getelementptr inbounds double, ptr %srcGrid, i64 %62
  %63 = load double, ptr %arrayidx122, align 8, !tbaa !9
  %64 = add nuw nsw i64 %indvars.iv, 400013
  %arrayidx126 = getelementptr inbounds double, ptr %srcGrid, i64 %64
  %65 = load double, ptr %arrayidx126, align 8, !tbaa !9
  %66 = add nuw nsw i64 %indvars.iv, 400014
  %arrayidx130 = getelementptr inbounds double, ptr %srcGrid, i64 %66
  %67 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %68 = add nuw nsw i64 %indvars.iv, 400015
  %arrayidx134 = getelementptr inbounds double, ptr %srcGrid, i64 %68
  %69 = load double, ptr %arrayidx134, align 8, !tbaa !9
  %70 = add nuw nsw i64 %indvars.iv, 400016
  %arrayidx138 = getelementptr inbounds double, ptr %srcGrid, i64 %70
  %71 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %72 = add nuw nsw i64 %indvars.iv, 400017
  %arrayidx142 = getelementptr inbounds double, ptr %srcGrid, i64 %72
  %73 = load double, ptr %arrayidx142, align 8, !tbaa !9
  %74 = add nuw nsw i64 %indvars.iv, 400018
  %arrayidx146 = getelementptr inbounds double, ptr %srcGrid, i64 %74
  %75 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %mul = fmul fast double %add72, 2.000000e+00
  %76 = fadd fast double %39, %41
  %77 = fadd fast double %76, %43
  %78 = fadd fast double %77, %45
  %79 = fadd fast double %78, %47
  %80 = fadd fast double %79, %49
  %81 = fadd fast double %80, %51
  %82 = fadd fast double %81, %53
  %83 = fadd fast double %82, %55
  %84 = fadd fast double %83, %57
  %85 = fadd fast double %84, %59
  %86 = fadd fast double %85, %61
  %87 = fadd fast double %86, %63
  %88 = fadd fast double %87, %65
  %89 = fadd fast double %88, %67
  %90 = fadd fast double %89, %69
  %91 = fadd fast double %90, %71
  %92 = fadd fast double %91, %73
  %93 = fadd fast double %92, %75
  %sub = fsub fast double %mul, %93
  %div = udiv i32 %indvars1713, 20
  %rem.lhs.trunc = trunc i32 %div to i16
  %rem1590 = urem i16 %rem.lhs.trunc, 100
  %conv = uitofp i16 %rem1590 to double
  %div148 = fmul fast double %conv, 0x3F94AFD6A052BF5B
  %sub149 = fadd fast double %div148, -1.000000e+00
  %div151 = udiv i32 %indvars1713, 2000
  %rem152.lhs.trunc = trunc i32 %div151 to i8
  %rem1521591 = urem i8 %rem152.lhs.trunc, 100
  %conv153 = uitofp i8 %rem1521591 to double
  %div154 = fmul fast double %conv153, 0x3F94AFD6A052BF5B
  %sub155 = fadd fast double %div154, -1.000000e+00
  %94 = fmul fast double %sub149, %sub149
  %95 = fmul fast double %94, 1.000000e-02
  %mul158 = fsub fast double 1.000000e-02, %95
  %mul159 = fmul fast double %sub155, %sub155
  %sub160 = fsub fast double 1.000000e+00, %mul159
  %mul161 = fmul fast double %mul158, %sub160
  %96 = fmul fast double %mul161, %mul161
  %mul167 = fmul fast double %96, 1.500000e+00
  %sub169 = fsub fast double 1.000000e+00, %mul167
  %mul168 = fmul fast double %sub169, 0x3FD5555555555555
  %mul170 = fmul fast double %mul168, %sub
  %arrayidx173 = getelementptr inbounds double, ptr %srcGrid, i64 %indvars.iv
  store double %mul170, ptr %arrayidx173, align 8, !tbaa !9
  %mul174 = fmul fast double %sub, 0x3FAC71C71C71C71C
  %mul180 = fmul fast double %mul174, %sub169
  %97 = or i64 %indvars.iv, 1
  %arrayidx183 = getelementptr inbounds double, ptr %srcGrid, i64 %97
  store double %mul180, ptr %arrayidx183, align 8, !tbaa !9
  %98 = or i64 %indvars.iv, 2
  %arrayidx193 = getelementptr inbounds double, ptr %srcGrid, i64 %98
  store double %mul180, ptr %arrayidx193, align 8, !tbaa !9
  %99 = or i64 %indvars.iv, 3
  %arrayidx203 = getelementptr inbounds double, ptr %srcGrid, i64 %99
  store double %mul180, ptr %arrayidx203, align 8, !tbaa !9
  %100 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx213 = getelementptr inbounds double, ptr %srcGrid, i64 %100
  store double %mul180, ptr %arrayidx213, align 8, !tbaa !9
  %mul215 = fmul fast double %mul161, 4.500000e+00
  %add216 = fadd fast double %mul215, 3.000000e+00
  %mul217 = fmul fast double %add216, %mul161
  %sub219 = fadd fast double %sub169, %mul217
  %mul220 = fmul fast double %mul174, %sub219
  %101 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx223 = getelementptr inbounds double, ptr %srcGrid, i64 %101
  store double %mul220, ptr %arrayidx223, align 8, !tbaa !9
  %sub226 = fadd fast double %mul215, -3.000000e+00
  %mul227 = fmul fast double %sub226, %mul161
  %sub229 = fadd fast double %sub169, %mul227
  %mul230 = fmul fast double %mul174, %sub229
  %102 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx233 = getelementptr inbounds double, ptr %srcGrid, i64 %102
  store double %mul230, ptr %arrayidx233, align 8, !tbaa !9
  %mul234 = fmul fast double %sub, 0x3F9C71C71C71C71C
  %mul242 = fmul fast double %mul234, %sub169
  %103 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx245 = getelementptr inbounds double, ptr %srcGrid, i64 %103
  store double %mul242, ptr %arrayidx245, align 8, !tbaa !9
  %104 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx258 = getelementptr inbounds double, ptr %srcGrid, i64 %104
  store double %mul242, ptr %arrayidx258, align 8, !tbaa !9
  %105 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx270 = getelementptr inbounds double, ptr %srcGrid, i64 %105
  store double %mul242, ptr %arrayidx270, align 8, !tbaa !9
  %106 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx284 = getelementptr inbounds double, ptr %srcGrid, i64 %106
  store double %mul242, ptr %arrayidx284, align 8, !tbaa !9
  %mul293 = fmul fast double %mul234, %sub219
  %107 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx296 = getelementptr inbounds double, ptr %srcGrid, i64 %107
  store double %mul293, ptr %arrayidx296, align 8, !tbaa !9
  %mul305 = fmul fast double %mul234, %sub229
  %108 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx308 = getelementptr inbounds double, ptr %srcGrid, i64 %108
  store double %mul305, ptr %arrayidx308, align 8, !tbaa !9
  %109 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx322 = getelementptr inbounds double, ptr %srcGrid, i64 %109
  store double %mul293, ptr %arrayidx322, align 8, !tbaa !9
  %110 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx336 = getelementptr inbounds double, ptr %srcGrid, i64 %110
  store double %mul305, ptr %arrayidx336, align 8, !tbaa !9
  %111 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx348 = getelementptr inbounds double, ptr %srcGrid, i64 %111
  store double %mul293, ptr %arrayidx348, align 8, !tbaa !9
  %112 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx360 = getelementptr inbounds double, ptr %srcGrid, i64 %112
  store double %mul305, ptr %arrayidx360, align 8, !tbaa !9
  %113 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx374 = getelementptr inbounds double, ptr %srcGrid, i64 %113
  store double %mul293, ptr %arrayidx374, align 8, !tbaa !9
  %114 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx388 = getelementptr inbounds double, ptr %srcGrid, i64 %114
  store double %mul305, ptr %arrayidx388, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %cmp = icmp ult i64 %indvars.iv, 199980
  br i1 %cmp, label %for.body, label %for.body393.preheader, !llvm.loop !28

for.body393.preheader:                            ; preds = %for.body
  br label %for.body393

for.body393:                                      ; preds = %for.body393.preheader, %for.body393
  %indvars.iv1714 = phi i64 [ %indvars.iv.next1715, %for.body393 ], [ 25800000, %for.body393.preheader ]
  %115 = add nsw i64 %indvars.iv1714, -200000
  %arrayidx396 = getelementptr inbounds double, ptr %srcGrid, i64 %115
  %116 = load double, ptr %arrayidx396, align 8, !tbaa !9
  %117 = add nsw i64 %indvars.iv1714, -199999
  %arrayidx399 = getelementptr inbounds double, ptr %srcGrid, i64 %117
  %118 = load double, ptr %arrayidx399, align 8, !tbaa !9
  %add400 = fadd fast double %118, %116
  %119 = add nsw i64 %indvars.iv1714, -199998
  %arrayidx403 = getelementptr inbounds double, ptr %srcGrid, i64 %119
  %120 = load double, ptr %arrayidx403, align 8, !tbaa !9
  %add404 = fadd fast double %add400, %120
  %121 = add nsw i64 %indvars.iv1714, -199997
  %arrayidx407 = getelementptr inbounds double, ptr %srcGrid, i64 %121
  %122 = load double, ptr %arrayidx407, align 8, !tbaa !9
  %add408 = fadd fast double %add404, %122
  %123 = add nsw i64 %indvars.iv1714, -199996
  %arrayidx411 = getelementptr inbounds double, ptr %srcGrid, i64 %123
  %124 = load double, ptr %arrayidx411, align 8, !tbaa !9
  %add412 = fadd fast double %add408, %124
  %125 = add nsw i64 %indvars.iv1714, -199995
  %arrayidx415 = getelementptr inbounds double, ptr %srcGrid, i64 %125
  %126 = load double, ptr %arrayidx415, align 8, !tbaa !9
  %add416 = fadd fast double %add412, %126
  %127 = add nsw i64 %indvars.iv1714, -199994
  %arrayidx419 = getelementptr inbounds double, ptr %srcGrid, i64 %127
  %128 = load double, ptr %arrayidx419, align 8, !tbaa !9
  %add420 = fadd fast double %add416, %128
  %129 = add nsw i64 %indvars.iv1714, -199993
  %arrayidx423 = getelementptr inbounds double, ptr %srcGrid, i64 %129
  %130 = load double, ptr %arrayidx423, align 8, !tbaa !9
  %add424 = fadd fast double %add420, %130
  %131 = add nsw i64 %indvars.iv1714, -199992
  %arrayidx427 = getelementptr inbounds double, ptr %srcGrid, i64 %131
  %132 = load double, ptr %arrayidx427, align 8, !tbaa !9
  %add428 = fadd fast double %add424, %132
  %133 = add nsw i64 %indvars.iv1714, -199991
  %arrayidx431 = getelementptr inbounds double, ptr %srcGrid, i64 %133
  %134 = load double, ptr %arrayidx431, align 8, !tbaa !9
  %add432 = fadd fast double %add428, %134
  %135 = add nsw i64 %indvars.iv1714, -199990
  %arrayidx435 = getelementptr inbounds double, ptr %srcGrid, i64 %135
  %136 = load double, ptr %arrayidx435, align 8, !tbaa !9
  %add436 = fadd fast double %add432, %136
  %137 = add nsw i64 %indvars.iv1714, -199989
  %arrayidx439 = getelementptr inbounds double, ptr %srcGrid, i64 %137
  %138 = load double, ptr %arrayidx439, align 8, !tbaa !9
  %add440 = fadd fast double %add436, %138
  %139 = add nsw i64 %indvars.iv1714, -199988
  %arrayidx443 = getelementptr inbounds double, ptr %srcGrid, i64 %139
  %140 = load double, ptr %arrayidx443, align 8, !tbaa !9
  %add444 = fadd fast double %add440, %140
  %141 = add nsw i64 %indvars.iv1714, -199987
  %arrayidx447 = getelementptr inbounds double, ptr %srcGrid, i64 %141
  %142 = load double, ptr %arrayidx447, align 8, !tbaa !9
  %add448 = fadd fast double %add444, %142
  %143 = add nsw i64 %indvars.iv1714, -199986
  %arrayidx451 = getelementptr inbounds double, ptr %srcGrid, i64 %143
  %144 = load double, ptr %arrayidx451, align 8, !tbaa !9
  %add452 = fadd fast double %add448, %144
  %145 = add nsw i64 %indvars.iv1714, -199985
  %arrayidx455 = getelementptr inbounds double, ptr %srcGrid, i64 %145
  %146 = load double, ptr %arrayidx455, align 8, !tbaa !9
  %add456 = fadd fast double %add452, %146
  %147 = add nsw i64 %indvars.iv1714, -199984
  %arrayidx459 = getelementptr inbounds double, ptr %srcGrid, i64 %147
  %148 = load double, ptr %arrayidx459, align 8, !tbaa !9
  %add460 = fadd fast double %add456, %148
  %149 = add nsw i64 %indvars.iv1714, -199983
  %arrayidx463 = getelementptr inbounds double, ptr %srcGrid, i64 %149
  %150 = load double, ptr %arrayidx463, align 8, !tbaa !9
  %add464 = fadd fast double %add460, %150
  %151 = add nsw i64 %indvars.iv1714, -199982
  %arrayidx467 = getelementptr inbounds double, ptr %srcGrid, i64 %151
  %152 = load double, ptr %arrayidx467, align 8, !tbaa !9
  %add468 = fadd fast double %add464, %152
  %153 = fadd fast double %122, %130
  %154 = fadd fast double %124, %132
  %155 = fadd fast double %153, %134
  %156 = fadd fast double %154, %136
  %157 = fsub fast double %155, %156
  %sub491 = fadd fast double %157, %146
  %add495 = fadd fast double %sub491, %148
  %158 = fadd fast double %150, %152
  %sub507 = fsub fast double %add495, %158
  %.neg1604 = fsub fast double %118, %120
  %.neg1601 = fadd fast double %.neg1604, %130
  %sub514 = fadd fast double %.neg1601, %132
  %159 = fadd fast double %134, %136
  %add522 = fsub fast double %sub514, %159
  %sub530 = fadd fast double %add522, %138
  %add534 = fadd fast double %sub530, %140
  %160 = fadd fast double %142, %144
  %sub546 = fsub fast double %add534, %160
  %161 = fadd fast double %126, %138
  %162 = fadd fast double %128, %140
  %163 = fadd fast double %161, %142
  %164 = fadd fast double %162, %144
  %165 = fadd fast double %163, %146
  %166 = fadd fast double %164, %148
  %167 = fadd fast double %165, %150
  %168 = fadd fast double %166, %152
  %sub585 = fsub fast double %167, %168
  %169 = add nsw i64 %indvars.iv1714, -400000
  %arrayidx591 = getelementptr inbounds double, ptr %srcGrid, i64 %169
  %170 = load double, ptr %arrayidx591, align 8, !tbaa !9
  %171 = add nsw i64 %indvars.iv1714, -399999
  %arrayidx594 = getelementptr inbounds double, ptr %srcGrid, i64 %171
  %172 = load double, ptr %arrayidx594, align 8, !tbaa !9
  %add595 = fadd fast double %172, %170
  %173 = add nsw i64 %indvars.iv1714, -399998
  %arrayidx598 = getelementptr inbounds double, ptr %srcGrid, i64 %173
  %174 = load double, ptr %arrayidx598, align 8, !tbaa !9
  %add599 = fadd fast double %add595, %174
  %175 = add nsw i64 %indvars.iv1714, -399997
  %arrayidx602 = getelementptr inbounds double, ptr %srcGrid, i64 %175
  %176 = load double, ptr %arrayidx602, align 8, !tbaa !9
  %add603 = fadd fast double %add599, %176
  %177 = add nsw i64 %indvars.iv1714, -399996
  %arrayidx606 = getelementptr inbounds double, ptr %srcGrid, i64 %177
  %178 = load double, ptr %arrayidx606, align 8, !tbaa !9
  %add607 = fadd fast double %add603, %178
  %179 = add nsw i64 %indvars.iv1714, -399995
  %arrayidx610 = getelementptr inbounds double, ptr %srcGrid, i64 %179
  %180 = load double, ptr %arrayidx610, align 8, !tbaa !9
  %add611 = fadd fast double %add607, %180
  %181 = add nsw i64 %indvars.iv1714, -399994
  %arrayidx614 = getelementptr inbounds double, ptr %srcGrid, i64 %181
  %182 = load double, ptr %arrayidx614, align 8, !tbaa !9
  %add615 = fadd fast double %add611, %182
  %183 = add nsw i64 %indvars.iv1714, -399993
  %arrayidx618 = getelementptr inbounds double, ptr %srcGrid, i64 %183
  %184 = load double, ptr %arrayidx618, align 8, !tbaa !9
  %add619 = fadd fast double %add615, %184
  %185 = add nsw i64 %indvars.iv1714, -399992
  %arrayidx622 = getelementptr inbounds double, ptr %srcGrid, i64 %185
  %186 = load double, ptr %arrayidx622, align 8, !tbaa !9
  %add623 = fadd fast double %add619, %186
  %187 = add nsw i64 %indvars.iv1714, -399991
  %arrayidx626 = getelementptr inbounds double, ptr %srcGrid, i64 %187
  %188 = load double, ptr %arrayidx626, align 8, !tbaa !9
  %add627 = fadd fast double %add623, %188
  %189 = add nsw i64 %indvars.iv1714, -399990
  %arrayidx630 = getelementptr inbounds double, ptr %srcGrid, i64 %189
  %190 = load double, ptr %arrayidx630, align 8, !tbaa !9
  %add631 = fadd fast double %add627, %190
  %191 = add nsw i64 %indvars.iv1714, -399989
  %arrayidx634 = getelementptr inbounds double, ptr %srcGrid, i64 %191
  %192 = load double, ptr %arrayidx634, align 8, !tbaa !9
  %add635 = fadd fast double %add631, %192
  %193 = add nsw i64 %indvars.iv1714, -399988
  %arrayidx638 = getelementptr inbounds double, ptr %srcGrid, i64 %193
  %194 = load double, ptr %arrayidx638, align 8, !tbaa !9
  %add639 = fadd fast double %add635, %194
  %195 = add nsw i64 %indvars.iv1714, -399987
  %arrayidx642 = getelementptr inbounds double, ptr %srcGrid, i64 %195
  %196 = load double, ptr %arrayidx642, align 8, !tbaa !9
  %add643 = fadd fast double %add639, %196
  %197 = add nsw i64 %indvars.iv1714, -399986
  %arrayidx646 = getelementptr inbounds double, ptr %srcGrid, i64 %197
  %198 = load double, ptr %arrayidx646, align 8, !tbaa !9
  %add647 = fadd fast double %add643, %198
  %199 = add nsw i64 %indvars.iv1714, -399985
  %arrayidx650 = getelementptr inbounds double, ptr %srcGrid, i64 %199
  %200 = load double, ptr %arrayidx650, align 8, !tbaa !9
  %add651 = fadd fast double %add647, %200
  %201 = add nsw i64 %indvars.iv1714, -399984
  %arrayidx654 = getelementptr inbounds double, ptr %srcGrid, i64 %201
  %202 = load double, ptr %arrayidx654, align 8, !tbaa !9
  %add655 = fadd fast double %add651, %202
  %203 = add nsw i64 %indvars.iv1714, -399983
  %arrayidx658 = getelementptr inbounds double, ptr %srcGrid, i64 %203
  %204 = load double, ptr %arrayidx658, align 8, !tbaa !9
  %add659 = fadd fast double %add655, %204
  %205 = add nsw i64 %indvars.iv1714, -399982
  %arrayidx662 = getelementptr inbounds double, ptr %srcGrid, i64 %205
  %206 = load double, ptr %arrayidx662, align 8, !tbaa !9
  %add663 = fadd fast double %add659, %206
  %207 = fadd fast double %176, %184
  %208 = fadd fast double %178, %186
  %209 = fadd fast double %207, %188
  %210 = fadd fast double %208, %190
  %211 = fsub fast double %209, %210
  %sub686 = fadd fast double %211, %200
  %add690 = fadd fast double %sub686, %202
  %212 = fadd fast double %204, %206
  %sub702 = fsub fast double %add690, %212
  %.neg1625 = fsub fast double %172, %174
  %.neg1622 = fadd fast double %.neg1625, %184
  %sub709 = fadd fast double %.neg1622, %186
  %213 = fadd fast double %188, %190
  %add717 = fsub fast double %sub709, %213
  %sub725 = fadd fast double %add717, %192
  %add729 = fadd fast double %sub725, %194
  %214 = fadd fast double %196, %198
  %sub741 = fsub fast double %add729, %214
  %215 = fadd fast double %180, %192
  %216 = fadd fast double %182, %194
  %217 = fadd fast double %215, %196
  %218 = fadd fast double %216, %198
  %219 = fadd fast double %217, %200
  %220 = fadd fast double %218, %202
  %221 = fadd fast double %219, %204
  %222 = fadd fast double %220, %206
  %sub780 = fsub fast double %221, %222
  %div781 = fdiv fast double %sub702, %add663
  %div782 = fdiv fast double %sub741, %add663
  %div783 = fdiv fast double %sub780, %add663
  %223 = fmul fast double %sub507, 2.000000e+00
  %mul784 = fdiv fast double %223, %add468
  %sub785 = fsub fast double %mul784, %div781
  %224 = fmul fast double %sub546, 2.000000e+00
  %mul786 = fdiv fast double %224, %add468
  %sub787 = fsub fast double %mul786, %div782
  %225 = fmul fast double %sub585, 2.000000e+00
  %mul788 = fdiv fast double %225, %add468
  %sub789 = fsub fast double %mul788, %div783
  %mul790 = fmul fast double %sub785, %sub785
  %mul791 = fmul fast double %sub787, %sub787
  %add792 = fadd fast double %mul790, %mul791
  %mul793 = fmul fast double %sub789, %sub789
  %add794 = fadd fast double %add792, %mul793
  %mul795 = fmul fast double %add794, 1.500000e+00
  %226 = fmul fast double %add794, 5.000000e-01
  %mul798 = fsub fast double 0x3FD5555555555555, %226
  %arrayidx801 = getelementptr inbounds double, ptr %srcGrid, i64 %indvars.iv1714
  store double %mul798, ptr %arrayidx801, align 8, !tbaa !9
  %mul803 = fmul fast double %sub787, 4.500000e+00
  %add804 = fadd fast double %mul803, 3.000000e+00
  %mul805 = fmul fast double %add804, %sub787
  %add806 = fadd fast double %mul805, 1.000000e+00
  %sub807 = fsub fast double %add806, %mul795
  %mul808 = fmul fast double %sub807, 0x3FAC71C71C71C71C
  %227 = or i64 %indvars.iv1714, 1
  %arrayidx811 = getelementptr inbounds double, ptr %srcGrid, i64 %227
  store double %mul808, ptr %arrayidx811, align 8, !tbaa !9
  %sub814 = fadd fast double %mul803, -3.000000e+00
  %mul815 = fmul fast double %sub814, %sub787
  %add816 = fadd fast double %mul815, 1.000000e+00
  %sub817 = fsub fast double %add816, %mul795
  %mul818 = fmul fast double %sub817, 0x3FAC71C71C71C71C
  %228 = or i64 %indvars.iv1714, 2
  %arrayidx821 = getelementptr inbounds double, ptr %srcGrid, i64 %228
  store double %mul818, ptr %arrayidx821, align 8, !tbaa !9
  %mul823 = fmul fast double %sub785, 4.500000e+00
  %add824 = fadd fast double %mul823, 3.000000e+00
  %mul825 = fmul fast double %add824, %sub785
  %add826 = fadd fast double %mul825, 1.000000e+00
  %sub827 = fsub fast double %add826, %mul795
  %mul828 = fmul fast double %sub827, 0x3FAC71C71C71C71C
  %229 = or i64 %indvars.iv1714, 3
  %arrayidx831 = getelementptr inbounds double, ptr %srcGrid, i64 %229
  store double %mul828, ptr %arrayidx831, align 8, !tbaa !9
  %sub834 = fadd fast double %mul823, -3.000000e+00
  %mul835 = fmul fast double %sub834, %sub785
  %add836 = fadd fast double %mul835, 1.000000e+00
  %sub837 = fsub fast double %add836, %mul795
  %mul838 = fmul fast double %sub837, 0x3FAC71C71C71C71C
  %230 = add nuw nsw i64 %indvars.iv1714, 4
  %arrayidx841 = getelementptr inbounds double, ptr %srcGrid, i64 %230
  store double %mul838, ptr %arrayidx841, align 8, !tbaa !9
  %mul843 = fmul fast double %sub789, 4.500000e+00
  %add844 = fadd fast double %mul843, 3.000000e+00
  %mul845 = fmul fast double %add844, %sub789
  %add846 = fadd fast double %mul845, 1.000000e+00
  %sub847 = fsub fast double %add846, %mul795
  %mul848 = fmul fast double %sub847, 0x3FAC71C71C71C71C
  %231 = add nuw nsw i64 %indvars.iv1714, 5
  %arrayidx851 = getelementptr inbounds double, ptr %srcGrid, i64 %231
  store double %mul848, ptr %arrayidx851, align 8, !tbaa !9
  %sub854 = fadd fast double %mul843, -3.000000e+00
  %mul855 = fmul fast double %sub854, %sub789
  %add856 = fadd fast double %mul855, 1.000000e+00
  %sub857 = fsub fast double %add856, %mul795
  %mul858 = fmul fast double %sub857, 0x3FAC71C71C71C71C
  %232 = add nuw nsw i64 %indvars.iv1714, 6
  %arrayidx861 = getelementptr inbounds double, ptr %srcGrid, i64 %232
  store double %mul858, ptr %arrayidx861, align 8, !tbaa !9
  %add863 = fadd fast double %sub785, %sub787
  %mul865 = fmul fast double %add863, 4.500000e+00
  %add866 = fadd fast double %mul865, 3.000000e+00
  %mul867 = fmul fast double %add866, %add863
  %add868 = fadd fast double %mul867, 1.000000e+00
  %sub869 = fsub fast double %add868, %mul795
  %mul870 = fmul fast double %sub869, 0x3F9C71C71C71C71C
  %233 = add nuw nsw i64 %indvars.iv1714, 7
  %arrayidx873 = getelementptr inbounds double, ptr %srcGrid, i64 %233
  store double %mul870, ptr %arrayidx873, align 8, !tbaa !9
  %fneg875 = fneg fast double %sub785
  %add876 = fsub fast double %sub787, %sub785
  %mul879 = fmul fast double %add876, 4.500000e+00
  %add880 = fadd fast double %mul879, 3.000000e+00
  %mul881 = fmul fast double %add880, %add876
  %add882 = fadd fast double %mul881, 1.000000e+00
  %sub883 = fsub fast double %add882, %mul795
  %mul884 = fmul fast double %sub883, 0x3F9C71C71C71C71C
  %234 = add nuw nsw i64 %indvars.iv1714, 8
  %arrayidx887 = getelementptr inbounds double, ptr %srcGrid, i64 %234
  store double %mul884, ptr %arrayidx887, align 8, !tbaa !9
  %sub889 = fsub fast double %sub785, %sub787
  %mul891 = fmul fast double %sub889, 4.500000e+00
  %add892 = fadd fast double %mul891, 3.000000e+00
  %mul893 = fmul fast double %add892, %sub889
  %add894 = fadd fast double %mul893, 1.000000e+00
  %sub895 = fsub fast double %add894, %mul795
  %mul896 = fmul fast double %sub895, 0x3F9C71C71C71C71C
  %235 = add nuw nsw i64 %indvars.iv1714, 9
  %arrayidx899 = getelementptr inbounds double, ptr %srcGrid, i64 %235
  store double %mul896, ptr %arrayidx899, align 8, !tbaa !9
  %sub902 = fsub fast double %fneg875, %sub787
  %mul905 = fmul fast double %sub902, 4.500000e+00
  %add906 = fadd fast double %mul905, 3.000000e+00
  %mul907 = fmul fast double %add906, %sub902
  %add908 = fadd fast double %mul907, 1.000000e+00
  %sub909 = fsub fast double %add908, %mul795
  %mul910 = fmul fast double %sub909, 0x3F9C71C71C71C71C
  %236 = add nuw nsw i64 %indvars.iv1714, 10
  %arrayidx913 = getelementptr inbounds double, ptr %srcGrid, i64 %236
  store double %mul910, ptr %arrayidx913, align 8, !tbaa !9
  %add915 = fadd fast double %sub787, %sub789
  %mul917 = fmul fast double %add915, 4.500000e+00
  %add918 = fadd fast double %mul917, 3.000000e+00
  %mul919 = fmul fast double %add918, %add915
  %add920 = fadd fast double %mul919, 1.000000e+00
  %sub921 = fsub fast double %add920, %mul795
  %mul922 = fmul fast double %sub921, 0x3F9C71C71C71C71C
  %237 = add nuw nsw i64 %indvars.iv1714, 11
  %arrayidx925 = getelementptr inbounds double, ptr %srcGrid, i64 %237
  store double %mul922, ptr %arrayidx925, align 8, !tbaa !9
  %sub927 = fsub fast double %sub787, %sub789
  %mul929 = fmul fast double %sub927, 4.500000e+00
  %add930 = fadd fast double %mul929, 3.000000e+00
  %mul931 = fmul fast double %add930, %sub927
  %add932 = fadd fast double %mul931, 1.000000e+00
  %sub933 = fsub fast double %add932, %mul795
  %mul934 = fmul fast double %sub933, 0x3F9C71C71C71C71C
  %238 = add nuw nsw i64 %indvars.iv1714, 12
  %arrayidx937 = getelementptr inbounds double, ptr %srcGrid, i64 %238
  store double %mul934, ptr %arrayidx937, align 8, !tbaa !9
  %add940 = fsub fast double %sub789, %sub787
  %mul943 = fmul fast double %add940, 4.500000e+00
  %add944 = fadd fast double %mul943, 3.000000e+00
  %mul945 = fmul fast double %add944, %add940
  %add946 = fadd fast double %mul945, 1.000000e+00
  %sub947 = fsub fast double %add946, %mul795
  %mul948 = fmul fast double %sub947, 0x3F9C71C71C71C71C
  %239 = add nuw nsw i64 %indvars.iv1714, 13
  %arrayidx951 = getelementptr inbounds double, ptr %srcGrid, i64 %239
  store double %mul948, ptr %arrayidx951, align 8, !tbaa !9
  %240 = fsub fast double 3.000000e+00, %mul917
  %241 = fmul fast double %240, %add915
  %242 = fadd fast double %241, %mul795
  %243 = fmul fast double %242, 0x3F9C71C71C71C71C
  %mul962 = fsub fast double 0x3F9C71C71C71C71C, %243
  %244 = add nuw nsw i64 %indvars.iv1714, 14
  %arrayidx965 = getelementptr inbounds double, ptr %srcGrid, i64 %244
  store double %mul962, ptr %arrayidx965, align 8, !tbaa !9
  %add967 = fadd fast double %sub785, %sub789
  %mul969 = fmul fast double %add967, 4.500000e+00
  %add970 = fadd fast double %mul969, 3.000000e+00
  %mul971 = fmul fast double %add970, %add967
  %add972 = fadd fast double %mul971, 1.000000e+00
  %sub973 = fsub fast double %add972, %mul795
  %mul974 = fmul fast double %sub973, 0x3F9C71C71C71C71C
  %245 = add nuw nsw i64 %indvars.iv1714, 15
  %arrayidx977 = getelementptr inbounds double, ptr %srcGrid, i64 %245
  store double %mul974, ptr %arrayidx977, align 8, !tbaa !9
  %sub979 = fsub fast double %sub785, %sub789
  %mul981 = fmul fast double %sub979, 4.500000e+00
  %add982 = fadd fast double %mul981, 3.000000e+00
  %mul983 = fmul fast double %add982, %sub979
  %add984 = fadd fast double %mul983, 1.000000e+00
  %sub985 = fsub fast double %add984, %mul795
  %mul986 = fmul fast double %sub985, 0x3F9C71C71C71C71C
  %246 = add nuw nsw i64 %indvars.iv1714, 16
  %arrayidx989 = getelementptr inbounds double, ptr %srcGrid, i64 %246
  store double %mul986, ptr %arrayidx989, align 8, !tbaa !9
  %add992 = fsub fast double %sub789, %sub785
  %mul995 = fmul fast double %add992, 4.500000e+00
  %add996 = fadd fast double %mul995, 3.000000e+00
  %mul997 = fmul fast double %add996, %add992
  %add998 = fadd fast double %mul997, 1.000000e+00
  %sub999 = fsub fast double %add998, %mul795
  %mul1000 = fmul fast double %sub999, 0x3F9C71C71C71C71C
  %247 = add nuw nsw i64 %indvars.iv1714, 17
  %arrayidx1003 = getelementptr inbounds double, ptr %srcGrid, i64 %247
  store double %mul1000, ptr %arrayidx1003, align 8, !tbaa !9
  %sub1006 = fsub fast double %fneg875, %sub789
  %mul1009 = fmul fast double %sub1006, 4.500000e+00
  %add1010 = fadd fast double %mul1009, 3.000000e+00
  %mul1011 = fmul fast double %add1010, %sub1006
  %add1012 = fadd fast double %mul1011, 1.000000e+00
  %sub1013 = fsub fast double %add1012, %mul795
  %mul1014 = fmul fast double %sub1013, 0x3F9C71C71C71C71C
  %248 = add nuw nsw i64 %indvars.iv1714, 18
  %arrayidx1017 = getelementptr inbounds double, ptr %srcGrid, i64 %248
  store double %mul1014, ptr %arrayidx1017, align 8, !tbaa !9
  %indvars.iv.next1715 = add nuw nsw i64 %indvars.iv1714, 20
  %cmp391 = icmp ult i64 %indvars.iv1714, 25999980
  br i1 %cmp391, label %for.body393, label %for.end1020, !llvm.loop !29

for.end1020:                                      ; preds = %for.body393
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LBM_showGridStatistics(ptr nocapture noundef readonly %grid) local_unnamed_addr #9 {
entry:
  br label %for.body

for.body:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.inc ]
  %mass.0373 = phi double [ 0.000000e+00, %entry ], [ %add77, %for.inc ]
  %nObstacleCells.0372 = phi i32 [ 0, %entry ], [ %nObstacleCells.1, %for.inc ]
  %maxRho.0371 = phi double [ -1.000000e+30, %entry ], [ %maxRho.1, %for.inc ]
  %minRho.0370 = phi double [ 1.000000e+30, %entry ], [ %minRho.1, %for.inc ]
  %nAccelCells.0369 = phi i32 [ 0, %entry ], [ %nAccelCells.2, %for.inc ]
  %maxU2.0368 = phi double [ -1.000000e+30, %entry ], [ %maxU2.1, %for.inc ]
  %minU2.0367 = phi double [ 1.000000e+30, %entry ], [ %minU2.2, %for.inc ]
  %nFluidCells.0366 = phi i32 [ 0, %entry ], [ %nFluidCells.2, %for.inc ]
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !9
  %1 = or i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds double, ptr %grid, i64 %1
  %2 = load double, ptr %arrayidx3, align 8, !tbaa !9
  %add4 = fadd fast double %2, %0
  %3 = or i64 %indvars.iv, 2
  %arrayidx7 = getelementptr inbounds double, ptr %grid, i64 %3
  %4 = load double, ptr %arrayidx7, align 8, !tbaa !9
  %add8 = fadd fast double %add4, %4
  %5 = or i64 %indvars.iv, 3
  %arrayidx11 = getelementptr inbounds double, ptr %grid, i64 %5
  %6 = load double, ptr %arrayidx11, align 8, !tbaa !9
  %add12 = fadd fast double %add8, %6
  %7 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx15 = getelementptr inbounds double, ptr %grid, i64 %7
  %8 = load double, ptr %arrayidx15, align 8, !tbaa !9
  %add16 = fadd fast double %add12, %8
  %9 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx19 = getelementptr inbounds double, ptr %grid, i64 %9
  %10 = load double, ptr %arrayidx19, align 8, !tbaa !9
  %add20 = fadd fast double %add16, %10
  %11 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx23 = getelementptr inbounds double, ptr %grid, i64 %11
  %12 = load double, ptr %arrayidx23, align 8, !tbaa !9
  %add24 = fadd fast double %add20, %12
  %13 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx27 = getelementptr inbounds double, ptr %grid, i64 %13
  %14 = load double, ptr %arrayidx27, align 8, !tbaa !9
  %add28 = fadd fast double %add24, %14
  %15 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx31 = getelementptr inbounds double, ptr %grid, i64 %15
  %16 = load double, ptr %arrayidx31, align 8, !tbaa !9
  %add32 = fadd fast double %add28, %16
  %17 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx35 = getelementptr inbounds double, ptr %grid, i64 %17
  %18 = load double, ptr %arrayidx35, align 8, !tbaa !9
  %add36 = fadd fast double %add32, %18
  %19 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx39 = getelementptr inbounds double, ptr %grid, i64 %19
  %20 = load double, ptr %arrayidx39, align 8, !tbaa !9
  %add40 = fadd fast double %add36, %20
  %21 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx43 = getelementptr inbounds double, ptr %grid, i64 %21
  %22 = load double, ptr %arrayidx43, align 8, !tbaa !9
  %add44 = fadd fast double %add40, %22
  %23 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx47 = getelementptr inbounds double, ptr %grid, i64 %23
  %24 = load double, ptr %arrayidx47, align 8, !tbaa !9
  %add48 = fadd fast double %add44, %24
  %25 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx51 = getelementptr inbounds double, ptr %grid, i64 %25
  %26 = load double, ptr %arrayidx51, align 8, !tbaa !9
  %add52 = fadd fast double %add48, %26
  %27 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx55 = getelementptr inbounds double, ptr %grid, i64 %27
  %28 = load double, ptr %arrayidx55, align 8, !tbaa !9
  %add56 = fadd fast double %add52, %28
  %29 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx59 = getelementptr inbounds double, ptr %grid, i64 %29
  %30 = load double, ptr %arrayidx59, align 8, !tbaa !9
  %add60 = fadd fast double %add56, %30
  %31 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx63 = getelementptr inbounds double, ptr %grid, i64 %31
  %32 = load double, ptr %arrayidx63, align 8, !tbaa !9
  %add64 = fadd fast double %add60, %32
  %33 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx67 = getelementptr inbounds double, ptr %grid, i64 %33
  %34 = load double, ptr %arrayidx67, align 8, !tbaa !9
  %add68 = fadd fast double %add64, %34
  %35 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx71 = getelementptr inbounds double, ptr %grid, i64 %35
  %36 = load double, ptr %arrayidx71, align 8, !tbaa !9
  %add72 = fadd fast double %add68, %36
  %cmp73 = fcmp fast olt double %add72, %minRho.0370
  %minRho.1 = select i1 %cmp73, double %add72, double %minRho.0370
  %cmp74 = fcmp fast ogt double %add72, %maxRho.0371
  %maxRho.1 = select i1 %cmp74, double %add72, double %maxRho.0371
  %add77 = fadd fast double %add72, %mass.0373
  %37 = add nuw nsw i64 %indvars.iv, 19
  %arrayidx80 = getelementptr inbounds double, ptr %grid, i64 %37
  %38 = load i32, ptr %arrayidx80, align 4, !tbaa !11
  %and = and i32 %38, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %for.body
  %inc = add nsw i32 %nObstacleCells.0372, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  %and85 = lshr i32 %38, 1
  %and85.lobit = and i32 %and85, 1
  %39 = xor i32 %and85.lobit, 1
  %nFluidCells.1 = add nsw i32 %39, %nFluidCells.0366
  %nAccelCells.1 = add nsw i32 %and85.lobit, %nAccelCells.0369
  %40 = fadd fast double %6, %14
  %41 = fadd fast double %8, %16
  %42 = fadd fast double %40, %18
  %43 = fadd fast double %41, %20
  %44 = fsub fast double %42, %43
  %sub113 = fadd fast double %44, %30
  %add117 = fadd fast double %sub113, %32
  %45 = fadd fast double %34, %36
  %sub129 = fsub fast double %add117, %45
  %.neg358 = fsub fast double %2, %4
  %.neg355 = fadd fast double %.neg358, %14
  %sub136 = fadd fast double %.neg355, %16
  %46 = fadd fast double %18, %20
  %add144 = fsub fast double %sub136, %46
  %sub152 = fadd fast double %add144, %22
  %add156 = fadd fast double %sub152, %24
  %47 = fadd fast double %26, %28
  %sub168 = fsub fast double %add156, %47
  %48 = fadd fast double %10, %22
  %49 = fadd fast double %12, %24
  %50 = fadd fast double %48, %26
  %51 = fadd fast double %49, %28
  %52 = fadd fast double %50, %30
  %53 = fadd fast double %51, %32
  %54 = fadd fast double %52, %34
  %55 = fadd fast double %53, %36
  %sub207 = fsub fast double %54, %55
  %mul = fmul fast double %sub129, %sub129
  %mul208 = fmul fast double %sub168, %sub168
  %add209 = fadd fast double %mul, %mul208
  %mul210 = fmul fast double %sub207, %sub207
  %add211 = fadd fast double %add209, %mul210
  %mul212 = fmul fast double %add72, %add72
  %div = fdiv fast double %add211, %mul212
  %cmp213 = fcmp fast olt double %div, %minU2.0367
  %minU2.1 = select i1 %cmp213, double %div, double %minU2.0367
  %cmp216 = fcmp fast ogt double %div, %maxU2.0368
  br i1 %cmp216, label %if.then217, label %for.inc

if.then217:                                       ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.then217, %if.else, %if.then81
  %nFluidCells.2 = phi i32 [ %nFluidCells.0366, %if.then81 ], [ %nFluidCells.1, %if.then217 ], [ %nFluidCells.1, %if.else ]
  %minU2.2 = phi double [ %minU2.0367, %if.then81 ], [ %minU2.1, %if.then217 ], [ %minU2.1, %if.else ]
  %maxU2.1 = phi double [ %maxU2.0368, %if.then81 ], [ %div, %if.then217 ], [ %maxU2.0368, %if.else ]
  %nAccelCells.2 = phi i32 [ %nAccelCells.0369, %if.then81 ], [ %nAccelCells.1, %if.then217 ], [ %nAccelCells.1, %if.else ]
  %nObstacleCells.1 = phi i32 [ %inc, %if.then81 ], [ %nObstacleCells.0372, %if.then217 ], [ %nObstacleCells.0372, %if.else ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %cmp = icmp ult i64 %indvars.iv, 25999980
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !30

for.end:                                          ; preds = %for.inc
  %nFluidCells.2.lcssa = phi i32 [ %nFluidCells.2, %for.inc ]
  %minU2.2.lcssa = phi double [ %minU2.2, %for.inc ]
  %maxU2.1.lcssa = phi double [ %maxU2.1, %for.inc ]
  %nAccelCells.2.lcssa = phi i32 [ %nAccelCells.2, %for.inc ]
  %nObstacleCells.1.lcssa = phi i32 [ %nObstacleCells.1, %for.inc ]
  %minRho.1.lcssa = phi double [ %minRho.1, %for.inc ]
  %maxRho.1.lcssa = phi double [ %maxRho.1, %for.inc ]
  %add77.lcssa = phi double [ %add77, %for.inc ]
  %call = tail call fast double @__sqrt_finite(double noundef %minU2.2.lcssa) #16
  %call221 = tail call fast double @__sqrt_finite(double noundef %maxU2.1.lcssa) #16
  %call222 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i32 noundef %nObstacleCells.1.lcssa, i32 noundef %nAccelCells.2.lcssa, i32 noundef %nFluidCells.2.lcssa, double noundef %minRho.1.lcssa, double noundef %maxRho.1.lcssa, double noundef %add77.lcssa, double noundef %call, double noundef %call221)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare double @__sqrt_finite(double noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind uwtable
define dso_local void @LBM_storeVelocityField(ptr nocapture noundef readonly %grid, ptr nocapture noundef readonly %filename, i32 noundef %binary) local_unnamed_addr #9 {
entry:
  %ux = alloca float, align 4
  %uy = alloca float, align 4
  %uz = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ux) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uy) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uz) #15
  %tobool.not = icmp eq i32 %binary, 0
  %cond = select i1 %tobool.not, ptr @.str.4, ptr @.str.3
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull %cond)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc501, %entry
  %indvars.iv762 = phi i64 [ 0, %entry ], [ %indvars.iv.next763, %for.inc501 ]
  %0 = mul nuw nsw i64 %indvars.iv762, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc498, %for.cond1.preheader
  %indvars.iv756 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next757, %for.inc498 ]
  %1 = mul nuw nsw i64 %indvars.iv756, 100
  %2 = add nuw nsw i64 %1, %0
  br label %for.body6

for.body6:                                        ; preds = %for.inc, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = add nuw nsw i64 %2, %indvars.iv
  %4 = mul nuw nsw i64 %3, 20
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %4
  %5 = load double, ptr %arrayidx, align 8, !tbaa !9
  %6 = or i64 %4, 1
  %arrayidx20 = getelementptr inbounds double, ptr %grid, i64 %6
  %7 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %add21 = fadd fast double %7, %5
  %8 = or i64 %4, 2
  %arrayidx30 = getelementptr inbounds double, ptr %grid, i64 %8
  %9 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %add31 = fadd fast double %add21, %9
  %10 = or i64 %4, 3
  %arrayidx40 = getelementptr inbounds double, ptr %grid, i64 %10
  %11 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %add41 = fadd fast double %add31, %11
  %12 = add nuw nsw i64 %4, 4
  %arrayidx50 = getelementptr inbounds double, ptr %grid, i64 %12
  %13 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %add51 = fadd fast double %add41, %13
  %14 = add nuw nsw i64 %4, 5
  %arrayidx60 = getelementptr inbounds double, ptr %grid, i64 %14
  %15 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %add61 = fadd fast double %add51, %15
  %16 = add nuw nsw i64 %4, 6
  %arrayidx70 = getelementptr inbounds double, ptr %grid, i64 %16
  %17 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %add71 = fadd fast double %add61, %17
  %18 = add nuw nsw i64 %4, 7
  %arrayidx80 = getelementptr inbounds double, ptr %grid, i64 %18
  %19 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %add81 = fadd fast double %add71, %19
  %20 = add nuw nsw i64 %4, 8
  %arrayidx90 = getelementptr inbounds double, ptr %grid, i64 %20
  %21 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %add91 = fadd fast double %add81, %21
  %22 = add nuw nsw i64 %4, 9
  %arrayidx100 = getelementptr inbounds double, ptr %grid, i64 %22
  %23 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %add101 = fadd fast double %add91, %23
  %24 = add nuw nsw i64 %4, 10
  %arrayidx110 = getelementptr inbounds double, ptr %grid, i64 %24
  %25 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %add111 = fadd fast double %add101, %25
  %26 = add nuw nsw i64 %4, 11
  %arrayidx120 = getelementptr inbounds double, ptr %grid, i64 %26
  %27 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add121 = fadd fast double %add111, %27
  %28 = add nuw nsw i64 %4, 12
  %arrayidx130 = getelementptr inbounds double, ptr %grid, i64 %28
  %29 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add131 = fadd fast double %add121, %29
  %30 = add nuw nsw i64 %4, 13
  %arrayidx140 = getelementptr inbounds double, ptr %grid, i64 %30
  %31 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add141 = fadd fast double %add131, %31
  %32 = add nuw nsw i64 %4, 14
  %arrayidx150 = getelementptr inbounds double, ptr %grid, i64 %32
  %33 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %add151 = fadd fast double %add141, %33
  %34 = add nuw nsw i64 %4, 15
  %arrayidx160 = getelementptr inbounds double, ptr %grid, i64 %34
  %35 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %add161 = fadd fast double %add151, %35
  %36 = add nuw nsw i64 %4, 16
  %arrayidx170 = getelementptr inbounds double, ptr %grid, i64 %36
  %37 = load double, ptr %arrayidx170, align 8, !tbaa !9
  %add171 = fadd fast double %add161, %37
  %38 = add nuw nsw i64 %4, 17
  %arrayidx180 = getelementptr inbounds double, ptr %grid, i64 %38
  %39 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %add181 = fadd fast double %add171, %39
  %40 = add nuw nsw i64 %4, 18
  %arrayidx190 = getelementptr inbounds double, ptr %grid, i64 %40
  %41 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %add191 = fadd fast double %add181, %41
  %conv = fptrunc double %add191 to float
  %42 = fadd fast double %11, %19
  %43 = fadd fast double %13, %21
  %44 = fadd fast double %42, %23
  %45 = fadd fast double %43, %25
  %46 = fsub fast double %44, %45
  %sub249 = fadd fast double %46, %35
  %add259 = fadd fast double %sub249, %37
  %47 = fadd fast double %39, %41
  %sub289 = fsub fast double %add259, %47
  %conv290 = fptrunc double %sub289 to float
  %.neg724 = fsub fast double %7, %9
  %.neg721 = fadd fast double %.neg724, %19
  %sub309 = fadd fast double %.neg721, %21
  %48 = fadd fast double %23, %25
  %add329 = fsub fast double %sub309, %48
  %sub349 = fadd fast double %add329, %27
  %add359 = fadd fast double %sub349, %29
  %49 = fadd fast double %31, %33
  %sub389 = fsub fast double %add359, %49
  %conv390 = fptrunc double %sub389 to float
  %50 = fadd fast double %15, %27
  %51 = fadd fast double %17, %29
  %52 = fadd fast double %50, %31
  %53 = fadd fast double %51, %33
  %54 = fadd fast double %52, %35
  %55 = fadd fast double %53, %37
  %56 = fadd fast double %54, %39
  %57 = fadd fast double %55, %41
  %sub489 = fsub fast double %56, %57
  %conv490 = fptrunc double %sub489 to float
  %div = fdiv fast float %conv290, %conv
  store float %div, ptr %ux, align 4, !tbaa !31
  %div491 = fdiv fast float %conv390, %conv
  store float %div491, ptr %uy, align 4, !tbaa !31
  %div492 = fdiv fast float %conv490, %conv
  store float %div492, ptr %uz, align 4, !tbaa !31
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body6
  %call6.i = call i64 @fwrite(ptr noundef nonnull %ux, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  %call6.i710 = call i64 @fwrite(ptr noundef nonnull %uy, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  %call6.i711 = call i64 @fwrite(ptr noundef nonnull %uz, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  br label %for.inc

if.else:                                          ; preds = %for.body6
  %conv494 = fpext float %div to double
  %conv495 = fpext float %div491 to double
  %conv496 = fpext float %div492 to double
  %call497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %call, ptr noundef nonnull @.str.5, double noundef %conv494, double noundef %conv495, double noundef %conv496)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc498, label %for.body6, !llvm.loop !33

for.inc498:                                       ; preds = %for.inc
  %indvars.iv.next757 = add nuw nsw i64 %indvars.iv756, 1
  %exitcond761.not = icmp eq i64 %indvars.iv.next757, 100
  br i1 %exitcond761.not, label %for.inc501, label %for.cond4.preheader, !llvm.loop !34

for.inc501:                                       ; preds = %for.inc498
  %indvars.iv.next763 = add nuw nsw i64 %indvars.iv762, 1
  %exitcond766.not = icmp eq i64 %indvars.iv.next763, 130
  br i1 %exitcond766.not, label %for.end503, label %for.cond1.preheader, !llvm.loop !35

for.end503:                                       ; preds = %for.inc501
  %call504 = tail call i32 @fclose(ptr noundef %call)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uz) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uy) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ux) #15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @LBM_compareVelocityField(ptr nocapture noundef readonly %grid, ptr nocapture noundef readonly %filename, i32 noundef %binary) local_unnamed_addr #0 {
entry:
  %fileUx = alloca float, align 4
  %fileUy = alloca float, align 4
  %fileUz = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fileUx) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fileUy) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fileUz) #15
  %tobool.not = icmp eq i32 %binary, 0
  %cond = select i1 %tobool.not, ptr @.str.6, ptr @.str.1
  %call = tail call ptr @fopen(ptr noundef %filename, ptr noundef nonnull %cond)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc512, %entry
  %indvars.iv787 = phi i64 [ 0, %entry ], [ %indvars.iv.next788, %for.inc512 ]
  %maxDiff2.0759 = phi float [ 0xC6293E5940000000, %entry ], [ %maxDiff2.3.lcssa.lcssa, %for.inc512 ]
  %0 = mul nuw nsw i64 %indvars.iv787, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc509, %for.cond1.preheader
  %indvars.iv781 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next782, %for.inc509 ]
  %maxDiff2.1757 = phi float [ %maxDiff2.0759, %for.cond1.preheader ], [ %maxDiff2.3.lcssa, %for.inc509 ]
  %1 = mul nuw nsw i64 %indvars.iv781, 100
  %2 = add nuw nsw i64 %1, %0
  br label %for.body6

for.body6:                                        ; preds = %if.end, %for.cond4.preheader
  %indvars.iv = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next, %if.end ]
  %maxDiff2.2754 = phi float [ %maxDiff2.1757, %for.cond4.preheader ], [ %maxDiff2.3, %if.end ]
  %3 = add nuw nsw i64 %2, %indvars.iv
  %4 = mul nuw nsw i64 %3, 20
  %arrayidx = getelementptr inbounds double, ptr %grid, i64 %4
  %5 = load double, ptr %arrayidx, align 8, !tbaa !9
  %6 = or i64 %4, 1
  %arrayidx20 = getelementptr inbounds double, ptr %grid, i64 %6
  %7 = load double, ptr %arrayidx20, align 8, !tbaa !9
  %add21 = fadd fast double %7, %5
  %8 = or i64 %4, 2
  %arrayidx30 = getelementptr inbounds double, ptr %grid, i64 %8
  %9 = load double, ptr %arrayidx30, align 8, !tbaa !9
  %add31 = fadd fast double %add21, %9
  %10 = or i64 %4, 3
  %arrayidx40 = getelementptr inbounds double, ptr %grid, i64 %10
  %11 = load double, ptr %arrayidx40, align 8, !tbaa !9
  %add41 = fadd fast double %add31, %11
  %12 = add nuw nsw i64 %4, 4
  %arrayidx50 = getelementptr inbounds double, ptr %grid, i64 %12
  %13 = load double, ptr %arrayidx50, align 8, !tbaa !9
  %add51 = fadd fast double %add41, %13
  %14 = add nuw nsw i64 %4, 5
  %arrayidx60 = getelementptr inbounds double, ptr %grid, i64 %14
  %15 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %add61 = fadd fast double %add51, %15
  %16 = add nuw nsw i64 %4, 6
  %arrayidx70 = getelementptr inbounds double, ptr %grid, i64 %16
  %17 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %add71 = fadd fast double %add61, %17
  %18 = add nuw nsw i64 %4, 7
  %arrayidx80 = getelementptr inbounds double, ptr %grid, i64 %18
  %19 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %add81 = fadd fast double %add71, %19
  %20 = add nuw nsw i64 %4, 8
  %arrayidx90 = getelementptr inbounds double, ptr %grid, i64 %20
  %21 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %add91 = fadd fast double %add81, %21
  %22 = add nuw nsw i64 %4, 9
  %arrayidx100 = getelementptr inbounds double, ptr %grid, i64 %22
  %23 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %add101 = fadd fast double %add91, %23
  %24 = add nuw nsw i64 %4, 10
  %arrayidx110 = getelementptr inbounds double, ptr %grid, i64 %24
  %25 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %add111 = fadd fast double %add101, %25
  %26 = add nuw nsw i64 %4, 11
  %arrayidx120 = getelementptr inbounds double, ptr %grid, i64 %26
  %27 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add121 = fadd fast double %add111, %27
  %28 = add nuw nsw i64 %4, 12
  %arrayidx130 = getelementptr inbounds double, ptr %grid, i64 %28
  %29 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add131 = fadd fast double %add121, %29
  %30 = add nuw nsw i64 %4, 13
  %arrayidx140 = getelementptr inbounds double, ptr %grid, i64 %30
  %31 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add141 = fadd fast double %add131, %31
  %32 = add nuw nsw i64 %4, 14
  %arrayidx150 = getelementptr inbounds double, ptr %grid, i64 %32
  %33 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %add151 = fadd fast double %add141, %33
  %34 = add nuw nsw i64 %4, 15
  %arrayidx160 = getelementptr inbounds double, ptr %grid, i64 %34
  %35 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %add161 = fadd fast double %add151, %35
  %36 = add nuw nsw i64 %4, 16
  %arrayidx170 = getelementptr inbounds double, ptr %grid, i64 %36
  %37 = load double, ptr %arrayidx170, align 8, !tbaa !9
  %add171 = fadd fast double %add161, %37
  %38 = add nuw nsw i64 %4, 17
  %arrayidx180 = getelementptr inbounds double, ptr %grid, i64 %38
  %39 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %add181 = fadd fast double %add171, %39
  %40 = add nuw nsw i64 %4, 18
  %arrayidx190 = getelementptr inbounds double, ptr %grid, i64 %40
  %41 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %add191 = fadd fast double %add181, %41
  %42 = fadd fast double %11, %19
  %43 = fadd fast double %13, %21
  %44 = fadd fast double %42, %23
  %45 = fadd fast double %43, %25
  %46 = fsub fast double %44, %45
  %sub249 = fadd fast double %46, %35
  %add259 = fadd fast double %sub249, %37
  %47 = fadd fast double %39, %41
  %sub289 = fsub fast double %add259, %47
  %.neg746 = fsub fast double %7, %9
  %.neg743 = fadd fast double %.neg746, %19
  %sub308 = fadd fast double %.neg743, %21
  %48 = fadd fast double %23, %25
  %add328 = fsub fast double %sub308, %48
  %sub348 = fadd fast double %add328, %27
  %add358 = fadd fast double %sub348, %29
  %49 = fadd fast double %31, %33
  %sub388 = fsub fast double %add358, %49
  %50 = fadd fast double %15, %27
  %51 = fadd fast double %17, %29
  %52 = fadd fast double %50, %31
  %53 = fadd fast double %51, %33
  %54 = fadd fast double %52, %35
  %55 = fadd fast double %53, %37
  %56 = fadd fast double %54, %39
  %57 = fadd fast double %55, %41
  %sub487 = fsub fast double %56, %57
  %div = fdiv fast double %sub289, %add191
  %div488 = fdiv fast double %sub388, %add191
  %div489 = fdiv fast double %sub487, %add191
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body6
  %call6.i = call i64 @fread(ptr noundef nonnull %fileUx, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  %call6.i732 = call i64 @fread(ptr noundef nonnull %fileUy, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  %call6.i733 = call i64 @fread(ptr noundef nonnull %fileUz, i64 noundef 4, i64 noundef 1, ptr noundef %call) #15
  br label %if.end

if.else:                                          ; preds = %for.body6
  %call491 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %call, ptr noundef nonnull @.str.7, ptr noundef nonnull %fileUx, ptr noundef nonnull %fileUy, ptr noundef nonnull %fileUz) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %58 = load float, ptr %fileUx, align 4, !tbaa !31
  %conv = fpext float %58 to double
  %sub492 = fsub fast double %div, %conv
  %conv493 = fptrunc double %sub492 to float
  %59 = load float, ptr %fileUy, align 4, !tbaa !31
  %conv494 = fpext float %59 to double
  %sub495 = fsub fast double %div488, %conv494
  %conv496 = fptrunc double %sub495 to float
  %60 = load float, ptr %fileUz, align 4, !tbaa !31
  %conv497 = fpext float %60 to double
  %sub498 = fsub fast double %div489, %conv497
  %conv499 = fptrunc double %sub498 to float
  %mul500 = fmul fast float %conv493, %conv493
  %mul501 = fmul fast float %conv496, %conv496
  %add502 = fadd fast float %mul501, %mul500
  %mul503 = fmul fast float %conv499, %conv499
  %add504 = fadd fast float %add502, %mul503
  %cmp505 = fcmp fast ogt float %add504, %maxDiff2.2754
  %maxDiff2.3 = select i1 %cmp505, float %add504, float %maxDiff2.2754
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc509, label %for.body6, !llvm.loop !36

for.inc509:                                       ; preds = %if.end
  %maxDiff2.3.lcssa = phi float [ %maxDiff2.3, %if.end ]
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond786.not = icmp eq i64 %indvars.iv.next782, 100
  br i1 %exitcond786.not, label %for.inc512, label %for.cond4.preheader, !llvm.loop !37

for.inc512:                                       ; preds = %for.inc509
  %maxDiff2.3.lcssa.lcssa = phi float [ %maxDiff2.3.lcssa, %for.inc509 ]
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  %exitcond791.not = icmp eq i64 %indvars.iv.next788, 130
  br i1 %exitcond791.not, label %for.end514, label %for.cond1.preheader, !llvm.loop !38

for.end514:                                       ; preds = %for.inc512
  %maxDiff2.3.lcssa.lcssa.lcssa = phi float [ %maxDiff2.3.lcssa.lcssa, %for.inc512 ]
  %conv515 = fpext float %maxDiff2.3.lcssa.lcssa.lcssa to double
  %call516 = call fast double @__sqrt_finite(double noundef %conv515) #16
  %call517 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, double noundef %call516)
  %call518 = call i32 @fclose(ptr noundef %call)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fileUz) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fileUy) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fileUx) #15
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nofree nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { argmemonly nofree norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #12 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (git@github.com:llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
!22 = distinct !{!22, !14, !15}
!23 = distinct !{!23, !14, !15}
!24 = distinct !{!24, !14, !15}
!25 = distinct !{!25, !14, !15}
!26 = distinct !{!26, !14, !15, !27}
!27 = !{!"llvm.loop.vectorize.enable", i1 true}
!28 = distinct !{!28, !14, !15}
!29 = distinct !{!29, !14, !15}
!30 = distinct !{!30, !14, !15}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !7, i64 0}
!33 = distinct !{!33, !14, !15}
!34 = distinct !{!34, !14, !15}
!35 = distinct !{!35, !14, !15}
!36 = distinct !{!36, !14, !15}
!37 = distinct !{!37, !14, !15}
!38 = distinct !{!38, !14, !15}
