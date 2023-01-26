; ModuleID = 'compiled_with_O3.ll'
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !74 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  br label %for.cond4.preheader.us, !dbg !113

for.cond4.preheader.us:                           ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us, %for.cond4.preheader.us.preheader
  %j.0142.us = phi i32 [ %inc78.us, %for.cond4.for.cond.cleanup6_crit_edge.us ], [ 0, %for.cond4.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.0142.us, metadata !96, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !114
  %1 = call i32 @llvm.vscale.i32(), !dbg !112
  %2 = mul i32 %1, 4, !dbg !112
  %3 = mul i32 %2, 2, !dbg !112
  %4 = icmp uge i32 %n, %3, !dbg !112
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !112

for.body7.us:                                     ; preds = %Preheader.for.remaining.iterations, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %14, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !98, metadata !DIExpression()), !dbg !114
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !115
  %5 = load i8, ptr %arrayidx.us, align 1, !dbg !115, !tbaa !119, !range !121
  %tobool.not.us = icmp eq i8 %5, 0, !dbg !115
  br i1 %tobool.not.us, label %for.inc.us, label %if.then8.us, !dbg !122

if.then8.us:                                      ; preds = %for.body7.us
  %arrayidx10.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !123
  %arrayidx12.us = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !125
  %6 = load i32, ptr %arrayidx12.us, align 4, !dbg !125, !tbaa !106
  %arrayidx15.us = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !126
  %7 = load i32, ptr %arrayidx15.us, align 4, !dbg !126, !tbaa !106
  %8 = trunc i64 %indvars.iv to i32, !dbg !127
  %mul25.us = mul nsw i32 %7, %8, !dbg !127
  %.neg = mul i32 %6, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !128
  %9 = shl i32 %indvars.iv.tr, 1, !dbg !128
  %sub19.us = add i32 %7, %9, !dbg !128
  %add.us = add i32 %sub19.us, %mul25.us, !dbg !129
  %add29.us = add i32 %add.us, %.neg, !dbg !130
  store i32 %add29.us, ptr %arrayidx10.us, align 4, !dbg !130, !tbaa !106
  %mul47135.us.neg = sub i32 -3, %6, !dbg !131
  %add48.us.neg = mul i32 %mul47135.us.neg, %8, !dbg !131
  %10 = add i32 %6, %7
  %reass.add137.us = sub i32 %add29.us, %10
  %reass.mul138.us = shl i32 %reass.add137.us, 1
  %add41.us = add i32 %add48.us.neg, 2, !dbg !132
  %sub51.us = add i32 %add41.us, %reass.mul138.us, !dbg !133
  store i32 %sub51.us, ptr %arrayidx15.us, align 4, !dbg !133, !tbaa !106
  %11 = add nsw i32 %sub51.us, %add29.us, !dbg !134
  %12 = sub nsw i32 %6, %sub51.us, !dbg !135
  %sub65.us = shl nsw i32 %12, 1, !dbg !135
  %mul66.us = mul nsw i32 %8, %8, !dbg !136
  %add67.us = add nsw i32 %sub65.us, %mul66.us, !dbg !137
  %mul68.neg.us = mul i32 %add67.us, -3, !dbg !138
  %13 = sub i32 %11, %8, !dbg !139
  %sub69.us = shl i32 %13, 1, !dbg !139
  %sub75.us = add i32 %sub69.us, %mul68.neg.us, !dbg !140
  store i32 %sub75.us, ptr %arrayidx12.us, align 4, !dbg !140, !tbaa !106
  br label %for.inc.us, !dbg !141

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.cond4.preheader.us
  %14 = phi i64 [ 0, %for.cond4.preheader.us ], [ %151, %middel.block ]
  br label %for.body7.us

