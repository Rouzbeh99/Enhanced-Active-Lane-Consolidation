; ModuleID = 'ieeefloat.c'
source_filename = "ieeefloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local double @ConvertFromIeeeSingle(ptr nocapture noundef readonly %bytes) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %bytes, align 1, !tbaa !5
  %1 = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %1, 24
  %arrayidx2 = getelementptr inbounds i8, ptr %bytes, i64 1
  %2 = load i8, ptr %arrayidx2, align 1, !tbaa !5
  %3 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %3, 16
  %or = or i64 %shl6, %shl
  %arrayidx7 = getelementptr inbounds i8, ptr %bytes, i64 2
  %4 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %5 = zext i8 %4 to i64
  %shl11 = shl nuw nsw i64 %5, 8
  %or12 = or i64 %or, %shl11
  %arrayidx13 = getelementptr inbounds i8, ptr %bytes, i64 3
  %6 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %7 = zext i8 %6 to i64
  %or17 = or i64 %or12, %7
  %and18 = and i64 %or17, 2147483647
  %cmp = icmp eq i64 %and18, 0
  br i1 %cmp, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %and20 = lshr i64 %or, 23
  %trunc = trunc i64 %and20 to i8
  switch i8 %trunc, label %if.else32 [
    i8 -1, label %cleanup
    i8 0, label %if.then27
  ]

if.then27:                                        ; preds = %if.else
  %and28 = and i64 %or17, 8388607
  %conv29 = sitofp i64 %and28 to double
  %call = tail call fast double @ldexp(double noundef %conv29, i32 noundef -149) #6
  br label %cleanup

