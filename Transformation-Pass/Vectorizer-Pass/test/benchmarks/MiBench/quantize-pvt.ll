; ModuleID = 'quantize-pvt.c'
source_filename = "quantize-pvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@masking_lower = dso_local local_unnamed_addr global float 1.000000e+00, align 4
@nr_of_sfb_block = dso_local global [6 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 5, i32 5], [4 x i32] [i32 9, i32 9, i32 9, i32 9], [4 x i32] [i32 6, i32 9, i32 9, i32 9]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 5, i32 7, i32 3], [4 x i32] [i32 9, i32 9, i32 12, i32 6], [4 x i32] [i32 6, i32 9, i32 12, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 11, i32 10, i32 0, i32 0], [4 x i32] [i32 18, i32 18, i32 0, i32 0], [4 x i32] [i32 15, i32 18, i32 0, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 12, i32 12, i32 12, i32 0], [4 x i32] [i32 6, i32 15, i32 12, i32 0]], [3 x [4 x i32]] [[4 x i32] [i32 6, i32 6, i32 6, i32 3], [4 x i32] [i32 12, i32 9, i32 9, i32 6], [4 x i32] [i32 6, i32 12, i32 9, i32 6]], [3 x [4 x i32]] [[4 x i32] [i32 8, i32 8, i32 5, i32 0], [4 x i32] [i32 15, i32 12, i32 9, i32 0], [4 x i32] [i32 6, i32 18, i32 9, i32 0]]], align 16
@pretab = dso_local local_unnamed_addr global [21 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 2], align 16
@sfBandIndex = dso_local local_unnamed_addr global [6 x %struct.scalefac_struct] [%struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 24, i32 32, i32 42, i32 56, i32 74, i32 100, i32 132, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 114, i32 136, i32 162, i32 194, i32 232, i32 278, i32 332, i32 394, i32 464, i32 540, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 136, i32 180, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 6, i32 12, i32 18, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 80, i32 96, i32 116, i32 140, i32 168, i32 200, i32 238, i32 284, i32 336, i32 396, i32 464, i32 522, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 18, i32 26, i32 36, i32 48, i32 62, i32 80, i32 104, i32 134, i32 174, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 52, i32 62, i32 74, i32 90, i32 110, i32 134, i32 162, i32 196, i32 238, i32 288, i32 342, i32 418, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 40, i32 52, i32 66, i32 84, i32 106, i32 136, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 42, i32 50, i32 60, i32 72, i32 88, i32 106, i32 128, i32 156, i32 190, i32 230, i32 276, i32 330, i32 384, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 28, i32 38, i32 50, i32 64, i32 80, i32 100, i32 126, i32 192] }, %struct.scalefac_struct { [23 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 30, i32 36, i32 44, i32 54, i32 66, i32 82, i32 102, i32 126, i32 156, i32 194, i32 240, i32 296, i32 364, i32 448, i32 550, i32 576], [14 x i32] [i32 0, i32 4, i32 8, i32 12, i32 16, i32 22, i32 30, i32 42, i32 58, i32 78, i32 104, i32 138, i32 180, i32 192] }], align 16
@scalefac_band = dso_local local_unnamed_addr global %struct.scalefac_struct zeroinitializer, align 4
@ATH_l = internal global [21 x double] zeroinitializer, align 16
@ATH_s = internal global [21 x double] zeroinitializer, align 16
@pow43 = dso_local local_unnamed_addr global [8208 x double] zeroinitializer, align 16
@adj43 = internal unnamed_addr global [8208 x double] zeroinitializer, align 16
@ipow20 = dso_local local_unnamed_addr global [256 x double] zeroinitializer, align 16
@pow20 = dso_local local_unnamed_addr global [256 x double] zeroinitializer, align 16
@convert_mdct = dso_local local_unnamed_addr global i32 0, align 4
@reduce_sidechannel = dso_local local_unnamed_addr global i32 0, align 4
@scale_bitcount.slen1 = internal unnamed_addr constant [16 x i32] [i32 1, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scale_bitcount.slen2 = internal unnamed_addr constant [16 x i32] [i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scale_bitcount.slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 18, i32 36, i32 54, i32 54, i32 36, i32 54, i32 72, i32 54, i32 72, i32 90, i32 72, i32 90, i32 108, i32 108, i32 126], align 16
@scale_bitcount.slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 10, i32 20, i32 30, i32 33, i32 21, i32 31, i32 41, i32 32, i32 42, i32 52, i32 43, i32 53, i32 63, i32 64, i32 74], align 16
@max_range_sfac_tab = internal unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 15, i32 15, i32 7, i32 7], [4 x i32] [i32 15, i32 15, i32 7, i32 0], [4 x i32] [i32 7, i32 3, i32 0, i32 0], [4 x i32] [i32 15, i32 31, i32 31, i32 0], [4 x i32] [i32 7, i32 7, i32 7, i32 0], [4 x i32] [i32 3, i32 3, i32 0, i32 0]], align 16
@scale_bitcount_lsf.log2tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], align 16
@bin_search_StepSize2.CurrentStep = internal unnamed_addr global i32 4, align 4
@ATH_mdct_long = dso_local local_unnamed_addr global [576 x double] zeroinitializer, align 16
@ATH_mdct_short = dso_local local_unnamed_addr global [192 x double] zeroinitializer, align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @iteration_init(ptr nocapture noundef readonly %gfp, ptr nocapture noundef %l3_side, ptr nocapture noundef readnone %l3_enc) local_unnamed_addr #0 {
entry:
  %resvDrain = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 2
  store i32 0, ptr %resvDrain, align 8, !tbaa !5
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8, !tbaa !10
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %samplerate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 51
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %1 = load i32, ptr %samplerate_index, align 8, !tbaa !15
  %2 = load i32, ptr %version, align 8, !tbaa !16
  %mul = mul nsw i32 %2, 3
  %add = add nsw i32 %mul, %1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr %arrayidx, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx3, align 4, !tbaa !17
  %arrayidx5 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv
  store i32 %3, ptr %arrayidx5, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %for.body8, label %for.body, !llvm.loop !18

for.body8:                                        ; preds = %for.body, %for.body8
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %for.body8 ], [ 0, %for.body ]
  %4 = load i32, ptr %samplerate_index, align 8, !tbaa !15
  %5 = load i32, ptr %version, align 8, !tbaa !16
  %mul11 = mul nsw i32 %5, 3
  %add12 = add nsw i32 %mul11, %4
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx16 = getelementptr inbounds [6 x %struct.scalefac_struct], ptr @sfBandIndex, i64 0, i64 %idxprom13, i32 1, i64 %indvars.iv209
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !17
  %arrayidx18 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv209
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !17
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %exitcond212.not = icmp eq i64 %indvars.iv.next210, 14
  br i1 %exitcond212.not, label %for.end21, label %for.body8, !llvm.loop !21

for.end21:                                        ; preds = %for.body8
  store i32 0, ptr %l3_side, align 8, !tbaa !22
  tail call void @compute_ath(ptr noundef nonnull %gfp, ptr noundef nonnull @ATH_l, ptr noundef nonnull @ATH_s)
  br label %for.body24

for.body24:                                       ; preds = %for.end21, %for.body24
  %indvars.iv213 = phi i64 [ 0, %for.end21 ], [ %indvars.iv.next214, %for.body24 ]
  %7 = trunc i64 %indvars.iv213 to i32
  %conv = sitofp i32 %7 to double
  %8 = tail call fast double @llvm.pow.f64(double %conv, double 0x3FF5555555555555)
  %arrayidx26 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %indvars.iv213
  store double %8, ptr %arrayidx26, align 8, !tbaa !23
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  %exitcond216.not = icmp eq i64 %indvars.iv.next214, 8208
  br i1 %exitcond216.not, label %for.body33.preheader, label %for.body24, !llvm.loop !25

for.body33.preheader:                             ; preds = %for.body24
  %.pre = load double, ptr @pow43, align 16, !tbaa !23
  br label %for.body33

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %9 = phi double [ %.pre, %for.body33.preheader ], [ %11, %for.body33 ]
  %indvars.iv217 = phi i64 [ 0, %for.body33.preheader ], [ %indvars.iv.next218, %for.body33 ]
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1
  %10 = trunc i64 %indvars.iv.next218 to i32
  %conv35 = sitofp i32 %10 to double
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %indvars.iv.next218
  %11 = load double, ptr %arrayidx40, align 8, !tbaa !23
  %add41 = fadd fast double %11, %9
  %mul42 = fmul fast double %add41, 5.000000e-01
  %12 = tail call fast double @llvm.pow.f64(double %mul42, double 7.500000e-01)
  %sub = fsub fast double %conv35, %12
  %arrayidx44 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %indvars.iv217
  store double %sub, ptr %arrayidx44, align 8, !tbaa !23
  %exitcond220.not = icmp eq i64 %indvars.iv.next218, 8207
  br i1 %exitcond220.not, label %for.end47, label %for.body33, !llvm.loop !26

for.end47:                                        ; preds = %for.body33
  store double 5.000000e-01, ptr getelementptr inbounds ([8208 x double], ptr @adj43, i64 0, i64 8207), align 8, !tbaa !23
  br label %for.body72

for.body72:                                       ; preds = %for.end47, %for.body72
  %indvars.iv221 = phi i64 [ 0, %for.end47 ], [ %indvars.iv.next222, %for.body72 ]
  %13 = trunc i64 %indvars.iv221 to i32
  %14 = add i32 %13, -210
  %conv74 = sitofp i32 %14 to double
  %mul75 = fmul fast double %conv74, -1.875000e-01
  %exp2 = tail call fast double @llvm.exp2.f64(double %mul75)
  %arrayidx77 = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %indvars.iv221
  store double %exp2, ptr %arrayidx77, align 8, !tbaa !23
  %mul80 = fmul fast double %conv74, 2.500000e-01
  %exp2193 = tail call fast double @llvm.exp2.f64(double %mul80)
  %arrayidx82 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %indvars.iv221
  store double %exp2193, ptr %arrayidx82, align 8, !tbaa !23
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, 256
  br i1 %exitcond225.not, label %if.end, label %for.body72, !llvm.loop !27

