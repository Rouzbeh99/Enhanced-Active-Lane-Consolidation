; ModuleID = 'psymodel.c'
source_filename = "psymodel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@L3psycho_anal.minval = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_l = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.qthr_s = internal global [63 x double] zeroinitializer, align 16
@L3psycho_anal.nb_1 = internal unnamed_addr global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.nb_2 = internal unnamed_addr global [4 x [63 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_s = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.s3_l = internal global [64 x [64 x double]] zeroinitializer, align 16
@L3psycho_anal.thm = internal unnamed_addr global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.en = internal unnamed_addr global [4 x %struct.III_psy_xmin] zeroinitializer, align 16
@L3psycho_anal.cw_upper_index = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.cw_lower_index = internal unnamed_addr global i1 false, align 4
@L3psycho_anal.ax_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.bx_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.rx_sav = internal unnamed_addr global [4 x [2 x [513 x float]]] zeroinitializer, align 16
@L3psycho_anal.cw = internal unnamed_addr global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_L = internal global [2 x [1024 x float]] zeroinitializer, align 16
@L3psycho_anal.energy = internal unnamed_addr global [513 x float] zeroinitializer, align 16
@L3psycho_anal.wsamp_S = internal global [2 x [3 x [256 x float]]] zeroinitializer, align 16
@L3psycho_anal.energy_s = internal unnamed_addr global [3 x [129 x float]] zeroinitializer, align 16
@L3psycho_anal.eb = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.cb = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.thr = internal unnamed_addr global [63 x double] zeroinitializer, align 16
@L3psycho_anal.w1_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w2_l = internal global [21 x double] zeroinitializer, align 16
@L3psycho_anal.w1_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.w2_s = internal global [12 x double] zeroinitializer, align 16
@L3psycho_anal.mld_l = internal unnamed_addr global [21 x double] zeroinitializer, align 16
@L3psycho_anal.mld_s = internal unnamed_addr global [12 x double] zeroinitializer, align 16
@L3psycho_anal.bu_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_l = internal global [21 x i32] zeroinitializer, align 16
@L3psycho_anal.bu_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.bo_s = internal global [12 x i32] zeroinitializer, align 16
@L3psycho_anal.npart_l = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_s = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_l_orig = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.npart_s_orig = internal unnamed_addr global i32 0, align 4
@L3psycho_anal.s3ind = internal unnamed_addr global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.s3ind_s = internal unnamed_addr global [63 x [2 x i32]] zeroinitializer, align 16
@L3psycho_anal.numlines_s = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.numlines_l = internal global [63 x i32] zeroinitializer, align 16
@L3psycho_anal.partition_l = internal global [513 x i32] zeroinitializer, align 16
@L3psycho_anal.pe = internal unnamed_addr global [4 x double] zeroinitializer, align 16
@L3psycho_anal.ms_ratio_s_old = internal unnamed_addr global double 0.000000e+00, align 8
@L3psycho_anal.ms_ratio_l_old = internal unnamed_addr global double 0.000000e+00, align 8
@L3psycho_anal.ms_ener_ratio_old = internal unnamed_addr global double 2.500000e-01, align 8
@L3psycho_anal.blocktype_old = internal unnamed_addr global [2 x i32] zeroinitializer, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"error, invalid sampling frequency: %d Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error in block selecting\0A\00", align 1
@psy_data = external local_unnamed_addr global [0 x double], align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"1. please check \22psy_data\22\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"3. please check \22psy_data\22\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"30:please check \22psy_data\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"31l: please check \22psy_data.\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"w1,w2: %f %f \0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"31s: please check \22psy_data.\22\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @L3psycho_anal(ptr nocapture noundef readonly %gfp, ptr noundef %buffer, i32 noundef %gr_out, ptr nocapture noundef writeonly %ms_ratio, ptr nocapture noundef writeonly %ms_ratio_next, ptr nocapture noundef writeonly %ms_ener_ratio, ptr nocapture noundef writeonly %masking_ratio, ptr nocapture noundef writeonly %masking_MS_ratio, ptr nocapture noundef writeonly %percep_entropy, ptr nocapture noundef writeonly %percep_MS_entropy, ptr nocapture noundef %blocktype_d) local_unnamed_addr #0 {
entry:
  %tot_ener = alloca [4 x float], align 16
  %blocktype = alloca [2 x i32], align 4
  %uselongblock = alloca [2 x i32], align 4
  %SNR_s = alloca [63 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tot_ener) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %blocktype) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uselongblock) #10
  %frameNum = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 39
  %0 = load i64, ptr %frameNum, align 8, !tbaa !5
  %cmp = icmp eq i64 %0, 0
  %cmp1 = icmp eq i32 %gr_out, 0
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %if.then, label %if.end291

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %SNR_s) #10
  store i32 3, ptr @L3psycho_anal.blocktype_old, align 4, !tbaa !13
  store i32 3, ptr getelementptr inbounds ([2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 1), align 4, !tbaa !13
  %out_samplerate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 3
  %1 = load i32, ptr %out_samplerate, align 8, !tbaa !14
  switch i32 %1, label %sw.default [
    i32 32000, label %sw.epilog
    i32 44100, label %sw.epilog
    i32 48000, label %sw.epilog
    i32 16000, label %sw.epilog
    i32 22050, label %sw.epilog
    i32 24000, label %sw.epilog
  ]

sw.default:                                       ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !15
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %1) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

sw.epilog:                                        ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.rx_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.ax_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16416) @L3psycho_anal.bx_sav, i8 0, i64 16416, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1952) @L3psycho_anal.en, i8 0, i64 1952, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1952) @L3psycho_anal.thm, i8 0, i64 1952, i1 false)
  store i1 true, ptr @L3psycho_anal.cw_lower_index, align 4
  %cwlimit2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 35
  %3 = load float, ptr %cwlimit2, align 8, !tbaa !16
  %cmp3 = fcmp fast ogt float %3, 0.000000e+00
  %. = select i1 %cmp3, float %3, float 0x4021BE4F80000000
  %conv = fpext float %. to double
  %mul6 = fmul fast double %conv, 1.024000e+06
  %4 = load i32, ptr %out_samplerate, align 8, !tbaa !14
  %conv8 = sitofp i32 %4 to double
  %div = fdiv fast double %mul6, %conv8
  %conv9 = fptosi double %div to i32
  %5 = tail call i32 @llvm.smin.i32(i32 %conv9, i32 509)
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 6)
  store i32 %6, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !13
  br label %for.body

for.body:                                         ; preds = %sw.epilog, %for.body
  %indvars.iv = phi i64 [ 0, %sw.epilog ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %indvars.iv
  store float 0x3FD99999A0000000, ptr %arrayidx, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 513
  br i1 %exitcond.not, label %for.body23, label %for.body, !llvm.loop !18

for.body23:                                       ; preds = %for.body, %for.body23
  %indvars.iv2747 = phi i64 [ %indvars.iv.next2748, %for.body23 ], [ 0, %for.body ]
  %7 = trunc i64 %indvars.iv2747 to i32
  %conv24 = sitofp i32 %7 to double
  %div26 = fmul fast double %conv24, 0x3FD0C152382D7365
  %8 = tail call fast double @llvm.cos.f64(double %div26)
  %9 = fmul fast double %8, 0x40109C1165EC0627
  %mul2573 = fsub fast double 0xC0109C1165EC0627, %9
  %exp22574 = tail call fast double @llvm.exp2.f64(double %mul2573)
  %arrayidx30 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %indvars.iv2747
  store double %exp22574, ptr %arrayidx30, align 8, !tbaa !21
  %indvars.iv.next2748 = add nuw nsw i64 %indvars.iv2747, 1
  %exitcond2750.not = icmp eq i64 %indvars.iv.next2748, 12
  br i1 %exitcond2750.not, label %for.body37, label %for.body23, !llvm.loop !23

for.body37:                                       ; preds = %for.body23, %for.body37
  %indvars.iv2751 = phi i64 [ %indvars.iv.next2752, %for.body37 ], [ 0, %for.body23 ]
  %10 = trunc i64 %indvars.iv2751 to i32
  %conv39 = sitofp i32 %10 to double
  %div41 = fmul fast double %conv39, 0x3FC32614D27D162A
  %11 = tail call fast double @llvm.cos.f64(double %div41)
  %12 = fmul fast double %11, 0x40109C1165EC0627
  %mul = fsub fast double 0xC0109C1165EC0627, %12
  %exp2 = tail call fast double @llvm.exp2.f64(double %mul)
  %arrayidx46 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %indvars.iv2751
  store double %exp2, ptr %arrayidx46, align 8, !tbaa !21
  %indvars.iv.next2752 = add nuw nsw i64 %indvars.iv2751, 1
  %exitcond2754.not = icmp eq i64 %indvars.iv.next2752, 21
  br i1 %exitcond2754.not, label %for.body53.preheader, label %for.body37, !llvm.loop !24

for.body53.preheader:                             ; preds = %for.body37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2052) @L3psycho_anal.partition_l, i8 -1, i64 2052, i1 false), !tbaa !13
  %13 = load i32, ptr %out_samplerate, align 8, !tbaa !14
  %conv60 = sitofp i32 %13 to double
  call void @L3para_read(double noundef %conv60, ptr noundef nonnull @L3psycho_anal.numlines_l, ptr noundef nonnull @L3psycho_anal.numlines_s, ptr noundef nonnull @L3psycho_anal.partition_l, ptr noundef nonnull @L3psycho_anal.minval, ptr noundef nonnull @L3psycho_anal.qthr_l, ptr noundef nonnull @L3psycho_anal.s3_l, ptr noundef nonnull @L3psycho_anal.s3_s, ptr noundef nonnull @L3psycho_anal.qthr_s, ptr noundef nonnull %SNR_s, ptr noundef nonnull @L3psycho_anal.bu_l, ptr noundef nonnull @L3psycho_anal.bo_l, ptr noundef nonnull @L3psycho_anal.w1_l, ptr noundef nonnull @L3psycho_anal.w2_l, ptr noundef nonnull @L3psycho_anal.bu_s, ptr noundef nonnull @L3psycho_anal.bo_s, ptr noundef nonnull @L3psycho_anal.w1_s, ptr noundef nonnull @L3psycho_anal.w2_s)
  br label %for.body64

for.body64:                                       ; preds = %for.body53.preheader, %for.body64
  %indvars.iv2758 = phi i64 [ 0, %for.body53.preheader ], [ %indvars.iv.next2759, %for.body64 ]
  %14 = phi i32 [ 0, %for.body53.preheader ], [ %16, %for.body64 ]
  %arrayidx66 = getelementptr inbounds [513 x i32], ptr @L3psycho_anal.partition_l, i64 0, i64 %indvars.iv2758
  %15 = load i32, ptr %arrayidx66, align 4, !tbaa !13
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 %14)
  %indvars.iv.next2759 = add nuw nsw i64 %indvars.iv2758, 1
  %exitcond2761.not = icmp eq i64 %indvars.iv.next2759, 513
  br i1 %exitcond2761.not, label %for.end75, label %for.body64, !llvm.loop !25

for.end75:                                        ; preds = %for.body64
  %inc76 = add i32 %16, 1
  store i32 %inc76, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  br label %for.cond77

for.cond77:                                       ; preds = %for.cond77, %for.end75
  %indvars.iv2762 = phi i64 [ %indvars.iv.next2763, %for.cond77 ], [ 0, %for.end75 ]
  %arrayidx79 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %indvars.iv2762
  %17 = load i32, ptr %arrayidx79, align 4, !tbaa !13
  %cmp80 = icmp sgt i32 %17, -1
  %indvars.iv.next2763 = add nuw i64 %indvars.iv2762, 1
  br i1 %cmp80, label %for.cond77, label %for.end85, !llvm.loop !26

for.end85:                                        ; preds = %for.cond77
  %18 = trunc i64 %indvars.iv2762 to i32
  store i32 %18, ptr @L3psycho_anal.npart_s_orig, align 4, !tbaa !13
  %19 = load i32, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 16, !tbaa !13
  %add = add nsw i32 %19, 1
  store i32 %add, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %20 = load i32, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4, !tbaa !13
  %add86 = add nsw i32 %20, 1
  store i32 %add86, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %cmp87.not.not = icmp sgt i32 %19, %16
  br i1 %cmp87.not.not, label %if.then89, label %if.end91

