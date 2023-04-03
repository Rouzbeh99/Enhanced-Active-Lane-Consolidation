; ModuleID = 'quantize.c'
source_filename = "quantize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.III_psy_xmin = type { [22 x double], [13 x [3 x double]] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }
%struct.III_psy_ratio = type { %struct.III_psy_xmin, %struct.III_psy_xmin }

@convert_mdct = external local_unnamed_addr global i32, align 4
@reduce_sidechannel = external local_unnamed_addr global i32, align 4
@masking_lower = external local_unnamed_addr global float, align 4
@nr_of_sfb_block = external global [6 x [3 x [4 x i32]]], align 16
@outer_loop.OldValue = internal unnamed_addr global [2 x i32] [i32 180, i32 180], align 4
@pretab = external local_unnamed_addr global [21 x i32], align 16
@pow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@pow43 = external local_unnamed_addr global [8208 x double], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @iteration_loop(ptr noundef %gfp, ptr noundef %pe, ptr nocapture noundef readonly %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) local_unnamed_addr #0 {
entry:
  %noise = alloca [4 x double], align 16
  %l3_xmin = alloca [2 x %struct.III_psy_xmin], align 16
  %bitsPerFrame = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  %targ_bits = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %noise) #12
  call void @llvm.lifetime.start.p0(i64 976, ptr nonnull %l3_xmin) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitsPerFrame) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mean_bits) #12
  tail call void @iteration_init(ptr noundef %gfp, ptr noundef %l3_side, ptr noundef %l3_enc) #12
  call void @getframebits(ptr noundef %gfp, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #12
  %0 = load i32, ptr %mean_bits, align 4, !tbaa !5
  %1 = load i32, ptr %bitsPerFrame, align 4, !tbaa !5
  %call = call i32 @ResvFrameBegin(ptr noundef %gfp, ptr noundef %l3_side, i32 noundef %0, i32 noundef %1) #12
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %2 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %cmp194 = icmp sgt i32 %2, 0
  br i1 %cmp194, label %for.body.lr.ph, label %for.end110

for.body.lr.ph:                                   ; preds = %entry
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %use_best_huffman = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end107
  %indvars.iv203 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next204, %for.end107 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %targ_bits) #12
  %3 = load i32, ptr @convert_mdct, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv203
  call void @ms_convert(ptr noundef %arrayidx4, ptr noundef %arrayidx4) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %mean_bits, align 4, !tbaa !5
  %5 = trunc i64 %indvars.iv203 to i32
  call void @on_pe(ptr noundef nonnull %gfp, ptr noundef %pe, ptr noundef %l3_side, ptr noundef nonnull %targ_bits, i32 noundef %4, i32 noundef %5) #12
  %6 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end
  %arrayidx13 = getelementptr inbounds double, ptr %ms_ener_ratio, i64 %indvars.iv203
  %7 = load double, ptr %arrayidx13, align 8, !tbaa !14
  %8 = load i32, ptr %mean_bits, align 4, !tbaa !5
  call void @reduce_side(ptr noundef nonnull %targ_bits, double noundef %7, i32 noundef %8) #12
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %9 = load i32, ptr %stereo, align 4, !tbaa !16
  %cmp16190 = icmp sgt i32 %9, 0
  br i1 %cmp16190, label %for.body17.lr.ph, label %for.end107

for.body17.lr.ph:                                 ; preds = %if.end14
  %arrayidx20 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv203
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.inc105
  %indvars.iv200 = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next201, %for.inc105 ]
  %arrayidx23 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx20, i64 0, i64 %indvars.iv200
  %arrayidx27 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv203, i64 %indvars.iv200
  %call29 = call i32 @init_outer_loop(ptr noundef nonnull %gfp, ptr noundef %arrayidx27, ptr noundef nonnull %arrayidx23)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body17
  %arrayidx35 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv203, i64 %indvars.iv200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %arrayidx35, i8 0, i64 244, i1 false)
  %arrayidx39 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv203, i64 %indvars.iv200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx39, i8 0, i64 2304, i1 false)
  %.pre = trunc i64 %indvars.iv200 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %noise, i8 0, i64 32, i1 false)
  br label %if.end77

if.else:                                          ; preds = %for.body17
  %arrayidx53 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %ratio, i64 %indvars.iv203, i64 %indvars.iv200
  %arrayidx55 = getelementptr inbounds [2 x %struct.III_psy_xmin], ptr %l3_xmin, i64 0, i64 %indvars.iv200
  %call56 = call i32 @calc_xmin(ptr noundef nonnull %gfp, ptr noundef %arrayidx27, ptr noundef %arrayidx53, ptr noundef nonnull %arrayidx23, ptr noundef nonnull %arrayidx55) #12
  %arrayidx63 = getelementptr inbounds [2 x i32], ptr %targ_bits, i64 0, i64 %indvars.iv200
  %10 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %arrayidx70 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv203, i64 %indvars.iv200
  %arrayidx75 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv203, i64 %indvars.iv200
  %11 = trunc i64 %indvars.iv200 to i32
  call void @outer_loop(ptr noundef nonnull %gfp, ptr noundef %arrayidx27, i32 noundef %10, ptr noundef nonnull %noise, ptr noundef nonnull %arrayidx55, ptr noundef %arrayidx70, ptr noundef %arrayidx75, ptr noundef nonnull %arrayidx23, ptr undef, i32 noundef %11)
  br label %if.end77

if.end77:                                         ; preds = %if.else, %if.then31
  %.pre-phi = phi i32 [ %11, %if.else ], [ %.pre, %if.then31 ]
  call void @best_scalefac_store(ptr noundef nonnull %gfp, i32 noundef %5, i32 noundef %.pre-phi, ptr noundef %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac) #12
  %12 = load i32, ptr %use_best_huffman, align 4, !tbaa !17
  %cmp78 = icmp eq i32 %12, 1
  br i1 %cmp78, label %land.lhs.true, label %if.end86

land.lhs.true:                                    ; preds = %if.end77
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx23, i64 0, i32 6
  %13 = load i32, ptr %block_type, align 8, !tbaa !18
  %cmp79 = icmp eq i32 %13, 0
  br i1 %cmp79, label %if.then80, label %if.end86

if.then80:                                        ; preds = %land.lhs.true
  %arrayidx84 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv203, i64 %indvars.iv200
  call void @best_huffman_divide(i32 noundef %5, i32 noundef %.pre-phi, ptr noundef nonnull %arrayidx23, ptr noundef %arrayidx84) #12
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %land.lhs.true, %if.end77
  %14 = load i32, ptr %mean_bits, align 4, !tbaa !5
  call void @ResvAdjust(ptr noundef nonnull %gfp, ptr noundef nonnull %arrayidx23, ptr noundef %l3_side, i32 noundef %14) #12
  br label %for.body89

for.body89:                                       ; preds = %if.end86, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end86 ], [ %indvars.iv.next, %for.inc ]
  %arrayidx95 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv203, i64 %indvars.iv200, i64 %indvars.iv
  %15 = load double, ptr %arrayidx95, align 8, !tbaa !14
  %cmp96 = fcmp fast olt double %15, 0.000000e+00
  br i1 %cmp96, label %if.then97, label %for.inc

if.then97:                                        ; preds = %for.body89
  %arrayidx103 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv203, i64 %indvars.iv200, i64 %indvars.iv
  %16 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %mul = sub nsw i32 0, %16
  store i32 %mul, ptr %arrayidx103, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body89, %if.then97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %for.inc105, label %for.body89, !llvm.loop !20

for.inc105:                                       ; preds = %for.inc
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1
  %17 = load i32, ptr %stereo, align 4, !tbaa !16
  %18 = sext i32 %17 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next201, %18
  br i1 %cmp16, label %for.body17, label %for.end107, !llvm.loop !23

for.end107:                                       ; preds = %for.inc105, %if.end14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %targ_bits) #12
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1
  %19 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %20 = sext i32 %19 to i64
  %cmp = icmp slt i64 %indvars.iv.next204, %20
  br i1 %cmp, label %for.body, label %for.end110, !llvm.loop !24

for.end110:                                       ; preds = %for.end107, %entry
  %21 = load i32, ptr %mean_bits, align 4, !tbaa !5
  call void @ResvFrameEnd(ptr noundef nonnull %gfp, ptr noundef %l3_side, i32 noundef %21) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mean_bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitsPerFrame) #12
  call void @llvm.lifetime.end.p0(i64 976, ptr nonnull %l3_xmin) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %noise) #12
  ret void
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @iteration_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @getframebits(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ResvFrameBegin(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @ms_convert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @on_pe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @reduce_side(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree noinline nosync nounwind uwtable
define dso_local i32 @init_outer_loop(ptr nocapture noundef readonly %gfp, ptr nocapture noundef readonly %xr, ptr noundef %cod_info) local_unnamed_addr #3 {
entry:
  %en = alloca [3 x double], align 16
  %uglygep = getelementptr i8, ptr %cod_info, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !tbaa !5
  %sfb_partition_table = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 19
  store ptr @nr_of_sfb_block, ptr %sfb_partition_table, align 8, !tbaa !25
  store i32 0, ptr %cod_info, align 8, !tbaa !26
  %big_values = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 1
  store i32 0, ptr %big_values, align 4, !tbaa !27
  %count1 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 2
  store i32 0, ptr %count1, align 8, !tbaa !28
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 4
  store i32 0, ptr %scalefac_compress, align 8, !tbaa !29
  %table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  store i32 0, ptr %part2_length, align 4, !tbaa !30
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %table_select, i8 0, i64 40, i1 false)
  store i32 210, ptr %global_gain, align 4, !tbaa !31
  %count1table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 14
  store i32 0, ptr %count1table_select, align 8, !tbaa !32
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 18
  store i32 0, ptr %count1bits, align 8, !tbaa !33
  %experimentalZ = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 20
  %0 = load i32, ptr %experimentalZ, align 4, !tbaa !34
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %for.body117.preheader, label %if.then

for.body117.preheader:                            ; preds = %cleanup.thread, %entry
  br label %for.body117

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %en) #12
  %block_type = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 6
  %1 = load i32, ptr %block_type, align 8, !tbaa !18
  %cmp11 = icmp eq i32 %1, 2
  br i1 %cmp11, label %for.body15.preheader, label %cleanup.thread

for.body15.preheader:                             ; preds = %if.then
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %en, i8 0, i64 24, i1 false), !tbaa !14
  br label %for.cond24.preheader

cleanup.thread:                                   ; preds = %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %en) #12
  br label %for.body117.preheader

for.cond24.preheader:                             ; preds = %for.body15.preheader, %for.inc37
  %j.0198 = phi i32 [ %inc38, %for.inc37 ], [ 0, %for.body15.preheader ]
  %i.1197 = phi i64 [ %indvars.iv.next207, %for.inc37 ], [ 0, %for.body15.preheader ]
  %sext = shl i64 %i.1197, 32
  %2 = ashr exact i64 %sext, 32
  br label %for.body26

for.body26:                                       ; preds = %for.cond24.preheader, %for.body26
  %indvars.iv206 = phi i64 [ %2, %for.cond24.preheader ], [ %indvars.iv.next207, %for.body26 ]
  %indvars.iv = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next, %for.body26 ]
  %arrayidx28 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv206
  %3 = load double, ptr %arrayidx28, align 8, !tbaa !14
  %mul = fmul fast double %3, %3
  %arrayidx32 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %indvars.iv
  %4 = load double, ptr %arrayidx32, align 8, !tbaa !14
  %add = fadd fast double %4, %mul
  store double %add, ptr %arrayidx32, align 8, !tbaa !14
  %indvars.iv.next207 = add nsw i64 %indvars.iv206, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc37, label %for.body26, !llvm.loop !35

for.inc37:                                        ; preds = %for.body26
  %inc38 = add nuw nsw i32 %j.0198, 1
  %exitcond211.not = icmp eq i32 %inc38, 192
  br i1 %exitcond211.not, label %for.body42, label %for.cond24.preheader, !llvm.loop !36

for.body42:                                       ; preds = %for.inc37, %for.body42
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %for.body42 ], [ 0, %for.inc37 ]
  %mx.0200 = phi double [ %6, %for.body42 ], [ 0x3D719799812DEA11, %for.inc37 ]
  %arrayidx44 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %indvars.iv212
  %5 = load double, ptr %arrayidx44, align 8, !tbaa !14
  %6 = tail call fast double @llvm.maxnum.f64(double %mx.0200, double %5)
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  %exitcond215.not = icmp eq i64 %indvars.iv.next213, 3
  br i1 %exitcond215.not, label %for.body53.preheader, label %for.body42, !llvm.loop !37

for.body53.preheader:                             ; preds = %for.body42
  %7 = fdiv fast double 1.000000e+00, %6
  br label %for.body53

for.body53:                                       ; preds = %for.body53.preheader, %cond.end61
  %indvars.iv216 = phi i64 [ %indvars.iv.next217, %cond.end61 ], [ 0, %for.body53.preheader ]
  %arrayidx55 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %indvars.iv216
  %8 = load double, ptr %arrayidx55, align 8, !tbaa !14
  %cmp56 = fcmp fast ogt double %8, 0x3D719799812DEA11
  br i1 %cmp56, label %cond.true57, label %cond.end61

cond.true57:                                      ; preds = %for.body53
  br label %cond.end61

cond.end61:                                       ; preds = %for.body53, %cond.true57
  %cond62 = phi fast double [ %8, %cond.true57 ], [ 0x3D719799812DEA11, %for.body53 ]
  %9 = fmul fast double %cond62, %7
  store double %9, ptr %arrayidx55, align 8, !tbaa !14
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %exitcond219.not = icmp eq i64 %indvars.iv.next217, 3
  br i1 %exitcond219.not, label %for.body70, label %for.body53, !llvm.loop !38

