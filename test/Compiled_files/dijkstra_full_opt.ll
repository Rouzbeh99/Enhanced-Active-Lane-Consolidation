; ModuleID = 'dijkstra.c'
source_filename = "dijkstra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@secret = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"secret\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [11 x i8] c"dijkstra.c\00", section "llvm.metadata"
@in = dso_local local_unnamed_addr global [512 x [512 x i32]] zeroinitializer, align 16, !dbg !8

; Function Attrs: nofree nosync nounwind uwtable
define dso_local i32 @dijkstra(i32 noundef %n, i32 noundef %s, i32 noundef %t, [512 x i32]* nocapture noundef readonly %e) local_unnamed_addr #0 !dbg !19 {
entry:
  %vis = alloca [512 x i32], align 16
  %dis = alloca [512 x i32], align 16
  %bestj = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %n, metadata !26, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %s, metadata !27, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata i32 %t, metadata !28, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.value(metadata [512 x i32]* %e, metadata !29, metadata !DIExpression()), !dbg !43
  %0 = bitcast [512 x i32]* %vis to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %0) #9, !dbg !44
  call void @llvm.dbg.declare(metadata [512 x i32]* %vis, metadata !30, metadata !DIExpression()), !dbg !45
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %0, i8 0, i64 2048, i1 false), !dbg !45
  %1 = bitcast [512 x i32]* %dis to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !46
  call void @llvm.dbg.declare(metadata [512 x i32]* %dis, metadata !31, metadata !DIExpression()), !dbg !47
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %1, i8 0, i64 2048, i1 false), !dbg !47
  %2 = bitcast i32* %bestj to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #9, !dbg !48
  call void @llvm.dbg.value(metadata i32* %bestj, metadata !32, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.var.annotation(i8* nonnull %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* null), !dbg !48
  call void @llvm.dbg.value(metadata i32 -1, metadata !32, metadata !DIExpression()), !dbg !43
  %idxprom = sext i32 %s to i64, !dbg !49
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %idxprom, !dbg !49
  store i32 1, i32* %arrayidx, align 4, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()), !dbg !55
  %cmp107 = icmp sgt i32 %n, 0, !dbg !56
  br i1 %cmp107, label %for.body.preheader, label %for.cond.cleanup18, !dbg !58

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !56
  %min.iters.check = icmp ult i32 %n, 8, !dbg !58
  br i1 %min.iters.check, label %for.body.preheader159, label %vector.ph, !dbg !58

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288, !dbg !58
  %3 = add nsw i64 %n.vec, -8, !dbg !58
  %4 = lshr exact i64 %3, 3, !dbg !58
  %5 = add nuw nsw i64 %4, 1, !dbg !58
  %xtraiter = and i64 %5, 1, !dbg !58
  %6 = icmp eq i64 %3, 0, !dbg !58
  br i1 %6, label %middle.block.unr-lcssa, label %vector.ph.new, !dbg !58

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %5, 4611686018427387902, !dbg !58
  br label %vector.body, !dbg !58

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ], !dbg !59
  %niter = phi i64 [ 0, %vector.ph.new ], [ %niter.next.1, %vector.body ]
  %7 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %index, !dbg !59
  %8 = bitcast i32* %7 to <4 x i32>*, !dbg !60
  %wide.load = load <4 x i32>, <4 x i32>* %8, align 4, !dbg !60, !tbaa !51
  %9 = getelementptr inbounds i32, i32* %7, i64 4, !dbg !60
  %10 = bitcast i32* %9 to <4 x i32>*, !dbg !60
  %wide.load158 = load <4 x i32>, <4 x i32>* %10, align 4, !dbg !60, !tbaa !51
  %11 = icmp eq <4 x i32> %wide.load, zeroinitializer, !dbg !63
  %12 = icmp eq <4 x i32> %wide.load158, zeroinitializer, !dbg !63
  %13 = select <4 x i1> %11, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load, !dbg !64
  %14 = select <4 x i1> %12, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load158, !dbg !64
  %15 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %index, !dbg !59
  %16 = bitcast i32* %15 to <4 x i32>*, !dbg !65
  store <4 x i32> %13, <4 x i32>* %16, align 16, !dbg !65
  %17 = getelementptr inbounds i32, i32* %15, i64 4, !dbg !65
  %18 = bitcast i32* %17 to <4 x i32>*, !dbg !65
  store <4 x i32> %14, <4 x i32>* %18, align 16, !dbg !65
  %index.next = or i64 %index, 8, !dbg !59
  %19 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %index.next, !dbg !59
  %20 = bitcast i32* %19 to <4 x i32>*, !dbg !60
  %wide.load.1 = load <4 x i32>, <4 x i32>* %20, align 4, !dbg !60, !tbaa !51
  %21 = getelementptr inbounds i32, i32* %19, i64 4, !dbg !60
  %22 = bitcast i32* %21 to <4 x i32>*, !dbg !60
  %wide.load158.1 = load <4 x i32>, <4 x i32>* %22, align 4, !dbg !60, !tbaa !51
  %23 = icmp eq <4 x i32> %wide.load.1, zeroinitializer, !dbg !63
  %24 = icmp eq <4 x i32> %wide.load158.1, zeroinitializer, !dbg !63
  %25 = select <4 x i1> %23, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load.1, !dbg !64
  %26 = select <4 x i1> %24, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load158.1, !dbg !64
  %27 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %index.next, !dbg !59
  %28 = bitcast i32* %27 to <4 x i32>*, !dbg !65
  store <4 x i32> %25, <4 x i32>* %28, align 16, !dbg !65
  %29 = getelementptr inbounds i32, i32* %27, i64 4, !dbg !65
  %30 = bitcast i32* %29 to <4 x i32>*, !dbg !65
  store <4 x i32> %26, <4 x i32>* %30, align 16, !dbg !65
  %index.next.1 = add nuw i64 %index, 16, !dbg !59
  %niter.next.1 = add i64 %niter, 2, !dbg !59
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !59
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !dbg !59, !llvm.loop !67

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !59
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil, !dbg !59

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %31 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %index.unr, !dbg !59
  %32 = bitcast i32* %31 to <4 x i32>*, !dbg !60
  %wide.load.epil = load <4 x i32>, <4 x i32>* %32, align 4, !dbg !60, !tbaa !51
  %33 = getelementptr inbounds i32, i32* %31, i64 4, !dbg !60
  %34 = bitcast i32* %33 to <4 x i32>*, !dbg !60
  %wide.load158.epil = load <4 x i32>, <4 x i32>* %34, align 4, !dbg !60, !tbaa !51
  %35 = icmp eq <4 x i32> %wide.load.epil, zeroinitializer, !dbg !63
  %36 = icmp eq <4 x i32> %wide.load158.epil, zeroinitializer, !dbg !63
  %37 = select <4 x i1> %35, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load.epil, !dbg !64
  %38 = select <4 x i1> %36, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load158.epil, !dbg !64
  %39 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %index.unr, !dbg !59
  %40 = bitcast i32* %39 to <4 x i32>*, !dbg !65
  store <4 x i32> %37, <4 x i32>* %40, align 16, !dbg !65
  %41 = getelementptr inbounds i32, i32* %39, i64 4, !dbg !65
  %42 = bitcast i32* %41 to <4 x i32>*, !dbg !65
  store <4 x i32> %38, <4 x i32>* %42, align 16, !dbg !65
  br label %middle.block, !dbg !58

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count, !dbg !58
  br i1 %cmp.n, label %for.cond16.preheader, label %for.body.preheader159, !dbg !58