if.then89:                                        ; preds = %for.end85
  store i32 %inc76, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  store i32 %16, ptr getelementptr inbounds ([21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 20), align 16, !tbaa !13
  store double 1.000000e+00, ptr getelementptr inbounds ([21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 20), align 16, !tbaa !21
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.end85
  %21 = phi i32 [ %inc76, %if.then89 ], [ %add, %for.end85 ]
  %cmp92.not = icmp slt i32 %20, %18
  br i1 %cmp92.not, label %if.end96, label %if.then94

if.then94:                                        ; preds = %if.end91
  store i32 %18, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %sub95 = add nsw i32 %18, -1
  store i32 %sub95, ptr getelementptr inbounds ([12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 11), align 4, !tbaa !13
  store double 1.000000e+00, ptr getelementptr inbounds ([12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 11), align 8, !tbaa !21
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91
  %22 = phi i32 [ %18, %if.then94 ], [ %add86, %if.end91 ]
  %cmp982608 = icmp sgt i32 %21, 0
  br i1 %cmp982608, label %for.cond101.preheader.lr.ph, label %for.cond140.preheader

for.cond101.preheader.lr.ph:                      ; preds = %if.end96
  %cmp102.not2605 = icmp slt i32 %16, 0
  %23 = zext i32 %inc76 to i64
  %smin = call i32 @llvm.smin.i32(i32 %inc76, i32 1)
  %24 = add i32 %smin, -1
  %wide.trip.count2776 = zext i32 %21 to i64
  br label %for.cond101.preheader

for.cond101.preheader:                            ; preds = %for.cond101.preheader.lr.ph, %for.end133
  %indvars.iv2772 = phi i64 [ 0, %for.cond101.preheader.lr.ph ], [ %indvars.iv.next2773, %for.end133 ]
  br i1 %cmp102.not2605, label %for.end115, label %for.body104

for.cond140.preheader:                            ; preds = %for.end133, %if.end96
  %cmp1412615 = icmp sgt i32 %22, 0
  br i1 %cmp1412615, label %for.cond144.preheader.lr.ph, label %for.cond184.preheader

for.cond144.preheader.lr.ph:                      ; preds = %for.cond140.preheader
  %cmp1452611.not = icmp eq i32 %18, 0
  %25 = and i64 %indvars.iv2762, 4294967295
  %smin2786 = call i32 @llvm.smin.i32(i32 %18, i32 1)
  %26 = add i32 %smin2786, -1
  %wide.trip.count2793 = zext i32 %22 to i64
  br label %for.cond144.preheader

for.body104:                                      ; preds = %for.cond101.preheader, %for.inc113
  %indvars.iv2765 = phi i64 [ %indvars.iv.next2766, %for.inc113 ], [ 0, %for.cond101.preheader ]
  %arrayidx108 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %indvars.iv2772, i64 %indvars.iv2765
  %27 = load double, ptr %arrayidx108, align 8, !tbaa !21
  %cmp109 = fcmp fast une double %27, 0.000000e+00
  br i1 %cmp109, label %for.end115.loopexit.split.loop.exit, label %for.inc113

for.inc113:                                       ; preds = %for.body104
  %indvars.iv.next2766 = add nuw nsw i64 %indvars.iv2765, 1
  %exitcond2768.not = icmp eq i64 %indvars.iv.next2766, %23
  br i1 %exitcond2768.not, label %for.end115, label %for.body104, !llvm.loop !27

for.end115.loopexit.split.loop.exit:              ; preds = %for.body104
  %28 = trunc i64 %indvars.iv2765 to i32
  br label %for.end115

for.end115:                                       ; preds = %for.inc113, %for.end115.loopexit.split.loop.exit, %for.cond101.preheader
  %j.1.lcssa = phi i32 [ 0, %for.cond101.preheader ], [ %28, %for.end115.loopexit.split.loop.exit ], [ %inc76, %for.inc113 ]
  %arrayidx117 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2772
  store i32 %j.1.lcssa, ptr %arrayidx117, align 8, !tbaa !13
  br label %for.cond120

for.cond120:                                      ; preds = %for.body123, %for.end115
  %indvars.iv2769 = phi i64 [ %indvars.iv.next2770, %for.body123 ], [ %23, %for.end115 ]
  %29 = trunc i64 %indvars.iv2769 to i32
  %cmp121 = icmp sgt i32 %29, 1
  br i1 %cmp121, label %for.body123, label %for.end133

for.body123:                                      ; preds = %for.cond120
  %indvars.iv.next2770 = add nsw i64 %indvars.iv2769, -1
  %idxprom1262586 = and i64 %indvars.iv.next2770, 4294967295
  %arrayidx127 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %indvars.iv2772, i64 %idxprom1262586
  %30 = load double, ptr %arrayidx127, align 8, !tbaa !21
  %cmp128 = fcmp fast une double %30, 0.000000e+00
  br i1 %cmp128, label %for.end133.split.loop.exit, label %for.cond120, !llvm.loop !28

for.end133.split.loop.exit:                       ; preds = %for.body123
  %indvars.le = trunc i64 %indvars.iv.next2770 to i32
  br label %for.end133

for.end133:                                       ; preds = %for.cond120, %for.end133.split.loop.exit
  %j.2.lcssa = phi i32 [ %indvars.le, %for.end133.split.loop.exit ], [ %24, %for.cond120 ]
  %arrayidx136 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2772, i64 1
  store i32 %j.2.lcssa, ptr %arrayidx136, align 4, !tbaa !13
  %indvars.iv.next2773 = add nuw nsw i64 %indvars.iv2772, 1
  %exitcond2777.not = icmp eq i64 %indvars.iv.next2773, %wide.trip.count2776
  br i1 %exitcond2777.not, label %for.cond140.preheader, label %for.cond101.preheader, !llvm.loop !29

for.cond144.preheader:                            ; preds = %for.cond144.preheader.lr.ph, %for.end177
  %indvars.iv2789 = phi i64 [ 0, %for.cond144.preheader.lr.ph ], [ %indvars.iv.next2790, %for.end177 ]
  br i1 %cmp1452611.not, label %for.end158, label %for.body147

for.cond184.preheader:                            ; preds = %for.end177, %for.cond140.preheader
  br i1 %cmp982608, label %for.body187.preheader, label %for.end227

for.body187.preheader:                            ; preds = %for.cond184.preheader
  %wide.trip.count2810 = zext i32 %21 to i64
  br label %for.body187

for.body147:                                      ; preds = %for.cond144.preheader, %for.inc156
  %indvars.iv2778 = phi i64 [ %indvars.iv.next2779, %for.inc156 ], [ 0, %for.cond144.preheader ]
  %arrayidx151 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %indvars.iv2789, i64 %indvars.iv2778
  %31 = load double, ptr %arrayidx151, align 8, !tbaa !21
  %cmp152 = fcmp fast une double %31, 0.000000e+00
  br i1 %cmp152, label %for.end158.loopexit.split.loop.exit, label %for.inc156

for.inc156:                                       ; preds = %for.body147
  %indvars.iv.next2779 = add nuw nsw i64 %indvars.iv2778, 1
  %exitcond2783.not = icmp eq i64 %indvars.iv.next2779, %25
  br i1 %exitcond2783.not, label %for.end158, label %for.body147, !llvm.loop !30

for.end158.loopexit.split.loop.exit:              ; preds = %for.body147
  %32 = trunc i64 %indvars.iv2778 to i32
  br label %for.end158

for.end158:                                       ; preds = %for.inc156, %for.end158.loopexit.split.loop.exit, %for.cond144.preheader
  %j.3.lcssa = phi i32 [ 0, %for.cond144.preheader ], [ %32, %for.end158.loopexit.split.loop.exit ], [ %18, %for.inc156 ]
  %arrayidx160 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2789
  store i32 %j.3.lcssa, ptr %arrayidx160, align 8, !tbaa !13
  br label %for.cond163

for.cond163:                                      ; preds = %for.body166, %for.end158
  %indvars.iv2784 = phi i64 [ %indvars.iv.next2785, %for.body166 ], [ %25, %for.end158 ]
  %33 = trunc i64 %indvars.iv2784 to i32
  %cmp164 = icmp sgt i32 %33, 1
  br i1 %cmp164, label %for.body166, label %for.end177

for.body166:                                      ; preds = %for.cond163
  %indvars.iv.next2785 = add nsw i64 %indvars.iv2784, -1
  %idxprom1692587 = and i64 %indvars.iv.next2785, 4294967295
  %arrayidx170 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %indvars.iv2789, i64 %idxprom1692587
  %34 = load double, ptr %arrayidx170, align 8, !tbaa !21
  %cmp171 = fcmp fast une double %34, 0.000000e+00
  br i1 %cmp171, label %for.end177.split.loop.exit, label %for.cond163, !llvm.loop !31

for.end177.split.loop.exit:                       ; preds = %for.body166
  %indvars2787.le = trunc i64 %indvars.iv.next2785 to i32
  br label %for.end177

for.end177:                                       ; preds = %for.cond163, %for.end177.split.loop.exit
  %j.4.lcssa = phi i32 [ %indvars2787.le, %for.end177.split.loop.exit ], [ %26, %for.cond163 ]
  %arrayidx180 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2789, i64 1
  store i32 %j.4.lcssa, ptr %arrayidx180, align 4, !tbaa !13
  %indvars.iv.next2790 = add nuw nsw i64 %indvars.iv2789, 1
  %exitcond2794.not = icmp eq i64 %indvars.iv.next2790, %wide.trip.count2793
  br i1 %exitcond2794.not, label %for.cond184.preheader, label %for.cond144.preheader, !llvm.loop !32

for.body187:                                      ; preds = %for.body187.preheader, %for.end224
  %indvars.iv2806 = phi i64 [ 0, %for.body187.preheader ], [ %indvars.iv.next2807, %for.end224 ]
  %arrayidx189 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2806
  %35 = load i32, ptr %arrayidx189, align 8, !tbaa !13
  %arrayidx194 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2806, i64 1
  %36 = load i32, ptr %arrayidx194, align 4, !tbaa !13
  %cmp195.not2618 = icmp sgt i32 %35, %36
  br i1 %cmp195.not2618, label %for.end224, label %for.body197.preheader

for.body197.preheader:                            ; preds = %for.body187
  %37 = sext i32 %35 to i64
  %38 = add i32 %36, 1
  br label %for.body197

for.cond209.preheader:                            ; preds = %for.body197
  br i1 %cmp195.not2618, label %for.end224, label %for.body215.preheader

for.body215.preheader:                            ; preds = %for.cond209.preheader
  %39 = sext i32 %35 to i64
  %40 = add i32 %36, 1
  %41 = fdiv fast double 1.000000e+00, %add202
  br label %for.body215

for.body197:                                      ; preds = %for.body197.preheader, %for.body197
  %indvars.iv2795 = phi i64 [ %37, %for.body197.preheader ], [ %indvars.iv.next2796, %for.body197 ]
  %norm.02619 = phi double [ 0.000000e+00, %for.body197.preheader ], [ %add202, %for.body197 ]
  %arrayidx201 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %indvars.iv2806, i64 %indvars.iv2795
  %42 = load double, ptr %arrayidx201, align 8, !tbaa !21
  %add202 = fadd fast double %42, %norm.02619
  %indvars.iv.next2796 = add nsw i64 %indvars.iv2795, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next2796 to i32
  %exitcond2799.not = icmp eq i32 %38, %lftr.wideiv
  br i1 %exitcond2799.not, label %for.cond209.preheader, label %for.body197, !llvm.loop !33

for.body215:                                      ; preds = %for.body215.preheader, %for.body215
  %indvars.iv2800 = phi i64 [ %39, %for.body215.preheader ], [ %indvars.iv.next2801, %for.body215 ]
  %arrayidx220 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %indvars.iv2806, i64 %indvars.iv2800
  %43 = load double, ptr %arrayidx220, align 8, !tbaa !21
  %44 = fmul fast double %43, 0x3FD0137987DD704C
  %45 = fmul fast double %44, %41
  store double %45, ptr %arrayidx220, align 8, !tbaa !21
  %indvars.iv.next2801 = add nsw i64 %indvars.iv2800, 1
  %lftr.wideiv2804 = trunc i64 %indvars.iv.next2801 to i32
  %exitcond2805.not = icmp eq i32 %40, %lftr.wideiv2804
  br i1 %exitcond2805.not, label %for.end224, label %for.body215, !llvm.loop !34

for.end224:                                       ; preds = %for.body215, %for.body187, %for.cond209.preheader
  %indvars.iv.next2807 = add nuw nsw i64 %indvars.iv2806, 1
  %exitcond2811.not = icmp eq i64 %indvars.iv.next2807, %wide.trip.count2810
  br i1 %exitcond2811.not, label %for.end227, label %for.body187, !llvm.loop !35

for.end227:                                       ; preds = %for.end224, %for.cond184.preheader
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %46 = load i32, ptr %version, align 8, !tbaa !36
  %cmp228 = icmp eq i32 %46, 1
  %or.cond2742 = select i1 %cmp228, i1 %cmp1412615, i1 false
  br i1 %or.cond2742, label %for.body234.preheader, label %if.end243

for.body234.preheader:                            ; preds = %for.end227
  %wide.trip.count2816 = zext i32 %22 to i64
  br label %for.body234

for.body234:                                      ; preds = %for.body234.preheader, %for.body234
  %indvars.iv2812 = phi i64 [ 0, %for.body234.preheader ], [ %indvars.iv.next2813, %for.body234 ]
  %arrayidx236 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %indvars.iv2812
  %47 = load double, ptr %arrayidx236, align 8, !tbaa !21
  %mul237 = fmul fast double %47, 0x3FCD791C5F888823
  %48 = tail call fast double @llvm.exp.f64(double %mul237)
  store double %48, ptr %arrayidx236, align 8, !tbaa !21
  %indvars.iv.next2813 = add nuw nsw i64 %indvars.iv2812, 1
  %exitcond2817.not = icmp eq i64 %indvars.iv.next2813, %wide.trip.count2816
  br i1 %exitcond2817.not, label %if.end243, label %for.body234, !llvm.loop !37

if.end243:                                        ; preds = %for.body234, %for.end227
  br i1 %cmp1412615, label %for.body247.preheader, label %for.end290

for.body247.preheader:                            ; preds = %if.end243
  %wide.trip.count2834 = zext i32 %22 to i64
  br label %for.body247

for.body247:                                      ; preds = %for.body247.preheader, %for.end287
  %indvars.iv2830 = phi i64 [ 0, %for.body247.preheader ], [ %indvars.iv.next2831, %for.end287 ]
  %arrayidx250 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2830
  %49 = load i32, ptr %arrayidx250, align 8, !tbaa !13
  %arrayidx255 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2830, i64 1
  %50 = load i32, ptr %arrayidx255, align 4, !tbaa !13
  %cmp256.not2629 = icmp sgt i32 %49, %50
  br i1 %cmp256.not2629, label %for.end287, label %for.body258.preheader

for.body258.preheader:                            ; preds = %for.body247
  %51 = sext i32 %49 to i64
  %52 = add i32 %50, 1
  br label %for.body258

for.cond270.preheader:                            ; preds = %for.body258
  br i1 %cmp256.not2629, label %for.end287, label %for.body276.lr.ph

for.body276.lr.ph:                                ; preds = %for.cond270.preheader
  %arrayidx278 = getelementptr inbounds [63 x double], ptr %SNR_s, i64 0, i64 %indvars.iv2830
  %53 = load double, ptr %arrayidx278, align 8, !tbaa !21
  %54 = sext i32 %49 to i64
  %55 = add i32 %50, 1
  %56 = fdiv fast double 1.000000e+00, %add263
  br label %for.body276

for.body258:                                      ; preds = %for.body258.preheader, %for.body258
  %indvars.iv2818 = phi i64 [ %51, %for.body258.preheader ], [ %indvars.iv.next2819, %for.body258 ]
  %norm248.02630 = phi double [ 0.000000e+00, %for.body258.preheader ], [ %add263, %for.body258 ]
  %arrayidx262 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %indvars.iv2830, i64 %indvars.iv2818
  %57 = load double, ptr %arrayidx262, align 8, !tbaa !21
  %add263 = fadd fast double %57, %norm248.02630
  %indvars.iv.next2819 = add nsw i64 %indvars.iv2818, 1
  %lftr.wideiv2822 = trunc i64 %indvars.iv.next2819 to i32
  %exitcond2823.not = icmp eq i32 %52, %lftr.wideiv2822
  br i1 %exitcond2823.not, label %for.cond270.preheader, label %for.body258, !llvm.loop !38

for.body276:                                      ; preds = %for.body276.lr.ph, %for.body276
  %indvars.iv2824 = phi i64 [ %54, %for.body276.lr.ph ], [ %indvars.iv.next2825, %for.body276 ]
  %arrayidx283 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %indvars.iv2830, i64 %indvars.iv2824
  %58 = load double, ptr %arrayidx283, align 8, !tbaa !21
  %59 = fmul fast double %58, %53
  %60 = fmul fast double %59, %56
  store double %60, ptr %arrayidx283, align 8, !tbaa !21
  %indvars.iv.next2825 = add nsw i64 %indvars.iv2824, 1
  %lftr.wideiv2828 = trunc i64 %indvars.iv.next2825 to i32
  %exitcond2829.not = icmp eq i32 %55, %lftr.wideiv2828
  br i1 %exitcond2829.not, label %for.end287, label %for.body276, !llvm.loop !39

for.end287:                                       ; preds = %for.body276, %for.body247, %for.cond270.preheader
  %indvars.iv.next2831 = add nuw nsw i64 %indvars.iv2830, 1
  %exitcond2835.not = icmp eq i64 %indvars.iv.next2831, %wide.trip.count2834
  br i1 %exitcond2835.not, label %for.end290, label %for.body247, !llvm.loop !40

for.end290:                                       ; preds = %for.end287, %if.end243
  tail call void @init_fft() #10
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %SNR_s) #10
  br label %if.end291

if.end291:                                        ; preds = %for.end290, %entry
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %61 = load i32, ptr %stereo, align 4, !tbaa !41
  %mode = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 8
  %62 = load i32, ptr %mode, align 4, !tbaa !42
  %cmp292 = icmp eq i32 %62, 1
  %spec.store.select = select i1 %cmp292, i32 4, i32 %61
  %cmp2972722 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp2972722, label %for.body299.lr.ph, label %if.end1630

for.body299.lr.ph:                                ; preds = %if.end291
  %idxprom330 = sext i32 %gr_out to i64
  %no_short_blocks = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 37
  %wide.trip.count2969 = zext i32 %spec.store.select to i64
  br label %for.body299

for.body299:                                      ; preds = %for.body299.lr.ph, %for.inc1284
  %indvars.iv2964 = phi i64 [ 0, %for.body299.lr.ph ], [ %indvars.iv.next2965, %for.inc1284 ]
  %and = and i64 %indvars.iv2964, 1
  %add.ptr = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and
  %add.ptr302 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %and
  %cmp303 = icmp ult i64 %indvars.iv2964, 2
  br i1 %cmp303, label %if.then305, label %if.else324

if.then305:                                       ; preds = %for.body299
  %63 = trunc i64 %indvars.iv2964 to i32
  tail call void @fft_long(ptr noundef nonnull %add.ptr302, i32 noundef %63, ptr noundef %buffer) #10
  tail call void @fft_short(ptr noundef nonnull %add.ptr, i32 noundef %63, ptr noundef %buffer) #10
  %arrayidx309 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %indvars.iv2964
  %64 = load double, ptr %arrayidx309, align 8, !tbaa !21
  %arrayidx311 = getelementptr inbounds double, ptr %percep_entropy, i64 %indvars.iv2964
  store double %64, ptr %arrayidx311, align 8, !tbaa !21
  %arrayidx315 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %masking_ratio, i64 %idxprom330, i64 %indvars.iv2964
  %arrayidx317 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2964
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %arrayidx315, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx317, i64 488, i1 false), !tbaa.struct !43
  %en = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %masking_ratio, i64 %idxprom330, i64 %indvars.iv2964, i32 1
  %arrayidx323 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %indvars.iv2964
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %en, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx323, i64 488, i1 false), !tbaa.struct !43
  br label %if.end405

if.else324:                                       ; preds = %for.body299
  %arrayidx326 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %indvars.iv2964
  %65 = load double, ptr %arrayidx326, align 8, !tbaa !21
  %66 = add nuw i64 %indvars.iv2964, 4294967294
  %67 = and i64 %66, 4294967295
  %arrayidx329 = getelementptr inbounds double, ptr %percep_MS_entropy, i64 %67
  store double %65, ptr %arrayidx329, align 8, !tbaa !21
  %arrayidx334 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %masking_MS_ratio, i64 %idxprom330, i64 %67
  %en335 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %masking_MS_ratio, i64 %idxprom330, i64 %67, i32 1
  %arrayidx337 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %indvars.iv2964
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %en335, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx337, i64 488, i1 false), !tbaa.struct !43
  %arrayidx345 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2964
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %arrayidx334, ptr noundef nonnull align 8 dereferenceable(488) %arrayidx345, i64 488, i1 false), !tbaa.struct !43
  %cmp346 = icmp eq i64 %indvars.iv2964, 2
  br i1 %cmp346, label %for.body352, label %if.end405

for.body352:                                      ; preds = %if.else324, %for.body352
  %indvars.iv2836 = phi i64 [ %indvars.iv.next2837, %for.body352 ], [ 1023, %if.else324 ]
  %arrayidx354 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 0, i64 %indvars.iv2836
  %68 = load float, ptr %arrayidx354, align 4, !tbaa !17
  %arrayidx356 = getelementptr inbounds [2 x [1024 x float]], ptr @L3psycho_anal.wsamp_L, i64 0, i64 1, i64 %indvars.iv2836
  %69 = load float, ptr %arrayidx356, align 4, !tbaa !17
  %add357 = fadd fast float %69, %68
  %mul358 = fmul fast float %add357, 0x3FE6A09E60000000
  store float %mul358, ptr %arrayidx354, align 4, !tbaa !17
  %sub361 = fsub fast float %68, %69
  %mul362 = fmul fast float %sub361, 0x3FE6A09E60000000
  store float %mul362, ptr %arrayidx356, align 4, !tbaa !17
  %indvars.iv.next2837 = add nsw i64 %indvars.iv2836, -1
  %cmp350.not = icmp eq i64 %indvars.iv2836, 0
  br i1 %cmp350.not, label %for.cond372.preheader, label %for.body352, !llvm.loop !45

for.cond372.preheader:                            ; preds = %for.body352, %for.inc401
  %indvars.iv2844 = phi i64 [ %indvars.iv.next2845, %for.inc401 ], [ 2, %for.body352 ]
  br label %for.body375

for.body375:                                      ; preds = %for.cond372.preheader, %for.body375
  %indvars.iv2840 = phi i64 [ 255, %for.cond372.preheader ], [ %indvars.iv.next2841, %for.body375 ]
  %arrayidx380 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 %indvars.iv2844, i64 %indvars.iv2840
  %70 = load float, ptr %arrayidx380, align 4, !tbaa !17
  %arrayidx385 = getelementptr inbounds [2 x [3 x [256 x float]]], ptr @L3psycho_anal.wsamp_S, i64 0, i64 1, i64 %indvars.iv2844, i64 %indvars.iv2840
  %71 = load float, ptr %arrayidx385, align 4, !tbaa !17
  %add386 = fadd fast float %71, %70
  %mul387 = fmul fast float %add386, 0x3FE6A09E60000000
  store float %mul387, ptr %arrayidx380, align 4, !tbaa !17
  %sub392 = fsub fast float %70, %71
  %mul393 = fmul fast float %sub392, 0x3FE6A09E60000000
  store float %mul393, ptr %arrayidx385, align 4, !tbaa !17
  %indvars.iv.next2841 = add nsw i64 %indvars.iv2840, -1
  %cmp373.not = icmp eq i64 %indvars.iv2840, 0
  br i1 %cmp373.not, label %for.inc401, label %for.body375, !llvm.loop !46

for.inc401:                                       ; preds = %for.body375
  %indvars.iv.next2845 = add nsw i64 %indvars.iv2844, -1
  %cmp369.not = icmp eq i64 %indvars.iv2844, 0
  br i1 %cmp369.not, label %if.end405, label %for.cond372.preheader, !llvm.loop !47

if.end405:                                        ; preds = %for.inc401, %if.else324, %if.then305
  %72 = load float, ptr %add.ptr302, align 16, !tbaa !17
  %mul407 = fmul fast float %72, %72
  store float %mul407, ptr @L3psycho_anal.energy, align 16, !tbaa !17
  %arrayidx409 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 %indvars.iv2964
  br label %for.body413

for.cond436.preheader:                            ; preds = %for.body413
  store float %add432, ptr %arrayidx409, align 4, !tbaa !17
  br label %for.body439

for.body413:                                      ; preds = %if.end405, %for.body413
  %indvars.iv2848 = phi i64 [ 511, %if.end405 ], [ %indvars.iv.next2849, %for.body413 ]
  %73 = phi float [ %mul407, %if.end405 ], [ %add432, %for.body413 ]
  %74 = sub nuw nsw i64 512, %indvars.iv2848
  %arrayidx416 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %and, i64 %74
  %75 = load float, ptr %arrayidx416, align 4, !tbaa !17
  %76 = add nuw nsw i64 %indvars.iv2848, 512
  %arrayidx419 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %and, i64 %76
  %77 = load float, ptr %arrayidx419, align 4, !tbaa !17
  %mul420 = fmul fast float %75, %75
  %mul421 = fmul fast float %77, %77
  %add422 = fadd fast float %mul421, %mul420
  %mul423 = fmul fast float %add422, 5.000000e-01
  %arrayidx426 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %74
  store float %mul423, ptr %arrayidx426, align 4, !tbaa !17
  %add432 = fadd fast float %mul423, %73
  %indvars.iv.next2849 = add nsw i64 %indvars.iv2848, -1
  %cmp411.not = icmp eq i64 %indvars.iv2848, 0
  br i1 %cmp411.not, label %for.cond436.preheader, label %for.body413, !llvm.loop !48

for.cond484.preheader:                            ; preds = %for.inc481
  %.b = load i1, ptr @L3psycho_anal.cw_lower_index, align 4
  %78 = select i1 %.b, i32 6, i32 0
  br i1 %.b, label %for.body487.lr.ph, label %for.cond623.preheader

