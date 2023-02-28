; ModuleID = 'scalar_lbm-before.ll'
source_filename = "lbm-src/scalar_lbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
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
  store <2 x double> <double 0x3FD5555555555555, double 0x3FAC71C71C71C71C>, ptr %arrayidx, align 8, !tbaa !9
  %0 = or i64 %indvars.iv, 2
  %arrayidx6 = getelementptr inbounds double, ptr %grid, i64 %0
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %arrayidx6, align 8, !tbaa !9
  %1 = add nsw i64 %indvars.iv, 4
  %arrayidx12 = getelementptr inbounds double, ptr %grid, i64 %1
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>, ptr %arrayidx12, align 8, !tbaa !9
  %2 = add nsw i64 %indvars.iv, 6
  %arrayidx18 = getelementptr inbounds double, ptr %grid, i64 %2
  store <2 x double> <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx18, align 8, !tbaa !9
  %3 = add nsw i64 %indvars.iv, 8
  %arrayidx24 = getelementptr inbounds double, ptr %grid, i64 %3
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx24, align 8, !tbaa !9
  %4 = add nsw i64 %indvars.iv, 10
  %arrayidx30 = getelementptr inbounds double, ptr %grid, i64 %4
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx30, align 8, !tbaa !9
  %5 = add nsw i64 %indvars.iv, 12
  %arrayidx36 = getelementptr inbounds double, ptr %grid, i64 %5
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx36, align 8, !tbaa !9
  %6 = add nsw i64 %indvars.iv, 14
  %arrayidx42 = getelementptr inbounds double, ptr %grid, i64 %6
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx42, align 8, !tbaa !9
  %7 = add nsw i64 %indvars.iv, 16
  %arrayidx48 = getelementptr inbounds double, ptr %grid, i64 %7
  store <2 x double> <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>, ptr %arrayidx48, align 8, !tbaa !9
  %8 = add nsw i64 %indvars.iv, 18
  %arrayidx54 = getelementptr inbounds double, ptr %grid, i64 %8
  store double 0x3F9C71C71C71C71C, ptr %arrayidx54, align 8, !tbaa !9
  %9 = add nsw i64 %indvars.iv, 19
  %arrayidx57 = getelementptr inbounds double, ptr %grid, i64 %9
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
  switch i32 %3, label %for.cond4.preheader [
    i32 129, label %for.cond4.preheader.us.preheader
    i32 0, label %for.cond4.preheader.us.preheader
  ]

for.cond4.preheader.us.preheader:                 ; preds = %for.cond1.preheader, %for.cond1.preheader
  br label %for.cond4.preheader.us

for.cond4.preheader.us:                           ; preds = %for.cond4.preheader.us.preheader, %for.inc45.split.us.us
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
  br i1 %exitcond111.not, label %for.inc48, label %for.cond4.preheader.us, !llvm.loop !20

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc45
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.inc45 ], [ 0, %for.cond1.preheader ]
  %10 = mul nuw nsw i64 %indvars.iv136, 100
  %11 = add nsw i64 %10, %2
  %12 = trunc i64 %indvars.iv136 to i32
  switch i32 %12, label %for.cond4.preheader.split [
    i32 99, label %for.body6.us.preheader
    i32 0, label %for.body6.us.preheader
  ]

for.body6.us.preheader:                           ; preds = %for.cond4.preheader, %for.cond4.preheader
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us.preheader, %for.body6.us
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body6.us ], [ 0, %for.body6.us.preheader ]
  %13 = add nsw i64 %indvars.iv112, %11
  %14 = mul nsw i64 %13, 20
  %15 = add nsw i64 %14, 19
  %arrayidx.us = getelementptr inbounds double, ptr %grid, i64 %15
  %16 = load i32, ptr %arrayidx.us, align 4, !tbaa !11
  %or.us = or i32 %16, 1
  store i32 %or.us, ptr %arrayidx.us, align 4, !tbaa !11
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond118.not = icmp eq i64 %indvars.iv.next113, 100
  br i1 %exitcond118.not, label %for.inc45, label %for.body6.us, !llvm.loop !19

for.cond4.preheader.split:                        ; preds = %for.cond4.preheader
  %17 = add i32 %12, -2
  %18 = icmp ult i32 %17, 96
  %19 = and i1 %or.cond55, %18
  br i1 %19, label %for.body6, label %for.body6.us85

for.body6.us85:                                   ; preds = %for.cond4.preheader.split, %for.inc.us94
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc.us94 ], [ 0, %for.cond4.preheader.split ]
  %20 = trunc i64 %indvars.iv119 to i32
  switch i32 %20, label %for.inc.us94 [
    i32 99, label %if.then.us87
    i32 0, label %if.then.us87
  ]

if.then.us87:                                     ; preds = %for.body6.us85, %for.body6.us85
  %21 = add nsw i64 %indvars.iv119, %11
  %22 = mul nsw i64 %21, 20
  %23 = add nsw i64 %22, 19
  %arrayidx.us92 = getelementptr inbounds double, ptr %grid, i64 %23
  %24 = load i32, ptr %arrayidx.us92, align 4, !tbaa !11
  %or.us93 = or i32 %24, 1
  store i32 %or.us93, ptr %arrayidx.us92, align 4, !tbaa !11
  br label %for.inc.us94

for.inc.us94:                                     ; preds = %if.then.us87, %for.body6.us85
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next120, 100
  br i1 %exitcond125.not, label %for.inc45, label %for.body6.us85, !llvm.loop !19

for.body6:                                        ; preds = %for.cond4.preheader.split, %for.inc
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.inc ], [ 0, %for.cond4.preheader.split ]
  %25 = trunc i64 %indvars.iv126 to i32
  switch i32 %25, label %if.else [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %for.body6, %for.body6
  %26 = add nsw i64 %indvars.iv126, %11
  %27 = mul nsw i64 %26, 20
  %28 = add nsw i64 %27, 19
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body6
  %29 = add i32 %25, -2
  %30 = icmp ult i32 %29, 96
  br i1 %30, label %if.then32, label %for.inc

if.then32:                                        ; preds = %if.else
  %31 = add nsw i64 %indvars.iv126, %11
  %32 = mul nsw i64 %31, 20
  %33 = add nsw i64 %32, 19
  %idxprom4182 = and i64 %33, 4294967295
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then32, %if.then
  %idxprom4182.sink = phi i64 [ %idxprom4182, %if.then32 ], [ %28, %if.then ]
  %.sink154 = phi i32 [ 2, %if.then32 ], [ 1, %if.then ]
  %arrayidx42 = getelementptr inbounds double, ptr %grid, i64 %idxprom4182.sink
  %34 = load i32, ptr %arrayidx42, align 4, !tbaa !11
  %or = or i32 %34, %.sink154
  store i32 %or, ptr %arrayidx42, align 4, !tbaa !11
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond135.not = icmp eq i64 %indvars.iv.next127, 100
  br i1 %exitcond135.not, label %for.inc45, label %for.body6, !llvm.loop !19

for.inc45:                                        ; preds = %for.body6.us, %for.inc.us94, %for.inc
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond143.not = icmp eq i64 %indvars.iv.next137, 100
  br i1 %exitcond143.not, label %for.inc48, label %for.cond4.preheader, !llvm.loop !20

for.inc48:                                        ; preds = %for.inc45.split.us.us, %for.inc45
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
  switch i32 %3, label %for.body6 [
    i32 99, label %for.body6.us.preheader
    i32 0, label %for.body6.us.preheader
  ]

for.body6.us.preheader:                           ; preds = %for.cond4.preheader, %for.cond4.preheader
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us.preheader, %for.body6.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us ], [ 0, %for.body6.us.preheader ]
  %4 = add nsw i64 %indvars.iv, %2
  %5 = mul nsw i64 %4, 20
  %6 = add nsw i64 %5, 19
  %arrayidx.us = getelementptr inbounds double, ptr %grid, i64 %6
  %7 = load i32, ptr %arrayidx.us, align 4, !tbaa !11
  %or.us = or i32 %7, 1
  store i32 %or.us, ptr %arrayidx.us, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc43, label %for.body6.us, !llvm.loop !22

for.body6:                                        ; preds = %for.cond4.preheader, %for.inc
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc ], [ 0, %for.cond4.preheader ]
  %8 = trunc i64 %indvars.iv81 to i32
  switch i32 %8, label %for.inc [
    i32 99, label %if.then
    i32 0, label %if.then
  ]

if.then:                                          ; preds = %for.body6, %for.body6
  %9 = add nsw i64 %indvars.iv81, %2
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
  br i1 %exitcond87.not, label %for.inc43, label %for.body6, !llvm.loop !22