if.end:                                           ; preds = %for.body72, %entry
  store i32 0, ptr @convert_mdct, align 4, !tbaa !17
  store i32 0, ptr @reduce_sidechannel, align 4, !tbaa !17
  %mode_ext = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 52
  %15 = load i32, ptr %mode_ext, align 4, !tbaa !28
  %cmp86 = icmp eq i32 %15, 2
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %if.end
  store i32 1, ptr @convert_mdct, align 4, !tbaa !17
  store i32 1, ptr @reduce_sidechannel, align 4, !tbaa !17
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %16 = load i32, ptr %mode_gr, align 8, !tbaa !29
  %cmp91201 = icmp sgt i32 %16, 0
  br i1 %cmp91201, label %for.cond94.preheader.lr.ph, label %for.cond116.preheader

for.cond94.preheader.lr.ph:                       ; preds = %if.end89
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %17 = load i32, ptr %stereo, align 4, !tbaa !30
  %cmp95199 = icmp sgt i32 %17, 0
  br i1 %cmp95199, label %for.cond94.preheader.us.preheader, label %for.cond116.preheader

for.cond94.preheader.us.preheader:                ; preds = %for.cond94.preheader.lr.ph
  %wide.trip.count233 = zext i32 %16 to i64
  %wide.trip.count = zext i32 %17 to i64
  br label %for.cond94.preheader.us

for.cond94.preheader.us:                          ; preds = %for.cond94.preheader.us.preheader, %for.cond94.for.inc113_crit_edge.us
  %indvars.iv230 = phi i64 [ 0, %for.cond94.preheader.us.preheader ], [ %indvars.iv.next231, %for.cond94.for.inc113_crit_edge.us ]
  %arrayidx100.us = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv230
  br label %for.body97.us

for.body97.us:                                    ; preds = %for.cond94.preheader.us, %for.body97.us
  %indvars.iv226 = phi i64 [ 0, %for.cond94.preheader.us ], [ %indvars.iv.next227, %for.body97.us ]
  %arrayidx103.us = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx100.us, i64 0, i64 %indvars.iv226
  %block_type.us = getelementptr inbounds %struct.gr_info, ptr %arrayidx103.us, i64 0, i32 6
  %18 = load i32, ptr %block_type.us, align 8, !tbaa !31
  %cmp104.us = icmp eq i32 %18, 2
  %spec.select = select i1 %cmp104.us, i32 0, i32 21
  %spec.select240 = select i1 %cmp104.us, i32 0, i32 12
  %19 = getelementptr inbounds %struct.gr_info, ptr %arrayidx103.us, i64 0, i32 16
  store i32 %spec.select, ptr %19, align 8
  %20 = getelementptr inbounds %struct.gr_info, ptr %arrayidx103.us, i64 0, i32 17
  store i32 %spec.select240, ptr %20, align 4
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1
  %exitcond229.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond229.not, label %for.cond94.for.inc113_crit_edge.us, label %for.body97.us, !llvm.loop !33

for.cond94.for.inc113_crit_edge.us:               ; preds = %for.body97.us
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %for.cond116.preheader, label %for.cond94.preheader.us, !llvm.loop !34

for.cond116.preheader:                            ; preds = %for.cond94.for.inc113_crit_edge.us, %for.cond94.preheader.lr.ph, %if.end89
  %stereo117 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %21 = load i32, ptr %stereo117, align 4, !tbaa !30
  %cmp118205 = icmp sgt i32 %21, 0
  br i1 %cmp118205, label %for.cond121.preheader, label %for.end134

for.cond121.preheader:                            ; preds = %for.cond116.preheader, %for.cond121.preheader
  %indvar = phi i64 [ %indvar.next, %for.cond121.preheader ], [ 0, %for.cond116.preheader ]
  %22 = shl nuw nsw i64 %indvar, 4
  %23 = or i64 %22, 12
  %uglygep = getelementptr i8, ptr %l3_side, i64 %23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !tbaa !17
  %indvar.next = add nuw nsw i64 %indvar, 1
  %indvars = trunc i64 %indvar.next to i32
  %24 = load i32, ptr %stereo117, align 4, !tbaa !30
  %cmp118 = icmp sgt i32 %24, %indvars
  br i1 %cmp118, label %for.cond121.preheader, label %for.end134, !llvm.loop !35

for.end134:                                       ; preds = %for.cond121.preheader, %for.cond116.preheader
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @compute_ath(ptr nocapture noundef readonly %gfp, ptr nocapture noundef %ATH_l, ptr nocapture noundef %ATH_s) local_unnamed_addr #0 {
entry:
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %0 = load i32, ptr %out_samplerate, align 8, !tbaa !36
  %conv = sitofp i32 %0 to double
  %mul = fmul fast double %conv, 0x3EAD208A5A912E31
  %.pre = load i32, ptr @scalefac_band, align 4, !tbaa !17
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body9, %for.body
  %exitcond102.not = icmp eq i64 %indvars.iv.next, 21
  br i1 %exitcond102.not, label %for.cond23.preheader, label %for.body, !llvm.loop !37

for.cond23.preheader:                             ; preds = %for.cond.loopexit
  %mul39 = fmul fast double %conv, 0x3EC5D867C3ECE2A5
  %.pre108 = load i32, ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 0), align 4, !tbaa !17
  br label %for.body26

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %1 = phi i32 [ %.pre, %entry ], [ %2, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond.loopexit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next
  %2 = load i32, ptr %arrayidx3, align 4, !tbaa !17
  %arrayidx5 = getelementptr inbounds double, ptr %ATH_l, i64 %indvars.iv
  store double 0x547D42AEA2879F2E, ptr %arrayidx5, align 8, !tbaa !23
  %cmp795 = icmp slt i32 %1, %2
  br i1 %cmp795, label %for.body9, label %for.cond.loopexit

for.body9:                                        ; preds = %for.body, %for.body9
  %3 = phi double [ %4, %for.body9 ], [ 0x547D42AEA2879F2E, %for.body ]
  %i.096 = phi i32 [ %inc, %for.body9 ], [ %1, %for.body ]
  %conv10 = sitofp i32 %i.096 to double
  %div11 = fmul fast double %mul, %conv10
  %call = tail call fast double @ATHformula(ptr noundef %gfp, double noundef %div11)
  %4 = tail call fast double @llvm.minnum.f64(double %3, double %call)
  store double %4, ptr %arrayidx5, align 8, !tbaa !23
  %inc = add nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %2
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body9, !llvm.loop !38

for.cond23.loopexit:                              ; preds = %for.body37, %for.body26
  %exitcond107.not = icmp eq i64 %indvars.iv.next105, 12
  br i1 %exitcond107.not, label %for.end59, label %for.body26, !llvm.loop !39

for.body26:                                       ; preds = %for.cond23.preheader, %for.cond23.loopexit
  %5 = phi i32 [ %.pre108, %for.cond23.preheader ], [ %6, %for.cond23.loopexit ]
  %indvars.iv104 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next105, %for.cond23.loopexit ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %arrayidx31 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv.next105
  %6 = load i32, ptr %arrayidx31, align 4, !tbaa !17
  %arrayidx33 = getelementptr inbounds double, ptr %ATH_s, i64 %indvars.iv104
  store double 0x547D42AEA2879F2E, ptr %arrayidx33, align 8, !tbaa !23
  %cmp3598 = icmp slt i32 %5, %6
  br i1 %cmp3598, label %for.body37, label %for.cond23.loopexit

for.body37:                                       ; preds = %for.body26, %for.body37
  %7 = phi double [ %8, %for.body37 ], [ 0x547D42AEA2879F2E, %for.body26 ]
  %i.199 = phi i32 [ %inc55, %for.body37 ], [ %5, %for.body26 ]
  %conv38 = sitofp i32 %i.199 to double
  %div40 = fmul fast double %mul39, %conv38
  %call41 = tail call fast double @ATHformula(ptr noundef %gfp, double noundef %div40)
  %8 = tail call fast double @llvm.minnum.f64(double %7, double %call41)
  store double %8, ptr %arrayidx33, align 8, !tbaa !23
  %inc55 = add nsw i32 %i.199, 1
  %exitcond103.not = icmp eq i32 %inc55, %6
  br i1 %exitcond103.not, label %for.cond23.loopexit, label %for.body37, !llvm.loop !40

for.end59:                                        ; preds = %for.cond23.loopexit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local double @ATHformula(ptr nocapture noundef readonly %gfp, double noundef %f) local_unnamed_addr #3 {
entry:
  %cmp = fcmp fast olt double %f, 2.000000e-02
  br i1 %cmp, label %cond.end, label %cond.false

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi fast double [ %f, %cond.false ], [ 2.000000e-02, %entry ]
  %0 = tail call fast double @llvm.pow.f64(double %cond, double -8.000000e-01)
  %mul = fmul fast double %0, 3.640000e+00
  %sub = fadd fast double %cond, -3.300000e+00
  %1 = fmul fast double %sub, %sub
  %mul1 = fmul fast double %1, -6.000000e-01
  %2 = tail call fast double @llvm.exp.f64(double %mul1)
  %mul2 = fmul fast double %2, 6.500000e+00
  %sub3 = fsub fast double %mul, %mul2
  %square14 = fmul fast double %cond, %cond
  %3 = fmul fast double %square14, %square14
  %mul4 = fmul fast double %3, 1.000000e-03
  %add = fadd fast double %sub3, %mul4
  %noATH = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 34
  %4 = load i32, ptr %noATH, align 4, !tbaa !41
  %tobool.not = icmp eq i32 %4, 0
  %. = select i1 %tobool.not, double -1.140000e+02, double -2.000000e+02
  %sub6 = fadd fast double %add, %.
  %mul15 = fmul fast double %sub6, 0x3FD542A5A12E1C5B
  %exp2 = tail call fast double @llvm.exp2.f64(double %mul15)
  ret double %exp2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #2

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @ms_convert(ptr nocapture noundef writeonly %xr, ptr nocapture noundef readonly %xr_org) local_unnamed_addr #4 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx1 = getelementptr inbounds [576 x double], ptr %xr_org, i64 0, i64 %indvars.iv
  %0 = load double, ptr %arrayidx1, align 8, !tbaa !23
  %arrayidx4 = getelementptr inbounds [576 x double], ptr %xr_org, i64 1, i64 %indvars.iv
  %1 = load double, ptr %arrayidx4, align 8, !tbaa !23
  %add = fadd fast double %1, %0
  %mul = fmul fast double %add, 0x3FE6A09E667F3BCD
  %arrayidx7 = getelementptr inbounds [576 x double], ptr %xr, i64 0, i64 %indvars.iv
  store double %mul, ptr %arrayidx7, align 8, !tbaa !23
  %sub = fsub fast double %0, %1
  %mul8 = fmul fast double %sub, 0x3FE6A09E667F3BCD
  %arrayidx11 = getelementptr inbounds [576 x double], ptr %xr, i64 1, i64 %indvars.iv
  store double %mul8, ptr %arrayidx11, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !42

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @on_pe(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %pe, ptr nocapture noundef readonly %l3_side, ptr nocapture noundef %targ_bits, i32 noundef %mean_bits, i32 noundef %gr) local_unnamed_addr #5 {
entry:
  %extra_bits = alloca i32, align 4
  %tbits = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %extra_bits) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tbits) #11
  call void @ResvMaxBits(i32 noundef %mean_bits, ptr noundef nonnull %tbits, ptr noundef nonnull %extra_bits, i32 noundef %gr) #11
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %0 = load i32, ptr %stereo, align 4, !tbaa !30
  %cmp102 = icmp sgt i32 %0, 0
  br i1 %cmp102, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %extra_bits.promoted = load i32, ptr %extra_bits, align 4, !tbaa !17
  %idxprom = sext i32 %gr to i64
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %idxprom
  %1 = load i32, ptr %tbits, align 4, !tbaa !17
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %2 = phi i32 [ %0, %for.body.lr.ph ], [ %9, %for.body ]
  %sub67101103 = phi i32 [ %extra_bits.promoted, %for.body.lr.ph ], [ %sub67, %for.body ]
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %indvars.iv
  %div = sdiv i32 %1, %2
  %arrayidx7 = getelementptr inbounds i32, ptr %targ_bits, i64 %indvars.iv
  store i32 %div, ptr %arrayidx7, align 4, !tbaa !17
  %arrayidx11 = getelementptr inbounds [2 x double], ptr %pe, i64 %idxprom, i64 %indvars.iv
  %3 = load double, ptr %arrayidx11, align 8, !tbaa !23
  %4 = fmul fast double %3, 0x3FE4A5294A5294A5
  %div12 = fadd fast double %4, 0xC07E3DEF7BDEF7BE
  %conv = fptosi double %div12 to i32
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 6
  %5 = load i32, ptr %block_type, align 8, !tbaa !31
  %cmp15 = icmp eq i32 %5, 2
  %cmp19 = icmp slt i32 %conv, 500
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  %6 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %7 = select i1 %or.cond, i32 500, i32 %6
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 %sub67101103)
  %add48 = add nsw i32 %8, %div
  %cmp49 = icmp sgt i32 %add48, 4095
  %sub54 = sub nsw i32 4095, %div
  %spec.select = select i1 %cmp49, i32 %sub54, i32 %8
  %add62 = add nsw i32 %spec.select, %div
  store i32 %add62, ptr %arrayidx7, align 4, !tbaa !17
  %sub67 = sub nsw i32 %sub67101103, %spec.select
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = load i32, ptr %stereo, align 4, !tbaa !30
  %10 = sext i32 %9 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %10
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !43

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tbits) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %extra_bits) #11
  ret void
}

