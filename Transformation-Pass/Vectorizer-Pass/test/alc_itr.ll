; ModuleID = 'scalar_code.ll'
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
@.str.4 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1

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
define dso_local void @simple_if_else(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %cmp3141 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp3141, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  %1 = call i32 @llvm.vscale.i32(), !dbg !110
  %2 = mul i32 %1, 4, !dbg !110
  %3 = mul i32 %2, 2, !dbg !110
  %4 = icmp uge i32 %n, %3, !dbg !110
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !110

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup.loopexit:                        ; preds = %for.inc
  br label %for.cond.cleanup, !dbg !115

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call79 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call79, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp80.not = icmp eq i32 %call79, 0, !dbg !118
  br i1 %cmp80.not, label %if.end83, label %if.then81, !dbg !119

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %16, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %7 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %7, 0, !dbg !120
  %arrayidx70 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !126
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !127

if.then4:                                         ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !128
  %8 = load i32, ptr %arrayidx8, align 4, !dbg !128, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %9 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %mul21136 = add i32 %9, 2, !dbg !131
  %10 = trunc i64 %indvars.iv to i32, !dbg !131
  %add22 = mul i32 %mul21136, %10, !dbg !131
  %.neg = mul i32 %8, -2
  %add = add i32 %add22, %9, !dbg !132
  %add25 = add i32 %add, %.neg, !dbg !133
  store i32 %add25, ptr %arrayidx70, align 4, !dbg !133, !tbaa !102
  %mul43137.neg = sub i32 -3, %8, !dbg !134
  %add44.neg144 = mul i32 %mul43137.neg, %10, !dbg !134
  %11 = add i32 %8, %9
  %reass.add139 = sub i32 %add25, %11
  %reass.mul140 = shl i32 %reass.add139, 1
  %add37 = add i32 %add44.neg144, 2, !dbg !135
  %sub47 = add i32 %add37, %reass.mul140, !dbg !136
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !136, !tbaa !102
  %12 = add nsw i32 %sub47, %add25, !dbg !137
  %add54 = shl nsw i32 %12, 1, !dbg !137
  %13 = sub nsw i32 %8, %sub47, !dbg !138
  %sub61 = shl nsw i32 %13, 1, !dbg !138
  %mul62 = mul nsw i32 %10, %10, !dbg !139
  %add63 = add nsw i32 %sub61, %mul62, !dbg !140
  %mul64.neg = mul i32 %add63, -3, !dbg !141
  %sub65 = add i32 %add54, %8, !dbg !142
  %add68 = add i32 %sub65, %mul64.neg, !dbg !143
  store i32 %add68, ptr %arrayidx8, align 4, !dbg !143, !tbaa !102
  br label %for.inc, !dbg !144

if.else:                                          ; preds = %for.body
  %14 = load i32, ptr %arrayidx70, align 4, !dbg !145, !tbaa !102
  %mul71 = mul nsw i32 %14, 5, !dbg !147
  %arrayidx73 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !148
  %15 = load i32, ptr %arrayidx73, align 4, !dbg !148, !tbaa !102
  %mul74 = shl nsw i32 %15, 1, !dbg !149
  %add75 = add nsw i32 %mul74, %mul71, !dbg !150
  %arrayidx77 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !151
  store i32 %add75, ptr %arrayidx77, align 4, !dbg !152, !tbaa !102
  br label %for.inc

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %16 = phi i64 [ 0, %for.body.preheader ], [ %185, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %17 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = urem i32 %n, %2
  %20 = mul i32 %2, 2
  %21 = add i32 %20, %19
  %total.iterations.to.be.vectorized = sub i32 %n, %21
  %22 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %23 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !120
  %24 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %25 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %26 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %26, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %27 = load <vscale x 4 x i8>, ptr %23, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %105, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %18, %pre.alc ], [ %103, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %28, %pre.alc ], [ %104, %new.latch ]
  %29 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %30 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !126
  %31 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !120
  %32 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !126
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %34 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg1 = shufflevector <vscale x 4 x i32> %34, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %35 = load <vscale x 4 x i8>, ptr %31, align 4
  %36 = icmp eq <vscale x 4 x i8> %35, zeroinitializer
  br label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %37 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %36, <vscale x 4 x i1> %36)
  %39 = trunc i64 %37 to i32
  %40 = trunc i64 %38 to i32
  %41 = add i32 %39, %40
  %42 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %43 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %36, <vscale x 4 x i32> %29)
  %44 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %45 = xor <vscale x 4 x i1> %36, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %46 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %44, <vscale x 4 x i32> %uniform.vector)
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %29)
  %48 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %39)
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %48, <vscale x 4 x i32> %42, <vscale x 4 x i32> %43)
  %50 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %41)
  %51 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %36, <vscale x 4 x i1> %36)
  %52 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %51)
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %52, <vscale x 4 x i32> %43, <vscale x 4 x i32> %47)
  %54 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %44, <vscale x 4 x i1> %44)
  %55 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %54)
  %56 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %55, <vscale x 4 x i32> %46, <vscale x 4 x i32> %53)
  %57 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %50, <vscale x 4 x i32> %49, <vscale x 4 x i32> %47)
  %58 = xor <vscale x 4 x i1> %55, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %59 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %45, <vscale x 4 x i1> %45)
  %60 = sext i32 %2 to i64
  %61 = sub i64 %60, %59
  %62 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %61)
  %63 = and <vscale x 4 x i1> %58, %62
  %64 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %50, <vscale x 4 x i1> %50)
  %65 = trunc i64 %64 to i32
  %66 = icmp ugt i32 %41, %2
  br i1 %66, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %lane.gather
  %67 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %68 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !148
  %69 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !151
  %70 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg2 = shufflevector <vscale x 4 x i32> %70, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %71 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %67, <vscale x 4 x i32> %57)
  %72 = mul <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %73 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %68, <vscale x 4 x i32> %57)
  %74 = shl <vscale x 4 x i32> %73, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %75 = add <vscale x 4 x i32> %74, %72
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %75, <vscale x 4 x i1> %17, ptr %69, <vscale x 4 x i32> %57)
  br label %new.latch