for.body.preheader159:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body, !dbg !58

for.cond16.preheader:                             ; preds = %for.body, %middle.block
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !71
  br i1 %cmp107, label %for.cond20.preheader.us.us.preheader, label %for.cond.cleanup18, !dbg !72

for.cond20.preheader.us.us.preheader:             ; preds = %for.cond16.preheader
  %43 = load i32, i32* @secret, align 4
  %44 = sext i32 %43 to i64, !dbg !72
  %wide.trip.count150 = zext i32 %n to i64
  br label %for.cond20.preheader.us.us, !dbg !72

for.cond20.preheader.us.us:                       ; preds = %for.cond20.preheader.us.us.preheader, %for.cond40.for.cond.cleanup42_crit_edge.us.us
  %i15.0123.us.us = phi i32 [ %inc73.us.us, %for.cond40.for.cond.cleanup42_crit_edge.us.us ], [ 0, %for.cond20.preheader.us.us.preheader ]
  %bestj.promoted120122.us.us = phi i32 [ %bestj.promoted118.us.us, %for.cond40.for.cond.cleanup42_crit_edge.us.us ], [ -1, %for.cond20.preheader.us.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %i15.0123.us.us, metadata !35, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !73
  br label %for.body23.us.us, !dbg !74

for.body43.us.us:                                 ; preds = %for.cond20.for.cond40.preheader_crit_edge.us.us, %for.inc69.us.us
  %indvars.iv152 = phi i64 [ 0, %for.cond20.for.cond40.preheader_crit_edge.us.us ], [ %indvars.iv.next153, %for.inc69.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv152, metadata !41, metadata !DIExpression()), !dbg !75
  %arrayidx45.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %indvars.iv152, !dbg !76
  %45 = load i32, i32* %arrayidx45.us.us, align 4, !dbg !76, !tbaa !51
  %tobool46.not.us.us = icmp eq i32 %45, 0, !dbg !76
  br i1 %tobool46.not.us.us, label %land.lhs.true47.us.us, label %for.inc69.us.us, !dbg !80

land.lhs.true47.us.us:                            ; preds = %for.body43.us.us
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()), !dbg !43
  %46 = load i32, i32* %arrayidx49.us.us, align 4, !dbg !81, !tbaa !51
  %arrayidx53.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom48.us.us, i64 %indvars.iv152, !dbg !82
  %47 = load i32, i32* %arrayidx53.us.us, align 4, !dbg !82, !tbaa !51
  %add54.us.us = add nsw i32 %47, %46, !dbg !83
  %arrayidx56.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv152, !dbg !84
  %48 = load i32, i32* %arrayidx56.us.us, align 4, !dbg !84, !tbaa !51
  %cmp57.us.us = icmp slt i32 %add54.us.us, %48, !dbg !85
  %spec.store.select.us.us = select i1 %cmp57.us.us, i32 %add54.us.us, i32 %48, !dbg !86
  store i32 %spec.store.select.us.us, i32* %arrayidx56.us.us, align 4, !dbg !87
  br label %for.inc69.us.us, !dbg !86

for.inc69.us.us:                                  ; preds = %land.lhs.true47.us.us, %for.body43.us.us
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1, !dbg !88
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next153, metadata !41, metadata !DIExpression()), !dbg !75
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count150, !dbg !89
  br i1 %exitcond156.not, label %for.cond40.for.cond.cleanup42_crit_edge.us.us, label %for.body43.us.us, !dbg !90, !llvm.loop !91

for.body23.us.us:                                 ; preds = %for.inc36.us.us, %for.cond20.preheader.us.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %for.inc36.us.us ], [ 0, %for.cond20.preheader.us.us ]
  %bestj.promoted119.us.us = phi i32 [ %bestj.promoted118.us.us, %for.inc36.us.us ], [ %bestj.promoted120122.us.us, %for.cond20.preheader.us.us ]
  %add110112.us.us = phi i32 [ %add109.us.us, %for.inc36.us.us ], [ %bestj.promoted120122.us.us, %for.cond20.preheader.us.us ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146, metadata !37, metadata !DIExpression()), !dbg !73
  %arrayidx25.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %indvars.iv146, !dbg !93
  %49 = load i32, i32* %arrayidx25.us.us, align 4, !dbg !93, !tbaa !51
  %tobool.not.us.us = icmp eq i32 %49, 0, !dbg !93
  br i1 %tobool.not.us.us, label %land.lhs.true.us.us, label %for.inc36.us.us, !dbg !97

