; ModuleID = 'takehiro.c'
source_filename = "takehiro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }
%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon.0] }
%struct.anon.0 = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.III_scalefac_t = type { [22 x i32], [13 x [3 x i32]] }

@subdv_table = dso_local local_unnamed_addr global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 16
@ipow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@ht = external local_unnamed_addr global [34 x %struct.huffcodetab], align 16
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 16
@cb_esc_sign = internal unnamed_addr global i32 0, align 4
@cb_esc_end = internal unnamed_addr global ptr null, align 8
@scfsi_calc.scfsi_band = internal unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 11, i32 16, i32 21], align 16
@scfsi_calc.slen1_n = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 1, i32 1, i32 8, i32 2, i32 2, i32 2, i32 4, i32 4, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], align 16
@scfsi_calc.slen2_n = internal unnamed_addr constant [16 x i32] [i32 0, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 2, i32 4, i32 8, i32 4, i32 8], align 16
@scfsi_calc.slen1_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 0, i32 0, i32 0, i32 3, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4], align 16
@scfsi_calc.slen2_tab = internal unnamed_addr constant [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 2, i32 3], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @count_bits(ptr nocapture noundef readonly %gfp, ptr noundef %ix, ptr noundef %xr, ptr noundef %cod_info) local_unnamed_addr #0 {
entry:
  %bits = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #10
  store i32 0, ptr %bits, align 4, !tbaa !5
  %global_gain = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 3
  %0 = load i32, ptr %global_gain, align 4, !tbaa !9
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [256 x double], ptr @ipow20, i64 0, i64 %idxprom
  %1 = load double, ptr %arrayidx, align 8, !tbaa !12
  %div = fdiv fast double 8.206000e+03, %1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 576
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !14

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.cond ]
  %arrayidx2 = getelementptr inbounds double, ptr %xr, i64 %indvars.iv
  %2 = load double, ptr %arrayidx2, align 8, !tbaa !12
  %cmp3 = fcmp fast ogt double %2, %div
  br i1 %cmp3, label %cleanup, label %for.cond

for.end:                                          ; preds = %for.cond
  %quantization = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 60
  %3 = load i32, ptr %quantization, align 4, !tbaa !17
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %for.end
  tail call void @quantize_xrpow(ptr noundef nonnull %xr, ptr noundef %ix, ptr noundef %cod_info) #10
  br label %if.end5

if.else:                                          ; preds = %for.end
  tail call void @quantize_xrpow_ISO(ptr noundef nonnull %xr, ptr noundef %ix, ptr noundef %cod_info) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  %block_type = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 6
  %4 = load i32, ptr %block_type, align 8, !tbaa !21
  %cmp6 = icmp eq i32 %4, 2
  br i1 %cmp6, label %if.then7, label %if.else14

if.then7:                                         ; preds = %if.end5
  %add.ptr = getelementptr inbounds i32, ptr %ix, i64 36
  %call = call fastcc i32 @choose_table_short(ptr noundef %ix, ptr noundef nonnull %add.ptr, ptr noundef nonnull %bits)
  %table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8
  store i32 %call, ptr %table_select, align 8, !tbaa !5
  %add.ptr10 = getelementptr inbounds i32, ptr %ix, i64 576
  %call11 = call fastcc i32 @choose_table_short(ptr noundef nonnull %add.ptr, ptr noundef nonnull %add.ptr10, ptr noundef nonnull %bits)
  %arrayidx13 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8, i64 1
  store i32 %call11, ptr %arrayidx13, align 4, !tbaa !5
  %big_values = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 1
  store i32 288, ptr %big_values, align 4, !tbaa !22
  %.pre = load i32, ptr %bits, align 4, !tbaa !5
  br label %cleanup

if.else14:                                        ; preds = %if.end5
  %call15 = tail call fastcc i32 @count_bits_long(ptr noundef %ix, ptr noundef nonnull %cod_info)
  %count1 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 2
  %5 = load i32, ptr %count1, align 8, !tbaa !23
  %big_values16 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 1
  %6 = load i32, ptr %big_values16, align 4, !tbaa !22
  %sub = sub i32 %5, %6
  %div1745 = lshr i32 %sub, 2
  store i32 %div1745, ptr %count1, align 8, !tbaa !23
  %div2046 = lshr i32 %6, 1
  store i32 %div2046, ptr %big_values16, align 4, !tbaa !22
  br label %cleanup

cleanup:                                          ; preds = %for.body, %if.then7, %if.else14
  %retval.0 = phi i32 [ %call15, %if.else14 ], [ %.pre, %if.then7 ], [ 100000, %for.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @choose_table_short(ptr noundef %ix, ptr noundef %end, ptr nocapture noundef %s) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @ix_max(ptr noundef %ix, ptr noundef %end)
  %cmp = icmp sgt i32 %call, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100000, ptr %s, align 4, !tbaa !5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %call, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %sub = add nsw i32 %call, -1
  %0 = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %0
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call6 = tail call fastcc i32 @count_bit_short_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %1)
  switch i32 %1, label %sw.epilog [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %inc = add nuw nsw i32 %1, 1
  %call7 = tail call fastcc i32 @count_bit_noESC2(i32 noundef %inc)
  %cmp8 = icmp sgt i32 %call6, %call7
  %spec.select = select i1 %cmp8, i32 %inc, i32 %1
  %2 = tail call i32 @llvm.smin.i32(i32 %call6, i32 %call7)
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.end5, %if.end5
  %choice0.0 = phi i32 [ %1, %if.end5 ], [ %1, %if.end5 ], [ %spec.select, %sw.bb ]
  %sum0.0 = phi i32 [ %call6, %if.end5 ], [ %call6, %if.end5 ], [ %2, %sw.bb ]
  %choice1.0 = phi i32 [ %1, %if.end5 ], [ %1, %if.end5 ], [ %inc, %sw.bb ]
  %inc12 = add nuw nsw i32 %choice1.0, 1
  %call13 = tail call fastcc i32 @count_bit_noESC2(i32 noundef %inc12)
  %cmp14 = icmp sgt i32 %sum0.0, %call13
  %spec.select91 = select i1 %cmp14, i32 %inc12, i32 %choice0.0
  %3 = tail call i32 @llvm.smin.i32(i32 %sum0.0, i32 %call13)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %call18 = tail call fastcc i32 @count_bit_noESC2(i32 noundef 15)
  %cmp19 = icmp sgt i32 %call6, %call18
  %spec.select93 = select i1 %cmp19, i32 15, i32 13
  %4 = tail call i32 @llvm.smin.i32(i32 %call6, i32 %call18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb11, %if.end5
  %choice0.1 = phi i32 [ %1, %if.end5 ], [ %spec.select91, %sw.bb11 ], [ %spec.select93, %sw.bb17 ]
  %sum0.1 = phi i32 [ %call6, %if.end5 ], [ %3, %sw.bb11 ], [ %4, %sw.bb17 ]
  %5 = load i32, ptr %s, align 4, !tbaa !5
  %add22 = add nsw i32 %5, %sum0.1
  store i32 %add22, ptr %s, align 4, !tbaa !5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub23 = add nsw i32 %call, -15
  br label %for.body

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv = phi i64 [ 24, %if.else ], [ %indvars.iv.next, %for.inc ]
  %linmax = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %indvars.iv, i32 1
  %6 = load i32, ptr %linmax, align 4, !tbaa !24
  %cmp27.not = icmp slt i32 %6, %sub23
  br i1 %cmp27.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end43, label %for.body, !llvm.loop !26

for.end:                                          ; preds = %for.body
  %7 = trunc i64 %indvars.iv to i32
  %sub31 = add i32 %7, -8
  %cmp3396 = icmp slt i32 %7, 32
  br i1 %cmp3396, label %for.body34.preheader, label %for.end43

for.body34.preheader:                             ; preds = %for.end
  %8 = and i64 %indvars.iv, 4294967295
  %9 = add nsw i64 %8, -8
  %smax = call i32 @llvm.smax.i32(i32 %sub31, i32 23)
  %10 = add nuw nsw i32 %smax, 1
  br label %for.body34

for.body34:                                       ; preds = %for.body34.preheader, %for.inc41
  %indvars.iv100 = phi i64 [ %9, %for.body34.preheader ], [ %indvars.iv.next101, %for.inc41 ]
  %linmax37 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %indvars.iv100, i32 1
  %11 = load i32, ptr %linmax37, align 4, !tbaa !24
  %cmp38.not = icmp slt i32 %11, %sub23
  br i1 %cmp38.not, label %for.inc41, label %for.end43.loopexit.split.loop.exit

for.inc41:                                        ; preds = %for.body34
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1
  %cmp33 = icmp ult i64 %indvars.iv100, 23
  br i1 %cmp33, label %for.body34, label %for.end43, !llvm.loop !27

for.end43.loopexit.split.loop.exit:               ; preds = %for.body34
  %12 = trunc i64 %indvars.iv100 to i32
  br label %for.end43

for.end43:                                        ; preds = %for.inc, %for.inc41, %for.end43.loopexit.split.loop.exit, %for.end
  %choice1.1.lcssa106 = phi i32 [ %7, %for.end ], [ %7, %for.end43.loopexit.split.loop.exit ], [ %7, %for.inc41 ], [ 32, %for.inc ]
  %choice0.2.lcssa = phi i32 [ %sub31, %for.end ], [ %12, %for.end43.loopexit.split.loop.exit ], [ %10, %for.inc41 ], [ 24, %for.inc ]
  %call44 = tail call fastcc i32 @count_bit_short_ESC(ptr noundef %ix, ptr noundef %end, i32 noundef %choice0.2.lcssa, i32 noundef %choice1.1.lcssa106, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.end43, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then2 ], [ %choice0.1, %sw.epilog ], [ %call44, %for.end43 ]
  ret i32 %retval.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc i32 @count_bits_long(ptr noundef %ix, ptr nocapture noundef %gi) unnamed_addr #4 {
entry:
  %bits = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #10
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 576, %entry ]
  %cmp.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  %count1247 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 2
  store i32 0, ptr %count1247, align 8, !tbaa !23
  br label %for.end58

for.body:                                         ; preds = %for.cond
  %0 = add i64 %indvars.iv, 4294967295
  %1 = and i64 %0, 4294967295
  %arrayidx = getelementptr inbounds i32, ptr %ix, i64 %1
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -2
  %3 = and i64 %indvars.iv.next, 4294967294
  %arrayidx3 = getelementptr inbounds i32, ptr %ix, i64 %3
  %4 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %or = or i32 %4, %2
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %for.cond, label %for.end, !llvm.loop !28

for.end:                                          ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  %count1 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 2
  store i32 %5, ptr %count1, align 8, !tbaa !23
  %cmp6226 = icmp sgt i32 %5, 3
  br i1 %cmp6226, label %for.body7.lr.ph, label %for.end58

for.body7.lr.ph:                                  ; preds = %for.end
  %6 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 32, i32 3), align 16
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %cleanup
  %a1.0229 = phi i32 [ 0, %for.body7.lr.ph ], [ %add54, %cleanup ]
  %i.1228 = phi i32 [ %5, %for.body7.lr.ph ], [ %sub19, %cleanup ]
  %storemerge223227 = phi i32 [ 0, %for.body7.lr.ph ], [ %storemerge224, %cleanup ]
  %sub8 = add nsw i32 %i.1228, -1
  %7 = zext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %ix, i64 %7
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %sub11 = add nsw i32 %i.1228, -2
  %9 = zext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %ix, i64 %9
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %or14 = or i32 %10, %8
  %sub15 = add nsw i32 %i.1228, -3
  %11 = zext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %ix, i64 %11
  %12 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %or18 = or i32 %or14, %12
  %sub19 = add nsw i32 %i.1228, -4
  %13 = zext i32 %sub19 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %ix, i64 %13
  %14 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %or22 = or i32 %or18, %14
  %cmp23 = icmp ugt i32 %or22, 1
  br i1 %cmp23, label %for.end58, label %if.end25