declare void @ResvMaxBits(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @reduce_side(ptr nocapture noundef %targ_bits, double noundef %ms_ener_ratio, i32 noundef %mean_bits) local_unnamed_addr #4 {
entry:
  %0 = fmul fast double %ms_ener_ratio, 6.600000e-01
  %div = fsub fast double 3.300000e-01, %0
  %conv = fptrunc double %div to float
  %cmp = fcmp fast olt float %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %fac.0 = phi float [ 0.000000e+00, %if.then ], [ %conv, %entry ]
  %arrayidx = getelementptr inbounds i32, ptr %targ_bits, i64 1
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !17
  %cmp2 = icmp sgt i32 %1, 124
  br i1 %cmp2, label %if.then4, label %if.end33

if.then4:                                         ; preds = %if.end
  %conv6 = sitofp i32 %1 to float
  %mul9 = fmul fast float %fac.0, %conv6
  %sub10 = fsub fast float %conv6, %mul9
  %cmp11 = fcmp fast ogt float %sub10, 1.250000e+02
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then4
  %2 = load i32, ptr %targ_bits, align 4, !tbaa !17
  %conv18 = sitofp i32 %2 to float
  %add = fadd fast float %mul9, %conv18
  %conv19 = fptosi float %add to i32
  store i32 %conv19, ptr %targ_bits, align 4, !tbaa !17
  %conv26 = fptosi float %sub10 to i32
  br label %if.end33.sink.split

if.else:                                          ; preds = %if.then4
  %sub28 = add nsw i32 %1, -125
  %3 = load i32, ptr %targ_bits, align 4, !tbaa !17
  %add30 = add nsw i32 %sub28, %3
  store i32 %add30, ptr %targ_bits, align 4, !tbaa !17
  br label %if.end33.sink.split

if.end33.sink.split:                              ; preds = %if.else, %if.then13
  %conv26.sink = phi i32 [ %conv26, %if.then13 ], [ 125, %if.else ]
  store i32 %conv26.sink, ptr %arrayidx, align 4, !tbaa !17
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.end
  %cmp38 = icmp sgt i32 %mean_bits, 5791
  %div36 = sdiv i32 %mean_bits, 2
  %add37 = add nsw i32 %div36, 1200
  br i1 %cmp38, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %if.end33, %if.end48.us
  %cmp34.us = phi i1 [ false, %if.end48.us ], [ true, %if.end33 ]
  %indvars.iv71 = phi i64 [ 1, %if.end48.us ], [ 0, %if.end33 ]
  %arrayidx42.us = getelementptr inbounds i32, ptr %targ_bits, i64 %indvars.iv71
  %4 = load i32, ptr %arrayidx42.us, align 4, !tbaa !17
  %cmp43.us = icmp sgt i32 %4, 4095
  br i1 %cmp43.us, label %if.then45.us, label %if.end48.us

if.then45.us:                                     ; preds = %for.body.us
  store i32 4095, ptr %arrayidx42.us, align 4, !tbaa !17
  br label %if.end48.us

if.end48.us:                                      ; preds = %if.then45.us, %for.body.us
  br i1 %cmp34.us, label %for.body.us, label %for.end, !llvm.loop !44

for.body:                                         ; preds = %if.end33, %if.end48
  %cmp34 = phi i1 [ false, %if.end48 ], [ true, %if.end33 ]
  %indvars.iv = phi i64 [ 1, %if.end48 ], [ 0, %if.end33 ]
  %arrayidx42 = getelementptr inbounds i32, ptr %targ_bits, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !17
  %cmp43 = icmp sgt i32 %5, %add37
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body
  store i32 %add37, ptr %arrayidx42, align 4, !tbaa !17
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.body
  br i1 %cmp34, label %for.body, label %for.end, !llvm.loop !44

for.end:                                          ; preds = %if.end48, %if.end48.us
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @inner_loop(ptr noundef %gfp, ptr noundef %xrpow, ptr noundef %l3_enc, i32 noundef %max_bits, ptr noundef %cod_info) local_unnamed_addr #5 {
entry:
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %call5 = tail call i32 @count_bits(ptr noundef %gfp, ptr noundef %l3_enc, ptr noundef %xrpow, ptr noundef nonnull %cod_info) #11
  %cmp6 = icmp sgt i32 %call5, %max_bits
  br i1 %cmp6, label %do.body.do.body_crit_edge, label %do.end, !llvm.loop !45

do.body.do.body_crit_edge:                        ; preds = %entry, %do.body.do.body_crit_edge
  %.pre = load i32, ptr %global_gain, align 4, !tbaa !46
  %inc = add i32 %.pre, 1
  store i32 %inc, ptr %global_gain, align 4, !tbaa !46
  %call = tail call i32 @count_bits(ptr noundef %gfp, ptr noundef %l3_enc, ptr noundef %xrpow, ptr noundef nonnull %cod_info) #11
  %cmp = icmp sgt i32 %call, %max_bits
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.end, !llvm.loop !45

do.end:                                           ; preds = %do.body.do.body_crit_edge, %entry
  %call.lcssa = phi i32 [ %call5, %entry ], [ %call, %do.body.do.body_crit_edge ]
  ret i32 %call.lcssa
}

declare i32 @count_bits(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @scale_bitcount(ptr nocapture noundef %scalefac, ptr nocapture noundef %cod_info) local_unnamed_addr #7 {
entry:
  %block_type = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 6
  %0 = load i32, ptr %block_type, align 8, !tbaa !31
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %for.cond2.preheader, label %for.body38

for.cond2.preheader:                              ; preds = %entry, %for.inc33
  %indvars.iv227 = phi i64 [ %indvars.iv.next228, %for.inc33 ], [ 0, %entry ]
  %max_slen2.0197 = phi i32 [ %4, %for.inc33 ], [ 0, %entry ]
  %max_slen1.0196 = phi i32 [ %2, %for.inc33 ], [ 0, %entry ]
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv219 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next220, %for.body4 ]
  %max_slen1.1192 = phi i32 [ %max_slen1.0196, %for.cond2.preheader ], [ %2, %for.body4 ]
  %arrayidx6 = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %indvars.iv219, i64 %indvars.iv227
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !17
  %2 = tail call i32 @llvm.smax.i32(i32 %1, i32 %max_slen1.1192)
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1
  %exitcond222.not = icmp eq i64 %indvars.iv.next220, 6
  br i1 %exitcond222.not, label %for.body16, label %for.body4, !llvm.loop !47

