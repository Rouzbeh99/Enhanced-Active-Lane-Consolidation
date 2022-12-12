; ModuleID = 'alc_applied.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !0
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !11
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !13
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !15
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@str.2 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !29 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !35, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %b, metadata !36, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %c, metadata !37, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata ptr %cond, metadata !38, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 %n, metadata !39, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  %cmp2124 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !40, metadata !DIExpression()), !dbg !47
  br i1 %cmp2124, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !48

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %0 = tail call i32 @llvm.vscale.i32(), !dbg !46
  %1 = shl i32 %0, 2
  %2 = shl i32 %0, 3
  %.not = icmp ugt i32 %2, %n
  br label %for.cond1.preheader.us, !dbg !49

for.cond1.preheader.us:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.us.preheader
  %j.0127.us = phi i32 [ %inc73.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.0127.us, metadata !40, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.value(metadata i32 0, metadata !42, metadata !DIExpression()), !dbg !50
  br i1 %.not, label %for.body4.us.preheader, label %pre.alc, !dbg !48

for.body4.us.preheader:                           ; preds = %middel.block, %for.cond1.preheader.us
  %indvars.iv.ph = phi i64 [ %100, %middel.block ], [ 0, %for.cond1.preheader.us ]
  br label %for.body4.us, !dbg !48

for.body4.us:                                     ; preds = %for.body4.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %indvars.iv.ph, %for.body4.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !42, metadata !DIExpression()), !dbg !50
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !51
  %3 = load i8, ptr %arrayidx.us, align 1, !dbg !51, !tbaa !55, !range !59
  %tobool.not.us = icmp eq i8 %3, 0, !dbg !51
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !60

if.then.us:                                       ; preds = %for.body4.us
  %arrayidx6.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !61
  %arrayidx8.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !63
  %4 = load i32, ptr %arrayidx8.us, align 4, !dbg !63, !tbaa !64
  %arrayidx11.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !66
  %5 = load i32, ptr %arrayidx11.us, align 4, !dbg !66, !tbaa !64
  %6 = trunc i64 %indvars.iv to i32, !dbg !67
  %mul21.us = mul nsw i32 %5, %6, !dbg !67
  %reass.add = sub i32 %6, %4
  %reass.mul = shl i32 %reass.add, 1
  %add.us = add i32 %mul21.us, %5, !dbg !68
  %add25.us = add i32 %add.us, %reass.mul, !dbg !69
  store i32 %add25.us, ptr %arrayidx6.us, align 4, !dbg !69, !tbaa !64
  %mul43120.us.neg = sub i32 -3, %4, !dbg !70
  %add44.us.neg = mul i32 %mul43120.us.neg, %6, !dbg !70
  %7 = add i32 %5, %4
  %reass.add122.us = sub i32 %add25.us, %7
  %reass.mul123.us = shl i32 %reass.add122.us, 1
  %add37.us = add i32 %add44.us.neg, 2, !dbg !71
  %sub47.us = add i32 %add37.us, %reass.mul123.us, !dbg !72
  store i32 %sub47.us, ptr %arrayidx11.us, align 4, !dbg !72, !tbaa !64
  %8 = sub nsw i32 %4, %sub47.us, !dbg !73
  %sub61.us = shl nsw i32 %8, 1, !dbg !73
  %mul62.us = mul nsw i32 %6, %6, !dbg !74
  %add63.us = add nsw i32 %sub61.us, %mul62.us, !dbg !75
  %mul64.neg.us = mul i32 %add63.us, -3, !dbg !76
  %9 = sub i32 %add25.us, %6, !dbg !77
  %10 = add i32 %9, %sub47.us, !dbg !78
  %sub65.us = shl i32 %10, 1, !dbg !78
  %sub71.us = add i32 %mul64.neg.us, %sub65.us, !dbg !79
  store i32 %sub71.us, ptr %arrayidx8.us, align 4, !dbg !79, !tbaa !64
  br label %for.inc.us, !dbg !80

