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
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"checksum:  %d \0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.12 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"------------------------------------------------------\0A\00", align 1

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
define dso_local void @simple_if_else(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %cmp330 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp330, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count = zext i32 %n to i64, !dbg !108
  %1 = tail call i32 @llvm.vscale.i32(), !dbg !110
  %2 = shl i32 %1, 2, !dbg !110
  %3 = shl i32 %1, 3, !dbg !110
  %.not = icmp ugt i32 %3, %n, !dbg !110
  br i1 %.not, label %for.body.preheader25, label %pre.alc, !dbg !110

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @stderr, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %call1, ptr noundef nonnull @.str.1, i32 noundef 65) #14, !dbg !111
  tail call void @exit(i32 noundef %call1) #15, !dbg !111
  unreachable, !dbg !111

for.cond.cleanup:                                 ; preds = %for.inc, %for.cond.preheader
  %5 = load i32, ptr @EventSet, align 4, !dbg !115, !tbaa !102
  %call14 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call14, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !118
  br i1 %cmp15.not, label %if.end18, label %if.then16, !dbg !119

for.body:                                         ; preds = %for.body.preheader25, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body.preheader25 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !96, metadata !DIExpression()), !dbg !107
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !120
  %6 = load i8, ptr %arrayidx, align 1, !dbg !120, !tbaa !123, !range !125
  %tobool.not = icmp eq i8 %6, 0, !dbg !120
  br i1 %tobool.not, label %if.else, label %if.then4, !dbg !126

if.then4:                                         ; preds = %for.body
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !127
  %7 = load i32, ptr %arrayidx6, align 4, !dbg !127, !tbaa !102
  %arrayidx8 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !129
  store i32 %7, ptr %arrayidx8, align 4, !dbg !130, !tbaa !102
  br label %for.inc, !dbg !131

if.else:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !132
  %8 = load i32, ptr %arrayidx10, align 4, !dbg !132, !tbaa !102
  %arrayidx12 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !134
  %9 = load i32, ptr %arrayidx12, align 4, !dbg !135, !tbaa !102
  %add = add nsw i32 %9, %8, !dbg !135
  store i32 %add, ptr %arrayidx12, align 4, !dbg !135, !tbaa !102
  br label %for.inc

