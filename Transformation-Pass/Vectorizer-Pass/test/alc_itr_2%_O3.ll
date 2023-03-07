; ModuleID = 'alc_itr_2%.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.St = type { [5000000 x i32], [5000000 x i32] }
%struct.timespec = type { i64, i64 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local global [8 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [8 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602, i32 -2147483614, i32 -2147483591, i32 -2147483630, i32 -2147483609], align 4, !dbg !17
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
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions_executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Total program_cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Total cycles for memory_stall ops: %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"Total cycles for any resource_stall: %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Total FPU idle cycles: %lld\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Total Cycles with no_instructions executed: %lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@s = dso_local local_unnamed_addr global %struct.St zeroinitializer, align 4, !dbg !26
@arr2D = dso_local local_unnamed_addr global [3 x [5000000 x i32]] zeroinitializer, align 4, !dbg !35
@str.15 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

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
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 48) #14, !dbg !128
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
  %18 = load <vscale x 4 x i8>, ptr %cond, align 4
  %19 = icmp ne <vscale x 4 x i8> %18, zeroinitializer
  %20 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %19, <vscale x 4 x i1> %19)
  %21 = trunc i64 %20 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %101, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %15, %pre.alc ], [ %98, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %19, %pre.alc ], [ %99, %new.latch ]
  %uniform.vec.actives = phi i32 [ %21, %pre.alc ], [ %100, %new.latch ]
  %22 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %23 = sext i32 %vector.loop.index to i64, !dbg !137
  %24 = getelementptr inbounds i8, ptr %cond, i64 %23, !dbg !137
  %25 = load <vscale x 4 x i8>, ptr %24, align 4
  %26 = icmp ne <vscale x 4 x i8> %25, zeroinitializer
  %27 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %26, <vscale x 4 x i1> %26)
  %28 = trunc i64 %27 to i32
  %29 = add i32 %uniform.vec.actives, %28
  %condition.not = icmp ugt i32 %29, %2
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %30 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %31 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %22)
  %32 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %32, <vscale x 4 x i32> %30, <vscale x 4 x i32> %31)
  %34 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %29)
  %35 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %34, <vscale x 4 x i1> %34)
  %36 = trunc i64 %35 to i32
  %37 = icmp ult i32 %29, %2
  br i1 %37, label %new.latch, label %uniform.block