pre.alc:                                          ; preds = %for.cond1.preheader.us
  %11 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %12 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %13 = urem i32 %n, %1
  %total.iterations.to.be.vectorized = sub i32 %n, %13
  %14 = load <vscale x 4 x i8>, ptr %cond, align 4
  %15 = icmp ne <vscale x 4 x i8> %14, zeroinitializer
  %16 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %15, <vscale x 4 x i1> %15)
  %17 = trunc i64 %16 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %86, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %12, %pre.alc ], [ %83, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %15, %pre.alc ], [ %84, %new.latch ]
  %uniform.vec.actives = phi i32 [ %17, %pre.alc ], [ %85, %new.latch ]
  %18 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %19 = sext i32 %vector.loop.index to i64, !dbg !51
  %20 = getelementptr inbounds i8, ptr %cond, i64 %19, !dbg !51
  %21 = load <vscale x 4 x i8>, ptr %20, align 4
  %22 = icmp ne <vscale x 4 x i8> %21, zeroinitializer
  %23 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %22, <vscale x 4 x i1> %22)
  %24 = trunc i64 %23 to i32
  %25 = add i32 %uniform.vec.actives, %24
  %condition.not = icmp ugt i32 %25, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %26 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %27 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %22, <vscale x 4 x i32> %18)
  %28 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %29 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %26, <vscale x 4 x i32> %27)
  %30 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %25)
  %31 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %30)
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %25, %1
  br i1 %33, label %uniform.block, label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %34 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %11, ptr %c, <vscale x 4 x i32> %29)
  %35 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %11, ptr %b, <vscale x 4 x i32> %29)
  %36 = mul <vscale x 4 x i32> %34, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %37 = add <vscale x 4 x i32> %35, %36
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %37, <vscale x 4 x i1> %11, ptr %a, <vscale x 4 x i32> %29)
  %38 = add <vscale x 4 x i32> %35, %34
  %39 = sub <vscale x 4 x i32> %37, %38
  %40 = shl <vscale x 4 x i32> %39, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %41 = add <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %41, <vscale x 4 x i1> %11, ptr %b, <vscale x 4 x i32> %29)
  %42 = add <vscale x 4 x i32> %41, %37
  %43 = sub <vscale x 4 x i32> %34, %41
  %44 = mul <vscale x 4 x i32> %43, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -6, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %45 = shl <vscale x 4 x i32> %42, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %46 = add <vscale x 4 x i32> %45, %44
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %46, <vscale x 4 x i1> %11, ptr %c, <vscale x 4 x i32> %29)
  %47 = add i32 %vector.loop.index, %1
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %47, i32 1)
  %49 = sext i32 %47 to i64, !dbg !51
  %50 = getelementptr inbounds i8, ptr %cond, i64 %49, !dbg !51
  %51 = load <vscale x 4 x i8>, ptr %50, align 4
  %52 = icmp ne <vscale x 4 x i8> %51, zeroinitializer
  %53 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %52, <vscale x 4 x i1> %52)
  %54 = trunc i64 %53 to i32
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %55 = getelementptr inbounds i32, ptr %a, i64 %19, !dbg !61
  %56 = getelementptr inbounds i32, ptr %c, i64 %19, !dbg !63
  %57 = getelementptr inbounds i32, ptr %b, i64 %19, !dbg !66
  %58 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %56, i32 16, <vscale x 4 x i1> %22, <vscale x 4 x i32> undef)
  %59 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %57, i32 16, <vscale x 4 x i1> %22, <vscale x 4 x i32> undef)
  %60 = mul <vscale x 4 x i32> %59, %18
  %61 = mul <vscale x 4 x i32> %58, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %62 = shl <vscale x 4 x i32> %18, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %63 = add <vscale x 4 x i32> %59, %62
  %64 = add <vscale x 4 x i32> %63, %61
  %65 = add <vscale x 4 x i32> %64, %60
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %65, ptr %55, i32 16, <vscale x 4 x i1> %22)
  %66 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), %58
  %67 = mul <vscale x 4 x i32> %66, %18
  %68 = add <vscale x 4 x i32> %59, %58
  %69 = sub <vscale x 4 x i32> %65, %68
  %70 = shl <vscale x 4 x i32> %69, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %71 = add <vscale x 4 x i32> %67, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %72 = add <vscale x 4 x i32> %71, %70
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %72, ptr %57, i32 16, <vscale x 4 x i1> %22)
  %73 = sub <vscale x 4 x i32> %58, %72
  %74 = shl <vscale x 4 x i32> %73, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %75 = mul <vscale x 4 x i32> %18, %18
  %76 = add <vscale x 4 x i32> %74, %75
  %77 = mul <vscale x 4 x i32> %76, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %78 = sub <vscale x 4 x i32> %65, %18
  %79 = add <vscale x 4 x i32> %78, %72
  %80 = shl <vscale x 4 x i32> %79, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %81 = add <vscale x 4 x i32> %77, %80
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %81, ptr %56, i32 16, <vscale x 4 x i1> %22)
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %82 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %47, %uniform.block ]
  %83 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %29, %lane.gather ], [ %48, %uniform.block ]
  %84 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %30, %lane.gather ], [ %52, %uniform.block ]
  %85 = phi i32 [ %uniform.vec.actives, %linearized ], [ %32, %lane.gather ], [ %54, %uniform.block ]
  %86 = add i32 %82, %1
  %.not3 = icmp ult i32 %86, %total.iterations.to.be.vectorized
  br i1 %.not3, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %13, 0
  %87 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %84, ptr %c, <vscale x 4 x i32> %83)
  %88 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %84, ptr %b, <vscale x 4 x i32> %83)
  %89 = mul <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %90 = add <vscale x 4 x i32> %88, %89
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %90, <vscale x 4 x i1> %84, ptr %a, <vscale x 4 x i32> %83)
  %91 = add <vscale x 4 x i32> %88, %87
  %92 = sub <vscale x 4 x i32> %90, %91
  %93 = shl <vscale x 4 x i32> %92, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %94 = add <vscale x 4 x i32> %93, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 2, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %94, <vscale x 4 x i1> %84, ptr %b, <vscale x 4 x i32> %83)
  %95 = add <vscale x 4 x i32> %94, %90
  %96 = sub <vscale x 4 x i32> %87, %94
  %97 = mul <vscale x 4 x i32> %96, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -6, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %98 = shl <vscale x 4 x i32> %95, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 1, i64 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer)
  %99 = add <vscale x 4 x i32> %98, %97
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %99, <vscale x 4 x i1> %84, ptr %c, <vscale x 4 x i32> %83)
  %100 = zext i32 %86 to i64
  br i1 %condition1, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us.preheader

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !81
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !42, metadata !DIExpression()), !dbg !50
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !82
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !48, !llvm.loop !83

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us, %middel.block
  %inc73.us = add nuw nsw i32 %j.0127.us, 1, !dbg !87
  call void @llvm.dbg.value(metadata i32 %inc73.us, metadata !40, metadata !DIExpression()), !dbg !47
  %exitcond131.not = icmp eq i32 %inc73.us, 10, !dbg !88
  br i1 %exitcond131.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !49, !llvm.loop !89

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void, !dbg !91
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #1 !dbg !92 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !96, metadata !DIExpression()), !dbg !98
  %conv = sext i32 %n to i64, !dbg !99
  %mul = shl nsw i64 %conv, 2, !dbg !100
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #10, !dbg !101
  call void @llvm.dbg.value(metadata ptr %call, metadata !97, metadata !DIExpression()), !dbg !98
  %cmp = icmp eq ptr %call, null, !dbg !102
  br i1 %cmp, label %if.then, label %if.end, !dbg !104

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !105
  tail call void @exit(i32 noundef 1) #11, !dbg !107
  unreachable, !dbg !107

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !108
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #1 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !113, metadata !DIExpression()), !dbg !115
  %conv = sext i32 %n to i64, !dbg !116
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #10, !dbg !117
  call void @llvm.dbg.value(metadata ptr %call, metadata !114, metadata !DIExpression()), !dbg !115
  %cmp = icmp eq ptr %call, null, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !120

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.2), !dbg !121
  tail call void @exit(i32 noundef 1) #11, !dbg !123
  unreachable, !dbg !123

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !124
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #1 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata i32 5000000, metadata !129, metadata !DIExpression()), !dbg !135
  %call = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !136
  store ptr %call, ptr @a, align 8, !dbg !137, !tbaa !138
  %call1 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !140
  store ptr %call1, ptr @b, align 8, !dbg !141, !tbaa !138
  %call2 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !142
  store ptr %call2, ptr @c, align 8, !dbg !143, !tbaa !138
  %call3 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !144
  store ptr %call3, ptr @cond, align 8, !dbg !145, !tbaa !138
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !146
  %0 = load ptr, ptr @a, align 8, !tbaa !138
  %1 = load ptr, ptr @b, align 8, !tbaa !138
  %2 = load ptr, ptr @c, align 8, !tbaa !138
  call void @llvm.dbg.value(metadata i32 0, metadata !130, metadata !DIExpression()), !dbg !146
  br label %for.body, !dbg !147

