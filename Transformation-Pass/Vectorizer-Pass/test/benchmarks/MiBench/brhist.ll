; ModuleID = 'brhist.c'
source_filename = "brhist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }

@disp_brhist = dso_local local_unnamed_addr global i32 1, align 4
@brhist_bps = dso_local global [15 x [5 x i8]] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"%3d:\00", align 1
@bitrate_table = external local_unnamed_addr global [2 x [15 x i32]], align 16
@brhist_count = dso_local local_unnamed_addr global [15 x i64] zeroinitializer, align 16
@brhist_temp = dso_local local_unnamed_addr global [15 x i64] zeroinitializer, align 16
@brhist_vbrmin = dso_local local_unnamed_addr global i32 0, align 4
@brhist_vbrmax = dso_local local_unnamed_addr global i32 0, align 4
@brhist_max = dso_local local_unnamed_addr global i64 0, align 8
@brhist_bar = dso_local global [60 x i8] zeroinitializer, align 16
@brhist_spc = dso_local global [51 x i8] zeroinitializer, align 16
@brhist_backcur = dso_local global [200 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"can't get TERM environment string.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"can't find termcap entry: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@stderr_buff = dso_local global [8192 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"\0Aaverage: %2.0f kbs\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @brhist_init(ptr nocapture noundef readonly %gfp, i32 noundef %br_min, i32 noundef %br_max) local_unnamed_addr #0 {
entry:
  %term_buff = alloca [1024 x i8], align 16
  %tp = alloca ptr, align 8
  %tc = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %term_buff) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tp) #11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %tc) #11
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [15 x [5 x i8]], ptr @brhist_bps, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %version, align 8, !tbaa !5
  %idxprom1 = sext i32 %0 to i64
  %arrayidx4 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom1, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !13
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %arrayidx, ptr noundef nonnull @.str, i32 noundef %1) #11
  %arrayidx6 = getelementptr inbounds [15 x i64], ptr @brhist_count, i64 0, i64 %indvars.iv
  store i64 0, ptr %arrayidx6, align 8, !tbaa !14
  %arrayidx8 = getelementptr inbounds [15 x i64], ptr @brhist_temp, i64 0, i64 %indvars.iv
  store i64 0, ptr %arrayidx8, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !15

for.end:                                          ; preds = %for.body
  store i32 %br_min, ptr @brhist_vbrmin, align 4, !tbaa !13
  store i32 %br_max, ptr @brhist_vbrmax, align 4, !tbaa !13
  store i64 0, ptr @brhist_max, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) @brhist_bar, i8 42, i64 50, i1 false)
  store i8 0, ptr getelementptr inbounds ([60 x i8], ptr @brhist_bar, i64 0, i64 50), align 2, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(50) @brhist_spc, i8 32, i64 50, i1 false)
  store i8 0, ptr getelementptr inbounds ([51 x i8], ptr @brhist_spc, i64 0, i64 50), align 2, !tbaa !18
  store i8 0, ptr @brhist_backcur, align 16, !tbaa !18
  %call9 = tail call ptr @getenv(ptr noundef nonnull @.str.1) #11
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %2 = load ptr, ptr @stderr, align 8, !tbaa !19
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 35, i64 1, ptr %2) #12
  store i32 0, ptr @disp_brhist, align 4, !tbaa !13
  br label %cleanup

if.end:                                           ; preds = %for.end
  %call13 = call i32 @tgetent(ptr noundef nonnull %term_buff, ptr noundef nonnull %call9) #11
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  %4 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull %call9) #12
  store i32 0, ptr @disp_brhist, align 4, !tbaa !13
  br label %cleanup

if.end17:                                         ; preds = %if.end
  store i8 0, ptr %tc, align 1, !tbaa !18
  store ptr %tc, ptr %tp, align 8, !tbaa !19
  %call20 = call ptr @tgetstr(ptr noundef nonnull @.str.4, ptr noundef nonnull %tp) #11
  store ptr %call20, ptr %tp, align 8, !tbaa !19
  store i8 0, ptr @brhist_backcur, align 16, !tbaa !18
  %sub = add nsw i32 %br_min, -1
  %cmp22.not43 = icmp sgt i32 %sub, %br_max
  br i1 %cmp22.not43, label %for.end27, label %for.body23

