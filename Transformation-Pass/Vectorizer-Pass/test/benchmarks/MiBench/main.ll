; ModuleID = 'mpglib/main.c'
source_filename = "mpglib/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { ptr, ptr, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VBRTAGDATA = type { i32, i32, i32, i32, i32, i32, [100 x i8] }

@mp = dso_local global %struct.mpstr zeroinitializer, align 8
@buf = internal global [16384 x i8] zeroinitializer, align 16
@out = internal global [8192 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [50 x i8] c"Opps: first frame of mpglib output will be lost \0A\00", align 1
@freqs = external local_unnamed_addr global [9 x i64], align 16
@tabsel_123 = external local_unnamed_addr global [2 x [3 x [16 x i32]]], align 16
@.str.1 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  Cant handle this... \0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Opps: mpg123 returned more than one frame!  shouldn't happen... \0A\00", align 1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @is_syncword(ptr nocapture noundef readonly %header) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %header, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %arrayidx2 = getelementptr inbounds i8, ptr %header, i64 1
  %1 = load i8, ptr %arrayidx2, align 1, !tbaa !5
  %cmp4 = icmp ugt i8 %1, -17
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_decode_initfile(ptr nocapture noundef %fd, ptr nocapture noundef writeonly %stereo, ptr nocapture noundef writeonly %samp, ptr nocapture noundef writeonly %bitrate, ptr nocapture noundef writeonly %num_samples) local_unnamed_addr #1 {
entry:
  %pTagData = alloca %struct.VBRTAGDATA, align 4
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %pTagData) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %call = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call1 = tail call i32 @is_syncword(ptr noundef nonnull @buf)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i8, ptr getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 1), align 1, !tbaa !5
  store i8 %0, ptr @buf, align 16, !tbaa !5
  %call2 = tail call i64 @fread(ptr noundef getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 1), i64 noundef 1, i64 noundef 1, ptr noundef %fd)
  %cmp = icmp eq i64 %call2, 0
  br i1 %cmp, label %cleanup, label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %call3 = tail call i64 @fread(ptr noundef getelementptr inbounds ([16384 x i8], ptr @buf, i64 0, i64 2), i64 noundef 1, i64 noundef 46, ptr noundef %fd)
  %cmp4 = icmp eq i64 %call3, 0
  br i1 %cmp4, label %cleanup, label %if.end6

if.end6:                                          ; preds = %while.end
  %call7 = call i32 @GetVbrTag(ptr noundef nonnull %pTagData, ptr noundef nonnull @buf) #8
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  %frames = getelementptr inbounds %struct.VBRTAGDATA, ptr %pTagData, i64 0, i32 3
  %1 = load i32, ptr %frames, align 4, !tbaa !11
  %conv = sext i32 %1 to i64
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %num_frames.0 = phi i64 [ %conv, %if.then9 ], [ 0, %if.end6 ]
  store i32 0, ptr %size, align 4, !tbaa !14
  %2 = trunc i64 %call3 to i32
  %conv11 = add i32 %2, 2
  %call12 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %conv11, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %size) #8
  %3 = load i32, ptr %size, align 4, !tbaa !14
  %cmp13 = icmp slt i32 %3, 1
  %or.cond = select i1 %cmp13, i1 true, i1 %tobool8
  br i1 %or.cond, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end10
  %4 = load ptr, ptr @stderr, align 8, !tbaa !15
  %5 = call i64 @fwrite(ptr nonnull @.str, i64 49, i64 1, ptr %4) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end10
  %6 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !17
  store i32 %6, ptr %stereo, align 4, !tbaa !14
  %7 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 9), align 8, !tbaa !21
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [9 x i64], ptr @freqs, i64 0, i64 %idxprom
  %8 = load i64, ptr %arrayidx, align 8, !tbaa !22
  %conv19 = trunc i64 %8 to i32
  store i32 %conv19, ptr %samp, align 4, !tbaa !14
  %9 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 3), align 8, !tbaa !23
  %idxprom20 = sext i32 %9 to i64
  %10 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 6), align 4, !tbaa !24
  %sub = add nsw i32 %10, -1
  %idxprom22 = sext i32 %sub to i64
  %11 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 8), align 4, !tbaa !25
  %idxprom24 = sext i32 %11 to i64
  %arrayidx25 = getelementptr inbounds [2 x [3 x [16 x i32]]], ptr @tabsel_123, i64 0, i64 %idxprom20, i64 %idxprom22, i64 %idxprom24
  %12 = load i32, ptr %arrayidx25, align 4, !tbaa !14
  store i32 %12, ptr %bitrate, align 4, !tbaa !14
  %tobool30 = icmp ne i64 %num_frames.0, 0
  %or.cond40 = select i1 %tobool8, i1 %tobool30, i1 false
  br i1 %or.cond40, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end18
  %13 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5, i32 3), align 8, !tbaa !23
  %cmp26 = icmp eq i32 %13, 0
  %cond = select i1 %cmp26, i64 1152, i64 576
  %mul = mul nsw i64 %cond, %num_frames.0
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end18
  %storemerge = phi i64 [ %mul, %if.then31 ], [ 4294967295, %if.end18 ]
  store i64 %storemerge, ptr %num_samples, align 8, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %while.body, %while.end, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -1, %while.end ], [ -1, %while.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %pTagData) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @InitMP3(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @GetVbrTag(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decodeMP3(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_decode_init() local_unnamed_addr #1 {
entry:
  %call = tail call i32 @InitMP3(ptr noundef nonnull @mp) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16384) @buf, i8 0, i64 16384, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_decode_fromfile(ptr nocapture noundef %fd, ptr nocapture noundef writeonly %pcm_l, ptr nocapture noundef writeonly %pcm_r) local_unnamed_addr #1 {
entry:
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  store i32 0, ptr %size, align 4, !tbaa !14
  %call = tail call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 64, ptr noundef %fd)
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %cleanup, label %while.cond

while.cond:                                       ; preds = %entry, %while.body
  %call4.sink = phi i64 [ %call4, %while.body ], [ %call, %entry ]
  %conv9 = trunc i64 %call4.sink to i32
  %call10 = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef nonnull @buf, i32 noundef %conv9, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %size) #8
  %cmp2 = icmp eq i32 %call10, 1
  %0 = load i32, ptr %size, align 4
  %tobool.not = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %tobool.not
  br i1 %or.cond, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i64 @fread(ptr noundef nonnull @buf, i64 noundef 1, i64 noundef 100, ptr noundef %fd)
  %cmp5 = icmp eq i64 %call4, 0
  br i1 %cmp5, label %cleanup, label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %1 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !17
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.end43