uniform.else:                                     ; preds = %lane.gather
  %76 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %77 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !128
  %78 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !130
  %79 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg3 = shufflevector <vscale x 4 x i32> %79, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %80 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %77, <vscale x 4 x i32> %56)
  %81 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %17, ptr %78, <vscale x 4 x i32> %56)
  %82 = add <vscale x 4 x i32> %81, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %83 = mul <vscale x 4 x i32> %82, %56
  %84 = mul <vscale x 4 x i32> %80, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %85 = add <vscale x 4 x i32> %83, %81
  %86 = add <vscale x 4 x i32> %85, %84
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %86, <vscale x 4 x i1> %17, ptr %76, <vscale x 4 x i32> %56)
  %87 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %80
  %88 = mul <vscale x 4 x i32> %87, %56
  %89 = add <vscale x 4 x i32> %80, %81
  %90 = sub <vscale x 4 x i32> %86, %89
  %91 = shl <vscale x 4 x i32> %90, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %92 = add <vscale x 4 x i32> %88, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %93 = add <vscale x 4 x i32> %92, %91
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %93, <vscale x 4 x i1> %17, ptr %78, <vscale x 4 x i32> %56)
  %94 = add <vscale x 4 x i32> %93, %86
  %95 = shl <vscale x 4 x i32> %94, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %96 = sub <vscale x 4 x i32> %80, %93
  %97 = shl <vscale x 4 x i32> %96, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %98 = mul <vscale x 4 x i32> %56, %56
  %99 = add <vscale x 4 x i32> %97, %98
  %100 = mul <vscale x 4 x i32> %99, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %101 = add <vscale x 4 x i32> %95, %80
  %102 = add <vscale x 4 x i32> %101, %100
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %102, <vscale x 4 x i1> %17, ptr %77, <vscale x 4 x i32> %56)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %103 = phi <vscale x 4 x i32> [ %56, %uniform.then ], [ %57, %uniform.else ]
  %104 = phi <vscale x 4 x i1> [ %63, %uniform.then ], [ %50, %uniform.else ]
  %105 = add i32 %vector.loop.index, %2
  %106 = icmp uge i32 %105, %total.iterations.to.be.vectorized
  br i1 %106, label %joinBlock, label %alc.header