if.end25:                                         ; preds = %for.body7
  %add = add nsw i32 %storemerge223227, %8
  %cmp32.not = icmp eq i32 %10, 0
  br i1 %cmp32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %if.end25
  %add34 = add nsw i32 %8, 2
  %inc = add nsw i32 %add, 1
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end25
  %storemerge = phi i32 [ %inc, %if.then33 ], [ %add, %if.end25 ]
  %p.0 = phi i32 [ %add34, %if.then33 ], [ %8, %if.end25 ]
  %cmp39.not = icmp eq i32 %12, 0
  br i1 %cmp39.not, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end35
  %add41 = add nsw i32 %p.0, 4
  %inc42 = add nsw i32 %storemerge, 1
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end35
  %storemerge222 = phi i32 [ %inc42, %if.then40 ], [ %storemerge, %if.end35 ]
  %p.1 = phi i32 [ %add41, %if.then40 ], [ %p.0, %if.end35 ]
  %cmp47.not = icmp eq i32 %14, 0
  br i1 %cmp47.not, label %cleanup, label %if.then48

if.then48:                                        ; preds = %if.end43
  %add49 = add nsw i32 %p.1, 8
  %inc50 = add nsw i32 %storemerge222, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.then48
  %storemerge224 = phi i32 [ %inc50, %if.then48 ], [ %storemerge222, %if.end43 ]
  %p.2 = phi i32 [ %add49, %if.then48 ], [ %p.1, %if.end43 ]
  %idxprom52 = sext i32 %p.2 to i64
  %arrayidx53 = getelementptr inbounds i8, ptr %6, i64 %idxprom52
  %15 = load i8, ptr %arrayidx53, align 1, !tbaa !29
  %conv = zext i8 %15 to i32
  %add54 = add nuw nsw i32 %a1.0229, %conv
  %cmp6 = icmp ugt i32 %i.1228, 7
  br i1 %cmp6, label %for.body7, label %for.end58, !llvm.loop !30

for.end58:                                        ; preds = %cleanup, %for.body7, %for.end.thread, %for.end
  %i.0.lcssa249 = phi i32 [ %5, %for.end ], [ 0, %for.end.thread ], [ %5, %for.body7 ], [ %5, %cleanup ]
  %16 = phi i32 [ 0, %for.end ], [ 0, %for.end.thread ], [ %storemerge224, %cleanup ], [ %storemerge223227, %for.body7 ]
  %i.1.lcssa = phi i32 [ %5, %for.end ], [ 0, %for.end.thread ], [ %sub19, %cleanup ], [ %i.1228, %for.body7 ]
  %a1.0.lcssa = phi i32 [ 0, %for.end ], [ 0, %for.end.thread ], [ %add54, %cleanup ], [ %a1.0229, %for.body7 ]
  %sub60 = sub i32 %i.0.lcssa249, %i.1.lcssa
  %cmp61 = icmp sge i32 %a1.0.lcssa, %sub60
  %17 = call i32 @llvm.smin.i32(i32 %a1.0.lcssa, i32 %sub60)
  %spec.select251 = zext i1 %cmp61 to i32
  %storemerge245 = add nsw i32 %16, %17
  store i32 %storemerge245, ptr %bits, align 4, !tbaa !5
  %18 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 14
  store i32 %spec.select251, ptr %18, align 8
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 18
  store i32 %storemerge245, ptr %count1bits, align 8, !tbaa !31
  %big_values = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 1
  store i32 %i.1.lcssa, ptr %big_values, align 4, !tbaa !22
  %cmp68 = icmp eq i32 %i.1.lcssa, 0
  br i1 %cmp68, label %cleanup137, label %if.end71

if.end71:                                         ; preds = %for.end58
  %block_type = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 6
  %19 = load i32, ptr %block_type, align 8, !tbaa !21
  %cmp72 = icmp eq i32 %19, 0
  br i1 %cmp72, label %while.cond, label %if.else117

while.cond:                                       ; preds = %if.end71, %while.cond
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %while.cond ], [ 0, %if.end71 ]
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1
  %arrayidx77 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next238
  %20 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %cmp78 = icmp slt i32 %20, %i.1.lcssa
  br i1 %cmp78, label %while.cond, label %while.end, !llvm.loop !32

while.end:                                        ; preds = %while.cond
  %idxprom76.le = and i64 %indvars.iv.next238, 4294967295
  %arrayidx81 = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom76.le
  %21 = load i32, ptr %arrayidx81, align 8, !tbaa !33
  %22 = sext i32 %21 to i64
  br label %while.cond82

while.cond82:                                     ; preds = %while.cond82, %while.end
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %while.cond82 ], [ %22, %while.end ]
  %23 = add nsw i64 %indvars.iv240, 1
  %arrayidx85 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %23
  %24 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %cmp86 = icmp sgt i32 %24, %i.1.lcssa
  %indvars.iv.next241 = add i64 %indvars.iv240, -1
  br i1 %cmp86, label %while.cond82, label %while.end89, !llvm.loop !35

while.end89:                                      ; preds = %while.cond82
  %25 = trunc i64 %indvars.iv240 to i32
  %region0_count90 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 10
  store i32 %25, ptr %region0_count90, align 8, !tbaa !36
  %region1_count = getelementptr inbounds [23 x %struct.anon], ptr @subdv_table, i64 0, i64 %idxprom76.le, i32 1
  %26 = load i32, ptr %region1_count, align 4, !tbaa !37
  %add95 = add i32 %25, 2
  br label %while.cond93

while.cond93:                                     ; preds = %while.cond93, %while.end89
  %index.1 = phi i32 [ %26, %while.end89 ], [ %dec102, %while.cond93 ]
  %add96 = add i32 %add95, %index.1
  %idxprom97 = zext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom97
  %27 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99 = icmp sgt i32 %27, %i.1.lcssa
  %dec102 = add nsw i32 %index.1, -1
  br i1 %cmp99, label %while.cond93, label %while.end103, !llvm.loop !38

while.end103:                                     ; preds = %while.cond93
  %region1_count104 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 11
  store i32 %index.1, ptr %region1_count104, align 4, !tbaa !39
  %idxprom107 = and i64 %23, 4294967295
  %arrayidx108 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %idxprom107
  %28 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %29 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %idx.ext = sext i32 %29 to i64
  %add.ptr = getelementptr inbounds i32, ptr %ix, i64 %idx.ext
  %idx.ext114 = sext i32 %i.1.lcssa to i64
  %add.ptr115 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext114
  %call = call fastcc i32 @choose_table(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr115, ptr noundef nonnull %bits)
  %arrayidx116 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8, i64 2
  store i32 %call, ptr %arrayidx116, align 8, !tbaa !5
  br label %if.end124

if.else117:                                       ; preds = %if.end71
  %region0_count118 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 10
  store i32 7, ptr %region0_count118, align 8, !tbaa !36
  %region1_count119 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 11
  store i32 13, ptr %region1_count119, align 4, !tbaa !39
  %30 = load i32, ptr getelementptr inbounds (%struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 0, i64 8), align 4, !tbaa !5
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 %i.1.lcssa)
  %.pre = sext i32 %i.1.lcssa to i64
  br label %if.end124

if.end124:                                        ; preds = %if.else117, %while.end103
  %idx.ext132.pre-phi = phi i64 [ %.pre, %if.else117 ], [ %idx.ext, %while.end103 ]
  %a1.3 = phi i32 [ %31, %if.else117 ], [ %28, %while.end103 ]
  %idx.ext125 = sext i32 %a1.3 to i64
  %add.ptr126 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext125
  %call127 = call fastcc i32 @choose_table(ptr noundef %ix, ptr noundef %add.ptr126, ptr noundef nonnull %bits)
  %table_select128 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8
  store i32 %call127, ptr %table_select128, align 8, !tbaa !5
  %add.ptr133 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext132.pre-phi
  %call134 = call fastcc i32 @choose_table(ptr noundef %add.ptr126, ptr noundef %add.ptr133, ptr noundef nonnull %bits)
  %arrayidx136 = getelementptr inbounds %struct.gr_info, ptr %gi, i64 0, i32 8, i64 1
  store i32 %call134, ptr %arrayidx136, align 4, !tbaa !5
  %retval.0.pre = load i32, ptr %bits, align 4, !tbaa !5
  br label %cleanup137

cleanup137:                                       ; preds = %for.end58, %if.end124
  %retval.0 = phi i32 [ %storemerge245, %for.end58 ], [ %retval.0.pre, %if.end124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @best_huffman_divide(i32 noundef %gr, i32 noundef %ch, ptr nocapture noundef %gi, ptr noundef %ix) local_unnamed_addr #4 {
entry:
  %r1_bits = alloca i32, align 4
  %r3_bits = alloca [25 x i32], align 16
  %r3_tbl = alloca [25 x i32], align 16
  %cod_info = alloca %struct.gr_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r1_bits) #10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %r3_bits) #10
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %r3_tbl) #10
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %cod_info) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %cod_info, ptr noundef nonnull align 8 dereferenceable(120) %gi, i64 120, i1 false)
  %big_values = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 1
  %0 = load i32, ptr %big_values, align 4, !tbaa !22
  %mul = shl i32 %0, 1
  %count1bits = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 18
  %1 = load i32, ptr %count1bits, align 8
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 15
  %2 = load i32, ptr %part2_length, align 4
  %add = add i32 %2, %1
  %idx.ext4 = sext i32 %mul to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext4
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ 2, %entry ], [ %indvars.iv.next, %if.end ]
  %arrayidx = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp sgt i32 %3, %mul
  br i1 %cmp1, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %arrayidx3 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %indvars.iv
  store i32 %add, ptr %arrayidx3, align 4, !tbaa !5
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr %ix, i64 %idx.ext
  %call = call fastcc i32 @choose_table(ptr noundef %add.ptr, ptr noundef %add.ptr5, ptr noundef nonnull %arrayidx3)
  %arrayidx9 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %indvars.iv
  store i32 %call, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %for.body12.preheader, label %for.body, !llvm.loop !40

