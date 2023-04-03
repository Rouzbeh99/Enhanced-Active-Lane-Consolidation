; ModuleID = 'vbrquantize.c'
source_filename = "vbrquantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@pow43 = external local_unnamed_addr global [8208 x double], align 16
@pretab = external local_unnamed_addr global [21 x i32], align 16
@masking_lower = external local_unnamed_addr global float, align 4
@convert_mdct = external local_unnamed_addr global i32, align 4
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @calc_sfb_ave_noise(ptr nocapture noundef readonly %xr, ptr nocapture noundef readonly %xr34, i32 noundef %stride, i32 noundef %bw, double noundef %sfpow) local_unnamed_addr #0 {
entry:
  %mul = mul nsw i32 %bw, %stride
  %cmp50 = icmp sgt i32 %mul, 0
  br i1 %cmp50, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %0 = tail call fast double @llvm.pow.f64(double %sfpow, double -7.500000e-01)
  %1 = sext i32 %stride to i64
  %2 = zext i32 %mul to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %xfsf.051 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add23, %for.inc ]
  %arrayidx = getelementptr inbounds double, ptr %xr34, i64 %indvars.iv
  %3 = load double, ptr %arrayidx, align 8, !tbaa !5
  %div = fmul fast double %3, %0
  %4 = tail call fast double @llvm.floor.f64(double %div)
  %conv = fptosi double %4 to i32
  %cmp1 = icmp sgt i32 %conv, 8206
  br i1 %cmp1, label %cleanup29, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx4 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv
  %5 = load double, ptr %arrayidx4, align 8, !tbaa !5
  %6 = tail call fast double @llvm.fabs.f64(double %5)
  %idxprom5 = sext i32 %conv to i64
  %arrayidx6 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom5
  %7 = load double, ptr %arrayidx6, align 8, !tbaa !5
  %mul7 = fmul fast double %7, %sfpow
  %sub = fsub fast double %6, %mul7
  %cmp8.not = icmp eq i32 %conv, 8206
  br i1 %cmp8.not, label %for.inc, label %if.then10

if.then10:                                        ; preds = %if.end
  %add = add nsw i32 %conv, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom13
  %8 = load double, ptr %arrayidx14, align 8, !tbaa !5
  %mul15 = fmul fast double %8, %sfpow
  %sub16 = fsub fast double %6, %mul15
  %9 = tail call fast double @llvm.fabs.f64(double %sub16)
  %10 = tail call fast double @llvm.fabs.f64(double %sub)
  %cmp17 = fcmp fast olt double %9, %10
  br i1 %cmp17, label %if.then19, label %for.inc

if.then19:                                        ; preds = %if.then10
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then19, %if.end
  %temp.0 = phi double [ %sub16, %if.then19 ], [ %sub, %if.then10 ], [ %sub, %if.end ]
  %mul22 = fmul fast double %temp.0, %temp.0
  %add23 = fadd fast double %mul22, %xfsf.051
  %indvars.iv.next = add i64 %indvars.iv, %1
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.inc, %entry
  %xfsf.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.inc ]
  %conv27 = sitofp i32 %bw to double
  %div28 = fdiv fast double %xfsf.0.lcssa, %conv27
  br label %cleanup29

cleanup29:                                        ; preds = %for.body, %for.end
  %retval.2 = phi double [ %div28, %for.end ], [ -1.000000e+00, %for.body ]
  ret double %retval.2
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @find_scalefac(ptr nocapture noundef readonly %xr, ptr nocapture noundef readonly %xr34, i32 noundef %stride, i32 %sfb, double noundef %l3_xmin, i32 noundef %bw) local_unnamed_addr #0 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.0102 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %delsf.098 = phi double [ 3.200000e+01, %entry ], [ %div, %for.inc ]
  %sf_ok.097 = phi double [ 1.000000e+04, %entry ], [ %sf_ok.2, %for.inc ]
  %sf.096 = phi double [ -2.050000e+01, %entry ], [ %sf.1, %for.inc ]
  %div = fmul fast double %delsf.098, 5.000000e-01
  %exp294 = tail call fast double @llvm.exp2.f64(double %sf.096)
  %call = tail call fast double @calc_sfb_ave_noise(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %bw, double noundef %exp294)
  %cmp2 = fcmp fast olt double %call, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = fadd fast double %div, %sf.096
  br label %for.inc