pre.alc:                                          ; preds = %for.body.preheader
  %10 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %11 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %12 = urem i32 %n, %2
  %13 = add i32 %3, %12
  %total.iterations.to.be.vectorized = sub i32 %n, %13
  %14 = load <vscale x 4 x i8>, ptr %cond, align 4
  %15 = icmp eq <vscale x 4 x i8> %14, zeroinitializer
  %initial_a = load <vscale x 4 x i32>, ptr %a, align 16
  %initial_b = load <vscale x 4 x i32>, ptr %b, align 16
  %initial_c = load <vscale x 4 x i32>, ptr %c, align 16
  %16 = sext i32 %2 to i64
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %81, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %11, %pre.alc ], [ %76, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %15, %pre.alc ], [ %77, %new.latch ]
  %uniform_b = phi <vscale x 4 x i32> [ %initial_b, %pre.alc ], [ %78, %new.latch ]
  %uniform_c = phi <vscale x 4 x i32> [ %initial_c, %pre.alc ], [ %79, %new.latch ]
  %uniform_a = phi <vscale x 4 x i32> [ %initial_a, %pre.alc ], [ %80, %new.latch ]
  %17 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %18 = sext i32 %vector.loop.index to i64, !dbg !120
  %19 = getelementptr inbounds i8, ptr %cond, i64 %18, !dbg !120
  %20 = load <vscale x 4 x i8>, ptr %19, align 4
  %21 = icmp eq <vscale x 4 x i8> %20, zeroinitializer
  %22 = getelementptr i32, ptr %a, i64 %18
  %remaining_a = load <vscale x 4 x i32>, ptr %22, align 16
  %23 = getelementptr i32, ptr %b, i64 %18
  %remaining_b = load <vscale x 4 x i32>, ptr %23, align 16
  %24 = getelementptr i32, ptr %c, i64 %18
  %remaining_c = load <vscale x 4 x i32>, ptr %24, align 16



   %e30 = extractelement <vscale x 4 x i32> %uniform_b, i32 0
   %e31 = extractelement <vscale x 4 x i32> %uniform_b, i32 1
   %e32 = extractelement <vscale x 4 x i32> %uniform_b, i32 2
   %e33 = extractelement <vscale x 4 x i32> %uniform_b, i32 3
   %e34 = extractelement <vscale x 4 x i32> %uniform_b, i32 4
   %e35 = extractelement <vscale x 4 x i32> %uniform_b, i32 5
   %e36 = extractelement <vscale x 4 x i32> %uniform_b, i32 6
   %e37 = extractelement <vscale x 4 x i32> %uniform_b, i32 7
   %e38 = extractelement <vscale x 4 x i32> %uniform_b, i32 8
   %e39 = extractelement <vscale x 4 x i32> %uniform_b, i32 9
   %e310 = extractelement <vscale x 4 x i32> %uniform_b, i32 10
   %e311 = extractelement <vscale x 4 x i32> %uniform_b, i32 11
   %e312 = extractelement <vscale x 4 x i32> %uniform_b, i32 12
   %e313 = extractelement <vscale x 4 x i32> %uniform_b, i32 13
   %e314 = extractelement <vscale x 4 x i32> %uniform_b, i32 14
   %e315 = extractelement <vscale x 4 x i32> %uniform_b, i32 15

   %c30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e30)
   %c31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e31)
   %c32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e32)
   %c33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e33)
   %c34 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e34)
   %c35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e35)
   %c36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e36)
   %c37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e37)
   %c38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e38)
   %c39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e39)
   %c310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e310)
   %c311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e311)
   %c312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e312)
   %c313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e313)
   %c314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e314)
   %c315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e315)

  %cc0 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef -100)

  %e40 = extractelement <vscale x 4 x i32> %remaining_b, i32 0
  %e41 = extractelement <vscale x 4 x i32> %remaining_b, i32 1
  %e42 = extractelement <vscale x 4 x i32> %remaining_b, i32 2
  %e43 = extractelement <vscale x 4 x i32> %remaining_b, i32 3
  %e44 = extractelement <vscale x 4 x i32> %remaining_b, i32 4
  %e45 = extractelement <vscale x 4 x i32> %remaining_b, i32 5
  %e46 = extractelement <vscale x 4 x i32> %remaining_b, i32 6
  %e47 = extractelement <vscale x 4 x i32> %remaining_b, i32 7
  %e48 = extractelement <vscale x 4 x i32> %remaining_b, i32 8
  %e49 = extractelement <vscale x 4 x i32> %remaining_b, i32 9
  %e410 = extractelement <vscale x 4 x i32> %remaining_b, i32 10
  %e411 = extractelement <vscale x 4 x i32> %remaining_b, i32 11
  %e412 = extractelement <vscale x 4 x i32> %remaining_b, i32 12
  %e413 = extractelement <vscale x 4 x i32> %remaining_b, i32 13
  %e414 = extractelement <vscale x 4 x i32> %remaining_b, i32 14
  %e415 = extractelement <vscale x 4 x i32> %remaining_b, i32 15

  %c40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e40)
  %c41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e41)
  %c42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e42)
  %c43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e43)
  %c44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e44)
  %c45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e45)
  %c46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e46)
  %c47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e47)
  %c48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e48)
  %c49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e49)
  %c410 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e410)
  %c411 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e411)
  %c412 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e412)
  %c413 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e413)
  %c414 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e414)
  %c415 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e415)

  %cc1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef -100)








  %25 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %26 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %21)
  %27 = trunc i64 %25 to i32
  %28 = trunc i64 %26 to i32
  %29 = add i32 %28, %27
  %30 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %31 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %17)
  %32 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_b)
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %remaining_b)
  %34 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_c)
  %35 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %remaining_c)
  %36 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %remaining_a)
  %37 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %38 = xor <vscale x 4 x i1> %21, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %39 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %37, <vscale x 4 x i32> %uniform.vector)
  %40 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %17)
  %41 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %remaining_b)
  %42 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %remaining_c)
  %43 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %37, <vscale x 4 x i32> %uniform_a)
  %44 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %remaining_a)
  %45 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %27)
  %46 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %30, <vscale x 4 x i32> %31)
  %47 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %32, <vscale x 4 x i32> %33)
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %34, <vscale x 4 x i32> %35)
  %49 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %29)
  %50 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %49, <vscale x 4 x i32> %46, <vscale x 4 x i32> %40)
  %51 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %47, <vscale x 4 x i32> %41)
  %52 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %48, <vscale x 4 x i32> %42)
  %53 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %26)
  %54 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %31, <vscale x 4 x i32> %40)
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %36, <vscale x 4 x i32> %44)
  %56 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %37, <vscale x 4 x i1> %37)
  %57 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %56)
  %58 = select <vscale x 4 x i1> %57, <vscale x 4 x i32> %39, <vscale x 4 x i32> %54
  %59 = select <vscale x 4 x i1> %57, <vscale x 4 x i32> %43, <vscale x 4 x i32> %55
  %60 = xor <vscale x 4 x i1> %57, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %61 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %38, <vscale x 4 x i1> %38)
  %62 = sub i64 %16, %61
  %63 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %62)
  %64 = and <vscale x 4 x i1> %63, %60
  %65 = icmp ugt i32 %29, %2
  br i1 %65, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %alc.header
  %66 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %37, <vscale x 4 x i32> %uniform_c)
  %67 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %35, <vscale x 4 x i32> %42)
  %68 = select <vscale x 4 x i1> %57, <vscale x 4 x i32> %66, <vscale x 4 x i32> %67
  %69 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %37, <vscale x 4 x i32> %uniform_b)
  %70 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %53, <vscale x 4 x i32> %33, <vscale x 4 x i32> %41)
  %71 = select <vscale x 4 x i1> %57, <vscale x 4 x i32> %69, <vscale x 4 x i32> %70

  %e0 = extractelement <vscale x 4 x i32> %51, i32 0
  %e1 = extractelement <vscale x 4 x i32> %51, i32 1
  %e2 = extractelement <vscale x 4 x i32> %51, i32 2
  %e3 = extractelement <vscale x 4 x i32> %51, i32 3
  %e4 = extractelement <vscale x 4 x i32> %51, i32 4
  %e5 = extractelement <vscale x 4 x i32> %51, i32 5
  %e6 = extractelement <vscale x 4 x i32> %51, i32 6
  %e7 = extractelement <vscale x 4 x i32> %51, i32 7
  %e8 = extractelement <vscale x 4 x i32> %51, i32 8
  %e9 = extractelement <vscale x 4 x i32> %51, i32 9
  %e10 = extractelement <vscale x 4 x i32> %51, i32 10
  %e11 = extractelement <vscale x 4 x i32> %51, i32 11
  %e12 = extractelement <vscale x 4 x i32> %51, i32 12
  %e13 = extractelement <vscale x 4 x i32> %51, i32 13
  %e14 = extractelement <vscale x 4 x i32> %51, i32 14
  %e15 = extractelement <vscale x 4 x i32> %51, i32 15

  %c0 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e0)
  %c1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e1)
  %c2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e2)
  %c3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e3)
  %c4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e4)
  %c5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e5)
  %c6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e6)
  %c7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e7)
  %c8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e8)
  %c9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e9)
  %c10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e10)
  %c11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e11)
  %c12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e12)
  %c13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e13)
  %c14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e14)
  %c15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %e15)

  %ccc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.15, i32 noundef -100)
  %ccc33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.16, i32 noundef -100)


  %72 = add <vscale x 4 x i32> %52, %51
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %72, <vscale x 4 x i1> %10, ptr nonnull %c, <vscale x 4 x i32> %50)
  br label %new.latch

