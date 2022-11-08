; ModuleID = 'test_alc_simple.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata ptr %cond, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %n, metadata !25, metadata !DIExpression()), !dbg !28
  tail call void asm sideeffect ".inst 0x2520e020", ""() #9, !dbg !29, !srcloc !31
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !32
  %cmp12 = icmp sgt i32 %n, 0, !dbg !33
  br i1 %cmp12, label %for.body.preheader, label %for.cond.cleanup, !dbg !35

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !33
  %0 = tail call i64 @llvm.vscale.i64(), !dbg !35
  %1 = shl i64 %0, 1, !dbg !35
  %.not = icmp ugt i64 %1, %wide.trip.count, !dbg !35
  br i1 %.not, label %for.body.preheader2, label %pre.alc, !dbg !35

for.cond.cleanup:                                 ; preds = %for.inc, %middel.block, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #9, !dbg !36, !srcloc !38
  ret void, !dbg !39

for.body:                                         ; preds = %for.body.preheader2, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader2 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !26, metadata !DIExpression()), !dbg !32
  %arrayidx = getelementptr inbounds i32, ptr %cond, i64 %indvars.iv, !dbg !40
  %2 = load i32, ptr %arrayidx, align 4, !dbg !40, !tbaa !43
  %tobool.not = icmp eq i32 %2, 0, !dbg !40
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !47

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !48
  %3 = load i32, ptr %arrayidx2, align 4, !dbg !48, !tbaa !43
  %arrayidx4 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !50
  %4 = load i32, ptr %arrayidx4, align 4, !dbg !50, !tbaa !43
  %mul = mul nsw i32 %4, %3, !dbg !51
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !52
  store i32 %mul, ptr %arrayidx6, align 4, !dbg !53, !tbaa !43
  br label %for.inc, !dbg !54