if.else:                                          ; preds = %for.body
  %cmp4 = fcmp fast oeq double %sf_ok.097, 1.000000e+04
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  %sf_ok.1 = phi double [ %sf.096, %if.then5 ], [ %sf_ok.097, %if.else ]
  %cmp9 = fcmp fast ogt double %call, %l3_xmin
  br i1 %cmp9, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end
  %sub = fsub fast double %sf.096, %div
  br label %for.inc

if.else12:                                        ; preds = %if.end
  %add13 = fadd fast double %div, %sf.096
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else12, %if.then10
  %sf.1 = phi double [ %add, %if.then ], [ %sub, %if.then10 ], [ %add13, %if.else12 ]
  %sf_ok.2 = phi double [ %sf_ok.097, %if.then ], [ %sf_ok.1, %if.then10 ], [ %sf.096, %if.else12 ]
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !12

for.end:                                          ; preds = %for.inc
  %add17 = fadd fast double %sf_ok.2, 7.500000e-01
  %add19 = fadd fast double %sf_ok.2, 1.000000e-02
  %cmp20103 = fcmp fast ogt double %add17, %add19
  br i1 %cmp20103, label %while.body.lr.ph, label %cleanup

while.body.lr.ph:                                 ; preds = %for.end
  %0 = fadd fast double %sf_ok.2, %delsf.098
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end39
  %sf.2104 = phi double [ %add17, %while.body.lr.ph ], [ %sub40, %if.end39 ]
  %sub22 = fsub fast double %sf.2104, %0
  %1 = tail call fast double @llvm.fabs.f64(double %sub22)
  %cmp23 = fcmp fast olt double %1, 1.000000e-02
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %while.body
  %sub25 = fadd fast double %sf.2104, -2.500000e-01
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %while.body
  %sf.3 = phi double [ %sub25, %if.then24 ], [ %sf.2104, %while.body ]
  %exp2 = tail call fast double @llvm.exp2.f64(double %sf.3)
  %call33 = tail call fast double @calc_sfb_ave_noise(ptr noundef %xr, ptr noundef %xr34, i32 noundef %stride, i32 noundef %bw, double noundef %exp2)
  %cmp34 = fcmp fast ule double %call33, 0.000000e+00
  %cmp36 = fcmp fast ugt double %call33, %l3_xmin
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp36
  br i1 %or.cond, label %if.end39, label %cleanup

if.end39:                                         ; preds = %if.end26
  %sub40 = fadd fast double %sf.3, -2.500000e-01
  %cmp20 = fcmp fast ogt double %sub40, %add19
  br i1 %cmp20, label %while.body, label %cleanup, !llvm.loop !13

cleanup:                                          ; preds = %if.end26, %if.end39, %for.end
  %retval.0 = phi double [ %sf_ok.2, %for.end ], [ %sf_ok.2, %if.end39 ], [ %sf.3, %if.end26 ]
  ret double %retval.0
}

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local double @compute_scalefacs_short(ptr nocapture noundef readonly %vbrsf, ptr nocapture noundef readonly %cod_info, ptr nocapture noundef writeonly %scalefac) local_unnamed_addr #3 {
entry:
  %sf = alloca [12 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %sf) #10
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %sf, ptr noundef nonnull align 8 dereferenceable(288) %vbrsf, i64 288, i1 false)
  %conv = sitofp i32 %cond to double
  %1 = fdiv fast double 1.000000e+00, %conv
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc32
  %indvars.iv55 = phi i64 [ 0, %entry ], [ %indvars.iv.next56, %for.inc32 ]
  %maxover.052 = phi double [ 0.000000e+00, %entry ], [ %maxover.2, %for.inc32 ]
  %cmp13 = icmp ult i64 %indvars.iv55, 6
  %. = select i1 %cmp13, double 1.500000e+01, double 7.000000e+00
  %2 = fmul fast double %., %1
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc ]
  %maxover.150 = phi double [ %maxover.052, %for.cond2.preheader ], [ %maxover.2, %for.inc ]
  %arrayidx6 = getelementptr inbounds [12 x [3 x double]], ptr %sf, i64 0, i64 %indvars.iv55, i64 %indvars.iv
  %3 = load double, ptr %arrayidx6, align 8, !tbaa !5
  %4 = fmul fast double %3, %conv
  %5 = fsub fast double 0x3FE800D1B71758E2, %4
  %6 = tail call fast double @llvm.floor.f64(double %5)
  %conv8 = fptosi double %6 to i32
  %arrayidx12 = getelementptr inbounds [3 x i32], ptr %scalefac, i64 %indvars.iv55, i64 %indvars.iv
  store i32 %conv8, ptr %arrayidx12, align 4, !tbaa !18
  %add22 = fadd fast double %3, %2
  %cmp23 = fcmp fast ogt double %add22, %maxover.150
  br i1 %cmp23, label %if.then25, label %for.inc