uniform.else:                                     ; preds = %alc.header
  %73 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform_a)
  %74 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %73, <vscale x 4 x i32> %36)
  %75 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %45, <vscale x 4 x i32> %74, <vscale x 4 x i32> %44)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %59, <vscale x 4 x i1> %10, ptr nonnull %c, <vscale x 4 x i32> %58)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %76 = phi <vscale x 4 x i32> [ %58, %uniform.then ], [ %50, %uniform.else ]
  %77 = phi <vscale x 4 x i1> [ %64, %uniform.then ], [ %49, %uniform.else ]
  %78 = phi <vscale x 4 x i32> [ %71, %uniform.then ], [ %51, %uniform.else ]
  %79 = phi <vscale x 4 x i32> [ %68, %uniform.then ], [ %52, %uniform.else ]
  %80 = phi <vscale x 4 x i32> [ %59, %uniform.then ], [ %75, %uniform.else ]
  %81 = add i32 %vector.loop.index, %2
  %.not2 = icmp ult i32 %81, %total.iterations.to.be.vectorized
  br i1 %.not2, label %alc.header, label %joinBlock

linearized.then:                                  ; preds = %joinBlock
  %82 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %49, ptr nonnull %b, <vscale x 4 x i32> %50)
  %83 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %49, ptr nonnull %c, <vscale x 4 x i32> %50)
  %84 = add <vscale x 4 x i32> %83, %82
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %84, <vscale x 4 x i1> %49, ptr nonnull %c, <vscale x 4 x i32> %50)
  %85 = xor <vscale x 4 x i1> %49, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %86 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %85, ptr nonnull %a, <vscale x 4 x i32> %50)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %86, <vscale x 4 x i1> %85, ptr nonnull %c, <vscale x 4 x i32> %50)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %87 = xor <vscale x 4 x i1> %64, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %88 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %87, ptr nonnull %a, <vscale x 4 x i32> %58)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %88, <vscale x 4 x i1> %87, ptr nonnull %c, <vscale x 4 x i32> %58)
  %89 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %64, ptr nonnull %b, <vscale x 4 x i32> %58)
  %90 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %64, ptr nonnull %c, <vscale x 4 x i32> %58)
  %91 = add <vscale x 4 x i32> %90, %89
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %91, <vscale x 4 x i1> %64, ptr nonnull %c, <vscale x 4 x i32> %58)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %92 = icmp eq <vscale x 4 x i32> %76, %50
  %93 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %92, <vscale x 4 x i1> %92)
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %2, %94
  br i1 %95, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %96 = zext i32 %81 to i64
  br label %for.body.preheader25