pre.alc:                                          ; preds = %for.body.preheader
  %5 = urem i64 %wide.trip.count, %1
  %total.iterations.to.be.vectorized = sub nsw i64 %wide.trip.count, %5
  %6 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %stepVector.update.values = shufflevector <vscale x 2 x i64> %6, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  %all.true = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %7 = phi i64 [ 0, %pre.alc ], [ %16, %new.latch ]
  %second.itr.index = add i64 %7, %1
  %cond.ptr = getelementptr inbounds i32, ptr %cond, i64 %7
  %loaded.cond = load <vscale x 2 x i32>, ptr %cond.ptr, align 8
  %8 = icmp ne <vscale x 2 x i32> %loaded.cond, zeroinitializer
  %cond.ptr.2 = getelementptr inbounds i32, ptr %cond, i64 %second.itr.index
  %loaded.cond.2 = load <vscale x 2 x i32>, ptr %cond.ptr.2, align 8
  %9 = icmp ne <vscale x 2 x i32> %loaded.cond.2, zeroinitializer
  %num.active.lanes.1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %all.true, <vscale x 2 x i1> %8)
  %num.active.lanes.2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %all.true, <vscale x 2 x i1> %9)
  %num.all.true.preds = add i64 %num.active.lanes.2, %num.active.lanes.1
  %condition.not = icmp ugt i64 %num.all.true.preds, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %10 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %7, i64 1)
  %11 = add <vscale x 2 x i64> %10, %stepVector.update.values
  %12 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %8, <vscale x 2 x i64> %10)
  %13 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %9, <vscale x 2 x i64> %11)
  %14 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.active.lanes.1)
  %15 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %14, <vscale x 2 x i64> %12, <vscale x 2 x i64> %13)
  %uniform.vec.predicate = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.all.true.preds)
  %ptr.a.3 = getelementptr inbounds i32, ptr %a, <vscale x 2 x i64> %15
  %ptr.b.3 = getelementptr inbounds i32, ptr %c, <vscale x 2 x i64> %15
  %ptr.c.3 = getelementptr inbounds i32, ptr %b, <vscale x 2 x i64> %15
  %loaded.a.3 = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.a.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %mul.3 = mul <vscale x 2 x i32> %loaded.a.3, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %loaded.b.3 = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.b.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %shift.3 = shl <vscale x 2 x i32> %loaded.b.3, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.3 = add <vscale x 2 x i32> %shift.3, %mul.3
  %loaded.c.3 = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.c.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %mul.3.2 = mul <vscale x 2 x i32> %loaded.a.3, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.3.2 = add <vscale x 2 x i32> %loaded.c.3, %mul.3.2
  %div.3 = sdiv <vscale x 2 x i32> %add.3, %add.3.2
  tail call void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32> %div.3, <vscale x 2 x ptr> %ptr.a.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate)
  %mul.3.3 = mul <vscale x 2 x i32> %loaded.c.3, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.3.4 = mul <vscale x 2 x i32> %mul.3.3, %div.3
  tail call void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32> %mul.3.4, <vscale x 2 x ptr> %ptr.c.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate)
  %shif.3.2 = shl <vscale x 2 x i32> %mul.3.4, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.3.5 = mul <vscale x 2 x i32> %div.3, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.3.3 = add <vscale x 2 x i32> %shif.3.2, %mul.3.5
  tail call void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32> %add.3.3, <vscale x 2 x ptr> %ptr.b.3, i32 8, <vscale x 2 x i1> %uniform.vec.predicate)
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %ptr.a.1 = getelementptr inbounds i32, ptr %a, i64 %7
  %ptr.b.1 = getelementptr inbounds i32, ptr %c, i64 %7
  %ptr.c.1 = getelementptr inbounds i32, ptr %b, i64 %7
  %loaded.a.1 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.a.1, i32 8, <vscale x 2 x i1> %8, <vscale x 2 x i32> undef)
  %mul.1 = mul <vscale x 2 x i32> %loaded.a.1, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %loaded.b.1 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.b.1, i32 8, <vscale x 2 x i1> %8, <vscale x 2 x i32> undef)
  %shift.1 = shl <vscale x 2 x i32> %loaded.b.1, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.1 = add <vscale x 2 x i32> %shift.1, %mul.1
  %loaded.c.1 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.c.1, i32 8, <vscale x 2 x i1> %8, <vscale x 2 x i32> undef)
  %mul.1.2 = mul <vscale x 2 x i32> %loaded.a.1, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.1.2 = add <vscale x 2 x i32> %loaded.c.1, %mul.1.2
  %div.1 = sdiv <vscale x 2 x i32> %add.1, %add.1.2
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %div.1, ptr %ptr.a.1, i32 8, <vscale x 2 x i1> %8)
  %mul.1.3 = mul <vscale x 2 x i32> %loaded.c.1, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.1.4 = mul <vscale x 2 x i32> %mul.1.3, %div.1
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %mul.1.4, ptr %ptr.c.1, i32 8, <vscale x 2 x i1> %8)
  %shif.1.2 = shl <vscale x 2 x i32> %mul.1.4, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.1.5 = mul <vscale x 2 x i32> %div.1, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.1.3 = add <vscale x 2 x i32> %shif.1.2, %mul.1.5
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %add.1.3, ptr %ptr.b.1, i32 8, <vscale x 2 x i1> %8)
  %ptr.a.2 = getelementptr inbounds i32, ptr %a, i64 %second.itr.index
  %ptr.b.2 = getelementptr inbounds i32, ptr %c, i64 %second.itr.index
  %ptr.c.2 = getelementptr inbounds i32, ptr %b, i64 %second.itr.index
  %loaded.a.2 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.a.2, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %mul.2 = mul <vscale x 2 x i32> %loaded.a.2, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %loaded.b.2 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.b.2, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %shift.2 = shl <vscale x 2 x i32> %loaded.b.2, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.2 = add <vscale x 2 x i32> %shift.2, %mul.2
  %loaded.c.2 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %ptr.c.2, i32 8, <vscale x 2 x i1> %9, <vscale x 2 x i32> undef)
  %mul.2.2 = mul <vscale x 2 x i32> %loaded.a.2, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.2.2 = add <vscale x 2 x i32> %loaded.c.2, %mul.2.2
  %div.2 = sdiv <vscale x 2 x i32> %add.2, %add.2.2
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %div.2, ptr %ptr.a.2, i32 8, <vscale x 2 x i1> %9)
  %mul.2.3 = mul <vscale x 2 x i32> %loaded.c.2, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.2.4 = mul <vscale x 2 x i32> %mul.2.3, %div.2
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %mul.2.4, ptr %ptr.c.2, i32 8, <vscale x 2 x i1> %9)
  %shif.2.2 = shl <vscale x 2 x i32> %mul.2.4, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %mul.2.5 = mul <vscale x 2 x i32> %div.2, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %add.2.3 = add <vscale x 2 x i32> %shif.2.2, %mul.2.5
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %add.2.3, ptr %ptr.b.2, i32 8, <vscale x 2 x i1> %9)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %lane.gather
  %16 = add i64 %second.itr.index, %1
  %loop.exit.cond = icmp eq i64 %16, %total.iterations.to.be.vectorized
  br i1 %loop.exit.cond, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition.1 = icmp eq i64 %5, 0
  br i1 %condition.1, label %for.cond.cleanup, label %for.body.preheader2

