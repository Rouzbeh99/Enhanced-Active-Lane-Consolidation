; ModuleID = 'scalar_code.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.St = type { [5000000 x i32], [5000000 x i32] }
%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@n = dso_local local_unnamed_addr constant i32 5000000, align 4, !dbg !23
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@a = dso_local local_unnamed_addr global ptr null, align 8, !dbg !40
@b = dso_local local_unnamed_addr global ptr null, align 8, !dbg !42
@c = dso_local local_unnamed_addr global ptr null, align 8, !dbg !44
@cond = dso_local local_unnamed_addr global ptr null, align 8, !dbg !46
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@s = dso_local local_unnamed_addr global %struct.St zeroinitializer, align 4, !dbg !26
@arr2D = dso_local local_unnamed_addr global [3 x [5000000 x i32]] zeroinitializer, align 4, !dbg !35
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
define dso_local void @simple_if(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !100 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !106, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %b, metadata !107, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %c, metadata !108, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata ptr %cond, metadata !109, metadata !DIExpression()), !dbg !115
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
  %cmp3131 = icmp sgt i32 %n, 0, !dbg !125
  br i1 %cmp3131, label %for.body.preheader, label %for.cond.cleanup, !dbg !127

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !125
  %1 = call i32 @llvm.vscale.i32(), !dbg !127
  %2 = mul i32 %1, 4, !dbg !127
  %3 = mul i32 %2, 2, !dbg !127
  %4 = icmp uge i32 %n, %3, !dbg !127
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !127

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !128, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 47) #14, !dbg !128
  tail call void @exit(i32 noundef %call1) #15, !dbg !128
  unreachable, !dbg !128

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !132

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !132, !tbaa !119
  %call73 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call73, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !135
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !136

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %16, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !113, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !137
  %7 = load i8, ptr %arrayidx, align 1, !dbg !137, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %7, 0, !dbg !137
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !143

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !144
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !146
  %8 = load i32, ptr %arrayidx8, align 4, !dbg !146, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !147
  %9 = load i32, ptr %arrayidx11, align 4, !dbg !147, !tbaa !119
  %10 = trunc i64 %indvars.iv to i32, !dbg !148
  %mul21 = mul nsw i32 %9, %10, !dbg !148
  %.neg = mul i32 %8, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !149
  %11 = shl i32 %indvars.iv.tr, 1, !dbg !149
  %sub15 = add i32 %9, %11, !dbg !149
  %add = add i32 %sub15, %mul21, !dbg !150
  %add25 = add i32 %add, %.neg, !dbg !151
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !151, !tbaa !119
  %mul43127.neg = sub i32 -3, %8, !dbg !152
  %add44.neg134 = mul i32 %mul43127.neg, %10, !dbg !152
  %12 = add i32 %8, %9
  %reass.add129 = sub i32 %add25, %12
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !153
  %sub47 = add i32 %add37, %reass.mul130, !dbg !154
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !154, !tbaa !119
  %13 = add nsw i32 %sub47, %add25, !dbg !155
  %14 = sub nsw i32 %8, %sub47, !dbg !156
  %sub61 = shl nsw i32 %14, 1, !dbg !156
  %mul62 = mul nsw i32 %10, %10, !dbg !157
  %add63 = add nsw i32 %sub61, %mul62, !dbg !158
  %mul64.neg = mul i32 %add63, -3, !dbg !159
  %15 = sub i32 %13, %10, !dbg !160
  %sub65 = shl i32 %15, 1, !dbg !160
  %sub71 = add i32 %sub65, %mul64.neg, !dbg !161
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !161, !tbaa !119
  br label %for.inc, !dbg !162

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %16 = phi i64 [ 0, %for.body.preheader ], [ %165, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %17 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = urem i32 %n, %2
  %20 = mul i32 %2, 2
  %21 = add i32 %20, %19
  %total.iterations.to.be.vectorized = sub i32 %n, %21
  %22 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !146
  %initial_load = load <vscale x 4 x i32>, ptr %22, align 16
  %23 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !147
  %initial_load1 = load <vscale x 4 x i32>, ptr %23, align 16
  %24 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !137
  %25 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %26 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %26, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %27 = load <vscale x 4 x i8>, ptr %24, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  %29 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %31 = trunc i64 %30 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %131, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %18, %pre.alc ], [ %126, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %29, %pre.alc ], [ %127, %new.latch ]
  %uniform.vec.actives = phi i32 [ %31, %pre.alc ], [ %128, %new.latch ]
  %uniformLoad = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %129, %new.latch ]
  %uniformLoad4 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %130, %new.latch ]
  %32 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %33 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !137
  %34 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %35 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg2 = shufflevector <vscale x 4 x i32> %35, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %36 = load <vscale x 4 x i8>, ptr %33, align 4
  %37 = icmp eq <vscale x 4 x i8> %36, zeroinitializer
  %38 = xor <vscale x 4 x i1> %37, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %39 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %38, <vscale x 4 x i1> %38)
  %40 = trunc i64 %39 to i32
  %41 = add i32 %uniform.vec.actives, %40
  %condition = icmp ule i32 %41, %2
  %42 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !146
  %remaining_load = load <vscale x 4 x i32>, ptr %42, align 16
  %43 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !147
  %remaining_load3 = load <vscale x 4 x i32>, ptr %43, align 16
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %45 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %32)
  %46 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad)
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %remaining_load)
  %48 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad4)
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %remaining_load3)
  %50 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %51 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %44, <vscale x 4 x i32> %45)
  %52 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %46, <vscale x 4 x i32> %47)
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %48, <vscale x 4 x i32> %49)
  %54 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %41)
  %55 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %54, <vscale x 4 x i1> %54)
  %56 = trunc i64 %55 to i32
  %57 = icmp ult i32 %41, %2
  br i1 %57, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %58 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !144
  %59 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !146
  %60 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !147
  %61 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %62 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg8 = shufflevector <vscale x 4 x i32> %62, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %63 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %59, i32 16, <vscale x 4 x i1> %38, <vscale x 4 x i32> undef)
  %64 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %60, i32 16, <vscale x 4 x i1> %38, <vscale x 4 x i32> undef)
  %65 = mul <vscale x 4 x i32> %64, %61
  %66 = mul <vscale x 4 x i32> %63, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %67 = shl <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %68 = add <vscale x 4 x i32> %64, %67
  %69 = add <vscale x 4 x i32> %68, %65
  %70 = add <vscale x 4 x i32> %69, %66
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %70, ptr %58, i32 16, <vscale x 4 x i1> %38)
  %71 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %63
  %72 = mul <vscale x 4 x i32> %71, %61
  %73 = add <vscale x 4 x i32> %63, %64
  %74 = sub <vscale x 4 x i32> %70, %73
  %75 = shl <vscale x 4 x i32> %74, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %76 = add <vscale x 4 x i32> %72, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %77 = add <vscale x 4 x i32> %76, %75
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %77, ptr %60, i32 16, <vscale x 4 x i1> %38)
  %78 = add <vscale x 4 x i32> %77, %70
  %79 = sub <vscale x 4 x i32> %63, %77
  %80 = shl <vscale x 4 x i32> %79, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %81 = mul <vscale x 4 x i32> %61, %61
  %82 = add <vscale x 4 x i32> %80, %81
  %83 = mul <vscale x 4 x i32> %82, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %84 = sub <vscale x 4 x i32> %78, %61
  %85 = shl <vscale x 4 x i32> %84, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %86 = add <vscale x 4 x i32> %85, %83
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %86, ptr %59, i32 16, <vscale x 4 x i1> %38)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %87 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !144
  %88 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !146
  %89 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !147
  %90 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg5 = shufflevector <vscale x 4 x i32> %90, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %91 = mul <vscale x 4 x i32> %53, %51
  %92 = mul <vscale x 4 x i32> %52, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %93 = shl <vscale x 4 x i32> %51, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %94 = add <vscale x 4 x i32> %53, %93
  %95 = add <vscale x 4 x i32> %94, %91
  %96 = add <vscale x 4 x i32> %95, %92
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %96, <vscale x 4 x i1> %17, ptr %87, <vscale x 4 x i32> %51)
  %97 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %52
  %98 = mul <vscale x 4 x i32> %97, %51
  %99 = add <vscale x 4 x i32> %52, %53
  %100 = sub <vscale x 4 x i32> %96, %99
  %101 = shl <vscale x 4 x i32> %100, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %102 = add <vscale x 4 x i32> %98, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %103 = add <vscale x 4 x i32> %102, %101
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %103, <vscale x 4 x i1> %17, ptr %89, <vscale x 4 x i32> %51)
  %104 = add <vscale x 4 x i32> %103, %96
  %105 = sub <vscale x 4 x i32> %52, %103
  %106 = shl <vscale x 4 x i32> %105, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %107 = mul <vscale x 4 x i32> %51, %51
  %108 = add <vscale x 4 x i32> %106, %107
  %109 = mul <vscale x 4 x i32> %108, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %110 = sub <vscale x 4 x i32> %104, %51
  %111 = shl <vscale x 4 x i32> %110, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %112 = add <vscale x 4 x i32> %111, %109
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %112, <vscale x 4 x i1> %17, ptr %88, <vscale x 4 x i32> %51)
  %113 = add i32 %vector.loop.index, %2
  %114 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %113, i32 1)
  %115 = getelementptr inbounds i8, ptr %cond, i32 %113, !dbg !137
  %116 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %113, i32 1)
  %117 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg6 = shufflevector <vscale x 4 x i32> %117, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %118 = load <vscale x 4 x i8>, ptr %115, align 4
  %119 = icmp eq <vscale x 4 x i8> %118, zeroinitializer
  %120 = xor <vscale x 4 x i1> %119, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %121 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %120, <vscale x 4 x i1> %120)
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds i32, ptr %c, i32 %113, !dbg !146
  %new_loaded = load <vscale x 4 x i32>, ptr %123, align 16
  %124 = getelementptr inbounds i32, ptr %b, i32 %113, !dbg !147
  %new_loaded7 = load <vscale x 4 x i32>, ptr %124, align 16
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %125 = phi i32 [ %133, %join.block ], [ %vector.loop.index, %linearized ]
  %126 = phi <vscale x 4 x i32> [ %134, %join.block ], [ %uniform.vector, %linearized ]
  %127 = phi <vscale x 4 x i1> [ %135, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %128 = phi i32 [ %136, %join.block ], [ %uniform.vec.actives, %linearized ]
  %129 = phi <vscale x 4 x i32> [ %loadPhi, %join.block ], [ %uniformLoad, %linearized ]
  %130 = phi <vscale x 4 x i32> [ %loadPhi9, %join.block ], [ %uniformLoad4, %linearized ]
  %131 = add i32 %125, %2
  %132 = icmp uge i32 %131, %total.iterations.to.be.vectorized
  br i1 %132, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %133 = phi i32 [ %vector.loop.index, %lane.gather ], [ %113, %uniform.block ]
  %134 = phi <vscale x 4 x i32> [ %51, %lane.gather ], [ %114, %uniform.block ]
  %135 = phi <vscale x 4 x i1> [ %54, %lane.gather ], [ %120, %uniform.block ]
  %136 = phi i32 [ %56, %lane.gather ], [ %122, %uniform.block ]
  %loadPhi = phi <vscale x 4 x i32> [ %52, %lane.gather ], [ %new_loaded, %uniform.block ]
  %loadPhi9 = phi <vscale x 4 x i32> [ %53, %lane.gather ], [ %new_loaded7, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition10 = icmp eq i32 %21, 0
  %137 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !144
  %138 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !146
  %139 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !147
  %140 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg11 = shufflevector <vscale x 4 x i32> %140, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %141 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %127, ptr %138, <vscale x 4 x i32> %126)
  %142 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %127, ptr %139, <vscale x 4 x i32> %126)
  %143 = mul <vscale x 4 x i32> %142, %126
  %144 = mul <vscale x 4 x i32> %141, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %145 = shl <vscale x 4 x i32> %126, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %146 = add <vscale x 4 x i32> %142, %145
  %147 = add <vscale x 4 x i32> %146, %143
  %148 = add <vscale x 4 x i32> %147, %144
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %148, <vscale x 4 x i1> %127, ptr %137, <vscale x 4 x i32> %126)
  %149 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %141
  %150 = mul <vscale x 4 x i32> %149, %126
  %151 = add <vscale x 4 x i32> %141, %142
  %152 = sub <vscale x 4 x i32> %148, %151
  %153 = shl <vscale x 4 x i32> %152, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %154 = add <vscale x 4 x i32> %150, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %155 = add <vscale x 4 x i32> %154, %153
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %155, <vscale x 4 x i1> %127, ptr %139, <vscale x 4 x i32> %126)
  %156 = add <vscale x 4 x i32> %155, %148
  %157 = sub <vscale x 4 x i32> %141, %155
  %158 = shl <vscale x 4 x i32> %157, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %159 = mul <vscale x 4 x i32> %126, %126
  %160 = add <vscale x 4 x i32> %158, %159
  %161 = mul <vscale x 4 x i32> %160, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %162 = sub <vscale x 4 x i32> %156, %126
  %163 = shl <vscale x 4 x i32> %162, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %164 = add <vscale x 4 x i32> %163, %161
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %164, <vscale x 4 x i1> %127, ptr %138, <vscale x 4 x i32> %126)
  %165 = zext i32 %131 to i64
  br i1 %condition10, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !127, !llvm.loop !164

