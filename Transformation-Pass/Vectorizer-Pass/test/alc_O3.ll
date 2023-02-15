; ModuleID = 'alc.ll'
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
  %cmp3220 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp3220, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !110
  %2 = shl i32 %1, 2, !dbg !110
  %3 = shl i32 %1, 3, !dbg !110
  %.not = icmp ugt i32 %3, %n, !dbg !110
  br i1 %.not, label %for.body.preheader41, label %pre.alc, !dbg !110

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %5 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call126 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call126, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp127.not = icmp eq i32 %call126, 0, !dbg !118
  br i1 %cmp127.not, label %if.end130, label %if.then128, !dbg !119

for.body:                                         ; preds = %for.body.preheader41, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader41 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %6 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %6, 0, !dbg !120
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !129
  %7 = load i32, ptr %arrayidx8, align 4, !dbg !129, !tbaa !102
  %arrayidx11 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !130
  %8 = load i32, ptr %arrayidx11, align 4, !dbg !130, !tbaa !102
  %mul21213 = add i32 %8, 2, !dbg !131
  %9 = trunc i64 %indvars.iv to i32, !dbg !131
  %add22 = mul i32 %mul21213, %9, !dbg !131
  %.neg = mul i32 %7, -2
  %add = add i32 %.neg, %8, !dbg !132
  %add25 = add i32 %add, %add22, !dbg !133
  store i32 %add25, ptr %arrayidx6, align 4, !dbg !133, !tbaa !102
  %mul43214.neg = sub i32 -3, %7, !dbg !134
  %add44.neg223 = mul i32 %mul43214.neg, %9, !dbg !134
  %10 = add i32 %8, %7
  %reass.add216 = sub i32 %add25, %10
  %reass.mul217 = shl i32 %reass.add216, 1
  %add37 = add i32 %add44.neg223, 2, !dbg !135
  %sub47 = add i32 %add37, %reass.mul217, !dbg !136
  store i32 %sub47, ptr %arrayidx11, align 4, !dbg !136, !tbaa !102
  %11 = add nsw i32 %sub47, %add25, !dbg !137
  %add54 = shl nsw i32 %11, 1, !dbg !137
  %12 = sub nsw i32 %7, %sub47, !dbg !138
  %sub61 = shl nsw i32 %12, 1, !dbg !138
  %mul62 = mul nsw i32 %9, %9, !dbg !139
  %add63 = add nsw i32 %sub61, %mul62, !dbg !140
  %mul64.neg = mul i32 %add63, -3, !dbg !141
  %sub65 = add i32 %add54, %7, !dbg !142
  %add68 = add i32 %sub65, %mul64.neg, !dbg !143
  store i32 %add68, ptr %arrayidx8, align 4, !dbg !143, !tbaa !102
  br label %for.inc, !dbg !144

if.else:                                          ; preds = %for.body
  %arrayidx70 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !145
  %13 = load i32, ptr %arrayidx70, align 4, !dbg !145, !tbaa !102
  %add71 = add nsw i32 %13, 2, !dbg !147
  %arrayidx73 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !148
  %14 = load i32, ptr %arrayidx73, align 4, !dbg !148, !tbaa !102
  %mul74.neg = mul i32 %14, -3, !dbg !149
  %sub75 = add i32 %add71, %mul74.neg, !dbg !150
  %arrayidx77 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !151
  %15 = load i32, ptr %arrayidx77, align 4, !dbg !152, !tbaa !102
  %mul78 = mul nsw i32 %sub75, %15, !dbg !152
  %mul83 = mul nsw i32 %mul78, %13, !dbg !153
  %16 = add i32 %mul83, %14, !dbg !154
  %mul92 = mul nsw i32 %mul78, 3, !dbg !155
  %.neg225 = mul i32 %16, -4
  %add105.neg = sub i32 -3, %mul78, !dbg !156
  %sub96 = add i32 %add105.neg, %mul92, !dbg !157
  %sub108 = add i32 %sub96, %.neg225, !dbg !158
  store i32 %sub108, ptr %arrayidx70, align 4, !dbg !158, !tbaa !102
  %mul111.neg = mul i32 %sub108, -2, !dbg !159
  %add112.neg = add i32 %mul78, -4, !dbg !160
  %sub115 = add i32 %add112.neg, %mul111.neg, !dbg !161
  store i32 %sub115, ptr %arrayidx77, align 4, !dbg !161, !tbaa !102
  %mul118 = mul nsw i32 %sub115, 5, !dbg !162
  %mul121 = shl nsw i32 %sub108, 1, !dbg !163
  %add122 = add nsw i32 %mul118, %mul121, !dbg !164
  store i32 %add122, ptr %arrayidx73, align 4, !dbg !165, !tbaa !102
  br label %for.inc