for.end:                                          ; preds = %for.body
  %4 = trunc i64 %indvars.iv to i32
  %cmp11114 = icmp ult i32 %4, 25
  br i1 %cmp11114, label %for.body12.preheader, label %for.cond18.preheader

for.body12.preheader:                             ; preds = %if.end, %for.end
  %r0.0.lcssa136 = phi i64 [ %indvars.iv, %for.end ], [ 23, %if.end ]
  %5 = and i64 %r0.0.lcssa136, 4294967295
  br label %for.body12

for.cond18.preheader:                             ; preds = %for.body12, %for.end
  %region0_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 10
  %table_select = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8
  %arrayidx57 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8, i64 1
  %region1_count = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 11
  %arrayidx67 = getelementptr inbounds %struct.gr_info, ptr %cod_info, i64 0, i32 8, i64 2
  br label %for.body20

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv119 = phi i64 [ %5, %for.body12.preheader ], [ %indvars.iv.next120, %for.body12 ]
  %arrayidx14 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %indvars.iv119
  store i32 100000, ptr %arrayidx14, align 4, !tbaa !5
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  %exitcond122.not = icmp eq i64 %indvars.iv.next120, 25
  br i1 %exitcond122.not, label %for.cond18.preheader, label %for.body12, !llvm.loop !41

for.cond18.loopexit:                              ; preds = %for.inc68
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, 16
  br i1 %exitcond132.not, label %for.end73, label %for.body20, !llvm.loop !42

for.body20:                                       ; preds = %for.cond18.preheader, %for.cond18.loopexit
  %indvars.iv128 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next129, %for.cond18.loopexit ]
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %arrayidx23 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv.next129
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %6, %mul
  br i1 %cmp24, label %for.end73, label %if.end26

if.end26:                                         ; preds = %for.body20
  %7 = trunc i64 %indvars.iv128 to i32
  store i32 %7, ptr %region0_count, align 8, !tbaa !36
  store i32 0, ptr %r1_bits, align 4, !tbaa !5
  %idx.ext27 = sext i32 %6 to i64
  %add.ptr28 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext27
  %call29 = call fastcc i32 @choose_table(ptr noundef %ix, ptr noundef %add.ptr28, ptr noundef nonnull %r1_bits)
  store i32 %call29, ptr %table_select, align 8, !tbaa !5
  %8 = load i32, ptr %gi, align 8, !tbaa !43
  %9 = load i32, ptr %r1_bits, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %8, %9
  br i1 %cmp32, label %for.end73, label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %if.end26
  %10 = add nuw nsw i64 %indvars.iv128, 2
  br label %for.body37

for.body37:                                       ; preds = %for.cond35.preheader, %for.inc68
  %11 = phi i32 [ %8, %for.cond35.preheader ], [ %19, %for.inc68 ]
  %indvars.iv123 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next124, %for.inc68 ]
  %12 = add nuw nsw i64 %10, %indvars.iv123
  %arrayidx41 = getelementptr inbounds [25 x i32], ptr %r3_bits, i64 0, i64 %12
  %13 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %add42 = add nsw i32 %13, %9
  store i32 %add42, ptr %cod_info, align 8, !tbaa !5
  %cmp44 = icmp slt i32 %11, %add42
  br i1 %cmp44, label %for.inc68, label %if.end46

if.end46:                                         ; preds = %for.body37
  %arrayidx50 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %12
  %14 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %idx.ext53 = sext i32 %14 to i64
  %add.ptr54 = getelementptr inbounds i32, ptr %ix, i64 %idx.ext53
  %call55 = call fastcc i32 @choose_table(ptr noundef %add.ptr28, ptr noundef %add.ptr54, ptr noundef nonnull %cod_info)
  store i32 %call55, ptr %arrayidx57, align 4, !tbaa !5
  %15 = load i32, ptr %gi, align 8, !tbaa !43
  %16 = load i32, ptr %cod_info, align 8, !tbaa !5
  %cmp59 = icmp slt i32 %15, %16
  br i1 %cmp59, label %for.inc68, label %if.end61

if.end61:                                         ; preds = %if.end46
  %17 = trunc i64 %indvars.iv123 to i32
  store i32 %17, ptr %region1_count, align 4, !tbaa !39
  %arrayidx65 = getelementptr inbounds [25 x i32], ptr %r3_tbl, i64 0, i64 %12
  %18 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  store i32 %18, ptr %arrayidx67, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %gi, ptr noundef nonnull align 8 dereferenceable(120) %cod_info, i64 120, i1 false)
  %.pre = load i32, ptr %gi, align 8, !tbaa !43
  br label %for.inc68

for.inc68:                                        ; preds = %if.end46, %for.body37, %if.end61
  %19 = phi i32 [ %15, %if.end46 ], [ %11, %for.body37 ], [ %.pre, %if.end61 ]
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, 8
  br i1 %exitcond127.not, label %for.cond18.loopexit, label %for.body37, !llvm.loop !44

for.end73:                                        ; preds = %if.end26, %for.body20, %for.cond18.loopexit
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %cod_info) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %r3_tbl) #10
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %r3_bits) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r1_bits) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @choose_table(ptr noundef %ix, ptr noundef %end, ptr nocapture noundef %s) unnamed_addr #3 {
entry:
  %call = tail call fastcc i32 @ix_max(ptr noundef %ix, ptr noundef %end)
  %cmp = icmp sgt i32 %call, 8206
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 100000, ptr %s, align 4, !tbaa !5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp slt i32 %call, 16
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %cleanup, label %if.end5

if.end5:                                          ; preds = %if.then2
  %sub = add nsw i32 %call, -1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr @huf_tbl_noESC, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %call6 = tail call fastcc i32 @count_bit_noESC(ptr noundef %ix, ptr noundef %end, i32 noundef %0)
  switch i32 %0, label %sw.epilog [
    i32 7, label %sw.bb
    i32 10, label %sw.bb
    i32 2, label %sw.bb11
    i32 5, label %sw.bb11
    i32 13, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end5, %if.end5
  %inc = add nuw nsw i32 %0, 1
  %call7 = tail call fastcc i32 @count_bit_noESC2(i32 noundef %inc)
  %cmp8 = icmp sgt i32 %call6, %call7
  %spec.select = select i1 %cmp8, i32 %inc, i32 %0
  %1 = tail call i32 @llvm.smin.i32(i32 %call6, i32 %call7)
  br label %sw.bb11

sw.bb11:                                          ; preds = %sw.bb, %if.end5, %if.end5
  %choice0.0 = phi i32 [ %0, %if.end5 ], [ %0, %if.end5 ], [ %spec.select, %sw.bb ]
  %sum0.0 = phi i32 [ %call6, %if.end5 ], [ %call6, %if.end5 ], [ %1, %sw.bb ]
  %choice1.0 = phi i32 [ %0, %if.end5 ], [ %0, %if.end5 ], [ %inc, %sw.bb ]
  %inc12 = add nuw nsw i32 %choice1.0, 1
  %call13 = tail call fastcc i32 @count_bit_noESC2(i32 noundef %inc12)
  %cmp14 = icmp sgt i32 %sum0.0, %call13
  %spec.select91 = select i1 %cmp14, i32 %inc12, i32 %choice0.0
  %2 = tail call i32 @llvm.smin.i32(i32 %sum0.0, i32 %call13)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  %call18 = tail call fastcc i32 @count_bit_noESC2(i32 noundef 15)
  %cmp19 = icmp sgt i32 %call6, %call18
  %spec.select93 = select i1 %cmp19, i32 15, i32 13
  %3 = tail call i32 @llvm.smin.i32(i32 %call6, i32 %call18)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb11, %if.end5
  %choice0.1 = phi i32 [ %0, %if.end5 ], [ %spec.select91, %sw.bb11 ], [ %spec.select93, %sw.bb17 ]
  %sum0.1 = phi i32 [ %call6, %if.end5 ], [ %2, %sw.bb11 ], [ %3, %sw.bb17 ]
  %4 = load i32, ptr %s, align 4, !tbaa !5
  %add22 = add nsw i32 %4, %sum0.1
  store i32 %add22, ptr %s, align 4, !tbaa !5
  br label %cleanup

if.else:                                          ; preds = %if.end
  %sub23 = add nsw i32 %call, -15
  br label %for.body

for.body:                                         ; preds = %if.else, %for.inc
  %indvars.iv = phi i64 [ 24, %if.else ], [ %indvars.iv.next, %for.inc ]
  %linmax = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %indvars.iv, i32 1
  %5 = load i32, ptr %linmax, align 4, !tbaa !24
  %cmp27.not = icmp slt i32 %5, %sub23
  br i1 %cmp27.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end43, label %for.body, !llvm.loop !45

for.end:                                          ; preds = %for.body
  %6 = trunc i64 %indvars.iv to i32
  %sub31 = add i32 %6, -8
  %cmp3396 = icmp slt i32 %6, 32
  br i1 %cmp3396, label %for.body34.preheader, label %for.end43

for.body34.preheader:                             ; preds = %for.end
  %7 = and i64 %indvars.iv, 4294967295
  %8 = add nsw i64 %7, -8
  %smax = call i32 @llvm.smax.i32(i32 %sub31, i32 23)
  %9 = add nuw nsw i32 %smax, 1
  br label %for.body34

for.body34:                                       ; preds = %for.body34.preheader, %for.inc41
  %indvars.iv100 = phi i64 [ %8, %for.body34.preheader ], [ %indvars.iv.next101, %for.inc41 ]
  %linmax37 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %indvars.iv100, i32 1
  %10 = load i32, ptr %linmax37, align 4, !tbaa !24
  %cmp38.not = icmp slt i32 %10, %sub23
  br i1 %cmp38.not, label %for.inc41, label %for.end43.loopexit.split.loop.exit

for.inc41:                                        ; preds = %for.body34
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1
  %cmp33 = icmp ult i64 %indvars.iv100, 23
  br i1 %cmp33, label %for.body34, label %for.end43, !llvm.loop !46

for.end43.loopexit.split.loop.exit:               ; preds = %for.body34
  %11 = trunc i64 %indvars.iv100 to i32
  br label %for.end43

for.end43:                                        ; preds = %for.inc, %for.inc41, %for.end43.loopexit.split.loop.exit, %for.end
  %choice1.1.lcssa106 = phi i32 [ %6, %for.end ], [ %6, %for.end43.loopexit.split.loop.exit ], [ %6, %for.inc41 ], [ 32, %for.inc ]
  %choice0.2.lcssa = phi i32 [ %sub31, %for.end ], [ %11, %for.end43.loopexit.split.loop.exit ], [ %9, %for.inc41 ], [ 24, %for.inc ]
  %call44 = tail call fastcc i32 @count_bit_ESC(ptr noundef %ix, ptr noundef %end, i32 noundef %choice0.2.lcssa, i32 noundef %choice1.1.lcssa106, ptr noundef %s)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %for.end43, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then2 ], [ %choice0.1, %sw.epilog ], [ %call44, %for.end43 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @best_scalefac_store(ptr nocapture noundef readonly %gfp, i32 noundef %gr, i32 noundef %ch, ptr nocapture noundef readonly %l3_enc, ptr noundef %l3_side, ptr noundef %scalefac) local_unnamed_addr #0 {
entry:
  %gr1 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4
  %idxprom = sext i32 %gr to i64
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 %idxprom
  %idxprom3 = sext i32 %ch to i64
  %arrayidx4 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %idxprom3
  %sfb_lmax = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 16
  %0 = load i32, ptr %sfb_lmax, align 8, !tbaa !47
  %cmp369.not = icmp eq i32 %0, 0
  br i1 %cmp369.not, label %for.cond42.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx8 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3
  br label %for.body

for.cond42.preheader:                             ; preds = %for.inc39, %entry
  %sfb_smax = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 17
  %1 = load i32, ptr %sfb_smax, align 4, !tbaa !48
  %2 = icmp slt i32 %1, 12
  br i1 %2, label %for.body44, label %for.end97

for.body:                                         ; preds = %for.body.lr.ph, %for.inc39
  %3 = phi i32 [ %0, %for.body.lr.ph ], [ %11, %for.inc39 ]
  %indvars.iv398 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next399.pre-phi, %for.inc39 ]
  %arrayidx11 = getelementptr inbounds [22 x i32], ptr %arrayidx8, i64 0, i64 %indvars.iv398
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %4, 0
  br i1 %cmp12, label %if.then, label %for.body.for.inc39_crit_edge