if.then75:                                        ; preds = %for.cond.cleanup
  %166 = load ptr, ptr @stderr, align 8, !dbg !168, !tbaa !130
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %166, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 63) #14, !dbg !168
  tail call void @exit(i32 noundef %call73) #15, !dbg !168
  unreachable, !dbg !168

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !170
  %sub79 = fsub double %call78, %call, !dbg !171
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !172, !tbaa !173
  ret void, !dbg !175
}

declare !dbg !176 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !180 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !184 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !186, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata ptr %b, metadata !187, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata ptr %c, metadata !188, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata ptr %cond, metadata !189, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.value(metadata i32 %n, metadata !190, metadata !DIExpression()), !dbg !195
  %call = tail call double @getTimeMiliSeconds(), !dbg !196
  call void @llvm.dbg.value(metadata double %call, metadata !192, metadata !DIExpression()), !dbg !195
  %0 = load i32, ptr @EventSet, align 4, !dbg !197, !tbaa !119
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #13, !dbg !199
  call void @llvm.dbg.value(metadata i32 %call1, metadata !191, metadata !DIExpression()), !dbg !195
  %cmp.not = icmp eq i32 %call1, 0, !dbg !200
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !201

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !193, metadata !DIExpression()), !dbg !202
  %cmp3221 = icmp sgt i32 %n, 0, !dbg !203
  br i1 %cmp3221, label %for.body.preheader, label %for.cond.cleanup, !dbg !205

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !203
  %1 = call i32 @llvm.vscale.i32(), !dbg !205
  %2 = mul i32 %1, 4, !dbg !205
  %3 = mul i32 %2, 2, !dbg !205
  %4 = icmp uge i32 %n, %3, !dbg !205
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !205

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !206, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 76) #14, !dbg !206
  tail call void @exit(i32 noundef %call1) #15, !dbg !206
  unreachable, !dbg !206

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !208

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !208, !tbaa !119
  %call127 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !210
  call void @llvm.dbg.value(metadata i32 %call127, metadata !191, metadata !DIExpression()), !dbg !195
  %cmp128.not = icmp eq i32 %call127, 0, !dbg !211
  br i1 %cmp128.not, label %if.end131, label %if.then129, !dbg !212

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %17, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !193, metadata !DIExpression()), !dbg !202
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !213
  %7 = load i8, ptr %arrayidx, align 1, !dbg !213, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %7, 0, !dbg !213
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !216

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !217
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !219
  %8 = load i32, ptr %arrayidx8, align 4, !dbg !219, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !220
  %9 = load i32, ptr %arrayidx11, align 4, !dbg !220, !tbaa !119
  %mul21214 = add i32 %9, 2, !dbg !221
  %10 = trunc i64 %indvars.iv to i32, !dbg !221
  %add22 = mul i32 %mul21214, %10, !dbg !221
  %.neg = mul i32 %8, -2
  %add = add i32 %add22, %9, !dbg !222
  %add25 = add i32 %add, %.neg, !dbg !223
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !223, !tbaa !119
  %mul43215.neg = sub i32 -3, %8, !dbg !224
  %add44.neg224 = mul i32 %mul43215.neg, %10, !dbg !224
  %11 = add i32 %8, %9
  %reass.add217 = sub i32 %add25, %11
  %reass.mul218 = shl i32 %reass.add217, 1
  %add37 = add i32 %add44.neg224, 2, !dbg !225
  %sub47 = add i32 %add37, %reass.mul218, !dbg !226
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !226, !tbaa !119
  %12 = add nsw i32 %sub47, %add25, !dbg !227
  %add54 = shl nsw i32 %12, 1, !dbg !227
  %13 = sub nsw i32 %8, %sub47, !dbg !228
  %sub61 = shl nsw i32 %13, 1, !dbg !228
  %mul62 = mul nsw i32 %10, %10, !dbg !229
  %add63 = add nsw i32 %sub61, %mul62, !dbg !230
  %mul64.neg = mul i32 %add63, -3, !dbg !231
  %sub65 = add i32 %add54, %8, !dbg !232
  %add68 = add i32 %sub65, %mul64.neg, !dbg !233
  store i32 %add68, ptr %arrayidx8, align 4, !dbg !233, !tbaa !119
  br label %for.inc, !dbg !234