pre.alc:                                          ; preds = %for.body.preheader
  %17 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %18 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %19 = urem i32 %n, %2
  %20 = add i32 %3, %19
  %total.iterations.to.be.vectorized = sub i32 %n, %20
  %21 = load <vscale x 4 x i8>, ptr %cond, align 4
  %22 = icmp eq <vscale x 4 x i8> %21, zeroinitializer
  %initial_a = load <vscale x 4 x i32>, ptr %a, align 16
  %initial_b = load <vscale x 4 x i32>, ptr %b, align 16
  %initial_c = load <vscale x 4 x i32>, ptr %c, align 16
  %23 = sext i32 %2 to i64
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %125, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %18, %pre.alc ], [ %120, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %22, %pre.alc ], [ %121, %new.latch ]
  %uniform_b = phi <vscale x 4 x i32> [ %initial_b, %pre.alc ], [ %122, %new.latch ]
  %uniform_c = phi <vscale x 4 x i32> [ %initial_c, %pre.alc ], [ %123, %new.latch ]
  %uniform_a = phi <vscale x 4 x i32> [ %initial_a, %pre.alc ], [ %124, %new.latch ]
  %24 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %25 = sext i32 %vector.loop.index to i64, !dbg !120
  %26 = getelementptr inbounds i8, ptr %cond, i64 %25, !dbg !120
  %27 = load <vscale x 4 x i8>, ptr %26, align 4
  %28 = icmp eq <vscale x 4 x i8> %27, zeroinitializer
  %29 = getelementptr i32, ptr %a, i64 %25
  %remaining_a = load <vscale x 4 x i32>, ptr %29, align 16
  %30 = getelementptr i32, ptr %b, i64 %25
  %remaining_b = load <vscale x 4 x i32>, ptr %30, align 16
  %31 = getelementptr i32, ptr %c, i64 %25
  %remaining_c = load <vscale x 4 x i32>, ptr %31, align 16
  %32 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %33 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %28, <vscale x 4 x i1> %28)
  %34 = trunc i64 %32 to i32
  %35 = trunc i64 %33 to i32
  %36 = add i32 %35, %34
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %38 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %24)
  %39 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_b)
  %40 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_b)
  %41 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_c)
  %42 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_c)
  %43 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_a)
  %44 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %remaining_a)
  %45 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %46 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %47 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniform.vector)
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %24)
  %49 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniform_b)
  %50 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %remaining_b)
  %51 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniform_c)
  %52 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %remaining_c)
  %53 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %remaining_a)
  %54 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %34)
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %54, <vscale x 4 x i32> %37, <vscale x 4 x i32> %38)
  %56 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %54, <vscale x 4 x i32> %39, <vscale x 4 x i32> %40)
  %57 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %54, <vscale x 4 x i32> %41, <vscale x 4 x i32> %42)
  %58 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %54, <vscale x 4 x i32> %43, <vscale x 4 x i32> %44)
  %59 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %36)
  %60 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %55, <vscale x 4 x i32> %48)
  %61 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %56, <vscale x 4 x i32> %50)
  %62 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %57, <vscale x 4 x i32> %52)
  %63 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %59, <vscale x 4 x i32> %58, <vscale x 4 x i32> %53)
  %64 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %33)
  %65 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %38, <vscale x 4 x i32> %48)
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %40, <vscale x 4 x i32> %50)
  %67 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %42, <vscale x 4 x i32> %52)
  %68 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %45, <vscale x 4 x i1> %45)
  %69 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %68)
  %70 = select <vscale x 4 x i1> %69, <vscale x 4 x i32> %47, <vscale x 4 x i32> %65
  %71 = select <vscale x 4 x i1> %69, <vscale x 4 x i32> %49, <vscale x 4 x i32> %66
  %72 = select <vscale x 4 x i1> %69, <vscale x 4 x i32> %51, <vscale x 4 x i32> %67
  %73 = xor <vscale x 4 x i1> %69, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %74 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %46, <vscale x 4 x i1> %46)
  %75 = sub i64 %23, %74
  %76 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %75)
  %77 = and <vscale x 4 x i1> %76, %73
  %78 = icmp ugt i32 %36, %2
  br i1 %78, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %alc.header
  %79 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %uniform_a)
  %80 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %64, <vscale x 4 x i32> %44, <vscale x 4 x i32> %53)
  %81 = select <vscale x 4 x i1> %69, <vscale x 4 x i32> %79, <vscale x 4 x i32> %80
  %82 = add <vscale x 4 x i32> %61, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %83 = mul <vscale x 4 x i32> %62, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %84 = add <vscale x 4 x i32> %82, %83
  %85 = mul <vscale x 4 x i32> %84, %63
  %86 = mul <vscale x 4 x i32> %85, %61
  %87 = add <vscale x 4 x i32> %86, %62
  %88 = mul <vscale x 4 x i32> %85, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %89 = mul <vscale x 4 x i32> %87, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %90 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), %85
  %91 = add <vscale x 4 x i32> %90, %88
  %92 = add <vscale x 4 x i32> %91, %89
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %92, <vscale x 4 x i1> %17, ptr nonnull %b, <vscale x 4 x i32> %60)
  %93 = mul <vscale x 4 x i32> %92, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %94 = add <vscale x 4 x i32> %85, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %95 = add <vscale x 4 x i32> %94, %93
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %95, <vscale x 4 x i1> %17, ptr nonnull %a, <vscale x 4 x i32> %60)
  %96 = mul <vscale x 4 x i32> %95, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %97 = shl <vscale x 4 x i32> %92, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %98 = add <vscale x 4 x i32> %96, %97
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %98, <vscale x 4 x i1> %17, ptr nonnull %c, <vscale x 4 x i32> %60)
  br label %new.latch

