; ModuleID = 'alc_itr_with_hint.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !23
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !25
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !27
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !29
@.str.4 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.10 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !43 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !47, metadata !DIExpression()), !dbg !58
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #13, !dbg !59
  %0 = load i64, ptr %ts, align 8, !dbg !60, !tbaa !61
  %conv = sitofp i64 %0 to double, !dbg !66
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !67
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !67, !tbaa !68
  %conv1 = sitofp i64 %1 to double, !dbg !69
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !70
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13, !dbg !72
  ret double %2, !dbg !73
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !74 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !102
  %call = tail call double @getTimeMiliSeconds(), !dbg !103
  call void @llvm.dbg.value(metadata double %call, metadata !95, metadata !DIExpression()), !dbg !102
  %0 = load i32, ptr @EventSet, align 4, !dbg !104, !tbaa !106
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #13, !dbg !108
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !102
  %cmp.not = icmp eq i32 %call1, 0, !dbg !109
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !110

for.cond.preheader:                               ; preds = %entry
  %cmp5139 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !111
  br i1 %cmp5139, label %for.cond4.preheader.us.preheader, label %for.cond.cleanup, !dbg !112

for.cond4.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !102
  %2 = shl i32 %1, 2
  %3 = shl i32 %1, 3
  %.not = icmp ugt i32 %3, %n
  br label %for.cond4.preheader.us, !dbg !113

for.cond4.preheader.us:                           ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond4.preheader.us.preheader
  %j.0142.us = phi i32 [ %inc78.us, %for.cond4.for.cond.cleanup6_crit_edge.us ], [ 0, %for.cond4.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.0142.us, metadata !96, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !114
  br i1 %.not, label %for.body7.us.preheader, label %pre.alc, !dbg !112

for.body7.us.preheader:                           ; preds = %middel.block, %for.cond4.preheader.us
  %indvars.iv.ph = phi i64 [ %123, %middel.block ], [ 0, %for.cond4.preheader.us ]
  br label %for.body7.us, !dbg !112

for.body7.us:                                     ; preds = %for.body7.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %indvars.iv.ph, %for.body7.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !98, metadata !DIExpression()), !dbg !114
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !115
  %4 = load i8, ptr %arrayidx.us, align 1, !dbg !115, !tbaa !119, !range !121
  %tobool.not.us = icmp eq i8 %4, 0, !dbg !115
  br i1 %tobool.not.us, label %for.inc.us, label %if.then8.us, !dbg !122

if.then8.us:                                      ; preds = %for.body7.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !123
  %arrayidx12.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !125
  %5 = load i32, ptr %arrayidx12.us, align 4, !dbg !125, !tbaa !106
  %arrayidx15.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !126
  %6 = load i32, ptr %arrayidx15.us, align 4, !dbg !126, !tbaa !106
  %7 = trunc i64 %indvars.iv to i32, !dbg !127
  %mul25.us = mul nsw i32 %6, %7, !dbg !127
  %reass.add = sub i32 %7, %5
  %reass.mul = shl i32 %reass.add, 1
  %add.us = add i32 %mul25.us, %6, !dbg !128
  %add29.us = add i32 %add.us, %reass.mul, !dbg !129
  store i32 %add29.us, ptr %arrayidx10.us, align 4, !dbg !129, !tbaa !106
  %mul47135.us.neg = sub i32 -3, %5, !dbg !130
  %add48.us.neg = mul i32 %mul47135.us.neg, %7, !dbg !130
  %8 = add i32 %6, %5
  %reass.add137.us = sub i32 %add29.us, %8
  %reass.mul138.us = shl i32 %reass.add137.us, 1
  %add41.us = add i32 %add48.us.neg, 2, !dbg !131
  %sub51.us = add i32 %add41.us, %reass.mul138.us, !dbg !132
  store i32 %sub51.us, ptr %arrayidx15.us, align 4, !dbg !132, !tbaa !106
  %9 = sub nsw i32 %5, %sub51.us, !dbg !133
  %sub65.us = shl nsw i32 %9, 1, !dbg !133
  %mul66.us = mul nsw i32 %7, %7, !dbg !134
  %add67.us = add nsw i32 %sub65.us, %mul66.us, !dbg !135
  %mul68.neg.us = mul i32 %add67.us, -3, !dbg !136
  %10 = sub i32 %add29.us, %7, !dbg !137
  %11 = add i32 %10, %sub51.us, !dbg !138
  %sub69.us = shl i32 %11, 1, !dbg !138
  %sub75.us = add i32 %mul68.neg.us, %sub69.us, !dbg !139
  store i32 %sub75.us, ptr %arrayidx12.us, align 4, !dbg !139, !tbaa !106
  br label %for.inc.us, !dbg !140

