; ModuleID = 'alc_itr.ll'
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
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c" ------------------------------------------------ \0A\00", align 1


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
define dso_local void @simple_if_else(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef writeonly %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
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
  %cmp327 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp327, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

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
  %call12 = tail call i32 @PAPI_stop(i32 noundef %5, ptr noundef nonnull @CounterValues) #13, !dbg !117
  call void @llvm.dbg.value(metadata i32 %call12, metadata !94, metadata !DIExpression()), !dbg !98
  %cmp13.not = icmp eq i32 %call12, 0, !dbg !118
  br i1 %cmp13.not, label %if.end16, label %if.then14, !dbg !119

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
  %arrayidx8 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !129
  store i32 %7, ptr %arrayidx8, align 4, !dbg !130, !tbaa !102
  br label %for.inc, !dbg !131

if.else:                                          ; preds = %for.body
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !132
  %8 = load i32, ptr %arrayidx10, align 4, !dbg !134, !tbaa !102
  %sub = add nsw i32 %8, -4, !dbg !134
  store i32 %sub, ptr %arrayidx10, align 4, !dbg !134, !tbaa !102
  br label %for.inc

pre.alc:                                          ; preds = %for.body.preheader
  %9 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %10 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %11 = urem i32 %n, %2
  %12 = add i32 %3, %11
  %total.iterations.to.be.vectorized = sub i32 %n, %12
  %13 = load <vscale x 4 x i8>, ptr %cond, align 4
  %14 = icmp eq <vscale x 4 x i8> %13, zeroinitializer
  %15 = sext i32 %2 to i64
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %51, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %10, %pre.alc ], [ %49, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %14, %pre.alc ], [ %50, %new.latch ]
  %16 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %17 = sext i32 %vector.loop.index to i64, !dbg !120
  %18 = getelementptr inbounds i8, ptr %cond, i64 %17, !dbg !120
  %19 = load <vscale x 4 x i8>, ptr %18, align 4
  %20 = icmp eq <vscale x 4 x i8> %19, zeroinitializer
  %21 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %22 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %20, <vscale x 4 x i1> %20)
  %23 = trunc i64 %21 to i32
  %24 = trunc i64 %22 to i32
  %25 = add i32 %24, %23
  %26 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %27 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %20, <vscale x 4 x i32> %16)
  %28 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %29 = xor <vscale x 4 x i1> %20, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %uniform.vector)
  %31 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %16)
  %32 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %23)
  %33 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %32, <vscale x 4 x i32> %26, <vscale x 4 x i32> %27)
  %34 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %25)
  %35 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %21)
  %36 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %35, <vscale x 4 x i32> %27, <vscale x 4 x i32> %31)
  %37 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %28, <vscale x 4 x i1> %28)
  %38 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %37)
  %39 = select <vscale x 4 x i1> %38, <vscale x 4 x i32> %30, <vscale x 4 x i32> %36
  %40 = xor <vscale x 4 x i1> %38, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %41 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %42 = sub i64 %15, %41
  %43 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %42)
  %44 = and <vscale x 4 x i1> %43, %40
  %45 = icmp ugt i32 %25, %2



  %l30 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 0
  %l31 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 1
  %l32 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 2
  %l33 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 3
  %l34 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 4
  %l35 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 5
  %l36 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 6
  %l37 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 7
  %l38 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 8
  %l39 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 9
  %l310 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 10
  %l311 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 11
  %l312 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 12
  %l313 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 13
  %l314 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 14
  %l315 = extractelement <vscale x 4 x i1> %uniform.vector.predicates, i32 15

  %p4330  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l30 )
  %p4331  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l31 )
  %p4332  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l32 )
  %p4333  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l33 )
  %p4334  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l34 )
  %p4335  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l35 )
  %p4336  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l36 )
  %p4337  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l37 )
  %p4338  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l38 )
  %p4339  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l39 )
  %p43310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l310)
  %p43311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l311)
  %p43312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l312)
  %p43313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l313)
  %p43314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l314)
  %p43315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %l315)
  %putchar43233511 = tail call i32 @putchar(i32 10)


  %n30 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 0
  %n31 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 1
  %n32 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 2
  %n33 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 3
  %n34 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 4
  %n35 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 5
  %n36 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 6
  %n37 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 7
  %n38 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 8
  %n39 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 9
  %n310 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 10
  %n311 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 11
  %n312 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 12
  %n313 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 13
  %n314 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 14
  %n315 = extractelement <vscale x 4 x i32>  %uniform.vector, i32 15

  %v30  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n30 )
  %v31  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n31 )
  %v32  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n32 )
  %v33  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n33 )
  %v34  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n34 )
  %v35  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n35 )
  %v36  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n36 )
  %v37  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n37 )
  %v38  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n38 )
  %v39  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n39 )
  %v310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n310)
  %v311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n311)
  %v312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n312)
  %v313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n313)
  %v314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n314)
  %v315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %n315)
  %putc56233511 = tail call i32 @putchar(i32 10)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  %s30 = extractelement <vscale x 4 x i1> %20, i32 0
  %s31 = extractelement <vscale x 4 x i1> %20, i32 1
  %s32 = extractelement <vscale x 4 x i1> %20, i32 2
  %s33 = extractelement <vscale x 4 x i1> %20, i32 3
  %s34 = extractelement <vscale x 4 x i1> %20, i32 4
  %s35 = extractelement <vscale x 4 x i1> %20, i32 5
  %s36 = extractelement <vscale x 4 x i1> %20, i32 6
  %s37 = extractelement <vscale x 4 x i1> %20, i32 7
  %s38 = extractelement <vscale x 4 x i1> %20, i32 8
  %s39 = extractelement <vscale x 4 x i1> %20, i32 9
  %s310 = extractelement <vscale x 4 x i1> %20, i32 10
  %s311 = extractelement <vscale x 4 x i1> %20, i32 11
  %s312 = extractelement <vscale x 4 x i1> %20, i32 12
  %s313 = extractelement <vscale x 4 x i1> %20, i32 13
  %s314 = extractelement <vscale x 4 x i1> %20, i32 14
  %s315 = extractelement <vscale x 4 x i1> %20, i32 15

  %p114330  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s30 )
  %p114331  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s31 )
  %p114332  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s32 )
  %p114333  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s33 )
  %p114334  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s34 )
  %p114335  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s35 )
  %p114336  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s36 )
  %p114337  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s37 )
  %p114338  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s38 )
  %p114339  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s39 )
  %p1143310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s310)
  %p1143311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s311)
  %p1143312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s312)
  %p1143313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s313)
  %p1143314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s314)
  %p1143315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %s315)
  %putchar1143233511 = tail call i32 @putchar(i32 10)


  %w30 = extractelement <vscale x 4 x i32>  %16, i32 0
  %w31 = extractelement <vscale x 4 x i32>  %16, i32 1
  %w32 = extractelement <vscale x 4 x i32>  %16, i32 2
  %w33 = extractelement <vscale x 4 x i32>  %16, i32 3
  %w34 = extractelement <vscale x 4 x i32>  %16, i32 4
  %w35 = extractelement <vscale x 4 x i32>  %16, i32 5
  %w36 = extractelement <vscale x 4 x i32>  %16, i32 6
  %w37 = extractelement <vscale x 4 x i32>  %16, i32 7
  %w38 = extractelement <vscale x 4 x i32>  %16, i32 8
  %w39 = extractelement <vscale x 4 x i32>  %16, i32 9
  %w310 = extractelement <vscale x 4 x i32>  %16, i32 10
  %w311 = extractelement <vscale x 4 x i32>  %16, i32 11
  %w312 = extractelement <vscale x 4 x i32>  %16, i32 12
  %w313 = extractelement <vscale x 4 x i32>  %16, i32 13
  %w314 = extractelement <vscale x 4 x i32>  %16, i32 14
  %w315 = extractelement <vscale x 4 x i32>  %16, i32 15

  %q30  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w30 )
  %q31  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w31 )
  %q32  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w32 )
  %q33  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w33 )
  %q34  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w34 )
  %q35  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w35 )
  %q36  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w36 )
  %q37  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w37 )
  %q38  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w38 )
  %q39  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w39 )
  %q310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w310)
  %q311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w311)
  %q312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w312)
  %q313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w313)
  %q314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w314)
  %q315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %w315)
  %putc562sd33511 = tail call i32 @putchar(i32 10)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  %m30 = extractelement <vscale x 4 x i1> %34, i32 0
  %m31 = extractelement <vscale x 4 x i1> %34, i32 1
  %m32 = extractelement <vscale x 4 x i1> %34, i32 2
  %m33 = extractelement <vscale x 4 x i1> %34, i32 3
  %m34 = extractelement <vscale x 4 x i1> %34, i32 4
  %m35 = extractelement <vscale x 4 x i1> %34, i32 5
  %m36 = extractelement <vscale x 4 x i1> %34, i32 6
  %m37 = extractelement <vscale x 4 x i1> %34, i32 7
  %m38 = extractelement <vscale x 4 x i1> %34, i32 8
  %m39 = extractelement <vscale x 4 x i1> %34, i32 9
  %m310 = extractelement <vscale x 4 x i1> %34, i32 10
  %m311 = extractelement <vscale x 4 x i1> %34, i32 11
  %m312 = extractelement <vscale x 4 x i1> %34, i32 12
  %m313 = extractelement <vscale x 4 x i1> %34, i32 13
  %m314 = extractelement <vscale x 4 x i1> %34, i32 14
  %m315 = extractelement <vscale x 4 x i1> %34, i32 15

  %p330  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m30 )
  %p331  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m31 )
  %p332  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m32 )
  %p333  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m33 )
  %p334  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m34 )
  %p335  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m35 )
  %p336  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m36 )
  %p337  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m37 )
  %p338  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m38 )
  %p339  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m39 )
  %p3310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m310)
  %p3311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m311)
  %p3312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m312)
  %p3313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m313)
  %p3314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m314)
  %p3315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m315)
  %putchar3233511 = tail call i32 @putchar(i32 10)


  %e30 = extractelement <vscale x 4 x i32> %33, i32 0
  %e31 = extractelement <vscale x 4 x i32> %33, i32 1
  %e32 = extractelement <vscale x 4 x i32> %33, i32 2
  %e33 = extractelement <vscale x 4 x i32> %33, i32 3
  %e34 = extractelement <vscale x 4 x i32> %33, i32 4
  %e35 = extractelement <vscale x 4 x i32> %33, i32 5
  %e36 = extractelement <vscale x 4 x i32> %33, i32 6
  %e37 = extractelement <vscale x 4 x i32> %33, i32 7
  %e38 = extractelement <vscale x 4 x i32> %33, i32 8
  %e39 = extractelement <vscale x 4 x i32> %33, i32 9
  %e310 = extractelement <vscale x 4 x i32> %33, i32 10
  %e311 = extractelement <vscale x 4 x i32> %33, i32 11
  %e312 = extractelement <vscale x 4 x i32> %33, i32 12
  %e313 = extractelement <vscale x 4 x i32> %33, i32 13
  %e314 = extractelement <vscale x 4 x i32> %33, i32 14
  %e315 = extractelement <vscale x 4 x i32> %33, i32 15

  %k30  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e30 )
  %k31  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e31 )
  %k32  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e32 )
  %k33  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e33 )
  %k34  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e34 )
  %k35  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e35 )
  %k36  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e36 )
  %k37  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e37 )
  %k38  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e38 )
  %k39  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e39 )
  %k310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e310)
  %k311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e311)
  %k312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e312)
  %k313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e313)
  %k314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e314)
  %k315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e315)
  %putc233511 = tail call i32 @putchar(i32 10)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    %m0 = extractelement <vscale x 4 x i1> %44, i32 0
    %m1 = extractelement <vscale x 4 x i1> %44, i32 1
    %m2 = extractelement <vscale x 4 x i1> %44, i32 2
    %m3 = extractelement <vscale x 4 x i1> %44, i32 3
    %m4 = extractelement <vscale x 4 x i1> %44, i32 4
    %m5 = extractelement <vscale x 4 x i1> %44, i32 5
    %m6 = extractelement <vscale x 4 x i1> %44, i32 6
    %m7 = extractelement <vscale x 4 x i1> %44, i32 7
    %m8 = extractelement <vscale x 4 x i1> %44, i32 8
    %m9 = extractelement <vscale x 4 x i1> %44, i32 9
    %m10 = extractelement <vscale x 4 x i1> %44, i32 10
    %m11 = extractelement <vscale x 4 x i1> %44, i32 11
    %m12 = extractelement <vscale x 4 x i1> %44, i32 12
    %m13 = extractelement <vscale x 4 x i1> %44, i32 13
    %m14 = extractelement <vscale x 4 x i1> %44, i32 14
    %m15 = extractelement <vscale x 4 x i1> %44, i32 15

    %p30  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m0 )
    %p31  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m1 )
    %p32  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m2 )
    %p33  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m3 )
    %p34  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m4 )
    %p35  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m5 )
    %p36  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m6 )
    %p37  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m7 )
    %p38  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m8 )
    %p39  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m9 )
    %p310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m10)
    %p311 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m11)
    %p312 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m12)
    %p313 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m13)
    %p314 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m14)
    %p315 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i1 %m15)
    %putchar233511 = tail call i32 @putchar(i32 10)


    %e0 = extractelement <vscale x 4 x i32> %39, i32 0
    %e1 = extractelement <vscale x 4 x i32> %39, i32 1
    %e2 = extractelement <vscale x 4 x i32> %39, i32 2
    %e3 = extractelement <vscale x 4 x i32> %39, i32 3
    %e4 = extractelement <vscale x 4 x i32> %39, i32 4
    %e5 = extractelement <vscale x 4 x i32> %39, i32 5
    %e6 = extractelement <vscale x 4 x i32> %39, i32 6
    %e7 = extractelement <vscale x 4 x i32> %39, i32 7
    %e8 = extractelement <vscale x 4 x i32> %39, i32 8
    %e9 = extractelement <vscale x 4 x i32> %39, i32 9
    %e10 = extractelement <vscale x 4 x i32> %39, i32 10
    %e11 = extractelement <vscale x 4 x i32> %39, i32 11
    %e12 = extractelement <vscale x 4 x i32> %39, i32 12
    %e13 = extractelement <vscale x 4 x i32> %39, i32 13
    %e14 = extractelement <vscale x 4 x i32> %39, i32 14
    %e15 = extractelement <vscale x 4 x i32> %39, i32 15

    %p0  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e0 )
    %p1  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e1 )
    %p2  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e2 )
    %p3  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e3 )
    %p4  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e4 )
    %p5  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e5 )
    %p6  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e6 )
    %p7  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e7 )
    %p8  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e8 )
    %p9  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e9 )
    %p10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e10)
    %p11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e11)
    %p12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e12)
    %p13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e13)
    %p14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e14)
    %p15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %e15)
    %ewf = tail call i32 @putchar(i32 10)
    %tmp  = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.12, i1 -3 )
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  br i1 %45, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %alc.header
  %46 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %9, ptr %c, <vscale x 4 x i32> %33)
  %47 = add <vscale x 4 x i32> %46, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %47, <vscale x 4 x i1> %9, ptr %c, <vscale x 4 x i32> %33)
  br label %new.latch