for.body.preheader25:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %96, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !110

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !136
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !137

if.then16:                                        ; preds = %for.cond.cleanup
  %97 = load ptr, ptr @stderr, align 8, !dbg !141, !tbaa !113
  %call17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str, i32 noundef %call14, ptr noundef nonnull @.str.1, i32 noundef 91) #14, !dbg !141
  tail call void @exit(i32 noundef %call14) #15, !dbg !141
  unreachable, !dbg !141

if.end18:                                         ; preds = %for.cond.cleanup
  %call19 = tail call double @getTimeMiliSeconds(), !dbg !143
  %sub = fsub double %call19, %call, !dbg !144
  store double %sub, ptr @ExecutionTime, align 8, !dbg !145, !tbaa !146
  ret void, !dbg !148
}

declare !dbg !149 i32 @PAPI_start(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

declare !dbg !153 i32 @PAPI_stop(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_int_array(i32 noundef %n) local_unnamed_addr #0 !dbg !157 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !161, metadata !DIExpression()), !dbg !163
  %conv = sext i32 %n to i64, !dbg !164
  %mul = shl nsw i64 %conv, 2, !dbg !165
  %call = tail call noalias ptr @malloc(i64 noundef %mul) #16, !dbg !166
  call void @llvm.dbg.value(metadata ptr %call, metadata !162, metadata !DIExpression()), !dbg !163
  %cmp = icmp eq ptr %call, null, !dbg !167
  br i1 %cmp, label %if.then, label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.12), !dbg !170
  tail call void @exit(i32 noundef 1) #15, !dbg !172
  unreachable, !dbg !172

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !173
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn allocsize(0)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable
define dso_local noalias ptr @checked_malloc_bool_array(i32 noundef %n) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i32 %n, metadata !178, metadata !DIExpression()), !dbg !180
  %conv = sext i32 %n to i64, !dbg !181
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #16, !dbg !182
  call void @llvm.dbg.value(metadata ptr %call, metadata !179, metadata !DIExpression()), !dbg !180
  %cmp = icmp eq ptr %call, null, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !185

if.then:                                          ; preds = %entry
  %puts = tail call i32 @puts(ptr nonnull @str.12), !dbg !186
  tail call void @exit(i32 noundef 1) #15, !dbg !188
  unreachable, !dbg !188

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !189
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !190 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !195, metadata !DIExpression()), !dbg !209
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !210
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !212
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !213

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !214, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !216
  call void @exit(i32 noundef 1) #15, !dbg !217
  unreachable, !dbg !217

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !218
  call void @llvm.dbg.value(metadata i32 %call2, metadata !194, metadata !DIExpression()), !dbg !220
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !221
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !222

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !223, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 306) #14, !dbg !223
  tail call void @exit(i32 noundef %call2) #15, !dbg !223
  unreachable, !dbg !223

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !225, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !227
  call void @llvm.dbg.value(metadata i32 %call7, metadata !194, metadata !DIExpression()), !dbg !220
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !228
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !229

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !230, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 309) #14, !dbg !230
  tail call void @exit(i32 noundef %call7) #15, !dbg !230
  unreachable, !dbg !230

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 144, metadata !200, metadata !DIExpression()), !dbg !220
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 144), !dbg !232
  store ptr %call12, ptr @a, align 8, !dbg !233, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 144), !dbg !234
  store ptr %call13, ptr @b, align 8, !dbg !235, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 144), !dbg !236
  store ptr %call14, ptr @c, align 8, !dbg !237, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 144), !dbg !238
  store ptr %call15, ptr @cond, align 8, !dbg !239, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !240, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !241
  %conv = trunc i64 %call16 to i32, !dbg !241
  tail call void @srand(i32 noundef %conv) #13, !dbg !242
  call void @llvm.dbg.value(metadata i32 1, metadata !201, metadata !DIExpression()), !dbg !243
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 1, metadata !201, metadata !DIExpression()), !dbg !243
  br label %for.body, !dbg !244

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 144), !dbg !245
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32 0, metadata !204, metadata !DIExpression()), !dbg !246
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !204, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !220
  br label %for.body33, !dbg !247

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !201, metadata !DIExpression()), !dbg !243
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !248
  store i32 -1, ptr %arrayidx19, align 4, !dbg !251, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !252
  store i32 1, ptr %arrayidx21, align 4, !dbg !253, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !254
  store i32 0, ptr %arrayidx23, align 4, !dbg !255, !tbaa !102
  %rem110 = and i64 %indvars.iv, 7, !dbg !256
  %cmp24 = icmp eq i64 %rem110, 0, !dbg !256
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !257
  %frombool = zext i1 %cmp24 to i8, !dbg !258
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !258, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !259
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !201, metadata !DIExpression()), !dbg !243
  %exitcond.not = icmp eq i64 %indvars.iv.next, 144, !dbg !260
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !244, !llvm.loop !261

