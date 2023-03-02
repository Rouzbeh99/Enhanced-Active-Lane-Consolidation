; ModuleID = 'alc.ll'
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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare !dbg !91 i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
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
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !127
  %2 = shl i32 %1, 2, !dbg !127
  %3 = shl i32 %1, 3, !dbg !127
  %.not = icmp ugt i32 %3, %n, !dbg !127
  br i1 %.not, label %for.body.preheader28, label %pre.alc, !dbg !127

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !128, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 47) #14, !dbg !128
  tail call void @exit(i32 noundef %call1) #15, !dbg !128
  unreachable, !dbg !128

for.cond.cleanup:                                 ; preds = %for.inc, %middel.block, %for.cond.preheader
  %5 = load i32, ptr @EventSet, align 4, !dbg !132, !tbaa !119
  %call73 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !134
  call void @llvm.dbg.value(metadata i32 %call73, metadata !111, metadata !DIExpression()), !dbg !115
  %cmp74.not = icmp eq i32 %call73, 0, !dbg !135
  br i1 %cmp74.not, label %if.end77, label %if.then75, !dbg !136

for.body:                                         ; preds = %for.body.preheader28, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader28 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !113, metadata !DIExpression()), !dbg !124
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !137
  %6 = load i8, ptr %arrayidx, align 1, !dbg !137, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %6, 0, !dbg !137
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !143

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !144
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !146
  %7 = load i32, ptr %arrayidx8, align 4, !dbg !146, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !147
  %8 = load i32, ptr %arrayidx11, align 4, !dbg !147, !tbaa !119
  %9 = trunc i64 %indvars.iv to i32, !dbg !148
  %mul21 = mul nsw i32 %8, %9, !dbg !148
  %reass.add = sub i32 %9, %7
  %reass.mul = shl i32 %reass.add, 1
  %add = add i32 %mul21, %8, !dbg !149
  %add25 = add i32 %add, %reass.mul, !dbg !150
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !150, !tbaa !119
  %mul43127.neg = sub i32 -3, %7, !dbg !151
  %add44.neg134 = mul i32 %mul43127.neg, %9, !dbg !151
  %10 = add i32 %8, %7
  %reass.add129 = sub i32 %add25, %10
  %reass.mul130 = shl i32 %reass.add129, 1
  %add37 = add i32 %add44.neg134, 2, !dbg !152
  %sub47 = add i32 %add37, %reass.mul130, !dbg !153
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !153, !tbaa !119
  %11 = sub nsw i32 %7, %sub47, !dbg !154
  %sub61 = shl nsw i32 %11, 1, !dbg !154
  %mul62 = mul nsw i32 %9, %9, !dbg !155
  %add63 = add nsw i32 %sub61, %mul62, !dbg !156
  %mul64.neg = mul i32 %add63, -3, !dbg !157
  %12 = sub i32 %add25, %9, !dbg !158
  %13 = add i32 %12, %sub47, !dbg !159
  %sub65 = shl i32 %13, 1, !dbg !159
  %sub71 = add i32 %mul64.neg, %sub65, !dbg !160
  store i32 %sub71, ptr %arrayidx8, align 4, !dbg !160, !tbaa !119
  br label %for.inc, !dbg !161

pre.alc:                                          ; preds = %for.body.preheader
  %14 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %15 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %16 = urem i32 %n, %2
  %17 = add i32 %16, %3
  %total.iterations.to.be.vectorized = sub i32 %n, %17
  %initial_load = load <vscale x 4 x i32>, ptr %c, align 16
  %initial_load1 = load <vscale x 4 x i32>, ptr %b, align 16
  %18 = load <vscale x 4 x i8>, ptr %cond, align 4
  %19 = icmp ne <vscale x 4 x i8> %18, zeroinitializer
  %20 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %19, <vscale x 4 x i1> %19)
  %21 = trunc i64 %20 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %109, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %15, %pre.alc ], [ %104, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %19, %pre.alc ], [ %105, %new.latch ]
  %uniform.vec.actives = phi i32 [ %21, %pre.alc ], [ %106, %new.latch ]
  %uniformLoad = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %107, %new.latch ]
  %uniformLoad4 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %108, %new.latch ]
  %22 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %23 = sext i32 %vector.loop.index to i64, !dbg !137
  %24 = getelementptr inbounds i8, ptr %cond, i64 %23, !dbg !137
  %25 = load <vscale x 4 x i8>, ptr %24, align 4
  %26 = icmp ne <vscale x 4 x i8> %25, zeroinitializer
  %27 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %26, <vscale x 4 x i1> %26)
  %28 = trunc i64 %27 to i32
  %29 = add i32 %uniform.vec.actives, %28
  %condition.not = icmp ugt i32 %29, %2
  %30 = getelementptr inbounds i32, ptr %c, i64 %23, !dbg !146
  %31 = getelementptr inbounds i32, ptr %b, i64 %23, !dbg !147
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %remaining_load3 = load <vscale x 4 x i32>, ptr %31, align 16
  %remaining_load = load <vscale x 4 x i32>, ptr %30, align 16
  %32 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %22)
  %34 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad)
  %35 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %remaining_load)
  %36 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad4)
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %remaining_load3)
  %38 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %39 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %32, <vscale x 4 x i32> %33)
  %40 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %34, <vscale x 4 x i32> %35)
  %41 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %36, <vscale x 4 x i32> %37)
  %42 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %29)
  %43 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %42, <vscale x 4 x i1> %42)
  %44 = trunc i64 %43 to i32
  %45 = icmp ult i32 %29, %2
  br i1 %45, label %new.latch, label %uniform.block