land.lhs.true.us.us:                              ; preds = %for.body23.us.us
  call void @llvm.dbg.value(metadata i32 %add110112.us.us, metadata !32, metadata !DIExpression()), !dbg !43
  %cmp26.us.us = icmp slt i32 %add110112.us.us, 0, !dbg !98
  br i1 %cmp26.us.us, label %if.then32.us.us, label %lor.lhs.false.us.us, !dbg !99

lor.lhs.false.us.us:                              ; preds = %land.lhs.true.us.us
  %arrayidx28.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv146, !dbg !100
  %50 = load i32, i32* %arrayidx28.us.us, align 4, !dbg !100, !tbaa !51
  %idxprom29106.us.us = zext i32 %add110112.us.us to i64, !dbg !101
  %arrayidx30.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom29106.us.us, !dbg !101
  %51 = load i32, i32* %arrayidx30.us.us, align 4, !dbg !101, !tbaa !51
  %cmp31.us.us = icmp slt i32 %50, %51, !dbg !102
  br i1 %cmp31.us.us, label %if.then32.us.us, label %for.inc36.us.us, !dbg !103

if.then32.us.us:                                  ; preds = %lor.lhs.false.us.us, %land.lhs.true.us.us
  %52 = add nsw i64 %indvars.iv146, %44, !dbg !104
  call void @llvm.dbg.value(metadata i64 %52, metadata !32, metadata !DIExpression()), !dbg !43
  %53 = trunc i64 %52 to i32, !dbg !106
  store i32 %53, i32* %bestj, align 4, !dbg !106, !tbaa !51
  %arrayidx34.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %vis, i64 0, i64 %52, !dbg !107
  store i32 1, i32* %arrayidx34.us.us, align 4, !dbg !108, !tbaa !51
  br label %for.inc36.us.us, !dbg !109

for.inc36.us.us:                                  ; preds = %if.then32.us.us, %lor.lhs.false.us.us, %for.body23.us.us
  %bestj.promoted118.us.us = phi i32 [ %bestj.promoted119.us.us, %for.body23.us.us ], [ %bestj.promoted119.us.us, %lor.lhs.false.us.us ], [ %53, %if.then32.us.us ]
  %add109.us.us = phi i32 [ %add110112.us.us, %for.body23.us.us ], [ %add110112.us.us, %lor.lhs.false.us.us ], [ %53, %if.then32.us.us ]
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1, !dbg !110
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147, metadata !37, metadata !DIExpression()), !dbg !73
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150, !dbg !111
  br i1 %exitcond151.not, label %for.cond20.for.cond40.preheader_crit_edge.us.us, label %for.body23.us.us, !dbg !74, !llvm.loop !112

for.cond20.for.cond40.preheader_crit_edge.us.us:  ; preds = %for.inc36.us.us
  %idxprom48.us.us = sext i32 %bestj.promoted118.us.us to i64
  %arrayidx49.us.us = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom48.us.us
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !75
  br label %for.body43.us.us, !dbg !90

for.cond40.for.cond.cleanup42_crit_edge.us.us:    ; preds = %for.inc69.us.us
  %inc73.us.us = add nuw nsw i32 %i15.0123.us.us, 1, !dbg !114
  call void @llvm.dbg.value(metadata i32 %inc73.us.us, metadata !35, metadata !DIExpression()), !dbg !71
  %exitcond157.not = icmp eq i32 %inc73.us.us, %n, !dbg !115
  br i1 %exitcond157.not, label %for.cond.cleanup18, label %for.cond20.preheader.us.us, !dbg !72, !llvm.loop !116

for.body:                                         ; preds = %for.body.preheader159, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader159 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !33, metadata !DIExpression()), !dbg !55
  %arrayidx5 = getelementptr inbounds [512 x i32], [512 x i32]* %e, i64 %idxprom, i64 %indvars.iv, !dbg !60
  %54 = load i32, i32* %arrayidx5, align 4, !dbg !60, !tbaa !51
  %cmp6 = icmp eq i32 %54, 0, !dbg !63
  %spec.select = select i1 %cmp6, i32 2147483647, i32 %54, !dbg !64
  %55 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %indvars.iv, !dbg !118
  store i32 %spec.select, i32* %55, align 4, !dbg !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !59
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !33, metadata !DIExpression()), !dbg !55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !56
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body, !dbg !58, !llvm.loop !119

for.cond.cleanup18:                               ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us, %entry, %for.cond16.preheader
  %idxprom75 = sext i32 %t to i64, !dbg !121
  %arrayidx76 = getelementptr inbounds [512 x i32], [512 x i32]* %dis, i64 0, i64 %idxprom75, !dbg !121
  %56 = load i32, i32* %arrayidx76, align 4, !dbg !121, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #9, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %0) #9, !dbg !122
  ret i32 %56, !dbg !123
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #4

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** nocapture noundef readnone %argv) local_unnamed_addr #5 !dbg !124 {
entry:
  %vis.i = alloca [512 x i32], align 16
  %dis.i = alloca [512 x i32], align 16
  %bestj.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !131, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata i8** %argv, metadata !132, metadata !DIExpression()), !dbg !140
  %call = tail call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* noundef null) #9, !dbg !141
  tail call void @srand(i32 noundef %call) #9, !dbg !142
  %0 = load i32, i32* @secret, align 4, !dbg !143, !tbaa !51
  %sub = and i32 %0, -256, !dbg !144
  store i32 %sub, i32* @secret, align 4, !dbg !144, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !145
  br label %for.cond3.preheader, !dbg !146

for.cond3.preheader:                              ; preds = %entry, %for.cond.cleanup6
  %indvars.iv25 = phi i64 [ 0, %entry ], [ %indvars.iv.next26, %for.cond.cleanup6 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !133, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()), !dbg !147
  br label %for.body7, !dbg !148

