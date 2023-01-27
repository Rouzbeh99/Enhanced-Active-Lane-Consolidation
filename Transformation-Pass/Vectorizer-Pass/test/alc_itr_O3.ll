; ModuleID = 'alc_itr.ll'
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
@__const.main.innerStruct = private unnamed_addr constant { i32, <{ [13 x i32], [87 x i32] }>, i32 } { i32 1, <{ [13 x i32], [87 x i32] }> <{ [13 x i32] [i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5], [87 x i32] zeroinitializer }>, i32 23 }, align 8
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
  %arrayidx5 = getelementptr inbounds %struct.OuterStruct, ptr %outerStruct, i64 0, i32 1, i32 1, i64 6
  br i1 %cmp215, label %for.cond1.preheader.us.preheader, label %for.cond.cleanup, !dbg !114

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = zext i32 %n to i64
  %0 = tail call i32 @llvm.vscale.i32(), !dbg !112
  %1 = shl i32 %0, 2
  %2 = shl i32 %0, 3
  %.not = icmp ugt i32 %2, %n
  br label %for.cond1.preheader.us, !dbg !115

for.cond1.preheader.us:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.us.preheader
  %j.017.us = phi i32 [ %inc9.us, %for.cond1.for.cond.cleanup3_crit_edge.us ], [ 0, %for.cond1.preheader.us.preheader ]
  call void @llvm.dbg.value(metadata i32 %j.017.us, metadata !105, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !116
  br i1 %.not, label %for.body4.us.preheader, label %pre.alc, !dbg !114

for.body4.us.preheader:                           ; preds = %middel.block, %for.cond1.preheader.us
  %indvars.iv.ph = phi i64 [ %45, %middel.block ], [ 0, %for.cond1.preheader.us ]
  br label %for.body4.us, !dbg !114

for.body4.us:                                     ; preds = %for.body4.us.preheader, %for.inc.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us ], [ %indvars.iv.ph, %for.body4.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !107, metadata !DIExpression()), !dbg !116
  %arrayidx.us = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !117
  %3 = load i8, ptr %arrayidx.us, align 1, !dbg !117, !tbaa !121, !range !123
  %tobool.not.us = icmp eq i8 %3, 0, !dbg !117
  br i1 %tobool.not.us, label %for.inc.us, label %if.then.us, !dbg !124

if.then.us:                                       ; preds = %for.body4.us
  %4 = load i32, ptr %arrayidx5, align 4, !dbg !125, !tbaa !127
  %arrayidx7.us = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !129
  store i32 %4, ptr %arrayidx7.us, align 4, !dbg !130, !tbaa !127
  br label %for.inc.us, !dbg !131

pre.alc:                                          ; preds = %for.cond1.preheader.us
  %5 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %6 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %7 = urem i32 %n, %1
  %8 = add i32 %7, %2
  %total.iterations.to.be.vectorized = sub i32 %n, %8
  %9 = load i32, ptr %arrayidx5, align 4, !dbg !125, !tbaa !127
  %10 = insertelement <vscale x 4 x i32> undef, i32 %9, i64 0
  %hoisted.load = shufflevector <vscale x 4 x i32> %10, <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer
  %11 = load <vscale x 4 x i8>, ptr %cond, align 4
  %12 = icmp ne <vscale x 4 x i8> %11, zeroinitializer
  %13 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %12, <vscale x 4 x i1> %12)
  %14 = trunc i64 %13 to i32
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %1, %pre.alc ], [ %44, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %6, %pre.alc ], [ %41, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %12, %pre.alc ], [ %42, %new.latch ]
  %uniform.vec.actives = phi i32 [ %14, %pre.alc ], [ %43, %new.latch ]
  %15 = sext i32 %vector.loop.index to i64, !dbg !117
  %16 = getelementptr inbounds i8, ptr %cond, i64 %15, !dbg !117
  %17 = load <vscale x 4 x i8>, ptr %16, align 4
  %18 = icmp ne <vscale x 4 x i8> %17, zeroinitializer
  %19 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %18, <vscale x 4 x i1> %18)
  %20 = trunc i64 %19 to i32
  %21 = add i32 %uniform.vec.actives, %20
  %condition.not = icmp ugt i32 %21, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %22 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %23 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %24 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %18, <vscale x 4 x i32> %22)
  %25 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %uniform.vec.actives)
  %26 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %25, <vscale x 4 x i32> %23, <vscale x 4 x i32> %24)
  %27 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %21)
  %28 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %27, <vscale x 4 x i1> %27)
  %29 = trunc i64 %28 to i32
  %30 = icmp ult i32 %21, %1
  br i1 %30, label %new.latch, label %uniform.block

