; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #14, !dbg !57
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !47, metadata !DIExpression()), !dbg !58
  %call = call i32 @clock_gettime(i32 noundef 2, ptr noundef nonnull %ts) #14, !dbg !59
  %0 = load i64, ptr %ts, align 8, !dbg !60, !tbaa !61
  %conv = sitofp i64 %0 to double, !dbg !66
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i64 0, i32 1, !dbg !67
  %1 = load i64, ptr %tv_nsec, align 8, !dbg !67, !tbaa !68
  %conv1 = sitofp i64 %1 to double, !dbg !69
  %mul2 = fmul double %conv1, 0x3EB0C6F7A0B5ED8D, !dbg !70
  %2 = call double @llvm.fmuladd.f64(double %conv, double 1.000000e+03, double %mul2), !dbg !71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #14, !dbg !72
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
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #4 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %b, metadata !90, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %c, metadata !91, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata ptr %cond, metadata !92, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 %n, metadata !93, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata ptr undef, metadata !94, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !95, metadata !DIExpression()), !dbg !99
  %cmp116 = icmp sgt i32 %n, 0, !dbg !100
  br i1 %cmp116, label %for.body.preheader, label %for.cond.cleanup, !dbg !102

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !100
  %0 = call i32 @llvm.vscale.i32(), !dbg !102
  %1 = mul i32 %0, 4, !dbg !102
  %2 = mul i32 %1, 2, !dbg !102
  %3 = icmp uge i32 %n, %2, !dbg !102
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !102

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !103

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  ret void, !dbg !103

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %13, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !95, metadata !DIExpression()), !dbg !99
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !104
  %4 = load i8, ptr %arrayidx, align 1, !dbg !104, !tbaa !107, !range !109
  %tobool.not = icmp eq i8 %4, 0, !dbg !104
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !110

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !111
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !113
  %5 = load i32, ptr %arrayidx4, align 4, !dbg !113, !tbaa !114
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !116
  %6 = load i32, ptr %arrayidx7, align 4, !dbg !116, !tbaa !114
  %7 = trunc i64 %indvars.iv to i32, !dbg !117
  %mul17 = mul nsw i32 %6, %7, !dbg !117
  %.neg = mul i32 %5, -2
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !118
  %8 = shl i32 %indvars.iv.tr, 1, !dbg !118
  %sub11 = add i32 %6, %8, !dbg !118
  %add = add i32 %sub11, %mul17, !dbg !119
  %add21 = add i32 %add, %.neg, !dbg !120
  store i32 %add21, ptr %arrayidx2, align 4, !dbg !120, !tbaa !114
  %mul39112.neg = sub i32 -3, %5, !dbg !121
  %add40.neg119 = mul i32 %mul39112.neg, %7, !dbg !121
  %9 = add i32 %5, %6
  %reass.add114 = sub i32 %add21, %9
  %reass.mul115 = shl i32 %reass.add114, 1
  %add33 = add i32 %add40.neg119, 2, !dbg !122
  %sub43 = add i32 %add33, %reass.mul115, !dbg !123
  store i32 %sub43, ptr %arrayidx7, align 4, !dbg !123, !tbaa !114
  %10 = add nsw i32 %sub43, %add21, !dbg !124
  %11 = sub nsw i32 %5, %sub43, !dbg !125
  %sub57 = shl nsw i32 %11, 1, !dbg !125
  %mul58 = mul nsw i32 %7, %7, !dbg !126
  %add59 = add nsw i32 %sub57, %mul58, !dbg !127
  %mul60.neg = mul i32 %add59, -3, !dbg !128
  %12 = sub i32 %10, %7, !dbg !129
  %sub61 = shl i32 %12, 1, !dbg !129
  %sub67 = add i32 %sub61, %mul60.neg, !dbg !130
  store i32 %sub67, ptr %arrayidx4, align 4, !dbg !130, !tbaa !114
  br label %for.inc, !dbg !131

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %13 = phi i64 [ 0, %for.body.preheader ], [ %143, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %14 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %15 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %16 = urem i32 %n, %1
  %total.iterations.to.be.vectorized = sub i32 %n, %16
  %17 = getelementptr inbounds i8, ptr %cond, i32 0, !dbg !104
  %18 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = load <vscale x 4 x i8>, ptr %17, align 4
  %20 = icmp eq <vscale x 4 x i8> %19, zeroinitializer
  %21 = xor <vscale x 4 x i1> %20, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %22 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %21)
  %23 = trunc i64 %22 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %110, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %15, %pre.alc ], [ %107, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %21, %pre.alc ], [ %108, %new.latch ]
  %uniform.vec.actives = phi i32 [ %23, %pre.alc ], [ %109, %new.latch ]
  %24 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %25 = getelementptr inbounds i8, ptr %cond, i32 %vector.loop.index, !dbg !104
  %26 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %27 = load <vscale x 4 x i8>, ptr %25, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  %29 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %31 = trunc i64 %30 to i32
  %32 = add i32 %uniform.vec.actives, %31
  %condition = icmp ule i32 %32, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %33 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %34 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %24)
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %35, <vscale x 4 x i32> %33, <vscale x 4 x i32> %34)
  %37 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %32)
  %38 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %37, <vscale x 4 x i1> %37)
  %39 = trunc i64 %38 to i32
  %40 = icmp ne i32 %32, %1
  %41 = call i1 @llvm.expect.i1(i1 %40, i1 true)
  br i1 %41, label %join.block, label %uniform.block