for.body.for.inc39_crit_edge:                     ; preds = %for.body
  %.pre444 = add nuw nsw i64 %indvars.iv398, 1
  br label %for.inc39

if.then:                                          ; preds = %for.body
  %arrayidx14 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %indvars.iv398
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv398, 1
  %arrayidx16 = getelementptr inbounds [23 x i32], ptr @scalefac_band, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp18366 = icmp slt i32 %5, %7
  br i1 %cmp18366, label %for.body19.preheader, label %for.end

for.body19.preheader:                             ; preds = %if.then
  %8 = sext i32 %5 to i64
  br label %for.body19

for.body19:                                       ; preds = %for.body19.preheader, %for.inc
  %indvars.iv = phi i64 [ %8, %for.body19.preheader ], [ %indvars.iv.next, %for.inc ]
  %arrayidx25 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %idxprom, i64 %idxprom3, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp eq i32 %9, 0
  br i1 %cmp26.not, label %for.inc, label %for.end.loopexit

for.inc:                                          ; preds = %for.body19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv
  br i1 %exitcond.not, label %if.then29, label %for.body19, !llvm.loop !49

for.end.loopexit:                                 ; preds = %for.body19
  %10 = trunc i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then
  %l.0.lcssa = phi i32 [ %5, %if.then ], [ %10, %for.end.loopexit ]
  %cmp28 = icmp eq i32 %l.0.lcssa, %7
  br i1 %cmp28, label %if.then29, label %for.inc39

if.then29:                                        ; preds = %for.inc, %for.end
  store i32 0, ptr %arrayidx11, align 4, !tbaa !5
  %.pre = load i32, ptr %sfb_lmax, align 8, !tbaa !47
  br label %for.inc39

for.inc39:                                        ; preds = %for.body.for.inc39_crit_edge, %if.then29, %for.end
  %indvars.iv.next399.pre-phi = phi i64 [ %.pre444, %for.body.for.inc39_crit_edge ], [ %6, %if.then29 ], [ %6, %for.end ]
  %11 = phi i32 [ %3, %for.body.for.inc39_crit_edge ], [ %.pre, %if.then29 ], [ %3, %for.end ]
  %12 = zext i32 %11 to i64
  %cmp = icmp ult i64 %indvars.iv.next399.pre-phi, %12
  br i1 %cmp, label %for.body, label %for.cond42.preheader, !llvm.loop !50

for.body44:                                       ; preds = %for.cond42.preheader, %for.inc95.for.body44_crit_edge
  %13 = phi i32 [ %.pre441, %for.inc95.for.body44_crit_edge ], [ %1, %for.cond42.preheader ]
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %for.inc95.for.body44_crit_edge ], [ 0, %for.cond42.preheader ]
  %cmp46376 = icmp slt i32 %13, 12
  br i1 %cmp46376, label %for.body47.lr.ph, label %for.inc95

for.body47.lr.ph:                                 ; preds = %for.body44
  %14 = sext i32 %13 to i64
  br label %for.body47

for.body47:                                       ; preds = %for.body47.lr.ph, %for.inc92
  %indvars.iv409 = phi i64 [ %14, %for.body47.lr.ph ], [ %indvars.iv.next410.pre-phi, %for.inc92 ]
  %arrayidx55 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3, i32 1, i64 %indvars.iv409, i64 %indvars.iv414
  %15 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %cmp56 = icmp sgt i32 %15, 0
  br i1 %cmp56, label %if.then57, label %for.body47.for.inc92_crit_edge

for.body47.for.inc92_crit_edge:                   ; preds = %for.body47
  %.pre443 = add nsw i64 %indvars.iv409, 1
  br label %for.inc92

if.then57:                                        ; preds = %for.body47
  %arrayidx59 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %indvars.iv409
  %16 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %17 = add nsw i64 %indvars.iv409, 1
  %arrayidx62 = getelementptr inbounds %struct.scalefac_struct, ptr @scalefac_band, i64 0, i32 1, i64 %17
  %18 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %cmp64372 = icmp slt i32 %16, %18
  br i1 %cmp64372, label %for.body65.preheader, label %for.end78

for.body65.preheader:                             ; preds = %if.then57
  %19 = sext i32 %16 to i64
  br label %for.body65

for.body65:                                       ; preds = %for.body65.preheader, %for.inc76
  %indvars.iv402 = phi i64 [ %19, %for.body65.preheader ], [ %indvars.iv.next403, %for.inc76 ]
  %20 = mul nsw i64 %indvars.iv402, 3
  %21 = add nsw i64 %20, %indvars.iv414
  %arrayidx72 = getelementptr inbounds [2 x [576 x i32]], ptr %l3_enc, i64 %idxprom, i64 %idxprom3, i64 %21
  %22 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %cmp73.not = icmp eq i32 %22, 0
  br i1 %cmp73.not, label %for.inc76, label %for.end78.loopexit

for.inc76:                                        ; preds = %for.body65
  %indvars.iv.next403 = add nsw i64 %indvars.iv402, 1
  %lftr.wideiv407 = trunc i64 %indvars.iv.next403 to i32
  %exitcond408.not = icmp eq i32 %18, %lftr.wideiv407
  br i1 %exitcond408.not, label %if.then80, label %for.body65, !llvm.loop !51

for.end78.loopexit:                               ; preds = %for.body65
  %23 = trunc i64 %indvars.iv402 to i32
  br label %for.end78

for.end78:                                        ; preds = %for.end78.loopexit, %if.then57
  %l.1.lcssa = phi i32 [ %16, %if.then57 ], [ %23, %for.end78.loopexit ]
  %cmp79 = icmp eq i32 %l.1.lcssa, %18
  br i1 %cmp79, label %if.then80, label %for.inc92

if.then80:                                        ; preds = %for.inc76, %for.end78
  store i32 0, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.inc92

for.inc92:                                        ; preds = %for.body47.for.inc92_crit_edge, %if.then80, %for.end78
  %indvars.iv.next410.pre-phi = phi i64 [ %.pre443, %for.body47.for.inc92_crit_edge ], [ %17, %if.then80 ], [ %17, %for.end78 ]
  %exitcond413.not = icmp eq i64 %indvars.iv.next410.pre-phi, 12
  br i1 %exitcond413.not, label %for.inc95, label %for.body47, !llvm.loop !52

for.inc95:                                        ; preds = %for.inc92, %for.body44
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1
  %exitcond417.not = icmp eq i64 %indvars.iv.next415, 3
  br i1 %exitcond417.not, label %for.end97, label %for.inc95.for.body44_crit_edge, !llvm.loop !53

for.inc95.for.body44_crit_edge:                   ; preds = %for.inc95
  %.pre441 = load i32, ptr %sfb_smax, align 4, !tbaa !48
  br label %for.body44

for.end97:                                        ; preds = %for.inc95, %for.cond42.preheader
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 15
  %24 = load i32, ptr %part2_length, align 4, !tbaa !55
  %25 = load i32, ptr %arrayidx4, align 8, !tbaa !43
  %sub = sub i32 %25, %24
  store i32 %sub, ptr %arrayidx4, align 8, !tbaa !43
  %scalefac_scale = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 13
  %26 = load i32, ptr %scalefac_scale, align 4, !tbaa !56
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end195

land.lhs.true:                                    ; preds = %for.end97
  %preflag = getelementptr inbounds %struct.gr_info, ptr %arrayidx4, i64 0, i32 12
  %27 = load i32, ptr %preflag, align 8, !tbaa !57
  %tobool98.not = icmp eq i32 %27, 0
  br i1 %tobool98.not, label %for.cond102.preheader, label %if.end195

for.cond102.preheader:                            ; preds = %land.lhs.true
  %28 = load i32, ptr %sfb_lmax, align 8, !tbaa !47
  %cmp104381.not = icmp eq i32 %28, 0
  br i1 %cmp104381.not, label %for.end115, label %for.body105.lr.ph

for.body105.lr.ph:                                ; preds = %for.cond102.preheader
  %arrayidx109 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3
  %wide.trip.count = zext i32 %28 to i64
  br label %for.body105