uniform.else:                                     ; preds = %alc.header
  %99 = add <vscale x 4 x i32> %71, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %100 = mul <vscale x 4 x i32> %99, %70
  %101 = mul <vscale x 4 x i32> %72, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %102 = add <vscale x 4 x i32> %101, %71
  %103 = add <vscale x 4 x i32> %102, %100
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %103, <vscale x 4 x i1> %17, ptr nonnull %a, <vscale x 4 x i32> %70)
  %104 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %72
  %105 = mul <vscale x 4 x i32> %104, %70
  %106 = add <vscale x 4 x i32> %72, %71
  %107 = sub <vscale x 4 x i32> %103, %106
  %108 = shl <vscale x 4 x i32> %107, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %109 = add <vscale x 4 x i32> %105, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %110 = add <vscale x 4 x i32> %109, %108
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %110, <vscale x 4 x i1> %17, ptr nonnull %b, <vscale x 4 x i32> %70)
  %111 = add <vscale x 4 x i32> %110, %103
  %112 = shl <vscale x 4 x i32> %111, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %113 = sub <vscale x 4 x i32> %72, %110
  %114 = shl <vscale x 4 x i32> %113, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %115 = mul <vscale x 4 x i32> %70, %70
  %116 = add <vscale x 4 x i32> %114, %115
  %117 = mul <vscale x 4 x i32> %116, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %118 = add <vscale x 4 x i32> %112, %72
  %119 = add <vscale x 4 x i32> %118, %117
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %119, <vscale x 4 x i1> %17, ptr nonnull %c, <vscale x 4 x i32> %70)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %120 = phi <vscale x 4 x i32> [ %70, %uniform.then ], [ %60, %uniform.else ]
  %121 = phi <vscale x 4 x i1> [ %77, %uniform.then ], [ %59, %uniform.else ]
  %122 = phi <vscale x 4 x i32> [ %71, %uniform.then ], [ %61, %uniform.else ]
  %123 = phi <vscale x 4 x i32> [ %72, %uniform.then ], [ %62, %uniform.else ]
  %124 = phi <vscale x 4 x i32> [ %81, %uniform.then ], [ %63, %uniform.else ]
  %125 = add i32 %vector.loop.index, %2
  %.not2 = icmp ult i32 %125, %total.iterations.to.be.vectorized
  br i1 %.not2, label %alc.header, label %joinBlock

linearized.then:                                  ; preds = %joinBlock
  %126 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %59, ptr nonnull %b, <vscale x 4 x i32> %60)
  %127 = add <vscale x 4 x i32> %126, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %128 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %59, ptr nonnull %c, <vscale x 4 x i32> %60)
  %129 = mul <vscale x 4 x i32> %128, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %130 = add <vscale x 4 x i32> %127, %129
  %131 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %59, ptr nonnull %a, <vscale x 4 x i32> %60)
  %132 = mul <vscale x 4 x i32> %130, %131
  %133 = mul <vscale x 4 x i32> %132, %126
  %134 = add <vscale x 4 x i32> %133, %128
  %135 = mul <vscale x 4 x i32> %132, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %136 = mul <vscale x 4 x i32> %134, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %137 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), %132
  %138 = add <vscale x 4 x i32> %137, %135
  %139 = add <vscale x 4 x i32> %138, %136
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %139, <vscale x 4 x i1> %59, ptr nonnull %b, <vscale x 4 x i32> %60)
  %140 = mul <vscale x 4 x i32> %139, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %141 = add <vscale x 4 x i32> %132, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %142 = add <vscale x 4 x i32> %141, %140
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %142, <vscale x 4 x i1> %59, ptr nonnull %a, <vscale x 4 x i32> %60)
  %143 = mul <vscale x 4 x i32> %142, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %144 = shl <vscale x 4 x i32> %139, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %145 = add <vscale x 4 x i32> %143, %144
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %145, <vscale x 4 x i1> %59, ptr nonnull %c, <vscale x 4 x i32> %60)
  %146 = xor <vscale x 4 x i1> %59, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %147 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %146, ptr nonnull %c, <vscale x 4 x i32> %60)
  %148 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %146, ptr nonnull %b, <vscale x 4 x i32> %60)
  %149 = add <vscale x 4 x i32> %148, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %150 = mul <vscale x 4 x i32> %149, %60
  %151 = mul <vscale x 4 x i32> %147, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %152 = add <vscale x 4 x i32> %151, %148
  %153 = add <vscale x 4 x i32> %152, %150
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %153, <vscale x 4 x i1> %146, ptr nonnull %a, <vscale x 4 x i32> %60)
  %154 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %147
  %155 = mul <vscale x 4 x i32> %154, %60
  %156 = add <vscale x 4 x i32> %148, %147
  %157 = sub <vscale x 4 x i32> %153, %156
  %158 = shl <vscale x 4 x i32> %157, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %159 = add <vscale x 4 x i32> %155, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %160 = add <vscale x 4 x i32> %159, %158
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %160, <vscale x 4 x i1> %146, ptr nonnull %b, <vscale x 4 x i32> %60)
  %161 = add <vscale x 4 x i32> %160, %153
  %162 = shl <vscale x 4 x i32> %161, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %163 = sub <vscale x 4 x i32> %147, %160
  %164 = shl <vscale x 4 x i32> %163, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %165 = mul <vscale x 4 x i32> %60, %60
  %166 = add <vscale x 4 x i32> %164, %165
  %167 = mul <vscale x 4 x i32> %166, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %168 = add <vscale x 4 x i32> %162, %147
  %169 = add <vscale x 4 x i32> %168, %167
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %169, <vscale x 4 x i1> %146, ptr nonnull %c, <vscale x 4 x i32> %60)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %170 = xor <vscale x 4 x i1> %77, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %171 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %170, ptr nonnull %c, <vscale x 4 x i32> %70)
  %172 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %170, ptr nonnull %b, <vscale x 4 x i32> %70)
  %173 = add <vscale x 4 x i32> %172, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %174 = mul <vscale x 4 x i32> %173, %70
  %175 = mul <vscale x 4 x i32> %171, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %176 = add <vscale x 4 x i32> %175, %172
  %177 = add <vscale x 4 x i32> %176, %174
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %177, <vscale x 4 x i1> %170, ptr nonnull %a, <vscale x 4 x i32> %70)
  %178 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer), %171
  %179 = mul <vscale x 4 x i32> %178, %70
  %180 = add <vscale x 4 x i32> %172, %171
  %181 = sub <vscale x 4 x i32> %177, %180
  %182 = shl <vscale x 4 x i32> %181, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %183 = add <vscale x 4 x i32> %179, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %184 = add <vscale x 4 x i32> %183, %182
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %184, <vscale x 4 x i1> %170, ptr nonnull %b, <vscale x 4 x i32> %70)
  %185 = add <vscale x 4 x i32> %184, %177
  %186 = shl <vscale x 4 x i32> %185, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %187 = sub <vscale x 4 x i32> %171, %184
  %188 = shl <vscale x 4 x i32> %187, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %189 = mul <vscale x 4 x i32> %70, %70
  %190 = add <vscale x 4 x i32> %188, %189
  %191 = mul <vscale x 4 x i32> %190, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %192 = add <vscale x 4 x i32> %186, %171
  %193 = add <vscale x 4 x i32> %192, %191
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %193, <vscale x 4 x i1> %170, ptr nonnull %c, <vscale x 4 x i32> %70)
  %194 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %77, ptr nonnull %b, <vscale x 4 x i32> %70)
  %195 = add <vscale x 4 x i32> %194, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %196 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %77, ptr nonnull %c, <vscale x 4 x i32> %70)
  %197 = mul <vscale x 4 x i32> %196, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %198 = add <vscale x 4 x i32> %195, %197
  %199 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %77, ptr nonnull %a, <vscale x 4 x i32> %70)
  %200 = mul <vscale x 4 x i32> %198, %199
  %201 = mul <vscale x 4 x i32> %200, %194
  %202 = add <vscale x 4 x i32> %201, %196
  %203 = mul <vscale x 4 x i32> %200, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 3, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %204 = mul <vscale x 4 x i32> %202, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %205 = sub <vscale x 4 x i32> shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> poison, i32 -3, i32 0), <vscale x 4 x i32> poison, <vscale x 4 x i32> zeroinitializer), %200
  %206 = add <vscale x 4 x i32> %205, %203
  %207 = add <vscale x 4 x i32> %206, %204
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %207, <vscale x 4 x i1> %77, ptr nonnull %b, <vscale x 4 x i32> %70)
  %208 = mul <vscale x 4 x i32> %207, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -2, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %209 = add <vscale x 4 x i32> %200, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %210 = add <vscale x 4 x i32> %209, %208
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %210, <vscale x 4 x i1> %77, ptr nonnull %a, <vscale x 4 x i32> %70)
  %211 = mul <vscale x 4 x i32> %210, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 5, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %212 = shl <vscale x 4 x i32> %207, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 1, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  %213 = add <vscale x 4 x i32> %211, %212
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %213, <vscale x 4 x i1> %77, ptr nonnull %c, <vscale x 4 x i32> %70)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %214 = icmp eq <vscale x 4 x i32> %120, %60
  %215 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %214, <vscale x 4 x i1> %214)
  %216 = trunc i64 %215 to i32
  %217 = icmp eq i32 %2, %216
  br i1 %217, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %218 = zext i32 %125 to i64
  br label %for.body.preheader41