for.body487.lr.ph:                                ; preds = %for.cond484.preheader
  %arrayidx489 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %indvars.iv2964
  %arrayidx494 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %indvars.iv2964
  %arrayidx499 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %indvars.iv2964
  %umax = call i32 @llvm.umax.i32(i32 %78, i32 1)
  %wide.trip.count2869 = zext i32 %umax to i64
  br label %for.body487

for.body439:                                      ; preds = %for.cond436.preheader, %for.inc481
  %indvars.iv2860 = phi i64 [ 2, %for.cond436.preheader ], [ %indvars.iv.next2861, %for.inc481 ]
  %arrayidx441 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 %indvars.iv2860
  %79 = load float, ptr %arrayidx441, align 16, !tbaa !17
  %arrayidx444 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %indvars.iv2860
  %mul452 = fmul fast float %79, %79
  store float %mul452, ptr %arrayidx444, align 4, !tbaa !17
  br label %for.body456

for.body456:                                      ; preds = %for.body439, %for.body456
  %indvars.iv2854 = phi i64 [ 127, %for.body439 ], [ %indvars.iv.next2855, %for.body456 ]
  %80 = sub nuw nsw i64 128, %indvars.iv2854
  %arrayidx462 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 %indvars.iv2860, i64 %80
  %81 = load float, ptr %arrayidx462, align 4, !tbaa !17
  %82 = add nuw nsw i64 %indvars.iv2854, 128
  %arrayidx468 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 %indvars.iv2860, i64 %82
  %83 = load float, ptr %arrayidx468, align 4, !tbaa !17
  %mul469 = fmul fast float %81, %81
  %mul470 = fmul fast float %83, %83
  %add471 = fadd fast float %mul470, %mul469
  %mul472 = fmul fast float %add471, 5.000000e-01
  %arrayidx477 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %indvars.iv2860, i64 %80
  store float %mul472, ptr %arrayidx477, align 4, !tbaa !17
  %indvars.iv.next2855 = add nsw i64 %indvars.iv2854, -1
  %cmp454.not = icmp eq i64 %indvars.iv2854, 0
  br i1 %cmp454.not, label %for.inc481, label %for.body456, !llvm.loop !49

for.inc481:                                       ; preds = %for.body456
  %indvars.iv.next2861 = add nsw i64 %indvars.iv2860, -1
  %cmp437.not = icmp eq i64 %indvars.iv2860, 0
  br i1 %cmp437.not, label %for.cond484.preheader, label %for.body439, !llvm.loop !50

for.cond623.preheader:                            ; preds = %if.end617, %for.cond484.preheader
  %84 = load i32, ptr @L3psycho_anal.cw_upper_index, align 4, !tbaa !13
  %cmp6242649 = icmp slt i32 %78, %84
  br i1 %cmp6242649, label %for.body626.preheader, label %for.cond745.preheader

for.body626.preheader:                            ; preds = %for.cond623.preheader
  %85 = zext i32 %78 to i64
  %86 = sext i32 %84 to i64
  br label %for.body626

for.body487:                                      ; preds = %for.body487.lr.ph, %if.end617
  %indvars.iv2864 = phi i64 [ 0, %for.body487.lr.ph ], [ %indvars.iv.next2865, %if.end617 ]
  %arrayidx492 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.ax_sav, i64 0, i64 %indvars.iv2964, i64 1, i64 %indvars.iv2864
  %87 = load float, ptr %arrayidx492, align 4, !tbaa !17
  %arrayidx497 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.bx_sav, i64 0, i64 %indvars.iv2964, i64 1, i64 %indvars.iv2864
  %88 = load float, ptr %arrayidx497, align 4, !tbaa !17
  %arrayidx502 = getelementptr inbounds [4 x [2 x [513 x float]]], ptr @L3psycho_anal.rx_sav, i64 0, i64 %indvars.iv2964, i64 1, i64 %indvars.iv2864
  %89 = load float, ptr %arrayidx502, align 4, !tbaa !17
  %arrayidx507 = getelementptr inbounds [513 x float], ptr %arrayidx489, i64 0, i64 %indvars.iv2864
  %90 = load float, ptr %arrayidx507, align 4, !tbaa !17
  store float %90, ptr %arrayidx492, align 4, !tbaa !17
  %arrayidx517 = getelementptr inbounds [513 x float], ptr %arrayidx494, i64 0, i64 %indvars.iv2864
  %91 = load float, ptr %arrayidx517, align 4, !tbaa !17
  store float %91, ptr %arrayidx497, align 4, !tbaa !17
  %arrayidx527 = getelementptr inbounds [513 x float], ptr %arrayidx499, i64 0, i64 %indvars.iv2864
  %92 = load float, ptr %arrayidx527, align 4, !tbaa !17
  store float %92, ptr %arrayidx502, align 4, !tbaa !17
  %arrayidx534 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %and, i64 %indvars.iv2864
  %93 = load float, ptr %arrayidx534, align 4, !tbaa !17
  store float %93, ptr %arrayidx507, align 4, !tbaa !17
  %cmp540 = icmp eq i64 %indvars.iv2864, 0
  br i1 %cmp540, label %cond.end548, label %cond.false544

cond.false544:                                    ; preds = %for.body487
  %94 = sub nuw nsw i64 1024, %indvars.iv2864
  %arrayidx547 = getelementptr inbounds [1024 x float], ptr @L3psycho_anal.wsamp_L, i64 %and, i64 %94
  br label %cond.end548

cond.end548:                                      ; preds = %for.body487, %cond.false544
  %cond549.in = phi ptr [ %arrayidx547, %cond.false544 ], [ %add.ptr302, %for.body487 ]
  %cond549 = load float, ptr %cond549.in, align 4, !tbaa !17
  store float %cond549, ptr %arrayidx517, align 4, !tbaa !17
  %arrayidx556 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %indvars.iv2864
  %95 = load float, ptr %arrayidx556, align 4, !tbaa !17
  %96 = tail call fast float @llvm.sqrt.f32(float %95)
  store float %96, ptr %arrayidx527, align 4, !tbaa !17
  %cmp564 = fcmp fast une float %92, 0.000000e+00
  br i1 %cmp564, label %if.then566, label %if.end574

if.then566:                                       ; preds = %cond.end548
  %mul567 = fmul fast float %91, %90
  %mul568 = fmul fast float %90, %90
  %mul569 = fmul fast float %91, %91
  %sub570 = fsub fast float %mul568, %mul569
  %mul571 = fmul fast float %sub570, 5.000000e-01
  %mul572 = fmul fast float %92, %92
  br label %if.end574

if.end574:                                        ; preds = %cond.end548, %if.then566
  %den.0 = phi float [ %mul572, %if.then566 ], [ 1.000000e+00, %cond.end548 ]
  %numim.0 = phi float [ %mul571, %if.then566 ], [ 0.000000e+00, %cond.end548 ]
  %numre.0 = phi float [ %mul567, %if.then566 ], [ 1.000000e+00, %cond.end548 ]
  %cmp575 = fcmp fast une float %89, 0.000000e+00
  br i1 %cmp575, label %if.then577, label %if.end589

if.then577:                                       ; preds = %if.end574
  %add578 = fadd fast float %numre.0, %numim.0
  %add579 = fadd fast float %88, %87
  %mul580 = fmul fast float %add579, 5.000000e-01
  %mul581 = fmul fast float %mul580, %add578
  %97 = fmul fast float %numre.0, %87
  %add583 = fsub fast float %mul581, %97
  %98 = fmul fast float %numim.0, %88
  %add586 = fsub fast float %mul581, %98
  %mul587 = fmul fast float %den.0, %89
  br label %if.end589

if.end589:                                        ; preds = %if.end574, %if.then577
  %den.1 = phi float [ %mul587, %if.then577 ], [ %den.0, %if.end574 ]
  %numim.1 = phi float [ %add583, %if.then577 ], [ %numim.0, %if.end574 ]
  %numre.1 = phi float [ %add586, %if.then577 ], [ %numre.0, %if.end574 ]
  %mul590 = fmul fast float %92, 2.000000e+00
  %sub591 = fsub fast float %mul590, %89
  %99 = tail call fast float @llvm.fabs.f32(float %sub591)
  %conv600 = fadd fast float %96, %99
  %cmp601 = fcmp fast une float %conv600, 0.000000e+00
  br i1 %cmp601, label %if.then603, label %if.end617

if.then603:                                       ; preds = %if.end589
  %div592 = fdiv fast float %sub591, %den.1
  %mul594 = fmul fast float %numim.1, %div592
  %mul593 = fmul fast float %numre.1, %div592
  %add604 = fadd fast float %cond549, %93
  %mul605 = fmul fast float %add604, 5.000000e-01
  %sub606 = fsub fast float %mul605, %mul593
  %sub607 = fsub fast float %93, %cond549
  %mul608 = fmul fast float %sub607, 5.000000e-01
  %sub609 = fsub fast float %mul608, %mul594
  %mul610 = fmul fast float %sub606, %sub606
  %mul611 = fmul fast float %sub609, %sub609
  %add612 = fadd fast float %mul610, %mul611
  %conv613 = fpext float %add612 to double
  %100 = tail call fast double @llvm.sqrt.f64(double %conv613)
  %conv614 = fpext float %conv600 to double
  %div615 = fdiv fast double %100, %conv614
  %conv616 = fptrunc double %div615 to float
  br label %if.end617

if.end617:                                        ; preds = %if.then603, %if.end589
  %den.2 = phi float [ %conv616, %if.then603 ], [ %conv600, %if.end589 ]
  %arrayidx619 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %indvars.iv2864
  store float %den.2, ptr %arrayidx619, align 4, !tbaa !17
  %indvars.iv.next2865 = add nuw nsw i64 %indvars.iv2864, 1
  %exitcond2870.not = icmp eq i64 %indvars.iv.next2865, %wide.trip.count2869
  br i1 %exitcond2870.not, label %for.cond623.preheader, label %for.body487, !llvm.loop !51

for.cond745.preheader:                            ; preds = %if.end730, %for.cond623.preheader
  %cmp7462661 = icmp sgt i32 %84, 0
  br i1 %cmp7462661, label %for.body748, label %for.cond788.preheader

for.body626:                                      ; preds = %for.body626.preheader, %if.end730
  %indvars.iv2871 = phi i64 [ %85, %for.body626.preheader ], [ %indvars.iv.next2872, %if.end730 ]
  %101 = add nuw nsw i64 %indvars.iv2871, 2
  %102 = lshr i64 %101, 2
  %arrayidx636 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %102
  %103 = load float, ptr %arrayidx636, align 4, !tbaa !17
  %cmp637 = fcmp fast une float %103, 0.000000e+00
  br i1 %cmp637, label %if.then639, label %if.end657

if.then639:                                       ; preds = %for.body626
  %arrayidx643 = getelementptr inbounds [256 x float], ptr %add.ptr, i64 0, i64 %102
  %104 = load float, ptr %arrayidx643, align 4, !tbaa !17
  %105 = sub nsw i64 256, %102
  %arrayidx648 = getelementptr inbounds [256 x float], ptr %add.ptr, i64 0, i64 %105
  %106 = load float, ptr %arrayidx648, align 4, !tbaa !17
  %mul649 = fmul fast float %106, %104
  %mul650 = fmul fast float %104, %104
  %mul651 = fmul fast float %106, %106
  %sub652 = fsub fast float %mul650, %mul651
  %mul653 = fmul fast float %sub652, 5.000000e-01
  %107 = tail call fast float @llvm.sqrt.f32(float %103)
  br label %if.end657

if.end657:                                        ; preds = %for.body626, %if.then639
  %r1628.0 = phi float [ %107, %if.then639 ], [ %103, %for.body626 ]
  %numre630.0 = phi float [ %mul649, %if.then639 ], [ 1.000000e+00, %for.body626 ]
  %numim631.0 = phi float [ %mul653, %if.then639 ], [ 0.000000e+00, %for.body626 ]
  %den632.0 = phi float [ %103, %if.then639 ], [ 1.000000e+00, %for.body626 ]
  %arrayidx659 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %102
  %108 = load float, ptr %arrayidx659, align 4, !tbaa !17
  %cmp660 = fcmp fast une float %108, 0.000000e+00
  br i1 %cmp660, label %if.then662, label %if.end688

if.then662:                                       ; preds = %if.end657
  %arrayidx666 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 2, i64 %102
  %109 = load float, ptr %arrayidx666, align 4, !tbaa !17
  %110 = sub nsw i64 256, %102
  %arrayidx671 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 2, i64 %110
  %111 = load float, ptr %arrayidx671, align 4, !tbaa !17
  %add673 = fadd fast float %numim631.0, %numre630.0
  %add674 = fadd fast float %111, %109
  %mul675 = fmul fast float %add673, 5.000000e-01
  %mul676 = fmul fast float %mul675, %add674
  %112 = fmul fast float %109, %numre630.0
  %add680 = fsub fast float %mul676, %112
  %113 = fmul fast float %111, %numim631.0
  %add683 = fsub fast float %mul676, %113
  %114 = tail call fast float @llvm.sqrt.f32(float %108)
  %mul686 = fmul fast float %114, %den632.0
  br label %if.end688

if.end688:                                        ; preds = %if.end657, %if.then662
  %r2629.0 = phi float [ %114, %if.then662 ], [ %108, %if.end657 ]
  %numre630.1 = phi float [ %add683, %if.then662 ], [ %numre630.0, %if.end657 ]
  %numim631.1 = phi float [ %add680, %if.then662 ], [ %numim631.0, %if.end657 ]
  %den632.1 = phi float [ %mul686, %if.then662 ], [ %den632.0, %if.end657 ]
  %mul690 = fmul fast float %r1628.0, 2.000000e+00
  %sub691 = fsub fast float %mul690, %r2629.0
  %arrayidx696 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %102
  %115 = load float, ptr %arrayidx696, align 4, !tbaa !17
  %116 = tail call fast float @llvm.sqrt.f32(float %115)
  %117 = tail call fast float @llvm.fabs.f32(float %sub691)
  %conv704 = fadd fast float %116, %117
  %cmp705 = fcmp fast une float %conv704, 0.000000e+00
  br i1 %cmp705, label %if.then707, label %if.end730

if.then707:                                       ; preds = %if.end688
  %div692 = fdiv fast float %sub691, %den632.1
  %mul694 = fmul fast float %div692, %numim631.1
  %mul693 = fmul fast float %div692, %numre630.1
  %arrayidx711 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 1, i64 %102
  %118 = load float, ptr %arrayidx711, align 4, !tbaa !17
  %119 = sub nsw i64 256, %102
  %arrayidx716 = getelementptr inbounds [3 x [256 x float]], ptr @L3psycho_anal.wsamp_S, i64 %and, i64 1, i64 %119
  %120 = load float, ptr %arrayidx716, align 4, !tbaa !17
  %add717 = fadd fast float %120, %118
  %mul718 = fmul fast float %add717, 5.000000e-01
  %sub719 = fsub fast float %mul718, %mul693
  %sub720 = fsub fast float %118, %120
  %mul721 = fmul fast float %sub720, 5.000000e-01
  %sub722 = fsub fast float %mul721, %mul694
  %mul723 = fmul fast float %sub719, %sub719
  %mul724 = fmul fast float %sub722, %sub722
  %add725 = fadd fast float %mul723, %mul724
  %conv726 = fpext float %add725 to double
  %121 = tail call fast double @llvm.sqrt.f64(double %conv726)
  %conv727 = fpext float %conv704 to double
  %div728 = fdiv fast double %121, %conv727
  %conv729 = fptrunc double %div728 to float
  br label %if.end730

if.end730:                                        ; preds = %if.then707, %if.end688
  %den632.2 = phi float [ %conv729, %if.then707 ], [ %conv704, %if.end688 ]
  %arrayidx732 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %indvars.iv2871
  store float %den632.2, ptr %arrayidx732, align 8, !tbaa !17
  %122 = add nuw i64 %indvars.iv2871, 3
  %idxprom734 = and i64 %122, 4294967295
  %arrayidx735 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom734
  store float %den632.2, ptr %arrayidx735, align 4, !tbaa !17
  %arrayidx738 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %101
  store float %den632.2, ptr %arrayidx738, align 8, !tbaa !17
  %123 = or i64 %indvars.iv2871, 1
  %arrayidx741 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %123
  store float %den632.2, ptr %arrayidx741, align 4, !tbaa !17
  %indvars.iv.next2872 = add nuw nsw i64 %indvars.iv2871, 4
  %cmp624 = icmp slt i64 %indvars.iv.next2872, %86
  br i1 %cmp624, label %for.body626, label %for.cond745.preheader, !llvm.loop !52

for.cond788.preheader.loopexit:                   ; preds = %for.end781
  %124 = trunc i64 %indvars.iv.next2887 to i32
  br label %for.cond788.preheader

for.cond788.preheader:                            ; preds = %for.cond788.preheader.loopexit, %for.cond745.preheader
  %j.11.lcssa = phi i32 [ 0, %for.cond745.preheader ], [ %j.12.lcssa, %for.cond788.preheader.loopexit ]
  %b.5.lcssa = phi i32 [ 0, %for.cond745.preheader ], [ %124, %for.cond788.preheader.loopexit ]
  %125 = load i32, ptr @L3psycho_anal.npart_l_orig, align 4, !tbaa !13
  %cmp7892673 = icmp slt i32 %b.5.lcssa, %125
  br i1 %cmp7892673, label %for.body791.preheader, label %for.end820

for.body791.preheader:                            ; preds = %for.cond788.preheader
  %126 = zext i32 %b.5.lcssa to i64
  br label %for.body791

for.body748:                                      ; preds = %for.cond745.preheader, %for.end781
  %indvars.iv2886 = phi i64 [ %indvars.iv.next2887, %for.end781 ], [ 0, %for.cond745.preheader ]
  %j.112662 = phi i32 [ %j.12.lcssa, %for.end781 ], [ 0, %for.cond745.preheader ]
  %idxprom750 = sext i32 %j.112662 to i64
  %arrayidx751 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom750
  %127 = load float, ptr %arrayidx751, align 4, !tbaa !17
  %conv752 = fpext float %127 to double
  %arrayidx756 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %idxprom750
  %128 = load float, ptr %arrayidx756, align 4, !tbaa !17
  %mul757 = fmul fast float %128, %127
  %conv758 = fpext float %mul757 to double
  %arrayidx761 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %indvars.iv2886
  %129 = load i32, ptr %arrayidx761, align 4, !tbaa !13
  %j.122652 = add nsw i32 %j.112662, 1
  %cmp7642653 = icmp sgt i32 %129, 1
  br i1 %cmp7642653, label %for.body766.preheader, label %for.end781

for.body766.preheader:                            ; preds = %for.body748
  %130 = sext i32 %j.122652 to i64
  br label %for.body766