for.body105:                                      ; preds = %for.body105.lr.ph, %for.body105
  %indvars.iv418 = phi i64 [ 0, %for.body105.lr.ph ], [ %indvars.iv.next419, %for.body105 ]
  %s101.0383 = phi i32 [ 0, %for.body105.lr.ph ], [ %or, %for.body105 ]
  %arrayidx112 = getelementptr inbounds [22 x i32], ptr %arrayidx109, i64 0, i64 %indvars.iv418
  %29 = load i32, ptr %arrayidx112, align 4, !tbaa !5
  %or = or i32 %29, %s101.0383
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 1
  %exitcond421.not = icmp eq i64 %indvars.iv.next419, %wide.trip.count
  br i1 %exitcond421.not, label %for.end115, label %for.body105, !llvm.loop !58

for.end115:                                       ; preds = %for.body105, %for.cond102.preheader
  %s101.0.lcssa = phi i32 [ 0, %for.cond102.preheader ], [ %or, %for.body105 ]
  %30 = load i32, ptr %sfb_smax, align 4, !tbaa !48
  %cmp118387 = icmp ult i32 %30, 12
  br i1 %cmp118387, label %for.cond120.preheader.preheader, label %for.end138

for.cond120.preheader.preheader:                  ; preds = %for.end115
  %31 = zext i32 %30 to i64
  br label %for.cond120.preheader

for.cond120.preheader:                            ; preds = %for.cond120.preheader.preheader, %for.inc136
  %indvars.iv426 = phi i64 [ %31, %for.cond120.preheader.preheader ], [ %indvars.iv.next427, %for.inc136 ]
  %s101.1389 = phi i32 [ %s101.0.lcssa, %for.cond120.preheader.preheader ], [ %or132, %for.inc136 ]
  br label %for.body122

for.body122:                                      ; preds = %for.cond120.preheader, %for.body122
  %indvars.iv422 = phi i64 [ 0, %for.cond120.preheader ], [ %indvars.iv.next423, %for.body122 ]
  %s101.2386 = phi i32 [ %s101.1389, %for.cond120.preheader ], [ %or132, %for.body122 ]
  %arrayidx131 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3, i32 1, i64 %indvars.iv426, i64 %indvars.iv422
  %32 = load i32, ptr %arrayidx131, align 4, !tbaa !5
  %or132 = or i32 %32, %s101.2386
  %indvars.iv.next423 = add nuw nsw i64 %indvars.iv422, 1
  %exitcond425.not = icmp eq i64 %indvars.iv.next423, 3
  br i1 %exitcond425.not, label %for.inc136, label %for.body122, !llvm.loop !59

for.inc136:                                       ; preds = %for.body122
  %indvars.iv.next427 = add nuw nsw i64 %indvars.iv426, 1
  %exitcond429.not = icmp eq i64 %indvars.iv.next427, 12
  br i1 %exitcond429.not, label %for.end138, label %for.cond120.preheader, !llvm.loop !60

for.end138:                                       ; preds = %for.inc136, %for.end115
  %s101.1.lcssa = phi i32 [ %s101.0.lcssa, %for.end115 ], [ %or132, %for.inc136 ]
  %and = and i32 %s101.1.lcssa, 1
  %tobool139 = icmp eq i32 %and, 0
  %cmp141 = icmp ne i32 %s101.1.lcssa, 0
  %or.cond = and i1 %cmp141, %tobool139
  br i1 %or.cond, label %for.cond143.preheader, label %if.end195

for.cond143.preheader:                            ; preds = %for.end138
  br i1 %cmp104381.not, label %for.end156, label %for.body146.lr.ph

for.body146.lr.ph:                                ; preds = %for.cond143.preheader
  %arrayidx150 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3
  br label %for.body146

for.body146:                                      ; preds = %for.body146.lr.ph, %for.body146
  %indvars.iv430 = phi i64 [ 0, %for.body146.lr.ph ], [ %indvars.iv.next431, %for.body146 ]
  %arrayidx153 = getelementptr inbounds [22 x i32], ptr %arrayidx150, i64 0, i64 %indvars.iv430
  %33 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %div = sdiv i32 %33, 2
  store i32 %div, ptr %arrayidx153, align 4, !tbaa !5
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1
  %34 = load i32, ptr %sfb_lmax, align 8, !tbaa !47
  %35 = zext i32 %34 to i64
  %cmp145 = icmp ult i64 %indvars.iv.next431, %35
  br i1 %cmp145, label %for.body146, label %for.end156.loopexit, !llvm.loop !61

for.end156.loopexit:                              ; preds = %for.body146
  %.pre442 = load i32, ptr %sfb_smax, align 4, !tbaa !48
  br label %for.end156

for.end156:                                       ; preds = %for.end156.loopexit, %for.cond143.preheader
  %36 = phi i32 [ %.pre442, %for.end156.loopexit ], [ %30, %for.cond143.preheader ]
  %cmp159394 = icmp ult i32 %36, 12
  br i1 %cmp159394, label %for.cond161.preheader.preheader, label %for.end179

for.cond161.preheader.preheader:                  ; preds = %for.end156
  %37 = zext i32 %36 to i64
  br label %for.cond161.preheader

for.cond161.preheader:                            ; preds = %for.cond161.preheader.preheader, %for.inc177
  %indvars.iv437 = phi i64 [ %37, %for.cond161.preheader.preheader ], [ %indvars.iv.next438, %for.inc177 ]
  br label %for.body163

for.body163:                                      ; preds = %for.cond161.preheader, %for.body163
  %indvars.iv433 = phi i64 [ 0, %for.cond161.preheader ], [ %indvars.iv.next434, %for.body163 ]
  %arrayidx172 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3, i32 1, i64 %indvars.iv437, i64 %indvars.iv433
  %38 = load i32, ptr %arrayidx172, align 4, !tbaa !5
  %div173 = sdiv i32 %38, 2
  store i32 %div173, ptr %arrayidx172, align 4, !tbaa !5
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1
  %exitcond436.not = icmp eq i64 %indvars.iv.next434, 3
  br i1 %exitcond436.not, label %for.inc177, label %for.body163, !llvm.loop !62

for.inc177:                                       ; preds = %for.body163
  %indvars.iv.next438 = add nuw nsw i64 %indvars.iv437, 1
  %exitcond440.not = icmp eq i64 %indvars.iv.next438, 12
  br i1 %exitcond440.not, label %for.end179, label %for.cond161.preheader, !llvm.loop !63

for.end179:                                       ; preds = %for.inc177, %for.end156
  store i32 1, ptr %scalefac_scale, align 4, !tbaa !56
  store i32 99999999, ptr %part2_length, align 4, !tbaa !55
  %mode_gr = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %39 = load i32, ptr %mode_gr, align 8, !tbaa !64
  %cmp182 = icmp eq i32 %39, 2
  %arrayidx187 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 %idxprom, i64 %idxprom3
  br i1 %cmp182, label %if.then183, label %if.else

if.then183:                                       ; preds = %for.end179
  %call = tail call i32 @scale_bitcount(ptr noundef %arrayidx187, ptr noundef nonnull %arrayidx4) #10
  br label %if.end195

if.else:                                          ; preds = %for.end179
  %call192 = tail call i32 @scale_bitcount_lsf(ptr noundef %arrayidx187, ptr noundef nonnull %arrayidx4) #10
  br label %if.end195

if.end195:                                        ; preds = %for.end138, %if.else, %if.then183, %land.lhs.true, %for.end97
  %mode_gr196 = getelementptr inbounds %struct.lame_global_flags, ptr %gfp, i64 0, i32 45
  %40 = load i32, ptr %mode_gr196, align 8, !tbaa !64
  %cmp197 = icmp eq i32 %40, 2
  %cmp199 = icmp eq i32 %gr, 1
  %or.cond254 = and i1 %cmp199, %cmp197
  br i1 %or.cond254, label %land.lhs.true200, label %if.end250

land.lhs.true200:                                 ; preds = %if.end195
  %arrayidx205 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %gr1, i64 0, i64 %idxprom3
  %block_type = getelementptr inbounds %struct.gr_info, ptr %arrayidx205, i64 0, i32 6
  %41 = load i32, ptr %block_type, align 8, !tbaa !65
  %cmp207.not = icmp eq i32 %41, 2
  br i1 %cmp207.not, label %if.end250, label %land.lhs.true208

land.lhs.true208:                                 ; preds = %land.lhs.true200
  %arrayidx210 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 1
  %arrayidx213 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx210, i64 0, i64 %idxprom3
  %block_type215 = getelementptr inbounds %struct.gr_info, ptr %arrayidx213, i64 0, i32 6
  %42 = load i32, ptr %block_type215, align 8, !tbaa !65
  %cmp216.not = icmp eq i32 %42, 2
  br i1 %cmp216.not, label %if.end250, label %land.lhs.true217

land.lhs.true217:                                 ; preds = %land.lhs.true208
  %scalefac_scale224 = getelementptr inbounds %struct.gr_info, ptr %arrayidx205, i64 0, i32 13
  %43 = load i32, ptr %scalefac_scale224, align 4, !tbaa !67
  %scalefac_scale231 = getelementptr inbounds %struct.gr_info, ptr %arrayidx213, i64 0, i32 13
  %44 = load i32, ptr %scalefac_scale231, align 4, !tbaa !67
  %cmp232 = icmp eq i32 %43, %44
  br i1 %cmp232, label %land.lhs.true233, label %if.end250

land.lhs.true233:                                 ; preds = %land.lhs.true217
  %preflag240 = getelementptr inbounds %struct.gr_info, ptr %arrayidx205, i64 0, i32 12
  %45 = load i32, ptr %preflag240, align 8, !tbaa !68
  %preflag247 = getelementptr inbounds %struct.gr_info, ptr %arrayidx213, i64 0, i32 12
  %46 = load i32, ptr %preflag247, align 8, !tbaa !68
  %cmp248 = icmp eq i32 %45, %46
  br i1 %cmp248, label %if.then249, label %if.end250

if.then249:                                       ; preds = %land.lhs.true233
  tail call fastcc void @scfsi_calc(i32 noundef %ch, ptr noundef nonnull %l3_side, ptr noundef %scalefac)
  br label %if.end250

if.end250:                                        ; preds = %if.then249, %land.lhs.true233, %land.lhs.true217, %land.lhs.true208, %land.lhs.true200, %if.end195
  %47 = load i32, ptr %part2_length, align 4, !tbaa !55
  %48 = load i32, ptr %arrayidx4, align 8, !tbaa !43
  %add253 = add i32 %48, %47
  store i32 %add253, ptr %arrayidx4, align 8, !tbaa !43
  ret void
}

