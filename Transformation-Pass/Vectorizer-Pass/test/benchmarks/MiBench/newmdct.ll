; ModuleID = 'newmdct.c'
source_filename = "newmdct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@mdct_sub48.init = internal unnamed_addr global i1 false, align 4
@sb_sample = internal global [2 x [2 x [18 x [32 x double]]]] zeroinitializer, align 16
@win = internal unnamed_addr global [4 x [36 x double]] zeroinitializer, align 16
@ca = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@cs = internal unnamed_addr global [8 x double] zeroinitializer, align 16
@mdct_init48.c = internal unnamed_addr constant [8 x double] [double -6.000000e-01, double -5.350000e-01, double -3.300000e-01, double -1.850000e-01, double -9.500000e-02, double -4.100000e-02, double -1.420000e-02, double -3.700000e-03], align 16
@cos_l = internal unnamed_addr global [244 x double] zeroinitializer, align 16
@mdct_init48.d3 = internal unnamed_addr constant [4 x i32] [i32 1, i32 7, i32 10, i32 16], align 16
@mdct_init48.d9 = internal unnamed_addr constant [2 x i32] [i32 4, i32 13], align 4
@all = internal unnamed_addr constant [12 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 12, i32 14, i32 15, i32 17], align 16
@enwindow = internal unnamed_addr global [256 x double] [double 0x3FA251E002C5BE4C, double 0x3F924E1FFC2760F6, double 0x3F69ADFFBE4CE877, double 0x3F642100110318CA, double 9.713170e-04, double 2.188680e-04, double 1.015660e-04, double 1.382800e-05, double 0x3FA24EFFFE8EA200, double 0x3F6BDDFFD89B6AB3, double 9.837150e-04, double 9.918200e-05, double -4.770000e-07, double 1.039510e-04, double 0x3F4F3FFF520DC771, double 0x3F67470033705EA7, double 1.239800e-05, double 1.912120e-04, double 0x3F62B3FFD4EA8624, double 0x3F9166FFFA87D736, double 0x3F9334FFF82E8B95, double 0x3F658D0036BA2EEE, double 2.474780e-04, double 1.478200e-05, double 0x3FA2467FFD4C82A1, double 0x3F6DD8000F4D029B, double 0x3F503FFFB08B08EE, double 9.632100e-05, double -4.770000e-07, double 1.058580e-04, double 0x3F4E7FFFB6FC4D65, double 0x3F64A8000EC3923C, double 1.144400e-05, double 1.654620e-04, double 0x3F6148FFC594EC83, double 0x3F907FDFF8E84D76, double 0x3F941B0002FC8112, double 0x3F66F7002FAE4C0C, double 2.770420e-04, double 1.668900e-05, double 0x3FA2385FFEFF602E, double 0x3F6F9BFFD8F150EE, double 9.951590e-04, double 9.346000e-05, double -4.770000e-07, double 1.072880e-04, double 9.026530e-04, double 0x3F61D0FFD9B6E277, double 1.001400e-05, double 1.401900e-04, double 0x3F5FBDFF99419ECB, double 0x3F8F32C00A8B630F, double 0x3F94FFC002FEA6D3, double 0x3F685CFFCF1C771E, double 3.075600e-04, double 1.812000e-05, double 3.543520e-02, double 0x3F7095FFF5DDD6FA, double 9.942050e-04, double 9.059900e-05, double -4.770000e-07, double 1.082420e-04, double 8.687970e-04, double 0x3F5D7FFFE1EF6B2A, double 0x3EE3000CEB1FF411, double 1.163480e-04, double 0x3F5CF2005A6548A7, double 0x3F8D680010E953B9, double 0x3F95E29FFB661AF0, double 3.141880e-03, double 3.390310e-04, double 1.955000e-05, double 0x3FA20B4002AD0C1B, double 4.215240e-03, double 9.894370e-04, double 8.726100e-05, double -4.770000e-07, double 1.087190e-04, double 0x3F4B2C0063FE014D, double 0x3F56EDFFEFB14AB3, double 8.106000e-06, double 9.393700e-05, double 0x3F5A2DFFA8D35995, double 0x3F8BA03FF357727A, double 0x3F96C320035E36F6, double 0x3F6B17002A4FE853, double 3.714560e-04, double 2.145800e-05, double 3.500700e-02, double 0x3F71D9800E83258F, double 9.808540e-04, double 8.392300e-05, double -4.770000e-07, double 1.087190e-04, double 7.839200e-04, double 9.713170e-04, double 7.629000e-06, double 7.295600e-05, double 0x3F577800309639AD, double 0x3F89DC800CEF6B77, double 0x3F97A0BFFE8830BC, double 0x3F6C6700031EDD2A, double 4.043580e-04, double 2.336500e-05, double 0x3FA1C82FFC6969F3, double 0x3F72567FFA9D50C4, double 9.689330e-04, double 8.058500e-05, double -9.540000e-07, double 1.082420e-04, double 7.319450e-04, double 5.159380e-04, double 6.676000e-06, double 5.292900e-05, double 0x3F54CDFF9F2972E2, double 0x3F881D80076614A1, double 0x3F987B2006DB9161, double 0x3F6DAD000EFFB365, double 4.382130e-04, double 2.527200e-05, double 0x3FA19E90011D1416, double 0x3F72BBFFFE860AFA, double 0x3F4F43FFAB93B97D, double 7.677100e-05, double -9.540000e-07, double 1.068120e-04, double 6.742480e-04, double 3.337900e-05, double 6.199000e-06, double 3.433200e-05, double 0x3F52340073D47447, double 0x3F86643FF91CEA7A, double 0x3F99519FFD2D5F2B, double 0x3F6EE6000ACDF57D, double 4.725460e-04, double 2.765700e-05, double 0x3FA16FC0016255B6, double 0x3F730AFFEBE6A112, double 9.355550e-04, double 0x3F13400155732CA6, double -9.540000e-07, double 1.053810e-04, double 6.103520e-04, double -4.758830e-04, double 5.245000e-06, double 1.716600e-05, double 9.565350e-04, double 0x3F84B1400FA0C315, double 2.552700e-02, double 0x3F70087FF0141377, double 5.073550e-04, double 3.004100e-05, double 0x3FA13BE000055E64, double 0x3F734380077742AD, double 0x3F4DFC010F4107FF, double 7.009500e-05, double -9.540000e-07, double 1.025200e-04, double 5.393030e-04, double 0xBF5093FF8462AE54, double 4.768000e-06, double 9.540000e-07, double 8.068080e-04, double 0x3F83057FFA3ED383, double 0x3F9AF14004E3FBA4, double 0x3F70957FEAAD18B9, double 5.421640e-04, double 3.242500e-05, double 0x3FA102EFFD062E20, double 0x3F73677FF48A898F, double 8.916850e-04, double 6.628000e-05, double -1.431000e-06, double 9.918200e-05, double 4.625320e-04, double 0xBF59C80067E27000, double 4.292000e-06, double -1.382800e-05, double 6.618500e-04, double 0x3F8161C00E7868C7, double 0x3F9BB93FFD1B1E3F, double 0x3F71197FEA014C42, double 5.769730e-04, double 3.480900e-05, double 0x3FA0C53FFF633BD3, double 0x3F7376FFF7D8A559, double 8.664130e-04, double 6.294300e-05, double -1.431000e-06, double 9.536700e-05, double 3.786090e-04, double 0xBF61B500163F206B, double 3.815000e-06, double -2.718000e-05, double 5.221370e-04, double 0x3F7F8D7FEC04B1A7, double 0x3F9C7BA000DE43BA, double 0x3F7193001136A2EE, double 6.117820e-04, double 3.767000e-05, double 0x3FA082CFFE85818A, double 0x3F73737FEE3BA130, double 0x3F4B7C00F1307329, double 5.960500e-05, double -1.907000e-06, double 9.012200e-05, double 2.884860e-04, double 0xBF66BA0038D75965, double 3.338000e-06, double -3.957700e-05, double 3.881450e-04, double 0x3F7C6A00018B2312, double 0x3F9D37C002307E44, double 0x3F72018010642EDC, double 6.465910e-04, double 4.053100e-05, double 0x3FA03BE000055E64, double 0x3F735DFFEE14F995, double 0x3F4A87FEF0132B89, double 5.579000e-05, double -1.907000e-06, double 8.440000e-05, double 1.916890e-04, double 0xBF6BF1FFFBE8072A, double 3.338000e-06, double -5.054500e-05, double 2.598760e-04, double 0x3F7959FFEA754312, double 0x3F9DED20070F1B84, double 0x3F72640015E0A32A, double 6.809230e-04, double 4.339200e-05, double 0x3F9FE13FFEFC278C, double 0x3F73370002956CCA, double 7.791520e-04, double 5.292900e-05, double -2.384000e-06, double 7.772400e-05, double 8.821500e-05, double 0xBF70ADFFE940063C, double 2.861000e-06, double -6.055800e-05, double 1.373290e-04, double 5.462170e-03, double 0x3F9E9B7FF8B3B071, double 0x3F72B87FF4E906D0, double 7.143020e-04, double 4.625300e-05, double 0x3F9F425FFF77A281, double 0x3F72FF7FFD6647B3, double 7.472040e-04, double 4.959100e-05, double 0x3F737B8017D72606, double 2.145800e-05, double 0xBF123FFC220291DE, double 2.384000e-06], align 16
@mm = internal unnamed_addr global [16 x [31 x double]] zeroinitializer, align 16
@cos_s = internal unnamed_addr global [6 x [6 x double]] zeroinitializer, align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @mdct_sub48(ptr nocapture noundef readonly %gfp, ptr noundef %w0, ptr noundef %w1, ptr nocapture noundef %mdct_freq, ptr nocapture noundef readonly %l3_side) local_unnamed_addr #0 {
entry:
  %.b = load i1, ptr @mdct_sub48.init, align 4
  br i1 %.b, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @mdct_init48()
  store i1 true, ptr @mdct_sub48.init, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %0 = load i32, ptr %stereo, align 4, !tbaa !5
  %cmp1625 = icmp sgt i32 %0, 0
  br i1 %cmp1625, label %for.cond2.preheader.lr.ph, label %for.end419

for.cond2.preheader.lr.ph:                        ; preds = %if.end
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %filter_type = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 59
  %highpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 58
  %lowpass_band = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 57
  %lowpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 53
  %lowpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 54
  %highpass1 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 55
  %highpass2 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 56
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.lr.ph, %for.inc417
  %indvars.iv675 = phi i64 [ 0, %for.cond2.preheader.lr.ph ], [ %indvars.iv.next676, %for.inc417 ]
  %wk.0626 = phi ptr [ %w0, %for.cond2.preheader.lr.ph ], [ %w1, %for.inc417 ]
  %1 = load i32, ptr %mode_gr, align 8, !tbaa !13
  %cmp3622 = icmp sgt i32 %1, 0
  br i1 %cmp3622, label %for.body4, label %for.inc417

for.body4:                                        ; preds = %for.cond2.preheader, %for.end400
  %indvars.iv671 = phi i64 [ %indvars.iv.next672, %for.end400 ], [ 0, %for.cond2.preheader ]
  %wk.1623 = phi ptr [ %add.ptr30, %for.end400 ], [ %wk.0626, %for.cond2.preheader ]
  %arrayidx9 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv671
  %2 = sub nsw i64 1, %indvars.iv671
  %arrayidx16 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2
  br label %for.body21

for.body21:                                       ; preds = %for.body4, %for.end
  %k.0608 = phi i32 [ 0, %for.body4 ], [ %inc32, %for.end ]
  %wk.2607 = phi ptr [ %wk.1623, %for.body4 ], [ %add.ptr30, %for.end ]
  %samp.0606 = phi ptr [ %arrayidx16, %for.body4 ], [ %add.ptr29, %for.end ]
  tail call fastcc void @window_subband(ptr noundef %wk.2607, ptr noundef nonnull %samp.0606)
  %add.ptr = getelementptr inbounds i16, ptr %wk.2607, i64 32
  %add.ptr22 = getelementptr inbounds double, ptr %samp.0606, i64 32
  tail call fastcc void @window_subband(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr22)
  br label %for.body25

for.body25:                                       ; preds = %for.body21, %for.body25
  %indvars.iv = phi i64 [ 1, %for.body21 ], [ %indvars.iv.next, %for.body25 ]
  %3 = add nuw nsw i64 %indvars.iv, 32
  %arrayidx27 = getelementptr inbounds double, ptr %samp.0606, i64 %3
  %4 = load double, ptr %arrayidx27, align 8, !tbaa !14
  %mul = fneg fast double %4
  store double %mul, ptr %arrayidx27, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %cmp24 = icmp ult i64 %indvars.iv, 30
  br i1 %cmp24, label %for.body25, label %for.end, !llvm.loop !16

for.end:                                          ; preds = %for.body25
  %add.ptr29 = getelementptr inbounds double, ptr %samp.0606, i64 64
  %add.ptr30 = getelementptr inbounds i16, ptr %wk.2607, i64 64
  %inc32 = add nuw nsw i32 %k.0608, 1
  %exitcond.not = icmp eq i32 %inc32, 9
  br i1 %exitcond.not, label %for.end33, label %for.body21, !llvm.loop !19