if.else:                                          ; preds = %for.body
  %arrayidx70 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !235
  %14 = load i32, ptr %arrayidx70, align 4, !dbg !235, !tbaa !119
  %add71 = add nsw i32 %14, 2, !dbg !237
  %arrayidx73 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !238
  %15 = load i32, ptr %arrayidx73, align 4, !dbg !238, !tbaa !119
  %mul74.neg = mul i32 %15, -3, !dbg !239
  %sub75 = add i32 %add71, %mul74.neg, !dbg !240
  %arrayidx77 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !241
  %16 = load i32, ptr %arrayidx77, align 4, !dbg !242, !tbaa !119
  %mul78 = mul nsw i32 %sub75, %16, !dbg !242
  %mul83 = mul nsw i32 %mul78, %14, !dbg !243
  %sub84 = add i32 %15, -1, !dbg !244
  %add87 = add i32 %sub84, %mul83, !dbg !245
  %mul92 = mul nsw i32 %mul78, 3, !dbg !246
  %reass.mul220 = mul i32 %add87, -4
  %add105.neg = sub i32 -7, %mul78, !dbg !247
  %sub96 = add i32 %add105.neg, %mul92, !dbg !248
  %sub108 = add i32 %sub96, %reass.mul220, !dbg !249
  store i32 %sub108, ptr %arrayidx70, align 4, !dbg !249, !tbaa !119
  %mul111.neg = mul i32 %sub108, -2, !dbg !250
  %add112.neg = add i32 %mul78, -4, !dbg !251
  %sub115 = add i32 %add112.neg, %mul111.neg, !dbg !252
  store i32 %sub115, ptr %arrayidx77, align 4, !dbg !252, !tbaa !119
  %mul118 = mul nsw i32 %sub115, 5, !dbg !253
  %mul121 = shl nsw i32 %sub108, 1, !dbg !254
  %add122 = add i32 %mul121, %add87, !dbg !255
  %add125 = add i32 %add122, %mul118, !dbg !256
  store i32 %add125, ptr %arrayidx73, align 4, !dbg !256, !tbaa !119
  br label %for.inc

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %17 = phi i64 [ 0, %for.body.preheader ], [ %285, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %18 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %19 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %20 = urem i32 %n, %2
  %21 = mul i32 %2, 2
  %22 = add i32 %21, %20
  %total.iterations.to.be.vectorized = sub i32 %n, %22
  %23 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !235
  %initial_load = load <vscale x 4 x i32>, ptr %23, align 16
  %24 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !238
  %initial_load1 = load <vscale x 4 x i32>, ptr %24, align 16
  %25 = getelementptr inbounds i32, ptr %a, i64 0, !dbg !241
  %initial_load2 = load <vscale x 4 x i32>, ptr %25, align 16
  %26 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !219
  %initial_load3 = load <vscale x 4 x i32>, ptr %26, align 16
  %27 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !220
  %initial_load4 = load <vscale x 4 x i32>, ptr %27, align 16
  %28 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !213
  %29 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %30 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %30, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %31 = load <vscale x 4 x i8>, ptr %28, align 4
  %32 = icmp eq <vscale x 4 x i8> %31, zeroinitializer
  %33 = xor <vscale x 4 x i1> %32, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %171, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %19, %pre.alc ], [ %164, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %33, %pre.alc ], [ %165, %new.latch ]
  %uniformLoad = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %166, %new.latch ]
  %uniformLoad10 = phi <vscale x 4 x i32> [ %initial_load3, %pre.alc ], [ %169, %new.latch ]
  %uniformLoad11 = phi <vscale x 4 x i32> [ %initial_load4, %pre.alc ], [ %170, %new.latch ]
  %uniformLoad12 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %167, %new.latch ]
  %uniformLoad13 = phi <vscale x 4 x i32> [ %initial_load2, %pre.alc ], [ %168, %new.latch ]
  %34 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %35 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !213
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %37 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg5 = shufflevector <vscale x 4 x i32> %37, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %38 = load <vscale x 4 x i8>, ptr %35, align 4
  %39 = icmp eq <vscale x 4 x i8> %38, zeroinitializer
  %40 = xor <vscale x 4 x i1> %39, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %41 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !235
  %remaining_load = load <vscale x 4 x i32>, ptr %41, align 16
  %42 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !238
  %remaining_load6 = load <vscale x 4 x i32>, ptr %42, align 16
  %43 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !241
  %remaining_load7 = load <vscale x 4 x i32>, ptr %43, align 16
  %44 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !219
  %remaining_load8 = load <vscale x 4 x i32>, ptr %44, align 16
  %45 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !220
  %remaining_load9 = load <vscale x 4 x i32>, ptr %45, align 16
  br label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %46 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %47 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %40, <vscale x 4 x i1> %40)
  %48 = trunc i64 %46 to i32
  %49 = trunc i64 %47 to i32
  %50 = add i32 %48, %49
  %51 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %52 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %34)
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad)
  %54 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %remaining_load)
  %55 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad12)
  %56 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %remaining_load6)
  %57 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad13)
  %58 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %remaining_load7)
  %59 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad10)
  %60 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %remaining_load8)
  %61 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad11)
  %62 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %40, <vscale x 4 x i32> %remaining_load9)
  %63 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %64 = xor <vscale x 4 x i1> %40, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %65 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniform.vector)
  %66 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %34)
  %67 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniformLoad)
  %68 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %remaining_load)
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniformLoad12)
  %70 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %remaining_load6)
  %71 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniformLoad13)
  %72 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %remaining_load7)
  %73 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniformLoad10)
  %74 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %remaining_load8)
  %75 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %uniformLoad11)
  %76 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %remaining_load9)
  %77 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %48)
  %78 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %51, <vscale x 4 x i32> %52)
  %79 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %53, <vscale x 4 x i32> %54)
  %80 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %55, <vscale x 4 x i32> %56)
  %81 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %57, <vscale x 4 x i32> %58)
  %82 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %59, <vscale x 4 x i32> %60)
  %83 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %77, <vscale x 4 x i32> %61, <vscale x 4 x i32> %62)
  %84 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %50)
  %85 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %78, <vscale x 4 x i32> %66)
  %86 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %79, <vscale x 4 x i32> %68)
  %87 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %80, <vscale x 4 x i32> %70)
  %88 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %81, <vscale x 4 x i32> %72)
  %89 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %82, <vscale x 4 x i32> %74)
  %90 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %84, <vscale x 4 x i32> %83, <vscale x 4 x i32> %76)
  %91 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %40, <vscale x 4 x i1> %40)
  %92 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %91)
  %93 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %52, <vscale x 4 x i32> %66)
  %94 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %54, <vscale x 4 x i32> %68)
  %95 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %56, <vscale x 4 x i32> %70)
  %96 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %58, <vscale x 4 x i32> %72)
  %97 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %60, <vscale x 4 x i32> %74)
  %98 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %92, <vscale x 4 x i32> %62, <vscale x 4 x i32> %76)
  %99 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %63, <vscale x 4 x i1> %63)
  %100 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %99)
  %101 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %65, <vscale x 4 x i32> %93)
  %102 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %67, <vscale x 4 x i32> %94)
  %103 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %69, <vscale x 4 x i32> %95)
  %104 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %71, <vscale x 4 x i32> %96)
  %105 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %73, <vscale x 4 x i32> %97)
  %106 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %100, <vscale x 4 x i32> %75, <vscale x 4 x i32> %98)
  %107 = xor <vscale x 4 x i1> %100, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %108 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %64, <vscale x 4 x i1> %64)
  %109 = sext i32 %2 to i64
  %110 = sub i64 %109, %108
  %111 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %110)
  %112 = and <vscale x 4 x i1> %107, %111
  %113 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %84, <vscale x 4 x i1> %84)
  %114 = trunc i64 %113 to i32
  %115 = icmp ugt i32 %50, %2
  br i1 %115, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %lane.gather
  %116 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !235
  %117 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !238
  %118 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !241
  %119 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg14 = shufflevector <vscale x 4 x i32> %119, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %120 = add <vscale x 4 x i32> %86, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %121 = mul <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %122 = add <vscale x 4 x i32> %120, %121
  %123 = mul <vscale x 4 x i32> %122, %88
  %124 = mul <vscale x 4 x i32> %123, %86
  %125 = add <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %126 = add <vscale x 4 x i32> %125, %124
  %127 = mul <vscale x 4 x i32> %123, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %128 = mul <vscale x 4 x i32> %126, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %129 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %123
  %130 = add <vscale x 4 x i32> %129, %127
  %131 = add <vscale x 4 x i32> %130, %128
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %131, <vscale x 4 x i1> %18, ptr %116, <vscale x 4 x i32> %85)
  %132 = mul <vscale x 4 x i32> %131, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %133 = add <vscale x 4 x i32> %123, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %134 = add <vscale x 4 x i32> %133, %132
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %134, <vscale x 4 x i1> %18, ptr %118, <vscale x 4 x i32> %85)
  %135 = mul <vscale x 4 x i32> %134, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %136 = shl <vscale x 4 x i32> %131, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %137 = add <vscale x 4 x i32> %136, %126
  %138 = add <vscale x 4 x i32> %137, %135
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %138, <vscale x 4 x i1> %18, ptr %117, <vscale x 4 x i32> %85)
  br label %new.latch

