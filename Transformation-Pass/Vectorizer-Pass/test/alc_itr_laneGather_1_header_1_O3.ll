; ModuleID = 'alc_itr_laneGather_1_header_1.ll'
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
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !98
  %call = tail call double @getTimeMiliSeconds(), !dbg !99
  call void @llvm.dbg.value(metadata double %call, metadata !95, metadata !DIExpression()), !dbg !98
  %0 = load i32, ptr @EventSet, align 4, !dbg !100, !tbaa !102
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #13, !dbg !104
  call void @llvm.dbg.value(metadata i32 %call1, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp.not = icmp eq i32 %call1, 0, !dbg !105
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !106

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()), !dbg !107
  %cmp3131 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp3131, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !110
  %2 = shl i32 %1, 2, !dbg !110
  %3 = shl i32 %1, 3, !dbg !110
  %.not = icmp ugt i32 %3, %n, !dbg !110
  br i1 %.not, label %for.body.preheader27, label %pre.alc, !dbg !110

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 36) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup:                                 ; preds = %for.inc, %middel.block, %for.cond.preheader
  %5 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call73 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call73, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !118
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !119

for.body:                                         ; preds = %for.body.preheader27, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader27 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %6 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %6, 0, !dbg !120
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !129
  %7 = load i32, ptr %arrayidx8, align 4, !dbg !129, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %8 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %9 = trunc i64 %indvars.iv to i32, !dbg !131
  %mul21 = mul nsw i32 %8, %9, !dbg !131
  %reass.add = sub i32 %9, %7
  %reass.mul = shl i32 %reass.add, 1
  %add = add i32 %mul21, %8, !dbg !132
  %add25 = add i32 %add, %reass.mul, !dbg !133
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !133, !tbaa !102
  %mul43127.neg = sub i32 -3, %7, !dbg !134
  %add44.neg134 = mul i32 %mul43127.neg, %9, !dbg !134
  %10 = add i32 %8, %7
  %reass.add129 = sub i32 %add25, %10
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !135
  %sub47 = add i32 %add37, %reass.mul130, !dbg !136
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !136, !tbaa !102
  %11 = sub nsw i32 %7, %sub47, !dbg !137
  %sub61 = shl nsw i32 %11, 1, !dbg !137
  %mul62 = mul nsw i32 %9, %9, !dbg !138
  %add63 = add nsw i32 %sub61, %mul62, !dbg !139
  %mul64.neg = mul i32 %add63, -3, !dbg !140
  %12 = sub i32 %add25, %9, !dbg !141
  %13 = add i32 %12, %sub47, !dbg !142
  %sub65 = shl i32 %13, 1, !dbg !142
  %sub71 = add i32 %mul64.neg, %sub65, !dbg !143
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !143, !tbaa !102
  br label %for.inc, !dbg !144

pre.alc:                                          ; preds = %for.body.preheader
  %14 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %15 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %16 = urem i32 %n, %2
  %total.iterations.to.be.vectorized = sub nsw i32 %n, %16
  %17 = load <vscale x 4 x i8>, ptr %cond, align 4
  %18 = icmp ne <vscale x 4 x i8> %17, zeroinitializer
  %19 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %18)
  %20 = trunc i64 %19 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %100, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %15, %pre.alc ], [ %97, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %18, %pre.alc ], [ %98, %new.latch ]
  %uniform.vec.actives = phi i32 [ %20, %pre.alc ], [ %99, %new.latch ]
  %21 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %22 = sext i32 %vector.loop.index to i64, !dbg !120
  %23 = getelementptr inbounds i8, ptr %cond, i64 %22, !dbg !120
  %24 = load <vscale x 4 x i8>, ptr %23, align 4
  %25 = icmp ne <vscale x 4 x i8> %24, zeroinitializer
  %26 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %25, <vscale x 4 x i1> %25)
  %27 = trunc i64 %26 to i32
  %28 = add i32 %uniform.vec.actives, %27
  %condition.not = icmp ugt i32 %28, %2
  br i1 %condition.not, label %linearized, label %lane.gather, !prof !145