for.end33:                                        ; preds = %for.end
  %arrayidx6 = getelementptr inbounds [2 x [576 x double]], ptr %mdct_freq, i64 %indvars.iv671, i64 %indvars.iv675
  %arrayidx12 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx9, i64 0, i64 %indvars.iv675
  %5 = load i32, ptr %filter_type, align 8, !tbaa !20
  %cmp34 = icmp eq i32 %5, 0
  br i1 %cmp34, label %if.then35, label %if.end112

if.then35:                                        ; preds = %for.end33
  %6 = load i32, ptr %highpass_band, align 4, !tbaa !21
  %7 = load i32, ptr %lowpass_band, align 8, !tbaa !22
  %band.1611 = add i32 %6, 1
  %cmp38612 = icmp slt i32 %band.1611, %7
  br i1 %cmp38612, label %for.body39.lr.ph, label %if.end112

for.body39.lr.ph:                                 ; preds = %if.then35
  %8 = load float, ptr %lowpass1, align 8, !tbaa !23
  %conv40 = fpext float %8 to double
  %9 = load float, ptr %highpass1, align 8, !tbaa !24
  %conv74 = fpext float %9 to double
  %10 = sext i32 %band.1611 to i64
  br label %for.body39

for.body39:                                       ; preds = %for.body39.lr.ph, %for.inc109
  %indvars.iv641 = phi i64 [ %10, %for.body39.lr.ph ], [ %indvars.iv.next642, %for.inc109 ]
  %11 = trunc i64 %indvars.iv641 to i32
  %conv = sitofp i32 %11 to double
  %div = fmul fast double %conv, 0x3FA0842108421084
  %cmp41 = fcmp fast ogt double %div, %conv40
  br i1 %cmp41, label %land.lhs.true, label %if.end73

land.lhs.true:                                    ; preds = %for.body39
  %12 = load float, ptr %lowpass2, align 4, !tbaa !25
  %conv43 = fpext float %12 to double
  %cmp44 = fcmp fast olt double %div, %conv43
  br i1 %cmp44, label %if.then46, label %if.end73

if.then46:                                        ; preds = %land.lhs.true
  %sub49 = fsub fast double %conv40, %div
  %mul50 = fmul fast double %sub49, 0x3FF921FB54442D18
  %sub53 = fsub fast float %12, %8
  %conv54 = fpext float %sub53 to double
  %div55 = fdiv fast double %mul50, %conv54
  %13 = tail call fast double @llvm.cos.f64(double %div55)
  br label %for.body59

for.body59:                                       ; preds = %if.then46, %for.body59
  %indvars.iv633 = phi i64 [ 0, %if.then46 ], [ %indvars.iv.next634, %for.body59 ]
  %arrayidx68 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %indvars.iv633, i64 %indvars.iv641
  %14 = load double, ptr %arrayidx68, align 8, !tbaa !14
  %mul69 = fmul fast double %14, %13
  store double %mul69, ptr %arrayidx68, align 8, !tbaa !14
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1
  %exitcond636.not = icmp eq i64 %indvars.iv.next634, 18
  br i1 %exitcond636.not, label %if.end73, label %for.body59, !llvm.loop !26

if.end73:                                         ; preds = %for.body59, %land.lhs.true, %for.body39
  %cmp75 = fcmp fast ogt double %div, %conv74
  br i1 %cmp75, label %land.lhs.true77, label %for.inc109

land.lhs.true77:                                  ; preds = %if.end73
  %15 = load float, ptr %highpass2, align 4, !tbaa !27
  %conv78 = fpext float %15 to double
  %cmp79 = fcmp fast olt double %div, %conv78
  br i1 %cmp79, label %if.then81, label %for.inc109

if.then81:                                        ; preds = %land.lhs.true77
  %sub84 = fsub fast double %conv78, %div
  %mul85 = fmul fast double %sub84, 0x3FF921FB54442D18
  %sub88 = fsub fast float %15, %9
  %conv89 = fpext float %sub88 to double
  %div90 = fdiv fast double %mul85, %conv89
  %16 = tail call fast double @llvm.cos.f64(double %div90)
  br label %for.body94

for.body94:                                       ; preds = %if.then81, %for.body94
  %indvars.iv637 = phi i64 [ 0, %if.then81 ], [ %indvars.iv.next638, %for.body94 ]
  %arrayidx103 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %indvars.iv637, i64 %indvars.iv641
  %17 = load double, ptr %arrayidx103, align 8, !tbaa !14
  %mul104 = fmul fast double %17, %16
  store double %mul104, ptr %arrayidx103, align 8, !tbaa !14
  %indvars.iv.next638 = add nuw nsw i64 %indvars.iv637, 1
  %exitcond640.not = icmp eq i64 %indvars.iv.next638, 18
  br i1 %exitcond640.not, label %for.inc109, label %for.body94, !llvm.loop !28

for.inc109:                                       ; preds = %for.body94, %if.end73, %land.lhs.true77
  %indvars.iv.next642 = add nsw i64 %indvars.iv641, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next642 to i32
  %exitcond644.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond644.not, label %if.end112, label %for.body39, !llvm.loop !29

if.end112:                                        ; preds = %for.inc109, %if.then35, %for.end33
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx12, i64 0, i32 6
  br label %for.body116

for.body116:                                      ; preds = %if.end112, %cleanup
  %indvars.iv667 = phi i64 [ 0, %if.end112 ], [ %indvars.iv.next668, %cleanup ]
  %mdct_enc.0617 = phi ptr [ %arrayidx6, %if.end112 ], [ %add.ptr399, %cleanup ]
  %18 = load i32, ptr %block_type, align 8, !tbaa !30
  %19 = load i32, ptr %lowpass_band, align 8, !tbaa !22
  %20 = sext i32 %19 to i64
  %cmp118.not = icmp slt i64 %indvars.iv667, %20
  br i1 %cmp118.not, label %lor.lhs.false, label %if.then123

lor.lhs.false:                                    ; preds = %for.body116
  %21 = load i32, ptr %highpass_band, align 4, !tbaa !21
  %22 = sext i32 %21 to i64
  %cmp121.not = icmp sgt i64 %indvars.iv667, %22
  br i1 %cmp121.not, label %if.else, label %if.then123

if.then123:                                       ; preds = %lor.lhs.false, %for.body116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(144) %mdct_enc.0617, i8 0, i64 144, i1 false)
  br label %if.end352

if.else:                                          ; preds = %lor.lhs.false
  %cmp124 = icmp eq i32 %18, 2
  br i1 %cmp124, label %for.body130, label %for.cond278.preheader

for.cond278.preheader:                            ; preds = %if.else
  %idxprom282 = sext i32 %18 to i64
  br label %for.body281

for.body130:                                      ; preds = %if.else, %for.body130
  %indvars.iv652 = phi i64 [ %indvars.iv.next653, %for.body130 ], [ 2, %if.else ]
  %arrayidx133 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %indvars.iv652
  %23 = load double, ptr %arrayidx133, align 8, !tbaa !14
  %24 = add nuw nsw i64 %indvars.iv652, 6
  %arrayidx142 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %24, i64 %indvars.iv667
  %25 = load double, ptr %arrayidx142, align 8, !tbaa !14
  %mul143 = fmul fast double %25, %23
  %26 = sub nuw nsw i64 11, %indvars.iv652
  %arrayidx152 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %26, i64 %indvars.iv667
  %27 = load double, ptr %arrayidx152, align 8, !tbaa !14
  %sub153 = fsub fast double %mul143, %27
  %arrayidx155 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %indvars.iv652
  store double %sub153, ptr %arrayidx155, align 8, !tbaa !14
  %28 = add nuw nsw i64 %indvars.iv652, 12
  %arrayidx164 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %28, i64 %indvars.iv667
  %29 = load double, ptr %arrayidx164, align 8, !tbaa !14
  %30 = sub nuw nsw i64 17, %indvars.iv652
  %arrayidx173 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %30, i64 %indvars.iv667
  %31 = load double, ptr %arrayidx173, align 8, !tbaa !14
  %mul174 = fmul fast double %31, %23
  %add175 = fadd fast double %mul174, %29
  %32 = add nuw nsw i64 %indvars.iv652, 3
  %arrayidx178 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %32
  store double %add175, ptr %arrayidx178, align 8, !tbaa !14
  %mul188 = fmul fast double %29, %23
  %sub198 = fsub fast double %mul188, %31
  %arrayidx201 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %24
  store double %sub198, ptr %arrayidx201, align 8, !tbaa !14
  %arrayidx210 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %indvars.iv652, i64 %indvars.iv667
  %33 = load double, ptr %arrayidx210, align 8, !tbaa !14
  %34 = sub nuw nsw i64 5, %indvars.iv652
  %arrayidx220 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %34, i64 %indvars.iv667
  %35 = load double, ptr %arrayidx220, align 8, !tbaa !14
  %mul221 = fmul fast double %35, %23
  %add222 = fadd fast double %mul221, %33
  %36 = add nuw nsw i64 %indvars.iv652, 9
  %arrayidx225 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %36
  store double %add222, ptr %arrayidx225, align 8, !tbaa !14
  %mul235 = fmul fast double %33, %23
  %sub246 = fsub fast double %mul235, %35
  %arrayidx249 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %28
  store double %sub246, ptr %arrayidx249, align 8, !tbaa !14
  %arrayidx259 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %24, i64 %indvars.iv667
  %37 = load double, ptr %arrayidx259, align 8, !tbaa !14
  %arrayidx269 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %26, i64 %indvars.iv667
  %38 = load double, ptr %arrayidx269, align 8, !tbaa !14
  %mul270 = fmul fast double %38, %23
  %add271 = fadd fast double %mul270, %37
  %39 = add nuw nsw i64 %indvars.iv652, 15
  %arrayidx274 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %39
  store double %add271, ptr %arrayidx274, align 8, !tbaa !14
  %indvars.iv.next653 = add nsw i64 %indvars.iv652, -1
  %cmp128.not = icmp eq i64 %indvars.iv652, 0
  br i1 %cmp128.not, label %for.end276, label %for.body130, !llvm.loop !32

for.end276:                                       ; preds = %for.body130
  tail call fastcc void @mdct_short(ptr noundef %mdct_enc.0617)
  br label %if.end352

for.body281:                                      ; preds = %for.cond278.preheader, %for.body281
  %indvars.iv645 = phi i64 [ 8, %for.cond278.preheader ], [ %indvars.iv.next646, %for.body281 ]
  %arrayidx285 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom282, i64 %indvars.iv645
  %40 = load double, ptr %arrayidx285, align 8, !tbaa !14
  %arrayidx293 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %indvars.iv645, i64 %indvars.iv667
  %41 = load double, ptr %arrayidx293, align 8, !tbaa !14
  %mul294 = fmul fast double %41, %40
  %42 = add nuw nsw i64 %indvars.iv645, 9
  %arrayidx299 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom282, i64 %42
  %43 = load double, ptr %arrayidx299, align 8, !tbaa !14
  %44 = sub nuw nsw i64 17, %indvars.iv645
  %arrayidx308 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %indvars.iv671, i64 %44, i64 %indvars.iv667
  %45 = load double, ptr %arrayidx308, align 8, !tbaa !14
  %mul309 = fmul fast double %45, %43
  %sub310 = fsub fast double %mul294, %mul309
  %arrayidx312 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %indvars.iv645
  store double %sub310, ptr %arrayidx312, align 8, !tbaa !14
  %46 = add nuw nsw i64 %indvars.iv645, 18
  %arrayidx317 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom282, i64 %46
  %47 = load double, ptr %arrayidx317, align 8, !tbaa !14
  %arrayidx326 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %indvars.iv645, i64 %indvars.iv667
  %48 = load double, ptr %arrayidx326, align 8, !tbaa !14
  %mul327 = fmul fast double %48, %47
  %49 = add nuw nsw i64 %indvars.iv645, 27
  %arrayidx332 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 %idxprom282, i64 %49
  %50 = load double, ptr %arrayidx332, align 8, !tbaa !14
  %arrayidx342 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 %2, i64 %44, i64 %indvars.iv667
  %51 = load double, ptr %arrayidx342, align 8, !tbaa !14
  %mul343 = fmul fast double %51, %50
  %add344 = fadd fast double %mul343, %mul327
  %arrayidx347 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %42
  store double %add344, ptr %arrayidx347, align 8, !tbaa !14
  %indvars.iv.next646 = add nsw i64 %indvars.iv645, -1
  %cmp279.not = icmp eq i64 %indvars.iv645, 0
  br i1 %cmp279.not, label %for.end350, label %for.body281, !llvm.loop !33

for.end350:                                       ; preds = %for.body281
  tail call fastcc void @mdct_long(ptr noundef %mdct_enc.0617)
  br label %if.end352

if.end352:                                        ; preds = %for.end276, %for.end350, %if.then123
  %cmp353.not = icmp eq i32 %18, 2
  %cmp356 = icmp eq i64 %indvars.iv667, 0
  %or.cond = select i1 %cmp353.not, i1 true, i1 %cmp356
  br i1 %or.cond, label %cleanup, label %for.body363