if.else32:                                        ; preds = %if.else
  %and33 = and i64 %or17, 8388607
  %add34 = or i64 %and33, 8388608
  %conv35 = sitofp i64 %add34 to double
  %8 = trunc i64 %and20 to i32
  %9 = and i32 %8, 255
  %conv38 = add nsw i32 %9, -150
  %call39 = tail call fast double @ldexp(double noundef %conv35, i32 noundef %conv38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry, %if.else32, %if.then27
  %f.0 = phi double [ %call, %if.then27 ], [ %call39, %if.else32 ], [ 0.000000e+00, %entry ], [ 0x7FF0000000000000, %if.else ]
  ret double %f.0
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @ConvertToIeeeSingle(double noundef %num, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #3 {
entry:
  %expon = alloca i32, align 4
  %cmp = fcmp fast olt double %num, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = fneg fast double %num
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sign.0 = phi i64 [ -9223372036854775808, %if.then ], [ 0, %entry ]
  %num.addr.0 = phi double [ %mul, %if.then ], [ %num, %entry ]
  %cmp1 = fcmp fast oeq double %num.addr.0, 0.000000e+00
  br i1 %cmp1, label %if.end28, label %if.else3

if.else3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %expon) #7
  %call = call fast double @frexp(double noundef %num.addr.0, ptr noundef nonnull %expon) #7
  %0 = load i32, ptr %expon, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %0, 130
  %cmp5 = fcmp fast olt double %call, 1.000000e+00
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else3
  %or = or i64 %sign.0, 2139095040
  br label %if.end27

if.else7:                                         ; preds = %if.else3
  %cmp8 = icmp slt i32 %0, -125
  br i1 %cmp8, label %if.then9, label %if.else17

if.then9:                                         ; preds = %if.else7
  %cmp10 = icmp ult i32 %0, -149
  br i1 %cmp10, label %if.end27, label %if.else12

if.else12:                                        ; preds = %if.then9
  %add = add nsw i32 %0, 149
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw nsw i64 1, %sh_prom
  %conv = sitofp i64 %shl to double
  %mul13 = fmul fast double %call, %conv
  %conv14 = fptosi double %mul13 to i64
  %or15 = or i64 %sign.0, %conv14
  br label %if.end27

if.else17:                                        ; preds = %if.else7
  %mul18 = fmul fast double %call, 0x4170000000000000
  %1 = tail call fast double @llvm.floor.f64(double %mul18)
  %conv19 = fptosi double %1 to i64
  %sub = add nsw i64 %conv19, -8388608
  %sub21 = add nsw i32 %0, 126
  %2 = zext i32 %sub21 to i64
  %shl23 = shl nuw nsw i64 %2, 23
  %or24 = or i64 %shl23, %sign.0
  %or25 = or i64 %or24, %sub
  br label %if.end27

if.end27:                                         ; preds = %if.else17, %if.then9, %if.else12, %if.then6
  %bits.2 = phi i64 [ %or, %if.then6 ], [ %or25, %if.else17 ], [ %or15, %if.else12 ], [ %sign.0, %if.then9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %expon) #7
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.end27
  %bits.3 = phi i64 [ %bits.2, %if.end27 ], [ 0, %if.end ]
  %3 = lshr i64 %bits.3, 24
  %conv29 = trunc i64 %3 to i8
  store i8 %conv29, ptr %bytes, align 1, !tbaa !5
  %4 = lshr i64 %bits.3, 16
  %conv31 = trunc i64 %4 to i8
  %arrayidx32 = getelementptr inbounds i8, ptr %bytes, i64 1
  store i8 %conv31, ptr %arrayidx32, align 1, !tbaa !5
  %5 = lshr i64 %bits.3, 8
  %conv34 = trunc i64 %5 to i8
  %arrayidx35 = getelementptr inbounds i8, ptr %bytes, i64 2
  store i8 %conv34, ptr %arrayidx35, align 1, !tbaa !5
  %conv36 = trunc i64 %bits.3 to i8
  %arrayidx37 = getelementptr inbounds i8, ptr %bytes, i64 3
  store i8 %conv36, ptr %arrayidx37, align 1, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #5

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local double @ConvertFromIeeeDouble(ptr nocapture noundef readonly %bytes) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %bytes, align 1, !tbaa !5
  %1 = zext i8 %0 to i64
  %shl = shl nuw nsw i64 %1, 24
  %arrayidx2 = getelementptr inbounds i8, ptr %bytes, i64 1
  %2 = load i8, ptr %arrayidx2, align 1, !tbaa !5
  %3 = zext i8 %2 to i64
  %shl6 = shl nuw nsw i64 %3, 16
  %or = or i64 %shl6, %shl
  %arrayidx7 = getelementptr inbounds i8, ptr %bytes, i64 2
  %4 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %5 = zext i8 %4 to i64
  %shl11 = shl nuw nsw i64 %5, 8
  %or12 = or i64 %or, %shl11
  %arrayidx13 = getelementptr inbounds i8, ptr %bytes, i64 3
  %6 = load i8, ptr %arrayidx13, align 1, !tbaa !5
  %7 = zext i8 %6 to i64
  %or17 = or i64 %or12, %7
  %arrayidx18 = getelementptr inbounds i8, ptr %bytes, i64 4
  %8 = load i8, ptr %arrayidx18, align 1, !tbaa !5
  %9 = zext i8 %8 to i64
  %shl22 = shl nuw nsw i64 %9, 24
  %arrayidx23 = getelementptr inbounds i8, ptr %bytes, i64 5
  %10 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %11 = zext i8 %10 to i64
  %shl27 = shl nuw nsw i64 %11, 16
  %or28 = or i64 %shl27, %shl22
  %arrayidx29 = getelementptr inbounds i8, ptr %bytes, i64 6
  %12 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %13 = zext i8 %12 to i64
  %shl33 = shl nuw nsw i64 %13, 8
  %or34 = or i64 %or28, %shl33
  %arrayidx35 = getelementptr inbounds i8, ptr %bytes, i64 7
  %14 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  %15 = zext i8 %14 to i64
  %or39 = or i64 %or34, %15
  %cmp = icmp eq i64 %or17, 0
  %cmp41 = icmp eq i64 %or39, 0
  %or.cond = select i1 %cmp, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.end85, label %if.else

if.else:                                          ; preds = %entry
  %and43 = lshr i64 %or, 20
  %shr = and i64 %and43, 2047
  switch i64 %shr, label %if.else66 [
    i64 2047, label %if.end85
    i64 0, label %if.then50
  ]

if.then50:                                        ; preds = %if.else
  %and51 = and i64 %or17, 1048575
  %conv52 = sitofp i64 %and51 to double
  %call = tail call fast double @ldexp(double noundef %conv52, i32 noundef -1042) #6
  %sub56 = add nsw i64 %or39, -2147483648
  %conv57 = sitofp i64 %sub56 to double
  %add58 = fadd fast double %conv57, 0x41E0000000000000
  %call64 = tail call fast double @ldexp(double noundef %add58, i32 noundef -1074) #6
  %add65 = fadd fast double %call64, %call
  br label %if.end85

if.else66:                                        ; preds = %if.else
  %and67 = and i64 %or17, 1048575
  %add68 = or i64 %and67, 1048576
  %conv69 = sitofp i64 %add68 to double
  %16 = trunc i64 %shr to i32
  %conv72 = add nsw i32 %16, -1043
  %call73 = tail call fast double @ldexp(double noundef %conv69, i32 noundef %conv72) #6
  %sub75 = add nsw i64 %or39, -2147483648
  %conv76 = sitofp i64 %sub75 to double
  %add77 = fadd fast double %conv76, 0x41E0000000000000
  %conv81 = add nsw i32 %16, -1075
  %call82 = tail call fast double @ldexp(double noundef %add77, i32 noundef %conv81) #6
  %add83 = fadd fast double %call82, %call73
  br label %if.end85

if.end85:                                         ; preds = %if.else, %entry, %if.else66, %if.then50
  %f.0 = phi double [ %add65, %if.then50 ], [ %add83, %if.else66 ], [ 0.000000e+00, %entry ], [ 0x7FF0000000000000, %if.else ]
  %17 = and i64 %1, 128
  %tobool.not = icmp eq i64 %17, 0
  %fneg = fneg fast double %f.0
  %spec.select = select i1 %tobool.not, double %f.0, double %fneg
  ret double %spec.select
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @ConvertToIeeeDouble(double noundef %num, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #3 {
entry:
  %expon = alloca i32, align 4
  %cmp = fcmp fast olt double %num, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = fneg fast double %num
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sign.0 = phi i64 [ -9223372036854775808, %if.then ], [ 0, %entry ]
  %num.addr.0 = phi double [ %mul, %if.then ], [ %num, %entry ]
  %cmp1 = fcmp fast oeq double %num.addr.0, 0.000000e+00
  br i1 %cmp1, label %if.end51, label %if.else3

if.else3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %expon) #7
  %call = call fast double @frexp(double noundef %num.addr.0, ptr noundef nonnull %expon) #7
  %0 = load i32, ptr %expon, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %0, 1026
  %cmp5 = fcmp fast olt double %call, 1.000000e+00
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else3
  %or = or i64 %sign.0, 2146435072
  br label %if.end50

if.else7:                                         ; preds = %if.else3
  %cmp8 = icmp slt i32 %0, -1021
  br i1 %cmp8, label %if.then9, label %if.else32

if.then9:                                         ; preds = %if.else7
  %cmp10 = icmp ult i32 %0, -1042
  br i1 %cmp10, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then9
  %cmp13 = icmp ult i32 %0, -1074
  br i1 %cmp13, label %if.end50, label %if.else15

if.else15:                                        ; preds = %if.then11
  %add12 = add nsw i32 %0, 1074
  %call16 = tail call fast double @ldexp(double noundef %call, i32 noundef %add12) #6
  %1 = tail call fast double @llvm.floor.f64(double %call16)
  %sub = fadd fast double %1, 0xC1E0000000000000
  %conv = fptosi double %sub to i64
  %add18 = add nsw i64 %conv, 2147483648
  br label %if.end50

if.else20:                                        ; preds = %if.then9
  %add = add nsw i32 %0, 1042
  %call21 = tail call fast double @ldexp(double noundef %call, i32 noundef %add) #6
  %2 = tail call fast double @llvm.floor.f64(double %call21)
  %conv22 = fptosi double %2 to i64
  %or23 = or i64 %sign.0, %conv22
  %conv24 = sitofp i64 %conv22 to double
  %sub25 = fsub fast double %call21, %conv24
  %call26 = tail call fast double @ldexp(double noundef %sub25, i32 noundef 32) #6
  %3 = tail call fast double @llvm.floor.f64(double %call26)
  %sub27 = fadd fast double %3, 0xC1E0000000000000
  %conv28 = fptosi double %sub27 to i64
  %add30 = add nsw i64 %conv28, 2147483648
  br label %if.end50

if.else32:                                        ; preds = %if.else7
  %call33 = tail call fast double @ldexp(double noundef %call, i32 noundef 21) #6
  %4 = tail call fast double @llvm.floor.f64(double %call33)
  %conv34 = fptosi double %4 to i64
  %sub35 = add nsw i64 %conv34, -1048576
  %sub36 = fadd fast double %call33, 0xC130000000000000
  %sub38 = add nsw i32 %0, 1022
  %5 = zext i32 %sub38 to i64
  %shl = shl nuw nsw i64 %5, 20
  %or40 = or i64 %shl, %sign.0
  %or41 = or i64 %sub35, %or40
  %conv42 = sitofp i64 %sub35 to double
  %sub43 = fsub fast double %sub36, %conv42
  %call44 = tail call fast double @ldexp(double noundef %sub43, i32 noundef 32) #6
  %6 = tail call fast double @llvm.floor.f64(double %call44)
  %sub45 = fadd fast double %6, 0xC1E0000000000000
  %conv46 = fptosi double %sub45 to i64
  %add48 = add nsw i64 %conv46, 2147483648
  br label %if.end50

if.end50:                                         ; preds = %if.else32, %if.then11, %if.else15, %if.else20, %if.then6
  %first.2 = phi i64 [ %or, %if.then6 ], [ %or41, %if.else32 ], [ %sign.0, %if.else15 ], [ %or23, %if.else20 ], [ %sign.0, %if.then11 ]
  %second.2 = phi i64 [ 0, %if.then6 ], [ %add48, %if.else32 ], [ %add18, %if.else15 ], [ %add30, %if.else20 ], [ 0, %if.then11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %expon) #7
  br label %if.end51

if.end51:                                         ; preds = %if.end, %if.end50
  %first.3 = phi i64 [ %first.2, %if.end50 ], [ 0, %if.end ]
  %second.3 = phi i64 [ %second.2, %if.end50 ], [ 0, %if.end ]
  %7 = lshr i64 %first.3, 24
  %conv52 = trunc i64 %7 to i8
  store i8 %conv52, ptr %bytes, align 1, !tbaa !5
  %8 = lshr i64 %first.3, 16
  %conv54 = trunc i64 %8 to i8
  %arrayidx55 = getelementptr inbounds i8, ptr %bytes, i64 1
  store i8 %conv54, ptr %arrayidx55, align 1, !tbaa !5
  %9 = lshr i64 %first.3, 8
  %conv57 = trunc i64 %9 to i8
  %arrayidx58 = getelementptr inbounds i8, ptr %bytes, i64 2
  store i8 %conv57, ptr %arrayidx58, align 1, !tbaa !5
  %conv59 = trunc i64 %first.3 to i8
  %arrayidx60 = getelementptr inbounds i8, ptr %bytes, i64 3
  store i8 %conv59, ptr %arrayidx60, align 1, !tbaa !5
  %10 = lshr i64 %second.3, 24
  %conv62 = trunc i64 %10 to i8
  %arrayidx63 = getelementptr inbounds i8, ptr %bytes, i64 4
  store i8 %conv62, ptr %arrayidx63, align 1, !tbaa !5
  %11 = lshr i64 %second.3, 16
  %conv65 = trunc i64 %11 to i8
  %arrayidx66 = getelementptr inbounds i8, ptr %bytes, i64 5
  store i8 %conv65, ptr %arrayidx66, align 1, !tbaa !5
  %12 = lshr i64 %second.3, 8
  %conv68 = trunc i64 %12 to i8
  %arrayidx69 = getelementptr inbounds i8, ptr %bytes, i64 6
  store i8 %conv68, ptr %arrayidx69, align 1, !tbaa !5
  %conv70 = trunc i64 %second.3 to i8
  %arrayidx71 = getelementptr inbounds i8, ptr %bytes, i64 7
  store i8 %conv70, ptr %arrayidx71, align 1, !tbaa !5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define dso_local double @ConvertFromIeeeExtended(ptr nocapture noundef readonly %bytes) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %bytes, align 1, !tbaa !5
  %1 = and i8 %0, 127
  %and = zext i8 %1 to i64
  %shl = shl nuw nsw i64 %and, 8
  %arrayidx1 = getelementptr inbounds i8, ptr %bytes, i64 1
  %2 = load i8, ptr %arrayidx1, align 1, !tbaa !5
  %conv2101 = zext i8 %2 to i64
  %or = or i64 %shl, %conv2101
  %arrayidx5 = getelementptr inbounds i8, ptr %bytes, i64 2
  %3 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %4 = zext i8 %3 to i64
  %shl9 = shl nuw nsw i64 %4, 24
  %arrayidx10 = getelementptr inbounds i8, ptr %bytes, i64 3
  %5 = load i8, ptr %arrayidx10, align 1, !tbaa !5
  %6 = zext i8 %5 to i64
  %shl14 = shl nuw nsw i64 %6, 16
  %or15 = or i64 %shl14, %shl9
  %arrayidx16 = getelementptr inbounds i8, ptr %bytes, i64 4
  %7 = load i8, ptr %arrayidx16, align 1, !tbaa !5
  %8 = zext i8 %7 to i64
  %shl20 = shl nuw nsw i64 %8, 8
  %or21 = or i64 %or15, %shl20
  %arrayidx22 = getelementptr inbounds i8, ptr %bytes, i64 5
  %9 = load i8, ptr %arrayidx22, align 1, !tbaa !5
  %10 = zext i8 %9 to i64
  %or26 = or i64 %or21, %10
  %arrayidx27 = getelementptr inbounds i8, ptr %bytes, i64 6
  %11 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %12 = zext i8 %11 to i64
  %shl31 = shl nuw nsw i64 %12, 24
  %arrayidx32 = getelementptr inbounds i8, ptr %bytes, i64 7
  %13 = load i8, ptr %arrayidx32, align 1, !tbaa !5
  %14 = zext i8 %13 to i64
  %shl36 = shl nuw nsw i64 %14, 16
  %or37 = or i64 %shl36, %shl31
  %arrayidx38 = getelementptr inbounds i8, ptr %bytes, i64 8
  %15 = load i8, ptr %arrayidx38, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %shl42 = shl nuw nsw i64 %16, 8
  %or43 = or i64 %or37, %shl42
  %arrayidx44 = getelementptr inbounds i8, ptr %bytes, i64 9
  %17 = load i8, ptr %arrayidx44, align 1, !tbaa !5
  %18 = zext i8 %17 to i64
  %or48 = or i64 %or43, %18
  %cmp = icmp eq i64 %or, 0
  %cmp50 = icmp eq i64 %or26, 0
  %or.cond = select i1 %cmp, i1 %cmp50, i1 false
  %cmp53 = icmp eq i64 %or48, 0
  %or.cond81 = select i1 %or.cond, i1 %cmp53, i1 false
  br i1 %or.cond81, label %if.end72, label %if.else

if.else:                                          ; preds = %entry
  %cmp55 = icmp eq i64 %or, 32767
  br i1 %cmp55, label %if.end72, label %if.else58

if.else58:                                        ; preds = %if.else
  %sub60 = add nsw i64 %or26, -2147483648
  %conv61 = sitofp i64 %sub60 to double
  %add = fadd fast double %conv61, 0x41E0000000000000
  %19 = trunc i64 %or to i32
  %conv63 = add nsw i32 %19, -16414
  %call = tail call fast double @ldexp(double noundef %add, i32 noundef %conv63) #6
  %sub65 = add nsw i64 %or48, -2147483648
  %conv66 = sitofp i64 %sub65 to double
  %add67 = fadd fast double %conv66, 0x41E0000000000000
  %conv69 = add nsw i32 %19, -16446
  %call70 = tail call fast double @ldexp(double noundef %add67, i32 noundef %conv69) #6
  %add71 = fadd fast double %call70, %call
  br label %if.end72

if.end72:                                         ; preds = %if.else, %entry, %if.else58
  %f.0 = phi double [ %add71, %if.else58 ], [ 0.000000e+00, %entry ], [ 0x7FF0000000000000, %if.else ]
  %fneg = fneg fast double %f.0
  %tobool.not111 = icmp slt i8 %0, 0
  %spec.select = select i1 %tobool.not111, double %fneg, double %f.0
  ret double %spec.select
}

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local void @ConvertToIeeeExtended(double noundef %num, ptr nocapture noundef writeonly %bytes) local_unnamed_addr #3 {
entry:
  %expon = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %expon) #7
  %cmp = fcmp fast olt double %num, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = fneg fast double %num
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sign.0 = phi i32 [ 32768, %if.then ], [ 0, %entry ]
  %num.addr.0 = phi double [ %mul, %if.then ], [ %num, %entry ]
  %cmp1 = fcmp fast oeq double %num.addr.0, 0.000000e+00
  br i1 %cmp1, label %if.end23, label %if.else3