linearized.then:                                  ; preds = %joinBlock
  %107 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %108 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !148
  %109 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !151
  %110 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg4 = shufflevector <vscale x 4 x i32> %110, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %111 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %50, ptr %107, <vscale x 4 x i32> %57)
  %112 = mul <vscale x 4 x i32> %111, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %113 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %50, ptr %108, <vscale x 4 x i32> %57)
  %114 = shl <vscale x 4 x i32> %113, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %115 = add <vscale x 4 x i32> %114, %112
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %115, <vscale x 4 x i1> %50, ptr %109, <vscale x 4 x i32> %57)
  %116 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %117 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !128
  %118 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !130
  %119 = xor <vscale x 4 x i1> %50, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %120 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg5 = shufflevector <vscale x 4 x i32> %120, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %121 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %119, ptr %117, <vscale x 4 x i32> %57)
  %122 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %119, ptr %118, <vscale x 4 x i32> %57)
  %123 = add <vscale x 4 x i32> %122, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %124 = mul <vscale x 4 x i32> %123, %57
  %125 = mul <vscale x 4 x i32> %121, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %126 = add <vscale x 4 x i32> %124, %122
  %127 = add <vscale x 4 x i32> %126, %125
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %127, <vscale x 4 x i1> %119, ptr %116, <vscale x 4 x i32> %57)
  %128 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %121
  %129 = mul <vscale x 4 x i32> %128, %57
  %130 = add <vscale x 4 x i32> %121, %122
  %131 = sub <vscale x 4 x i32> %127, %130
  %132 = shl <vscale x 4 x i32> %131, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %133 = add <vscale x 4 x i32> %129, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %134 = add <vscale x 4 x i32> %133, %132
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %134, <vscale x 4 x i1> %119, ptr %118, <vscale x 4 x i32> %57)
  %135 = add <vscale x 4 x i32> %134, %127
  %136 = shl <vscale x 4 x i32> %135, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %137 = sub <vscale x 4 x i32> %121, %134
  %138 = shl <vscale x 4 x i32> %137, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %139 = mul <vscale x 4 x i32> %57, %57
  %140 = add <vscale x 4 x i32> %138, %139
  %141 = mul <vscale x 4 x i32> %140, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %142 = add <vscale x 4 x i32> %136, %121
  %143 = add <vscale x 4 x i32> %142, %141
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %143, <vscale x 4 x i1> %119, ptr %117, <vscale x 4 x i32> %57)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %144 = xor <vscale x 4 x i1> %63, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %145 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %146 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !128
  %147 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !130
  %148 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg6 = shufflevector <vscale x 4 x i32> %148, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %149 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %144, ptr %146, <vscale x 4 x i32> %56)
  %150 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %144, ptr %147, <vscale x 4 x i32> %56)
  %151 = add <vscale x 4 x i32> %150, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %152 = mul <vscale x 4 x i32> %151, %56
  %153 = mul <vscale x 4 x i32> %149, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %154 = add <vscale x 4 x i32> %152, %150
  %155 = add <vscale x 4 x i32> %154, %153
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %155, <vscale x 4 x i1> %144, ptr %145, <vscale x 4 x i32> %56)
  %156 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %149
  %157 = mul <vscale x 4 x i32> %156, %56
  %158 = add <vscale x 4 x i32> %149, %150
  %159 = sub <vscale x 4 x i32> %155, %158
  %160 = shl <vscale x 4 x i32> %159, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %161 = add <vscale x 4 x i32> %157, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %162 = add <vscale x 4 x i32> %161, %160
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %162, <vscale x 4 x i1> %144, ptr %147, <vscale x 4 x i32> %56)
  %163 = add <vscale x 4 x i32> %162, %155
  %164 = shl <vscale x 4 x i32> %163, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %165 = sub <vscale x 4 x i32> %149, %162
  %166 = shl <vscale x 4 x i32> %165, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %167 = mul <vscale x 4 x i32> %56, %56
  %168 = add <vscale x 4 x i32> %166, %167
  %169 = mul <vscale x 4 x i32> %168, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %170 = add <vscale x 4 x i32> %164, %149
  %171 = add <vscale x 4 x i32> %170, %169
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %171, <vscale x 4 x i1> %144, ptr %146, <vscale x 4 x i32> %56)
  %172 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !126
  %173 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !148
  %174 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !151
  %175 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg7 = shufflevector <vscale x 4 x i32> %175, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %176 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %63, ptr %172, <vscale x 4 x i32> %56)
  %177 = mul <vscale x 4 x i32> %176, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %178 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %63, ptr %173, <vscale x 4 x i32> %56)
  %179 = shl <vscale x 4 x i32> %178, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %180 = add <vscale x 4 x i32> %179, %177
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %180, <vscale x 4 x i1> %63, ptr %174, <vscale x 4 x i32> %56)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %181 = icmp eq <vscale x 4 x i32> %103, %57
  %182 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %181, <vscale x 4 x i1> %181)
  %183 = trunc i64 %182 to i32
  %184 = icmp eq i32 %183, %2
  br i1 %184, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %185 = zext i32 %105 to i64
  br label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !153
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !110, !llvm.loop !154