linearized:                                       ; preds = %alc.header
  %46 = getelementptr inbounds i32, ptr %a, i64 %23, !dbg !144
  %47 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr nonnull %30, i32 16, <vscale x 4 x i1> %26, <vscale x 4 x i32> undef)
  %48 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr nonnull %31, i32 16, <vscale x 4 x i1> %26, <vscale x 4 x i32> undef)
  %49 = mul <vscale x 4 x i32> %48, %22
  %50 = mul <vscale x 4 x i32> %47, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %51 = shl <vscale x 4 x i32> %22, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %52 = add <vscale x 4 x i32> %48, %51
  %53 = add <vscale x 4 x i32> %52, %50
  %54 = add <vscale x 4 x i32> %53, %49
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %54, ptr %46, i32 16, <vscale x 4 x i1> %26)
  %55 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %47
  %56 = mul <vscale x 4 x i32> %55, %22
  %57 = add <vscale x 4 x i32> %48, %47
  %58 = sub <vscale x 4 x i32> %54, %57
  %59 = shl <vscale x 4 x i32> %58, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %60 = add <vscale x 4 x i32> %56, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %61 = add <vscale x 4 x i32> %60, %59
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %61, ptr %31, i32 16, <vscale x 4 x i1> %26)
  %62 = sub <vscale x 4 x i32> %47, %61
  %63 = shl <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = mul <vscale x 4 x i32> %22, %22
  %65 = add <vscale x 4 x i32> %63, %64
  %66 = mul <vscale x 4 x i32> %65, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %67 = sub <vscale x 4 x i32> %54, %22
  %68 = add <vscale x 4 x i32> %67, %61
  %69 = shl <vscale x 4 x i32> %68, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %70 = add <vscale x 4 x i32> %66, %69
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %70, ptr %30, i32 16, <vscale x 4 x i1> %26)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %71 = mul <vscale x 4 x i32> %41, %39
  %72 = mul <vscale x 4 x i32> %40, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %73 = shl <vscale x 4 x i32> %39, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %74 = add <vscale x 4 x i32> %41, %73
  %75 = add <vscale x 4 x i32> %74, %72
  %76 = add <vscale x 4 x i32> %75, %71
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %76, <vscale x 4 x i1> %14, ptr %a, <vscale x 4 x i32> %39)
  %77 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %40
  %78 = mul <vscale x 4 x i32> %77, %39
  %79 = add <vscale x 4 x i32> %41, %40
  %80 = sub <vscale x 4 x i32> %76, %79
  %81 = shl <vscale x 4 x i32> %80, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %82 = add <vscale x 4 x i32> %78, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %83 = add <vscale x 4 x i32> %82, %81
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %83, <vscale x 4 x i1> %14, ptr nonnull %b, <vscale x 4 x i32> %39)
  %84 = sub <vscale x 4 x i32> %40, %83
  %85 = shl <vscale x 4 x i32> %84, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %86 = mul <vscale x 4 x i32> %39, %39
  %87 = add <vscale x 4 x i32> %85, %86
  %88 = mul <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %89 = sub <vscale x 4 x i32> %76, %39
  %90 = add <vscale x 4 x i32> %89, %83
  %91 = shl <vscale x 4 x i32> %90, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %92 = add <vscale x 4 x i32> %88, %91
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %92, <vscale x 4 x i1> %14, ptr nonnull %c, <vscale x 4 x i32> %39)
  %93 = add i32 %vector.loop.index, %2
  %94 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %93, i32 1)
  %95 = sext i32 %93 to i64, !dbg !137
  %96 = getelementptr inbounds i8, ptr %cond, i64 %95, !dbg !137
  %97 = load <vscale x 4 x i8>, ptr %96, align 4
  %98 = icmp ne <vscale x 4 x i8> %97, zeroinitializer
  %99 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %98, <vscale x 4 x i1> %98)
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds i32, ptr %c, i64 %95, !dbg !146
  %new_loaded = load <vscale x 4 x i32>, ptr %101, align 16
  %102 = getelementptr inbounds i32, ptr %b, i64 %95, !dbg !147
  %new_loaded7 = load <vscale x 4 x i32>, ptr %102, align 16
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %103 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %93, %uniform.block ]
  %104 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %39, %lane.gather ], [ %94, %uniform.block ]
  %105 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %42, %lane.gather ], [ %98, %uniform.block ]
  %106 = phi i32 [ %uniform.vec.actives, %linearized ], [ %44, %lane.gather ], [ %100, %uniform.block ]
  %107 = phi <vscale x 4 x i32> [ %uniformLoad, %linearized ], [ %40, %lane.gather ], [ %new_loaded, %uniform.block ]
  %108 = phi <vscale x 4 x i32> [ %uniformLoad4, %linearized ], [ %41, %lane.gather ], [ %new_loaded7, %uniform.block ]
  %109 = add i32 %103, %2
  %.not4 = icmp ult i32 %109, %total.iterations.to.be.vectorized
  br i1 %.not4, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition10 = icmp eq i32 %17, 0
  %110 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %105, ptr nonnull %c, <vscale x 4 x i32> %104)
  %111 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %105, ptr nonnull %b, <vscale x 4 x i32> %104)
  %112 = mul <vscale x 4 x i32> %111, %104
  %113 = mul <vscale x 4 x i32> %110, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %114 = shl <vscale x 4 x i32> %104, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %115 = add <vscale x 4 x i32> %111, %114
  %116 = add <vscale x 4 x i32> %115, %113
  %117 = add <vscale x 4 x i32> %116, %112
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %117, <vscale x 4 x i1> %105, ptr %a, <vscale x 4 x i32> %104)
  %118 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %110
  %119 = mul <vscale x 4 x i32> %118, %104
  %120 = add <vscale x 4 x i32> %111, %110
  %121 = sub <vscale x 4 x i32> %117, %120
  %122 = shl <vscale x 4 x i32> %121, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %123 = add <vscale x 4 x i32> %119, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %124 = add <vscale x 4 x i32> %123, %122
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %124, <vscale x 4 x i1> %105, ptr nonnull %b, <vscale x 4 x i32> %104)
  %125 = sub <vscale x 4 x i32> %110, %124
  %126 = shl <vscale x 4 x i32> %125, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %127 = mul <vscale x 4 x i32> %104, %104
  %128 = add <vscale x 4 x i32> %126, %127
  %129 = mul <vscale x 4 x i32> %128, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %130 = sub <vscale x 4 x i32> %117, %104
  %131 = add <vscale x 4 x i32> %130, %124
  %132 = shl <vscale x 4 x i32> %131, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %133 = add <vscale x 4 x i32> %129, %132
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %133, <vscale x 4 x i1> %105, ptr nonnull %c, <vscale x 4 x i32> %104)
  %134 = zext i32 %109 to i64
  br i1 %condition10, label %for.cond.cleanup, label %for.body.preheader28

for.body.preheader28:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %134, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !127

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !127, !llvm.loop !163

if.then75:                                        ; preds = %for.cond.cleanup
  %135 = load ptr, ptr @stderr, align 8, !dbg !167, !tbaa !130
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 63) #14, !dbg !167
  tail call void @exit(i32 noundef %call73) #15, !dbg !167
  unreachable, !dbg !167

if.end77:                                         ; preds = %for.cond.cleanup
  %call78 = tail call double @getTimeMiliSeconds(), !dbg !169
  %sub79 = fsub double %call78, %call, !dbg !170
  store double %sub79, ptr @ExecutionTime, align 8, !dbg !171, !tbaa !172
  ret void, !dbg !174
}

declare !dbg !175 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !179 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !185, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %b, metadata !186, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %c, metadata !187, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata ptr %cond, metadata !188, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.value(metadata i32 %n, metadata !189, metadata !DIExpression()), !dbg !194
  %call = tail call double @getTimeMiliSeconds(), !dbg !195
  call void @llvm.dbg.value(metadata double %call, metadata !191, metadata !DIExpression()), !dbg !194
  %0 = load i32, ptr @EventSet, align 4, !dbg !196, !tbaa !119
  %call1 = tail call i32 @PAPI_start(i32 noundef %0) #13, !dbg !198
  call void @llvm.dbg.value(metadata i32 %call1, metadata !190, metadata !DIExpression()), !dbg !194
  %cmp.not = icmp eq i32 %call1, 0, !dbg !199
  br i1 %cmp.not, label %for.cond.preheader, label %if.then, !dbg !200

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !201
  %cmp3221 = icmp sgt i32 %n, 0, !dbg !202
  br i1 %cmp3221, label %for.body.preheader, label %for.cond.cleanup, !dbg !204

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !202
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !204
  %2 = shl i32 %1, 2, !dbg !204
  %3 = shl i32 %1, 3, !dbg !204
  %.not = icmp ugt i32 %3, %n, !dbg !204
  br i1 %.not, label %for.body.preheader41, label %pre.alc, !dbg !204

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !205, !tbaa !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 76) #14, !dbg !205
  tail call void @exit(i32 noundef %call1) #15, !dbg !205
  unreachable, !dbg !205

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %5 = load i32, ptr @EventSet, align 4, !dbg !207, !tbaa !119
  %call127 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !209
  call void @llvm.dbg.value(metadata i32 %call127, metadata !190, metadata !DIExpression()), !dbg !194
  %cmp128.not = icmp eq i32 %call127, 0, !dbg !210
  br i1 %cmp128.not, label %if.end131, label %if.then129, !dbg !211

