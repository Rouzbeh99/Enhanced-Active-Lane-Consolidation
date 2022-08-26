; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x i32] [i32 1, i32 -1, i32 2, i32 -2, i32 3, i32 -3, i32 4, i32 -4], align 4
@__const.main.b = private unnamed_addr constant [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !28
  %cmp11 = icmp sgt i32 %n, 0, !dbg !29
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !31

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !29
  br label %for.body.init.1

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.1 = and i64 0, 1, !dbg !32
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !32
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !35
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !35
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !35
  %rem15.headerCopy.1.2.3.init.1 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.1 = icmp eq i64 %rem15.headerCopy.1.2.3.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !35
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.body.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !32
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !32
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !35
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !35
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !35
  %rem15.headerCopy.1.2.3.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.2 = icmp eq i64 %rem15.headerCopy.1.2.3.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !35
  %0 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.1, i64 0
  %1 = insertelement <vscale x 4 x i1> %0, i1 %cmp1.not.headerCopy.1.init.1, i64 1
  %2 = insertelement <vscale x 4 x i1> %1, i1 %cmp1.not.headerCopy.1.2.init.1, i64 2
  %3 = insertelement <vscale x 4 x i1> %2, i1 %cmp1.not.headerCopy.1.2.3.init.1, i64 3
  %4 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.2, i64 0
  %5 = insertelement <vscale x 4 x i1> %4, i1 %cmp1.not.headerCopy.1.init.2, i64 1
  %6 = insertelement <vscale x 4 x i1> %5, i1 %cmp1.not.headerCopy.1.2.init.2, i64 2
  %7 = insertelement <vscale x 4 x i1> %6, i1 %cmp1.not.headerCopy.1.2.3.init.2, i64 3
  %8 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %9 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 4, i32 1)
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %for.body
  br label %for.cond.cleanup, !dbg !36

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !36

for.body:                                         ; preds = %for.body.init.2, %new.latch
  %10 = phi i64 [ %indvars.iv.next.latchCopy.1.2.3, %new.latch ], [ 0, %for.body.init.2 ]
  %11 = phi <vscale x 4 x i32> [ %70, %new.latch ], [ %8, %for.body.init.2 ]
  %12 = phi <vscale x 4 x i1> [ %71, %new.latch ], [ %3, %for.body.init.2 ]
  %13 = phi <vscale x 4 x i32> [ %72, %new.latch ], [ %9, %for.body.init.2 ]
  %14 = phi <vscale x 4 x i1> [ %73, %new.latch ], [ %7, %for.body.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15 = and i64 %10, 1, !dbg !32
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !32
  %indvars.iv.next = add nuw nsw i64 %10, 1, !dbg !35
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !32
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !35
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !35
  %rem15.headerCopy.1.2.3 = and i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3 = icmp eq i64 %rem15.headerCopy.1.2.3, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !35
  %15 = sub i64 %wide.trip.count, 3, !dbg !29
  %exitcond.not.latchCopy.1.2.3 = icmp eq i64 %indvars.iv.next.latchCopy.1.2.3, %15, !dbg !29
  br i1 %exitcond.not.latchCopy.1.2.3, label %for.cond.cleanup.loopexit, label %permute.decision, !dbg !31, !llvm.loop !37

permute.decision:                                 ; preds = %for.body
  %16 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %17 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %16, <vscale x 4 x i1> %12)
  %18 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %16, <vscale x 4 x i1> %14)
  %19 = add i64 %17, %18
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %permute.decision
  %21 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %22 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %12, <vscale x 4 x i32> %11)
  %23 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %14, <vscale x 4 x i32> %13)
  %24 = xor <vscale x 4 x i1> %12, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %25 = xor <vscale x 4 x i1> %14, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %26 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %24, <vscale x 4 x i32> %11)
  %27 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %25, <vscale x 4 x i32> %13)
  %28 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %12)
  %29 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %28)
  %30 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %22, <vscale x 4 x i32> %23)
  %31 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %14)
  %32 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %31)
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %32, <vscale x 4 x i32> %23, <vscale x 4 x i32> %27)
  %34 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %24)
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %34)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %35, <vscale x 4 x i32> %26, <vscale x 4 x i32> %33)
  %37 = xor <vscale x 4 x i1> %35, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %35)
  %39 = sub i64 %31, %34
  %40 = add i64 %39, %38
  %41 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %40)
  %42 = xor <vscale x 4 x i1> %41, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %43 = and <vscale x 4 x i1> %37, %41
  %44 = and <vscale x 4 x i1> %37, %41
  %45 = and <vscale x 4 x i1> %44, %42
  %46 = or <vscale x 4 x i1> %43, %45
  br label %if.then