if.then81:                                        ; preds = %for.cond.cleanup
  %186 = load ptr, ptr @stderr, align 8, !dbg !158, !tbaa !113
  %call82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str, i32 noundef %call79, ptr noundef nonnull @.str.1, i32 noundef 102) #14, !dbg !158
  tail call void @exit(i32 noundef %call79) #15, !dbg !158
  unreachable, !dbg !158

if.end83:                                         ; preds = %for.cond.cleanup
  %call84 = tail call double @getTimeMiliSeconds(), !dbg !160
  %sub85 = fsub double %call84, %call, !dbg !161
  store double %sub85, ptr @ExecutionTime, align 8, !dbg !162, !tbaa !163
  ret void, !dbg !165
}

declare !dbg !166 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !170 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !178, metadata !DIExpression()), !dbg !180
  %conv = sext i32 %n to i64, !dbg !181
  %mul = shl nsw i64 %conv, 2, !dbg !182
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !183
  call void @llvm.dbg.value(metadata ptr %call, metadata !179, metadata !DIExpression()), !dbg !180
  %cmp = icmp eq ptr %call, null, !dbg !184
  br i1 %cmp, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !187
  tail call void @exit(i32 noundef 1) #15, !dbg !189
  unreachable, !dbg !189

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !190
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !195, metadata !DIExpression()), !dbg !197
  %conv = sext i32 %n to i64, !dbg !198
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !199
  call void @llvm.dbg.value(metadata ptr %call, metadata !196, metadata !DIExpression()), !dbg !197
  %cmp = icmp eq ptr %call, null, !dbg !200
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !203
  tail call void @exit(i32 noundef 1) #15, !dbg !205
  unreachable, !dbg !205

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !206
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !207 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !212, metadata !DIExpression()), !dbg !224
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !225
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !227
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !228

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !229, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !231
  call void @exit(i32 noundef 1) #15, !dbg !232
  unreachable, !dbg !232

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !233
  call void @llvm.dbg.value(metadata i32 %call2, metadata !211, metadata !DIExpression()), !dbg !235
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !236
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !237

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !238, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 317) #14, !dbg !238
  tail call void @exit(i32 noundef %call2) #15, !dbg !238
  unreachable, !dbg !238

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !240, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !242
  call void @llvm.dbg.value(metadata i32 %call7, metadata !211, metadata !DIExpression()), !dbg !235
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !243
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !244

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !245, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 320) #14, !dbg !245
  tail call void @exit(i32 noundef %call7) #15, !dbg !245
  unreachable, !dbg !245

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !217, metadata !DIExpression()), !dbg !235
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !247
  store ptr %call12, ptr @a, align 8, !dbg !248, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !249
  store ptr %call13, ptr @b, align 8, !dbg !250, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !251
  store ptr %call14, ptr @c, align 8, !dbg !252, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !253
  store ptr %call15, ptr @cond, align 8, !dbg !254, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !255, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !256
  %conv = trunc i64 %call16 to i32, !dbg !256
  tail call void @srand(i32 noundef %conv) #13, !dbg !257
  call void @llvm.dbg.value(metadata i32 1, metadata !218, metadata !DIExpression()), !dbg !258
  br label %for.body, !dbg !259

for.cond.cleanup:                                 ; preds = %for.body
  %.lcssa = phi ptr [ %12, %for.body ], !dbg !260
  %4 = load ptr, ptr @a, align 8, !dbg !263, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !dbg !264, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !dbg !265, !tbaa !113
  tail call void @simple_if_else(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %.lcssa, i32 noundef 5000000), !dbg !266
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !267
  %7 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !221, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 0, metadata !220, metadata !DIExpression()), !dbg !235
  br label %for.body34, !dbg !268

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !218, metadata !DIExpression()), !dbg !258
  %8 = load ptr, ptr @a, align 8, !dbg !269, !tbaa !113
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !269
  store i32 1, ptr %arrayidx19, align 4, !dbg !270, !tbaa !102
  %9 = load ptr, ptr @b, align 8, !dbg !271, !tbaa !113
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !271
  store i32 2, ptr %arrayidx21, align 4, !dbg !272, !tbaa !102
  %10 = load ptr, ptr @c, align 8, !dbg !273, !tbaa !113
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !273
  store i32 0, ptr %arrayidx23, align 4, !dbg !274, !tbaa !102
  %call24 = tail call i32 @rand() #13, !dbg !275
  %11 = and i32 %call24, 7, !dbg !276
  %cmp25 = icmp eq i32 %11, 0, !dbg !276
  %12 = load ptr, ptr @cond, align 8, !dbg !260, !tbaa !113
  %arrayidx28 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv, !dbg !260
  %frombool = zext i1 %cmp25 to i8, !dbg !277
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !277, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !278
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !218, metadata !DIExpression()), !dbg !258
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !279
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !259, !llvm.loop !280