for.body:                                         ; preds = %for.body.preheader41, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !192, metadata !DIExpression()), !dbg !201
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !212
  %6 = load i8, ptr %arrayidx, align 1, !dbg !212, !tbaa !140, !range !142
  %tobool.not = icmp eq i8 %6, 0, !dbg !212
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !215

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !216
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !218
  %7 = load i32, ptr %arrayidx8, align 4, !dbg !218, !tbaa !119
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !219
  %8 = load i32, ptr %arrayidx11, align 4, !dbg !219, !tbaa !119
  %mul21214 = add i32 %8, 2, !dbg !220
  %9 = trunc i64 %indvars.iv to i32, !dbg !220
  %add22 = mul i32 %mul21214, %9, !dbg !220
  %.neg = mul i32 %7, -2
  %add = add i32 %.neg, %8, !dbg !221
  %add25 = add i32 %add, %add22, !dbg !222
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !222, !tbaa !119
  %mul43215.neg = sub i32 -3, %7, !dbg !223
  %add44.neg224 = mul i32 %mul43215.neg, %9, !dbg !223
  %10 = add i32 %8, %7
  %reass.add217 = sub i32 %add25, %10
  %reass.mul218 = shl i32 %reass.add217, 1
  %add37 = add i32 %add44.neg224, 2, !dbg !224
  %sub47 = add i32 %add37, %reass.mul218, !dbg !225
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !225, !tbaa !119
  %11 = add nsw i32 %sub47, %add25, !dbg !226
  %add54 = shl nsw i32 %11, 1, !dbg !226
  %12 = sub nsw i32 %7, %sub47, !dbg !227
  %sub61 = shl nsw i32 %12, 1, !dbg !227
  %mul62 = mul nsw i32 %9, %9, !dbg !228
  %add63 = add nsw i32 %sub61, %mul62, !dbg !229
  %mul64.neg = mul i32 %add63, -3, !dbg !230
  %sub65 = add i32 %add54, %7, !dbg !231
  %add68 = add i32 %sub65, %mul64.neg, !dbg !232
  store i32 %add68, ptr %arrayidx8, align 4, !dbg !232, !tbaa !119
  br label %for.inc, !dbg !233

if.else:                                          ; preds = %for.body
  %arrayidx70 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !234
  %13 = load i32, ptr %arrayidx70, align 4, !dbg !234, !tbaa !119
  %add71 = add nsw i32 %13, 2, !dbg !236
  %arrayidx73 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !237
  %14 = load i32, ptr %arrayidx73, align 4, !dbg !237, !tbaa !119
  %mul74.neg = mul i32 %14, -3, !dbg !238
  %sub75 = add i32 %add71, %mul74.neg, !dbg !239
  %arrayidx77 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !240
  %15 = load i32, ptr %arrayidx77, align 4, !dbg !241, !tbaa !119
  %mul78 = mul nsw i32 %sub75, %15, !dbg !241
  %mul83 = mul nsw i32 %mul78, %13, !dbg !242
  %sub84 = add i32 %14, -1, !dbg !243
  %add87 = add i32 %sub84, %mul83, !dbg !244
  %mul92 = mul nsw i32 %mul78, 3, !dbg !245
  %reass.mul220 = mul i32 %add87, -4
  %add105.neg = sub i32 -7, %mul78, !dbg !246
  %sub96 = add i32 %add105.neg, %mul92, !dbg !247
  %sub108 = add i32 %sub96, %reass.mul220, !dbg !248
  store i32 %sub108, ptr %arrayidx70, align 4, !dbg !248, !tbaa !119
  %mul111.neg = mul i32 %sub108, -2, !dbg !249
  %add112.neg = add i32 %mul78, -4, !dbg !250
  %sub115 = add i32 %add112.neg, %mul111.neg, !dbg !251
  store i32 %sub115, ptr %arrayidx77, align 4, !dbg !251, !tbaa !119
  %mul118 = mul nsw i32 %sub115, 5, !dbg !252
  %mul121 = shl nsw i32 %sub108, 1, !dbg !253
  %add122 = add i32 %mul121, %add87, !dbg !254
  %add125 = add i32 %add122, %mul118, !dbg !255
  store i32 %add125, ptr %arrayidx73, align 4, !dbg !255, !tbaa !119
  br label %for.inc

pre.alc:                                          ; preds = %for.body.preheader
  %16 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %17 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %18 = urem i32 %n, %2
  %19 = add i32 %3, %18
  %total.iterations.to.be.vectorized = sub i32 %n, %19
  %initial_load = load <vscale x 4 x i32>, ptr %b, align 16
  %initial_load1 = load <vscale x 4 x i32>, ptr %c, align 16
  %initial_load2 = load <vscale x 4 x i32>, ptr %a, align 16
  %20 = load <vscale x 4 x i8>, ptr %cond, align 4
  %21 = icmp ne <vscale x 4 x i8> %20, zeroinitializer
  %22 = sext i32 %2 to i64
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %138, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %17, %pre.alc ], [ %131, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %21, %pre.alc ], [ %132, %new.latch ]
  %uniformLoad = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %133, %new.latch ]
  %uniformLoad10 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %136, %new.latch ]
  %uniformLoad11 = phi <vscale x 4 x i32> [ %initial_load, %pre.alc ], [ %137, %new.latch ]
  %uniformLoad12 = phi <vscale x 4 x i32> [ %initial_load1, %pre.alc ], [ %134, %new.latch ]
  %uniformLoad13 = phi <vscale x 4 x i32> [ %initial_load2, %pre.alc ], [ %135, %new.latch ]
  %23 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %24 = sext i32 %vector.loop.index to i64, !dbg !212
  %25 = getelementptr inbounds i8, ptr %cond, i64 %24, !dbg !212
  %26 = load <vscale x 4 x i8>, ptr %25, align 4
  %27 = icmp eq <vscale x 4 x i8> %26, zeroinitializer
  %28 = xor <vscale x 4 x i1> %27, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %29 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !234
  %remaining_load = load <vscale x 4 x i32>, ptr %29, align 16
  %30 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !237
  %remaining_load6 = load <vscale x 4 x i32>, ptr %30, align 16
  %31 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !240
  %remaining_load7 = load <vscale x 4 x i32>, ptr %31, align 16
  %32 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %33 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %28, <vscale x 4 x i1> %28)
  %34 = trunc i64 %32 to i32
  %35 = trunc i64 %33 to i32
  %36 = add i32 %35, %34
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %38 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %23)
  %39 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad)
  %40 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_load)
  %41 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad12)
  %42 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_load6)
  %43 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad13)
  %44 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_load7)
  %45 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %46 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniform.vector)
  %47 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %27, <vscale x 4 x i32> %23)
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %27, <vscale x 4 x i32> %remaining_load)
  %49 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %27, <vscale x 4 x i32> %remaining_load6)
  %50 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %27, <vscale x 4 x i32> %remaining_load7)
  %51 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniformLoad10)
  %52 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniformLoad11)
  %53 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %34)
  %54 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %37, <vscale x 4 x i32> %38)
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %39, <vscale x 4 x i32> %40)
  %56 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %41, <vscale x 4 x i32> %42)
  %57 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %43, <vscale x 4 x i32> %44)
  %58 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %36)
  %59 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %54, <vscale x 4 x i32> %47)
  %60 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %55, <vscale x 4 x i32> %48)
  %61 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %56, <vscale x 4 x i32> %49)
  %62 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %57, <vscale x 4 x i32> %50)
  %63 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %33)
  %64 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %38, <vscale x 4 x i32> %47)
  %65 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %40, <vscale x 4 x i32> %48)
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %42, <vscale x 4 x i32> %49)
  %67 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %45, <vscale x 4 x i1> %45)
  %68 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %67)
  %69 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %46, <vscale x 4 x i32> %64
  %70 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %51, <vscale x 4 x i32> %66
  %71 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %52, <vscale x 4 x i32> %65
  %72 = xor <vscale x 4 x i1> %68, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %73 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %27, <vscale x 4 x i1> %27)
  %74 = sub i64 %22, %73
  %75 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %74)
  %76 = and <vscale x 4 x i1> %75, %72
  %77 = icmp ugt i32 %36, %2
  br i1 %77, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %alc.header
  %78 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniformLoad13)
  %79 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %63, <vscale x 4 x i32> %44, <vscale x 4 x i32> %50)
  %80 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %78, <vscale x 4 x i32> %79
  %81 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniformLoad12)
  %82 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %81, <vscale x 4 x i32> %66
  %83 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniformLoad)
  %84 = select <vscale x 4 x i1> %68, <vscale x 4 x i32> %83, <vscale x 4 x i32> %65
  %85 = add <vscale x 4 x i32> %60, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %86 = mul <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %87 = add <vscale x 4 x i32> %85, %86
  %88 = mul <vscale x 4 x i32> %87, %62
  %89 = mul <vscale x 4 x i32> %88, %60
  %90 = add <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %91 = add <vscale x 4 x i32> %90, %89
  %92 = mul <vscale x 4 x i32> %88, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %93 = mul <vscale x 4 x i32> %91, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %94 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %88
  %95 = add <vscale x 4 x i32> %94, %92
  %96 = add <vscale x 4 x i32> %95, %93
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %96, <vscale x 4 x i1> %16, ptr nonnull %b, <vscale x 4 x i32> %59)
  %97 = mul <vscale x 4 x i32> %96, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %98 = add <vscale x 4 x i32> %88, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %99 = add <vscale x 4 x i32> %98, %97
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %99, <vscale x 4 x i1> %16, ptr nonnull %a, <vscale x 4 x i32> %59)
  %100 = mul <vscale x 4 x i32> %99, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %101 = shl <vscale x 4 x i32> %96, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %102 = add <vscale x 4 x i32> %101, %91
  %103 = add <vscale x 4 x i32> %102, %100
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %103, <vscale x 4 x i1> %16, ptr nonnull %c, <vscale x 4 x i32> %59)
  br label %new.latch