linearized:                                       ; preds = %alc.header
  %38 = getelementptr inbounds i32, ptr %a, i64 %23, !dbg !144
  %39 = getelementptr inbounds i32, ptr %c, i64 %23, !dbg !146
  %40 = getelementptr inbounds i32, ptr %b, i64 %23, !dbg !147
  %41 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %39, i32 16, <vscale x 4 x i1> %26, <vscale x 4 x i32> undef)
  %42 = tail call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %40, i32 16, <vscale x 4 x i1> %26, <vscale x 4 x i32> undef)
  %43 = mul <vscale x 4 x i32> %42, %22
  %44 = mul <vscale x 4 x i32> %41, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %45 = shl <vscale x 4 x i32> %22, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %46 = add <vscale x 4 x i32> %42, %45
  %47 = add <vscale x 4 x i32> %46, %44
  %48 = add <vscale x 4 x i32> %47, %43
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %48, ptr %38, i32 16, <vscale x 4 x i1> %26)
  %49 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %41
  %50 = mul <vscale x 4 x i32> %49, %22
  %51 = add <vscale x 4 x i32> %42, %41
  %52 = sub <vscale x 4 x i32> %48, %51
  %53 = shl <vscale x 4 x i32> %52, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %54 = add <vscale x 4 x i32> %50, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %55 = add <vscale x 4 x i32> %54, %53
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %55, ptr %40, i32 16, <vscale x 4 x i1> %26)
  %56 = sub <vscale x 4 x i32> %41, %55
  %57 = shl <vscale x 4 x i32> %56, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %58 = mul <vscale x 4 x i32> %22, %22
  %59 = add <vscale x 4 x i32> %57, %58
  %60 = mul <vscale x 4 x i32> %59, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %61 = sub <vscale x 4 x i32> %48, %22
  %62 = add <vscale x 4 x i32> %61, %55
  %63 = shl <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = add <vscale x 4 x i32> %60, %63
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %64, ptr %39, i32 16, <vscale x 4 x i1> %26)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %65 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %c, <vscale x 4 x i32> %33)
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %b, <vscale x 4 x i32> %33)
  %67 = mul <vscale x 4 x i32> %66, %33
  %68 = mul <vscale x 4 x i32> %65, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %69 = shl <vscale x 4 x i32> %33, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %70 = add <vscale x 4 x i32> %66, %69
  %71 = add <vscale x 4 x i32> %70, %68
  %72 = add <vscale x 4 x i32> %71, %67
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %72, <vscale x 4 x i1> %14, ptr %a, <vscale x 4 x i32> %33)
  %73 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %65
  %74 = mul <vscale x 4 x i32> %73, %33
  %75 = add <vscale x 4 x i32> %66, %65
  %76 = sub <vscale x 4 x i32> %72, %75
  %77 = shl <vscale x 4 x i32> %76, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %78 = add <vscale x 4 x i32> %74, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %79 = add <vscale x 4 x i32> %78, %77
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %79, <vscale x 4 x i1> %14, ptr %b, <vscale x 4 x i32> %33)
  %80 = sub <vscale x 4 x i32> %65, %79
  %81 = shl <vscale x 4 x i32> %80, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %82 = mul <vscale x 4 x i32> %33, %33
  %83 = add <vscale x 4 x i32> %81, %82
  %84 = mul <vscale x 4 x i32> %83, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %85 = sub <vscale x 4 x i32> %72, %33
  %86 = add <vscale x 4 x i32> %85, %79
  %87 = shl <vscale x 4 x i32> %86, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %88 = add <vscale x 4 x i32> %84, %87
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %88, <vscale x 4 x i1> %14, ptr %c, <vscale x 4 x i32> %33)
  %89 = add i32 %vector.loop.index, %2
  %90 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %89, i32 1)
  %91 = sext i32 %89 to i64, !dbg !137
  %92 = getelementptr inbounds i8, ptr %cond, i64 %91, !dbg !137
  %93 = load <vscale x 4 x i8>, ptr %92, align 4
  %94 = icmp ne <vscale x 4 x i8> %93, zeroinitializer
  %95 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %94, <vscale x 4 x i1> %94)
  %96 = trunc i64 %95 to i32
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %97 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %89, %uniform.block ]
  %98 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %33, %lane.gather ], [ %90, %uniform.block ]
  %99 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %34, %lane.gather ], [ %94, %uniform.block ]
  %100 = phi i32 [ %uniform.vec.actives, %linearized ], [ %36, %lane.gather ], [ %96, %uniform.block ]
  %101 = add i32 %97, %2
  %.not4 = icmp ult i32 %101, %total.iterations.to.be.vectorized
  br i1 %.not4, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition5 = icmp eq i32 %17, 0
  %102 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %99, ptr %c, <vscale x 4 x i32> %98)
  %103 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %99, ptr %b, <vscale x 4 x i32> %98)
  %104 = mul <vscale x 4 x i32> %103, %98
  %105 = mul <vscale x 4 x i32> %102, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %106 = shl <vscale x 4 x i32> %98, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %107 = add <vscale x 4 x i32> %103, %106
  %108 = add <vscale x 4 x i32> %107, %105
  %109 = add <vscale x 4 x i32> %108, %104
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %109, <vscale x 4 x i1> %99, ptr %a, <vscale x 4 x i32> %98)
  %110 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %102
  %111 = mul <vscale x 4 x i32> %110, %98
  %112 = add <vscale x 4 x i32> %103, %102
  %113 = sub <vscale x 4 x i32> %109, %112
  %114 = shl <vscale x 4 x i32> %113, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %115 = add <vscale x 4 x i32> %111, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %116 = add <vscale x 4 x i32> %115, %114
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %116, <vscale x 4 x i1> %99, ptr %b, <vscale x 4 x i32> %98)
  %117 = sub <vscale x 4 x i32> %102, %116
  %118 = shl <vscale x 4 x i32> %117, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %119 = mul <vscale x 4 x i32> %98, %98
  %120 = add <vscale x 4 x i32> %118, %119
  %121 = mul <vscale x 4 x i32> %120, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %122 = sub <vscale x 4 x i32> %109, %98
  %123 = add <vscale x 4 x i32> %122, %116
  %124 = shl <vscale x 4 x i32> %123, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %125 = add <vscale x 4 x i32> %121, %124
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %125, <vscale x 4 x i1> %99, ptr %c, <vscale x 4 x i32> %98)
  %126 = zext i32 %101 to i64
  br i1 %condition5, label %for.cond.cleanup, label %for.body.preheader28

for.body.preheader28:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %126, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !127

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !113, metadata !DIExpression()), !dbg !124
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !125
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !127, !llvm.loop !163