pre.alc:                                          ; preds = %for.cond4.preheader.us
  %12 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %13 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %14 = urem i32 %n, %2
  %total.iterations.to.be.vectorized = sub i32 %n, %14
  %15 = load <vscale x 4 x i8>, ptr %cond, align 4
  %16 = icmp ne <vscale x 4 x i8> %15, zeroinitializer
  %17 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %16, <vscale x 4 x i1> %16)
  %18 = trunc i64 %17 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %98, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %13, %pre.alc ], [ %95, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %16, %pre.alc ], [ %96, %new.latch ]
  %uniform.vec.actives = phi i32 [ %18, %pre.alc ], [ %97, %new.latch ]
  %19 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %20 = sext i32 %vector.loop.index to i64, !dbg !115
  %21 = getelementptr inbounds i8, ptr %cond, i64 %20, !dbg !115
  %22 = load <vscale x 4 x i8>, ptr %21, align 4
  %23 = icmp ne <vscale x 4 x i8> %22, zeroinitializer
  %24 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %23, <vscale x 4 x i1> %23)
  %25 = trunc i64 %24 to i32
  %26 = add i32 %uniform.vec.actives, %25
  %condition.not = icmp ugt i32 %26, %2
  br i1 %condition.not, label %linearized, label %lane.gather, !prof !141

lane.gather:                                      ; preds = %alc.header
  %27 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %28 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %23, <vscale x 4 x i32> %19)
  %29 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %30 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %27, <vscale x 4 x i32> %28)
  %31 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %26)
  %32 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %31, <vscale x 4 x i1> %31)
  %33 = trunc i64 %32 to i32
  %34 = icmp ult i32 %26, %2
  br i1 %34, label %new.latch, label %uniform.block, !prof !142