linearized:                                       ; preds = %permute.decision
  %47 = getelementptr inbounds i32, ptr %a, i64 %10, !dbg !41
  %48 = load i32, ptr %47, align 4, !dbg !41, !tbaa !43
  %49 = getelementptr inbounds i32, ptr %b, i64 %10, !dbg !47
  %50 = load i32, ptr %49, align 4, !dbg !47, !tbaa !43
  %51 = mul nsw i32 %50, %48, !dbg !48
  %52 = getelementptr inbounds i32, ptr %c, i64 %10, !dbg !49
  store i32 %51, ptr %52, align 4, !dbg !50, !tbaa !43
  %53 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false
  %54 = insertelement <vscale x 4 x i1> %53, i1 %cmp1.not.headerCopy.1, i1 true
  %55 = insertelement <vscale x 4 x i1> %54, i1 %cmp1.not.headerCopy.1.2, i1 false
  %56 = insertelement <vscale x 4 x i1> %55, i1 %cmp1.not.headerCopy.1.2.3, i1 true
  %57 = trunc i64 %10 to i32
  %58 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %57, i32 1)
  br label %new.latch

if.then:                                          ; preds = %lane.gather
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %10, !dbg !41
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %10, !dbg !47
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %10, !dbg !49
  %59 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !51
  %60 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %59, ptr %arrayidx, <vscale x 4 x i32> %30), !dbg !51
  %61 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %59, ptr %arrayidx3, <vscale x 4 x i32> %30), !dbg !51
  %62 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %61, <vscale x 4 x i32> %60), !dbg !51
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %62, <vscale x 4 x i1> %59, ptr %arrayidx5, <vscale x 4 x i32> %30), !dbg !51
  %63 = zext <vscale x 4 x i32> %30 to <vscale x 4 x i64>, !dbg !51
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %30, <vscale x 4 x i1> %59, ptr %arrayidx5, <vscale x 4 x i32> %30), !dbg !51
  %64 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false, !dbg !51
  %65 = insertelement <vscale x 4 x i1> %64, i1 %cmp1.not.headerCopy.1, i1 true, !dbg !51
  %66 = insertelement <vscale x 4 x i1> %65, i1 %cmp1.not.headerCopy.1.2, i1 false, !dbg !51
  %67 = insertelement <vscale x 4 x i1> %66, i1 %cmp1.not.headerCopy.1.2.3, i1 true, !dbg !51
  %68 = trunc i64 %10 to i32, !dbg !51
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %68, i32 1), !dbg !51
  br label %new.latch, !dbg !51

new.latch:                                        ; preds = %linearized, %if.then
  %70 = phi <vscale x 4 x i32> [ %69, %if.then ], [ %11, %linearized ]
  %71 = phi <vscale x 4 x i1> [ %67, %if.then ], [ %12, %linearized ]
  %72 = phi <vscale x 4 x i32> [ %58, %linearized ], [ %13, %if.then ]
  %73 = phi <vscale x 4 x i1> [ %56, %linearized ], [ %46, %if.then ]
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !52 {
entry:
  %c = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !56, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !57, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !61, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #11, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %c, metadata !62, metadata !DIExpression()), !dbg !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !69
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !dbg !73
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74), !dbg !73
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76), !dbg !73
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !21, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !22, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 8, metadata !24, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !80
  br label %for.body.i, !dbg !81

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()), !dbg !80
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !82
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !82
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !83

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !84
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !84, !tbaa !43, !alias.scope !70, !noalias !85
  %arrayidx3.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !86
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !86, !tbaa !43, !alias.scope !74, !noalias !87
  %mul.i = mul nsw i32 %1, %0, !dbg !88
  %arrayidx5.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !89
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !90, !tbaa !43, !alias.scope !76, !noalias !91
  br label %for.inc.i, !dbg !92

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !93
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()), !dbg !80
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !94
  br i1 %exitcond.not.i, label %for.body.preheader, label %for.body.i, !dbg !81, !llvm.loop !95