for.body766:                                      ; preds = %for.body766.preheader, %for.body766
  %indvars.iv2882 = phi i64 [ %130, %for.body766.preheader ], [ %indvars.iv.next2883, %for.body766 ]
  %i749.0.in2656 = phi i32 [ %129, %for.body766.preheader ], [ %i749.0, %for.body766 ]
  %cbb.02655 = phi double [ %conv758, %for.body766.preheader ], [ %add777, %for.body766 ]
  %ebb.02654 = phi double [ %conv752, %for.body766.preheader ], [ %add770, %for.body766 ]
  %i749.0 = add nsw i32 %i749.0.in2656, -1
  %arrayidx768 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %indvars.iv2882
  %131 = load float, ptr %arrayidx768, align 4, !tbaa !17
  %conv769 = fpext float %131 to double
  %add770 = fadd fast double %ebb.02654, %conv769
  %arrayidx774 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.cw, i64 0, i64 %indvars.iv2882
  %132 = load float, ptr %arrayidx774, align 4, !tbaa !17
  %mul775 = fmul fast float %132, %131
  %conv776 = fpext float %mul775 to double
  %add777 = fadd fast double %cbb.02655, %conv776
  %indvars.iv.next2883 = add nsw i64 %indvars.iv2882, 1
  %cmp764 = icmp ugt i32 %i749.0.in2656, 2
  br i1 %cmp764, label %for.body766, label %for.end781.loopexit, !llvm.loop !53

for.end781.loopexit:                              ; preds = %for.body766
  %133 = add i32 %j.112662, %129
  br label %for.end781

for.end781:                                       ; preds = %for.end781.loopexit, %for.body748
  %ebb.0.lcssa = phi double [ %conv752, %for.body748 ], [ %add770, %for.end781.loopexit ]
  %cbb.0.lcssa = phi double [ %conv758, %for.body748 ], [ %add777, %for.end781.loopexit ]
  %j.12.lcssa = phi i32 [ %j.122652, %for.body748 ], [ %133, %for.end781.loopexit ]
  %arrayidx783 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2886
  store double %ebb.0.lcssa, ptr %arrayidx783, align 8, !tbaa !21
  %arrayidx785 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %indvars.iv2886
  store double %cbb.0.lcssa, ptr %arrayidx785, align 8, !tbaa !21
  %indvars.iv.next2887 = add nuw i64 %indvars.iv2886, 1
  %cmp746 = icmp slt i32 %j.12.lcssa, %84
  br i1 %cmp746, label %for.body748, label %for.cond788.preheader.loopexit, !llvm.loop !54

for.body791:                                      ; preds = %for.body791.preheader, %for.end812
  %indvars.iv2894 = phi i64 [ %126, %for.body791.preheader ], [ %indvars.iv.next2895, %for.end812 ]
  %j.132674 = phi i32 [ %j.11.lcssa, %for.body791.preheader ], [ %j.14.lcssa, %for.end812 ]
  %idxprom795 = sext i32 %j.132674 to i64
  %arrayidx796 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %idxprom795
  %134 = load float, ptr %arrayidx796, align 4, !tbaa !17
  %conv797 = fpext float %134 to double
  %arrayidx799 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %indvars.iv2894
  %135 = load i32, ptr %arrayidx799, align 4, !tbaa !13
  %j.142666 = add i32 %j.132674, 1
  %cmp8022667 = icmp sgt i32 %135, 1
  br i1 %cmp8022667, label %for.body804.preheader, label %for.end812

for.body804.preheader:                            ; preds = %for.body791
  %136 = sext i32 %j.142666 to i64
  br label %for.body804

for.body804:                                      ; preds = %for.body804.preheader, %for.body804
  %indvars.iv2890 = phi i64 [ %136, %for.body804.preheader ], [ %indvars.iv.next2891, %for.body804 ]
  %ebb793.02669 = phi double [ %conv797, %for.body804.preheader ], [ %add809, %for.body804 ]
  %i792.0.in2668 = phi i32 [ %135, %for.body804.preheader ], [ %i792.0, %for.body804 ]
  %i792.0 = add nsw i32 %i792.0.in2668, -1
  %arrayidx807 = getelementptr inbounds [513 x float], ptr @L3psycho_anal.energy, i64 0, i64 %indvars.iv2890
  %137 = load float, ptr %arrayidx807, align 4, !tbaa !17
  %conv808 = fpext float %137 to double
  %add809 = fadd fast double %ebb793.02669, %conv808
  %indvars.iv.next2891 = add nsw i64 %indvars.iv2890, 1
  %cmp802 = icmp ugt i32 %i792.0.in2668, 2
  br i1 %cmp802, label %for.body804, label %for.end812.loopexit, !llvm.loop !55

for.end812.loopexit:                              ; preds = %for.body804
  %138 = add i32 %j.132674, %135
  br label %for.end812

for.end812:                                       ; preds = %for.end812.loopexit, %for.body791
  %ebb793.0.lcssa = phi double [ %conv797, %for.body791 ], [ %add809, %for.end812.loopexit ]
  %j.14.lcssa = phi i32 [ %j.142666, %for.body791 ], [ %138, %for.end812.loopexit ]
  %arrayidx814 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2894
  store double %ebb793.0.lcssa, ptr %arrayidx814, align 8, !tbaa !21
  %mul815 = fmul fast double %ebb793.0.lcssa, 4.000000e-01
  %arrayidx817 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %indvars.iv2894
  store double %mul815, ptr %arrayidx817, align 8, !tbaa !21
  %indvars.iv.next2895 = add nuw nsw i64 %indvars.iv2894, 1
  %139 = trunc i64 %indvars.iv.next2895 to i32
  %cmp789 = icmp sgt i32 %125, %139
  br i1 %cmp789, label %for.body791, label %for.end820, !llvm.loop !56

for.end820:                                       ; preds = %for.end812, %for.cond788.preheader
  %arrayidx822 = getelementptr inbounds [4 x double], ptr @L3psycho_anal.pe, i64 0, i64 %indvars.iv2964
  store double 0.000000e+00, ptr %arrayidx822, align 8, !tbaa !21
  %140 = load i32, ptr @L3psycho_anal.npart_l, align 4, !tbaa !13
  %cmp8242682 = icmp sgt i32 %140, 0
  br i1 %cmp8242682, label %for.body826.preheader, label %for.end988

for.body826.preheader:                            ; preds = %for.end820
  %wide.trip.count2908 = zext i32 %140 to i64
  br label %for.body826

for.body826:                                      ; preds = %for.body826.preheader, %if.end985
  %141 = phi double [ 0.000000e+00, %for.body826.preheader ], [ %161, %if.end985 ]
  %indvars.iv2904 = phi i64 [ 0, %for.body826.preheader ], [ %indvars.iv.next2905, %if.end985 ]
  %arrayidx828 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2904
  %142 = load i32, ptr %arrayidx828, align 8, !tbaa !13
  %arrayidx833 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind, i64 0, i64 %indvars.iv2904, i64 1
  %143 = load i32, ptr %arrayidx833, align 4, !tbaa !13
  %cmp834.not2676 = icmp sgt i32 %142, %143
  br i1 %cmp834.not2676, label %if.end872, label %for.body836.preheader

for.body836.preheader:                            ; preds = %for.body826
  %144 = sext i32 %142 to i64
  %145 = add i32 %143, 1
  br label %for.body836

for.body836:                                      ; preds = %for.body836.preheader, %for.body836
  %indvars.iv2898 = phi i64 [ %144, %for.body836.preheader ], [ %indvars.iv.next2899, %for.body836 ]
  %ctb.02679 = phi double [ 0.000000e+00, %for.body836.preheader ], [ %add852, %for.body836 ]
  %ecb.02678 = phi double [ 0.000000e+00, %for.body836.preheader ], [ %add844, %for.body836 ]
  %arrayidx840 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_l, i64 0, i64 %indvars.iv2904, i64 %indvars.iv2898
  %146 = load double, ptr %arrayidx840, align 8, !tbaa !21
  %arrayidx842 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2898
  %147 = load double, ptr %arrayidx842, align 8, !tbaa !21
  %mul843 = fmul fast double %147, %146
  %add844 = fadd fast double %mul843, %ecb.02678
  %arrayidx850 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.cb, i64 0, i64 %indvars.iv2898
  %148 = load double, ptr %arrayidx850, align 8, !tbaa !21
  %mul851 = fmul fast double %148, %146
  %add852 = fadd fast double %mul851, %ctb.02679
  %indvars.iv.next2899 = add nsw i64 %indvars.iv2898, 1
  %lftr.wideiv2902 = trunc i64 %indvars.iv.next2899 to i32
  %exitcond2903.not = icmp eq i32 %145, %lftr.wideiv2902
  br i1 %exitcond2903.not, label %for.end855, label %for.body836, !llvm.loop !57

for.end855:                                       ; preds = %for.body836
  %cmp856 = fcmp fast une double %add844, 0.000000e+00
  br i1 %cmp856, label %if.then858, label %if.end872

if.then858:                                       ; preds = %for.end855
  %div859 = fdiv fast double %add852, %add844
  %cmp860 = fcmp fast ugt double %div859, 0x3FA8F6869E6F084D
  br i1 %cmp860, label %if.else863, label %if.end872

if.else863:                                       ; preds = %if.then858
  %cmp864 = fcmp fast ogt double %div859, 0x3FDFEDFBDEEA22F7
  br i1 %cmp864, label %if.end872, label %if.else867

if.else867:                                       ; preds = %if.else863
  %149 = tail call fast double @llvm.log.f64(double %div859)
  %mul868 = fmul fast double %149, 0x3FF30298B36105E3
  %add869 = fadd fast double %mul868, 0x3FEA6FF6E4078667
  %150 = tail call fast double @llvm.exp.f64(double %add869)
  br label %if.end872

if.end872:                                        ; preds = %for.body826, %if.else863, %if.then858, %if.else867, %for.end855
  %ecb.0.lcssa3014 = phi double [ %add844, %if.else867 ], [ %add844, %for.end855 ], [ %add844, %if.then858 ], [ %add844, %if.else863 ], [ 0.000000e+00, %for.body826 ]
  %tbb.0 = phi double [ %150, %if.else867 ], [ %add844, %for.end855 ], [ 0x3FB0270AC3F8A9F9, %if.then858 ], [ 1.000000e+00, %if.else863 ], [ 0.000000e+00, %for.body826 ]
  %arrayidx874 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.minval, i64 0, i64 %indvars.iv2904
  %151 = load double, ptr %arrayidx874, align 8, !tbaa !21
  %152 = tail call fast double @llvm.minnum.f64(double %151, double %tbb.0)
  %mul883 = fmul fast double %152, %ecb.0.lcssa3014
  %arrayidx887 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_1, i64 0, i64 %indvars.iv2964, i64 %indvars.iv2904
  %153 = load double, ptr %arrayidx887, align 8, !tbaa !21
  %mul888 = fmul fast double %153, 2.000000e+00
  %arrayidx892 = getelementptr inbounds [4 x [63 x double]], ptr @L3psycho_anal.nb_2, i64 0, i64 %indvars.iv2964, i64 %indvars.iv2904
  %154 = load double, ptr %arrayidx892, align 8, !tbaa !21
  %mul893 = fmul fast double %154, 1.600000e+01
  %cmp894 = fcmp fast olt double %mul888, %mul893
  br i1 %cmp894, label %cond.end908, label %cond.false902

cond.false902:                                    ; preds = %if.end872
  br label %cond.end908

cond.end908:                                      ; preds = %if.end872, %cond.false902
  %cond909 = phi fast double [ %mul893, %cond.false902 ], [ %mul888, %if.end872 ]
  %cmp910 = fcmp fast olt double %mul883, %cond909
  br i1 %cmp910, label %cond.end940, label %cond.false913

cond.false913:                                    ; preds = %cond.end908
  %155 = tail call fast double @llvm.minnum.f64(double %mul888, double %mul893)
  br label %cond.end940

cond.end940:                                      ; preds = %cond.false913, %cond.end908
  %cond941 = phi fast double [ %mul883, %cond.end908 ], [ %155, %cond.false913 ]
  %arrayidx943 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_l, i64 0, i64 %indvars.iv2904
  %156 = load double, ptr %arrayidx943, align 8, !tbaa !21
  %157 = tail call fast double @llvm.maxnum.f64(double %156, double %cond941)
  %arrayidx953 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %indvars.iv2904
  store double %157, ptr %arrayidx953, align 8, !tbaa !21
  store double %153, ptr %arrayidx892, align 8, !tbaa !21
  store double %mul883, ptr %arrayidx887, align 8, !tbaa !21
  %arrayidx969 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2904
  %158 = load double, ptr %arrayidx969, align 8, !tbaa !21
  %cmp970 = fcmp fast olt double %157, %158
  br i1 %cmp970, label %if.then972, label %if.end985

if.then972:                                       ; preds = %cond.end940
  %arrayidx974 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_l, i64 0, i64 %indvars.iv2904
  %159 = load i32, ptr %arrayidx974, align 4, !tbaa !13
  %conv975 = sitofp i32 %159 to double
  %div980 = fdiv fast double %157, %158
  %160 = tail call fast double @llvm.log.f64(double %div980)
  %mul981 = fmul fast double %160, %conv975
  %sub984 = fsub fast double %141, %mul981
  store double %sub984, ptr %arrayidx822, align 8, !tbaa !21
  br label %if.end985

if.end985:                                        ; preds = %if.then972, %cond.end940
  %161 = phi double [ %sub984, %if.then972 ], [ %141, %cond.end940 ]
  %indvars.iv.next2905 = add nuw nsw i64 %indvars.iv2904, 1
  %exitcond2909.not = icmp eq i64 %indvars.iv.next2905, %wide.trip.count2908
  br i1 %exitcond2909.not, label %for.end988, label %for.body826, !llvm.loop !58

for.end988:                                       ; preds = %if.end985, %for.end820
  %162 = phi double [ 0.000000e+00, %for.end820 ], [ %161, %if.end985 ]
  br i1 %cmp303, label %if.then991, label %if.end1068

if.then991:                                       ; preds = %for.end988
  %163 = load i32, ptr %no_short_blocks, align 8, !tbaa !59
  %tobool.not = icmp eq i32 %163, 0
  br i1 %tobool.not, label %if.else995, label %if.then992

if.then992:                                       ; preds = %if.then991
  %arrayidx994 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %indvars.iv2964
  store i32 1, ptr %arrayidx994, align 4, !tbaa !13
  br label %if.end1068

if.else995:                                       ; preds = %if.then991
  %cmp998 = fcmp fast ogt double %162, 3.000000e+03
  br i1 %cmp998, label %if.then1000, label %for.body1007

if.then1000:                                      ; preds = %if.else995
  %arrayidx1002 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %indvars.iv2964
  store i32 0, ptr %arrayidx1002, align 4, !tbaa !13
  br label %if.end1068

for.body1007:                                     ; preds = %if.else995, %for.body1007
  %indvars.iv2910 = phi i64 [ %indvars.iv.next2911, %for.body1007 ], [ 64, %if.else995 ]
  %mc.02687 = phi float [ %add1016, %for.body1007 ], [ 0.000000e+00, %if.else995 ]
  %mb.02686 = phi float [ %add1013, %for.body1007 ], [ 0.000000e+00, %if.else995 ]
  %ma.02685 = phi float [ %add1010, %for.body1007 ], [ 0.000000e+00, %if.else995 ]
  %arrayidx1009 = getelementptr inbounds [129 x float], ptr @L3psycho_anal.energy_s, i64 0, i64 %indvars.iv2910
  %164 = load float, ptr %arrayidx1009, align 4, !tbaa !17
  %add1010 = fadd fast float %164, %ma.02685
  %arrayidx1012 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 1, i64 %indvars.iv2910
  %165 = load float, ptr %arrayidx1012, align 4, !tbaa !17
  %add1013 = fadd fast float %165, %mb.02686
  %arrayidx1015 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 2, i64 %indvars.iv2910
  %166 = load float, ptr %arrayidx1015, align 4, !tbaa !17
  %add1016 = fadd fast float %166, %mc.02687
  %indvars.iv.next2911 = add nuw nsw i64 %indvars.iv2910, 1
  %exitcond2914.not = icmp eq i64 %indvars.iv.next2911, 129
  br i1 %exitcond2914.not, label %for.end1019, label %for.body1007, !llvm.loop !60

for.end1019:                                      ; preds = %for.body1007
  %167 = tail call fast float @llvm.minnum.f32(float %add1010, float %add1013)
  %cmp1026 = fcmp fast olt float %167, %add1016
  br i1 %cmp1026, label %cond.end1030, label %cond.false1029

cond.false1029:                                   ; preds = %for.end1019
  br label %cond.end1030

cond.end1030:                                     ; preds = %for.end1019, %cond.false1029
  %cond1031 = phi fast float [ %add1016, %cond.false1029 ], [ %167, %for.end1019 ]
  %168 = tail call fast float @llvm.maxnum.f32(float %add1010, float %add1013)
  %cmp1038 = fcmp fast ogt float %168, %add1016
  br i1 %cmp1038, label %cond.end1042, label %cond.false1041

cond.false1041:                                   ; preds = %cond.end1030
  br label %cond.end1042

cond.end1042:                                     ; preds = %cond.end1030, %cond.false1041
  %cond1043 = phi fast float [ %add1016, %cond.false1041 ], [ %168, %cond.end1030 ]
  %arrayidx1045 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %indvars.iv2964
  store i32 1, ptr %arrayidx1045, align 4, !tbaa !13
  %mul1046 = fmul fast float %cond1031, 3.000000e+01
  %cmp1047 = fcmp fast ogt float %cond1043, %mul1046
  br i1 %cmp1047, label %if.then1049, label %if.else1052

if.then1049:                                      ; preds = %cond.end1042
  store i32 0, ptr %arrayidx1045, align 4, !tbaa !13
  br label %if.end1068

if.else1052:                                      ; preds = %cond.end1042
  %mul1053 = fmul fast float %cond1031, 1.000000e+01
  %cmp1054 = fcmp fast ogt float %cond1043, %mul1053
  %cmp1059 = fcmp fast ogt double %162, 1.000000e+03
  %or.cond2593 = select i1 %cmp1054, i1 %cmp1059, i1 false
  br i1 %or.cond2593, label %if.then1061, label %if.end1068

if.then1061:                                      ; preds = %if.else1052
  store i32 0, ptr %arrayidx1045, align 4, !tbaa !13
  br label %if.end1068

if.end1068:                                       ; preds = %if.then1049, %if.then1061, %if.else1052, %if.then992, %if.then1000, %for.end988
  %arrayidx1122 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %indvars.iv2964
  %arrayidx1127 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2964
  br label %for.body1072

for.cond1134.preheader:                           ; preds = %for.end1120
  %169 = load i32, ptr @L3psycho_anal.npart_s_orig, align 4, !tbaa !13
  %cmp11392703 = icmp sgt i32 %169, 0
  %170 = load i32, ptr @L3psycho_anal.npart_s, align 4, !tbaa !13
  %cmp11712710 = icmp sgt i32 %170, 0
  %wide.trip.count2934 = zext i32 %169 to i64
  %wide.trip.count2946 = zext i32 %170 to i64
  br label %for.cond1138.preheader