for.body363:                                      ; preds = %if.end352, %for.body363
  %indvars.iv663 = phi i64 [ %indvars.iv.next664, %for.body363 ], [ 7, %if.end352 ]
  %arrayidx365 = getelementptr inbounds double, ptr %mdct_enc.0617, i64 %indvars.iv663
  %52 = load double, ptr %arrayidx365, align 8, !tbaa !14
  %arrayidx367 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %indvars.iv663
  %53 = load double, ptr %arrayidx367, align 8, !tbaa !14
  %mul368 = fmul fast double %53, %52
  %54 = xor i64 %indvars.iv663, -1
  %arrayidx371 = getelementptr inbounds double, ptr %mdct_enc.0617, i64 %54
  %55 = load double, ptr %arrayidx371, align 8, !tbaa !14
  %arrayidx373 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %indvars.iv663
  %56 = load double, ptr %arrayidx373, align 8, !tbaa !14
  %mul374 = fmul fast double %56, %55
  %add375 = fadd fast double %mul374, %mul368
  %mul380 = fmul fast double %56, %52
  %mul386 = fmul fast double %55, %53
  %sub387 = fsub fast double %mul380, %mul386
  store double %add375, ptr %arrayidx371, align 8, !tbaa !14
  store double %sub387, ptr %arrayidx365, align 8, !tbaa !14
  %indvars.iv.next664 = add nsw i64 %indvars.iv663, -1
  %cmp361.not = icmp eq i64 %indvars.iv663, 0
  br i1 %cmp361.not, label %cleanup, label %for.body363, !llvm.loop !34

cleanup:                                          ; preds = %for.body363, %if.end352
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1
  %add.ptr399 = getelementptr inbounds double, ptr %mdct_enc.0617, i64 18
  %exitcond670.not = icmp eq i64 %indvars.iv.next668, 32
  br i1 %exitcond670.not, label %for.end400, label %for.body116, !llvm.loop !35

for.end400:                                       ; preds = %cleanup
  %indvars.iv.next672 = add nuw nsw i64 %indvars.iv671, 1
  %57 = load i32, ptr %mode_gr, align 8, !tbaa !13
  %58 = sext i32 %57 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next672, %58
  br i1 %cmp3, label %for.body4, label %for.end403, !llvm.loop !36

for.end403:                                       ; preds = %for.end400
  %cmp405 = icmp eq i32 %57, 1
  br i1 %cmp405, label %if.then407, label %for.inc417

if.then407:                                       ; preds = %for.end403
  %arrayidx409 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675
  %arrayidx414 = getelementptr inbounds [2 x [2 x [18 x [32 x double]]]], ptr @sb_sample, i64 0, i64 %indvars.iv675, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4608) %arrayidx409, ptr noundef nonnull align 16 dereferenceable(4608) %arrayidx414, i64 4608, i1 false)
  br label %for.inc417

for.inc417:                                       ; preds = %for.cond2.preheader, %for.end403, %if.then407
  %indvars.iv.next676 = add nuw nsw i64 %indvars.iv675, 1
  %59 = load i32, ptr %stereo, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %cmp1 = icmp slt i64 %indvars.iv.next676, %60
  br i1 %cmp1, label %for.cond2.preheader, label %for.end419, !llvm.loop !37

for.end419:                                       ; preds = %for.inc417, %if.end
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @mdct_init48() local_unnamed_addr #0 {
entry:
  %mmax = alloca [31 x double], align 16
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds [8 x double], ptr @mdct_init48.c, i64 0, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !14
  %mul = fmul fast double %0, %0
  %add = fadd fast double %mul, 1.000000e+00
  %1 = tail call fast double @llvm.sqrt.f64(double %add)
  %div = fdiv fast double %0, %1
  %arrayidx6 = getelementptr inbounds [8 x double], ptr @ca, i64 0, i64 %indvars.iv
  store double %div, ptr %arrayidx6, align 8, !tbaa !14
  %div7 = fdiv fast double 1.000000e+00, %1
  %arrayidx9 = getelementptr inbounds [8 x double], ptr @cs, i64 0, i64 %indvars.iv
  store double %div7, ptr %arrayidx9, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %for.body12, label %for.body, !llvm.loop !38

for.body12:                                       ; preds = %for.body, %for.body12
  %indvars.iv600 = phi i64 [ %indvars.iv.next601, %for.body12 ], [ 0, %for.body ]
  %2 = trunc i64 %indvars.iv600 to i32
  %conv = sitofp i32 %2 to double
  %3 = fmul fast double %conv, 0x3FB657184AE74487
  %mul14 = fadd fast double %3, 0x3FA657184AE74487
  %4 = tail call fast double @llvm.sin.f64(double %mul14)
  %arrayidx16 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %indvars.iv600
  store double %4, ptr %arrayidx16, align 8, !tbaa !14
  %indvars.iv.next601 = add nuw nsw i64 %indvars.iv600, 1
  %exitcond603.not = icmp eq i64 %indvars.iv.next601, 36
  br i1 %exitcond603.not, label %for.body23, label %for.body12, !llvm.loop !39

for.body23:                                       ; preds = %for.body12, %for.body23
  %indvars.iv604 = phi i64 [ %indvars.iv.next605, %for.body23 ], [ 0, %for.body12 ]
  %arrayidx25 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %indvars.iv604
  %5 = load double, ptr %arrayidx25, align 8, !tbaa !14
  %arrayidx27 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %indvars.iv604
  store double %5, ptr %arrayidx27, align 8, !tbaa !14
  %indvars.iv.next605 = add nuw nsw i64 %indvars.iv604, 1
  %exitcond607.not = icmp eq i64 %indvars.iv.next605, 18
  br i1 %exitcond607.not, label %for.body34, label %for.body23, !llvm.loop !40

for.body34:                                       ; preds = %for.body23, %for.body34
  %indvars.iv608 = phi i64 [ %indvars.iv.next609, %for.body34 ], [ 18, %for.body23 ]
  %arrayidx36 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %indvars.iv608
  store double 1.000000e+00, ptr %arrayidx36, align 8, !tbaa !14
  %indvars.iv.next609 = add nuw nsw i64 %indvars.iv608, 1
  %exitcond611.not = icmp eq i64 %indvars.iv.next609, 24
  br i1 %exitcond611.not, label %for.body43, label %for.body34, !llvm.loop !41

for.body43:                                       ; preds = %for.body34, %for.body43
  %indvars.iv612 = phi i64 [ %indvars.iv.next613, %for.body43 ], [ 24, %for.body34 ]
  %6 = trunc i64 %indvars.iv612 to i32
  %conv44 = sitofp i32 %6 to double
  %7 = fmul fast double %conv44, 0x3FD0C152382D7365
  %mul46 = fadd fast double %7, 0x3FC0C152382D7365
  %8 = tail call fast double @llvm.cos.f64(double %mul46)
  %arrayidx48 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %indvars.iv612
  store double %8, ptr %arrayidx48, align 8, !tbaa !14
  %indvars.iv.next613 = add nuw nsw i64 %indvars.iv612, 1
  %exitcond615.not = icmp eq i64 %indvars.iv.next613, 30
  br i1 %exitcond615.not, label %for.cond61.preheader, label %for.body43, !llvm.loop !42

for.cond61.preheader:                             ; preds = %for.body43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 1, i64 30), i8 0, i64 48, i1 false), !tbaa !14
  br label %for.body64

for.body64:                                       ; preds = %for.cond61.preheader, %for.body64
  %indvars.iv619 = phi i64 [ 0, %for.cond61.preheader ], [ %indvars.iv.next620, %for.body64 ]
  %9 = sub nuw nsw i64 35, %indvars.iv619
  %arrayidx66 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %9
  %10 = load double, ptr %arrayidx66, align 8, !tbaa !14
  %arrayidx68 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %indvars.iv619
  store double %10, ptr %arrayidx68, align 8, !tbaa !14
  %indvars.iv.next620 = add nuw nsw i64 %indvars.iv619, 1
  %exitcond623.not = icmp eq i64 %indvars.iv.next620, 36
  br i1 %exitcond623.not, label %do.body, label %for.body64, !llvm.loop !43

do.body:                                          ; preds = %for.body64, %do.cond
  %indvars.iv626 = phi i64 [ %indvars.iv.next627, %do.cond ], [ 11, %for.body64 ]
  %cos_l0.0 = phi ptr [ %incdec.ptr105, %do.cond ], [ @cos_l, %for.body64 ]
  %arrayidx73 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %indvars.iv626
  %11 = load i32, ptr %arrayidx73, align 4, !tbaa !44
  %mul78 = shl nsw i32 %11, 1
  %add79 = or i32 %mul78, 1
  %conv80 = sitofp i32 %add79 to double
  %mul81 = fmul fast double %conv80, 0x3F9657184AE74487
  br label %for.body77

for.body77:                                       ; preds = %do.body, %for.body77
  %k.1571 = phi i32 [ 0, %do.body ], [ %inc89, %for.body77 ]
  %cos_l0.1570 = phi ptr [ %cos_l0.0, %do.body ], [ %incdec.ptr, %for.body77 ]
  %mul82 = shl nuw nsw i32 %k.1571, 2
  %add84 = add nuw nsw i32 %mul82, 38
  %conv85 = sitofp i32 %add84 to double
  %mul86 = fmul fast double %mul81, %conv85
  %12 = tail call fast double @llvm.cos.f64(double %mul86)
  %mul87 = fmul fast double %12, 0x3FBC71C71C71C71C
  %incdec.ptr = getelementptr inbounds double, ptr %cos_l0.1570, i64 1
  store double %mul87, ptr %cos_l0.1570, align 8, !tbaa !14
  %inc89 = add nuw nsw i32 %k.1571, 1
  %exitcond624.not = icmp eq i32 %inc89, 9
  br i1 %exitcond624.not, label %for.body94, label %for.body77, !llvm.loop !45

for.body94:                                       ; preds = %for.body77, %for.body94
  %k.2573 = phi i32 [ %inc107, %for.body94 ], [ 0, %for.body77 ]
  %cos_l0.2572 = phi ptr [ %incdec.ptr105, %for.body94 ], [ %incdec.ptr, %for.body77 ]
  %mul99 = shl nuw nsw i32 %k.2573, 2
  %add101 = add nuw nsw i32 %mul99, 110
  %conv102 = sitofp i32 %add101 to double
  %mul103 = fmul fast double %mul81, %conv102
  %13 = tail call fast double @llvm.cos.f64(double %mul103)
  %mul104 = fmul fast double %13, 0x3FBC71C71C71C71C
  %incdec.ptr105 = getelementptr inbounds double, ptr %cos_l0.2572, i64 1
  store double %mul104, ptr %cos_l0.2572, align 8, !tbaa !14
  %inc107 = add nuw nsw i32 %k.2573, 1
  %exitcond625.not = icmp eq i32 %inc107, 9
  br i1 %exitcond625.not, label %do.cond, label %for.body94, !llvm.loop !46

do.cond:                                          ; preds = %for.body94
  %indvars.iv.next627 = add nsw i64 %indvars.iv626, -1
  %cmp109.not = icmp eq i64 %indvars.iv626, 0
  br i1 %cmp109.not, label %do.body111, label %do.body, !llvm.loop !47

do.body111:                                       ; preds = %do.cond, %do.cond150
  %indvars.iv631 = phi i64 [ %indvars.iv.next632, %do.cond150 ], [ 3, %do.cond ]
  %cos_l0.3 = phi ptr [ %incdec.ptr146, %do.cond150 ], [ %incdec.ptr105, %do.cond ]
  %arrayidx113 = getelementptr inbounds [4 x i32], ptr @mdct_init48.d3, i64 0, i64 %indvars.iv631
  %14 = load i32, ptr %arrayidx113, align 4, !tbaa !44
  %mul118 = shl nsw i32 %14, 1
  %add119 = or i32 %mul118, 1
  %conv120 = sitofp i32 %add119 to double
  %mul121 = fmul fast double %conv120, 0x3F9657184AE74487
  br label %for.body117

for.body117:                                      ; preds = %do.body111, %for.body117
  %k.3575 = phi i32 [ 0, %do.body111 ], [ %inc130, %for.body117 ]
  %cos_l0.4574 = phi ptr [ %cos_l0.3, %do.body111 ], [ %incdec.ptr128, %for.body117 ]
  %mul122 = shl nuw nsw i32 %k.3575, 2
  %add124 = add nuw nsw i32 %mul122, 38
  %conv125 = sitofp i32 %add124 to double
  %mul126 = fmul fast double %mul121, %conv125
  %15 = tail call fast double @llvm.cos.f64(double %mul126)
  %mul127 = fmul fast double %15, 0x3FBC71C71C71C71C
  %incdec.ptr128 = getelementptr inbounds double, ptr %cos_l0.4574, i64 1
  store double %mul127, ptr %cos_l0.4574, align 8, !tbaa !14
  %inc130 = add nuw nsw i32 %k.3575, 1
  %exitcond629.not = icmp eq i32 %inc130, 3
  br i1 %exitcond629.not, label %for.body135, label %for.body117, !llvm.loop !48