for.cond.cleanup:                                 ; preds = %for.cond.cleanup6
  call void @llvm.dbg.value(metadata i32 512, metadata !26, metadata !DIExpression()) #9, !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()) #9, !dbg !149
  call void @llvm.dbg.value(metadata i32 511, metadata !28, metadata !DIExpression()) #9, !dbg !149
  %1 = bitcast [512 x i32]* %vis.i to i8*, !dbg !151
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !151
  call void @llvm.dbg.declare(metadata [512 x i32]* %vis.i, metadata !30, metadata !DIExpression()) #9, !dbg !152
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %1, i8 0, i64 2048, i1 false) #9, !dbg !152
  %2 = bitcast [512 x i32]* %dis.i to i8*, !dbg !153
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %2) #9, !dbg !153
  call void @llvm.dbg.declare(metadata [512 x i32]* %dis.i, metadata !31, metadata !DIExpression()) #9, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(2048) %2, i8 0, i64 2048, i1 false) #9, !dbg !154
  %3 = bitcast i32* %bestj.i to i8*, !dbg !155
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #9, !dbg !155
  call void @llvm.dbg.value(metadata i32* %bestj.i, metadata !32, metadata !DIExpression(DW_OP_deref)) #9, !dbg !149
  call void @llvm.var.annotation(i8* nonnull %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* null) #9, !dbg !155
  call void @llvm.dbg.value(metadata i32 -1, metadata !32, metadata !DIExpression()) #9, !dbg !149
  %arrayidx.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 0, !dbg !156
  store i32 1, i32* %arrayidx.i, align 16, !dbg !157, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !33, metadata !DIExpression()) #9, !dbg !158
  br label %vector.body, !dbg !159

vector.body:                                      ; preds = %vector.body, %for.cond.cleanup
  %index = phi i64 [ 0, %for.cond.cleanup ], [ %index.next.1, %vector.body ], !dbg !160
  %4 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 0, i64 %index, !dbg !160
  %5 = bitcast i32* %4 to <4 x i32>*, !dbg !161
  %wide.load = load <4 x i32>, <4 x i32>* %5, align 16, !dbg !161, !tbaa !51
  %6 = getelementptr inbounds i32, i32* %4, i64 4, !dbg !161
  %7 = bitcast i32* %6 to <4 x i32>*, !dbg !161
  %wide.load29 = load <4 x i32>, <4 x i32>* %7, align 16, !dbg !161, !tbaa !51
  %8 = icmp eq <4 x i32> %wide.load, zeroinitializer, !dbg !162
  %9 = icmp eq <4 x i32> %wide.load29, zeroinitializer, !dbg !162
  %10 = select <4 x i1> %8, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load, !dbg !163
  %11 = select <4 x i1> %9, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load29, !dbg !163
  %12 = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %index, !dbg !160
  %13 = bitcast i32* %12 to <4 x i32>*, !dbg !164
  store <4 x i32> %10, <4 x i32>* %13, align 16, !dbg !164
  %14 = getelementptr inbounds i32, i32* %12, i64 4, !dbg !164
  %15 = bitcast i32* %14 to <4 x i32>*, !dbg !164
  store <4 x i32> %11, <4 x i32>* %15, align 16, !dbg !164
  %index.next = or i64 %index, 8, !dbg !160
  %16 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 0, i64 %index.next, !dbg !160
  %17 = bitcast i32* %16 to <4 x i32>*, !dbg !161
  %wide.load.1 = load <4 x i32>, <4 x i32>* %17, align 16, !dbg !161, !tbaa !51
  %18 = getelementptr inbounds i32, i32* %16, i64 4, !dbg !161
  %19 = bitcast i32* %18 to <4 x i32>*, !dbg !161
  %wide.load29.1 = load <4 x i32>, <4 x i32>* %19, align 16, !dbg !161, !tbaa !51
  %20 = icmp eq <4 x i32> %wide.load.1, zeroinitializer, !dbg !162
  %21 = icmp eq <4 x i32> %wide.load29.1, zeroinitializer, !dbg !162
  %22 = select <4 x i1> %20, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load.1, !dbg !163
  %23 = select <4 x i1> %21, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %wide.load29.1, !dbg !163
  %24 = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %index.next, !dbg !160
  %25 = bitcast i32* %24 to <4 x i32>*, !dbg !164
  store <4 x i32> %22, <4 x i32>* %25, align 16, !dbg !164
  %26 = getelementptr inbounds i32, i32* %24, i64 4, !dbg !164
  %27 = bitcast i32* %26 to <4 x i32>*, !dbg !164
  store <4 x i32> %23, <4 x i32>* %27, align 16, !dbg !164
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !160
  %28 = icmp eq i64 %index.next.1, 512, !dbg !160
  br i1 %28, label %for.cond16.preheader.i, label %vector.body, !dbg !160, !llvm.loop !165

for.cond16.preheader.i:                           ; preds = %vector.body
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()) #9, !dbg !167
  %29 = load i32, i32* @secret, align 4
  %30 = sext i32 %29 to i64, !dbg !168
  br label %for.cond20.preheader.us.us.i, !dbg !168

for.cond20.preheader.us.us.i:                     ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us.i, %for.cond16.preheader.i
  %i15.0123.us.us.i = phi i32 [ %inc73.us.us.i, %for.cond40.for.cond.cleanup42_crit_edge.us.us.i ], [ 0, %for.cond16.preheader.i ]
  %bestj.promoted120122.us.us.i = phi i32 [ %bestj.promoted118.us.us.i, %for.cond40.for.cond.cleanup42_crit_edge.us.us.i ], [ -1, %for.cond16.preheader.i ]
  call void @llvm.dbg.value(metadata i32 %i15.0123.us.us.i, metadata !35, metadata !DIExpression()) #9, !dbg !167
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()) #9, !dbg !169
  br label %for.body23.us.us.i, !dbg !170