for.body70:                                       ; preds = %cond.end61, %for.body70
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %for.body70 ], [ 0, %cond.end61 ]
  %arrayidx72 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 %indvars.iv220
  %10 = load double, ptr %arrayidx72, align 8, !tbaa !14
  %11 = tail call fast double @llvm.log.f64(double %10)
  %div74 = fmul fast double %11, 0x3FE71547652B82FE
  %12 = fsub fast double 5.000000e-01, %div74
  %conv = fptosi double %12 to i32
  %arrayidx78 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 9, i64 %indvars.iv220
  %13 = tail call i32 @llvm.smin.i32(i32 %conv, i32 2)
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  store i32 %14, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1
  %exitcond223.not = icmp eq i64 %indvars.iv.next221, 3
  br i1 %exitcond223.not, label %cleanup, label %for.body70, !llvm.loop !39

cleanup:                                          ; preds = %for.body70
  %15 = load double, ptr %en, align 16, !tbaa !14
  %arrayidx102 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 1
  %16 = load double, ptr %arrayidx102, align 8, !tbaa !14
  %add103 = fadd fast double %16, %15
  %arrayidx104 = getelementptr inbounds [3 x double], ptr %en, i64 0, i64 2
  %17 = load double, ptr %arrayidx104, align 16, !tbaa !14
  %add105 = fadd fast double %add103, %17
  %cmp106 = fcmp fast ogt double %add105, 1.000000e-99
  %. = zext i1 %cmp106 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %en) #12
  br label %cleanup127

for.cond114:                                      ; preds = %for.body117
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, 576
  br i1 %exitcond227.not, label %cleanup127, label %for.body117, !llvm.loop !40

for.body117:                                      ; preds = %for.body117.preheader, %for.cond114
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.cond114 ], [ 0, %for.body117.preheader ]
  %arrayidx119 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv224
  %18 = load double, ptr %arrayidx119, align 8, !tbaa !14
  %19 = tail call fast double @llvm.fabs.f64(double %18)
  %cmp120 = fcmp fast ogt double %19, 1.000000e-99
  br i1 %cmp120, label %cleanup127, label %for.cond114

cleanup127:                                       ; preds = %for.cond114, %for.body117, %cleanup
  %retval.1 = phi i32 [ %., %cleanup ], [ 0, %for.cond114 ], [ 1, %for.body117 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @calc_xmin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @outer_loop(ptr noundef %gfp, ptr nocapture noundef readonly %xr, i32 noundef %targ_bits, ptr nocapture noundef writeonly %best_noise, ptr nocapture noundef readonly %l3_xmin, ptr nocapture noundef writeonly %l3_enc, ptr nocapture noundef writeonly %scalefac, ptr noundef %cod_info, ptr nocapture readnone %xfsf, i32 noundef %ch) local_unnamed_addr #0 {
entry:
  %scalefac_w = alloca %struct.III_scalefac_t, align 4
  %save_cod_info = alloca %struct.gr_info, align 8
  %l3_enc_w = alloca [576 x i32], align 16
  %xrpow = alloca [576 x double], align 16
  %max_noise = alloca double, align 8
  %over_noise = alloca double, align 8
  %tot_noise = alloca double, align 8
  %xfsf_w = alloca [4 x [21 x double]], align 16
  %distort = alloca [4 x [21 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %scalefac_w) #12
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %save_cod_info)
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %l3_enc_w) #12
  call void @llvm.lifetime.start.p0(i64 4608, ptr nonnull %xrpow) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_noise) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %over_noise) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tot_noise) #12
  call void @llvm.lifetime.start.p0(i64 672, ptr nonnull %xfsf_w) #12
  call void @llvm.lifetime.start.p0(i64 672, ptr nonnull %distort) #12
  %idxprom5 = sext i32 %ch to i64
  %arrayidx6 = getelementptr inbounds [2 x i32], ptr @outer_loop.OldValue, i64 0, i64 %idxprom5
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  %noise_shaping = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 61
  %experimentalX = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 18
  %noise_shaping_stop = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 62
  %version = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 43
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %experimentalY = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 19
  br label %while.body

while.body:                                       ; preds = %entry, %if.end78
  %compute_stepsize.0157 = phi i32 [ 1, %entry ], [ %compute_stepsize.2, %if.end78 ]
  %best_tot_noise.0156 = phi double [ 0.000000e+00, %entry ], [ %best_tot_noise.2, %if.end78 ]
  %best_over_noise.0155 = phi double [ 0.000000e+00, %entry ], [ %best_over_noise.2, %if.end78 ]
  %best_max_noise.0154 = phi double [ 0.000000e+00, %entry ], [ %best_max_noise.2, %if.end78 ]
  %best_over.0153 = phi i32 [ 100, %entry ], [ %best_over.2, %if.end78 ]
  %iteration.0151 = phi i32 [ 0, %entry ], [ %inc, %if.end78 ]
  %bits_found.0150 = phi i32 [ 0, %entry ], [ %bits_found.1, %if.end78 ]
  %inc = add nuw nsw i32 %iteration.0151, 1
  %tobool1.not = icmp eq i32 %compute_stepsize.0157, 0
  br i1 %tobool1.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %scalefac_w, i8 0, i64 244, i1 false)
  br label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ 0, %if.then ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, ptr %xr, i64 %indvars.iv
  %0 = load double, ptr %arrayidx, align 8, !tbaa !14
  %1 = call fast double @llvm.fabs.f64(double %0)
  %2 = call fast double @llvm.sqrt.f64(double %1)
  %mul = fmul fast double %2, %1
  %3 = call fast double @llvm.sqrt.f64(double %mul)
  %arrayidx3 = getelementptr inbounds [576 x double], ptr %xrpow, i64 0, i64 %indvars.iv
  store double %3, ptr %arrayidx3, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !41

for.end:                                          ; preds = %for.body
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call = call i32 @bin_search_StepSize2(ptr noundef %gfp, i32 noundef %targ_bits, i32 noundef %4, ptr noundef nonnull %l3_enc_w, ptr noundef nonnull %xrpow, ptr noundef %cod_info) #12
  %5 = load i32, ptr %global_gain, align 4, !tbaa !31
  store i32 %5, ptr %arrayidx6, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %while.body
  %bits_found.1 = phi i32 [ %call, %for.end ], [ %bits_found.0150, %while.body ]
  %6 = load i32, ptr %part2_length, align 4, !tbaa !30
  %sub = sub i32 %targ_bits, %6
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %while.end, label %if.else

if.else:                                          ; preds = %if.end
  %cmp12 = icmp eq i32 %iteration.0151, 0
  br i1 %cmp12, label %if.then13, label %if.end27.sink.split

if.then13:                                        ; preds = %if.else
  %cmp14 = icmp sgt i32 %bits_found.1, %sub
  br i1 %cmp14, label %if.then15, label %if.end27

if.then15:                                        ; preds = %if.then13
  %7 = load i32, ptr %global_gain, align 4, !tbaa !31
  %inc17 = add i32 %7, 1
  store i32 %inc17, ptr %global_gain, align 4, !tbaa !31
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else, %if.then15
  %call20 = call i32 @inner_loop(ptr noundef %gfp, ptr noundef nonnull %xrpow, ptr noundef nonnull %l3_enc_w, i32 noundef %sub, ptr noundef nonnull %cod_info) #12
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.then13
  %real_bits.0 = phi i32 [ %bits_found.1, %if.then13 ], [ %call20, %if.end27.sink.split ]
  store i32 %real_bits.0, ptr %cod_info, align 8, !tbaa !26
  %8 = load i32, ptr %noise_shaping, align 8, !tbaa !42
  %cmp28 = icmp eq i32 %8, 0
  br i1 %cmp28, label %if.end35, label %if.else30

if.else30:                                        ; preds = %if.end27
  %call34 = call i32 @calc_noise1(ptr noundef %xr, ptr noundef nonnull %l3_enc_w, ptr noundef nonnull %cod_info, ptr noundef nonnull %xfsf_w, ptr noundef nonnull %distort, ptr noundef %l3_xmin, ptr noundef nonnull %scalefac_w, ptr noundef nonnull %over_noise, ptr noundef nonnull %tot_noise, ptr noundef nonnull %max_noise)
  br label %if.end35

if.end35:                                         ; preds = %if.end27, %if.else30
  %over.1 = phi i32 [ %call34, %if.else30 ], [ 0, %if.end27 ]
  br i1 %cmp12, label %if.end35.if.then42_crit_edge, label %if.end40

if.end35.if.then42_crit_edge:                     ; preds = %if.end35
  %.pre = load double, ptr %max_noise, align 8, !tbaa !14
  %.pre159 = load double, ptr %over_noise, align 8, !tbaa !14
  %.pre160 = load double, ptr %tot_noise, align 8, !tbaa !14
  br label %if.then42

if.end40:                                         ; preds = %if.end35
  %9 = load i32, ptr %experimentalX, align 4, !tbaa !43
  %10 = load double, ptr %tot_noise, align 8, !tbaa !14
  %11 = load double, ptr %over_noise, align 8, !tbaa !14
  %12 = load double, ptr %max_noise, align 8, !tbaa !14
  %call39 = call i32 @quant_compare(i32 noundef %9, i32 noundef %best_over.0153, double noundef %best_tot_noise.0156, double noundef %best_over_noise.0155, double noundef %best_max_noise.0154, i32 noundef %over.1, double noundef %10, double noundef %11, double noundef %12)
  %tobool41.not = icmp eq i32 %call39, 0
  br i1 %tobool41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %if.end35.if.then42_crit_edge, %if.end40
  %13 = phi double [ %.pre160, %if.end35.if.then42_crit_edge ], [ %10, %if.end40 ]
  %14 = phi double [ %.pre159, %if.end35.if.then42_crit_edge ], [ %11, %if.end40 ]
  %15 = phi double [ %.pre, %if.end35.if.then42_crit_edge ], [ %12, %if.end40 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %scalefac, ptr noundef nonnull align 4 dereferenceable(244) %scalefac_w, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %l3_enc, ptr noundef nonnull align 16 dereferenceable(2304) %l3_enc_w, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %save_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %cod_info, i64 120, i1 false)
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %if.then42
  %best_over.2 = phi i32 [ %over.1, %if.then42 ], [ %best_over.0153, %if.end40 ]
  %best_max_noise.2 = phi double [ %15, %if.then42 ], [ %best_max_noise.0154, %if.end40 ]
  %best_over_noise.2 = phi double [ %14, %if.then42 ], [ %best_over_noise.0155, %if.end40 ]
  %best_tot_noise.2 = phi double [ %13, %if.then42 ], [ %best_tot_noise.0156, %if.end40 ]
  %16 = load i32, ptr %noise_shaping_stop, align 4, !tbaa !44
  %cmp46 = icmp eq i32 %16, 0
  %cmp48 = icmp eq i32 %over.1, 0
  %or.cond = select i1 %cmp46, i1 %cmp48, i1 false
  %tobool52.not = select i1 %or.cond, i1 true, i1 %cmp10
  br i1 %tobool52.not, label %while.end, label %if.then53

if.then53:                                        ; preds = %if.end45
  call void @amp_scalefac_bands(ptr noundef nonnull %xrpow, ptr noundef nonnull %cod_info, ptr noundef nonnull %scalefac_w, ptr noundef nonnull %distort)
  %call56 = call i32 @loop_break(ptr noundef nonnull %scalefac_w, ptr noundef nonnull %cod_info) #12
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end71.thread142

if.then58:                                        ; preds = %if.then53
  %17 = load i32, ptr %version, align 8, !tbaa !45
  %cmp59 = icmp eq i32 %17, 1
  br i1 %cmp59, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.then58
  %call61 = call i32 @scale_bitcount(ptr noundef nonnull %scalefac_w, ptr noundef nonnull %cod_info) #12
  br label %if.end64

if.else62:                                        ; preds = %if.then58
  %call63 = call i32 @scale_bitcount_lsf(ptr noundef nonnull %scalefac_w, ptr noundef nonnull %cod_info) #12
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then60
  %status.0 = phi i32 [ %call61, %if.then60 ], [ %call63, %if.else62 ]
  %tobool65.not = icmp eq i32 %status.0, 0
  br i1 %tobool65.not, label %if.end71.thread142, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end64
  %18 = load i32, ptr %scalefac_scale, align 4, !tbaa !46
  %cmp66 = icmp eq i32 %18, 0
  br i1 %cmp66, label %land.lhs.true73, label %if.end71.thread142

if.end71.thread142:                               ; preds = %if.end64, %if.then53, %land.lhs.true
  %status.1.ph = phi i32 [ 1, %land.lhs.true ], [ %call56, %if.then53 ], [ 0, %if.end64 ]
  %tobool70.not145 = icmp eq i32 %status.1.ph, 0
  %lnot.ext146 = zext i1 %tobool70.not145 to i32
  br label %if.end78

land.lhs.true73:                                  ; preds = %land.lhs.true
  %19 = load i32, ptr %experimentalY, align 8, !tbaa !47
  %tobool74.not = icmp eq i32 %19, 0
  br i1 %tobool74.not, label %while.end, label %if.then75

if.then75:                                        ; preds = %land.lhs.true73
  %call76 = call i32 @init_outer_loop(ptr noundef nonnull %gfp, ptr noundef %xr, ptr noundef nonnull %cod_info)
  store i32 1, ptr %scalefac_scale, align 4, !tbaa !46
  br label %if.end78