uniform.else:                                     ; preds = %alc.header
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %9, ptr %a, <vscale x 4 x i32> %39)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %48, <vscale x 4 x i1> %9, ptr %b, <vscale x 4 x i32> %39)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %49 = phi <vscale x 4 x i32> [ %39, %uniform.then ], [ %33, %uniform.else ]
  %50 = phi <vscale x 4 x i1> [ %44, %uniform.then ], [ %34, %uniform.else ]
  %51 = add i32 %vector.loop.index, %2
  %.not2 = icmp ult i32 %51, %total.iterations.to.be.vectorized
  br i1 %.not2, label %alc.header, label %joinBlock

linearized.then:                                  ; preds = %joinBlock
  %52 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %34, ptr %c, <vscale x 4 x i32> %33)
  %53 = add <vscale x 4 x i32> %52, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %53, <vscale x 4 x i1> %34, ptr %c, <vscale x 4 x i32> %33)
  %54 = xor <vscale x 4 x i1> %34, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %54, ptr %a, <vscale x 4 x i32> %33)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %55, <vscale x 4 x i1> %54, ptr %b, <vscale x 4 x i32> %33)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %p1534 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 %total.iterations.to.be.vectorized)
  %putchar230011 = tail call i32 @putchar(i32 10)


  %putchar2311 = tail call i32 @putchar(i32 10)
  %56 = xor <vscale x 4 x i1> %44, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %57 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %56, ptr %a, <vscale x 4 x i32> %39)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %57, <vscale x 4 x i1> %56, ptr %b, <vscale x 4 x i32> %39)
  %58 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %44, ptr %c, <vscale x 4 x i32> %39)
  %59 = add <vscale x 4 x i32> %58, shufflevector (<vscale x 4 x i32> insertelement (<vscale x 4 x i32> undef, i32 -4, i64 0), <vscale x 4 x i32> undef, <vscale x 4 x i32> zeroinitializer)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %59, <vscale x 4 x i1> %44, ptr %c, <vscale x 4 x i32> %39)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %60 = icmp eq <vscale x 4 x i32> %49, %33
  %61 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %60, <vscale x 4 x i1> %60)
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %2, %62
  br i1 %63, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %64 = zext i32 %51 to i64
  br label %for.body.preheader25