for.body16:                                       ; preds = %for.body4, %for.body16
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %for.body16 ], [ 6, %for.body4 ]
  %max_slen2.1194 = phi i32 [ %4, %for.body16 ], [ %max_slen2.0197, %for.body4 ]
  %arrayidx21 = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %indvars.iv223, i64 %indvars.iv227
  %3 = load i32, ptr %arrayidx21, align 4, !tbaa !17
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 %max_slen2.1194)
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 12
  br i1 %exitcond226.not, label %for.inc33, label %for.body16, !llvm.loop !48

for.inc33:                                        ; preds = %for.body16
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1
  %exitcond230.not = icmp eq i64 %indvars.iv.next228, 3
  br i1 %exitcond230.not, label %if.end96, label %for.cond2.preheader, !llvm.loop !49

for.body38:                                       ; preds = %entry, %for.body38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body38 ], [ 0, %entry ]
  %max_slen1.3186 = phi i32 [ %6, %for.body38 ], [ 0, %entry ]
  %arrayidx40 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !17
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 %max_slen1.3186)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %for.end49, label %for.body38, !llvm.loop !50

for.end49:                                        ; preds = %for.body38
  %preflag = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 12
  %7 = load i32, ptr %preflag, align 8, !tbaa !51
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body53, label %for.body83.preheader

for.body53:                                       ; preds = %for.end49, %for.inc62
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %for.inc62 ], [ 11, %for.end49 ]
  %arrayidx56 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv207
  %8 = load i32, ptr %arrayidx56, align 4, !tbaa !17
  %arrayidx58 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %indvars.iv207
  %9 = load i32, ptr %arrayidx58, align 4, !tbaa !17
  %cmp59 = icmp slt i32 %8, %9
  br i1 %cmp59, label %for.body83.preheader, label %for.inc62

for.inc62:                                        ; preds = %for.body53
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next208, 21
  br i1 %exitcond210.not, label %if.then66, label %for.body53, !llvm.loop !52

if.then66:                                        ; preds = %for.inc62
  store i32 1, ptr %preflag, align 8, !tbaa !51
  br label %for.body70

for.body70:                                       ; preds = %if.then66, %for.body70
  %indvars.iv211 = phi i64 [ 11, %if.then66 ], [ %indvars.iv.next212, %for.body70 ]
  %arrayidx72 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %indvars.iv211
  %10 = load i32, ptr %arrayidx72, align 4, !tbaa !17
  %arrayidx75 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv211
  %11 = load i32, ptr %arrayidx75, align 4, !tbaa !17
  %sub = sub nsw i32 %11, %10
  store i32 %sub, ptr %arrayidx75, align 4, !tbaa !17
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond214.not = icmp eq i64 %indvars.iv.next212, 21
  br i1 %exitcond214.not, label %for.body83.preheader, label %for.body70, !llvm.loop !53

for.body83.preheader:                             ; preds = %for.body53, %for.body70, %for.end49
  br label %for.body83

for.body83:                                       ; preds = %for.body83.preheader, %for.body83
  %indvars.iv215 = phi i64 [ %indvars.iv.next216, %for.body83 ], [ 11, %for.body83.preheader ]
  %max_slen2.3190 = phi i32 [ %13, %for.body83 ], [ 0, %for.body83.preheader ]
  %arrayidx86 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv215
  %12 = load i32, ptr %arrayidx86, align 4, !tbaa !17
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %max_slen2.3190)
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, 21
  br i1 %exitcond218.not, label %if.end96, label %for.body83, !llvm.loop !54

if.end96:                                         ; preds = %for.body83, %for.inc33
  %max_slen1.5 = phi i32 [ %2, %for.inc33 ], [ %6, %for.body83 ]
  %max_slen2.5 = phi i32 [ %4, %for.inc33 ], [ %13, %for.body83 ]
  %tab.0 = phi ptr [ @scale_bitcount.slen1_tab, %for.inc33 ], [ @scale_bitcount.slen2_tab, %for.body83 ]
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  store i32 100000, ptr %part2_length, align 4, !tbaa !55
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 4
  br label %for.body99

for.body99:                                       ; preds = %if.end96, %for.inc116
  %14 = phi i32 [ 100000, %if.end96 ], [ %19, %for.inc116 ]
  %indvars.iv231 = phi i64 [ 0, %if.end96 ], [ %indvars.iv.next232, %for.inc116 ]
  %ep.0200 = phi i32 [ 2, %if.end96 ], [ %ep.1, %for.inc116 ]
  %arrayidx101 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen1, i64 0, i64 %indvars.iv231
  %15 = load i32, ptr %arrayidx101, align 4, !tbaa !17
  %cmp102 = icmp slt i32 %max_slen1.5, %15
  br i1 %cmp102, label %land.lhs.true, label %for.inc116

land.lhs.true:                                    ; preds = %for.body99
  %arrayidx104 = getelementptr inbounds [16 x i32], ptr @scale_bitcount.slen2, i64 0, i64 %indvars.iv231
  %16 = load i32, ptr %arrayidx104, align 4, !tbaa !17
  %cmp105 = icmp slt i32 %max_slen2.5, %16
  br i1 %cmp105, label %land.lhs.true106, label %for.inc116

land.lhs.true106:                                 ; preds = %land.lhs.true
  %arrayidx109 = getelementptr inbounds i32, ptr %tab.0, i64 %indvars.iv231
  %17 = load i32, ptr %arrayidx109, align 4, !tbaa !17
  %cmp110 = icmp sgt i32 %14, %17
  br i1 %cmp110, label %if.then111, label %for.inc116

if.then111:                                       ; preds = %land.lhs.true106
  store i32 %17, ptr %part2_length, align 4, !tbaa !55
  %18 = trunc i64 %indvars.iv231 to i32
  store i32 %18, ptr %scalefac_compress, align 8, !tbaa !56
  br label %for.inc116

for.inc116:                                       ; preds = %for.body99, %land.lhs.true, %land.lhs.true106, %if.then111
  %19 = phi i32 [ %17, %if.then111 ], [ %14, %land.lhs.true106 ], [ %14, %land.lhs.true ], [ %14, %for.body99 ]
  %ep.1 = phi i32 [ 0, %if.then111 ], [ %ep.0200, %land.lhs.true106 ], [ %ep.0200, %land.lhs.true ], [ %ep.0200, %for.body99 ]
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1
  %exitcond234.not = icmp eq i64 %indvars.iv.next232, 16
  br i1 %exitcond234.not, label %for.end118, label %for.body99, !llvm.loop !57

for.end118:                                       ; preds = %for.inc116
  ret i32 %ep.1
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @scale_bitcount_lsf(ptr nocapture noundef readonly %scalefac, ptr nocapture noundef %cod_info) local_unnamed_addr #0 {
entry:
  %max_sfac = alloca [4 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %max_sfac) #11
  %preflag = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 12
  %0 = load i32, ptr %preflag, align 8, !tbaa !51
  %tobool.not = icmp eq i32 %0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %max_sfac, i8 0, i64 16, i1 false), !tbaa !17
  %. = select i1 %tobool.not, i64 0, i64 2
  %block_type = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 6
  %1 = load i32, ptr %block_type, align 8, !tbaa !31
  %cmp1 = icmp eq i32 %1, 2
  br i1 %cmp1, label %if.then2, label %if.else45

if.then2:                                         ; preds = %entry
  %arrayidx6 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %., i64 1
  br label %for.body10

for.body10:                                       ; preds = %if.then2, %for.inc42
  %indvars.iv263 = phi i64 [ 0, %if.then2 ], [ %indvars.iv.next264, %for.inc42 ]
  %sfb.0241 = phi i32 [ 0, %if.then2 ], [ %sfb.1.lcssa, %for.inc42 ]
  %arrayidx12 = getelementptr inbounds i32, ptr %arrayidx6, i64 %indvars.iv263
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !17
  %div = udiv i32 %2, 3
  %3 = icmp ult i32 %2, 3
  br i1 %3, label %for.inc42, label %for.cond16.preheader.lr.ph

for.cond16.preheader.lr.ph:                       ; preds = %for.body10
  %arrayidx24 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %indvars.iv263
  %arrayidx24.promoted239 = load i32, ptr %arrayidx24, align 4
  %4 = sext i32 %sfb.0241 to i64
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond16.preheader.lr.ph, %for.inc38
  %indvars.iv259 = phi i64 [ %4, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next260, %for.inc38 ]
  %.lcssa233240 = phi i32 [ %arrayidx24.promoted239, %for.cond16.preheader.lr.ph ], [ %7, %for.inc38 ]
  %i.1236 = phi i32 [ 0, %for.cond16.preheader.lr.ph ], [ %inc39, %for.inc38 ]
  br label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv255 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next256, %for.body18 ]
  %5 = phi i32 [ %.lcssa233240, %for.cond16.preheader ], [ %7, %for.body18 ]
  %arrayidx22 = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %indvars.iv259, i64 %indvars.iv255
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !17
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 %5)
  %indvars.iv.next256 = add nuw nsw i64 %indvars.iv255, 1
  %exitcond258.not = icmp eq i64 %indvars.iv.next256, 3
  br i1 %exitcond258.not, label %for.inc38, label %for.body18, !llvm.loop !58

for.inc38:                                        ; preds = %for.body18
  %inc39 = add nuw nsw i32 %i.1236, 1
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, 1
  %exitcond262.not = icmp eq i32 %inc39, %div
  br i1 %exitcond262.not, label %for.cond13.for.inc42_crit_edge, label %for.cond16.preheader, !llvm.loop !59

for.cond13.for.inc42_crit_edge:                   ; preds = %for.inc38
  %8 = add i32 %sfb.0241, %div
  store i32 %7, ptr %arrayidx24, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.cond13.for.inc42_crit_edge, %for.body10
  %sfb.1.lcssa = phi i32 [ %8, %for.cond13.for.inc42_crit_edge ], [ %sfb.0241, %for.body10 ]
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1
  %exitcond266.not = icmp eq i64 %indvars.iv.next264, 4
  br i1 %exitcond266.not, label %if.end78, label %for.body10, !llvm.loop !60

if.else45:                                        ; preds = %entry
  %arrayidx47 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %.
  br label %for.body53