uniform.else:                                     ; preds = %alc.header
  %104 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad11)
  %105 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %104, <vscale x 4 x i32> %40)
  %106 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %105, <vscale x 4 x i32> %48)
  %107 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniformLoad10)
  %108 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %107, <vscale x 4 x i32> %42)
  %109 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %58, <vscale x 4 x i32> %108, <vscale x 4 x i32> %49)
  %110 = add <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %111 = mul <vscale x 4 x i32> %110, %69
  %112 = mul <vscale x 4 x i32> %70, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %113 = add <vscale x 4 x i32> %112, %71
  %114 = add <vscale x 4 x i32> %113, %111
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %114, <vscale x 4 x i1> %16, ptr nonnull %a, <vscale x 4 x i32> %69)
  %115 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %70
  %116 = mul <vscale x 4 x i32> %115, %69
  %117 = add <vscale x 4 x i32> %70, %71
  %118 = sub <vscale x 4 x i32> %114, %117
  %119 = shl <vscale x 4 x i32> %118, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %120 = add <vscale x 4 x i32> %116, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %121 = add <vscale x 4 x i32> %120, %119
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %121, <vscale x 4 x i1> %16, ptr nonnull %b, <vscale x 4 x i32> %69)
  %122 = add <vscale x 4 x i32> %121, %114
  %123 = shl <vscale x 4 x i32> %122, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %124 = sub <vscale x 4 x i32> %70, %121
  %125 = shl <vscale x 4 x i32> %124, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %126 = mul <vscale x 4 x i32> %69, %69
  %127 = add <vscale x 4 x i32> %125, %126
  %128 = mul <vscale x 4 x i32> %127, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %129 = add <vscale x 4 x i32> %123, %70
  %130 = add <vscale x 4 x i32> %129, %128
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %130, <vscale x 4 x i1> %16, ptr nonnull %c, <vscale x 4 x i32> %69)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %131 = phi <vscale x 4 x i32> [ %69, %uniform.then ], [ %59, %uniform.else ]
  %132 = phi <vscale x 4 x i1> [ %76, %uniform.then ], [ %58, %uniform.else ]
  %133 = phi <vscale x 4 x i32> [ %84, %uniform.then ], [ %60, %uniform.else ]
  %134 = phi <vscale x 4 x i32> [ %82, %uniform.then ], [ %61, %uniform.else ]
  %135 = phi <vscale x 4 x i32> [ %80, %uniform.then ], [ %62, %uniform.else ]
  %136 = phi <vscale x 4 x i32> [ %70, %uniform.then ], [ %109, %uniform.else ]
  %137 = phi <vscale x 4 x i32> [ %71, %uniform.then ], [ %106, %uniform.else ]
  %138 = add i32 %vector.loop.index, %2
  %.not2 = icmp ult i32 %138, %total.iterations.to.be.vectorized
  br i1 %.not2, label %alc.header, label %joinBlock