for.body1072:                                     ; preds = %if.end1068, %for.end1120
  %indvars.iv2921 = phi i64 [ 0, %if.end1068 ], [ %indvars.iv.next2922, %for.end1120 ]
  %arrayidx1074 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w1_l, i64 0, i64 %indvars.iv2921
  %171 = load double, ptr %arrayidx1074, align 8, !tbaa !21
  %arrayidx1076 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bu_l, i64 0, i64 %indvars.iv2921
  %172 = load i32, ptr %arrayidx1076, align 4, !tbaa !13
  %idxprom1077 = sext i32 %172 to i64
  %arrayidx1078 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1077
  %173 = load double, ptr %arrayidx1078, align 8, !tbaa !21
  %mul1079 = fmul fast double %173, %171
  %arrayidx1081 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.w2_l, i64 0, i64 %indvars.iv2921
  %174 = load double, ptr %arrayidx1081, align 8, !tbaa !21
  %arrayidx1083 = getelementptr inbounds [21 x i32], ptr @L3psycho_anal.bo_l, i64 0, i64 %indvars.iv2921
  %175 = load i32, ptr %arrayidx1083, align 4, !tbaa !13
  %idxprom1084 = sext i32 %175 to i64
  %arrayidx1085 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1084
  %176 = load double, ptr %arrayidx1085, align 8, !tbaa !21
  %mul1086 = fmul fast double %176, %174
  %add1087 = fadd fast double %mul1086, %mul1079
  %arrayidx1093 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1077
  %177 = load double, ptr %arrayidx1093, align 8, !tbaa !21
  %mul1094 = fmul fast double %177, %171
  %arrayidx1100 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1084
  %178 = load double, ptr %arrayidx1100, align 8, !tbaa !21
  %mul1101 = fmul fast double %178, %174
  %add1102 = fadd fast double %mul1101, %mul1094
  %b.82688 = add i32 %172, 1
  %cmp11092689 = icmp slt i32 %b.82688, %175
  br i1 %cmp11092689, label %for.body1111.preheader, label %for.end1120

for.body1111.preheader:                           ; preds = %for.body1072
  %179 = sext i32 %b.82688 to i64
  br label %for.body1111

for.body1111:                                     ; preds = %for.body1111.preheader, %for.body1111
  %indvars.iv2915 = phi i64 [ %179, %for.body1111.preheader ], [ %indvars.iv.next2916, %for.body1111 ]
  %thmm.02691 = phi double [ %add1102, %for.body1111.preheader ], [ %add1117, %for.body1111 ]
  %enn.02690 = phi double [ %add1087, %for.body1111.preheader ], [ %add1114, %for.body1111 ]
  %arrayidx1113 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2915
  %180 = load double, ptr %arrayidx1113, align 8, !tbaa !21
  %add1114 = fadd fast double %180, %enn.02690
  %arrayidx1116 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %indvars.iv2915
  %181 = load double, ptr %arrayidx1116, align 8, !tbaa !21
  %add1117 = fadd fast double %181, %thmm.02691
  %indvars.iv.next2916 = add nsw i64 %indvars.iv2915, 1
  %lftr.wideiv2919 = trunc i64 %indvars.iv.next2916 to i32
  %exitcond2920.not = icmp eq i32 %175, %lftr.wideiv2919
  br i1 %exitcond2920.not, label %for.end1120, label %for.body1111, !llvm.loop !61

for.end1120:                                      ; preds = %for.body1111, %for.body1072
  %enn.0.lcssa = phi double [ %add1087, %for.body1072 ], [ %add1114, %for.body1111 ]
  %thmm.0.lcssa = phi double [ %add1102, %for.body1072 ], [ %add1117, %for.body1111 ]
  %arrayidx1125 = getelementptr inbounds [22 x double], ptr %arrayidx1122, i64 0, i64 %indvars.iv2921
  store double %enn.0.lcssa, ptr %arrayidx1125, align 8, !tbaa !21
  %arrayidx1130 = getelementptr inbounds [22 x double], ptr %arrayidx1127, i64 0, i64 %indvars.iv2921
  store double %thmm.0.lcssa, ptr %arrayidx1130, align 8, !tbaa !21
  %indvars.iv.next2922 = add nuw nsw i64 %indvars.iv2921, 1
  %exitcond2925.not = icmp eq i64 %indvars.iv.next2922, 21
  br i1 %exitcond2925.not, label %for.cond1134.preheader, label %for.body1072, !llvm.loop !62

for.cond1138.preheader:                           ; preds = %for.cond1134.preheader, %for.inc1281
  %indvars.iv2959 = phi i64 [ 0, %for.cond1134.preheader ], [ %indvars.iv.next2960, %for.inc1281 ]
  br i1 %cmp11392703, label %for.body1141, label %for.cond1170.preheader

for.cond1170.preheader:                           ; preds = %for.end1163, %for.cond1138.preheader
  br i1 %cmp11712710, label %for.body1173, label %for.body1214.preheader

for.body1141:                                     ; preds = %for.cond1138.preheader, %for.end1163
  %indvars.iv2930 = phi i64 [ %indvars.iv.next2931, %for.end1163 ], [ 0, %for.cond1138.preheader ]
  %j.162704 = phi i32 [ %j.17.lcssa, %for.end1163 ], [ 0, %for.cond1138.preheader ]
  %idxprom1147 = sext i32 %j.162704 to i64
  %arrayidx1148 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %indvars.iv2959, i64 %idxprom1147
  %182 = load float, ptr %arrayidx1148, align 4, !tbaa !17
  %arrayidx1150 = getelementptr inbounds [63 x i32], ptr @L3psycho_anal.numlines_s, i64 0, i64 %indvars.iv2930
  %183 = load i32, ptr %arrayidx1150, align 4, !tbaa !13
  %j.172696 = add i32 %j.162704, 1
  %cmp11522697 = icmp sgt i32 %183, 0
  br i1 %cmp11522697, label %for.body1154.preheader, label %for.end1163

for.body1154.preheader:                           ; preds = %for.body1141
  %184 = sext i32 %j.172696 to i64
  br label %for.body1154

for.body1154:                                     ; preds = %for.body1154.preheader, %for.body1154
  %indvars.iv2926 = phi i64 [ %184, %for.body1154.preheader ], [ %indvars.iv.next2927, %for.body1154 ]
  %ecb1143.02699 = phi float [ %182, %for.body1154.preheader ], [ %add1160, %for.body1154 ]
  %i1142.02698 = phi i32 [ %183, %for.body1154.preheader ], [ %dec1162, %for.body1154 ]
  %arrayidx1159 = getelementptr inbounds [3 x [129 x float]], ptr @L3psycho_anal.energy_s, i64 0, i64 %indvars.iv2959, i64 %indvars.iv2926
  %185 = load float, ptr %arrayidx1159, align 4, !tbaa !17
  %add1160 = fadd fast float %185, %ecb1143.02699
  %dec1162 = add nsw i32 %i1142.02698, -1
  %indvars.iv.next2927 = add nsw i64 %indvars.iv2926, 1
  %cmp1152 = icmp ugt i32 %i1142.02698, 1
  br i1 %cmp1152, label %for.body1154, label %for.end1163.loopexit, !llvm.loop !63

for.end1163.loopexit:                             ; preds = %for.body1154
  %186 = add i32 %j.162704, %183
  %187 = add i32 %186, 1
  br label %for.end1163

for.end1163:                                      ; preds = %for.end1163.loopexit, %for.body1141
  %ecb1143.0.lcssa = phi float [ %182, %for.body1141 ], [ %add1160, %for.end1163.loopexit ]
  %j.17.lcssa = phi i32 [ %j.172696, %for.body1141 ], [ %187, %for.end1163.loopexit ]
  %conv1164 = fpext float %ecb1143.0.lcssa to double
  %arrayidx1166 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2930
  store double %conv1164, ptr %arrayidx1166, align 8, !tbaa !21
  %indvars.iv.next2931 = add nuw nsw i64 %indvars.iv2930, 1
  %exitcond2935.not = icmp eq i64 %indvars.iv.next2931, %wide.trip.count2934
  br i1 %exitcond2935.not, label %for.cond1170.preheader, label %for.body1141, !llvm.loop !64

for.body1173:                                     ; preds = %for.cond1170.preheader, %for.end1195
  %indvars.iv2942 = phi i64 [ %indvars.iv.next2943, %for.end1195 ], [ 0, %for.cond1170.preheader ]
  %arrayidx1176 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2942
  %188 = load i32, ptr %arrayidx1176, align 8, !tbaa !13
  %arrayidx1181 = getelementptr inbounds [63 x [2 x i32]], ptr @L3psycho_anal.s3ind_s, i64 0, i64 %indvars.iv2942, i64 1
  %189 = load i32, ptr %arrayidx1181, align 4, !tbaa !13
  %cmp1182.not2706 = icmp sgt i32 %188, %189
  br i1 %cmp1182.not2706, label %for.end1195, label %for.body1184.preheader

for.body1184.preheader:                           ; preds = %for.body1173
  %190 = sext i32 %188 to i64
  %191 = add i32 %189, 1
  br label %for.body1184

for.body1184:                                     ; preds = %for.body1184.preheader, %for.body1184
  %indvars.iv2936 = phi i64 [ %190, %for.body1184.preheader ], [ %indvars.iv.next2937, %for.body1184 ]
  %ecb1174.02708 = phi double [ 0.000000e+00, %for.body1184.preheader ], [ %add1192, %for.body1184 ]
  %arrayidx1188 = getelementptr inbounds [64 x [64 x double]], ptr @L3psycho_anal.s3_s, i64 0, i64 %indvars.iv2942, i64 %indvars.iv2936
  %192 = load double, ptr %arrayidx1188, align 8, !tbaa !21
  %arrayidx1190 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2936
  %193 = load double, ptr %arrayidx1190, align 8, !tbaa !21
  %mul1191 = fmul fast double %193, %192
  %add1192 = fadd fast double %mul1191, %ecb1174.02708
  %indvars.iv.next2937 = add nsw i64 %indvars.iv2936, 1
  %lftr.wideiv2940 = trunc i64 %indvars.iv.next2937 to i32
  %exitcond2941.not = icmp eq i32 %191, %lftr.wideiv2940
  br i1 %exitcond2941.not, label %for.end1195, label %for.body1184, !llvm.loop !65

for.end1195:                                      ; preds = %for.body1184, %for.body1173
  %ecb1174.0.lcssa = phi double [ 0.000000e+00, %for.body1173 ], [ %add1192, %for.body1184 ]
  %arrayidx1197 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.qthr_s, i64 0, i64 %indvars.iv2942
  %194 = load double, ptr %arrayidx1197, align 8, !tbaa !21
  %195 = tail call fast double @llvm.maxnum.f64(double %194, double %ecb1174.0.lcssa)
  %arrayidx1207 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %indvars.iv2942
  store double %195, ptr %arrayidx1207, align 8, !tbaa !21
  %indvars.iv.next2943 = add nuw nsw i64 %indvars.iv2942, 1
  %exitcond2947.not = icmp eq i64 %indvars.iv.next2943, %wide.trip.count2946
  br i1 %exitcond2947.not, label %for.body1214.preheader, label %for.body1173, !llvm.loop !66

for.body1214.preheader:                           ; preds = %for.end1195, %for.cond1170.preheader
  br label %for.body1214

for.body1214:                                     ; preds = %for.body1214.preheader, %for.end1264
  %indvars.iv2954 = phi i64 [ %indvars.iv.next2955, %for.end1264 ], [ 0, %for.body1214.preheader ]
  %arrayidx1217 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w1_s, i64 0, i64 %indvars.iv2954
  %196 = load double, ptr %arrayidx1217, align 8, !tbaa !21
  %arrayidx1219 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bu_s, i64 0, i64 %indvars.iv2954
  %197 = load i32, ptr %arrayidx1219, align 4, !tbaa !13
  %idxprom1220 = sext i32 %197 to i64
  %arrayidx1221 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1220
  %198 = load double, ptr %arrayidx1221, align 8, !tbaa !21
  %mul1222 = fmul fast double %198, %196
  %arrayidx1224 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.w2_s, i64 0, i64 %indvars.iv2954
  %199 = load double, ptr %arrayidx1224, align 8, !tbaa !21
  %arrayidx1226 = getelementptr inbounds [12 x i32], ptr @L3psycho_anal.bo_s, i64 0, i64 %indvars.iv2954
  %200 = load i32, ptr %arrayidx1226, align 4, !tbaa !13
  %idxprom1227 = sext i32 %200 to i64
  %arrayidx1228 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %idxprom1227
  %201 = load double, ptr %arrayidx1228, align 8, !tbaa !21
  %mul1229 = fmul fast double %201, %199
  %add1230 = fadd fast double %mul1229, %mul1222
  %arrayidx1237 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1220
  %202 = load double, ptr %arrayidx1237, align 8, !tbaa !21
  %mul1238 = fmul fast double %202, %196
  %arrayidx1244 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %idxprom1227
  %203 = load double, ptr %arrayidx1244, align 8, !tbaa !21
  %mul1245 = fmul fast double %203, %199
  %add1246 = fadd fast double %mul1245, %mul1238
  %b.112712 = add i32 %197, 1
  %cmp12532713 = icmp slt i32 %b.112712, %200
  br i1 %cmp12532713, label %for.body1255.preheader, label %for.end1264

for.body1255.preheader:                           ; preds = %for.body1214
  %204 = sext i32 %b.112712 to i64
  br label %for.body1255

for.body1255:                                     ; preds = %for.body1255.preheader, %for.body1255
  %indvars.iv2948 = phi i64 [ %204, %for.body1255.preheader ], [ %indvars.iv.next2949, %for.body1255 ]
  %thmm1231.02715 = phi double [ %add1246, %for.body1255.preheader ], [ %add1261, %for.body1255 ]
  %enn1215.02714 = phi double [ %add1230, %for.body1255.preheader ], [ %add1258, %for.body1255 ]
  %arrayidx1257 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.eb, i64 0, i64 %indvars.iv2948
  %205 = load double, ptr %arrayidx1257, align 8, !tbaa !21
  %add1258 = fadd fast double %205, %enn1215.02714
  %arrayidx1260 = getelementptr inbounds [63 x double], ptr @L3psycho_anal.thr, i64 0, i64 %indvars.iv2948
  %206 = load double, ptr %arrayidx1260, align 8, !tbaa !21
  %add1261 = fadd fast double %206, %thmm1231.02715
  %indvars.iv.next2949 = add nsw i64 %indvars.iv2948, 1
  %lftr.wideiv2952 = trunc i64 %indvars.iv.next2949 to i32
  %exitcond2953.not = icmp eq i32 %200, %lftr.wideiv2952
  br i1 %exitcond2953.not, label %for.end1264, label %for.body1255, !llvm.loop !67

for.end1264:                                      ; preds = %for.body1255, %for.body1214
  %enn1215.0.lcssa = phi double [ %add1230, %for.body1214 ], [ %add1258, %for.body1255 ]
  %thmm1231.0.lcssa = phi double [ %add1246, %for.body1214 ], [ %add1261, %for.body1255 ]
  %arrayidx1270 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 %indvars.iv2964, i32 1, i64 %indvars.iv2954, i64 %indvars.iv2959
  store double %enn1215.0.lcssa, ptr %arrayidx1270, align 8, !tbaa !21
  %arrayidx1277 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2964, i32 1, i64 %indvars.iv2954, i64 %indvars.iv2959
  store double %thmm1231.0.lcssa, ptr %arrayidx1277, align 8, !tbaa !21
  %indvars.iv.next2955 = add nuw nsw i64 %indvars.iv2954, 1
  %exitcond2958.not = icmp eq i64 %indvars.iv.next2955, 12
  br i1 %exitcond2958.not, label %for.inc1281, label %for.body1214, !llvm.loop !68

for.inc1281:                                      ; preds = %for.end1264
  %indvars.iv.next2960 = add nuw nsw i64 %indvars.iv2959, 1
  %exitcond2963.not = icmp eq i64 %indvars.iv.next2960, 3
  br i1 %exitcond2963.not, label %for.inc1284, label %for.cond1138.preheader, !llvm.loop !69

for.inc1284:                                      ; preds = %for.inc1281
  %indvars.iv.next2965 = add nuw nsw i64 %indvars.iv2964, 1
  %exitcond2970.not = icmp eq i64 %indvars.iv.next2965, %wide.trip.count2969
  br i1 %exitcond2970.not, label %for.end1286, label %for.body299, !llvm.loop !70

for.end1286:                                      ; preds = %for.inc1284
  %cmp1287 = icmp eq i32 %spec.store.select, 4
  br i1 %cmp1287, label %for.body1294, label %if.end1630

for.body1294:                                     ; preds = %for.end1286, %for.inc1434
  %indvars.iv2971 = phi i64 [ %indvars.iv.next2972, %for.inc1434 ], [ 0, %for.end1286 ]
  %arrayidx1296 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2971
  %207 = load double, ptr %arrayidx1296, align 8, !tbaa !21
  %arrayidx1298 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %indvars.iv2971
  %208 = load double, ptr %arrayidx1298, align 8, !tbaa !21
  %mul1299 = fmul fast double %208, 1.580000e+00
  %cmp1300 = fcmp fast ugt double %207, %mul1299
  %mul1307 = fmul fast double %207, 1.580000e+00
  %cmp1308 = fcmp fast ugt double %208, %mul1307
  %or.cond2576 = select i1 %cmp1300, i1 true, i1 %cmp1308
  br i1 %or.cond2576, label %for.inc1434, label %if.then1310

if.then1310:                                      ; preds = %for.body1294
  %arrayidx1312 = getelementptr inbounds [21 x double], ptr @L3psycho_anal.mld_l, i64 0, i64 %indvars.iv2971
  %209 = load double, ptr %arrayidx1312, align 8, !tbaa !21
  %arrayidx1317 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 3), i64 0, i64 %indvars.iv2971
  %210 = load double, ptr %arrayidx1317, align 8, !tbaa !21
  %mul1318 = fmul fast double %210, %209
  %arrayidx1323 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 2), i64 0, i64 %indvars.iv2971
  %211 = load double, ptr %arrayidx1323, align 8, !tbaa !21
  %arrayidx1328 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 3), i64 0, i64 %indvars.iv2971
  %212 = load double, ptr %arrayidx1328, align 8, !tbaa !21
  %213 = tail call fast double @llvm.minnum.f64(double %212, double %mul1318)
  %cmp1340 = fcmp fast ogt double %211, %213
  br i1 %cmp1340, label %cond.end1365, label %cond.false1348

cond.false1348:                                   ; preds = %if.then1310
  br label %cond.end1365

cond.end1365:                                     ; preds = %if.then1310, %cond.false1348
  %cond1366 = phi fast double [ %213, %cond.false1348 ], [ %211, %if.then1310 ]
  %arrayidx1373 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 2), i64 0, i64 %indvars.iv2971
  %214 = load double, ptr %arrayidx1373, align 8, !tbaa !21
  %mul1374 = fmul fast double %214, %209
  %215 = tail call fast double @llvm.minnum.f64(double %211, double %mul1374)
  %cmp1396 = fcmp fast ogt double %212, %215
  br i1 %cmp1396, label %cond.end1421, label %cond.false1404

cond.false1404:                                   ; preds = %cond.end1365
  br label %cond.end1421

cond.end1421:                                     ; preds = %cond.end1365, %cond.false1404
  %cond1422 = phi fast double [ %215, %cond.false1404 ], [ %212, %cond.end1365 ]
  store double %cond1366, ptr %arrayidx1323, align 8, !tbaa !21
  store double %cond1422, ptr %arrayidx1328, align 8, !tbaa !21
  br label %for.inc1434