linearized:                                       ; preds = %alc.header
  %42 = getelementptr inbounds i32, ptr %a, i32 %vector.loop.index, !dbg !111
  %43 = getelementptr inbounds i32, ptr %c, i32 %vector.loop.index, !dbg !113
  %44 = getelementptr inbounds i32, ptr %b, i32 %vector.loop.index, !dbg !116
  %45 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %46 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %43, i32 16, <vscale x 4 x i1> %29, <vscale x 4 x i32> undef)
  %47 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %44, i32 16, <vscale x 4 x i1> %29, <vscale x 4 x i32> undef)
  %48 = mul <vscale x 4 x i32> %47, %45
  %49 = mul <vscale x 4 x i32> %46, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %50 = shl <vscale x 4 x i32> %45, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %51 = add <vscale x 4 x i32> %47, %50
  %52 = add <vscale x 4 x i32> %51, %48
  %53 = add <vscale x 4 x i32> %52, %49
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %53, ptr %42, i32 16, <vscale x 4 x i1> %29)
  %54 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %46
  %55 = mul <vscale x 4 x i32> %54, %45
  %56 = add <vscale x 4 x i32> %46, %47
  %57 = sub <vscale x 4 x i32> %53, %56
  %58 = shl <vscale x 4 x i32> %57, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %59 = add <vscale x 4 x i32> %55, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %60 = add <vscale x 4 x i32> %59, %58
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %60, ptr %44, i32 16, <vscale x 4 x i1> %29)
  %61 = add <vscale x 4 x i32> %60, %53
  %62 = sub <vscale x 4 x i32> %46, %60
  %63 = shl <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %64 = mul <vscale x 4 x i32> %45, %45
  %65 = add <vscale x 4 x i32> %63, %64
  %66 = mul <vscale x 4 x i32> %65, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %67 = sub <vscale x 4 x i32> %61, %45
  %68 = shl <vscale x 4 x i32> %67, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %69 = add <vscale x 4 x i32> %68, %66
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %69, ptr %43, i32 16, <vscale x 4 x i1> %29)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  %70 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !111
  %71 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !113
  %72 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !116
  %73 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %71, <vscale x 4 x i32> %36)
  %74 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %14, ptr %72, <vscale x 4 x i32> %36)
  %75 = mul <vscale x 4 x i32> %74, %36
  %76 = mul <vscale x 4 x i32> %73, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %77 = shl <vscale x 4 x i32> %36, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %78 = add <vscale x 4 x i32> %74, %77
  %79 = add <vscale x 4 x i32> %78, %75
  %80 = add <vscale x 4 x i32> %79, %76
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %80, <vscale x 4 x i1> %14, ptr %70, <vscale x 4 x i32> %36)
  %81 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %73
  %82 = mul <vscale x 4 x i32> %81, %36
  %83 = add <vscale x 4 x i32> %73, %74
  %84 = sub <vscale x 4 x i32> %80, %83
  %85 = shl <vscale x 4 x i32> %84, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %86 = add <vscale x 4 x i32> %82, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %87 = add <vscale x 4 x i32> %86, %85
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %87, <vscale x 4 x i1> %14, ptr %72, <vscale x 4 x i32> %36)
  %88 = add <vscale x 4 x i32> %87, %80
  %89 = sub <vscale x 4 x i32> %73, %87
  %90 = shl <vscale x 4 x i32> %89, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %91 = mul <vscale x 4 x i32> %36, %36
  %92 = add <vscale x 4 x i32> %90, %91
  %93 = mul <vscale x 4 x i32> %92, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %94 = sub <vscale x 4 x i32> %88, %36
  %95 = shl <vscale x 4 x i32> %94, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %96 = add <vscale x 4 x i32> %95, %93
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %96, <vscale x 4 x i1> %14, ptr %71, <vscale x 4 x i32> %36)
  %97 = add i32 %vector.loop.index, %1
  %98 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %97, i32 1)
  %99 = getelementptr inbounds i8, ptr %cond, i32 %97, !dbg !104
  %100 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %97, i32 1)
  %101 = load <vscale x 4 x i8>, ptr %99, align 4
  %102 = icmp eq <vscale x 4 x i8> %101, zeroinitializer
  %103 = xor <vscale x 4 x i1> %102, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %104 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %103, <vscale x 4 x i1> %103)
  %105 = trunc i64 %104 to i32
  br label %join.block