linearized.then:                                  ; preds = %joinBlock
  %139 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %58, ptr nonnull %b, <vscale x 4 x i32> %59)
  %140 = add <vscale x 4 x i32> %139, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %141 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %58, ptr nonnull %c, <vscale x 4 x i32> %59)
  %142 = mul <vscale x 4 x i32> %141, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %143 = add <vscale x 4 x i32> %140, %142
  %144 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %58, ptr nonnull %a, <vscale x 4 x i32> %59)
  %145 = mul <vscale x 4 x i32> %143, %144
  %146 = mul <vscale x 4 x i32> %145, %139
  %147 = add <vscale x 4 x i32> %141, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %148 = add <vscale x 4 x i32> %147, %146
  %149 = mul <vscale x 4 x i32> %145, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %150 = mul <vscale x 4 x i32> %148, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %151 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %145
  %152 = add <vscale x 4 x i32> %151, %149
  %153 = add <vscale x 4 x i32> %152, %150
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %153, <vscale x 4 x i1> %58, ptr nonnull %b, <vscale x 4 x i32> %59)
  %154 = mul <vscale x 4 x i32> %153, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %155 = add <vscale x 4 x i32> %145, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %156 = add <vscale x 4 x i32> %155, %154
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %156, <vscale x 4 x i1> %58, ptr nonnull %a, <vscale x 4 x i32> %59)
  %157 = mul <vscale x 4 x i32> %156, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %158 = shl <vscale x 4 x i32> %153, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %159 = add <vscale x 4 x i32> %158, %148
  %160 = add <vscale x 4 x i32> %159, %157
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %160, <vscale x 4 x i1> %58, ptr nonnull %c, <vscale x 4 x i32> %59)
  %161 = xor <vscale x 4 x i1> %58, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %162 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %161, ptr nonnull %c, <vscale x 4 x i32> %59)
  %163 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %161, ptr nonnull %b, <vscale x 4 x i32> %59)
  %164 = add <vscale x 4 x i32> %163, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %165 = mul <vscale x 4 x i32> %164, %59
  %166 = mul <vscale x 4 x i32> %162, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %167 = add <vscale x 4 x i32> %166, %163
  %168 = add <vscale x 4 x i32> %167, %165
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %168, <vscale x 4 x i1> %161, ptr nonnull %a, <vscale x 4 x i32> %59)
  %169 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %162
  %170 = mul <vscale x 4 x i32> %169, %59
  %171 = add <vscale x 4 x i32> %163, %162
  %172 = sub <vscale x 4 x i32> %168, %171
  %173 = shl <vscale x 4 x i32> %172, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %174 = add <vscale x 4 x i32> %170, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %175 = add <vscale x 4 x i32> %174, %173
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %175, <vscale x 4 x i1> %161, ptr nonnull %b, <vscale x 4 x i32> %59)
  %176 = add <vscale x 4 x i32> %175, %168
  %177 = shl <vscale x 4 x i32> %176, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %178 = sub <vscale x 4 x i32> %162, %175
  %179 = shl <vscale x 4 x i32> %178, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %180 = mul <vscale x 4 x i32> %59, %59
  %181 = add <vscale x 4 x i32> %179, %180
  %182 = mul <vscale x 4 x i32> %181, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %183 = add <vscale x 4 x i32> %177, %162
  %184 = add <vscale x 4 x i32> %183, %182
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %184, <vscale x 4 x i1> %161, ptr nonnull %c, <vscale x 4 x i32> %59)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %185 = xor <vscale x 4 x i1> %76, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %186 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %185, ptr nonnull %c, <vscale x 4 x i32> %69)
  %187 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %185, ptr nonnull %b, <vscale x 4 x i32> %69)
  %188 = add <vscale x 4 x i32> %187, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %189 = mul <vscale x 4 x i32> %188, %69
  %190 = mul <vscale x 4 x i32> %186, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %191 = add <vscale x 4 x i32> %190, %187
  %192 = add <vscale x 4 x i32> %191, %189
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %192, <vscale x 4 x i1> %185, ptr nonnull %a, <vscale x 4 x i32> %69)
  %193 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %186
  %194 = mul <vscale x 4 x i32> %193, %69
  %195 = add <vscale x 4 x i32> %187, %186
  %196 = sub <vscale x 4 x i32> %192, %195
  %197 = shl <vscale x 4 x i32> %196, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %198 = add <vscale x 4 x i32> %194, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %199 = add <vscale x 4 x i32> %198, %197
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %199, <vscale x 4 x i1> %185, ptr nonnull %b, <vscale x 4 x i32> %69)
  %200 = add <vscale x 4 x i32> %199, %192
  %201 = shl <vscale x 4 x i32> %200, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %202 = sub <vscale x 4 x i32> %186, %199
  %203 = shl <vscale x 4 x i32> %202, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %204 = mul <vscale x 4 x i32> %69, %69
  %205 = add <vscale x 4 x i32> %203, %204
  %206 = mul <vscale x 4 x i32> %205, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %207 = add <vscale x 4 x i32> %201, %186
  %208 = add <vscale x 4 x i32> %207, %206
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %208, <vscale x 4 x i1> %185, ptr nonnull %c, <vscale x 4 x i32> %69)
  %209 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %76, ptr nonnull %b, <vscale x 4 x i32> %69)
  %210 = add <vscale x 4 x i32> %209, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %211 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %76, ptr nonnull %c, <vscale x 4 x i32> %69)
  %212 = mul <vscale x 4 x i32> %211, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %213 = add <vscale x 4 x i32> %210, %212
  %214 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %76, ptr nonnull %a, <vscale x 4 x i32> %69)
  %215 = mul <vscale x 4 x i32> %213, %214
  %216 = mul <vscale x 4 x i32> %215, %209
  %217 = add <vscale x 4 x i32> %211, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %218 = add <vscale x 4 x i32> %217, %216
  %219 = mul <vscale x 4 x i32> %215, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %220 = mul <vscale x 4 x i32> %218, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %221 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -7, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %215
  %222 = add <vscale x 4 x i32> %221, %219
  %223 = add <vscale x 4 x i32> %222, %220
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %223, <vscale x 4 x i1> %76, ptr nonnull %b, <vscale x 4 x i32> %69)
  %224 = mul <vscale x 4 x i32> %223, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %225 = add <vscale x 4 x i32> %215, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %226 = add <vscale x 4 x i32> %225, %224
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %226, <vscale x 4 x i1> %76, ptr nonnull %a, <vscale x 4 x i32> %69)
  %227 = mul <vscale x 4 x i32> %226, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %228 = shl <vscale x 4 x i32> %223, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %229 = add <vscale x 4 x i32> %228, %218
  %230 = add <vscale x 4 x i32> %229, %227
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %230, <vscale x 4 x i1> %76, ptr nonnull %c, <vscale x 4 x i32> %69)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %231 = icmp eq <vscale x 4 x i32> %131, %59
  %232 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %231, <vscale x 4 x i1> %231)
  %233 = trunc i64 %232 to i32
  %234 = icmp eq i32 %2, %233
  br i1 %234, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %235 = zext i32 %138 to i64
  br label %for.body.preheader41

for.body.preheader41:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %235, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !204

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !192, metadata !DIExpression()), !dbg !201
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !202
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !204, !llvm.loop !257

if.then129:                                       ; preds = %for.cond.cleanup
  %236 = load ptr, ptr @stderr, align 8, !dbg !259, !tbaa !130
  %call130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str, i32 noundef %call127, ptr noundef nonnull @.str.1, i32 noundef 102) #14, !dbg !259
  tail call void @exit(i32 noundef %call127) #15, !dbg !259
  unreachable, !dbg !259

if.end131:                                        ; preds = %for.cond.cleanup
  %call132 = tail call double @getTimeMiliSeconds(), !dbg !261
  %sub133 = fsub double %call132, %call, !dbg !262
  store double %sub133, ptr @ExecutionTime, align 8, !dbg !263, !tbaa !172
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !265 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !269, metadata !DIExpression()), !dbg !271
  %conv = sext i32 %n to i64, !dbg !272
  %mul = shl nsw i64 %conv, 2, !dbg !273
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !274
  call void @llvm.dbg.value(metadata ptr %call, metadata !270, metadata !DIExpression()), !dbg !271
  %cmp = icmp eq ptr %call, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !277

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !278
  tail call void @exit(i32 noundef 1) #15, !dbg !280
  unreachable, !dbg !280

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !281
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !282 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !286, metadata !DIExpression()), !dbg !288
  %conv = sext i32 %n to i64, !dbg !289
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !290
  call void @llvm.dbg.value(metadata ptr %call, metadata !287, metadata !DIExpression()), !dbg !288
  %cmp = icmp eq ptr %call, null, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !294
  tail call void @exit(i32 noundef 1) #15, !dbg !296
  unreachable, !dbg !296

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !297
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !298 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !303, metadata !DIExpression()), !dbg !314
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !315
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !317
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !318

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !319, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !321
  call void @exit(i32 noundef 1) #15, !dbg !322
  unreachable, !dbg !322

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !323
  call void @llvm.dbg.value(metadata i32 %call2, metadata !302, metadata !DIExpression()), !dbg !325
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !326
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !327

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !328, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 317) #14, !dbg !328
  tail call void @exit(i32 noundef %call2) #15, !dbg !328
  unreachable, !dbg !328

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !330, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !332
  call void @llvm.dbg.value(metadata i32 %call7, metadata !302, metadata !DIExpression()), !dbg !325
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !333
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !334

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !335, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 320) #14, !dbg !335
  tail call void @exit(i32 noundef %call7) #15, !dbg !335
  unreachable, !dbg !335

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !337
  store ptr %call12, ptr @a, align 8, !dbg !338, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !339
  store ptr %call13, ptr @b, align 8, !dbg !340, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !341
  store ptr %call14, ptr @c, align 8, !dbg !342, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !343
  store ptr %call15, ptr @cond, align 8, !dbg !344, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !345, !tbaa !140
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !346
  %conv = trunc i64 %call16 to i32, !dbg !346
  tail call void @srand(i32 noundef %conv) #13, !dbg !347
  call void @llvm.dbg.value(metadata i32 1, metadata !308, metadata !DIExpression()), !dbg !348
  br label %for.body, !dbg !349