for.cond.cleanup33:                               ; preds = %for.body34
  %add.lcssa = phi i32 [ %add, %for.body34 ], !dbg !282
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !285
  %putchar = tail call i32 @putchar(i32 10), !dbg !286
  %13 = load ptr, ptr @a, align 8, !dbg !287, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !288
  %14 = load ptr, ptr @b, align 8, !dbg !289, !tbaa !113
  tail call void @free(ptr noundef %14) #13, !dbg !290
  %15 = load ptr, ptr @c, align 8, !dbg !291, !tbaa !113
  tail call void @free(ptr noundef %15) #13, !dbg !292
  %16 = load ptr, ptr @cond, align 8, !dbg !293, !tbaa !113
  tail call void @free(ptr noundef %16) #13, !dbg !294
  %17 = load i64, ptr @CounterValues, align 8, !dbg !295, !tbaa !296
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %17), !dbg !298
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !299, !tbaa !296
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %18), !dbg !300
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !301, !tbaa !296
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %19), !dbg !302
  %20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !303, !tbaa !296
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %20), !dbg !304
  %21 = load double, ptr @ExecutionTime, align 8, !dbg !305, !tbaa !163
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %21), !dbg !306
  %22 = load i32, ptr @EventSet, align 4, !dbg !307, !tbaa !102
  %call47 = tail call i32 @PAPI_remove_events(i32 noundef %22, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !309
  call void @llvm.dbg.value(metadata i32 %call47, metadata !211, metadata !DIExpression()), !dbg !235
  %cmp48.not = icmp eq i32 %call47, 0, !dbg !310
  br i1 %cmp48.not, label %if.end52, label %if.then50, !dbg !311

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body34 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !221, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !220, metadata !DIExpression()), !dbg !235
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv84, !dbg !312
  %23 = load i32, ptr %arrayidx36, align 4, !dbg !312, !tbaa !102
  %add = add nsw i32 %23, %sum.081, !dbg !282
  call void @llvm.dbg.value(metadata i32 %add, metadata !220, metadata !DIExpression()), !dbg !235
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !313
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !221, metadata !DIExpression()), !dbg !267
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !314
  br i1 %exitcond87.not, label %for.cond.cleanup33, label %for.body34, !dbg !268, !llvm.loop !315

if.then50:                                        ; preds = %for.cond.cleanup33
  %24 = load ptr, ptr @stderr, align 8, !dbg !317, !tbaa !113
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %call47, ptr noundef nonnull @.str.1, i32 noundef 365) #14, !dbg !317
  tail call void @exit(i32 noundef %call47) #15, !dbg !317
  unreachable, !dbg !317

if.end52:                                         ; preds = %for.cond.cleanup33
  %call53 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !319
  call void @llvm.dbg.value(metadata i32 %call53, metadata !211, metadata !DIExpression()), !dbg !235
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !321
  br i1 %cmp54.not, label %if.end58, label %if.then56, !dbg !322

if.then56:                                        ; preds = %if.end52
  %25 = load ptr, ptr @stderr, align 8, !dbg !323, !tbaa !113
  %call57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %call53, ptr noundef nonnull @.str.1, i32 noundef 368) #14, !dbg !323
  tail call void @exit(i32 noundef %call53) #15, !dbg !323
  unreachable, !dbg !323

if.end58:                                         ; preds = %if.end52
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