for.body53:                                       ; preds = %if.else45, %for.inc75
  %indvars.iv251 = phi i64 [ 0, %if.else45 ], [ %indvars.iv.next252, %for.inc75 ]
  %sfb.2231 = phi i32 [ 0, %if.else45 ], [ %sfb.3.lcssa, %for.inc75 ]
  %arrayidx55 = getelementptr inbounds i32, ptr %arrayidx47, i64 %indvars.iv251
  %9 = load i32, ptr %arrayidx55, align 4, !tbaa !17
  %cmp57228 = icmp sgt i32 %9, 0
  br i1 %cmp57228, label %for.body58.lr.ph, label %for.inc75

for.body58.lr.ph:                                 ; preds = %for.body53
  %arrayidx62 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %indvars.iv251
  %arrayidx62.promoted = load i32, ptr %arrayidx62, align 4
  %10 = sext i32 %sfb.2231 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58.lr.ph, %for.body58
  %indvars.iv = phi i64 [ %10, %for.body58.lr.ph ], [ %indvars.iv.next, %for.body58 ]
  %11 = phi i32 [ %arrayidx62.promoted, %for.body58.lr.ph ], [ %13, %for.body58 ]
  %i.2229 = phi i32 [ 0, %for.body58.lr.ph ], [ %inc72, %for.body58 ]
  %arrayidx60 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %arrayidx60, align 4, !tbaa !17
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 %11)
  %inc72 = add nuw nsw i32 %i.2229, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %inc72, %9
  br i1 %exitcond.not, label %for.cond56.for.inc75_crit_edge, label %for.body58, !llvm.loop !61

for.cond56.for.inc75_crit_edge:                   ; preds = %for.body58
  %14 = add i32 %sfb.2231, %9
  store i32 %13, ptr %arrayidx62, align 4
  br label %for.inc75

for.inc75:                                        ; preds = %for.cond56.for.inc75_crit_edge, %for.body53
  %sfb.3.lcssa = phi i32 [ %14, %for.cond56.for.inc75_crit_edge ], [ %sfb.2231, %for.body53 ]
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1
  %exitcond254.not = icmp eq i64 %indvars.iv.next252, 4
  br i1 %exitcond254.not, label %if.end78, label %for.body53, !llvm.loop !62

if.end78:                                         ; preds = %for.inc75, %for.inc42
  %row_in_table.0 = phi i64 [ 1, %for.inc42 ], [ 0, %for.inc75 ]
  br label %for.body81

for.body81:                                       ; preds = %if.end78, %for.body81
  %indvars.iv267 = phi i64 [ 0, %if.end78 ], [ %indvars.iv.next268, %for.body81 ]
  %over.0243 = phi i32 [ 0, %if.end78 ], [ %spec.select, %for.body81 ]
  %arrayidx83 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %indvars.iv267
  %15 = load i32, ptr %arrayidx83, align 4, !tbaa !17
  %arrayidx87 = getelementptr inbounds [6 x [4 x i32]], ptr @max_range_sfac_tab, i64 0, i64 %., i64 %indvars.iv267
  %16 = load i32, ptr %arrayidx87, align 4, !tbaa !17
  %cmp88 = icmp sgt i32 %15, %16
  %inc90 = zext i1 %cmp88 to i32
  %spec.select = add nuw nsw i32 %over.0243, %inc90
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next268, 4
  br i1 %exitcond270.not, label %for.end94, label %for.body81, !llvm.loop !63

for.end94:                                        ; preds = %for.body81
  %tobool95.not = icmp eq i32 %spec.select, 0
  br i1 %tobool95.not, label %if.then96, label %if.end155

if.then96:                                        ; preds = %for.end94
  %arrayidx100 = getelementptr inbounds [6 x [3 x [4 x i32]]], ptr @nr_of_sfb_block, i64 0, i64 %., i64 %row_in_table.0
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 19
  store ptr %arrayidx100, ptr %sfb_partition_table, align 8, !tbaa !64
  br label %for.body104

for.body104:                                      ; preds = %if.then96, %for.body104
  %indvars.iv271 = phi i64 [ 0, %if.then96 ], [ %indvars.iv.next272, %for.body104 ]
  %arrayidx106 = getelementptr inbounds [4 x i32], ptr %max_sfac, i64 0, i64 %indvars.iv271
  %17 = load i32, ptr %arrayidx106, align 4, !tbaa !17
  %idxprom107 = sext i32 %17 to i64
  %arrayidx108 = getelementptr inbounds [16 x i32], ptr @scale_bitcount_lsf.log2tab, i64 0, i64 %idxprom107
  %18 = load i32, ptr %arrayidx108, align 4, !tbaa !17
  %arrayidx110 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20, i64 %indvars.iv271
  store i32 %18, ptr %arrayidx110, align 4, !tbaa !17
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 4
  br i1 %exitcond274.not, label %for.end113, label %for.body104, !llvm.loop !65

for.end113:                                       ; preds = %for.body104
  %slen114 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20
  %19 = load i32, ptr %slen114, align 8, !tbaa !17
  %arrayidx117 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20, i64 1
  %20 = load i32, ptr %arrayidx117, align 4, !tbaa !17
  br i1 %tobool.not, label %sw.bb, label %sw.bb132

sw.bb:                                            ; preds = %for.end113
  %arrayidx119 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20, i64 2
  %21 = load i32, ptr %arrayidx119, align 8, !tbaa !17
  %arrayidx121 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20, i64 3
  %22 = load i32, ptr %arrayidx121, align 4, !tbaa !17
  %mul = mul i32 %19, 5
  %add = add i32 %mul, %20
  %shl = shl i32 %add, 4
  %shl122 = shl i32 %21, 2
  %add123 = add i32 %shl122, %shl
  %add124 = add i32 %add123, %22
  br label %if.then139

sw.bb132:                                         ; preds = %for.end113
  %mul133 = mul i32 %19, 3
  %add134 = add i32 %mul133, 500
  %add135 = add i32 %add134, %20
  br label %if.then139

if.then139:                                       ; preds = %sw.bb132, %sw.bb
  %add135.sink = phi i32 [ %add124, %sw.bb ], [ %add135, %sw.bb132 ]
  %23 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 4
  store i32 %add135.sink, ptr %23, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  store i32 0, ptr %part2_length, align 4, !tbaa !55
  br label %for.body142

for.body142:                                      ; preds = %if.then139, %for.body142
  %24 = phi i32 [ 0, %if.then139 ], [ %add151, %for.body142 ]
  %indvars.iv275 = phi i64 [ 0, %if.then139 ], [ %indvars.iv.next276, %for.body142 ]
  %arrayidx145 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 20, i64 %indvars.iv275
  %25 = load i32, ptr %arrayidx145, align 4, !tbaa !17
  %arrayidx148 = getelementptr inbounds i32, ptr %arrayidx100, i64 %indvars.iv275
  %26 = load i32, ptr %arrayidx148, align 4, !tbaa !17
  %mul149 = mul i32 %26, %25
  %add151 = add i32 %24, %mul149
  store i32 %add151, ptr %part2_length, align 4, !tbaa !55
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, 4
  br i1 %exitcond278.not, label %if.end155, label %for.body142, !llvm.loop !66

if.end155:                                        ; preds = %for.body142, %for.end94
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %max_sfac) #11
  ret i32 %spec.select
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @calc_xmin(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %xr, ptr nocapture noundef readonly %ratio, ptr nocapture noundef readonly %cod_info, ptr nocapture noundef writeonly %l3_xmin) local_unnamed_addr #7 {
entry:
  %ATHonly = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 33
  %0 = load i32, ptr %ATHonly, align 8, !tbaa !67
  %tobool.not = icmp eq i32 %0, 0
  %sfb_smax22 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 17
  %1 = load i32, ptr %sfb_smax22, align 4, !tbaa !68
  %cmp24244 = icmp ult i32 %1, 12
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp24244, label %for.cond1.preheader.preheader, label %for.cond11.preheader

for.cond1.preheader.preheader:                    ; preds = %if.then
  %2 = zext i32 %1 to i64
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.inc8
  %indvars.iv258 = phi i64 [ %2, %for.cond1.preheader.preheader ], [ %indvars.iv.next259, %for.inc8 ]
  %arrayidx = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %indvars.iv258
  br label %for.body3

for.cond11.preheader:                             ; preds = %for.inc8, %if.then
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 16
  %3 = load i32, ptr %sfb_lmax, align 8, !tbaa !69
  %cmp12237.not = icmp eq i32 %3, 0
  br i1 %cmp12237.not, label %if.end150, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.cond11.preheader
  %wide.trip.count = zext i32 %3 to i64
  br label %for.body13

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %4 = load double, ptr %arrayidx, align 8, !tbaa !23
  %arrayidx7 = getelementptr inbounds %struct.III_psy_xmin, ptr %l3_xmin, i64 0, i32 1, i64 %indvars.iv258, i64 %indvars.iv
  store double %4, ptr %arrayidx7, align 8, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc8, label %for.body3, !llvm.loop !70

for.inc8:                                         ; preds = %for.body3
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1
  %exitcond261.not = icmp eq i64 %indvars.iv.next259, 12
  br i1 %exitcond261.not, label %for.cond11.preheader, label %for.cond1.preheader, !llvm.loop !71

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv262 = phi i64 [ 0, %for.body13.preheader ], [ %indvars.iv.next263, %for.body13 ]
  %arrayidx15 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %indvars.iv262
  %5 = load double, ptr %arrayidx15, align 8, !tbaa !23
  %arrayidx18 = getelementptr inbounds [22 x double], ptr %l3_xmin, i64 0, i64 %indvars.iv262
  store double %5, ptr %arrayidx18, align 8, !tbaa !23
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1
  %exitcond265.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count
  br i1 %exitcond265.not, label %if.end150, label %for.body13, !llvm.loop !72

if.else:                                          ; preds = %entry
  br i1 %cmp24244, label %for.body25.lr.ph, label %for.cond85.preheader

for.body25.lr.ph:                                 ; preds = %if.else
  %6 = load float, ptr @masking_lower, align 4
  %conv58 = fpext float %6 to double
  %7 = zext i32 %1 to i64
  %arrayidx27.phi.trans.insert = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %7
  %.pre = load i32, ptr %arrayidx27.phi.trans.insert, align 4, !tbaa !17
  br label %for.body25