linearized:                                       ; preds = %alc.header
  %31 = getelementptr inbounds i32, ptr %a, i64 %15, !dbg !129
  tail call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %hoisted.load, ptr %31, i32 16, <vscale x 4 x i1> %18)
  br label %new.latch

uniform.block:                                    ; preds = %lane.gather
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %hoisted.load, <vscale x 4 x i1> %5, ptr %a, <vscale x 4 x i32> %26)
  %32 = add i32 %vector.loop.index, %1
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %32, i32 1)
  %34 = sext i32 %32 to i64, !dbg !117
  %35 = getelementptr inbounds i8, ptr %cond, i64 %34, !dbg !117
  %36 = load <vscale x 4 x i8>, ptr %35, align 4
  %37 = icmp ne <vscale x 4 x i8> %36, zeroinitializer
  %38 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %37, <vscale x 4 x i1> %37)
  %39 = trunc i64 %38 to i32
  br label %new.latch

new.latch:                                        ; preds = %lane.gather, %uniform.block, %linearized
  %40 = phi i32 [ %vector.loop.index, %linearized ], [ %vector.loop.index, %lane.gather ], [ %32, %uniform.block ]
  %41 = phi <vscale x 4 x i32> [ %uniform.vector, %linearized ], [ %26, %lane.gather ], [ %33, %uniform.block ]
  %42 = phi <vscale x 4 x i1> [ %uniform.vector.predicates, %linearized ], [ %27, %lane.gather ], [ %37, %uniform.block ]
  %43 = phi i32 [ %uniform.vec.actives, %linearized ], [ %29, %lane.gather ], [ %39, %uniform.block ]
  %44 = add i32 %40, %1
  %.not4 = icmp ult i32 %44, %total.iterations.to.be.vectorized
  br i1 %.not4, label %alc.header, label %middel.block

middel.block:                                     ; preds = %new.latch
  %condition5 = icmp eq i32 %8, 0
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %hoisted.load, <vscale x 4 x i1> %42, ptr %a, <vscale x 4 x i32> %41)
  %45 = zext i32 %44 to i64
  br i1 %condition5, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us.preheader

for.inc.us:                                       ; preds = %if.then.us, %for.body4.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !107, metadata !DIExpression()), !dbg !116
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !133
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !dbg !114, !llvm.loop !134

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.inc.us, %middel.block
  %inc9.us = add nuw nsw i32 %j.017.us, 1, !dbg !138
  call void @llvm.dbg.value(metadata i32 %inc9.us, metadata !105, metadata !DIExpression()), !dbg !113
  %exitcond20.not = icmp eq i32 %inc9.us, 10, !dbg !139
  br i1 %exitcond20.not, label %for.cond.cleanup, label %for.cond1.preheader.us, !dbg !115, !llvm.loop !140