linearized:                                       ; preds = %alc.header
  %35 = getelementptr inbounds i32, ptr %a, i64 %20, !dbg !123
  %36 = getelementptr inbounds i32, ptr %c, i64 %20, !dbg !125
  %37 = getelementptr inbounds i32, ptr %b, i64 %20, !dbg !126
  %38 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %36, i32 16, <vscale x 4 x i1> %23, <vscale x 4 x i32> undef)
  %39 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %37, i32 16, <vscale x 4 x i1> %23, <vscale x 4 x i32> undef)
  %40 = mul <vscale x 4 x i32> %39, %19
  %41 = mul <vscale x 4 x i32> %38, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %42 = shl <vscale x 4 x i32> %19, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %43 = add <vscale x 4 x i32> %39, %42
  %44 = add <vscale x 4 x i32> %43, %41
  %45 = add <vscale x 4 x i32> %44, %40
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %45, ptr %35, i32 16, <vscale x 4 x i1> %23)
  %46 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %38
  %47 = mul <vscale x 4 x i32> %46, %19
  %48 = add <vscale x 4 x i32> %39, %38
  %49 = sub <vscale x 4 x i32> %45, %48
  %50 = shl <vscale x 4 x i32> %49, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %51 = add <vscale x 4 x i32> %47, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %52 = add <vscale x 4 x i32> %51, %50
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %52, ptr %37, i32 16, <vscale x 4 x i1> %23)
  %53 = sub <vscale x 4 x i32> %38, %52
  %54 = shl <vscale x 4 x i32> %53, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %55 = mul <vscale x 4 x i32> %19, %19
  %56 = add <vscale x 4 x i32> %54, %55
  %57 = mul <vscale x 4 x i32> %56, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %58 = sub <vscale x 4 x i32> %45, %19
  %59 = add <vscale x 4 x i32> %58, %52
  %60 = shl <vscale x 4 x i32> %59, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %61 = add <vscale x 4 x i32> %57, %60
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %61, ptr %36, i32 16, <vscale x 4 x i1> %23)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %62 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %12, ptr %c, <vscale x 4 x i32> %30)
  %63 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %12, ptr %b, <vscale x 4 x i32> %30)
  %64 = mul <vscale x 4 x i32> %63, %30
  %65 = mul <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %66 = shl <vscale x 4 x i32> %30, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %67 = add <vscale x 4 x i32> %63, %66
  %68 = add <vscale x 4 x i32> %67, %65
  %69 = add <vscale x 4 x i32> %68, %64
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %69, <vscale x 4 x i1> %12, ptr %a, <vscale x 4 x i32> %30)
  %70 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %62
  %71 = mul <vscale x 4 x i32> %70, %30
  %72 = add <vscale x 4 x i32> %63, %62
  %73 = sub <vscale x 4 x i32> %69, %72
  %74 = shl <vscale x 4 x i32> %73, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %75 = add <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %76 = add <vscale x 4 x i32> %75, %74
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %76, <vscale x 4 x i1> %12, ptr %b, <vscale x 4 x i32> %30)
  %77 = sub <vscale x 4 x i32> %62, %76
  %78 = shl <vscale x 4 x i32> %77, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %79 = mul <vscale x 4 x i32> %30, %30
  %80 = add <vscale x 4 x i32> %78, %79
  %81 = mul <vscale x 4 x i32> %80, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %82 = sub <vscale x 4 x i32> %69, %30
  %83 = add <vscale x 4 x i32> %82, %76
  %84 = shl <vscale x 4 x i32> %83, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %85 = add <vscale x 4 x i32> %81, %84
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %85, <vscale x 4 x i1> %12, ptr %c, <vscale x 4 x i32> %30)
  %86 = add i32 %vector.loop.index, %2
  %87 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %86, i32 1)
  %88 = sext i32 %86 to i64, !dbg !115
  %89 = getelementptr inbounds i8, ptr %cond, i64 %88, !dbg !115
  %90 = load <vscale x 4 x i8>, ptr %89, align 4
  %91 = icmp ne <vscale x 4 x i8> %90, zeroinitializer
  %92 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %91, <vscale x 4 x i1> %91)
  %93 = trunc i64 %92 to i32
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %94 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %86, %uniform.block ]
  %95 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %30, %lane.gather ], [ %87, %uniform.block ]
  %96 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %31, %lane.gather ], [ %91, %uniform.block ]
  %97 = phi i32 [ %uniform.vec.actives, %linearized ], [ %33, %lane.gather ], [ %93, %uniform.block ]
  %98 = add i32 %94, %2
  %.not3 = icmp ult i32 %98, %total.iterations.to.be.vectorized
  br i1 %.not3, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %14, 0
  %99 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %96, ptr %c, <vscale x 4 x i32> %95)
  %100 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %96, ptr %b, <vscale x 4 x i32> %95)
  %101 = mul <vscale x 4 x i32> %100, %95
  %102 = mul <vscale x 4 x i32> %99, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %103 = shl <vscale x 4 x i32> %95, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %104 = add <vscale x 4 x i32> %100, %103
  %105 = add <vscale x 4 x i32> %104, %102
  %106 = add <vscale x 4 x i32> %105, %101
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %106, <vscale x 4 x i1> %96, ptr %a, <vscale x 4 x i32> %95)
  %107 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %99
  %108 = mul <vscale x 4 x i32> %107, %95
  %109 = add <vscale x 4 x i32> %100, %99
  %110 = sub <vscale x 4 x i32> %106, %109
  %111 = shl <vscale x 4 x i32> %110, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %112 = add <vscale x 4 x i32> %108, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %113 = add <vscale x 4 x i32> %112, %111
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %113, <vscale x 4 x i1> %96, ptr %b, <vscale x 4 x i32> %95)
  %114 = sub <vscale x 4 x i32> %99, %113
  %115 = shl <vscale x 4 x i32> %114, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %116 = mul <vscale x 4 x i32> %95, %95
  %117 = add <vscale x 4 x i32> %115, %116
  %118 = mul <vscale x 4 x i32> %117, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %119 = sub <vscale x 4 x i32> %106, %95
  %120 = add <vscale x 4 x i32> %119, %113
  %121 = shl <vscale x 4 x i32> %120, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %122 = add <vscale x 4 x i32> %118, %121
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %122, <vscale x 4 x i1> %96, ptr %c, <vscale x 4 x i32> %95)
  %123 = zext i32 %98 to i64
  br i1 %condition1, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us.preheader

for.inc.us:                                       ; preds = %if.then8.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !98, metadata !DIExpression()), !dbg !114
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !144
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us, !dbg !112, !llvm.loop !145

for.cond4.for.cond.cleanup6_crit_edge.us:         ; preds = %for.inc.us, %middel.block
  %inc78.us = add nuw nsw i32 %j.0142.us, 1, !dbg !149
  call void @llvm.dbg.value(metadata i32 %inc78.us, metadata !96, metadata !DIExpression()), !dbg !111
  %exitcond146.not = icmp eq i32 %inc78.us, 10, !dbg !150
  br i1 %exitcond146.not, label %for.cond.cleanup, label %for.cond4.preheader.us, !dbg !113, !llvm.loop !151

if.then:                                          ; preds = %entry
  %124 = load ptr, ptr @stderr, align 8, !dbg !153, !tbaa !155
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 36) #14, !dbg !153
  tail call void @exit(i32 noundef %call1) #15, !dbg !153
  unreachable, !dbg !153

for.cond.cleanup:                                 ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond.preheader
  %125 = load i32, ptr @EventSet, align 4, !dbg !157, !tbaa !106
  %call80 = tail call i32 @PAPI_stop(i32 noundef %125, ptr noundef nonnull @CounterValues) #13, !dbg !159
  call void @llvm.dbg.value(metadata i32 %call80, metadata !94, metadata !DIExpression()), !dbg !102
  %cmp81.not = icmp eq i32 %call80, 0, !dbg !160
  br i1 %cmp81.not, label %if.end84, label %if.then82, !dbg !161

