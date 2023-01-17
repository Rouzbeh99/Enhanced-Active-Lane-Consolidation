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
define dso_local void @simple_if(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %cmp331 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp331, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  %1 = call i32 @llvm.vscale.i32(), !dbg !110
  %2 = mul i32 %1, 4, !dbg !110
  %3 = mul i32 %2, 2, !dbg !110
  %4 = icmp uge i32 %n, %3, !dbg !110
  br i1 %4, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !110

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 37) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !115

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %for.cond.preheader
  %6 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call15 = tail call i32 @PAPI_stop(i32 noundef %6, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call15, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !118
  br i1 %cmp16.not, label %if.end19, label %if.then17, !dbg !119

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %11, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %7 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %7, 0, !dbg !120
  br i1 %tobool.not, label %for.inc, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %8 = load i32, ptr %arrayidx6, align 4, !dbg !127, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !129
  %9 = load i32, ptr %arrayidx8, align 4, !dbg !129, !tbaa !102
  %add = add nsw i32 %9, %8, !dbg !130
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !131
  %10 = load i32, ptr %arrayidx10, align 4, !dbg !131, !tbaa !102
  %add11 = add nsw i32 %add, %10, !dbg !132
  store i32 %add11, ptr %arrayidx10, align 4, !dbg !133, !tbaa !102
  br label %for.inc, !dbg !134

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %11 = phi i64 [ 0, %for.body.preheader ], [ %85, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %12 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %13 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %14 = urem i32 %n, %2
  %15 = mul i32 %2, 2
  %16 = add i32 %15, %14
  %total.iterations.to.be.vectorized = sub i32 %n, %16
  %17 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !120
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = load <vscale x 4 x i8>, ptr %17, align 4
  %20 = icmp eq <vscale x 4 x i8> %19, zeroinitializer
  %21 = xor <vscale x 4 x i1> %20, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %22 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %21)
  %23 = trunc i64 %22 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %71, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %13, %pre.alc ], [ %68, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %21, %pre.alc ], [ %69, %new.latch ]
  %uniform.vec.actives = phi i32 [ %23, %pre.alc ], [ %70, %new.latch ]
  %24 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %25 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !120
  %26 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %27 = load <vscale x 4 x i8>, ptr %25, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  %29 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %31 = trunc i64 %30 to i32
  %32 = add i32 %uniform.vec.actives, %31
  %condition = icmp ule i32 %32, %2
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %34 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %24)
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %35, <vscale x 4 x i32> %33, <vscale x 4 x i32> %34)
  %37 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %32)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %37, <vscale x 4 x i1> %37)
  %39 = trunc i64 %38 to i32
  %40 = icmp ult i32 %32, %2
  br i1 %40, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %41 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !127
  %42 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !129
  %43 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !131
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %45 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %41, i32 16, <vscale x 4 x i1> %29, <vscale x 4 x i32> undef)
  %46 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %42, i32 16, <vscale x 4 x i1> %29, <vscale x 4 x i32> undef)
  %47 = add <vscale x 4 x i32> %46, %45
  %48 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %43, i32 16, <vscale x 4 x i1> %29, <vscale x 4 x i32> undef)
  %49 = add <vscale x 4 x i32> %47, %48
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %49, ptr %43, i32 16, <vscale x 4 x i1> %29)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %50 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !127
  %51 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !129
  %52 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !131
  %53 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %12, ptr %50, <vscale x 4 x i32> %36)
  %54 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %12, ptr %51, <vscale x 4 x i32> %36)
  %55 = add <vscale x 4 x i32> %54, %53
  %56 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %12, ptr %52, <vscale x 4 x i32> %36)
  %57 = add <vscale x 4 x i32> %55, %56
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %57, <vscale x 4 x i1> %12, ptr %52, <vscale x 4 x i32> %36)
  %58 = add i32 %vector.loop.index, %2
  %59 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %58, i32 1)
  %60 = getelementptr inbounds i8, ptr %cond, i32 %58, !dbg !120
  %61 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %58, i32 1)
  %62 = load <vscale x 4 x i8>, ptr %60, align 4
  %63 = icmp eq <vscale x 4 x i8> %62, zeroinitializer
  %64 = xor <vscale x 4 x i1> %63, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %65 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %64, <vscale x 4 x i1> %64)
  %66 = trunc i64 %65 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %67 = phi i32 [ %73, %join.block ], [ %vector.loop.index, %linearized ]
  %68 = phi <vscale x 4 x i32> [ %74, %join.block ], [ %uniform.vector, %linearized ]
  %69 = phi <vscale x 4 x i1> [ %75, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %70 = phi i32 [ %76, %join.block ], [ %uniform.vec.actives, %linearized ]
  %71 = add i32 %67, %2
  %72 = icmp uge i32 %71, %total.iterations.to.be.vectorized
  br i1 %72, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %73 = phi i32 [ %vector.loop.index, %lane.gather ], [ %58, %uniform.block ]
  %74 = phi <vscale x 4 x i32> [ %36, %lane.gather ], [ %59, %uniform.block ]
  %75 = phi <vscale x 4 x i1> [ %37, %lane.gather ], [ %64, %uniform.block ]
  %76 = phi i32 [ %39, %lane.gather ], [ %66, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %16, 0
  %77 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !127
  %78 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !129
  %79 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !131
  %80 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %69, ptr %77, <vscale x 4 x i32> %68)
  %81 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %69, ptr %78, <vscale x 4 x i32> %68)
  %82 = add <vscale x 4 x i32> %81, %80
  %83 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %69, ptr %79, <vscale x 4 x i32> %68)
  %84 = add <vscale x 4 x i32> %82, %83
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %84, <vscale x 4 x i1> %69, ptr %79, <vscale x 4 x i32> %68)
  %85 = zext i32 %71 to i64
  br i1 %condition1, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then4, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !110, !llvm.loop !136