if.then25:                                        ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then25
  %maxover.2 = phi double [ %add22, %if.then25 ], [ %maxover.150, %for.body4 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc32, label %for.body4, !llvm.loop !19

for.inc32:                                        ; preds = %for.inc
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next56, 12
  br i1 %exitcond58.not, label %for.end34, label %for.cond2.preheader, !llvm.loop !20

for.end34:                                        ; preds = %for.inc32
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %sf) #10
  ret double %maxover.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local double @compute_scalefacs_long(ptr nocapture noundef readonly %vbrsf, ptr nocapture noundef %cod_info, ptr nocapture noundef writeonly %scalefac) local_unnamed_addr #5 {
entry:
  %sf = alloca [21 x double], align 16
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %sf) #10
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4, !tbaa !14
  %cmp = icmp eq i32 %0, 0
  %cond = select i1 %cmp, i32 2, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %sf, ptr noundef nonnull align 8 dereferenceable(168) %vbrsf, i64 168, i1 false)
  %preflag = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 12
  store i32 0, ptr %preflag, align 8, !tbaa !21
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ 11, %entry ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %indvars.iv
  %1 = load double, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx3, align 4, !tbaa !18
  %div = sdiv i32 %2, %cond
  %conv = sitofp i32 %div to double
  %add = fadd fast double %1, %conv
  %cmp4 = fcmp fast ogt double %add, 0.000000e+00
  br i1 %cmp4, label %if.end24, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond.not, label %if.then8, label %for.body, !llvm.loop !22

if.then8:                                         ; preds = %for.inc
  store i32 1, ptr %preflag, align 8, !tbaa !21
  br label %for.body13

for.body13:                                       ; preds = %if.then8, %for.body13
  %indvars.iv90 = phi i64 [ 11, %if.then8 ], [ %indvars.iv.next91, %for.body13 ]
  %arrayidx15 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %indvars.iv90
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !18
  %div16 = sdiv i32 %3, %cond
  %conv17 = sitofp i32 %div16 to double
  %arrayidx19 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %indvars.iv90
  %4 = load double, ptr %arrayidx19, align 8, !tbaa !5
  %add20 = fadd fast double %4, %conv17
  store double %add20, ptr %arrayidx19, align 8, !tbaa !5
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 21
  br i1 %exitcond93.not, label %if.end24, label %for.body13, !llvm.loop !23

if.end24:                                         ; preds = %for.body, %for.body13
  %conv31 = sitofp i32 %cond to double
  %5 = fdiv fast double 1.000000e+00, %conv31
  br label %for.body28

for.body28:                                       ; preds = %if.end24, %for.inc55
  %indvars.iv94 = phi i64 [ 0, %if.end24 ], [ %indvars.iv.next95, %for.inc55 ]
  %maxover.086 = phi double [ 0.000000e+00, %if.end24 ], [ %maxover.1, %for.inc55 ]
  %arrayidx30 = getelementptr inbounds [21 x double], ptr %sf, i64 0, i64 %indvars.iv94
  %6 = load double, ptr %arrayidx30, align 8, !tbaa !5
  %7 = fmul fast double %6, %conv31
  %8 = fsub fast double 0x3FE800D1B71758E2, %7
  %9 = tail call fast double @llvm.floor.f64(double %8)
  %conv34 = fptosi double %9 to i32
  %arrayidx36 = getelementptr inbounds i32, ptr %scalefac, i64 %indvars.iv94
  store i32 %conv34, ptr %arrayidx36, align 4, !tbaa !18
  %cmp37 = icmp ult i64 %indvars.iv94, 11
  %. = select i1 %cmp37, double 1.500000e+01, double 7.000000e+00
  %10 = fmul fast double %., %5
  %add47 = fadd fast double %6, %10
  %cmp48 = fcmp fast ogt double %add47, %maxover.086
  br i1 %cmp48, label %if.then50, label %for.inc55