if.end78:                                         ; preds = %if.end71.thread142, %if.then75
  %compute_stepsize.2 = phi i32 [ 1, %if.then75 ], [ 0, %if.end71.thread142 ]
  %notdone.4 = phi i32 [ 1, %if.then75 ], [ %lnot.ext146, %if.end71.thread142 ]
  %tobool.not = icmp eq i32 %notdone.4, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !48

while.end:                                        ; preds = %if.end, %if.end45, %land.lhs.true73, %if.end78
  %best_over.2171186 = phi i32 [ %best_over.2, %if.end78 ], [ %best_over.2, %if.end45 ], [ %best_over.2, %land.lhs.true73 ], [ %best_over.0153, %if.end ]
  %best_max_noise.2172185 = phi double [ %best_max_noise.2, %if.end78 ], [ %best_max_noise.2, %if.end45 ], [ %best_max_noise.2, %land.lhs.true73 ], [ %best_max_noise.0154, %if.end ]
  %best_over_noise.2173184 = phi double [ %best_over_noise.2, %if.end78 ], [ %best_over_noise.2, %if.end45 ], [ %best_over_noise.2, %land.lhs.true73 ], [ %best_over_noise.0155, %if.end ]
  %best_tot_noise.2174183 = phi double [ %best_tot_noise.2, %if.end78 ], [ %best_tot_noise.2, %if.end45 ], [ %best_tot_noise.2, %land.lhs.true73 ], [ %best_tot_noise.0156, %if.end ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %cod_info, ptr noundef nonnull align 8 dereferenceable(120) %save_cod_info, i64 120, i1 false)
  %20 = load i32, ptr %part2_length, align 4, !tbaa !30
  %21 = load i32, ptr %cod_info, align 8, !tbaa !26
  %add = add i32 %21, %20
  store i32 %add, ptr %cod_info, align 8, !tbaa !26
  %conv = sitofp i32 %best_over.2171186 to double
  store double %conv, ptr %best_noise, align 8, !tbaa !14
  %arrayidx82 = getelementptr inbounds double, ptr %best_noise, i64 1
  store double %best_max_noise.2172185, ptr %arrayidx82, align 8, !tbaa !14
  %arrayidx83 = getelementptr inbounds double, ptr %best_noise, i64 2
  store double %best_over_noise.2173184, ptr %arrayidx83, align 8, !tbaa !14
  %arrayidx84 = getelementptr inbounds double, ptr %best_noise, i64 3
  store double %best_tot_noise.2174183, ptr %arrayidx84, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 672, ptr nonnull %distort) #12
  call void @llvm.lifetime.end.p0(i64 672, ptr nonnull %xfsf_w) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tot_noise) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %over_noise) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_noise) #12
  call void @llvm.lifetime.end.p0(i64 4608, ptr nonnull %xrpow) #12
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %l3_enc_w) #12
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %save_cod_info)
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %scalefac_w) #12
  ret void
}

declare void @best_scalefac_store(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @best_huffman_divide(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ResvAdjust(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ResvFrameEnd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable
define dso_local void @set_masking_lower(i32 noundef %VBR_q, i32 noundef %nbits) local_unnamed_addr #5 {
entry:
  %mul = shl nsw i32 %VBR_q, 1
  %add = add nsw i32 %mul, -6
  %conv = sitofp i32 %add to float
  %sub = add nsw i32 %nbits, -125
  %conv1 = sitofp i32 %sub to double
  %div = fmul fast double %conv1, 0x3F3B98174853A507
  %conv2 = fptrunc double %div to float
  %0 = fmul fast float %conv2, 4.000000e+00
  %mul4 = fadd fast float %conv, -4.000000e+00
  %add5 = fadd fast float %mul4, %0
  %div6 = fmul fast float %add5, 0x3FB99999A0000000
  %conv7 = fpext float %div6 to double
  %mul11 = fmul fast double %conv7, 0x400A934F0979A371
  %exp2 = tail call fast double @llvm.exp2.f64(double %mul11)
  %conv8 = fptrunc double %exp2 to float
  store float %conv8, ptr @masking_lower, align 4, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @VBR_iteration_loop(ptr noundef %gfp, ptr nocapture noundef readonly %pe, ptr nocapture noundef readonly %ms_ener_ratio, ptr noundef %xr, ptr noundef %ratio, ptr noundef %l3_side, ptr noundef %l3_enc, ptr noundef %scalefac) local_unnamed_addr #0 {
entry:
  %bst_cod_info = alloca %struct.gr_info, align 8
  %clean_cod_info = alloca %struct.gr_info, align 8
  %bst_scalefac = alloca %struct.III_scalefac_t, align 4
  %bst_l3_enc = alloca [576 x i32], align 16
  %l3_xmin = alloca %struct.III_psy_xmin, align 8
  %save_bits = alloca [2 x [2 x i32]], align 16
  %noise = alloca [4 x double], align 16
  %frameBits = alloca [15 x i32], align 16
  %bitsPerFrame = alloca i32, align 4
  %mean_bits = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %bst_cod_info)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %clean_cod_info)
  call void @llvm.lifetime.start.p0(i64 244, ptr nonnull %bst_scalefac)
  call void @llvm.lifetime.start.p0(i64 2304, ptr nonnull %bst_l3_enc)
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %l3_xmin) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %save_bits) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %noise) #12
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %frameBits) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitsPerFrame) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mean_bits) #12
  tail call void @iteration_init(ptr noundef %gfp, ptr noundef %l3_side, ptr noundef %l3_enc) #12
  %bitrate_index = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 50
  %VBR_max_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 48
  store i32 1, ptr %bitrate_index, align 4, !tbaa !50
  %0 = load i32, ptr %VBR_max_bitrate, align 4, !tbaa !51
  %cmp.not780 = icmp slt i32 %0, 1
  br i1 %cmp.not780, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %VBR_min_bitrate = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 47
  %stereo = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %min_mean_bits.0781 = phi i32 [ 0, %for.body.lr.ph ], [ %min_mean_bits.1, %if.end ]
  call void @getframebits(ptr noundef nonnull %gfp, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #12
  %1 = load i32, ptr %bitrate_index, align 4, !tbaa !50
  %2 = load i32, ptr %VBR_min_bitrate, align 8, !tbaa !52
  %cmp3 = icmp eq i32 %1, %2
  %3 = load i32, ptr %mean_bits, align 4, !tbaa !5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %stereo, align 4, !tbaa !16
  %div = sdiv i32 %3, %4
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %min_mean_bits.1 = phi i32 [ %div, %if.then ], [ %min_mean_bits.0781, %for.body ]
  %5 = load i32, ptr %bitsPerFrame, align 4, !tbaa !5
  %call = call i32 @ResvFrameBegin(ptr noundef nonnull %gfp, ptr noundef %l3_side, i32 noundef %3, i32 noundef %5) #12
  %6 = load i32, ptr %bitrate_index, align 4, !tbaa !50
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %bitrate_index, align 4, !tbaa !50
  %7 = load i32, ptr %VBR_max_bitrate, align 4, !tbaa !51
  %cmp.not.not = icmp slt i32 %6, %7
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !53

for.end:                                          ; preds = %if.end, %entry
  %min_mean_bits.0.lcssa = phi i32 [ 0, %entry ], [ %min_mean_bits.1, %if.end ]
  %.lcssa779 = phi i32 [ %0, %entry ], [ %7, %if.end ]
  store i32 %.lcssa779, ptr %bitrate_index, align 4, !tbaa !50
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %8 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %cmp9790 = icmp sgt i32 %8, 0
  br i1 %cmp9790, label %for.body10.lr.ph, label %cond.false279

for.body10.lr.ph:                                 ; preds = %for.end
  %stereo11 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %9 = call i32 @llvm.smax.i32(i32 %min_mean_bits.0.lcssa, i32 125)
  %VBR_q = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %arrayidx175 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 3
  %arrayidx176 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 2
  %arrayidx177 = getelementptr inbounds [4 x double], ptr %noise, i64 0, i64 1
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.end226
  %indvars.iv851 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next852, %for.end226 ]
  %analog_silence.0795 = phi i32 [ 0, %for.body10.lr.ph ], [ %analog_silence.1.lcssa, %for.end226 ]
  %used_bits.0791 = phi i32 [ 0, %for.body10.lr.ph ], [ %used_bits.1.lcssa, %for.end226 ]
  %10 = load i32, ptr %stereo11, align 4, !tbaa !16
  %11 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %11, 0
  %spec.store.select = select i1 %tobool.not, i32 %10, i32 1
  %12 = load i32, ptr @convert_mdct, align 4, !tbaa !5
  %tobool14.not = icmp eq i32 %12, 0
  br i1 %tobool14.not, label %if.end21, label %if.then15

if.then15:                                        ; preds = %for.body10
  %arrayidx17 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv851
  call void @ms_convert(ptr noundef %arrayidx17, ptr noundef %arrayidx17) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.body10
  %cmp23783 = icmp sgt i32 %spec.store.select, 0
  br i1 %cmp23783, label %for.body24.lr.ph, label %for.end226

for.body24.lr.ph:                                 ; preds = %if.end21
  %arrayidx27 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv851
  %wide.trip.count = zext i32 %spec.store.select to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.lr.ph, %cleanup221
  %indvars.iv = phi i64 [ 0, %for.body24.lr.ph ], [ %indvars.iv.next, %cleanup221 ]
  %analog_silence.1787 = phi i32 [ %analog_silence.0795, %for.body24.lr.ph ], [ %analog_silence.3, %cleanup221 ]
  %used_bits.1784 = phi i32 [ %used_bits.0791, %for.body24.lr.ph ], [ %used_bits.2, %cleanup221 ]
  %arrayidx30 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx27, i64 0, i64 %indvars.iv
  %arrayidx35 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv851, i64 %indvars.iv
  %call37 = call i32 @init_outer_loop(ptr noundef %gfp, ptr noundef %arrayidx35, ptr noundef nonnull %arrayidx30)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end53

if.then39:                                        ; preds = %for.body24
  %arrayidx43 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv851, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %arrayidx43, i8 0, i64 244, i1 false)
  %arrayidx47 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv851, i64 %indvars.iv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx47, i8 0, i64 2304, i1 false)
  %arrayidx52 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv851, i64 %indvars.iv
  store i32 0, ptr %arrayidx52, align 4, !tbaa !5
  br label %cleanup221

if.end53:                                         ; preds = %for.body24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %clean_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %arrayidx30, i64 120, i1 false)
  %13 = load i32, ptr %VBR_q, align 4, !tbaa !54
  call void @set_masking_lower(i32 noundef %13, i32 noundef 2500)
  %arrayidx62 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %ratio, i64 %indvars.iv851, i64 %indvars.iv
  %call63 = call i32 @calc_xmin(ptr noundef %gfp, ptr noundef %arrayidx35, ptr noundef %arrayidx62, ptr noundef nonnull %arrayidx30, ptr noundef nonnull %l3_xmin) #12
  %cmp64 = icmp eq i32 %call63, 0
  %spec.select = select i1 %cmp64, i32 125, i32 %9
  %spec.select776 = select i1 %cmp64, i32 1, i32 %analog_silence.1787
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx30, i64 0, i32 6
  %14 = load i32, ptr %block_type, align 8, !tbaa !18
  %cmp67 = icmp eq i32 %14, 2
  br i1 %cmp67, label %if.then68, label %if.end89

if.then68:                                        ; preds = %if.end53
  %arrayidx72 = getelementptr inbounds [2 x double], ptr %pe, i64 %indvars.iv851, i64 %indvars.iv
  %15 = load double, ptr %arrayidx72, align 8, !tbaa !14
  %cmp73 = fcmp fast olt double %15, 1.100000e+03
  br i1 %cmp73, label %cond.end80, label %cond.false75

cond.false75:                                     ; preds = %if.then68
  br label %cond.end80

cond.end80:                                       ; preds = %if.then68, %cond.false75
  %cond81 = phi fast double [ %15, %cond.false75 ], [ 1.100000e+03, %if.then68 ]
  %conv = sitofp i32 %spec.select to double
  %add = fadd fast double %cond81, %conv
  %conv82 = fptosi double %add to i32
  %16 = call i32 @llvm.smin.i32(i32 %conv82, i32 1800)
  br label %if.end89

if.end89:                                         ; preds = %cond.end80, %if.end53
  %min_bits.1 = phi i32 [ %16, %cond.end80 ], [ %spec.select, %if.end53 ]
  %17 = load i32, ptr %VBR_max_bitrate, align 4, !tbaa !51
  %idxprom91 = sext i32 %17 to i64
  %arrayidx92 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom91
  %18 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %19 = load i32, ptr %stereo11, align 4, !tbaa !16
  %20 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %mul = mul nsw i32 %20, %19
  %div95 = sdiv i32 %18, %mul
  %21 = call i32 @llvm.smin.i32(i32 %div95, i32 1300)
  %22 = add nsw i32 %21, 1200
  %23 = call i32 @llvm.smax.i32(i32 %22, i32 %min_bits.1)
  %sub = sub nsw i32 %23, %min_bits.1
  %div109 = sdiv i32 %sub, 4
  %add110 = add nsw i32 %23, %min_bits.1
  %div111 = sdiv i32 %add110, 2
  %add112 = add nsw i32 %23, 1
  %arrayidx161 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv851, i64 %indvars.iv
  %arrayidx166 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv851, i64 %indvars.iv
  %24 = trunc i64 %indvars.iv to i32
  br label %do.body

do.body:                                          ; preds = %cleanup, %if.end89
  %this_bits.0 = phi i32 [ %div111, %if.end89 ], [ %this_bits.2, %cleanup ]
  %dbits.0 = phi i32 [ %div109, %if.end89 ], [ %dbits.1, %cleanup ]
  %real_bits.0 = phi i32 [ %add112, %if.end89 ], [ %real_bits.2, %cleanup ]
  %cmp113.not = icmp slt i32 %this_bits.0, %real_bits.0
  br i1 %cmp113.not, label %cond.end138, label %if.then115