for.body135:                                      ; preds = %for.body117, %for.body135
  %k.4577 = phi i32 [ %inc148, %for.body135 ], [ 6, %for.body117 ]
  %cos_l0.5576 = phi ptr [ %incdec.ptr146, %for.body135 ], [ %incdec.ptr128, %for.body117 ]
  %mul140 = shl nuw nsw i32 %k.4577, 2
  %add142 = add nuw nsw i32 %mul140, 38
  %conv143 = sitofp i32 %add142 to double
  %mul144 = fmul fast double %mul121, %conv143
  %16 = tail call fast double @llvm.cos.f64(double %mul144)
  %mul145 = fmul fast double %16, 0x3FBC71C71C71C71C
  %incdec.ptr146 = getelementptr inbounds double, ptr %cos_l0.5576, i64 1
  store double %mul145, ptr %cos_l0.5576, align 8, !tbaa !14
  %inc148 = add nuw nsw i32 %k.4577, 1
  %exitcond630.not = icmp eq i32 %inc148, 9
  br i1 %exitcond630.not, label %do.cond150, label %for.body135, !llvm.loop !49

do.cond150:                                       ; preds = %for.body135
  %indvars.iv.next632 = add nsw i64 %indvars.iv631, -1
  %cmp152.not = icmp eq i64 %indvars.iv631, 0
  br i1 %cmp152.not, label %do.body155, label %do.body111, !llvm.loop !50

do.body155:                                       ; preds = %do.cond150, %do.body155
  %indvars.iv634 = phi i64 [ %indvars.iv.next635, %do.body155 ], [ 1, %do.cond150 ]
  %cos_l0.6 = phi ptr [ %incdec.ptr171, %do.body155 ], [ %incdec.ptr146, %do.cond150 ]
  %arrayidx157 = getelementptr inbounds [2 x i32], ptr @mdct_init48.d9, i64 0, i64 %indvars.iv634
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !44
  %mul158 = shl nsw i32 %17, 1
  %add159 = or i32 %mul158, 1
  %conv160 = sitofp i32 %add159 to double
  %mul162 = fmul fast double %conv160, 0x3FEA876CD8F2A160
  %18 = tail call fast double @llvm.cos.f64(double %mul162)
  %mul163 = fmul fast double %18, 0x3FBC71C71C71C71C
  %incdec.ptr164 = getelementptr inbounds double, ptr %cos_l0.6, i64 1
  store double %mul163, ptr %cos_l0.6, align 8, !tbaa !14
  %mul169 = fmul fast double %conv160, 0x3FF00E9975D63941
  %19 = tail call fast double @llvm.cos.f64(double %mul169)
  %mul170 = fmul fast double %19, 0x3FBC71C71C71C71C
  %incdec.ptr171 = getelementptr inbounds double, ptr %cos_l0.6, i64 2
  store double %mul170, ptr %incdec.ptr164, align 8, !tbaa !14
  %indvars.iv.next635 = add nsw i64 %indvars.iv634, -1
  %cmp174.not = icmp eq i64 %indvars.iv634, 0
  br i1 %cmp174.not, label %do.end176, label %do.body155, !llvm.loop !51

do.end176:                                        ; preds = %do.body155
  %20 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 248), align 16, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %mmax) #7
  %21 = load double, ptr @enwindow, align 16, !tbaa !14
  %div178 = fdiv fast double %21, %20
  %arrayidx179 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 15
  store double %div178, ptr %arrayidx179, align 8, !tbaa !14
  %22 = fdiv fast double 1.000000e+00, %21
  br label %for.body183

for.body183:                                      ; preds = %do.end176, %for.body183
  %k.5580 = phi i32 [ 0, %do.end176 ], [ %inc188, %for.body183 ]
  %wr.0579 = phi ptr [ @enwindow, %do.end176 ], [ %incdec.ptr186, %for.body183 ]
  %wp.0578 = phi ptr [ getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 1), %do.end176 ], [ %incdec.ptr184, %for.body183 ]
  %incdec.ptr184 = getelementptr inbounds double, ptr %wp.0578, i64 1
  %23 = load double, ptr %wp.0578, align 8, !tbaa !14
  %24 = fmul fast double %23, %22
  %incdec.ptr186 = getelementptr inbounds double, ptr %wr.0579, i64 1
  store double %24, ptr %wr.0579, align 8, !tbaa !14
  %inc188 = add nuw nsw i32 %k.5580, 1
  %exitcond637.not = icmp eq i32 %inc188, 7
  br i1 %exitcond637.not, label %for.body193.preheader, label %for.body183, !llvm.loop !52

for.body193.preheader:                            ; preds = %for.body183
  %25 = fdiv fast double 1.000000e+00, %20
  br label %for.body193

for.body193:                                      ; preds = %for.body193.preheader, %for.end211
  %indvars.iv639 = phi i64 [ %indvars.iv.next640, %for.end211 ], [ 14, %for.body193.preheader ]
  %wr.1586 = phi ptr [ %incdec.ptr208, %for.end211 ], [ %incdec.ptr186, %for.body193.preheader ]
  %wp.1585 = phi ptr [ %wp.2, %for.end211 ], [ %incdec.ptr184, %for.body193.preheader ]
  %26 = load double, ptr %wp.1585, align 8, !tbaa !14
  %27 = fmul fast double %26, %25
  %28 = sub nuw nsw i64 30, %indvars.iv639
  %arrayidx199 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %28
  store double %27, ptr %arrayidx199, align 8, !tbaa !14
  %arrayidx201 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %indvars.iv639
  store double %27, ptr %arrayidx201, align 8, !tbaa !14
  %wp.2581 = getelementptr inbounds double, ptr %wp.1585, i64 1
  %29 = fdiv fast double 1.000000e+00, %26
  br label %for.body205

for.body205:                                      ; preds = %for.body193, %for.body205
  %wp.2584 = phi ptr [ %wp.2581, %for.body193 ], [ %wp.2, %for.body205 ]
  %k.6583 = phi i32 [ 0, %for.body193 ], [ %inc210, %for.body205 ]
  %wr.2582 = phi ptr [ %wr.1586, %for.body193 ], [ %incdec.ptr208, %for.body205 ]
  %30 = load double, ptr %wp.2584, align 8, !tbaa !14
  %31 = fmul fast double %30, %29
  %incdec.ptr208 = getelementptr inbounds double, ptr %wr.2582, i64 1
  store double %31, ptr %wr.2582, align 8, !tbaa !14
  %inc210 = add nuw nsw i32 %k.6583, 1
  %wp.2 = getelementptr inbounds double, ptr %wp.2584, i64 1
  %exitcond638.not = icmp eq i32 %inc210, 15
  br i1 %exitcond638.not, label %for.end211, label %for.body205, !llvm.loop !53

for.end211:                                       ; preds = %for.body205
  %indvars.iv.next640 = add nsw i64 %indvars.iv639, -1
  %cmp191.not = icmp eq i64 %indvars.iv639, 0
  br i1 %cmp191.not, label %for.body219.preheader, label %for.body193, !llvm.loop !54

for.body219.preheader:                            ; preds = %for.end211
  %32 = fdiv fast double 1.000000e+00, %20
  br label %for.body219

for.body219:                                      ; preds = %for.body219.preheader, %for.body219
  %k.7590 = phi i32 [ %inc224, %for.body219 ], [ 0, %for.body219.preheader ]
  %wr.3589 = phi ptr [ %incdec.ptr222, %for.body219 ], [ %incdec.ptr208, %for.body219.preheader ]
  %wp.1.pn588 = phi ptr [ %wp.3, %for.body219 ], [ %wp.2, %for.body219.preheader ]
  %wp.3 = getelementptr inbounds double, ptr %wp.1.pn588, i64 1
  %33 = load double, ptr %wp.3, align 8, !tbaa !14
  %34 = fmul fast double %33, %32
  %incdec.ptr222 = getelementptr inbounds double, ptr %wr.3589, i64 1
  store double %34, ptr %wr.3589, align 8, !tbaa !14
  %inc224 = add nuw nsw i32 %k.7590, 1
  %exitcond643.not = icmp eq i32 %inc224, 7
  br i1 %exitcond643.not, label %for.cond230.preheader, label %for.body219, !llvm.loop !55

for.cond230.preheader:                            ; preds = %for.body219, %for.inc248
  %indvars.iv650 = phi i64 [ %indvars.iv.next651, %for.inc248 ], [ 15, %for.body219 ]
  %wp.4593 = phi ptr [ %incdec.ptr244, %for.inc248 ], [ @mm, %for.body219 ]
  %35 = shl nsw i64 %indvars.iv650, 1
  %36 = or i64 %35, 1
  br label %for.body233

for.body233:                                      ; preds = %for.cond230.preheader, %for.body233
  %indvars.iv644 = phi i64 [ 1, %for.cond230.preheader ], [ %indvars.iv.next645, %for.body233 ]
  %wp.5591 = phi ptr [ %wp.4593, %for.cond230.preheader ], [ %incdec.ptr244, %for.body233 ]
  %37 = mul nuw nsw i64 %indvars.iv644, %36
  %38 = trunc i64 %37 to i32
  %conv237 = sitofp i32 %38 to double
  %div239 = fmul fast double %conv237, 0x3FA921FB54442D18
  %39 = tail call fast double @llvm.cos.f64(double %div239)
  %40 = add nsw i64 %indvars.iv644, -1
  %arrayidx242 = getelementptr inbounds [31 x double], ptr %mmax, i64 0, i64 %40
  %41 = load double, ptr %arrayidx242, align 8, !tbaa !14
  %mul243 = fmul fast double %41, %39
  %incdec.ptr244 = getelementptr inbounds double, ptr %wp.5591, i64 1
  store double %mul243, ptr %wp.5591, align 8, !tbaa !14
  %indvars.iv.next645 = add nuw nsw i64 %indvars.iv644, 1
  %exitcond649.not = icmp eq i64 %indvars.iv.next645, 32
  br i1 %exitcond649.not, label %for.inc248, label %for.body233, !llvm.loop !56

for.inc248:                                       ; preds = %for.body233
  %indvars.iv.next651 = add nsw i64 %indvars.iv650, -1
  %cmp227.not = icmp eq i64 %indvars.iv650, 0
  br i1 %cmp227.not, label %for.end250, label %for.cond230.preheader, !llvm.loop !57

for.end250:                                       ; preds = %for.inc248
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %mmax) #7
  br label %for.body254

for.cond330.preheader:                            ; preds = %for.body254
  %div334 = fmul fast double %20, 0x3F00000000000000
  br label %for.body333

for.body254:                                      ; preds = %for.end250, %for.body254
  %indvars.iv655 = phi i64 [ 0, %for.end250 ], [ %indvars.iv.next656, %for.body254 ]
  %42 = sub nuw nsw i64 17, %indvars.iv655
  %arrayidx257 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %42
  %43 = load double, ptr %arrayidx257, align 8, !tbaa !14
  %44 = add nuw nsw i64 %indvars.iv655, 9
  %arrayidx260 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %44
  %45 = load double, ptr %arrayidx260, align 8, !tbaa !14
  store double %45, ptr %arrayidx257, align 8, !tbaa !14
  store double %43, ptr %arrayidx260, align 8, !tbaa !14
  %46 = sub nuw nsw i64 35, %indvars.iv655
  %arrayidx269 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %46
  %47 = load double, ptr %arrayidx269, align 8, !tbaa !14
  %48 = add nuw nsw i64 %indvars.iv655, 27
  %arrayidx272 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %48
  %49 = load double, ptr %arrayidx272, align 8, !tbaa !14
  store double %49, ptr %arrayidx269, align 8, !tbaa !14
  store double %47, ptr %arrayidx272, align 8, !tbaa !14
  %arrayidx281 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %42
  %50 = load double, ptr %arrayidx281, align 8, !tbaa !14
  %arrayidx284 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %44
  %51 = load double, ptr %arrayidx284, align 8, !tbaa !14
  store double %51, ptr %arrayidx281, align 8, !tbaa !14
  store double %50, ptr %arrayidx284, align 8, !tbaa !14
  %arrayidx293 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %46
  %52 = load double, ptr %arrayidx293, align 8, !tbaa !14
  %arrayidx296 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %48
  %53 = load double, ptr %arrayidx296, align 8, !tbaa !14
  store double %53, ptr %arrayidx293, align 8, !tbaa !14
  store double %52, ptr %arrayidx296, align 8, !tbaa !14
  %arrayidx305 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %42
  %54 = load double, ptr %arrayidx305, align 8, !tbaa !14
  %arrayidx308 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %44
  %55 = load double, ptr %arrayidx308, align 8, !tbaa !14
  store double %55, ptr %arrayidx305, align 8, !tbaa !14
  store double %54, ptr %arrayidx308, align 8, !tbaa !14
  %arrayidx317 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %46
  %56 = load double, ptr %arrayidx317, align 8, !tbaa !14
  %arrayidx320 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %48
  %57 = load double, ptr %arrayidx320, align 8, !tbaa !14
  store double %57, ptr %arrayidx317, align 8, !tbaa !14
  store double %56, ptr %arrayidx320, align 8, !tbaa !14
  %indvars.iv.next656 = add nuw nsw i64 %indvars.iv655, 1
  %exitcond662.not = icmp eq i64 %indvars.iv.next656, 4
  br i1 %exitcond662.not, label %for.cond330.preheader, label %for.body254, !llvm.loop !58