for.cond.cleanup:                                 ; preds = %for.body
  %4 = load ptr, ptr @a, align 8, !dbg !350, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !dbg !351, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !dbg !352, !tbaa !130
  tail call void @simple_if(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11, i32 noundef 5000000), !dbg !353
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !354
  %7 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !311, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 0, metadata !310, metadata !DIExpression()), !dbg !325
  br label %for.body34, !dbg !355

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !308, metadata !DIExpression()), !dbg !348
  %8 = load ptr, ptr @a, align 8, !dbg !356, !tbaa !130
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !356
  store i32 1, ptr %arrayidx19, align 4, !dbg !359, !tbaa !119
  %9 = load ptr, ptr @b, align 8, !dbg !360, !tbaa !130
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !360
  store i32 -1, ptr %arrayidx21, align 4, !dbg !361, !tbaa !119
  %10 = load ptr, ptr @c, align 8, !dbg !362, !tbaa !130
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !362
  store i32 0, ptr %arrayidx23, align 4, !dbg !363, !tbaa !119
  %call24 = tail call i32 @rand() #13, !dbg !364
  %rem = srem i32 %call24, 50, !dbg !365
  %cmp25 = icmp eq i32 %rem, 0, !dbg !366
  %11 = load ptr, ptr @cond, align 8, !dbg !367, !tbaa !130
  %arrayidx28 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv, !dbg !367
  %frombool = zext i1 %cmp25 to i8, !dbg !368
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !368, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !369
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !308, metadata !DIExpression()), !dbg !348
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !370
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !349, !llvm.loop !371

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !373
  %putchar = tail call i32 @putchar(i32 10), !dbg !374
  %12 = load ptr, ptr @a, align 8, !dbg !375, !tbaa !130
  tail call void @free(ptr noundef %12) #13, !dbg !376
  %13 = load ptr, ptr @b, align 8, !dbg !377, !tbaa !130
  tail call void @free(ptr noundef %13) #13, !dbg !378
  %14 = load ptr, ptr @c, align 8, !dbg !379, !tbaa !130
  tail call void @free(ptr noundef %14) #13, !dbg !380
  %15 = load ptr, ptr @cond, align 8, !dbg !381, !tbaa !130
  tail call void @free(ptr noundef %15) #13, !dbg !382
  %16 = load i64, ptr @CounterValues, align 8, !dbg !383, !tbaa !384
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !386
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !387, !tbaa !384
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !388
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !389, !tbaa !384
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !390
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !391, !tbaa !384
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !392
  %20 = load double, ptr @ExecutionTime, align 8, !dbg !393, !tbaa !172
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %20), !dbg !394
  %21 = load i32, ptr @EventSet, align 4, !dbg !395, !tbaa !119
  %call47 = tail call i32 @PAPI_remove_events(i32 noundef %21, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !397
  call void @llvm.dbg.value(metadata i32 %call47, metadata !302, metadata !DIExpression()), !dbg !325
  %cmp48.not = icmp eq i32 %call47, 0, !dbg !398
  br i1 %cmp48.not, label %if.end52, label %if.then50, !dbg !399

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv78 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next79, %for.body34 ]
  %sum.075 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv78, metadata !311, metadata !DIExpression()), !dbg !354
  call void @llvm.dbg.value(metadata i32 %sum.075, metadata !310, metadata !DIExpression()), !dbg !325
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv78, !dbg !400
  %22 = load i32, ptr %arrayidx36, align 4, !dbg !400, !tbaa !119
  %add = add nsw i32 %22, %sum.075, !dbg !403
  call void @llvm.dbg.value(metadata i32 %add, metadata !310, metadata !DIExpression()), !dbg !325
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !404
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next79, metadata !311, metadata !DIExpression()), !dbg !354
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, 5000000, !dbg !405
  br i1 %exitcond81.not, label %for.cond.cleanup33, label %for.body34, !dbg !355, !llvm.loop !406

if.then50:                                        ; preds = %for.cond.cleanup33
  %23 = load ptr, ptr @stderr, align 8, !dbg !408, !tbaa !130
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %call47, ptr noundef nonnull @.str.1, i32 noundef 370) #14, !dbg !408
  tail call void @exit(i32 noundef %call47) #15, !dbg !408
  unreachable, !dbg !408

if.end52:                                         ; preds = %for.cond.cleanup33
  %call53 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !410
  call void @llvm.dbg.value(metadata i32 %call53, metadata !302, metadata !DIExpression()), !dbg !325
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !412
  br i1 %cmp54.not, label %if.end58, label %if.then56, !dbg !413

if.then56:                                        ; preds = %if.end52
  %24 = load ptr, ptr @stderr, align 8, !dbg !414, !tbaa !130
  %call57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %call53, ptr noundef nonnull @.str.1, i32 noundef 373) #14, !dbg !414
  tail call void @exit(i32 noundef %call53) #15, !dbg !414
  unreachable, !dbg !414

if.end58:                                         ; preds = %if.end52
  tail call void @PAPI_shutdown() #13, !dbg !416
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !417
  ret i32 0, !dbg !418
}