if.then115:                                       ; preds = %do.body
  %sub116 = sub nsw i32 %this_bits.0, %dbits.0
  br label %cleanup

cond.end138:                                      ; preds = %do.body
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %arrayidx30, ptr noundef nonnull align 8 dereferenceable(120) %clean_cod_info, i64 120, i1 false)
  %25 = load i32, ptr %VBR_q, align 4, !tbaa !54
  call void @set_masking_lower(i32 noundef %25, i32 noundef %this_bits.0)
  %call151 = call i32 @calc_xmin(ptr noundef %gfp, ptr noundef %arrayidx35, ptr noundef %arrayidx62, ptr noundef nonnull %arrayidx30, ptr noundef nonnull %l3_xmin) #12
  call void @outer_loop(ptr noundef %gfp, ptr noundef %arrayidx35, i32 noundef %this_bits.0, ptr noundef nonnull %noise, ptr noundef nonnull %l3_xmin, ptr noundef %arrayidx161, ptr noundef %arrayidx166, ptr noundef nonnull %arrayidx30, ptr undef, i32 noundef %24)
  %26 = load double, ptr %noise, align 16, !tbaa !14
  %conv174 = fptosi double %26 to i32
  %27 = load double, ptr %arrayidx175, align 8, !tbaa !14
  %28 = load double, ptr %arrayidx176, align 16, !tbaa !14
  %29 = load double, ptr %arrayidx177, align 8, !tbaa !14
  %call178 = call i32 @VBR_compare(i32 noundef 0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef %conv174, double noundef %27, double noundef %28, double noundef %29)
  %tobool179.not = icmp eq i32 %call178, 0
  br i1 %tobool179.not, label %if.else, label %if.then180

if.then180:                                       ; preds = %cond.end138
  %30 = load i32, ptr %arrayidx30, align 8, !tbaa !26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %bst_scalefac, ptr noundef nonnull align 4 dereferenceable(244) %arrayidx166, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2304) %bst_l3_enc, ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx161, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %bst_cod_info, ptr noundef nonnull align 8 dereferenceable(120) %arrayidx30, i64 120, i1 false)
  %sub191 = sub nsw i32 %this_bits.0, %dbits.0
  br label %cleanup

if.else:                                          ; preds = %cond.end138
  %add192 = add nsw i32 %dbits.0, %this_bits.0
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %if.else, %if.then115
  %this_bits.2 = phi i32 [ %sub116, %if.then115 ], [ %sub191, %if.then180 ], [ %add192, %if.else ]
  %real_bits.2 = phi i32 [ %real_bits.0, %if.then115 ], [ %30, %if.then180 ], [ %real_bits.0, %if.else ]
  %dbits.1 = sdiv i32 %dbits.0, 2
  %cmp195 = icmp sgt i32 %dbits.0, 21
  br i1 %cmp195, label %do.body, label %do.end, !llvm.loop !55

do.end:                                           ; preds = %cleanup
  %cmp197.not = icmp sgt i32 %real_bits.2, %23
  br i1 %cmp197.not, label %if.end210, label %if.then199

if.then199:                                       ; preds = %do.end
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %arrayidx30, ptr noundef nonnull align 8 dereferenceable(120) %bst_cod_info, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %arrayidx166, ptr noundef nonnull align 4 dereferenceable(244) %bst_scalefac, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx161, ptr noundef nonnull align 16 dereferenceable(2304) %bst_l3_enc, i64 2304, i1 false)
  br label %if.end210

if.end210:                                        ; preds = %if.then199, %do.end
  %31 = load i32, ptr %arrayidx30, align 8, !tbaa !26
  %arrayidx215 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv851, i64 %indvars.iv
  store i32 %31, ptr %arrayidx215, align 4, !tbaa !5
  %add220 = add nsw i32 %31, %used_bits.1784
  br label %cleanup221

cleanup221:                                       ; preds = %if.end210, %if.then39
  %used_bits.2 = phi i32 [ %add220, %if.end210 ], [ %used_bits.1784, %if.then39 ]
  %analog_silence.3 = phi i32 [ %spec.select776, %if.end210 ], [ 1, %if.then39 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end226, label %for.body24, !llvm.loop !56

for.end226:                                       ; preds = %cleanup221, %if.end21
  %used_bits.1.lcssa = phi i32 [ %used_bits.0791, %if.end21 ], [ %used_bits.2, %cleanup221 ]
  %analog_silence.1.lcssa = phi i32 [ %analog_silence.0795, %if.end21 ], [ %analog_silence.3, %cleanup221 ]
  %indvars.iv.next852 = add nuw nsw i64 %indvars.iv851, 1
  %32 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %33 = sext i32 %32 to i64
  %cmp9 = icmp slt i64 %indvars.iv.next852, %33
  br i1 %cmp9, label %for.body10, label %for.end229, !llvm.loop !57

for.end229:                                       ; preds = %for.end226
  %34 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %tobool230.not = icmp ne i32 %34, 0
  %cmp234800 = icmp sgt i32 %32, 0
  %or.cond840 = select i1 %tobool230.not, i1 %cmp234800, i1 false
  br i1 %or.cond840, label %for.body236.preheader, label %if.end276

for.body236.preheader:                            ; preds = %for.end229
  %wide.trip.count857 = zext i32 %32 to i64
  br label %for.body236

for.body236:                                      ; preds = %for.body236.preheader, %for.body236
  %indvars.iv854 = phi i64 [ 0, %for.body236.preheader ], [ %indvars.iv.next855, %for.body236 ]
  %used_bits.3801 = phi i32 [ %used_bits.1.lcssa, %for.body236.preheader ], [ %add272, %for.body236 ]
  %arrayidx238 = getelementptr inbounds double, ptr %ms_ener_ratio, i64 %indvars.iv854
  %35 = load double, ptr %arrayidx238, align 8, !tbaa !14
  %36 = fmul fast double %35, 6.600000e-01
  %37 = fadd fast double %36, 0x3FE570A3D70A3D70
  %38 = fsub fast double 1.330000e+00, %36
  %arrayidx246 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv854
  %39 = load i32, ptr %arrayidx246, align 8, !tbaa !5
  %conv248 = sitofp i32 %39 to double
  %40 = fmul fast double %37, %conv248
  %mul249 = fdiv fast double %40, %38
  %conv250 = fptosi double %mul249 to i32
  %arrayidx253 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv854, i64 1
  %41 = call i32 @llvm.smax.i32(i32 %conv250, i32 125)
  store i32 %41, ptr %arrayidx253, align 4, !tbaa !5
  %add272 = add nsw i32 %41, %used_bits.3801
  %indvars.iv.next855 = add nuw nsw i64 %indvars.iv854, 1
  %exitcond858.not = icmp eq i64 %indvars.iv.next855, %wide.trip.count857
  br i1 %exitcond858.not, label %if.end276, label %for.body236, !llvm.loop !58

if.end276:                                        ; preds = %for.body236, %for.end229
  %used_bits.4 = phi i32 [ %used_bits.1.lcssa, %for.end229 ], [ %add272, %for.body236 ]
  %tobool277.not = icmp eq i32 %analog_silence.1.lcssa, 0
  br i1 %tobool277.not, label %cond.false279, label %cond.end281

cond.false279:                                    ; preds = %for.end, %if.end276
  %used_bits.4918 = phi i32 [ %used_bits.4, %if.end276 ], [ 0, %for.end ]
  %VBR_min_bitrate280 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 47
  %42 = load i32, ptr %VBR_min_bitrate280, align 8, !tbaa !52
  br label %cond.end281

cond.end281:                                      ; preds = %if.end276, %cond.false279
  %used_bits.4917 = phi i32 [ %used_bits.4918, %cond.false279 ], [ %used_bits.4, %if.end276 ]
  %cond282 = phi i32 [ %42, %cond.false279 ], [ 1, %if.end276 ]
  %43 = load i32, ptr %VBR_max_bitrate, align 4, !tbaa !51
  %cmp287804 = icmp slt i32 %cond282, %43
  br i1 %cmp287804, label %for.body289.preheader, label %for.end300

for.body289.preheader:                            ; preds = %cond.end281
  %44 = sext i32 %cond282 to i64
  br label %for.body289

for.body289:                                      ; preds = %for.body289.preheader, %for.inc297
  %indvars.iv859 = phi i64 [ %44, %for.body289.preheader ], [ %indvars.iv.next860, %for.inc297 ]
  %arrayidx292 = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %indvars.iv859
  %45 = load i32, ptr %arrayidx292, align 4, !tbaa !5
  %cmp293.not = icmp sgt i32 %used_bits.4917, %45
  br i1 %cmp293.not, label %for.inc297, label %for.end300.loopexit.split.loop.exit

for.inc297:                                       ; preds = %for.body289
  %indvars.iv.next860 = add nsw i64 %indvars.iv859, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next860 to i32
  %exitcond862.not = icmp eq i32 %43, %lftr.wideiv
  br i1 %exitcond862.not, label %for.end300, label %for.body289, !llvm.loop !59

for.end300.loopexit.split.loop.exit:              ; preds = %for.body289
  %46 = trunc i64 %indvars.iv859 to i32
  br label %for.end300

for.end300:                                       ; preds = %for.inc297, %for.end300.loopexit.split.loop.exit, %cond.end281
  %storemerge775.lcssa = phi i32 [ %cond282, %cond.end281 ], [ %46, %for.end300.loopexit.split.loop.exit ], [ %43, %for.inc297 ]
  store i32 %storemerge775.lcssa, ptr %bitrate_index, align 4, !tbaa !50
  call void @getframebits(ptr noundef nonnull %gfp, ptr noundef nonnull %bitsPerFrame, ptr noundef nonnull %mean_bits) #12
  %47 = load i32, ptr %mean_bits, align 4, !tbaa !5
  %48 = load i32, ptr %bitsPerFrame, align 4, !tbaa !5
  %call301 = call i32 @ResvFrameBegin(ptr noundef nonnull %gfp, ptr noundef %l3_side, i32 noundef %47, i32 noundef %48) #12
  %cmp302 = icmp sgt i32 %used_bits.4917, %call301
  %49 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %cmp307810 = icmp sgt i32 %49, 0
  br i1 %cmp302, label %for.cond305.preheader, label %if.end355

for.cond305.preheader:                            ; preds = %for.end300
  br i1 %cmp307810, label %for.cond310.preheader.lr.ph, label %for.end515

for.cond310.preheader.lr.ph:                      ; preds = %for.cond305.preheader
  %stereo311 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %50 = load i32, ptr %stereo311, align 4, !tbaa !16
  %cmp312808 = icmp sgt i32 %50, 0
  br i1 %cmp312808, label %for.cond310.preheader.lr.ph.split.us, label %for.cond361.preheader.lr.ph

for.cond310.preheader.lr.ph.split.us:             ; preds = %for.cond310.preheader.lr.ph
  %51 = load i32, ptr %bitrate_index, align 4, !tbaa !50
  %idxprom320.us = sext i32 %51 to i64
  %arrayidx321.us = getelementptr inbounds [15 x i32], ptr %frameBits, i64 0, i64 %idxprom320.us
  %52 = load i32, ptr %arrayidx321.us, align 4, !tbaa !5
  %wide.trip.count866 = zext i32 %50 to i64
  %53 = sext i32 %49 to i64
  br label %for.cond310.preheader.us

for.cond310.preheader.us:                         ; preds = %for.cond310.for.inc331_crit_edge.us, %for.cond310.preheader.lr.ph.split.us
  %indvars.iv868 = phi i64 [ %indvars.iv.next869, %for.cond310.for.inc331_crit_edge.us ], [ 0, %for.cond310.preheader.lr.ph.split.us ]
  br label %for.body314.us

for.body314.us:                                   ; preds = %for.cond310.preheader.us, %for.body314.us
  %indvars.iv863 = phi i64 [ 0, %for.cond310.preheader.us ], [ %indvars.iv.next864, %for.body314.us ]
  %arrayidx318.us = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv868, i64 %indvars.iv863
  %54 = load i32, ptr %arrayidx318.us, align 4, !tbaa !5
  %mul322.us = mul nsw i32 %52, %54
  %div323.us = sdiv i32 %mul322.us, %used_bits.4917
  store i32 %div323.us, ptr %arrayidx318.us, align 4, !tbaa !5
  %indvars.iv.next864 = add nuw nsw i64 %indvars.iv863, 1
  %exitcond867.not = icmp eq i64 %indvars.iv.next864, %wide.trip.count866
  br i1 %exitcond867.not, label %for.cond310.for.inc331_crit_edge.us, label %for.body314.us, !llvm.loop !60

for.cond310.for.inc331_crit_edge.us:              ; preds = %for.body314.us
  %indvars.iv.next869 = add nuw nsw i64 %indvars.iv868, 1
  %cmp307.us = icmp slt i64 %indvars.iv.next869, %53
  br i1 %cmp307.us, label %for.cond310.preheader.us, label %for.cond334.preheader, !llvm.loop !61

for.cond334.preheader:                            ; preds = %for.cond310.for.inc331_crit_edge.us
  br i1 %cmp307810, label %for.cond361.preheader.lr.ph, label %for.end515

if.end355:                                        ; preds = %for.end300
  br i1 %cmp307810, label %for.cond361.preheader.lr.ph, label %for.end515

for.cond361.preheader.lr.ph:                      ; preds = %for.cond334.preheader, %for.cond310.preheader.lr.ph, %if.end355
  %stereo362 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %VBR_q400 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 22
  %55 = load i32, ptr %stereo362, align 4, !tbaa !16
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %for.cond361.preheader, label %for.cond448.preheader.lr.ph

for.cond361.preheader:                            ; preds = %for.cond361.preheader.lr.ph, %for.inc440
  %57 = phi i32 [ %71, %for.inc440 ], [ %55, %for.cond361.preheader.lr.ph ]
  %indvars.iv885 = phi i64 [ %indvars.iv.next886, %for.inc440 ], [ 0, %for.cond361.preheader.lr.ph ]
  %cmp363822 = icmp sgt i32 %57, 0
  br i1 %cmp363822, label %for.body365.lr.ph, label %for.inc440

for.body365.lr.ph:                                ; preds = %for.cond361.preheader
  %arrayidx373 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv885
  br i1 %cmp302, label %for.body365.us, label %for.body365.preheader

for.body365.preheader:                            ; preds = %for.body365.lr.ph
  %arrayidx376 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx373, i64 0, i64 1
  %arrayidx381 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv885, i64 1
  %arrayidx404 = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv885, i64 1
  %arrayidx413 = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %ratio, i64 %indvars.iv885, i64 1
  %arrayidx428 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv885, i64 1
  %arrayidx433 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv885, i64 1
  %arrayidx389 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv885, i64 1
  %arrayidx393 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv885, i64 1
  br label %for.body365

for.body365.us:                                   ; preds = %for.body365.lr.ph, %for.inc437.us
  %indvars.iv882 = phi i64 [ %indvars.iv.next883, %for.inc437.us ], [ 0, %for.body365.lr.ph ]
  %arrayidx376.us = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx373, i64 0, i64 %indvars.iv882
  %arrayidx381.us = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv885, i64 %indvars.iv882
  %call383.us = call i32 @init_outer_loop(ptr noundef nonnull %gfp, ptr noundef %arrayidx381.us, ptr noundef nonnull %arrayidx376.us)
  %tobool384.not.us = icmp eq i32 %call383.us, 0
  br i1 %tobool384.not.us, label %if.then385.us, label %if.else399.us

if.else399.us:                                    ; preds = %for.body365.us
  %58 = load i32, ptr %VBR_q400, align 4, !tbaa !54
  %arrayidx404.us = getelementptr inbounds [2 x [2 x i32]], ptr %save_bits, i64 0, i64 %indvars.iv885, i64 %indvars.iv882
  %59 = load i32, ptr %arrayidx404.us, align 4, !tbaa !5
  call void @set_masking_lower(i32 noundef %58, i32 noundef %59)
  %arrayidx413.us = getelementptr inbounds [2 x %struct.III_psy_ratio], ptr %ratio, i64 %indvars.iv885, i64 %indvars.iv882
  %call414.us = call i32 @calc_xmin(ptr noundef nonnull %gfp, ptr noundef %arrayidx381.us, ptr noundef %arrayidx413.us, ptr noundef nonnull %arrayidx376.us, ptr noundef nonnull %l3_xmin) #12
  %arrayidx428.us = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv885, i64 %indvars.iv882
  %arrayidx433.us = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv885, i64 %indvars.iv882
  %60 = trunc i64 %indvars.iv882 to i32
  call void @outer_loop(ptr noundef nonnull %gfp, ptr noundef %arrayidx381.us, i32 noundef %59, ptr noundef nonnull %noise, ptr noundef nonnull %l3_xmin, ptr noundef %arrayidx428.us, ptr noundef %arrayidx433.us, ptr noundef nonnull %arrayidx376.us, ptr undef, i32 noundef %60)
  br label %for.inc437.us

if.then385.us:                                    ; preds = %for.body365.us
  %arrayidx389.us = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %indvars.iv885, i64 %indvars.iv882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %arrayidx389.us, i8 0, i64 244, i1 false)
  %arrayidx393.us = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv885, i64 %indvars.iv882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx393.us, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %noise, i8 0, i64 32, i1 false)
  br label %for.inc437.us