for.cond40.preheader:                             ; preds = %for.body33
  call void @llvm.dbg.value(metadata i32 0, metadata !206, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.value(metadata i64 0, metadata !206, metadata !DIExpression()), !dbg !263
  %9 = load i32, ptr %8, align 4, !dbg !264, !tbaa !102
  %call47111 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %9), !dbg !267
  call void @llvm.dbg.value(metadata i64 1, metadata !206, metadata !DIExpression()), !dbg !263
  br label %for.body44.for.body44_crit_edge, !dbg !268

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv102 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next103, %for.body33 ]
  %sum.098 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv102, metadata !204, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata i32 %sum.098, metadata !203, metadata !DIExpression()), !dbg !220
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv102, !dbg !269
  %10 = load i32, ptr %arrayidx35, align 4, !dbg !269, !tbaa !102
  %add = add nsw i32 %10, %sum.098, !dbg !272
  call void @llvm.dbg.value(metadata i32 %add, metadata !203, metadata !DIExpression()), !dbg !220
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1, !dbg !273
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next103, metadata !204, metadata !DIExpression()), !dbg !246
  %exitcond105.not = icmp eq i64 %indvars.iv.next103, 144, !dbg !274
  br i1 %exitcond105.not, label %for.cond40.preheader, label %for.body33, !dbg !247, !llvm.loop !275

for.cond.cleanup43:                               ; preds = %for.body44.for.body44_crit_edge
  %putchar = tail call i32 @putchar(i32 10), !dbg !277
  %call52 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i32 noundef %add), !dbg !278
  %putchar96 = tail call i32 @putchar(i32 10), !dbg !279
  %11 = load ptr, ptr @a, align 8, !dbg !280, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !281
  %12 = load ptr, ptr @b, align 8, !dbg !282, !tbaa !113
  tail call void @free(ptr noundef %12) #13, !dbg !283
  %13 = load ptr, ptr @c, align 8, !dbg !284, !tbaa !113
  tail call void @free(ptr noundef %13) #13, !dbg !285
  %14 = load ptr, ptr @cond, align 8, !dbg !286, !tbaa !113
  tail call void @free(ptr noundef %14) #13, !dbg !287
  %15 = load i64, ptr @CounterValues, align 8, !dbg !288, !tbaa !289
  %call54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %15), !dbg !291
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !292, !tbaa !289
  %call55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %16), !dbg !293
  %17 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !294, !tbaa !289
  %call56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %17), !dbg !295
  %18 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !296, !tbaa !289
  %call57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, i64 noundef %18), !dbg !297
  %19 = load double, ptr @ExecutionTime, align 8, !dbg !298, !tbaa !146
  %call58 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.11, double noundef %19), !dbg !299
  %20 = load i32, ptr @EventSet, align 4, !dbg !300, !tbaa !102
  %call59 = tail call i32 @PAPI_remove_events(i32 noundef %20, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !302
  call void @llvm.dbg.value(metadata i32 %call59, metadata !194, metadata !DIExpression()), !dbg !220
  %cmp60.not = icmp eq i32 %call59, 0, !dbg !303
  br i1 %cmp60.not, label %if.end64, label %if.then62, !dbg !304

for.body44.for.body44_crit_edge:                  ; preds = %for.body44.for.body44_crit_edge, %for.cond40.preheader
  %indvars.iv.next107112 = phi i64 [ 1, %for.cond40.preheader ], [ %indvars.iv.next107, %for.body44.for.body44_crit_edge ]
  %.pre = load ptr, ptr @c, align 8, !dbg !264, !tbaa !113
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next107112, metadata !206, metadata !DIExpression()), !dbg !263
  %arrayidx46 = getelementptr inbounds i32, ptr %.pre, i64 %indvars.iv.next107112, !dbg !264
  %21 = load i32, ptr %arrayidx46, align 4, !dbg !264, !tbaa !102
  %call47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %21), !dbg !267
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv.next107112, 1, !dbg !305
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next107, metadata !206, metadata !DIExpression()), !dbg !263
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, 144, !dbg !306
  br i1 %exitcond109.not, label %for.cond.cleanup43, label %for.body44.for.body44_crit_edge, !dbg !268, !llvm.loop !307

if.then62:                                        ; preds = %for.cond.cleanup43
  %22 = load ptr, ptr @stderr, align 8, !dbg !309, !tbaa !113
  %call63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef %call59, ptr noundef nonnull @.str.1, i32 noundef 359) #14, !dbg !309
  tail call void @exit(i32 noundef %call59) #15, !dbg !309
  unreachable, !dbg !309