if.then13:                                        ; preds = %while.end
  %mul = shl nsw i32 %1, 1
  %div = sdiv i32 %0, %mul
  switch i32 %div, label %if.then18 [
    i32 1152, label %if.end20
    i32 576, label %if.end20
  ]

if.then18:                                        ; preds = %if.then13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %3 = call i64 @fwrite(ptr nonnull @.str.1, i64 65, i64 1, ptr %2) #9
  call void @exit(i32 noundef -50) #10
  unreachable

if.end20:                                         ; preds = %if.then13, %if.then13
  %cmp2177 = icmp sgt i32 %1, 0
  br i1 %cmp2177, label %for.cond23.preheader.us.preheader, label %if.end43

for.cond23.preheader.us.preheader:                ; preds = %if.end20
  %4 = zext i32 %1 to i64
  %wide.trip.count103 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %div to i64
  %wide.trip.count98 = zext i32 %div to i64
  br label %for.cond23.preheader.us

for.cond23.preheader.us:                          ; preds = %for.cond23.preheader.us.preheader, %for.cond23.for.inc40_crit_edge.us
  %indvars.iv100 = phi i64 [ 0, %for.cond23.preheader.us.preheader ], [ %indvars.iv.next101, %for.cond23.for.inc40_crit_edge.us ]
  %cmp27.us = icmp eq i64 %indvars.iv100, 0
  br i1 %cmp27.us, label %for.body26.us.us, label %for.body26.us81

for.body26.us81:                                  ; preds = %for.cond23.preheader.us, %for.body26.us81
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body26.us81 ], [ 0, %for.cond23.preheader.us ]
  %5 = mul nsw i64 %indvars.iv, %4
  %6 = add nuw nsw i64 %5, %indvars.iv100
  %arrayidx36.us = getelementptr inbounds i16, ptr @out, i64 %6
  %7 = load i16, ptr %arrayidx36.us, align 2, !tbaa !27
  %arrayidx38.us = getelementptr inbounds i16, ptr %pcm_r, i64 %indvars.iv
  store i16 %7, ptr %arrayidx38.us, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond23.for.inc40_crit_edge.us, label %for.body26.us81, !llvm.loop !29

for.cond23.for.inc40_crit_edge.us:                ; preds = %for.body26.us81, %for.body26.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %if.end43, label %for.cond23.preheader.us, !llvm.loop !30

for.body26.us.us:                                 ; preds = %for.cond23.preheader.us, %for.body26.us.us
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body26.us.us ], [ 0, %for.cond23.preheader.us ]
  %8 = mul nsw i64 %indvars.iv94, %4
  %arrayidx.us.us = getelementptr inbounds i16, ptr @out, i64 %8
  %9 = load i16, ptr %arrayidx.us.us, align 2, !tbaa !27
  %arrayidx32.us.us = getelementptr inbounds i16, ptr %pcm_l, i64 %indvars.iv94
  store i16 %9, ptr %arrayidx32.us.us, align 2, !tbaa !27
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count98
  br i1 %exitcond99.not, label %for.cond23.for.inc40_crit_edge.us, label %for.body26.us.us, !llvm.loop !29

if.end43:                                         ; preds = %for.cond23.for.inc40_crit_edge.us, %if.end20, %while.end
  %outsize.0 = phi i32 [ 0, %while.end ], [ %div, %if.end20 ], [ %div, %for.cond23.for.inc40_crit_edge.us ]
  %cmp44 = icmp eq i32 %call10, -1
  %.outsize.0 = select i1 %cmp44, i32 -1, i32 %outsize.0
  br label %cleanup