declare i32 @scale_bitcount(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @scale_bitcount_lsf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define internal fastcc void @scfsi_calc(i32 noundef %ch, ptr nocapture noundef %l3_side, ptr nocapture noundef %scalefac) unnamed_addr #6 {
entry:
  %idxprom = sext i32 %ch to i64
  %0 = shl nsw i64 %idxprom, 4
  %1 = or i64 %0, 12
  %uglygep = getelementptr i8, ptr %l3_side, i64 %1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %uglygep, i8 0, i64 16, i1 false), !tbaa !5
  %arrayidx = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 4, i64 1
  %arrayidx19 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 0, i64 %idxprom
  %arrayidx24 = getelementptr inbounds [2 x %struct.III_scalefac_t], ptr %scalefac, i64 1, i64 %idxprom
  %2 = mul nsw i64 %idxprom, 244
  %3 = add nsw i64 %2, 488
  %uglygep237 = getelementptr i8, ptr %scalefac, i64 %3
  br label %for.body9

for.body9:                                        ; preds = %entry, %for.inc60
  %4 = phi i32 [ 0, %entry ], [ %5, %for.inc60 ]
  %indvars.iv242 = phi i64 [ 0, %entry ], [ %indvars.iv.next243, %for.inc60 ]
  %indvars.iv.next243 = add nuw nsw i64 %indvars.iv242, 1
  %arrayidx14 = getelementptr inbounds [5 x i32], ptr @scfsi_calc.scfsi_band, i64 0, i64 %indvars.iv.next243
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15214 = icmp slt i32 %4, %5
  br i1 %cmp15214, label %for.body16.preheader, label %for.end31

for.body16.preheader:                             ; preds = %for.body9
  %6 = sext i32 %4 to i64
  br label %for.body16

for.body16:                                       ; preds = %for.body16.preheader, %for.inc29
  %indvars.iv = phi i64 [ %6, %for.body16.preheader ], [ %indvars.iv.next, %for.inc29 ]
  %arrayidx21 = getelementptr inbounds [22 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds [22 x i32], ptr %arrayidx24, i64 0, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28.not = icmp eq i32 %7, %8
  br i1 %cmp28.not, label %for.inc29, label %for.end31.loopexit

for.inc29:                                        ; preds = %for.body16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond39.preheader, label %for.body16, !llvm.loop !69

for.end31.loopexit:                               ; preds = %for.body16
  %9 = trunc i64 %indvars.iv to i32
  br label %for.end31

for.end31:                                        ; preds = %for.end31.loopexit, %for.body9
  %sfb.0.lcssa = phi i32 [ %4, %for.body9 ], [ %9, %for.end31.loopexit ]
  %cmp35 = icmp eq i32 %sfb.0.lcssa, %5
  br i1 %cmp35, label %for.cond39.preheader, label %for.inc60

for.cond39.preheader:                             ; preds = %for.inc29, %for.end31
  br i1 %cmp15214, label %for.body44.preheader, label %for.end53

for.body44.preheader:                             ; preds = %for.cond39.preheader
  %10 = sext i32 %4 to i64
  %11 = shl nsw i64 %10, 2
  %uglygep238 = getelementptr i8, ptr %uglygep237, i64 %11
  %12 = xor i32 %4, -1
  %13 = add i32 %5, %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = add nuw nsw i64 %15, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %uglygep238, i8 -1, i64 %16, i1 false), !tbaa !5
  br label %for.end53

for.end53:                                        ; preds = %for.body44.preheader, %for.cond39.preheader
  %arrayidx58 = getelementptr inbounds %struct.III_side_info_t, ptr %l3_side, i64 0, i32 3, i64 %idxprom, i64 %indvars.iv242
  store i32 1, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.end31, %for.end53
  %exitcond245.not = icmp eq i64 %indvars.iv.next243, 4
  br i1 %exitcond245.not, label %for.body65, label %for.body9, !llvm.loop !70

for.body96.lr.ph:                                 ; preds = %for.inc91
  %arrayidx2 = getelementptr inbounds [2 x %struct.gr_info_ss], ptr %arrayidx, i64 0, i64 %idxprom
  br label %for.body96

for.body65:                                       ; preds = %for.inc60, %for.inc91
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %for.inc91 ], [ 0, %for.inc60 ]
  %s1.0226 = phi i32 [ %s1.1, %for.inc91 ], [ 0, %for.inc60 ]
  %c1.0224 = phi i32 [ %c1.1, %for.inc91 ], [ 0, %for.inc60 ]
  %arrayidx71 = getelementptr inbounds [22 x i32], ptr %arrayidx24, i64 0, i64 %indvars.iv246
  %17 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %17, 0
  br i1 %cmp72, label %for.inc91, label %if.end74

if.end74:                                         ; preds = %for.body65
  %inc75 = add nsw i32 %c1.0224, 1
  %18 = tail call i32 @llvm.smax.i32(i32 %s1.0226, i32 %17)
  br label %for.inc91

for.inc91:                                        ; preds = %if.end74, %for.body65
  %c1.1 = phi i32 [ %c1.0224, %for.body65 ], [ %inc75, %if.end74 ]
  %s1.1 = phi i32 [ %s1.0226, %for.body65 ], [ %18, %if.end74 ]
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1
  %exitcond249.not = icmp eq i64 %indvars.iv.next247, 11
  br i1 %exitcond249.not, label %for.body96.lr.ph, label %for.body65, !llvm.loop !71

for.cond125.preheader:                            ; preds = %for.inc122
  %part2_length = getelementptr inbounds %struct.gr_info, ptr %arrayidx2, i64 0, i32 15
  %scalefac_compress = getelementptr inbounds %struct.gr_info, ptr %arrayidx2, i64 0, i32 4
  br label %for.body127

for.body96:                                       ; preds = %for.body96.lr.ph, %for.inc122
  %indvars.iv250 = phi i64 [ 11, %for.body96.lr.ph ], [ %indvars.iv.next251, %for.inc122 ]
  %c2.0229 = phi i32 [ 0, %for.body96.lr.ph ], [ %c2.1, %for.inc122 ]
  %s2.0228 = phi i32 [ 0, %for.body96.lr.ph ], [ %s2.1, %for.inc122 ]
  %arrayidx102 = getelementptr inbounds [22 x i32], ptr %arrayidx24, i64 0, i64 %indvars.iv250
  %19 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %cmp103 = icmp slt i32 %19, 0
  br i1 %cmp103, label %for.inc122, label %if.end105

if.end105:                                        ; preds = %for.body96
  %inc106 = add nsw i32 %c2.0229, 1
  %20 = tail call i32 @llvm.smax.i32(i32 %s2.0228, i32 %19)
  br label %for.inc122

for.inc122:                                       ; preds = %if.end105, %for.body96
  %s2.1 = phi i32 [ %s2.0228, %for.body96 ], [ %20, %if.end105 ]
  %c2.1 = phi i32 [ %c2.0229, %for.body96 ], [ %inc106, %if.end105 ]
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1
  %exitcond253.not = icmp eq i64 %indvars.iv.next251, 21
  br i1 %exitcond253.not, label %for.cond125.preheader, label %for.body96, !llvm.loop !72

for.body127:                                      ; preds = %for.cond125.preheader, %for.inc146
  %indvars.iv254 = phi i64 [ 0, %for.cond125.preheader ], [ %indvars.iv.next255, %for.inc146 ]
  %arrayidx129 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_n, i64 0, i64 %indvars.iv254
  %21 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %cmp130 = icmp slt i32 %s1.1, %21
  br i1 %cmp130, label %land.lhs.true, label %for.inc146

land.lhs.true:                                    ; preds = %for.body127
  %arrayidx132 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_n, i64 0, i64 %indvars.iv254
  %22 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %cmp133 = icmp slt i32 %s2.1, %22
  br i1 %cmp133, label %if.then134, label %for.inc146

if.then134:                                       ; preds = %land.lhs.true
  %arrayidx136 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen1_tab, i64 0, i64 %indvars.iv254
  %23 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %mul = mul nsw i32 %23, %c1.1
  %arrayidx138 = getelementptr inbounds [16 x i32], ptr @scfsi_calc.slen2_tab, i64 0, i64 %indvars.iv254
  %24 = load i32, ptr %arrayidx138, align 4, !tbaa !5
  %mul139 = mul nsw i32 %24, %c2.1
  %add140 = add nsw i32 %mul139, %mul
  %25 = load i32, ptr %part2_length, align 4, !tbaa !55
  %cmp141 = icmp sgt i32 %25, %add140
  br i1 %cmp141, label %if.then142, label %for.inc146

if.then142:                                       ; preds = %if.then134
  store i32 %add140, ptr %part2_length, align 4, !tbaa !55
  %26 = trunc i64 %indvars.iv254 to i32
  store i32 %26, ptr %scalefac_compress, align 8, !tbaa !73
  br label %for.inc146

for.inc146:                                       ; preds = %if.then134, %if.then142, %for.body127, %land.lhs.true
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1
  %exitcond257.not = icmp eq i64 %indvars.iv.next255, 16
  br i1 %exitcond257.not, label %for.end148, label %for.body127, !llvm.loop !74

for.end148:                                       ; preds = %for.inc146
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @ix_max(ptr noundef readonly %ix, ptr noundef readnone %end) unnamed_addr #7 {
entry:
  %cmp15 = icmp ult ptr %ix, %end
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %max.017 = phi i32 [ %3, %while.body ], [ 0, %entry ]
  %ix.addr.016 = phi ptr [ %incdec.ptr2, %while.body ], [ %ix, %entry ]
  %incdec.ptr = getelementptr inbounds i32, ptr %ix.addr.016, i64 1
  %0 = load i32, ptr %ix.addr.016, align 4, !tbaa !5
  %1 = tail call i32 @llvm.smax.i32(i32 %max.017, i32 %0)
  %incdec.ptr2 = getelementptr inbounds i32, ptr %ix.addr.016, i64 2
  %2 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %cmp = icmp ult ptr %incdec.ptr2, %end
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !75