for.cond.cleanup:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %entry
  ret void, !dbg !142
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !147, metadata !DIExpression()), !dbg !149
  %conv = sext i32 %n to i64, !dbg !150
  %mul = shl nsw i64 %conv, 2, !dbg !151
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #15, !dbg !152
  call void @llvm.dbg.value(metadata ptr %call, metadata !148, metadata !DIExpression()), !dbg !149
  %cmp = icmp eq ptr %call, null, !dbg !153
  br i1 %cmp, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !156
  tail call void @exit(i32 noundef 1) #16, !dbg !158
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
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #15, !dbg !168
  call void @llvm.dbg.value(metadata ptr %call, metadata !165, metadata !DIExpression()), !dbg !166
  %cmp = icmp eq ptr %call, null, !dbg !169
  br i1 %cmp, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.10), !dbg !172
  tail call void @exit(i32 noundef 1) #16, !dbg !174
  unreachable, !dbg !174

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !175
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !176 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.dbg.declare(metadata ptr @__const.main.innerStruct, metadata !190, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 3264)), !dbg !194
  %byval-temp = alloca %struct.OuterStruct, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #14, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !181, metadata !DIExpression()), !dbg !196
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #14, !dbg !197
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !199
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !200

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !201, !tbaa !203
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %errstring) #17, !dbg !205
  call void @exit(i32 noundef 1) #16, !dbg !206
  unreachable, !dbg !206

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #14, !dbg !207
  call void @llvm.dbg.value(metadata i32 %call2, metadata !180, metadata !DIExpression()), !dbg !209
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !210
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !211

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !212, !tbaa !203
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %call2, ptr noundef nonnull @.str.3, i32 noundef 316) #17, !dbg !212
  tail call void @exit(i32 noundef %call2) #16, !dbg !212
  unreachable, !dbg !212

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !214, !tbaa !127
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #14, !dbg !216
  call void @llvm.dbg.value(metadata i32 %call7, metadata !180, metadata !DIExpression()), !dbg !209
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !217
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !218

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !219, !tbaa !203
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %call7, ptr noundef nonnull @.str.3, i32 noundef 319) #17, !dbg !219
  tail call void @exit(i32 noundef %call7) #16, !dbg !219
  unreachable, !dbg !219

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 100, metadata !186, metadata !DIExpression()), !dbg !209
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 100), !dbg !221
  store ptr %call12, ptr @a, align 8, !dbg !222, !tbaa !203
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 100), !dbg !223
  store ptr %call13, ptr @b, align 8, !dbg !224, !tbaa !203
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 100), !dbg !225
  store ptr %call14, ptr @c, align 8, !dbg !226, !tbaa !203
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 100), !dbg !227
  store ptr %call15, ptr @cond, align 8, !dbg !228, !tbaa !203
  store i8 0, ptr %call15, align 1, !dbg !229, !tbaa !121
  %call16 = tail call i64 @time(ptr noundef null) #14, !dbg !230
  %conv = trunc i64 %call16 to i32, !dbg !230
  tail call void @srand(i32 noundef %conv) #14, !dbg !231
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !232
  %4 = load ptr, ptr @a, align 8, !tbaa !203
  %5 = load ptr, ptr @b, align 8, !tbaa !203
  %6 = load ptr, ptr @c, align 8, !tbaa !203
  %7 = load ptr, ptr @cond, align 8, !tbaa !203
  call void @llvm.dbg.value(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !232
  br label %for.body, !dbg !233

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.declare(metadata ptr @__const.main.innerStruct, metadata !189, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i32 3, metadata !190, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !209
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %byval-temp) #14, !dbg !235
  store i32 3, ptr %byval-temp, align 4, !dbg !235, !tbaa.struct !236
  %outerStruct.sroa.4.0.byval-temp.sroa_idx = getelementptr inbounds i8, ptr %byval-temp, i64 4, !dbg !235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(408) %outerStruct.sroa.4.0.byval-temp.sroa_idx, ptr noundef nonnull align 8 dereferenceable(408) @__const.main.innerStruct, i64 408, i1 false), !dbg !235, !tbaa.struct !238
  call void @test_struct(ptr noundef nonnull %byval-temp, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 100), !dbg !235
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %byval-temp) #14, !dbg !235
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !239
  %8 = load ptr, ptr @c, align 8, !tbaa !203
  call void @llvm.dbg.value(metadata i32 0, metadata !192, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 0, metadata !191, metadata !DIExpression()), !dbg !209
  br label %for.body34, !dbg !240

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.body ]
  %indvars85 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !187, metadata !DIExpression()), !dbg !232
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !241
  store i32 %indvars85, ptr %arrayidx19, align 4, !dbg !244, !tbaa !127
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !245
  store i32 2, ptr %arrayidx21, align 4, !dbg !246, !tbaa !127
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !247
  store i32 0, ptr %arrayidx23, align 4, !dbg !248, !tbaa !127
  %rem.lhs.trunc = trunc i64 %indvars.iv to i8, !dbg !249
  %rem81 = urem i8 %rem.lhs.trunc, 3, !dbg !249
  %cmp24 = icmp eq i8 %rem81, 0, !dbg !250
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !251
  %frombool = zext i1 %cmp24 to i8, !dbg !252
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !252, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !253
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !187, metadata !DIExpression()), !dbg !232
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100, !dbg !254
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !233, !llvm.loop !255

