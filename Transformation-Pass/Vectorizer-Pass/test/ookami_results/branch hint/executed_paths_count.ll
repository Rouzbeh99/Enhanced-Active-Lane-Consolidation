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
@.str.11 = private unnamed_addr constant [18 x i8] c"True cases: %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"False cases: %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"loop count: %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"vector length: %lld\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"total itrations: %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"last loop index: %lld\0A\00", align 1


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
  %1 = call i32 @llvm.vscale.i32(), !dbg !110
  %2 = mul i32 %1, 4, !dbg !110
  %3 = mul i32 %2, 2, !dbg !110
  %4 = icmp uge i32 %n, %3, !dbg !110
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !110

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 36) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !115

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call73 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call73, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !118
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !119

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %16, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %7 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %7, 0, !dbg !120
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !129
  %8 = load i32, ptr %arrayidx8, align 4, !dbg !129, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %9 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %10 = trunc i64 %indvars.iv to i32, !dbg !131
  %mul21 = mul nsw i32 %9, %10, !dbg !131
  %.neg = mul i32 %8, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !132
  %11 = shl i32 %indvars.iv.tr, 1, !dbg !132
  %sub15 = add i32 %9, %11, !dbg !132
  %add = add i32 %sub15, %mul21, !dbg !133
  %add25 = add i32 %add, %.neg, !dbg !134
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !134, !tbaa !102
  %mul43127.neg = sub i32 -3, %8, !dbg !135
  %add44.neg134 = mul i32 %mul43127.neg, %10, !dbg !135
  %12 = add i32 %8, %9
  %reass.add129 = sub i32 %add25, %12
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !136
  %sub47 = add i32 %add37, %reass.mul130, !dbg !137
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !137, !tbaa !102
  %13 = add nsw i32 %sub47, %add25, !dbg !138
  %14 = sub nsw i32 %8, %sub47, !dbg !139
  %sub61 = shl nsw i32 %14, 1, !dbg !139
  %mul62 = mul nsw i32 %10, %10, !dbg !140
  %add63 = add nsw i32 %sub61, %mul62, !dbg !141
  %mul64.neg = mul i32 %add63, -3, !dbg !142
  %15 = sub i32 %13, %10, !dbg !143
  %sub65 = shl i32 %15, 1, !dbg !143
  %sub71 = add i32 %sub65, %mul64.neg, !dbg !144
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !144, !tbaa !102
  br label %for.inc, !dbg !145

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %16 = phi i64 [ 0, %for.body.preheader ], [ %147, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %17 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = urem i32 %n, %2
  %total.iterations.to.be.vectorized = sub i32 %n, %19
  %20 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !120
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %22 = load <vscale x 4 x i8>, ptr %20, align 4
  %23 = icmp eq <vscale x 4 x i8> %22, zeroinitializer
  %24 = xor <vscale x 4 x i1> %23, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %25 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %24, <vscale x 4 x i1> %24)
  %26 = trunc i64 %25 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %114, %new.latch ]
  %true = phi i64 [ 0, %pre.alc ], [%true_latch , %new.latch ]
  %false = phi i64 [ 0, %pre.alc ], [%false_latch , %new.latch ]
  %loopCount = phi i64 [ 0, %pre.alc ], [%loopCount_add , %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %18, %pre.alc ], [ %111, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %24, %pre.alc ], [ %112, %new.latch ]
  %uniform.vec.actives = phi i32 [ %26, %pre.alc ], [ %113, %new.latch ]
  %27 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %28 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !120
  %29 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %30 = load <vscale x 4 x i8>, ptr %28, align 4
  %31 = icmp eq <vscale x 4 x i8> %30, zeroinitializer
  %32 = xor <vscale x 4 x i1> %31, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %33 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %32, <vscale x 4 x i1> %32)
  %34 = trunc i64 %33 to i32
  %35 = add i32 %uniform.vec.actives, %34
  %condition = icmp ule i32 %35, %2
  %36 = call i1 @llvm.expect.i1(i1 %condition, i1 false)
  br i1 %36, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %true_added = add i64 %true, 1
  %37 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %38 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %32, <vscale x 4 x i32> %27)
  %39 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %40 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %39, <vscale x 4 x i32> %37, <vscale x 4 x i32> %38)
  %41 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %35)
  %42 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %41, <vscale x 4 x i1> %41)
  %43 = trunc i64 %42 to i32
  %44 = icmp ult i32 %35, %2
  %45 = call i1 @llvm.expect.i1(i1 %44, i1 false)
  br i1 %45, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %false_added = add i64 %false, 1
  %46 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !127
  %47 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !129
  %48 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !130
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %50 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %47, i32 16, <vscale x 4 x i1> %32, <vscale x 4 x i32> undef)
  %51 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %48, i32 16, <vscale x 4 x i1> %32, <vscale x 4 x i32> undef)
  %52 = mul <vscale x 4 x i32> %51, %49
  %53 = mul <vscale x 4 x i32> %50, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %54 = shl <vscale x 4 x i32> %49, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %55 = add <vscale x 4 x i32> %51, %54
  %56 = add <vscale x 4 x i32> %55, %52
  %57 = add <vscale x 4 x i32> %56, %53
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %57, ptr %46, i32 16, <vscale x 4 x i1> %32)
  %58 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %50
  %59 = mul <vscale x 4 x i32> %58, %49
  %60 = add <vscale x 4 x i32> %50, %51
  %61 = sub <vscale x 4 x i32> %57, %60
  %62 = shl <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %63 = add <vscale x 4 x i32> %59, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = add <vscale x 4 x i32> %63, %62
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %64, ptr %48, i32 16, <vscale x 4 x i1> %32)
  %65 = add <vscale x 4 x i32> %64, %57
  %66 = sub <vscale x 4 x i32> %50, %64
  %67 = shl <vscale x 4 x i32> %66, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %68 = mul <vscale x 4 x i32> %49, %49
  %69 = add <vscale x 4 x i32> %67, %68
  %70 = mul <vscale x 4 x i32> %69, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %71 = sub <vscale x 4 x i32> %65, %49
  %72 = shl <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %73 = add <vscale x 4 x i32> %72, %70
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %73, ptr %47, i32 16, <vscale x 4 x i1> %32)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %74 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !127
  %75 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !129
  %76 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !130
  %77 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %75, <vscale x 4 x i32> %40)
  %78 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %76, <vscale x 4 x i32> %40)
  %79 = mul <vscale x 4 x i32> %78, %40
  %80 = mul <vscale x 4 x i32> %77, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %81 = shl <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %82 = add <vscale x 4 x i32> %78, %81
  %83 = add <vscale x 4 x i32> %82, %79
  %84 = add <vscale x 4 x i32> %83, %80
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %84, <vscale x 4 x i1> %17, ptr %74, <vscale x 4 x i32> %40)
  %85 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %77
  %86 = mul <vscale x 4 x i32> %85, %40
  %87 = add <vscale x 4 x i32> %77, %78
  %88 = sub <vscale x 4 x i32> %84, %87
  %89 = shl <vscale x 4 x i32> %88, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %90 = add <vscale x 4 x i32> %86, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %91 = add <vscale x 4 x i32> %90, %89
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %91, <vscale x 4 x i1> %17, ptr %76, <vscale x 4 x i32> %40)
  %92 = add <vscale x 4 x i32> %91, %84
  %93 = sub <vscale x 4 x i32> %77, %91
  %94 = shl <vscale x 4 x i32> %93, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %95 = mul <vscale x 4 x i32> %40, %40
  %96 = add <vscale x 4 x i32> %94, %95
  %97 = mul <vscale x 4 x i32> %96, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %98 = sub <vscale x 4 x i32> %92, %40
  %99 = shl <vscale x 4 x i32> %98, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %100 = add <vscale x 4 x i32> %99, %97
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %100, <vscale x 4 x i1> %17, ptr %75, <vscale x 4 x i32> %40)
  %101 = add i32 %vector.loop.index, %2
  %102 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %101, i32 1)
  %103 = getelementptr inbounds i8, ptr %cond, i32 %101, !dbg !120
  %104 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %101, i32 1)
  %105 = load <vscale x 4 x i8>, ptr %103, align 4
  %106 = icmp eq <vscale x 4 x i8> %105, zeroinitializer
  %107 = xor <vscale x 4 x i1> %106, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %108 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %107, <vscale x 4 x i1> %107)
  %109 = trunc i64 %108 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %110 = phi i32 [ %116, %join.block ], [ %vector.loop.index, %linearized ]
  %111 = phi <vscale x 4 x i32> [ %117, %join.block ], [ %uniform.vector, %linearized ]
  %112 = phi <vscale x 4 x i1> [ %118, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %113 = phi i32 [ %119, %join.block ], [ %uniform.vec.actives, %linearized ]
  %true_latch = phi i64 [ %true, %linearized ], [%true_added , %join.block ]
  %false_latch = phi i64 [ %false, %join.block ], [%false_added , %linearized ]
  %114 = add i32 %110, %2
  %115 = icmp uge i32 %114, %total.iterations.to.be.vectorized
  %loopCount_add = add i64 %loopCount, 1
  br i1 %115, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %116 = phi i32 [ %vector.loop.index, %lane.gather ], [ %101, %uniform.block ]
  %117 = phi <vscale x 4 x i32> [ %40, %lane.gather ], [ %102, %uniform.block ]
  %118 = phi <vscale x 4 x i1> [ %41, %lane.gather ], [ %107, %uniform.block ]
  %119 = phi i32 [ %43, %lane.gather ], [ %109, %uniform.block ]

  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %print_1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %true_latch)
  %print_2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %false_latch)
  %print_3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %loopCount_add)
  %print_4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, i32 noundef %2)
  %print_5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef %total.iterations.to.be.vectorized)
  %print_6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i32 noundef %114)
  %condition1 = icmp eq i32 %19, 0
  %120 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !127
  %121 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !129
  %122 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !130
  %123 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %112, ptr %121, <vscale x 4 x i32> %111)
  %124 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %112, ptr %122, <vscale x 4 x i32> %111)
  %125 = mul <vscale x 4 x i32> %124, %111
  %126 = mul <vscale x 4 x i32> %123, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %127 = shl <vscale x 4 x i32> %111, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %128 = add <vscale x 4 x i32> %124, %127
  %129 = add <vscale x 4 x i32> %128, %125
  %130 = add <vscale x 4 x i32> %129, %126
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %130, <vscale x 4 x i1> %112, ptr %120, <vscale x 4 x i32> %111)
  %131 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %123
  %132 = mul <vscale x 4 x i32> %131, %111
  %133 = add <vscale x 4 x i32> %123, %124
  %134 = sub <vscale x 4 x i32> %130, %133
  %135 = shl <vscale x 4 x i32> %134, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %136 = add <vscale x 4 x i32> %132, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %137 = add <vscale x 4 x i32> %136, %135
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %137, <vscale x 4 x i1> %112, ptr %122, <vscale x 4 x i32> %111)
  %138 = add <vscale x 4 x i32> %137, %130
  %139 = sub <vscale x 4 x i32> %123, %137
  %140 = shl <vscale x 4 x i32> %139, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %141 = mul <vscale x 4 x i32> %111, %111
  %142 = add <vscale x 4 x i32> %140, %141
  %143 = mul <vscale x 4 x i32> %142, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %144 = sub <vscale x 4 x i32> %138, %111
  %145 = shl <vscale x 4 x i32> %144, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %146 = add <vscale x 4 x i32> %145, %143
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %146, <vscale x 4 x i1> %112, ptr %121, <vscale x 4 x i32> %111)
  %147 = zext i32 %114 to i64
  br i1 %condition1, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !110, !llvm.loop !147