for.body43.us.us.i:                               ; preds = %for.cond20.for.cond40.preheader_crit_edge.us.us.i, %for.inc69.us.us.i
  %indvars.iv152.i = phi i64 [ 0, %for.cond20.for.cond40.preheader_crit_edge.us.us.i ], [ %indvars.iv.next153.i, %for.inc69.us.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv152.i, metadata !41, metadata !DIExpression()) #9, !dbg !171
  %arrayidx45.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %indvars.iv152.i, !dbg !172
  %31 = load i32, i32* %arrayidx45.us.us.i, align 4, !dbg !172, !tbaa !51
  %tobool46.not.us.us.i = icmp eq i32 %31, 0, !dbg !172
  br i1 %tobool46.not.us.us.i, label %land.lhs.true47.us.us.i, label %for.inc69.us.us.i, !dbg !173

land.lhs.true47.us.us.i:                          ; preds = %for.body43.us.us.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !32, metadata !DIExpression()) #9, !dbg !149
  %32 = load i32, i32* %arrayidx49.us.us.i, align 4, !dbg !174, !tbaa !51
  %arrayidx53.us.us.i = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 %idxprom48.us.us.i, i64 %indvars.iv152.i, !dbg !175
  %33 = load i32, i32* %arrayidx53.us.us.i, align 4, !dbg !175, !tbaa !51
  %add54.us.us.i = add nsw i32 %33, %32, !dbg !176
  %arrayidx56.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %indvars.iv152.i, !dbg !177
  %34 = load i32, i32* %arrayidx56.us.us.i, align 4, !dbg !177, !tbaa !51
  %cmp57.us.us.i = icmp slt i32 %add54.us.us.i, %34, !dbg !178
  %spec.store.select.us.us.i = select i1 %cmp57.us.us.i, i32 %add54.us.us.i, i32 %34, !dbg !179
  store i32 %spec.store.select.us.us.i, i32* %arrayidx56.us.us.i, align 4, !dbg !180
  br label %for.inc69.us.us.i, !dbg !179

for.inc69.us.us.i:                                ; preds = %land.lhs.true47.us.us.i, %for.body43.us.us.i
  %indvars.iv.next153.i = add nuw nsw i64 %indvars.iv152.i, 1, !dbg !181
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next153.i, metadata !41, metadata !DIExpression()) #9, !dbg !171
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next153.i, 512, !dbg !182
  br i1 %exitcond156.not.i, label %for.cond40.for.cond.cleanup42_crit_edge.us.us.i, label %for.body43.us.us.i, !dbg !183, !llvm.loop !184

for.body23.us.us.i:                               ; preds = %for.inc36.us.us.i, %for.cond20.preheader.us.us.i
  %indvars.iv146.i = phi i64 [ %indvars.iv.next147.i, %for.inc36.us.us.i ], [ 0, %for.cond20.preheader.us.us.i ]
  %bestj.promoted119.us.us.i = phi i32 [ %bestj.promoted118.us.us.i, %for.inc36.us.us.i ], [ %bestj.promoted120122.us.us.i, %for.cond20.preheader.us.us.i ]
  %add110112.us.us.i = phi i32 [ %add109.us.us.i, %for.inc36.us.us.i ], [ %bestj.promoted120122.us.us.i, %for.cond20.preheader.us.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv146.i, metadata !37, metadata !DIExpression()) #9, !dbg !169
  %arrayidx25.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %indvars.iv146.i, !dbg !186
  %35 = load i32, i32* %arrayidx25.us.us.i, align 4, !dbg !186, !tbaa !51
  %tobool.not.us.us.i = icmp eq i32 %35, 0, !dbg !186
  br i1 %tobool.not.us.us.i, label %land.lhs.true.us.us.i, label %for.inc36.us.us.i, !dbg !187

land.lhs.true.us.us.i:                            ; preds = %for.body23.us.us.i
  call void @llvm.dbg.value(metadata i32 %add110112.us.us.i, metadata !32, metadata !DIExpression()) #9, !dbg !149
  %cmp26.us.us.i = icmp slt i32 %add110112.us.us.i, 0, !dbg !188
  br i1 %cmp26.us.us.i, label %if.then32.us.us.i, label %lor.lhs.false.us.us.i, !dbg !189

lor.lhs.false.us.us.i:                            ; preds = %land.lhs.true.us.us.i
  %arrayidx28.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %indvars.iv146.i, !dbg !190
  %36 = load i32, i32* %arrayidx28.us.us.i, align 4, !dbg !190, !tbaa !51
  %idxprom29106.us.us.i = zext i32 %add110112.us.us.i to i64, !dbg !191
  %arrayidx30.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %idxprom29106.us.us.i, !dbg !191
  %37 = load i32, i32* %arrayidx30.us.us.i, align 4, !dbg !191, !tbaa !51
  %cmp31.us.us.i = icmp slt i32 %36, %37, !dbg !192
  br i1 %cmp31.us.us.i, label %if.then32.us.us.i, label %for.inc36.us.us.i, !dbg !193

if.then32.us.us.i:                                ; preds = %lor.lhs.false.us.us.i, %land.lhs.true.us.us.i
  %38 = add nsw i64 %indvars.iv146.i, %30, !dbg !194
  call void @llvm.dbg.value(metadata i64 %38, metadata !32, metadata !DIExpression()) #9, !dbg !149
  %39 = trunc i64 %38 to i32, !dbg !195
  %arrayidx34.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %vis.i, i64 0, i64 %38, !dbg !196
  store i32 1, i32* %arrayidx34.us.us.i, align 4, !dbg !197, !tbaa !51
  br label %for.inc36.us.us.i, !dbg !198

for.inc36.us.us.i:                                ; preds = %if.then32.us.us.i, %lor.lhs.false.us.us.i, %for.body23.us.us.i
  %bestj.promoted118.us.us.i = phi i32 [ %bestj.promoted119.us.us.i, %for.body23.us.us.i ], [ %bestj.promoted119.us.us.i, %lor.lhs.false.us.us.i ], [ %39, %if.then32.us.us.i ]
  %add109.us.us.i = phi i32 [ %add110112.us.us.i, %for.body23.us.us.i ], [ %add110112.us.us.i, %lor.lhs.false.us.us.i ], [ %39, %if.then32.us.us.i ]
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1, !dbg !199
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next147.i, metadata !37, metadata !DIExpression()) #9, !dbg !169
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next147.i, 512, !dbg !200
  br i1 %exitcond151.not.i, label %for.cond20.for.cond40.preheader_crit_edge.us.us.i, label %for.body23.us.us.i, !dbg !170, !llvm.loop !201