for.cond23.loopexit:                              ; preds = %for.inc79, %for.inc79.us
  %.us-phi = phi i32 [ %ath_over.2.us, %for.inc79.us ], [ %ath_over.2, %for.inc79 ]
  %exitcond284.not = icmp eq i64 %indvars.iv.next282, 12
  br i1 %exitcond284.not, label %for.cond85.preheader, label %for.body25, !llvm.loop !73

for.cond85.preheader:                             ; preds = %for.cond23.loopexit, %if.else
  %ath_over.0.lcssa = phi i32 [ 0, %if.else ], [ %.us-phi, %for.cond23.loopexit ]
  %sfb_lmax86 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 16
  %8 = load i32, ptr %sfb_lmax86, align 8, !tbaa !69
  %cmp87251.not = icmp eq i32 %8, 0
  br i1 %cmp87251.not, label %if.end150, label %for.body89.lr.ph

for.body89.lr.ph:                                 ; preds = %for.cond85.preheader
  %en111 = getelementptr inbounds %struct.III_psy_ratio, ptr %ratio, i64 0, i32 1
  %9 = load float, ptr @masking_lower, align 4
  %conv123 = fpext float %9 to double
  %wide.trip.count293 = zext i32 %8 to i64
  %.pre295 = load i32, ptr @scalefac_band, align 4, !tbaa !17
  br label %for.body89

for.body25:                                       ; preds = %for.body25.lr.ph, %for.cond23.loopexit
  %10 = phi i32 [ %.pre, %for.body25.lr.ph ], [ %11, %for.cond23.loopexit ]
  %indvars.iv281 = phi i64 [ %7, %for.body25.lr.ph ], [ %indvars.iv.next282, %for.cond23.loopexit ]
  %ath_over.0245 = phi i32 [ 0, %for.body25.lr.ph ], [ %.us-phi, %for.cond23.loopexit ]
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1
  %arrayidx29 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv.next282
  %11 = load i32, ptr %arrayidx29, align 4, !tbaa !17
  %cmp34239 = icmp sgt i32 %11, %10
  %arrayidx62 = getelementptr inbounds [21 x double], ptr @ATH_s, i64 0, i64 %indvars.iv281
  br i1 %cmp34239, label %for.cond33.preheader.us.preheader, label %for.cond33.preheader

for.cond33.preheader.us.preheader:                ; preds = %for.body25
  %sub = sub nsw i32 %11, %10
  %conv = sitofp i32 %sub to double
  %12 = sext i32 %10 to i64
  %wide.trip.count275 = sext i32 %11 to i64
  %13 = fdiv fast double 1.000000e+00, %conv
  br label %for.cond33.preheader.us

for.cond33.preheader.us:                          ; preds = %for.cond33.preheader.us.preheader, %for.inc79.us
  %indvars.iv277 = phi i64 [ 0, %for.cond33.preheader.us.preheader ], [ %indvars.iv.next278, %for.inc79.us ]
  %ath_over.1243.us = phi i32 [ %ath_over.0245, %for.cond33.preheader.us.preheader ], [ %ath_over.2.us, %for.inc79.us ]
  br label %for.body35.us

if.then51.us:                                     ; preds = %for.cond33.for.end43_crit_edge.us
  %arrayidx56.us = getelementptr inbounds %struct.III_psy_xmin, ptr %ratio, i64 0, i32 1, i64 %indvars.iv281, i64 %indvars.iv277
  %14 = load double, ptr %arrayidx56.us, align 8, !tbaa !23
  %mul57.us = fmul fast double %14, %21
  %mul59.us = fmul fast double %mul57.us, %conv58
  %div60.us = fdiv fast double %mul59.us, %22
  br label %if.end.us

if.end.us:                                        ; preds = %if.then51.us, %for.cond33.for.end43_crit_edge.us
  %xmin.0.us = phi double [ %div60.us, %if.then51.us ], [ %22, %for.cond33.for.end43_crit_edge.us ]
  %15 = load double, ptr %arrayidx62, align 8, !tbaa !23
  %16 = tail call fast double @llvm.maxnum.f64(double %15, double %xmin.0.us)
  %arrayidx71.us = getelementptr inbounds %struct.III_psy_xmin, ptr %l3_xmin, i64 0, i32 1, i64 %indvars.iv281, i64 %indvars.iv277
  store double %16, ptr %arrayidx71.us, align 8, !tbaa !23
  %17 = load double, ptr %arrayidx62, align 8, !tbaa !23
  %cmp74.us = fcmp fast ogt double %21, %17
  br i1 %cmp74.us, label %if.then76.us, label %for.inc79.us

if.then76.us:                                     ; preds = %if.end.us
  %inc77.us = add nsw i32 %ath_over.1243.us, 1
  br label %for.inc79.us

for.inc79.us:                                     ; preds = %if.then76.us, %if.end.us
  %ath_over.2.us = phi i32 [ %inc77.us, %if.then76.us ], [ %ath_over.1243.us, %if.end.us ]
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1
  %exitcond280.not = icmp eq i64 %indvars.iv.next278, 3
  br i1 %exitcond280.not, label %for.cond23.loopexit, label %for.cond33.preheader.us, !llvm.loop !74

for.body35.us:                                    ; preds = %for.cond33.preheader.us, %for.body35.us
  %indvars.iv270 = phi i64 [ %12, %for.cond33.preheader.us ], [ %indvars.iv.next271, %for.body35.us ]
  %en0.0241.us = phi double [ 0.000000e+00, %for.cond33.preheader.us ], [ %add40.us, %for.body35.us ]
  %18 = mul nsw i64 %indvars.iv270, 3
  %19 = add nsw i64 %18, %indvars.iv277
  %arrayidx38.us = getelementptr inbounds double, ptr %xr, i64 %19
  %20 = load double, ptr %arrayidx38.us, align 8, !tbaa !23
  %mul39.us = fmul fast double %20, %20
  %add40.us = fadd fast double %mul39.us, %en0.0241.us
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, 1
  %exitcond276.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count275
  br i1 %exitcond276.not, label %for.cond33.for.end43_crit_edge.us, label %for.body35.us, !llvm.loop !75

for.cond33.for.end43_crit_edge.us:                ; preds = %for.body35.us
  %21 = fmul fast double %add40.us, %13
  %arrayidx48.us = getelementptr inbounds %struct.III_psy_ratio, ptr %ratio, i64 0, i32 1, i32 1, i64 %indvars.iv281, i64 %indvars.iv277
  %22 = load double, ptr %arrayidx48.us, align 8, !tbaa !23
  %cmp49.us = fcmp fast ogt double %22, 0.000000e+00
  br i1 %cmp49.us, label %if.then51.us, label %if.end.us

for.cond33.preheader:                             ; preds = %for.body25, %for.inc79
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %for.inc79 ], [ 0, %for.body25 ]
  %ath_over.1243 = phi i32 [ %ath_over.2, %for.inc79 ], [ %ath_over.0245, %for.body25 ]
  %arrayidx48 = getelementptr inbounds %struct.III_psy_ratio, ptr %ratio, i64 0, i32 1, i32 1, i64 %indvars.iv281, i64 %indvars.iv266
  %23 = load double, ptr %arrayidx48, align 8, !tbaa !23
  %cmp49 = fcmp fast ogt double %23, 0.000000e+00
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %for.cond33.preheader
  br label %if.end

if.end:                                           ; preds = %if.then51, %for.cond33.preheader
  %xmin.0 = phi double [ 0.000000e+00, %if.then51 ], [ %23, %for.cond33.preheader ]
  %24 = load double, ptr %arrayidx62, align 8, !tbaa !23
  %25 = tail call fast double @llvm.maxnum.f64(double %24, double %xmin.0)
  %arrayidx71 = getelementptr inbounds %struct.III_psy_xmin, ptr %l3_xmin, i64 0, i32 1, i64 %indvars.iv281, i64 %indvars.iv266
  store double %25, ptr %arrayidx71, align 8, !tbaa !23
  %26 = load double, ptr %arrayidx62, align 8, !tbaa !23
  %cmp74 = fcmp fast olt double %26, 0.000000e+00
  br i1 %cmp74, label %if.then76, label %for.inc79

if.then76:                                        ; preds = %if.end
  %inc77 = add nsw i32 %ath_over.1243, 1
  br label %for.inc79

for.inc79:                                        ; preds = %if.end, %if.then76
  %ath_over.2 = phi i32 [ %inc77, %if.then76 ], [ %ath_over.1243, %if.end ]
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1
  %exitcond269.not = icmp eq i64 %indvars.iv.next267, 3
  br i1 %exitcond269.not, label %for.cond23.loopexit, label %for.cond33.preheader, !llvm.loop !74

for.body89:                                       ; preds = %for.body89.lr.ph, %for.inc147
  %27 = phi i32 [ %.pre295, %for.body89.lr.ph ], [ %28, %for.inc147 ]
  %indvars.iv290 = phi i64 [ 0, %for.body89.lr.ph ], [ %indvars.iv.next291, %for.inc147 ]
  %ath_over.3252 = phi i32 [ %ath_over.0.lcssa, %for.body89.lr.ph ], [ %ath_over.4, %for.inc147 ]
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1
  %arrayidx94 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next291
  %28 = load i32, ptr %arrayidx94, align 4, !tbaa !17
  %sub95 = sub nsw i32 %28, %27
  %cmp97247 = icmp sgt i32 %28, %27
  br i1 %cmp97247, label %for.body99.preheader, label %for.end108

for.body99.preheader:                             ; preds = %for.body89
  %29 = sext i32 %27 to i64
  %wide.trip.count288 = sext i32 %28 to i64
  br label %for.body99

for.body99:                                       ; preds = %for.body99.preheader, %for.body99
  %indvars.iv285 = phi i64 [ %29, %for.body99.preheader ], [ %indvars.iv.next286, %for.body99 ]
  %en0.1249 = phi double [ 0.000000e+00, %for.body99.preheader ], [ %add105, %for.body99 ]
  %arrayidx101 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv285
  %30 = load double, ptr %arrayidx101, align 8, !tbaa !23
  %mul104 = fmul fast double %30, %30
  %add105 = fadd fast double %mul104, %en0.1249
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %for.end108, label %for.body99, !llvm.loop !76