while.end:                                        ; preds = %while.body, %entry
  %max.0.lcssa = phi i32 [ 0, %entry ], [ %3, %while.body ]
  ret i32 %max.0.lcssa
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @count_bit_short_noESC(ptr noundef readonly %ix, ptr noundef readnone %end, i32 noundef %table) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %table to i64
  %hlen1 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %0 = load ptr, ptr %hlen1, align 8, !tbaa !76
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %ix.addr.135 = phi ptr [ %ix, %entry ], [ %ix.addr.135.be, %for.body.backedge ]
  %i.034 = phi i32 [ 0, %entry ], [ %i.034.be, %for.body.backedge ]
  %p.133 = phi ptr [ @cb_esc_buf, %entry ], [ %incdec.ptr7, %for.body.backedge ]
  %sum.132 = phi i32 [ 0, %entry ], [ %add10, %for.body.backedge ]
  %sign.131 = phi i32 [ 0, %entry ], [ %sign.3, %for.body.backedge ]
  %add.ptr = getelementptr inbounds i32, ptr %ix.addr.135, i64 3
  %1 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, ptr %ix.addr.135, i64 1
  %2 = load i32, ptr %ix.addr.135, align 4, !tbaa !5
  %cmp2.not = icmp eq i32 %2, 0
  br i1 %cmp2.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %sign.131, 1
  %mul = shl nsw i32 %2, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %sign.2 = phi i32 [ %inc, %if.then ], [ %sign.131, %for.body ]
  %x.0 = phi i32 [ %mul, %if.then ], [ 0, %for.body ]
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %inc5 = add nsw i32 %sign.2, 1
  %add = add nsw i32 %x.0, %1
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %sign.3 = phi i32 [ %inc5, %if.then4 ], [ %sign.2, %if.end ]
  %x.1 = phi i32 [ %add, %if.then4 ], [ %x.0, %if.end ]
  %incdec.ptr7 = getelementptr inbounds i32, ptr %p.133, i64 1
  store i32 %x.1, ptr %p.133, align 4, !tbaa !5
  %idxprom8 = sext i32 %x.1 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %0, i64 %idxprom8
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !29
  %conv = zext i8 %3 to i32
  %add10 = add nuw nsw i32 %sum.132, %conv
  %inc11 = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc11, 3
  br i1 %exitcond.not, label %for.end, label %for.body.backedge

for.body.backedge:                                ; preds = %if.end6, %for.end
  %ix.addr.135.be = phi ptr [ %incdec.ptr, %if.end6 ], [ %add.ptr12, %for.end ]
  %i.034.be = phi i32 [ %inc11, %if.end6 ], [ 0, %for.end ]
  br label %for.body, !llvm.loop !77

for.end:                                          ; preds = %if.end6
  %add.ptr12 = getelementptr inbounds i32, ptr %ix.addr.135, i64 4
  %cmp13 = icmp ult ptr %add.ptr12, %end
  br i1 %cmp13, label %for.body.backedge, label %do.end

do.end:                                           ; preds = %for.end
  store i32 %sign.3, ptr @cb_esc_sign, align 4, !tbaa !5
  store ptr %incdec.ptr7, ptr @cb_esc_end, align 8, !tbaa !78
  %add15 = add nsw i32 %add10, %sign.3
  ret i32 %add15
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal fastcc i32 @count_bit_noESC2(i32 noundef %table) unnamed_addr #7 {
entry:
  %0 = load i32, ptr @cb_esc_sign, align 4, !tbaa !5
  %idxprom = zext i32 %table to i64
  %hlen = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %1 = load ptr, ptr %hlen, align 8, !tbaa !76
  %2 = load ptr, ptr @cb_esc_end, align 8, !tbaa !78
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %sum.0 = phi i32 [ %0, %entry ], [ %add, %do.body ]
  %p.0 = phi ptr [ @cb_esc_buf, %entry ], [ %incdec.ptr, %do.body ]
  %incdec.ptr = getelementptr inbounds i32, ptr %p.0, i64 1
  %3 = load i32, ptr %p.0, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %1, i64 %idxprom1
  %4 = load i8, ptr %arrayidx2, align 1, !tbaa !29
  %conv = zext i8 %4 to i32
  %add = add nsw i32 %sum.0, %conv
  %cmp = icmp ult ptr %incdec.ptr, %2
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !79

do.end:                                           ; preds = %do.body
  ret i32 %add
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @count_bit_short_ESC(ptr noundef readonly %ix, ptr noundef readnone %end, i32 noundef %t1, i32 noundef %t2, ptr nocapture noundef %s) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %t1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !80
  %idxprom1 = sext i32 %t2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 8, !tbaa !80
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 16, !tbaa !76
  %3 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 16, !tbaa !76
  br label %do.body

do.body:                                          ; preds = %for.end, %entry
  %ix.addr.0 = phi ptr [ %ix, %entry ], [ %add.ptr27, %for.end ]
  %sum.0 = phi i32 [ 0, %entry ], [ %sum.3, %for.end ]
  %sum1.0 = phi i32 [ 0, %entry ], [ %add21, %for.end ]
  %sum2.0 = phi i32 [ 0, %entry ], [ %add25, %for.end ]
  br label %for.body

for.body:                                         ; preds = %do.body, %if.end18
  %i.067 = phi i32 [ 0, %do.body ], [ %inc26, %if.end18 ]
  %sum2.166 = phi i32 [ %sum2.0, %do.body ], [ %add25, %if.end18 ]
  %sum1.165 = phi i32 [ %sum1.0, %do.body ], [ %add21, %if.end18 ]
  %sum.164 = phi i32 [ %sum.0, %do.body ], [ %sum.3, %if.end18 ]
  %ix.addr.163 = phi ptr [ %ix.addr.0, %do.body ], [ %incdec.ptr, %if.end18 ]
  %add.ptr = getelementptr inbounds i32, ptr %ix.addr.163, i64 3
  %4 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, ptr %ix.addr.163, i64 1
  %5 = load i32, ptr %ix.addr.163, align 4, !tbaa !5
  %cmp4.not = icmp eq i32 %5, 0
  br i1 %cmp4.not, label %if.end8, label %if.then

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %sum.164, 1
  %cmp5 = icmp sgt i32 %5, 14
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %add = add nsw i32 %sum1.165, %0
  %add7 = add nsw i32 %sum2.166, %1
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %sum1.2 = phi i32 [ %add, %if.then6 ], [ %sum1.165, %if.then ]
  %sum2.2 = phi i32 [ %add7, %if.then6 ], [ %sum2.166, %if.then ]
  %x.0 = phi i32 [ 15, %if.then6 ], [ %5, %if.then ]
  %mul = shl nsw i32 %x.0, 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %sum.2 = phi i32 [ %inc, %if.end ], [ %sum.164, %for.body ]
  %sum1.3 = phi i32 [ %sum1.2, %if.end ], [ %sum1.165, %for.body ]
  %sum2.3 = phi i32 [ %sum2.2, %if.end ], [ %sum2.166, %for.body ]
  %x.1 = phi i32 [ %mul, %if.end ], [ 0, %for.body ]
  %cmp9.not = icmp eq i32 %4, 0
  br i1 %cmp9.not, label %if.end18, label %if.then10

if.then10:                                        ; preds = %if.end8
  %inc11 = add nsw i32 %sum.2, 1
  %cmp12 = icmp sgt i32 %4, 14
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  %add14 = add nsw i32 %sum1.3, %0
  %add15 = add nsw i32 %sum2.3, %1
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then10
  %sum1.4 = phi i32 [ %add14, %if.then13 ], [ %sum1.3, %if.then10 ]
  %sum2.4 = phi i32 [ %add15, %if.then13 ], [ %sum2.3, %if.then10 ]
  %y.0 = phi i32 [ 15, %if.then13 ], [ %4, %if.then10 ]
  %add17 = add nsw i32 %y.0, %x.1
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.end8
  %sum.3 = phi i32 [ %inc11, %if.end16 ], [ %sum.2, %if.end8 ]
  %sum1.5 = phi i32 [ %sum1.4, %if.end16 ], [ %sum1.3, %if.end8 ]
  %sum2.5 = phi i32 [ %sum2.4, %if.end16 ], [ %sum2.3, %if.end8 ]
  %x.2 = phi i32 [ %add17, %if.end16 ], [ %x.1, %if.end8 ]
  %idxprom19 = sext i32 %x.2 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %2, i64 %idxprom19
  %6 = load i8, ptr %arrayidx20, align 1, !tbaa !29
  %conv = zext i8 %6 to i32
  %add21 = add nsw i32 %sum1.5, %conv
  %arrayidx23 = getelementptr inbounds i8, ptr %3, i64 %idxprom19
  %7 = load i8, ptr %arrayidx23, align 1, !tbaa !29
  %conv24 = zext i8 %7 to i32
  %add25 = add nsw i32 %sum2.5, %conv24
  %inc26 = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc26, 3
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !81

for.end:                                          ; preds = %if.end18
  %uglygep = getelementptr i8, ptr %ix.addr.0, i64 8
  %add.ptr27 = getelementptr inbounds i32, ptr %uglygep, i64 4
  %cmp28 = icmp ult ptr %add.ptr27, %end
  br i1 %cmp28, label %do.body, label %do.end, !llvm.loop !82

do.end:                                           ; preds = %for.end
  %cmp30 = icmp sgt i32 %add21, %add25
  %spec.select = select i1 %cmp30, i32 %t2, i32 %t1
  %8 = tail call i32 @llvm.smin.i32(i32 %add21, i32 %add25)
  %add34 = add nsw i32 %8, %sum.3
  %9 = load i32, ptr %s, align 4, !tbaa !5
  %add35 = add nsw i32 %add34, %9
  store i32 %add35, ptr %s, align 4, !tbaa !5
  ret i32 %spec.select
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @count_bit_noESC(ptr noundef readonly %ix, ptr noundef readnone %end, i32 noundef %table) unnamed_addr #3 {
entry:
  %idxprom = zext i32 %table to i64
  %hlen1 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom, i32 3
  %0 = load ptr, ptr %hlen1, align 8, !tbaa !76
  br label %do.body

