; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-none-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: nounwind uwtable vscale_range(1,16)
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 {
entry:
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #7, !srcloc !6
  %cmp11 = icmp sgt i32 %n, 0
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %0 = tail call i64 @llvm.vscale.i64()
  %1 = shl nuw nsw i64 %0, 3
  %min.iters.check = icmp ugt i64 %1, %wide.trip.count
  br i1 %min.iters.check, label %for.body.preheader19, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %2 = tail call i64 @llvm.vscale.i64()
  %3 = shl nuw nsw i64 %2, 3
  %n.mod.vf = urem i64 %wide.trip.count, %3
  %n.vec = sub nuw nsw i64 %wide.trip.count, %n.mod.vf
  %4 = tail call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %5 = tail call i64 @llvm.vscale.i64()
  %6 = shl nuw nsw i64 %5, 2
  %.splatinsert = insertelement <vscale x 4 x i64> poison, i64 %6, i64 0
  %.splat = shufflevector <vscale x 4 x i64> %.splatinsert, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  %7 = tail call i32 @llvm.vscale.i32()
  %8 = shl nuw nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = tail call i32 @llvm.vscale.i32()
  %11 = shl nuw nsw i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = tail call i32 @llvm.vscale.i32()
  %14 = shl nuw nsw i32 %13, 2
  %15 = zext i32 %14 to i64
  %16 = tail call i64 @llvm.vscale.i64()
  %17 = shl nuw nsw i64 %16, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <vscale x 4 x i64> [ %4, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %step.add = add <vscale x 4 x i64> %vec.ind, %.splat
  %18 = trunc <vscale x 4 x i64> %vec.ind to <vscale x 4 x i1>
  %19 = trunc <vscale x 4 x i64> %step.add to <vscale x 4 x i1>
  %20 = getelementptr i32, ptr %a, i64 %index
  %wide.masked.load = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %20, i32 4, <vscale x 4 x i1> %18, <vscale x 4 x i32> poison), !tbaa !7
  %21 = getelementptr i32, ptr %20, i64 %9
  %wide.masked.load16 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %21, i32 4, <vscale x 4 x i1> %19, <vscale x 4 x i32> poison), !tbaa !7
  %22 = getelementptr i32, ptr %b, i64 %index
  %wide.masked.load17 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %22, i32 4, <vscale x 4 x i1> %18, <vscale x 4 x i32> poison), !tbaa !7
  %23 = getelementptr i32, ptr %22, i64 %12
  %wide.masked.load18 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %23, i32 4, <vscale x 4 x i1> %19, <vscale x 4 x i32> poison), !tbaa !7
  %24 = mul nsw <vscale x 4 x i32> %wide.masked.load17, %wide.masked.load
  %25 = mul nsw <vscale x 4 x i32> %wide.masked.load18, %wide.masked.load16
  %26 = getelementptr i32, ptr %c, i64 %index
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %24, ptr %26, i32 4, <vscale x 4 x i1> %18), !tbaa !7
  %27 = getelementptr i32, ptr %26, i64 %15
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %25, ptr %27, i32 4, <vscale x 4 x i1> %19), !tbaa !7
  %index.next = add nuw i64 %index, %17
  %vec.ind.next = add <vscale x 4 x i64> %step.add, %.splat
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader19

for.body.preheader19:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc, %middle.block, %entry
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #7, !srcloc !14
  ret void

for.body:                                         ; preds = %for.body.preheader19, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader19 ]
  %rem14 = and i64 %indvars.iv, 1
  %cmp1.not = icmp eq i64 %rem14, 0
  br i1 %cmp1.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %29 = load i32, ptr %arrayidx, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %30 = load i32, ptr %arrayidx3, align 4, !tbaa !7
  %mul = mul nsw i32 %30, %29
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx5, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15
}