for.body.preheader41:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %218, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !110

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !166
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !167

if.then128:                                       ; preds = %for.cond.cleanup
  %219 = load ptr, ptr @stderr, align 8, !dbg !171, !tbaa !113
  %call129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %219, ptr noundef nonnull @.str, i32 noundef %call126, ptr noundef nonnull @.str.1, i32 noundef 91) #14, !dbg !171
  tail call void @exit(i32 noundef %call126) #15, !dbg !171
  unreachable, !dbg !171

if.end130:                                        ; preds = %for.cond.cleanup
  %call131 = tail call double @getTimeMiliSeconds(), !dbg !173
  %sub132 = fsub double %call131, %call, !dbg !174
  store double %sub132, ptr @ExecutionTime, align 8, !dbg !175, !tbaa !176
  ret void, !dbg !178
}

declare !dbg !179 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !183 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !191, metadata !DIExpression()), !dbg !193
  %conv = sext i32 %n to i64, !dbg !194
  %mul = shl nsw i64 %conv, 2, !dbg !195
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !196
  call void @llvm.dbg.value(metadata ptr %call, metadata !192, metadata !DIExpression()), !dbg !193
  %cmp = icmp eq ptr %call, null, !dbg !197
  br i1 %cmp, label %if.then, label %if.end, !dbg !199

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !200
  tail call void @exit(i32 noundef 1) #15, !dbg !202
  unreachable, !dbg !202

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !203
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !208, metadata !DIExpression()), !dbg !210
  %conv = sext i32 %n to i64, !dbg !211
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !212
  call void @llvm.dbg.value(metadata ptr %call, metadata !209, metadata !DIExpression()), !dbg !210
  %cmp = icmp eq ptr %call, null, !dbg !213
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !216
  tail call void @exit(i32 noundef 1) #15, !dbg !218
  unreachable, !dbg !218

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !219
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !220 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !225, metadata !DIExpression()), !dbg !237
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !238
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !240
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !241

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !242, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !244
  call void @exit(i32 noundef 1) #15, !dbg !245
  unreachable, !dbg !245

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call2, metadata !224, metadata !DIExpression()), !dbg !248
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !249
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !250

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !251, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 306) #14, !dbg !251
  tail call void @exit(i32 noundef %call2) #15, !dbg !251
  unreachable, !dbg !251

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !253, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !255
  call void @llvm.dbg.value(metadata i32 %call7, metadata !224, metadata !DIExpression()), !dbg !248
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !256
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !257

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !258, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 309) #14, !dbg !258
  tail call void @exit(i32 noundef %call7) #15, !dbg !258
  unreachable, !dbg !258

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 5000000, metadata !230, metadata !DIExpression()), !dbg !248
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !260
  store ptr %call12, ptr @a, align 8, !dbg !261, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !262
  store ptr %call13, ptr @b, align 8, !dbg !263, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 5000000), !dbg !264
  store ptr %call14, ptr @c, align 8, !dbg !265, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 5000000), !dbg !266
  store ptr %call15, ptr @cond, align 8, !dbg !267, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !268, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !269
  %conv = trunc i64 %call16 to i32, !dbg !269
  tail call void @srand(i32 noundef %conv) #13, !dbg !270
  call void @llvm.dbg.value(metadata i32 1, metadata !231, metadata !DIExpression()), !dbg !271
  br label %for.body, !dbg !272