for.body.preheader2:                              ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %16, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !35

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !55
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !26, metadata !DIExpression()), !dbg !32
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !33
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !35, !llvm.loop !56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !60 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !64, metadata !DIExpression()), !dbg !91
  %vla38 = alloca [8192 x i32], align 4, !dbg !92
  call void @llvm.dbg.value(metadata i64 8192, metadata !65, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla38, metadata !67, metadata !DIExpression()), !dbg !93
  %vla139 = alloca [8192 x i32], align 4, !dbg !94
  call void @llvm.dbg.value(metadata i64 8192, metadata !71, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla139, metadata !72, metadata !DIExpression()), !dbg !95
  %vla240 = alloca [8192 x i32], align 4, !dbg !96
  call void @llvm.dbg.value(metadata i64 8192, metadata !76, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla240, metadata !77, metadata !DIExpression()), !dbg !97
  %vla341 = alloca [8192 x i32], align 4, !dbg !98
  call void @llvm.dbg.value(metadata i64 8192, metadata !81, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata ptr %vla341, metadata !82, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla240, i8 0, i64 32768, i1 false), !dbg !101, !tbaa !43
  br label %for.body, !dbg !104

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla38, ptr noundef nonnull %vla139, ptr noundef nonnull %vla240, ptr noundef nonnull %vla341, i32 noundef 8192), !dbg !105
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !89, metadata !DIExpression()), !dbg !106
  br label %for.body16, !dbg !107

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %indvars46 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !86, metadata !DIExpression()), !dbg !100
  %arrayidx = getelementptr inbounds i32, ptr %vla38, i64 %indvars.iv, !dbg !108
  store i32 %indvars46, ptr %arrayidx, align 4, !dbg !109, !tbaa !43
  %arrayidx5 = getelementptr inbounds i32, ptr %vla139, i64 %indvars.iv, !dbg !110
  store i32 2, ptr %arrayidx5, align 4, !dbg !111, !tbaa !43
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !112
  %rem42 = urem i16 %rem.lhs.trunc, 10, !dbg !112
  %cmp8 = icmp eq i16 %rem42, 0, !dbg !113
  %conv = zext i1 %cmp8 to i32, !dbg !113
  %arrayidx10 = getelementptr inbounds i32, ptr %vla341, i64 %indvars.iv, !dbg !114
  store i32 %conv, ptr %arrayidx10, align 4, !dbg !115, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !116
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !86, metadata !DIExpression()), !dbg !100
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !117
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !104, !llvm.loop !118

for.cond.cleanup15:                               ; preds = %for.body16
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add), !dbg !120
  ret i32 0, !dbg !121