if.then82:                                        ; preds = %for.cond.cleanup
  %126 = load ptr, ptr @stderr, align 8, !dbg !162, !tbaa !155
  %call83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str, i32 noundef %call80, ptr noundef nonnull @.str.1, i32 noundef 52) #14, !dbg !162
  tail call void @exit(i32 noundef %call80) #15, !dbg !162
  unreachable, !dbg !162

if.end84:                                         ; preds = %for.cond.cleanup
  %call85 = tail call double @getTimeMiliSeconds(), !dbg !164
  %sub86 = fsub double %call85, %call, !dbg !165
  store double %sub86, ptr @ExecutionTime, align 8, !dbg !166, !tbaa !167
  ret void, !dbg !169
}

declare !dbg !170 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !174 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !178 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !182, metadata !DIExpression()), !dbg !184
  %conv = sext i32 %n to i64, !dbg !185
  %mul = shl nsw i64 %conv, 2, !dbg !186
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !187
  call void @llvm.dbg.value(metadata ptr %call, metadata !183, metadata !DIExpression()), !dbg !184
  %cmp = icmp eq ptr %call, null, !dbg !188
  br i1 %cmp, label %if.then, label %if.end, !dbg !190

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !191
  tail call void @exit(i32 noundef 1) #15, !dbg !193
  unreachable, !dbg !193

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !194
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !199, metadata !DIExpression()), !dbg !201
  %conv = sext i32 %n to i64, !dbg !202
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !203
  call void @llvm.dbg.value(metadata ptr %call, metadata !200, metadata !DIExpression()), !dbg !201
  %cmp = icmp eq ptr %call, null, !dbg !204
  br i1 %cmp, label %if.then, label %if.end, !dbg !206

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !207
  tail call void @exit(i32 noundef 1) #15, !dbg !209
  unreachable, !dbg !209

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !210
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !211 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !216, metadata !DIExpression()), !dbg !228
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !229
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !231
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !232

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !233, !tbaa !155
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !235
  call void @exit(i32 noundef 1) #15, !dbg !236
  unreachable, !dbg !236

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !237
  call void @llvm.dbg.value(metadata i32 %call2, metadata !215, metadata !DIExpression()), !dbg !239
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !240
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !241

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !242, !tbaa !155
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 90) #14, !dbg !242
  tail call void @exit(i32 noundef %call2) #15, !dbg !242
  unreachable, !dbg !242

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !244, !tbaa !106
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call7, metadata !215, metadata !DIExpression()), !dbg !239
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !247
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !248

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !249, !tbaa !155
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 93) #14, !dbg !249
  tail call void @exit(i32 noundef %call7) #15, !dbg !249
  unreachable, !dbg !249

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !221, metadata !DIExpression()), !dbg !239
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !251
  store ptr %call12, ptr @a, align 8, !dbg !252, !tbaa !155
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !253
  store ptr %call13, ptr @b, align 8, !dbg !254, !tbaa !155
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !255
  store ptr %call14, ptr @c, align 8, !dbg !256, !tbaa !155
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !257
  store ptr %call15, ptr @cond, align 8, !dbg !258, !tbaa !155
  store i8 0, ptr %call15, align 1, !dbg !259, !tbaa !119
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !260
  %conv = trunc i64 %call16 to i32, !dbg !260
  tail call void @srand(i32 noundef %conv) #13, !dbg !261
  call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !262
  %4 = load ptr, ptr @a, align 8, !tbaa !155
  %5 = load ptr, ptr @b, align 8, !tbaa !155
  %6 = load ptr, ptr @c, align 8, !tbaa !155
  %7 = load ptr, ptr @cond, align 8, !tbaa !155
  call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !262
  br label %for.body, !dbg !263

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @foo(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !264
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !265
  %8 = load ptr, ptr @c, align 8, !tbaa !155
  call void @llvm.dbg.value(metadata i32 0, metadata !225, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !239
  br label %for.body33, !dbg !266

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !222, metadata !DIExpression()), !dbg !262
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !267
  %9 = trunc i64 %indvars.iv to i32, !dbg !270
  store i32 %9, ptr %arrayidx19, align 4, !dbg !270, !tbaa !106
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !271
  store i32 2, ptr %arrayidx21, align 4, !dbg !272, !tbaa !106
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !273
  store i32 0, ptr %arrayidx23, align 4, !dbg !274, !tbaa !106
  %rem = urem i32 %9, 100, !dbg !275
  %cmp24 = icmp ult i32 %rem, 40, !dbg !276
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !277
  %frombool = zext i1 %cmp24 to i8, !dbg !278
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !278, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !279
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !222, metadata !DIExpression()), !dbg !262
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !280
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !263, !llvm.loop !281

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !283
  %10 = load ptr, ptr @a, align 8, !dbg !284, !tbaa !155
  tail call void @free(ptr noundef %10) #13, !dbg !285
  %11 = load ptr, ptr @b, align 8, !dbg !286, !tbaa !155
  tail call void @free(ptr noundef %11) #13, !dbg !287
  %12 = load ptr, ptr @c, align 8, !dbg !288, !tbaa !155
  tail call void @free(ptr noundef %12) #13, !dbg !289
  %13 = load ptr, ptr @cond, align 8, !dbg !290, !tbaa !155
  tail call void @free(ptr noundef %13) #13, !dbg !291
  %14 = load i64, ptr @CounterValues, align 8, !dbg !292, !tbaa !293
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !295
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !296, !tbaa !293
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !297
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !298, !tbaa !293
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !299
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !300, !tbaa !293
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !301
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !302, !tbaa !167
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !303
  %19 = load i32, ptr @EventSet, align 4, !dbg !304, !tbaa !106
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !306
  call void @llvm.dbg.value(metadata i32 %call45, metadata !215, metadata !DIExpression()), !dbg !239
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !307
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !308

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !225, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !224, metadata !DIExpression()), !dbg !239
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !309
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !309, !tbaa !106
  %add = add nsw i32 %20, %sum.081, !dbg !312
  call void @llvm.dbg.value(metadata i32 %add, metadata !224, metadata !DIExpression()), !dbg !239
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !313
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !225, metadata !DIExpression()), !dbg !265
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !314
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !266, !llvm.loop !315

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !317, !tbaa !155
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 134) #14, !dbg !317
  tail call void @exit(i32 noundef %call45) #15, !dbg !317
  unreachable, !dbg !317

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !319
  call void @llvm.dbg.value(metadata i32 %call51, metadata !215, metadata !DIExpression()), !dbg !239
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !321
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !322

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !323, !tbaa !155
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 137) #14, !dbg !323
  tail call void @exit(i32 noundef %call51) #15, !dbg !323
  unreachable, !dbg !323

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !325
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !326
  ret i32 0, !dbg !327
}