if.then50:                                        ; preds = %for.body28
  br label %for.inc55

for.inc55:                                        ; preds = %for.body28, %if.then50
  %maxover.1 = phi double [ %add47, %if.then50 ], [ %maxover.086, %for.body28 ]
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next95, 21
  br i1 %exitcond97.not, label %for.end57, label %for.body28, !llvm.loop !24

for.end57:                                        ; preds = %for.inc55
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %sf) #10
  ret double %maxover.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VBR_iteration_loop_new(ptr noundef %gfp, ptr nocapture noundef readnone %pe, ptr nocapture noundef readnone %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr nocapture noundef writeonly %scalefac) local_unnamed_addr #6 {
entry:
  %l3_xmin = alloca [2 x [2 x %struct.III_psy_xmin]], align 16
  %vbrsf = alloca %struct.III_psy_xmin, align 8
  %xr34 = alloca [576 x double], align 16
  call void @llvm.lifetime.start.p0(i64 1952, ptr nonnull %l3_xmin) #10
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %vbrsf) #10
  tail call void @iteration_init(ptr noundef %gfp, ptr noundef %l3_side, ptr noundef %l3_enc) #10
  store float 1.000000e+00, ptr @masking_lower, align 4, !tbaa !25
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %0 = load i32, ptr %mode_gr, align 8, !tbaa !27
  %cmp367 = icmp sgt i32 %0, 0
  br i1 %cmp367, label %for.body.lr.ph, label %for.end250

for.body.lr.ph:                                   ; preds = %entry
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %s177 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc248
  %indvars.iv401 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next402, %for.inc248 ]
  %1 = load i32, ptr @convert_mdct, align 4, !tbaa !18
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv401
  call void @ms_convert(ptr noundef %arrayidx, ptr noundef %arrayidx) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load i32, ptr %stereo, align 4, !tbaa !30
  %cmp7365 = icmp sgt i32 %2, 0
  br i1 %cmp7365, label %for.body9.lr.ph, label %for.inc248

for.body9.lr.ph:                                  ; preds = %if.end
  %arrayidx12 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv401
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %if.end244
  %indvars.iv398 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next399, %if.end244 ]
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %xr34) #10
  %arrayidx15 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx12, i64 0, i64 %indvars.iv398
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx15, i64 0, i32 6
  %3 = load i32, ptr %block_type, align 8, !tbaa !31
  br label %for.body21

for.body21:                                       ; preds = %for.body9, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body9 ], [ %indvars.iv.next, %for.body21 ]
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv401, i64 %indvars.iv398, i64 %indvars.iv
  %4 = load double, ptr %arrayidx27, align 8, !tbaa !5
  %5 = call fast double @llvm.fabs.f64(double %4)
  %6 = call fast double @llvm.sqrt.f64(double %5)
  %mul28 = fmul fast double %6, %5
  %7 = call fast double @llvm.sqrt.f64(double %mul28)
  %arrayidx30 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %indvars.iv
  store double %7, ptr %arrayidx30, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %for.end, label %for.body21, !llvm.loop !32

for.end:                                          ; preds = %for.body21
  %cmp16 = icmp eq i32 %3, 2
  %arrayidx34 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv401, i64 %indvars.iv398
  %arrayidx39 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %ratio, i64 %indvars.iv401, i64 %indvars.iv398
  %arrayidx43 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %indvars.iv401, i64 %indvars.iv398
  %call = call i32 @calc_xmin(ptr noundef %gfp, ptr noundef %arrayidx34, ptr noundef %arrayidx39, ptr noundef nonnull %arrayidx15, ptr noundef nonnull %arrayidx43) #10
  %8 = load float, ptr @masking_lower, align 4, !tbaa !25
  %conv71 = fpext float %8 to double
  br i1 %cmp16, label %for.cond46.preheader, label %for.cond107.preheader