if.then75:                                        ; preds = %for.cond.cleanup
  %148 = load ptr, ptr @stderr, align 8, !dbg !151, !tbaa !113
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 52) #14, !dbg !151
  tail call void @exit(i32 noundef %call73) #15, !dbg !151
  unreachable, !dbg !151

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !153
  %sub79 = fsub double %call78, %call, !dbg !154
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !155, !tbaa !156
  ret void, !dbg !158
}

declare !dbg !159 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !163 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !171, metadata !DIExpression()), !dbg !173
  %conv = sext i32 %n to i64, !dbg !174
  %mul = shl nsw i64 %conv, 2, !dbg !175
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !176
  call void @llvm.dbg.value(metadata ptr %call, metadata !172, metadata !DIExpression()), !dbg !173
  %cmp = icmp eq ptr %call, null, !dbg !177
  br i1 %cmp, label %if.then, label %if.end, !dbg !179

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !180
  tail call void @exit(i32 noundef 1) #15, !dbg !182
  unreachable, !dbg !182

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !183
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !184 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !188, metadata !DIExpression()), !dbg !190
  %conv = sext i32 %n to i64, !dbg !191
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !192
  call void @llvm.dbg.value(metadata ptr %call, metadata !189, metadata !DIExpression()), !dbg !190
  %cmp = icmp eq ptr %call, null, !dbg !193
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !196
  tail call void @exit(i32 noundef 1) #15, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !200 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !205, metadata !DIExpression()), !dbg !217
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !218
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !220
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !221

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !222, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !224
  call void @exit(i32 noundef 1) #15, !dbg !225
  unreachable, !dbg !225

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !226
  call void @llvm.dbg.value(metadata i32 %call2, metadata !204, metadata !DIExpression()), !dbg !228
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !229
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !230

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !231, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 90) #14, !dbg !231
  tail call void @exit(i32 noundef %call2) #15, !dbg !231
  unreachable, !dbg !231

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !233, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !235
  call void @llvm.dbg.value(metadata i32 %call7, metadata !204, metadata !DIExpression()), !dbg !228
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !236
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !237

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !238, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 93) #14, !dbg !238
  tail call void @exit(i32 noundef %call7) #15, !dbg !238
  unreachable, !dbg !238

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !210, metadata !DIExpression()), !dbg !228
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !240
  store ptr %call12, ptr @a, align 8, !dbg !241, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !242
  store ptr %call13, ptr @b, align 8, !dbg !243, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !244
  store ptr %call14, ptr @c, align 8, !dbg !245, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !246
  store ptr %call15, ptr @cond, align 8, !dbg !247, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !248, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !249
  %conv = trunc i64 %call16 to i32, !dbg !249
  tail call void @srand(i32 noundef %conv) #13, !dbg !250
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !251
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !211, metadata !DIExpression()), !dbg !251
  br label %for.body, !dbg !252

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @foo(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 5000000), !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !254
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !214, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 0, metadata !213, metadata !DIExpression()), !dbg !228
  br label %for.body33, !dbg !255

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !211, metadata !DIExpression()), !dbg !251
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !256
  %9 = trunc i64 %indvars.iv to i32, !dbg !259
  store i32 %9, ptr %arrayidx19, align 4, !dbg !259, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !260
  store i32 2, ptr %arrayidx21, align 4, !dbg !261, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !262
  store i32 0, ptr %arrayidx23, align 4, !dbg !263, !tbaa !102
  %rem = urem i32 %9, 10, !dbg !264
  %cmp24 = icmp eq i32 %rem, 0, !dbg !265
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !266
  %frombool = zext i1 %cmp24 to i8, !dbg !267
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !267, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !268
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !211, metadata !DIExpression()), !dbg !251
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !269
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !252, !llvm.loop !270

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !272
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !275
  %10 = load ptr, ptr @a, align 8, !dbg !276, !tbaa !113
  tail call void @free(ptr noundef %10) #13, !dbg !277
  %11 = load ptr, ptr @b, align 8, !dbg !278, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !279
  %12 = load ptr, ptr @c, align 8, !dbg !280, !tbaa !113
  tail call void @free(ptr noundef %12) #13, !dbg !281
  %13 = load ptr, ptr @cond, align 8, !dbg !282, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !283
  %14 = load i64, ptr @CounterValues, align 8, !dbg !284, !tbaa !285
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !287
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !288, !tbaa !285
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !289
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !290, !tbaa !285
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !291
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !292, !tbaa !285
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !293
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !294, !tbaa !156
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !295
  %19 = load i32, ptr @EventSet, align 4, !dbg !296, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !298
  call void @llvm.dbg.value(metadata i32 %call45, metadata !204, metadata !DIExpression()), !dbg !228
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !299
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !300

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !214, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !213, metadata !DIExpression()), !dbg !228
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !301
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !301, !tbaa !102
  %add = add nsw i32 %20, %sum.081, !dbg !272
  call void @llvm.dbg.value(metadata i32 %add, metadata !213, metadata !DIExpression()), !dbg !228
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !214, metadata !DIExpression()), !dbg !254
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !303
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !255, !llvm.loop !304

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !306, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 134) #14, !dbg !306
  tail call void @exit(i32 noundef %call45) #15, !dbg !306
  unreachable, !dbg !306

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !308
  call void @llvm.dbg.value(metadata i32 %call51, metadata !204, metadata !DIExpression()), !dbg !228
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !310
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !311

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !312, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 137) #14, !dbg !312
  tail call void @exit(i32 noundef %call51) #15, !dbg !312
  unreachable, !dbg !312

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !314
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !315
  ret i32 0, !dbg !316
}