for.body16:                                       ; preds = %for.body16, %for.cond.cleanup
  %indvars.iv47 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next48, %for.body16 ]
  %sum.044 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv47, metadata !89, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %sum.044, metadata !88, metadata !DIExpression()), !dbg !91
  %arrayidx18 = getelementptr inbounds i32, ptr %vla240, i64 %indvars.iv47, !dbg !122
  %0 = load i32, ptr %arrayidx18, align 4, !dbg !122, !tbaa !43
  %add = add nsw i32 %0, %sum.044, !dbg !125
  call void @llvm.dbg.value(metadata i32 %add, metadata !88, metadata !DIExpression()), !dbg !91
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next48, metadata !89, metadata !DIExpression()), !dbg !106
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 8192, !dbg !127
  br i1 %exitcond50.not, label %for.cond.cleanup15, label %for.body16, !dbg !107, !llvm.loop !128
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>, ptr, i32 immarg, <vscale x 2 x i1>) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr>, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32>, <vscale x 2 x ptr>, i32 immarg, <vscale x 2 x i1>) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "31b0f111804ac48347421d407d07b919")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25, !26}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!24 = !DILocalVariable(name: "cond", arg: 4, scope: !14, file: !1, line: 6, type: !17)
!25 = !DILocalVariable(name: "n", arg: 5, scope: !14, file: !1, line: 6, type: !19)
!26 = !DILocalVariable(name: "i", scope: !27, file: !1, line: 10, type: !19)
!27 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!28 = !DILocation(line: 0, scope: !14)
!29 = !DILocation(line: 9, column: 5, scope: !30)
!30 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 5)
!31 = !{i64 2147612542}
!32 = !DILocation(line: 0, scope: !27)
!33 = !DILocation(line: 10, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 5)
!35 = !DILocation(line: 10, column: 5, scope: !27)
!36 = !DILocation(line: 15, column: 5, scope: !37)
!37 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 5)
!38 = !{i64 2147612581}
!39 = !DILocation(line: 17, column: 1, scope: !14)
!40 = !DILocation(line: 11, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 13)
!42 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 33)
!43 = !{!44, !44, i64 0}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C/C++ TBAA"}
!47 = !DILocation(line: 11, column: 13, scope: !42)
!48 = !DILocation(line: 12, column: 20, scope: !49)
!49 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 22)
!50 = !DILocation(line: 12, column: 27, scope: !49)
!51 = !DILocation(line: 12, column: 25, scope: !49)
!52 = !DILocation(line: 12, column: 13, scope: !49)
!53 = !DILocation(line: 12, column: 18, scope: !49)
!54 = !DILocation(line: 13, column: 9, scope: !49)
!55 = !DILocation(line: 10, column: 28, scope: !34)
!56 = distinct !{!56, !35, !57, !58, !59}
!57 = !DILocation(line: 14, column: 5, scope: !27)
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !61, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!19}
!63 = !{!64, !65, !67, !71, !72, !76, !77, !81, !82, !86, !88, !89}
!64 = !DILocalVariable(name: "n", scope: !60, file: !1, line: 22, type: !19)
!65 = !DILocalVariable(name: "__vla_expr0", scope: !60, type: !66, flags: DIFlagArtificial)
!66 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DILocalVariable(name: "a", scope: !60, file: !1, line: 24, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: !65)
!71 = !DILocalVariable(name: "__vla_expr1", scope: !60, type: !66, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "b", scope: !60, file: !1, line: 25, type: !73)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: !71)
!76 = !DILocalVariable(name: "__vla_expr2", scope: !60, type: !66, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "c", scope: !60, file: !1, line: 26, type: !78)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: !76)
!81 = !DILocalVariable(name: "__vla_expr3", scope: !60, type: !66, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "cond", scope: !60, file: !1, line: 27, type: !83)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: !81)
!86 = !DILocalVariable(name: "i", scope: !87, file: !1, line: 29, type: !19)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 29, column: 5)
!88 = !DILocalVariable(name: "sum", scope: !60, file: !1, line: 39, type: !19)
!89 = !DILocalVariable(name: "i", scope: !90, file: !1, line: 41, type: !19)
!90 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 5)
!91 = !DILocation(line: 0, scope: !60)
!92 = !DILocation(line: 24, column: 5, scope: !60)
!93 = !DILocation(line: 24, column: 9, scope: !60)
!94 = !DILocation(line: 25, column: 5, scope: !60)
!95 = !DILocation(line: 25, column: 9, scope: !60)
!96 = !DILocation(line: 26, column: 5, scope: !60)
!97 = !DILocation(line: 26, column: 9, scope: !60)
!98 = !DILocation(line: 27, column: 5, scope: !60)
!99 = !DILocation(line: 27, column: 9, scope: !60)
!100 = !DILocation(line: 0, scope: !87)
!101 = !DILocation(line: 32, column: 14, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 29, column: 33)
!103 = distinct !DILexicalBlock(scope: !87, file: !1, line: 29, column: 5)
!104 = !DILocation(line: 29, column: 5, scope: !87)
!105 = !DILocation(line: 37, column: 5, scope: !60)
!106 = !DILocation(line: 0, scope: !90)
!107 = !DILocation(line: 41, column: 5, scope: !90)
!108 = !DILocation(line: 30, column: 9, scope: !102)
!109 = !DILocation(line: 30, column: 14, scope: !102)
!110 = !DILocation(line: 31, column: 9, scope: !102)
!111 = !DILocation(line: 31, column: 14, scope: !102)
!112 = !DILocation(line: 33, column: 21, scope: !102)
!113 = !DILocation(line: 33, column: 25, scope: !102)
!114 = !DILocation(line: 33, column: 9, scope: !102)
!115 = !DILocation(line: 33, column: 17, scope: !102)
!116 = !DILocation(line: 29, column: 28, scope: !103)
!117 = !DILocation(line: 29, column: 23, scope: !103)
!118 = distinct !{!118, !104, !119, !58, !59}
!119 = !DILocation(line: 34, column: 5, scope: !87)
!120 = !DILocation(line: 45, column: 5, scope: !60)
!121 = !DILocation(line: 49, column: 1, scope: !60)
!122 = !DILocation(line: 42, column: 16, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 41, column: 33)
!124 = distinct !DILexicalBlock(scope: !90, file: !1, line: 41, column: 5)
!125 = !DILocation(line: 42, column: 13, scope: !123)
!126 = !DILocation(line: 41, column: 28, scope: !124)
!127 = !DILocation(line: 41, column: 23, scope: !124)
!128 = distinct !{!128, !107, !129, !58, !59}
!129 = !DILocation(line: 43, column: 5, scope: !90)