for.cond107.preheader:                            ; preds = %for.end
  %.pre = load i32, ptr @scalefac_band, align 4, !tbaa !18
  br label %for.body110

for.cond46.preheader:                             ; preds = %for.end
  %.pre404 = load i32, ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 0), align 4, !tbaa !18
  br label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond46.preheader, %for.inc104
  %9 = phi i32 [ %.pre404, %for.cond46.preheader ], [ %10, %for.inc104 ]
  %indvars.iv382 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next383, %for.inc104 ]
  %vbrmax.0361 = phi double [ 0.000000e+00, %for.cond46.preheader ], [ %vbrmax.2, %for.inc104 ]
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1
  %arrayidx58 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv.next383
  %10 = load i32, ptr %arrayidx58, align 4, !tbaa !18
  %sub = sub nsw i32 %10, %9
  %mul63 = mul nsw i32 %9, 3
  %11 = sext i32 %mul63 to i64
  br label %for.body53

for.body53:                                       ; preds = %for.cond50.preheader, %for.inc101
  %indvars.iv377 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next378, %for.inc101 ]
  %vbrmax.1359 = phi double [ %vbrmax.0361, %for.cond50.preheader ], [ %vbrmax.2, %for.inc101 ]
  %12 = add nsw i64 %indvars.iv377, %11
  %arrayidx66 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv401, i64 %indvars.iv398, i64 %12
  %arrayidx70 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %12
  %arrayidx79 = getelementptr inbounds [2 x [2 x %struct.III_psy_xmin]], ptr %l3_xmin, i64 0, i64 %indvars.iv401, i64 %indvars.iv398, i32 1, i64 %indvars.iv382, i64 %indvars.iv377
  %13 = load double, ptr %arrayidx79, align 8, !tbaa !5
  %mul80 = fmul fast double %13, %conv71
  %call81 = call fast double @find_scalefac(ptr noundef %arrayidx66, ptr noundef nonnull %arrayidx70, i32 noundef 3, i32 undef, double noundef %mul80, i32 noundef %sub)
  %arrayidx86 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %indvars.iv382, i64 %indvars.iv377
  store double %call81, ptr %arrayidx86, align 8, !tbaa !5
  %cmp92 = fcmp fast ogt double %call81, %vbrmax.1359
  br i1 %cmp92, label %if.then94, label %for.inc101

if.then94:                                        ; preds = %for.body53
  br label %for.inc101

for.inc101:                                       ; preds = %for.body53, %if.then94
  %vbrmax.2 = phi double [ %call81, %if.then94 ], [ %vbrmax.1359, %for.body53 ]
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1
  %exitcond381.not = icmp eq i64 %indvars.iv.next378, 3
  br i1 %exitcond381.not, label %for.inc104, label %for.body53, !llvm.loop !33

for.inc104:                                       ; preds = %for.inc101
  %exitcond385.not = icmp eq i64 %indvars.iv.next383, 12
  br i1 %exitcond385.not, label %if.end150, label %for.cond50.preheader, !llvm.loop !34

for.body110:                                      ; preds = %for.cond107.preheader, %for.inc147
  %14 = phi i32 [ %.pre, %for.cond107.preheader ], [ %15, %for.inc147 ]
  %indvars.iv373 = phi i64 [ 0, %for.cond107.preheader ], [ %indvars.iv.next374, %for.inc147 ]
  %vbrmax.3357 = phi double [ 0.000000e+00, %for.cond107.preheader ], [ %vbrmax.4, %for.inc147 ]
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1
  %arrayidx115 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next374
  %15 = load i32, ptr %arrayidx115, align 4, !tbaa !18
  %sub116 = sub nsw i32 %15, %14
  %idxprom121 = sext i32 %14 to i64
  %arrayidx122 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv401, i64 %indvars.iv398, i64 %idxprom121
  %arrayidx124 = getelementptr inbounds [576 x double], ptr %xr34, i64 0, i64 %idxprom121
  %arrayidx131 = getelementptr inbounds [22 x double], ptr %arrayidx43, i64 0, i64 %indvars.iv373
  %16 = load double, ptr %arrayidx131, align 8, !tbaa !5
  %mul132 = fmul fast double %16, %conv71
  %call133 = call fast double @find_scalefac(ptr noundef %arrayidx122, ptr noundef nonnull %arrayidx124, i32 noundef 1, i32 undef, double noundef %mul132, i32 noundef %sub116)
  %arrayidx136 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %indvars.iv373
  store double %call133, ptr %arrayidx136, align 8, !tbaa !5
  %cmp140 = fcmp fast ogt double %call133, %vbrmax.3357
  br i1 %cmp140, label %if.then142, label %for.inc147