lane.gather:                                      ; preds = %alc.header
  %29 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %30 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %25, <vscale x 4 x i32> %21)
  %31 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %32 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %31, <vscale x 4 x i32> %29, <vscale x 4 x i32> %30)
  %33 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %28)
  %34 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %33, <vscale x 4 x i1> %33)
  %35 = trunc i64 %34 to i32
  %36 = icmp ult i32 %28, %2
  br i1 %36, label %new.latch, label %uniform.block, !prof !146

linearized:                                       ; preds = %alc.header
  %37 = getelementptr inbounds i32, ptr %a, i64 %22, !dbg !127
  %38 = getelementptr inbounds i32, ptr %c, i64 %22, !dbg !129
  %39 = getelementptr inbounds i32, ptr %b, i64 %22, !dbg !130
  %40 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %38, i32 16, <vscale x 4 x i1> %25, <vscale x 4 x i32> undef)
  %41 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %39, i32 16, <vscale x 4 x i1> %25, <vscale x 4 x i32> undef)
  %42 = mul <vscale x 4 x i32> %41, %21
  %43 = mul <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %44 = shl <vscale x 4 x i32> %21, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %45 = add <vscale x 4 x i32> %41, %44
  %46 = add <vscale x 4 x i32> %45, %43
  %47 = add <vscale x 4 x i32> %46, %42
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %47, ptr %37, i32 16, <vscale x 4 x i1> %25)
  %48 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %40
  %49 = mul <vscale x 4 x i32> %48, %21
  %50 = add <vscale x 4 x i32> %41, %40
  %51 = sub <vscale x 4 x i32> %47, %50
  %52 = shl <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %53 = add <vscale x 4 x i32> %49, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %54 = add <vscale x 4 x i32> %53, %52
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %54, ptr %39, i32 16, <vscale x 4 x i1> %25)
  %55 = sub <vscale x 4 x i32> %40, %54
  %56 = shl <vscale x 4 x i32> %55, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %57 = mul <vscale x 4 x i32> %21, %21
  %58 = add <vscale x 4 x i32> %56, %57
  %59 = mul <vscale x 4 x i32> %58, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %60 = sub <vscale x 4 x i32> %47, %21
  %61 = add <vscale x 4 x i32> %60, %54
  %62 = shl <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %63 = add <vscale x 4 x i32> %59, %62
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %63, ptr %38, i32 16, <vscale x 4 x i1> %25)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %64 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %c, <vscale x 4 x i32> %32)
  %65 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %b, <vscale x 4 x i32> %32)
  %66 = mul <vscale x 4 x i32> %65, %32
  %67 = mul <vscale x 4 x i32> %64, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %68 = shl <vscale x 4 x i32> %32, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %69 = add <vscale x 4 x i32> %65, %68
  %70 = add <vscale x 4 x i32> %69, %67
  %71 = add <vscale x 4 x i32> %70, %66
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %71, <vscale x 4 x i1> %14, ptr %a, <vscale x 4 x i32> %32)
  %72 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %64
  %73 = mul <vscale x 4 x i32> %72, %32
  %74 = add <vscale x 4 x i32> %65, %64
  %75 = sub <vscale x 4 x i32> %71, %74
  %76 = shl <vscale x 4 x i32> %75, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %77 = add <vscale x 4 x i32> %73, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %78 = add <vscale x 4 x i32> %77, %76
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %78, <vscale x 4 x i1> %14, ptr %b, <vscale x 4 x i32> %32)
  %79 = sub <vscale x 4 x i32> %64, %78
  %80 = shl <vscale x 4 x i32> %79, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %81 = mul <vscale x 4 x i32> %32, %32
  %82 = add <vscale x 4 x i32> %80, %81
  %83 = mul <vscale x 4 x i32> %82, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %84 = sub <vscale x 4 x i32> %71, %32
  %85 = add <vscale x 4 x i32> %84, %78
  %86 = shl <vscale x 4 x i32> %85, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %87 = add <vscale x 4 x i32> %83, %86
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %87, <vscale x 4 x i1> %14, ptr %c, <vscale x 4 x i32> %32)
  %88 = add i32 %vector.loop.index, %2
  %89 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %88, i32 1)
  %90 = sext i32 %88 to i64, !dbg !120
  %91 = getelementptr inbounds i8, ptr %cond, i64 %90, !dbg !120
  %92 = load <vscale x 4 x i8>, ptr %91, align 4
  %93 = icmp ne <vscale x 4 x i8> %92, zeroinitializer
  %94 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %93, <vscale x 4 x i1> %93)
  %95 = trunc i64 %94 to i32
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %96 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %88, %uniform.block ]
  %97 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %32, %lane.gather ], [ %89, %uniform.block ]
  %98 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %33, %lane.gather ], [ %93, %uniform.block ]
  %99 = phi i32 [ %uniform.vec.actives, %linearized ], [ %35, %lane.gather ], [ %95, %uniform.block ]
  %100 = add i32 %96, %2
  %.not3 = icmp ult i32 %100, %total.iterations.to.be.vectorized
  br i1 %.not3, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %16, 0
  %101 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %98, ptr %c, <vscale x 4 x i32> %97)
  %102 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %98, ptr %b, <vscale x 4 x i32> %97)
  %103 = mul <vscale x 4 x i32> %102, %97
  %104 = mul <vscale x 4 x i32> %101, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %105 = shl <vscale x 4 x i32> %97, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %106 = add <vscale x 4 x i32> %102, %105
  %107 = add <vscale x 4 x i32> %106, %104
  %108 = add <vscale x 4 x i32> %107, %103
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %108, <vscale x 4 x i1> %98, ptr %a, <vscale x 4 x i32> %97)
  %109 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %101
  %110 = mul <vscale x 4 x i32> %109, %97
  %111 = add <vscale x 4 x i32> %102, %101
  %112 = sub <vscale x 4 x i32> %108, %111
  %113 = shl <vscale x 4 x i32> %112, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %114 = add <vscale x 4 x i32> %110, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %115 = add <vscale x 4 x i32> %114, %113
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %115, <vscale x 4 x i1> %98, ptr %b, <vscale x 4 x i32> %97)
  %116 = sub <vscale x 4 x i32> %101, %115
  %117 = shl <vscale x 4 x i32> %116, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %118 = mul <vscale x 4 x i32> %97, %97
  %119 = add <vscale x 4 x i32> %117, %118
  %120 = mul <vscale x 4 x i32> %119, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %121 = sub <vscale x 4 x i32> %108, %97
  %122 = add <vscale x 4 x i32> %121, %115
  %123 = shl <vscale x 4 x i32> %122, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %124 = add <vscale x 4 x i32> %120, %123
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %124, <vscale x 4 x i1> %98, ptr %c, <vscale x 4 x i32> %97)
  %125 = zext i32 %100 to i64
  br i1 %condition1, label %for.cond.cleanup, label %for.body.preheader27