uniform.else:                                     ; preds = %lane.gather
  %139 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !217
  %140 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !219
  %141 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !220
  %142 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg15 = shufflevector <vscale x 4 x i32> %142, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %143 = add <vscale x 4 x i32> %106, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %144 = mul <vscale x 4 x i32> %143, %101
  %145 = mul <vscale x 4 x i32> %105, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %146 = add <vscale x 4 x i32> %144, %106
  %147 = add <vscale x 4 x i32> %146, %145
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %147, <vscale x 4 x i1> %18, ptr %139, <vscale x 4 x i32> %101)
  %148 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %105
  %149 = mul <vscale x 4 x i32> %148, %101
  %150 = add <vscale x 4 x i32> %105, %106
  %151 = sub <vscale x 4 x i32> %147, %150
  %152 = shl <vscale x 4 x i32> %151, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %153 = add <vscale x 4 x i32> %149, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %154 = add <vscale x 4 x i32> %153, %152
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %154, <vscale x 4 x i1> %18, ptr %141, <vscale x 4 x i32> %101)
  %155 = add <vscale x 4 x i32> %154, %147
  %156 = shl <vscale x 4 x i32> %155, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %157 = sub <vscale x 4 x i32> %105, %154
  %158 = shl <vscale x 4 x i32> %157, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %159 = mul <vscale x 4 x i32> %101, %101
  %160 = add <vscale x 4 x i32> %158, %159
  %161 = mul <vscale x 4 x i32> %160, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %162 = add <vscale x 4 x i32> %156, %105
  %163 = add <vscale x 4 x i32> %162, %161
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %163, <vscale x 4 x i1> %18, ptr %140, <vscale x 4 x i32> %101)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %164 = phi <vscale x 4 x i32> [ %101, %uniform.then ], [ %85, %uniform.else ]
  %165 = phi <vscale x 4 x i1> [ %112, %uniform.then ], [ %84, %uniform.else ]
  %166 = phi <vscale x 4 x i32> [ %86, %uniform.else ], [ %102, %uniform.then ]
  %167 = phi <vscale x 4 x i32> [ %87, %uniform.else ], [ %103, %uniform.then ]
  %168 = phi <vscale x 4 x i32> [ %88, %uniform.else ], [ %104, %uniform.then ]
  %169 = phi <vscale x 4 x i32> [ %89, %uniform.else ], [ %105, %uniform.then ]
  %170 = phi <vscale x 4 x i32> [ %90, %uniform.else ], [ %106, %uniform.then ]
  %171 = add i32 %vector.loop.index, %2
  %172 = icmp uge i32 %171, %total.iterations.to.be.vectorized
  br i1 %172, label %joinBlock, label %alc.header

linearized.then:                                  ; preds = %joinBlock
  %173 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !235
  %174 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !238
  %175 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !241
  %176 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg16 = shufflevector <vscale x 4 x i32> %176, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %177 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %84, ptr %173, <vscale x 4 x i32> %85)
  %178 = add <vscale x 4 x i32> %177, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %179 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %84, ptr %174, <vscale x 4 x i32> %85)
  %180 = mul <vscale x 4 x i32> %179, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %181 = add <vscale x 4 x i32> %178, %180
  %182 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %84, ptr %175, <vscale x 4 x i32> %85)
  %183 = mul <vscale x 4 x i32> %181, %182
  %184 = mul <vscale x 4 x i32> %183, %177
  %185 = add <vscale x 4 x i32> %179, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %186 = add <vscale x 4 x i32> %185, %184
  %187 = mul <vscale x 4 x i32> %183, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %188 = mul <vscale x 4 x i32> %186, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %189 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %183
  %190 = add <vscale x 4 x i32> %189, %187
  %191 = add <vscale x 4 x i32> %190, %188
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %191, <vscale x 4 x i1> %84, ptr %173, <vscale x 4 x i32> %85)
  %192 = mul <vscale x 4 x i32> %191, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %193 = add <vscale x 4 x i32> %183, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %194 = add <vscale x 4 x i32> %193, %192
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %194, <vscale x 4 x i1> %84, ptr %175, <vscale x 4 x i32> %85)
  %195 = mul <vscale x 4 x i32> %194, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %196 = shl <vscale x 4 x i32> %191, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %197 = add <vscale x 4 x i32> %196, %186
  %198 = add <vscale x 4 x i32> %197, %195
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %198, <vscale x 4 x i1> %84, ptr %174, <vscale x 4 x i32> %85)
  %199 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !217
  %200 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !219
  %201 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !220
  %202 = xor <vscale x 4 x i1> %84, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %203 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg17 = shufflevector <vscale x 4 x i32> %203, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %204 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %202, ptr %200, <vscale x 4 x i32> %85)
  %205 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %202, ptr %201, <vscale x 4 x i32> %85)
  %206 = add <vscale x 4 x i32> %205, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %207 = mul <vscale x 4 x i32> %206, %85
  %208 = mul <vscale x 4 x i32> %204, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %209 = add <vscale x 4 x i32> %207, %205
  %210 = add <vscale x 4 x i32> %209, %208
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %210, <vscale x 4 x i1> %202, ptr %199, <vscale x 4 x i32> %85)
  %211 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %204
  %212 = mul <vscale x 4 x i32> %211, %85
  %213 = add <vscale x 4 x i32> %204, %205
  %214 = sub <vscale x 4 x i32> %210, %213
  %215 = shl <vscale x 4 x i32> %214, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %216 = add <vscale x 4 x i32> %212, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %217 = add <vscale x 4 x i32> %216, %215
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %217, <vscale x 4 x i1> %202, ptr %201, <vscale x 4 x i32> %85)
  %218 = add <vscale x 4 x i32> %217, %210
  %219 = shl <vscale x 4 x i32> %218, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %220 = sub <vscale x 4 x i32> %204, %217
  %221 = shl <vscale x 4 x i32> %220, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %222 = mul <vscale x 4 x i32> %85, %85
  %223 = add <vscale x 4 x i32> %221, %222
  %224 = mul <vscale x 4 x i32> %223, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %225 = add <vscale x 4 x i32> %219, %204
  %226 = add <vscale x 4 x i32> %225, %224
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %226, <vscale x 4 x i1> %202, ptr %200, <vscale x 4 x i32> %85)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %227 = xor <vscale x 4 x i1> %112, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %228 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !217
  %229 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !219
  %230 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !220
  %231 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg18 = shufflevector <vscale x 4 x i32> %231, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %232 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %227, ptr %229, <vscale x 4 x i32> %101)
  %233 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %227, ptr %230, <vscale x 4 x i32> %101)
  %234 = add <vscale x 4 x i32> %233, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %235 = mul <vscale x 4 x i32> %234, %101
  %236 = mul <vscale x 4 x i32> %232, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %237 = add <vscale x 4 x i32> %235, %233
  %238 = add <vscale x 4 x i32> %237, %236
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %238, <vscale x 4 x i1> %227, ptr %228, <vscale x 4 x i32> %101)
  %239 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %232
  %240 = mul <vscale x 4 x i32> %239, %101
  %241 = add <vscale x 4 x i32> %232, %233
  %242 = sub <vscale x 4 x i32> %238, %241
  %243 = shl <vscale x 4 x i32> %242, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %244 = add <vscale x 4 x i32> %240, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %245 = add <vscale x 4 x i32> %244, %243
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %245, <vscale x 4 x i1> %227, ptr %230, <vscale x 4 x i32> %101)
  %246 = add <vscale x 4 x i32> %245, %238
  %247 = shl <vscale x 4 x i32> %246, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %248 = sub <vscale x 4 x i32> %232, %245
  %249 = shl <vscale x 4 x i32> %248, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %250 = mul <vscale x 4 x i32> %101, %101
  %251 = add <vscale x 4 x i32> %249, %250
  %252 = mul <vscale x 4 x i32> %251, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %253 = add <vscale x 4 x i32> %247, %232
  %254 = add <vscale x 4 x i32> %253, %252
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %254, <vscale x 4 x i1> %227, ptr %229, <vscale x 4 x i32> %101)
  %255 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !235
  %256 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !238
  %257 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !241
  %258 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg19 = shufflevector <vscale x 4 x i32> %258, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %259 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %112, ptr %255, <vscale x 4 x i32> %101)
  %260 = add <vscale x 4 x i32> %259, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %261 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %112, ptr %256, <vscale x 4 x i32> %101)
  %262 = mul <vscale x 4 x i32> %261, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %263 = add <vscale x 4 x i32> %260, %262
  %264 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %112, ptr %257, <vscale x 4 x i32> %101)
  %265 = mul <vscale x 4 x i32> %263, %264
  %266 = mul <vscale x 4 x i32> %265, %259
  %267 = add <vscale x 4 x i32> %261, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %268 = add <vscale x 4 x i32> %267, %266
  %269 = mul <vscale x 4 x i32> %265, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %270 = mul <vscale x 4 x i32> %268, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %271 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %265
  %272 = add <vscale x 4 x i32> %271, %269
  %273 = add <vscale x 4 x i32> %272, %270
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %273, <vscale x 4 x i1> %112, ptr %255, <vscale x 4 x i32> %101)
  %274 = mul <vscale x 4 x i32> %273, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %275 = add <vscale x 4 x i32> %265, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %276 = add <vscale x 4 x i32> %275, %274
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %276, <vscale x 4 x i1> %112, ptr %257, <vscale x 4 x i32> %101)
  %277 = mul <vscale x 4 x i32> %276, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %278 = shl <vscale x 4 x i32> %273, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %279 = add <vscale x 4 x i32> %278, %268
  %280 = add <vscale x 4 x i32> %279, %277
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %280, <vscale x 4 x i1> %112, ptr %256, <vscale x 4 x i32> %101)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %281 = icmp eq <vscale x 4 x i32> %164, %85
  %282 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %281, <vscale x 4 x i1> %281)
  %283 = trunc i64 %282 to i32
  %284 = icmp eq i32 %283, %2
  br i1 %284, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %285 = zext i32 %171 to i64
  br label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !193, metadata !DIExpression()), !dbg !202
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !203
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !205, !llvm.loop !258