if.then17:                                        ; preds = %for.cond.cleanup
  %86 = load ptr, ptr @stderr, align 8, !dbg !140, !tbaa !113
  %call18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str, i32 noundef %call15, ptr noundef nonnull @.str.1, i32 noundef 54) #14, !dbg !140
  tail call void @exit(i32 noundef %call15) #15, !dbg !140
  unreachable, !dbg !140

if.end19:                                         ; preds = %for.cond.cleanup
  %call20 = tail call double @getTimeMiliSeconds(), !dbg !142
  %sub = fsub double %call20, %call, !dbg !143
  store double %sub, ptr @ExecutionTime, align 8, !dbg !144, !tbaa !145
  ret void, !dbg !147
}

declare !dbg !148 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !152 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !160, metadata !DIExpression()), !dbg !162
  %conv = sext i32 %n to i64, !dbg !163
  %mul = shl nsw i64 %conv, 2, !dbg !164
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !165
  call void @llvm.dbg.value(metadata ptr %call, metadata !161, metadata !DIExpression()), !dbg !162
  %cmp = icmp eq ptr %call, null, !dbg !166
  br i1 %cmp, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !169
  tail call void @exit(i32 noundef 1) #15, !dbg !171
  unreachable, !dbg !171

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !172
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !177, metadata !DIExpression()), !dbg !179
  %conv = sext i32 %n to i64, !dbg !180
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !181
  call void @llvm.dbg.value(metadata ptr %call, metadata !178, metadata !DIExpression()), !dbg !179
  %cmp = icmp eq ptr %call, null, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !184

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !185
  tail call void @exit(i32 noundef 1) #15, !dbg !187
  unreachable, !dbg !187

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !188
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !189 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !194, metadata !DIExpression()), !dbg !206
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !207
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !209
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !210

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !211, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !213
  call void @exit(i32 noundef 1) #15, !dbg !214
  unreachable, !dbg !214

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !215
  call void @llvm.dbg.value(metadata i32 %call2, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !218
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !219

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !220, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 292) #14, !dbg !220
  tail call void @exit(i32 noundef %call2) #15, !dbg !220
  unreachable, !dbg !220

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !222, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !224
  call void @llvm.dbg.value(metadata i32 %call7, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !225
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !226

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !227, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 295) #14, !dbg !227
  tail call void @exit(i32 noundef %call7) #15, !dbg !227
  unreachable, !dbg !227

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 333234352, metadata !199, metadata !DIExpression()), !dbg !217
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 333234352), !dbg !229
  store ptr %call12, ptr @a, align 8, !dbg !230, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 333234352), !dbg !231
  store ptr %call13, ptr @b, align 8, !dbg !232, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 333234352), !dbg !233
  store ptr %call14, ptr @c, align 8, !dbg !234, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 333234352), !dbg !235
  store ptr %call15, ptr @cond, align 8, !dbg !236, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !237, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !238
  %conv = trunc i64 %call16 to i32, !dbg !238
  tail call void @srand(i32 noundef %conv) #13, !dbg !239
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !240
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()), !dbg !240
  br label %for.body, !dbg !241

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 333234352), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !243
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !217
  br label %for.body33, !dbg !244

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !200, metadata !DIExpression()), !dbg !240
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !245
  %9 = trunc i64 %indvars.iv to i32, !dbg !248
  store i32 %9, ptr %arrayidx19, align 4, !dbg !248, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !249
  store i32 2, ptr %arrayidx21, align 4, !dbg !250, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !251
  store i32 0, ptr %arrayidx23, align 4, !dbg !252, !tbaa !102
  %rem = urem i32 %9, 10, !dbg !253
  %cmp24 = icmp eq i32 %rem, 0, !dbg !254
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !255
  %frombool = zext i1 %cmp24 to i8, !dbg !256
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !256, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !200, metadata !DIExpression()), !dbg !240
  %exitcond.not = icmp eq i64 %indvars.iv.next, 333234352, !dbg !258
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !241, !llvm.loop !259