new.latch:                                        ; preds = %join.block, %linearized
  %106 = phi i32 [ %112, %join.block ], [ %vector.loop.index, %linearized ]
  %107 = phi <vscale x 4 x i32> [ %113, %join.block ], [ %uniform.vector, %linearized ]
  %108 = phi <vscale x 4 x i1> [ %114, %join.block ], [ %uniform.vector.predicates, %linearized ]
  %109 = phi i32 [ %115, %join.block ], [ %uniform.vec.actives, %linearized ]
  %110 = add i32 %106, %1
  %111 = icmp uge i32 %110, %total.iterations.to.be.vectorized
  br i1 %111, label %middel.block, label %alc.header

join.block:                                       ; preds = %uniform.block, %lane.gather
  %112 = phi i32 [ %vector.loop.index, %lane.gather ], [ %97, %uniform.block ]
  %113 = phi <vscale x 4 x i32> [ %36, %lane.gather ], [ %98, %uniform.block ]
  %114 = phi <vscale x 4 x i1> [ %37, %lane.gather ], [ %103, %uniform.block ]
  %115 = phi i32 [ %39, %lane.gather ], [ %105, %uniform.block ]
  br label %new.latch

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i32 %16, 0
  %116 = getelementptr inbounds i32, ptr %a, i32 0, !dbg !111
  %117 = getelementptr inbounds i32, ptr %c, i32 0, !dbg !113
  %118 = getelementptr inbounds i32, ptr %b, i32 0, !dbg !116
  %119 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %108, ptr %117, <vscale x 4 x i32> %107)
  %120 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %108, ptr %118, <vscale x 4 x i32> %107)
  %121 = mul <vscale x 4 x i32> %120, %107
  %122 = mul <vscale x 4 x i32> %119, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %123 = shl <vscale x 4 x i32> %107, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %124 = add <vscale x 4 x i32> %120, %123
  %125 = add <vscale x 4 x i32> %124, %121
  %126 = add <vscale x 4 x i32> %125, %122
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %126, <vscale x 4 x i1> %108, ptr %116, <vscale x 4 x i32> %107)
  %127 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %119
  %128 = mul <vscale x 4 x i32> %127, %107
  %129 = add <vscale x 4 x i32> %119, %120
  %130 = sub <vscale x 4 x i32> %126, %129
  %131 = shl <vscale x 4 x i32> %130, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %132 = add <vscale x 4 x i32> %128, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %133 = add <vscale x 4 x i32> %132, %131
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %133, <vscale x 4 x i1> %108, ptr %118, <vscale x 4 x i32> %107)
  %134 = add <vscale x 4 x i32> %133, %126
  %135 = sub <vscale x 4 x i32> %119, %133
  %136 = shl <vscale x 4 x i32> %135, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %137 = mul <vscale x 4 x i32> %107, %107
  %138 = add <vscale x 4 x i32> %136, %137
  %139 = mul <vscale x 4 x i32> %138, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %140 = sub <vscale x 4 x i32> %134, %107
  %141 = shl <vscale x 4 x i32> %140, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %142 = add <vscale x 4 x i32> %141, %139
  call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %142, <vscale x 4 x i1> %108, ptr %117, <vscale x 4 x i32> %107)
  %143 = zext i32 %110 to i64
  br i1 %condition1, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !95, metadata !DIExpression()), !dbg !99
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !100
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !102, !llvm.loop !133
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !141, metadata !DIExpression()), !dbg !143
  %conv = sext i32 %n to i64, !dbg !144
  %mul = shl nsw i64 %conv, 2, !dbg !145
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !146
  call void @llvm.dbg.value(metadata ptr %call, metadata !142, metadata !DIExpression()), !dbg !143
  %cmp = icmp eq ptr %call, null, !dbg !147
  br i1 %cmp, label %if.then, label %if.end, !dbg !149

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !150
  tail call void @exit(i32 noundef 1) #16, !dbg !152
  unreachable, !dbg !152

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !153
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !154 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !158, metadata !DIExpression()), !dbg !160
  %conv = sext i32 %n to i64, !dbg !161
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #15, !dbg !162
  call void @llvm.dbg.value(metadata ptr %call, metadata !159, metadata !DIExpression()), !dbg !160
  %cmp = icmp eq ptr %call, null, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !165

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !166
  tail call void @exit(i32 noundef 1) #16, !dbg !168
  unreachable, !dbg !168

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !169
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !170 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #14, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !175, metadata !DIExpression()), !dbg !187
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #14, !dbg !188
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !190
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !191

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !192, !tbaa !194
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %errstring) #17, !dbg !196
  call void @exit(i32 noundef 1) #16, !dbg !197
  unreachable, !dbg !197

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #14, !dbg !198
  call void @llvm.dbg.value(metadata i32 %call2, metadata !174, metadata !DIExpression()), !dbg !200
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !201
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !202

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !203, !tbaa !194
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call2, ptr noundef nonnull @.str.3, i32 noundef 90) #17, !dbg !203
  tail call void @exit(i32 noundef %call2) #16, !dbg !203
  unreachable, !dbg !203

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !205, !tbaa !114
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #14, !dbg !207
  call void @llvm.dbg.value(metadata i32 %call7, metadata !174, metadata !DIExpression()), !dbg !200
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !208
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !209

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !210, !tbaa !194
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %call7, ptr noundef nonnull @.str.3, i32 noundef 93) #17, !dbg !210
  tail call void @exit(i32 noundef %call7) #16, !dbg !210
  unreachable, !dbg !210

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !180, metadata !DIExpression()), !dbg !200
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !212
  store ptr %call12, ptr @a, align 8, !dbg !213, !tbaa !194
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !214
  store ptr %call13, ptr @b, align 8, !dbg !215, !tbaa !194
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !216
  store ptr %call14, ptr @c, align 8, !dbg !217, !tbaa !194
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !218
  store ptr %call15, ptr @cond, align 8, !dbg !219, !tbaa !194
  store i8 0, ptr %call15, align 1, !dbg !220, !tbaa !107
  %call16 = tail call i64 @time(ptr noundef null) #14, !dbg !221
  %conv = trunc i64 %call16 to i32, !dbg !221
  tail call void @srand(i32 noundef %conv) #14, !dbg !222
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !223
  br label %for.body, !dbg !224