for.inc437.us:                                    ; preds = %if.then385.us, %if.else399.us
  %indvars.iv.next883 = add nuw nsw i64 %indvars.iv882, 1
  %61 = load i32, ptr %stereo362, align 4, !tbaa !16
  %62 = sext i32 %61 to i64
  %cmp363.us = icmp slt i64 %indvars.iv.next883, %62
  br i1 %cmp363.us, label %for.body365.us, label %for.inc440, !llvm.loop !62

for.cond443.preheader:                            ; preds = %for.inc440
  %cmp445831 = icmp sgt i32 %72, 0
  br i1 %cmp445831, label %for.cond448.preheader.lr.ph, label %for.end515

for.cond448.preheader.lr.ph:                      ; preds = %for.cond361.preheader.lr.ph, %for.cond443.preheader
  %63 = phi i32 [ %72, %for.cond443.preheader ], [ %49, %for.cond361.preheader.lr.ph ]
  %stereo449 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %64 = load i32, ptr %stereo449, align 4, !tbaa !16
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %for.cond448.preheader, label %for.cond481.preheader.lr.ph

for.body365:                                      ; preds = %for.body365.preheader, %for.inc437
  %indvars.iv879 = phi i64 [ 0, %for.body365.preheader ], [ %indvars.iv.next880, %for.inc437 ]
  %66 = load i32, ptr @reduce_sidechannel, align 4, !tbaa !5
  %tobool367 = icmp ne i32 %66, 0
  %cmp368 = icmp eq i64 %indvars.iv879, 1
  %or.cond = select i1 %tobool367, i1 %cmp368, i1 false
  br i1 %or.cond, label %if.then370, label %for.inc437

if.then370:                                       ; preds = %for.body365
  %call383 = call i32 @init_outer_loop(ptr noundef nonnull %gfp, ptr noundef nonnull %arrayidx381, ptr noundef nonnull %arrayidx376)
  %tobool384.not = icmp eq i32 %call383, 0
  br i1 %tobool384.not, label %if.then385, label %if.else399

if.then385:                                       ; preds = %if.then370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %arrayidx389, i8 0, i64 244, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %arrayidx393, i8 0, i64 2304, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %noise, i8 0, i64 32, i1 false)
  br label %for.inc437

if.else399:                                       ; preds = %if.then370
  %67 = load i32, ptr %VBR_q400, align 4, !tbaa !54
  %68 = load i32, ptr %arrayidx404, align 4, !tbaa !5
  call void @set_masking_lower(i32 noundef %67, i32 noundef %68)
  %call414 = call i32 @calc_xmin(ptr noundef nonnull %gfp, ptr noundef nonnull %arrayidx381, ptr noundef nonnull %arrayidx413, ptr noundef nonnull %arrayidx376, ptr noundef nonnull %l3_xmin) #12
  call void @outer_loop(ptr noundef nonnull %gfp, ptr noundef nonnull %arrayidx381, i32 noundef %68, ptr noundef nonnull %noise, ptr noundef nonnull %l3_xmin, ptr noundef nonnull %arrayidx428, ptr noundef nonnull %arrayidx433, ptr noundef nonnull %arrayidx376, ptr undef, i32 noundef 1)
  br label %for.inc437

for.inc437:                                       ; preds = %for.body365, %if.else399, %if.then385
  %indvars.iv.next880 = add nuw nsw i64 %indvars.iv879, 1
  %69 = load i32, ptr %stereo362, align 4, !tbaa !16
  %70 = sext i32 %69 to i64
  %cmp363 = icmp slt i64 %indvars.iv.next880, %70
  br i1 %cmp363, label %for.body365, label %for.inc440, !llvm.loop !62

for.inc440:                                       ; preds = %for.inc437, %for.inc437.us, %for.cond361.preheader
  %71 = phi i32 [ %57, %for.cond361.preheader ], [ %61, %for.inc437.us ], [ %69, %for.inc437 ]
  %indvars.iv.next886 = add nuw nsw i64 %indvars.iv885, 1
  %72 = load i32, ptr %mode_gr, align 8, !tbaa !9
  %73 = sext i32 %72 to i64
  %cmp358 = icmp slt i64 %indvars.iv.next886, %73
  br i1 %cmp358, label %for.cond361.preheader, label %for.cond443.preheader, !llvm.loop !63

for.cond448.preheader:                            ; preds = %for.cond448.preheader.lr.ph, %for.inc473
  %74 = phi i32 [ %85, %for.inc473 ], [ %63, %for.cond448.preheader.lr.ph ]
  %75 = phi i32 [ %86, %for.inc473 ], [ %64, %for.cond448.preheader.lr.ph ]
  %indvars.iv891 = phi i64 [ %indvars.iv.next892, %for.inc473 ], [ 0, %for.cond448.preheader.lr.ph ]
  %cmp450828 = icmp sgt i32 %75, 0
  br i1 %cmp450828, label %for.body452.lr.ph, label %for.inc473

for.body452.lr.ph:                                ; preds = %for.cond448.preheader
  %arrayidx455 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %indvars.iv891
  %76 = trunc i64 %indvars.iv891 to i32
  br label %for.body452

for.cond476.preheader:                            ; preds = %for.inc473
  %cmp478837 = icmp sgt i32 %85, 0
  br i1 %cmp478837, label %for.cond481.preheader.lr.ph, label %for.end515

for.cond481.preheader.lr.ph:                      ; preds = %for.cond448.preheader.lr.ph, %for.cond476.preheader
  %77 = phi i32 [ %85, %for.cond476.preheader ], [ %63, %for.cond448.preheader.lr.ph ]
  %stereo482 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 46
  %78 = load i32, ptr %stereo482, align 4, !tbaa !16
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %for.cond481.preheader, label %for.end515

for.body452:                                      ; preds = %for.body452.lr.ph, %if.end469
  %indvars.iv888 = phi i64 [ 0, %for.body452.lr.ph ], [ %indvars.iv.next889, %if.end469 ]
  %arrayidx458 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx455, i64 0, i64 %indvars.iv888
  %80 = trunc i64 %indvars.iv888 to i32
  call void @best_scalefac_store(ptr noundef nonnull %gfp, i32 noundef %76, i32 noundef %80, ptr noundef %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac) #12
  %block_type460 = getelementptr inbounds %struct.gr_info, ptr %arrayidx458, i64 0, i32 6
  %81 = load i32, ptr %block_type460, align 8, !tbaa !18
  %cmp461 = icmp eq i32 %81, 0
  br i1 %cmp461, label %if.then463, label %if.end469

if.then463:                                       ; preds = %for.body452
  %arrayidx467 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv891, i64 %indvars.iv888
  call void @best_huffman_divide(i32 noundef %76, i32 noundef %80, ptr noundef nonnull %arrayidx458, ptr noundef %arrayidx467) #12
  br label %if.end469

if.end469:                                        ; preds = %if.then463, %for.body452
  %82 = load i32, ptr %mean_bits, align 4, !tbaa !5
  call void @ResvAdjust(ptr noundef %gfp, ptr noundef nonnull %arrayidx458, ptr noundef nonnull %l3_side, i32 noundef %82) #12
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1
  %83 = load i32, ptr %stereo449, align 4, !tbaa !16
  %84 = sext i32 %83 to i64
  %cmp450 = icmp slt i64 %indvars.iv.next889, %84
  br i1 %cmp450, label %for.body452, label %for.inc473.loopexit, !llvm.loop !65

for.inc473.loopexit:                              ; preds = %if.end469
  %.pre905 = load i32, ptr %mode_gr, align 8, !tbaa !9
  br label %for.inc473

for.inc473:                                       ; preds = %for.inc473.loopexit, %for.cond448.preheader
  %85 = phi i32 [ %.pre905, %for.inc473.loopexit ], [ %74, %for.cond448.preheader ]
  %86 = phi i32 [ %83, %for.inc473.loopexit ], [ %75, %for.cond448.preheader ]
  %indvars.iv.next892 = add nuw nsw i64 %indvars.iv891, 1
  %87 = sext i32 %85 to i64
  %cmp445 = icmp slt i64 %indvars.iv.next892, %87
  br i1 %cmp445, label %for.cond448.preheader, label %for.cond476.preheader, !llvm.loop !66

for.cond481.preheader:                            ; preds = %for.cond481.preheader.lr.ph, %for.inc513
  %88 = phi i32 [ %94, %for.inc513 ], [ %77, %for.cond481.preheader.lr.ph ]
  %89 = phi i32 [ %95, %for.inc513 ], [ %78, %for.cond481.preheader.lr.ph ]
  %indvars.iv901 = phi i64 [ %indvars.iv.next902, %for.inc513 ], [ 0, %for.cond481.preheader.lr.ph ]
  %cmp483835 = icmp sgt i32 %89, 0
  br i1 %cmp483835, label %for.cond486.preheader, label %for.inc513

for.cond486.preheader:                            ; preds = %for.cond481.preheader, %for.inc510
  %indvars.iv898 = phi i64 [ %indvars.iv.next899, %for.inc510 ], [ 0, %for.cond481.preheader ]
  br label %for.body489

for.body489:                                      ; preds = %for.cond486.preheader, %for.inc507
  %indvars.iv894 = phi i64 [ 0, %for.cond486.preheader ], [ %indvars.iv.next895, %for.inc507 ]
  %arrayidx495 = getelementptr inbounds [2 x [576 x double]], ptr %xr, i64 %indvars.iv901, i64 %indvars.iv898, i64 %indvars.iv894
  %90 = load double, ptr %arrayidx495, align 8, !tbaa !14
  %cmp496 = fcmp fast olt double %90, 0.000000e+00
  br i1 %cmp496, label %if.then498, label %for.inc507