for.cond.cleanup:                                 ; preds = %cond.end
  tail call void @foo(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %call3, i32 noundef 5000000), !dbg !148
  call void @llvm.dbg.value(metadata i32 0, metadata !132, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !149
  %3 = load ptr, ptr @c, align 8, !tbaa !138
  call void @llvm.dbg.value(metadata i32 0, metadata !133, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 0, metadata !132, metadata !DIExpression()), !dbg !135
  br label %for.body17, !dbg !150

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !130, metadata !DIExpression()), !dbg !146
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %indvars.iv, !dbg !151
  %4 = trunc i64 %indvars.iv to i32, !dbg !154
  store i32 %4, ptr %arrayidx, align 4, !dbg !154, !tbaa !64
  %arrayidx5 = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !155
  store i32 2, ptr %arrayidx5, align 4, !dbg !156, !tbaa !64
  %arrayidx7 = getelementptr inbounds i32, ptr %2, i64 %indvars.iv, !dbg !157
  store i32 0, ptr %arrayidx7, align 4, !dbg !158, !tbaa !64
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !159
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !160

cond.false:                                       ; preds = %for.body
  %rem = urem i32 %4, 10, !dbg !161
  %cmp9 = icmp eq i32 %rem, 0, !dbg !162
  %conv = zext i1 %cmp9 to i8, !dbg !162
  br label %cond.end, !dbg !160

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !160
  %arrayidx11 = getelementptr inbounds i8, ptr %call3, i64 %indvars.iv, !dbg !163
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !164, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !130, metadata !DIExpression()), !dbg !146
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !166
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !147, !llvm.loop !167