cleanup:                                          ; preds = %while.body, %if.end43, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %.outsize.0, %if.end43 ], [ -1, %while.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lame_decode(ptr noundef %buf, i32 noundef %len, ptr nocapture noundef writeonly %pcm_l, ptr nocapture noundef writeonly %pcm_r) local_unnamed_addr #1 {
entry:
  %size = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #8
  %call = call i32 @decodeMP3(ptr noundef nonnull @mp, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @out, i32 noundef 8192, ptr noundef nonnull %size) #8
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end23

if.then:                                          ; preds = %entry
  %0 = load i32, ptr %size, align 4, !tbaa !14
  %1 = load i32, ptr getelementptr inbounds (%struct.mpstr, ptr @mp, i64 0, i32 5), align 4, !tbaa !17
  %mul = shl nsw i32 %1, 1
  %div = sdiv i32 %0, %mul
  %cmp1 = icmp sgt i32 %div, 1152
  br i1 %cmp1, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %cmp446 = icmp sgt i32 %1, 0
  %cmp643 = icmp sgt i32 %div, 0
  %or.cond = select i1 %cmp446, i1 %cmp643, i1 false
  br i1 %or.cond, label %for.cond5.preheader.us.preheader, label %if.end23

for.cond5.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %2 = zext i32 %1 to i64
  %wide.trip.count70 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %div to i64
  %wide.trip.count65 = zext i32 %div to i64
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc20_crit_edge.us
  %indvars.iv67 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next68, %for.cond5.for.inc20_crit_edge.us ]
  %cmp8.us = icmp eq i64 %indvars.iv67, 0
  br i1 %cmp8.us, label %for.body7.us.us, label %for.body7.us50

for.body7.us50:                                   ; preds = %for.cond5.preheader.us, %for.body7.us50
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7.us50 ], [ 0, %for.cond5.preheader.us ]
  %3 = mul nsw i64 %indvars.iv, %2
  %4 = add nuw nsw i64 %3, %indvars.iv67
  %arrayidx16.us = getelementptr inbounds i16, ptr @out, i64 %4
  %5 = load i16, ptr %arrayidx16.us, align 2, !tbaa !27
  %arrayidx18.us = getelementptr inbounds i16, ptr %pcm_r, i64 %indvars.iv
  store i16 %5, ptr %arrayidx18.us, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond5.for.inc20_crit_edge.us, label %for.body7.us50, !llvm.loop !31

for.cond5.for.inc20_crit_edge.us:                 ; preds = %for.body7.us50, %for.body7.us.us
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %if.end23, label %for.cond5.preheader.us, !llvm.loop !32

for.body7.us.us:                                  ; preds = %for.cond5.preheader.us, %for.body7.us.us
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body7.us.us ], [ 0, %for.cond5.preheader.us ]
  %6 = mul nsw i64 %indvars.iv61, %2
  %arrayidx.us.us = getelementptr inbounds i16, ptr @out, i64 %6
  %7 = load i16, ptr %arrayidx.us.us, align 2, !tbaa !27
  %arrayidx12.us.us = getelementptr inbounds i16, ptr %pcm_l, i64 %indvars.iv61
  store i16 %7, ptr %arrayidx12.us.us, align 2, !tbaa !27
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond5.for.inc20_crit_edge.us, label %for.body7.us.us, !llvm.loop !31

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr @stderr, align 8, !tbaa !15
  %9 = call i64 @fwrite(ptr nonnull @.str.2, i64 65, i64 1, ptr %8) #9
  call void @exit(i32 noundef -50) #10
  unreachable

if.end23:                                         ; preds = %for.cond5.for.inc20_crit_edge.us, %for.cond.preheader, %entry
  %outsize.0 = phi i32 [ 0, %entry ], [ %div, %for.cond.preheader ], [ %div, %for.cond5.for.inc20_crit_edge.us ]
  %cmp24 = icmp eq i32 %call, -1
  %.outsize.0 = select i1 %cmp24, i32 -1, i32 %outsize.0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #8
  ret i32 %.outsize.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !13, i64 12}
!12 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !6, i64 24}
!13 = !{!"int", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !13, i64 28}
!18 = !{!"mpstr", !16, i64 0, !16, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !19, i64 28, !6, i64 100, !6, i64 4712, !6, i64 23144, !20, i64 23152, !13, i64 23160, !6, i64 23168, !13, i64 31872}
!19 = !{!"frame", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68}
!20 = !{!"long", !6, i64 0}
!21 = !{!18, !13, i64 64}
!22 = !{!20, !20, i64 0}
!23 = !{!18, !13, i64 40}
!24 = !{!18, !13, i64 52}
!25 = !{!18, !13, i64 60}
!26 = distinct !{!26, !9, !10}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !6, i64 0}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !9, !10}
!32 = distinct !{!32, !9, !10}