if.then498:                                       ; preds = %for.body489
  %arrayidx504 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %indvars.iv901, i64 %indvars.iv898, i64 %indvars.iv894
  %91 = load i32, ptr %arrayidx504, align 4, !tbaa !5
  %mul505 = sub nsw i32 0, %91
  store i32 %mul505, ptr %arrayidx504, align 4, !tbaa !5
  br label %for.inc507

for.inc507:                                       ; preds = %for.body489, %if.then498
  %indvars.iv.next895 = add nuw nsw i64 %indvars.iv894, 1
  %exitcond897.not = icmp eq i64 %indvars.iv.next895, 576
  br i1 %exitcond897.not, label %for.inc510, label %for.body489, !llvm.loop !67

for.inc510:                                       ; preds = %for.inc507
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 1
  %92 = load i32, ptr %stereo482, align 4, !tbaa !16
  %93 = sext i32 %92 to i64
  %cmp483 = icmp slt i64 %indvars.iv.next899, %93
  br i1 %cmp483, label %for.cond486.preheader, label %for.inc513.loopexit, !llvm.loop !68

for.inc513.loopexit:                              ; preds = %for.inc510
  %.pre906 = load i32, ptr %mode_gr, align 8, !tbaa !9
  br label %for.inc513

for.inc513:                                       ; preds = %for.inc513.loopexit, %for.cond481.preheader
  %94 = phi i32 [ %.pre906, %for.inc513.loopexit ], [ %88, %for.cond481.preheader ]
  %95 = phi i32 [ %92, %for.inc513.loopexit ], [ %89, %for.cond481.preheader ]
  %indvars.iv.next902 = add nuw nsw i64 %indvars.iv901, 1
  %96 = sext i32 %94 to i64
  %cmp478 = icmp slt i64 %indvars.iv.next902, %96
  br i1 %cmp478, label %for.cond481.preheader, label %for.end515, !llvm.loop !69

for.end515:                                       ; preds = %for.inc513, %for.cond305.preheader, %for.cond334.preheader, %if.end355, %for.cond443.preheader, %for.cond481.preheader.lr.ph, %for.cond476.preheader
  %97 = load i32, ptr %mean_bits, align 4, !tbaa !5
  call void @ResvFrameEnd(ptr noundef nonnull %gfp, ptr noundef %l3_side, i32 noundef %97) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mean_bits) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitsPerFrame) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %frameBits) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %noise) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %save_bits) #12
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %l3_xmin) #12
  call void @llvm.lifetime.end.p0(i64 2304, ptr nonnull %bst_l3_enc)
  call void @llvm.lifetime.end.p0(i64 244, ptr nonnull %bst_scalefac)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %clean_cod_info)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %bst_cod_info)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @VBR_compare(i32 noundef %best_over, double noundef %best_tot_noise, double noundef %best_over_noise, double noundef %best_max_noise, i32 noundef %over, double noundef %tot_noise, double noundef %over_noise, double noundef %max_noise) local_unnamed_addr #7 {
entry:
  %cmp.not = icmp sgt i32 %over, %best_over
  %cmp1 = fcmp fast ugt double %over_noise, %best_over_noise
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp1
  %cmp3 = fcmp fast ugt double %tot_noise, %best_tot_noise
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp3
  br i1 %or.cond5, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %cmp4 = fcmp fast ole double %max_noise, %best_max_noise
  %phi.cast = zext i1 %cmp4 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i32 [ 0, %entry ], [ %phi.cast, %land.rhs ]
  ret i32 %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #8

declare i32 @bin_search_StepSize2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inner_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @calc_noise1(ptr nocapture noundef readonly %xr, ptr nocapture noundef readonly %ix, ptr nocapture noundef readonly %cod_info, ptr nocapture noundef writeonly %xfsf, ptr nocapture noundef writeonly %distort, ptr nocapture noundef readonly %l3_xmin, ptr nocapture noundef readonly %scalefac, ptr nocapture noundef %over_noise, ptr nocapture noundef %tot_noise, ptr nocapture noundef %max_noise) local_unnamed_addr #9 {
entry:
  store double 0.000000e+00, ptr %over_noise, align 8, !tbaa !14
  store double 0.000000e+00, ptr %tot_noise, align 8, !tbaa !14
  store double -9.990000e+02, ptr %max_noise, align 8, !tbaa !14
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 16
  %0 = load i32, ptr %sfb_lmax, align 8, !tbaa !70
  %cmp301.not = icmp eq i32 %0, 0
  br i1 %cmp301.not, label %for.cond67.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %preflag = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 12
  %1 = load i32, ptr %preflag, align 8, !tbaa !71
  %tobool.not = icmp eq i32 %1, 0
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %2 = load i32, ptr %global_gain, align 4, !tbaa !31
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %3 = load i32, ptr %scalefac_scale, align 4, !tbaa !46
  %add5 = add i32 %3, 1
  %wide.trip.count329 = zext i32 %0 to i64
  br label %for.body

for.cond67.preheader:                             ; preds = %if.end55, %entry
  %over.0.lcssa = phi i32 [ 0, %entry ], [ %over.1, %if.end55 ]
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 17
  %4 = load i32, ptr %sfb_smax, align 4, !tbaa !72
  %cmp72311 = icmp ult i32 %4, 12
  br i1 %cmp72311, label %for.cond67.preheader.split.us, label %for.end180

for.cond67.preheader.split.us:                    ; preds = %for.cond67.preheader
  %global_gain88 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %scalefac_scale81 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %5 = load i32, ptr %scalefac_scale81, align 4, !tbaa !46
  %add82.us = add i32 %5, 1
  %6 = load i32, ptr %global_gain88, align 4, !tbaa !31
  %7 = zext i32 %4 to i64
  %.neg = mul nsw i32 %4, -3
  %arrayidx93.us.phi.trans.insert.phi.trans.insert = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %7
  %.pre.pre = load i32, ptr %arrayidx93.us.phi.trans.insert.phi.trans.insert, align 4, !tbaa !5
  br label %for.body70.us

for.body70.us:                                    ; preds = %for.cond71.for.inc178_crit_edge.us, %for.cond67.preheader.split.us
  %indvars.iv342 = phi i64 [ %indvars.iv.next343, %for.cond71.for.inc178_crit_edge.us ], [ 0, %for.cond67.preheader.split.us ]
  %over.2317.us = phi i32 [ %over.4.us, %for.cond71.for.inc178_crit_edge.us ], [ %over.0.lcssa, %for.cond67.preheader.split.us ]
  %arrayidx85.us = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 9, i64 %indvars.iv342
  %8 = load i32, ptr %arrayidx85.us, align 4, !tbaa !5
  %mul86.neg.us = mul i32 %8, -8
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1
  br label %for.body74.us

for.body74.us:                                    ; preds = %for.body70.us, %if.end166.us
  %9 = phi i32 [ %.pre.pre, %for.body70.us ], [ %12, %if.end166.us ]
  %indvars.iv338 = phi i64 [ %7, %for.body70.us ], [ %indvars.iv.next339, %if.end166.us ]
  %over.3313.us = phi i32 [ %over.2317.us, %for.body70.us ], [ %over.4.us, %if.end166.us ]
  %arrayidx80.us = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %indvars.iv338, i64 %indvars.iv342
  %10 = load i32, ptr %arrayidx80.us, align 4, !tbaa !5
  %shl83.us = shl i32 %10, %add82.us
  %add87.neg.us = sub i32 %mul86.neg.us, %shl83.us
  %sub89.us = add i32 %add87.neg.us, %6
  %idxprom90.us = sext i32 %sub89.us to i64
  %arrayidx91.us = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom90.us
  %11 = load double, ptr %arrayidx91.us, align 8, !tbaa !14
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1
  %arrayidx96.us = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv.next339
  %12 = load i32, ptr %arrayidx96.us, align 4, !tbaa !5
  %sub97.us = sub nsw i32 %12, %9
  %conv98.us = sitofp i32 %sub97.us to double
  %cmp100307.us = icmp sgt i32 %12, %9
  br i1 %cmp100307.us, label %for.body102.us.preheader, label %for.end120.us

for.body102.us.preheader:                         ; preds = %for.body74.us
  %13 = sext i32 %9 to i64
  %wide.trip.count336 = sext i32 %12 to i64
  br label %for.body102.us

for.end120.us:                                    ; preds = %for.body102.us, %for.body74.us
  %sum.1.lcssa.us = phi double [ 0.000000e+00, %for.body74.us ], [ %add117.us, %for.body102.us ]
  %div121.us = fdiv fast double %sum.1.lcssa.us, %conv98.us
  %arrayidx126.us = getelementptr inbounds [21 x double], ptr %xfsf, i64 %indvars.iv.next343, i64 %indvars.iv338
  store double %div121.us, ptr %arrayidx126.us, align 8, !tbaa !14
  %arrayidx136.us = getelementptr inbounds %struct.III_psy_xmin, ptr %l3_xmin, i64 0, i32 1, i64 %indvars.iv338, i64 %indvars.iv342
  %14 = load double, ptr %arrayidx136.us, align 8, !tbaa !14
  %div137.us = fdiv fast double %div121.us, %14
  %cmp138.us = fcmp fast olt double %div137.us, 1.000000e-03
  br i1 %cmp138.us, label %cond.end153.us, label %cond.false141.us

cond.false141.us:                                 ; preds = %for.end120.us
  br label %cond.end153.us

cond.end153.us:                                   ; preds = %cond.false141.us, %for.end120.us
  %cond154.us = phi fast double [ %div137.us, %cond.false141.us ], [ 1.000000e-03, %for.end120.us ]
  %15 = tail call fast double @llvm.log10.f64(double %cond154.us)
  %mul155.us = fmul fast double %15, 1.000000e+01
  %arrayidx160.us = getelementptr inbounds [21 x double], ptr %distort, i64 %indvars.iv.next343, i64 %indvars.iv338
  store double %mul155.us, ptr %arrayidx160.us, align 8, !tbaa !14
  %cmp161.us = fcmp fast ogt double %mul155.us, 0.000000e+00
  br i1 %cmp161.us, label %if.then163.us, label %if.end166.us

if.then163.us:                                    ; preds = %cond.end153.us
  %inc164.us = add nsw i32 %over.3313.us, 1
  %16 = load double, ptr %over_noise, align 8, !tbaa !14
  %add165.us = fadd fast double %16, %mul155.us
  store double %add165.us, ptr %over_noise, align 8, !tbaa !14
  br label %if.end166.us

if.end166.us:                                     ; preds = %if.then163.us, %cond.end153.us
  %over.4.us = phi i32 [ %inc164.us, %if.then163.us ], [ %over.3313.us, %cond.end153.us ]
  %17 = load double, ptr %tot_noise, align 8, !tbaa !14
  %add167.us = fadd fast double %17, %mul155.us
  store double %add167.us, ptr %tot_noise, align 8, !tbaa !14
  %18 = load double, ptr %max_noise, align 8, !tbaa !14
  %19 = tail call fast double @llvm.maxnum.f64(double %18, double %mul155.us)
  store double %19, ptr %max_noise, align 8, !tbaa !14
  %exitcond341.not = icmp eq i64 %indvars.iv.next339, 12
  br i1 %exitcond341.not, label %for.cond71.for.inc178_crit_edge.us, label %for.body74.us, !llvm.loop !73

for.body102.us:                                   ; preds = %for.body102.us.preheader, %for.body102.us
  %indvars.iv331 = phi i64 [ %13, %for.body102.us.preheader ], [ %indvars.iv.next332, %for.body102.us ]
  %sum.1308.us = phi double [ 0.000000e+00, %for.body102.us.preheader ], [ %add117.us, %for.body102.us ]
  %20 = mul nsw i64 %indvars.iv331, 3
  %21 = add nsw i64 %20, %indvars.iv342
  %arrayidx107.us = getelementptr inbounds double, ptr %xr, i64 %21
  %22 = load double, ptr %arrayidx107.us, align 8, !tbaa !14
  %23 = tail call fast double @llvm.fabs.f64(double %22)
  %arrayidx111.us = getelementptr inbounds i32, ptr %ix, i64 %21
  %24 = load i32, ptr %arrayidx111.us, align 4, !tbaa !5
  %idxprom112.us = sext i32 %24 to i64
  %arrayidx113.us = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom112.us
  %25 = load double, ptr %arrayidx113.us, align 8, !tbaa !14
  %mul114.us = fmul fast double %25, %11
  %sub115.us = fsub fast double %23, %mul114.us
  %mul116.us = fmul fast double %sub115.us, %sub115.us
  %add117.us = fadd fast double %mul116.us, %sum.1308.us
  %indvars.iv.next332 = add nsw i64 %indvars.iv331, 1
  %exitcond337.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count336
  br i1 %exitcond337.not, label %for.end120.us, label %for.body102.us, !llvm.loop !74

for.cond71.for.inc178_crit_edge.us:               ; preds = %if.end166.us
  %exitcond345.not = icmp eq i64 %indvars.iv.next343, 3
  br i1 %exitcond345.not, label %for.end180.loopexit, label %for.body70.us, !llvm.loop !75

for.body:                                         ; preds = %for.body.lr.ph, %if.end55
  %indvars.iv324 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next325, %if.end55 ]
  %over.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %over.1, %if.end55 ]
  %arrayidx = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv324
  %26 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx4 = getelementptr inbounds [21 x i32], ptr @pretab, i64 0, i64 %indvars.iv324
  %27 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %add = add nsw i32 %27, %26
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %s.0 = phi i32 [ %add, %if.then ], [ %26, %for.body ]
  %shl = shl i32 %s.0, %add5
  %sub = sub i32 %2, %shl
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds [256 x double], ptr @pow20, i64 0, i64 %idxprom6
  %28 = load double, ptr %arrayidx7, align 8, !tbaa !14
  %arrayidx9 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv324
  %29 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1
  %arrayidx12 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next325
  %30 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %sub13 = sub nsw i32 %30, %29
  %conv = sitofp i32 %sub13 to double
  %cmp15298 = icmp sgt i32 %30, %29
  br i1 %cmp15298, label %for.body17.preheader, label %for.end