for.body.preheader:                               ; preds = %for.inc.i
  br label %for.body, !dbg !97

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #11, !dbg !99
  ret i32 0, !dbg !100

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !63, metadata !DIExpression()), !dbg !101
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !102
  %2 = load i32, ptr %arrayidx, align 4, !dbg !102, !tbaa !43
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !106
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !63, metadata !DIExpression()), !dbg !101
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !107
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !97, !llvm.loop !108
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #10

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "c5d0df64e1ff873f94aa4d4359d35ec8")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 3, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 6, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 6, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 5)
!31 = !DILocation(line: 6, column: 5, scope: !26)
!32 = !DILocation(line: 7, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 13)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 6, column: 33)
!35 = !DILocation(line: 6, column: 28, scope: !30)
!36 = !DILocation(line: 11, column: 1, scope: !14)
!37 = distinct !{!37, !31, !38, !39, !40}
!38 = !DILocation(line: 10, column: 5, scope: !26)
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !DILocation(line: 8, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 25)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 8, column: 27, scope: !42)
!48 = !DILocation(line: 8, column: 25, scope: !42)
!49 = !DILocation(line: 8, column: 13, scope: !42)
!50 = !DILocation(line: 8, column: 18, scope: !42)
!51 = !DILocation(line: 9, column: 9, scope: !42)
!52 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !53, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!19}
!55 = !{!56, !57, !61, !62, !63}
!56 = !DILocalVariable(name: "n", scope: !52, file: !1, line: 14, type: !19)
!57 = !DILocalVariable(name: "a", scope: !52, file: !1, line: 15, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 8)
!61 = !DILocalVariable(name: "b", scope: !52, file: !1, line: 16, type: !58)
!62 = !DILocalVariable(name: "c", scope: !52, file: !1, line: 17, type: !58)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 21, type: !19)
!64 = distinct !DILexicalBlock(scope: !52, file: !1, line: 21, column: 5)
!65 = !DILocation(line: 0, scope: !52)
!66 = !DILocation(line: 15, column: 9, scope: !52)
!67 = !DILocation(line: 16, column: 9, scope: !52)
!68 = !DILocation(line: 17, column: 5, scope: !52)
!69 = !DILocation(line: 17, column: 9, scope: !52)
!70 = !{!71}
!71 = distinct !{!71, !72, !"foo: %a"}
!72 = distinct !{!72, !"foo"}
!73 = !DILocation(line: 19, column: 5, scope: !52)
!74 = !{!75}
!75 = distinct !{!75, !72, !"foo: %b"}
!76 = !{!77}
!77 = distinct !{!77, !72, !"foo: %c"}
!78 = !DILocation(line: 0, scope: !14, inlinedAt: !79)
!79 = distinct !DILocation(line: 19, column: 5, scope: !52)
!80 = !DILocation(line: 0, scope: !26, inlinedAt: !79)
!81 = !DILocation(line: 6, column: 5, scope: !26, inlinedAt: !79)
!82 = !DILocation(line: 7, column: 19, scope: !33, inlinedAt: !79)
!83 = !DILocation(line: 7, column: 13, scope: !34, inlinedAt: !79)
!84 = !DILocation(line: 8, column: 20, scope: !42, inlinedAt: !79)
!85 = !{!75, !77}
!86 = !DILocation(line: 8, column: 27, scope: !42, inlinedAt: !79)
!87 = !{!71, !77}
!88 = !DILocation(line: 8, column: 25, scope: !42, inlinedAt: !79)
!89 = !DILocation(line: 8, column: 13, scope: !42, inlinedAt: !79)
!90 = !DILocation(line: 8, column: 18, scope: !42, inlinedAt: !79)
!91 = !{!71, !75}
!92 = !DILocation(line: 9, column: 9, scope: !42, inlinedAt: !79)
!93 = !DILocation(line: 6, column: 28, scope: !30, inlinedAt: !79)
!94 = !DILocation(line: 6, column: 23, scope: !30, inlinedAt: !79)
!95 = distinct !{!95, !81, !96, !39, !40}
!96 = !DILocation(line: 10, column: 5, scope: !26, inlinedAt: !79)
!97 = !DILocation(line: 21, column: 5, scope: !64)
!98 = !DILocation(line: 24, column: 5, scope: !52)
!99 = !DILocation(line: 26, column: 1, scope: !52)
!100 = !DILocation(line: 25, column: 5, scope: !52)
!101 = !DILocation(line: 0, scope: !64)
!102 = !DILocation(line: 22, column: 23, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 21, column: 33)
!104 = distinct !DILexicalBlock(scope: !64, file: !1, line: 21, column: 5)
!105 = !DILocation(line: 22, column: 9, scope: !103)
!106 = !DILocation(line: 21, column: 28, scope: !104)
!107 = !DILocation(line: 21, column: 23, scope: !104)
!108 = distinct !{!108, !97, !109, !39, !40}
!109 = !DILocation(line: 23, column: 5, scope: !64)