for.cond.cleanup32:                               ; preds = %for.body33
  %add.lcssa = phi i32 [ %add, %for.body33 ], !dbg !261
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !264
  %10 = load ptr, ptr @a, align 8, !dbg !265, !tbaa !113
  tail call void @free(ptr noundef %10) #13, !dbg !266
  %11 = load ptr, ptr @b, align 8, !dbg !267, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !268
  %12 = load ptr, ptr @c, align 8, !dbg !269, !tbaa !113
  tail call void @free(ptr noundef %12) #13, !dbg !270
  %13 = load ptr, ptr @cond, align 8, !dbg !271, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !272
  %14 = load i64, ptr @CounterValues, align 8, !dbg !273, !tbaa !274
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %14), !dbg !276
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !277, !tbaa !274
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %15), !dbg !278
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !279, !tbaa !274
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %16), !dbg !280
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !281, !tbaa !274
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %17), !dbg !282
  %18 = load double, ptr @ExecutionTime, align 8, !dbg !283, !tbaa !145
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %18), !dbg !284
  %19 = load i32, ptr @EventSet, align 4, !dbg !285, !tbaa !102
  %call45 = tail call i32 @PAPI_remove_events(i32 noundef %19, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !287
  call void @llvm.dbg.value(metadata i32 %call45, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp46.not = icmp eq i32 %call45, 0, !dbg !288
  br i1 %cmp46.not, label %if.end50, label %if.then48, !dbg !289

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !203, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !202, metadata !DIExpression()), !dbg !217
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv84, !dbg !290
  %20 = load i32, ptr %arrayidx35, align 4, !dbg !290, !tbaa !102
  %add = add nsw i32 %20, %sum.081, !dbg !261
  call void @llvm.dbg.value(metadata i32 %add, metadata !202, metadata !DIExpression()), !dbg !217
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !291
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !203, metadata !DIExpression()), !dbg !243
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 333234352, !dbg !292
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !244, !llvm.loop !293

if.then48:                                        ; preds = %for.cond.cleanup32
  %21 = load ptr, ptr @stderr, align 8, !dbg !295, !tbaa !113
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call45, ptr noundef nonnull @.str.1, i32 noundef 338) #14, !dbg !295
  tail call void @exit(i32 noundef %call45) #15, !dbg !295
  unreachable, !dbg !295

if.end50:                                         ; preds = %for.cond.cleanup32
  %call51 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !297
  call void @llvm.dbg.value(metadata i32 %call51, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp52.not = icmp eq i32 %call51, 0, !dbg !299
  br i1 %cmp52.not, label %if.end56, label %if.then54, !dbg !300

if.then54:                                        ; preds = %if.end50
  %22 = load ptr, ptr @stderr, align 8, !dbg !301, !tbaa !113
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call51, ptr noundef nonnull @.str.1, i32 noundef 341) #14, !dbg !301
  tail call void @exit(i32 noundef %call51) #15, !dbg !301
  unreachable, !dbg !301

if.end56:                                         ; preds = %if.end50
  tail call void @PAPI_shutdown() #13, !dbg !303
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !304
  ret i32 0, !dbg !305
}