do.body:                                          ; preds = %if.end6, %entry
  %sign.0 = phi i32 [ 0, %entry ], [ %sign.2, %if.end6 ]
  %sum.0 = phi i32 [ 0, %entry ], [ %add10, %if.end6 ]
  %p.0 = phi ptr [ @cb_esc_buf, %entry ], [ %incdec.ptr7, %if.end6 ]
  %ix.addr.0 = phi ptr [ %ix, %entry ], [ %incdec.ptr2, %if.end6 ]
  %incdec.ptr = getelementptr inbounds i32, ptr %ix.addr.0, i64 1
  %1 = load i32, ptr %ix.addr.0, align 4, !tbaa !5
  %incdec.ptr2 = getelementptr inbounds i32, ptr %ix.addr.0, i64 2
  %2 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %inc = add nsw i32 %sign.0, 1
  %mul = shl nsw i32 %1, 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %sign.1 = phi i32 [ %inc, %if.then ], [ %sign.0, %do.body ]
  %x.0 = phi i32 [ %mul, %if.then ], [ 0, %do.body ]
  %cmp3.not = icmp eq i32 %2, 0
  br i1 %cmp3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %inc5 = add nsw i32 %sign.1, 1
  %add = add nsw i32 %x.0, %2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end
  %sign.2 = phi i32 [ %inc5, %if.then4 ], [ %sign.1, %if.end ]
  %x.1 = phi i32 [ %add, %if.then4 ], [ %x.0, %if.end ]
  %incdec.ptr7 = getelementptr inbounds i32, ptr %p.0, i64 1
  store i32 %x.1, ptr %p.0, align 4, !tbaa !5
  %idxprom8 = sext i32 %x.1 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %0, i64 %idxprom8
  %3 = load i8, ptr %arrayidx9, align 1, !tbaa !29
  %conv = zext i8 %3 to i32
  %add10 = add nuw nsw i32 %sum.0, %conv
  %cmp11 = icmp ult ptr %incdec.ptr2, %end
  br i1 %cmp11, label %do.body, label %do.end, !llvm.loop !83

do.end:                                           ; preds = %if.end6
  store i32 %sign.2, ptr @cb_esc_sign, align 4, !tbaa !5
  store ptr %incdec.ptr7, ptr @cb_esc_end, align 8, !tbaa !78
  %add13 = add nsw i32 %add10, %sign.2
  ret i32 %add13
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal fastcc i32 @count_bit_ESC(ptr noundef readonly %ix, ptr noundef readnone %end, i32 noundef %t1, i32 noundef %t2, ptr nocapture noundef %s) unnamed_addr #3 {
entry:
  %idxprom = sext i32 %t1 to i64
  %arrayidx = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !80
  %idxprom1 = sext i32 %t2 to i64
  %arrayidx2 = getelementptr inbounds [34 x %struct.huffcodetab], ptr @ht, i64 0, i64 %idxprom1
  %1 = load i32, ptr %arrayidx2, align 8, !tbaa !80
  %cmp58 = icmp ult ptr %ix, %end
  br i1 %cmp58, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 16, i32 3), align 16, !tbaa !76
  %3 = load ptr, ptr getelementptr inbounds ([34 x %struct.huffcodetab], ptr @ht, i64 0, i64 24, i32 3), align 16, !tbaa !76
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end19
  %sum2.062 = phi i32 [ 0, %while.body.lr.ph ], [ %add26, %if.end19 ]
  %sum1.061 = phi i32 [ 0, %while.body.lr.ph ], [ %add22, %if.end19 ]
  %sum.060 = phi i32 [ 0, %while.body.lr.ph ], [ %sum.2, %if.end19 ]
  %ix.addr.059 = phi ptr [ %ix, %while.body.lr.ph ], [ %incdec.ptr4, %if.end19 ]
  %incdec.ptr = getelementptr inbounds i32, ptr %ix.addr.059, i64 1
  %4 = load i32, ptr %ix.addr.059, align 4, !tbaa !5
  %incdec.ptr4 = getelementptr inbounds i32, ptr %ix.addr.059, i64 2
  %5 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  %cmp5.not = icmp eq i32 %4, 0
  br i1 %cmp5.not, label %if.end9, label %if.then

if.then:                                          ; preds = %while.body
  %inc = add nsw i32 %sum.060, 1
  %cmp6 = icmp sgt i32 %4, 14
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %add = add nsw i32 %sum1.061, %0
  %add8 = add nsw i32 %sum2.062, %1
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  %sum1.1 = phi i32 [ %add, %if.then7 ], [ %sum1.061, %if.then ]
  %sum2.1 = phi i32 [ %add8, %if.then7 ], [ %sum2.062, %if.then ]
  %x.0 = phi i32 [ 15, %if.then7 ], [ %4, %if.then ]
  %mul = shl nsw i32 %x.0, 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %while.body
  %sum.1 = phi i32 [ %inc, %if.end ], [ %sum.060, %while.body ]
  %sum1.2 = phi i32 [ %sum1.1, %if.end ], [ %sum1.061, %while.body ]
  %sum2.2 = phi i32 [ %sum2.1, %if.end ], [ %sum2.062, %while.body ]
  %x.1 = phi i32 [ %mul, %if.end ], [ 0, %while.body ]
  %cmp10.not = icmp eq i32 %5, 0
  br i1 %cmp10.not, label %if.end19, label %if.then11

if.then11:                                        ; preds = %if.end9
  %inc12 = add nsw i32 %sum.1, 1
  %cmp13 = icmp sgt i32 %5, 14
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.then11
  %add15 = add nsw i32 %sum1.2, %0
  %add16 = add nsw i32 %sum2.2, %1
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then11
  %sum1.3 = phi i32 [ %add15, %if.then14 ], [ %sum1.2, %if.then11 ]
  %sum2.3 = phi i32 [ %add16, %if.then14 ], [ %sum2.2, %if.then11 ]
  %y.0 = phi i32 [ 15, %if.then14 ], [ %5, %if.then11 ]
  %add18 = add nsw i32 %y.0, %x.1
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end9
  %sum.2 = phi i32 [ %inc12, %if.end17 ], [ %sum.1, %if.end9 ]
  %sum1.4 = phi i32 [ %sum1.3, %if.end17 ], [ %sum1.2, %if.end9 ]
  %sum2.4 = phi i32 [ %sum2.3, %if.end17 ], [ %sum2.2, %if.end9 ]
  %x.2 = phi i32 [ %add18, %if.end17 ], [ %x.1, %if.end9 ]
  %idxprom20 = sext i32 %x.2 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %2, i64 %idxprom20
  %6 = load i8, ptr %arrayidx21, align 1, !tbaa !29
  %conv = zext i8 %6 to i32
  %add22 = add nsw i32 %sum1.4, %conv
  %arrayidx24 = getelementptr inbounds i8, ptr %3, i64 %idxprom20
  %7 = load i8, ptr %arrayidx24, align 1, !tbaa !29
  %conv25 = zext i8 %7 to i32
  %add26 = add nsw i32 %sum2.4, %conv25
  %cmp = icmp ult ptr %incdec.ptr4, %end
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !84

while.end:                                        ; preds = %if.end19, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %sum.2, %if.end19 ]
  %sum1.0.lcssa = phi i32 [ 0, %entry ], [ %add22, %if.end19 ]
  %sum2.0.lcssa = phi i32 [ 0, %entry ], [ %add26, %if.end19 ]
  %cmp27 = icmp sgt i32 %sum1.0.lcssa, %sum2.0.lcssa
  %spec.select = select i1 %cmp27, i32 %t2, i32 %t1
  %8 = tail call i32 @llvm.smin.i32(i32 %sum1.0.lcssa, i32 %sum2.0.lcssa)
  %add31 = add nsw i32 %8, %sum.0.lcssa
  %9 = load i32, ptr %s, align 4, !tbaa !5
  %add32 = add nsw i32 %add31, %9
  store i32 %add32, ptr %s, align 4, !tbaa !5
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { noinline nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { nofree noinline nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #7 = { nofree noinline norecurse nosync nounwind readonly uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }

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
!9 = !{!10, !6, i64 12}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !7, i64 32, !7, i64 44, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !11, i64 96, !7, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !6, i64 260}
!18 = !{!"", !19, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !7, i64 120, !6, i64 124, !11, i64 128, !11, i64 136, !6, i64 144, !6, i64 148, !20, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !19, i64 168, !19, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !6, i64 200, !6, i64 204, !6, i64 208, !6, i64 212, !20, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !20, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276}
!19 = !{!"long", !7, i64 0}
!20 = !{!"float", !7, i64 0}
!21 = !{!10, !6, i64 24}
!22 = !{!10, !6, i64 4}
!23 = !{!10, !6, i64 8}
!24 = !{!25, !6, i64 4}
!25 = !{!"huffcodetab", !6, i64 0, !6, i64 4, !11, i64 8, !11, i64 16}
!26 = distinct !{!26, !15, !16}
!27 = distinct !{!27, !15, !16}
!28 = distinct !{!28, !15, !16}
!29 = !{!7, !7, i64 0}
!30 = distinct !{!30, !15, !16}
!31 = !{!10, !6, i64 88}
!32 = distinct !{!32, !15, !16}
!33 = !{!34, !6, i64 0}
!34 = !{!"", !6, i64 0, !6, i64 4}
!35 = distinct !{!35, !15, !16}
!36 = !{!10, !6, i64 56}
!37 = !{!34, !6, i64 4}
!38 = distinct !{!38, !15, !16}
!39 = !{!10, !6, i64 60}
!40 = distinct !{!40, !15, !16}
!41 = distinct !{!41, !15, !16}
!42 = distinct !{!42, !15, !16}
!43 = !{!10, !6, i64 0}
!44 = distinct !{!44, !15, !16}
!45 = distinct !{!45, !15, !16}
!46 = distinct !{!46, !15, !16}
!47 = !{!10, !6, i64 80}
!48 = !{!10, !6, i64 84}
!49 = distinct !{!49, !15, !16}
!50 = distinct !{!50, !15, !16}
!51 = distinct !{!51, !15, !16}
!52 = distinct !{!52, !15, !16}
!53 = distinct !{!53, !15, !16, !54}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = !{!10, !6, i64 76}
!56 = !{!10, !6, i64 68}
!57 = !{!10, !6, i64 64}
!58 = distinct !{!58, !15, !16}
!59 = distinct !{!59, !15, !16}
!60 = distinct !{!60, !15, !16}
!61 = distinct !{!61, !15, !16}
!62 = distinct !{!62, !15, !16}
!63 = distinct !{!63, !15, !16}
!64 = !{!18, !6, i64 200}
!65 = !{!66, !6, i64 24}
!66 = !{!"gr_info_ss", !10, i64 0}
!67 = !{!66, !6, i64 68}
!68 = !{!66, !6, i64 64}
!69 = distinct !{!69, !15, !16}
!70 = distinct !{!70, !15, !16}
!71 = distinct !{!71, !15, !16}
!72 = distinct !{!72, !15, !16}
!73 = !{!10, !6, i64 16}
!74 = distinct !{!74, !15, !16}
!75 = distinct !{!75, !15, !16}
!76 = !{!25, !11, i64 16}
!77 = distinct !{!77, !15, !16}
!78 = !{!11, !11, i64 0}
!79 = distinct !{!79, !15, !16}
!80 = !{!25, !6, i64 0}
!81 = distinct !{!81, !15, !16}
!82 = distinct !{!82, !15, !16}
!83 = distinct !{!83, !15, !16}
!84 = distinct !{!84, !15, !16}