for.inc1434:                                      ; preds = %for.body1294, %cond.end1421
  %indvars.iv.next2972 = add nuw nsw i64 %indvars.iv2971, 1
  %exitcond2975.not = icmp eq i64 %indvars.iv.next2972, 21
  br i1 %exitcond2975.not, label %for.cond1441.preheader, label %for.body1294, !llvm.loop !71

for.cond1441.preheader:                           ; preds = %for.inc1434, %for.inc1627
  %indvars.iv2981 = phi i64 [ %indvars.iv.next2982, %for.inc1627 ], [ 0, %for.inc1434 ]
  %arrayidx1470 = getelementptr inbounds [12 x double], ptr @L3psycho_anal.mld_s, i64 0, i64 %indvars.iv2981
  br label %for.body1444

for.body1444:                                     ; preds = %for.cond1441.preheader, %for.inc1624
  %indvars.iv2976 = phi i64 [ 0, %for.cond1441.preheader ], [ %indvars.iv.next2977, %for.inc1624 ]
  %arrayidx1448 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %216 = load double, ptr %arrayidx1448, align 8, !tbaa !21
  %arrayidx1452 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %217 = load double, ptr %arrayidx1452, align 8, !tbaa !21
  %mul1453 = fmul fast double %217, 1.580000e+00
  %cmp1454 = fcmp fast ugt double %216, %mul1453
  %mul1465 = fmul fast double %216, 1.580000e+00
  %cmp1466 = fcmp fast ugt double %217, %mul1465
  %or.cond2579 = select i1 %cmp1454, i1 true, i1 %cmp1466
  br i1 %or.cond2579, label %for.inc1624, label %if.then1468

if.then1468:                                      ; preds = %for.body1444
  %218 = load double, ptr %arrayidx1470, align 8, !tbaa !21
  %arrayidx1477 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 3, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %219 = load double, ptr %arrayidx1477, align 8, !tbaa !21
  %mul1478 = fmul fast double %219, %218
  %arrayidx1485 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 2, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %220 = load double, ptr %arrayidx1485, align 8, !tbaa !21
  %arrayidx1492 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 3, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %221 = load double, ptr %arrayidx1492, align 8, !tbaa !21
  %222 = tail call fast double @llvm.minnum.f64(double %221, double %mul1478)
  %cmp1506 = fcmp fast ogt double %220, %222
  br i1 %cmp1506, label %cond.end1537, label %cond.false1516

cond.false1516:                                   ; preds = %if.then1468
  br label %cond.end1537

cond.end1537:                                     ; preds = %if.then1468, %cond.false1516
  %cond1538 = phi fast double [ %222, %cond.false1516 ], [ %220, %if.then1468 ]
  %arrayidx1547 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.en, i64 0, i64 2, i32 1, i64 %indvars.iv2981, i64 %indvars.iv2976
  %223 = load double, ptr %arrayidx1547, align 8, !tbaa !21
  %mul1548 = fmul fast double %223, %218
  %224 = tail call fast double @llvm.minnum.f64(double %220, double %mul1548)
  %cmp1576 = fcmp fast ogt double %221, %224
  br i1 %cmp1576, label %cond.end1607, label %cond.false1586

cond.false1586:                                   ; preds = %cond.end1537
  br label %cond.end1607

cond.end1607:                                     ; preds = %cond.end1537, %cond.false1586
  %cond1608 = phi fast double [ %224, %cond.false1586 ], [ %221, %cond.end1537 ]
  store double %cond1538, ptr %arrayidx1485, align 8, !tbaa !21
  store double %cond1608, ptr %arrayidx1492, align 8, !tbaa !21
  br label %for.inc1624

for.inc1624:                                      ; preds = %for.body1444, %cond.end1607
  %indvars.iv.next2977 = add nuw nsw i64 %indvars.iv2976, 1
  %exitcond2980.not = icmp eq i64 %indvars.iv.next2977, 3
  br i1 %exitcond2980.not, label %for.inc1627, label %for.body1444, !llvm.loop !72

for.inc1627:                                      ; preds = %for.inc1624
  %indvars.iv.next2982 = add nuw nsw i64 %indvars.iv2981, 1
  %exitcond2985.not = icmp eq i64 %indvars.iv.next2982, 12
  br i1 %exitcond2985.not, label %if.end1630, label %for.cond1441.preheader, !llvm.loop !73

if.end1630:                                       ; preds = %for.inc1627, %if.end291, %for.end1286
  %cmp12873016 = phi i1 [ false, %for.end1286 ], [ false, %if.end291 ], [ %cmp1287, %for.inc1627 ]
  %225 = load i32, ptr %mode, align 4, !tbaa !42
  %cmp1632 = icmp eq i32 %225, 1
  br i1 %cmp1632, label %for.body1638, label %if.end1762

for.body1638:                                     ; preds = %if.end1630, %if.end1673
  %indvars.iv2986 = phi i64 [ %indvars.iv.next2987, %if.end1673 ], [ 5, %if.end1630 ]
  %tot.02730 = phi double [ %inc1675, %if.end1673 ], [ 0.000000e+00, %if.end1630 ]
  %sidetot.02729 = phi double [ %add1674, %if.end1673 ], [ 0.000000e+00, %if.end1630 ]
  %arrayidx1640 = getelementptr inbounds [22 x double], ptr @L3psycho_anal.thm, i64 0, i64 %indvars.iv2986
  %226 = load double, ptr %arrayidx1640, align 8, !tbaa !21
  %arrayidx1642 = getelementptr inbounds [22 x double], ptr getelementptr inbounds ([4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1), i64 0, i64 %indvars.iv2986
  %227 = load double, ptr %arrayidx1642, align 8, !tbaa !21
  %228 = tail call fast double @llvm.minnum.f64(double %226, double %227)
  %cmp1657 = fcmp fast ogt double %226, %227
  br i1 %cmp1657, label %cond.end1665, label %cond.false1662

cond.false1662:                                   ; preds = %for.body1638
  br label %cond.end1665

cond.end1665:                                     ; preds = %for.body1638, %cond.false1662
  %cond1666 = phi fast double [ %227, %cond.false1662 ], [ %226, %for.body1638 ]
  %mul1667 = fmul fast double %228, 1.000000e+03
  %cmp1668 = fcmp fast ult double %cond1666, %mul1667
  br i1 %cmp1668, label %if.else1671, label %if.end1673

if.else1671:                                      ; preds = %cond.end1665
  %div1672 = fdiv fast double %cond1666, %228
  %229 = tail call fast double @llvm.log10.f64(double %div1672)
  br label %if.end1673

if.end1673:                                       ; preds = %cond.end1665, %if.else1671
  %db.0 = phi double [ %229, %if.else1671 ], [ 3.000000e+00, %cond.end1665 ]
  %add1674 = fadd fast double %db.0, %sidetot.02729
  %inc1675 = fadd fast double %tot.02730, 1.000000e+00
  %indvars.iv.next2987 = add nuw nsw i64 %indvars.iv2986, 1
  %exitcond2990.not = icmp eq i64 %indvars.iv.next2987, 21
  br i1 %exitcond2990.not, label %for.end1678, label %for.body1638, !llvm.loop !74

for.end1678:                                      ; preds = %if.end1673
  %230 = fmul fast double %add1674, 0x3FE6666666666666
  %mul1680 = fdiv fast double %230, %inc1675
  %cmp1681 = fcmp fast olt double %mul1680, 5.000000e-01
  br i1 %cmp1681, label %cond.true1683, label %cond.end1685

cond.true1683:                                    ; preds = %for.end1678
  br label %cond.end1685

cond.end1685:                                     ; preds = %for.end1678, %cond.true1683
  %cond1686 = phi fast double [ %mul1680, %cond.true1683 ], [ 5.000000e-01, %for.end1678 ]
  br label %for.cond1691.preheader

for.cond1691.preheader:                           ; preds = %cond.end1685, %for.inc1751
  %indvars.iv2996 = phi i64 [ 0, %cond.end1685 ], [ %indvars.iv.next2997, %for.inc1751 ]
  %tot.12736 = phi double [ 0.000000e+00, %cond.end1685 ], [ %inc1747, %for.inc1751 ]
  %sidetot.12735 = phi double [ 0.000000e+00, %cond.end1685 ], [ %add1746, %for.inc1751 ]
  br label %for.body1694

for.body1694:                                     ; preds = %for.cond1691.preheader, %if.end1745
  %indvars.iv2991 = phi i64 [ 3, %for.cond1691.preheader ], [ %indvars.iv.next2992, %if.end1745 ]
  %tot.22733 = phi double [ %tot.12736, %for.cond1691.preheader ], [ %inc1747, %if.end1745 ]
  %sidetot.22732 = phi double [ %sidetot.12735, %for.cond1691.preheader ], [ %add1746, %if.end1745 ]
  %arrayidx1698 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 0, i32 1, i64 %indvars.iv2991, i64 %indvars.iv2996
  %231 = load double, ptr %arrayidx1698, align 8, !tbaa !21
  %arrayidx1702 = getelementptr inbounds [4 x %struct.III_psy_xmin], ptr @L3psycho_anal.thm, i64 0, i64 1, i32 1, i64 %indvars.iv2991, i64 %indvars.iv2996
  %232 = load double, ptr %arrayidx1702, align 8, !tbaa !21
  %233 = tail call fast double @llvm.minnum.f64(double %231, double %232)
  %cmp1725 = fcmp fast ogt double %231, %232
  br i1 %cmp1725, label %cond.end1737, label %cond.false1732

cond.false1732:                                   ; preds = %for.body1694
  br label %cond.end1737

cond.end1737:                                     ; preds = %for.body1694, %cond.false1732
  %cond1738 = phi fast double [ %232, %cond.false1732 ], [ %231, %for.body1694 ]
  %mul1739 = fmul fast double %233, 1.000000e+03
  %cmp1740 = fcmp fast ult double %cond1738, %mul1739
  br i1 %cmp1740, label %if.else1743, label %if.end1745

if.else1743:                                      ; preds = %cond.end1737
  %div1744 = fdiv fast double %cond1738, %233
  %234 = tail call fast double @llvm.log10.f64(double %div1744)
  br label %if.end1745

if.end1745:                                       ; preds = %cond.end1737, %if.else1743
  %db.1 = phi double [ %234, %if.else1743 ], [ 3.000000e+00, %cond.end1737 ]
  %add1746 = fadd fast double %db.1, %sidetot.22732
  %inc1747 = fadd fast double %tot.22733, 1.000000e+00
  %indvars.iv.next2992 = add nuw nsw i64 %indvars.iv2991, 1
  %exitcond2995.not = icmp eq i64 %indvars.iv.next2992, 12
  br i1 %exitcond2995.not, label %for.inc1751, label %for.body1694, !llvm.loop !75

for.inc1751:                                      ; preds = %if.end1745
  %indvars.iv.next2997 = add nuw nsw i64 %indvars.iv2996, 1
  %exitcond3000.not = icmp eq i64 %indvars.iv.next2997, 3
  br i1 %exitcond3000.not, label %for.end1753, label %for.cond1691.preheader, !llvm.loop !76

for.end1753:                                      ; preds = %for.inc1751
  %235 = fmul fast double %add1746, 0x3FE6666666666666
  %mul1755 = fdiv fast double %235, %inc1747
  %cmp1756 = fcmp fast olt double %mul1755, 5.000000e-01
  br i1 %cmp1756, label %cond.true1758, label %if.end1762

cond.true1758:                                    ; preds = %for.end1753
  br label %if.end1762

if.end1762:                                       ; preds = %cond.true1758, %for.end1753, %if.end1630
  %ms_ratio_s.0 = phi double [ 0.000000e+00, %if.end1630 ], [ %mul1755, %cond.true1758 ], [ 5.000000e-01, %for.end1753 ]
  %ms_ratio_l.0 = phi double [ 0.000000e+00, %if.end1630 ], [ %cond1686, %cond.true1758 ], [ %cond1686, %for.end1753 ]
  %236 = load i32, ptr %stereo, align 4, !tbaa !41
  %cmp17652737 = icmp sgt i32 %236, 0
  br i1 %cmp17652737, label %for.end1772, label %for.end1842

for.end1772:                                      ; preds = %if.end1762
  %237 = zext i32 %236 to i64
  %238 = shl nuw nsw i64 %237, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %blocktype, i8 0, i64 %238, i1 false), !tbaa !13
  %cmp1774 = icmp eq i32 %236, 2
  br i1 %cmp1774, label %if.then1776, label %for.body1797.preheader

if.then1776:                                      ; preds = %for.end1772
  %allow_diff_short = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 36
  %239 = load i32, ptr %allow_diff_short, align 4, !tbaa !77
  %tobool1777.not = icmp eq i32 %239, 0
  %brmerge = select i1 %tobool1777.not, i1 true, i1 %cmp1632
  br i1 %brmerge, label %if.then1781, label %for.body1797.preheader

if.then1781:                                      ; preds = %if.then1776
  %240 = load i32, ptr %uselongblock, align 4, !tbaa !13
  %tobool1783.not = icmp ne i32 %240, 0
  %arrayidx1784 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 1
  %241 = load i32, ptr %arrayidx1784, align 4
  %tobool1785 = icmp ne i32 %241, 0
  %or.cond2584 = select i1 %tobool1783.not, i1 %tobool1785, i1 false
  br i1 %or.cond2584, label %for.body1797.preheader, label %if.then1787

if.then1787:                                      ; preds = %if.then1781
  store i32 0, ptr %uselongblock, align 4, !tbaa !13
  store i32 0, ptr %arrayidx1784, align 4, !tbaa !13
  br label %for.body1797.preheader

for.body1797.preheader:                           ; preds = %if.then1776, %if.then1781, %if.then1787, %for.end1772
  br label %for.body1797

for.body1797:                                     ; preds = %for.body1797.preheader, %if.end1831
  %indvars.iv3005 = phi i64 [ %indvars.iv.next3006, %if.end1831 ], [ 0, %for.body1797.preheader ]
  %arrayidx1799 = getelementptr inbounds [2 x i32], ptr %uselongblock, i64 0, i64 %indvars.iv3005
  %242 = load i32, ptr %arrayidx1799, align 4, !tbaa !13
  %tobool1800.not = icmp eq i32 %242, 0
  br i1 %tobool1800.not, label %if.else1812, label %if.then1801

if.then1801:                                      ; preds = %for.body1797
  %arrayidx1803 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %indvars.iv3005
  %243 = load i32, ptr %arrayidx1803, align 4, !tbaa !13
  switch i32 %243, label %if.then1801.if.end1831_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb1806
    i32 1, label %sw.bb1809
  ]

if.then1801.if.end1831_crit_edge:                 ; preds = %if.then1801
  %arrayidx1837.phi.trans.insert = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %indvars.iv3005
  %.pre = load i32, ptr %arrayidx1837.phi.trans.insert, align 4, !tbaa !13
  br label %if.end1831

sw.bb:                                            ; preds = %if.then1801, %if.then1801
  %arrayidx1805 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %indvars.iv3005
  store i32 0, ptr %arrayidx1805, align 4, !tbaa !13
  br label %if.end1831

sw.bb1806:                                        ; preds = %if.then1801
  %arrayidx1808 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %indvars.iv3005
  store i32 3, ptr %arrayidx1808, align 4, !tbaa !13
  br label %if.end1831

sw.bb1809:                                        ; preds = %if.then1801
  %244 = load ptr, ptr @stderr, align 8, !tbaa !15
  %245 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %244) #11
  tail call void @abort() #12
  unreachable

if.else1812:                                      ; preds = %for.body1797
  %arrayidx1814 = getelementptr inbounds [2 x i32], ptr %blocktype, i64 0, i64 %indvars.iv3005
  store i32 2, ptr %arrayidx1814, align 4, !tbaa !13
  %arrayidx1816 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %indvars.iv3005
  %246 = load i32, ptr %arrayidx1816, align 4, !tbaa !13
  switch i32 %246, label %if.end1831 [
    i32 0, label %if.end1822.thread
    i32 3, label %if.then1827
  ]

if.end1822.thread:                                ; preds = %if.else1812
  br label %if.end1831

if.then1827:                                      ; preds = %if.else1812
  br label %if.end1831

if.end1831:                                       ; preds = %if.then1801.if.end1831_crit_edge, %if.else1812, %if.end1822.thread, %if.then1827, %sw.bb, %sw.bb1806
  %247 = phi i32 [ 2, %if.else1812 ], [ 2, %if.end1822.thread ], [ 2, %if.then1827 ], [ 0, %sw.bb ], [ 3, %sw.bb1806 ], [ %.pre, %if.then1801.if.end1831_crit_edge ]
  %248 = phi i32 [ %246, %if.else1812 ], [ 1, %if.end1822.thread ], [ 2, %if.then1827 ], [ %243, %sw.bb ], [ 2, %sw.bb1806 ], [ %243, %if.then1801.if.end1831_crit_edge ]
  %arrayidx1833 = getelementptr inbounds [2 x i32], ptr @L3psycho_anal.blocktype_old, i64 0, i64 %indvars.iv3005
  %arrayidx1835 = getelementptr inbounds i32, ptr %blocktype_d, i64 %indvars.iv3005
  store i32 %248, ptr %arrayidx1835, align 4, !tbaa !13
  store i32 %247, ptr %arrayidx1833, align 4, !tbaa !13
  %indvars.iv.next3006 = add nuw nsw i64 %indvars.iv3005, 1
  %249 = load i32, ptr %stereo, align 4, !tbaa !41
  %250 = sext i32 %249 to i64
  %cmp1795 = icmp slt i64 %indvars.iv.next3006, %250
  br i1 %cmp1795, label %for.body1797, label %for.end1842, !llvm.loop !78

for.end1842:                                      ; preds = %if.end1831, %if.end1762
  %251 = load i32, ptr %blocktype_d, align 4, !tbaa !13
  %cmp1844 = icmp eq i32 %251, 2
  %L3psycho_anal.ms_ratio_s_old.val = load double, ptr @L3psycho_anal.ms_ratio_s_old, align 8
  %L3psycho_anal.ms_ratio_l_old.val = load double, ptr @L3psycho_anal.ms_ratio_l_old, align 8
  %storemerge = select i1 %cmp1844, double %L3psycho_anal.ms_ratio_s_old.val, double %L3psycho_anal.ms_ratio_l_old.val
  store double %storemerge, ptr %ms_ratio, align 8, !tbaa !21
  store double %ms_ratio_s.0, ptr @L3psycho_anal.ms_ratio_s_old, align 8, !tbaa !21
  store double %ms_ratio_l.0, ptr @L3psycho_anal.ms_ratio_l_old, align 8, !tbaa !21
  store double %ms_ratio_l.0, ptr %ms_ratio_next, align 8, !tbaa !21
  br i1 %cmp12873016, label %if.then1851, label %if.else1863

if.then1851:                                      ; preds = %for.end1842
  %arrayidx1853 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 3
  %252 = load float, ptr %arrayidx1853, align 4, !tbaa !17
  %arrayidx1854 = getelementptr inbounds [4 x float], ptr %tot_ener, i64 0, i64 2
  %253 = load float, ptr %arrayidx1854, align 8, !tbaa !17
  %add1855 = fadd fast float %253, %252
  %254 = load double, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !21
  store double %254, ptr %ms_ener_ratio, align 8, !tbaa !21
  store double 0.000000e+00, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !21
  %cmp1856 = fcmp fast ogt float %add1855, 0.000000e+00
  br i1 %cmp1856, label %if.then1858, label %if.end1864