for.cond.cleanup:                                 ; preds = %for.body
  %4 = load ptr, ptr @a, align 8, !dbg !273, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !dbg !274, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !dbg !275, !tbaa !113
  tail call void @simple_if_else(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %12, i32 noundef 5000000), !dbg !276
  call void @llvm.dbg.value(metadata i32 0, metadata !233, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.value(metadata i32 0, metadata !234, metadata !DIExpression()), !dbg !277
  %7 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !234, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !233, metadata !DIExpression()), !dbg !248
  br label %for.body34, !dbg !278

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !231, metadata !DIExpression()), !dbg !271
  %8 = load ptr, ptr @a, align 8, !dbg !279, !tbaa !113
  %arrayidx19 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv, !dbg !279
  store i32 -1, ptr %arrayidx19, align 4, !dbg !282, !tbaa !102
  %9 = load ptr, ptr @b, align 8, !dbg !283, !tbaa !113
  %arrayidx21 = getelementptr inbounds i32, ptr %9, i64 %indvars.iv, !dbg !283
  store i32 1, ptr %arrayidx21, align 4, !dbg !284, !tbaa !102
  %10 = load ptr, ptr @c, align 8, !dbg !285, !tbaa !113
  %arrayidx23 = getelementptr inbounds i32, ptr %10, i64 %indvars.iv, !dbg !285
  store i32 0, ptr %arrayidx23, align 4, !dbg !286, !tbaa !102
  %call24 = tail call i32 @rand() #13, !dbg !287
  %11 = and i32 %call24, 7, !dbg !288
  %cmp25 = icmp eq i32 %11, 0, !dbg !288
  %12 = load ptr, ptr @cond, align 8, !dbg !289, !tbaa !113
  %arrayidx28 = getelementptr inbounds i8, ptr %12, i64 %indvars.iv, !dbg !289
  %frombool = zext i1 %cmp25 to i8, !dbg !290
  store i8 %frombool, ptr %arrayidx28, align 1, !dbg !290, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !291
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !231, metadata !DIExpression()), !dbg !271
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5000000, !dbg !292
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !272, !llvm.loop !293

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !295
  %putchar = tail call i32 @putchar(i32 10), !dbg !296
  %13 = load ptr, ptr @a, align 8, !dbg !297, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !298
  %14 = load ptr, ptr @b, align 8, !dbg !299, !tbaa !113
  tail call void @free(ptr noundef %14) #13, !dbg !300
  %15 = load ptr, ptr @c, align 8, !dbg !301, !tbaa !113
  tail call void @free(ptr noundef %15) #13, !dbg !302
  %16 = load ptr, ptr @cond, align 8, !dbg !303, !tbaa !113
  tail call void @free(ptr noundef %16) #13, !dbg !304
  %17 = load i64, ptr @CounterValues, align 8, !dbg !305, !tbaa !306
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %17), !dbg !308
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !309, !tbaa !306
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %18), !dbg !310
  %19 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !311, !tbaa !306
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %19), !dbg !312
  %20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !313, !tbaa !306
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %20), !dbg !314
  %21 = load double, ptr @ExecutionTime, align 8, !dbg !315, !tbaa !176
  %call46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %21), !dbg !316
  %22 = load i32, ptr @EventSet, align 4, !dbg !317, !tbaa !102
  %call47 = tail call i32 @PAPI_remove_events(i32 noundef %22, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !319
  call void @llvm.dbg.value(metadata i32 %call47, metadata !224, metadata !DIExpression()), !dbg !248
  %cmp48.not = icmp eq i32 %call47, 0, !dbg !320
  br i1 %cmp48.not, label %if.end52, label %if.then50, !dbg !321

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body34 ]
  %sum.081 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !234, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.value(metadata i32 %sum.081, metadata !233, metadata !DIExpression()), !dbg !248
  %arrayidx36 = getelementptr inbounds i32, ptr %7, i64 %indvars.iv84, !dbg !322
  %23 = load i32, ptr %arrayidx36, align 4, !dbg !322, !tbaa !102
  %add = add nsw i32 %23, %sum.081, !dbg !325
  call void @llvm.dbg.value(metadata i32 %add, metadata !233, metadata !DIExpression()), !dbg !248
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !326
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !234, metadata !DIExpression()), !dbg !277
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 5000000, !dbg !327
  br i1 %exitcond87.not, label %for.cond.cleanup33, label %for.body34, !dbg !278, !llvm.loop !328