if.end64:                                         ; preds = %for.cond.cleanup43
  %call65 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !311
  call void @llvm.dbg.value(metadata i32 %call65, metadata !194, metadata !DIExpression()), !dbg !220
  %cmp66.not = icmp eq i32 %call65, 0, !dbg !313
  br i1 %cmp66.not, label %if.end70, label %if.then68, !dbg !314

if.then68:                                        ; preds = %if.end64
  %23 = load ptr, ptr @stderr, align 8, !dbg !315, !tbaa !113
  %call69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef %call65, ptr noundef nonnull @.str.1, i32 noundef 362) #14, !dbg !315
  tail call void @exit(i32 noundef %call65) #15, !dbg !315
  unreachable, !dbg !315

if.end70:                                         ; preds = %if.end64
  tail call void @PAPI_shutdown() #13, !dbg !317
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !318
  ret i32 0, !dbg !319
}

declare !dbg !320 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !321 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !324 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !327 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !332 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !338 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !339 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !340 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "e37182d9a6bfd5dc625d92a5a866f9fd")
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
!127 = !DILocation(line: 77, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 22)
!129 = !DILocation(line: 77, column: 13, scope: !128)
!130 = !DILocation(line: 77, column: 18, scope: !128)
!131 = !DILocation(line: 78, column: 9, scope: !128)
!132 = !DILocation(line: 85, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !3, line: 78, column: 16)
!134 = !DILocation(line: 85, column: 13, scope: !133)
!135 = !DILocation(line: 85, column: 18, scope: !133)
!136 = !DILocation(line: 69, column: 28, scope: !109)
!137 = distinct !{!137, !110, !138, !139, !140}
!138 = !DILocation(line: 87, column: 5, scope: !97)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = !DILocation(line: 91, column: 67, scope: !142)
!142 = distinct !DILexicalBlock(scope: !116, file: !3, line: 91, column: 67)
!143 = !DILocation(line: 93, column: 21, scope: !83)
!144 = !DILocation(line: 93, column: 42, scope: !83)
!145 = !DILocation(line: 93, column: 19, scope: !83)
!146 = !{!147, !147, i64 0}
!147 = !{!"double", !64, i64 0}
!148 = !DILocation(line: 94, column: 1, scope: !83)
!149 = !DISubprogram(name: "PAPI_start", scope: !150, file: !150, line: 1204, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!150 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!151 = !DISubroutineType(types: !152)
!152 = !{!6, !6}
!153 = !DISubprogram(name: "PAPI_stop", scope: !150, file: !150, line: 1206, type: !154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!154 = !DISubroutineType(types: !155)
!155 = !{!6, !6, !156}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!157 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 278, type: !158, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{!5, !6}
!160 = !{!161, !162}
!161 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !3, line: 278, type: !6)
!162 = !DILocalVariable(name: "ptr", scope: !157, file: !3, line: 279, type: !5)
!163 = !DILocation(line: 0, scope: !157)
!164 = !DILocation(line: 279, column: 45, scope: !157)
!165 = !DILocation(line: 279, column: 43, scope: !157)
!166 = !DILocation(line: 279, column: 24, scope: !157)
!167 = !DILocation(line: 280, column: 13, scope: !168)
!168 = distinct !DILexicalBlock(scope: !157, file: !3, line: 280, column: 9)
!169 = !DILocation(line: 280, column: 9, scope: !157)
!170 = !DILocation(line: 281, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !168, file: !3, line: 280, column: 22)
!172 = !DILocation(line: 282, column: 9, scope: !171)
!173 = !DILocation(line: 284, column: 5, scope: !157)
!174 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 287, type: !175, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!8, !6}
!177 = !{!178, !179}
!178 = !DILocalVariable(name: "n", arg: 1, scope: !174, file: !3, line: 287, type: !6)
!179 = !DILocalVariable(name: "ptr", scope: !174, file: !3, line: 288, type: !8)
!180 = !DILocation(line: 0, scope: !174)
!181 = !DILocation(line: 288, column: 48, scope: !174)
!182 = !DILocation(line: 288, column: 26, scope: !174)
!183 = !DILocation(line: 289, column: 13, scope: !184)
!184 = distinct !DILexicalBlock(scope: !174, file: !3, line: 289, column: 9)
!185 = !DILocation(line: 289, column: 9, scope: !174)
!186 = !DILocation(line: 290, column: 9, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !3, line: 289, column: 22)
!188 = !DILocation(line: 291, column: 9, scope: !187)
!189 = !DILocation(line: 293, column: 5, scope: !174)
!190 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 296, type: !191, scopeLine: 296, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!6}
!193 = !{!194, !195, !200, !201, !203, !204, !206}
!194 = !DILocalVariable(name: "status", scope: !190, file: !3, line: 297, type: !6)
!195 = !DILocalVariable(name: "errstring", scope: !190, file: !3, line: 298, type: !196)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !198)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !{!199}
!199 = !DISubrange(count: 128)
!200 = !DILocalVariable(name: "n", scope: !190, file: !3, line: 311, type: !6)
!201 = !DILocalVariable(name: "i", scope: !202, file: !3, line: 322, type: !6)
!202 = distinct !DILexicalBlock(scope: !190, file: !3, line: 322, column: 5)
!203 = !DILocalVariable(name: "sum", scope: !190, file: !3, line: 334, type: !6)
!204 = !DILocalVariable(name: "i", scope: !205, file: !3, line: 336, type: !6)
!205 = distinct !DILexicalBlock(scope: !190, file: !3, line: 336, column: 5)
!206 = !DILocalVariable(name: "i", scope: !207, file: !3, line: 340, type: !6)
!207 = distinct !DILexicalBlock(scope: !190, file: !3, line: 340, column: 5)
!208 = !DILocation(line: 298, column: 5, scope: !190)
!209 = !DILocation(line: 298, column: 10, scope: !190)
!210 = !DILocation(line: 300, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !190, file: !3, line: 300, column: 9)
!212 = !DILocation(line: 300, column: 45, scope: !211)
!213 = !DILocation(line: 300, column: 9, scope: !190)
!214 = !DILocation(line: 301, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !211, file: !3, line: 300, column: 66)
!216 = !DILocation(line: 301, column: 9, scope: !215)
!217 = !DILocation(line: 302, column: 9, scope: !215)
!218 = !DILocation(line: 306, column: 19, scope: !219)
!219 = distinct !DILexicalBlock(scope: !190, file: !3, line: 306, column: 9)
!220 = !DILocation(line: 0, scope: !190)
!221 = !DILocation(line: 306, column: 52, scope: !219)
!222 = !DILocation(line: 306, column: 9, scope: !190)
!223 = !DILocation(line: 306, column: 64, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !3, line: 306, column: 64)
!225 = !DILocation(line: 309, column: 35, scope: !226)
!226 = distinct !DILexicalBlock(scope: !190, file: !3, line: 309, column: 9)
!227 = !DILocation(line: 309, column: 19, scope: !226)
!228 = !DILocation(line: 309, column: 69, scope: !226)
!229 = !DILocation(line: 309, column: 9, scope: !190)
!230 = !DILocation(line: 309, column: 81, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 309, column: 81)
!232 = !DILocation(line: 313, column: 9, scope: !190)
!233 = !DILocation(line: 313, column: 7, scope: !190)
!234 = !DILocation(line: 314, column: 9, scope: !190)
!235 = !DILocation(line: 314, column: 7, scope: !190)
!236 = !DILocation(line: 315, column: 9, scope: !190)
!237 = !DILocation(line: 315, column: 7, scope: !190)
!238 = !DILocation(line: 316, column: 12, scope: !190)
!239 = !DILocation(line: 316, column: 10, scope: !190)
!240 = !DILocation(line: 318, column: 13, scope: !190)
!241 = !DILocation(line: 320, column: 11, scope: !190)
!242 = !DILocation(line: 320, column: 5, scope: !190)
!243 = !DILocation(line: 0, scope: !202)
!244 = !DILocation(line: 322, column: 5, scope: !202)
!245 = !DILocation(line: 331, column: 5, scope: !190)
!246 = !DILocation(line: 0, scope: !205)
!247 = !DILocation(line: 336, column: 5, scope: !205)
!248 = !DILocation(line: 323, column: 9, scope: !249)
!249 = distinct !DILexicalBlock(scope: !250, file: !3, line: 322, column: 33)
!250 = distinct !DILexicalBlock(scope: !202, file: !3, line: 322, column: 5)
!251 = !DILocation(line: 323, column: 14, scope: !249)
!252 = !DILocation(line: 324, column: 9, scope: !249)
!253 = !DILocation(line: 324, column: 14, scope: !249)
!254 = !DILocation(line: 325, column: 9, scope: !249)
!255 = !DILocation(line: 325, column: 14, scope: !249)
!256 = !DILocation(line: 326, column: 25, scope: !249)
!257 = !DILocation(line: 326, column: 9, scope: !249)
!258 = !DILocation(line: 326, column: 17, scope: !249)
!259 = !DILocation(line: 322, column: 28, scope: !250)
!260 = !DILocation(line: 322, column: 23, scope: !250)
!261 = distinct !{!261, !244, !262, !139, !140}
!262 = !DILocation(line: 327, column: 5, scope: !202)
!263 = !DILocation(line: 0, scope: !207)
!264 = !DILocation(line: 341, column: 23, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 340, column: 33)
!266 = distinct !DILexicalBlock(scope: !207, file: !3, line: 340, column: 5)
!267 = !DILocation(line: 341, column: 9, scope: !265)
!268 = !DILocation(line: 340, column: 5, scope: !207)
!269 = !DILocation(line: 337, column: 16, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 336, column: 33)
!271 = distinct !DILexicalBlock(scope: !205, file: !3, line: 336, column: 5)
!272 = !DILocation(line: 337, column: 13, scope: !270)
!273 = !DILocation(line: 336, column: 28, scope: !271)
!274 = !DILocation(line: 336, column: 23, scope: !271)
!275 = distinct !{!275, !247, !276, !139, !140}
!276 = !DILocation(line: 338, column: 5, scope: !205)
!277 = !DILocation(line: 343, column: 5, scope: !190)
!278 = !DILocation(line: 345, column: 5, scope: !190)
!279 = !DILocation(line: 346, column: 5, scope: !190)
!280 = !DILocation(line: 348, column: 10, scope: !190)
!281 = !DILocation(line: 348, column: 5, scope: !190)
!282 = !DILocation(line: 349, column: 10, scope: !190)
!283 = !DILocation(line: 349, column: 5, scope: !190)
!284 = !DILocation(line: 350, column: 10, scope: !190)
!285 = !DILocation(line: 350, column: 5, scope: !190)
!286 = !DILocation(line: 351, column: 10, scope: !190)
!287 = !DILocation(line: 351, column: 5, scope: !190)
!288 = !DILocation(line: 353, column: 53, scope: !190)
!289 = !{!290, !290, i64 0}
!290 = !{!"long long", !64, i64 0}
!291 = !DILocation(line: 353, column: 5, scope: !190)
!292 = !DILocation(line: 354, column: 36, scope: !190)
!293 = !DILocation(line: 354, column: 5, scope: !190)
!294 = !DILocation(line: 355, column: 50, scope: !190)
!295 = !DILocation(line: 355, column: 5, scope: !190)
!296 = !DILocation(line: 356, column: 49, scope: !190)
!297 = !DILocation(line: 356, column: 5, scope: !190)
!298 = !DILocation(line: 357, column: 40, scope: !190)
!299 = !DILocation(line: 357, column: 5, scope: !190)
!300 = !DILocation(line: 359, column: 38, scope: !301)
!301 = distinct !DILexicalBlock(scope: !190, file: !3, line: 359, column: 9)
!302 = !DILocation(line: 359, column: 19, scope: !301)
!303 = !DILocation(line: 359, column: 72, scope: !301)
!304 = !DILocation(line: 359, column: 9, scope: !190)
!305 = !DILocation(line: 340, column: 28, scope: !266)
!306 = !DILocation(line: 340, column: 23, scope: !266)
!307 = distinct !{!307, !268, !308, !139, !140}
!308 = !DILocation(line: 342, column: 5, scope: !207)
!309 = !DILocation(line: 359, column: 84, scope: !310)
!310 = distinct !DILexicalBlock(scope: !301, file: !3, line: 359, column: 84)
!311 = !DILocation(line: 362, column: 19, scope: !312)
!312 = distinct !DILexicalBlock(scope: !190, file: !3, line: 362, column: 9)
!313 = !DILocation(line: 362, column: 53, scope: !312)
!314 = !DILocation(line: 362, column: 9, scope: !190)
!315 = !DILocation(line: 362, column: 65, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 362, column: 65)
!317 = !DILocation(line: 365, column: 5, scope: !190)
!318 = !DILocation(line: 368, column: 1, scope: !190)
!319 = !DILocation(line: 367, column: 5, scope: !190)
!320 = !DISubprogram(name: "PAPI_library_init", scope: !150, file: !150, line: 1172, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!321 = !DISubprogram(name: "PAPI_create_eventset", scope: !150, file: !150, line: 1147, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!322 = !DISubroutineType(types: !323)
!323 = !{!6, !5}
!324 = !DISubprogram(name: "PAPI_add_events", scope: !150, file: !150, line: 1143, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!325 = !DISubroutineType(types: !326)
!326 = !{!6, !6, !5, !6}
!327 = !DISubprogram(name: "srand", scope: !328, file: !328, line: 455, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!328 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!332 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!333 = !DISubroutineType(types: !334)
!334 = !{!335, !337}
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !336, line: 7, baseType: !52)
!336 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!338 = !DISubprogram(name: "PAPI_remove_events", scope: !150, file: !150, line: 1192, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!339 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !150, file: !150, line: 1149, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!340 = !DISubprogram(name: "PAPI_shutdown", scope: !150, file: !150, line: 1202, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!341 = !DISubroutineType(types: !342)
!342 = !{null}