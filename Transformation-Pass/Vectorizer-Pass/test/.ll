; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.OuterStruct = type { i32, %struct.InnerStruct }
%struct.InnerStruct = type { i32, [100 x i32], i32 }

@EventSet = dso_local global i32 -1, align 4, !dbg !0
@CounterValues = dso_local local_unnamed_addr global [4 x i64] zeroinitializer, align 8, !dbg !11
@EventCodes = dso_local global [4 x i32] [i32 -2147483598, i32 -2147483589, i32 -2147483648, i32 -2147483602], align 4, !dbg !17
@ExecutionTime = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !20
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Error %d %s:line %d: \0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"test.c\00", align 1
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

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind uwtable
define dso_local void @test_struct(ptr nocapture noundef readonly %outerStruct, ptr noalias nocapture noundef writeonly %a, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #4 !dbg !83 {
entry:
  call void @llvm.dbg.declare(metadata ptr %outerStruct, metadata !101, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata ptr %a, metadata !102, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata ptr %cond, metadata !103, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 %n, metadata !104, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.value(metadata i32 0, metadata !105, metadata !DIExpression()), !dbg !113
  %cmp215 = icmp sgt i32 %n, 0
  call void @llvm.dbg.value(metadata i32 0, metadata !105, metadata !DIExpression()), !dbg !113
  %arrayidx5 = getelementptr inbounds %struct.OuterStruct, ptr %outerStruct, i64 0, i32 1, i32 1, i64 22
  br i1 %cmp215, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !114

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond1.preheader.us, !dbg !115

for.cond1.preheader.us:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.us.preheader
  %j.017.us = phi i32 [ %inc9.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.017.us, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !116
  %0 = call i32 @llvm.vscale.i32(), !dbg !114
  %1 = mul i32 %0, 4, !dbg !114
  %2 = mul i32 %1, 2, !dbg !114
  %3 = icmp uge i32 %n, %2, !dbg !114
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !114

for.body4.us:                                     ; preds = %Preheader.for.remaining.iterations, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %6, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !107, metadata !DIExpression()), !dbg !116
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !117
  %4 = load i8, ptr %arrayidx.us, align 1, !dbg !117, !tbaa !121, !range !123
  %tobool.not.us = icmp eq i8 %4, 0, !dbg !117
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !124

if.then.us:                                       ; preds = %for.body4.us
  %5 = load i32, ptr %arrayidx5, align 4, !dbg !125, !tbaa !127
  %arrayidx7.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !129
  store i32 %5, ptr %arrayidx7.us, align 4, !dbg !130, !tbaa !127
  br label %for.inc.us, !dbg !131

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.cond1.preheader.us
  %6 = phi i64 [ 0, %for.cond1.preheader.us ], [ %68, %middel.block ]
  br label %for.body4.us

pre.alc:                                          ; preds = %for.cond1.preheader.us
  %7 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %8 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %9 = urem i32 %n, %1
  %10 = mul i32 %1, 2
  %11 = add i32 %10, %9
  %total.iterations.to.be.vectorized = sub i32 %n, %11
  %12 = getelementptr inbounds %struct.OuterStruct, ptr %outerStruct, i64 0, i32 1, i32 1, i64 22
  %13 = load i32, ptr %12, align 4, !dbg !125, !tbaa !127
  %14 = insertelement <vscale x 4 x i32> undef, i32 %13, i64 0
  %hoisted.load = shufflevector <vscale x 4 x i32> %14, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %15 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !117
  %16 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %17 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg = shufflevector <vscale x 4 x i32> %17, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %18 = load <vscale x 4 x i8>, ptr %15, align 4
  %19 = icmp eq <vscale x 4 x i8> %18, zeroinitializer
  %20 = xor <vscale x 4 x i1> %19, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %21 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %20, <vscale x 4 x i1> %20)
  %22 = trunc i64 %21 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %60, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %8, %pre.alc ], [ %57, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %20, %pre.alc ], [ %58, %new.latch ]
  %uniform.vec.actives = phi i32 [ %22, %pre.alc ], [ %59, %new.latch ]
  %23 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %24 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !117
  %25 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %26 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg1 = shufflevector <vscale x 4 x i32> %26, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %27 = load <vscale x 4 x i8>, ptr %24, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  %29 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %31 = trunc i64 %30 to i32
  %32 = add i32 %uniform.vec.actives, %31
  %condition = icmp ule i32 %32, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %34 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %23)
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %35, <vscale x 4 x i32> %33, <vscale x 4 x i32> %34)
  %37 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %32)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %37, <vscale x 4 x i1> %37)
  %39 = trunc i64 %38 to i32
  %40 = icmp ult i32 %32, %1
  br i1 %40, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %41 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !129
  %42 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %43 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg4 = shufflevector <vscale x 4 x i32> %43, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %hoisted.load, ptr %41, i32 16, <vscale x 4 x i1> %29)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %44 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !129
  %45 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg2 = shufflevector <vscale x 4 x i32> %45, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %hoisted.load, <vscale x 4 x i1> %7, ptr %44, <vscale x 4 x i32> %36)
  %46 = add i32 %vector.loop.index, %1
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %46, i32 1)
  %48 = getelementptr inbounds i8, ptr %cond, i32 %46, !dbg !117
  %49 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %46, i32 1)
  %50 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg3 = shufflevector <vscale x 4 x i32> %50, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %51 = load <vscale x 4 x i8>, ptr %48, align 4
  %52 = icmp eq <vscale x 4 x i8> %51, zeroinitializer
  %53 = xor <vscale x 4 x i1> %52, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %54 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %53, <vscale x 4 x i1> %53)
  %55 = trunc i64 %54 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %56 = phi i32 [ %62, %join.block ], [ %vector.loop.index, %linearized ]
  %57 = phi <vscale x 4 x i32> [ %63, %join.block ], [ %uniform.vector, %linearized ]
  %58 = phi <vscale x 4 x i1> [ %64, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %59 = phi i32 [ %65, %join.block ], [ %uniform.vec.actives, %linearized ]
  %60 = add i32 %56, %1
  %61 = icmp uge i32 %60, %total.iterations.to.be.vectorized
  br i1 %61, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %62 = phi i32 [ %vector.loop.index, %lane.gather ], [ %46, %uniform.block ]
  %63 = phi <vscale x 4 x i32> [ %36, %lane.gather ], [ %47, %uniform.block ]
  %64 = phi <vscale x 4 x i1> [ %37, %lane.gather ], [ %53, %uniform.block ]
  %65 = phi i32 [ %39, %lane.gather ], [ %55, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition5 = icmp eq i32 %11, 0
  %66 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !129
  %67 = insertelement <vscale x 4 x i32> undef, i32 %n, i64 0
  %vector.arg6 = shufflevector <vscale x 4 x i32> %67, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %hoisted.load, <vscale x 4 x i1> %58, ptr %66, <vscale x 4 x i32> %57)
  %68 = zext i32 %60 to i64
  br i1 %condition5, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %Preheader.for.remaining.iterations

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !107, metadata !DIExpression()), !dbg !116
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !133
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !114, !llvm.loop !134

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %middel.block, %for.inc.us
  %inc9.us = add nuw nsw i32 %j.017.us, 1, !dbg !138
  call void @llvm.dbg.value(metadata i32 %inc9.us, metadata !105, metadata !DIExpression()), !dbg !113
  %exitcond20.not = icmp eq i32 %inc9.us, 10, !dbg !139
  br i1 %exitcond20.not, label %for.cond.cleanup.loopexit, label %for.cond1.preheader.us, !dbg !115, !llvm.loop !140