for.cond349.preheader:                            ; preds = %for.body333
  %mul356 = fmul fast double %20, 0x3EE5555555555555
  br label %for.body352

for.body333:                                      ; preds = %for.cond330.preheader, %for.body333
  %indvars.iv663 = phi i64 [ 0, %for.cond330.preheader ], [ %indvars.iv.next664, %for.body333 ]
  %arrayidx336 = getelementptr inbounds [36 x double], ptr @win, i64 0, i64 %indvars.iv663
  %58 = load double, ptr %arrayidx336, align 8, !tbaa !14
  %mul337 = fmul fast double %58, %div334
  store double %mul337, ptr %arrayidx336, align 8, !tbaa !14
  %arrayidx340 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 1, i64 %indvars.iv663
  %59 = load double, ptr %arrayidx340, align 8, !tbaa !14
  %mul341 = fmul fast double %59, %div334
  store double %mul341, ptr %arrayidx340, align 8, !tbaa !14
  %arrayidx344 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 3, i64 %indvars.iv663
  %60 = load double, ptr %arrayidx344, align 8, !tbaa !14
  %mul345 = fmul fast double %60, %div334
  store double %mul345, ptr %arrayidx344, align 8, !tbaa !14
  %indvars.iv.next664 = add nuw nsw i64 %indvars.iv663, 1
  %exitcond666.not = icmp eq i64 %indvars.iv.next664, 36
  br i1 %exitcond666.not, label %for.cond349.preheader, label %for.body333, !llvm.loop !59

for.body352:                                      ; preds = %for.cond349.preheader, %for.end399
  %indvars.iv673 = phi i64 [ 0, %for.cond349.preheader ], [ %indvars.iv.next674, %for.end399 ]
  %61 = trunc i64 %indvars.iv673 to i32
  %conv353 = sitofp i32 %61 to double
  %62 = fmul fast double %conv353, 0x3FD0C152382D7365
  %mul355 = fadd fast double %62, 0x3FC0C152382D7365
  %63 = tail call fast double @llvm.cos.f64(double %mul355)
  %mul358 = fmul fast double %mul356, %63
  %call = tail call fast double @tan(double noundef %mul355) #8
  %arrayidx363 = getelementptr inbounds [4 x [36 x double]], ptr @win, i64 0, i64 2, i64 %indvars.iv673
  store double %call, ptr %arrayidx363, align 8, !tbaa !14
  %64 = shl nsw i64 %indvars.iv673, 2
  %65 = trunc i64 %64 to i32
  %66 = add i32 %65, 14
  %conv375 = sitofp i32 %66 to double
  %67 = trunc i64 %64 to i32
  %68 = add i32 %67, 38
  %conv389 = sitofp i32 %68 to double
  %69 = add nuw nsw i64 %indvars.iv673, 3
  br label %for.body367

for.body367:                                      ; preds = %for.body352, %for.body367
  %indvars.iv667 = phi i64 [ 0, %for.body352 ], [ %indvars.iv.next668, %for.body367 ]
  %indvars.iv667.tr = trunc i64 %indvars.iv667 to i32
  %70 = shl i32 %indvars.iv667.tr, 1
  %71 = or i32 %70, 1
  %conv370 = sitofp i32 %71 to double
  %mul371 = fmul fast double %conv370, 0x3FB0C152382D7365
  %mul376 = fmul fast double %mul371, %conv375
  %72 = tail call fast double @llvm.cos.f64(double %mul376)
  %mul377 = fmul fast double %72, %mul358
  %arrayidx381 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv667, i64 %indvars.iv673
  store double %mul377, ptr %arrayidx381, align 8, !tbaa !14
  %mul390 = fmul fast double %mul371, %conv389
  %73 = tail call fast double @llvm.cos.f64(double %mul390)
  %mul391 = fmul fast double %73, %mul358
  %arrayidx396 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv667, i64 %69
  store double %mul391, ptr %arrayidx396, align 8, !tbaa !14
  %indvars.iv.next668 = add nuw nsw i64 %indvars.iv667, 1
  %exitcond672.not = icmp eq i64 %indvars.iv.next668, 6
  br i1 %exitcond672.not, label %for.end399, label %for.body367, !llvm.loop !60

for.end399:                                       ; preds = %for.body367
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1
  %exitcond680.not = icmp eq i64 %indvars.iv.next674, 3
  br i1 %exitcond680.not, label %for.end402, label %for.body352, !llvm.loop !61