if.then75:                                        ; preds = %for.cond.cleanup
  %127 = load ptr, ptr @stderr, align 8, !dbg !167, !tbaa !130
  %call76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str, i32 noundef %call73, ptr noundef nonnull @.str.1, i32 noundef 64) #14, !dbg !167
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
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !187, metadata !DIExpression()), !dbg !189
  %conv = sext i32 %n to i64, !dbg !190
  %mul = shl nsw i64 %conv, 2, !dbg !191
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !192
  call void @llvm.dbg.value(metadata ptr %call, metadata !188, metadata !DIExpression()), !dbg !189
  %cmp = icmp eq ptr %call, null, !dbg !193
  br i1 %cmp, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !196
  tail call void @exit(i32 noundef 1) #15, !dbg !198
  unreachable, !dbg !198

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !199
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !200 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !204, metadata !DIExpression()), !dbg !206
  %conv = sext i32 %n to i64, !dbg !207
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !208
  call void @llvm.dbg.value(metadata ptr %call, metadata !205, metadata !DIExpression()), !dbg !206
  %cmp = icmp eq ptr %call, null, !dbg !209
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.15), !dbg !212
  tail call void @exit(i32 noundef 1) #15, !dbg !214
  unreachable, !dbg !214

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !215
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !216 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !221, metadata !DIExpression()), !dbg !232
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !233
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !235
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !236

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !237, !tbaa !130
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !239
  call void @exit(i32 noundef 1) #15, !dbg !240
  unreachable, !dbg !240

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !241
  call void @llvm.dbg.value(metadata i32 %call2, metadata !220, metadata !DIExpression()), !dbg !243
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !244
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !245

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !246, !tbaa !130
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 318) #14, !dbg !246
  tail call void @exit(i32 noundef %call2) #15, !dbg !246
  unreachable, !dbg !246

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !248, !tbaa !119
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 8) #13, !dbg !250
  call void @llvm.dbg.value(metadata i32 %call7, metadata !220, metadata !DIExpression()), !dbg !243
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !251
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !252

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !253, !tbaa !130
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 321) #14, !dbg !253
  tail call void @exit(i32 noundef %call7) #15, !dbg !253
  unreachable, !dbg !253

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !255
  store ptr %call12, ptr @a, align 8, !dbg !256, !tbaa !130
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !257
  store ptr %call13, ptr @b, align 8, !dbg !258, !tbaa !130
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !259
  store ptr %call14, ptr @c, align 8, !dbg !260, !tbaa !130
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !261
  store ptr %call15, ptr @cond, align 8, !dbg !262, !tbaa !130
  store i8 0, ptr %call15, align 1, !dbg !263, !tbaa !140
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !264
  %conv = trunc i64 %call16 to i32, !dbg !264
  tail call void @srand(i32 noundef %conv) #13, !dbg !265
  call void @llvm.dbg.value(metadata i32 1, metadata !226, metadata !DIExpression()), !dbg !266
  br label %for.body, !dbg !267