pre.alc:                                          ; preds = %for.cond4.preheader.us
  %15 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %16 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %17 = urem i32 %n, %2
  %18 = mul i32 %2, 2
  %19 = add i32 %18, %17
  %total.iterations.to.be.vectorized = sub i32 %n, %19
  %20 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !115
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %22 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %22, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %23 = load <vscale x 4 x i8>, ptr %20, align 4
  %24 = icmp eq <vscale x 4 x i8> %23, zeroinitializer
  %25 = xor <vscale x 4 x i1> %24, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %26 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %25, <vscale x 4 x i1> %25)
  %27 = trunc i64 %26 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %117, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %16, %pre.alc ], [ %114, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %25, %pre.alc ], [ %115, %new.latch ]
  %uniform.vec.actives = phi i32 [ %27, %pre.alc ], [ %116, %new.latch ]
  %28 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %29 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !115
  %30 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %31 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg1 = shufflevector <vscale x 4 x i32> %31, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %32 = load <vscale x 4 x i8>, ptr %29, align 4
  %33 = icmp eq <vscale x 4 x i8> %32, zeroinitializer
  %34 = xor <vscale x 4 x i1> %33, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %35 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %34, <vscale x 4 x i1> %34)
  %36 = trunc i64 %35 to i32
  %37 = add i32 %uniform.vec.actives, %36
  %condition = icmp ule i32 %37, %2
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %38 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %39 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %34, <vscale x 4 x i32> %28)
  %40 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %41 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %38, <vscale x 4 x i32> %39)
  %42 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %37)
  %43 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %42, <vscale x 4 x i1> %42)
  %44 = trunc i64 %43 to i32
  %45 = icmp ult i32 %37, %2
  br i1 %45, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %46 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !123
  %47 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !125
  %48 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !126
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %50 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg4 = shufflevector <vscale x 4 x i32> %50, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %51 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %47, i32 16, <vscale x 4 x i1> %34, <vscale x 4 x i32> undef)
  %52 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %48, i32 16, <vscale x 4 x i1> %34, <vscale x 4 x i32> undef)
  %53 = mul <vscale x 4 x i32> %52, %49
  %54 = mul <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %55 = shl <vscale x 4 x i32> %49, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %56 = add <vscale x 4 x i32> %52, %55
  %57 = add <vscale x 4 x i32> %56, %53
  %58 = add <vscale x 4 x i32> %57, %54
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %58, ptr %46, i32 16, <vscale x 4 x i1> %34)
  %59 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %51
  %60 = mul <vscale x 4 x i32> %59, %49
  %61 = add <vscale x 4 x i32> %51, %52
  %62 = sub <vscale x 4 x i32> %58, %61
  %63 = shl <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = add <vscale x 4 x i32> %60, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %65 = add <vscale x 4 x i32> %64, %63
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %65, ptr %48, i32 16, <vscale x 4 x i1> %34)
  %66 = add <vscale x 4 x i32> %65, %58
  %67 = sub <vscale x 4 x i32> %51, %65
  %68 = shl <vscale x 4 x i32> %67, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %69 = mul <vscale x 4 x i32> %49, %49
  %70 = add <vscale x 4 x i32> %68, %69
  %71 = mul <vscale x 4 x i32> %70, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %72 = sub <vscale x 4 x i32> %66, %49
  %73 = shl <vscale x 4 x i32> %72, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %74 = add <vscale x 4 x i32> %73, %71
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %74, ptr %47, i32 16, <vscale x 4 x i1> %34)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %75 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !123
  %76 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !125
  %77 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !126
  %78 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg2 = shufflevector <vscale x 4 x i32> %78, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %79 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %15, ptr %76, <vscale x 4 x i32> %41)
  %80 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %15, ptr %77, <vscale x 4 x i32> %41)
  %81 = mul <vscale x 4 x i32> %80, %41
  %82 = mul <vscale x 4 x i32> %79, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %83 = shl <vscale x 4 x i32> %41, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %84 = add <vscale x 4 x i32> %80, %83
  %85 = add <vscale x 4 x i32> %84, %81
  %86 = add <vscale x 4 x i32> %85, %82
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %86, <vscale x 4 x i1> %15, ptr %75, <vscale x 4 x i32> %41)
  %87 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %79
  %88 = mul <vscale x 4 x i32> %87, %41
  %89 = add <vscale x 4 x i32> %79, %80
  %90 = sub <vscale x 4 x i32> %86, %89
  %91 = shl <vscale x 4 x i32> %90, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %92 = add <vscale x 4 x i32> %88, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %93 = add <vscale x 4 x i32> %92, %91
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %93, <vscale x 4 x i1> %15, ptr %77, <vscale x 4 x i32> %41)
  %94 = add <vscale x 4 x i32> %93, %86
  %95 = sub <vscale x 4 x i32> %79, %93
  %96 = shl <vscale x 4 x i32> %95, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %97 = mul <vscale x 4 x i32> %41, %41
  %98 = add <vscale x 4 x i32> %96, %97
  %99 = mul <vscale x 4 x i32> %98, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %100 = sub <vscale x 4 x i32> %94, %41
  %101 = shl <vscale x 4 x i32> %100, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %102 = add <vscale x 4 x i32> %101, %99
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %102, <vscale x 4 x i1> %15, ptr %76, <vscale x 4 x i32> %41)
  %103 = add i32 %vector.loop.index, %2
  %104 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %103, i32 1)
  %105 = getelementptr inbounds i8, ptr %cond, i32 %103, !dbg !115
  %106 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %103, i32 1)
  %107 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg3 = shufflevector <vscale x 4 x i32> %107, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %108 = load <vscale x 4 x i8>, ptr %105, align 4
  %109 = icmp eq <vscale x 4 x i8> %108, zeroinitializer
  %110 = xor <vscale x 4 x i1> %109, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %111 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %110, <vscale x 4 x i1> %110)
  %112 = trunc i64 %111 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %113 = phi i32 [ %119, %join.block ], [ %vector.loop.index, %linearized ]
  %114 = phi <vscale x 4 x i32> [ %120, %join.block ], [ %uniform.vector, %linearized ]
  %115 = phi <vscale x 4 x i1> [ %121, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %116 = phi i32 [ %122, %join.block ], [ %uniform.vec.actives, %linearized ]
  %117 = add i32 %113, %2
  %118 = icmp uge i32 %117, %total.iterations.to.be.vectorized
  br i1 %118, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %119 = phi i32 [ %vector.loop.index, %lane.gather ], [ %103, %uniform.block ]
  %120 = phi <vscale x 4 x i32> [ %41, %lane.gather ], [ %104, %uniform.block ]
  %121 = phi <vscale x 4 x i1> [ %42, %lane.gather ], [ %110, %uniform.block ]
  %122 = phi i32 [ %44, %lane.gather ], [ %112, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition5 = icmp eq i32 %19, 0
  %123 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !123
  %124 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !125
  %125 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !126
  %126 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg6 = shufflevector <vscale x 4 x i32> %126, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %127 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %115, ptr %124, <vscale x 4 x i32> %114)
  %128 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %115, ptr %125, <vscale x 4 x i32> %114)
  %129 = mul <vscale x 4 x i32> %128, %114
  %130 = mul <vscale x 4 x i32> %127, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %131 = shl <vscale x 4 x i32> %114, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %132 = add <vscale x 4 x i32> %128, %131
  %133 = add <vscale x 4 x i32> %132, %129
  %134 = add <vscale x 4 x i32> %133, %130
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %134, <vscale x 4 x i1> %115, ptr %123, <vscale x 4 x i32> %114)
  %135 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %127
  %136 = mul <vscale x 4 x i32> %135, %114
  %137 = add <vscale x 4 x i32> %127, %128
  %138 = sub <vscale x 4 x i32> %134, %137
  %139 = shl <vscale x 4 x i32> %138, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %140 = add <vscale x 4 x i32> %136, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %141 = add <vscale x 4 x i32> %140, %139
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %141, <vscale x 4 x i1> %115, ptr %125, <vscale x 4 x i32> %114)
  %142 = add <vscale x 4 x i32> %141, %134
  %143 = sub <vscale x 4 x i32> %127, %141
  %144 = shl <vscale x 4 x i32> %143, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %145 = mul <vscale x 4 x i32> %114, %114
  %146 = add <vscale x 4 x i32> %144, %145
  %147 = mul <vscale x 4 x i32> %146, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %148 = sub <vscale x 4 x i32> %142, %114
  %149 = shl <vscale x 4 x i32> %148, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %150 = add <vscale x 4 x i32> %149, %147
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %150, <vscale x 4 x i1> %115, ptr %124, <vscale x 4 x i32> %114)
  %151 = zext i32 %117 to i64
  br i1 %condition5, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %Preheader.for.remaining.iterations