declare !dbg !306 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !307 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !310 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !313 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !318 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !324 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !325 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !326 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5be9dff4a3c023797860b7ec44941535")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 259, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 260, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 261, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 262, type: !8, isLocal: false, isDefinition: true)
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
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 30, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 30, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 30, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 31, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 31, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 33, type: !6)
!95 = !DILocalVariable(name: "t", scope: !83, file: !3, line: 35, type: !22)
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 40, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 40, column: 5)
!98 = !DILocation(line: 0, scope: !83)
!99 = !DILocation(line: 35, column: 16, scope: !83)
!100 = !DILocation(line: 37, column: 30, scope: !101)
!101 = distinct !DILexicalBlock(scope: !83, file: !3, line: 37, column: 9)
!102 = !{!103, !103, i64 0}
!103 = !{!"int", !64, i64 0}
!104 = !DILocation(line: 37, column: 19, scope: !101)
!105 = !DILocation(line: 37, column: 41, scope: !101)
!106 = !DILocation(line: 37, column: 9, scope: !83)
!107 = !DILocation(line: 0, scope: !97)
!108 = !DILocation(line: 40, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 40, column: 5)
!110 = !DILocation(line: 40, column: 5, scope: !97)
!111 = !DILocation(line: 37, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 37, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 54, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 54, column: 9)
!117 = !DILocation(line: 54, column: 19, scope: !116)
!118 = !DILocation(line: 54, column: 55, scope: !116)
!119 = !DILocation(line: 54, column: 9, scope: !83)
!120 = !DILocation(line: 41, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 41, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 40, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 41, column: 13, scope: !122)
!127 = !DILocation(line: 48, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 41, column: 22)
!129 = !DILocation(line: 48, column: 27, scope: !128)
!130 = !DILocation(line: 48, column: 25, scope: !128)
!131 = !DILocation(line: 48, column: 34, scope: !128)
!132 = !DILocation(line: 48, column: 32, scope: !128)
!133 = !DILocation(line: 48, column: 18, scope: !128)
!134 = !DILocation(line: 49, column: 9, scope: !128)
!135 = !DILocation(line: 40, column: 28, scope: !109)
!136 = distinct !{!136, !110, !137, !138, !139}
!137 = !DILocation(line: 50, column: 5, scope: !97)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 54, column: 67, scope: !141)
!141 = distinct !DILexicalBlock(scope: !116, file: !3, line: 54, column: 67)
!142 = !DILocation(line: 56, column: 21, scope: !83)
!143 = !DILocation(line: 56, column: 42, scope: !83)
!144 = !DILocation(line: 56, column: 19, scope: !83)
!145 = !{!146, !146, i64 0}
!146 = !{!"double", !64, i64 0}
!147 = !DILocation(line: 57, column: 1, scope: !83)
!148 = !DISubprogram(name: "PAPI_start", scope: !149, file: !149, line: 1204, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!149 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !6}
!152 = !DISubprogram(name: "PAPI_stop", scope: !149, file: !149, line: 1206, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!153 = !DISubroutineType(types: !154)
!154 = !{!6, !6, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!156 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 264, type: !157, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!5, !6}
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "n", arg: 1, scope: !156, file: !3, line: 264, type: !6)
!161 = !DILocalVariable(name: "ptr", scope: !156, file: !3, line: 265, type: !5)
!162 = !DILocation(line: 0, scope: !156)
!163 = !DILocation(line: 265, column: 45, scope: !156)
!164 = !DILocation(line: 265, column: 43, scope: !156)
!165 = !DILocation(line: 265, column: 24, scope: !156)
!166 = !DILocation(line: 266, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !156, file: !3, line: 266, column: 9)
!168 = !DILocation(line: 266, column: 9, scope: !156)
!169 = !DILocation(line: 267, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 266, column: 22)
!171 = !DILocation(line: 268, column: 9, scope: !170)
!172 = !DILocation(line: 270, column: 5, scope: !156)
!173 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 273, type: !174, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!8, !6}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "n", arg: 1, scope: !173, file: !3, line: 273, type: !6)
!178 = !DILocalVariable(name: "ptr", scope: !173, file: !3, line: 274, type: !8)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 274, column: 48, scope: !173)
!181 = !DILocation(line: 274, column: 26, scope: !173)
!182 = !DILocation(line: 275, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !3, line: 275, column: 9)
!184 = !DILocation(line: 275, column: 9, scope: !173)
!185 = !DILocation(line: 276, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 275, column: 22)
!187 = !DILocation(line: 277, column: 9, scope: !186)
!188 = !DILocation(line: 279, column: 5, scope: !173)
!189 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 282, type: !190, scopeLine: 282, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!6}
!192 = !{!193, !194, !199, !200, !202, !203}
!193 = !DILocalVariable(name: "status", scope: !189, file: !3, line: 283, type: !6)
!194 = !DILocalVariable(name: "errstring", scope: !189, file: !3, line: 284, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !197)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!198}
!198 = !DISubrange(count: 128)
!199 = !DILocalVariable(name: "n", scope: !189, file: !3, line: 297, type: !6)
!200 = !DILocalVariable(name: "i", scope: !201, file: !3, line: 308, type: !6)
!201 = distinct !DILexicalBlock(scope: !189, file: !3, line: 308, column: 5)
!202 = !DILocalVariable(name: "sum", scope: !189, file: !3, line: 319, type: !6)
!203 = !DILocalVariable(name: "i", scope: !204, file: !3, line: 321, type: !6)
!204 = distinct !DILexicalBlock(scope: !189, file: !3, line: 321, column: 5)
!205 = !DILocation(line: 284, column: 5, scope: !189)
!206 = !DILocation(line: 284, column: 10, scope: !189)
!207 = !DILocation(line: 286, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !189, file: !3, line: 286, column: 9)
!209 = !DILocation(line: 286, column: 45, scope: !208)
!210 = !DILocation(line: 286, column: 9, scope: !189)
!211 = !DILocation(line: 287, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 286, column: 66)
!213 = !DILocation(line: 287, column: 9, scope: !212)
!214 = !DILocation(line: 288, column: 9, scope: !212)
!215 = !DILocation(line: 292, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !189, file: !3, line: 292, column: 9)
!217 = !DILocation(line: 0, scope: !189)
!218 = !DILocation(line: 292, column: 52, scope: !216)
!219 = !DILocation(line: 292, column: 9, scope: !189)
!220 = !DILocation(line: 292, column: 64, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !3, line: 292, column: 64)
!222 = !DILocation(line: 295, column: 35, scope: !223)
!223 = distinct !DILexicalBlock(scope: !189, file: !3, line: 295, column: 9)
!224 = !DILocation(line: 295, column: 19, scope: !223)
!225 = !DILocation(line: 295, column: 69, scope: !223)
!226 = !DILocation(line: 295, column: 9, scope: !189)
!227 = !DILocation(line: 295, column: 81, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !3, line: 295, column: 81)
!229 = !DILocation(line: 299, column: 9, scope: !189)
!230 = !DILocation(line: 299, column: 7, scope: !189)
!231 = !DILocation(line: 300, column: 9, scope: !189)
!232 = !DILocation(line: 300, column: 7, scope: !189)
!233 = !DILocation(line: 301, column: 9, scope: !189)
!234 = !DILocation(line: 301, column: 7, scope: !189)
!235 = !DILocation(line: 302, column: 12, scope: !189)
!236 = !DILocation(line: 302, column: 10, scope: !189)
!237 = !DILocation(line: 304, column: 13, scope: !189)
!238 = !DILocation(line: 306, column: 11, scope: !189)
!239 = !DILocation(line: 306, column: 5, scope: !189)
!240 = !DILocation(line: 0, scope: !201)
!241 = !DILocation(line: 308, column: 5, scope: !201)
!242 = !DILocation(line: 315, column: 5, scope: !189)
!243 = !DILocation(line: 0, scope: !204)
!244 = !DILocation(line: 321, column: 5, scope: !204)
!245 = !DILocation(line: 309, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 308, column: 33)
!247 = distinct !DILexicalBlock(scope: !201, file: !3, line: 308, column: 5)
!248 = !DILocation(line: 309, column: 14, scope: !246)
!249 = !DILocation(line: 310, column: 9, scope: !246)
!250 = !DILocation(line: 310, column: 14, scope: !246)
!251 = !DILocation(line: 311, column: 9, scope: !246)
!252 = !DILocation(line: 311, column: 14, scope: !246)
!253 = !DILocation(line: 312, column: 22, scope: !246)
!254 = !DILocation(line: 312, column: 27, scope: !246)
!255 = !DILocation(line: 312, column: 9, scope: !246)
!256 = !DILocation(line: 312, column: 17, scope: !246)
!257 = !DILocation(line: 308, column: 28, scope: !247)
!258 = !DILocation(line: 308, column: 23, scope: !247)
!259 = distinct !{!259, !241, !260, !138, !139}
!260 = !DILocation(line: 313, column: 5, scope: !201)
!261 = !DILocation(line: 322, column: 13, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 321, column: 33)
!263 = distinct !DILexicalBlock(scope: !204, file: !3, line: 321, column: 5)
!264 = !DILocation(line: 325, column: 5, scope: !189)
!265 = !DILocation(line: 327, column: 10, scope: !189)
!266 = !DILocation(line: 327, column: 5, scope: !189)
!267 = !DILocation(line: 328, column: 10, scope: !189)
!268 = !DILocation(line: 328, column: 5, scope: !189)
!269 = !DILocation(line: 329, column: 10, scope: !189)
!270 = !DILocation(line: 329, column: 5, scope: !189)
!271 = !DILocation(line: 330, column: 10, scope: !189)
!272 = !DILocation(line: 330, column: 5, scope: !189)
!273 = !DILocation(line: 332, column: 53, scope: !189)
!274 = !{!275, !275, i64 0}
!275 = !{!"long long", !64, i64 0}
!276 = !DILocation(line: 332, column: 5, scope: !189)
!277 = !DILocation(line: 333, column: 36, scope: !189)
!278 = !DILocation(line: 333, column: 5, scope: !189)
!279 = !DILocation(line: 334, column: 50, scope: !189)
!280 = !DILocation(line: 334, column: 5, scope: !189)
!281 = !DILocation(line: 335, column: 49, scope: !189)
!282 = !DILocation(line: 335, column: 5, scope: !189)
!283 = !DILocation(line: 336, column: 40, scope: !189)
!284 = !DILocation(line: 336, column: 5, scope: !189)
!285 = !DILocation(line: 338, column: 38, scope: !286)
!286 = distinct !DILexicalBlock(scope: !189, file: !3, line: 338, column: 9)
!287 = !DILocation(line: 338, column: 19, scope: !286)
!288 = !DILocation(line: 338, column: 72, scope: !286)
!289 = !DILocation(line: 338, column: 9, scope: !189)
!290 = !DILocation(line: 322, column: 16, scope: !262)
!291 = !DILocation(line: 321, column: 28, scope: !263)
!292 = !DILocation(line: 321, column: 23, scope: !263)
!293 = distinct !{!293, !244, !294, !138, !139}
!294 = !DILocation(line: 323, column: 5, scope: !204)
!295 = !DILocation(line: 338, column: 84, scope: !296)
!296 = distinct !DILexicalBlock(scope: !286, file: !3, line: 338, column: 84)
!297 = !DILocation(line: 341, column: 19, scope: !298)
!298 = distinct !DILexicalBlock(scope: !189, file: !3, line: 341, column: 9)
!299 = !DILocation(line: 341, column: 53, scope: !298)
!300 = !DILocation(line: 341, column: 9, scope: !189)
!301 = !DILocation(line: 341, column: 65, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 341, column: 65)
!303 = !DILocation(line: 344, column: 5, scope: !189)
!304 = !DILocation(line: 347, column: 1, scope: !189)
!305 = !DILocation(line: 346, column: 5, scope: !189)
!306 = !DISubprogram(name: "PAPI_library_init", scope: !149, file: !149, line: 1172, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!307 = !DISubprogram(name: "PAPI_create_eventset", scope: !149, file: !149, line: 1147, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!308 = !DISubroutineType(types: !309)
!309 = !{!6, !5}
!310 = !DISubprogram(name: "PAPI_add_events", scope: !149, file: !149, line: 1143, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!311 = !DISubroutineType(types: !312)
!312 = !{!6, !6, !5, !6}
!313 = !DISubprogram(name: "srand", scope: !314, file: !314, line: 455, type: !315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!314 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!315 = !DISubroutineType(types: !316)
!316 = !{null, !317}
!317 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!318 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubroutineType(types: !320)
!320 = !{!321, !323}
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !322, line: 7, baseType: !52)
!322 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!324 = !DISubprogram(name: "PAPI_remove_events", scope: !149, file: !149, line: 1192, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!325 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !149, file: !149, line: 1149, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DISubprogram(name: "PAPI_shutdown", scope: !149, file: !149, line: 1202, type: !327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!327 = !DISubroutineType(types: !328)
!328 = !{null}