if.then50:                                        ; preds = %for.cond.cleanup33
  %24 = load ptr, ptr @stderr, align 8, !dbg !330, !tbaa !113
  %call51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef %call47, ptr noundef nonnull @.str.1, i32 noundef 355) #14, !dbg !330
  tail call void @exit(i32 noundef %call47) #15, !dbg !330
  unreachable, !dbg !330

if.end52:                                         ; preds = %for.cond.cleanup33
  %call53 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !332
  call void @llvm.dbg.value(metadata i32 %call53, metadata !224, metadata !DIExpression()), !dbg !248
  %cmp54.not = icmp eq i32 %call53, 0, !dbg !334
  br i1 %cmp54.not, label %if.end58, label %if.then56, !dbg !335

if.then56:                                        ; preds = %if.end52
  %25 = load ptr, ptr @stderr, align 8, !dbg !336, !tbaa !113
  %call57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %call53, ptr noundef nonnull @.str.1, i32 noundef 358) #14, !dbg !336
  tail call void @exit(i32 noundef %call53) #15, !dbg !336
  unreachable, !dbg !336

if.end58:                                         ; preds = %if.end52
  tail call void @PAPI_shutdown() #13, !dbg !338
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !339
  ret i32 0, !dbg !340
}

declare !dbg !341 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !342 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !345 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !348 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !353 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !359 i32 @rand() local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !360 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !361 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !362 void @PAPI_shutdown() local_unnamed_addr #4

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #10

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

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
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "998c5ccf23cb0595fbfbc76ef13ea700")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 273, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 274, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 275, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 276, type: !8, isLocal: false, isDefinition: true)
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
!115 = !DILocation(line: 91, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 91, column: 9)
!117 = !DILocation(line: 91, column: 19, scope: !116)
!118 = !DILocation(line: 91, column: 55, scope: !116)
!119 = !DILocation(line: 91, column: 9, scope: !83)
!120 = !DILocation(line: 71, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 71, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 69, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 71, column: 13, scope: !122)
!127 = !DILocation(line: 72, column: 25, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 22)
!129 = !DILocation(line: 72, column: 36, scope: !128)
!130 = !DILocation(line: 72, column: 45, scope: !128)
!131 = !DILocation(line: 73, column: 27, scope: !128)
!132 = !DILocation(line: 72, column: 42, scope: !128)
!133 = !DILocation(line: 73, column: 18, scope: !128)
!134 = !DILocation(line: 75, column: 27, scope: !128)
!135 = !DILocation(line: 74, column: 33, scope: !128)
!136 = !DILocation(line: 75, column: 18, scope: !128)
!137 = !DILocation(line: 76, column: 30, scope: !128)
!138 = !DILocation(line: 76, column: 57, scope: !128)
!139 = !DILocation(line: 76, column: 72, scope: !128)
!140 = !DILocation(line: 76, column: 68, scope: !128)
!141 = !DILocation(line: 76, column: 45, scope: !128)
!142 = !DILocation(line: 76, column: 41, scope: !128)
!143 = !DILocation(line: 76, column: 18, scope: !128)
!144 = !DILocation(line: 78, column: 9, scope: !128)
!145 = !DILocation(line: 79, column: 25, scope: !146)
!146 = distinct !DILexicalBlock(scope: !121, file: !3, line: 78, column: 16)
!147 = !DILocation(line: 79, column: 23, scope: !146)
!148 = !DILocation(line: 79, column: 36, scope: !146)
!149 = !DILocation(line: 79, column: 34, scope: !146)
!150 = !DILocation(line: 79, column: 30, scope: !146)
!151 = !DILocation(line: 79, column: 13, scope: !146)
!152 = !DILocation(line: 79, column: 18, scope: !146)
!153 = !DILocation(line: 80, column: 25, scope: !146)
!154 = !DILocation(line: 80, column: 36, scope: !146)
!155 = !DILocation(line: 81, column: 22, scope: !146)
!156 = !DILocation(line: 82, column: 34, scope: !146)
!157 = !DILocation(line: 81, column: 29, scope: !146)
!158 = !DILocation(line: 82, column: 18, scope: !146)
!159 = !DILocation(line: 83, column: 30, scope: !146)
!160 = !DILocation(line: 83, column: 23, scope: !146)
!161 = !DILocation(line: 83, column: 18, scope: !146)
!162 = !DILocation(line: 84, column: 22, scope: !146)
!163 = !DILocation(line: 84, column: 33, scope: !146)
!164 = !DILocation(line: 84, column: 29, scope: !146)
!165 = !DILocation(line: 84, column: 18, scope: !146)
!166 = !DILocation(line: 69, column: 28, scope: !109)
!167 = distinct !{!167, !110, !168, !169, !170}
!168 = !DILocation(line: 87, column: 5, scope: !97)
!169 = !{!"llvm.loop.mustprogress"}
!170 = !{!"llvm.loop.unroll.disable"}
!171 = !DILocation(line: 91, column: 67, scope: !172)
!172 = distinct !DILexicalBlock(scope: !116, file: !3, line: 91, column: 67)
!173 = !DILocation(line: 93, column: 21, scope: !83)
!174 = !DILocation(line: 93, column: 42, scope: !83)
!175 = !DILocation(line: 93, column: 19, scope: !83)
!176 = !{!177, !177, i64 0}
!177 = !{!"double", !64, i64 0}
!178 = !DILocation(line: 94, column: 1, scope: !83)
!179 = !DISubprogram(name: "PAPI_start", scope: !180, file: !180, line: 1204, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!180 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!181 = !DISubroutineType(types: !182)
!182 = !{!6, !6}
!183 = !DISubprogram(name: "PAPI_stop", scope: !180, file: !180, line: 1206, type: !184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!184 = !DISubroutineType(types: !185)
!185 = !{!6, !6, !186}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!187 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 278, type: !188, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!5, !6}
!190 = !{!191, !192}
!191 = !DILocalVariable(name: "n", arg: 1, scope: !187, file: !3, line: 278, type: !6)
!192 = !DILocalVariable(name: "ptr", scope: !187, file: !3, line: 279, type: !5)
!193 = !DILocation(line: 0, scope: !187)
!194 = !DILocation(line: 279, column: 45, scope: !187)
!195 = !DILocation(line: 279, column: 43, scope: !187)
!196 = !DILocation(line: 279, column: 24, scope: !187)
!197 = !DILocation(line: 280, column: 13, scope: !198)
!198 = distinct !DILexicalBlock(scope: !187, file: !3, line: 280, column: 9)
!199 = !DILocation(line: 280, column: 9, scope: !187)
!200 = !DILocation(line: 281, column: 9, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 280, column: 22)
!202 = !DILocation(line: 282, column: 9, scope: !201)
!203 = !DILocation(line: 284, column: 5, scope: !187)
!204 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 287, type: !205, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!8, !6}
!207 = !{!208, !209}
!208 = !DILocalVariable(name: "n", arg: 1, scope: !204, file: !3, line: 287, type: !6)
!209 = !DILocalVariable(name: "ptr", scope: !204, file: !3, line: 288, type: !8)
!210 = !DILocation(line: 0, scope: !204)
!211 = !DILocation(line: 288, column: 48, scope: !204)
!212 = !DILocation(line: 288, column: 26, scope: !204)
!213 = !DILocation(line: 289, column: 13, scope: !214)
!214 = distinct !DILexicalBlock(scope: !204, file: !3, line: 289, column: 9)
!215 = !DILocation(line: 289, column: 9, scope: !204)
!216 = !DILocation(line: 290, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !3, line: 289, column: 22)
!218 = !DILocation(line: 291, column: 9, scope: !217)
!219 = !DILocation(line: 293, column: 5, scope: !204)
!220 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 296, type: !221, scopeLine: 296, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!221 = !DISubroutineType(types: !222)
!222 = !{!6}
!223 = !{!224, !225, !230, !231, !233, !234}
!224 = !DILocalVariable(name: "status", scope: !220, file: !3, line: 297, type: !6)
!225 = !DILocalVariable(name: "errstring", scope: !220, file: !3, line: 298, type: !226)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 1024, elements: !228)
!227 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!228 = !{!229}
!229 = !DISubrange(count: 128)
!230 = !DILocalVariable(name: "n", scope: !220, file: !3, line: 311, type: !6)
!231 = !DILocalVariable(name: "i", scope: !232, file: !3, line: 322, type: !6)
!232 = distinct !DILexicalBlock(scope: !220, file: !3, line: 322, column: 5)
!233 = !DILocalVariable(name: "sum", scope: !220, file: !3, line: 334, type: !6)
!234 = !DILocalVariable(name: "i", scope: !235, file: !3, line: 336, type: !6)
!235 = distinct !DILexicalBlock(scope: !220, file: !3, line: 336, column: 5)
!236 = !DILocation(line: 298, column: 5, scope: !220)
!237 = !DILocation(line: 298, column: 10, scope: !220)
!238 = !DILocation(line: 300, column: 9, scope: !239)
!239 = distinct !DILexicalBlock(scope: !220, file: !3, line: 300, column: 9)
!240 = !DILocation(line: 300, column: 45, scope: !239)
!241 = !DILocation(line: 300, column: 9, scope: !220)
!242 = !DILocation(line: 301, column: 17, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 300, column: 66)
!244 = !DILocation(line: 301, column: 9, scope: !243)
!245 = !DILocation(line: 302, column: 9, scope: !243)
!246 = !DILocation(line: 306, column: 19, scope: !247)
!247 = distinct !DILexicalBlock(scope: !220, file: !3, line: 306, column: 9)
!248 = !DILocation(line: 0, scope: !220)
!249 = !DILocation(line: 306, column: 52, scope: !247)
!250 = !DILocation(line: 306, column: 9, scope: !220)
!251 = !DILocation(line: 306, column: 64, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !3, line: 306, column: 64)
!253 = !DILocation(line: 309, column: 35, scope: !254)
!254 = distinct !DILexicalBlock(scope: !220, file: !3, line: 309, column: 9)
!255 = !DILocation(line: 309, column: 19, scope: !254)
!256 = !DILocation(line: 309, column: 69, scope: !254)
!257 = !DILocation(line: 309, column: 9, scope: !220)
!258 = !DILocation(line: 309, column: 81, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 309, column: 81)
!260 = !DILocation(line: 313, column: 9, scope: !220)
!261 = !DILocation(line: 313, column: 7, scope: !220)
!262 = !DILocation(line: 314, column: 9, scope: !220)
!263 = !DILocation(line: 314, column: 7, scope: !220)
!264 = !DILocation(line: 315, column: 9, scope: !220)
!265 = !DILocation(line: 315, column: 7, scope: !220)
!266 = !DILocation(line: 316, column: 12, scope: !220)
!267 = !DILocation(line: 316, column: 10, scope: !220)
!268 = !DILocation(line: 318, column: 13, scope: !220)
!269 = !DILocation(line: 320, column: 11, scope: !220)
!270 = !DILocation(line: 320, column: 5, scope: !220)
!271 = !DILocation(line: 0, scope: !232)
!272 = !DILocation(line: 322, column: 5, scope: !232)
!273 = !DILocation(line: 331, column: 20, scope: !220)
!274 = !DILocation(line: 331, column: 23, scope: !220)
!275 = !DILocation(line: 331, column: 26, scope: !220)
!276 = !DILocation(line: 331, column: 5, scope: !220)
!277 = !DILocation(line: 0, scope: !235)
!278 = !DILocation(line: 336, column: 5, scope: !235)
!279 = !DILocation(line: 323, column: 9, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 322, column: 33)
!281 = distinct !DILexicalBlock(scope: !232, file: !3, line: 322, column: 5)
!282 = !DILocation(line: 323, column: 14, scope: !280)
!283 = !DILocation(line: 324, column: 9, scope: !280)
!284 = !DILocation(line: 324, column: 14, scope: !280)
!285 = !DILocation(line: 325, column: 9, scope: !280)
!286 = !DILocation(line: 325, column: 14, scope: !280)
!287 = !DILocation(line: 326, column: 19, scope: !280)
!288 = !DILocation(line: 326, column: 30, scope: !280)
!289 = !DILocation(line: 326, column: 9, scope: !280)
!290 = !DILocation(line: 326, column: 17, scope: !280)
!291 = !DILocation(line: 322, column: 28, scope: !281)
!292 = !DILocation(line: 322, column: 23, scope: !281)
!293 = distinct !{!293, !272, !294, !169, !170}
!294 = !DILocation(line: 327, column: 5, scope: !232)
!295 = !DILocation(line: 341, column: 5, scope: !220)
!296 = !DILocation(line: 342, column: 5, scope: !220)
!297 = !DILocation(line: 344, column: 10, scope: !220)
!298 = !DILocation(line: 344, column: 5, scope: !220)
!299 = !DILocation(line: 345, column: 10, scope: !220)
!300 = !DILocation(line: 345, column: 5, scope: !220)
!301 = !DILocation(line: 346, column: 10, scope: !220)
!302 = !DILocation(line: 346, column: 5, scope: !220)
!303 = !DILocation(line: 347, column: 10, scope: !220)
!304 = !DILocation(line: 347, column: 5, scope: !220)
!305 = !DILocation(line: 349, column: 53, scope: !220)
!306 = !{!307, !307, i64 0}
!307 = !{!"long long", !64, i64 0}
!308 = !DILocation(line: 349, column: 5, scope: !220)
!309 = !DILocation(line: 350, column: 36, scope: !220)
!310 = !DILocation(line: 350, column: 5, scope: !220)
!311 = !DILocation(line: 351, column: 50, scope: !220)
!312 = !DILocation(line: 351, column: 5, scope: !220)
!313 = !DILocation(line: 352, column: 49, scope: !220)
!314 = !DILocation(line: 352, column: 5, scope: !220)
!315 = !DILocation(line: 353, column: 40, scope: !220)
!316 = !DILocation(line: 353, column: 5, scope: !220)
!317 = !DILocation(line: 355, column: 38, scope: !318)
!318 = distinct !DILexicalBlock(scope: !220, file: !3, line: 355, column: 9)
!319 = !DILocation(line: 355, column: 19, scope: !318)
!320 = !DILocation(line: 355, column: 72, scope: !318)
!321 = !DILocation(line: 355, column: 9, scope: !220)
!322 = !DILocation(line: 337, column: 16, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 336, column: 33)
!324 = distinct !DILexicalBlock(scope: !235, file: !3, line: 336, column: 5)
!325 = !DILocation(line: 337, column: 13, scope: !323)
!326 = !DILocation(line: 336, column: 28, scope: !324)
!327 = !DILocation(line: 336, column: 23, scope: !324)
!328 = distinct !{!328, !278, !329, !169, !170}
!329 = !DILocation(line: 338, column: 5, scope: !235)
!330 = !DILocation(line: 355, column: 84, scope: !331)
!331 = distinct !DILexicalBlock(scope: !318, file: !3, line: 355, column: 84)
!332 = !DILocation(line: 358, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !220, file: !3, line: 358, column: 9)
!334 = !DILocation(line: 358, column: 53, scope: !333)
!335 = !DILocation(line: 358, column: 9, scope: !220)
!336 = !DILocation(line: 358, column: 65, scope: !337)
!337 = distinct !DILexicalBlock(scope: !333, file: !3, line: 358, column: 65)
!338 = !DILocation(line: 361, column: 5, scope: !220)
!339 = !DILocation(line: 364, column: 1, scope: !220)
!340 = !DILocation(line: 363, column: 5, scope: !220)
!341 = !DISubprogram(name: "PAPI_library_init", scope: !180, file: !180, line: 1172, type: !181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!342 = !DISubprogram(name: "PAPI_create_eventset", scope: !180, file: !180, line: 1147, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!343 = !DISubroutineType(types: !344)
!344 = !{!6, !5}
!345 = !DISubprogram(name: "PAPI_add_events", scope: !180, file: !180, line: 1143, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!346 = !DISubroutineType(types: !347)
!347 = !{!6, !6, !5, !6}
!348 = !DISubprogram(name: "srand", scope: !349, file: !349, line: 455, type: !350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!349 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!353 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !357, line: 7, baseType: !52)
!357 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!359 = !DISubprogram(name: "rand", scope: !349, file: !349, line: 453, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!360 = !DISubprogram(name: "PAPI_remove_events", scope: !180, file: !180, line: 1192, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!361 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !180, file: !180, line: 1149, type: !343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!362 = !DISubprogram(name: "PAPI_shutdown", scope: !180, file: !180, line: 1202, type: !363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!363 = !DISubroutineType(types: !364)
!364 = !{null}