; Function Attrs: nounwind uwtable vscale_range(1,16)
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %vla30 = alloca [65536 x i32], align 4
  %vla131 = alloca [65536 x i32], align 4
  %vla232 = alloca [65536 x i32], align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %vla232, i8 0, i64 262144, i1 false), !tbaa !7
  %0 = tail call i64 @llvm.vscale.i64()
  %1 = shl nuw nsw i64 %0, 3
  %n.mod.vf = urem i64 65536, %1
  %n.vec = sub nuw nsw i64 65536, %n.mod.vf
  %2 = tail call <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32()
  %3 = tail call i32 @llvm.vscale.i32()
  %4 = shl nuw nsw i32 %3, 2
  %.splatinsert = insertelement <vscale x 4 x i32> poison, i32 %4, i64 0
  %.splat = shufflevector <vscale x 4 x i32> %.splatinsert, <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer
  %5 = tail call i32 @llvm.vscale.i32()
  %6 = shl nuw nsw i32 %5, 2
  %7 = zext i32 %6 to i64
  %8 = tail call i32 @llvm.vscale.i32()
  %9 = shl nuw nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = tail call i64 @llvm.vscale.i64()
  %12 = shl nuw nsw i64 %11, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %entry
  %index = phi i64 [ 0, %entry ], [ %index.next, %vector.body ]
  %vec.ind = phi <vscale x 4 x i32> [ %2, %entry ], [ %vec.ind.next, %vector.body ]
  %step.add = add <vscale x 4 x i32> %vec.ind, %.splat
  %13 = getelementptr inbounds i32, ptr %vla30, i64 %index
  store <vscale x 4 x i32> %vec.ind, ptr %13, align 4, !tbaa !7
  %14 = getelementptr inbounds i32, ptr %13, i64 %7
  store <vscale x 4 x i32> %step.add, ptr %14, align 4, !tbaa !7
  %15 = getelementptr inbounds i32, ptr %vla131, i64 %index
  store <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), ptr %15, align 4, !tbaa !7
  %16 = getelementptr inbounds i32, ptr %15, i64 %10
  store <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), ptr %16, align 4, !tbaa !7
  %index.next = add nuw i64 %index, %12
  %vec.ind.next = add <vscale x 4 x i32> %step.add, %.splat
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #7, !noalias !25, !srcloc !6
  %18 = tail call i64 @llvm.vscale.i64()
  %19 = shl nuw nsw i64 %18, 3
  %n.mod.vf46 = urem i64 65536, %19
  %n.vec47 = sub nuw nsw i64 65536, %n.mod.vf46
  %20 = tail call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %21 = tail call i64 @llvm.vscale.i64()
  %22 = shl nuw nsw i64 %21, 2
  %.splatinsert53 = insertelement <vscale x 4 x i64> poison, i64 %22, i64 0
  %.splat54 = shufflevector <vscale x 4 x i64> %.splatinsert53, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  %23 = tail call i32 @llvm.vscale.i32()
  %24 = shl nuw nsw i32 %23, 2
  %25 = zext i32 %24 to i64
  %26 = tail call i32 @llvm.vscale.i32()
  %27 = shl nuw nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = tail call i32 @llvm.vscale.i32()
  %30 = shl nuw nsw i32 %29, 2
  %31 = zext i32 %30 to i64
  %32 = tail call i64 @llvm.vscale.i64()
  %33 = shl nuw nsw i64 %32, 3
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %for.cond.cleanup
  %index51 = phi i64 [ 0, %for.cond.cleanup ], [ %index.next62, %vector.body50 ]
  %vec.ind55 = phi <vscale x 4 x i64> [ %20, %for.cond.cleanup ], [ %vec.ind.next58, %vector.body50 ]
  %step.add56 = add <vscale x 4 x i64> %vec.ind55, %.splat54
  %34 = trunc <vscale x 4 x i64> %vec.ind55 to <vscale x 4 x i1>
  %35 = trunc <vscale x 4 x i64> %step.add56 to <vscale x 4 x i1>
  %36 = getelementptr i32, ptr %vla30, i64 %index51
  %wide.load = load <vscale x 4 x i32>, ptr %36, align 4, !tbaa !7, !alias.scope !18, !noalias !26
  %37 = getelementptr i32, ptr %36, i64 %25
  %wide.load59 = load <vscale x 4 x i32>, ptr %37, align 4, !tbaa !7, !alias.scope !18, !noalias !26
  %38 = getelementptr i32, ptr %vla131, i64 %index51
  %wide.load60 = load <vscale x 4 x i32>, ptr %38, align 4, !tbaa !7, !alias.scope !21, !noalias !27
  %39 = getelementptr i32, ptr %38, i64 %28
  %wide.load61 = load <vscale x 4 x i32>, ptr %39, align 4, !tbaa !7, !alias.scope !21, !noalias !27
  %40 = mul nsw <vscale x 4 x i32> %wide.load60, %wide.load
  %41 = mul nsw <vscale x 4 x i32> %wide.load61, %wide.load59
  %42 = getelementptr i32, ptr %vla232, i64 %index51
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %40, ptr %42, i32 4, <vscale x 4 x i1> %34), !tbaa !7, !alias.scope !23, !noalias !28
  %43 = getelementptr i32, ptr %42, i64 %31
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %41, ptr %43, i32 4, <vscale x 4 x i1> %35), !tbaa !7, !alias.scope !23, !noalias !28
  %index.next62 = add nuw i64 %index51, %33
  %vec.ind.next58 = add <vscale x 4 x i64> %step.add56, %.splat54
  %44 = icmp eq i64 %index.next62, %n.vec47
  br i1 %44, label %middle.block42, label %vector.body50, !llvm.loop !29

middle.block42:                                   ; preds = %vector.body50
  %cmp.n49 = icmp eq i64 %n.mod.vf46, 0
  br i1 %cmp.n49, label %foo.exit, label %for.body.i