for.cond.cleanup:                                 ; preds = %for.body
  %.lcssa = phi ptr [ %12, %for.body ], !dbg !225
  %4 = load ptr, ptr @a, align 8, !dbg !228, !tbaa !194
  %5 = load ptr, ptr @b, align 8, !dbg !229, !tbaa !194
  %6 = load ptr, ptr @c, align 8, !dbg !230, !tbaa !194
  tail call void @foo(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %.lcssa, i32 noundef 5000000), !dbg !231
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !200
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !232
  %7 = load ptr, ptr @c, align 8, !tbaa !194
  call void @llvm.dbg.value(metadata i32 0, metadata !184, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !200
  br label %for.body34, !dbg !233

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !181, metadata !DIExpression()), !dbg !223
  %8 = load ptr, ptr @a, align 8, !dbg !234, !tbaa !194
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !234
  %9 = trunc i64 %indvars.iv to i32, !dbg !235
  store i32 %9, ptr %arrayidx19, align 4, !dbg !235, !tbaa !114
  %10 = load ptr, ptr @b, align 8, !dbg !236, !tbaa !194
  %arrayidx21 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !236
  store i32 2, ptr %arrayidx21, align 4, !dbg !237, !tbaa !114
  %11 = load ptr, ptr @c, align 8, !dbg !238, !tbaa !194
  %arrayidx23 = getelementptr inbounds i32, ptr %11, i64 %indvars.iv, !dbg !238
  store i32 0, ptr %arrayidx23, align 4, !dbg !239, !tbaa !114
  %call24 = tail call i32 @rand() #14, !dbg !240
  %rem = srem i32 %call24, 100, !dbg !241
  %cmp25 = icmp slt i32 %rem, 40, !dbg !242
  %12 = load ptr, ptr @cond, align 8, !dbg !225, !tbaa !194
  %arrayidx28 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv, !dbg !225
  %frombool = zext i1 %cmp25 to i8, !dbg !243
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !243, !tbaa !107
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !181, metadata !DIExpression()), !dbg !223
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !245
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !224, !llvm.loop !246