for.body.preheader25:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %64, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !110

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !136

if.then14:                                        ; preds = %for.cond.cleanup
  %65 = load ptr, ptr @stderr, align 8, !dbg !140, !tbaa !113
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str, i32 noundef %call12, ptr noundef nonnull @.str.1, i32 noundef 78) #14, !dbg !140
  tail call void @exit(i32 noundef %call12) #15, !dbg !140
  unreachable, !dbg !140

if.end16:                                         ; preds = %for.cond.cleanup
  %call17 = tail call double @getTimeMiliSeconds(), !dbg !142
  %sub18 = fsub double %call17, %call, !dbg !143
  store double %sub18, ptr @ExecutionTime, align 8, !dbg !144, !tbaa !145
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
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !169
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
  %puts = tail call i32 @puts(ptr nonnull @str.11), !dbg !185
  tail call void @exit(i32 noundef 1) #15, !dbg !187
  unreachable, !dbg !187

if.end:                                           ; preds = %entry
  ret ptr %call, !dbg !188
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !189 {
entry:
  %errstring = alloca [128 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %errstring) #13, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %errstring, metadata !194, metadata !DIExpression()), !dbg !205
  %call = tail call i32 @PAPI_library_init(i32 noundef 117440512) #13, !dbg !206
  %cmp.not = icmp eq i32 %call, 117440512, !dbg !208
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !209

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !dbg !210, !tbaa !113
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %errstring) #14, !dbg !212
  call void @exit(i32 noundef 1) #15, !dbg !213
  unreachable, !dbg !213

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @PAPI_create_eventset(ptr noundef nonnull @EventSet) #13, !dbg !214
  call void @llvm.dbg.value(metadata i32 %call2, metadata !193, metadata !DIExpression()), !dbg !216
  %cmp3.not = icmp eq i32 %call2, 0, !dbg !217
  br i1 %cmp3.not, label %if.end6, label %if.then4, !dbg !218