for.cond.cleanup33:                               ; preds = %for.body34
  %call40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !257
  %9 = load ptr, ptr @a, align 8, !dbg !258, !tbaa !203
  tail call void @free(ptr noundef %9) #14, !dbg !259
  %10 = load ptr, ptr @b, align 8, !dbg !260, !tbaa !203
  tail call void @free(ptr noundef %10) #14, !dbg !261
  %11 = load ptr, ptr @c, align 8, !dbg !262, !tbaa !203
  tail call void @free(ptr noundef %11) #14, !dbg !263
  %12 = load ptr, ptr @cond, align 8, !dbg !264, !tbaa !203
  tail call void @free(ptr noundef %12) #14, !dbg !265
  %13 = load i64, ptr @CounterValues, align 8, !dbg !266, !tbaa !267
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.5, i64 noundef %13), !dbg !269
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !270, !tbaa !267
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %14), !dbg !271
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !272, !tbaa !267
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !273
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !274, !tbaa !267
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !275
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !276, !tbaa !277
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, double noundef %17), !dbg !279
  %18 = load i32, ptr @EventSet, align 4, !dbg !280, !tbaa !127
  %call46 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #14, !dbg !282
  call void @llvm.dbg.value(metadata i32 %call46, metadata !180, metadata !DIExpression()), !dbg !209
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !283
  br i1 %cmp47.not, label %if.end51, label %if.then49, !dbg !284

for.body34:                                       ; preds = %for.body34, %for.cond.cleanup
  %indvars.iv86 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next87, %for.body34 ]
  %sum.083 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body34 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv86, metadata !192, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i32 %sum.083, metadata !191, metadata !DIExpression()), !dbg !209
  %arrayidx36 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv86, !dbg !285
  %19 = load i32, ptr %arrayidx36, align 4, !dbg !285, !tbaa !127
  %add = add nsw i32 %19, %sum.083, !dbg !288
  call void @llvm.dbg.value(metadata i32 %add, metadata !191, metadata !DIExpression()), !dbg !209
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1, !dbg !289
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next87, metadata !192, metadata !DIExpression()), !dbg !239
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 100, !dbg !290
  br i1 %exitcond89.not, label %for.cond.cleanup33, label %for.body34, !dbg !240, !llvm.loop !291

if.then49:                                        ; preds = %for.cond.cleanup33
  %20 = load ptr, ptr @stderr, align 8, !dbg !293, !tbaa !203
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.2, i32 noundef %call46, ptr noundef nonnull @.str.3, i32 noundef 367) #17, !dbg !293
  tail call void @exit(i32 noundef %call46) #16, !dbg !293
  unreachable, !dbg !293

if.end51:                                         ; preds = %for.cond.cleanup33
  %call52 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #14, !dbg !295
  call void @llvm.dbg.value(metadata i32 %call52, metadata !180, metadata !DIExpression()), !dbg !209
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !297
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !298

if.then55:                                        ; preds = %if.end51
  %21 = load ptr, ptr @stderr, align 8, !dbg !299, !tbaa !203
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.2, i32 noundef %call52, ptr noundef nonnull @.str.3, i32 noundef 370) #17, !dbg !299
  tail call void @exit(i32 noundef %call52) #16, !dbg !299
  unreachable, !dbg !299

if.end57:                                         ; preds = %if.end51
  tail call void @PAPI_shutdown() #14, !dbg !301
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #14, !dbg !302
  ret i32 0, !dbg !303
}

declare !dbg !304 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

declare !dbg !308 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #8

declare !dbg !311 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !314 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !319 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #10

declare !dbg !325 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare !dbg !326 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #8