if.then1858:                                      ; preds = %if.then1851
  %div1860 = fdiv fast float %252, %add1855
  %conv1861 = fpext float %div1860 to double
  store double %conv1861, ptr @L3psycho_anal.ms_ener_ratio_old, align 8, !tbaa !21
  br label %if.end1864

if.else1863:                                      ; preds = %for.end1842
  store double 0.000000e+00, ptr %ms_ener_ratio, align 8, !tbaa !21
  br label %if.end1864

if.end1864:                                       ; preds = %if.then1851, %if.then1858, %if.else1863
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uselongblock) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %blocktype) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tot_ener) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @L3para_read(double noundef %sfreq, ptr nocapture noundef %numlines_l, ptr nocapture noundef %numlines_s, ptr nocapture noundef writeonly %partition_l, ptr nocapture noundef writeonly %minval, ptr nocapture noundef writeonly %qthr_l, ptr nocapture noundef writeonly %s3_l, ptr nocapture noundef writeonly %s3_s, ptr nocapture noundef writeonly %qthr_s, ptr nocapture noundef writeonly %SNR, ptr nocapture noundef writeonly %bu_l, ptr nocapture noundef writeonly %bo_l, ptr nocapture noundef %w1_l, ptr nocapture noundef %w2_l, ptr nocapture noundef writeonly %bu_s, ptr nocapture noundef writeonly %bo_s, ptr nocapture noundef %w1_s, ptr nocapture noundef %w2_s) local_unnamed_addr #0 {
entry:
  %bval_l = alloca [63 x double], align 16
  %bval_s = alloca [63 x double], align 16
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %bval_l) #10
  call void @llvm.lifetime.start.p0(i64 504, ptr nonnull %bval_s) #10
  br label %for.body

for.cond44.preheader:                             ; preds = %for.inc41
  %cmp45629 = icmp sgt i32 %cbmax.1, 0
  br i1 %cmp45629, label %for.cond48.preheader.us.preheader, label %for.body128.preheader

for.body128.preheader:                            ; preds = %for.cond48.for.end121_crit_edge.us, %for.cond44.preheader
  br label %for.body128

for.cond48.preheader.us.preheader:                ; preds = %for.cond44.preheader
  %wide.trip.count683 = zext i32 %cbmax.1 to i64
  br label %for.cond48.preheader.us

for.cond48.preheader.us:                          ; preds = %for.cond48.preheader.us.preheader, %for.cond48.for.end121_crit_edge.us
  %indvars.iv680 = phi i64 [ 0, %for.cond48.preheader.us.preheader ], [ %indvars.iv.next681, %for.cond48.for.end121_crit_edge.us ]
  %arrayidx73.us = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %indvars.iv680
  %0 = load double, ptr %arrayidx73.us, align 8, !tbaa !21
  br label %if.end68.us

if.end68.us:                                      ; preds = %for.cond48.preheader.us, %for.inc119.us
  %indvars.iv675 = phi i64 [ 0, %for.cond48.preheader.us ], [ %indvars.iv.next676, %for.inc119.us ]
  %cmp69.not.us = icmp ult i64 %indvars.iv680, %indvars.iv675
  %arrayidx82.us = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %indvars.iv675
  %1 = load double, ptr %arrayidx82.us, align 8, !tbaa !21
  %sub83.us = fsub fast double %0, %1
  %. = select i1 %cmp69.not.us, double 1.500000e+00, double 3.000000e+00
  %mul84.us = fmul fast double %sub83.us, %.
  %cmp86.us = fcmp fast oge double %mul84.us, 5.000000e-01
  %cmp88.us = fcmp fast ole double %mul84.us, 2.500000e+00
  %or.cond.us = select i1 %cmp86.us, i1 %cmp88.us, i1 false
  br i1 %or.cond.us, label %if.then90.us, label %if.end97.us

if.then90.us:                                     ; preds = %if.end68.us
  %2 = fadd fast double %mul84.us, -2.500000e+00
  %3 = fmul fast double %mul84.us, 8.000000e+00
  %sub94.us = fadd fast double %3, -4.000000e+00
  %mul95.us = fmul fast double %sub94.us, %2
  br label %if.end97.us

if.end97.us:                                      ; preds = %if.then90.us, %if.end68.us
  %x.0.us = phi double [ %mul95.us, %if.then90.us ], [ 0.000000e+00, %if.end68.us ]
  %add.us = fadd fast double %mul84.us, 4.740000e-01
  %mul98.us = fmul fast double %add.us, 7.500000e+00
  %add99.us = fadd fast double %mul98.us, 0x402F9F6E6106AB15
  %mul100.us = fmul fast double %add.us, %add.us
  %add101.us = fadd fast double %mul100.us, 1.000000e+00
  %4 = tail call fast double @llvm.sqrt.f64(double %add101.us)
  %mul102.neg.us = fmul fast double %4, -1.750000e+01
  %sub103.us = fadd fast double %add99.us, %mul102.neg.us
  %cmp104.us = fcmp fast ugt double %sub103.us, -6.000000e+01
  br i1 %cmp104.us, label %if.else111.us, label %for.inc119.us

if.else111.us:                                    ; preds = %if.end97.us
  %add112.us = fadd fast double %x.0.us, %sub103.us
  %mul113.us = fmul fast double %add112.us, 0x3FCD791C5F888823
  %5 = tail call fast double @llvm.exp.f64(double %mul113.us)
  br label %for.inc119.us

for.inc119.us:                                    ; preds = %if.end97.us, %if.else111.us
  %.sink = phi double [ %5, %if.else111.us ], [ 0.000000e+00, %if.end97.us ]
  %6 = getelementptr inbounds [64 x double], ptr %s3_l, i64 %indvars.iv680, i64 %indvars.iv675
  store double %.sink, ptr %6, align 8
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1
  %exitcond679.not = icmp eq i64 %indvars.iv.next676, %wide.trip.count683
  br i1 %exitcond679.not, label %for.cond48.for.end121_crit_edge.us, label %if.end68.us, !llvm.loop !79

for.cond48.for.end121_crit_edge.us:               ; preds = %for.inc119.us
  %indvars.iv.next681 = add nuw nsw i64 %indvars.iv680, 1
  %exitcond684.not = icmp eq i64 %indvars.iv.next681, %wide.trip.count683
  br i1 %exitcond684.not, label %for.body128.preheader, label %for.cond48.preheader.us, !llvm.loop !80

for.body:                                         ; preds = %entry, %for.inc41
  %cbmax.0624 = phi i32 [ 0, %entry ], [ %cbmax.1, %for.inc41 ]
  %p.0623 = phi ptr [ @psy_data, %entry ], [ %p.2, %for.inc41 ]
  %loop.0622 = phi i32 [ 0, %entry ], [ %inc42, %for.inc41 ]
  %incdec.ptr = getelementptr inbounds double, ptr %p.0623, i64 1
  %7 = load double, ptr %p.0623, align 8, !tbaa !21
  %incdec.ptr1 = getelementptr inbounds double, ptr %p.0623, i64 2
  %8 = load double, ptr %incdec.ptr, align 8, !tbaa !21
  %conv = fptosi double %8 to i32
  %inc = add i32 %conv, 1
  %cmp3 = fcmp fast oeq double %7, %sfreq
  br i1 %cmp3, label %for.cond5.preheader, label %if.else

for.cond5.preheader:                              ; preds = %for.body
  %cmp6.not616 = icmp slt i32 %conv, 0
  br i1 %cmp6.not616, label %for.inc41, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.cond5.preheader
  %wide.trip.count = zext i32 %inc to i64
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.inc36
  %indvars.iv671 = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next672, %for.inc36 ]
  %p.1620 = phi ptr [ %incdec.ptr1, %for.body8.preheader ], [ %incdec.ptr20, %for.inc36 ]
  %k2.0619 = phi i32 [ 0, %for.body8.preheader ], [ %k2.1.lcssa, %for.inc36 ]
  %incdec.ptr9 = getelementptr inbounds double, ptr %p.1620, i64 1
  %9 = load double, ptr %p.1620, align 8, !tbaa !21
  %conv10 = fptosi double %9 to i32
  %incdec.ptr11 = getelementptr inbounds double, ptr %p.1620, i64 2
  %10 = load double, ptr %incdec.ptr9, align 8, !tbaa !21
  %conv12 = fptosi double %10 to i32
  %arrayidx = getelementptr inbounds i32, ptr %numlines_l, i64 %indvars.iv671
  store i32 %conv12, ptr %arrayidx, align 4, !tbaa !13
  %incdec.ptr13 = getelementptr inbounds double, ptr %p.1620, i64 3
  %11 = load double, ptr %incdec.ptr11, align 8, !tbaa !21
  %12 = fmul fast double %11, 0x3FCD791C5F888823
  %mul = fsub fast double 0x3FF61AD547A6661A, %12
  %13 = tail call fast double @llvm.exp.f64(double %mul)
  %arrayidx15 = getelementptr inbounds double, ptr %minval, i64 %indvars.iv671
  store double %13, ptr %arrayidx15, align 8, !tbaa !21
  %14 = load double, ptr %incdec.ptr13, align 8, !tbaa !21
  %arrayidx18 = getelementptr inbounds double, ptr %qthr_l, i64 %indvars.iv671
  store double %14, ptr %arrayidx18, align 8, !tbaa !21
  %incdec.ptr19 = getelementptr inbounds double, ptr %p.1620, i64 5
  %incdec.ptr20 = getelementptr inbounds double, ptr %p.1620, i64 6
  %15 = load double, ptr %incdec.ptr19, align 8, !tbaa !21
  %arrayidx22 = getelementptr inbounds [63 x double], ptr %bval_l, i64 0, i64 %indvars.iv671
  store double %15, ptr %arrayidx22, align 8, !tbaa !21
  %16 = zext i32 %conv10 to i64
  %cmp23.not = icmp eq i64 %indvars.iv671, %16
  br i1 %cmp23.not, label %for.cond26.preheader, label %if.then25

for.cond26.preheader:                             ; preds = %for.body8
  %cmp29613 = icmp sgt i32 %conv12, 0
  br i1 %cmp29613, label %for.body31.preheader, label %for.inc36

for.body31.preheader:                             ; preds = %for.cond26.preheader
  %17 = sext i32 %k2.0619 to i64
  %18 = trunc i64 %indvars.iv671 to i32
  br label %for.body31

if.then25:                                        ; preds = %for.body8
  %19 = load ptr, ptr @stderr, align 8, !tbaa !15
  %20 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 26, i64 1, ptr %19) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %indvars.iv = phi i64 [ %17, %for.body31.preheader ], [ %indvars.iv.next, %for.body31 ]
  %k.0614 = phi i32 [ 0, %for.body31.preheader ], [ %inc35, %for.body31 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx34 = getelementptr inbounds i32, ptr %partition_l, i64 %indvars.iv
  store i32 %18, ptr %arrayidx34, align 4, !tbaa !13
  %inc35 = add nuw nsw i32 %k.0614, 1
  %21 = load i32, ptr %arrayidx, align 4, !tbaa !13
  %cmp29 = icmp slt i32 %inc35, %21
  br i1 %cmp29, label %for.body31, label %for.inc36.loopexit, !llvm.loop !81

for.inc36.loopexit:                               ; preds = %for.body31
  %22 = trunc i64 %indvars.iv.next to i32
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc36.loopexit, %for.cond26.preheader
  %k2.1.lcssa = phi i32 [ %k2.0619, %for.cond26.preheader ], [ %22, %for.inc36.loopexit ]
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next672, %wide.trip.count
  br i1 %exitcond.not, label %for.inc41, label %for.body8, !llvm.loop !82

if.else:                                          ; preds = %for.body
  %mul39 = mul nsw i32 %inc, 6
  %idx.ext = sext i32 %mul39 to i64
  %add.ptr = getelementptr inbounds double, ptr %incdec.ptr1, i64 %idx.ext
  br label %for.inc41

for.inc41:                                        ; preds = %for.inc36, %for.cond5.preheader, %if.else
  %p.2 = phi ptr [ %add.ptr, %if.else ], [ %incdec.ptr1, %for.cond5.preheader ], [ %incdec.ptr20, %for.inc36 ]
  %cbmax.1 = phi i32 [ %cbmax.0624, %if.else ], [ %inc, %for.cond5.preheader ], [ %inc, %for.inc36 ]
  %inc42 = add nuw nsw i32 %loop.0622, 1
  %exitcond674.not = icmp eq i32 %inc42, 6
  br i1 %exitcond674.not, label %for.cond44.preheader, label %for.body, !llvm.loop !83

for.cond178.preheader:                            ; preds = %for.inc175
  %cmp179644 = icmp sgt i32 %cbmax.3, 0
  br i1 %cmp179644, label %for.cond186.preheader.us.preheader, label %for.body268.preheader

for.body268.preheader:                            ; preds = %for.cond186.for.end261_crit_edge.us, %for.cond178.preheader
  br label %for.body268

for.cond186.preheader.us.preheader:               ; preds = %for.cond178.preheader
  %wide.trip.count699 = zext i32 %cbmax.3 to i64
  br label %for.cond186.preheader.us

for.cond186.preheader.us:                         ; preds = %for.cond186.preheader.us.preheader, %for.cond186.for.end261_crit_edge.us
  %indvars.iv696 = phi i64 [ 0, %for.cond186.preheader.us.preheader ], [ %indvars.iv.next697, %for.cond186.for.end261_crit_edge.us ]
  %arrayidx211.us = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %indvars.iv696
  %23 = load double, ptr %arrayidx211.us, align 8, !tbaa !21
  br label %if.end206.us

if.end206.us:                                     ; preds = %for.cond186.preheader.us, %for.inc259.us
  %indvars.iv691 = phi i64 [ 0, %for.cond186.preheader.us ], [ %indvars.iv.next692, %for.inc259.us ]
  %cmp207.not.us = icmp ult i64 %indvars.iv696, %indvars.iv691
  %arrayidx220.us = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %indvars.iv691
  %24 = load double, ptr %arrayidx220.us, align 8, !tbaa !21
  %sub221.us = fsub fast double %23, %24
  %.728 = select i1 %cmp207.not.us, double 1.500000e+00, double 3.000000e+00
  %mul222.us = fmul fast double %sub221.us, %.728
  %cmp224.us = fcmp fast oge double %mul222.us, 5.000000e-01
  %cmp227.us = fcmp fast ole double %mul222.us, 2.500000e+00
  %or.cond409.us = select i1 %cmp224.us, i1 %cmp227.us, i1 false
  br i1 %or.cond409.us, label %if.then229.us, label %if.end236.us

if.then229.us:                                    ; preds = %if.end206.us
  %25 = fadd fast double %mul222.us, -2.500000e+00
  %26 = fmul fast double %mul222.us, 8.000000e+00
  %sub233.us = fadd fast double %26, -4.000000e+00
  %mul234.us = fmul fast double %sub233.us, %25
  br label %if.end236.us

if.end236.us:                                     ; preds = %if.then229.us, %if.end206.us
  %x183.0.us = phi double [ %mul234.us, %if.then229.us ], [ 0.000000e+00, %if.end206.us ]
  %add237.us = fadd fast double %mul222.us, 4.740000e-01
  %mul238.us = fmul fast double %add237.us, 7.500000e+00
  %add239.us = fadd fast double %mul238.us, 0x402F9F6E6106AB15
  %mul240.us = fmul fast double %add237.us, %add237.us
  %add241.us = fadd fast double %mul240.us, 1.000000e+00
  %27 = tail call fast double @llvm.sqrt.f64(double %add241.us)
  %mul242.neg.us = fmul fast double %27, -1.750000e+01
  %sub243.us = fadd fast double %add239.us, %mul242.neg.us
  %cmp244.us = fcmp fast ugt double %sub243.us, -6.000000e+01
  br i1 %cmp244.us, label %if.else251.us, label %for.inc259.us

if.else251.us:                                    ; preds = %if.end236.us
  %add252.us = fadd fast double %x183.0.us, %sub243.us
  %mul253.us = fmul fast double %add252.us, 0x3FCD791C5F888823
  %28 = tail call fast double @llvm.exp.f64(double %mul253.us)
  br label %for.inc259.us

for.inc259.us:                                    ; preds = %if.end236.us, %if.else251.us
  %.sink715 = phi double [ %28, %if.else251.us ], [ 0.000000e+00, %if.end236.us ]
  %29 = getelementptr inbounds [64 x double], ptr %s3_s, i64 %indvars.iv696, i64 %indvars.iv691
  store double %.sink715, ptr %29, align 8
  %indvars.iv.next692 = add nuw nsw i64 %indvars.iv691, 1
  %exitcond695.not = icmp eq i64 %indvars.iv.next692, %wide.trip.count699
  br i1 %exitcond695.not, label %for.cond186.for.end261_crit_edge.us, label %if.end206.us, !llvm.loop !84

for.cond186.for.end261_crit_edge.us:              ; preds = %for.inc259.us
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %for.body268.preheader, label %for.cond186.preheader.us, !llvm.loop !85

for.body128:                                      ; preds = %for.body128.preheader, %for.inc175
  %cbmax.2639 = phi i32 [ %cbmax.3, %for.inc175 ], [ %cbmax.1, %for.body128.preheader ]
  %p.3638 = phi ptr [ %p.5, %for.inc175 ], [ %p.2, %for.body128.preheader ]
  %loop.1637 = phi i32 [ %inc176, %for.inc175 ], [ 0, %for.body128.preheader ]
  %incdec.ptr129 = getelementptr inbounds double, ptr %p.3638, i64 1
  %30 = load double, ptr %p.3638, align 8, !tbaa !21
  %incdec.ptr130 = getelementptr inbounds double, ptr %p.3638, i64 2
  %31 = load double, ptr %incdec.ptr129, align 8, !tbaa !21
  %conv131 = fptosi double %31 to i32
  %inc132 = add i32 %conv131, 1
  %cmp135 = fcmp fast oeq double %30, %sfreq
  br i1 %cmp135, label %for.cond138.preheader, label %if.else170

for.cond138.preheader:                            ; preds = %for.body128
  %cmp139.not632 = icmp slt i32 %conv131, 0
  br i1 %cmp139.not632, label %for.end167, label %for.body141.preheader

for.body141.preheader:                            ; preds = %for.cond138.preheader
  %wide.trip.count688 = zext i32 %inc132 to i64
  br label %for.body141

for.body141:                                      ; preds = %for.body141.preheader, %if.end162
  %indvars.iv685 = phi i64 [ 0, %for.body141.preheader ], [ %indvars.iv.next686, %if.end162 ]
  %p.4634 = phi ptr [ %incdec.ptr130, %for.body141.preheader ], [ %incdec.ptr155, %if.end162 ]
  %incdec.ptr142 = getelementptr inbounds double, ptr %p.4634, i64 1
  %32 = load double, ptr %p.4634, align 8, !tbaa !21
  %conv143 = fptosi double %32 to i32
  %incdec.ptr144 = getelementptr inbounds double, ptr %p.4634, i64 2
  %33 = load double, ptr %incdec.ptr142, align 8, !tbaa !21
  %conv145 = fptosi double %33 to i32
  %arrayidx147 = getelementptr inbounds i32, ptr %numlines_s, i64 %indvars.iv685
  store i32 %conv145, ptr %arrayidx147, align 4, !tbaa !13
  %34 = load double, ptr %incdec.ptr144, align 8, !tbaa !21
  %arrayidx150 = getelementptr inbounds double, ptr %qthr_s, i64 %indvars.iv685
  store double %34, ptr %arrayidx150, align 8, !tbaa !21
  %incdec.ptr151 = getelementptr inbounds double, ptr %p.4634, i64 4
  %incdec.ptr152 = getelementptr inbounds double, ptr %p.4634, i64 5
  %35 = load double, ptr %incdec.ptr151, align 8, !tbaa !21
  %arrayidx154 = getelementptr inbounds double, ptr %SNR, i64 %indvars.iv685
  store double %35, ptr %arrayidx154, align 8, !tbaa !21
  %36 = load double, ptr %incdec.ptr152, align 8, !tbaa !21
  %arrayidx157 = getelementptr inbounds [63 x double], ptr %bval_s, i64 0, i64 %indvars.iv685
  store double %36, ptr %arrayidx157, align 8, !tbaa !21
  %37 = zext i32 %conv143 to i64
  %cmp158.not = icmp eq i64 %indvars.iv685, %37
  br i1 %cmp158.not, label %if.end162, label %if.then160

if.then160:                                       ; preds = %for.body141
  %38 = load ptr, ptr @stderr, align 8, !tbaa !15
  %39 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 26, i64 1, ptr %38) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