for.end402:                                       ; preds = %for.end399
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @window_subband(ptr noundef readonly %xk, ptr nocapture noundef writeonly %d) unnamed_addr #2 {
entry:
  %arrayidx = getelementptr inbounds i16, ptr %xk, i64 255
  %0 = load i16, ptr %arrayidx, align 2, !tbaa !62
  %conv = sitofp i16 %0 to double
  %arrayidx1 = getelementptr inbounds i16, ptr %xk, i64 223
  %1 = load i16, ptr %arrayidx1, align 2, !tbaa !62
  %conv2 = sext i16 %1 to i32
  %arrayidx3 = getelementptr inbounds i16, ptr %xk, i64 287
  %2 = load i16, ptr %arrayidx3, align 2, !tbaa !62
  %conv4 = sext i16 %2 to i32
  %sub = sub nsw i32 %conv2, %conv4
  %conv5 = sitofp i32 %sub to double
  %3 = load double, ptr @enwindow, align 16, !tbaa !14
  %mul = fmul fast double %3, %conv5
  %add = fadd fast double %mul, %conv
  %arrayidx6 = getelementptr inbounds i16, ptr %xk, i64 191
  %4 = load i16, ptr %arrayidx6, align 2, !tbaa !62
  %conv7 = sext i16 %4 to i32
  %arrayidx8 = getelementptr inbounds i16, ptr %xk, i64 319
  %5 = load i16, ptr %arrayidx8, align 2, !tbaa !62
  %conv9 = sext i16 %5 to i32
  %add10 = add nsw i32 %conv9, %conv7
  %conv11 = sitofp i32 %add10 to double
  %6 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 1), align 8, !tbaa !14
  %mul13 = fmul fast double %6, %conv11
  %add14 = fadd fast double %add, %mul13
  %arrayidx15 = getelementptr inbounds i16, ptr %xk, i64 159
  %7 = load i16, ptr %arrayidx15, align 2, !tbaa !62
  %conv16 = sext i16 %7 to i32
  %arrayidx17 = getelementptr inbounds i16, ptr %xk, i64 351
  %8 = load i16, ptr %arrayidx17, align 2, !tbaa !62
  %conv18 = sext i16 %8 to i32
  %sub19 = sub nsw i32 %conv16, %conv18
  %conv20 = sitofp i32 %sub19 to double
  %9 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 2), align 16, !tbaa !14
  %mul22 = fmul fast double %9, %conv20
  %add23 = fadd fast double %add14, %mul22
  %arrayidx24 = getelementptr inbounds i16, ptr %xk, i64 127
  %10 = load i16, ptr %arrayidx24, align 2, !tbaa !62
  %conv25 = sext i16 %10 to i32
  %arrayidx26 = getelementptr inbounds i16, ptr %xk, i64 383
  %11 = load i16, ptr %arrayidx26, align 2, !tbaa !62
  %conv27 = sext i16 %11 to i32
  %add28 = add nsw i32 %conv27, %conv25
  %conv29 = sitofp i32 %add28 to double
  %12 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 3), align 8, !tbaa !14
  %mul31 = fmul fast double %12, %conv29
  %add32 = fadd fast double %add23, %mul31
  %arrayidx33 = getelementptr inbounds i16, ptr %xk, i64 95
  %13 = load i16, ptr %arrayidx33, align 2, !tbaa !62
  %conv34 = sext i16 %13 to i32
  %arrayidx35 = getelementptr inbounds i16, ptr %xk, i64 415
  %14 = load i16, ptr %arrayidx35, align 2, !tbaa !62
  %conv36 = sext i16 %14 to i32
  %sub37 = sub nsw i32 %conv34, %conv36
  %conv38 = sitofp i32 %sub37 to double
  %15 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 4), align 16, !tbaa !14
  %mul40 = fmul fast double %15, %conv38
  %add41 = fadd fast double %add32, %mul40
  %arrayidx42 = getelementptr inbounds i16, ptr %xk, i64 63
  %16 = load i16, ptr %arrayidx42, align 2, !tbaa !62
  %conv43 = sext i16 %16 to i32
  %arrayidx44 = getelementptr inbounds i16, ptr %xk, i64 447
  %17 = load i16, ptr %arrayidx44, align 2, !tbaa !62
  %conv45 = sext i16 %17 to i32
  %add46 = add nsw i32 %conv45, %conv43
  %conv47 = sitofp i32 %add46 to double
  %18 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 5), align 8, !tbaa !14
  %mul49 = fmul fast double %18, %conv47
  %add50 = fadd fast double %add41, %mul49
  %arrayidx51 = getelementptr inbounds i16, ptr %xk, i64 31
  %19 = load i16, ptr %arrayidx51, align 2, !tbaa !62
  %conv52 = sext i16 %19 to i32
  %arrayidx53 = getelementptr inbounds i16, ptr %xk, i64 479
  %20 = load i16, ptr %arrayidx53, align 2, !tbaa !62
  %conv54 = sext i16 %20 to i32
  %sub55 = sub nsw i32 %conv52, %conv54
  %conv56 = sitofp i32 %sub55 to double
  %21 = load double, ptr getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 6), align 16, !tbaa !14
  %mul58 = fmul fast double %21, %conv56
  %add59 = fadd fast double %add50, %mul58
  store double %add59, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !14
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 14, %entry ], [ %indvars.iv.next, %for.body ]
  %wp.019 = phi ptr [ getelementptr inbounds ([256 x double], ptr @enwindow, i64 0, i64 7), %entry ], [ %incdec.ptr224, %for.body ]
  %arrayidx62 = getelementptr inbounds i16, ptr %xk, i64 %indvars.iv
  %22 = sub nsw i64 0, %indvars.iv
  %arrayidx65 = getelementptr inbounds i16, ptr %xk, i64 %22
  %arrayidx66 = getelementptr inbounds i16, ptr %arrayidx65, i64 270
  %23 = load i16, ptr %arrayidx66, align 2, !tbaa !62
  %conv67 = sitofp i16 %23 to double
  %arrayidx68 = getelementptr inbounds i16, ptr %arrayidx62, i64 240
  %24 = load i16, ptr %arrayidx68, align 2, !tbaa !62
  %conv69 = sitofp i16 %24 to double
  %incdec.ptr70 = getelementptr inbounds double, ptr %wp.019, i64 1
  %25 = load double, ptr %wp.019, align 8, !tbaa !14
  %arrayidx71 = getelementptr inbounds i16, ptr %arrayidx65, i64 334
  %26 = load i16, ptr %arrayidx71, align 2, !tbaa !62
  %conv73 = sitofp i16 %26 to double
  %mul74 = fmul fast double %25, %conv73
  %arrayidx76 = getelementptr inbounds i16, ptr %arrayidx62, i64 176
  %27 = load i16, ptr %arrayidx76, align 2, !tbaa !62
  %conv78 = sitofp i16 %27 to double
  %mul79 = fmul fast double %25, %conv78
  %incdec.ptr81 = getelementptr inbounds double, ptr %wp.019, i64 2
  %28 = load double, ptr %incdec.ptr70, align 8, !tbaa !14
  %arrayidx82 = getelementptr inbounds i16, ptr %arrayidx65, i64 398
  %29 = load i16, ptr %arrayidx82, align 2, !tbaa !62
  %conv84 = sitofp i16 %29 to double
  %mul85 = fmul fast double %28, %conv84
  %arrayidx87 = getelementptr inbounds i16, ptr %arrayidx62, i64 112
  %30 = load i16, ptr %arrayidx87, align 2, !tbaa !62
  %conv89 = sitofp i16 %30 to double
  %mul90 = fmul fast double %28, %conv89
  %incdec.ptr92 = getelementptr inbounds double, ptr %wp.019, i64 3
  %31 = load double, ptr %incdec.ptr81, align 8, !tbaa !14
  %arrayidx93 = getelementptr inbounds i16, ptr %arrayidx65, i64 462
  %32 = load i16, ptr %arrayidx93, align 2, !tbaa !62
  %conv95 = sitofp i16 %32 to double
  %mul96 = fmul fast double %31, %conv95
  %arrayidx98 = getelementptr inbounds i16, ptr %arrayidx62, i64 48
  %33 = load i16, ptr %arrayidx98, align 2, !tbaa !62
  %conv100 = sitofp i16 %33 to double
  %mul101 = fmul fast double %31, %conv100
  %incdec.ptr103 = getelementptr inbounds double, ptr %wp.019, i64 4
  %34 = load double, ptr %incdec.ptr92, align 8, !tbaa !14
  %arrayidx104 = getelementptr inbounds i16, ptr %arrayidx65, i64 14
  %35 = load i16, ptr %arrayidx104, align 2, !tbaa !62
  %conv106 = sitofp i16 %35 to double
  %mul107 = fmul fast double %34, %conv106
  %arrayidx109 = getelementptr inbounds i16, ptr %arrayidx62, i64 496
  %36 = load i16, ptr %arrayidx109, align 2, !tbaa !62
  %conv111 = sitofp i16 %36 to double
  %mul112 = fmul fast double %34, %conv111
  %incdec.ptr114 = getelementptr inbounds double, ptr %wp.019, i64 5
  %37 = load double, ptr %incdec.ptr103, align 8, !tbaa !14
  %arrayidx115 = getelementptr inbounds i16, ptr %arrayidx65, i64 78
  %38 = load i16, ptr %arrayidx115, align 2, !tbaa !62
  %conv117 = sitofp i16 %38 to double
  %mul118 = fmul fast double %37, %conv117
  %arrayidx120 = getelementptr inbounds i16, ptr %arrayidx62, i64 432
  %39 = load i16, ptr %arrayidx120, align 2, !tbaa !62
  %conv122 = sitofp i16 %39 to double
  %mul123 = fmul fast double %37, %conv122
  %incdec.ptr125 = getelementptr inbounds double, ptr %wp.019, i64 6
  %40 = load double, ptr %incdec.ptr114, align 8, !tbaa !14
  %arrayidx126 = getelementptr inbounds i16, ptr %arrayidx65, i64 142
  %41 = load i16, ptr %arrayidx126, align 2, !tbaa !62
  %conv128 = sitofp i16 %41 to double
  %mul129 = fmul fast double %40, %conv128
  %arrayidx131 = getelementptr inbounds i16, ptr %arrayidx62, i64 368
  %42 = load i16, ptr %arrayidx131, align 2, !tbaa !62
  %conv133 = sitofp i16 %42 to double
  %mul134 = fmul fast double %40, %conv133
  %incdec.ptr136 = getelementptr inbounds double, ptr %wp.019, i64 7
  %43 = load double, ptr %incdec.ptr125, align 8, !tbaa !14
  %arrayidx137 = getelementptr inbounds i16, ptr %arrayidx65, i64 206
  %44 = load i16, ptr %arrayidx137, align 2, !tbaa !62
  %conv139 = sitofp i16 %44 to double
  %mul140 = fmul fast double %43, %conv139
  %arrayidx142 = getelementptr inbounds i16, ptr %arrayidx62, i64 304
  %45 = load i16, ptr %arrayidx142, align 2, !tbaa !62
  %conv144 = sitofp i16 %45 to double
  %mul145 = fmul fast double %43, %conv144
  %incdec.ptr147 = getelementptr inbounds double, ptr %wp.019, i64 8
  %46 = load double, ptr %incdec.ptr136, align 8, !tbaa !14
  %arrayidx148 = getelementptr inbounds i16, ptr %arrayidx62, i64 16
  %47 = load i16, ptr %arrayidx148, align 2, !tbaa !62
  %conv150 = sitofp i16 %47 to double
  %mul151 = fmul fast double %46, %conv150
  %arrayidx153 = getelementptr inbounds i16, ptr %arrayidx65, i64 494
  %48 = load i16, ptr %arrayidx153, align 2, !tbaa !62
  %conv155 = sitofp i16 %48 to double
  %incdec.ptr158 = getelementptr inbounds double, ptr %wp.019, i64 9
  %49 = load double, ptr %incdec.ptr147, align 8, !tbaa !14
  %arrayidx159 = getelementptr inbounds i16, ptr %arrayidx62, i64 80
  %50 = load i16, ptr %arrayidx159, align 2, !tbaa !62
  %conv161 = sitofp i16 %50 to double
  %mul162 = fmul fast double %49, %conv161
  %arrayidx164 = getelementptr inbounds i16, ptr %arrayidx65, i64 430
  %51 = load i16, ptr %arrayidx164, align 2, !tbaa !62
  %conv166 = sitofp i16 %51 to double
  %incdec.ptr169 = getelementptr inbounds double, ptr %wp.019, i64 10
  %52 = load double, ptr %incdec.ptr158, align 8, !tbaa !14
  %arrayidx170 = getelementptr inbounds i16, ptr %arrayidx62, i64 144
  %53 = load i16, ptr %arrayidx170, align 2, !tbaa !62
  %conv172 = sitofp i16 %53 to double
  %mul173 = fmul fast double %52, %conv172
  %arrayidx175 = getelementptr inbounds i16, ptr %arrayidx65, i64 366
  %54 = load i16, ptr %arrayidx175, align 2, !tbaa !62
  %conv177 = sitofp i16 %54 to double
  %incdec.ptr180 = getelementptr inbounds double, ptr %wp.019, i64 11
  %55 = load double, ptr %incdec.ptr169, align 8, !tbaa !14
  %arrayidx181 = getelementptr inbounds i16, ptr %arrayidx62, i64 208
  %56 = load i16, ptr %arrayidx181, align 2, !tbaa !62
  %conv183 = sitofp i16 %56 to double
  %mul184 = fmul fast double %55, %conv183
  %arrayidx186 = getelementptr inbounds i16, ptr %arrayidx65, i64 302
  %57 = load i16, ptr %arrayidx186, align 2, !tbaa !62
  %conv188 = sitofp i16 %57 to double
  %mul156.neg = fmul fast double %46, %conv155
  %mul167.neg = fmul fast double %49, %conv166
  %mul178.neg = fmul fast double %52, %conv177
  %mul189.neg = fmul fast double %55, %conv188
  %incdec.ptr191 = getelementptr inbounds double, ptr %wp.019, i64 12
  %58 = load double, ptr %incdec.ptr180, align 8, !tbaa !14
  %arrayidx192 = getelementptr inbounds i16, ptr %arrayidx62, i64 272
  %59 = load i16, ptr %arrayidx192, align 2, !tbaa !62
  %conv194 = sitofp i16 %59 to double
  %arrayidx197 = getelementptr inbounds i16, ptr %arrayidx65, i64 238
  %60 = load i16, ptr %arrayidx197, align 2, !tbaa !62
  %conv199 = sitofp i16 %60 to double
  %mul200 = fmul fast double %58, %conv199
  %incdec.ptr202 = getelementptr inbounds double, ptr %wp.019, i64 13
  %61 = load double, ptr %incdec.ptr191, align 8, !tbaa !14
  %arrayidx203 = getelementptr inbounds i16, ptr %arrayidx62, i64 336
  %62 = load i16, ptr %arrayidx203, align 2, !tbaa !62
  %conv205 = sitofp i16 %62 to double
  %arrayidx208 = getelementptr inbounds i16, ptr %arrayidx65, i64 174
  %63 = load i16, ptr %arrayidx208, align 2, !tbaa !62
  %conv210 = sitofp i16 %63 to double
  %mul211 = fmul fast double %61, %conv210
  %incdec.ptr213 = getelementptr inbounds double, ptr %wp.019, i64 14
  %64 = load double, ptr %incdec.ptr202, align 8, !tbaa !14
  %arrayidx214 = getelementptr inbounds i16, ptr %arrayidx62, i64 400
  %65 = load i16, ptr %arrayidx214, align 2, !tbaa !62
  %conv216 = sitofp i16 %65 to double
  %arrayidx219 = getelementptr inbounds i16, ptr %arrayidx65, i64 110
  %66 = load i16, ptr %arrayidx219, align 2, !tbaa !62
  %conv221 = sitofp i16 %66 to double
  %mul222 = fmul fast double %64, %conv221
  %incdec.ptr224 = getelementptr inbounds double, ptr %wp.019, i64 15
  %67 = load double, ptr %incdec.ptr213, align 8, !tbaa !14
  %arrayidx225 = getelementptr inbounds i16, ptr %arrayidx62, i64 464
  %68 = load i16, ptr %arrayidx225, align 2, !tbaa !62
  %conv227 = sitofp i16 %68 to double
  %mul195.neg = fmul fast double %58, %conv194
  %mul206.neg = fmul fast double %61, %conv205
  %mul217.neg = fmul fast double %64, %conv216
  %mul228.neg = fmul fast double %67, %conv227
  %reass.add15 = fadd fast double %mul206.neg, %mul195.neg
  %reass.add16 = fadd fast double %reass.add15, %mul217.neg
  %reass.add17 = fadd fast double %reass.add16, %mul228.neg
  %add75 = fadd fast double %mul74, %conv67
  %add86 = fadd fast double %add75, %mul85
  %add97 = fadd fast double %add86, %mul96
  %add108 = fadd fast double %add97, %mul107
  %add119 = fadd fast double %add108, %mul118
  %add130 = fadd fast double %add119, %mul129
  %add141 = fadd fast double %add130, %mul140
  %add152 = fadd fast double %add141, %mul151
  %add163 = fadd fast double %add152, %mul162
  %add174 = fadd fast double %add163, %mul173
  %add185 = fadd fast double %add174, %mul184
  %sub229 = fsub fast double %add185, %reass.add17
  %arrayidx230 = getelementptr inbounds i16, ptr %arrayidx65, i64 46
  %69 = load i16, ptr %arrayidx230, align 2, !tbaa !62
  %conv232 = sitofp i16 %69 to double
  %mul233 = fmul fast double %67, %conv232
  %reass.add11 = fadd fast double %mul167.neg, %mul156.neg
  %reass.add12 = fadd fast double %reass.add11, %mul178.neg
  %reass.add13 = fadd fast double %reass.add12, %mul189.neg
  %add80 = fadd fast double %mul79, %conv69
  %add91 = fadd fast double %add80, %mul90
  %add102 = fadd fast double %add91, %mul101
  %add113 = fadd fast double %add102, %mul112
  %add124 = fadd fast double %add113, %mul123
  %add135 = fadd fast double %add124, %mul134
  %add146 = fadd fast double %add135, %mul145
  %sub190 = fadd fast double %add146, %mul200
  %add201 = fsub fast double %sub190, %reass.add13
  %add212 = fadd fast double %add201, %mul211
  %add223 = fadd fast double %add212, %mul222
  %add234 = fadd fast double %add223, %mul233
  %70 = sub nuw nsw i64 30, %indvars.iv
  %arrayidx237 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %70
  store double %sub229, ptr %arrayidx237, align 8, !tbaa !14
  %arrayidx239 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %indvars.iv
  store double %add234, ptr %arrayidx239, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !64

for.end:                                          ; preds = %for.body
  %arrayidx240 = getelementptr inbounds i16, ptr %xk, i64 239
  %71 = load i16, ptr %arrayidx240, align 2, !tbaa !62
  %conv241 = sitofp i16 %71 to double
  %arrayidx242 = getelementptr inbounds i16, ptr %xk, i64 175
  %72 = load i16, ptr %arrayidx242, align 2, !tbaa !62
  %conv244 = sitofp i16 %72 to double
  %incdec.ptr245 = getelementptr inbounds double, ptr %wp.019, i64 16
  %73 = load double, ptr %incdec.ptr224, align 8, !tbaa !14
  %mul246 = fmul fast double %73, %conv244
  %arrayidx248 = getelementptr inbounds i16, ptr %xk, i64 111
  %74 = load i16, ptr %arrayidx248, align 2, !tbaa !62
  %conv250 = sitofp i16 %74 to double
  %incdec.ptr251 = getelementptr inbounds double, ptr %wp.019, i64 17
  %75 = load double, ptr %incdec.ptr245, align 8, !tbaa !14
  %mul252 = fmul fast double %75, %conv250
  %arrayidx254 = getelementptr inbounds i16, ptr %xk, i64 47
  %76 = load i16, ptr %arrayidx254, align 2, !tbaa !62
  %conv256 = sitofp i16 %76 to double
  %incdec.ptr257 = getelementptr inbounds double, ptr %wp.019, i64 18
  %77 = load double, ptr %incdec.ptr251, align 8, !tbaa !14
  %mul258 = fmul fast double %77, %conv256
  %arrayidx260 = getelementptr inbounds i16, ptr %xk, i64 303
  %78 = load i16, ptr %arrayidx260, align 2, !tbaa !62
  %conv262 = sitofp i16 %78 to double
  %incdec.ptr263 = getelementptr inbounds double, ptr %wp.019, i64 19
  %79 = load double, ptr %incdec.ptr257, align 8, !tbaa !14
  %arrayidx266 = getelementptr inbounds i16, ptr %xk, i64 367
  %80 = load i16, ptr %arrayidx266, align 2, !tbaa !62
  %conv268 = sitofp i16 %80 to double
  %incdec.ptr269 = getelementptr inbounds double, ptr %wp.019, i64 20
  %81 = load double, ptr %incdec.ptr263, align 8, !tbaa !14
  %arrayidx272 = getelementptr inbounds i16, ptr %xk, i64 431
  %82 = load i16, ptr %arrayidx272, align 2, !tbaa !62
  %conv274 = sitofp i16 %82 to double
  %incdec.ptr275 = getelementptr inbounds double, ptr %wp.019, i64 21
  %83 = load double, ptr %incdec.ptr269, align 8, !tbaa !14
  %arrayidx278 = getelementptr inbounds i16, ptr %xk, i64 495
  %84 = load i16, ptr %arrayidx278, align 2, !tbaa !62
  %conv280 = sitofp i16 %84 to double
  %85 = load double, ptr %incdec.ptr275, align 8, !tbaa !14
  %mul264.neg = fmul fast double %79, %conv262
  %mul270.neg = fmul fast double %81, %conv268
  %mul276.neg = fmul fast double %83, %conv274
  %mul282.neg = fmul fast double %85, %conv280
  %reass.add = fadd fast double %mul270.neg, %mul264.neg
  %reass.add4 = fadd fast double %reass.add, %mul276.neg
  %reass.add5 = fadd fast double %reass.add4, %mul282.neg
  %add247 = fadd fast double %mul246, %conv241
  %add253 = fadd fast double %add247, %mul252
  %add259 = fadd fast double %add253, %mul258
  %sub283 = fsub fast double %add259, %reass.add5
  br label %for.body288