if.then129:                                       ; preds = %for.cond.cleanup
  %286 = load ptr, ptr @stderr, align 8, !dbg !260, !tbaa !130
  %call130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %286, ptr noundef nonnull @.str, i32 noundef %call127, ptr noundef nonnull @.str.1, i32 noundef 102) #14, !dbg !260
  tail call void @exit(i32 noundef %call127) #15, !dbg !260
  unreachable, !dbg !260

if.end131:                                        ; preds = %for.cond.cleanup
  %call132 = tail call double @getTimeMiliSeconds(), !dbg !262
  %sub133 = fsub double %call132, %call, !dbg !263
  store double %sub133, ptr @ExecutionTime, align 8, !dbg !264, !tbaa !173
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !266 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !270, metadata !DIExpression()), !dbg !272
  %conv = sext i32 %n to i64, !dbg !273
  %mul = shl nsw i64 %conv, 2, !dbg !274
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !275
  call void @llvm.dbg.value(metadata ptr %call, metadata !271, metadata !DIExpression()), !dbg !272
  %cmp = icmp eq ptr %call, null, !dbg !276
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !279
  tail call void @exit(i32 noundef 1) #15, !dbg !281
  unreachable, !dbg !281

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !282
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !283 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !287, metadata !DIExpression()), !dbg !289
  %conv = sext i32 %n to i64, !dbg !290
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !291
  call void @llvm.dbg.value(metadata ptr %call, metadata !288, metadata !DIExpression()), !dbg !289
  %cmp = icmp eq ptr %call, null, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !295
  tail call void @exit(i32 noundef 1) #15, !dbg !297
  unreachable, !dbg !297

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !298
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !299 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !314
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !304, metadata !DIExpression()), !dbg !315
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !316
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !318
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !320, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !322
  call void @exit(i32 noundef 1) #15, !dbg !323
  unreachable, !dbg !323

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !324
  call void @llvm.dbg.value(metadata i32 %call2, metadata !303, metadata !DIExpression()), !dbg !326
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !327
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !328

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !329, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 317) #14, !dbg !329
  tail call void @exit(i32 noundef %call2) #15, !dbg !329
  unreachable, !dbg !329

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !331, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !333
  call void @llvm.dbg.value(metadata i32 %call7, metadata !303, metadata !DIExpression()), !dbg !326
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !334
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !335

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !336, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 320) #14, !dbg !336
  tail call void @exit(i32 noundef %call7) #15, !dbg !336
  unreachable, !dbg !336

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !338
  store ptr %call12, ptr @a, align 8, !dbg !339, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !340
  store ptr %call13, ptr @b, align 8, !dbg !341, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !342
  store ptr %call14, ptr @c, align 8, !dbg !343, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !344
  store ptr %call15, ptr @cond, align 8, !dbg !345, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !346, !tbaa !140
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !347
  %conv = trunc i64 %call16 to i32, !dbg !347
  tail call void @srand(i32 noundef %conv) #13, !dbg !348
  call void @llvm.dbg.value(metadata i32 1, metadata !309, metadata !DIExpression()), !dbg !349
  br label %for.body, !dbg !350

for.cond.cleanup:                                 ; preds = %for.body
  %.lcssa = phi ptr [ %11, %for.body ], !dbg !351
  %4 = load ptr, ptr @a, align 8, !dbg !354, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !dbg !355, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !dbg !356, !tbaa !130
  tail call void @simple_if(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %.lcssa, i32 noundef 5000000), !dbg !357
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !358
  %7 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !312, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !326
  br label %for.body34, !dbg !359

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !309, metadata !DIExpression()), !dbg !349
  %8 = load ptr, ptr @a, align 8, !dbg !360, !tbaa !130
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !360
  store i32 1, ptr %arrayidx19, align 4, !dbg !361, !tbaa !119
  %9 = load ptr, ptr @b, align 8, !dbg !362, !tbaa !130
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !362
  store i32 -1, ptr %arrayidx21, align 4, !dbg !363, !tbaa !119
  %10 = load ptr, ptr @c, align 8, !dbg !364, !tbaa !130
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !364
  store i32 0, ptr %arrayidx23, align 4, !dbg !365, !tbaa !119
  %call24 = tail call i32 @rand() #13, !dbg !366
  %rem = srem i32 %call24, 50, !dbg !367
  %cmp25 = icmp eq i32 %rem, 0, !dbg !368
  %11 = load ptr, ptr @cond, align 8, !dbg !351, !tbaa !130
  %arrayidx28 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv, !dbg !351
  %frombool = zext i1 %cmp25 to i8, !dbg !369
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !369, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !370
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !309, metadata !DIExpression()), !dbg !349
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !371
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !350, !llvm.loop !372