for.inc.us:                                       ; preds = %if.then8.us, %for.body7.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !142
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !98, metadata !DIExpression()), !dbg !114
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !143
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us, label %for.body7.us, !dbg !112, !llvm.loop !144

for.cond4.for.cond.cleanup6_crit_edge.us:         ; preds = %middel.block, %for.inc.us
  %inc78.us = add nuw nsw i32 %j.0142.us, 1, !dbg !148
  call void @llvm.dbg.value(metadata i32 %inc78.us, metadata !96, metadata !DIExpression()), !dbg !111
  %exitcond146.not = icmp eq i32 %inc78.us, 10, !dbg !149
  br i1 %exitcond146.not, label %for.cond.cleanup.loopexit, label %for.cond4.preheader.us, !dbg !113, !llvm.loop !150

if.then:                                          ; preds = %entry
  %152 = load ptr, ptr @stderr, align 8, !dbg !152, !tbaa !154
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 37) #14, !dbg !152
  tail call void @exit(i32 noundef %call1) #15, !dbg !152
  unreachable, !dbg !152

for.cond.cleanup.loopexit:                        ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us
  br label %for.cond.cleanup, !dbg !156

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %153 = load i32, ptr @EventSet, align 4, !dbg !156, !tbaa !106
  %call80 = tail call i32 @PAPI_stop(i32 noundef %153, ptr noundef nonnull @CounterValues) #13, !dbg !158
  call void @llvm.dbg.value(metadata i32 %call80, metadata !94, metadata !DIExpression()), !dbg !102
  %cmp81.not = icmp eq i32 %call80, 0, !dbg !159
  br i1 %cmp81.not, label %if.end84, label %if.then82, !dbg !160