for.body288:                                      ; preds = %for.end, %for.end305
  %indvars.iv33 = phi i64 [ 15, %for.end ], [ %indvars.iv.next34, %for.end305 ]
  %in.addr.028 = phi ptr [ getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), %for.end ], [ %add.ptr, %for.end305 ]
  %wp.126 = phi ptr [ @mm, %for.end ], [ %uglygep32, %for.end305 ]
  %incdec.ptr289 = getelementptr inbounds double, ptr %wp.126, i64 1
  %86 = load double, ptr %wp.126, align 8, !tbaa !14
  %mul290 = fmul fast double %86, %add234
  %uglygep = getelementptr i8, ptr %in.addr.028, i64 224
  br label %for.body294

for.body294:                                      ; preds = %for.body288, %for.body294
  %s1.025 = phi double [ %mul290, %for.body288 ], [ %add302, %for.body294 ]
  %s0.024 = phi double [ %sub283, %for.body288 ], [ %add298, %for.body294 ]
  %j.023 = phi i32 [ 14, %for.body288 ], [ %dec304, %for.body294 ]
  %in.addr.122 = phi ptr [ %in.addr.028, %for.body288 ], [ %incdec.ptr300, %for.body294 ]
  %wp.221 = phi ptr [ %incdec.ptr289, %for.body288 ], [ %incdec.ptr299, %for.body294 ]
  %incdec.ptr295 = getelementptr inbounds double, ptr %wp.221, i64 1
  %87 = load double, ptr %wp.221, align 8, !tbaa !14
  %incdec.ptr296 = getelementptr inbounds double, ptr %in.addr.122, i64 1
  %88 = load double, ptr %in.addr.122, align 8, !tbaa !14
  %mul297 = fmul fast double %88, %87
  %add298 = fadd fast double %mul297, %s0.024
  %incdec.ptr299 = getelementptr inbounds double, ptr %wp.221, i64 2
  %89 = load double, ptr %incdec.ptr295, align 8, !tbaa !14
  %incdec.ptr300 = getelementptr inbounds double, ptr %in.addr.122, i64 2
  %90 = load double, ptr %incdec.ptr296, align 8, !tbaa !14
  %mul301 = fmul fast double %90, %89
  %add302 = fadd fast double %mul301, %s1.025
  %dec304 = add nsw i32 %j.023, -1
  %cmp292.not = icmp eq i32 %j.023, 0
  br i1 %cmp292.not, label %for.end305, label %for.body294, !llvm.loop !65

for.end305:                                       ; preds = %for.body294
  %uglygep32 = getelementptr i8, ptr %wp.126, i64 248
  %add.ptr = getelementptr inbounds double, ptr %uglygep, i64 -28
  %add306 = fadd fast double %add302, %add298
  %arrayidx308 = getelementptr inbounds double, ptr %d, i64 %indvars.iv33
  store double %add306, ptr %arrayidx308, align 8, !tbaa !14
  %sub309 = fsub fast double %add298, %add302
  %91 = sub nuw nsw i64 31, %indvars.iv33
  %arrayidx312 = getelementptr inbounds double, ptr %d, i64 %91
  store double %sub309, ptr %arrayidx312, align 8, !tbaa !14
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, -1
  %cmp286.not = icmp eq i64 %indvars.iv33, 0
  br i1 %cmp286.not, label %for.end315, label %for.body288, !llvm.loop !66

for.end315:                                       ; preds = %for.end305
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.cos.f64(double) #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @mdct_short(ptr nocapture noundef writeonly %out) unnamed_addr #2 {
entry:
  br label %for.body

for.body:                                         ; preds = %entry, %for.end
  %indvars.iv12 = phi i64 [ 5, %entry ], [ %indvars.iv.next13, %for.end ]
  %arrayidx = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12
  %0 = load double, ptr %arrayidx, align 16, !tbaa !14
  %arrayidx4 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12, i64 1
  %1 = load double, ptr %arrayidx4, align 8, !tbaa !14
  %arrayidx7 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12, i64 2
  %2 = load double, ptr %arrayidx7, align 16, !tbaa !14
  %arrayidx10 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12, i64 3
  %3 = load double, ptr %arrayidx10, align 8, !tbaa !14
  %arrayidx13 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12, i64 4
  %4 = load double, ptr %arrayidx13, align 16, !tbaa !14
  %arrayidx16 = getelementptr inbounds [6 x [6 x double]], ptr @cos_s, i64 0, i64 %indvars.iv12, i64 5
  %5 = load double, ptr %arrayidx16, align 8, !tbaa !14
  %6 = mul nuw nsw i64 %indvars.iv12, 3
  br label %for.body19

for.body19:                                       ; preds = %for.body, %for.body19
  %indvars.iv = phi i64 [ 2, %for.body ], [ %indvars.iv.next, %for.body19 ]
  %7 = mul nuw nsw i64 %indvars.iv, 6
  %arrayidx21 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %7
  %8 = load double, ptr %arrayidx21, align 16, !tbaa !14
  %mul22 = fmul fast double %8, %0
  %9 = or i64 %7, 1
  %arrayidx25 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %9
  %10 = load double, ptr %arrayidx25, align 8, !tbaa !14
  %mul26 = fmul fast double %10, %1
  %add27 = fadd fast double %mul26, %mul22
  %11 = add nuw nsw i64 %7, 2
  %arrayidx31 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %11
  %12 = load double, ptr %arrayidx31, align 16, !tbaa !14
  %mul32 = fmul fast double %12, %2
  %add33 = fadd fast double %add27, %mul32
  %13 = add nuw nsw i64 %7, 3
  %arrayidx37 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %13
  %14 = load double, ptr %arrayidx37, align 8, !tbaa !14
  %mul38 = fmul fast double %14, %3
  %add39 = fadd fast double %add33, %mul38
  %15 = add nuw nsw i64 %7, 4
  %arrayidx43 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %15
  %16 = load double, ptr %arrayidx43, align 16, !tbaa !14
  %mul44 = fmul fast double %16, %4
  %add45 = fadd fast double %add39, %mul44
  %17 = add nuw nsw i64 %7, 5
  %arrayidx49 = getelementptr inbounds double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), i64 %17
  %18 = load double, ptr %arrayidx49, align 8, !tbaa !14
  %mul50 = fmul fast double %18, %5
  %add51 = fadd fast double %add45, %mul50
  %19 = add nuw nsw i64 %indvars.iv, %6
  %arrayidx55 = getelementptr inbounds double, ptr %out, i64 %19
  store double %add51, ptr %arrayidx55, align 8, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp18.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp18.not, label %for.end, label %for.body19, !llvm.loop !67

for.end:                                          ; preds = %for.body19
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1
  %cmp.not = icmp eq i64 %indvars.iv12, 0
  br i1 %cmp.not, label %for.end58, label %for.body, !llvm.loop !68

for.end58:                                        ; preds = %for.end
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @mdct_long(ptr nocapture noundef writeonly %out) unnamed_addr #2 {
entry:
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 11, %entry ]
  %cos_l0.0 = phi ptr [ %add.ptr, %do.body ], [ @cos_l, %entry ]
  %0 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), align 16, !tbaa !14
  %1 = load double, ptr %cos_l0.0, align 8, !tbaa !14
  %mul = fmul fast double %1, %0
  %2 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), align 8, !tbaa !14
  %arrayidx3 = getelementptr inbounds double, ptr %cos_l0.0, i64 1
  %3 = load double, ptr %arrayidx3, align 8, !tbaa !14
  %mul4 = fmul fast double %3, %2
  %add = fadd fast double %mul4, %mul
  %4 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 6), align 16, !tbaa !14
  %arrayidx6 = getelementptr inbounds double, ptr %cos_l0.0, i64 2
  %5 = load double, ptr %arrayidx6, align 8, !tbaa !14
  %mul7 = fmul fast double %5, %4
  %add8 = fadd fast double %add, %mul7
  %6 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 7), align 8, !tbaa !14
  %arrayidx10 = getelementptr inbounds double, ptr %cos_l0.0, i64 3
  %7 = load double, ptr %arrayidx10, align 8, !tbaa !14
  %mul11 = fmul fast double %7, %6
  %add12 = fadd fast double %add8, %mul11
  %8 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 8), align 16, !tbaa !14
  %arrayidx14 = getelementptr inbounds double, ptr %cos_l0.0, i64 4
  %9 = load double, ptr %arrayidx14, align 8, !tbaa !14
  %mul15 = fmul fast double %9, %8
  %add16 = fadd fast double %add12, %mul15
  %10 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 9), align 8, !tbaa !14
  %arrayidx18 = getelementptr inbounds double, ptr %cos_l0.0, i64 5
  %11 = load double, ptr %arrayidx18, align 8, !tbaa !14
  %mul19 = fmul fast double %11, %10
  %add20 = fadd fast double %add16, %mul19
  %12 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 10), align 16, !tbaa !14
  %arrayidx22 = getelementptr inbounds double, ptr %cos_l0.0, i64 6
  %13 = load double, ptr %arrayidx22, align 8, !tbaa !14
  %mul23 = fmul fast double %13, %12
  %add24 = fadd fast double %add20, %mul23
  %14 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 11), align 8, !tbaa !14
  %arrayidx26 = getelementptr inbounds double, ptr %cos_l0.0, i64 7
  %15 = load double, ptr %arrayidx26, align 8, !tbaa !14
  %mul27 = fmul fast double %15, %14
  %add28 = fadd fast double %add24, %mul27
  %16 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 12), align 16, !tbaa !14
  %arrayidx30 = getelementptr inbounds double, ptr %cos_l0.0, i64 8
  %17 = load double, ptr %arrayidx30, align 8, !tbaa !14
  %mul31 = fmul fast double %17, %16
  %add32 = fadd fast double %add28, %mul31
  %18 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 13), align 8, !tbaa !14
  %arrayidx34 = getelementptr inbounds double, ptr %cos_l0.0, i64 9
  %19 = load double, ptr %arrayidx34, align 8, !tbaa !14
  %mul35 = fmul fast double %19, %18
  %add36 = fadd fast double %add32, %mul35
  %20 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 14), align 16, !tbaa !14
  %arrayidx38 = getelementptr inbounds double, ptr %cos_l0.0, i64 10
  %21 = load double, ptr %arrayidx38, align 8, !tbaa !14
  %mul39 = fmul fast double %21, %20
  %add40 = fadd fast double %add36, %mul39
  %22 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 15), align 8, !tbaa !14
  %arrayidx42 = getelementptr inbounds double, ptr %cos_l0.0, i64 11
  %23 = load double, ptr %arrayidx42, align 8, !tbaa !14
  %mul43 = fmul fast double %23, %22
  %add44 = fadd fast double %add40, %mul43
  %24 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 16), align 16, !tbaa !14
  %arrayidx46 = getelementptr inbounds double, ptr %cos_l0.0, i64 12
  %25 = load double, ptr %arrayidx46, align 8, !tbaa !14
  %mul47 = fmul fast double %25, %24
  %add48 = fadd fast double %add44, %mul47
  %26 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 17), align 8, !tbaa !14
  %arrayidx50 = getelementptr inbounds double, ptr %cos_l0.0, i64 13
  %27 = load double, ptr %arrayidx50, align 8, !tbaa !14
  %mul51 = fmul fast double %27, %26
  %add52 = fadd fast double %add48, %mul51
  %28 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 18), align 16, !tbaa !14
  %arrayidx54 = getelementptr inbounds double, ptr %cos_l0.0, i64 14
  %29 = load double, ptr %arrayidx54, align 8, !tbaa !14
  %mul55 = fmul fast double %29, %28
  %add56 = fadd fast double %add52, %mul55
  %30 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !14
  %arrayidx58 = getelementptr inbounds double, ptr %cos_l0.0, i64 15
  %31 = load double, ptr %arrayidx58, align 8, !tbaa !14
  %mul59 = fmul fast double %31, %30
  %add60 = fadd fast double %add56, %mul59
  %32 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 20), align 16, !tbaa !14
  %arrayidx62 = getelementptr inbounds double, ptr %cos_l0.0, i64 16
  %33 = load double, ptr %arrayidx62, align 8, !tbaa !14
  %mul63 = fmul fast double %33, %32
  %add64 = fadd fast double %add60, %mul63
  %34 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 21), align 8, !tbaa !14
  %arrayidx66 = getelementptr inbounds double, ptr %cos_l0.0, i64 17
  %35 = load double, ptr %arrayidx66, align 8, !tbaa !14
  %mul67 = fmul fast double %35, %34
  %add68 = fadd fast double %add64, %mul67
  %arrayidx69 = getelementptr inbounds [12 x i32], ptr @all, i64 0, i64 %indvars.iv
  %36 = load i32, ptr %arrayidx69, align 4, !tbaa !44
  %idxprom70 = sext i32 %36 to i64
  %arrayidx71 = getelementptr inbounds double, ptr %out, i64 %idxprom70
  store double %add68, ptr %arrayidx71, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds double, ptr %cos_l0.0, i64 18
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.not, label %do.end, label %do.body, !llvm.loop !69