for.cond.cleanup16:                               ; preds = %for.body17
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i32 noundef %add), !dbg !169
  ret i32 0, !dbg !170

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next47, %for.body17 ]
  %sum.043 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv46, metadata !133, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.value(metadata i32 %sum.043, metadata !132, metadata !DIExpression()), !dbg !135
  %arrayidx19 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv46, !dbg !171
  %5 = load i32, ptr %arrayidx19, align 4, !dbg !171, !tbaa !64
  %add = add nsw i32 %5, %sum.043, !dbg !174
  call void @llvm.dbg.value(metadata i32 %add, metadata !132, metadata !DIExpression()), !dbg !135
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next47, metadata !133, metadata !DIExpression()), !dbg !149
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, 5000000, !dbg !176
  br i1 %exitcond49.not, label %for.cond.cleanup16, label %for.body17, !dbg !150, !llvm.loop !177
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #9

attributes #0 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #2 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 36, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "beab8233bb95bfe1c9164deb7ec2fe7b")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 37, type: !5, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 38, type: !5, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 39, type: !8, isLocal: false, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{i32 7, !"frame-pointer", i32 1}
!28 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!29 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 12, type: !30, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !34)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !32, !33, !6}
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!34 = !{!35, !36, !37, !38, !39, !40, !42}
!35 = !DILocalVariable(name: "a", arg: 1, scope: !29, file: !3, line: 12, type: !32)
!36 = !DILocalVariable(name: "b", arg: 2, scope: !29, file: !3, line: 12, type: !32)
!37 = !DILocalVariable(name: "c", arg: 3, scope: !29, file: !3, line: 12, type: !32)
!38 = !DILocalVariable(name: "cond", arg: 4, scope: !29, file: !3, line: 13, type: !33)
!39 = !DILocalVariable(name: "n", arg: 5, scope: !29, file: !3, line: 13, type: !6)
!40 = !DILocalVariable(name: "j", scope: !41, file: !3, line: 19, type: !6)
!41 = distinct !DILexicalBlock(scope: !29, file: !3, line: 19, column: 5)
!42 = !DILocalVariable(name: "i", scope: !43, file: !3, line: 20, type: !6)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 20, column: 9)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 19, column: 34)
!45 = distinct !DILexicalBlock(scope: !41, file: !3, line: 19, column: 5)
!46 = !DILocation(line: 0, scope: !29)
!47 = !DILocation(line: 0, scope: !41)
!48 = !DILocation(line: 20, column: 9, scope: !43)
!49 = !DILocation(line: 19, column: 5, scope: !41)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocation(line: 21, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !3, line: 21, column: 17)
!53 = distinct !DILexicalBlock(scope: !54, file: !3, line: 20, column: 37)
!54 = distinct !DILexicalBlock(scope: !43, file: !3, line: 20, column: 9)
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{i8 0, i8 2}
!60 = !DILocation(line: 21, column: 17, scope: !53)
!61 = !DILocation(line: 22, column: 29, scope: !62)
!62 = distinct !DILexicalBlock(scope: !52, file: !3, line: 21, column: 26)
!63 = !DILocation(line: 22, column: 40, scope: !62)
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !57, i64 0}
!66 = !DILocation(line: 22, column: 49, scope: !62)
!67 = !DILocation(line: 23, column: 35, scope: !62)
!68 = !DILocation(line: 22, column: 46, scope: !62)
!69 = !DILocation(line: 23, column: 22, scope: !62)
!70 = !DILocation(line: 25, column: 31, scope: !62)
!71 = !DILocation(line: 24, column: 37, scope: !62)
!72 = !DILocation(line: 25, column: 22, scope: !62)
!73 = !DILocation(line: 26, column: 60, scope: !62)
!74 = !DILocation(line: 26, column: 75, scope: !62)
!75 = !DILocation(line: 26, column: 71, scope: !62)
!76 = !DILocation(line: 26, column: 48, scope: !62)
!77 = !DILocation(line: 26, column: 33, scope: !62)
!78 = !DILocation(line: 26, column: 44, scope: !62)
!79 = !DILocation(line: 27, column: 22, scope: !62)
!80 = !DILocation(line: 28, column: 13, scope: !62)
!81 = !DILocation(line: 20, column: 32, scope: !54)
!82 = !DILocation(line: 20, column: 27, scope: !54)
!83 = distinct !{!83, !48, !84, !85, !86}
!84 = !DILocation(line: 29, column: 9, scope: !43)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !DILocation(line: 19, column: 30, scope: !45)
!88 = !DILocation(line: 19, column: 23, scope: !45)
!89 = distinct !{!89, !49, !90, !85, !86}
!90 = !DILocation(line: 30, column: 5, scope: !41)
!91 = !DILocation(line: 34, column: 1, scope: !29)
!92 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 41, type: !93, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!5, !6}
!95 = !{!96, !97}
!96 = !DILocalVariable(name: "n", arg: 1, scope: !92, file: !3, line: 41, type: !6)
!97 = !DILocalVariable(name: "ptr", scope: !92, file: !3, line: 42, type: !5)
!98 = !DILocation(line: 0, scope: !92)
!99 = !DILocation(line: 42, column: 45, scope: !92)
!100 = !DILocation(line: 42, column: 43, scope: !92)
!101 = !DILocation(line: 42, column: 24, scope: !92)
!102 = !DILocation(line: 43, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !92, file: !3, line: 43, column: 9)
!104 = !DILocation(line: 43, column: 9, scope: !92)
!105 = !DILocation(line: 44, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !3, line: 43, column: 22)
!107 = !DILocation(line: 45, column: 9, scope: !106)
!108 = !DILocation(line: 47, column: 5, scope: !92)
!109 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 50, type: !110, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!8, !6}
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "n", arg: 1, scope: !109, file: !3, line: 50, type: !6)
!114 = !DILocalVariable(name: "ptr", scope: !109, file: !3, line: 51, type: !8)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 51, column: 48, scope: !109)
!117 = !DILocation(line: 51, column: 26, scope: !109)
!118 = !DILocation(line: 52, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !109, file: !3, line: 52, column: 9)
!120 = !DILocation(line: 52, column: 9, scope: !109)
!121 = !DILocation(line: 53, column: 9, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !3, line: 52, column: 22)
!123 = !DILocation(line: 54, column: 9, scope: !122)
!124 = !DILocation(line: 56, column: 5, scope: !109)
!125 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !126, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{!6}
!128 = !{!129, !130, !132, !133}
!129 = !DILocalVariable(name: "n", scope: !125, file: !3, line: 61, type: !6)
!130 = !DILocalVariable(name: "i", scope: !131, file: !3, line: 68, type: !6)
!131 = distinct !DILexicalBlock(scope: !125, file: !3, line: 68, column: 5)
!132 = !DILocalVariable(name: "sum", scope: !125, file: !3, line: 77, type: !6)
!133 = !DILocalVariable(name: "i", scope: !134, file: !3, line: 79, type: !6)
!134 = distinct !DILexicalBlock(scope: !125, file: !3, line: 79, column: 5)
!135 = !DILocation(line: 0, scope: !125)
!136 = !DILocation(line: 63, column: 9, scope: !125)
!137 = !DILocation(line: 63, column: 7, scope: !125)
!138 = !{!139, !139, i64 0}
!139 = !{!"any pointer", !57, i64 0}
!140 = !DILocation(line: 64, column: 9, scope: !125)
!141 = !DILocation(line: 64, column: 7, scope: !125)
!142 = !DILocation(line: 65, column: 9, scope: !125)
!143 = !DILocation(line: 65, column: 7, scope: !125)
!144 = !DILocation(line: 66, column: 12, scope: !125)
!145 = !DILocation(line: 66, column: 10, scope: !125)
!146 = !DILocation(line: 0, scope: !131)
!147 = !DILocation(line: 68, column: 5, scope: !131)
!148 = !DILocation(line: 75, column: 5, scope: !125)
!149 = !DILocation(line: 0, scope: !134)
!150 = !DILocation(line: 79, column: 5, scope: !134)
!151 = !DILocation(line: 69, column: 9, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !3, line: 68, column: 33)
!153 = distinct !DILexicalBlock(scope: !131, file: !3, line: 68, column: 5)
!154 = !DILocation(line: 69, column: 14, scope: !152)
!155 = !DILocation(line: 70, column: 9, scope: !152)
!156 = !DILocation(line: 70, column: 14, scope: !152)
!157 = !DILocation(line: 71, column: 9, scope: !152)
!158 = !DILocation(line: 71, column: 14, scope: !152)
!159 = !DILocation(line: 72, column: 22, scope: !152)
!160 = !DILocation(line: 72, column: 20, scope: !152)
!161 = !DILocation(line: 72, column: 36, scope: !152)
!162 = !DILocation(line: 72, column: 41, scope: !152)
!163 = !DILocation(line: 72, column: 9, scope: !152)
!164 = !DILocation(line: 72, column: 17, scope: !152)
!165 = !DILocation(line: 68, column: 28, scope: !153)
!166 = !DILocation(line: 68, column: 23, scope: !153)
!167 = distinct !{!167, !147, !168, !85, !86}
!168 = !DILocation(line: 73, column: 5, scope: !131)
!169 = !DILocation(line: 83, column: 5, scope: !125)
!170 = !DILocation(line: 85, column: 5, scope: !125)
!171 = !DILocation(line: 80, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 79, column: 33)
!173 = distinct !DILexicalBlock(scope: !134, file: !3, line: 79, column: 5)
!174 = !DILocation(line: 80, column: 13, scope: !172)
!175 = !DILocation(line: 79, column: 28, scope: !173)
!176 = !DILocation(line: 79, column: 23, scope: !173)
!177 = distinct !{!177, !150, !178, !85, !86}
!178 = !DILocation(line: 81, column: 5, scope: !134)