if.then4:                                         ; preds = %if.end
  %1 = load ptr, ptr @stderr, align 8, !dbg !219, !tbaa !113
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 293) #14, !dbg !219
  tail call void @exit(i32 noundef %call2) #15, !dbg !219
  unreachable, !dbg !219

if.end6:                                          ; preds = %if.end
  %2 = load i32, ptr @EventSet, align 4, !dbg !221, !tbaa !102
  %call7 = tail call i32 @PAPI_add_events(i32 noundef %2, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !223
  call void @llvm.dbg.value(metadata i32 %call7, metadata !193, metadata !DIExpression()), !dbg !216
  %cmp8.not = icmp eq i32 %call7, 0, !dbg !224
  br i1 %cmp8.not, label %if.end11, label %if.then9, !dbg !225

if.then9:                                         ; preds = %if.end6
  %3 = load ptr, ptr @stderr, align 8, !dbg !226, !tbaa !113
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 296) #14, !dbg !226
  tail call void @exit(i32 noundef %call7) #15, !dbg !226
  unreachable, !dbg !226

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 90, metadata !199, metadata !DIExpression()), !dbg !216
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 90), !dbg !228
  store ptr %call12, ptr @a, align 8, !dbg !229, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 90), !dbg !230
  store ptr %call13, ptr @b, align 8, !dbg !231, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 90), !dbg !232
  store ptr %call14, ptr @c, align 8, !dbg !233, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 90), !dbg !234
  store ptr %call15, ptr @cond, align 8, !dbg !235, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !236, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !237
  %conv = trunc i64 %call16 to i32, !dbg !237
  tail call void @srand(i32 noundef %conv) #13, !dbg !238
  call void @llvm.dbg.value(metadata i32 1, metadata !200, metadata !DIExpression()), !dbg !239
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 1, metadata !200, metadata !DIExpression()), !dbg !239
  br label %for.body, !dbg !240

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 90), !dbg !241
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !242
  br label %for.body33, !dbg !243

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  %indvars83 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !200, metadata !DIExpression()), !dbg !239
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !244
  store i32 %indvars83, ptr %arrayidx19, align 4, !dbg !247, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !248
  store i32 2, ptr %arrayidx21, align 4, !dbg !249, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !250
  store i32 0, ptr %arrayidx23, align 4, !dbg !251, !tbaa !102
  %rem.lhs.trunc = trunc i64 %indvars.iv to i8, !dbg !252
  %rem80 = urem i8 %rem.lhs.trunc, 10, !dbg !252
  %cmp24 = icmp eq i8 %rem80, 0, !dbg !253
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !254
  %frombool = zext i1 %cmp24 to i8, !dbg !255
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !255, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !200, metadata !DIExpression()), !dbg !239
  %exitcond.not = icmp eq i64 %indvars.iv.next, 90, !dbg !257
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !240, !llvm.loop !258