if.then142:                                       ; preds = %for.body110
  br label %for.inc147

for.inc147:                                       ; preds = %for.body110, %if.then142
  %vbrmax.4 = phi double [ %call133, %if.then142 ], [ %vbrmax.3357, %for.body110 ]
  %exitcond376.not = icmp eq i64 %indvars.iv.next374, 21
  br i1 %exitcond376.not, label %if.end150, label %for.body110, !llvm.loop !35

if.end150:                                        ; preds = %for.inc147, %for.inc104
  %vbrmax.5 = phi double [ %vbrmax.2, %for.inc104 ], [ %vbrmax.4, %for.inc147 ]
  %mul151 = fmul fast double %vbrmax.5, 4.000000e+00
  %add153 = fadd fast double %mul151, 2.105000e+02
  %17 = call fast double @llvm.floor.f64(double %add153)
  %conv154 = fptoui double %17 to i32
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %arrayidx15, i64 0, i32 3
  store i32 %conv154, ptr %global_gain, align 4, !tbaa !36
  br i1 %cmp16, label %for.cond161.preheader, label %for.body208

for.cond161.preheader:                            ; preds = %if.end150, %for.inc174
  %indvars.iv394 = phi i64 [ %indvars.iv.next395, %for.inc174 ], [ 0, %if.end150 ]
  br label %for.body164

for.body164:                                      ; preds = %for.cond161.preheader, %for.body164
  %indvars.iv390 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next391, %for.body164 ]
  %arrayidx169 = getelementptr inbounds %struct.III_psy_xmin, ptr %vbrsf, i64 0, i32 1, i64 %indvars.iv394, i64 %indvars.iv390
  %18 = load double, ptr %arrayidx169, align 8, !tbaa !5
  %sub170 = fsub fast double %18, %vbrmax.5
  store double %sub170, ptr %arrayidx169, align 8, !tbaa !5
  %indvars.iv.next391 = add nuw nsw i64 %indvars.iv390, 1
  %exitcond393.not = icmp eq i64 %indvars.iv.next391, 3
  br i1 %exitcond393.not, label %for.inc174, label %for.body164, !llvm.loop !37

for.inc174:                                       ; preds = %for.body164
  %indvars.iv.next395 = add nuw nsw i64 %indvars.iv394, 1
  %exitcond397.not = icmp eq i64 %indvars.iv.next395, 12
  br i1 %exitcond397.not, label %for.end176, label %for.cond161.preheader, !llvm.loop !38

for.end176:                                       ; preds = %for.inc174
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %arrayidx15, i64 0, i32 13
  store i32 0, ptr %scalefac_scale, align 4, !tbaa !14
  %s183 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv401, i64 %indvars.iv398, i32 1
  %call185 = call fast double @compute_scalefacs_short(ptr noundef nonnull %s177, ptr noundef nonnull %arrayidx15, ptr noundef nonnull %s183)
  %cmp186 = fcmp fast ogt double %call185, 0.000000e+00
  br i1 %cmp186, label %if.then188, label %if.end244

if.then188:                                       ; preds = %for.end176
  store i32 1, ptr %scalefac_scale, align 4, !tbaa !14
  %call198 = call fast double @compute_scalefacs_short(ptr noundef nonnull %s177, ptr noundef nonnull %arrayidx15, ptr noundef nonnull %s183)
  %cmp199 = fcmp fast ogt double %call198, 0.000000e+00
  br i1 %cmp199, label %if.then201, label %if.end244