for.cond.cleanup.loopexit:                        ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us
  br label %for.cond.cleanup, !dbg !142

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !147, metadata !DIExpression()), !dbg !149
  %conv = sext i32 %n to i64, !dbg !150
  %mul = shl nsw i64 %conv, 2, !dbg !151
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #14, !dbg !152
  call void @llvm.dbg.value(metadata ptr %call, metadata !148, metadata !DIExpression()), !dbg !149
  %cmp = icmp eq ptr %call, null, !dbg !153
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !156
  tail call void @exit(i32 noundef 1) #15, !dbg !158
  unreachable, !dbg !158

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !159
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !164, metadata !DIExpression()), !dbg !166
  %conv = sext i32 %n to i64, !dbg !167
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #14, !dbg !168
  call void @llvm.dbg.value(metadata ptr %call, metadata !165, metadata !DIExpression()), !dbg !166
  %cmp = icmp eq ptr %call, null, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !172
  tail call void @exit(i32 noundef 1) #15, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !175
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !176 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !181, metadata !DIExpression()), !dbg !193
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !194
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !196
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !197

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !198, !tbaa !200
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %errstring) #16, !dbg !202
  call void @exit(i32 noundef 1) #15, !dbg !203
  unreachable, !dbg !203

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !204
  call void @llvm.dbg.value(metadata i32 %call2, metadata !180, metadata !DIExpression()), !dbg !206
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !207
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !208

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !209, !tbaa !200
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call2, ptr noundef nonnull @.str.3, i32 noundef 316) #16, !dbg !209
  tail call void @exit(i32 noundef %call2) #15, !dbg !209
  unreachable, !dbg !209

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !211, !tbaa !127
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !213
  call void @llvm.dbg.value(metadata i32 %call7, metadata !180, metadata !DIExpression()), !dbg !206
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !214
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !215

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !216, !tbaa !200
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %call7, ptr noundef nonnull @.str.3, i32 noundef 319) #16, !dbg !216
  tail call void @exit(i32 noundef %call7) #15, !dbg !216
  unreachable, !dbg !216

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !186, metadata !DIExpression()), !dbg !206
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !218
  store ptr %call12, ptr @a, align 8, !dbg !219, !tbaa !200
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !220
  store ptr %call13, ptr @b, align 8, !dbg !221, !tbaa !200
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !222
  store ptr %call14, ptr @c, align 8, !dbg !223, !tbaa !200
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !224
  store ptr %call15, ptr @cond, align 8, !dbg !225, !tbaa !200
  store i8 0, ptr %call15, align 1, !dbg !226, !tbaa !121
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !227
  %conv = trunc i64 %call16 to i32, !dbg !227
  tail call void @srand(i32 noundef %conv) #13, !dbg !228
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !229
  %4 = load ptr, ptr @a, align 8, !tbaa !200
  %5 = load ptr, ptr @b, align 8, !tbaa !200
  %6 = load ptr, ptr @c, align 8, !tbaa !200
  %7 = load ptr, ptr @cond, align 8, !tbaa !200
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !229
  br label %for.body, !dbg !230

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !187, metadata !DIExpression()), !dbg !229
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !231
  %8 = trunc i64 %indvars.iv to i32, !dbg !234
  store i32 %8, ptr %arrayidx19, align 4, !dbg !234, !tbaa !127
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !235
  store i32 2, ptr %arrayidx21, align 4, !dbg !236, !tbaa !127
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !237
  store i32 0, ptr %arrayidx23, align 4, !dbg !238, !tbaa !127
  %rem = urem i32 %8, 10, !dbg !239
  %cmp24 = icmp eq i32 %rem, 0, !dbg !240
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !241
  %frombool = zext i1 %cmp24 to i8, !dbg !242
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !242, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !243
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !187, metadata !DIExpression()), !dbg !229
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !244
  br i1 %exitcond.not, label %for.body33.preheader, label %for.body, !dbg !230, !llvm.loop !245