if.then82:                                        ; preds = %for.cond.cleanup
  %154 = load ptr, ptr @stderr, align 8, !dbg !161, !tbaa !154
  %call83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str, i32 noundef %call80, ptr noundef nonnull @.str.1, i32 noundef 53) #14, !dbg !161
  tail call void @exit(i32 noundef %call80) #15, !dbg !161
  unreachable, !dbg !161

if.end84:                                         ; preds = %for.cond.cleanup
  %call85 = tail call double @getTimeMiliSeconds(), !dbg !163
  %sub86 = fsub double %call85, %call, !dbg !164
  store double %sub86, ptr @ExecutionTime, align 8, !dbg !165, !tbaa !166
  ret void, !dbg !168
}

declare !dbg !169 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !173 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !181, metadata !DIExpression()), !dbg !183
  %conv = sext i32 %n to i64, !dbg !184
  %mul = shl nsw i64 %conv, 2, !dbg !185
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !186
  call void @llvm.dbg.value(metadata ptr %call, metadata !182, metadata !DIExpression()), !dbg !183
  %cmp = icmp eq ptr %call, null, !dbg !187
  br i1 %cmp, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !190
  tail call void @exit(i32 noundef 1) #15, !dbg !192
  unreachable, !dbg !192

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !193
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !194 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !198, metadata !DIExpression()), !dbg !200
  %conv = sext i32 %n to i64, !dbg !201
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !202
  call void @llvm.dbg.value(metadata ptr %call, metadata !199, metadata !DIExpression()), !dbg !200
  %cmp = icmp eq ptr %call, null, !dbg !203
  br i1 %cmp, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !206
  tail call void @exit(i32 noundef 1) #15, !dbg !208
  unreachable, !dbg !208

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !209
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !210 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !215, metadata !DIExpression()), !dbg !227
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !228
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !230
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !231

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !232, !tbaa !154
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !234
  call void @exit(i32 noundef 1) #15, !dbg !235
  unreachable, !dbg !235

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !236
  call void @llvm.dbg.value(metadata i32 %call2, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !239
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !240

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !241, !tbaa !154
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 291) #14, !dbg !241
  tail call void @exit(i32 noundef %call2) #15, !dbg !241
  unreachable, !dbg !241

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !243, !tbaa !106
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !245
  call void @llvm.dbg.value(metadata i32 %call7, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !246
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !247

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !248, !tbaa !154
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 294) #14, !dbg !248
  tail call void @exit(i32 noundef %call7) #15, !dbg !248
  unreachable, !dbg !248

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !220, metadata !DIExpression()), !dbg !238
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !250
  store ptr %call12, ptr @a, align 8, !dbg !251, !tbaa !154
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !252
  store ptr %call13, ptr @b, align 8, !dbg !253, !tbaa !154
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !254
  store ptr %call14, ptr @c, align 8, !dbg !255, !tbaa !154
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !256
  store ptr %call15, ptr @cond, align 8, !dbg !257, !tbaa !154
  store i8 0, ptr %call15, align 1, !dbg !258, !tbaa !119
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !259
  %conv = trunc i64 %call16 to i32, !dbg !259
  tail call void @srand(i32 noundef %conv) #13, !dbg !260
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !261
  %4 = load ptr, ptr @a, align 8, !tbaa !154
  %5 = load ptr, ptr @b, align 8, !tbaa !154
  %6 = load ptr, ptr @c, align 8, !tbaa !154
  %7 = load ptr, ptr @cond, align 8, !tbaa !154
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !261
  br label %for.body, !dbg !262

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !263
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !264
  %8 = load ptr, ptr @c, align 8, !tbaa !154
  call void @llvm.dbg.value(metadata i32 0, metadata !224, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !238
  br label %for.body33, !dbg !265

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !221, metadata !DIExpression()), !dbg !261
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !266
  %9 = trunc i64 %indvars.iv to i32, !dbg !269
  store i32 %9, ptr %arrayidx19, align 4, !dbg !269, !tbaa !106
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !270
  store i32 2, ptr %arrayidx21, align 4, !dbg !271, !tbaa !106
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !272
  store i32 0, ptr %arrayidx23, align 4, !dbg !273, !tbaa !106
  %rem = urem i32 %9, 10, !dbg !274
  %cmp24 = icmp eq i32 %rem, 0, !dbg !275
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !276
  %frombool = zext i1 %cmp24 to i8, !dbg !277
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !277, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !278
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !221, metadata !DIExpression()), !dbg !261
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !279
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !262, !llvm.loop !280

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !282
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !285
  %10 = load ptr, ptr @a, align 8, !dbg !286, !tbaa !154
  tail call void @free(ptr noundef %10) #13, !dbg !287
  %11 = load ptr, ptr @b, align 8, !dbg !288, !tbaa !154
  tail call void @free(ptr noundef %11) #13, !dbg !289
  %12 = load ptr, ptr @c, align 8, !dbg !290, !tbaa !154
  tail call void @free(ptr noundef %12) #13, !dbg !291
  %13 = load ptr, ptr @cond, align 8, !dbg !292, !tbaa !154
  tail call void @free(ptr noundef %13) #13, !dbg !293
  %14 = load i64, ptr @CounterValues, align 8, !dbg !294, !tbaa !295
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !297
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !298, !tbaa !295
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !299
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !300, !tbaa !295
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !301
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !302, !tbaa !295
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !303
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !304, !tbaa !166
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !305
  %19 = load i32, ptr @EventSet, align 4, !dbg !306, !tbaa !106
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !308
  call void @llvm.dbg.value(metadata i32 %call45, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !309
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !310

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !224, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !223, metadata !DIExpression()), !dbg !238
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !311
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !311, !tbaa !106
  %add = add nsw i32 %20, %sum.081, !dbg !282
  call void @llvm.dbg.value(metadata i32 %add, metadata !223, metadata !DIExpression()), !dbg !238
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !224, metadata !DIExpression()), !dbg !264
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !313
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !265, !llvm.loop !314

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !316, !tbaa !154
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 337) #14, !dbg !316
  tail call void @exit(i32 noundef %call45) #15, !dbg !316
  unreachable, !dbg !316

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !318
  call void @llvm.dbg.value(metadata i32 %call51, metadata !214, metadata !DIExpression()), !dbg !238
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !320
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !321

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !322, !tbaa !154
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 340) #14, !dbg !322
  tail call void @exit(i32 noundef %call51) #15, !dbg !322
  unreachable, !dbg !322

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !324
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !325
  ret i32 0, !dbg !326
}