declare !dbg !328 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !329 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !332 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !335 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !340 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !346 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !347 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !348 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #10

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #12 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "d791212f2aade6c4ac1fc5f2b8ccd3f2")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !25, !27, !29}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CounterValues", scope: !2, file: !3, line: 24, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !15)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "EventCodes", scope: !2, file: !3, line: 26, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 27, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 57, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 58, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 59, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 60, type: !8, isLocal: false, isDefinition: true)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{i32 7, !"frame-pointer", i32 1}
!42 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!43 = distinct !DISubprogram(name: "getTimeMiliSeconds", scope: !3, file: !3, line: 15, type: !44, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!22}
!46 = !{!47}
!47 = !DILocalVariable(name: "ts", scope: !43, file: !3, line: 16, type: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !49, line: 10, size: 128, elements: !50)
!49 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!50 = !{!51, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !48, file: !49, line: 12, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !53, line: 160, baseType: !54)
!53 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!54 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !48, file: !49, line: 16, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !53, line: 196, baseType: !54)
!57 = !DILocation(line: 16, column: 5, scope: !43)
!58 = !DILocation(line: 16, column: 21, scope: !43)
!59 = !DILocation(line: 17, column: 5, scope: !43)
!60 = !DILocation(line: 18, column: 15, scope: !43)
!61 = !{!62, !63, i64 0}
!62 = !{!"timespec", !63, i64 0, !63, i64 8}
!63 = !{!"long", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 18, column: 12, scope: !43)
!67 = !DILocation(line: 18, column: 35, scope: !43)
!68 = !{!62, !63, i64 8}
!69 = !DILocation(line: 18, column: 32, scope: !43)
!70 = !DILocation(line: 18, column: 43, scope: !43)
!71 = !DILocation(line: 18, column: 30, scope: !43)
!72 = !DILocation(line: 19, column: 1, scope: !43)
!73 = !DILocation(line: 18, column: 5, scope: !43)
!74 = !DISubprogram(name: "clock_gettime", scope: !75, file: !75, line: 213, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!75 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!76 = !DISubroutineType(types: !77)
!77 = !{!6, !78, !81}
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !53, line: 168, baseType: !6)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!82 = !{}
!83 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 29, type: !84, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !98}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 29, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 29, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 29, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 30, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 30, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 32, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 34, type: !22)
!96 = !DILocalVariable(name: "j", scope: !97, file: !3, line: 38, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 38, column: 5)
!98 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 39, type: !6)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 39, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 38, column: 34)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 38, column: 5)
!102 = !DILocation(line: 0, scope: !83)
!103 = !DILocation(line: 34, column: 16, scope: !83)
!104 = !DILocation(line: 36, column: 30, scope: !105)
!105 = distinct !DILexicalBlock(scope: !83, file: !3, line: 36, column: 9)
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !64, i64 0}
!108 = !DILocation(line: 36, column: 19, scope: !105)
!109 = !DILocation(line: 36, column: 41, scope: !105)
!110 = !DILocation(line: 36, column: 9, scope: !83)
!111 = !DILocation(line: 0, scope: !97)
!112 = !DILocation(line: 39, column: 9, scope: !99)
!113 = !DILocation(line: 38, column: 5, scope: !97)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 40, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 40, column: 17)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 39, column: 37)
!118 = distinct !DILexicalBlock(scope: !99, file: !3, line: 39, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"_Bool", !64, i64 0}
!121 = !{i8 0, i8 2}
!122 = !DILocation(line: 40, column: 17, scope: !117)
!123 = !DILocation(line: 41, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !3, line: 40, column: 26)
!125 = !DILocation(line: 41, column: 40, scope: !124)
!126 = !DILocation(line: 41, column: 49, scope: !124)
!127 = !DILocation(line: 42, column: 35, scope: !124)
!128 = !DILocation(line: 41, column: 46, scope: !124)
!129 = !DILocation(line: 42, column: 22, scope: !124)
!130 = !DILocation(line: 44, column: 31, scope: !124)
!131 = !DILocation(line: 43, column: 37, scope: !124)
!132 = !DILocation(line: 44, column: 22, scope: !124)
!133 = !DILocation(line: 45, column: 60, scope: !124)
!134 = !DILocation(line: 45, column: 75, scope: !124)
!135 = !DILocation(line: 45, column: 71, scope: !124)
!136 = !DILocation(line: 45, column: 48, scope: !124)
!137 = !DILocation(line: 45, column: 33, scope: !124)
!138 = !DILocation(line: 45, column: 44, scope: !124)
!139 = !DILocation(line: 46, column: 22, scope: !124)
!140 = !DILocation(line: 47, column: 13, scope: !124)
!141 = !{!"branch_weights", i32 2000, i32 1}
!142 = !{!"branch_weights", i32 1, i32 2000}
!143 = !DILocation(line: 39, column: 32, scope: !118)
!144 = !DILocation(line: 39, column: 27, scope: !118)
!145 = distinct !{!145, !112, !146, !147, !148}
!146 = !DILocation(line: 48, column: 9, scope: !99)
!147 = !{!"llvm.loop.mustprogress"}
!148 = !{!"llvm.loop.unroll.disable"}
!149 = !DILocation(line: 38, column: 29, scope: !101)
!150 = !DILocation(line: 38, column: 23, scope: !101)
!151 = distinct !{!151, !113, !152, !147, !148}
!152 = !DILocation(line: 49, column: 5, scope: !97)
!153 = !DILocation(line: 36, column: 53, scope: !154)
!154 = distinct !DILexicalBlock(scope: !105, file: !3, line: 36, column: 53)
!155 = !{!156, !156, i64 0}
!156 = !{!"any pointer", !64, i64 0}
!157 = !DILocation(line: 52, column: 29, scope: !158)
!158 = distinct !DILexicalBlock(scope: !83, file: !3, line: 52, column: 9)
!159 = !DILocation(line: 52, column: 19, scope: !158)
!160 = !DILocation(line: 52, column: 55, scope: !158)
!161 = !DILocation(line: 52, column: 9, scope: !83)
!162 = !DILocation(line: 52, column: 67, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !3, line: 52, column: 67)
!164 = !DILocation(line: 54, column: 21, scope: !83)
!165 = !DILocation(line: 54, column: 42, scope: !83)
!166 = !DILocation(line: 54, column: 19, scope: !83)
!167 = !{!168, !168, i64 0}
!168 = !{!"double", !64, i64 0}
!169 = !DILocation(line: 55, column: 1, scope: !83)
!170 = !DISubprogram(name: "PAPI_start", scope: !171, file: !171, line: 1204, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!171 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!172 = !DISubroutineType(types: !173)
!173 = !{!6, !6}
!174 = !DISubprogram(name: "PAPI_stop", scope: !171, file: !171, line: 1206, type: !175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!175 = !DISubroutineType(types: !176)
!176 = !{!6, !6, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!178 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 62, type: !179, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!179 = !DISubroutineType(types: !180)
!180 = !{!5, !6}
!181 = !{!182, !183}
!182 = !DILocalVariable(name: "n", arg: 1, scope: !178, file: !3, line: 62, type: !6)
!183 = !DILocalVariable(name: "ptr", scope: !178, file: !3, line: 63, type: !5)
!184 = !DILocation(line: 0, scope: !178)
!185 = !DILocation(line: 63, column: 45, scope: !178)
!186 = !DILocation(line: 63, column: 43, scope: !178)
!187 = !DILocation(line: 63, column: 24, scope: !178)
!188 = !DILocation(line: 64, column: 13, scope: !189)
!189 = distinct !DILexicalBlock(scope: !178, file: !3, line: 64, column: 9)
!190 = !DILocation(line: 64, column: 9, scope: !178)
!191 = !DILocation(line: 65, column: 9, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 64, column: 22)
!193 = !DILocation(line: 66, column: 9, scope: !192)
!194 = !DILocation(line: 68, column: 5, scope: !178)
!195 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 71, type: !196, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!8, !6}
!198 = !{!199, !200}
!199 = !DILocalVariable(name: "n", arg: 1, scope: !195, file: !3, line: 71, type: !6)
!200 = !DILocalVariable(name: "ptr", scope: !195, file: !3, line: 72, type: !8)
!201 = !DILocation(line: 0, scope: !195)
!202 = !DILocation(line: 72, column: 48, scope: !195)
!203 = !DILocation(line: 72, column: 26, scope: !195)
!204 = !DILocation(line: 73, column: 13, scope: !205)
!205 = distinct !DILexicalBlock(scope: !195, file: !3, line: 73, column: 9)
!206 = !DILocation(line: 73, column: 9, scope: !195)
!207 = !DILocation(line: 74, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 73, column: 22)
!209 = !DILocation(line: 75, column: 9, scope: !208)
!210 = !DILocation(line: 77, column: 5, scope: !195)
!211 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !212, scopeLine: 80, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{!6}
!214 = !{!215, !216, !221, !222, !224, !225}
!215 = !DILocalVariable(name: "status", scope: !211, file: !3, line: 81, type: !6)
!216 = !DILocalVariable(name: "errstring", scope: !211, file: !3, line: 82, type: !217)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 1024, elements: !219)
!218 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!219 = !{!220}
!220 = !DISubrange(count: 128)
!221 = !DILocalVariable(name: "n", scope: !211, file: !3, line: 95, type: !6)
!222 = !DILocalVariable(name: "i", scope: !223, file: !3, line: 106, type: !6)
!223 = distinct !DILexicalBlock(scope: !211, file: !3, line: 106, column: 5)
!224 = !DILocalVariable(name: "sum", scope: !211, file: !3, line: 115, type: !6)
!225 = !DILocalVariable(name: "i", scope: !226, file: !3, line: 117, type: !6)
!226 = distinct !DILexicalBlock(scope: !211, file: !3, line: 117, column: 5)
!227 = !DILocation(line: 82, column: 5, scope: !211)
!228 = !DILocation(line: 82, column: 10, scope: !211)
!229 = !DILocation(line: 84, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !211, file: !3, line: 84, column: 9)
!231 = !DILocation(line: 84, column: 45, scope: !230)
!232 = !DILocation(line: 84, column: 9, scope: !211)
!233 = !DILocation(line: 85, column: 17, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 84, column: 66)
!235 = !DILocation(line: 85, column: 9, scope: !234)
!236 = !DILocation(line: 86, column: 9, scope: !234)
!237 = !DILocation(line: 90, column: 19, scope: !238)
!238 = distinct !DILexicalBlock(scope: !211, file: !3, line: 90, column: 9)
!239 = !DILocation(line: 0, scope: !211)
!240 = !DILocation(line: 90, column: 52, scope: !238)
!241 = !DILocation(line: 90, column: 9, scope: !211)
!242 = !DILocation(line: 90, column: 64, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 90, column: 64)
!244 = !DILocation(line: 93, column: 35, scope: !245)
!245 = distinct !DILexicalBlock(scope: !211, file: !3, line: 93, column: 9)
!246 = !DILocation(line: 93, column: 19, scope: !245)
!247 = !DILocation(line: 93, column: 69, scope: !245)
!248 = !DILocation(line: 93, column: 9, scope: !211)
!249 = !DILocation(line: 93, column: 81, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 93, column: 81)
!251 = !DILocation(line: 97, column: 9, scope: !211)
!252 = !DILocation(line: 97, column: 7, scope: !211)
!253 = !DILocation(line: 98, column: 9, scope: !211)
!254 = !DILocation(line: 98, column: 7, scope: !211)
!255 = !DILocation(line: 99, column: 9, scope: !211)
!256 = !DILocation(line: 99, column: 7, scope: !211)
!257 = !DILocation(line: 100, column: 12, scope: !211)
!258 = !DILocation(line: 100, column: 10, scope: !211)
!259 = !DILocation(line: 102, column: 13, scope: !211)
!260 = !DILocation(line: 104, column: 11, scope: !211)
!261 = !DILocation(line: 104, column: 5, scope: !211)
!262 = !DILocation(line: 0, scope: !223)
!263 = !DILocation(line: 106, column: 5, scope: !223)
!264 = !DILocation(line: 113, column: 5, scope: !211)
!265 = !DILocation(line: 0, scope: !226)
!266 = !DILocation(line: 117, column: 5, scope: !226)
!267 = !DILocation(line: 107, column: 9, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 106, column: 33)
!269 = distinct !DILexicalBlock(scope: !223, file: !3, line: 106, column: 5)
!270 = !DILocation(line: 107, column: 14, scope: !268)
!271 = !DILocation(line: 108, column: 9, scope: !268)
!272 = !DILocation(line: 108, column: 14, scope: !268)
!273 = !DILocation(line: 109, column: 9, scope: !268)
!274 = !DILocation(line: 109, column: 14, scope: !268)
!275 = !DILocation(line: 110, column: 22, scope: !268)
!276 = !DILocation(line: 110, column: 28, scope: !268)
!277 = !DILocation(line: 110, column: 9, scope: !268)
!278 = !DILocation(line: 110, column: 17, scope: !268)
!279 = !DILocation(line: 106, column: 28, scope: !269)
!280 = !DILocation(line: 106, column: 23, scope: !269)
!281 = distinct !{!281, !263, !282, !147, !148}
!282 = !DILocation(line: 111, column: 5, scope: !223)
!283 = !DILocation(line: 121, column: 5, scope: !211)
!284 = !DILocation(line: 123, column: 10, scope: !211)
!285 = !DILocation(line: 123, column: 5, scope: !211)
!286 = !DILocation(line: 124, column: 10, scope: !211)
!287 = !DILocation(line: 124, column: 5, scope: !211)
!288 = !DILocation(line: 125, column: 10, scope: !211)
!289 = !DILocation(line: 125, column: 5, scope: !211)
!290 = !DILocation(line: 126, column: 10, scope: !211)
!291 = !DILocation(line: 126, column: 5, scope: !211)
!292 = !DILocation(line: 128, column: 53, scope: !211)
!293 = !{!294, !294, i64 0}
!294 = !{!"long long", !64, i64 0}
!295 = !DILocation(line: 128, column: 5, scope: !211)
!296 = !DILocation(line: 129, column: 36, scope: !211)
!297 = !DILocation(line: 129, column: 5, scope: !211)
!298 = !DILocation(line: 130, column: 50, scope: !211)
!299 = !DILocation(line: 130, column: 5, scope: !211)
!300 = !DILocation(line: 131, column: 49, scope: !211)
!301 = !DILocation(line: 131, column: 5, scope: !211)
!302 = !DILocation(line: 132, column: 40, scope: !211)
!303 = !DILocation(line: 132, column: 5, scope: !211)
!304 = !DILocation(line: 134, column: 38, scope: !305)
!305 = distinct !DILexicalBlock(scope: !211, file: !3, line: 134, column: 9)
!306 = !DILocation(line: 134, column: 19, scope: !305)
!307 = !DILocation(line: 134, column: 72, scope: !305)
!308 = !DILocation(line: 134, column: 9, scope: !211)
!309 = !DILocation(line: 118, column: 16, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 117, column: 33)
!311 = distinct !DILexicalBlock(scope: !226, file: !3, line: 117, column: 5)
!312 = !DILocation(line: 118, column: 13, scope: !310)
!313 = !DILocation(line: 117, column: 28, scope: !311)
!314 = !DILocation(line: 117, column: 23, scope: !311)
!315 = distinct !{!315, !266, !316, !147, !148}
!316 = !DILocation(line: 119, column: 5, scope: !226)
!317 = !DILocation(line: 134, column: 84, scope: !318)
!318 = distinct !DILexicalBlock(scope: !305, file: !3, line: 134, column: 84)
!319 = !DILocation(line: 137, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !211, file: !3, line: 137, column: 9)
!321 = !DILocation(line: 137, column: 53, scope: !320)
!322 = !DILocation(line: 137, column: 9, scope: !211)
!323 = !DILocation(line: 137, column: 65, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 137, column: 65)
!325 = !DILocation(line: 140, column: 5, scope: !211)
!326 = !DILocation(line: 143, column: 1, scope: !211)
!327 = !DILocation(line: 142, column: 5, scope: !211)
!328 = !DISubprogram(name: "PAPI_library_init", scope: !171, file: !171, line: 1172, type: !172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!329 = !DISubprogram(name: "PAPI_create_eventset", scope: !171, file: !171, line: 1147, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!330 = !DISubroutineType(types: !331)
!331 = !{!6, !5}
!332 = !DISubprogram(name: "PAPI_add_events", scope: !171, file: !171, line: 1143, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!333 = !DISubroutineType(types: !334)
!334 = !{!6, !6, !5, !6}
!335 = !DISubprogram(name: "srand", scope: !336, file: !336, line: 455, type: !337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!336 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!340 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !345}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !344, line: 7, baseType: !52)
!344 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!346 = !DISubprogram(name: "PAPI_remove_events", scope: !171, file: !171, line: 1192, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!347 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !171, file: !171, line: 1149, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!348 = !DISubprogram(name: "PAPI_shutdown", scope: !171, file: !171, line: 1202, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!349 = !DISubroutineType(types: !350)
!350 = !{null}