for.cond.cleanup33:                               ; preds = %for.body34
  %add.lcssa = phi i32 [ %add, %for.body34 ], !dbg !248
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add.lcssa), !dbg !251
  %13 = load ptr, ptr @a, align 8, !dbg !252, !tbaa !194
  tail call void @free(ptr noundef %13) #14, !dbg !253
  %14 = load ptr, ptr @b, align 8, !dbg !254, !tbaa !194
  tail call void @free(ptr noundef %14) #14, !dbg !255
  %15 = load ptr, ptr @c, align 8, !dbg !256, !tbaa !194
  tail call void @free(ptr noundef %15) #14, !dbg !257
  %16 = load ptr, ptr @cond, align 8, !dbg !258, !tbaa !194
  tail call void @free(ptr noundef %16) #14, !dbg !259
  %17 = load i64, ptr @CounterValues, align 8, !dbg !260, !tbaa !261
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %17), !dbg !263
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !264, !tbaa !261
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %18), !dbg !265
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !266, !tbaa !261
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %19), !dbg !267
  %20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !268, !tbaa !261
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %20), !dbg !269
  %21 = load double, ptr @ExecutionTime, align 8, !dbg !270, !tbaa !271
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %21), !dbg !273
  %22 = load i32, ptr @EventSet, align 4, !dbg !274, !tbaa !114
  %call46 = tail call i32 @PAPI_remove_events(i32 noundef %22, ptr noundef nonnull @EventCodes, i32 noundef 4) #14, !dbg !276
  call void @llvm.dbg.value(metadata i32 %call46, metadata !174, metadata !DIExpression()), !dbg !200
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !277
  br i1 %cmp47.not, label %if.end51, label %if.then49, !dbg !278

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body34 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !184, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !183, metadata !DIExpression()), !dbg !200
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv84, !dbg !279
  %23 = load i32, ptr %arrayidx36, align 4, !dbg !279, !tbaa !114
  %add = add nsw i32 %23, %sum.081, !dbg !248
  call void @llvm.dbg.value(metadata i32 %add, metadata !183, metadata !DIExpression()), !dbg !200
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !184, metadata !DIExpression()), !dbg !232
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !281
  br i1 %exitcond87.not, label %for.cond.cleanup33, label %for.body34, !dbg !233, !llvm.loop !282

if.then49:                                        ; preds = %for.cond.cleanup33
  %24 = load ptr, ptr @stderr, align 8, !dbg !284, !tbaa !194
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.2, i32 noundef %call46, ptr noundef nonnull @.str.3, i32 noundef 134) #17, !dbg !284
  tail call void @exit(i32 noundef %call46) #16, !dbg !284
  unreachable, !dbg !284

if.end51:                                         ; preds = %for.cond.cleanup33
  %call52 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #14, !dbg !286
  call void @llvm.dbg.value(metadata i32 %call52, metadata !174, metadata !DIExpression()), !dbg !200
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !288
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !289

if.then55:                                        ; preds = %if.end51
  %25 = load ptr, ptr @stderr, align 8, !dbg !290, !tbaa !194
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.2, i32 noundef %call52, ptr noundef nonnull @.str.3, i32 noundef 137) #17, !dbg !290
  tail call void @exit(i32 noundef %call52) #16, !dbg !290
  unreachable, !dbg !290

if.end57:                                         ; preds = %if.end51
  tail call void @PAPI_shutdown() #14, !dbg !292
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #14, !dbg !293
  ret i32 0, !dbg !294
}

declare !dbg !295 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !299 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #8