for.cond.cleanup33:                               ; preds = %for.body34
  %add.lcssa = phi i32 [ %add, %for.body34 ], !dbg !374
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !377
  %putchar = tail call i32 @putchar(i32 10), !dbg !378
  %12 = load ptr, ptr @a, align 8, !dbg !379, !tbaa !130
  tail call void @free(ptr noundef %12) #13, !dbg !380
  %13 = load ptr, ptr @b, align 8, !dbg !381, !tbaa !130
  tail call void @free(ptr noundef %13) #13, !dbg !382
  %14 = load ptr, ptr @c, align 8, !dbg !383, !tbaa !130
  tail call void @free(ptr noundef %14) #13, !dbg !384
  %15 = load ptr, ptr @cond, align 8, !dbg !385, !tbaa !130
  tail call void @free(ptr noundef %15) #13, !dbg !386
  %16 = load i64, ptr @CounterValues, align 8, !dbg !387, !tbaa !388
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !390
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !391, !tbaa !388
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !392
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !393, !tbaa !388
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !394
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !395, !tbaa !388
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !396
  %20 = load double, ptr @ExecutionTime, align 8, !dbg !397, !tbaa !173
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %20), !dbg !398
  %21 = load i32, ptr @EventSet, align 4, !dbg !399, !tbaa !119
  %call47 = tail call i32 @PAPI_remove_events(i32 noundef %21, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !401
  call void @llvm.dbg.value(metadata i32 %call47, metadata !303, metadata !DIExpression()), !dbg !326
  %cmp48.not = icmp eq i32 %call47, 0, !dbg !402
  br i1 %cmp48.not, label %if.end52, label %if.then50, !dbg !403

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv78 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next79, %for.body34 ]
  %sum.075 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv78, metadata !312, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.value(metadata i32 %sum.075, metadata !311, metadata !DIExpression()), !dbg !326
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv78, !dbg !404
  %22 = load i32, ptr %arrayidx36, align 4, !dbg !404, !tbaa !119
  %add = add nsw i32 %22, %sum.075, !dbg !374
  call void @llvm.dbg.value(metadata i32 %add, metadata !311, metadata !DIExpression()), !dbg !326
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !405
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next79, metadata !312, metadata !DIExpression()), !dbg !358
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 5000000, !dbg !406
  br i1 %exitcond81.not, label %for.cond.cleanup33, label %for.body34, !dbg !359, !llvm.loop !407

if.then50:                                        ; preds = %for.cond.cleanup33
  %23 = load ptr, ptr @stderr, align 8, !dbg !409, !tbaa !130
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %call47, ptr noundef nonnull @.str.1, i32 noundef 370) #14, !dbg !409
  tail call void @exit(i32 noundef %call47) #15, !dbg !409
  unreachable, !dbg !409

if.end52:                                         ; preds = %for.cond.cleanup33
  %call53 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !411
  call void @llvm.dbg.value(metadata i32 %call53, metadata !303, metadata !DIExpression()), !dbg !326
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !413
  br i1 %cmp54.not, label %if.end58, label %if.then56, !dbg !414

if.then56:                                        ; preds = %if.end52
  %24 = load ptr, ptr @stderr, align 8, !dbg !415, !tbaa !130
  %call57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %call53, ptr noundef nonnull @.str.1, i32 noundef 373) #14, !dbg !415
  tail call void @exit(i32 noundef %call53) #15, !dbg !415
  unreachable, !dbg !415

if.end58:                                         ; preds = %if.end52
  tail call void @PAPI_shutdown() #13, !dbg !417
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !418
  ret i32 0, !dbg !419
}