for.inc43:                                        ; preds = %for.body6.us, %for.inc
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
  %65 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx140 = getelementptr inbounds double, ptr %srcGrid, i64 %65
  %66 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %67 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx144 = getelementptr inbounds double, ptr %srcGrid, i64 %67
  %68 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %69 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx148 = getelementptr inbounds double, ptr %srcGrid, i64 %69
  %70 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %71 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx152 = getelementptr inbounds double, ptr %srcGrid, i64 %71
  %72 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx156 = getelementptr inbounds double, ptr %srcGrid, i64 %72
  %73 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %74 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx160 = getelementptr inbounds double, ptr %srcGrid, i64 %74
  %75 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %76 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx164 = getelementptr inbounds double, ptr %srcGrid, i64 %76
  %77 = load double, ptr %arrayidx164, align 8, !tbaa !9
  %78 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx168 = getelementptr inbounds double, ptr %srcGrid, i64 %78
  %79 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx172 = getelementptr inbounds double, ptr %srcGrid, i64 %79
  %80 = load <2 x double>, ptr %arrayidx168, align 8, !tbaa !9
  %81 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx176 = getelementptr inbounds double, ptr %srcGrid, i64 %81
  %82 = load double, ptr %arrayidx176, align 8, !tbaa !9
  %83 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx180 = getelementptr inbounds double, ptr %srcGrid, i64 %83
  %84 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx184 = getelementptr inbounds double, ptr %srcGrid, i64 %84
  %85 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx188 = getelementptr inbounds double, ptr %srcGrid, i64 %85
  %86 = load double, ptr %arrayidx188, align 8, !tbaa !9
  %87 = fadd fast double %61, %68
  %88 = fadd fast double %63, %70
  %89 = fadd fast double %88, %73
  %.neg13 = fsub fast double %57, %59
  %.neg10 = fadd fast double %.neg13, %68
  %.neg1007 = fadd fast double %.neg10, %70
  %90 = extractelement <2 x double> %80, i64 0
  %91 = extractelement <2 x double> %80, i64 1
  %92 = fadd fast double %90, %91
  %93 = fadd fast double %66, %77
  %94 = fadd fast double %93, %91
  %and311 = and i32 %1, 2
  %tobool312.not = icmp eq i32 %and311, 0
  %mul323 = fmul fast double %2, 0x3FEE666666666666
  %arrayidx330 = getelementptr inbounds double, ptr %dstGrid, i64 %indvars.iv
  %95 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx345 = getelementptr inbounds double, ptr %dstGrid, i64 %95
  %96 = add nsw i64 %indvars.iv, -1998
  %arrayidx360 = getelementptr inbounds double, ptr %dstGrid, i64 %96
  %97 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx375 = getelementptr inbounds double, ptr %dstGrid, i64 %97
  %98 = add nsw i64 %indvars.iv, -16
  %arrayidx390 = getelementptr inbounds double, ptr %dstGrid, i64 %98
  %99 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx405 = getelementptr inbounds double, ptr %dstGrid, i64 %99
  %100 = add nsw i64 %indvars.iv, -199994
  %arrayidx420 = getelementptr inbounds double, ptr %dstGrid, i64 %100
  %101 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx437 = getelementptr inbounds double, ptr %dstGrid, i64 %101
  %102 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx455 = getelementptr inbounds double, ptr %dstGrid, i64 %102
  %103 = add nsw i64 %indvars.iv, -1971
  %arrayidx472 = getelementptr inbounds double, ptr %dstGrid, i64 %103
  %104 = add nsw i64 %indvars.iv, -2010
  %arrayidx491 = getelementptr inbounds double, ptr %dstGrid, i64 %104
  %105 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx508 = getelementptr inbounds double, ptr %dstGrid, i64 %105
  %106 = add nsw i64 %indvars.iv, -197988
  %arrayidx525 = getelementptr inbounds double, ptr %dstGrid, i64 %106
  %107 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx544 = getelementptr inbounds double, ptr %dstGrid, i64 %107
  %108 = add nsw i64 %indvars.iv, -201986
  %arrayidx563 = getelementptr inbounds double, ptr %dstGrid, i64 %108
  %109 = add nuw nsw i64 %indvars.iv, 200035
  %arrayidx580 = getelementptr inbounds double, ptr %dstGrid, i64 %109
  %110 = add nsw i64 %indvars.iv, -199964
  %arrayidx597 = getelementptr inbounds double, ptr %dstGrid, i64 %110
  %111 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx616 = getelementptr inbounds double, ptr %dstGrid, i64 %111
  %112 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %add137 = fadd fast double %add133, %112
  %add141 = fadd fast double %add137, %66
  %add145 = fadd fast double %add141, %68
  %add149 = fadd fast double %add145, %70
  %113 = load double, ptr %arrayidx152, align 8, !tbaa !9
  %add153 = fadd fast double %add149, %113
  %add157 = fadd fast double %add153, %73
  %add161 = fadd fast double %add157, %75
  %add165 = fadd fast double %add161, %77
  %add169 = fadd fast double %add165, %90
  %add173 = fadd fast double %add169, %91
  %add177 = fadd fast double %add173, %82
  %114 = load <2 x double>, ptr %arrayidx180, align 8, !tbaa !9
  %shuffle = shufflevector <2 x double> %114, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %115 = extractelement <2 x double> %114, i64 0
  %add181 = fadd fast double %add177, %115
  %116 = extractelement <2 x double> %114, i64 1
  %add185 = fadd fast double %add181, %116
  %add189 = fadd fast double %add185, %86
  %117 = fadd fast double %113, %73
  %sub234 = fsub fast double %.neg1007, %117
  %add242 = fadd fast double %sub234, %75
  %sub250 = fadd fast double %add242, %77
  %sub266 = fsub fast double %sub250, %92
  %118 = insertelement <2 x double> poison, double %75, i64 0
  %119 = insertelement <2 x double> %118, double %87, i64 1
  %120 = insertelement <2 x double> poison, double %112, i64 0
  %121 = insertelement <2 x double> %120, double %113, i64 1
  %122 = fadd fast <2 x double> %119, %121
  %123 = insertelement <2 x double> %80, double %89, i64 1
  %124 = fadd fast <2 x double> %122, %123
  %125 = fsub fast <2 x double> %122, %123
  %126 = shufflevector <2 x double> %124, <2 x double> %125, <2 x i32> <i32 0, i32 3>
  %127 = insertelement <2 x double> poison, double %82, i64 0
  %128 = shufflevector <2 x double> %127, <2 x double> poison, <2 x i32> zeroinitializer
  %129 = fadd fast <2 x double> %126, %128
  %130 = fadd fast double %94, %115
  %131 = fadd fast <2 x double> %129, %shuffle
  %132 = insertelement <2 x double> poison, double %130, i64 0
  %133 = insertelement <2 x double> %132, double %86, i64 1
  %134 = insertelement <2 x double> %114, double %86, i64 0
  %135 = fadd fast <2 x double> %133, %134
  %136 = fsub fast <2 x double> %131, %135
  %div306 = fdiv fast double %sub266, %add189
  %137 = insertelement <2 x double> poison, double %add189, i64 0
  %138 = shufflevector <2 x double> %137, <2 x double> poison, <2 x i32> zeroinitializer
  %139 = fdiv fast <2 x double> %136, %138
  %uy.0 = select i1 %tobool312.not, double %div306, double 2.000000e-03
  %140 = insertelement <2 x i1> poison, i1 %tobool312.not, i64 0
  %141 = shufflevector <2 x i1> %140, <2 x i1> poison, <2 x i32> zeroinitializer
  %142 = select <2 x i1> %141, <2 x double> %139, <2 x double> <double 0.000000e+00, double 5.000000e-03>
  %mul315 = fmul fast double %uy.0, %uy.0
  %143 = extractelement <2 x double> %142, i64 0
  %144 = fmul fast <2 x double> %142, %142
  %mul324 = fmul fast double %add189, 0x3FE4CCCCCCCCCCCC
  %145 = extractelement <2 x double> %142, i64 1
  %fneg = fneg fast double %145
  %146 = insertelement <2 x double> %142, double %fneg, i64 0
  %147 = fsub fast <2 x double> %146, %142
  %148 = fmul fast <2 x double> %146, %142
  %149 = shufflevector <2 x double> %147, <2 x double> %148, <2 x i32> <i32 0, i32 3>
  %150 = insertelement <2 x double> <double 4.500000e+00, double poison>, double %mul315, i64 1
  %151 = fmul fast <2 x double> %149, %150
  %152 = fadd fast <2 x double> %149, %150
  %153 = shufflevector <2 x double> %151, <2 x double> %152, <2 x i32> <i32 0, i32 3>
  %154 = shufflevector <2 x double> <double 3.000000e+00, double poison>, <2 x double> %144, <2 x i32> <i32 0, i32 2>
  %155 = fadd fast <2 x double> %153, %154
  %156 = insertelement <2 x double> %147, double 1.500000e+00, i64 1
  %157 = fmul fast <2 x double> %155, %156
  %158 = extractelement <2 x double> %157, i64 1
  %sub325 = fsub fast double 1.000000e+00, %158
  %mul326 = fmul fast double %mul324, %sub325
  %159 = fsub fast double %mul326, %mul323
  store double %159, ptr %arrayidx330, align 8, !tbaa !9
  %160 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %mul334 = fmul fast double %160, 0x3FEE666666666666
  %mul335 = fmul fast double %add189, 0x3FBBBBBBBBBBBBBB
  %mul336 = fmul fast double %uy.0, 4.500000e+00
  %add337 = fadd fast double %mul336, 3.000000e+00
  %mul338 = fmul fast double %add337, %uy.0
  %add339 = fadd fast double %mul338, 1.000000e+00
  %sub340 = fsub fast double %add339, %158
  %mul341 = fmul fast double %sub340, %mul335
  %161 = fsub fast double %mul341, %mul334
  store double %161, ptr %arrayidx345, align 8, !tbaa !9
  %162 = load double, ptr %arrayidx124, align 8, !tbaa !9
  %mul349 = fmul fast double %162, 0x3FEE666666666666
  %sub352 = fadd fast double %mul336, -3.000000e+00
  %mul353 = fmul fast double %sub352, %uy.0
  %add354 = fadd fast double %mul353, 1.000000e+00
  %sub355 = fsub fast double %add354, %158
  %mul356 = fmul fast double %sub355, %mul335
  %163 = fsub fast double %mul356, %mul349
  store double %163, ptr %arrayidx360, align 8, !tbaa !9
  %164 = load double, ptr %arrayidx128, align 8, !tbaa !9
  %mul364 = fmul fast double %164, 0x3FEE666666666666
  %mul366 = fmul fast double %145, 4.500000e+00
  %add367 = fadd fast double %mul366, 3.000000e+00
  %mul368 = fmul fast double %add367, %145
  %add369 = fadd fast double %mul368, 1.000000e+00
  %sub370 = fsub fast double %add369, %158
  %mul371 = fmul fast double %sub370, %mul335
  %165 = fsub fast double %mul371, %mul364
  store double %165, ptr %arrayidx375, align 8, !tbaa !9
  %166 = load double, ptr %arrayidx132, align 8, !tbaa !9
  %mul379 = fmul fast double %166, 0x3FEE666666666666
  %sub382 = fadd fast double %mul366, -3.000000e+00
  %mul383 = fmul fast double %sub382, %145
  %add384 = fadd fast double %mul383, 1.000000e+00
  %sub385 = fsub fast double %add384, %158
  %mul386 = fmul fast double %sub385, %mul335
  %167 = fsub fast double %mul386, %mul379
  store double %167, ptr %arrayidx390, align 8, !tbaa !9
  %168 = load double, ptr %arrayidx136, align 8, !tbaa !9
  %mul394 = fmul fast double %168, 0x3FEE666666666666
  %mul396 = fmul fast double %143, 4.500000e+00
  %add397 = fadd fast double %mul396, 3.000000e+00
  %mul398 = fmul fast double %add397, %143
  %add399 = fadd fast double %mul398, 1.000000e+00
  %sub400 = fsub fast double %add399, %158
  %mul401 = fmul fast double %sub400, %mul335
  %169 = fsub fast double %mul401, %mul394
  store double %169, ptr %arrayidx405, align 8, !tbaa !9
  %170 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %mul409 = fmul fast double %170, 0x3FEE666666666666
  %sub412 = fadd fast double %mul396, -3.000000e+00
  %mul413 = fmul fast double %sub412, %143
  %add414 = fadd fast double %mul413, 1.000000e+00
  %sub415 = fsub fast double %add414, %158
  %mul416 = fmul fast double %sub415, %mul335
  %171 = fsub fast double %mul416, %mul409
  store double %171, ptr %arrayidx420, align 8, !tbaa !9
  %172 = load double, ptr %arrayidx144, align 8, !tbaa !9
  %mul424 = fmul fast double %172, 0x3FEE666666666666
  %mul425 = fmul fast double %add189, 0x3FABBBBBBBBBBBBB
  %add426 = fadd fast double %145, %uy.0
  %mul428 = fmul fast double %add426, 4.500000e+00
  %add429 = fadd fast double %mul428, 3.000000e+00
  %mul430 = fmul fast double %add429, %add426
  %add431 = fadd fast double %mul430, 1.000000e+00
  %sub432 = fsub fast double %add431, %158
  %mul433 = fmul fast double %sub432, %mul425
  %173 = fsub fast double %mul433, %mul424
  store double %173, ptr %arrayidx437, align 8, !tbaa !9
  %174 = load double, ptr %arrayidx148, align 8, !tbaa !9
  %mul441 = fmul fast double %174, 0x3FEE666666666666
  %add443 = fsub fast double %uy.0, %145
  %mul446 = fmul fast double %add443, 4.500000e+00
  %add447 = fadd fast double %mul446, 3.000000e+00
  %mul448 = fmul fast double %add447, %add443
  %add449 = fadd fast double %mul448, 1.000000e+00
  %sub450 = fsub fast double %add449, %158
  %mul451 = fmul fast double %sub450, %mul425
  %175 = fsub fast double %mul451, %mul441
  store double %175, ptr %arrayidx455, align 8, !tbaa !9
  %176 = load double, ptr %arrayidx152, align 8, !tbaa !9
  %mul459 = fmul fast double %176, 0x3FEE666666666666
  %sub461 = fsub fast double %145, %uy.0
  %mul463 = fmul fast double %sub461, 4.500000e+00
  %add464 = fadd fast double %mul463, 3.000000e+00
  %mul465 = fmul fast double %add464, %sub461
  %add466 = fadd fast double %mul465, 1.000000e+00
  %sub467 = fsub fast double %add466, %158
  %mul468 = fmul fast double %sub467, %mul425
  %177 = fsub fast double %mul468, %mul459
  store double %177, ptr %arrayidx472, align 8, !tbaa !9
  %178 = load double, ptr %arrayidx156, align 8, !tbaa !9
  %mul476 = fmul fast double %178, 0x3FEE666666666666
  %sub479 = fsub fast double %fneg, %uy.0
  %mul482 = fmul fast double %sub479, 4.500000e+00
  %add483 = fadd fast double %mul482, 3.000000e+00
  %mul484 = fmul fast double %add483, %sub479
  %add485 = fadd fast double %mul484, 1.000000e+00
  %sub486 = fsub fast double %add485, %158
  %mul487 = fmul fast double %sub486, %mul425
  %179 = fsub fast double %mul487, %mul476
  store double %179, ptr %arrayidx491, align 8, !tbaa !9
  %180 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %mul495 = fmul fast double %180, 0x3FEE666666666666
  %add497 = fadd fast double %uy.0, %143
  %mul499 = fmul fast double %add497, 4.500000e+00
  %add500 = fadd fast double %mul499, 3.000000e+00
  %mul501 = fmul fast double %add500, %add497
  %add502 = fadd fast double %mul501, 1.000000e+00
  %sub503 = fsub fast double %add502, %158
  %mul504 = fmul fast double %sub503, %mul425
  %181 = fsub fast double %mul504, %mul495
  store double %181, ptr %arrayidx508, align 8, !tbaa !9
  %182 = load double, ptr %arrayidx164, align 8, !tbaa !9
  %mul512 = fmul fast double %182, 0x3FEE666666666666
  %sub514 = fsub fast double %uy.0, %143
  %mul516 = fmul fast double %sub514, 4.500000e+00
  %add517 = fadd fast double %mul516, 3.000000e+00
  %mul518 = fmul fast double %add517, %sub514
  %add519 = fadd fast double %mul518, 1.000000e+00
  %sub520 = fsub fast double %add519, %158
  %mul521 = fmul fast double %sub520, %mul425
  %183 = fsub fast double %mul521, %mul512
  store double %183, ptr %arrayidx525, align 8, !tbaa !9
  %184 = load double, ptr %arrayidx168, align 8, !tbaa !9
  %mul529 = fmul fast double %184, 0x3FEE666666666666
  %add532 = fsub fast double %143, %uy.0
  %mul535 = fmul fast double %add532, 4.500000e+00
  %add536 = fadd fast double %mul535, 3.000000e+00
  %mul537 = fmul fast double %add536, %add532
  %add538 = fadd fast double %mul537, 1.000000e+00
  %sub539 = fsub fast double %add538, %158
  %mul540 = fmul fast double %sub539, %mul425
  %185 = fsub fast double %mul540, %mul529
  store double %185, ptr %arrayidx544, align 8, !tbaa !9
  %186 = load double, ptr %arrayidx172, align 8, !tbaa !9
  %mul548 = fmul fast double %186, 0x3FEE666666666666
  %187 = fadd fast double %mul499, -3.000000e+00
  %.neg1015 = fmul fast double %187, %add497
  %sub558 = fadd fast double %sub325, %.neg1015
  %mul559 = fmul fast double %sub558, %mul425
  %188 = fsub fast double %mul559, %mul548
  store double %188, ptr %arrayidx563, align 8, !tbaa !9
  %189 = load double, ptr %arrayidx176, align 8, !tbaa !9
  %mul567 = fmul fast double %189, 0x3FEE666666666666
  %add569 = fadd fast double %145, %143
  %mul571 = fmul fast double %add569, 4.500000e+00
  %add572 = fadd fast double %mul571, 3.000000e+00
  %mul573 = fmul fast double %add572, %add569
  %add574 = fadd fast double %mul573, 1.000000e+00
  %sub575 = fsub fast double %add574, %158
  %mul576 = fmul fast double %sub575, %mul425
  %190 = fsub fast double %mul576, %mul567
  store double %190, ptr %arrayidx580, align 8, !tbaa !9
  %191 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %mul584 = fmul fast double %191, 0x3FEE666666666666
  %sub586 = fsub fast double %145, %143
  %mul588 = fmul fast double %sub586, 4.500000e+00
  %add589 = fadd fast double %mul588, 3.000000e+00
  %mul590 = fmul fast double %add589, %sub586
  %add591 = fadd fast double %mul590, 1.000000e+00
  %sub592 = fsub fast double %add591, %158
  %mul593 = fmul fast double %sub592, %mul425
  %192 = fsub fast double %mul593, %mul584
  store double %192, ptr %arrayidx597, align 8, !tbaa !9
  %193 = load double, ptr %arrayidx184, align 8, !tbaa !9
  %mul601 = fmul fast double %193, 0x3FEE666666666666
  %add604 = fsub fast double %143, %145
  %mul607 = fmul fast double %add604, 4.500000e+00
  %add608 = fadd fast double %mul607, 3.000000e+00
  %mul609 = fmul fast double %add608, %add604
  %add610 = fadd fast double %mul609, 1.000000e+00
  %sub611 = fsub fast double %add610, %158
  %mul612 = fmul fast double %sub611, %mul425
  %194 = fsub fast double %mul612, %mul601
  store double %194, ptr %arrayidx616, align 8, !tbaa !9
  %195 = load double, ptr %arrayidx188, align 8, !tbaa !9
  %mul620 = fmul fast double %195, 0x3FEE666666666666
  %196 = extractelement <2 x double> %157, i64 0
  %add629 = fadd fast double %196, 1.000000e+00
  %sub630 = fsub fast double %add629, %158
  %mul631 = fmul fast double %sub630, %mul425
  %197 = fsub fast double %mul631, %mul620
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %.sink1094 = phi i64 [ -200002, %if.end ], [ 200035, %if.then ]
  %.sink = phi double [ %197, %if.end ], [ %55, %if.then ]
  %198 = add nsw i64 %.sink1094, %indvars.iv
  %arrayidx635 = getelementptr inbounds double, ptr %dstGrid, i64 %198
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
  %65 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx142 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %65
  %66 = load double, ptr %arrayidx142, align 8, !tbaa !9
  %67 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx146 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %67
  %68 = load double, ptr %arrayidx146, align 8, !tbaa !9
  %69 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx150 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %69
  %70 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %71 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx154 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %71
  %72 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx158 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %72
  %73 = load double, ptr %arrayidx158, align 8, !tbaa !9
  %74 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx162 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %74
  %75 = load double, ptr %arrayidx162, align 8, !tbaa !9
  %76 = add nuw nsw i64 %indvars.iv, 12
  %arrayidx166 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %76
  %77 = add nuw nsw i64 %indvars.iv, 14
  %arrayidx174 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %77
  %78 = load double, ptr %arrayidx174, align 8, !tbaa !9
  %79 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx178 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %79
  %80 = load double, ptr %arrayidx178, align 8, !tbaa !9
  %81 = add nuw nsw i64 %indvars.iv, 16
  %arrayidx182 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %81
  %82 = add nuw nsw i64 %indvars.iv, 18
  %arrayidx190 = getelementptr inbounds [26000000 x double], ptr %srcGrid, i64 0, i64 %82
  %83 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %84 = fadd fast double %61, %68
  %85 = fadd fast double %63, %70
  %86 = fadd fast double %85, %73
  %sub236 = fsub fast double %57, %59
  %.neg12 = fadd fast double %68, %sub236
  %.neg9 = fadd fast double %.neg12, %70
  %and313 = and i32 %1, 2
  %tobool314.not = icmp eq i32 %and313, 0
  %87 = load double, ptr %arrayidx138, align 8, !tbaa !9
  %add139 = fadd fast double %add135, %87
  %add143 = fadd fast double %add139, %66
  %add147 = fadd fast double %add143, %68
  %add151 = fadd fast double %add147, %70
  %88 = load double, ptr %arrayidx154, align 8, !tbaa !9
  %add155 = fadd fast double %add151, %88
  %add159 = fadd fast double %add155, %73
  %add163 = fadd fast double %add159, %75
  %89 = load <2 x double>, ptr %arrayidx182, align 8, !tbaa !9
  %90 = extractelement <2 x double> %89, i64 0
  %91 = extractelement <2 x double> %89, i64 1
  %92 = fadd fast double %88, %73
  %.neg1383 = fsub fast double %.neg9, %92
  %add244 = fadd fast double %.neg1383, %75
  %93 = load <2 x double>, ptr %arrayidx166, align 8, !tbaa !9
  %94 = extractelement <2 x double> %93, i64 0
  %95 = fadd fast double %66, %94
  %96 = fadd fast double %95, %78
  %add167 = fadd fast double %add163, %94
  %97 = extractelement <2 x double> %93, i64 1
  %add171 = fadd fast double %add167, %97
  %add175 = fadd fast double %add171, %78
  %add179 = fadd fast double %add175, %80
  %add183 = fadd fast double %add179, %90
  %add187 = fadd fast double %add183, %91
  %add191 = fadd fast double %add187, %83
  %98 = insertelement <2 x double> poison, double %add244, i64 0
  %99 = insertelement <2 x double> %98, double %78, i64 1
  %100 = fadd fast <2 x double> %99, %93
  %shift = shufflevector <2 x double> %100, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %101 = fsub fast <2 x double> %100, %shift
  %sub268 = extractelement <2 x double> %101, i64 0
  %102 = insertelement <2 x double> poison, double %84, i64 0
  %103 = insertelement <2 x double> %102, double %75, i64 1
  %104 = insertelement <2 x double> poison, double %88, i64 0
  %105 = insertelement <2 x double> %104, double %87, i64 1
  %106 = fadd fast <2 x double> %103, %105
  %107 = insertelement <2 x double> %93, double %86, i64 0
  %108 = fsub fast <2 x double> %106, %107
  %109 = fadd fast <2 x double> %106, %107
  %110 = shufflevector <2 x double> %108, <2 x double> %109, <2 x i32> <i32 0, i32 3>
  %111 = insertelement <2 x double> poison, double %80, i64 0
  %112 = shufflevector <2 x double> %111, <2 x double> poison, <2 x i32> zeroinitializer
  %113 = fadd fast <2 x double> %110, %112
  %114 = fadd fast double %96, %90
  %115 = fadd fast <2 x double> %113, %89
  %116 = insertelement <2 x double> poison, double %114, i64 0
  %117 = insertelement <2 x double> %116, double %83, i64 1
  %118 = insertelement <2 x double> poison, double %83, i64 0
  %119 = insertelement <2 x double> %89, double %83, i64 0
  %120 = fadd fast <2 x double> %117, %119
  %shuffle = shufflevector <2 x double> %120, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %121 = fsub fast <2 x double> %115, %shuffle
  %div308 = fdiv fast double %sub268, %add191
  %122 = insertelement <2 x double> poison, double %add191, i64 0
  %123 = shufflevector <2 x double> %122, <2 x double> poison, <2 x i32> zeroinitializer
  %124 = fdiv fast <2 x double> %121, %123
  %uy.0 = select i1 %tobool314.not, double %div308, double 2.000000e-03
  %125 = insertelement <2 x i1> poison, i1 %tobool314.not, i64 0
  %126 = shufflevector <2 x i1> %125, <2 x i1> poison, <2 x i32> zeroinitializer
  %127 = select <2 x i1> %126, <2 x double> %124, <2 x double> <double 5.000000e-03, double 0.000000e+00>
  %mul317 = fmul fast double %uy.0, %uy.0
  %128 = fmul fast <2 x double> %127, %127
  %129 = extractelement <2 x double> %128, i64 0
  %add318 = fadd fast double %129, %mul317
  %130 = extractelement <2 x double> %128, i64 1
  %add320 = fadd fast double %add318, %130
  %mul321 = fmul fast double %add320, 1.500000e+00
  %mul322 = fmul fast double %add191, 0x3FD5555555555555
  %sub323 = fsub fast double 1.000000e+00, %mul321
  %mul324 = fmul fast double %mul322, %sub323
  %mul326 = fmul fast double %add191, 0x3FAC71C71C71C71C
  %mul328 = fmul fast double %mul317, 4.500000e+00
  %add329 = fadd fast double %mul328, 1.000000e+00
  %sub330 = fsub fast double %add329, %mul321
  %mul331 = fmul fast double %sub330, %mul326
  %mul336 = fmul fast double %129, 4.500000e+00
  %add337 = fadd fast double %mul336, 1.000000e+00
  %sub338 = fsub fast double %add337, %mul321
  %mul339 = fmul fast double %sub338, %mul326
  %mul344 = fmul fast double %130, 4.500000e+00
  %add345 = fadd fast double %mul344, 1.000000e+00
  %sub346 = fsub fast double %add345, %mul321
  %mul347 = fmul fast double %sub346, %mul326
  %mul350 = fmul fast double %add191, 0x3F9C71C71C71C71C
  %131 = extractelement <2 x double> %127, i64 0
  %add351 = fadd fast double %131, %uy.0
  %132 = fmul fast double %add351, %add351
  %mul354 = fmul fast double %132, 4.500000e+00
  %add355 = fadd fast double %mul354, 1.000000e+00
  %sub356 = fsub fast double %add355, %mul321
  %mul357 = fmul fast double %sub356, %mul350
  %add361 = fsub fast double %uy.0, %131
  %133 = fmul fast double %add361, %add361
  %mul365 = fmul fast double %133, 4.500000e+00
  %add366 = fadd fast double %mul365, 1.000000e+00
  %sub367 = fsub fast double %add366, %mul321
  %mul368 = fmul fast double %sub367, %mul350
  %134 = extractelement <2 x double> %127, i64 1
  %add372 = fadd fast double %uy.0, %134
  %135 = fmul fast double %add372, %add372
  %mul375 = fmul fast double %135, 4.500000e+00
  %add376 = fadd fast double %mul375, 1.000000e+00
  %sub377 = fsub fast double %add376, %mul321
  %mul378 = fmul fast double %sub377, %mul350
  %sub382 = fsub fast double %uy.0, %134
  %136 = fmul fast double %sub382, %sub382
  %mul385 = fmul fast double %136, 4.500000e+00
  %add386 = fadd fast double %mul385, 1.000000e+00
  %sub387 = fsub fast double %add386, %mul321
  %mul388 = fmul fast double %sub387, %mul350
  %sub402 = fsub fast double %131, %134
  %137 = fmul fast double %sub402, %sub402
  %mul405 = fmul fast double %137, 4.500000e+00
  %add406 = fadd fast double %mul405, 1.000000e+00
  %sub407 = fsub fast double %add406, %mul321
  %mul408 = fmul fast double %sub407, %mul350
  %mul413 = fmul fast double %add191, 0x3FC5555555555555
  %mul414 = fmul fast double %uy.0, %mul413
  %mul420 = fmul fast double %131, %mul413
  %mul426 = fmul fast double %134, %mul413
  %mul431 = fmul fast double %add191, 0x3FB5555555555555
  %mul433 = fmul fast double %add351, %mul431
  %mul441 = fmul fast double %add361, %mul431
  %mul448 = fmul fast double %add372, %mul431
  %mul455 = fmul fast double %sub382, %mul431
  %mul469 = fmul fast double %sub402, %mul431
  %add483 = fadd fast double %59, %57
  %mul484 = fmul fast double %add483, 5.000000e-01
  %add493 = fadd fast double %63, %61
  %mul494 = fmul fast double %add493, 5.000000e-01
  %add503 = fadd fast double %66, %87
  %mul504 = fmul fast double %add503, 5.000000e-01
  %add513 = fadd fast double %73, %68
  %mul514 = fmul fast double %add513, 5.000000e-01
  %add523 = fadd fast double %88, %70
  %mul524 = fmul fast double %add523, 5.000000e-01
  %add533 = fadd fast double %78, %75
  %mul534 = fmul fast double %add533, 5.000000e-01
  %add543 = fadd fast double %97, %94
  %mul544 = fmul fast double %add543, 5.000000e-01
  %add563 = fadd fast double %91, %90
  %mul564 = fmul fast double %add563, 5.000000e-01
  %mul575 = fmul fast double %sub236, 5.000000e-01
  %sub585 = fsub fast double %61, %63
  %mul586 = fmul fast double %sub585, 5.000000e-01
  %sub596 = fsub fast double %87, %66
  %mul597 = fmul fast double %sub596, 5.000000e-01
  %sub607 = fsub fast double %68, %73
  %mul608 = fmul fast double %sub607, 5.000000e-01
  %sub618 = fsub fast double %70, %88
  %mul619 = fmul fast double %sub618, 5.000000e-01
  %sub629 = fsub fast double %75, %78
  %mul630 = fmul fast double %sub629, 5.000000e-01
  %sub640 = fsub fast double %94, %97
  %mul641 = fmul fast double %sub640, 5.000000e-01
  %sub662 = fsub fast double %90, %91
  %mul663 = fmul fast double %sub662, 5.000000e-01
  %sub672 = fsub fast double %2, %mul324
  %mul673 = fmul fast double %sub672, 1.950000e+00
  %sub674 = fsub fast double %2, %mul673
  %arrayidx677 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %indvars.iv
  store double %sub674, ptr %arrayidx677, align 8, !tbaa !9
  %sub683 = fsub fast double %mul484, %mul331
  %mul684.neg = fmul fast double %sub683, -1.950000e+00
  %sub688 = fsub fast double %mul575, %mul414
  %mul689.neg = fmul fast double %sub688, 0xBFB0ECF56BE69CA7
  %.neg1394 = fadd fast double %mul689.neg, %57
  %sub690 = fadd fast double %.neg1394, %mul684.neg
  %138 = add nuw nsw i64 %indvars.iv, 2001
  %arrayidx693 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %138
  store double %sub690, ptr %arrayidx693, align 8, !tbaa !9
  %sub704 = fsub fast double %mul414, %mul575
  %mul705.neg = fmul fast double %sub704, 0xBFB0ECF56BE69CA7
  %.neg1395 = fadd fast double %mul705.neg, %59
  %sub706 = fadd fast double %.neg1395, %mul684.neg
  %139 = add nsw i64 %indvars.iv, -1998
  %arrayidx709 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %139
  store double %sub706, ptr %arrayidx709, align 8, !tbaa !9
  %sub715 = fsub fast double %mul494, %mul339
  %mul716.neg = fmul fast double %sub715, -1.950000e+00
  %sub720 = fsub fast double %mul586, %mul420
  %mul721.neg = fmul fast double %sub720, 0xBFB0ECF56BE69CA7
  %.neg1396 = fadd fast double %mul721.neg, %61
  %sub722 = fadd fast double %.neg1396, %mul716.neg
  %140 = add nuw nsw i64 %indvars.iv, 23
  %arrayidx725 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %140
  store double %sub722, ptr %arrayidx725, align 8, !tbaa !9
  %sub736 = fsub fast double %mul420, %mul586
  %mul737.neg = fmul fast double %sub736, 0xBFB0ECF56BE69CA7
  %.neg1397 = fadd fast double %mul737.neg, %63
  %sub738 = fadd fast double %.neg1397, %mul716.neg
  %141 = add nsw i64 %indvars.iv, -16
  %arrayidx741 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %141
  store double %sub738, ptr %arrayidx741, align 8, !tbaa !9
  %sub747 = fsub fast double %mul504, %mul347
  %mul748.neg = fmul fast double %sub747, -1.950000e+00
  %sub752 = fsub fast double %mul597, %mul426
  %mul753.neg = fmul fast double %sub752, 0xBFB0ECF56BE69CA7
  %.neg1398 = fadd fast double %mul753.neg, %87
  %sub754 = fadd fast double %.neg1398, %mul748.neg
  %142 = add nuw nsw i64 %indvars.iv, 200005
  %arrayidx757 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %142
  store double %sub754, ptr %arrayidx757, align 8, !tbaa !9
  %sub768 = fsub fast double %mul426, %mul597
  %mul769.neg = fmul fast double %sub768, 0xBFB0ECF56BE69CA7
  %.neg1399 = fadd fast double %mul769.neg, %66
  %sub770 = fadd fast double %.neg1399, %mul748.neg
  %143 = add nsw i64 %indvars.iv, -199994
  %arrayidx773 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %143
  store double %sub770, ptr %arrayidx773, align 8, !tbaa !9
  %sub779 = fsub fast double %mul514, %mul357
  %mul780.neg = fmul fast double %sub779, -1.950000e+00
  %sub784 = fsub fast double %mul608, %mul433
  %mul785.neg = fmul fast double %sub784, 0xBFB0ECF56BE69CA7
  %.neg1400 = fadd fast double %mul785.neg, %68
  %sub786 = fadd fast double %.neg1400, %mul780.neg
  %144 = add nuw nsw i64 %indvars.iv, 2027
  %arrayidx789 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %144
  store double %sub786, ptr %arrayidx789, align 8, !tbaa !9
  %sub795 = fsub fast double %mul524, %mul368
  %mul796.neg = fmul fast double %sub795, -1.950000e+00
  %sub800 = fsub fast double %mul619, %mul441
  %mul801.neg = fmul fast double %sub800, 0xBFB0ECF56BE69CA7
  %.neg1401 = fadd fast double %mul801.neg, %70
  %sub802 = fadd fast double %.neg1401, %mul796.neg
  %145 = add nuw nsw i64 %indvars.iv, 1988
  %arrayidx805 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %145
  store double %sub802, ptr %arrayidx805, align 8, !tbaa !9
  %sub816 = fsub fast double %mul441, %mul619
  %mul817.neg = fmul fast double %sub816, 0xBFB0ECF56BE69CA7
  %.neg1402 = fadd fast double %mul817.neg, %88
  %sub818 = fadd fast double %.neg1402, %mul796.neg
  %146 = add nsw i64 %indvars.iv, -1971
  %arrayidx821 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %146
  store double %sub818, ptr %arrayidx821, align 8, !tbaa !9
  %sub832 = fsub fast double %mul433, %mul608
  %mul833.neg = fmul fast double %sub832, 0xBFB0ECF56BE69CA7
  %.neg1403 = fadd fast double %mul833.neg, %73
  %sub834 = fadd fast double %.neg1403, %mul780.neg
  %147 = add nsw i64 %indvars.iv, -2010
  %arrayidx837 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %147
  store double %sub834, ptr %arrayidx837, align 8, !tbaa !9
  %sub843 = fsub fast double %mul534, %mul378
  %mul844.neg = fmul fast double %sub843, -1.950000e+00
  %sub848 = fsub fast double %mul630, %mul448
  %mul849.neg = fmul fast double %sub848, 0xBFB0ECF56BE69CA7
  %.neg1404 = fadd fast double %mul849.neg, %75
  %sub850 = fadd fast double %.neg1404, %mul844.neg
  %148 = add nuw nsw i64 %indvars.iv, 202011
  %arrayidx853 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %148
  store double %sub850, ptr %arrayidx853, align 8, !tbaa !9
  %sub859 = fsub fast double %mul544, %mul388
  %mul860.neg = fmul fast double %sub859, -1.950000e+00
  %sub864 = fsub fast double %mul641, %mul455
  %mul865.neg = fmul fast double %sub864, 0xBFB0ECF56BE69CA7
  %.neg1405 = fadd fast double %mul865.neg, %94
  %sub866 = fadd fast double %.neg1405, %mul860.neg
  %149 = add nsw i64 %indvars.iv, -197988
  %arrayidx869 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %149
  store double %sub866, ptr %arrayidx869, align 8, !tbaa !9
  %sub880 = fsub fast double %mul455, %mul641
  %mul881.neg = fmul fast double %sub880, 0xBFB0ECF56BE69CA7
  %.neg1406 = fadd fast double %mul881.neg, %97
  %sub882 = fadd fast double %.neg1406, %mul860.neg
  %150 = add nuw nsw i64 %indvars.iv, 198013
  %arrayidx885 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %150
  store double %sub882, ptr %arrayidx885, align 8, !tbaa !9
  %sub896 = fsub fast double %mul448, %mul630
  %mul897.neg = fmul fast double %sub896, 0xBFB0ECF56BE69CA7
  %.neg1407 = fadd fast double %mul897.neg, %78
  %sub898 = fadd fast double %.neg1407, %mul844.neg
  %151 = add nsw i64 %indvars.iv, -201986
  %arrayidx901 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %151
  store double %sub898, ptr %arrayidx901, align 8, !tbaa !9
  %152 = add nuw nsw i64 %indvars.iv, 200035
  %arrayidx917 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %152
  %sub923 = fsub fast double %mul564, %mul408
  %mul924.neg = fmul fast double %sub923, -1.950000e+00
  %sub928 = fsub fast double %mul663, %mul469
  %mul929.neg = fmul fast double %sub928, 0xBFB0ECF56BE69CA7
  %.neg1409 = fadd fast double %mul929.neg, %90
  %sub930 = fadd fast double %.neg1409, %mul924.neg
  %153 = add nsw i64 %indvars.iv, -199964
  %arrayidx933 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %153
  store double %sub930, ptr %arrayidx933, align 8, !tbaa !9
  %sub944 = fsub fast double %mul469, %mul663
  %mul945.neg = fmul fast double %sub944, 0xBFB0ECF56BE69CA7
  %.neg1410 = fadd fast double %mul945.neg, %91
  %sub946 = fadd fast double %.neg1410, %mul924.neg
  %154 = add nuw nsw i64 %indvars.iv, 199997
  %arrayidx949 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %154
  store double %sub946, ptr %arrayidx949, align 8, !tbaa !9
  %155 = insertelement <2 x double> %127, double %83, i64 1
  %156 = insertelement <2 x double> poison, double %134, i64 0
  %157 = insertelement <2 x double> %156, double %80, i64 1
  %158 = fadd fast <2 x double> %155, %157
  %159 = fmul fast <2 x double> %158, %158
  %160 = extractelement <2 x double> %159, i64 0
  %mul395 = fmul fast double %160, 4.500000e+00
  %add396 = fadd fast double %mul395, 1.000000e+00
  %161 = insertelement <2 x double> <double poison, double 5.000000e-01>, double %mul431, i64 0
  %162 = fmul fast <2 x double> %158, %161
  %163 = insertelement <2 x double> %111, double %add396, i64 1
  %164 = insertelement <2 x double> %118, double %mul321, i64 1
  %165 = fsub fast <2 x double> %163, %164
  %166 = insertelement <2 x double> <double 5.000000e-01, double poison>, double %mul350, i64 1
  %167 = fmul fast <2 x double> %165, %166
  %168 = fsub fast <2 x double> %167, %162
  %sub912 = extractelement <2 x double> %168, i64 0
  %mul913.neg = fmul fast double %sub912, 0xBFB0ECF56BE69CA7
  %.neg1408 = fadd fast double %mul913.neg, %80
  %169 = fsub fast <2 x double> %162, %167
  %170 = fmul fast <2 x double> %169, <double 0xBFB0ECF56BE69CA7, double -1.950000e+00>
  %171 = extractelement <2 x double> %170, i64 1
  %sub914 = fadd fast double %.neg1408, %171
  store double %sub914, ptr %arrayidx917, align 8, !tbaa !9
  %172 = extractelement <2 x double> %170, i64 0
  %.neg1411 = fadd fast double %172, %83
  %sub962 = fadd fast double %.neg1411, %171
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %.sink = phi i64 [ -200002, %if.end ], [ 200035, %if.then ]
  %sub962.sink = phi double [ %sub962, %if.end ], [ %55, %if.then ]
  %if.end.149 = add nsw i64 %indvars.iv, %.sink
  %if.end.arrayidx965 = getelementptr inbounds [26000000 x double], ptr %dstGrid, i64 0, i64 %if.end.149
  store double %sub962.sink, ptr %if.end.arrayidx965, align 8, !tbaa !9
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
  %arrayidx173 = getelementptr inbounds double, ptr %srcGrid, i64 %indvars.iv
  %97 = or i64 %indvars.iv, 1
  %arrayidx183 = getelementptr inbounds double, ptr %srcGrid, i64 %97
  %98 = or i64 %indvars.iv, 2
  %arrayidx193 = getelementptr inbounds double, ptr %srcGrid, i64 %98
  %99 = or i64 %indvars.iv, 3
  %arrayidx203 = getelementptr inbounds double, ptr %srcGrid, i64 %99
  %100 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx213 = getelementptr inbounds double, ptr %srcGrid, i64 %100
  %mul215 = fmul fast double %mul161, 4.500000e+00
  %101 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx233 = getelementptr inbounds double, ptr %srcGrid, i64 %101
  %sub169 = fsub fast double 1.000000e+00, %mul167
  %mul168 = fmul fast double %sub169, 0x3FD5555555555555
  %mul170 = fmul fast double %mul168, %sub
  store double %mul170, ptr %arrayidx173, align 8, !tbaa !9
  %102 = insertelement <2 x double> poison, double %sub, i64 0
  %103 = shufflevector <2 x double> %102, <2 x double> poison, <2 x i32> zeroinitializer
  %104 = fmul fast <2 x double> %103, <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>
  %105 = shufflevector <2 x double> %104, <2 x double> undef, <2 x i32> zeroinitializer
  %106 = insertelement <2 x double> poison, double %sub169, i64 0
  %107 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx258 = getelementptr inbounds double, ptr %srcGrid, i64 %107
  %108 = add nuw nsw i64 %indvars.iv, 10
  %arrayidx284 = getelementptr inbounds double, ptr %srcGrid, i64 %108
  %109 = add nuw nsw i64 %indvars.iv, 11
  %arrayidx296 = getelementptr inbounds double, ptr %srcGrid, i64 %109
  %110 = insertelement <2 x double> poison, double %mul215, i64 0
  %111 = shufflevector <2 x double> %110, <2 x double> poison, <2 x i32> zeroinitializer
  %112 = fadd fast <2 x double> %111, <double 3.000000e+00, double -3.000000e+00>
  %113 = insertelement <2 x double> poison, double %mul161, i64 0
  %114 = shufflevector <2 x double> %113, <2 x double> poison, <2 x i32> zeroinitializer
  %115 = fmul fast <2 x double> %112, %114
  %116 = shufflevector <2 x double> %106, <2 x double> poison, <2 x i32> zeroinitializer
  %117 = fadd fast <2 x double> %116, %115
  %118 = shufflevector <2 x double> %106, <2 x double> %117, <2 x i32> <i32 0, i32 2>
  %119 = fmul fast <2 x double> %105, %118
  %120 = extractelement <2 x double> %119, i64 0
  store double %120, ptr %arrayidx183, align 8, !tbaa !9
  store double %120, ptr %arrayidx193, align 8, !tbaa !9
  store double %120, ptr %arrayidx203, align 8, !tbaa !9
  store <2 x double> %119, ptr %arrayidx213, align 8, !tbaa !9
  %121 = extractelement <2 x double> %117, i64 1
  %122 = insertelement <2 x double> poison, double %121, i64 0
  %123 = insertelement <2 x double> %122, double %sub169, i64 1
  %124 = fmul fast <2 x double> %104, %123
  store <2 x double> %124, ptr %arrayidx233, align 8, !tbaa !9
  %125 = extractelement <2 x double> %124, i64 1
  %126 = shufflevector <2 x double> %124, <2 x double> undef, <2 x i32> <i32 1, i32 1>
  store <2 x double> %126, ptr %arrayidx258, align 8, !tbaa !9
  store double %125, ptr %arrayidx284, align 8, !tbaa !9
  %127 = shufflevector <2 x double> %104, <2 x double> undef, <2 x i32> <i32 1, i32 1>
  %128 = fmul fast <2 x double> %127, %117
  store <2 x double> %128, ptr %arrayidx296, align 8, !tbaa !9
  %129 = add nuw nsw i64 %indvars.iv, 13
  %arrayidx322 = getelementptr inbounds double, ptr %srcGrid, i64 %129
  store <2 x double> %128, ptr %arrayidx322, align 8, !tbaa !9
  %130 = add nuw nsw i64 %indvars.iv, 15
  %arrayidx348 = getelementptr inbounds double, ptr %srcGrid, i64 %130
  store <2 x double> %128, ptr %arrayidx348, align 8, !tbaa !9
  %131 = add nuw nsw i64 %indvars.iv, 17
  %arrayidx374 = getelementptr inbounds double, ptr %srcGrid, i64 %131
  store <2 x double> %128, ptr %arrayidx374, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 20
  %cmp = icmp ult i64 %indvars.iv, 199980
  br i1 %cmp, label %for.body, label %for.body393, !llvm.loop !28