for.body.preheader27:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %125, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !110

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !147
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !148

if.then75:                                        ; preds = %for.cond.cleanup
  %126 = load ptr, ptr @stderr, align 8, !dbg !152, !tbaa !113
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 52) #14, !dbg !152
  tail call void @exit(i32 noundef %call73) #15, !dbg !152
  unreachable, !dbg !152

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !154
  %sub79 = fsub double %call78, %call, !dbg !155
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !156, !tbaa !157
  ret void, !dbg !159
}

declare !dbg !160 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !164 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !172, metadata !DIExpression()), !dbg !174
  %conv = sext i32 %n to i64, !dbg !175
  %mul = shl nsw i64 %conv, 2, !dbg !176
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !177
  call void @llvm.dbg.value(metadata ptr %call, metadata !173, metadata !DIExpression()), !dbg !174
  %cmp = icmp eq ptr %call, null, !dbg !178
  br i1 %cmp, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !181
  tail call void @exit(i32 noundef 1) #15, !dbg !183
  unreachable, !dbg !183

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !184
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !189, metadata !DIExpression()), !dbg !191
  %conv = sext i32 %n to i64, !dbg !192
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !193
  call void @llvm.dbg.value(metadata ptr %call, metadata !190, metadata !DIExpression()), !dbg !191
  %cmp = icmp eq ptr %call, null, !dbg !194
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !197
  tail call void @exit(i32 noundef 1) #15, !dbg !199
  unreachable, !dbg !199

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !201 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !206, metadata !DIExpression()), !dbg !218
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !219
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !221
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !222

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !223, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !225
  call void @exit(i32 noundef 1) #15, !dbg !226
  unreachable, !dbg !226

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !227
  call void @llvm.dbg.value(metadata i32 %call2, metadata !205, metadata !DIExpression()), !dbg !229
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !230
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !231

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !232, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 90) #14, !dbg !232
  tail call void @exit(i32 noundef %call2) #15, !dbg !232
  unreachable, !dbg !232

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !234, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !236
  call void @llvm.dbg.value(metadata i32 %call7, metadata !205, metadata !DIExpression()), !dbg !229
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !237
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !238

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !239, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 93) #14, !dbg !239
  tail call void @exit(i32 noundef %call7) #15, !dbg !239
  unreachable, !dbg !239

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !211, metadata !DIExpression()), !dbg !229
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !241
  store ptr %call12, ptr @a, align 8, !dbg !242, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !243
  store ptr %call13, ptr @b, align 8, !dbg !244, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !245
  store ptr %call14, ptr @c, align 8, !dbg !246, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !247
  store ptr %call15, ptr @cond, align 8, !dbg !248, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !249, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !250
  %conv = trunc i64 %call16 to i32, !dbg !250
  tail call void @srand(i32 noundef %conv) #13, !dbg !251
  call void @llvm.dbg.value(metadata i32 0, metadata !212, metadata !DIExpression()), !dbg !252
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !212, metadata !DIExpression()), !dbg !252
  br label %for.body, !dbg !253

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @foo(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !254
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 0, metadata !215, metadata !DIExpression()), !dbg !255
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !215, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !229
  br label %for.body33, !dbg !256

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !212, metadata !DIExpression()), !dbg !252
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !257
  %9 = trunc i64 %indvars.iv to i32, !dbg !260
  store i32 %9, ptr %arrayidx19, align 4, !dbg !260, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !261
  store i32 2, ptr %arrayidx21, align 4, !dbg !262, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !263
  store i32 0, ptr %arrayidx23, align 4, !dbg !264, !tbaa !102
  %rem = urem i32 %9, 10, !dbg !265
  %cmp24 = icmp eq i32 %rem, 0, !dbg !266
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !267
  %frombool = zext i1 %cmp24 to i8, !dbg !268
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !268, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !269
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !212, metadata !DIExpression()), !dbg !252
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !270
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !253, !llvm.loop !271

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !273
  %10 = load ptr, ptr @a, align 8, !dbg !274, !tbaa !113
  tail call void @free(ptr noundef %10) #13, !dbg !275
  %11 = load ptr, ptr @b, align 8, !dbg !276, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !277
  %12 = load ptr, ptr @c, align 8, !dbg !278, !tbaa !113
  tail call void @free(ptr noundef %12) #13, !dbg !279
  %13 = load ptr, ptr @cond, align 8, !dbg !280, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !281
  %14 = load i64, ptr @CounterValues, align 8, !dbg !282, !tbaa !283
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !285
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !286, !tbaa !283
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !287
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !288, !tbaa !283
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !289
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !290, !tbaa !283
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !291
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !292, !tbaa !157
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !293
  %19 = load i32, ptr @EventSet, align 4, !dbg !294, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !296
  call void @llvm.dbg.value(metadata i32 %call45, metadata !205, metadata !DIExpression()), !dbg !229
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !297
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !298

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !215, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !214, metadata !DIExpression()), !dbg !229
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !299
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !299, !tbaa !102
  %add = add nsw i32 %20, %sum.081, !dbg !302
  call void @llvm.dbg.value(metadata i32 %add, metadata !214, metadata !DIExpression()), !dbg !229
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !303
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !215, metadata !DIExpression()), !dbg !255
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !304
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !256, !llvm.loop !305

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !307, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 134) #14, !dbg !307
  tail call void @exit(i32 noundef %call45) #15, !dbg !307
  unreachable, !dbg !307

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !309
  call void @llvm.dbg.value(metadata i32 %call51, metadata !205, metadata !DIExpression()), !dbg !229
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !311
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !312

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !313, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 137) #14, !dbg !313
  tail call void @exit(i32 noundef %call51) #15, !dbg !313
  unreachable, !dbg !313

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !315
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !316
  ret i32 0, !dbg !317
}