declare !dbg !302 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !305 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !310 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !316 i32 @rand() local_unnamed_addr #3

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

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #11

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #13

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #13

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
attributes #12 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #13 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "594b395171a1287bb2351c9cc28d3ede")
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
!88 = !{!89, !90, !91, !92, !93, !94, !95}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !83, file: !3, line: 29, type: !86)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !83, file: !3, line: 29, type: !86)
!91 = !DILocalVariable(name: "c", arg: 3, scope: !83, file: !3, line: 29, type: !86)
!92 = !DILocalVariable(name: "cond", arg: 4, scope: !83, file: !3, line: 30, type: !87)
!93 = !DILocalVariable(name: "n", arg: 5, scope: !83, file: !3, line: 30, type: !6)
!94 = !DILocalVariable(name: "status", scope: !83, file: !3, line: 32, type: !6)
!95 = !DILocalVariable(name: "i", scope: !96, file: !3, line: 38, type: !6)
!96 = distinct !DILexicalBlock(scope: !83, file: !3, line: 38, column: 9)
!97 = !DILocation(line: 0, scope: !83)
!98 = !DILocation(line: 32, column: 9, scope: !83)
!99 = !DILocation(line: 0, scope: !96)
!100 = !DILocation(line: 38, column: 27, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !3, line: 38, column: 9)
!102 = !DILocation(line: 38, column: 9, scope: !96)
!103 = !DILocation(line: 55, column: 1, scope: !83)
!104 = !DILocation(line: 39, column: 17, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !3, line: 39, column: 17)
!106 = distinct !DILexicalBlock(scope: !101, file: !3, line: 38, column: 37)
!107 = !{!108, !108, i64 0}
!108 = !{!"_Bool", !64, i64 0}
!109 = !{i8 0, i8 2}
!110 = !DILocation(line: 39, column: 17, scope: !106)
!111 = !DILocation(line: 41, column: 29, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !3, line: 39, column: 26)
!113 = !DILocation(line: 41, column: 40, scope: !112)
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !64, i64 0}
!116 = !DILocation(line: 41, column: 49, scope: !112)
!117 = !DILocation(line: 42, column: 35, scope: !112)
!118 = !DILocation(line: 41, column: 54, scope: !112)
!119 = !DILocation(line: 41, column: 46, scope: !112)
!120 = !DILocation(line: 42, column: 22, scope: !112)
!121 = !DILocation(line: 44, column: 31, scope: !112)
!122 = !DILocation(line: 43, column: 37, scope: !112)
!123 = !DILocation(line: 44, column: 22, scope: !112)
!124 = !DILocation(line: 45, column: 33, scope: !112)
!125 = !DILocation(line: 45, column: 60, scope: !112)
!126 = !DILocation(line: 45, column: 75, scope: !112)
!127 = !DILocation(line: 45, column: 71, scope: !112)
!128 = !DILocation(line: 45, column: 48, scope: !112)
!129 = !DILocation(line: 45, column: 44, scope: !112)
!130 = !DILocation(line: 46, column: 22, scope: !112)
!131 = !DILocation(line: 47, column: 13, scope: !112)
!132 = !DILocation(line: 38, column: 32, scope: !101)
!133 = distinct !{!133, !102, !134, !135, !136}
!134 = !DILocation(line: 49, column: 9, scope: !96)
!135 = !{!"llvm.loop.mustprogress"}
!136 = !{!"llvm.loop.unroll.disable"}
!137 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 62, type: !138, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !140)
!138 = !DISubroutineType(types: !139)
!139 = !{!5, !6}
!140 = !{!141, !142}
!141 = !DILocalVariable(name: "n", arg: 1, scope: !137, file: !3, line: 62, type: !6)
!142 = !DILocalVariable(name: "ptr", scope: !137, file: !3, line: 63, type: !5)
!143 = !DILocation(line: 0, scope: !137)
!144 = !DILocation(line: 63, column: 45, scope: !137)
!145 = !DILocation(line: 63, column: 43, scope: !137)
!146 = !DILocation(line: 63, column: 24, scope: !137)
!147 = !DILocation(line: 64, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !137, file: !3, line: 64, column: 9)
!149 = !DILocation(line: 64, column: 9, scope: !137)
!150 = !DILocation(line: 65, column: 9, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !3, line: 64, column: 22)
!152 = !DILocation(line: 66, column: 9, scope: !151)
!153 = !DILocation(line: 68, column: 5, scope: !137)
!154 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 71, type: !155, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!8, !6}
!157 = !{!158, !159}
!158 = !DILocalVariable(name: "n", arg: 1, scope: !154, file: !3, line: 71, type: !6)
!159 = !DILocalVariable(name: "ptr", scope: !154, file: !3, line: 72, type: !8)
!160 = !DILocation(line: 0, scope: !154)
!161 = !DILocation(line: 72, column: 48, scope: !154)
!162 = !DILocation(line: 72, column: 26, scope: !154)
!163 = !DILocation(line: 73, column: 13, scope: !164)
!164 = distinct !DILexicalBlock(scope: !154, file: !3, line: 73, column: 9)
!165 = !DILocation(line: 73, column: 9, scope: !154)
!166 = !DILocation(line: 74, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 73, column: 22)
!168 = !DILocation(line: 75, column: 9, scope: !167)
!169 = !DILocation(line: 77, column: 5, scope: !154)
!170 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !171, scopeLine: 80, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{!6}
!173 = !{!174, !175, !180, !181, !183, !184}
!174 = !DILocalVariable(name: "status", scope: !170, file: !3, line: 81, type: !6)
!175 = !DILocalVariable(name: "errstring", scope: !170, file: !3, line: 82, type: !176)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 1024, elements: !178)
!177 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !{!179}
!179 = !DISubrange(count: 128)
!180 = !DILocalVariable(name: "n", scope: !170, file: !3, line: 95, type: !6)
!181 = !DILocalVariable(name: "i", scope: !182, file: !3, line: 106, type: !6)
!182 = distinct !DILexicalBlock(scope: !170, file: !3, line: 106, column: 5)
!183 = !DILocalVariable(name: "sum", scope: !170, file: !3, line: 115, type: !6)
!184 = !DILocalVariable(name: "i", scope: !185, file: !3, line: 117, type: !6)
!185 = distinct !DILexicalBlock(scope: !170, file: !3, line: 117, column: 5)
!186 = !DILocation(line: 82, column: 5, scope: !170)
!187 = !DILocation(line: 82, column: 10, scope: !170)
!188 = !DILocation(line: 84, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !170, file: !3, line: 84, column: 9)
!190 = !DILocation(line: 84, column: 45, scope: !189)
!191 = !DILocation(line: 84, column: 9, scope: !170)
!192 = !DILocation(line: 85, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 84, column: 66)
!194 = !{!195, !195, i64 0}
!195 = !{!"any pointer", !64, i64 0}
!196 = !DILocation(line: 85, column: 9, scope: !193)
!197 = !DILocation(line: 86, column: 9, scope: !193)
!198 = !DILocation(line: 90, column: 19, scope: !199)
!199 = distinct !DILexicalBlock(scope: !170, file: !3, line: 90, column: 9)
!200 = !DILocation(line: 0, scope: !170)
!201 = !DILocation(line: 90, column: 52, scope: !199)
!202 = !DILocation(line: 90, column: 9, scope: !170)
!203 = !DILocation(line: 90, column: 64, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !3, line: 90, column: 64)
!205 = !DILocation(line: 93, column: 35, scope: !206)
!206 = distinct !DILexicalBlock(scope: !170, file: !3, line: 93, column: 9)
!207 = !DILocation(line: 93, column: 19, scope: !206)
!208 = !DILocation(line: 93, column: 69, scope: !206)
!209 = !DILocation(line: 93, column: 9, scope: !170)
!210 = !DILocation(line: 93, column: 81, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 93, column: 81)
!212 = !DILocation(line: 97, column: 9, scope: !170)
!213 = !DILocation(line: 97, column: 7, scope: !170)
!214 = !DILocation(line: 98, column: 9, scope: !170)
!215 = !DILocation(line: 98, column: 7, scope: !170)
!216 = !DILocation(line: 99, column: 9, scope: !170)
!217 = !DILocation(line: 99, column: 7, scope: !170)
!218 = !DILocation(line: 100, column: 12, scope: !170)
!219 = !DILocation(line: 100, column: 10, scope: !170)
!220 = !DILocation(line: 102, column: 13, scope: !170)
!221 = !DILocation(line: 104, column: 11, scope: !170)
!222 = !DILocation(line: 104, column: 5, scope: !170)
!223 = !DILocation(line: 0, scope: !182)
!224 = !DILocation(line: 106, column: 5, scope: !182)
!225 = !DILocation(line: 110, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 106, column: 33)
!227 = distinct !DILexicalBlock(scope: !182, file: !3, line: 106, column: 5)
!228 = !DILocation(line: 113, column: 9, scope: !170)
!229 = !DILocation(line: 113, column: 12, scope: !170)
!230 = !DILocation(line: 113, column: 15, scope: !170)
!231 = !DILocation(line: 113, column: 5, scope: !170)
!232 = !DILocation(line: 0, scope: !185)
!233 = !DILocation(line: 117, column: 5, scope: !185)
!234 = !DILocation(line: 107, column: 9, scope: !226)
!235 = !DILocation(line: 107, column: 14, scope: !226)
!236 = !DILocation(line: 108, column: 9, scope: !226)
!237 = !DILocation(line: 108, column: 14, scope: !226)
!238 = !DILocation(line: 109, column: 9, scope: !226)
!239 = !DILocation(line: 109, column: 14, scope: !226)
!240 = !DILocation(line: 110, column: 19, scope: !226)
!241 = !DILocation(line: 110, column: 26, scope: !226)
!242 = !DILocation(line: 110, column: 32, scope: !226)
!243 = !DILocation(line: 110, column: 17, scope: !226)
!244 = !DILocation(line: 106, column: 28, scope: !227)
!245 = !DILocation(line: 106, column: 23, scope: !227)
!246 = distinct !{!246, !224, !247, !135, !136}
!247 = !DILocation(line: 111, column: 5, scope: !182)
!248 = !DILocation(line: 118, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 117, column: 33)
!250 = distinct !DILexicalBlock(scope: !185, file: !3, line: 117, column: 5)
!251 = !DILocation(line: 121, column: 5, scope: !170)
!252 = !DILocation(line: 123, column: 10, scope: !170)
!253 = !DILocation(line: 123, column: 5, scope: !170)
!254 = !DILocation(line: 124, column: 10, scope: !170)
!255 = !DILocation(line: 124, column: 5, scope: !170)
!256 = !DILocation(line: 125, column: 10, scope: !170)
!257 = !DILocation(line: 125, column: 5, scope: !170)
!258 = !DILocation(line: 126, column: 10, scope: !170)
!259 = !DILocation(line: 126, column: 5, scope: !170)
!260 = !DILocation(line: 128, column: 53, scope: !170)
!261 = !{!262, !262, i64 0}
!262 = !{!"long long", !64, i64 0}
!263 = !DILocation(line: 128, column: 5, scope: !170)
!264 = !DILocation(line: 129, column: 36, scope: !170)
!265 = !DILocation(line: 129, column: 5, scope: !170)
!266 = !DILocation(line: 130, column: 50, scope: !170)
!267 = !DILocation(line: 130, column: 5, scope: !170)
!268 = !DILocation(line: 131, column: 49, scope: !170)
!269 = !DILocation(line: 131, column: 5, scope: !170)
!270 = !DILocation(line: 132, column: 40, scope: !170)
!271 = !{!272, !272, i64 0}
!272 = !{!"double", !64, i64 0}
!273 = !DILocation(line: 132, column: 5, scope: !170)
!274 = !DILocation(line: 134, column: 38, scope: !275)
!275 = distinct !DILexicalBlock(scope: !170, file: !3, line: 134, column: 9)
!276 = !DILocation(line: 134, column: 19, scope: !275)
!277 = !DILocation(line: 134, column: 72, scope: !275)
!278 = !DILocation(line: 134, column: 9, scope: !170)
!279 = !DILocation(line: 118, column: 16, scope: !249)
!280 = !DILocation(line: 117, column: 28, scope: !250)
!281 = !DILocation(line: 117, column: 23, scope: !250)
!282 = distinct !{!282, !233, !283, !135, !136}
!283 = !DILocation(line: 119, column: 5, scope: !185)
!284 = !DILocation(line: 134, column: 84, scope: !285)
!285 = distinct !DILexicalBlock(scope: !275, file: !3, line: 134, column: 84)
!286 = !DILocation(line: 137, column: 19, scope: !287)
!287 = distinct !DILexicalBlock(scope: !170, file: !3, line: 137, column: 9)
!288 = !DILocation(line: 137, column: 53, scope: !287)
!289 = !DILocation(line: 137, column: 9, scope: !170)
!290 = !DILocation(line: 137, column: 65, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 137, column: 65)
!292 = !DILocation(line: 140, column: 5, scope: !170)
!293 = !DILocation(line: 143, column: 1, scope: !170)
!294 = !DILocation(line: 142, column: 5, scope: !170)
!295 = !DISubprogram(name: "PAPI_library_init", scope: !296, file: !296, line: 1172, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!296 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!297 = !DISubroutineType(types: !298)
!298 = !{!6, !6}
!299 = !DISubprogram(name: "PAPI_create_eventset", scope: !296, file: !296, line: 1147, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!300 = !DISubroutineType(types: !301)
!301 = !{!6, !5}
!302 = !DISubprogram(name: "PAPI_add_events", scope: !296, file: !296, line: 1143, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!303 = !DISubroutineType(types: !304)
!304 = !{!6, !6, !5, !6}
!305 = !DISubprogram(name: "srand", scope: !306, file: !306, line: 455, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!306 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!310 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!311 = !DISubroutineType(types: !312)
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !314, line: 7, baseType: !52)
!314 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!316 = !DISubprogram(name: "rand", scope: !306, file: !306, line: 453, type: !171, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!317 = !DISubprogram(name: "PAPI_remove_events", scope: !296, file: !296, line: 1192, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!318 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !296, file: !296, line: 1149, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!319 = !DISubprogram(name: "PAPI_shutdown", scope: !296, file: !296, line: 1202, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!320 = !DISubroutineType(types: !321)
!321 = !{null}