for.cond.cleanup:                                 ; preds = %for.body
  %4 = load ptr, ptr @a, align 8, !dbg !268, !tbaa !130
  %5 = load ptr, ptr @b, align 8, !dbg !269, !tbaa !130
  %6 = load ptr, ptr @c, align 8, !dbg !270, !tbaa !130
  tail call void @simple_if(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %11, i32 noundef 5000000), !dbg !271
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !272
  %7 = load ptr, ptr @c, align 8, !tbaa !130
  call void @llvm.dbg.value(metadata i32 0, metadata !229, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()), !dbg !243
  br label %for.body34, !dbg !273

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !226, metadata !DIExpression()), !dbg !266
  %8 = load ptr, ptr @a, align 8, !dbg !274, !tbaa !130
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !274
  store i32 1, ptr %arrayidx19, align 4, !dbg !277, !tbaa !119
  %9 = load ptr, ptr @b, align 8, !dbg !278, !tbaa !130
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !278
  store i32 -1, ptr %arrayidx21, align 4, !dbg !279, !tbaa !119
  %10 = load ptr, ptr @c, align 8, !dbg !280, !tbaa !130
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !280
  store i32 0, ptr %arrayidx23, align 4, !dbg !281, !tbaa !119
  %call24 = tail call i32 @rand() #13, !dbg !282
  %rem = srem i32 %call24, 50, !dbg !283
  %cmp25 = icmp eq i32 %rem, 0, !dbg !284
  %11 = load ptr, ptr @cond, align 8, !dbg !285, !tbaa !130
  %arrayidx28 = getelementptr inbounds i8, ptr %11, i64 %indvars.iv, !dbg !285
  %frombool = zext i1 %cmp25 to i8, !dbg !286
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !286, !tbaa !140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !287
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !226, metadata !DIExpression()), !dbg !266
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !288
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !267, !llvm.loop !289

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !291
  %putchar = tail call i32 @putchar(i32 10), !dbg !292
  %12 = load ptr, ptr @a, align 8, !dbg !293, !tbaa !130
  tail call void @free(ptr noundef %12) #13, !dbg !294
  %13 = load ptr, ptr @b, align 8, !dbg !295, !tbaa !130
  tail call void @free(ptr noundef %13) #13, !dbg !296
  %14 = load ptr, ptr @c, align 8, !dbg !297, !tbaa !130
  tail call void @free(ptr noundef %14) #13, !dbg !298
  %15 = load ptr, ptr @cond, align 8, !dbg !299, !tbaa !130
  tail call void @free(ptr noundef %15) #13, !dbg !300
  %16 = load i64, ptr @CounterValues, align 8, !dbg !301, !tbaa !302
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %16), !dbg !304
  %17 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !305, !tbaa !302
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %17), !dbg !306
  %18 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !307, !tbaa !302
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %18), !dbg !308
  %19 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !309, !tbaa !302
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %19), !dbg !310
  %20 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 4), align 8, !dbg !311, !tbaa !302
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %20), !dbg !312
  %21 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 5), align 8, !dbg !313, !tbaa !302
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, i64 noundef %21), !dbg !314
  %22 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 6), align 8, !dbg !315, !tbaa !302
  %call48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i64 noundef %22), !dbg !316
  %23 = load i64, ptr getelementptr inbounds ([8 x i64], ptr @CounterValues, i64 0, i64 7), align 8, !dbg !317, !tbaa !302
  %call49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.13, i64 noundef %23), !dbg !318
  %24 = load double, ptr @ExecutionTime, align 8, !dbg !319, !tbaa !172
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.14, double noundef %24), !dbg !320
  %25 = load i32, ptr @EventSet, align 4, !dbg !321, !tbaa !119
  %call51 = tail call i32 @PAPI_remove_events(i32 noundef %25, ptr noundef nonnull @EventCodes, i32 noundef 8) #13, !dbg !323
  call void @llvm.dbg.value(metadata i32 %call51, metadata !220, metadata !DIExpression()), !dbg !243
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !324
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !325

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv82 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next83, %for.body34 ]
  %sum.079 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv82, metadata !229, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.value(metadata i32 %sum.079, metadata !228, metadata !DIExpression()), !dbg !243
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv82, !dbg !326
  %26 = load i32, ptr %arrayidx36, align 4, !dbg !326, !tbaa !119
  %add = add nsw i32 %26, %sum.079, !dbg !329
  call void @llvm.dbg.value(metadata i32 %add, metadata !228, metadata !DIExpression()), !dbg !243
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !330
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next83, metadata !229, metadata !DIExpression()), !dbg !272
  %exitcond85.not = icmp eq i64 %indvars.iv.next83, 5000000, !dbg !331
  br i1 %exitcond85.not, label %for.cond.cleanup33, label %for.body34, !dbg !273, !llvm.loop !332

if.then54:                                        ; preds = %for.cond.cleanup33
  %27 = load ptr, ptr @stderr, align 8, !dbg !334, !tbaa !130
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 375) #14, !dbg !334
  tail call void @exit(i32 noundef %call51) #15, !dbg !334
  unreachable, !dbg !334

if.end56:                                         ; preds = %for.cond.cleanup33
  %call57 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !336
  call void @llvm.dbg.value(metadata i32 %call57, metadata !220, metadata !DIExpression()), !dbg !243
  %cmp58.not = icmp eq i32 %call57, 0, !dbg !338
  br i1 %cmp58.not, label %if.end62, label %if.then60, !dbg !339

if.then60:                                        ; preds = %if.end56
  %28 = load ptr, ptr @stderr, align 8, !dbg !340, !tbaa !130
  %call61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str, i32 noundef %call57, ptr noundef nonnull @.str.1, i32 noundef 378) #14, !dbg !340
  tail call void @exit(i32 noundef %call57) #15, !dbg !340
  unreachable, !dbg !340

if.end62:                                         ; preds = %if.end56
  tail call void @PAPI_shutdown() #13, !dbg !342
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !343
  ret i32 0, !dbg !344
}