declare !dbg !317 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !318 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !321 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !324 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !329 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !335 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !336 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !337 void @PAPI_shutdown() local_unnamed_addr #4

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
declare i1 @llvm.expect.i1(i1, i1) #10

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
!132 = !DILocation(line: 41, column: 54, scope: !128)
!133 = !DILocation(line: 41, column: 46, scope: !128)
!134 = !DILocation(line: 42, column: 22, scope: !128)
!135 = !DILocation(line: 44, column: 31, scope: !128)
!136 = !DILocation(line: 43, column: 37, scope: !128)
!137 = !DILocation(line: 44, column: 22, scope: !128)
!138 = !DILocation(line: 45, column: 33, scope: !128)
!139 = !DILocation(line: 45, column: 60, scope: !128)
!140 = !DILocation(line: 45, column: 75, scope: !128)
!141 = !DILocation(line: 45, column: 71, scope: !128)
!142 = !DILocation(line: 45, column: 48, scope: !128)
!143 = !DILocation(line: 45, column: 44, scope: !128)
!144 = !DILocation(line: 46, column: 22, scope: !128)
!145 = !DILocation(line: 47, column: 13, scope: !128)
!146 = !DILocation(line: 38, column: 32, scope: !109)
!147 = distinct !{!147, !110, !148, !149, !150}
!148 = !DILocation(line: 49, column: 9, scope: !97)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !DILocation(line: 52, column: 67, scope: !152)
!152 = distinct !DILexicalBlock(scope: !116, file: !3, line: 52, column: 67)
!153 = !DILocation(line: 54, column: 21, scope: !83)
!154 = !DILocation(line: 54, column: 42, scope: !83)
!155 = !DILocation(line: 54, column: 19, scope: !83)
!156 = !{!157, !157, i64 0}
!157 = !{!"double", !64, i64 0}
!158 = !DILocation(line: 55, column: 1, scope: !83)
!159 = !DISubprogram(name: "PAPI_start", scope: !160, file: !160, line: 1204, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!160 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!161 = !DISubroutineType(types: !162)
!162 = !{!6, !6}
!163 = !DISubprogram(name: "PAPI_stop", scope: !160, file: !160, line: 1206, type: !164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!164 = !DISubroutineType(types: !165)
!165 = !{!6, !6, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!167 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 62, type: !168, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!5, !6}
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "n", arg: 1, scope: !167, file: !3, line: 62, type: !6)
!172 = !DILocalVariable(name: "ptr", scope: !167, file: !3, line: 63, type: !5)
!173 = !DILocation(line: 0, scope: !167)
!174 = !DILocation(line: 63, column: 45, scope: !167)
!175 = !DILocation(line: 63, column: 43, scope: !167)
!176 = !DILocation(line: 63, column: 24, scope: !167)
!177 = !DILocation(line: 64, column: 13, scope: !178)
!178 = distinct !DILexicalBlock(scope: !167, file: !3, line: 64, column: 9)
!179 = !DILocation(line: 64, column: 9, scope: !167)
!180 = !DILocation(line: 65, column: 9, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !3, line: 64, column: 22)
!182 = !DILocation(line: 66, column: 9, scope: !181)
!183 = !DILocation(line: 68, column: 5, scope: !167)
!184 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 71, type: !185, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!185 = !DISubroutineType(types: !186)
!186 = !{!8, !6}
!187 = !{!188, !189}
!188 = !DILocalVariable(name: "n", arg: 1, scope: !184, file: !3, line: 71, type: !6)
!189 = !DILocalVariable(name: "ptr", scope: !184, file: !3, line: 72, type: !8)
!190 = !DILocation(line: 0, scope: !184)
!191 = !DILocation(line: 72, column: 48, scope: !184)
!192 = !DILocation(line: 72, column: 26, scope: !184)
!193 = !DILocation(line: 73, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !184, file: !3, line: 73, column: 9)
!195 = !DILocation(line: 73, column: 9, scope: !184)
!196 = !DILocation(line: 74, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 73, column: 22)
!198 = !DILocation(line: 75, column: 9, scope: !197)
!199 = !DILocation(line: 77, column: 5, scope: !184)
!200 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !201, scopeLine: 80, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{!6}
!203 = !{!204, !205, !210, !211, !213, !214}
!204 = !DILocalVariable(name: "status", scope: !200, file: !3, line: 81, type: !6)
!205 = !DILocalVariable(name: "errstring", scope: !200, file: !3, line: 82, type: !206)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 1024, elements: !208)
!207 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!208 = !{!209}
!209 = !DISubrange(count: 128)
!210 = !DILocalVariable(name: "n", scope: !200, file: !3, line: 95, type: !6)
!211 = !DILocalVariable(name: "i", scope: !212, file: !3, line: 106, type: !6)
!212 = distinct !DILexicalBlock(scope: !200, file: !3, line: 106, column: 5)
!213 = !DILocalVariable(name: "sum", scope: !200, file: !3, line: 115, type: !6)
!214 = !DILocalVariable(name: "i", scope: !215, file: !3, line: 117, type: !6)
!215 = distinct !DILexicalBlock(scope: !200, file: !3, line: 117, column: 5)
!216 = !DILocation(line: 82, column: 5, scope: !200)
!217 = !DILocation(line: 82, column: 10, scope: !200)
!218 = !DILocation(line: 84, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !200, file: !3, line: 84, column: 9)
!220 = !DILocation(line: 84, column: 45, scope: !219)
!221 = !DILocation(line: 84, column: 9, scope: !200)
!222 = !DILocation(line: 85, column: 17, scope: !223)
!223 = distinct !DILexicalBlock(scope: !219, file: !3, line: 84, column: 66)
!224 = !DILocation(line: 85, column: 9, scope: !223)
!225 = !DILocation(line: 86, column: 9, scope: !223)
!226 = !DILocation(line: 90, column: 19, scope: !227)
!227 = distinct !DILexicalBlock(scope: !200, file: !3, line: 90, column: 9)
!228 = !DILocation(line: 0, scope: !200)
!229 = !DILocation(line: 90, column: 52, scope: !227)
!230 = !DILocation(line: 90, column: 9, scope: !200)
!231 = !DILocation(line: 90, column: 64, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !3, line: 90, column: 64)
!233 = !DILocation(line: 93, column: 35, scope: !234)
!234 = distinct !DILexicalBlock(scope: !200, file: !3, line: 93, column: 9)
!235 = !DILocation(line: 93, column: 19, scope: !234)
!236 = !DILocation(line: 93, column: 69, scope: !234)
!237 = !DILocation(line: 93, column: 9, scope: !200)
!238 = !DILocation(line: 93, column: 81, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 93, column: 81)
!240 = !DILocation(line: 97, column: 9, scope: !200)
!241 = !DILocation(line: 97, column: 7, scope: !200)
!242 = !DILocation(line: 98, column: 9, scope: !200)
!243 = !DILocation(line: 98, column: 7, scope: !200)
!244 = !DILocation(line: 99, column: 9, scope: !200)
!245 = !DILocation(line: 99, column: 7, scope: !200)
!246 = !DILocation(line: 100, column: 12, scope: !200)
!247 = !DILocation(line: 100, column: 10, scope: !200)
!248 = !DILocation(line: 102, column: 13, scope: !200)
!249 = !DILocation(line: 104, column: 11, scope: !200)
!250 = !DILocation(line: 104, column: 5, scope: !200)
!251 = !DILocation(line: 0, scope: !212)
!252 = !DILocation(line: 106, column: 5, scope: !212)
!253 = !DILocation(line: 113, column: 5, scope: !200)
!254 = !DILocation(line: 0, scope: !215)
!255 = !DILocation(line: 117, column: 5, scope: !215)
!256 = !DILocation(line: 107, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 106, column: 33)
!258 = distinct !DILexicalBlock(scope: !212, file: !3, line: 106, column: 5)
!259 = !DILocation(line: 107, column: 14, scope: !257)
!260 = !DILocation(line: 108, column: 9, scope: !257)
!261 = !DILocation(line: 108, column: 14, scope: !257)
!262 = !DILocation(line: 109, column: 9, scope: !257)
!263 = !DILocation(line: 109, column: 14, scope: !257)
!264 = !DILocation(line: 110, column: 21, scope: !257)
!265 = !DILocation(line: 110, column: 26, scope: !257)
!266 = !DILocation(line: 110, column: 9, scope: !257)
!267 = !DILocation(line: 110, column: 17, scope: !257)
!268 = !DILocation(line: 106, column: 28, scope: !258)
!269 = !DILocation(line: 106, column: 23, scope: !258)
!270 = distinct !{!270, !252, !271, !149, !150}
!271 = !DILocation(line: 111, column: 5, scope: !212)
!272 = !DILocation(line: 118, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 117, column: 33)
!274 = distinct !DILexicalBlock(scope: !215, file: !3, line: 117, column: 5)
!275 = !DILocation(line: 121, column: 5, scope: !200)
!276 = !DILocation(line: 123, column: 10, scope: !200)
!277 = !DILocation(line: 123, column: 5, scope: !200)
!278 = !DILocation(line: 124, column: 10, scope: !200)
!279 = !DILocation(line: 124, column: 5, scope: !200)
!280 = !DILocation(line: 125, column: 10, scope: !200)
!281 = !DILocation(line: 125, column: 5, scope: !200)
!282 = !DILocation(line: 126, column: 10, scope: !200)
!283 = !DILocation(line: 126, column: 5, scope: !200)
!284 = !DILocation(line: 128, column: 53, scope: !200)
!285 = !{!286, !286, i64 0}
!286 = !{!"long long", !64, i64 0}
!287 = !DILocation(line: 128, column: 5, scope: !200)
!288 = !DILocation(line: 129, column: 36, scope: !200)
!289 = !DILocation(line: 129, column: 5, scope: !200)
!290 = !DILocation(line: 130, column: 50, scope: !200)
!291 = !DILocation(line: 130, column: 5, scope: !200)
!292 = !DILocation(line: 131, column: 49, scope: !200)
!293 = !DILocation(line: 131, column: 5, scope: !200)
!294 = !DILocation(line: 132, column: 40, scope: !200)
!295 = !DILocation(line: 132, column: 5, scope: !200)
!296 = !DILocation(line: 134, column: 38, scope: !297)
!297 = distinct !DILexicalBlock(scope: !200, file: !3, line: 134, column: 9)
!298 = !DILocation(line: 134, column: 19, scope: !297)
!299 = !DILocation(line: 134, column: 72, scope: !297)
!300 = !DILocation(line: 134, column: 9, scope: !200)
!301 = !DILocation(line: 118, column: 16, scope: !273)
!302 = !DILocation(line: 117, column: 28, scope: !274)
!303 = !DILocation(line: 117, column: 23, scope: !274)
!304 = distinct !{!304, !255, !305, !149, !150}
!305 = !DILocation(line: 119, column: 5, scope: !215)
!306 = !DILocation(line: 134, column: 84, scope: !307)
!307 = distinct !DILexicalBlock(scope: !297, file: !3, line: 134, column: 84)
!308 = !DILocation(line: 137, column: 19, scope: !309)
!309 = distinct !DILexicalBlock(scope: !200, file: !3, line: 137, column: 9)
!310 = !DILocation(line: 137, column: 53, scope: !309)
!311 = !DILocation(line: 137, column: 9, scope: !200)
!312 = !DILocation(line: 137, column: 65, scope: !313)
!313 = distinct !DILexicalBlock(scope: !309, file: !3, line: 137, column: 65)
!314 = !DILocation(line: 140, column: 5, scope: !200)
!315 = !DILocation(line: 143, column: 1, scope: !200)
!316 = !DILocation(line: 142, column: 5, scope: !200)
!317 = !DISubprogram(name: "PAPI_library_init", scope: !160, file: !160, line: 1172, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!318 = !DISubprogram(name: "PAPI_create_eventset", scope: !160, file: !160, line: 1147, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubroutineType(types: !320)
!320 = !{!6, !5}
!321 = !DISubprogram(name: "PAPI_add_events", scope: !160, file: !160, line: 1143, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!322 = !DISubroutineType(types: !323)
!323 = !{!6, !6, !5, !6}
!324 = !DISubprogram(name: "srand", scope: !325, file: !325, line: 455, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!325 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!329 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!330 = !DISubroutineType(types: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !333, line: 7, baseType: !52)
!333 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!335 = !DISubprogram(name: "PAPI_remove_events", scope: !160, file: !160, line: 1192, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!336 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !160, file: !160, line: 1149, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!337 = !DISubprogram(name: "PAPI_shutdown", scope: !160, file: !160, line: 1202, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!338 = !DISubroutineType(types: !339)
!339 = !{null}