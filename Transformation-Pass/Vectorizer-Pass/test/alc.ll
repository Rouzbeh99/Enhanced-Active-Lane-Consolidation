; ModuleID = 'scalar_code.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.St = type { [10000 x i32], [10000 x i32] }
%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@n = dso_local local_unnamed_addr constant i32 10000, align 4, !dbg !23
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !40
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !42
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !44
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !46
@s = dso_local local_unnamed_addr global %struct.St zeroinitializer, align 4, !dbg !26
@arr2D = dso_local local_unnamed_addr global [3 x [10000 x i32]] zeroinitializer, align 4, !dbg !35
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @getTimeMiliSeconds() local_unnamed_addr #0 !dbg !60 {
entry:
  %ts = alloca %struct.timespec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #13, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !64, metadata !DIExpression()), !dbg !75
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #13, !dbg !76
  %0 = load i64, ptr %ts, align 8, !dbg !77, !tbaa !78
  %conv = sitofp i64 %0 to double, !dbg !83
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !84
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !84, !tbaa !85
  %conv1 = sitofp i64 %1 to double, !dbg !86
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !87
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !88
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #13, !dbg !89
  ret double %2, !dbg !90
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !91 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture readnone %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %b, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %c, metadata !108, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr undef, metadata !109, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32 %n, metadata !110, metadata !DIExpression()), !dbg !115
  %call = tail call double @getTimeMiliSeconds(), !dbg !116
  call void @llvm.dbg.value(metadata double %call, metadata !112, metadata !DIExpression()), !dbg !115
  %0 = load i32, ptr @EventSet, align 4, !dbg !117, !tbaa !119
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #13, !dbg !121
  call void @llvm.dbg.value(metadata i32 %call1, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp.not = icmp eq i32 %call1, 0, !dbg !122
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !123

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !113, metadata !DIExpression()), !dbg !124
  %cmp347 = icmp sgt i32 %n, 0, !dbg !125
  br i1 %cmp347, label %for.body.preheader, label %for.cond.cleanup, !dbg !127

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !125
  %1 = call i32 @llvm.vscale.i32(), !dbg !127
  %2 = mul i32 %1, 4, !dbg !127
  %3 = mul i32 %2, 2, !dbg !127
  %4 = icmp uge i32 %n, %3, !dbg !127
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !127

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !128, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 76) #14, !dbg !128
  tail call void @exit(i32 noundef %call1) #15, !dbg !128
  unreachable, !dbg !128

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !132

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !132, !tbaa !119
  %call22 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call22, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp23.not = icmp eq i32 %call22, 0, !dbg !135
  br i1 %cmp23.not, label %if.end26, label %if.then24, !dbg !136

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %10, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !113, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !137
  %7 = load i32, ptr %arrayidx, align 4, !dbg !137, !tbaa !119
  %arrayidx5 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !140
  %8 = load i32, ptr %arrayidx5, align 4, !dbg !140, !tbaa !119
  %cmp6 = icmp sgt i32 %7, %8, !dbg !141
  br i1 %cmp6, label %if.then7, label %if.else, !dbg !142

if.then7:                                         ; preds = %for.body
  %add = add nsw i32 %8, %7, !dbg !143
  %arrayidx13 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !145
  store i32 %add, ptr %arrayidx13, align 4, !dbg !146, !tbaa !119
  br label %for.inc, !dbg !147