for.body33.preheader:                             ; preds = %for.body
  br label %for.body33, !dbg !247

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !248
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !251
  %9 = load ptr, ptr @a, align 8, !dbg !252, !tbaa !200
  tail call void @free(ptr noundef %9) #13, !dbg !253
  %10 = load ptr, ptr @b, align 8, !dbg !254, !tbaa !200
  tail call void @free(ptr noundef %10) #13, !dbg !255
  %11 = load ptr, ptr @c, align 8, !dbg !256, !tbaa !200
  tail call void @free(ptr noundef %11) #13, !dbg !257
  %12 = load ptr, ptr @cond, align 8, !dbg !258, !tbaa !200
  tail call void @free(ptr noundef %12) #13, !dbg !259
  %13 = load i64, ptr @CounterValues, align 8, !dbg !260, !tbaa !261
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %13), !dbg !263
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !264, !tbaa !261
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !265
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !266, !tbaa !261
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !267
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !268, !tbaa !261
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !269
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !270, !tbaa !271
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %17), !dbg !273
  %18 = load i32, ptr @EventSet, align 4, !dbg !274, !tbaa !127
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !276
  call void @llvm.dbg.value(metadata i32 %call45, metadata !180, metadata !DIExpression()), !dbg !206
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !277
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !278

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body33 ], [ 0, %for.body33.preheader ]
  %sum.080 = phi i32 [ %add, %for.body33 ], [ 0, %for.body33.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv83, metadata !190, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.value(metadata i32 %sum.080, metadata !189, metadata !DIExpression()), !dbg !206
  %arrayidx35 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv83, !dbg !280
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !280, !tbaa !127
  %add = add nsw i32 %19, %sum.080, !dbg !248
  call void @llvm.dbg.value(metadata i32 %add, metadata !189, metadata !DIExpression()), !dbg !206
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1, !dbg !281
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next84, metadata !190, metadata !DIExpression()), !dbg !279
  %exitcond86.not = icmp eq i64 %indvars.iv.next84, 5000000, !dbg !282
  br i1 %exitcond86.not, label %for.cond.cleanup32, label %for.body33, !dbg !247, !llvm.loop !283