declare !dbg !327 void @PAPI_shutdown() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i32 @llvm.vscale.i32() #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32, i32) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #12

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #13

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #13

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #5 = { inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #8 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #9 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "4f3c2d6f65fd09e26c00f0fa49b4f2d0")
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
!179 = !{!180, !181, !186, !187, !189, !190, !191, !192}
!180 = !DILocalVariable(name: "status", scope: !176, file: !3, line: 307, type: !6)
!181 = !DILocalVariable(name: "errstring", scope: !176, file: !3, line: 308, type: !182)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 1024, elements: !184)
!183 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !{!185}
!185 = !DISubrange(count: 128)
!186 = !DILocalVariable(name: "n", scope: !176, file: !3, line: 321, type: !6)
!187 = !DILocalVariable(name: "i", scope: !188, file: !3, line: 332, type: !6)
!188 = distinct !DILexicalBlock(scope: !176, file: !3, line: 332, column: 5)
!189 = !DILocalVariable(name: "innerStruct", scope: !176, file: !3, line: 339, type: !90)
!190 = !DILocalVariable(name: "outerStruct", scope: !176, file: !3, line: 340, type: !86)
!191 = !DILocalVariable(name: "sum", scope: !176, file: !3, line: 348, type: !6)
!192 = !DILocalVariable(name: "i", scope: !193, file: !3, line: 350, type: !6)
!193 = distinct !DILexicalBlock(scope: !176, file: !3, line: 350, column: 5)
!194 = !DILocation(line: 340, column: 24, scope: !176)
!195 = !DILocation(line: 308, column: 5, scope: !176)
!196 = !DILocation(line: 308, column: 10, scope: !176)
!197 = !DILocation(line: 310, column: 9, scope: !198)
!198 = distinct !DILexicalBlock(scope: !176, file: !3, line: 310, column: 9)
!199 = !DILocation(line: 310, column: 45, scope: !198)
!200 = !DILocation(line: 310, column: 9, scope: !176)
!201 = !DILocation(line: 311, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !198, file: !3, line: 310, column: 66)
!203 = !{!204, !204, i64 0}
!204 = !{!"any pointer", !64, i64 0}
!205 = !DILocation(line: 311, column: 9, scope: !202)
!206 = !DILocation(line: 312, column: 9, scope: !202)
!207 = !DILocation(line: 316, column: 19, scope: !208)
!208 = distinct !DILexicalBlock(scope: !176, file: !3, line: 316, column: 9)
!209 = !DILocation(line: 0, scope: !176)
!210 = !DILocation(line: 316, column: 52, scope: !208)
!211 = !DILocation(line: 316, column: 9, scope: !176)
!212 = !DILocation(line: 316, column: 64, scope: !213)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 316, column: 64)
!214 = !DILocation(line: 319, column: 35, scope: !215)
!215 = distinct !DILexicalBlock(scope: !176, file: !3, line: 319, column: 9)
!216 = !DILocation(line: 319, column: 19, scope: !215)
!217 = !DILocation(line: 319, column: 69, scope: !215)
!218 = !DILocation(line: 319, column: 9, scope: !176)
!219 = !DILocation(line: 319, column: 81, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 319, column: 81)
!221 = !DILocation(line: 323, column: 9, scope: !176)
!222 = !DILocation(line: 323, column: 7, scope: !176)
!223 = !DILocation(line: 324, column: 9, scope: !176)
!224 = !DILocation(line: 324, column: 7, scope: !176)
!225 = !DILocation(line: 325, column: 9, scope: !176)
!226 = !DILocation(line: 325, column: 7, scope: !176)
!227 = !DILocation(line: 326, column: 12, scope: !176)
!228 = !DILocation(line: 326, column: 10, scope: !176)
!229 = !DILocation(line: 328, column: 13, scope: !176)
!230 = !DILocation(line: 330, column: 11, scope: !176)
!231 = !DILocation(line: 330, column: 5, scope: !176)
!232 = !DILocation(line: 0, scope: !188)
!233 = !DILocation(line: 332, column: 5, scope: !188)
!234 = !DILocation(line: 339, column: 24, scope: !176)
!235 = !DILocation(line: 342, column: 5, scope: !176)
!236 = !{i64 0, i64 4, !127, i64 4, i64 4, !127, i64 8, i64 400, !237, i64 408, i64 4, !127}
!237 = !{!64, !64, i64 0}
!238 = !{i64 0, i64 4, !127, i64 4, i64 400, !237, i64 404, i64 4, !127}
!239 = !DILocation(line: 0, scope: !193)
!240 = !DILocation(line: 350, column: 5, scope: !193)
!241 = !DILocation(line: 333, column: 9, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 332, column: 33)
!243 = distinct !DILexicalBlock(scope: !188, file: !3, line: 332, column: 5)
!244 = !DILocation(line: 333, column: 14, scope: !242)
!245 = !DILocation(line: 334, column: 9, scope: !242)
!246 = !DILocation(line: 334, column: 14, scope: !242)
!247 = !DILocation(line: 335, column: 9, scope: !242)
!248 = !DILocation(line: 335, column: 14, scope: !242)
!249 = !DILocation(line: 336, column: 22, scope: !242)
!250 = !DILocation(line: 336, column: 26, scope: !242)
!251 = !DILocation(line: 336, column: 9, scope: !242)
!252 = !DILocation(line: 336, column: 17, scope: !242)
!253 = !DILocation(line: 332, column: 28, scope: !243)
!254 = !DILocation(line: 332, column: 23, scope: !243)
!255 = distinct !{!255, !233, !256, !136, !137}
!256 = !DILocation(line: 337, column: 5, scope: !188)
!257 = !DILocation(line: 354, column: 5, scope: !176)
!258 = !DILocation(line: 356, column: 10, scope: !176)
!259 = !DILocation(line: 356, column: 5, scope: !176)
!260 = !DILocation(line: 357, column: 10, scope: !176)
!261 = !DILocation(line: 357, column: 5, scope: !176)
!262 = !DILocation(line: 358, column: 10, scope: !176)
!263 = !DILocation(line: 358, column: 5, scope: !176)
!264 = !DILocation(line: 359, column: 10, scope: !176)
!265 = !DILocation(line: 359, column: 5, scope: !176)
!266 = !DILocation(line: 361, column: 53, scope: !176)
!267 = !{!268, !268, i64 0}
!268 = !{!"long long", !64, i64 0}
!269 = !DILocation(line: 361, column: 5, scope: !176)
!270 = !DILocation(line: 362, column: 36, scope: !176)
!271 = !DILocation(line: 362, column: 5, scope: !176)
!272 = !DILocation(line: 363, column: 50, scope: !176)
!273 = !DILocation(line: 363, column: 5, scope: !176)
!274 = !DILocation(line: 364, column: 49, scope: !176)
!275 = !DILocation(line: 364, column: 5, scope: !176)
!276 = !DILocation(line: 365, column: 40, scope: !176)
!277 = !{!278, !278, i64 0}
!278 = !{!"double", !64, i64 0}
!279 = !DILocation(line: 365, column: 5, scope: !176)
!280 = !DILocation(line: 367, column: 38, scope: !281)
!281 = distinct !DILexicalBlock(scope: !176, file: !3, line: 367, column: 9)
!282 = !DILocation(line: 367, column: 19, scope: !281)
!283 = !DILocation(line: 367, column: 72, scope: !281)
!284 = !DILocation(line: 367, column: 9, scope: !176)
!285 = !DILocation(line: 351, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 350, column: 33)
!287 = distinct !DILexicalBlock(scope: !193, file: !3, line: 350, column: 5)
!288 = !DILocation(line: 351, column: 13, scope: !286)
!289 = !DILocation(line: 350, column: 28, scope: !287)
!290 = !DILocation(line: 350, column: 23, scope: !287)
!291 = distinct !{!291, !240, !292, !136, !137}
!292 = !DILocation(line: 352, column: 5, scope: !193)
!293 = !DILocation(line: 367, column: 84, scope: !294)
!294 = distinct !DILexicalBlock(scope: !281, file: !3, line: 367, column: 84)
!295 = !DILocation(line: 370, column: 19, scope: !296)
!296 = distinct !DILexicalBlock(scope: !176, file: !3, line: 370, column: 9)
!297 = !DILocation(line: 370, column: 53, scope: !296)
!298 = !DILocation(line: 370, column: 9, scope: !176)
!299 = !DILocation(line: 370, column: 65, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 370, column: 65)
!301 = !DILocation(line: 373, column: 5, scope: !176)
!302 = !DILocation(line: 376, column: 1, scope: !176)
!303 = !DILocation(line: 375, column: 5, scope: !176)
!304 = !DISubprogram(name: "PAPI_library_init", scope: !305, file: !305, line: 1172, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!305 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!306 = !DISubroutineType(types: !307)
!307 = !{!6, !6}
!308 = !DISubprogram(name: "PAPI_create_eventset", scope: !305, file: !305, line: 1147, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!309 = !DISubroutineType(types: !310)
!310 = !{!6, !5}
!311 = !DISubprogram(name: "PAPI_add_events", scope: !305, file: !305, line: 1143, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!312 = !DISubroutineType(types: !313)
!313 = !{!6, !6, !5, !6}
!314 = !DISubprogram(name: "srand", scope: !315, file: !315, line: 455, type: !316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!315 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!319 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !324}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !323, line: 7, baseType: !52)
!323 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!325 = !DISubprogram(name: "PAPI_remove_events", scope: !305, file: !305, line: 1192, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !305, file: !305, line: 1149, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!327 = !DISubprogram(name: "PAPI_shutdown", scope: !305, file: !305, line: 1202, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!328 = !DISubroutineType(types: !329)
!329 = !{null}