declare !dbg !420 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !421 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !424 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !427 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !432 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !438 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !439 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !440 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !441 void @PAPI_shutdown() local_unnamed_addr #4

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #10

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "498abf64d88c4d83980eee2050a53d02")
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
!24 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 30, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 37, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "St", file: !3, line: 32, size: 320000000, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "array1", scope: !28, file: !3, line: 33, baseType: !31, size: 160000000)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160000000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 5000000)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "array2", scope: !28, file: !3, line: 34, baseType: !31, size: 160000000, offset: 160000000)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "arr2D", scope: !2, file: !3, line: 38, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 480000000, elements: !38)
!38 = !{!39, !33}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 284, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 286, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 287, type: !8, isLocal: false, isDefinition: true)
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
!100 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 40, type: !101, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !103, !104, !6}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !3, line: 40, type: !103)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !3, line: 40, type: !103)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !100, file: !3, line: 40, type: !103)
!109 = !DILocalVariable(name: "cond", arg: 4, scope: !100, file: !3, line: 41, type: !104)
!110 = !DILocalVariable(name: "n", arg: 5, scope: !100, file: !3, line: 41, type: !6)
!111 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 43, type: !6)
!112 = !DILocalVariable(name: "t", scope: !100, file: !3, line: 45, type: !22)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 50, type: !6)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 50, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 45, column: 16, scope: !100)
!117 = !DILocation(line: 47, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !3, line: 47, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !81, i64 0}
!121 = !DILocation(line: 47, column: 19, scope: !118)
!122 = !DILocation(line: 47, column: 41, scope: !118)
!123 = !DILocation(line: 47, column: 9, scope: !100)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 50, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 50, column: 5)
!127 = !DILocation(line: 50, column: 5, scope: !114)
!128 = !DILocation(line: 47, column: 53, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 47, column: 53)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !81, i64 0}
!132 = !DILocation(line: 63, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 63, column: 9)
!134 = !DILocation(line: 63, column: 19, scope: !133)
!135 = !DILocation(line: 63, column: 55, scope: !133)
!136 = !DILocation(line: 63, column: 9, scope: !100)
!137 = !DILocation(line: 51, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 51, column: 13)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 50, column: 33)
!140 = !{!141, !141, i64 0}
!141 = !{!"_Bool", !81, i64 0}
!142 = !{i8 0, i8 2}
!143 = !DILocation(line: 51, column: 13, scope: !139)
!144 = !DILocation(line: 52, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !3, line: 51, column: 22)
!146 = !DILocation(line: 52, column: 40, scope: !145)
!147 = !DILocation(line: 52, column: 49, scope: !145)
!148 = !DILocation(line: 53, column: 35, scope: !145)
!149 = !DILocation(line: 52, column: 54, scope: !145)
!150 = !DILocation(line: 52, column: 46, scope: !145)
!151 = !DILocation(line: 53, column: 22, scope: !145)
!152 = !DILocation(line: 55, column: 31, scope: !145)
!153 = !DILocation(line: 54, column: 37, scope: !145)
!154 = !DILocation(line: 55, column: 22, scope: !145)
!155 = !DILocation(line: 56, column: 33, scope: !145)
!156 = !DILocation(line: 56, column: 60, scope: !145)
!157 = !DILocation(line: 56, column: 75, scope: !145)
!158 = !DILocation(line: 56, column: 71, scope: !145)
!159 = !DILocation(line: 56, column: 48, scope: !145)
!160 = !DILocation(line: 56, column: 44, scope: !145)
!161 = !DILocation(line: 57, column: 22, scope: !145)
!162 = !DILocation(line: 58, column: 9, scope: !145)
!163 = !DILocation(line: 50, column: 28, scope: !126)
!164 = distinct !{!164, !127, !165, !166, !167}
!165 = !DILocation(line: 59, column: 5, scope: !114)
!166 = !{!"llvm.loop.mustprogress"}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !DILocation(line: 63, column: 67, scope: !169)
!169 = distinct !DILexicalBlock(scope: !133, file: !3, line: 63, column: 67)
!170 = !DILocation(line: 65, column: 21, scope: !100)
!171 = !DILocation(line: 65, column: 42, scope: !100)
!172 = !DILocation(line: 65, column: 19, scope: !100)
!173 = !{!174, !174, i64 0}
!174 = !{!"double", !81, i64 0}
!175 = !DILocation(line: 66, column: 1, scope: !100)
!176 = !DISubprogram(name: "PAPI_start", scope: !177, file: !177, line: 1204, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!177 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!178 = !DISubroutineType(types: !179)
!179 = !{!6, !6}
!180 = !DISubprogram(name: "PAPI_stop", scope: !177, file: !177, line: 1206, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!181 = !DISubroutineType(types: !182)
!182 = !{!6, !6, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!184 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 69, type: !101, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193}
!186 = !DILocalVariable(name: "a", arg: 1, scope: !184, file: !3, line: 69, type: !103)
!187 = !DILocalVariable(name: "b", arg: 2, scope: !184, file: !3, line: 69, type: !103)
!188 = !DILocalVariable(name: "c", arg: 3, scope: !184, file: !3, line: 69, type: !103)
!189 = !DILocalVariable(name: "cond", arg: 4, scope: !184, file: !3, line: 70, type: !104)
!190 = !DILocalVariable(name: "n", arg: 5, scope: !184, file: !3, line: 70, type: !6)
!191 = !DILocalVariable(name: "status", scope: !184, file: !3, line: 72, type: !6)
!192 = !DILocalVariable(name: "t", scope: !184, file: !3, line: 74, type: !22)
!193 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 80, type: !6)
!194 = distinct !DILexicalBlock(scope: !184, file: !3, line: 80, column: 5)
!195 = !DILocation(line: 0, scope: !184)
!196 = !DILocation(line: 74, column: 16, scope: !184)
!197 = !DILocation(line: 76, column: 30, scope: !198)
!198 = distinct !DILexicalBlock(scope: !184, file: !3, line: 76, column: 9)
!199 = !DILocation(line: 76, column: 19, scope: !198)
!200 = !DILocation(line: 76, column: 41, scope: !198)
!201 = !DILocation(line: 76, column: 9, scope: !184)
!202 = !DILocation(line: 0, scope: !194)
!203 = !DILocation(line: 80, column: 23, scope: !204)
!204 = distinct !DILexicalBlock(scope: !194, file: !3, line: 80, column: 5)
!205 = !DILocation(line: 80, column: 5, scope: !194)
!206 = !DILocation(line: 76, column: 53, scope: !207)
!207 = distinct !DILexicalBlock(scope: !198, file: !3, line: 76, column: 53)
!208 = !DILocation(line: 102, column: 29, scope: !209)
!209 = distinct !DILexicalBlock(scope: !184, file: !3, line: 102, column: 9)
!210 = !DILocation(line: 102, column: 19, scope: !209)
!211 = !DILocation(line: 102, column: 55, scope: !209)
!212 = !DILocation(line: 102, column: 9, scope: !184)
!213 = !DILocation(line: 82, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !3, line: 82, column: 13)
!215 = distinct !DILexicalBlock(scope: !204, file: !3, line: 80, column: 33)
!216 = !DILocation(line: 82, column: 13, scope: !215)
!217 = !DILocation(line: 83, column: 25, scope: !218)
!218 = distinct !DILexicalBlock(scope: !214, file: !3, line: 82, column: 22)
!219 = !DILocation(line: 83, column: 36, scope: !218)
!220 = !DILocation(line: 83, column: 45, scope: !218)
!221 = !DILocation(line: 84, column: 27, scope: !218)
!222 = !DILocation(line: 83, column: 42, scope: !218)
!223 = !DILocation(line: 84, column: 18, scope: !218)
!224 = !DILocation(line: 86, column: 27, scope: !218)
!225 = !DILocation(line: 85, column: 33, scope: !218)
!226 = !DILocation(line: 86, column: 18, scope: !218)
!227 = !DILocation(line: 87, column: 30, scope: !218)
!228 = !DILocation(line: 87, column: 57, scope: !218)
!229 = !DILocation(line: 87, column: 72, scope: !218)
!230 = !DILocation(line: 87, column: 68, scope: !218)
!231 = !DILocation(line: 87, column: 45, scope: !218)
!232 = !DILocation(line: 87, column: 41, scope: !218)
!233 = !DILocation(line: 87, column: 18, scope: !218)
!234 = !DILocation(line: 88, column: 9, scope: !218)
!235 = !DILocation(line: 89, column: 25, scope: !236)
!236 = distinct !DILexicalBlock(scope: !214, file: !3, line: 88, column: 16)
!237 = !DILocation(line: 89, column: 23, scope: !236)
!238 = !DILocation(line: 89, column: 36, scope: !236)
!239 = !DILocation(line: 89, column: 34, scope: !236)
!240 = !DILocation(line: 89, column: 30, scope: !236)
!241 = !DILocation(line: 89, column: 13, scope: !236)
!242 = !DILocation(line: 89, column: 18, scope: !236)
!243 = !DILocation(line: 90, column: 25, scope: !236)
!244 = !DILocation(line: 90, column: 32, scope: !236)
!245 = !DILocation(line: 90, column: 36, scope: !236)
!246 = !DILocation(line: 91, column: 22, scope: !236)
!247 = !DILocation(line: 92, column: 34, scope: !236)
!248 = !DILocation(line: 91, column: 29, scope: !236)
!249 = !DILocation(line: 92, column: 18, scope: !236)
!250 = !DILocation(line: 93, column: 30, scope: !236)
!251 = !DILocation(line: 93, column: 23, scope: !236)
!252 = !DILocation(line: 93, column: 18, scope: !236)
!253 = !DILocation(line: 94, column: 23, scope: !236)
!254 = !DILocation(line: 94, column: 34, scope: !236)
!255 = !DILocation(line: 94, column: 30, scope: !236)
!256 = !DILocation(line: 94, column: 18, scope: !236)
!257 = !DILocation(line: 80, column: 28, scope: !204)
!258 = distinct !{!258, !205, !259, !166, !167}
!259 = !DILocation(line: 98, column: 5, scope: !194)
!260 = !DILocation(line: 102, column: 67, scope: !261)
!261 = distinct !DILexicalBlock(scope: !209, file: !3, line: 102, column: 67)
!262 = !DILocation(line: 104, column: 21, scope: !184)
!263 = !DILocation(line: 104, column: 42, scope: !184)
!264 = !DILocation(line: 104, column: 19, scope: !184)
!265 = !DILocation(line: 105, column: 1, scope: !184)
!266 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 289, type: !267, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!267 = !DISubroutineType(types: !268)
!268 = !{!5, !6}
!269 = !{!270, !271}
!270 = !DILocalVariable(name: "n", arg: 1, scope: !266, file: !3, line: 289, type: !6)
!271 = !DILocalVariable(name: "ptr", scope: !266, file: !3, line: 290, type: !5)
!272 = !DILocation(line: 0, scope: !266)
!273 = !DILocation(line: 290, column: 45, scope: !266)
!274 = !DILocation(line: 290, column: 43, scope: !266)
!275 = !DILocation(line: 290, column: 24, scope: !266)
!276 = !DILocation(line: 291, column: 13, scope: !277)
!277 = distinct !DILexicalBlock(scope: !266, file: !3, line: 291, column: 9)
!278 = !DILocation(line: 291, column: 9, scope: !266)
!279 = !DILocation(line: 292, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !3, line: 291, column: 22)
!281 = !DILocation(line: 293, column: 9, scope: !280)
!282 = !DILocation(line: 295, column: 5, scope: !266)
!283 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 298, type: !284, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!284 = !DISubroutineType(types: !285)
!285 = !{!8, !6}
!286 = !{!287, !288}
!287 = !DILocalVariable(name: "n", arg: 1, scope: !283, file: !3, line: 298, type: !6)
!288 = !DILocalVariable(name: "ptr", scope: !283, file: !3, line: 299, type: !8)
!289 = !DILocation(line: 0, scope: !283)
!290 = !DILocation(line: 299, column: 48, scope: !283)
!291 = !DILocation(line: 299, column: 26, scope: !283)
!292 = !DILocation(line: 300, column: 13, scope: !293)
!293 = distinct !DILexicalBlock(scope: !283, file: !3, line: 300, column: 9)
!294 = !DILocation(line: 300, column: 9, scope: !283)
!295 = !DILocation(line: 301, column: 9, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !3, line: 300, column: 22)
!297 = !DILocation(line: 302, column: 9, scope: !296)
!298 = !DILocation(line: 304, column: 5, scope: !283)
!299 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 307, type: !300, scopeLine: 307, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!6}
!302 = !{!303, !304, !309, !311, !312}
!303 = !DILocalVariable(name: "status", scope: !299, file: !3, line: 308, type: !6)
!304 = !DILocalVariable(name: "errstring", scope: !299, file: !3, line: 309, type: !305)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1024, elements: !307)
!306 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!307 = !{!308}
!308 = !DISubrange(count: 128)
!309 = !DILocalVariable(name: "i", scope: !310, file: !3, line: 333, type: !6)
!310 = distinct !DILexicalBlock(scope: !299, file: !3, line: 333, column: 5)
!311 = !DILocalVariable(name: "sum", scope: !299, file: !3, line: 349, type: !6)
!312 = !DILocalVariable(name: "i", scope: !313, file: !3, line: 351, type: !6)
!313 = distinct !DILexicalBlock(scope: !299, file: !3, line: 351, column: 5)
!314 = !DILocation(line: 309, column: 5, scope: !299)
!315 = !DILocation(line: 309, column: 10, scope: !299)
!316 = !DILocation(line: 311, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !299, file: !3, line: 311, column: 9)
!318 = !DILocation(line: 311, column: 45, scope: !317)
!319 = !DILocation(line: 311, column: 9, scope: !299)
!320 = !DILocation(line: 312, column: 17, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 311, column: 66)
!322 = !DILocation(line: 312, column: 9, scope: !321)
!323 = !DILocation(line: 313, column: 9, scope: !321)
!324 = !DILocation(line: 317, column: 19, scope: !325)
!325 = distinct !DILexicalBlock(scope: !299, file: !3, line: 317, column: 9)
!326 = !DILocation(line: 0, scope: !299)
!327 = !DILocation(line: 317, column: 52, scope: !325)
!328 = !DILocation(line: 317, column: 9, scope: !299)
!329 = !DILocation(line: 317, column: 64, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 317, column: 64)
!331 = !DILocation(line: 320, column: 35, scope: !332)
!332 = distinct !DILexicalBlock(scope: !299, file: !3, line: 320, column: 9)
!333 = !DILocation(line: 320, column: 19, scope: !332)
!334 = !DILocation(line: 320, column: 69, scope: !332)
!335 = !DILocation(line: 320, column: 9, scope: !299)
!336 = !DILocation(line: 320, column: 81, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !3, line: 320, column: 81)
!338 = !DILocation(line: 323, column: 9, scope: !299)
!339 = !DILocation(line: 323, column: 7, scope: !299)
!340 = !DILocation(line: 324, column: 9, scope: !299)
!341 = !DILocation(line: 324, column: 7, scope: !299)
!342 = !DILocation(line: 325, column: 9, scope: !299)
!343 = !DILocation(line: 325, column: 7, scope: !299)
!344 = !DILocation(line: 326, column: 12, scope: !299)
!345 = !DILocation(line: 326, column: 10, scope: !299)
!346 = !DILocation(line: 328, column: 13, scope: !299)
!347 = !DILocation(line: 330, column: 11, scope: !299)
!348 = !DILocation(line: 330, column: 5, scope: !299)
!349 = !DILocation(line: 0, scope: !310)
!350 = !DILocation(line: 333, column: 5, scope: !310)
!351 = !DILocation(line: 341, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 333, column: 33)
!353 = distinct !DILexicalBlock(scope: !310, file: !3, line: 333, column: 5)
!354 = !DILocation(line: 345, column: 15, scope: !299)
!355 = !DILocation(line: 345, column: 18, scope: !299)
!356 = !DILocation(line: 345, column: 21, scope: !299)
!357 = !DILocation(line: 345, column: 5, scope: !299)
!358 = !DILocation(line: 0, scope: !313)
!359 = !DILocation(line: 351, column: 5, scope: !313)
!360 = !DILocation(line: 334, column: 9, scope: !352)
!361 = !DILocation(line: 334, column: 14, scope: !352)
!362 = !DILocation(line: 335, column: 9, scope: !352)
!363 = !DILocation(line: 335, column: 14, scope: !352)
!364 = !DILocation(line: 336, column: 9, scope: !352)
!365 = !DILocation(line: 336, column: 14, scope: !352)
!366 = !DILocation(line: 341, column: 20, scope: !352)
!367 = !DILocation(line: 341, column: 27, scope: !352)
!368 = !DILocation(line: 341, column: 33, scope: !352)
!369 = !DILocation(line: 341, column: 17, scope: !352)
!370 = !DILocation(line: 333, column: 28, scope: !353)
!371 = !DILocation(line: 333, column: 23, scope: !353)
!372 = distinct !{!372, !350, !373, !166, !167}
!373 = !DILocation(line: 342, column: 5, scope: !310)
!374 = !DILocation(line: 352, column: 13, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 351, column: 33)
!376 = distinct !DILexicalBlock(scope: !313, file: !3, line: 351, column: 5)
!377 = !DILocation(line: 356, column: 5, scope: !299)
!378 = !DILocation(line: 357, column: 5, scope: !299)
!379 = !DILocation(line: 359, column: 10, scope: !299)
!380 = !DILocation(line: 359, column: 5, scope: !299)
!381 = !DILocation(line: 360, column: 10, scope: !299)
!382 = !DILocation(line: 360, column: 5, scope: !299)
!383 = !DILocation(line: 361, column: 10, scope: !299)
!384 = !DILocation(line: 361, column: 5, scope: !299)
!385 = !DILocation(line: 362, column: 10, scope: !299)
!386 = !DILocation(line: 362, column: 5, scope: !299)
!387 = !DILocation(line: 364, column: 53, scope: !299)
!388 = !{!389, !389, i64 0}
!389 = !{!"long long", !81, i64 0}
!390 = !DILocation(line: 364, column: 5, scope: !299)
!391 = !DILocation(line: 365, column: 36, scope: !299)
!392 = !DILocation(line: 365, column: 5, scope: !299)
!393 = !DILocation(line: 366, column: 50, scope: !299)
!394 = !DILocation(line: 366, column: 5, scope: !299)
!395 = !DILocation(line: 367, column: 49, scope: !299)
!396 = !DILocation(line: 367, column: 5, scope: !299)
!397 = !DILocation(line: 368, column: 40, scope: !299)
!398 = !DILocation(line: 368, column: 5, scope: !299)
!399 = !DILocation(line: 370, column: 38, scope: !400)
!400 = distinct !DILexicalBlock(scope: !299, file: !3, line: 370, column: 9)
!401 = !DILocation(line: 370, column: 19, scope: !400)
!402 = !DILocation(line: 370, column: 72, scope: !400)
!403 = !DILocation(line: 370, column: 9, scope: !299)
!404 = !DILocation(line: 352, column: 16, scope: !375)
!405 = !DILocation(line: 351, column: 28, scope: !376)
!406 = !DILocation(line: 351, column: 23, scope: !376)
!407 = distinct !{!407, !359, !408, !166, !167}
!408 = !DILocation(line: 353, column: 5, scope: !313)
!409 = !DILocation(line: 370, column: 84, scope: !410)
!410 = distinct !DILexicalBlock(scope: !400, file: !3, line: 370, column: 84)
!411 = !DILocation(line: 373, column: 19, scope: !412)
!412 = distinct !DILexicalBlock(scope: !299, file: !3, line: 373, column: 9)
!413 = !DILocation(line: 373, column: 53, scope: !412)
!414 = !DILocation(line: 373, column: 9, scope: !299)
!415 = !DILocation(line: 373, column: 65, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !3, line: 373, column: 65)
!417 = !DILocation(line: 376, column: 5, scope: !299)
!418 = !DILocation(line: 379, column: 1, scope: !299)
!419 = !DILocation(line: 378, column: 5, scope: !299)
!420 = !DISubprogram(name: "PAPI_library_init", scope: !177, file: !177, line: 1172, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!421 = !DISubprogram(name: "PAPI_create_eventset", scope: !177, file: !177, line: 1147, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!422 = !DISubroutineType(types: !423)
!423 = !{!6, !5}
!424 = !DISubprogram(name: "PAPI_add_events", scope: !177, file: !177, line: 1143, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!425 = !DISubroutineType(types: !426)
!426 = !{!6, !6, !5, !6}
!427 = !DISubprogram(name: "srand", scope: !428, file: !428, line: 455, type: !429, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!428 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!432 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !433, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!433 = !DISubroutineType(types: !434)
!434 = !{!435, !437}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !436, line: 7, baseType: !69)
!436 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!438 = !DISubprogram(name: "rand", scope: !428, file: !428, line: 453, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!439 = !DISubprogram(name: "PAPI_remove_events", scope: !177, file: !177, line: 1192, type: !425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!440 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !177, file: !177, line: 1149, type: !422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!441 = !DISubprogram(name: "PAPI_shutdown", scope: !177, file: !177, line: 1202, type: !442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!442 = !DISubroutineType(types: !443)
!443 = !{null}