if.else:                                          ; preds = %for.body
  %mul = mul nsw i32 %8, %7, !dbg !148
  %arrayidx19 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !150
  %9 = load i32, ptr %arrayidx19, align 4, !dbg !151, !tbaa !119
  %add20 = add nsw i32 %9, %mul, !dbg !151
  store i32 %add20, ptr %arrayidx19, align 4, !dbg !151, !tbaa !119
  br label %for.inc

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %10 = phi i64 [ 0, %for.body.preheader ], [ %147, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %11 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %12 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %13 = urem i32 %n, %2
  %14 = mul i32 %2, 2
  %15 = add i32 %14, %13
  %total.iterations.to.be.vectorized = sub i32 %n, %15
  %16 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !150
  %initial_load = load <vscale x 4 x i32>, ptr %16, align 16
  %17 = getelementptr inbounds i32, ptr %a, i64 0, !dbg !137
  %initial_load1 = load <vscale x 4 x i32>, ptr %17, align 16
  %18 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !140
  %initial_load2 = load <vscale x 4 x i32>, ptr %18, align 16
  %19 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %20 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %22 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %22, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %23 = load <vscale x 4 x i32>, ptr %19, align 16
  %24 = load <vscale x 4 x i32>, ptr %20, align 16
  %25 = icmp sgt <vscale x 4 x i32> %23, %24
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %107, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %12, %pre.alc ], [ %102, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %25, %pre.alc ], [ %103, %new.latch ]
  %uniformLoad = phi <vscale x 4 x i32> [ %initial_load2, %pre.alc ], [ %106, %new.latch ]
  %uniformLoad6 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %105, %new.latch ]
  %uniformLoad7 = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %104, %new.latch ]
  %26 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %27 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !137
  %28 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !140
  %29 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %30 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg3 = shufflevector <vscale x 4 x i32> %30, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %31 = load <vscale x 4 x i32>, ptr %27, align 16
  %32 = load <vscale x 4 x i32>, ptr %28, align 16
  %33 = icmp sgt <vscale x 4 x i32> %31, %32
  %34 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !150
  %remaining_load = load <vscale x 4 x i32>, ptr %34, align 16
  %35 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !137
  %remaining_load4 = load <vscale x 4 x i32>, ptr %35, align 16
  %36 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !140
  %remaining_load5 = load <vscale x 4 x i32>, ptr %36, align 16
  br label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %37 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %33, <vscale x 4 x i1> %33)
  %39 = trunc i64 %37 to i32
  %40 = trunc i64 %38 to i32
  %41 = add i32 %39, %40
  %42 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %43 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %26)
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad7)
  %45 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %remaining_load)
  %46 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad6)
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %remaining_load4)
  %48 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad)
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %remaining_load5)
  %50 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %51 = xor <vscale x 4 x i1> %33, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %52 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %uniform.vector)
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %51, <vscale x 4 x i32> %26)
  %54 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %uniformLoad7)
  %55 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %51, <vscale x 4 x i32> %remaining_load)
  %56 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %uniformLoad6)
  %57 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %51, <vscale x 4 x i32> %remaining_load4)
  %58 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %uniformLoad)
  %59 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %51, <vscale x 4 x i32> %remaining_load5)
  %60 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %39)
  %61 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %60, <vscale x 4 x i32> %42, <vscale x 4 x i32> %43)
  %62 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %60, <vscale x 4 x i32> %44, <vscale x 4 x i32> %45)
  %63 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %60, <vscale x 4 x i32> %46, <vscale x 4 x i32> %47)
  %64 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %60, <vscale x 4 x i32> %48, <vscale x 4 x i32> %49)
  %65 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %41)
  %66 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %65, <vscale x 4 x i32> %61, <vscale x 4 x i32> %53)
  %67 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %65, <vscale x 4 x i32> %62, <vscale x 4 x i32> %55)
  %68 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %65, <vscale x 4 x i32> %63, <vscale x 4 x i32> %57)
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %65, <vscale x 4 x i32> %64, <vscale x 4 x i32> %59)
  %70 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %33, <vscale x 4 x i1> %33)
  %71 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %70)
  %72 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %71, <vscale x 4 x i32> %43, <vscale x 4 x i32> %53)
  %73 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %71, <vscale x 4 x i32> %45, <vscale x 4 x i32> %55)
  %74 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %71, <vscale x 4 x i32> %47, <vscale x 4 x i32> %57)
  %75 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %71, <vscale x 4 x i32> %49, <vscale x 4 x i32> %59)
  %76 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %50, <vscale x 4 x i1> %50)
  %77 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %76)
  %78 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %52, <vscale x 4 x i32> %72)
  %79 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %54, <vscale x 4 x i32> %73)
  %80 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %56, <vscale x 4 x i32> %74)
  %81 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %58, <vscale x 4 x i32> %75)
  %82 = xor <vscale x 4 x i1> %77, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %83 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %51, <vscale x 4 x i1> %51)
  %84 = sext i32 %2 to i64
  %85 = sub i64 %84, %83
  %86 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %85)
  %87 = and <vscale x 4 x i1> %82, %86
  %88 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %65, <vscale x 4 x i1> %65)
  %89 = trunc i64 %88 to i32
  %90 = icmp ugt i32 %41, %2
  br i1 %90, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %lane.gather
  %91 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %92 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %93 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !145
  %94 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg8 = shufflevector <vscale x 4 x i32> %94, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %95 = add <vscale x 4 x i32> %69, %68
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %95, <vscale x 4 x i1> %11, ptr %93, <vscale x 4 x i32> %66)
  br label %new.latch

uniform.else:                                     ; preds = %lane.gather
  %96 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %97 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %98 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !150
  %99 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg9 = shufflevector <vscale x 4 x i32> %99, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %100 = mul <vscale x 4 x i32> %81, %80
  %101 = add <vscale x 4 x i32> %79, %100
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %101, <vscale x 4 x i1> %11, ptr %98, <vscale x 4 x i32> %78)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %102 = phi <vscale x 4 x i32> [ %78, %uniform.then ], [ %66, %uniform.else ]
  %103 = phi <vscale x 4 x i1> [ %87, %uniform.then ], [ %65, %uniform.else ]
  %104 = phi <vscale x 4 x i32> [ %67, %uniform.else ], [ %79, %uniform.then ]
  %105 = phi <vscale x 4 x i32> [ %68, %uniform.else ], [ %80, %uniform.then ]
  %106 = phi <vscale x 4 x i32> [ %69, %uniform.else ], [ %81, %uniform.then ]
  %107 = add i32 %vector.loop.index, %2
  %108 = icmp uge i32 %107, %total.iterations.to.be.vectorized
  br i1 %108, label %joinBlock, label %alc.header