if.then201:                                       ; preds = %if.then188
  call void @exit(i32 noundef 32) #11
  unreachable

for.body208:                                      ; preds = %if.end150, %for.body208
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %for.body208 ], [ 0, %if.end150 ]
  %arrayidx211 = getelementptr inbounds [22 x double], ptr %vbrsf, i64 0, i64 %indvars.iv386
  %19 = load double, ptr %arrayidx211, align 8, !tbaa !5
  %sub212 = fsub fast double %19, %vbrmax.5
  store double %sub212, ptr %arrayidx211, align 8, !tbaa !5
  %indvars.iv.next387 = add nuw nsw i64 %indvars.iv386, 1
  %exitcond389.not = icmp eq i64 %indvars.iv.next387, 21
  br i1 %exitcond389.not, label %for.end215, label %for.body208, !llvm.loop !39

for.end215:                                       ; preds = %for.body208
  %scalefac_scale216 = getelementptr inbounds %struct.gr_info, ptr %arrayidx15, i64 0, i32 13
  store i32 0, ptr %scalefac_scale216, align 4, !tbaa !14
  %arrayidx222 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv401, i64 %indvars.iv398
  %call225 = call fast double @compute_scalefacs_long(ptr noundef nonnull %vbrsf, ptr noundef nonnull %arrayidx15, ptr noundef %arrayidx222)
  %cmp226 = fcmp fast ogt double %call225, 0.000000e+00
  br i1 %cmp226, label %if.then228, label %if.end244

if.then228:                                       ; preds = %for.end215
  store i32 1, ptr %scalefac_scale216, align 4, !tbaa !14
  %call238 = call fast double @compute_scalefacs_long(ptr noundef nonnull %vbrsf, ptr noundef nonnull %arrayidx15, ptr noundef %arrayidx222)
  %cmp239 = fcmp fast ogt double %call238, 0.000000e+00
  br i1 %cmp239, label %if.then241, label %if.end244

if.then241:                                       ; preds = %if.then228
  call void @exit(i32 noundef 32) #11
  unreachable

if.end244:                                        ; preds = %for.end215, %if.then228, %for.end176, %if.then188
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %xr34) #10
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1
  %20 = load i32, ptr %stereo, align 4, !tbaa !30
  %21 = sext i32 %20 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next399, %21
  br i1 %cmp7, label %for.body9, label %for.inc248, !llvm.loop !40

for.inc248:                                       ; preds = %if.end244, %if.end
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1
  %22 = load i32, ptr %mode_gr, align 8, !tbaa !27
  %23 = sext i32 %22 to i64
  %cmp = icmp slt i64 %indvars.iv.next402, %23
  br i1 %cmp, label %for.body, label %for.end250, !llvm.loop !41

for.end250:                                       ; preds = %for.inc248, %entry
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %vbrsf) #10
  call void @llvm.lifetime.end.p0(i64 1952, ptr nonnull %l3_xmin) #10
  ret void
}

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #2

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #9

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !16, i64 68}
!15 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !7, i64 32, !7, i64 44, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !17, i64 96, !7, i64 104}
!16 = !{!"int", !7, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!16, !16, i64 0}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!15, !16, i64 64}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !7, i64 0}
!27 = !{!28, !16, i64 200}
!28 = !{!"", !29, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !7, i64 120, !16, i64 124, !17, i64 128, !17, i64 136, !16, i64 144, !16, i64 148, !26, i64 152, !16, i64 156, !16, i64 160, !16, i64 164, !29, i64 168, !29, i64 176, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !26, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !26, i64 232, !26, i64 236, !26, i64 240, !26, i64 244, !16, i64 248, !16, i64 252, !16, i64 256, !16, i64 260, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276}
!29 = !{!"long", !7, i64 0}
!30 = !{!28, !16, i64 204}
!31 = !{!15, !16, i64 24}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = !{!15, !16, i64 12}
!37 = distinct !{!37, !10, !11}
!38 = distinct !{!38, !10, !11}
!39 = distinct !{!39, !10, !11}
!40 = distinct !{!40, !10, !11}
!41 = distinct !{!41, !10, !11}