for.cond.cleanup32:                               ; preds = %for.body33
  %putchar = tail call i32 @putchar(i32 10), !dbg !260
  %8 = load ptr, ptr @a, align 8, !dbg !261, !tbaa !113
  tail call void @free(ptr noundef %8) #13, !dbg !262
  %9 = load ptr, ptr @b, align 8, !dbg !263, !tbaa !113
  tail call void @free(ptr noundef %9) #13, !dbg !264
  %10 = load ptr, ptr @c, align 8, !dbg !265, !tbaa !113
  tail call void @free(ptr noundef %10) #13, !dbg !266
  %11 = load ptr, ptr @cond, align 8, !dbg !267, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !268
  %12 = load i64, ptr @CounterValues, align 8, !dbg !269, !tbaa !270
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %12), !dbg !272
  %13 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !273, !tbaa !270
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %13), !dbg !274
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !275, !tbaa !270
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %14), !dbg !276
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !277, !tbaa !270
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %15), !dbg !278
  %16 = load double, ptr @ExecutionTime, align 8, !dbg !279, !tbaa !145
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %16), !dbg !280
  %17 = load i32, ptr @EventSet, align 4, !dbg !281, !tbaa !102
  %call46 = tail call i32 @PAPI_remove_events(i32 noundef %17, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !283
  call void @llvm.dbg.value(metadata i32 %call46, metadata !193, metadata !DIExpression()), !dbg !216
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !284
  br i1 %cmp47.not, label %if.end51, label %if.then49, !dbg !285

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv84 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next85, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv84, metadata !202, metadata !DIExpression()), !dbg !242
  %18 = load ptr, ptr @c, align 8, !dbg !286, !tbaa !113
  %arrayidx35 = getelementptr inbounds i32, ptr %18, i64 %indvars.iv84, !dbg !286
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !286, !tbaa !102
  %call36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %19), !dbg !289
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1, !dbg !290
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next85, metadata !202, metadata !DIExpression()), !dbg !242
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 90, !dbg !291
  br i1 %exitcond87.not, label %for.cond.cleanup32, label %for.body33, !dbg !243, !llvm.loop !292