declare !dbg !345 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !346 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !349 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !352 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !357 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !363 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !364 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !365 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !366 void @PAPI_shutdown() local_unnamed_addr #4

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
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "66c330c6081bcf7612add9c0e4e51f7c")
!4 = !{!5, !7, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!10 = !{!0, !11, !17, !20, !23, !26, !35, !40, !42, !44, !46}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CounterValues", scope: !2, file: !3, line: 24, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 512, elements: !15)
!14 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 8)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "EventCodes", scope: !2, file: !3, line: 26, type: !19, isLocal: false, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !15)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "ExecutionTime", scope: !2, file: !3, line: 28, type: !22, isLocal: false, isDefinition: true)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 31, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "s", scope: !2, file: !3, line: 38, type: !28, isLocal: false, isDefinition: true)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "St", file: !3, line: 33, size: 320000000, elements: !29)
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "array1", scope: !28, file: !3, line: 34, baseType: !31, size: 160000000)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160000000, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 5000000)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "array2", scope: !28, file: !3, line: 35, baseType: !31, size: 160000000, offset: 160000000)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "arr2D", scope: !2, file: !3, line: 39, type: !37, isLocal: false, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 480000000, elements: !38)
!38 = !{!39, !33}
!39 = !DISubrange(count: 3)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 286, type: !5, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 287, type: !5, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 288, type: !8, isLocal: false, isDefinition: true)
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
!100 = distinct !DISubprogram(name: "simple_if", scope: !3, file: !3, line: 41, type: !101, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !103, !104, !6}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113}
!106 = !DILocalVariable(name: "a", arg: 1, scope: !100, file: !3, line: 41, type: !103)
!107 = !DILocalVariable(name: "b", arg: 2, scope: !100, file: !3, line: 41, type: !103)
!108 = !DILocalVariable(name: "c", arg: 3, scope: !100, file: !3, line: 41, type: !103)
!109 = !DILocalVariable(name: "cond", arg: 4, scope: !100, file: !3, line: 42, type: !104)
!110 = !DILocalVariable(name: "n", arg: 5, scope: !100, file: !3, line: 42, type: !6)
!111 = !DILocalVariable(name: "status", scope: !100, file: !3, line: 44, type: !6)
!112 = !DILocalVariable(name: "t", scope: !100, file: !3, line: 46, type: !22)
!113 = !DILocalVariable(name: "i", scope: !114, file: !3, line: 51, type: !6)
!114 = distinct !DILexicalBlock(scope: !100, file: !3, line: 51, column: 5)
!115 = !DILocation(line: 0, scope: !100)
!116 = !DILocation(line: 46, column: 16, scope: !100)
!117 = !DILocation(line: 48, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !100, file: !3, line: 48, column: 9)
!119 = !{!120, !120, i64 0}
!120 = !{!"int", !81, i64 0}
!121 = !DILocation(line: 48, column: 19, scope: !118)
!122 = !DILocation(line: 48, column: 41, scope: !118)
!123 = !DILocation(line: 48, column: 9, scope: !100)
!124 = !DILocation(line: 0, scope: !114)
!125 = !DILocation(line: 51, column: 23, scope: !126)
!126 = distinct !DILexicalBlock(scope: !114, file: !3, line: 51, column: 5)
!127 = !DILocation(line: 51, column: 5, scope: !114)
!128 = !DILocation(line: 48, column: 53, scope: !129)
!129 = distinct !DILexicalBlock(scope: !118, file: !3, line: 48, column: 53)
!130 = !{!131, !131, i64 0}
!131 = !{!"any pointer", !81, i64 0}
!132 = !DILocation(line: 64, column: 29, scope: !133)
!133 = distinct !DILexicalBlock(scope: !100, file: !3, line: 64, column: 9)
!134 = !DILocation(line: 64, column: 19, scope: !133)
!135 = !DILocation(line: 64, column: 55, scope: !133)
!136 = !DILocation(line: 64, column: 9, scope: !100)
!137 = !DILocation(line: 52, column: 13, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 52, column: 13)
!139 = distinct !DILexicalBlock(scope: !126, file: !3, line: 51, column: 33)
!140 = !{!141, !141, i64 0}
!141 = !{!"_Bool", !81, i64 0}
!142 = !{i8 0, i8 2}
!143 = !DILocation(line: 52, column: 13, scope: !139)
!144 = !DILocation(line: 53, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !138, file: !3, line: 52, column: 22)
!146 = !DILocation(line: 53, column: 36, scope: !145)
!147 = !DILocation(line: 53, column: 45, scope: !145)
!148 = !DILocation(line: 54, column: 31, scope: !145)
!149 = !DILocation(line: 53, column: 42, scope: !145)
!150 = !DILocation(line: 54, column: 18, scope: !145)
!151 = !DILocation(line: 56, column: 27, scope: !145)
!152 = !DILocation(line: 55, column: 33, scope: !145)
!153 = !DILocation(line: 56, column: 18, scope: !145)
!154 = !DILocation(line: 57, column: 56, scope: !145)
!155 = !DILocation(line: 57, column: 71, scope: !145)
!156 = !DILocation(line: 57, column: 67, scope: !145)
!157 = !DILocation(line: 57, column: 44, scope: !145)
!158 = !DILocation(line: 57, column: 29, scope: !145)
!159 = !DILocation(line: 57, column: 40, scope: !145)
!160 = !DILocation(line: 58, column: 18, scope: !145)
!161 = !DILocation(line: 59, column: 9, scope: !145)
!162 = !DILocation(line: 51, column: 28, scope: !126)
!163 = distinct !{!163, !127, !164, !165, !166}
!164 = !DILocation(line: 60, column: 5, scope: !114)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !DILocation(line: 64, column: 67, scope: !168)
!168 = distinct !DILexicalBlock(scope: !133, file: !3, line: 64, column: 67)
!169 = !DILocation(line: 66, column: 21, scope: !100)
!170 = !DILocation(line: 66, column: 42, scope: !100)
!171 = !DILocation(line: 66, column: 19, scope: !100)
!172 = !{!173, !173, i64 0}
!173 = !{!"double", !81, i64 0}
!174 = !DILocation(line: 67, column: 1, scope: !100)
!175 = !DISubprogram(name: "PAPI_start", scope: !176, file: !176, line: 1204, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!176 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !6}
!179 = !DISubprogram(name: "PAPI_stop", scope: !176, file: !176, line: 1206, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!180 = !DISubroutineType(types: !181)
!181 = !{!6, !6, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!183 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 290, type: !184, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !6}
!186 = !{!187, !188}
!187 = !DILocalVariable(name: "n", arg: 1, scope: !183, file: !3, line: 290, type: !6)
!188 = !DILocalVariable(name: "ptr", scope: !183, file: !3, line: 291, type: !5)
!189 = !DILocation(line: 0, scope: !183)
!190 = !DILocation(line: 291, column: 45, scope: !183)
!191 = !DILocation(line: 291, column: 43, scope: !183)
!192 = !DILocation(line: 291, column: 24, scope: !183)
!193 = !DILocation(line: 292, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !183, file: !3, line: 292, column: 9)
!195 = !DILocation(line: 292, column: 9, scope: !183)
!196 = !DILocation(line: 293, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !3, line: 292, column: 22)
!198 = !DILocation(line: 294, column: 9, scope: !197)
!199 = !DILocation(line: 296, column: 5, scope: !183)
!200 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 299, type: !201, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !203)
!201 = !DISubroutineType(types: !202)
!202 = !{!8, !6}
!203 = !{!204, !205}
!204 = !DILocalVariable(name: "n", arg: 1, scope: !200, file: !3, line: 299, type: !6)
!205 = !DILocalVariable(name: "ptr", scope: !200, file: !3, line: 300, type: !8)
!206 = !DILocation(line: 0, scope: !200)
!207 = !DILocation(line: 300, column: 48, scope: !200)
!208 = !DILocation(line: 300, column: 26, scope: !200)
!209 = !DILocation(line: 301, column: 13, scope: !210)
!210 = distinct !DILexicalBlock(scope: !200, file: !3, line: 301, column: 9)
!211 = !DILocation(line: 301, column: 9, scope: !200)
!212 = !DILocation(line: 302, column: 9, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !3, line: 301, column: 22)
!214 = !DILocation(line: 303, column: 9, scope: !213)
!215 = !DILocation(line: 305, column: 5, scope: !200)
!216 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 308, type: !217, scopeLine: 308, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!6}
!219 = !{!220, !221, !226, !228, !229}
!220 = !DILocalVariable(name: "status", scope: !216, file: !3, line: 309, type: !6)
!221 = !DILocalVariable(name: "errstring", scope: !216, file: !3, line: 310, type: !222)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 1024, elements: !224)
!223 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!224 = !{!225}
!225 = !DISubrange(count: 128)
!226 = !DILocalVariable(name: "i", scope: !227, file: !3, line: 334, type: !6)
!227 = distinct !DILexicalBlock(scope: !216, file: !3, line: 334, column: 5)
!228 = !DILocalVariable(name: "sum", scope: !216, file: !3, line: 350, type: !6)
!229 = !DILocalVariable(name: "i", scope: !230, file: !3, line: 352, type: !6)
!230 = distinct !DILexicalBlock(scope: !216, file: !3, line: 352, column: 5)
!231 = !DILocation(line: 310, column: 5, scope: !216)
!232 = !DILocation(line: 310, column: 10, scope: !216)
!233 = !DILocation(line: 312, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !216, file: !3, line: 312, column: 9)
!235 = !DILocation(line: 312, column: 45, scope: !234)
!236 = !DILocation(line: 312, column: 9, scope: !216)
!237 = !DILocation(line: 313, column: 17, scope: !238)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 312, column: 66)
!239 = !DILocation(line: 313, column: 9, scope: !238)
!240 = !DILocation(line: 314, column: 9, scope: !238)
!241 = !DILocation(line: 318, column: 19, scope: !242)
!242 = distinct !DILexicalBlock(scope: !216, file: !3, line: 318, column: 9)
!243 = !DILocation(line: 0, scope: !216)
!244 = !DILocation(line: 318, column: 52, scope: !242)
!245 = !DILocation(line: 318, column: 9, scope: !216)
!246 = !DILocation(line: 318, column: 64, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !3, line: 318, column: 64)
!248 = !DILocation(line: 321, column: 35, scope: !249)
!249 = distinct !DILexicalBlock(scope: !216, file: !3, line: 321, column: 9)
!250 = !DILocation(line: 321, column: 19, scope: !249)
!251 = !DILocation(line: 321, column: 69, scope: !249)
!252 = !DILocation(line: 321, column: 9, scope: !216)
!253 = !DILocation(line: 321, column: 81, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !3, line: 321, column: 81)
!255 = !DILocation(line: 324, column: 9, scope: !216)
!256 = !DILocation(line: 324, column: 7, scope: !216)
!257 = !DILocation(line: 325, column: 9, scope: !216)
!258 = !DILocation(line: 325, column: 7, scope: !216)
!259 = !DILocation(line: 326, column: 9, scope: !216)
!260 = !DILocation(line: 326, column: 7, scope: !216)
!261 = !DILocation(line: 327, column: 12, scope: !216)
!262 = !DILocation(line: 327, column: 10, scope: !216)
!263 = !DILocation(line: 329, column: 13, scope: !216)
!264 = !DILocation(line: 331, column: 11, scope: !216)
!265 = !DILocation(line: 331, column: 5, scope: !216)
!266 = !DILocation(line: 0, scope: !227)
!267 = !DILocation(line: 334, column: 5, scope: !227)
!268 = !DILocation(line: 346, column: 15, scope: !216)
!269 = !DILocation(line: 346, column: 18, scope: !216)
!270 = !DILocation(line: 346, column: 21, scope: !216)
!271 = !DILocation(line: 346, column: 5, scope: !216)
!272 = !DILocation(line: 0, scope: !230)
!273 = !DILocation(line: 352, column: 5, scope: !230)
!274 = !DILocation(line: 335, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 334, column: 33)
!276 = distinct !DILexicalBlock(scope: !227, file: !3, line: 334, column: 5)
!277 = !DILocation(line: 335, column: 14, scope: !275)
!278 = !DILocation(line: 336, column: 9, scope: !275)
!279 = !DILocation(line: 336, column: 14, scope: !275)
!280 = !DILocation(line: 337, column: 9, scope: !275)
!281 = !DILocation(line: 337, column: 14, scope: !275)
!282 = !DILocation(line: 342, column: 20, scope: !275)
!283 = !DILocation(line: 342, column: 27, scope: !275)
!284 = !DILocation(line: 342, column: 33, scope: !275)
!285 = !DILocation(line: 342, column: 9, scope: !275)
!286 = !DILocation(line: 342, column: 17, scope: !275)
!287 = !DILocation(line: 334, column: 28, scope: !276)
!288 = !DILocation(line: 334, column: 23, scope: !276)
!289 = distinct !{!289, !267, !290, !165, !166}
!290 = !DILocation(line: 343, column: 5, scope: !227)
!291 = !DILocation(line: 357, column: 5, scope: !216)
!292 = !DILocation(line: 358, column: 5, scope: !216)
!293 = !DILocation(line: 360, column: 10, scope: !216)
!294 = !DILocation(line: 360, column: 5, scope: !216)
!295 = !DILocation(line: 361, column: 10, scope: !216)
!296 = !DILocation(line: 361, column: 5, scope: !216)
!297 = !DILocation(line: 362, column: 10, scope: !216)
!298 = !DILocation(line: 362, column: 5, scope: !216)
!299 = !DILocation(line: 363, column: 10, scope: !216)
!300 = !DILocation(line: 363, column: 5, scope: !216)
!301 = !DILocation(line: 365, column: 53, scope: !216)
!302 = !{!303, !303, i64 0}
!303 = !{!"long long", !81, i64 0}
!304 = !DILocation(line: 365, column: 5, scope: !216)
!305 = !DILocation(line: 366, column: 44, scope: !216)
!306 = !DILocation(line: 366, column: 5, scope: !216)
!307 = !DILocation(line: 367, column: 50, scope: !216)
!308 = !DILocation(line: 367, column: 5, scope: !216)
!309 = !DILocation(line: 368, column: 49, scope: !216)
!310 = !DILocation(line: 368, column: 5, scope: !216)
!311 = !DILocation(line: 369, column: 57, scope: !216)
!312 = !DILocation(line: 369, column: 5, scope: !216)
!313 = !DILocation(line: 370, column: 59, scope: !216)
!314 = !DILocation(line: 370, column: 5, scope: !216)
!315 = !DILocation(line: 371, column: 45, scope: !216)
!316 = !DILocation(line: 371, column: 5, scope: !216)
!317 = !DILocation(line: 372, column: 66, scope: !216)
!318 = !DILocation(line: 372, column: 5, scope: !216)
!319 = !DILocation(line: 373, column: 40, scope: !216)
!320 = !DILocation(line: 373, column: 5, scope: !216)
!321 = !DILocation(line: 375, column: 38, scope: !322)
!322 = distinct !DILexicalBlock(scope: !216, file: !3, line: 375, column: 9)
!323 = !DILocation(line: 375, column: 19, scope: !322)
!324 = !DILocation(line: 375, column: 72, scope: !322)
!325 = !DILocation(line: 375, column: 9, scope: !216)
!326 = !DILocation(line: 353, column: 16, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 352, column: 33)
!328 = distinct !DILexicalBlock(scope: !230, file: !3, line: 352, column: 5)
!329 = !DILocation(line: 353, column: 13, scope: !327)
!330 = !DILocation(line: 352, column: 28, scope: !328)
!331 = !DILocation(line: 352, column: 23, scope: !328)
!332 = distinct !{!332, !273, !333, !165, !166}
!333 = !DILocation(line: 354, column: 5, scope: !230)
!334 = !DILocation(line: 375, column: 84, scope: !335)
!335 = distinct !DILexicalBlock(scope: !322, file: !3, line: 375, column: 84)
!336 = !DILocation(line: 378, column: 19, scope: !337)
!337 = distinct !DILexicalBlock(scope: !216, file: !3, line: 378, column: 9)
!338 = !DILocation(line: 378, column: 53, scope: !337)
!339 = !DILocation(line: 378, column: 9, scope: !216)
!340 = !DILocation(line: 378, column: 65, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 378, column: 65)
!342 = !DILocation(line: 381, column: 5, scope: !216)
!343 = !DILocation(line: 384, column: 1, scope: !216)
!344 = !DILocation(line: 383, column: 5, scope: !216)
!345 = !DISubprogram(name: "PAPI_library_init", scope: !176, file: !176, line: 1172, type: !177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!346 = !DISubprogram(name: "PAPI_create_eventset", scope: !176, file: !176, line: 1147, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!347 = !DISubroutineType(types: !348)
!348 = !{!6, !5}
!349 = !DISubprogram(name: "PAPI_add_events", scope: !176, file: !176, line: 1143, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!350 = !DISubroutineType(types: !351)
!351 = !{!6, !6, !5, !6}
!352 = !DISubprogram(name: "srand", scope: !353, file: !353, line: 455, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!353 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!354 = !DISubroutineType(types: !355)
!355 = !{null, !356}
!356 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!357 = !DISubprogram(name: "time", scope: !92, file: !92, line: 75, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!358 = !DISubroutineType(types: !359)
!359 = !{!360, !362}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !361, line: 7, baseType: !69)
!361 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!363 = !DISubprogram(name: "rand", scope: !353, file: !353, line: 453, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!364 = !DISubprogram(name: "PAPI_remove_events", scope: !176, file: !176, line: 1192, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!365 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !176, file: !176, line: 1149, type: !347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!366 = !DISubprogram(name: "PAPI_shutdown", scope: !176, file: !176, line: 1202, type: !367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !99)
!367 = !DISubroutineType(types: !368)
!368 = !{null}