linearized.then:                                  ; preds = %joinBlock
  %109 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %110 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %111 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !145
  %112 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg10 = shufflevector <vscale x 4 x i32> %112, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %113 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %65, ptr %109, <vscale x 4 x i32> %66)
  %114 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %65, ptr %110, <vscale x 4 x i32> %66)
  %115 = add <vscale x 4 x i32> %114, %113
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %115, <vscale x 4 x i1> %65, ptr %111, <vscale x 4 x i32> %66)
  %116 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %117 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %118 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !150
  %119 = xor <vscale x 4 x i1> %65, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %120 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg11 = shufflevector <vscale x 4 x i32> %120, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %121 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %119, ptr %116, <vscale x 4 x i32> %66)
  %122 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %119, ptr %117, <vscale x 4 x i32> %66)
  %123 = mul <vscale x 4 x i32> %122, %121
  %124 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %119, ptr %118, <vscale x 4 x i32> %66)
  %125 = add <vscale x 4 x i32> %124, %123
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %125, <vscale x 4 x i1> %119, ptr %118, <vscale x 4 x i32> %66)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %126 = xor <vscale x 4 x i1> %87, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %127 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %128 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %129 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !150
  %130 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg12 = shufflevector <vscale x 4 x i32> %130, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %131 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %126, ptr %127, <vscale x 4 x i32> %78)
  %132 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %126, ptr %128, <vscale x 4 x i32> %78)
  %133 = mul <vscale x 4 x i32> %132, %131
  %134 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %126, ptr %129, <vscale x 4 x i32> %78)
  %135 = add <vscale x 4 x i32> %134, %133
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %135, <vscale x 4 x i1> %126, ptr %129, <vscale x 4 x i32> %78)
  %136 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !137
  %137 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !140
  %138 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !145
  %139 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg13 = shufflevector <vscale x 4 x i32> %139, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %140 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %87, ptr %136, <vscale x 4 x i32> %78)
  %141 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %87, ptr %137, <vscale x 4 x i32> %78)
  %142 = add <vscale x 4 x i32> %141, %140
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %142, <vscale x 4 x i1> %87, ptr %138, <vscale x 4 x i32> %78)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %143 = icmp eq <vscale x 4 x i32> %102, %66
  %144 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %143, <vscale x 4 x i1> %143)
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, %2
  br i1 %146, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %147 = zext i32 %107 to i64
  br label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.else, %if.then7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !127, !llvm.loop !153

if.then24:                                        ; preds = %for.cond.cleanup
  %148 = load ptr, ptr @stderr, align 8, !dbg !157, !tbaa !130
  %call25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str, i32 noundef %call22, ptr noundef nonnull @.str.1, i32 noundef 109) #14, !dbg !157
  tail call void @exit(i32 noundef %call22) #15, !dbg !157
  unreachable, !dbg !157

if.end26:                                         ; preds = %for.cond.cleanup
  %call27 = tail call double @getTimeMiliSeconds(), !dbg !159
  %sub = fsub double %call27, %call, !dbg !160
  store double %sub, ptr @ExecutionTime, align 8, !dbg !161, !tbaa !162
  ret void, !dbg !164
}