if.then49:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !294, !tbaa !113
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call46, ptr noundef nonnull @.str.1, i32 noundef 345) #14, !dbg !294
  tail call void @exit(i32 noundef %call46) #15, !dbg !294
  unreachable, !dbg !294

if.end51:                                         ; preds = %for.cond.cleanup32
  %call52 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !296
  call void @llvm.dbg.value(metadata i32 %call52, metadata !193, metadata !DIExpression()), !dbg !216
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !298
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !299

if.then55:                                        ; preds = %if.end51
  %21 = load ptr, ptr @stderr, align 8, !dbg !300, !tbaa !113
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call52, ptr noundef nonnull @.str.1, i32 noundef 348) #14, !dbg !300
  tail call void @exit(i32 noundef %call52) #15, !dbg !300
  unreachable, !dbg !300

if.end57:                                         ; preds = %if.end51
  tail call void @PAPI_shutdown() #13, !dbg !302
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !303
  ret i32 0, !dbg !304
}

declare !dbg !305 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !306 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !309 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !312 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !317 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !323 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !324 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !325 void @PAPI_shutdown() local_unnamed_addr #4

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

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #11

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #12

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
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "EventSet", scope: !2, file: !3, line: 22, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "9f172c23c7e26254dc31ae284f7f4a50")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 260, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 261, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 262, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 263, type: !8, isLocal: false, isDefinition: true)
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
!96 = !DILocalVariable(name: "i", scope: !97, file: !3, line: 68, type: !6)
!97 = distinct !DILexicalBlock(scope: !83, file: !3, line: 68, column: 5)
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
!108 = !DILocation(line: 68, column: 23, scope: !109)
!109 = distinct !DILexicalBlock(scope: !97, file: !3, line: 68, column: 5)
!110 = !DILocation(line: 68, column: 5, scope: !97)
!111 = !DILocation(line: 65, column: 53, scope: !112)
!112 = distinct !DILexicalBlock(scope: !101, file: !3, line: 65, column: 53)
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !64, i64 0}
!115 = !DILocation(line: 78, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 78, column: 9)
!117 = !DILocation(line: 78, column: 19, scope: !116)
!118 = !DILocation(line: 78, column: 55, scope: !116)
!119 = !DILocation(line: 78, column: 9, scope: !83)
!120 = !DILocation(line: 69, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 69, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 68, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 69, column: 13, scope: !122)
!127 = !DILocation(line: 70, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 69, column: 22)
!129 = !DILocation(line: 70, column: 13, scope: !128)
!130 = !DILocation(line: 70, column: 18, scope: !128)
!131 = !DILocation(line: 71, column: 9, scope: !128)
!132 = !DILocation(line: 72, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !121, file: !3, line: 71, column: 16)
!134 = !DILocation(line: 72, column: 18, scope: !133)
!135 = !DILocation(line: 68, column: 28, scope: !109)
!136 = distinct !{!136, !110, !137, !138, !139}
!137 = !DILocation(line: 74, column: 5, scope: !97)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 78, column: 67, scope: !141)
!141 = distinct !DILexicalBlock(scope: !116, file: !3, line: 78, column: 67)
!142 = !DILocation(line: 80, column: 21, scope: !83)
!143 = !DILocation(line: 80, column: 42, scope: !83)
!144 = !DILocation(line: 80, column: 19, scope: !83)
!145 = !{!146, !146, i64 0}
!146 = !{!"double", !64, i64 0}
!147 = !DILocation(line: 81, column: 1, scope: !83)
!148 = !DISubprogram(name: "PAPI_start", scope: !149, file: !149, line: 1204, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!149 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !6}
!152 = !DISubprogram(name: "PAPI_stop", scope: !149, file: !149, line: 1206, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!153 = !DISubroutineType(types: !154)
!154 = !{!6, !6, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!156 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 265, type: !157, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!5, !6}
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "n", arg: 1, scope: !156, file: !3, line: 265, type: !6)
!161 = !DILocalVariable(name: "ptr", scope: !156, file: !3, line: 266, type: !5)
!162 = !DILocation(line: 0, scope: !156)
!163 = !DILocation(line: 266, column: 45, scope: !156)
!164 = !DILocation(line: 266, column: 43, scope: !156)
!165 = !DILocation(line: 266, column: 24, scope: !156)
!166 = !DILocation(line: 267, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !156, file: !3, line: 267, column: 9)
!168 = !DILocation(line: 267, column: 9, scope: !156)
!169 = !DILocation(line: 268, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 267, column: 22)
!171 = !DILocation(line: 269, column: 9, scope: !170)
!172 = !DILocation(line: 271, column: 5, scope: !156)
!173 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 274, type: !174, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!8, !6}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "n", arg: 1, scope: !173, file: !3, line: 274, type: !6)
!178 = !DILocalVariable(name: "ptr", scope: !173, file: !3, line: 275, type: !8)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 275, column: 48, scope: !173)
!181 = !DILocation(line: 275, column: 26, scope: !173)
!182 = !DILocation(line: 276, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !3, line: 276, column: 9)
!184 = !DILocation(line: 276, column: 9, scope: !173)
!185 = !DILocation(line: 277, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 276, column: 22)
!187 = !DILocation(line: 278, column: 9, scope: !186)
!188 = !DILocation(line: 280, column: 5, scope: !173)
!189 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 283, type: !190, scopeLine: 283, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!6}
!192 = !{!193, !194, !199, !200, !202}
!193 = !DILocalVariable(name: "status", scope: !189, file: !3, line: 284, type: !6)
!194 = !DILocalVariable(name: "errstring", scope: !189, file: !3, line: 285, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !197)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!198}
!198 = !DISubrange(count: 128)
!199 = !DILocalVariable(name: "n", scope: !189, file: !3, line: 298, type: !6)
!200 = !DILocalVariable(name: "i", scope: !201, file: !3, line: 309, type: !6)
!201 = distinct !DILexicalBlock(scope: !189, file: !3, line: 309, column: 5)
!202 = !DILocalVariable(name: "i", scope: !203, file: !3, line: 327, type: !6)
!203 = distinct !DILexicalBlock(scope: !189, file: !3, line: 327, column: 5)
!204 = !DILocation(line: 285, column: 5, scope: !189)
!205 = !DILocation(line: 285, column: 10, scope: !189)
!206 = !DILocation(line: 287, column: 9, scope: !207)
!207 = distinct !DILexicalBlock(scope: !189, file: !3, line: 287, column: 9)
!208 = !DILocation(line: 287, column: 45, scope: !207)
!209 = !DILocation(line: 287, column: 9, scope: !189)
!210 = !DILocation(line: 288, column: 17, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !3, line: 287, column: 66)
!212 = !DILocation(line: 288, column: 9, scope: !211)
!213 = !DILocation(line: 289, column: 9, scope: !211)
!214 = !DILocation(line: 293, column: 19, scope: !215)
!215 = distinct !DILexicalBlock(scope: !189, file: !3, line: 293, column: 9)
!216 = !DILocation(line: 0, scope: !189)
!217 = !DILocation(line: 293, column: 52, scope: !215)
!218 = !DILocation(line: 293, column: 9, scope: !189)
!219 = !DILocation(line: 293, column: 64, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 293, column: 64)
!221 = !DILocation(line: 296, column: 35, scope: !222)
!222 = distinct !DILexicalBlock(scope: !189, file: !3, line: 296, column: 9)
!223 = !DILocation(line: 296, column: 19, scope: !222)
!224 = !DILocation(line: 296, column: 69, scope: !222)
!225 = !DILocation(line: 296, column: 9, scope: !189)
!226 = !DILocation(line: 296, column: 81, scope: !227)
!227 = distinct !DILexicalBlock(scope: !222, file: !3, line: 296, column: 81)
!228 = !DILocation(line: 300, column: 9, scope: !189)
!229 = !DILocation(line: 300, column: 7, scope: !189)
!230 = !DILocation(line: 301, column: 9, scope: !189)
!231 = !DILocation(line: 301, column: 7, scope: !189)
!232 = !DILocation(line: 302, column: 9, scope: !189)
!233 = !DILocation(line: 302, column: 7, scope: !189)
!234 = !DILocation(line: 303, column: 12, scope: !189)
!235 = !DILocation(line: 303, column: 10, scope: !189)
!236 = !DILocation(line: 305, column: 13, scope: !189)
!237 = !DILocation(line: 307, column: 11, scope: !189)
!238 = !DILocation(line: 307, column: 5, scope: !189)
!239 = !DILocation(line: 0, scope: !201)
!240 = !DILocation(line: 309, column: 5, scope: !201)
!241 = !DILocation(line: 318, column: 5, scope: !189)
!242 = !DILocation(line: 0, scope: !203)
!243 = !DILocation(line: 327, column: 5, scope: !203)
!244 = !DILocation(line: 310, column: 9, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 309, column: 33)
!246 = distinct !DILexicalBlock(scope: !201, file: !3, line: 309, column: 5)
!247 = !DILocation(line: 310, column: 14, scope: !245)
!248 = !DILocation(line: 311, column: 9, scope: !245)
!249 = !DILocation(line: 311, column: 14, scope: !245)
!250 = !DILocation(line: 312, column: 9, scope: !245)
!251 = !DILocation(line: 312, column: 14, scope: !245)
!252 = !DILocation(line: 313, column: 22, scope: !245)
!253 = !DILocation(line: 313, column: 27, scope: !245)
!254 = !DILocation(line: 313, column: 9, scope: !245)
!255 = !DILocation(line: 313, column: 17, scope: !245)
!256 = !DILocation(line: 309, column: 28, scope: !246)
!257 = !DILocation(line: 309, column: 23, scope: !246)
!258 = distinct !{!258, !240, !259, !138, !139}
!259 = !DILocation(line: 314, column: 5, scope: !201)
!260 = !DILocation(line: 330, column: 5, scope: !189)
!261 = !DILocation(line: 334, column: 10, scope: !189)
!262 = !DILocation(line: 334, column: 5, scope: !189)
!263 = !DILocation(line: 335, column: 10, scope: !189)
!264 = !DILocation(line: 335, column: 5, scope: !189)
!265 = !DILocation(line: 336, column: 10, scope: !189)
!266 = !DILocation(line: 336, column: 5, scope: !189)
!267 = !DILocation(line: 337, column: 10, scope: !189)
!268 = !DILocation(line: 337, column: 5, scope: !189)
!269 = !DILocation(line: 339, column: 53, scope: !189)
!270 = !{!271, !271, i64 0}
!271 = !{!"long long", !64, i64 0}
!272 = !DILocation(line: 339, column: 5, scope: !189)
!273 = !DILocation(line: 340, column: 36, scope: !189)
!274 = !DILocation(line: 340, column: 5, scope: !189)
!275 = !DILocation(line: 341, column: 50, scope: !189)
!276 = !DILocation(line: 341, column: 5, scope: !189)
!277 = !DILocation(line: 342, column: 49, scope: !189)
!278 = !DILocation(line: 342, column: 5, scope: !189)
!279 = !DILocation(line: 343, column: 40, scope: !189)
!280 = !DILocation(line: 343, column: 5, scope: !189)
!281 = !DILocation(line: 345, column: 38, scope: !282)
!282 = distinct !DILexicalBlock(scope: !189, file: !3, line: 345, column: 9)
!283 = !DILocation(line: 345, column: 19, scope: !282)
!284 = !DILocation(line: 345, column: 72, scope: !282)
!285 = !DILocation(line: 345, column: 9, scope: !189)
!286 = !DILocation(line: 328, column: 23, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 327, column: 33)
!288 = distinct !DILexicalBlock(scope: !203, file: !3, line: 327, column: 5)
!289 = !DILocation(line: 328, column: 9, scope: !287)
!290 = !DILocation(line: 327, column: 28, scope: !288)
!291 = !DILocation(line: 327, column: 23, scope: !288)
!292 = distinct !{!292, !243, !293, !138, !139}
!293 = !DILocation(line: 329, column: 5, scope: !203)
!294 = !DILocation(line: 345, column: 84, scope: !295)
!295 = distinct !DILexicalBlock(scope: !282, file: !3, line: 345, column: 84)
!296 = !DILocation(line: 348, column: 19, scope: !297)
!297 = distinct !DILexicalBlock(scope: !189, file: !3, line: 348, column: 9)
!298 = !DILocation(line: 348, column: 53, scope: !297)
!299 = !DILocation(line: 348, column: 9, scope: !189)
!300 = !DILocation(line: 348, column: 65, scope: !301)
!301 = distinct !DILexicalBlock(scope: !297, file: !3, line: 348, column: 65)
!302 = !DILocation(line: 351, column: 5, scope: !189)
!303 = !DILocation(line: 354, column: 1, scope: !189)
!304 = !DILocation(line: 353, column: 5, scope: !189)
!305 = !DISubprogram(name: "PAPI_library_init", scope: !149, file: !149, line: 1172, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!306 = !DISubprogram(name: "PAPI_create_eventset", scope: !149, file: !149, line: 1147, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!307 = !DISubroutineType(types: !308)
!308 = !{!6, !5}
!309 = !DISubprogram(name: "PAPI_add_events", scope: !149, file: !149, line: 1143, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!310 = !DISubroutineType(types: !311)
!311 = !{!6, !6, !5, !6}
!312 = !DISubprogram(name: "srand", scope: !313, file: !313, line: 455, type: !314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!313 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!317 = !DISubprogram(name: "time", scope: !75, file: !75, line: 75, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!318 = !DISubroutineType(types: !319)
!319 = !{!320, !322}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !321, line: 7, baseType: !52)
!321 = !DIFile(filename: "/usr/include/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!323 = !DISubprogram(name: "PAPI_remove_events", scope: !149, file: !149, line: 1192, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!324 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !149, file: !149, line: 1149, type: !307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!325 = !DISubprogram(name: "PAPI_shutdown", scope: !149, file: !149, line: 1202, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DISubroutineType(types: !327)
!327 = !{null}