declare !dbg !419 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !420 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !423 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !426 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !431 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !437 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !438 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !439 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !440 void @PAPI_shutdown() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #10

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
attributes #11 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #12 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
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
!149 = !DILocation(line: 52, column: 46, scope: !145)
!150 = !DILocation(line: 53, column: 22, scope: !145)
!151 = !DILocation(line: 55, column: 31, scope: !145)
!152 = !DILocation(line: 54, column: 37, scope: !145)
!153 = !DILocation(line: 55, column: 22, scope: !145)
!154 = !DILocation(line: 56, column: 60, scope: !145)
!155 = !DILocation(line: 56, column: 75, scope: !145)
!156 = !DILocation(line: 56, column: 71, scope: !145)
!157 = !DILocation(line: 56, column: 48, scope: !145)
!158 = !DILocation(line: 56, column: 33, scope: !145)
!159 = !DILocation(line: 56, column: 44, scope: !145)
!160 = !DILocation(line: 57, column: 22, scope: !145)
!161 = !DILocation(line: 58, column: 9, scope: !145)
!162 = !DILocation(line: 50, column: 28, scope: !126)
!163 = distinct !{!163, !127, !164, !165, !166}
!164 = !DILocation(line: 59, column: 5, scope: !114)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !DILocation(line: 63, column: 67, scope: !168)
!168 = distinct !DILexicalBlock(scope: !133, file: !3, line: 63, column: 67)
!169 = !DILocation(line: 65, column: 21, scope: !100)
!170 = !DILocation(line: 65, column: 42, scope: !100)
!171 = !DILocation(line: 65, column: 19, scope: !100)
!172 = !{!173, !173, i64 0}
!173 = !{!"double", !81, i64 0}
!174 = !DILocation(line: 66, column: 1, scope: !100)
!175 = !DISubprogram(name: "PAPI_start", scope: !176, file: !176, line: 1204, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!176 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !6}
!179 = !DISubprogram(name: "PAPI_stop", scope: !176, file: !176, line: 1206, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!180 = !DISubroutineType(types: !181)
!181 = !{!6, !6, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!183 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 69, type: !101, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192}
!185 = !DILocalVariable(name: "a", arg: 1, scope: !183, file: !3, line: 69, type: !103)
!186 = !DILocalVariable(name: "b", arg: 2, scope: !183, file: !3, line: 69, type: !103)
!187 = !DILocalVariable(name: "c", arg: 3, scope: !183, file: !3, line: 69, type: !103)
!188 = !DILocalVariable(name: "cond", arg: 4, scope: !183, file: !3, line: 70, type: !104)
!189 = !DILocalVariable(name: "n", arg: 5, scope: !183, file: !3, line: 70, type: !6)
!190 = !DILocalVariable(name: "status", scope: !183, file: !3, line: 72, type: !6)
!191 = !DILocalVariable(name: "t", scope: !183, file: !3, line: 74, type: !22)
!192 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 80, type: !6)
!193 = distinct !DILexicalBlock(scope: !183, file: !3, line: 80, column: 5)
!194 = !DILocation(line: 0, scope: !183)
!195 = !DILocation(line: 74, column: 16, scope: !183)
!196 = !DILocation(line: 76, column: 30, scope: !197)
!197 = distinct !DILexicalBlock(scope: !183, file: !3, line: 76, column: 9)
!198 = !DILocation(line: 76, column: 19, scope: !197)
!199 = !DILocation(line: 76, column: 41, scope: !197)
!200 = !DILocation(line: 76, column: 9, scope: !183)
!201 = !DILocation(line: 0, scope: !193)
!202 = !DILocation(line: 80, column: 23, scope: !203)
!203 = distinct !DILexicalBlock(scope: !193, file: !3, line: 80, column: 5)
!204 = !DILocation(line: 80, column: 5, scope: !193)
!205 = !DILocation(line: 76, column: 53, scope: !206)
!206 = distinct !DILexicalBlock(scope: !197, file: !3, line: 76, column: 53)
!207 = !DILocation(line: 102, column: 29, scope: !208)
!208 = distinct !DILexicalBlock(scope: !183, file: !3, line: 102, column: 9)
!209 = !DILocation(line: 102, column: 19, scope: !208)
!210 = !DILocation(line: 102, column: 55, scope: !208)
!211 = !DILocation(line: 102, column: 9, scope: !183)
!212 = !DILocation(line: 82, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !3, line: 82, column: 13)
!214 = distinct !DILexicalBlock(scope: !203, file: !3, line: 80, column: 33)
!215 = !DILocation(line: 82, column: 13, scope: !214)
!216 = !DILocation(line: 83, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 82, column: 22)
!218 = !DILocation(line: 83, column: 36, scope: !217)
!219 = !DILocation(line: 83, column: 45, scope: !217)
!220 = !DILocation(line: 84, column: 27, scope: !217)
!221 = !DILocation(line: 83, column: 42, scope: !217)
!222 = !DILocation(line: 84, column: 18, scope: !217)
!223 = !DILocation(line: 86, column: 27, scope: !217)
!224 = !DILocation(line: 85, column: 33, scope: !217)
!225 = !DILocation(line: 86, column: 18, scope: !217)
!226 = !DILocation(line: 87, column: 30, scope: !217)
!227 = !DILocation(line: 87, column: 57, scope: !217)
!228 = !DILocation(line: 87, column: 72, scope: !217)
!229 = !DILocation(line: 87, column: 68, scope: !217)
!230 = !DILocation(line: 87, column: 45, scope: !217)
!231 = !DILocation(line: 87, column: 41, scope: !217)
!232 = !DILocation(line: 87, column: 18, scope: !217)
!233 = !DILocation(line: 88, column: 9, scope: !217)
!234 = !DILocation(line: 89, column: 25, scope: !235)
!235 = distinct !DILexicalBlock(scope: !213, file: !3, line: 88, column: 16)
!236 = !DILocation(line: 89, column: 23, scope: !235)
!237 = !DILocation(line: 89, column: 36, scope: !235)
!238 = !DILocation(line: 89, column: 34, scope: !235)
!239 = !DILocation(line: 89, column: 30, scope: !235)
!240 = !DILocation(line: 89, column: 13, scope: !235)
!241 = !DILocation(line: 89, column: 18, scope: !235)
!242 = !DILocation(line: 90, column: 25, scope: !235)
!243 = !DILocation(line: 90, column: 32, scope: !235)
!244 = !DILocation(line: 90, column: 36, scope: !235)
!245 = !DILocation(line: 91, column: 22, scope: !235)
!246 = !DILocation(line: 92, column: 34, scope: !235)
!247 = !DILocation(line: 91, column: 29, scope: !235)
!248 = !DILocation(line: 92, column: 18, scope: !235)
!249 = !DILocation(line: 93, column: 30, scope: !235)
!250 = !DILocation(line: 93, column: 23, scope: !235)
!251 = !DILocation(line: 93, column: 18, scope: !235)
!252 = !DILocation(line: 94, column: 23, scope: !235)
!253 = !DILocation(line: 94, column: 34, scope: !235)
!254 = !DILocation(line: 94, column: 30, scope: !235)
!255 = !DILocation(line: 94, column: 18, scope: !235)
!256 = !DILocation(line: 80, column: 28, scope: !203)
!257 = distinct !{!257, !204, !258, !165, !166}
!258 = !DILocation(line: 98, column: 5, scope: !193)
!259 = !DILocation(line: 102, column: 67, scope: !260)
!260 = distinct !DILexicalBlock(scope: !208, file: !3, line: 102, column: 67)
!261 = !DILocation(line: 104, column: 21, scope: !183)
!262 = !DILocation(line: 104, column: 42, scope: !183)
!263 = !DILocation(line: 104, column: 19, scope: !183)
!264 = !DILocation(line: 105, column: 1, scope: !183)
!265 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 289, type: !266, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!5, !6}
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "n", arg: 1, scope: !265, file: !3, line: 289, type: !6)
!270 = !DILocalVariable(name: "ptr", scope: !265, file: !3, line: 290, type: !5)
!271 = !DILocation(line: 0, scope: !265)
!272 = !DILocation(line: 290, column: 45, scope: !265)
!273 = !DILocation(line: 290, column: 43, scope: !265)
!274 = !DILocation(line: 290, column: 24, scope: !265)
!275 = !DILocation(line: 291, column: 13, scope: !276)
!276 = distinct !DILexicalBlock(scope: !265, file: !3, line: 291, column: 9)
!277 = !DILocation(line: 291, column: 9, scope: !265)
!278 = !DILocation(line: 292, column: 9, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !3, line: 291, column: 22)
!280 = !DILocation(line: 293, column: 9, scope: !279)
!281 = !DILocation(line: 295, column: 5, scope: !265)
!282 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 298, type: !283, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!8, !6}
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "n", arg: 1, scope: !282, file: !3, line: 298, type: !6)
!287 = !DILocalVariable(name: "ptr", scope: !282, file: !3, line: 299, type: !8)
!288 = !DILocation(line: 0, scope: !282)
!289 = !DILocation(line: 299, column: 48, scope: !282)
!290 = !DILocation(line: 299, column: 26, scope: !282)
!291 = !DILocation(line: 300, column: 13, scope: !292)
!292 = distinct !DILexicalBlock(scope: !282, file: !3, line: 300, column: 9)
!293 = !DILocation(line: 300, column: 9, scope: !282)
!294 = !DILocation(line: 301, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !3, line: 300, column: 22)
!296 = !DILocation(line: 302, column: 9, scope: !295)
!297 = !DILocation(line: 304, column: 5, scope: !282)
!298 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 307, type: !299, scopeLine: 307, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!6}
!301 = !{!302, !303, !308, !310, !311}
!302 = !DILocalVariable(name: "status", scope: !298, file: !3, line: 308, type: !6)
!303 = !DILocalVariable(name: "errstring", scope: !298, file: !3, line: 309, type: !304)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 1024, elements: !306)
!305 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!306 = !{!307}
!307 = !DISubrange(count: 128)
!308 = !DILocalVariable(name: "i", scope: !309, file: !3, line: 333, type: !6)
!309 = distinct !DILexicalBlock(scope: !298, file: !3, line: 333, column: 5)
!310 = !DILocalVariable(name: "sum", scope: !298, file: !3, line: 349, type: !6)
!311 = !DILocalVariable(name: "i", scope: !312, file: !3, line: 351, type: !6)
!312 = distinct !DILexicalBlock(scope: !298, file: !3, line: 351, column: 5)
!313 = !DILocation(line: 309, column: 5, scope: !298)
!314 = !DILocation(line: 309, column: 10, scope: !298)
!315 = !DILocation(line: 311, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !298, file: !3, line: 311, column: 9)
!317 = !DILocation(line: 311, column: 45, scope: !316)
!318 = !DILocation(line: 311, column: 9, scope: !298)
!319 = !DILocation(line: 312, column: 17, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 311, column: 66)
!321 = !DILocation(line: 312, column: 9, scope: !320)
!322 = !DILocation(line: 313, column: 9, scope: !320)
!323 = !DILocation(line: 317, column: 19, scope: !324)
!324 = distinct !DILexicalBlock(scope: !298, file: !3, line: 317, column: 9)
!325 = !DILocation(line: 0, scope: !298)
!326 = !DILocation(line: 317, column: 52, scope: !324)
!327 = !DILocation(line: 317, column: 9, scope: !298)
!328 = !DILocation(line: 317, column: 64, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 317, column: 64)
!330 = !DILocation(line: 320, column: 35, scope: !331)
!331 = distinct !DILexicalBlock(scope: !298, file: !3, line: 320, column: 9)
!332 = !DILocation(line: 320, column: 19, scope: !331)
!333 = !DILocation(line: 320, column: 69, scope: !331)
!334 = !DILocation(line: 320, column: 9, scope: !298)
!335 = !DILocation(line: 320, column: 81, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !3, line: 320, column: 81)
!337 = !DILocation(line: 323, column: 9, scope: !298)
!338 = !DILocation(line: 323, column: 7, scope: !298)
!339 = !DILocation(line: 324, column: 9, scope: !298)
!340 = !DILocation(line: 324, column: 7, scope: !298)
!341 = !DILocation(line: 325, column: 9, scope: !298)
!342 = !DILocation(line: 325, column: 7, scope: !298)
!343 = !DILocation(line: 326, column: 12, scope: !298)
!344 = !DILocation(line: 326, column: 10, scope: !298)
!345 = !DILocation(line: 328, column: 13, scope: !298)
!346 = !DILocation(line: 330, column: 11, scope: !298)
!347 = !DILocation(line: 330, column: 5, scope: !298)
!348 = !DILocation(line: 0, scope: !309)
!349 = !DILocation(line: 333, column: 5, scope: !309)
!350 = !DILocation(line: 345, column: 15, scope: !298)
!351 = !DILocation(line: 345, column: 18, scope: !298)
!352 = !DILocation(line: 345, column: 21, scope: !298)
!353 = !DILocation(line: 345, column: 5, scope: !298)
!354 = !DILocation(line: 0, scope: !312)
!355 = !DILocation(line: 351, column: 5, scope: !312)
!356 = !DILocation(line: 334, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !3, line: 333, column: 33)
!358 = distinct !DILexicalBlock(scope: !309, file: !3, line: 333, column: 5)
!359 = !DILocation(line: 334, column: 14, scope: !357)
!360 = !DILocation(line: 335, column: 9, scope: !357)
!361 = !DILocation(line: 335, column: 14, scope: !357)
!362 = !DILocation(line: 336, column: 9, scope: !357)
!363 = !DILocation(line: 336, column: 14, scope: !357)
!364 = !DILocation(line: 341, column: 20, scope: !357)
!365 = !DILocation(line: 341, column: 27, scope: !357)
!366 = !DILocation(line: 341, column: 33, scope: !357)
!367 = !DILocation(line: 341, column: 9, scope: !357)
!368 = !DILocation(line: 341, column: 17, scope: !357)
!369 = !DILocation(line: 333, column: 28, scope: !358)
!370 = !DILocation(line: 333, column: 23, scope: !358)
!371 = distinct !{!371, !349, !372, !165, !166}
!372 = !DILocation(line: 342, column: 5, scope: !309)
!373 = !DILocation(line: 356, column: 5, scope: !298)
!374 = !DILocation(line: 357, column: 5, scope: !298)
!375 = !DILocation(line: 359, column: 10, scope: !298)
!376 = !DILocation(line: 359, column: 5, scope: !298)
!377 = !DILocation(line: 360, column: 10, scope: !298)
!378 = !DILocation(line: 360, column: 5, scope: !298)
!379 = !DILocation(line: 361, column: 10, scope: !298)
!380 = !DILocation(line: 361, column: 5, scope: !298)
!381 = !DILocation(line: 362, column: 10, scope: !298)
!382 = !DILocation(line: 362, column: 5, scope: !298)
!383 = !DILocation(line: 364, column: 53, scope: !298)
!384 = !{!385, !385, i64 0}
!385 = !{!"long long", !81, i64 0}
!386 = !DILocation(line: 364, column: 5, scope: !298)
!387 = !DILocation(line: 365, column: 36, scope: !298)
!388 = !DILocation(line: 365, column: 5, scope: !298)
!389 = !DILocation(line: 366, column: 50, scope: !298)
!390 = !DILocation(line: 366, column: 5, scope: !298)
!391 = !DILocation(line: 367, column: 49, scope: !298)
!392 = !DILocation(line: 367, column: 5, scope: !298)
!393 = !DILocation(line: 368, column: 40, scope: !298)
!394 = !DILocation(line: 368, column: 5, scope: !298)
!395 = !DILocation(line: 370, column: 38, scope: !396)
!396 = distinct !DILexicalBlock(scope: !298, file: !3, line: 370, column: 9)
!397 = !DILocation(line: 370, column: 19, scope: !396)
!398 = !DILocation(line: 370, column: 72, scope: !396)
!399 = !DILocation(line: 370, column: 9, scope: !298)
!400 = !DILocation(line: 352, column: 16, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 351, column: 33)
!402 = distinct !DILexicalBlock(scope: !312, file: !3, line: 351, column: 5)
!403 = !DILocation(line: 352, column: 13, scope: !401)
!404 = !DILocation(line: 351, column: 28, scope: !402)
!405 = !DILocation(line: 351, column: 23, scope: !402)
!406 = distinct !{!406, !355, !407, !165, !166}
!407 = !DILocation(line: 353, column: 5, scope: !312)
!408 = !DILocation(line: 370, column: 84, scope: !409)
!409 = distinct !DILexicalBlock(scope: !396, file: !3, line: 370, column: 84)
!410 = !DILocation(line: 373, column: 19, scope: !411)
!411 = distinct !DILexicalBlock(scope: !298, file: !3, line: 373, column: 9)
!412 = !DILocation(line: 373, column: 53, scope: !411)
!413 = !DILocation(line: 373, column: 9, scope: !298)
!414 = !DILocation(line: 373, column: 65, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !3, line: 373, column: 65)
!416 = !DILocation(line: 376, column: 5, scope: !298)
!417 = !DILocation(line: 379, column: 1, scope: !298)
!418 = !DILocation(line: 378, column: 5, scope: !298)
!419 = !DISubprogram(name: "PAPI_library_init", scope: !176, file: !176, line: 1172, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!420 = !DISubprogram(name: "PAPI_create_eventset", scope: !176, file: !176, line: 1147, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!421 = !DISubroutineType(types: !422)
!422 = !{!6, !5}
!423 = !DISubprogram(name: "PAPI_add_events", scope: !176, file: !176, line: 1143, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!424 = !DISubroutineType(types: !425)
!425 = !{!6, !6, !5, !6}
!426 = !DISubprogram(name: "srand", scope: !427, file: !427, line: 455, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!427 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!431 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!432 = !DISubroutineType(types: !433)
!433 = !{!434, !436}
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !435, line: 7, baseType: !69)
!435 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!437 = !DISubprogram(name: "rand", scope: !427, file: !427, line: 453, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!438 = !DISubprogram(name: "PAPI_remove_events", scope: !176, file: !176, line: 1192, type: !424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!439 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !176, file: !176, line: 1149, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!440 = !DISubprogram(name: "PAPI_shutdown", scope: !176, file: !176, line: 1202, type: !441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!441 = !DISubroutineType(types: !442)
!442 = !{null}