for.body17.preheader:                             ; preds = %if.end
  %31 = sext i32 %29 to i64
  %wide.trip.count = sext i32 %30 to i64
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %indvars.iv = phi i64 [ %31, %for.body17.preheader ], [ %indvars.iv.next, %for.body17 ]
  %sum.0299 = phi double [ 0.000000e+00, %for.body17.preheader ], [ %add26, %for.body17 ]
  %arrayidx19 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv
  %32 = load double, ptr %arrayidx19, align 8, !tbaa !14
  %33 = tail call fast double @llvm.fabs.f64(double %32)
  %arrayidx21 = getelementptr inbounds i32, ptr %ix, i64 %indvars.iv
  %34 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds [8208 x double], ptr @pow43, i64 0, i64 %idxprom22
  %35 = load double, ptr %arrayidx23, align 8, !tbaa !14
  %mul = fmul fast double %35, %28
  %sub24 = fsub fast double %33, %mul
  %mul25 = fmul fast double %sub24, %sub24
  %add26 = fadd fast double %mul25, %sum.0299
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body17, !llvm.loop !76

for.end:                                          ; preds = %for.body17, %if.end
  %sum.0.lcssa = phi double [ 0.000000e+00, %if.end ], [ %add26, %for.body17 ]
  %div = fdiv fast double %sum.0.lcssa, %conv
  %arrayidx29 = getelementptr inbounds [21 x double], ptr %xfsf, i64 0, i64 %indvars.iv324
  store double %div, ptr %arrayidx29, align 8, !tbaa !14
  %arrayidx35 = getelementptr inbounds [22 x double], ptr %l3_xmin, i64 0, i64 %indvars.iv324
  %36 = load double, ptr %arrayidx35, align 8, !tbaa !14
  %div36 = fdiv fast double %div, %36
  %cmp37 = fcmp fast olt double %div36, 1.000000e-03
  br i1 %cmp37, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %for.end, %cond.false
  %cond = phi fast double [ %div36, %cond.false ], [ 1.000000e-03, %for.end ]
  %37 = tail call fast double @llvm.log10.f64(double %cond)
  %mul46 = fmul fast double %37, 1.000000e+01
  %arrayidx49 = getelementptr inbounds [21 x double], ptr %distort, i64 0, i64 %indvars.iv324
  store double %mul46, ptr %arrayidx49, align 8, !tbaa !14
  %cmp50 = fcmp fast ogt double %mul46, 0.000000e+00
  br i1 %cmp50, label %if.then52, label %if.end55

if.then52:                                        ; preds = %cond.end
  %inc53 = add nsw i32 %over.0303, 1
  %38 = load double, ptr %over_noise, align 8, !tbaa !14
  %add54 = fadd fast double %38, %mul46
  store double %add54, ptr %over_noise, align 8, !tbaa !14
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %cond.end
  %over.1 = phi i32 [ %inc53, %if.then52 ], [ %over.0303, %cond.end ]
  %39 = load double, ptr %tot_noise, align 8, !tbaa !14
  %add56 = fadd fast double %39, %mul46
  store double %add56, ptr %tot_noise, align 8, !tbaa !14
  %40 = load double, ptr %max_noise, align 8, !tbaa !14
  %41 = tail call fast double @llvm.maxnum.f64(double %40, double %mul46)
  store double %41, ptr %max_noise, align 8, !tbaa !14
  %exitcond330.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count329
  br i1 %exitcond330.not, label %for.cond67.preheader, label %for.body, !llvm.loop !77

for.end180.loopexit:                              ; preds = %for.cond71.for.inc178_crit_edge.us
  %42 = add i32 %0, 36
  %43 = add i32 %.neg, %42
  br label %for.end180

for.end180:                                       ; preds = %for.cond67.preheader, %for.end180.loopexit
  %.us-phi = phi i32 [ %over.4.us, %for.end180.loopexit ], [ %over.0.lcssa, %for.cond67.preheader ]
  %.us-phi321 = phi i32 [ %43, %for.end180.loopexit ], [ %0, %for.cond67.preheader ]
  %cmp181 = icmp sgt i32 %.us-phi321, 1
  br i1 %cmp181, label %if.then183, label %if.end186

if.then183:                                       ; preds = %for.end180
  %conv184 = sitofp i32 %.us-phi321 to double
  %44 = load double, ptr %tot_noise, align 8, !tbaa !14
  %div185 = fdiv fast double %44, %conv184
  store double %div185, ptr %tot_noise, align 8, !tbaa !14
  br label %if.end186

if.end186:                                        ; preds = %if.then183, %for.end180
  %cmp187 = icmp sgt i32 %.us-phi, 1
  br i1 %cmp187, label %if.then189, label %if.end192

if.then189:                                       ; preds = %if.end186
  %conv190 = sitofp i32 %.us-phi to double
  %45 = load double, ptr %over_noise, align 8, !tbaa !14
  %div191 = fdiv fast double %45, %conv190
  store double %div191, ptr %over_noise, align 8, !tbaa !14
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.end186
  ret i32 %.us-phi
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @quant_compare(i32 noundef %experimentalX, i32 noundef %best_over, double noundef %best_tot_noise, double noundef %best_over_noise, double noundef %best_max_noise, i32 noundef %over, double noundef %tot_noise, double noundef %over_noise, double noundef %max_noise) local_unnamed_addr #7 {
entry:
  switch i32 %experimentalX, label %if.end135 [
    i32 0, label %if.then
    i32 1, label %if.then5
    i32 2, label %if.then10
    i32 3, label %if.then16
    i32 4, label %if.then26
    i32 5, label %if.then96
    i32 6, label %if.then112
  ]

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i32 %over, %best_over
  br i1 %cmp1, label %if.end135, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %cmp2 = icmp eq i32 %over, %best_over
  %cmp3 = fcmp fast ole double %over_noise, %best_over_noise
  %spec.select = select i1 %cmp2, i1 %cmp3, i1 false
  br label %if.end135

if.then5:                                         ; preds = %entry
  %cmp6 = fcmp fast olt double %max_noise, %best_max_noise
  br label %if.end135

if.then10:                                        ; preds = %entry
  %cmp11 = fcmp fast olt double %tot_noise, %best_tot_noise
  br label %if.end135

if.then16:                                        ; preds = %entry
  %cmp17 = fcmp fast olt double %tot_noise, %best_tot_noise
  br i1 %cmp17, label %land.rhs19, label %if.end135

land.rhs19:                                       ; preds = %if.then16
  %add = fadd fast double %best_max_noise, 2.000000e+00
  %cmp20 = fcmp fast ogt double %add, %max_noise
  br label %if.end135

if.then26:                                        ; preds = %entry
  %cmp27 = fcmp fast ole double %max_noise, 0.000000e+00
  %cmp29 = fcmp fast ogt double %best_max_noise, 2.000000e+00
  %or.cond = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.end135, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then26
  %cmp34 = fcmp fast olt double %best_max_noise, 0.000000e+00
  %or.cond136 = select i1 %cmp27, i1 %cmp34, i1 false
  %add37 = fadd fast double %best_max_noise, 2.000000e+00
  %cmp38 = fcmp fast ogt double %add37, %max_noise
  %or.cond204 = select i1 %or.cond136, i1 %cmp38, i1 false
  %cmp41 = fcmp fast olt double %tot_noise, %best_tot_noise
  %or.cond205 = select i1 %or.cond204, i1 %cmp41, i1 false
  br i1 %or.cond205, label %if.end135, label %lor.lhs.false43

lor.lhs.false43:                                  ; preds = %lor.lhs.false
  %cmp47 = fcmp fast ogt double %best_max_noise, 0.000000e+00
  %or.cond137 = select i1 %cmp27, i1 %cmp47, i1 false
  %or.cond206 = select i1 %or.cond137, i1 %cmp38, i1 false
  %add54 = fadd fast double %best_over_noise, %best_tot_noise
  %cmp55 = fcmp fast ogt double %add54, %tot_noise
  %or.cond207 = select i1 %or.cond206, i1 %cmp55, i1 false
  br i1 %or.cond207, label %if.end135, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false43
  %cmp58 = fcmp fast ogt double %max_noise, 0.000000e+00
  %cmp61 = fcmp fast ogt double %best_max_noise, -5.000000e-01
  %or.cond138 = select i1 %cmp58, i1 %cmp61, i1 false
  %add64 = fadd fast double %best_max_noise, 1.000000e+00
  %cmp65 = fcmp fast ogt double %add64, %max_noise
  %or.cond208 = select i1 %or.cond138, i1 %cmp65, i1 false
  %add68 = fadd fast double %over_noise, %tot_noise
  %cmp70 = fcmp fast olt double %add68, %add54
  %or.cond222 = select i1 %or.cond208, i1 %cmp70, i1 false
  br i1 %or.cond222, label %if.end135, label %lor.rhs72

lor.rhs72:                                        ; preds = %lor.lhs.false57
  %cmp76 = fcmp fast ogt double %best_max_noise, -1.000000e+00
  %or.cond139 = select i1 %cmp58, i1 %cmp76, i1 false
  %add79 = fadd fast double %best_max_noise, 1.500000e+00
  %cmp80 = fcmp fast ogt double %add79, %max_noise
  %or.cond209 = select i1 %or.cond139, i1 %cmp80, i1 false
  br i1 %or.cond209, label %land.rhs82, label %if.end135

land.rhs82:                                       ; preds = %lor.rhs72
  %factor = fmul fast double %over_noise, 2.000000e+00
  %add84 = fadd fast double %factor, %tot_noise
  %add86 = fadd fast double %add54, %best_over_noise
  %cmp87 = fcmp fast olt double %add84, %add86
  br label %if.end135

if.then96:                                        ; preds = %entry
  %cmp97 = fcmp fast olt double %over_noise, %best_over_noise
  br i1 %cmp97, label %if.end135, label %lor.rhs99

lor.rhs99:                                        ; preds = %if.then96
  %cmp100 = fcmp fast oeq double %over_noise, %best_over_noise
  br i1 %cmp100, label %land.rhs102, label %if.end135

land.rhs102:                                      ; preds = %lor.rhs99
  %cmp103 = fcmp fast olt double %tot_noise, %best_tot_noise
  br label %if.end135

if.then112:                                       ; preds = %entry
  %cmp113 = fcmp fast olt double %over_noise, %best_over_noise
  br i1 %cmp113, label %if.end135, label %lor.rhs115

lor.rhs115:                                       ; preds = %if.then112
  %cmp116 = fcmp fast oeq double %over_noise, %best_over_noise
  br i1 %cmp116, label %land.rhs118, label %if.end135

land.rhs118:                                      ; preds = %lor.rhs115
  %cmp119 = fcmp fast olt double %max_noise, %best_max_noise
  br i1 %cmp119, label %if.end135, label %lor.rhs121

lor.rhs121:                                       ; preds = %land.rhs118
  %cmp122 = fcmp fast oeq double %max_noise, %best_max_noise
  br i1 %cmp122, label %land.rhs124, label %if.end135

land.rhs124:                                      ; preds = %lor.rhs121
  %cmp125 = fcmp fast ole double %tot_noise, %best_tot_noise
  br label %if.end135

if.end135:                                        ; preds = %lor.rhs, %if.then, %entry, %lor.lhs.false57, %if.then5, %if.then10, %land.rhs19, %if.then16, %lor.lhs.false43, %lor.lhs.false, %lor.rhs72, %land.rhs82, %if.then26, %lor.rhs99, %land.rhs102, %if.then96, %if.then112, %land.rhs118, %land.rhs124, %lor.rhs121, %lor.rhs115
  %better.6.shrunk = phi i1 [ true, %if.then112 ], [ false, %lor.rhs115 ], [ true, %land.rhs118 ], [ false, %lor.rhs121 ], [ %cmp125, %land.rhs124 ], [ %cmp103, %land.rhs102 ], [ false, %lor.rhs99 ], [ true, %if.then96 ], [ true, %lor.lhs.false43 ], [ true, %lor.lhs.false ], [ %cmp87, %land.rhs82 ], [ false, %lor.rhs72 ], [ true, %if.then26 ], [ %cmp20, %land.rhs19 ], [ false, %if.then16 ], [ %cmp11, %if.then10 ], [ %cmp6, %if.then5 ], [ true, %lor.lhs.false57 ], [ false, %entry ], [ true, %if.then ], [ %spec.select, %lor.rhs ]
  %better.6 = zext i1 %better.6.shrunk to i32
  ret i32 %better.6
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @amp_scalefac_bands(ptr nocapture noundef %xrpow, ptr nocapture noundef readonly %cod_info, ptr nocapture noundef %scalefac, ptr nocapture noundef readonly %distort) local_unnamed_addr #10 {
entry:
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 13
  %0 = load i32, ptr %scalefac_scale, align 4, !tbaa !46
  %cmp = icmp eq i32 %0, 0
  %. = select i1 %cmp, double 0x3FF4BFDAD5362A27, double 0x3FFAE89F995AD3AE
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 16
  %1 = load i32, ptr %sfb_lmax, align 8, !tbaa !70
  %cmp1166.not = icmp eq i32 %1, 0
  br i1 %cmp1166.not, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %1 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %distort_thresh.0168 = phi double [ -9.000000e+02, %for.body.preheader ], [ %3, %for.body ]
  %arrayidx2 = getelementptr inbounds [21 x double], ptr %distort, i64 0, i64 %indvars.iv
  %2 = load double, ptr %arrayidx2, align 8, !tbaa !14
  %3 = tail call fast double @llvm.maxnum.f64(double %2, double %distort_thresh.0168)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !78