for.body393:                                      ; preds = %for.body, %for.body393
  %indvars.iv1714 = phi i64 [ %indvars.iv.next1715, %for.body393 ], [ 25800000, %for.body ]
  %132 = add nsw i64 %indvars.iv1714, -200000
  %arrayidx396 = getelementptr inbounds double, ptr %srcGrid, i64 %132
  %133 = load double, ptr %arrayidx396, align 8, !tbaa !9
  %134 = add nsw i64 %indvars.iv1714, -199999
  %arrayidx399 = getelementptr inbounds double, ptr %srcGrid, i64 %134
  %135 = load double, ptr %arrayidx399, align 8, !tbaa !9
  %add400 = fadd fast double %135, %133
  %136 = add nsw i64 %indvars.iv1714, -199998
  %arrayidx403 = getelementptr inbounds double, ptr %srcGrid, i64 %136
  %137 = load double, ptr %arrayidx403, align 8, !tbaa !9
  %add404 = fadd fast double %add400, %137
  %138 = add nsw i64 %indvars.iv1714, -199997
  %arrayidx407 = getelementptr inbounds double, ptr %srcGrid, i64 %138
  %139 = load double, ptr %arrayidx407, align 8, !tbaa !9
  %add408 = fadd fast double %add404, %139
  %140 = add nsw i64 %indvars.iv1714, -199996
  %arrayidx411 = getelementptr inbounds double, ptr %srcGrid, i64 %140
  %141 = load double, ptr %arrayidx411, align 8, !tbaa !9
  %add412 = fadd fast double %add408, %141
  %142 = add nsw i64 %indvars.iv1714, -199995
  %arrayidx415 = getelementptr inbounds double, ptr %srcGrid, i64 %142
  %143 = add nsw i64 %indvars.iv1714, -199994
  %arrayidx419 = getelementptr inbounds double, ptr %srcGrid, i64 %143
  %144 = load double, ptr %arrayidx419, align 8, !tbaa !9
  %145 = add nsw i64 %indvars.iv1714, -199993
  %arrayidx423 = getelementptr inbounds double, ptr %srcGrid, i64 %145
  %146 = load double, ptr %arrayidx423, align 8, !tbaa !9
  %147 = add nsw i64 %indvars.iv1714, -199992
  %arrayidx427 = getelementptr inbounds double, ptr %srcGrid, i64 %147
  %148 = add nsw i64 %indvars.iv1714, -199991
  %arrayidx431 = getelementptr inbounds double, ptr %srcGrid, i64 %148
  %149 = load double, ptr %arrayidx431, align 8, !tbaa !9
  %150 = add nsw i64 %indvars.iv1714, -199990
  %arrayidx435 = getelementptr inbounds double, ptr %srcGrid, i64 %150
  %151 = load double, ptr %arrayidx435, align 8, !tbaa !9
  %152 = add nsw i64 %indvars.iv1714, -199989
  %arrayidx439 = getelementptr inbounds double, ptr %srcGrid, i64 %152
  %153 = add nsw i64 %indvars.iv1714, -199988
  %arrayidx443 = getelementptr inbounds double, ptr %srcGrid, i64 %153
  %154 = add nsw i64 %indvars.iv1714, -199987
  %arrayidx447 = getelementptr inbounds double, ptr %srcGrid, i64 %154
  %155 = add nsw i64 %indvars.iv1714, -199986
  %arrayidx451 = getelementptr inbounds double, ptr %srcGrid, i64 %155
  %156 = load double, ptr %arrayidx451, align 8, !tbaa !9
  %157 = add nsw i64 %indvars.iv1714, -199985
  %arrayidx455 = getelementptr inbounds double, ptr %srcGrid, i64 %157
  %158 = add nsw i64 %indvars.iv1714, -199984
  %arrayidx459 = getelementptr inbounds double, ptr %srcGrid, i64 %158
  %159 = load double, ptr %arrayidx459, align 8, !tbaa !9
  %160 = add nsw i64 %indvars.iv1714, -199983
  %arrayidx463 = getelementptr inbounds double, ptr %srcGrid, i64 %160
  %161 = add nsw i64 %indvars.iv1714, -199982
  %arrayidx467 = getelementptr inbounds double, ptr %srcGrid, i64 %161
  %162 = fadd fast double %139, %146
  %163 = fadd fast double %162, %149
  %.neg50 = fsub fast double %135, %137
  %.neg47 = fadd fast double %.neg50, %146
  %164 = fadd fast double %149, %151
  %165 = add nsw i64 %indvars.iv1714, -400000
  %arrayidx591 = getelementptr inbounds double, ptr %srcGrid, i64 %165
  %166 = load double, ptr %arrayidx591, align 8, !tbaa !9
  %167 = add nsw i64 %indvars.iv1714, -399999
  %arrayidx594 = getelementptr inbounds double, ptr %srcGrid, i64 %167
  %168 = load double, ptr %arrayidx594, align 8, !tbaa !9
  %add595 = fadd fast double %168, %166
  %169 = add nsw i64 %indvars.iv1714, -399998
  %arrayidx598 = getelementptr inbounds double, ptr %srcGrid, i64 %169
  %170 = load double, ptr %arrayidx598, align 8, !tbaa !9
  %add599 = fadd fast double %add595, %170
  %171 = add nsw i64 %indvars.iv1714, -399997
  %arrayidx602 = getelementptr inbounds double, ptr %srcGrid, i64 %171
  %172 = load double, ptr %arrayidx602, align 8, !tbaa !9
  %add603 = fadd fast double %add599, %172
  %173 = add nsw i64 %indvars.iv1714, -399996
  %arrayidx606 = getelementptr inbounds double, ptr %srcGrid, i64 %173
  %174 = load double, ptr %arrayidx606, align 8, !tbaa !9
  %add607 = fadd fast double %add603, %174
  %175 = add nsw i64 %indvars.iv1714, -399995
  %arrayidx610 = getelementptr inbounds double, ptr %srcGrid, i64 %175
  %176 = load double, ptr %arrayidx610, align 8, !tbaa !9
  %add611 = fadd fast double %add607, %176
  %177 = add nsw i64 %indvars.iv1714, -399994
  %arrayidx614 = getelementptr inbounds double, ptr %srcGrid, i64 %177
  %178 = load double, ptr %arrayidx614, align 8, !tbaa !9
  %add615 = fadd fast double %add611, %178
  %179 = add nsw i64 %indvars.iv1714, -399993
  %arrayidx618 = getelementptr inbounds double, ptr %srcGrid, i64 %179
  %180 = load double, ptr %arrayidx618, align 8, !tbaa !9
  %add619 = fadd fast double %add615, %180
  %181 = add nsw i64 %indvars.iv1714, -399992
  %arrayidx622 = getelementptr inbounds double, ptr %srcGrid, i64 %181
  %182 = load double, ptr %arrayidx622, align 8, !tbaa !9
  %add623 = fadd fast double %add619, %182
  %183 = add nsw i64 %indvars.iv1714, -399991
  %arrayidx626 = getelementptr inbounds double, ptr %srcGrid, i64 %183
  %184 = load double, ptr %arrayidx626, align 8, !tbaa !9
  %add627 = fadd fast double %add623, %184
  %185 = add nsw i64 %indvars.iv1714, -399990
  %arrayidx630 = getelementptr inbounds double, ptr %srcGrid, i64 %185
  %186 = load double, ptr %arrayidx630, align 8, !tbaa !9
  %add631 = fadd fast double %add627, %186
  %187 = add nsw i64 %indvars.iv1714, -399989
  %arrayidx634 = getelementptr inbounds double, ptr %srcGrid, i64 %187
  %188 = add nsw i64 %indvars.iv1714, -399988
  %arrayidx638 = getelementptr inbounds double, ptr %srcGrid, i64 %188
  %189 = add nsw i64 %indvars.iv1714, -399987
  %arrayidx642 = getelementptr inbounds double, ptr %srcGrid, i64 %189
  %190 = add nsw i64 %indvars.iv1714, -399986
  %arrayidx646 = getelementptr inbounds double, ptr %srcGrid, i64 %190
  %191 = load double, ptr %arrayidx646, align 8, !tbaa !9
  %192 = add nsw i64 %indvars.iv1714, -399985
  %arrayidx650 = getelementptr inbounds double, ptr %srcGrid, i64 %192
  %193 = add nsw i64 %indvars.iv1714, -399984
  %arrayidx654 = getelementptr inbounds double, ptr %srcGrid, i64 %193
  %194 = load double, ptr %arrayidx654, align 8, !tbaa !9
  %195 = add nsw i64 %indvars.iv1714, -399983
  %arrayidx658 = getelementptr inbounds double, ptr %srcGrid, i64 %195
  %196 = add nsw i64 %indvars.iv1714, -399982
  %arrayidx662 = getelementptr inbounds double, ptr %srcGrid, i64 %196
  %197 = fadd fast double %172, %180
  %198 = fadd fast double %174, %182
  %199 = fadd fast double %197, %184
  %200 = fadd fast double %198, %186
  %201 = fsub fast double %199, %200
  %.neg71 = fsub fast double %168, %170
  %.neg68 = fadd fast double %.neg71, %180
  %202 = fadd fast double %184, %186
  %arrayidx801 = getelementptr inbounds double, ptr %srcGrid, i64 %indvars.iv1714
  %203 = load double, ptr %arrayidx439, align 8, !tbaa !9
  %204 = load double, ptr %arrayidx443, align 8, !tbaa !9
  %205 = load double, ptr %arrayidx447, align 8, !tbaa !9
  %206 = load double, ptr %arrayidx455, align 8, !tbaa !9
  %207 = load double, ptr %arrayidx463, align 8, !tbaa !9
  %208 = load double, ptr %arrayidx467, align 8, !tbaa !9
  %209 = fadd fast double %207, %208
  %210 = load double, ptr %arrayidx415, align 8, !tbaa !9
  %add416 = fadd fast double %add412, %210
  %add420 = fadd fast double %add416, %144
  %add424 = fadd fast double %add420, %146
  %211 = load double, ptr %arrayidx427, align 8, !tbaa !9
  %add428 = fadd fast double %add424, %211
  %add432 = fadd fast double %add428, %149
  %add436 = fadd fast double %add432, %151
  %212 = fadd fast double %141, %211
  %213 = fadd fast double %212, %151
  %214 = fsub fast double %163, %213
  %add440 = fadd fast double %add436, %203
  %add444 = fadd fast double %add440, %204
  %add448 = fadd fast double %add444, %205
  %add452 = fadd fast double %add448, %156
  %add456 = fadd fast double %add452, %206
  %add460 = fadd fast double %add456, %159
  %add464 = fadd fast double %add460, %207
  %add468 = fadd fast double %add464, %208
  %215 = fadd fast double %214, %206
  %sub491 = fadd fast double %215, %159
  %sub507 = fsub fast double %sub491, %209
  %216 = insertelement <2 x double> poison, double %203, i64 0
  %217 = insertelement <2 x double> %216, double %.neg47, i64 1
  %218 = insertelement <2 x double> poison, double %210, i64 0
  %219 = insertelement <2 x double> %218, double %211, i64 1
  %220 = fadd fast <2 x double> %217, %219
  %221 = fadd fast double %144, %204
  %222 = insertelement <2 x double> poison, double %205, i64 0
  %223 = insertelement <2 x double> %222, double %164, i64 1
  %224 = fadd fast <2 x double> %220, %223
  %225 = fsub fast <2 x double> %220, %223
  %226 = shufflevector <2 x double> %224, <2 x double> %225, <2 x i32> <i32 0, i32 3>
  %227 = fadd fast double %221, %156
  %228 = insertelement <2 x double> poison, double %206, i64 0
  %229 = insertelement <2 x double> %228, double %203, i64 1
  %230 = fadd fast <2 x double> %226, %229
  %231 = fadd fast double %227, %159
  %232 = insertelement <2 x double> poison, double %207, i64 0
  %233 = insertelement <2 x double> %232, double %204, i64 1
  %234 = fadd fast <2 x double> %230, %233
  %235 = insertelement <2 x double> poison, double %231, i64 0
  %236 = insertelement <2 x double> %235, double %156, i64 1
  %237 = insertelement <2 x double> poison, double %208, i64 0
  %238 = insertelement <2 x double> %237, double %205, i64 1
  %239 = fadd fast <2 x double> %236, %238
  %240 = fsub fast <2 x double> %234, %239
  %241 = load double, ptr %arrayidx634, align 8, !tbaa !9
  %add635 = fadd fast double %add631, %241
  %242 = load double, ptr %arrayidx638, align 8, !tbaa !9
  %add639 = fadd fast double %add635, %242
  %243 = load double, ptr %arrayidx642, align 8, !tbaa !9
  %add643 = fadd fast double %add639, %243
  %add647 = fadd fast double %add643, %191
  %244 = load double, ptr %arrayidx650, align 8, !tbaa !9
  %add651 = fadd fast double %add647, %244
  %add655 = fadd fast double %add651, %194
  %245 = load double, ptr %arrayidx658, align 8, !tbaa !9
  %add659 = fadd fast double %add655, %245
  %246 = load double, ptr %arrayidx662, align 8, !tbaa !9
  %add663 = fadd fast double %add659, %246
  %247 = fadd fast double %201, %244
  %sub686 = fadd fast double %247, %194
  %248 = fadd fast double %245, %246
  %sub702 = fsub fast double %sub686, %248
  %249 = insertelement <2 x double> poison, double %241, i64 0
  %250 = insertelement <2 x double> %249, double %.neg68, i64 1
  %251 = insertelement <2 x double> poison, double %176, i64 0
  %252 = insertelement <2 x double> %251, double %182, i64 1
  %253 = fadd fast <2 x double> %250, %252
  %254 = fadd fast double %178, %242
  %255 = insertelement <2 x double> poison, double %243, i64 0
  %256 = insertelement <2 x double> %255, double %202, i64 1
  %257 = fadd fast <2 x double> %253, %256
  %258 = fsub fast <2 x double> %253, %256
  %259 = shufflevector <2 x double> %257, <2 x double> %258, <2 x i32> <i32 0, i32 3>
  %260 = fadd fast double %254, %191
  %261 = insertelement <2 x double> poison, double %244, i64 0
  %262 = insertelement <2 x double> %261, double %241, i64 1
  %263 = fadd fast <2 x double> %259, %262
  %264 = fadd fast double %260, %194
  %265 = insertelement <2 x double> poison, double %245, i64 0
  %266 = insertelement <2 x double> %265, double %242, i64 1
  %267 = fadd fast <2 x double> %263, %266
  %268 = insertelement <2 x double> poison, double %264, i64 0
  %269 = insertelement <2 x double> %268, double %191, i64 1
  %270 = insertelement <2 x double> poison, double %246, i64 0
  %271 = insertelement <2 x double> %270, double %243, i64 1
  %272 = fadd fast <2 x double> %269, %271
  %273 = fsub fast <2 x double> %267, %272
  %div781 = fdiv fast double %sub702, %add663
  %274 = insertelement <2 x double> poison, double %add663, i64 0
  %275 = shufflevector <2 x double> %274, <2 x double> poison, <2 x i32> zeroinitializer
  %276 = fdiv fast <2 x double> %273, %275
  %277 = fmul fast double %sub507, 2.000000e+00
  %mul784 = fdiv fast double %277, %add468
  %sub785 = fsub fast double %mul784, %div781
  %278 = fmul fast <2 x double> %240, <double 2.000000e+00, double 2.000000e+00>
  %279 = insertelement <2 x double> poison, double %add468, i64 0
  %280 = shufflevector <2 x double> %279, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = fdiv fast <2 x double> %278, %280
  %282 = fsub fast <2 x double> %281, %276
  %mul790 = fmul fast double %sub785, %sub785
  %283 = extractelement <2 x double> %282, i64 1
  %mul791 = fmul fast double %283, %283
  %add792 = fadd fast double %mul790, %mul791
  %284 = shufflevector <2 x double> %282, <2 x double> undef, <2 x i32> <i32 0, i32 undef>
  %285 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %add792, i64 0
  %286 = or i64 %indvars.iv1714, 2
  %arrayidx821 = getelementptr inbounds double, ptr %srcGrid, i64 %286
  %287 = shufflevector <2 x double> %282, <2 x double> undef, <2 x i32> <i32 1, i32 undef>
  %288 = insertelement <2 x double> %287, double %sub785, i64 1
  %289 = fmul fast <2 x double> %288, <double 4.500000e+00, double 4.500000e+00>
  %290 = extractelement <2 x double> %289, i64 0
  %add804 = fadd fast double %290, 3.000000e+00
  %291 = insertelement <2 x double> %284, double %add804, i64 1
  %292 = fmul fast <2 x double> %282, %291
  %293 = fadd fast <2 x double> %292, %285
  %294 = extractelement <2 x double> %293, i64 0
  %mul795 = fmul fast double %294, 1.500000e+00
  %295 = insertelement <2 x double> <double 5.000000e-01, double poison>, double %mul795, i64 1
  %296 = fmul fast <2 x double> %293, %295
  %297 = fsub fast <2 x double> %293, %295
  %298 = shufflevector <2 x double> %296, <2 x double> %297, <2 x i32> <i32 0, i32 3>
  %299 = fsub fast <2 x double> <double 0x3FD5555555555555, double poison>, %298
  %300 = fmul fast <2 x double> %298, <double poison, double 0x3FAC71C71C71C71C>
  %301 = shufflevector <2 x double> %299, <2 x double> %300, <2 x i32> <i32 0, i32 3>
  store <2 x double> %301, ptr %arrayidx801, align 8, !tbaa !9
  %302 = fadd fast <2 x double> %289, <double -3.000000e+00, double 3.000000e+00>
  %303 = fmul fast <2 x double> %302, %288
  %304 = fadd fast <2 x double> %303, <double 1.000000e+00, double 1.000000e+00>
  %305 = insertelement <2 x double> poison, double %mul795, i64 0
  %306 = shufflevector <2 x double> %305, <2 x double> poison, <2 x i32> zeroinitializer
  %307 = fsub fast <2 x double> %304, %306
  %308 = fmul fast <2 x double> %307, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %308, ptr %arrayidx821, align 8, !tbaa !9
  %309 = add nuw nsw i64 %indvars.iv1714, 4
  %arrayidx841 = getelementptr inbounds double, ptr %srcGrid, i64 %309
  %310 = insertelement <2 x double> poison, double %sub785, i64 0
  %311 = shufflevector <2 x double> %310, <2 x double> %282, <2 x i32> <i32 0, i32 2>
  %312 = add nuw nsw i64 %indvars.iv1714, 6
  %arrayidx861 = getelementptr inbounds double, ptr %srcGrid, i64 %312
  %add863 = fadd fast double %sub785, %283
  %313 = insertelement <2 x double> %284, double %add863, i64 1
  %314 = fmul fast <2 x double> %313, <double 4.500000e+00, double 4.500000e+00>
  %315 = shufflevector <2 x double> %289, <2 x double> %314, <2 x i32> <i32 1, i32 2>
  %316 = fadd fast <2 x double> %315, <double -3.000000e+00, double 3.000000e+00>
  %317 = fmul fast <2 x double> %316, %311
  %318 = fadd fast <2 x double> %317, <double 1.000000e+00, double 1.000000e+00>
  %319 = fsub fast <2 x double> %318, %306
  %320 = fmul fast <2 x double> %319, <double 0x3FAC71C71C71C71C, double 0x3FAC71C71C71C71C>
  store <2 x double> %320, ptr %arrayidx841, align 8, !tbaa !9
  %321 = fadd fast <2 x double> %314, <double -3.000000e+00, double 3.000000e+00>
  %322 = fmul fast <2 x double> %321, %313
  %323 = fadd fast <2 x double> %322, <double 1.000000e+00, double 1.000000e+00>
  %324 = fsub fast <2 x double> %323, %306
  %325 = fmul fast <2 x double> %324, <double 0x3FAC71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %325, ptr %arrayidx861, align 8, !tbaa !9
  %fneg875 = fneg fast double %sub785
  %326 = add nuw nsw i64 %indvars.iv1714, 8
  %arrayidx887 = getelementptr inbounds double, ptr %srcGrid, i64 %326
  %327 = insertelement <2 x double> %282, double %sub785, i64 0
  %328 = fsub fast <2 x double> %288, %327
  %329 = fmul fast <2 x double> %328, <double 4.500000e+00, double 4.500000e+00>
  %330 = fadd fast <2 x double> %329, <double 3.000000e+00, double 3.000000e+00>
  %331 = fmul fast <2 x double> %330, %328
  %332 = fadd fast <2 x double> %331, <double 1.000000e+00, double 1.000000e+00>
  %333 = fsub fast <2 x double> %332, %306
  %334 = fmul fast <2 x double> %333, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %334, ptr %arrayidx887, align 8, !tbaa !9
  %335 = add nuw nsw i64 %indvars.iv1714, 10
  %arrayidx913 = getelementptr inbounds double, ptr %srcGrid, i64 %335
  %336 = insertelement <2 x double> %287, double %fneg875, i64 1
  %337 = fsub fast <2 x double> %336, %282
  %338 = fadd fast <2 x double> %336, %282
  %339 = shufflevector <2 x double> %337, <2 x double> %338, <2 x i32> <i32 1, i32 2>
  %340 = fmul fast <2 x double> %339, <double 4.500000e+00, double 4.500000e+00>
  %341 = fadd fast <2 x double> %340, <double 3.000000e+00, double 3.000000e+00>
  %342 = fmul fast <2 x double> %341, %339
  %343 = fadd fast <2 x double> %342, <double 1.000000e+00, double 1.000000e+00>
  %344 = fsub fast <2 x double> %343, %306
  %345 = fmul fast <2 x double> %344, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %345, ptr %arrayidx913, align 8, !tbaa !9
  %346 = add nuw nsw i64 %indvars.iv1714, 12
  %arrayidx937 = getelementptr inbounds double, ptr %srcGrid, i64 %346
  %shuffle = shufflevector <2 x double> %282, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %347 = fsub fast <2 x double> %shuffle, %282
  %348 = fmul fast <2 x double> %347, <double 4.500000e+00, double 4.500000e+00>
  %349 = fadd fast <2 x double> %348, <double 3.000000e+00, double 3.000000e+00>
  %350 = fmul fast <2 x double> %349, %347
  %351 = fadd fast <2 x double> %350, <double 1.000000e+00, double 1.000000e+00>
  %352 = fsub fast <2 x double> %351, %306
  %353 = fmul fast <2 x double> %352, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %353, ptr %arrayidx937, align 8, !tbaa !9
  %354 = extractelement <2 x double> %340, i64 1
  %355 = fsub fast double 3.000000e+00, %354
  %356 = extractelement <2 x double> %338, i64 0
  %357 = fmul fast double %355, %356
  %358 = fadd fast double %357, %mul795
  %359 = fmul fast double %358, 0x3F9C71C71C71C71C
  %mul962 = fsub fast double 0x3F9C71C71C71C71C, %359
  %360 = add nuw nsw i64 %indvars.iv1714, 14
  %arrayidx965 = getelementptr inbounds double, ptr %srcGrid, i64 %360
  store double %mul962, ptr %arrayidx965, align 8, !tbaa !9
  %361 = add nuw nsw i64 %indvars.iv1714, 15
  %arrayidx977 = getelementptr inbounds double, ptr %srcGrid, i64 %361
  %362 = shufflevector <2 x double> %310, <2 x double> poison, <2 x i32> zeroinitializer
  %363 = shufflevector <2 x double> %282, <2 x double> poison, <2 x i32> zeroinitializer
  %364 = fadd fast <2 x double> %362, %363
  %365 = fsub fast <2 x double> %362, %363
  %366 = shufflevector <2 x double> %364, <2 x double> %365, <2 x i32> <i32 0, i32 3>
  %367 = fmul fast <2 x double> %366, <double 4.500000e+00, double 4.500000e+00>
  %368 = fadd fast <2 x double> %367, <double 3.000000e+00, double 3.000000e+00>
  %369 = fmul fast <2 x double> %368, %366
  %370 = fadd fast <2 x double> %369, <double 1.000000e+00, double 1.000000e+00>
  %371 = fsub fast <2 x double> %370, %306
  %372 = fmul fast <2 x double> %371, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %372, ptr %arrayidx977, align 8, !tbaa !9
  %373 = add nuw nsw i64 %indvars.iv1714, 17
  %arrayidx1003 = getelementptr inbounds double, ptr %srcGrid, i64 %373
  %374 = insertelement <2 x double> %284, double %fneg875, i64 1
  %375 = fsub fast <2 x double> %374, %311
  %376 = fmul fast <2 x double> %375, <double 4.500000e+00, double 4.500000e+00>
  %377 = fadd fast <2 x double> %376, <double 3.000000e+00, double 3.000000e+00>
  %378 = fmul fast <2 x double> %377, %375
  %379 = fadd fast <2 x double> %378, <double 1.000000e+00, double 1.000000e+00>
  %380 = fsub fast <2 x double> %379, %306
  %381 = fmul fast <2 x double> %380, <double 0x3F9C71C71C71C71C, double 0x3F9C71C71C71C71C>
  store <2 x double> %381, ptr %arrayidx1003, align 8, !tbaa !9
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
  %24 = load <2 x double>, ptr %arrayidx47, align 8, !tbaa !9
  %25 = extractelement <2 x double> %24, i64 0
  %add48 = fadd fast double %add44, %25
  %26 = extractelement <2 x double> %24, i64 1
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
  %32 = load <2 x double>, ptr %arrayidx63, align 8, !tbaa !9
  %33 = extractelement <2 x double> %32, i64 0
  %add64 = fadd fast double %add60, %33
  %34 = extractelement <2 x double> %32, i64 1
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
  %42 = fadd fast double %41, %20
  %.neg13 = fsub fast double %2, %4
  %.neg10 = fadd fast double %.neg13, %14
  %.neg358 = fadd fast double %.neg10, %16
  %43 = fadd fast double %18, %20
  %sub136 = fsub fast double %.neg358, %43
  %add144 = fadd fast double %sub136, %22
  %44 = insertelement <2 x double> poison, double %add144, i64 0
  %45 = insertelement <2 x double> %44, double %28, i64 1
  %46 = fadd fast <2 x double> %45, %24
  %shift = shufflevector <2 x double> %46, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %47 = fsub fast <2 x double> %46, %shift
  %48 = fadd fast double %12, %25
  %49 = fadd fast double %48, %28
  %50 = fadd fast double %49, %33
  %51 = fmul fast <2 x double> %47, %47
  %52 = insertelement <2 x double> poison, double %40, i64 0
  %53 = insertelement <2 x double> %52, double %22, i64 1
  %54 = insertelement <2 x double> poison, double %18, i64 0
  %55 = insertelement <2 x double> %54, double %10, i64 1
  %56 = fadd fast <2 x double> %53, %55
  %57 = insertelement <2 x double> %24, double %42, i64 0
  %58 = fsub fast <2 x double> %56, %57
  %59 = fadd fast <2 x double> %56, %57
  %60 = shufflevector <2 x double> %58, <2 x double> %59, <2 x i32> <i32 0, i32 3>
  %61 = insertelement <2 x double> poison, double %30, i64 0
  %62 = shufflevector <2 x double> %61, <2 x double> poison, <2 x i32> zeroinitializer
  %63 = fadd fast <2 x double> %60, %62
  %64 = fadd fast <2 x double> %63, %32
  %65 = insertelement <2 x double> poison, double %50, i64 0
  %66 = insertelement <2 x double> %65, double %36, i64 1
  %67 = insertelement <2 x double> %32, double %36, i64 0
  %68 = fadd fast <2 x double> %66, %67
  %shuffle = shufflevector <2 x double> %68, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %69 = fsub fast <2 x double> %64, %shuffle
  %70 = fmul fast <2 x double> %69, %69
  %71 = fadd fast <2 x double> %70, %51
  %shift21 = shufflevector <2 x double> %70, <2 x double> poison, <2 x i32> <i32 1, i32 undef>
  %72 = fadd fast <2 x double> %71, %shift21
  %add211 = extractelement <2 x double> %72, i64 0
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
  %call = tail call fast double @__sqrt_finite(double noundef %minU2.2) #16
  %call221 = tail call fast double @__sqrt_finite(double noundef %maxU2.1) #16
  %call222 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, i32 noundef %nObstacleCells.1, i32 noundef %nAccelCells.2, i32 noundef %nFluidCells.2, double noundef %minRho.1, double noundef %maxRho.1, double noundef %add77, double noundef %call, double noundef %call221)
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
  %47 = fadd fast double %46, %35
  %sub249 = fadd fast double %47, %37
  %48 = fadd fast double %39, %41
  %sub289 = fsub fast double %sub249, %48
  %conv290 = fptrunc double %sub289 to float
  %.neg13 = fsub fast double %7, %9
  %.neg10 = fadd fast double %.neg13, %19
  %.neg724 = fadd fast double %.neg10, %21
  %49 = fadd fast double %23, %25
  %sub309 = fsub fast double %.neg724, %49
  %add329 = fadd fast double %sub309, %27
  %sub349 = fadd fast double %add329, %29
  %50 = fadd fast double %31, %33
  %sub389 = fsub fast double %sub349, %50
  %conv390 = fptrunc double %sub389 to float
  %51 = fadd fast double %15, %27
  %52 = fadd fast double %17, %29
  %53 = fadd fast double %51, %31
  %54 = fadd fast double %52, %33
  %55 = fadd fast double %53, %35
  %56 = fadd fast double %54, %37
  %57 = fadd fast double %55, %39
  %58 = fadd fast double %56, %41
  %sub489 = fsub fast double %57, %58
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
  %maxDiff2.0759 = phi float [ 0xC6293E5940000000, %entry ], [ %maxDiff2.3, %for.inc512 ]
  %0 = mul nuw nsw i64 %indvars.iv787, 10000
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.inc509, %for.cond1.preheader
  %indvars.iv781 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next782, %for.inc509 ]
  %maxDiff2.1757 = phi float [ %maxDiff2.0759, %for.cond1.preheader ], [ %maxDiff2.3, %for.inc509 ]
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
  %15 = add nuw nsw i64 %4, 6
  %arrayidx70 = getelementptr inbounds double, ptr %grid, i64 %15
  %16 = load double, ptr %arrayidx70, align 8, !tbaa !9
  %17 = add nuw nsw i64 %4, 7
  %arrayidx80 = getelementptr inbounds double, ptr %grid, i64 %17
  %18 = load double, ptr %arrayidx80, align 8, !tbaa !9
  %19 = add nuw nsw i64 %4, 8
  %arrayidx90 = getelementptr inbounds double, ptr %grid, i64 %19
  %20 = add nuw nsw i64 %4, 9
  %arrayidx100 = getelementptr inbounds double, ptr %grid, i64 %20
  %21 = load double, ptr %arrayidx100, align 8, !tbaa !9
  %22 = add nuw nsw i64 %4, 10
  %arrayidx110 = getelementptr inbounds double, ptr %grid, i64 %22
  %23 = load double, ptr %arrayidx110, align 8, !tbaa !9
  %24 = add nuw nsw i64 %4, 11
  %arrayidx120 = getelementptr inbounds double, ptr %grid, i64 %24
  %25 = add nuw nsw i64 %4, 12
  %arrayidx130 = getelementptr inbounds double, ptr %grid, i64 %25
  %26 = add nuw nsw i64 %4, 13
  %arrayidx140 = getelementptr inbounds double, ptr %grid, i64 %26
  %27 = add nuw nsw i64 %4, 14
  %arrayidx150 = getelementptr inbounds double, ptr %grid, i64 %27
  %28 = load double, ptr %arrayidx150, align 8, !tbaa !9
  %29 = add nuw nsw i64 %4, 15
  %arrayidx160 = getelementptr inbounds double, ptr %grid, i64 %29
  %30 = add nuw nsw i64 %4, 16
  %arrayidx170 = getelementptr inbounds double, ptr %grid, i64 %30
  %31 = load double, ptr %arrayidx170, align 8, !tbaa !9
  %32 = add nuw nsw i64 %4, 17
  %arrayidx180 = getelementptr inbounds double, ptr %grid, i64 %32
  %33 = add nuw nsw i64 %4, 18
  %arrayidx190 = getelementptr inbounds double, ptr %grid, i64 %33
  %34 = fadd fast double %11, %18
  %35 = fadd fast double %34, %21
  %.neg13 = fsub fast double %7, %9
  %.neg10 = fadd fast double %.neg13, %18
  %36 = fadd fast double %21, %23
  %37 = load double, ptr %arrayidx60, align 8, !tbaa !9
  %add61 = fadd fast double %add51, %37
  %add71 = fadd fast double %add61, %16
  %add81 = fadd fast double %add71, %18
  %38 = load double, ptr %arrayidx90, align 8, !tbaa !9
  %add91 = fadd fast double %add81, %38
  %add101 = fadd fast double %add91, %21
  %add111 = fadd fast double %add101, %23
  %39 = load double, ptr %arrayidx120, align 8, !tbaa !9
  %add121 = fadd fast double %add111, %39
  %40 = load double, ptr %arrayidx130, align 8, !tbaa !9
  %add131 = fadd fast double %add121, %40
  %41 = load double, ptr %arrayidx140, align 8, !tbaa !9
  %add141 = fadd fast double %add131, %41
  %add151 = fadd fast double %add141, %28
  %42 = load double, ptr %arrayidx160, align 8, !tbaa !9
  %add161 = fadd fast double %add151, %42
  %add171 = fadd fast double %add161, %31
  %43 = load double, ptr %arrayidx180, align 8, !tbaa !9
  %add181 = fadd fast double %add171, %43
  %44 = load double, ptr %arrayidx190, align 8, !tbaa !9
  %add191 = fadd fast double %add181, %44
  %45 = fadd fast double %13, %38
  %46 = fadd fast double %45, %23
  %47 = fsub fast double %35, %46
  %48 = fadd fast double %47, %42
  %sub249 = fadd fast double %48, %31
  %49 = fadd fast double %43, %44
  %sub289 = fsub fast double %sub249, %49
  %50 = insertelement <2 x double> poison, double %.neg10, i64 0
  %51 = insertelement <2 x double> %50, double %39, i64 1
  %52 = insertelement <2 x double> poison, double %38, i64 0
  %53 = insertelement <2 x double> %52, double %37, i64 1
  %54 = fadd fast <2 x double> %51, %53
  %55 = fadd fast double %16, %40
  %56 = insertelement <2 x double> poison, double %36, i64 0
  %57 = insertelement <2 x double> %56, double %41, i64 1
  %58 = fsub fast <2 x double> %54, %57
  %59 = fadd fast <2 x double> %54, %57
  %60 = shufflevector <2 x double> %58, <2 x double> %59, <2 x i32> <i32 0, i32 3>
  %61 = fadd fast double %55, %28
  %62 = insertelement <2 x double> poison, double %39, i64 0
  %63 = insertelement <2 x double> %62, double %42, i64 1
  %64 = fadd fast <2 x double> %60, %63
  %65 = fadd fast double %61, %31
  %66 = insertelement <2 x double> poison, double %40, i64 0
  %67 = insertelement <2 x double> %66, double %43, i64 1
  %68 = fadd fast <2 x double> %64, %67
  %69 = insertelement <2 x double> poison, double %28, i64 0
  %70 = insertelement <2 x double> %69, double %65, i64 1
  %71 = insertelement <2 x double> poison, double %41, i64 0
  %72 = insertelement <2 x double> %71, double %44, i64 1
  %73 = fadd fast <2 x double> %70, %72
  %74 = fsub fast <2 x double> %68, %73
  %div = fdiv fast double %sub289, %add191
  %75 = insertelement <2 x double> poison, double %add191, i64 0
  %76 = shufflevector <2 x double> %75, <2 x double> poison, <2 x i32> zeroinitializer
  %77 = fdiv fast <2 x double> %74, %76
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
  %78 = load float, ptr %fileUx, align 4, !tbaa !31
  %conv = fpext float %78 to double
  %sub492 = fsub fast double %div, %conv
  %conv493 = fptrunc double %sub492 to float
  %mul500 = fmul fast float %conv493, %conv493
  %79 = load float, ptr %fileUy, align 4, !tbaa !31
  %80 = load float, ptr %fileUz, align 4, !tbaa !31
  %81 = insertelement <2 x float> poison, float %79, i64 0
  %82 = insertelement <2 x float> %81, float %80, i64 1
  %83 = fpext <2 x float> %82 to <2 x double>
  %84 = fsub fast <2 x double> %77, %83
  %85 = fptrunc <2 x double> %84 to <2 x float>
  %86 = fmul fast <2 x float> %85, %85
  %87 = extractelement <2 x float> %86, i64 0
  %add502 = fadd fast float %87, %mul500
  %88 = extractelement <2 x float> %86, i64 1
  %add504 = fadd fast float %add502, %88
  %cmp505 = fcmp fast ogt float %add504, %maxDiff2.2754
  %maxDiff2.3 = select i1 %cmp505, float %add504, float %maxDiff2.2754
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %for.inc509, label %for.body6, !llvm.loop !36

for.inc509:                                       ; preds = %if.end
  %indvars.iv.next782 = add nuw nsw i64 %indvars.iv781, 1
  %exitcond786.not = icmp eq i64 %indvars.iv.next782, 100
  br i1 %exitcond786.not, label %for.inc512, label %for.cond4.preheader, !llvm.loop !37

for.inc512:                                       ; preds = %for.inc509
  %indvars.iv.next788 = add nuw nsw i64 %indvars.iv787, 1
  %exitcond791.not = icmp eq i64 %indvars.iv.next788, 130
  br i1 %exitcond791.not, label %for.end514, label %for.cond1.preheader, !llvm.loop !38

for.end514:                                       ; preds = %for.inc512
  %conv515 = fpext float %maxDiff2.3 to double
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
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
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