declare !dbg !165 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !169 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !177, metadata !DIExpression()), !dbg !179
  %conv = sext i32 %n to i64, !dbg !180
  %mul = shl nsw i64 %conv, 2, !dbg !181
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !182
  call void @llvm.dbg.value(metadata ptr %call, metadata !178, metadata !DIExpression()), !dbg !179
  %cmp = icmp eq ptr %call, null, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !186
  tail call void @exit(i32 noundef 1) #15, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !189
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !190 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !194, metadata !DIExpression()), !dbg !196
  %conv = sext i32 %n to i64, !dbg !197
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !198
  call void @llvm.dbg.value(metadata ptr %call, metadata !195, metadata !DIExpression()), !dbg !196
  %cmp = icmp eq ptr %call, null, !dbg !199
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !202
  tail call void @exit(i32 noundef 1) #15, !dbg !204
  unreachable, !dbg !204

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !205
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !206 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !211, metadata !DIExpression()), !dbg !222
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !223
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !225
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !226

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !227, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !229
  call void @exit(i32 noundef 1) #15, !dbg !230
  unreachable, !dbg !230

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !231
  call void @llvm.dbg.value(metadata i32 %call2, metadata !210, metadata !DIExpression()), !dbg !233
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !234
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !235

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !236, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 324) #14, !dbg !236
  tail call void @exit(i32 noundef %call2) #15, !dbg !236
  unreachable, !dbg !236

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !238, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !240
  call void @llvm.dbg.value(metadata i32 %call7, metadata !210, metadata !DIExpression()), !dbg !233
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !241
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !242

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !243, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 327) #14, !dbg !243
  tail call void @exit(i32 noundef %call7) #15, !dbg !243
  unreachable, !dbg !243

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 10000), !dbg !245
  store ptr %call12, ptr @a, align 8, !dbg !246, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 10000), !dbg !247
  store ptr %call13, ptr @b, align 8, !dbg !248, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 10000), !dbg !249
  store ptr %call14, ptr @c, align 8, !dbg !250, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 10000), !dbg !251
  store ptr %call15, ptr @cond, align 8, !dbg !252, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !253, !tbaa !254
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !256
  %conv = trunc i64 %call16 to i32, !dbg !256
  tail call void @srand(i32 noundef %conv) #13, !dbg !257
  call void @llvm.dbg.value(metadata i32 1, metadata !216, metadata !DIExpression()), !dbg !258
  %4 = load ptr, ptr @a, align 8, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !tbaa !130
  %7 = load ptr, ptr @cond, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 1, metadata !216, metadata !DIExpression()), !dbg !258
  br label %for.body, !dbg !259

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr undef, i32 noundef 10000), !dbg !260
  call void @llvm.dbg.value(metadata i32 0, metadata !218, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.value(metadata i32 0, metadata !219, metadata !DIExpression()), !dbg !261
  %8 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !219, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 0, metadata !218, metadata !DIExpression()), !dbg !233
  br label %for.body41, !dbg !262

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !216, metadata !DIExpression()), !dbg !258
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !263
  store i32 2, ptr %arrayidx19, align 4, !dbg !266, !tbaa !119
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !267
  store i32 -1, ptr %arrayidx21, align 4, !dbg !268, !tbaa !119
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !269
  store i32 0, ptr %arrayidx23, align 4, !dbg !270, !tbaa !119
  %arrayidx25 = getelementptr inbounds [10000 x i32], ptr @s, i64 0, i64 %indvars.iv, !dbg !271
  store i32 1, ptr %arrayidx25, align 4, !dbg !272, !tbaa !119
  %arrayidx27 = getelementptr inbounds %struct.St, ptr @s, i64 0, i32 1, i64 %indvars.iv, !dbg !273
  store i32 2, ptr %arrayidx27, align 4, !dbg !274, !tbaa !119
  %arrayidx29 = getelementptr inbounds [10000 x i32], ptr @arr2D, i64 0, i64 %indvars.iv, !dbg !275
  store i32 -5, ptr %arrayidx29, align 4, !dbg !276, !tbaa !119
  %arrayidx31 = getelementptr inbounds [3 x [10000 x i32]], ptr @arr2D, i64 0, i64 1, i64 %indvars.iv, !dbg !277
  store i32 -7, ptr %arrayidx31, align 4, !dbg !278, !tbaa !119
  %arrayidx35 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !279
  %9 = trunc i64 %indvars.iv to i8, !dbg !280
  %10 = and i8 %9, 1, !dbg !280
  %11 = xor i8 %10, 1, !dbg !280
  store i8 %11, ptr %arrayidx35, align 1, !dbg !280, !tbaa !254
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !281
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !216, metadata !DIExpression()), !dbg !258
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10000, !dbg !282
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !259, !llvm.loop !283

for.cond.cleanup40:                               ; preds = %for.body41
  %add.lcssa = phi i32 [ %add, %for.body41 ], !dbg !285
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !288
  %putchar = tail call i32 @putchar(i32 10), !dbg !289
  %12 = load ptr, ptr @a, align 8, !dbg !290, !tbaa !130
  tail call void @free(ptr noundef %12) #13, !dbg !291
  %13 = load ptr, ptr @b, align 8, !dbg !292, !tbaa !130
  tail call void @free(ptr noundef %13) #13, !dbg !293
  %14 = load ptr, ptr @c, align 8, !dbg !294, !tbaa !130
  tail call void @free(ptr noundef %14) #13, !dbg !295
  %15 = load ptr, ptr @cond, align 8, !dbg !296, !tbaa !130
  tail call void @free(ptr noundef %15) #13, !dbg !297
  %16 = load i64, ptr @CounterValues, align 8, !dbg !298, !tbaa !299
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !301
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !302, !tbaa !299
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !303
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !304, !tbaa !299
  %call51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !305
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !306, !tbaa !299
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !307
  %20 = load double, ptr @ExecutionTime, align 8, !dbg !308, !tbaa !162
  %call53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %20), !dbg !309
  %21 = load i32, ptr @EventSet, align 4, !dbg !310, !tbaa !119
  %call54 = tail call i32 @PAPI_remove_events(i32 noundef %21, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !312
  call void @llvm.dbg.value(metadata i32 %call54, metadata !210, metadata !DIExpression()), !dbg !233
  %cmp55.not = icmp eq i32 %call54, 0, !dbg !313
  br i1 %cmp55.not, label %if.end59, label %if.then57, !dbg !314

for.body41:                                       ; preds = %for.body41, %for.cond.cleanup
  %indvars.iv90 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next91, %for.body41 ]
  %sum.087 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv90, metadata !219, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i32 %sum.087, metadata !218, metadata !DIExpression()), !dbg !233
  %arrayidx43 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv90, !dbg !315
  %22 = load i32, ptr %arrayidx43, align 4, !dbg !315, !tbaa !119
  %add = add nsw i32 %22, %sum.087, !dbg !285
  call void @llvm.dbg.value(metadata i32 %add, metadata !218, metadata !DIExpression()), !dbg !233
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1, !dbg !316
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next91, metadata !219, metadata !DIExpression()), !dbg !261
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, 10000, !dbg !317
  br i1 %exitcond93.not, label %for.cond.cleanup40, label %for.body41, !dbg !262, !llvm.loop !318