if.else3:                                         ; preds = %if.end
  %call = call fast double @frexp(double noundef %num.addr.0, ptr noundef nonnull %expon) #7
  %0 = load i32, ptr %expon, align 4, !tbaa !8
  %cmp4 = icmp slt i32 %0, 16385
  %cmp5 = fcmp fast olt double %call, 1.000000e+00
  %or.cond = select i1 %cmp4, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.else7, label %if.then6

if.then6:                                         ; preds = %if.else3
  %or = or i32 %sign.0, 32767
  br label %if.end23

if.else7:                                         ; preds = %if.else3
  %add = add nsw i32 %0, 16382
  %cmp8 = icmp slt i32 %0, -16382
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.else7
  %call10 = tail call fast double @ldexp(double noundef %call, i32 noundef %add) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.else7
  %storemerge = phi i32 [ 0, %if.then9 ], [ %add, %if.else7 ]
  %fMant.0 = phi double [ %call10, %if.then9 ], [ %call, %if.else7 ]
  %or12 = or i32 %storemerge, %sign.0
  %call13 = tail call fast double @ldexp(double noundef %fMant.0, i32 noundef 32) #6
  %1 = tail call fast double @llvm.floor.f64(double %call13)
  %sub = fadd fast double %1, 0xC1E0000000000000
  %conv = fptosi double %sub to i64
  %add15 = add nsw i64 %conv, 2147483648
  %sub16 = fsub fast double %call13, %1
  %call17 = tail call fast double @ldexp(double noundef %sub16, i32 noundef 32) #6
  %2 = tail call fast double @llvm.floor.f64(double %call17)
  %sub18 = fadd fast double %2, 0xC1E0000000000000
  %conv19 = fptosi double %sub18 to i64
  %add21 = add nsw i64 %conv19, 2147483648
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then6, %if.end11
  %3 = phi i32 [ %or12, %if.end11 ], [ %or, %if.then6 ], [ 0, %if.end ]
  %hiMant.0 = phi i64 [ %add15, %if.end11 ], [ 0, %if.then6 ], [ 0, %if.end ]
  %loMant.0 = phi i64 [ %add21, %if.end11 ], [ 0, %if.then6 ], [ 0, %if.end ]
  %4 = lshr i32 %3, 8
  %conv24 = trunc i32 %4 to i8
  store i8 %conv24, ptr %bytes, align 1, !tbaa !5
  %conv25 = trunc i32 %3 to i8
  %arrayidx26 = getelementptr inbounds i8, ptr %bytes, i64 1
  store i8 %conv25, ptr %arrayidx26, align 1, !tbaa !5
  %shr27 = lshr i64 %hiMant.0, 24
  %conv28 = trunc i64 %shr27 to i8
  %arrayidx29 = getelementptr inbounds i8, ptr %bytes, i64 2
  store i8 %conv28, ptr %arrayidx29, align 1, !tbaa !5
  %shr30 = lshr i64 %hiMant.0, 16
  %conv31 = trunc i64 %shr30 to i8
  %arrayidx32 = getelementptr inbounds i8, ptr %bytes, i64 3
  store i8 %conv31, ptr %arrayidx32, align 1, !tbaa !5
  %shr33 = lshr i64 %hiMant.0, 8
  %conv34 = trunc i64 %shr33 to i8
  %arrayidx35 = getelementptr inbounds i8, ptr %bytes, i64 4
  store i8 %conv34, ptr %arrayidx35, align 1, !tbaa !5
  %conv36 = trunc i64 %hiMant.0 to i8
  %arrayidx37 = getelementptr inbounds i8, ptr %bytes, i64 5
  store i8 %conv36, ptr %arrayidx37, align 1, !tbaa !5
  %shr38 = lshr i64 %loMant.0, 24
  %conv39 = trunc i64 %shr38 to i8
  %arrayidx40 = getelementptr inbounds i8, ptr %bytes, i64 6
  store i8 %conv39, ptr %arrayidx40, align 1, !tbaa !5
  %shr41 = lshr i64 %loMant.0, 16
  %conv42 = trunc i64 %shr41 to i8
  %arrayidx43 = getelementptr inbounds i8, ptr %bytes, i64 7
  store i8 %conv42, ptr %arrayidx43, align 1, !tbaa !5
  %shr44 = lshr i64 %loMant.0, 8
  %conv45 = trunc i64 %shr44 to i8
  %arrayidx46 = getelementptr inbounds i8, ptr %bytes, i64 8
  store i8 %conv45, ptr %arrayidx46, align 1, !tbaa !5
  %conv47 = trunc i64 %loMant.0 to i8
  %arrayidx48 = getelementptr inbounds i8, ptr %bytes, i64 9
  store i8 %conv47, ptr %arrayidx48, align 1, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %expon) #7
  ret void
}

attributes #0 = { argmemonly mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #3 = { mustprogress nofree noinline nounwind willreturn uwtable "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #4 = { mustprogress nofree nounwind willreturn "approx-func-fp-math"="true" "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "frame-pointer"="none" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