for.cond20.for.cond40.preheader_crit_edge.us.us.i: ; preds = %for.inc36.us.us.i
  %idxprom48.us.us.i = sext i32 %bestj.promoted118.us.us.i to i64
  %arrayidx49.us.us.i = getelementptr inbounds [512 x i32], [512 x i32]* %dis.i, i64 0, i64 %idxprom48.us.us.i
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()) #9, !dbg !171
  br label %for.body43.us.us.i, !dbg !183

for.cond40.for.cond.cleanup42_crit_edge.us.us.i:  ; preds = %for.inc69.us.us.i
  %inc73.us.us.i = add nuw nsw i32 %i15.0123.us.us.i, 1, !dbg !203
  call void @llvm.dbg.value(metadata i32 %inc73.us.us.i, metadata !35, metadata !DIExpression()) #9, !dbg !167
  %exitcond157.not.i = icmp eq i32 %inc73.us.us.i, 512, !dbg !204
  br i1 %exitcond157.not.i, label %dijkstra.exit, label %for.cond20.preheader.us.us.i, !dbg !168, !llvm.loop !205

dijkstra.exit:                                    ; preds = %for.cond40.for.cond.cleanup42_crit_edge.us.us.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #9, !dbg !207
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %2) #9, !dbg !207
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %1) #9, !dbg !207
  call void @llvm.dbg.value(metadata i32 undef, metadata !139, metadata !DIExpression()), !dbg !140
  ret i32 0, !dbg !208

for.cond.cleanup6:                                ; preds = %for.body7
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !209
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !133, metadata !DIExpression()), !dbg !145
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, 512, !dbg !210
  br i1 %exitcond28.not, label %for.cond.cleanup, label %for.cond3.preheader, !dbg !146, !llvm.loop !211

for.body7:                                        ; preds = %for.cond3.preheader, %for.body7
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body7 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !135, metadata !DIExpression()), !dbg !147
  %call8 = tail call i32 @rand() #9, !dbg !213
  %rem = srem i32 %call8, 5, !dbg !216
  %arrayidx10 = getelementptr inbounds [512 x [512 x i32]], [512 x [512 x i32]]* @in, i64 0, i64 %indvars.iv25, i64 %indvars.iv, !dbg !217
  store i32 %rem, i32* %arrayidx10, align 4, !dbg !218, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !219
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !135, metadata !DIExpression()), !dbg !147
  %exitcond.not = icmp eq i64 %indvars.iv.next, 512, !dbg !220
  br i1 %exitcond.not, label %for.cond.cleanup6, label %for.body7, !dbg !148, !llvm.loop !221
}

; Function Attrs: nounwind
declare !dbg !223 dso_local void @srand(i32 noundef) local_unnamed_addr #6