declare !dbg !327 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !328 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !331 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !334 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !339 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !345 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !346 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !347 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #12 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "a7a444fb02eb9e3d6c2a2eeacea5fffe")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 258, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 259, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 260, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 261, type: !8, isLocal: false, isDefinition: true)
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
!83 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 30, type: !84, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !98}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 30, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 30, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 30, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 31, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 31, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 33, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 35, type: !22)
!96 = !DILocalVariable(name: "j", scope: !97, file: !3, line: 39, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 39, column: 5)
!98 = !DILocalVariable(name: "i", scope: !99, file: !3, line: 40, type: !6)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 40, column: 9)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 39, column: 34)
!101 = distinct !DILexicalBlock(scope: !97, file: !3, line: 39, column: 5)
!102 = !DILocation(line: 0, scope: !83)
!103 = !DILocation(line: 35, column: 16, scope: !83)
!104 = !DILocation(line: 37, column: 30, scope: !105)
!105 = distinct !DILexicalBlock(scope: !83, file: !3, line: 37, column: 9)
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !64, i64 0}
!108 = !DILocation(line: 37, column: 19, scope: !105)
!109 = !DILocation(line: 37, column: 41, scope: !105)
!110 = !DILocation(line: 37, column: 9, scope: !83)
!111 = !DILocation(line: 0, scope: !97)
!112 = !DILocation(line: 40, column: 9, scope: !99)
!113 = !DILocation(line: 39, column: 5, scope: !97)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 41, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 41, column: 17)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 40, column: 37)
!118 = distinct !DILexicalBlock(scope: !99, file: !3, line: 40, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"_Bool", !64, i64 0}
!121 = !{i8 0, i8 2}
!122 = !DILocation(line: 41, column: 17, scope: !117)
!123 = !DILocation(line: 42, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !116, file: !3, line: 41, column: 26)
!125 = !DILocation(line: 42, column: 40, scope: !124)
!126 = !DILocation(line: 42, column: 49, scope: !124)
!127 = !DILocation(line: 43, column: 35, scope: !124)
!128 = !DILocation(line: 42, column: 54, scope: !124)
!129 = !DILocation(line: 42, column: 46, scope: !124)
!130 = !DILocation(line: 43, column: 22, scope: !124)
!131 = !DILocation(line: 45, column: 31, scope: !124)
!132 = !DILocation(line: 44, column: 37, scope: !124)
!133 = !DILocation(line: 45, column: 22, scope: !124)
!134 = !DILocation(line: 46, column: 33, scope: !124)
!135 = !DILocation(line: 46, column: 60, scope: !124)
!136 = !DILocation(line: 46, column: 75, scope: !124)
!137 = !DILocation(line: 46, column: 71, scope: !124)
!138 = !DILocation(line: 46, column: 48, scope: !124)
!139 = !DILocation(line: 46, column: 44, scope: !124)
!140 = !DILocation(line: 47, column: 22, scope: !124)
!141 = !DILocation(line: 48, column: 13, scope: !124)
!142 = !DILocation(line: 40, column: 32, scope: !118)
!143 = !DILocation(line: 40, column: 27, scope: !118)
!144 = distinct !{!144, !112, !145, !146, !147}
!145 = !DILocation(line: 49, column: 9, scope: !99)
!146 = !{!"llvm.loop.mustprogress"}
!147 = !{!"llvm.loop.unroll.disable"}
!148 = !DILocation(line: 39, column: 29, scope: !101)
!149 = !DILocation(line: 39, column: 23, scope: !101)
!150 = distinct !{!150, !113, !151, !146, !147}
!151 = !DILocation(line: 50, column: 5, scope: !97)
!152 = !DILocation(line: 37, column: 53, scope: !153)
!153 = distinct !DILexicalBlock(scope: !105, file: !3, line: 37, column: 53)
!154 = !{!155, !155, i64 0}
!155 = !{!"any pointer", !64, i64 0}
!156 = !DILocation(line: 53, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !83, file: !3, line: 53, column: 9)
!158 = !DILocation(line: 53, column: 19, scope: !157)
!159 = !DILocation(line: 53, column: 55, scope: !157)
!160 = !DILocation(line: 53, column: 9, scope: !83)
!161 = !DILocation(line: 53, column: 67, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !3, line: 53, column: 67)
!163 = !DILocation(line: 55, column: 21, scope: !83)
!164 = !DILocation(line: 55, column: 42, scope: !83)
!165 = !DILocation(line: 55, column: 19, scope: !83)
!166 = !{!167, !167, i64 0}
!167 = !{!"double", !64, i64 0}
!168 = !DILocation(line: 56, column: 1, scope: !83)
!169 = !DISubprogram(name: "PAPI_start", scope: !170, file: !170, line: 1204, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!170 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!171 = !DISubroutineType(types: !172)
!172 = !{!6, !6}
!173 = !DISubprogram(name: "PAPI_stop", scope: !170, file: !170, line: 1206, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!174 = !DISubroutineType(types: !175)
!175 = !{!6, !6, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!177 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 263, type: !178, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!5, !6}
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "n", arg: 1, scope: !177, file: !3, line: 263, type: !6)
!182 = !DILocalVariable(name: "ptr", scope: !177, file: !3, line: 264, type: !5)
!183 = !DILocation(line: 0, scope: !177)
!184 = !DILocation(line: 264, column: 45, scope: !177)
!185 = !DILocation(line: 264, column: 43, scope: !177)
!186 = !DILocation(line: 264, column: 24, scope: !177)
!187 = !DILocation(line: 265, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !177, file: !3, line: 265, column: 9)
!189 = !DILocation(line: 265, column: 9, scope: !177)
!190 = !DILocation(line: 266, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 265, column: 22)
!192 = !DILocation(line: 267, column: 9, scope: !191)
!193 = !DILocation(line: 269, column: 5, scope: !177)
!194 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 272, type: !195, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{!8, !6}
!197 = !{!198, !199}
!198 = !DILocalVariable(name: "n", arg: 1, scope: !194, file: !3, line: 272, type: !6)
!199 = !DILocalVariable(name: "ptr", scope: !194, file: !3, line: 273, type: !8)
!200 = !DILocation(line: 0, scope: !194)
!201 = !DILocation(line: 273, column: 48, scope: !194)
!202 = !DILocation(line: 273, column: 26, scope: !194)
!203 = !DILocation(line: 274, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 274, column: 9)
!205 = !DILocation(line: 274, column: 9, scope: !194)
!206 = !DILocation(line: 275, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !3, line: 274, column: 22)
!208 = !DILocation(line: 276, column: 9, scope: !207)
!209 = !DILocation(line: 278, column: 5, scope: !194)
!210 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 281, type: !211, scopeLine: 281, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{!6}
!213 = !{!214, !215, !220, !221, !223, !224}
!214 = !DILocalVariable(name: "status", scope: !210, file: !3, line: 282, type: !6)
!215 = !DILocalVariable(name: "errstring", scope: !210, file: !3, line: 283, type: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 1024, elements: !218)
!217 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!218 = !{!219}
!219 = !DISubrange(count: 128)
!220 = !DILocalVariable(name: "n", scope: !210, file: !3, line: 296, type: !6)
!221 = !DILocalVariable(name: "i", scope: !222, file: !3, line: 307, type: !6)
!222 = distinct !DILexicalBlock(scope: !210, file: !3, line: 307, column: 5)
!223 = !DILocalVariable(name: "sum", scope: !210, file: !3, line: 318, type: !6)
!224 = !DILocalVariable(name: "i", scope: !225, file: !3, line: 320, type: !6)
!225 = distinct !DILexicalBlock(scope: !210, file: !3, line: 320, column: 5)
!226 = !DILocation(line: 283, column: 5, scope: !210)
!227 = !DILocation(line: 283, column: 10, scope: !210)
!228 = !DILocation(line: 285, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !210, file: !3, line: 285, column: 9)
!230 = !DILocation(line: 285, column: 45, scope: !229)
!231 = !DILocation(line: 285, column: 9, scope: !210)
!232 = !DILocation(line: 286, column: 17, scope: !233)
!233 = distinct !DILexicalBlock(scope: !229, file: !3, line: 285, column: 66)
!234 = !DILocation(line: 286, column: 9, scope: !233)
!235 = !DILocation(line: 287, column: 9, scope: !233)
!236 = !DILocation(line: 291, column: 19, scope: !237)
!237 = distinct !DILexicalBlock(scope: !210, file: !3, line: 291, column: 9)
!238 = !DILocation(line: 0, scope: !210)
!239 = !DILocation(line: 291, column: 52, scope: !237)
!240 = !DILocation(line: 291, column: 9, scope: !210)
!241 = !DILocation(line: 291, column: 64, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !3, line: 291, column: 64)
!243 = !DILocation(line: 294, column: 35, scope: !244)
!244 = distinct !DILexicalBlock(scope: !210, file: !3, line: 294, column: 9)
!245 = !DILocation(line: 294, column: 19, scope: !244)
!246 = !DILocation(line: 294, column: 69, scope: !244)
!247 = !DILocation(line: 294, column: 9, scope: !210)
!248 = !DILocation(line: 294, column: 81, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !3, line: 294, column: 81)
!250 = !DILocation(line: 298, column: 9, scope: !210)
!251 = !DILocation(line: 298, column: 7, scope: !210)
!252 = !DILocation(line: 299, column: 9, scope: !210)
!253 = !DILocation(line: 299, column: 7, scope: !210)
!254 = !DILocation(line: 300, column: 9, scope: !210)
!255 = !DILocation(line: 300, column: 7, scope: !210)
!256 = !DILocation(line: 301, column: 12, scope: !210)
!257 = !DILocation(line: 301, column: 10, scope: !210)
!258 = !DILocation(line: 303, column: 13, scope: !210)
!259 = !DILocation(line: 305, column: 11, scope: !210)
!260 = !DILocation(line: 305, column: 5, scope: !210)
!261 = !DILocation(line: 0, scope: !222)
!262 = !DILocation(line: 307, column: 5, scope: !222)
!263 = !DILocation(line: 314, column: 5, scope: !210)
!264 = !DILocation(line: 0, scope: !225)
!265 = !DILocation(line: 320, column: 5, scope: !225)
!266 = !DILocation(line: 308, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !3, line: 307, column: 33)
!268 = distinct !DILexicalBlock(scope: !222, file: !3, line: 307, column: 5)
!269 = !DILocation(line: 308, column: 14, scope: !267)
!270 = !DILocation(line: 309, column: 9, scope: !267)
!271 = !DILocation(line: 309, column: 14, scope: !267)
!272 = !DILocation(line: 310, column: 9, scope: !267)
!273 = !DILocation(line: 310, column: 14, scope: !267)
!274 = !DILocation(line: 311, column: 22, scope: !267)
!275 = !DILocation(line: 311, column: 27, scope: !267)
!276 = !DILocation(line: 311, column: 9, scope: !267)
!277 = !DILocation(line: 311, column: 17, scope: !267)
!278 = !DILocation(line: 307, column: 28, scope: !268)
!279 = !DILocation(line: 307, column: 23, scope: !268)
!280 = distinct !{!280, !262, !281, !146, !147}
!281 = !DILocation(line: 312, column: 5, scope: !222)
!282 = !DILocation(line: 321, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 320, column: 33)
!284 = distinct !DILexicalBlock(scope: !225, file: !3, line: 320, column: 5)
!285 = !DILocation(line: 324, column: 5, scope: !210)
!286 = !DILocation(line: 326, column: 10, scope: !210)
!287 = !DILocation(line: 326, column: 5, scope: !210)
!288 = !DILocation(line: 327, column: 10, scope: !210)
!289 = !DILocation(line: 327, column: 5, scope: !210)
!290 = !DILocation(line: 328, column: 10, scope: !210)
!291 = !DILocation(line: 328, column: 5, scope: !210)
!292 = !DILocation(line: 329, column: 10, scope: !210)
!293 = !DILocation(line: 329, column: 5, scope: !210)
!294 = !DILocation(line: 331, column: 53, scope: !210)
!295 = !{!296, !296, i64 0}
!296 = !{!"long long", !64, i64 0}
!297 = !DILocation(line: 331, column: 5, scope: !210)
!298 = !DILocation(line: 332, column: 36, scope: !210)
!299 = !DILocation(line: 332, column: 5, scope: !210)
!300 = !DILocation(line: 333, column: 50, scope: !210)
!301 = !DILocation(line: 333, column: 5, scope: !210)
!302 = !DILocation(line: 334, column: 49, scope: !210)
!303 = !DILocation(line: 334, column: 5, scope: !210)
!304 = !DILocation(line: 335, column: 40, scope: !210)
!305 = !DILocation(line: 335, column: 5, scope: !210)
!306 = !DILocation(line: 337, column: 38, scope: !307)
!307 = distinct !DILexicalBlock(scope: !210, file: !3, line: 337, column: 9)
!308 = !DILocation(line: 337, column: 19, scope: !307)
!309 = !DILocation(line: 337, column: 72, scope: !307)
!310 = !DILocation(line: 337, column: 9, scope: !210)
!311 = !DILocation(line: 321, column: 16, scope: !283)
!312 = !DILocation(line: 320, column: 28, scope: !284)
!313 = !DILocation(line: 320, column: 23, scope: !284)
!314 = distinct !{!314, !265, !315, !146, !147}
!315 = !DILocation(line: 322, column: 5, scope: !225)
!316 = !DILocation(line: 337, column: 84, scope: !317)
!317 = distinct !DILexicalBlock(scope: !307, file: !3, line: 337, column: 84)
!318 = !DILocation(line: 340, column: 19, scope: !319)
!319 = distinct !DILexicalBlock(scope: !210, file: !3, line: 340, column: 9)
!320 = !DILocation(line: 340, column: 53, scope: !319)
!321 = !DILocation(line: 340, column: 9, scope: !210)
!322 = !DILocation(line: 340, column: 65, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 340, column: 65)
!324 = !DILocation(line: 343, column: 5, scope: !210)
!325 = !DILocation(line: 346, column: 1, scope: !210)
!326 = !DILocation(line: 345, column: 5, scope: !210)
!327 = !DISubprogram(name: "PAPI_library_init", scope: !170, file: !170, line: 1172, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!328 = !DISubprogram(name: "PAPI_create_eventset", scope: !170, file: !170, line: 1147, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!329 = !DISubroutineType(types: !330)
!330 = !{!6, !5}
!331 = !DISubprogram(name: "PAPI_add_events", scope: !170, file: !170, line: 1143, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!332 = !DISubroutineType(types: !333)
!333 = !{!6, !6, !5, !6}
!334 = !DISubprogram(name: "srand", scope: !335, file: !335, line: 455, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!335 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!339 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!340 = !DISubroutineType(types: !341)
!341 = !{!342, !344}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !343, line: 7, baseType: !52)
!343 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!345 = !DISubprogram(name: "PAPI_remove_events", scope: !170, file: !170, line: 1192, type: !332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!346 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !170, file: !170, line: 1149, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!347 = !DISubprogram(name: "PAPI_shutdown", scope: !170, file: !170, line: 1202, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!348 = !DISubroutineType(types: !349)
!349 = !{null}