for.end108:                                       ; preds = %for.body99, %for.body89
  %en0.1.lcssa = phi double [ 0.000000e+00, %for.body89 ], [ %add105, %for.body99 ]
  %conv109 = sitofp i32 %sub95 to double
  %div110 = fdiv fast double %en0.1.lcssa, %conv109
  %arrayidx114 = getelementptr inbounds [22 x double], ptr %en111, i64 0, i64 %indvars.iv290
  %31 = load double, ptr %arrayidx114, align 8, !tbaa !23
  %cmp115 = fcmp fast ogt double %31, 0.000000e+00
  br i1 %cmp115, label %if.then117, label %if.end126

if.then117:                                       ; preds = %for.end108
  %arrayidx121 = getelementptr inbounds [22 x double], ptr %ratio, i64 0, i64 %indvars.iv290
  %32 = load double, ptr %arrayidx121, align 8, !tbaa !23
  %mul122 = fmul fast double %32, %div110
  %mul124 = fmul fast double %mul122, %conv123
  %div125 = fdiv fast double %mul124, %31
  br label %if.end126

if.end126:                                        ; preds = %if.then117, %for.end108
  %xmin.1 = phi double [ %div125, %if.then117 ], [ %31, %for.end108 ]
  %arrayidx128 = getelementptr inbounds [21 x double], ptr @ATH_l, i64 0, i64 %indvars.iv290
  %33 = load double, ptr %arrayidx128, align 8, !tbaa !23
  %34 = tail call fast double @llvm.maxnum.f64(double %33, double %xmin.1)
  %arrayidx139 = getelementptr inbounds [22 x double], ptr %l3_xmin, i64 0, i64 %indvars.iv290
  store double %34, ptr %arrayidx139, align 8, !tbaa !23
  %35 = load double, ptr %arrayidx128, align 8, !tbaa !23
  %cmp142 = fcmp fast ogt double %div110, %35
  br i1 %cmp142, label %if.then144, label %for.inc147

if.then144:                                       ; preds = %if.end126
  %inc145 = add nsw i32 %ath_over.3252, 1
  br label %for.inc147

for.inc147:                                       ; preds = %if.end126, %if.then144
  %ath_over.4 = phi i32 [ %inc145, %if.then144 ], [ %ath_over.3252, %if.end126 ]
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %if.end150, label %for.body89, !llvm.loop !77

if.end150:                                        ; preds = %for.body13, %for.inc147, %for.cond11.preheader, %for.cond85.preheader
  %ath_over.5 = phi i32 [ %ath_over.0.lcssa, %for.cond85.preheader ], [ 0, %for.cond11.preheader ], [ %ath_over.4, %for.inc147 ], [ 0, %for.body13 ]
  ret i32 %ath_over.5
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @loop_break(ptr nocapture noundef readonly %scalefac, ptr nocapture noundef readonly %cod_info) local_unnamed_addr #8 {
entry:
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 16
  %0 = load i32, ptr %sfb_lmax, align 8, !tbaa !69
  %cmp33.not = icmp eq i32 %0, 0
  br i1 %cmp33.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %0 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !78

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.cond ]
  %arrayidx = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !17
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond, %entry
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 17
  %2 = load i32, ptr %sfb_smax, align 4, !tbaa !68
  %cmp336 = icmp ult i32 %2, 12
  br i1 %cmp336, label %for.cond5.preheader, label %cleanup

for.cond5.preheader:                              ; preds = %for.end, %for.inc18
  %sfb.137 = phi i32 [ %inc19, %for.inc18 ], [ %2, %for.end ]
  %idxprom8 = zext i32 %sfb.137 to i64
  br label %for.body7

for.cond5:                                        ; preds = %for.body7
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next42, 3
  br i1 %exitcond44.not, label %for.inc18, label %for.body7, !llvm.loop !79

for.body7:                                        ; preds = %for.cond5.preheader, %for.cond5
  %indvars.iv41 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next42, %for.cond5 ]
  %arrayidx11 = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %idxprom8, i64 %indvars.iv41
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !17
  %cmp12 = icmp eq i32 %3, 0
  br i1 %cmp12, label %cleanup, label %for.cond5

for.inc18:                                        ; preds = %for.cond5
  %inc19 = add nsw i32 %sfb.137, 1
  %exitcond45.not = icmp eq i32 %inc19, 12
  br i1 %exitcond45.not, label %cleanup, label %for.cond5.preheader, !llvm.loop !80