for.body23:                                       ; preds = %if.end17, %for.body23
  %i.144 = phi i32 [ %inc26, %for.body23 ], [ %sub, %if.end17 ]
  %call24 = call ptr @strcat(ptr noundef nonnull @brhist_backcur, ptr noundef nonnull dereferenceable(1) %call20) #11
  %inc26 = add i32 %i.144, 1
  %exitcond46.not = icmp eq i32 %i.144, %br_max
  br i1 %exitcond46.not, label %for.end27, label %for.body23, !llvm.loop !20

for.end27:                                        ; preds = %for.body23, %if.end17
  %5 = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @setbuf(ptr noundef %5, ptr noundef nonnull @stderr_buff) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end27, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %tc) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tp) #11
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %term_buff) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind readonly
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @tgetent(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @tgetstr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @brhist_add_count() local_unnamed_addr #7 {
entry:
  %0 = load i32, ptr @brhist_vbrmin, align 4, !tbaa !13
  %1 = load i32, ptr @brhist_vbrmax, align 4, !tbaa !13
  %cmp.not18 = icmp sgt i32 %0, %1
  br i1 %cmp.not18, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %brhist_max.promoted = load i64, ptr @brhist_max, align 8, !tbaa !14
  %2 = sext i32 %0 to i64
  %3 = add i32 %1, 1
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end
  %indvars.iv = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  %add1719 = phi i64 [ %brhist_max.promoted, %for.body.preheader ], [ %add16, %if.end ]
  %arrayidx = getelementptr inbounds [15 x i64], ptr @brhist_temp, i64 0, i64 %indvars.iv
  %4 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %arrayidx2 = getelementptr inbounds [15 x i64], ptr @brhist_count, i64 0, i64 %indvars.iv
  %5 = load i64, ptr %arrayidx2, align 8, !tbaa !14
  %add = add nsw i64 %5, %4
  store i64 %add, ptr %arrayidx2, align 8, !tbaa !14
  %cmp5 = icmp sgt i64 %add, %add1719
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 %add, ptr @brhist_max, align 8, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %add16 = phi i64 [ %add, %if.then ], [ %add1719, %for.body ]
  store i64 0, ptr %arrayidx, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !21

for.end:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @brhist_disp() local_unnamed_addr #8 {
entry:
  %0 = load i64, ptr @brhist_max, align 8, !tbaa !14
  %1 = tail call i64 @llvm.smax.i64(i64 %0, i64 50)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call = tail call i32 @fputc(i32 noundef 10, ptr noundef %2)
  %3 = load i32, ptr @brhist_vbrmin, align 4, !tbaa !13
  %4 = load i32, ptr @brhist_vbrmax, align 4, !tbaa !13
  %cmp1.not21 = icmp sgt i32 %3, %4
  br i1 %cmp1.not21, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i64 %1, -1
  %5 = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [15 x i64], ptr @brhist_count, i64 0, i64 %indvars.iv
  %6 = load i64, ptr %arrayidx, align 8, !tbaa !14
  %mul = mul nsw i64 %6, 50
  %sub = add i64 %add, %mul
  %div = sdiv i64 %sub, %1
  %arrayidx3 = getelementptr inbounds [15 x [5 x i8]], ptr @brhist_bps, i64 0, i64 %indvars.iv
  %7 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call4 = tail call i32 @fputs(ptr noundef nonnull %arrayidx3, ptr noundef %7) #12
  %.neg = mul i64 %div, -4294967296
  %sext = add i64 %.neg, 214748364800
  %idxprom6 = ashr exact i64 %sext, 32
  %arrayidx7 = getelementptr inbounds [60 x i8], ptr @brhist_bar, i64 0, i64 %idxprom6
  %8 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call8 = tail call i32 @fputs(ptr noundef nonnull %arrayidx7, ptr noundef %8) #12
  %sext20 = shl i64 %div, 32
  %idxprom9 = ashr exact i64 %sext20, 32
  %arrayidx10 = getelementptr inbounds [51 x i8], ptr @brhist_spc, i64 0, i64 %idxprom9
  %9 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call11 = tail call i32 @fputs(ptr noundef nonnull %arrayidx10, ptr noundef %9) #12
  %10 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call12 = tail call i32 @fputc(i32 noundef 10, ptr noundef %10)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %11 = load i32, ptr @brhist_vbrmax, align 4, !tbaa !13
  %12 = sext i32 %11 to i64
  %cmp1.not.not = icmp slt i64 %indvars.iv, %12
  br i1 %cmp1.not.not, label %for.body, label %for.end, !llvm.loop !22

for.end:                                          ; preds = %for.body, %entry
  %13 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call13 = tail call i32 @fputs(ptr noundef nonnull @brhist_backcur, ptr noundef %13) #12
  %14 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call14 = tail call i32 @fflush(ptr noundef %14)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @brhist_disp_total(ptr nocapture noundef readonly %gfp) local_unnamed_addr #8 {
entry:
  %0 = load i32, ptr @brhist_vbrmin, align 4, !tbaa !13
  %1 = load i32, ptr @brhist_vbrmax, align 4, !tbaa !13
  %cmp.not23 = icmp sgt i32 %0, %1
  br i1 %cmp.not23, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.body
  %i.024 = phi i32 [ %inc, %for.body ], [ %0, %entry ]
  %2 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call = tail call i32 @fputc(i32 noundef 10, ptr noundef %2)
  %inc = add nsw i32 %i.024, 1
  %3 = load i32, ptr @brhist_vbrmax, align 4, !tbaa !13
  %cmp.not.not = icmp slt i32 %i.024, %3
  br i1 %cmp.not.not, label %for.body, label %for.end.loopexit, !llvm.loop !23

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr @brhist_vbrmin, align 4, !tbaa !13
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %4 = phi i32 [ %0, %entry ], [ %.pre, %for.end.loopexit ]
  %.lcssa = phi i32 [ %1, %entry ], [ %3, %for.end.loopexit ]
  %cmp2.not25 = icmp sgt i32 %4, %.lcssa
  br i1 %cmp2.not25, label %for.end12, label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.end
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %5 = load i32, ptr %version, align 8, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %totalframes = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 40
  %6 = load i64, ptr %totalframes, align 8, !tbaa !24
  %conv9 = sitofp i64 %6 to float
  %7 = sext i32 %4 to i64
  %8 = add i32 %.lcssa, 1
  %9 = fdiv fast float 1.000000e+00, %conv9
  br label %for.body3

for.body3:                                        ; preds = %for.body3.lr.ph, %for.body3
  %indvars.iv = phi i64 [ %7, %for.body3.lr.ph ], [ %indvars.iv.next, %for.body3 ]
  %ave.027 = phi float [ 0.000000e+00, %for.body3.lr.ph ], [ %add, %for.body3 ]
  %arrayidx5 = getelementptr inbounds [2 x [15 x i32]], ptr @bitrate_table, i64 0, i64 %idxprom, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx5, align 4, !tbaa !13
  %conv = sitofp i32 %10 to float
  %arrayidx7 = getelementptr inbounds [15 x i64], ptr @brhist_count, i64 0, i64 %indvars.iv
  %11 = load i64, ptr %arrayidx7, align 8, !tbaa !14
  %conv8 = sitofp i64 %11 to float
  %mul = fmul fast float %conv8, %conv
  %12 = fmul fast float %mul, %9
  %add = fadd fast float %12, %ave.027
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %8, %lftr.wideiv
  br i1 %exitcond.not, label %for.end12.loopexit, label %for.body3, !llvm.loop !25

for.end12.loopexit:                               ; preds = %for.body3
  %phi.cast = fpext float %add to double
  br label %for.end12

for.end12:                                        ; preds = %for.end12.loopexit, %for.end
  %ave.0.lcssa = phi double [ 0.000000e+00, %for.end ], [ %phi.cast, %for.end12.loopexit ]
  %13 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.5, double noundef %ave.0.lcssa) #12
  %14 = load ptr, ptr @stderr, align 8, !tbaa !19
  %call15 = tail call i32 @fflush(ptr noundef %14)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #10

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind readonly "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nofree noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 192}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = !{!8, !8, i64 0}
!19 = !{!11, !11, i64 0}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = !{!6, !7, i64 176}
!25 = distinct !{!25, !16, !17}