for.body.i:                                       ; preds = %middle.block42, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ %n.vec47, %middle.block42 ]
  %rem14.i = and i64 %indvars.iv.i, 1
  %cmp1.not.i = icmp eq i64 %rem14.i, 0
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv.i
  %45 = load i32, ptr %arrayidx.i, align 4, !tbaa !7, !alias.scope !18, !noalias !26
  %arrayidx3.i = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv.i
  %46 = load i32, ptr %arrayidx3.i, align 4, !tbaa !7, !alias.scope !21, !noalias !27
  %mul.i = mul nsw i32 %46, %45
  %arrayidx5.i = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv.i
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !tbaa !7, !alias.scope !23, !noalias !28
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 65536
  br i1 %exitcond.not.i, label %foo.exit, label %for.body.i, !llvm.loop !30

foo.exit:                                         ; preds = %for.inc.i, %middle.block42
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #7, !noalias !25, !srcloc !14
  %47 = tail call i64 @llvm.vscale.i64()
  %48 = shl nuw nsw i64 %47, 3
  %n.mod.vf67 = urem i64 65536, %48
  %n.vec68 = sub nuw nsw i64 65536, %n.mod.vf67
  %49 = tail call i32 @llvm.vscale.i32()
  %50 = shl nuw nsw i32 %49, 2
  %51 = zext i32 %50 to i64
  %52 = tail call i64 @llvm.vscale.i64()
  %53 = shl nuw nsw i64 %52, 3
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %foo.exit
  %index72 = phi i64 [ 0, %foo.exit ], [ %index.next76, %vector.body71 ]
  %vec.phi = phi <vscale x 4 x i32> [ zeroinitializer, %foo.exit ], [ %56, %vector.body71 ]
  %vec.phi73 = phi <vscale x 4 x i32> [ zeroinitializer, %foo.exit ], [ %57, %vector.body71 ]
  %54 = getelementptr inbounds i32, ptr %vla232, i64 %index72
  %wide.load74 = load <vscale x 4 x i32>, ptr %54, align 4, !tbaa !7
  %55 = getelementptr inbounds i32, ptr %54, i64 %51
  %wide.load75 = load <vscale x 4 x i32>, ptr %55, align 4, !tbaa !7
  %56 = add <vscale x 4 x i32> %wide.load74, %vec.phi
  %57 = add <vscale x 4 x i32> %wide.load75, %vec.phi73
  %index.next76 = add nuw i64 %index72, %53
  %58 = icmp eq i64 %index.next76, %n.vec68
  br i1 %58, label %middle.block63, label %vector.body71, !llvm.loop !31

middle.block63:                                   ; preds = %vector.body71
  %bin.rdx = add <vscale x 4 x i32> %57, %56
  %59 = call i32 @llvm.vector.reduce.add.nxv4i32(<vscale x 4 x i32> %bin.rdx)
  %cmp.n70 = icmp eq i64 %n.mod.vf67, 0
  br i1 %cmp.n70, label %for.cond.cleanup10, label %for.body11

for.body:                                         ; preds = %middle.block, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %n.vec, %middle.block ]
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv
  %60 = trunc i64 %indvars.iv to i32
  store i32 %60, ptr %arrayidx, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv
  store i32 2, ptr %arrayidx4, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 65536
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !32

for.cond.cleanup10:                               ; preds = %for.body11, %middle.block63
  %add.lcssa = phi i32 [ %59, %middle.block63 ], [ %add, %for.body11 ]
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa)
  ret i32 0

for.body11:                                       ; preds = %middle.block63, %for.body11
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body11 ], [ %n.vec68, %middle.block63 ]
  %sum.034 = phi i32 [ %add, %for.body11 ], [ %59, %middle.block63 ]
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37
  %61 = load i32, ptr %arrayidx13, align 4, !tbaa !7
  %add = add nsw i32 %61, %sum.034
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 65536
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !llvm.loop !33
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64() #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.experimental.stepvector.nxv4i32() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.nxv4i32(<vscale x 4 x i32>) #4

attributes #0 = { nounwind uwtable vscale_range(1,16) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bf16,+f32mm,+i8mm,+neon,+sve,+sve2,+v9.2a" }
attributes #1 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+bf16,+f32mm,+i8mm,+neon,+sve,+sve2,+v9.2a" }
attributes #2 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"clang version 15.0.1 (git@github.com:llvm/llvm-project.git 29d395a1b7a8176abb1d6278f7df98301fbe7744)"}
!6 = !{i64 126, i64 135}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{i64 296, i64 305}
!15 = distinct !{!15, !12, !16, !13}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !12, !13}
!18 = !{!19}
!19 = distinct !{!19, !20, !"foo: %a"}
!20 = distinct !{!20, !"foo"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"foo: %b"}
!23 = !{!24}
!24 = distinct !{!24, !20, !"foo: %c"}
!25 = !{!19, !22, !24}
!26 = !{!22, !24}
!27 = !{!19, !24}
!28 = !{!19, !22}
!29 = distinct !{!29, !12, !13}
!30 = distinct !{!30, !12, !16, !13}
!31 = distinct !{!31, !12, !13}
!32 = distinct !{!32, !12, !16, !13}
!33 = distinct !{!33, !12, !16, !13}