declare dso_local i32 @time(...) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !229 dso_local i32 @rand() local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "secret", scope: !2, file: !3, line: 8, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "dijkstra.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files", checksumkind: CSK_MD5, checksum: "463d5a24076b5cb02fbf36c730f0b8f0")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !{!0, !8}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "in", scope: !2, file: !3, line: 40, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8388608, elements: !12)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !13}
!13 = !DISubrange(count: 512)
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!19 = distinct !DISubprogram(name: "dijkstra", scope: !3, file: !3, line: 9, type: !20, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!20 = !DISubroutineType(types: !21)
!21 = !{!11, !11, !11, !11, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 16384, elements: !24)
!24 = !{!13}
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !35, !37, !41}
!26 = !DILocalVariable(name: "n", arg: 1, scope: !19, file: !3, line: 9, type: !11)
!27 = !DILocalVariable(name: "s", arg: 2, scope: !19, file: !3, line: 9, type: !11)
!28 = !DILocalVariable(name: "t", arg: 3, scope: !19, file: !3, line: 9, type: !11)
!29 = !DILocalVariable(name: "e", arg: 4, scope: !19, file: !3, line: 9, type: !22)
!30 = !DILocalVariable(name: "vis", scope: !19, file: !3, line: 10, type: !23)
!31 = !DILocalVariable(name: "dis", scope: !19, file: !3, line: 11, type: !23)
!32 = !DILocalVariable(name: "bestj", scope: !19, file: !3, line: 12, type: !11)
!33 = !DILocalVariable(name: "i", scope: !34, file: !3, line: 14, type: !11)
!34 = distinct !DILexicalBlock(scope: !19, file: !3, line: 14, column: 5)
!35 = !DILocalVariable(name: "i", scope: !36, file: !3, line: 21, type: !11)
!36 = distinct !DILexicalBlock(scope: !19, file: !3, line: 21, column: 5)
!37 = !DILocalVariable(name: "j", scope: !38, file: !3, line: 22, type: !11)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 22, column: 9)
!39 = distinct !DILexicalBlock(scope: !40, file: !3, line: 21, column: 28)
!40 = distinct !DILexicalBlock(scope: !36, file: !3, line: 21, column: 5)
!41 = !DILocalVariable(name: "j", scope: !42, file: !3, line: 28, type: !11)
!42 = distinct !DILexicalBlock(scope: !39, file: !3, line: 28, column: 9)
!43 = !DILocation(line: 0, scope: !19)
!44 = !DILocation(line: 10, column: 5, scope: !19)
!45 = !DILocation(line: 10, column: 9, scope: !19)
!46 = !DILocation(line: 11, column: 5, scope: !19)
!47 = !DILocation(line: 11, column: 9, scope: !19)
!48 = !DILocation(line: 12, column: 5, scope: !19)
!49 = !DILocation(line: 13, column: 5, scope: !19)
!50 = !DILocation(line: 13, column: 12, scope: !19)
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 0, scope: !34)
!56 = !DILocation(line: 14, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !34, file: !3, line: 14, column: 5)
!58 = !DILocation(line: 14, column: 5, scope: !34)
!59 = !DILocation(line: 14, column: 23, scope: !57)
!60 = !DILocation(line: 15, column: 12, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !3, line: 15, column: 12)
!62 = distinct !DILexicalBlock(scope: !57, file: !3, line: 14, column: 28)
!63 = !DILocation(line: 15, column: 20, scope: !61)
!64 = !DILocation(line: 15, column: 12, scope: !62)
!65 = !DILocation(line: 16, column: 20, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !3, line: 15, column: 25)
!67 = distinct !{!67, !58, !68, !69, !70}
!68 = !DILocation(line: 20, column: 5, scope: !34)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !DILocation(line: 0, scope: !36)
!72 = !DILocation(line: 21, column: 5, scope: !36)
!73 = !DILocation(line: 0, scope: !38)
!74 = !DILocation(line: 22, column: 9, scope: !38)
!75 = !DILocation(line: 0, scope: !42)
!76 = !DILocation(line: 29, column: 18, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 29, column: 17)
!78 = distinct !DILexicalBlock(scope: !79, file: !3, line: 28, column: 32)
!79 = distinct !DILexicalBlock(scope: !42, file: !3, line: 28, column: 9)
!80 = !DILocation(line: 29, column: 25, scope: !77)
!81 = !DILocation(line: 29, column: 29, scope: !77)
!82 = !DILocation(line: 29, column: 42, scope: !77)
!83 = !DILocation(line: 29, column: 40, scope: !77)
!84 = !DILocation(line: 29, column: 56, scope: !77)
!85 = !DILocation(line: 29, column: 54, scope: !77)
!86 = !DILocation(line: 29, column: 17, scope: !78)
!87 = !DILocation(line: 0, scope: !78)
!88 = !DILocation(line: 28, column: 27, scope: !79)
!89 = !DILocation(line: 28, column: 23, scope: !79)
!90 = !DILocation(line: 28, column: 9, scope: !42)
!91 = distinct !{!91, !90, !92, !69}
!92 = !DILocation(line: 32, column: 9, scope: !42)
!93 = !DILocation(line: 23, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 23, column: 17)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 22, column: 32)
!96 = distinct !DILexicalBlock(scope: !38, file: !3, line: 22, column: 9)
!97 = !DILocation(line: 23, column: 25, scope: !94)
!98 = !DILocation(line: 23, column: 35, scope: !94)
!99 = !DILocation(line: 23, column: 39, scope: !94)
!100 = !DILocation(line: 23, column: 42, scope: !94)
!101 = !DILocation(line: 23, column: 51, scope: !94)
!102 = !DILocation(line: 23, column: 49, scope: !94)
!103 = !DILocation(line: 23, column: 17, scope: !95)
!104 = !DILocation(line: 24, column: 27, scope: !105)
!105 = distinct !DILexicalBlock(scope: !94, file: !3, line: 23, column: 64)
!106 = !DILocation(line: 24, column: 23, scope: !105)
!107 = !DILocation(line: 25, column: 17, scope: !105)
!108 = !DILocation(line: 25, column: 28, scope: !105)
!109 = !DILocation(line: 26, column: 13, scope: !105)
!110 = !DILocation(line: 22, column: 27, scope: !96)
!111 = !DILocation(line: 22, column: 23, scope: !96)
!112 = distinct !{!112, !74, !113, !69}
!113 = !DILocation(line: 27, column: 9, scope: !38)
!114 = !DILocation(line: 21, column: 23, scope: !40)
!115 = !DILocation(line: 21, column: 19, scope: !40)
!116 = distinct !{!116, !72, !117, !69}
!117 = !DILocation(line: 34, column: 5, scope: !36)
!118 = !DILocation(line: 16, column: 13, scope: !66)
!119 = distinct !{!119, !58, !68, !69, !120, !70}
!120 = !{!"llvm.loop.unroll.runtime.disable"}
!121 = !DILocation(line: 36, column: 12, scope: !19)
!122 = !DILocation(line: 37, column: 1, scope: !19)
!123 = !DILocation(line: 36, column: 5, scope: !19)
!124 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 41, type: !125, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!125 = !DISubroutineType(types: !126)
!126 = !{!11, !11, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !{!131, !132, !133, !135, !139}
!131 = !DILocalVariable(name: "argc", arg: 1, scope: !124, file: !3, line: 41, type: !11)
!132 = !DILocalVariable(name: "argv", arg: 2, scope: !124, file: !3, line: 41, type: !127)
!133 = !DILocalVariable(name: "i", scope: !134, file: !3, line: 45, type: !11)
!134 = distinct !DILexicalBlock(scope: !124, file: !3, line: 45, column: 5)
!135 = !DILocalVariable(name: "j", scope: !136, file: !3, line: 46, type: !11)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 46, column: 9)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 45, column: 42)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 45, column: 5)
!139 = !DILocalVariable(name: "res", scope: !124, file: !3, line: 51, type: !11)
!140 = !DILocation(line: 0, scope: !124)
!141 = !DILocation(line: 43, column: 12, scope: !124)
!142 = !DILocation(line: 43, column: 5, scope: !124)
!143 = !DILocation(line: 44, column: 30, scope: !124)
!144 = !DILocation(line: 44, column: 12, scope: !124)
!145 = !DILocation(line: 0, scope: !134)
!146 = !DILocation(line: 45, column: 5, scope: !134)
!147 = !DILocation(line: 0, scope: !136)
!148 = !DILocation(line: 46, column: 9, scope: !136)
!149 = !DILocation(line: 0, scope: !19, inlinedAt: !150)
!150 = distinct !DILocation(line: 51, column: 15, scope: !124)
!151 = !DILocation(line: 10, column: 5, scope: !19, inlinedAt: !150)
!152 = !DILocation(line: 10, column: 9, scope: !19, inlinedAt: !150)
!153 = !DILocation(line: 11, column: 5, scope: !19, inlinedAt: !150)
!154 = !DILocation(line: 11, column: 9, scope: !19, inlinedAt: !150)
!155 = !DILocation(line: 12, column: 5, scope: !19, inlinedAt: !150)
!156 = !DILocation(line: 13, column: 5, scope: !19, inlinedAt: !150)
!157 = !DILocation(line: 13, column: 12, scope: !19, inlinedAt: !150)
!158 = !DILocation(line: 0, scope: !34, inlinedAt: !150)
!159 = !DILocation(line: 14, column: 5, scope: !34, inlinedAt: !150)
!160 = !DILocation(line: 14, column: 23, scope: !57, inlinedAt: !150)
!161 = !DILocation(line: 15, column: 12, scope: !61, inlinedAt: !150)
!162 = !DILocation(line: 15, column: 20, scope: !61, inlinedAt: !150)
!163 = !DILocation(line: 15, column: 12, scope: !62, inlinedAt: !150)
!164 = !DILocation(line: 16, column: 20, scope: !66, inlinedAt: !150)
!165 = distinct !{!165, !159, !166, !69, !70}
!166 = !DILocation(line: 20, column: 5, scope: !34, inlinedAt: !150)
!167 = !DILocation(line: 0, scope: !36, inlinedAt: !150)
!168 = !DILocation(line: 21, column: 5, scope: !36, inlinedAt: !150)
!169 = !DILocation(line: 0, scope: !38, inlinedAt: !150)
!170 = !DILocation(line: 22, column: 9, scope: !38, inlinedAt: !150)
!171 = !DILocation(line: 0, scope: !42, inlinedAt: !150)
!172 = !DILocation(line: 29, column: 18, scope: !77, inlinedAt: !150)
!173 = !DILocation(line: 29, column: 25, scope: !77, inlinedAt: !150)
!174 = !DILocation(line: 29, column: 29, scope: !77, inlinedAt: !150)
!175 = !DILocation(line: 29, column: 42, scope: !77, inlinedAt: !150)
!176 = !DILocation(line: 29, column: 40, scope: !77, inlinedAt: !150)
!177 = !DILocation(line: 29, column: 56, scope: !77, inlinedAt: !150)
!178 = !DILocation(line: 29, column: 54, scope: !77, inlinedAt: !150)
!179 = !DILocation(line: 29, column: 17, scope: !78, inlinedAt: !150)
!180 = !DILocation(line: 0, scope: !78, inlinedAt: !150)
!181 = !DILocation(line: 28, column: 27, scope: !79, inlinedAt: !150)
!182 = !DILocation(line: 28, column: 23, scope: !79, inlinedAt: !150)
!183 = !DILocation(line: 28, column: 9, scope: !42, inlinedAt: !150)
!184 = distinct !{!184, !183, !185, !69}
!185 = !DILocation(line: 32, column: 9, scope: !42, inlinedAt: !150)
!186 = !DILocation(line: 23, column: 18, scope: !94, inlinedAt: !150)
!187 = !DILocation(line: 23, column: 25, scope: !94, inlinedAt: !150)
!188 = !DILocation(line: 23, column: 35, scope: !94, inlinedAt: !150)
!189 = !DILocation(line: 23, column: 39, scope: !94, inlinedAt: !150)
!190 = !DILocation(line: 23, column: 42, scope: !94, inlinedAt: !150)
!191 = !DILocation(line: 23, column: 51, scope: !94, inlinedAt: !150)
!192 = !DILocation(line: 23, column: 49, scope: !94, inlinedAt: !150)
!193 = !DILocation(line: 23, column: 17, scope: !95, inlinedAt: !150)
!194 = !DILocation(line: 24, column: 27, scope: !105, inlinedAt: !150)
!195 = !DILocation(line: 24, column: 23, scope: !105, inlinedAt: !150)
!196 = !DILocation(line: 25, column: 17, scope: !105, inlinedAt: !150)
!197 = !DILocation(line: 25, column: 28, scope: !105, inlinedAt: !150)
!198 = !DILocation(line: 26, column: 13, scope: !105, inlinedAt: !150)
!199 = !DILocation(line: 22, column: 27, scope: !96, inlinedAt: !150)
!200 = !DILocation(line: 22, column: 23, scope: !96, inlinedAt: !150)
!201 = distinct !{!201, !170, !202, !69}
!202 = !DILocation(line: 27, column: 9, scope: !38, inlinedAt: !150)
!203 = !DILocation(line: 21, column: 23, scope: !40, inlinedAt: !150)
!204 = !DILocation(line: 21, column: 19, scope: !40, inlinedAt: !150)
!205 = distinct !{!205, !168, !206, !69}
!206 = !DILocation(line: 34, column: 5, scope: !36, inlinedAt: !150)
!207 = !DILocation(line: 37, column: 1, scope: !19, inlinedAt: !150)
!208 = !DILocation(line: 54, column: 1, scope: !124)
!209 = !DILocation(line: 45, column: 38, scope: !138)
!210 = !DILocation(line: 45, column: 23, scope: !138)
!211 = distinct !{!211, !146, !212, !69}
!212 = !DILocation(line: 50, column: 5, scope: !134)
!213 = !DILocation(line: 48, column: 24, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 46, column: 46)
!215 = distinct !DILexicalBlock(scope: !136, file: !3, line: 46, column: 9)
!216 = !DILocation(line: 48, column: 31, scope: !214)
!217 = !DILocation(line: 48, column: 13, scope: !214)
!218 = !DILocation(line: 48, column: 22, scope: !214)
!219 = !DILocation(line: 46, column: 42, scope: !215)
!220 = !DILocation(line: 46, column: 27, scope: !215)
!221 = distinct !{!221, !148, !222, !69}
!222 = !DILocation(line: 49, column: 9, scope: !136)
!223 = !DISubprogram(name: "srand", scope: !224, file: !224, line: 455, type: !225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!224 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!228 = !{}
!229 = !DISubprogram(name: "rand", scope: !224, file: !224, line: 453, type: !230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !228)
!230 = !DISubroutineType(types: !231)
!231 = !{!11}