if.then57:                                        ; preds = %for.cond.cleanup40
  %23 = load ptr, ptr @stderr, align 8, !dbg !320, !tbaa !130
  %call58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %call54, ptr noundef nonnull @.str.1, i32 noundef 377) #14, !dbg !320
  tail call void @exit(i32 noundef %call54) #15, !dbg !320
  unreachable, !dbg !320

if.end59:                                         ; preds = %for.cond.cleanup40
  %call60 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !322
  call void @llvm.dbg.value(metadata i32 %call60, metadata !210, metadata !DIExpression()), !dbg !233
  %cmp61.not = icmp eq i32 %call60, 0, !dbg !324
  br i1 %cmp61.not, label %if.end65, label %if.then63, !dbg !325

if.then63:                                        ; preds = %if.end59
  %24 = load ptr, ptr @stderr, align 8, !dbg !326, !tbaa !130
  %call64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %call60, ptr noundef nonnull @.str.1, i32 noundef 380) #14, !dbg !326
  tail call void @exit(i32 noundef %call60) #15, !dbg !326
  unreachable, !dbg !326

if.end65:                                         ; preds = %if.end59
  tail call void @PAPI_shutdown() #13, !dbg !328
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !329
  ret i32 0, !dbg !330
}

declare !dbg !331 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !332 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !335 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !338 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !343 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !349 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !350 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !351 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

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
attributes #11 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #12 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "fe7670560a7e1b85d4973f96ba58a317")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !26, !35, !40, !42, !44, !46}
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
!24 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 59, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 66, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "St", file: !3, line: 61, size: 640000, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "array1", scope: !28, file: !3, line: 62, baseType: !31, size: 320000)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 320000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 10000)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "array2", scope: !28, file: !3, line: 63, baseType: !31, size: 320000, offset: 320000)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "arr2D", scope: !2, file: !3, line: 67, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 960000, elements: !38)
!38 = !{!39, !33}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 291, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 292, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 293, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 294, type: !8, isLocal: false, isDefinition: true)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"PIC Level", i32 2}
!56 = !{i32 7, !"PIE Level", i32 2}
!57 = !{i32 7, !"uwtable", i32 2}
!58 = !{i32 7, !"frame-pointer", i32 1}
!59 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!60 = distinct !DISubprogram(name: "getTimeMiliSeconds", scope: !3, file: !3, line: 15, type: !61, scopeLine: 15, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!22}
!63 = !{!64}
!64 = !DILocalVariable(name: "ts", scope: !60, file: !3, line: 16, type: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !66, line: 10, size: 128, elements: !67)
!66 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!67 = !{!68, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !65, file: !66, line: 12, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !70, line: 160, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!71 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !65, file: !66, line: 16, baseType: !73, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !70, line: 196, baseType: !71)
!74 = !DILocation(line: 16, column: 5, scope: !60)
!75 = !DILocation(line: 16, column: 21, scope: !60)
!76 = !DILocation(line: 17, column: 5, scope: !60)
!77 = !DILocation(line: 18, column: 15, scope: !60)
!78 = !{!79, !80, i64 0}
!79 = !{!"timespec", !80, i64 0, !80, i64 8}
!80 = !{!"long", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !DILocation(line: 18, column: 12, scope: !60)
!84 = !DILocation(line: 18, column: 35, scope: !60)
!85 = !{!79, !80, i64 8}
!86 = !DILocation(line: 18, column: 32, scope: !60)
!87 = !DILocation(line: 18, column: 43, scope: !60)
!88 = !DILocation(line: 18, column: 30, scope: !60)
!89 = !DILocation(line: 19, column: 1, scope: !60)
!90 = !DILocation(line: 18, column: 5, scope: !60)
!91 = !DISubprogram(name: "clock_gettime", scope: !92, file: !92, line: 213, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!92 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "2dc9fb937b28c900f98919b5c35320c2")
!93 = !DISubroutineType(types: !94)
!94 = !{!6, !95, !98}
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 7, baseType: !97)
!96 = !DIFile(filename: "/usr/include/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !70, line: 168, baseType: !6)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!99 = !{}
!100 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 69, type: !101, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !103, !104, !6}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !3, line: 69, type: !103)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !3, line: 69, type: !103)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !100, file: !3, line: 69, type: !103)
!109 = !DILocalVariable(name: "cond", arg: 4, scope: !100, file: !3, line: 70, type: !104)
!110 = !DILocalVariable(name: "n", arg: 5, scope: !100, file: !3, line: 70, type: !6)
!111 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 72, type: !6)
!112 = !DILocalVariable(name: "t", scope: !100, file: !3, line: 74, type: !22)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 80, type: !6)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 80, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 74, column: 16, scope: !100)
!117 = !DILocation(line: 76, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !3, line: 76, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !81, i64 0}
!121 = !DILocation(line: 76, column: 19, scope: !118)
!122 = !DILocation(line: 76, column: 41, scope: !118)
!123 = !DILocation(line: 76, column: 9, scope: !100)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 80, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 80, column: 5)
!127 = !DILocation(line: 80, column: 5, scope: !114)
!128 = !DILocation(line: 76, column: 53, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 76, column: 53)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !81, i64 0}
!132 = !DILocation(line: 109, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 109, column: 9)
!134 = !DILocation(line: 109, column: 19, scope: !133)
!135 = !DILocation(line: 109, column: 55, scope: !133)
!136 = !DILocation(line: 109, column: 9, scope: !100)
!137 = !DILocation(line: 98, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 98, column: 13)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 80, column: 33)
!140 = !DILocation(line: 98, column: 20, scope: !138)
!141 = !DILocation(line: 98, column: 18, scope: !138)
!142 = !DILocation(line: 98, column: 13, scope: !139)
!143 = !DILocation(line: 99, column: 25, scope: !144)
!144 = distinct !DILexicalBlock(scope: !138, file: !3, line: 98, column: 26)
!145 = !DILocation(line: 99, column: 13, scope: !144)
!146 = !DILocation(line: 99, column: 18, scope: !144)
!147 = !DILocation(line: 100, column: 9, scope: !144)
!148 = !DILocation(line: 101, column: 26, scope: !149)
!149 = distinct !DILexicalBlock(scope: !138, file: !3, line: 100, column: 16)
!150 = !DILocation(line: 101, column: 13, scope: !149)
!151 = !DILocation(line: 101, column: 18, scope: !149)
!152 = !DILocation(line: 80, column: 28, scope: !126)
!153 = distinct !{!153, !127, !154, !155, !156}
!154 = !DILocation(line: 105, column: 5, scope: !114)
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!"llvm.loop.unroll.disable"}
!157 = !DILocation(line: 109, column: 67, scope: !158)
!158 = distinct !DILexicalBlock(scope: !133, file: !3, line: 109, column: 67)
!159 = !DILocation(line: 111, column: 21, scope: !100)
!160 = !DILocation(line: 111, column: 42, scope: !100)
!161 = !DILocation(line: 111, column: 19, scope: !100)
!162 = !{!163, !163, i64 0}
!163 = !{!"double", !81, i64 0}
!164 = !DILocation(line: 112, column: 1, scope: !100)
!165 = !DISubprogram(name: "PAPI_start", scope: !166, file: !166, line: 1204, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!166 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!167 = !DISubroutineType(types: !168)
!168 = !{!6, !6}
!169 = !DISubprogram(name: "PAPI_stop", scope: !166, file: !166, line: 1206, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!170 = !DISubroutineType(types: !171)
!171 = !{!6, !6, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!173 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 296, type: !174, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!5, !6}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "n", arg: 1, scope: !173, file: !3, line: 296, type: !6)
!178 = !DILocalVariable(name: "ptr", scope: !173, file: !3, line: 297, type: !5)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 297, column: 45, scope: !173)
!181 = !DILocation(line: 297, column: 43, scope: !173)
!182 = !DILocation(line: 297, column: 24, scope: !173)
!183 = !DILocation(line: 298, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !173, file: !3, line: 298, column: 9)
!185 = !DILocation(line: 298, column: 9, scope: !173)
!186 = !DILocation(line: 299, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 298, column: 22)
!188 = !DILocation(line: 300, column: 9, scope: !187)
!189 = !DILocation(line: 302, column: 5, scope: !173)
!190 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 305, type: !191, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!8, !6}
!193 = !{!194, !195}
!194 = !DILocalVariable(name: "n", arg: 1, scope: !190, file: !3, line: 305, type: !6)
!195 = !DILocalVariable(name: "ptr", scope: !190, file: !3, line: 306, type: !8)
!196 = !DILocation(line: 0, scope: !190)
!197 = !DILocation(line: 306, column: 48, scope: !190)
!198 = !DILocation(line: 306, column: 26, scope: !190)
!199 = !DILocation(line: 307, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !190, file: !3, line: 307, column: 9)
!201 = !DILocation(line: 307, column: 9, scope: !190)
!202 = !DILocation(line: 308, column: 9, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 307, column: 22)
!204 = !DILocation(line: 309, column: 9, scope: !203)
!205 = !DILocation(line: 311, column: 5, scope: !190)
!206 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 314, type: !207, scopeLine: 314, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!6}
!209 = !{!210, !211, !216, !218, !219}
!210 = !DILocalVariable(name: "status", scope: !206, file: !3, line: 315, type: !6)
!211 = !DILocalVariable(name: "errstring", scope: !206, file: !3, line: 316, type: !212)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1024, elements: !214)
!213 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!214 = !{!215}
!215 = !DISubrange(count: 128)
!216 = !DILocalVariable(name: "i", scope: !217, file: !3, line: 340, type: !6)
!217 = distinct !DILexicalBlock(scope: !206, file: !3, line: 340, column: 5)
!218 = !DILocalVariable(name: "sum", scope: !206, file: !3, line: 356, type: !6)
!219 = !DILocalVariable(name: "i", scope: !220, file: !3, line: 358, type: !6)
!220 = distinct !DILexicalBlock(scope: !206, file: !3, line: 358, column: 5)
!221 = !DILocation(line: 316, column: 5, scope: !206)
!222 = !DILocation(line: 316, column: 10, scope: !206)
!223 = !DILocation(line: 318, column: 9, scope: !224)
!224 = distinct !DILexicalBlock(scope: !206, file: !3, line: 318, column: 9)
!225 = !DILocation(line: 318, column: 45, scope: !224)
!226 = !DILocation(line: 318, column: 9, scope: !206)
!227 = !DILocation(line: 319, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !3, line: 318, column: 66)
!229 = !DILocation(line: 319, column: 9, scope: !228)
!230 = !DILocation(line: 320, column: 9, scope: !228)
!231 = !DILocation(line: 324, column: 19, scope: !232)
!232 = distinct !DILexicalBlock(scope: !206, file: !3, line: 324, column: 9)
!233 = !DILocation(line: 0, scope: !206)
!234 = !DILocation(line: 324, column: 52, scope: !232)
!235 = !DILocation(line: 324, column: 9, scope: !206)
!236 = !DILocation(line: 324, column: 64, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 324, column: 64)
!238 = !DILocation(line: 327, column: 35, scope: !239)
!239 = distinct !DILexicalBlock(scope: !206, file: !3, line: 327, column: 9)
!240 = !DILocation(line: 327, column: 19, scope: !239)
!241 = !DILocation(line: 327, column: 69, scope: !239)
!242 = !DILocation(line: 327, column: 9, scope: !206)
!243 = !DILocation(line: 327, column: 81, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 327, column: 81)
!245 = !DILocation(line: 330, column: 9, scope: !206)
!246 = !DILocation(line: 330, column: 7, scope: !206)
!247 = !DILocation(line: 331, column: 9, scope: !206)
!248 = !DILocation(line: 331, column: 7, scope: !206)
!249 = !DILocation(line: 332, column: 9, scope: !206)
!250 = !DILocation(line: 332, column: 7, scope: !206)
!251 = !DILocation(line: 333, column: 12, scope: !206)
!252 = !DILocation(line: 333, column: 10, scope: !206)
!253 = !DILocation(line: 335, column: 13, scope: !206)
!254 = !{!255, !255, i64 0}
!255 = !{!"_Bool", !81, i64 0}
!256 = !DILocation(line: 337, column: 11, scope: !206)
!257 = !DILocation(line: 337, column: 5, scope: !206)
!258 = !DILocation(line: 0, scope: !217)
!259 = !DILocation(line: 340, column: 5, scope: !217)
!260 = !DILocation(line: 353, column: 5, scope: !206)
!261 = !DILocation(line: 0, scope: !220)
!262 = !DILocation(line: 358, column: 5, scope: !220)
!263 = !DILocation(line: 341, column: 9, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 340, column: 33)
!265 = distinct !DILexicalBlock(scope: !217, file: !3, line: 340, column: 5)
!266 = !DILocation(line: 341, column: 14, scope: !264)
!267 = !DILocation(line: 342, column: 9, scope: !264)
!268 = !DILocation(line: 342, column: 14, scope: !264)
!269 = !DILocation(line: 343, column: 9, scope: !264)
!270 = !DILocation(line: 343, column: 14, scope: !264)
!271 = !DILocation(line: 344, column: 9, scope: !264)
!272 = !DILocation(line: 344, column: 21, scope: !264)
!273 = !DILocation(line: 345, column: 9, scope: !264)
!274 = !DILocation(line: 345, column: 21, scope: !264)
!275 = !DILocation(line: 346, column: 9, scope: !264)
!276 = !DILocation(line: 346, column: 21, scope: !264)
!277 = !DILocation(line: 347, column: 9, scope: !264)
!278 = !DILocation(line: 347, column: 21, scope: !264)
!279 = !DILocation(line: 348, column: 9, scope: !264)
!280 = !DILocation(line: 348, column: 17, scope: !264)
!281 = !DILocation(line: 340, column: 28, scope: !265)
!282 = !DILocation(line: 340, column: 23, scope: !265)
!283 = distinct !{!283, !259, !284, !155, !156}
!284 = !DILocation(line: 349, column: 5, scope: !217)
!285 = !DILocation(line: 359, column: 13, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 358, column: 33)
!287 = distinct !DILexicalBlock(scope: !220, file: !3, line: 358, column: 5)
!288 = !DILocation(line: 363, column: 5, scope: !206)
!289 = !DILocation(line: 364, column: 5, scope: !206)
!290 = !DILocation(line: 366, column: 10, scope: !206)
!291 = !DILocation(line: 366, column: 5, scope: !206)
!292 = !DILocation(line: 367, column: 10, scope: !206)
!293 = !DILocation(line: 367, column: 5, scope: !206)
!294 = !DILocation(line: 368, column: 10, scope: !206)
!295 = !DILocation(line: 368, column: 5, scope: !206)
!296 = !DILocation(line: 369, column: 10, scope: !206)
!297 = !DILocation(line: 369, column: 5, scope: !206)
!298 = !DILocation(line: 371, column: 53, scope: !206)
!299 = !{!300, !300, i64 0}
!300 = !{!"long long", !81, i64 0}
!301 = !DILocation(line: 371, column: 5, scope: !206)
!302 = !DILocation(line: 372, column: 36, scope: !206)
!303 = !DILocation(line: 372, column: 5, scope: !206)
!304 = !DILocation(line: 373, column: 50, scope: !206)
!305 = !DILocation(line: 373, column: 5, scope: !206)
!306 = !DILocation(line: 374, column: 49, scope: !206)
!307 = !DILocation(line: 374, column: 5, scope: !206)
!308 = !DILocation(line: 375, column: 40, scope: !206)
!309 = !DILocation(line: 375, column: 5, scope: !206)
!310 = !DILocation(line: 377, column: 38, scope: !311)
!311 = distinct !DILexicalBlock(scope: !206, file: !3, line: 377, column: 9)
!312 = !DILocation(line: 377, column: 19, scope: !311)
!313 = !DILocation(line: 377, column: 72, scope: !311)
!314 = !DILocation(line: 377, column: 9, scope: !206)
!315 = !DILocation(line: 359, column: 16, scope: !286)
!316 = !DILocation(line: 358, column: 28, scope: !287)
!317 = !DILocation(line: 358, column: 23, scope: !287)
!318 = distinct !{!318, !262, !319, !155, !156}
!319 = !DILocation(line: 360, column: 5, scope: !220)
!320 = !DILocation(line: 377, column: 84, scope: !321)
!321 = distinct !DILexicalBlock(scope: !311, file: !3, line: 377, column: 84)
!322 = !DILocation(line: 380, column: 19, scope: !323)
!323 = distinct !DILexicalBlock(scope: !206, file: !3, line: 380, column: 9)
!324 = !DILocation(line: 380, column: 53, scope: !323)
!325 = !DILocation(line: 380, column: 9, scope: !206)
!326 = !DILocation(line: 380, column: 65, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 380, column: 65)
!328 = !DILocation(line: 383, column: 5, scope: !206)
!329 = !DILocation(line: 386, column: 1, scope: !206)
!330 = !DILocation(line: 385, column: 5, scope: !206)
!331 = !DISubprogram(name: "PAPI_library_init", scope: !166, file: !166, line: 1172, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!332 = !DISubprogram(name: "PAPI_create_eventset", scope: !166, file: !166, line: 1147, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!333 = !DISubroutineType(types: !334)
!334 = !{!6, !5}
!335 = !DISubprogram(name: "PAPI_add_events", scope: !166, file: !166, line: 1143, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!336 = !DISubroutineType(types: !337)
!337 = !{!6, !6, !5, !6}
!338 = !DISubprogram(name: "srand", scope: !339, file: !339, line: 455, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!339 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!340 = !DISubroutineType(types: !341)
!341 = !{null, !342}
!342 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!343 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !348}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !347, line: 7, baseType: !69)
!347 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!349 = !DISubprogram(name: "PAPI_remove_events", scope: !166, file: !166, line: 1192, type: !336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!350 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !166, file: !166, line: 1149, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!351 = !DISubprogram(name: "PAPI_shutdown", scope: !166, file: !166, line: 1202, type: !352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!352 = !DISubroutineType(types: !353)
!353 = !{null}