for.end:                                          ; preds = %for.body, %entry
  %distort_thresh.0.lcssa = phi double [ -9.000000e+02, %entry ], [ %3, %for.body ]
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 17
  %4 = load i32, ptr %sfb_smax, align 4, !tbaa !72
  %cmp8171 = icmp ult i32 %4, 12
  br i1 %cmp8171, label %for.cond10.preheader.preheader, label %for.end32

for.cond10.preheader.preheader:                   ; preds = %for.end
  %5 = zext i32 %4 to i64
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond10.preheader.preheader, %for.inc30
  %indvars.iv194 = phi i64 [ %5, %for.cond10.preheader.preheader ], [ %indvars.iv.next195, %for.inc30 ]
  %distort_thresh.1173 = phi double [ %distort_thresh.0.lcssa, %for.cond10.preheader.preheader ], [ %7, %for.inc30 ]
  br label %for.body12

for.body12:                                       ; preds = %for.cond10.preheader, %for.body12
  %indvars.iv190 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next191, %for.body12 ]
  %distort_thresh.2170 = phi double [ %distort_thresh.1173, %for.cond10.preheader ], [ %7, %for.body12 ]
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1
  %arrayidx16 = getelementptr inbounds [21 x double], ptr %distort, i64 %indvars.iv.next191, i64 %indvars.iv194
  %6 = load double, ptr %arrayidx16, align 8, !tbaa !14
  %7 = tail call fast double @llvm.maxnum.f64(double %6, double %distort_thresh.2170)
  %exitcond193.not = icmp eq i64 %indvars.iv.next191, 3
  br i1 %exitcond193.not, label %for.inc30, label %for.body12, !llvm.loop !79

for.inc30:                                        ; preds = %for.body12
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1
  %exitcond197.not = icmp eq i64 %indvars.iv.next195, 12
  br i1 %exitcond197.not, label %for.end32, label %for.cond10.preheader, !llvm.loop !80

for.end32:                                        ; preds = %for.inc30, %for.end
  %distort_thresh.1.lcssa = phi double [ %distort_thresh.0.lcssa, %for.end ], [ %7, %for.inc30 ]
  %mul = fmul fast double %distort_thresh.1.lcssa, 1.050000e+00
  %cmp33 = fcmp fast olt double %mul, 0.000000e+00
  br i1 %cmp33, label %cond.true34, label %cond.end37

cond.true34:                                      ; preds = %for.end32
  br label %cond.end37

cond.end37:                                       ; preds = %for.end32, %cond.true34
  %cond38 = phi fast double [ %mul, %cond.true34 ], [ 0.000000e+00, %for.end32 ]
  br i1 %cmp1166.not, label %for.cond70.preheader, label %for.body42

for.cond70.preheader.loopexit:                    ; preds = %for.inc67
  %.pre = load i32, ptr %sfb_smax, align 4, !tbaa !72
  br label %for.cond70.preheader

for.cond70.preheader:                             ; preds = %for.cond70.preheader.loopexit, %cond.end37
  %8 = phi i32 [ %.pre, %for.cond70.preheader.loopexit ], [ %4, %cond.end37 ]
  %9 = icmp ult i32 %8, 12
  br i1 %9, label %for.body72, label %for.end111

for.body42:                                       ; preds = %cond.end37, %for.inc67
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.pre-phi, %for.inc67 ], [ 0, %cond.end37 ]
  %arrayidx45 = getelementptr inbounds [21 x double], ptr %distort, i64 0, i64 %indvars.iv203
  %10 = load double, ptr %arrayidx45, align 8, !tbaa !14
  %cmp46 = fcmp fast ogt double %10, %cond38
  br i1 %cmp46, label %if.then47, label %for.body42.for.inc67_crit_edge

for.body42.for.inc67_crit_edge:                   ; preds = %for.body42
  %.pre227 = add nuw nsw i64 %indvars.iv203, 1
  br label %for.inc67

if.then47:                                        ; preds = %for.body42
  %arrayidx50 = getelementptr inbounds [22 x i32], ptr %scalefac, i64 0, i64 %indvars.iv203
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %inc51 = add nsw i32 %11, 1
  store i32 %inc51, ptr %arrayidx50, align 4, !tbaa !5
  %arrayidx53 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv203
  %12 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %13 = add nuw nsw i64 %indvars.iv203, 1
  %arrayidx56 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %cmp58175 = icmp slt i32 %12, %14
  br i1 %cmp58175, label %for.body59.preheader, label %for.inc67

for.body59.preheader:                             ; preds = %if.then47
  %15 = sext i32 %12 to i64
  %wide.trip.count201 = sext i32 %14 to i64
  br label %for.body59

for.body59:                                       ; preds = %for.body59.preheader, %for.body59
  %indvars.iv198 = phi i64 [ %15, %for.body59.preheader ], [ %indvars.iv.next199, %for.body59 ]
  %arrayidx61 = getelementptr inbounds double, ptr %xrpow, i64 %indvars.iv198
  %16 = load double, ptr %arrayidx61, align 8, !tbaa !14
  %mul62 = fmul fast double %16, %.
  store double %mul62, ptr %arrayidx61, align 8, !tbaa !14
  %indvars.iv.next199 = add nsw i64 %indvars.iv198, 1
  %exitcond202.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count201
  br i1 %exitcond202.not, label %for.inc67, label %for.body59, !llvm.loop !81

for.inc67:                                        ; preds = %for.body59, %for.body42.for.inc67_crit_edge, %if.then47
  %indvars.iv.next204.pre-phi = phi i64 [ %.pre227, %for.body42.for.inc67_crit_edge ], [ %13, %if.then47 ], [ %13, %for.body59 ]
  %17 = load i32, ptr %sfb_lmax, align 8, !tbaa !70
  %18 = zext i32 %17 to i64
  %cmp41 = icmp ult i64 %indvars.iv.next204.pre-phi, %18
  br i1 %cmp41, label %for.body42, label %for.cond70.preheader.loopexit, !llvm.loop !82

for.body72:                                       ; preds = %for.cond70.preheader, %for.inc109.for.body72_crit_edge
  %19 = phi i32 [ %.pre224, %for.inc109.for.body72_crit_edge ], [ %8, %for.cond70.preheader ]
  %indvars.iv219 = phi i64 [ %20, %for.inc109.for.body72_crit_edge ], [ 0, %for.cond70.preheader ]
  %cmp75182 = icmp ult i32 %19, 12
  %20 = add nuw nsw i64 %indvars.iv219, 1
  br i1 %cmp75182, label %for.body76.lr.ph, label %for.inc109

for.body76.lr.ph:                                 ; preds = %for.body72
  %21 = zext i32 %19 to i64
  br label %for.body76

for.body76:                                       ; preds = %for.body76.lr.ph, %for.inc106
  %indvars.iv214 = phi i64 [ %21, %for.body76.lr.ph ], [ %indvars.iv.next215.pre-phi, %for.inc106 ]
  %arrayidx81 = getelementptr inbounds [21 x double], ptr %distort, i64 %20, i64 %indvars.iv214
  %22 = load double, ptr %arrayidx81, align 8, !tbaa !14
  %cmp82 = fcmp fast ogt double %22, %cond38
  br i1 %cmp82, label %if.then83, label %for.body76.for.inc106_crit_edge

for.body76.for.inc106_crit_edge:                  ; preds = %for.body76
  %.pre225 = add nuw nsw i64 %indvars.iv214, 1
  br label %for.inc106

if.then83:                                        ; preds = %for.body76
  %arrayidx87 = getelementptr inbounds %struct.III_scalefac_t, ptr %scalefac, i64 0, i32 1, i64 %indvars.iv214, i64 %indvars.iv219
  %23 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %inc88 = add nsw i32 %23, 1
  store i32 %inc88, ptr %arrayidx87, align 4, !tbaa !5
  %arrayidx90 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv214
  %24 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %25 = add nuw nsw i64 %indvars.iv214, 1
  %arrayidx93 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %25
  %26 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %cmp95180 = icmp slt i32 %24, %26
  br i1 %cmp95180, label %for.body96.preheader, label %for.inc106

for.body96.preheader:                             ; preds = %if.then83
  %27 = sext i32 %24 to i64
  %wide.trip.count212 = sext i32 %26 to i64
  br label %for.body96

for.body96:                                       ; preds = %for.body96.preheader, %for.body96
  %indvars.iv207 = phi i64 [ %27, %for.body96.preheader ], [ %indvars.iv.next208, %for.body96 ]
  %28 = mul nsw i64 %indvars.iv207, 3
  %29 = add nsw i64 %28, %indvars.iv219
  %arrayidx100 = getelementptr inbounds double, ptr %xrpow, i64 %29
  %30 = load double, ptr %arrayidx100, align 8, !tbaa !14
  %mul101 = fmul fast double %30, %.
  store double %mul101, ptr %arrayidx100, align 8, !tbaa !14
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1
  %exitcond213.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count212
  br i1 %exitcond213.not, label %for.inc106, label %for.body96, !llvm.loop !83

for.inc106:                                       ; preds = %for.body96, %for.body76.for.inc106_crit_edge, %if.then83
  %indvars.iv.next215.pre-phi = phi i64 [ %.pre225, %for.body76.for.inc106_crit_edge ], [ %25, %if.then83 ], [ %25, %for.body96 ]
  %exitcond218.not = icmp eq i64 %indvars.iv.next215.pre-phi, 12
  br i1 %exitcond218.not, label %for.inc109, label %for.body76, !llvm.loop !84

for.inc109:                                       ; preds = %for.inc106, %for.body72
  %exitcond223.not = icmp eq i64 %20, 3
  br i1 %exitcond223.not, label %for.end111, label %for.inc109.for.body72_crit_edge, !llvm.loop !85

for.inc109.for.body72_crit_edge:                  ; preds = %for.inc109
  %.pre224 = load i32, ptr %sfb_smax, align 4, !tbaa !72
  br label %for.body72

for.end111:                                       ; preds = %for.inc109, %for.cond70.preheader
  ret void
}

declare i32 @loop_break(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log10.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp2.f64(double) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #11

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { argmemonly nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #10 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 200}
!10 = !{!"", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !7, i64 120, !6, i64 124, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !13, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !11, i64 168, !11, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !13, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!11 = !{!"long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!10, !6, i64 204}
!17 = !{!10, !6, i64 276}
!18 = !{!19, !6, i64 24}
!19 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !12, i64 96, !7, i64 104}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !21, !22}
!24 = distinct !{!24, !21, !22}
!25 = !{!19, !12, i64 96}
!26 = !{!19, !6, i64 0}
!27 = !{!19, !6, i64 4}
!28 = !{!19, !6, i64 8}
!29 = !{!19, !6, i64 16}
!30 = !{!19, !6, i64 76}
!31 = !{!19, !6, i64 12}
!32 = !{!19, !6, i64 72}
!33 = !{!19, !6, i64 88}
!34 = !{!10, !6, i64 84}
!35 = distinct !{!35, !21, !22}
!36 = distinct !{!36, !21, !22}
!37 = distinct !{!37, !21, !22}
!38 = distinct !{!38, !21, !22}
!39 = distinct !{!39, !21, !22}
!40 = distinct !{!40, !21, !22}
!41 = distinct !{!41, !21, !22}
!42 = !{!10, !6, i64 264}
!43 = !{!10, !6, i64 76}
!44 = !{!10, !6, i64 268}
!45 = !{!10, !6, i64 192}
!46 = !{!19, !6, i64 68}
!47 = !{!10, !6, i64 80}
!48 = distinct !{!48, !21, !22}
!49 = !{!13, !13, i64 0}
!50 = !{!10, !6, i64 220}
!51 = !{!10, !6, i64 212}
!52 = !{!10, !6, i64 208}
!53 = distinct !{!53, !21, !22}
!54 = !{!10, !6, i64 92}
!55 = distinct !{!55, !21, !22}
!56 = distinct !{!56, !21, !22}
!57 = distinct !{!57, !21, !22}
!58 = distinct !{!58, !21, !22}
!59 = distinct !{!59, !21, !22}
!60 = distinct !{!60, !21, !22}
!61 = distinct !{!61, !21, !22}
!62 = distinct !{!62, !21, !22}
!63 = distinct !{!63, !21, !22, !64}
!64 = !{!"llvm.loop.unswitch.partial.disable"}
!65 = distinct !{!65, !21, !22}
!66 = distinct !{!66, !21, !22, !64}
!67 = distinct !{!67, !21, !22}
!68 = distinct !{!68, !21, !22}
!69 = distinct !{!69, !21, !22, !64}
!70 = !{!19, !6, i64 80}
!71 = !{!19, !6, i64 64}
!72 = !{!19, !6, i64 84}
!73 = distinct !{!73, !21, !22}
!74 = distinct !{!74, !21, !22}
!75 = distinct !{!75, !21, !22}
!76 = distinct !{!76, !21, !22}
!77 = distinct !{!77, !21, !22}
!78 = distinct !{!78, !21, !22}
!79 = distinct !{!79, !21, !22}
!80 = distinct !{!80, !21, !22}
!81 = distinct !{!81, !21, !22}
!82 = distinct !{!82, !21, !22}
!83 = distinct !{!83, !21, !22}
!84 = distinct !{!84, !21, !22}
!85 = distinct !{!85, !21, !22, !64}