cleanup:                                          ; preds = %for.body, %for.inc18, %for.body7, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %for.body7 ], [ 1, %for.inc18 ], [ 0, %for.body ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bin_search_StepSize2(ptr noundef %gfp, i32 noundef %desired_rate, i32 noundef %start, ptr noundef %ix, ptr noundef %xrspow, ptr noundef %cod_info) local_unnamed_addr #5 {
entry:
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  store i32 %start, ptr %global_gain, align 4, !tbaa !46
  %call47 = tail call i32 @count_bits(ptr noundef %gfp, ptr noundef %ix, ptr noundef %xrspow, ptr noundef %cod_info) #11
  %0 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %cmp48 = icmp eq i32 %0, 1
  br i1 %cmp48, label %do.end, label %if.end

if.end:                                           ; preds = %entry, %do.cond
  %1 = phi i32 [ %5, %do.cond ], [ %0, %entry ]
  %call52 = phi i32 [ %call, %do.cond ], [ %call47, %entry ]
  %Direction.051 = phi i32 [ %Direction.1, %do.cond ], [ 0, %entry ]
  %StepSize.050 = phi i32 [ %StepSize.1, %do.cond ], [ %start, %entry ]
  %flag_GoneOver.049 = phi i32 [ %flag_GoneOver.3, %do.cond ], [ 0, %entry ]
  %tobool = icmp ne i32 %flag_GoneOver.049, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %div = sdiv i32 %1, 2
  store i32 %div, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %2 = phi i32 [ %div, %if.then1 ], [ %1, %if.end ]
  %cmp3 = icmp sgt i32 %call52, %desired_rate
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %cmp5 = icmp ne i32 %Direction.051, 2
  %or.cond = select i1 %cmp5, i1 true, i1 %tobool
  br i1 %or.cond, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.then4
  %div8 = sdiv i32 %2, 2
  store i32 %div8, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.then4
  %3 = phi i32 [ %2, %if.then4 ], [ %div8, %if.then7 ]
  %flag_GoneOver.1 = phi i32 [ %flag_GoneOver.049, %if.then4 ], [ 1, %if.then7 ]
  %add = add nsw i32 %3, %StepSize.050
  %cmp10 = icmp sgt i32 %add, 255
  br i1 %cmp10, label %do.end, label %do.cond

if.else:                                          ; preds = %if.end2
  %cmp13 = icmp slt i32 %call52, %desired_rate
  br i1 %cmp13, label %if.then14, label %do.end

if.then14:                                        ; preds = %if.else
  %cmp15 = icmp ne i32 %Direction.051, 1
  %or.cond33 = select i1 %cmp15, i1 true, i1 %tobool
  br i1 %or.cond33, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.then14
  %div19 = sdiv i32 %2, 2
  store i32 %div19, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14
  %4 = phi i32 [ %2, %if.then14 ], [ %div19, %if.then18 ]
  %flag_GoneOver.2 = phi i32 [ %flag_GoneOver.049, %if.then14 ], [ 1, %if.then18 ]
  %sub = sub nsw i32 %StepSize.050, %4
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %do.end, label %do.cond

do.cond:                                          ; preds = %if.end9, %if.end20
  %flag_GoneOver.3 = phi i32 [ %flag_GoneOver.1, %if.end9 ], [ %flag_GoneOver.2, %if.end20 ]
  %StepSize.1 = phi i32 [ %add, %if.end9 ], [ %sub, %if.end20 ]
  %Direction.1 = phi i32 [ 1, %if.end9 ], [ 2, %if.end20 ]
  store i32 %StepSize.1, ptr %global_gain, align 4, !tbaa !46
  %call = tail call i32 @count_bits(ptr noundef %gfp, ptr noundef %ix, ptr noundef %xrspow, ptr noundef nonnull %cod_info) #11
  %5 = load i32, ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %do.end, label %if.end, !llvm.loop !81

do.end:                                           ; preds = %do.cond, %if.end9, %if.end20, %if.else, %entry
  %call.lcssa = phi i32 [ %call47, %entry ], [ %call52, %if.else ], [ %call52, %if.end20 ], [ %call52, %if.end9 ], [ %call, %do.cond ]
  %StepSize.2 = phi i32 [ %start, %entry ], [ %StepSize.050, %if.else ], [ %sub, %if.end20 ], [ %add, %if.end9 ], [ %StepSize.1, %do.cond ]
  %sub27 = sub nsw i32 %start, %StepSize.2
  %6 = tail call i32 @llvm.abs.i32(i32 %sub27, i1 true)
  %cmp29.inv = icmp ult i32 %6, 4
  %. = select i1 %cmp29.inv, i32 2, i32 4
  store i32 %., ptr @bin_search_StepSize2.CurrentStep, align 4, !tbaa !17
  ret i32 %call.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @quantize_xrpow(ptr nocapture noundef readonly %xr, ptr nocapture noundef writeonly %ix, ptr nocapture noundef readonly %cod_info) local_unnamed_addr #7 {
entry:
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4, !tbaa !46
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8, !tbaa !23
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %xr.addr.0101 = phi ptr [ %xr, %entry ], [ %incdec.ptr18, %for.body ]
  %ix.addr.0100 = phi ptr [ %ix, %entry ], [ %incdec.ptr60, %for.body ]
  %j.099 = phi i32 [ 72, %entry ], [ %dec, %for.body ]
  %incdec.ptr = getelementptr inbounds double, ptr %xr.addr.0101, i64 1
  %2 = load double, ptr %xr.addr.0101, align 8, !tbaa !23
  %mul = fmul fast double %2, %1
  %incdec.ptr1 = getelementptr inbounds double, ptr %xr.addr.0101, i64 2
  %3 = load double, ptr %incdec.ptr, align 8, !tbaa !23
  %mul2 = fmul fast double %3, %1
  %conv = fptosi double %mul to i32
  %incdec.ptr3 = getelementptr inbounds double, ptr %xr.addr.0101, i64 3
  %4 = load double, ptr %incdec.ptr1, align 8, !tbaa !23
  %mul4 = fmul fast double %4, %1
  %conv5 = fptosi double %mul2 to i32
  %incdec.ptr6 = getelementptr inbounds double, ptr %xr.addr.0101, i64 4
  %5 = load double, ptr %incdec.ptr3, align 8, !tbaa !23
  %mul7 = fmul fast double %5, %1
  %conv8 = fptosi double %mul4 to i32
  %incdec.ptr9 = getelementptr inbounds double, ptr %xr.addr.0101, i64 5
  %6 = load double, ptr %incdec.ptr6, align 8, !tbaa !23
  %mul10 = fmul fast double %6, %1
  %conv11 = fptosi double %mul7 to i32
  %incdec.ptr12 = getelementptr inbounds double, ptr %xr.addr.0101, i64 6
  %7 = load double, ptr %incdec.ptr9, align 8, !tbaa !23
  %mul13 = fmul fast double %7, %1
  %conv14 = fptosi double %mul10 to i32
  %incdec.ptr15 = getelementptr inbounds double, ptr %xr.addr.0101, i64 7
  %8 = load double, ptr %incdec.ptr12, align 8, !tbaa !23
  %mul16 = fmul fast double %8, %1
  %conv17 = fptosi double %mul13 to i32
  %incdec.ptr18 = getelementptr inbounds double, ptr %xr.addr.0101, i64 8
  %9 = load double, ptr %incdec.ptr15, align 8, !tbaa !23
  %mul19 = fmul fast double %9, %1
  %conv20 = fptosi double %mul16 to i32
  %idxprom21 = sext i32 %conv to i64
  %arrayidx22 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom21
  %10 = load double, ptr %arrayidx22, align 8, !tbaa !23
  %add = fadd fast double %10, %mul
  %conv23 = fptosi double %mul19 to i32
  %idxprom24 = sext i32 %conv5 to i64
  %arrayidx25 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom24
  %11 = load double, ptr %arrayidx25, align 8, !tbaa !23
  %add26 = fadd fast double %11, %mul2
  %conv27 = fptosi double %add to i32
  %incdec.ptr28 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 1
  store i32 %conv27, ptr %ix.addr.0100, align 4, !tbaa !17
  %idxprom29 = sext i32 %conv8 to i64
  %arrayidx30 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom29
  %12 = load double, ptr %arrayidx30, align 8, !tbaa !23
  %add31 = fadd fast double %12, %mul4
  %conv32 = fptosi double %add26 to i32
  %incdec.ptr33 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 2
  store i32 %conv32, ptr %incdec.ptr28, align 4, !tbaa !17
  %idxprom34 = sext i32 %conv11 to i64
  %arrayidx35 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom34
  %13 = load double, ptr %arrayidx35, align 8, !tbaa !23
  %add36 = fadd fast double %13, %mul7
  %conv37 = fptosi double %add31 to i32
  %incdec.ptr38 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 3
  store i32 %conv37, ptr %incdec.ptr33, align 4, !tbaa !17
  %idxprom39 = sext i32 %conv14 to i64
  %arrayidx40 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom39
  %14 = load double, ptr %arrayidx40, align 8, !tbaa !23
  %add41 = fadd fast double %14, %mul10
  %conv42 = fptosi double %add36 to i32
  %incdec.ptr43 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 4
  store i32 %conv42, ptr %incdec.ptr38, align 4, !tbaa !17
  %idxprom44 = sext i32 %conv17 to i64
  %arrayidx45 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom44
  %15 = load double, ptr %arrayidx45, align 8, !tbaa !23
  %add46 = fadd fast double %15, %mul13
  %conv47 = fptosi double %add41 to i32
  %incdec.ptr48 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 5
  store i32 %conv47, ptr %incdec.ptr43, align 4, !tbaa !17
  %idxprom49 = sext i32 %conv20 to i64
  %arrayidx50 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom49
  %16 = load double, ptr %arrayidx50, align 8, !tbaa !23
  %add51 = fadd fast double %16, %mul16
  %conv52 = fptosi double %add46 to i32
  %incdec.ptr53 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 6
  store i32 %conv52, ptr %incdec.ptr48, align 4, !tbaa !17
  %idxprom54 = sext i32 %conv23 to i64
  %arrayidx55 = getelementptr inbounds [8208 x double], ptr @adj43, i64 0, i64 %idxprom54
  %17 = load double, ptr %arrayidx55, align 8, !tbaa !23
  %add56 = fadd fast double %17, %mul19
  %conv57 = fptosi double %add51 to i32
  %incdec.ptr58 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 7
  store i32 %conv57, ptr %incdec.ptr53, align 4, !tbaa !17
  %conv59 = fptosi double %add56 to i32
  %incdec.ptr60 = getelementptr inbounds i32, ptr %ix.addr.0100, i64 8
  store i32 %conv59, ptr %incdec.ptr58, align 4, !tbaa !17
  %dec = add nsw i32 %j.099, -1
  %cmp = icmp ugt i32 %j.099, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !82

for.end:                                          ; preds = %for.body
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @quantize_xrpow_ISO(ptr nocapture noundef readonly %xr, ptr nocapture noundef writeonly %ix, ptr nocapture noundef readonly %cod_info) local_unnamed_addr #7 {
entry:
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4, !tbaa !46
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8, !tbaa !23
  %div = fdiv fast double 5.946000e-01, %1
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %xr.addr.012 = phi ptr [ %xr, %entry ], [ %xr.addr.1, %for.inc ]
  %j.011 = phi i32 [ 576, %entry ], [ %dec, %for.inc ]
  %ix.addr.010 = phi ptr [ %ix, %entry ], [ %ix.addr.1, %for.inc ]
  %2 = load double, ptr %xr.addr.012, align 8, !tbaa !23
  %cmp1 = fcmp fast ogt double %div, %2
  br i1 %cmp1, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %mul = fmul fast double %2, %1
  %add = fadd fast double %mul, 4.054000e-01
  %conv = fptosi double %add to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else
  %storemerge = phi i32 [ %conv, %if.else ], [ 0, %for.body ]
  store i32 %storemerge, ptr %ix.addr.010, align 4, !tbaa !17
  %xr.addr.1 = getelementptr inbounds double, ptr %xr.addr.012, i64 1
  %ix.addr.1 = getelementptr inbounds i32, ptr %ix.addr.010, i64 1
  %dec = add nsw i32 %j.011, -1
  %cmp = icmp ugt i32 %j.011, 1
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !83

for.end:                                          ; preds = %for.inc
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #9

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #9

attributes #0 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { argmemonly nofree noinline norecurse nosync nounwind readonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly nofree nounwind willreturn writeonly }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !8, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !12, i64 168}
!11 = !{!"", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !8, i64 120, !7, i64 124, !13, i64 128, !13, i64 136, !7, i64 144, !7, i64 148, !14, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !12, i64 168, !12, i64 176, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !14, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !14, i64 232, !14, i64 236, !14, i64 240, !14, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"float", !8, i64 0}
!15 = !{!11, !7, i64 224}
!16 = !{!11, !7, i64 192}
!17 = !{!7, !7, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !19, !20}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"double", !8, i64 0}
!25 = distinct !{!25, !19, !20}
!26 = distinct !{!26, !19, !20}
!27 = distinct !{!27, !19, !20}
!28 = !{!11, !7, i64 228}
!29 = !{!11, !7, i64 200}
!30 = !{!11, !7, i64 204}
!31 = !{!32, !7, i64 24}
!32 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32, !8, i64 44, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !13, i64 96, !8, i64 104}
!33 = distinct !{!33, !19, !20}
!34 = distinct !{!34, !19, !20}
!35 = distinct !{!35, !19, !20}
!36 = !{!11, !7, i64 16}
!37 = distinct !{!37, !19, !20}
!38 = distinct !{!38, !19, !20}
!39 = distinct !{!39, !19, !20}
!40 = distinct !{!40, !19, !20}
!41 = !{!11, !7, i64 148}
!42 = distinct !{!42, !19, !20}
!43 = distinct !{!43, !19, !20}
!44 = distinct !{!44, !19, !20}
!45 = distinct !{!45, !19, !20}
!46 = !{!32, !7, i64 12}
!47 = distinct !{!47, !19, !20}
!48 = distinct !{!48, !19, !20}
!49 = distinct !{!49, !19, !20}
!50 = distinct !{!50, !19, !20}
!51 = !{!32, !7, i64 64}
!52 = distinct !{!52, !19, !20}
!53 = distinct !{!53, !19, !20}
!54 = distinct !{!54, !19, !20}
!55 = !{!32, !7, i64 76}
!56 = !{!32, !7, i64 16}
!57 = distinct !{!57, !19, !20}
!58 = distinct !{!58, !19, !20}
!59 = distinct !{!59, !19, !20}
!60 = distinct !{!60, !19, !20}
!61 = distinct !{!61, !19, !20}
!62 = distinct !{!62, !19, !20}
!63 = distinct !{!63, !19, !20}
!64 = !{!32, !13, i64 96}
!65 = distinct !{!65, !19, !20}
!66 = distinct !{!66, !19, !20}
!67 = !{!11, !7, i64 144}
!68 = !{!32, !7, i64 84}
!69 = !{!32, !7, i64 80}
!70 = distinct !{!70, !19, !20}
!71 = distinct !{!71, !19, !20}
!72 = distinct !{!72, !19, !20}
!73 = distinct !{!73, !19, !20}
!74 = distinct !{!74, !19, !20}
!75 = distinct !{!75, !19, !20}
!76 = distinct !{!76, !19, !20}
!77 = distinct !{!77, !19, !20}
!78 = distinct !{!78, !19, !20}
!79 = distinct !{!79, !19, !20}
!80 = distinct !{!80, !19, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !19, !20}
!83 = distinct !{!83, !19, !20}