declare !dbg !318 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !319 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !322 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !325 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !330 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !336 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !337 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !338 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "57af02d0aa988a89d8b8678c10174fbe")
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
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 29, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 29, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 29, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 30, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 30, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 32, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 34, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 38, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 38, column: 9)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 34, column: 16, scope: !83)
!100 = !DILocation(line: 36, column: 29, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 36, column: 8)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !64, i64 0}
!104 = !DILocation(line: 36, column: 18, scope: !101)
!105 = !DILocation(line: 36, column: 40, scope: !101)
!106 = !DILocation(line: 36, column: 8, scope: !83)
!107 = !DILocation(line: 0, scope: !97)
!108 = !DILocation(line: 38, column: 27, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 38, column: 9)
!110 = !DILocation(line: 38, column: 9, scope: !97)
!111 = !DILocation(line: 36, column: 52, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 36, column: 52)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 52, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 52, column: 9)
!117 = !DILocation(line: 52, column: 19, scope: !116)
!118 = !DILocation(line: 52, column: 55, scope: !116)
!119 = !DILocation(line: 52, column: 9, scope: !83)
!120 = !DILocation(line: 39, column: 17, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 39, column: 17)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 38, column: 37)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 39, column: 17, scope: !122)
!127 = !DILocation(line: 41, column: 29, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 39, column: 26)
!129 = !DILocation(line: 41, column: 40, scope: !128)
!130 = !DILocation(line: 41, column: 49, scope: !128)
!131 = !DILocation(line: 42, column: 35, scope: !128)
!132 = !DILocation(line: 41, column: 46, scope: !128)
!133 = !DILocation(line: 42, column: 22, scope: !128)
!134 = !DILocation(line: 44, column: 31, scope: !128)
!135 = !DILocation(line: 43, column: 37, scope: !128)
!136 = !DILocation(line: 44, column: 22, scope: !128)
!137 = !DILocation(line: 45, column: 60, scope: !128)
!138 = !DILocation(line: 45, column: 75, scope: !128)
!139 = !DILocation(line: 45, column: 71, scope: !128)
!140 = !DILocation(line: 45, column: 48, scope: !128)
!141 = !DILocation(line: 45, column: 33, scope: !128)
!142 = !DILocation(line: 45, column: 44, scope: !128)
!143 = !DILocation(line: 46, column: 22, scope: !128)
!144 = !DILocation(line: 47, column: 13, scope: !128)
!145 = !{!"branch_weights", i32 1, i32 2000}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !DILocation(line: 38, column: 32, scope: !109)
!148 = distinct !{!148, !110, !149, !150, !151}
!149 = !DILocation(line: 49, column: 9, scope: !97)
!150 = !{!"llvm.loop.mustprogress"}
!151 = !{!"llvm.loop.unroll.disable"}
!152 = !DILocation(line: 52, column: 67, scope: !153)
!153 = distinct !DILexicalBlock(scope: !116, file: !3, line: 52, column: 67)
!154 = !DILocation(line: 54, column: 21, scope: !83)
!155 = !DILocation(line: 54, column: 42, scope: !83)
!156 = !DILocation(line: 54, column: 19, scope: !83)
!157 = !{!158, !158, i64 0}
!158 = !{!"double", !64, i64 0}
!159 = !DILocation(line: 55, column: 1, scope: !83)
!160 = !DISubprogram(name: "PAPI_start", scope: !161, file: !161, line: 1204, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!161 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!162 = !DISubroutineType(types: !163)
!163 = !{!6, !6}
!164 = !DISubprogram(name: "PAPI_stop", scope: !161, file: !161, line: 1206, type: !165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!165 = !DISubroutineType(types: !166)
!166 = !{!6, !6, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!168 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 62, type: !169, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!5, !6}
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "n", arg: 1, scope: !168, file: !3, line: 62, type: !6)
!173 = !DILocalVariable(name: "ptr", scope: !168, file: !3, line: 63, type: !5)
!174 = !DILocation(line: 0, scope: !168)
!175 = !DILocation(line: 63, column: 45, scope: !168)
!176 = !DILocation(line: 63, column: 43, scope: !168)
!177 = !DILocation(line: 63, column: 24, scope: !168)
!178 = !DILocation(line: 64, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !168, file: !3, line: 64, column: 9)
!180 = !DILocation(line: 64, column: 9, scope: !168)
!181 = !DILocation(line: 65, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 64, column: 22)
!183 = !DILocation(line: 66, column: 9, scope: !182)
!184 = !DILocation(line: 68, column: 5, scope: !168)
!185 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 71, type: !186, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!8, !6}
!188 = !{!189, !190}
!189 = !DILocalVariable(name: "n", arg: 1, scope: !185, file: !3, line: 71, type: !6)
!190 = !DILocalVariable(name: "ptr", scope: !185, file: !3, line: 72, type: !8)
!191 = !DILocation(line: 0, scope: !185)
!192 = !DILocation(line: 72, column: 48, scope: !185)
!193 = !DILocation(line: 72, column: 26, scope: !185)
!194 = !DILocation(line: 73, column: 13, scope: !195)
!195 = distinct !DILexicalBlock(scope: !185, file: !3, line: 73, column: 9)
!196 = !DILocation(line: 73, column: 9, scope: !185)
!197 = !DILocation(line: 74, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !3, line: 73, column: 22)
!199 = !DILocation(line: 75, column: 9, scope: !198)
!200 = !DILocation(line: 77, column: 5, scope: !185)
!201 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !202, scopeLine: 80, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{!6}
!204 = !{!205, !206, !211, !212, !214, !215}
!205 = !DILocalVariable(name: "status", scope: !201, file: !3, line: 81, type: !6)
!206 = !DILocalVariable(name: "errstring", scope: !201, file: !3, line: 82, type: !207)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 1024, elements: !209)
!208 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!209 = !{!210}
!210 = !DISubrange(count: 128)
!211 = !DILocalVariable(name: "n", scope: !201, file: !3, line: 95, type: !6)
!212 = !DILocalVariable(name: "i", scope: !213, file: !3, line: 106, type: !6)
!213 = distinct !DILexicalBlock(scope: !201, file: !3, line: 106, column: 5)
!214 = !DILocalVariable(name: "sum", scope: !201, file: !3, line: 115, type: !6)
!215 = !DILocalVariable(name: "i", scope: !216, file: !3, line: 117, type: !6)
!216 = distinct !DILexicalBlock(scope: !201, file: !3, line: 117, column: 5)
!217 = !DILocation(line: 82, column: 5, scope: !201)
!218 = !DILocation(line: 82, column: 10, scope: !201)
!219 = !DILocation(line: 84, column: 9, scope: !220)
!220 = distinct !DILexicalBlock(scope: !201, file: !3, line: 84, column: 9)
!221 = !DILocation(line: 84, column: 45, scope: !220)
!222 = !DILocation(line: 84, column: 9, scope: !201)
!223 = !DILocation(line: 85, column: 17, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !3, line: 84, column: 66)
!225 = !DILocation(line: 85, column: 9, scope: !224)
!226 = !DILocation(line: 86, column: 9, scope: !224)
!227 = !DILocation(line: 90, column: 19, scope: !228)
!228 = distinct !DILexicalBlock(scope: !201, file: !3, line: 90, column: 9)
!229 = !DILocation(line: 0, scope: !201)
!230 = !DILocation(line: 90, column: 52, scope: !228)
!231 = !DILocation(line: 90, column: 9, scope: !201)
!232 = !DILocation(line: 90, column: 64, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !3, line: 90, column: 64)
!234 = !DILocation(line: 93, column: 35, scope: !235)
!235 = distinct !DILexicalBlock(scope: !201, file: !3, line: 93, column: 9)
!236 = !DILocation(line: 93, column: 19, scope: !235)
!237 = !DILocation(line: 93, column: 69, scope: !235)
!238 = !DILocation(line: 93, column: 9, scope: !201)
!239 = !DILocation(line: 93, column: 81, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !3, line: 93, column: 81)
!241 = !DILocation(line: 97, column: 9, scope: !201)
!242 = !DILocation(line: 97, column: 7, scope: !201)
!243 = !DILocation(line: 98, column: 9, scope: !201)
!244 = !DILocation(line: 98, column: 7, scope: !201)
!245 = !DILocation(line: 99, column: 9, scope: !201)
!246 = !DILocation(line: 99, column: 7, scope: !201)
!247 = !DILocation(line: 100, column: 12, scope: !201)
!248 = !DILocation(line: 100, column: 10, scope: !201)
!249 = !DILocation(line: 102, column: 13, scope: !201)
!250 = !DILocation(line: 104, column: 11, scope: !201)
!251 = !DILocation(line: 104, column: 5, scope: !201)
!252 = !DILocation(line: 0, scope: !213)
!253 = !DILocation(line: 106, column: 5, scope: !213)
!254 = !DILocation(line: 113, column: 5, scope: !201)
!255 = !DILocation(line: 0, scope: !216)
!256 = !DILocation(line: 117, column: 5, scope: !216)
!257 = !DILocation(line: 107, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !3, line: 106, column: 33)
!259 = distinct !DILexicalBlock(scope: !213, file: !3, line: 106, column: 5)
!260 = !DILocation(line: 107, column: 14, scope: !258)
!261 = !DILocation(line: 108, column: 9, scope: !258)
!262 = !DILocation(line: 108, column: 14, scope: !258)
!263 = !DILocation(line: 109, column: 9, scope: !258)
!264 = !DILocation(line: 109, column: 14, scope: !258)
!265 = !DILocation(line: 110, column: 21, scope: !258)
!266 = !DILocation(line: 110, column: 26, scope: !258)
!267 = !DILocation(line: 110, column: 9, scope: !258)
!268 = !DILocation(line: 110, column: 17, scope: !258)
!269 = !DILocation(line: 106, column: 28, scope: !259)
!270 = !DILocation(line: 106, column: 23, scope: !259)
!271 = distinct !{!271, !253, !272, !150, !151}
!272 = !DILocation(line: 111, column: 5, scope: !213)
!273 = !DILocation(line: 121, column: 5, scope: !201)
!274 = !DILocation(line: 123, column: 10, scope: !201)
!275 = !DILocation(line: 123, column: 5, scope: !201)
!276 = !DILocation(line: 124, column: 10, scope: !201)
!277 = !DILocation(line: 124, column: 5, scope: !201)
!278 = !DILocation(line: 125, column: 10, scope: !201)
!279 = !DILocation(line: 125, column: 5, scope: !201)
!280 = !DILocation(line: 126, column: 10, scope: !201)
!281 = !DILocation(line: 126, column: 5, scope: !201)
!282 = !DILocation(line: 128, column: 53, scope: !201)
!283 = !{!284, !284, i64 0}
!284 = !{!"long long", !64, i64 0}
!285 = !DILocation(line: 128, column: 5, scope: !201)
!286 = !DILocation(line: 129, column: 36, scope: !201)
!287 = !DILocation(line: 129, column: 5, scope: !201)
!288 = !DILocation(line: 130, column: 50, scope: !201)
!289 = !DILocation(line: 130, column: 5, scope: !201)
!290 = !DILocation(line: 131, column: 49, scope: !201)
!291 = !DILocation(line: 131, column: 5, scope: !201)
!292 = !DILocation(line: 132, column: 40, scope: !201)
!293 = !DILocation(line: 132, column: 5, scope: !201)
!294 = !DILocation(line: 134, column: 38, scope: !295)
!295 = distinct !DILexicalBlock(scope: !201, file: !3, line: 134, column: 9)
!296 = !DILocation(line: 134, column: 19, scope: !295)
!297 = !DILocation(line: 134, column: 72, scope: !295)
!298 = !DILocation(line: 134, column: 9, scope: !201)
!299 = !DILocation(line: 118, column: 16, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !3, line: 117, column: 33)
!301 = distinct !DILexicalBlock(scope: !216, file: !3, line: 117, column: 5)
!302 = !DILocation(line: 118, column: 13, scope: !300)
!303 = !DILocation(line: 117, column: 28, scope: !301)
!304 = !DILocation(line: 117, column: 23, scope: !301)
!305 = distinct !{!305, !256, !306, !150, !151}
!306 = !DILocation(line: 119, column: 5, scope: !216)
!307 = !DILocation(line: 134, column: 84, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !3, line: 134, column: 84)
!309 = !DILocation(line: 137, column: 19, scope: !310)
!310 = distinct !DILexicalBlock(scope: !201, file: !3, line: 137, column: 9)
!311 = !DILocation(line: 137, column: 53, scope: !310)
!312 = !DILocation(line: 137, column: 9, scope: !201)
!313 = !DILocation(line: 137, column: 65, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 137, column: 65)
!315 = !DILocation(line: 140, column: 5, scope: !201)
!316 = !DILocation(line: 143, column: 1, scope: !201)
!317 = !DILocation(line: 142, column: 5, scope: !201)
!318 = !DISubprogram(name: "PAPI_library_init", scope: !161, file: !161, line: 1172, type: !162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubprogram(name: "PAPI_create_eventset", scope: !161, file: !161, line: 1147, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!320 = !DISubroutineType(types: !321)
!321 = !{!6, !5}
!322 = !DISubprogram(name: "PAPI_add_events", scope: !161, file: !161, line: 1143, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!323 = !DISubroutineType(types: !324)
!324 = !{!6, !6, !5, !6}
!325 = !DISubprogram(name: "srand", scope: !326, file: !326, line: 455, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!330 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !335}
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !334, line: 7, baseType: !52)
!334 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!336 = !DISubprogram(name: "PAPI_remove_events", scope: !161, file: !161, line: 1192, type: !323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!337 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !161, file: !161, line: 1149, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!338 = !DISubprogram(name: "PAPI_shutdown", scope: !161, file: !161, line: 1202, type: !339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!339 = !DISubroutineType(types: !340)
!340 = !{null}