if.then48:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !285, !tbaa !200
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef %call45, ptr noundef nonnull @.str.3, i32 noundef 362) #16, !dbg !285
  tail call void @exit(i32 noundef %call45) #15, !dbg !285
  unreachable, !dbg !285

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !287
  call void @llvm.dbg.value(metadata i32 %call51, metadata !180, metadata !DIExpression()), !dbg !206
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !289
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !290

if.then54:                                        ; preds = %if.end50
  %21 = load ptr, ptr @stderr, align 8, !dbg !291, !tbaa !200
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %call51, ptr noundef nonnull @.str.3, i32 noundef 365) #16, !dbg !291
  tail call void @exit(i32 noundef %call51) #15, !dbg !291
  unreachable, !dbg !291

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !293
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !294
  ret i32 0, !dbg !295
}

declare !dbg !296 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !300 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #8

declare !dbg !303 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !306 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !311 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #9

declare !dbg !317 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare !dbg !318 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #8

declare !dbg !319 void @PAPI_shutdown() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #12

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "45f81f1ba2995564172487fd151549b6")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 283, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 284, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 285, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 286, type: !8, isLocal: false, isDefinition: true)
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
!83 = distinct !DISubprogram(name: "test_struct", scope: !3, file: !3, line: 70, type: !84, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !98, !99, !6}
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "OuterStruct", file: !3, line: 65, size: 3296, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !86, file: !3, line: 66, baseType: !6, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "innerStruct", scope: !86, file: !3, line: 67, baseType: !90, size: 3264, offset: 32)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "InnerStruct", file: !3, line: 59, size: 3264, elements: !91)
!91 = !{!92, !93, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !90, file: !3, line: 60, baseType: !6, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !90, file: !3, line: 61, baseType: !94, size: 3200, offset: 32)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3200, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 100)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !90, file: !3, line: 62, baseType: !6, size: 32, offset: 3232)
!98 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!100 = !{!101, !102, !103, !104, !105, !107}
!101 = !DILocalVariable(name: "outerStruct", arg: 1, scope: !83, file: !3, line: 70, type: !86)
!102 = !DILocalVariable(name: "a", arg: 2, scope: !83, file: !3, line: 70, type: !98)
!103 = !DILocalVariable(name: "cond", arg: 3, scope: !83, file: !3, line: 71, type: !99)
!104 = !DILocalVariable(name: "n", arg: 4, scope: !83, file: !3, line: 71, type: !6)
!105 = !DILocalVariable(name: "j", scope: !106, file: !3, line: 72, type: !6)
!106 = distinct !DILexicalBlock(scope: !83, file: !3, line: 72, column: 5)
!107 = !DILocalVariable(name: "i", scope: !108, file: !3, line: 73, type: !6)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 73, column: 9)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 72, column: 34)
!110 = distinct !DILexicalBlock(scope: !106, file: !3, line: 72, column: 5)
!111 = !DILocation(line: 70, column: 37, scope: !83)
!112 = !DILocation(line: 0, scope: !83)
!113 = !DILocation(line: 0, scope: !106)
!114 = !DILocation(line: 73, column: 9, scope: !108)
!115 = !DILocation(line: 72, column: 5, scope: !106)
!116 = !DILocation(line: 0, scope: !108)
!117 = !DILocation(line: 74, column: 17, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !3, line: 74, column: 17)
!119 = distinct !DILexicalBlock(scope: !120, file: !3, line: 73, column: 37)
!120 = distinct !DILexicalBlock(scope: !108, file: !3, line: 73, column: 9)
!121 = !{!122, !122, i64 0}
!122 = !{!"_Bool", !64, i64 0}
!123 = !{i8 0, i8 2}
!124 = !DILocation(line: 74, column: 17, scope: !119)
!125 = !DILocation(line: 76, column: 24, scope: !126)
!126 = distinct !DILexicalBlock(scope: !118, file: !3, line: 74, column: 26)
!127 = !{!128, !128, i64 0}
!128 = !{!"int", !64, i64 0}
!129 = !DILocation(line: 76, column: 17, scope: !126)
!130 = !DILocation(line: 76, column: 22, scope: !126)
!131 = !DILocation(line: 77, column: 13, scope: !126)
!132 = !DILocation(line: 73, column: 32, scope: !120)
!133 = !DILocation(line: 73, column: 27, scope: !120)
!134 = distinct !{!134, !114, !135, !136, !137}
!135 = !DILocation(line: 78, column: 9, scope: !108)
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"llvm.loop.unroll.disable"}
!138 = !DILocation(line: 72, column: 29, scope: !110)
!139 = !DILocation(line: 72, column: 23, scope: !110)
!140 = distinct !{!140, !115, !141, !136, !137}
!141 = !DILocation(line: 79, column: 5, scope: !106)
!142 = !DILocation(line: 80, column: 1, scope: !83)
!143 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 288, type: !144, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!5, !6}
!146 = !{!147, !148}
!147 = !DILocalVariable(name: "n", arg: 1, scope: !143, file: !3, line: 288, type: !6)
!148 = !DILocalVariable(name: "ptr", scope: !143, file: !3, line: 289, type: !5)
!149 = !DILocation(line: 0, scope: !143)
!150 = !DILocation(line: 289, column: 45, scope: !143)
!151 = !DILocation(line: 289, column: 43, scope: !143)
!152 = !DILocation(line: 289, column: 24, scope: !143)
!153 = !DILocation(line: 290, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !143, file: !3, line: 290, column: 9)
!155 = !DILocation(line: 290, column: 9, scope: !143)
!156 = !DILocation(line: 291, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !3, line: 290, column: 22)
!158 = !DILocation(line: 292, column: 9, scope: !157)
!159 = !DILocation(line: 294, column: 5, scope: !143)
!160 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 297, type: !161, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{!8, !6}
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "n", arg: 1, scope: !160, file: !3, line: 297, type: !6)
!165 = !DILocalVariable(name: "ptr", scope: !160, file: !3, line: 298, type: !8)
!166 = !DILocation(line: 0, scope: !160)
!167 = !DILocation(line: 298, column: 48, scope: !160)
!168 = !DILocation(line: 298, column: 26, scope: !160)
!169 = !DILocation(line: 299, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !160, file: !3, line: 299, column: 9)
!171 = !DILocation(line: 299, column: 9, scope: !160)
!172 = !DILocation(line: 300, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !3, line: 299, column: 22)
!174 = !DILocation(line: 301, column: 9, scope: !173)
!175 = !DILocation(line: 303, column: 5, scope: !160)
!176 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 306, type: !177, scopeLine: 306, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!6}
!179 = !{!180, !181, !186, !187, !189, !190}
!180 = !DILocalVariable(name: "status", scope: !176, file: !3, line: 307, type: !6)
!181 = !DILocalVariable(name: "errstring", scope: !176, file: !3, line: 308, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, elements: !184)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !{!185}
!185 = !DISubrange(count: 128)
!186 = !DILocalVariable(name: "n", scope: !176, file: !3, line: 321, type: !6)
!187 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 332, type: !6)
!188 = distinct !DILexicalBlock(scope: !176, file: !3, line: 332, column: 5)
!189 = !DILocalVariable(name: "sum", scope: !176, file: !3, line: 343, type: !6)
!190 = !DILocalVariable(name: "i", scope: !191, file: !3, line: 345, type: !6)
!191 = distinct !DILexicalBlock(scope: !176, file: !3, line: 345, column: 5)
!192 = !DILocation(line: 308, column: 5, scope: !176)
!193 = !DILocation(line: 308, column: 10, scope: !176)
!194 = !DILocation(line: 310, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !176, file: !3, line: 310, column: 9)
!196 = !DILocation(line: 310, column: 45, scope: !195)
!197 = !DILocation(line: 310, column: 9, scope: !176)
!198 = !DILocation(line: 311, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !3, line: 310, column: 66)
!200 = !{!201, !201, i64 0}
!201 = !{!"any pointer", !64, i64 0}
!202 = !DILocation(line: 311, column: 9, scope: !199)
!203 = !DILocation(line: 312, column: 9, scope: !199)
!204 = !DILocation(line: 316, column: 19, scope: !205)
!205 = distinct !DILexicalBlock(scope: !176, file: !3, line: 316, column: 9)
!206 = !DILocation(line: 0, scope: !176)
!207 = !DILocation(line: 316, column: 52, scope: !205)
!208 = !DILocation(line: 316, column: 9, scope: !176)
!209 = !DILocation(line: 316, column: 64, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !3, line: 316, column: 64)
!211 = !DILocation(line: 319, column: 35, scope: !212)
!212 = distinct !DILexicalBlock(scope: !176, file: !3, line: 319, column: 9)
!213 = !DILocation(line: 319, column: 19, scope: !212)
!214 = !DILocation(line: 319, column: 69, scope: !212)
!215 = !DILocation(line: 319, column: 9, scope: !176)
!216 = !DILocation(line: 319, column: 81, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 319, column: 81)
!218 = !DILocation(line: 323, column: 9, scope: !176)
!219 = !DILocation(line: 323, column: 7, scope: !176)
!220 = !DILocation(line: 324, column: 9, scope: !176)
!221 = !DILocation(line: 324, column: 7, scope: !176)
!222 = !DILocation(line: 325, column: 9, scope: !176)
!223 = !DILocation(line: 325, column: 7, scope: !176)
!224 = !DILocation(line: 326, column: 12, scope: !176)
!225 = !DILocation(line: 326, column: 10, scope: !176)
!226 = !DILocation(line: 328, column: 13, scope: !176)
!227 = !DILocation(line: 330, column: 11, scope: !176)
!228 = !DILocation(line: 330, column: 5, scope: !176)
!229 = !DILocation(line: 0, scope: !188)
!230 = !DILocation(line: 332, column: 5, scope: !188)
!231 = !DILocation(line: 333, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !3, line: 332, column: 33)
!233 = distinct !DILexicalBlock(scope: !188, file: !3, line: 332, column: 5)
!234 = !DILocation(line: 333, column: 14, scope: !232)
!235 = !DILocation(line: 334, column: 9, scope: !232)
!236 = !DILocation(line: 334, column: 14, scope: !232)
!237 = !DILocation(line: 335, column: 9, scope: !232)
!238 = !DILocation(line: 335, column: 14, scope: !232)
!239 = !DILocation(line: 336, column: 22, scope: !232)
!240 = !DILocation(line: 336, column: 27, scope: !232)
!241 = !DILocation(line: 336, column: 9, scope: !232)
!242 = !DILocation(line: 336, column: 17, scope: !232)
!243 = !DILocation(line: 332, column: 28, scope: !233)
!244 = !DILocation(line: 332, column: 23, scope: !233)
!245 = distinct !{!245, !230, !246, !136, !137}
!246 = !DILocation(line: 337, column: 5, scope: !188)
!247 = !DILocation(line: 345, column: 5, scope: !191)
!248 = !DILocation(line: 346, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 345, column: 33)
!250 = distinct !DILexicalBlock(scope: !191, file: !3, line: 345, column: 5)
!251 = !DILocation(line: 349, column: 5, scope: !176)
!252 = !DILocation(line: 351, column: 10, scope: !176)
!253 = !DILocation(line: 351, column: 5, scope: !176)
!254 = !DILocation(line: 352, column: 10, scope: !176)
!255 = !DILocation(line: 352, column: 5, scope: !176)
!256 = !DILocation(line: 353, column: 10, scope: !176)
!257 = !DILocation(line: 353, column: 5, scope: !176)
!258 = !DILocation(line: 354, column: 10, scope: !176)
!259 = !DILocation(line: 354, column: 5, scope: !176)
!260 = !DILocation(line: 356, column: 53, scope: !176)
!261 = !{!262, !262, i64 0}
!262 = !{!"long long", !64, i64 0}
!263 = !DILocation(line: 356, column: 5, scope: !176)
!264 = !DILocation(line: 357, column: 36, scope: !176)
!265 = !DILocation(line: 357, column: 5, scope: !176)
!266 = !DILocation(line: 358, column: 50, scope: !176)
!267 = !DILocation(line: 358, column: 5, scope: !176)
!268 = !DILocation(line: 359, column: 49, scope: !176)
!269 = !DILocation(line: 359, column: 5, scope: !176)
!270 = !DILocation(line: 360, column: 40, scope: !176)
!271 = !{!272, !272, i64 0}
!272 = !{!"double", !64, i64 0}
!273 = !DILocation(line: 360, column: 5, scope: !176)
!274 = !DILocation(line: 362, column: 38, scope: !275)
!275 = distinct !DILexicalBlock(scope: !176, file: !3, line: 362, column: 9)
!276 = !DILocation(line: 362, column: 19, scope: !275)
!277 = !DILocation(line: 362, column: 72, scope: !275)
!278 = !DILocation(line: 362, column: 9, scope: !176)
!279 = !DILocation(line: 0, scope: !191)
!280 = !DILocation(line: 346, column: 16, scope: !249)
!281 = !DILocation(line: 345, column: 28, scope: !250)
!282 = !DILocation(line: 345, column: 23, scope: !250)
!283 = distinct !{!283, !247, !284, !136, !137}
!284 = !DILocation(line: 347, column: 5, scope: !191)
!285 = !DILocation(line: 362, column: 84, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !3, line: 362, column: 84)
!287 = !DILocation(line: 365, column: 19, scope: !288)
!288 = distinct !DILexicalBlock(scope: !176, file: !3, line: 365, column: 9)
!289 = !DILocation(line: 365, column: 53, scope: !288)
!290 = !DILocation(line: 365, column: 9, scope: !176)
!291 = !DILocation(line: 365, column: 65, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 365, column: 65)
!293 = !DILocation(line: 368, column: 5, scope: !176)
!294 = !DILocation(line: 371, column: 1, scope: !176)
!295 = !DILocation(line: 370, column: 5, scope: !176)
!296 = !DISubprogram(name: "PAPI_library_init", scope: !297, file: !297, line: 1172, type: !298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!297 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!298 = !DISubroutineType(types: !299)
!299 = !{!6, !6}
!300 = !DISubprogram(name: "PAPI_create_eventset", scope: !297, file: !297, line: 1147, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!301 = !DISubroutineType(types: !302)
!302 = !{!6, !5}
!303 = !DISubprogram(name: "PAPI_add_events", scope: !297, file: !297, line: 1143, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!304 = !DISubroutineType(types: !305)
!305 = !{!6, !6, !5, !6}
!306 = !DISubprogram(name: "srand", scope: !307, file: !307, line: 455, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!307 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!311 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !316}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !315, line: 7, baseType: !52)
!315 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!317 = !DISubprogram(name: "PAPI_remove_events", scope: !297, file: !297, line: 1192, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!318 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !297, file: !297, line: 1149, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubprogram(name: "PAPI_shutdown", scope: !297, file: !297, line: 1202, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!320 = !DISubroutineType(types: !321)
!321 = !{null}