if.end162:                                        ; preds = %for.body141
  %incdec.ptr155 = getelementptr inbounds double, ptr %p.4634, i64 6
  %dec = add nsw i32 %conv145, -1
  store i32 %dec, ptr %arrayidx147, align 4, !tbaa !13
  %indvars.iv.next686 = add nuw nsw i64 %indvars.iv685, 1
  %exitcond689.not = icmp eq i64 %indvars.iv.next686, %wide.trip.count688
  br i1 %exitcond689.not, label %for.end167, label %for.body141, !llvm.loop !86

for.end167:                                       ; preds = %if.end162, %for.cond138.preheader
  %i.2.lcssa = phi i32 [ 0, %for.cond138.preheader ], [ %inc132, %if.end162 ]
  %p.4.lcssa = phi ptr [ %incdec.ptr130, %for.cond138.preheader ], [ %incdec.ptr155, %if.end162 ]
  %idxprom168 = zext i32 %i.2.lcssa to i64
  %arrayidx169 = getelementptr inbounds i32, ptr %numlines_s, i64 %idxprom168
  store i32 -1, ptr %arrayidx169, align 4, !tbaa !13
  br label %for.inc175

if.else170:                                       ; preds = %for.body128
  %mul171 = mul nsw i32 %inc132, 6
  %idx.ext172 = sext i32 %mul171 to i64
  %add.ptr173 = getelementptr inbounds double, ptr %incdec.ptr130, i64 %idx.ext172
  br label %for.inc175

for.inc175:                                       ; preds = %for.end167, %if.else170
  %p.5 = phi ptr [ %p.4.lcssa, %for.end167 ], [ %add.ptr173, %if.else170 ]
  %cbmax.3 = phi i32 [ %inc132, %for.end167 ], [ %cbmax.2639, %if.else170 ]
  %inc176 = add nuw nsw i32 %loop.1637, 1
  %exitcond690.not = icmp eq i32 %inc176, 6
  br i1 %exitcond690.not, label %for.cond178.preheader, label %for.body128, !llvm.loop !87

for.body268:                                      ; preds = %for.body268.preheader, %for.inc334
  %p.6653 = phi ptr [ %p.8, %for.inc334 ], [ %p.5, %for.body268.preheader ]
  %loop.2652 = phi i32 [ %inc335, %for.inc334 ], [ 0, %for.body268.preheader ]
  %incdec.ptr269 = getelementptr inbounds double, ptr %p.6653, i64 1
  %40 = load double, ptr %p.6653, align 8, !tbaa !21
  %incdec.ptr270 = getelementptr inbounds double, ptr %p.6653, i64 2
  %41 = load double, ptr %incdec.ptr269, align 8, !tbaa !21
  %conv271 = fptosi double %41 to i32
  %cmp275 = fcmp fast oeq double %40, %sfreq
  br i1 %cmp275, label %for.cond278.preheader, label %if.else329

for.cond278.preheader:                            ; preds = %for.body268
  %cmp279.not647 = icmp slt i32 %conv271, 0
  br i1 %cmp279.not647, label %for.inc334, label %for.body281.preheader

for.body281.preheader:                            ; preds = %for.cond278.preheader
  %42 = add nuw i32 %conv271, 1
  %wide.trip.count705 = zext i32 %42 to i64
  br label %for.body281

for.body281:                                      ; preds = %for.body281.preheader, %for.inc326
  %indvars.iv701 = phi i64 [ 0, %for.body281.preheader ], [ %indvars.iv.next702, %for.inc326 ]
  %p.7650 = phi ptr [ %incdec.ptr270, %for.body281.preheader ], [ %incdec.ptr296, %for.inc326 ]
  %43 = load double, ptr %p.7650, align 8, !tbaa !21
  %conv283 = fptosi double %43 to i32
  %incdec.ptr284 = getelementptr inbounds double, ptr %p.7650, i64 2
  %incdec.ptr285 = getelementptr inbounds double, ptr %p.7650, i64 3
  %44 = load double, ptr %incdec.ptr284, align 8, !tbaa !21
  %conv286 = fptosi double %44 to i32
  %arrayidx288 = getelementptr inbounds i32, ptr %bu_l, i64 %indvars.iv701
  store i32 %conv286, ptr %arrayidx288, align 4, !tbaa !13
  %incdec.ptr289 = getelementptr inbounds double, ptr %p.7650, i64 4
  %45 = load double, ptr %incdec.ptr285, align 8, !tbaa !21
  %conv290 = fptosi double %45 to i32
  %arrayidx292 = getelementptr inbounds i32, ptr %bo_l, i64 %indvars.iv701
  store i32 %conv290, ptr %arrayidx292, align 4, !tbaa !13
  %incdec.ptr293 = getelementptr inbounds double, ptr %p.7650, i64 5
  %46 = load double, ptr %incdec.ptr289, align 8, !tbaa !21
  %arrayidx295 = getelementptr inbounds double, ptr %w1_l, i64 %indvars.iv701
  store double %46, ptr %arrayidx295, align 8, !tbaa !21
  %incdec.ptr296 = getelementptr inbounds double, ptr %p.7650, i64 6
  %47 = load double, ptr %incdec.ptr293, align 8, !tbaa !21
  %arrayidx298 = getelementptr inbounds double, ptr %w2_l, i64 %indvars.iv701
  store double %47, ptr %arrayidx298, align 8, !tbaa !21
  %48 = zext i32 %conv283 to i64
  %cmp299.not = icmp eq i64 %indvars.iv701, %48
  br i1 %cmp299.not, label %if.end303, label %if.then301

if.then301:                                       ; preds = %for.body281
  %49 = load ptr, ptr @stderr, align 8, !tbaa !15
  %50 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %49) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

if.end303:                                        ; preds = %for.body281
  %cmp304.not = icmp eq i64 %indvars.iv701, 0
  br i1 %cmp304.not, label %for.inc326, label %if.then306

if.then306:                                       ; preds = %if.end303
  %51 = load double, ptr %arrayidx295, align 8, !tbaa !21
  %52 = add nsw i64 %indvars.iv701, -1
  %arrayidx312 = getelementptr inbounds double, ptr %w2_l, i64 %52
  %53 = load double, ptr %arrayidx312, align 8, !tbaa !21
  %54 = fadd fast double %51, %53
  %sub313 = fsub fast double 1.000000e+00, %54
  %55 = tail call fast double @llvm.fabs.f64(double %sub313)
  %cmp314 = fcmp fast ogt double %55, 1.000000e-02
  br i1 %cmp314, label %if.then316, label %for.inc326

if.then316:                                       ; preds = %if.then306
  %arrayidx312.le = getelementptr inbounds double, ptr %w2_l, i64 %52
  %56 = load ptr, ptr @stderr, align 8, !tbaa !15
  %57 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 30, i64 1, ptr %56) #11
  %58 = load ptr, ptr @stderr, align 8, !tbaa !15
  %59 = load double, ptr %arrayidx295, align 8, !tbaa !21
  %60 = load double, ptr %arrayidx312.le, align 8, !tbaa !21
  %call323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.6, double noundef %59, double noundef %60) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

for.inc326:                                       ; preds = %if.end303, %if.then306
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1
  %exitcond706.not = icmp eq i64 %indvars.iv.next702, %wide.trip.count705
  br i1 %exitcond706.not, label %for.inc334, label %for.body281, !llvm.loop !88

if.else329:                                       ; preds = %for.body268
  %61 = mul i32 %conv271, 6
  %mul330 = add i32 %61, 6
  %idx.ext331 = sext i32 %mul330 to i64
  %add.ptr332 = getelementptr inbounds double, ptr %incdec.ptr270, i64 %idx.ext331
  br label %for.inc334

for.inc334:                                       ; preds = %for.inc326, %for.cond278.preheader, %if.else329
  %p.8 = phi ptr [ %add.ptr332, %if.else329 ], [ %incdec.ptr270, %for.cond278.preheader ], [ %incdec.ptr296, %for.inc326 ]
  %inc335 = add nuw nsw i32 %loop.2652, 1
  %exitcond707.not = icmp eq i32 %inc335, 6
  br i1 %exitcond707.not, label %for.body340, label %for.body268, !llvm.loop !89

for.body340:                                      ; preds = %for.inc334, %for.inc406
  %p.9660 = phi ptr [ %p.11, %for.inc406 ], [ %p.8, %for.inc334 ]
  %loop.3659 = phi i32 [ %inc407, %for.inc406 ], [ 0, %for.inc334 ]
  %incdec.ptr341 = getelementptr inbounds double, ptr %p.9660, i64 1
  %62 = load double, ptr %p.9660, align 8, !tbaa !21
  %incdec.ptr342 = getelementptr inbounds double, ptr %p.9660, i64 2
  %63 = load double, ptr %incdec.ptr341, align 8, !tbaa !21
  %conv343 = fptosi double %63 to i32
  %cmp347 = fcmp fast oeq double %62, %sfreq
  br i1 %cmp347, label %for.cond350.preheader, label %if.else401

for.cond350.preheader:                            ; preds = %for.body340
  %cmp351.not654 = icmp slt i32 %conv343, 0
  br i1 %cmp351.not654, label %for.inc406, label %for.body353.preheader

for.body353.preheader:                            ; preds = %for.cond350.preheader
  %64 = add nuw i32 %conv343, 1
  %wide.trip.count712 = zext i32 %64 to i64
  br label %for.body353

for.body353:                                      ; preds = %for.body353.preheader, %for.inc398
  %indvars.iv708 = phi i64 [ 0, %for.body353.preheader ], [ %indvars.iv.next709, %for.inc398 ]
  %p.10657 = phi ptr [ %incdec.ptr342, %for.body353.preheader ], [ %incdec.ptr368, %for.inc398 ]
  %65 = load double, ptr %p.10657, align 8, !tbaa !21
  %conv355 = fptosi double %65 to i32
  %incdec.ptr356 = getelementptr inbounds double, ptr %p.10657, i64 2
  %incdec.ptr357 = getelementptr inbounds double, ptr %p.10657, i64 3
  %66 = load double, ptr %incdec.ptr356, align 8, !tbaa !21
  %conv358 = fptosi double %66 to i32
  %arrayidx360 = getelementptr inbounds i32, ptr %bu_s, i64 %indvars.iv708
  store i32 %conv358, ptr %arrayidx360, align 4, !tbaa !13
  %incdec.ptr361 = getelementptr inbounds double, ptr %p.10657, i64 4
  %67 = load double, ptr %incdec.ptr357, align 8, !tbaa !21
  %conv362 = fptosi double %67 to i32
  %arrayidx364 = getelementptr inbounds i32, ptr %bo_s, i64 %indvars.iv708
  store i32 %conv362, ptr %arrayidx364, align 4, !tbaa !13
  %incdec.ptr365 = getelementptr inbounds double, ptr %p.10657, i64 5
  %68 = load double, ptr %incdec.ptr361, align 8, !tbaa !21
  %arrayidx367 = getelementptr inbounds double, ptr %w1_s, i64 %indvars.iv708
  store double %68, ptr %arrayidx367, align 8, !tbaa !21
  %incdec.ptr368 = getelementptr inbounds double, ptr %p.10657, i64 6
  %69 = load double, ptr %incdec.ptr365, align 8, !tbaa !21
  %arrayidx370 = getelementptr inbounds double, ptr %w2_s, i64 %indvars.iv708
  store double %69, ptr %arrayidx370, align 8, !tbaa !21
  %70 = zext i32 %conv355 to i64
  %cmp371.not = icmp eq i64 %indvars.iv708, %70
  br i1 %cmp371.not, label %if.end375, label %if.then373

if.then373:                                       ; preds = %for.body353
  %71 = load ptr, ptr @stderr, align 8, !tbaa !15
  %72 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 27, i64 1, ptr %71) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

if.end375:                                        ; preds = %for.body353
  %cmp376.not = icmp eq i64 %indvars.iv708, 0
  br i1 %cmp376.not, label %for.inc398, label %if.then378

if.then378:                                       ; preds = %if.end375
  %73 = load double, ptr %arrayidx367, align 8, !tbaa !21
  %74 = add nsw i64 %indvars.iv708, -1
  %arrayidx384 = getelementptr inbounds double, ptr %w2_s, i64 %74
  %75 = load double, ptr %arrayidx384, align 8, !tbaa !21
  %76 = fadd fast double %73, %75
  %sub385 = fsub fast double 1.000000e+00, %76
  %77 = tail call fast double @llvm.fabs.f64(double %sub385)
  %cmp386 = fcmp fast ogt double %77, 1.000000e-02
  br i1 %cmp386, label %if.then388, label %for.inc398

if.then388:                                       ; preds = %if.then378
  %arrayidx384.le = getelementptr inbounds double, ptr %w2_s, i64 %74
  %78 = load ptr, ptr @stderr, align 8, !tbaa !15
  %79 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 30, i64 1, ptr %78) #11
  %80 = load ptr, ptr @stderr, align 8, !tbaa !15
  %81 = load double, ptr %arrayidx367, align 8, !tbaa !21
  %82 = load double, ptr %arrayidx384.le, align 8, !tbaa !21
  %call395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef nonnull @.str.6, double noundef %81, double noundef %82) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

for.inc398:                                       ; preds = %if.end375, %if.then378
  %indvars.iv.next709 = add nuw nsw i64 %indvars.iv708, 1
  %exitcond713.not = icmp eq i64 %indvars.iv.next709, %wide.trip.count712
  br i1 %exitcond713.not, label %for.inc406, label %for.body353, !llvm.loop !90

if.else401:                                       ; preds = %for.body340
  %83 = mul i32 %conv343, 6
  %mul402 = add i32 %83, 6
  %idx.ext403 = sext i32 %mul402 to i64
  %add.ptr404 = getelementptr inbounds double, ptr %incdec.ptr342, i64 %idx.ext403
  br label %for.inc406

for.inc406:                                       ; preds = %for.inc398, %for.cond350.preheader, %if.else401
  %p.11 = phi ptr [ %add.ptr404, %if.else401 ], [ %incdec.ptr342, %for.cond350.preheader ], [ %incdec.ptr368, %for.inc398 ]
  %inc407 = add nuw nsw i32 %loop.3659, 1
  %exitcond714.not = icmp eq i32 %inc407, 6
  br i1 %exitcond714.not, label %for.end408, label %for.body340, !llvm.loop !91

for.end408:                                       ; preds = %for.inc406
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %bval_s) #10
  call void @llvm.lifetime.end.p0(i64 504, ptr nonnull %bval_l) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #5

declare void @init_fft() local_unnamed_addr #6

declare void @fft_long(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @fft_short(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #5

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.minnum.f64(double, double) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { noreturn nounwind "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !7, i64 168}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!6, !10, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!6, !12, i64 152}
!17 = !{!12, !12, i64 0}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !8, i64 0}
!23 = distinct !{!23, !19, !20}
!24 = distinct !{!24, !19, !20}
!25 = distinct !{!25, !19, !20}
!26 = distinct !{!26, !19, !20}
!27 = distinct !{!27, !19, !20}
!28 = distinct !{!28, !19, !20}
!29 = distinct !{!29, !19, !20}
!30 = distinct !{!30, !19, !20}
!31 = distinct !{!31, !19, !20}
!32 = distinct !{!32, !19, !20}
!33 = distinct !{!33, !19, !20}
!34 = distinct !{!34, !19, !20}
!35 = distinct !{!35, !19, !20}
!36 = !{!6, !10, i64 192}
!37 = distinct !{!37, !19, !20}
!38 = distinct !{!38, !19, !20}
!39 = distinct !{!39, !19, !20}
!40 = distinct !{!40, !19, !20}
!41 = !{!6, !10, i64 204}
!42 = !{!6, !10, i64 36}
!43 = !{i64 0, i64 176, !44, i64 176, i64 312, !44}
!44 = !{!8, !8, i64 0}
!45 = distinct !{!45, !19, !20}
!46 = distinct !{!46, !19, !20}
!47 = distinct !{!47, !19, !20}
!48 = distinct !{!48, !19, !20}
!49 = distinct !{!49, !19, !20}
!50 = distinct !{!50, !19, !20}
!51 = distinct !{!51, !19, !20}
!52 = distinct !{!52, !19, !20}
!53 = distinct !{!53, !19, !20}
!54 = distinct !{!54, !19, !20}
!55 = distinct !{!55, !19, !20}
!56 = distinct !{!56, !19, !20}
!57 = distinct !{!57, !19, !20}
!58 = distinct !{!58, !19, !20}
!59 = !{!6, !10, i64 160}
!60 = distinct !{!60, !19, !20}
!61 = distinct !{!61, !19, !20}
!62 = distinct !{!62, !19, !20}
!63 = distinct !{!63, !19, !20}
!64 = distinct !{!64, !19, !20}
!65 = distinct !{!65, !19, !20}
!66 = distinct !{!66, !19, !20}
!67 = distinct !{!67, !19, !20}
!68 = distinct !{!68, !19, !20}
!69 = distinct !{!69, !19, !20}
!70 = distinct !{!70, !19, !20}
!71 = distinct !{!71, !19, !20}
!72 = distinct !{!72, !19, !20}
!73 = distinct !{!73, !19, !20}
!74 = distinct !{!74, !19, !20}
!75 = distinct !{!75, !19, !20}
!76 = distinct !{!76, !19, !20}
!77 = !{!6, !10, i64 156}
!78 = distinct !{!78, !19, !20}
!79 = distinct !{!79, !19, !20}
!80 = distinct !{!80, !19, !20}
!81 = distinct !{!81, !19, !20}
!82 = distinct !{!82, !19, !20}
!83 = distinct !{!83, !19, !20}
!84 = distinct !{!84, !19, !20}
!85 = distinct !{!85, !19, !20}
!86 = distinct !{!86, !19, !20}
!87 = distinct !{!87, !19, !20}
!88 = distinct !{!88, !19, !20}
!89 = distinct !{!89, !19, !20}
!90 = distinct !{!90, !19, !20}
!91 = distinct !{!91, !19, !20}