; Function Attrs: nounwind
declare !dbg !346 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !347 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !348 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !349 void @PAPI_shutdown() local_unnamed_addr #4

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5e5b53a167223adbdba788978dcf6249")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 284, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 286, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 287, type: !8, isLocal: false, isDefinition: true)
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
!83 = distinct !DISubprogram(name: "simple_if_else", scope: !3, file: !3, line: 58, type: !84, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !86, !87, !6}
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 58, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 58, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 58, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 59, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 59, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 61, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 63, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 69, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 69, column: 5)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 63, column: 16, scope: !83)
!100 = !DILocation(line: 65, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 65, column: 9)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !64, i64 0}
!104 = !DILocation(line: 65, column: 19, scope: !101)
!105 = !DILocation(line: 65, column: 41, scope: !101)
!106 = !DILocation(line: 65, column: 9, scope: !83)
!107 = !DILocation(line: 0, scope: !97)
!108 = !DILocation(line: 69, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 69, column: 5)
!110 = !DILocation(line: 69, column: 5, scope: !97)
!111 = !DILocation(line: 65, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 65, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 102, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 102, column: 9)
!117 = !DILocation(line: 102, column: 19, scope: !116)
!118 = !DILocation(line: 102, column: 55, scope: !116)
!119 = !DILocation(line: 102, column: 9, scope: !83)
!120 = !DILocation(line: 84, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 84, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 69, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 0, scope: !121)
!127 = !DILocation(line: 84, column: 13, scope: !122)
!128 = !DILocation(line: 85, column: 36, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !3, line: 84, column: 22)
!130 = !DILocation(line: 85, column: 45, scope: !129)
!131 = !DILocation(line: 86, column: 27, scope: !129)
!132 = !DILocation(line: 85, column: 42, scope: !129)
!133 = !DILocation(line: 86, column: 18, scope: !129)
!134 = !DILocation(line: 88, column: 27, scope: !129)
!135 = !DILocation(line: 87, column: 33, scope: !129)
!136 = !DILocation(line: 88, column: 18, scope: !129)
!137 = !DILocation(line: 89, column: 30, scope: !129)
!138 = !DILocation(line: 89, column: 57, scope: !129)
!139 = !DILocation(line: 89, column: 72, scope: !129)
!140 = !DILocation(line: 89, column: 68, scope: !129)
!141 = !DILocation(line: 89, column: 45, scope: !129)
!142 = !DILocation(line: 89, column: 41, scope: !129)
!143 = !DILocation(line: 89, column: 18, scope: !129)
!144 = !DILocation(line: 90, column: 9, scope: !129)
!145 = !DILocation(line: 96, column: 24, scope: !146)
!146 = distinct !DILexicalBlock(scope: !121, file: !3, line: 90, column: 16)
!147 = !DILocation(line: 96, column: 22, scope: !146)
!148 = !DILocation(line: 96, column: 35, scope: !146)
!149 = !DILocation(line: 96, column: 33, scope: !146)
!150 = !DILocation(line: 96, column: 29, scope: !146)
!151 = !DILocation(line: 96, column: 13, scope: !146)
!152 = !DILocation(line: 96, column: 18, scope: !146)
!153 = !DILocation(line: 69, column: 28, scope: !109)
!154 = distinct !{!154, !110, !155, !156, !157}
!155 = !DILocation(line: 98, column: 5, scope: !97)
!156 = !{!"llvm.loop.mustprogress"}
!157 = !{!"llvm.loop.unroll.disable"}
!158 = !DILocation(line: 102, column: 67, scope: !159)
!159 = distinct !DILexicalBlock(scope: !116, file: !3, line: 102, column: 67)
!160 = !DILocation(line: 104, column: 21, scope: !83)
!161 = !DILocation(line: 104, column: 42, scope: !83)
!162 = !DILocation(line: 104, column: 19, scope: !83)
!163 = !{!164, !164, i64 0}
!164 = !{!"double", !64, i64 0}
!165 = !DILocation(line: 105, column: 1, scope: !83)
!166 = !DISubprogram(name: "PAPI_start", scope: !167, file: !167, line: 1204, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!167 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!168 = !DISubroutineType(types: !169)
!169 = !{!6, !6}
!170 = !DISubprogram(name: "PAPI_stop", scope: !167, file: !167, line: 1206, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!171 = !DISubroutineType(types: !172)
!172 = !{!6, !6, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!174 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 289, type: !175, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!5, !6}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "n", arg: 1, scope: !174, file: !3, line: 289, type: !6)
!179 = !DILocalVariable(name: "ptr", scope: !174, file: !3, line: 290, type: !5)
!180 = !DILocation(line: 0, scope: !174)
!181 = !DILocation(line: 290, column: 45, scope: !174)
!182 = !DILocation(line: 290, column: 43, scope: !174)
!183 = !DILocation(line: 290, column: 24, scope: !174)
!184 = !DILocation(line: 291, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !174, file: !3, line: 291, column: 9)
!186 = !DILocation(line: 291, column: 9, scope: !174)
!187 = !DILocation(line: 292, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 291, column: 22)
!189 = !DILocation(line: 293, column: 9, scope: !188)
!190 = !DILocation(line: 295, column: 5, scope: !174)
!191 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 298, type: !192, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!8, !6}
!194 = !{!195, !196}
!195 = !DILocalVariable(name: "n", arg: 1, scope: !191, file: !3, line: 298, type: !6)
!196 = !DILocalVariable(name: "ptr", scope: !191, file: !3, line: 299, type: !8)
!197 = !DILocation(line: 0, scope: !191)
!198 = !DILocation(line: 299, column: 48, scope: !191)
!199 = !DILocation(line: 299, column: 26, scope: !191)
!200 = !DILocation(line: 300, column: 13, scope: !201)
!201 = distinct !DILexicalBlock(scope: !191, file: !3, line: 300, column: 9)
!202 = !DILocation(line: 300, column: 9, scope: !191)
!203 = !DILocation(line: 301, column: 9, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !3, line: 300, column: 22)
!205 = !DILocation(line: 302, column: 9, scope: !204)
!206 = !DILocation(line: 304, column: 5, scope: !191)
!207 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 307, type: !208, scopeLine: 307, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{!6}
!210 = !{!211, !212, !217, !218, !220, !221}
!211 = !DILocalVariable(name: "status", scope: !207, file: !3, line: 308, type: !6)
!212 = !DILocalVariable(name: "errstring", scope: !207, file: !3, line: 309, type: !213)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 1024, elements: !215)
!214 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!215 = !{!216}
!216 = !DISubrange(count: 128)
!217 = !DILocalVariable(name: "n", scope: !207, file: !3, line: 322, type: !6)
!218 = !DILocalVariable(name: "i", scope: !219, file: !3, line: 333, type: !6)
!219 = distinct !DILexicalBlock(scope: !207, file: !3, line: 333, column: 5)
!220 = !DILocalVariable(name: "sum", scope: !207, file: !3, line: 345, type: !6)
!221 = !DILocalVariable(name: "i", scope: !222, file: !3, line: 347, type: !6)
!222 = distinct !DILexicalBlock(scope: !207, file: !3, line: 347, column: 5)
!223 = !DILocation(line: 309, column: 5, scope: !207)
!224 = !DILocation(line: 309, column: 10, scope: !207)
!225 = !DILocation(line: 311, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !207, file: !3, line: 311, column: 9)
!227 = !DILocation(line: 311, column: 45, scope: !226)
!228 = !DILocation(line: 311, column: 9, scope: !207)
!229 = !DILocation(line: 312, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 311, column: 66)
!231 = !DILocation(line: 312, column: 9, scope: !230)
!232 = !DILocation(line: 313, column: 9, scope: !230)
!233 = !DILocation(line: 317, column: 19, scope: !234)
!234 = distinct !DILexicalBlock(scope: !207, file: !3, line: 317, column: 9)
!235 = !DILocation(line: 0, scope: !207)
!236 = !DILocation(line: 317, column: 52, scope: !234)
!237 = !DILocation(line: 317, column: 9, scope: !207)
!238 = !DILocation(line: 317, column: 64, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 317, column: 64)
!240 = !DILocation(line: 320, column: 35, scope: !241)
!241 = distinct !DILexicalBlock(scope: !207, file: !3, line: 320, column: 9)
!242 = !DILocation(line: 320, column: 19, scope: !241)
!243 = !DILocation(line: 320, column: 69, scope: !241)
!244 = !DILocation(line: 320, column: 9, scope: !207)
!245 = !DILocation(line: 320, column: 81, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 320, column: 81)
!247 = !DILocation(line: 324, column: 9, scope: !207)
!248 = !DILocation(line: 324, column: 7, scope: !207)
!249 = !DILocation(line: 325, column: 9, scope: !207)
!250 = !DILocation(line: 325, column: 7, scope: !207)
!251 = !DILocation(line: 326, column: 9, scope: !207)
!252 = !DILocation(line: 326, column: 7, scope: !207)
!253 = !DILocation(line: 327, column: 12, scope: !207)
!254 = !DILocation(line: 327, column: 10, scope: !207)
!255 = !DILocation(line: 329, column: 13, scope: !207)
!256 = !DILocation(line: 331, column: 11, scope: !207)
!257 = !DILocation(line: 331, column: 5, scope: !207)
!258 = !DILocation(line: 0, scope: !219)
!259 = !DILocation(line: 333, column: 5, scope: !219)
!260 = !DILocation(line: 337, column: 9, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !3, line: 333, column: 33)
!262 = distinct !DILexicalBlock(scope: !219, file: !3, line: 333, column: 5)
!263 = !DILocation(line: 342, column: 20, scope: !207)
!264 = !DILocation(line: 342, column: 23, scope: !207)
!265 = !DILocation(line: 342, column: 26, scope: !207)
!266 = !DILocation(line: 342, column: 5, scope: !207)
!267 = !DILocation(line: 0, scope: !222)
!268 = !DILocation(line: 347, column: 5, scope: !222)
!269 = !DILocation(line: 334, column: 9, scope: !261)
!270 = !DILocation(line: 334, column: 14, scope: !261)
!271 = !DILocation(line: 335, column: 9, scope: !261)
!272 = !DILocation(line: 335, column: 14, scope: !261)
!273 = !DILocation(line: 336, column: 9, scope: !261)
!274 = !DILocation(line: 336, column: 14, scope: !261)
!275 = !DILocation(line: 337, column: 19, scope: !261)
!276 = !DILocation(line: 337, column: 30, scope: !261)
!277 = !DILocation(line: 337, column: 17, scope: !261)
!278 = !DILocation(line: 333, column: 28, scope: !262)
!279 = !DILocation(line: 333, column: 23, scope: !262)
!280 = distinct !{!280, !259, !281, !156, !157}
!281 = !DILocation(line: 338, column: 5, scope: !219)
!282 = !DILocation(line: 348, column: 13, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 347, column: 33)
!284 = distinct !DILexicalBlock(scope: !222, file: !3, line: 347, column: 5)
!285 = !DILocation(line: 351, column: 5, scope: !207)
!286 = !DILocation(line: 352, column: 5, scope: !207)
!287 = !DILocation(line: 354, column: 10, scope: !207)
!288 = !DILocation(line: 354, column: 5, scope: !207)
!289 = !DILocation(line: 355, column: 10, scope: !207)
!290 = !DILocation(line: 355, column: 5, scope: !207)
!291 = !DILocation(line: 356, column: 10, scope: !207)
!292 = !DILocation(line: 356, column: 5, scope: !207)
!293 = !DILocation(line: 357, column: 10, scope: !207)
!294 = !DILocation(line: 357, column: 5, scope: !207)
!295 = !DILocation(line: 359, column: 53, scope: !207)
!296 = !{!297, !297, i64 0}
!297 = !{!"long long", !64, i64 0}
!298 = !DILocation(line: 359, column: 5, scope: !207)
!299 = !DILocation(line: 360, column: 36, scope: !207)
!300 = !DILocation(line: 360, column: 5, scope: !207)
!301 = !DILocation(line: 361, column: 50, scope: !207)
!302 = !DILocation(line: 361, column: 5, scope: !207)
!303 = !DILocation(line: 362, column: 49, scope: !207)
!304 = !DILocation(line: 362, column: 5, scope: !207)
!305 = !DILocation(line: 363, column: 40, scope: !207)
!306 = !DILocation(line: 363, column: 5, scope: !207)
!307 = !DILocation(line: 365, column: 38, scope: !308)
!308 = distinct !DILexicalBlock(scope: !207, file: !3, line: 365, column: 9)
!309 = !DILocation(line: 365, column: 19, scope: !308)
!310 = !DILocation(line: 365, column: 72, scope: !308)
!311 = !DILocation(line: 365, column: 9, scope: !207)
!312 = !DILocation(line: 348, column: 16, scope: !283)
!313 = !DILocation(line: 347, column: 28, scope: !284)
!314 = !DILocation(line: 347, column: 23, scope: !284)
!315 = distinct !{!315, !268, !316, !156, !157}
!316 = !DILocation(line: 349, column: 5, scope: !222)
!317 = !DILocation(line: 365, column: 84, scope: !318)
!318 = distinct !DILexicalBlock(scope: !308, file: !3, line: 365, column: 84)
!319 = !DILocation(line: 368, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !207, file: !3, line: 368, column: 9)
!321 = !DILocation(line: 368, column: 53, scope: !320)
!322 = !DILocation(line: 368, column: 9, scope: !207)
!323 = !DILocation(line: 368, column: 65, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 368, column: 65)
!325 = !DILocation(line: 371, column: 5, scope: !207)
!326 = !DILocation(line: 374, column: 1, scope: !207)
!327 = !DILocation(line: 373, column: 5, scope: !207)
!328 = !DISubprogram(name: "PAPI_library_init", scope: !167, file: !167, line: 1172, type: !168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!329 = !DISubprogram(name: "PAPI_create_eventset", scope: !167, file: !167, line: 1147, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!330 = !DISubroutineType(types: !331)
!331 = !{!6, !5}
!332 = !DISubprogram(name: "PAPI_add_events", scope: !167, file: !167, line: 1143, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
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
!346 = !DISubprogram(name: "rand", scope: !336, file: !336, line: 453, type: !208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!347 = !DISubprogram(name: "PAPI_remove_events", scope: !167, file: !167, line: 1192, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!348 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !167, file: !167, line: 1149, type: !330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!349 = !DISubprogram(name: "PAPI_shutdown", scope: !167, file: !167, line: 1202, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!350 = !DISubroutineType(types: !351)
!351 = !{null}