do.end:                                           ; preds = %do.body
  %37 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 4), align 16, !tbaa !14
  %38 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 9), align 8, !tbaa !14
  %add74 = fadd fast double %38, %37
  %39 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 19), align 8, !tbaa !14
  %add76 = fadd fast double %add74, %39
  %40 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 5), align 8, !tbaa !14
  %41 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 8), align 16, !tbaa !14
  %add79 = fadd fast double %41, %40
  %42 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 20), align 16, !tbaa !14
  %add81 = fadd fast double %add79, %42
  %43 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 6), align 16, !tbaa !14
  %44 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 7), align 8, !tbaa !14
  %add84 = fadd fast double %44, %43
  %45 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 21), align 8, !tbaa !14
  %add86 = fadd fast double %add84, %45
  %46 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 10), align 16, !tbaa !14
  %47 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 13), align 8, !tbaa !14
  %sub = fsub fast double %46, %47
  %48 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 18), align 16, !tbaa !14
  %add90 = fadd fast double %sub, %48
  %49 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 11), align 8, !tbaa !14
  %50 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 14), align 16, !tbaa !14
  %sub93 = fsub fast double %49, %50
  %51 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 17), align 8, !tbaa !14
  %add95 = fadd fast double %sub93, %51
  %52 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 12), align 16, !tbaa !14
  %53 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 15), align 8, !tbaa !14
  %sub98 = fsub fast double %52, %53
  %54 = load double, ptr getelementptr inbounds ([4 x [36 x double]], ptr @win, i64 0, i64 2, i64 16), align 16, !tbaa !14
  %add100 = fadd fast double %sub98, %54
  %55 = load double, ptr %add.ptr, align 8, !tbaa !14
  %mul102 = fmul fast double %55, %add76
  %arrayidx103 = getelementptr inbounds double, ptr %cos_l0.0, i64 19
  %56 = load double, ptr %arrayidx103, align 8, !tbaa !14
  %mul104 = fmul fast double %56, %add81
  %add105 = fadd fast double %mul104, %mul102
  %arrayidx106 = getelementptr inbounds double, ptr %cos_l0.0, i64 20
  %57 = load double, ptr %arrayidx106, align 8, !tbaa !14
  %mul107 = fmul fast double %57, %add86
  %add108 = fadd fast double %add105, %mul107
  %arrayidx109 = getelementptr inbounds double, ptr %cos_l0.0, i64 21
  %58 = load double, ptr %arrayidx109, align 8, !tbaa !14
  %mul110 = fmul fast double %58, %add90
  %add111 = fadd fast double %add108, %mul110
  %arrayidx112 = getelementptr inbounds double, ptr %cos_l0.0, i64 22
  %59 = load double, ptr %arrayidx112, align 8, !tbaa !14
  %mul113 = fmul fast double %59, %add95
  %add114 = fadd fast double %add111, %mul113
  %arrayidx115 = getelementptr inbounds double, ptr %cos_l0.0, i64 23
  %60 = load double, ptr %arrayidx115, align 8, !tbaa !14
  %mul116 = fmul fast double %60, %add100
  %add117 = fadd fast double %add114, %mul116
  %arrayidx118 = getelementptr inbounds double, ptr %out, i64 16
  store double %add117, ptr %arrayidx118, align 8, !tbaa !14
  %add.ptr119 = getelementptr inbounds double, ptr %cos_l0.0, i64 24
  %61 = load double, ptr %add.ptr119, align 8, !tbaa !14
  %mul121 = fmul fast double %61, %add76
  %arrayidx122 = getelementptr inbounds double, ptr %cos_l0.0, i64 25
  %62 = load double, ptr %arrayidx122, align 8, !tbaa !14
  %mul123 = fmul fast double %62, %add81
  %add124 = fadd fast double %mul123, %mul121
  %arrayidx125 = getelementptr inbounds double, ptr %cos_l0.0, i64 26
  %63 = load double, ptr %arrayidx125, align 8, !tbaa !14
  %mul126 = fmul fast double %63, %add86
  %add127 = fadd fast double %add124, %mul126
  %arrayidx128 = getelementptr inbounds double, ptr %cos_l0.0, i64 27
  %64 = load double, ptr %arrayidx128, align 8, !tbaa !14
  %mul129 = fmul fast double %64, %add90
  %add130 = fadd fast double %add127, %mul129
  %arrayidx131 = getelementptr inbounds double, ptr %cos_l0.0, i64 28
  %65 = load double, ptr %arrayidx131, align 8, !tbaa !14
  %mul132 = fmul fast double %65, %add95
  %add133 = fadd fast double %add130, %mul132
  %arrayidx134 = getelementptr inbounds double, ptr %cos_l0.0, i64 29
  %66 = load double, ptr %arrayidx134, align 8, !tbaa !14
  %mul135 = fmul fast double %66, %add100
  %add136 = fadd fast double %add133, %mul135
  %arrayidx137 = getelementptr inbounds double, ptr %out, i64 10
  store double %add136, ptr %arrayidx137, align 8, !tbaa !14
  %add.ptr138 = getelementptr inbounds double, ptr %cos_l0.0, i64 30
  %67 = load double, ptr %add.ptr138, align 8, !tbaa !14
  %mul140 = fmul fast double %67, %add76
  %arrayidx141 = getelementptr inbounds double, ptr %cos_l0.0, i64 31
  %68 = load double, ptr %arrayidx141, align 8, !tbaa !14
  %mul142 = fmul fast double %68, %add81
  %add143 = fadd fast double %mul142, %mul140
  %arrayidx144 = getelementptr inbounds double, ptr %cos_l0.0, i64 32
  %69 = load double, ptr %arrayidx144, align 8, !tbaa !14
  %mul145 = fmul fast double %69, %add86
  %add146 = fadd fast double %add143, %mul145
  %arrayidx147 = getelementptr inbounds double, ptr %cos_l0.0, i64 33
  %70 = load double, ptr %arrayidx147, align 8, !tbaa !14
  %mul148 = fmul fast double %70, %add90
  %add149 = fadd fast double %add146, %mul148
  %arrayidx150 = getelementptr inbounds double, ptr %cos_l0.0, i64 34
  %71 = load double, ptr %arrayidx150, align 8, !tbaa !14
  %mul151 = fmul fast double %71, %add95
  %add152 = fadd fast double %add149, %mul151
  %arrayidx153 = getelementptr inbounds double, ptr %cos_l0.0, i64 35
  %72 = load double, ptr %arrayidx153, align 8, !tbaa !14
  %mul154 = fmul fast double %72, %add100
  %add155 = fadd fast double %add152, %mul154
  %arrayidx156 = getelementptr inbounds double, ptr %out, i64 7
  store double %add155, ptr %arrayidx156, align 8, !tbaa !14
  %add.ptr157 = getelementptr inbounds double, ptr %cos_l0.0, i64 36
  %73 = load double, ptr %add.ptr157, align 8, !tbaa !14
  %mul159 = fmul fast double %73, %add76
  %arrayidx160 = getelementptr inbounds double, ptr %cos_l0.0, i64 37
  %74 = load double, ptr %arrayidx160, align 8, !tbaa !14
  %mul161 = fmul fast double %74, %add81
  %add162 = fadd fast double %mul161, %mul159
  %arrayidx163 = getelementptr inbounds double, ptr %cos_l0.0, i64 38
  %75 = load double, ptr %arrayidx163, align 8, !tbaa !14
  %mul164 = fmul fast double %75, %add86
  %add165 = fadd fast double %add162, %mul164
  %arrayidx166 = getelementptr inbounds double, ptr %cos_l0.0, i64 39
  %76 = load double, ptr %arrayidx166, align 8, !tbaa !14
  %mul167 = fmul fast double %76, %add90
  %add168 = fadd fast double %add165, %mul167
  %arrayidx169 = getelementptr inbounds double, ptr %cos_l0.0, i64 40
  %77 = load double, ptr %arrayidx169, align 8, !tbaa !14
  %mul170 = fmul fast double %77, %add95
  %add171 = fadd fast double %add168, %mul170
  %arrayidx172 = getelementptr inbounds double, ptr %cos_l0.0, i64 41
  %78 = load double, ptr %arrayidx172, align 8, !tbaa !14
  %mul173 = fmul fast double %78, %add100
  %add174 = fadd fast double %add171, %mul173
  %arrayidx175 = getelementptr inbounds double, ptr %out, i64 1
  store double %add174, ptr %arrayidx175, align 8, !tbaa !14
  %add.ptr176 = getelementptr inbounds double, ptr %cos_l0.0, i64 42
  %sub177 = fsub fast double %add76, %add81
  %add178 = fadd fast double %add100, %sub177
  %79 = fadd fast double %add90, %add95
  %sub180 = fsub fast double %add86, %79
  %80 = load double, ptr %add.ptr176, align 8, !tbaa !14
  %mul182 = fmul fast double %80, %add178
  %arrayidx183 = getelementptr inbounds double, ptr %cos_l0.0, i64 43
  %81 = load double, ptr %arrayidx183, align 8, !tbaa !14
  %mul184 = fmul fast double %81, %sub180
  %add185 = fadd fast double %mul184, %mul182
  %arrayidx186 = getelementptr inbounds double, ptr %out, i64 13
  store double %add185, ptr %arrayidx186, align 8, !tbaa !14
  %arrayidx187 = getelementptr inbounds double, ptr %cos_l0.0, i64 44
  %82 = load double, ptr %arrayidx187, align 8, !tbaa !14
  %mul188 = fmul fast double %82, %add178
  %arrayidx189 = getelementptr inbounds double, ptr %cos_l0.0, i64 45
  %83 = load double, ptr %arrayidx189, align 8, !tbaa !14
  %mul190 = fmul fast double %83, %sub180
  %add191 = fadd fast double %mul190, %mul188
  %arrayidx192 = getelementptr inbounds double, ptr %out, i64 4
  store double %add191, ptr %arrayidx192, align 8, !tbaa !14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare double @tan(double noundef) local_unnamed_addr #6

attributes #0 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !10, i64 204}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !8, i64 120, !10, i64 124, !11, i64 128, !11, i64 136, !10, i64 144, !10, i64 148, !12, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !7, i64 168, !7, i64 176, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !12, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!6, !10, i64 200}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !8, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !17, !18}
!20 = !{!6, !10, i64 256}
!21 = !{!6, !10, i64 252}
!22 = !{!6, !10, i64 248}
!23 = !{!6, !12, i64 232}
!24 = !{!6, !12, i64 240}
!25 = !{!6, !12, i64 236}
!26 = distinct !{!26, !17, !18}
!27 = !{!6, !12, i64 244}
!28 = distinct !{!28, !17, !18}
!29 = distinct !{!29, !17, !18}
!30 = !{!31, !10, i64 24}
!31 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 44, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !11, i64 96, !8, i64 104}
!32 = distinct !{!32, !17, !18}
!33 = distinct !{!33, !17, !18}
!34 = distinct !{!34, !17, !18}
!35 = distinct !{!35, !17, !18}
!36 = distinct !{!36, !17, !18}
!37 = distinct !{!37, !17, !18}
!38 = distinct !{!38, !17, !18}
!39 = distinct !{!39, !17, !18}
!40 = distinct !{!40, !17, !18}
!41 = distinct !{!41, !17, !18}
!42 = distinct !{!42, !17, !18}
!43 = distinct !{!43, !17, !18}
!44 = !{!10, !10, i64 0}
!45 = distinct !{!45, !17, !18}
!46 = distinct !{!46, !17, !18}
!47 = distinct !{!47, !17, !18}
!48 = distinct !{!48, !17, !18}
!49 = distinct !{!49, !17, !18}
!50 = distinct !{!50, !17, !18}
!51 = distinct !{!51, !17, !18}
!52 = distinct !{!52, !17, !18}
!53 = distinct !{!53, !17, !18}
!54 = distinct !{!54, !17, !18}
!55 = distinct !{!55, !17, !18}
!56 = distinct !{!56, !17, !18}
!57 = distinct !{!57, !17, !18}
!58 = distinct !{!58, !17, !18}
!59 = distinct !{!59, !17, !18}
!60 = distinct !{!60, !17, !18}
!61 = distinct !{!61, !17, !18}
!62 = !{!63, !63, i64 0}
!63 = !{!"short", !8, i64 0}
!64 = distinct !{!64, !17, !18}
!65 = distinct !{!65, !17, !18}
!66 = distinct !{!66, !17, !18}
!67 = distinct !{!67, !17, !18}
!68 = distinct !{!68, !17, !18}
!69 = distinct !{!69, !17, !18}
