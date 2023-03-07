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
@.str.4 = private unnamed_addr constant [8 x i8] c" %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0ATotal instructions executed: %lld\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Total cycles: %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Total L1 data cache misses: %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Total branch mispredicted: %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Execution time: %lf ms\0A\00", align 1
@str.11 = private unnamed_addr constant [33 x i8] c"error: failed to allocate memory\00", align 1
@.str.12 = private unnamed_addr constant [56x i8] c" ----------------------------------------------------- \0A\00", align 1

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
define dso_local void @simple_if_else(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture readnone %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !89, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.value(metadata ptr undef, metadata !90, metadata !DIExpression()), !dbg !98
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
  %cmp329 = icmp sgt i32 %n, 0, !dbg !108
  br i1 %cmp329, label %for.body.preheader, label %for.cond.cleanup, !dbg !110

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
  %arrayidx6 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !127
  %7 = load i32, ptr %arrayidx6, align 4, !dbg !129, !tbaa !102
  %8 = trunc i64 %indvars.iv to i32, !dbg !129
  %sub = sub nsw i32 %7, %8, !dbg !129
  store i32 %sub, ptr %arrayidx6, align 4, !dbg !129, !tbaa !102
  br label %for.inc, !dbg !130

if.else:                                          ; preds = %for.body
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !131
  %9 = load i32, ptr %arrayidx8, align 4, !dbg !131, !tbaa !102
  %arrayidx10 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !133
  store i32 %9, ptr %arrayidx10, align 4, !dbg !134, !tbaa !102
  br label %for.inc

pre.alc:                                          ; preds = %for.body.preheader
  %10 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %11 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %12 = urem i32 %n, %2
  %13 = add i32 %3, %12
  %total.iterations.to.be.vectorized = sub i32 %n, %13
  %14 = load <vscale x 4 x i8>, ptr %cond, align 4
  %15 = icmp eq <vscale x 4 x i8> %14, zeroinitializer
  %16 = sext i32 %2 to i64
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %vector.loop.index = phi i32 [ %2, %pre.alc ], [ %52, %new.latch ]
  %uniform.vector = phi <vscale x 4 x i32> [ %11, %pre.alc ], [ %50, %new.latch ]
  %uniform.vector.predicates = phi <vscale x 4 x i1> [ %15, %pre.alc ], [ %51, %new.latch ]
  %17 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %vector.loop.index, i32 1)
  %18 = sext i32 %vector.loop.index to i64, !dbg !120
  %19 = getelementptr inbounds i8, ptr %cond, i64 %18, !dbg !120
  %20 = load <vscale x 4 x i8>, ptr %19, align 4
  %21 = icmp eq <vscale x 4 x i8> %20, zeroinitializer
  %22 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i1> %uniform.vector.predicates)
  %23 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %21, <vscale x 4 x i1> %21)
  %24 = trunc i64 %22 to i32
  %25 = trunc i64 %23 to i32
  %26 = add i32 %25, %24
  %27 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %uniform.vector.predicates, <vscale x 4 x i32> %uniform.vector)
  %28 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %21, <vscale x 4 x i32> %17)
  %29 = xor <vscale x 4 x i1> %uniform.vector.predicates, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %30 = xor <vscale x 4 x i1> %21, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %31 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %29, <vscale x 4 x i32> %uniform.vector)
  %32 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %30, <vscale x 4 x i32> %17)
  %33 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %24)
  %34 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %33, <vscale x 4 x i32> %27, <vscale x 4 x i32> %28)
  %35 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i32(i32 0, i32 %26)
  %36 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %23)
  %37 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %36, <vscale x 4 x i32> %28, <vscale x 4 x i32> %32)
  %38 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %29, <vscale x 4 x i1> %29)
  %39 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %38)
  %40 = select <vscale x 4 x i1> %39, <vscale x 4 x i32> %31, <vscale x 4 x i32> %37
  %41 = xor <vscale x 4 x i1> %39, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %42 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %30)
  %43 = sub i64 %16, %42
  %44 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %43)
  %45 = and <vscale x 4 x i1> %44, %41
  %46 = icmp ugt i32 %26, %2
  
  
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


  %s30 = extractelement <vscale x 4 x i1> %21, i32 0
  %s31 = extractelement <vscale x 4 x i1> %21, i32 1
  %s32 = extractelement <vscale x 4 x i1> %21, i32 2
  %s33 = extractelement <vscale x 4 x i1> %21, i32 3
  %s34 = extractelement <vscale x 4 x i1> %21, i32 4
  %s35 = extractelement <vscale x 4 x i1> %21, i32 5
  %s36 = extractelement <vscale x 4 x i1> %21, i32 6
  %s37 = extractelement <vscale x 4 x i1> %21, i32 7
  %s38 = extractelement <vscale x 4 x i1> %21, i32 8
  %s39 = extractelement <vscale x 4 x i1> %21, i32 9
  %s310 = extractelement <vscale x 4 x i1> %21, i32 10
  %s311 = extractelement <vscale x 4 x i1> %21, i32 11
  %s312 = extractelement <vscale x 4 x i1> %21, i32 12
  %s313 = extractelement <vscale x 4 x i1> %21, i32 13
  %s314 = extractelement <vscale x 4 x i1> %21, i32 14
  %s315 = extractelement <vscale x 4 x i1> %21, i32 15

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


  %w30 = extractelement <vscale x 4 x i32>  %17, i32 0
  %w31 = extractelement <vscale x 4 x i32>  %17, i32 1
  %w32 = extractelement <vscale x 4 x i32>  %17, i32 2
  %w33 = extractelement <vscale x 4 x i32>  %17, i32 3
  %w34 = extractelement <vscale x 4 x i32>  %17, i32 4
  %w35 = extractelement <vscale x 4 x i32>  %17, i32 5
  %w36 = extractelement <vscale x 4 x i32>  %17, i32 6
  %w37 = extractelement <vscale x 4 x i32>  %17, i32 7
  %w38 = extractelement <vscale x 4 x i32>  %17, i32 8
  %w39 = extractelement <vscale x 4 x i32>  %17, i32 9
  %w310 = extractelement <vscale x 4 x i32>  %17, i32 10
  %w311 = extractelement <vscale x 4 x i32>  %17, i32 11
  %w312 = extractelement <vscale x 4 x i32>  %17, i32 12
  %w313 = extractelement <vscale x 4 x i32>  %17, i32 13
  %w314 = extractelement <vscale x 4 x i32>  %17, i32 14
  %w315 = extractelement <vscale x 4 x i32>  %17, i32 15

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

  %m30 = extractelement <vscale x 4 x i1> %35, i32 0
  %m31 = extractelement <vscale x 4 x i1> %35, i32 1
  %m32 = extractelement <vscale x 4 x i1> %35, i32 2
  %m33 = extractelement <vscale x 4 x i1> %35, i32 3
  %m34 = extractelement <vscale x 4 x i1> %35, i32 4
  %m35 = extractelement <vscale x 4 x i1> %35, i32 5
  %m36 = extractelement <vscale x 4 x i1> %35, i32 6
  %m37 = extractelement <vscale x 4 x i1> %35, i32 7
  %m38 = extractelement <vscale x 4 x i1> %35, i32 8
  %m39 = extractelement <vscale x 4 x i1> %35, i32 9
  %m310 = extractelement <vscale x 4 x i1> %35, i32 10
  %m311 = extractelement <vscale x 4 x i1> %35, i32 11
  %m312 = extractelement <vscale x 4 x i1> %35, i32 12
  %m313 = extractelement <vscale x 4 x i1> %35, i32 13
  %m314 = extractelement <vscale x 4 x i1> %35, i32 14
  %m315 = extractelement <vscale x 4 x i1> %35, i32 15

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


  %e30 = extractelement <vscale x 4 x i32> %34, i32 0
  %e31 = extractelement <vscale x 4 x i32> %34, i32 1
  %e32 = extractelement <vscale x 4 x i32> %34, i32 2
  %e33 = extractelement <vscale x 4 x i32> %34, i32 3
  %e34 = extractelement <vscale x 4 x i32> %34, i32 4
  %e35 = extractelement <vscale x 4 x i32> %34, i32 5
  %e36 = extractelement <vscale x 4 x i32> %34, i32 6
  %e37 = extractelement <vscale x 4 x i32> %34, i32 7
  %e38 = extractelement <vscale x 4 x i32> %34, i32 8
  %e39 = extractelement <vscale x 4 x i32> %34, i32 9
  %e310 = extractelement <vscale x 4 x i32> %34, i32 10
  %e311 = extractelement <vscale x 4 x i32> %34, i32 11
  %e312 = extractelement <vscale x 4 x i32> %34, i32 12
  %e313 = extractelement <vscale x 4 x i32> %34, i32 13
  %e314 = extractelement <vscale x 4 x i32> %34, i32 14
  %e315 = extractelement <vscale x 4 x i32> %34, i32 15

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
    %m0 = extractelement <vscale x 4 x i1> %45, i32 0
    %m1 = extractelement <vscale x 4 x i1> %45, i32 1
    %m2 = extractelement <vscale x 4 x i1> %45, i32 2
    %m3 = extractelement <vscale x 4 x i1> %45, i32 3
    %m4 = extractelement <vscale x 4 x i1> %45, i32 4
    %m5 = extractelement <vscale x 4 x i1> %45, i32 5
    %m6 = extractelement <vscale x 4 x i1> %45, i32 6
    %m7 = extractelement <vscale x 4 x i1> %45, i32 7
    %m8 = extractelement <vscale x 4 x i1> %45, i32 8
    %m9 = extractelement <vscale x 4 x i1> %45, i32 9
    %m10 = extractelement <vscale x 4 x i1> %45, i32 10
    %m11 = extractelement <vscale x 4 x i1> %45, i32 11
    %m12 = extractelement <vscale x 4 x i1> %45, i32 12
    %m13 = extractelement <vscale x 4 x i1> %45, i32 13
    %m14 = extractelement <vscale x 4 x i1> %45, i32 14
    %m15 = extractelement <vscale x 4 x i1> %45, i32 15

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


    %e0 = extractelement <vscale x 4 x i32> %40, i32 0
    %e1 = extractelement <vscale x 4 x i32> %40, i32 1
    %e2 = extractelement <vscale x 4 x i32> %40, i32 2
    %e3 = extractelement <vscale x 4 x i32> %40, i32 3
    %e4 = extractelement <vscale x 4 x i32> %40, i32 4
    %e5 = extractelement <vscale x 4 x i32> %40, i32 5
    %e6 = extractelement <vscale x 4 x i32> %40, i32 6
    %e7 = extractelement <vscale x 4 x i32> %40, i32 7
    %e8 = extractelement <vscale x 4 x i32> %40, i32 8
    %e9 = extractelement <vscale x 4 x i32> %40, i32 9
    %e10 = extractelement <vscale x 4 x i32> %40, i32 10
    %e11 = extractelement <vscale x 4 x i32> %40, i32 11
    %e12 = extractelement <vscale x 4 x i32> %40, i32 12
    %e13 = extractelement <vscale x 4 x i32> %40, i32 13
    %e14 = extractelement <vscale x 4 x i32> %40, i32 14
    %e15 = extractelement <vscale x 4 x i32> %40, i32 15

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
  
  br i1 %46, label %uniform.then, label %uniform.else

uniform.then:                                     ; preds = %alc.header
  %47 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %10, ptr %a, <vscale x 4 x i32> %34)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %47, <vscale x 4 x i1> %10, ptr %c, <vscale x 4 x i32> %34)
  br label %new.latch

uniform.else:                                     ; preds = %alc.header
  %48 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %10, ptr %c, <vscale x 4 x i32> %40)
  %49 = sub <vscale x 4 x i32> %48, %40
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %49, <vscale x 4 x i1> %10, ptr %c, <vscale x 4 x i32> %40)
  br label %new.latch

new.latch:                                        ; preds = %uniform.else, %uniform.then
  %50 = phi <vscale x 4 x i32> [ %40, %uniform.then ], [ %34, %uniform.else ]
  %51 = phi <vscale x 4 x i1> [ %45, %uniform.then ], [ %35, %uniform.else ]
  %52 = add i32 %vector.loop.index, %2
  %.not2 = icmp ult i32 %52, %total.iterations.to.be.vectorized
  br i1 %.not2, label %alc.header, label %joinBlock

linearized.then:                                  ; preds = %joinBlock
  %53 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %35, ptr %a, <vscale x 4 x i32> %34)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %53, <vscale x 4 x i1> %35, ptr %c, <vscale x 4 x i32> %34)
  %54 = xor <vscale x 4 x i1> %35, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %55 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %54, ptr %c, <vscale x 4 x i32> %34)
  %56 = sub <vscale x 4 x i32> %55, %34
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %56, <vscale x 4 x i1> %54, ptr %c, <vscale x 4 x i32> %34)
  br label %middel.block

linearized.else:                                  ; preds = %joinBlock
  %57 = xor <vscale x 4 x i1> %45, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %58 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %57, ptr %c, <vscale x 4 x i32> %40)
  %59 = sub <vscale x 4 x i32> %58, %40
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %59, <vscale x 4 x i1> %57, ptr %c, <vscale x 4 x i32> %40)
  %60 = tail call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %45, ptr %a, <vscale x 4 x i32> %40)
  tail call void @llvm.aarch64.sve.st1.scatter.sxtw.index.nxv4i32(<vscale x 4 x i32> %60, <vscale x 4 x i1> %45, ptr %c, <vscale x 4 x i32> %40)
  br label %middel.block

joinBlock:                                        ; preds = %new.latch
  %61 = icmp eq <vscale x 4 x i32> %50, %34
  %62 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %61, <vscale x 4 x i1> %61)
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %2, %63
  br i1 %64, label %linearized.then, label %linearized.else

middel.block:                                     ; preds = %linearized.else, %linearized.then
  %65 = zext i32 %52 to i64
  br label %for.body.preheader25

for.body.preheader25:                             ; preds = %middel.block, %for.body.preheader
  %indvars.iv.ph = phi i64 [ %65, %middel.block ], [ 0, %for.body.preheader ]
  br label %for.body, !dbg !110

for.inc:                                          ; preds = %if.else, %if.then4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !96, metadata !DIExpression()), !dbg !107
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !108
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !110, !llvm.loop !136

if.then14:                                        ; preds = %for.cond.cleanup
  %66 = load ptr, ptr @stderr, align 8, !dbg !140, !tbaa !113
  %call15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str, i32 noundef %call12, ptr noundef nonnull @.str.1, i32 noundef 87) #14, !dbg !140
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
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %call2, ptr noundef nonnull @.str.1, i32 noundef 302) #14, !dbg !220
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
  %call10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %call7, ptr noundef nonnull @.str.1, i32 noundef 305) #14, !dbg !227
  tail call void @exit(i32 noundef %call7) #15, !dbg !227
  unreachable, !dbg !227

if.end11:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata i32 210, metadata !199, metadata !DIExpression()), !dbg !217
  %call12 = tail call ptr @checked_malloc_int_array(i32 noundef 210), !dbg !229
  store ptr %call12, ptr @a, align 8, !dbg !230, !tbaa !113
  %call13 = tail call ptr @checked_malloc_int_array(i32 noundef 210), !dbg !231
  store ptr %call13, ptr @b, align 8, !dbg !232, !tbaa !113
  %call14 = tail call ptr @checked_malloc_int_array(i32 noundef 210), !dbg !233
  store ptr %call14, ptr @c, align 8, !dbg !234, !tbaa !113
  %call15 = tail call ptr @checked_malloc_bool_array(i32 noundef 210), !dbg !235
  store ptr %call15, ptr @cond, align 8, !dbg !236, !tbaa !113
  store i8 0, ptr %call15, align 1, !dbg !237, !tbaa !123
  %call16 = tail call i64 @time(ptr noundef null) #13, !dbg !238
  %conv = trunc i64 %call16 to i32, !dbg !238
  tail call void @srand(i32 noundef %conv) #13, !dbg !239
  call void @llvm.dbg.value(metadata i32 1, metadata !200, metadata !DIExpression()), !dbg !240
  %4 = load ptr, ptr @a, align 8, !tbaa !113
  %5 = load ptr, ptr @b, align 8, !tbaa !113
  %6 = load ptr, ptr @c, align 8, !tbaa !113
  %7 = load ptr, ptr @cond, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 1, metadata !200, metadata !DIExpression()), !dbg !240
  br label %for.body, !dbg !241

for.cond.cleanup:                                 ; preds = %for.body
  tail call void @simple_if_else(ptr noundef nonnull %4, ptr undef, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 210), !dbg !242
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !243
  %8 = load ptr, ptr @c, align 8, !tbaa !113
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 0, metadata !202, metadata !DIExpression()), !dbg !217
  br label %for.body33, !dbg !244

for.body:                                         ; preds = %for.body, %if.end11
  %indvars.iv = phi i64 [ 1, %if.end11 ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !200, metadata !DIExpression()), !dbg !240
  %arrayidx19 = getelementptr inbounds i32, ptr %4, i64 %indvars.iv, !dbg !245
  store i32 0, ptr %arrayidx19, align 4, !dbg !248, !tbaa !102
  %arrayidx21 = getelementptr inbounds i32, ptr %5, i64 %indvars.iv, !dbg !249
  store i32 2, ptr %arrayidx21, align 4, !dbg !250, !tbaa !102
  %arrayidx23 = getelementptr inbounds i32, ptr %6, i64 %indvars.iv, !dbg !251
  store i32 0, ptr %arrayidx23, align 4, !dbg !252, !tbaa !102
  %rem.lhs.trunc = trunc i64 %indvars.iv to i8, !dbg !253
  %rem80 = urem i8 %rem.lhs.trunc, 10, !dbg !253
  %cmp24 = icmp eq i8 %rem80, 0, !dbg !254
  %arrayidx27 = getelementptr inbounds i8, ptr %7, i64 %indvars.iv, !dbg !255
  %frombool = zext i1 %cmp24 to i8, !dbg !256
  store i8 %frombool, ptr %arrayidx27, align 1, !dbg !256, !tbaa !123
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !200, metadata !DIExpression()), !dbg !240
  %exitcond.not = icmp eq i64 %indvars.iv.next, 210, !dbg !258
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !241, !llvm.loop !259

for.cond.cleanup32:                               ; preds = %for.body33
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.4, i32 noundef %add), !dbg !261
  %putchar = tail call i32 @putchar(i32 10), !dbg !262
  %9 = load ptr, ptr @a, align 8, !dbg !263, !tbaa !113
  tail call void @free(ptr noundef %9) #13, !dbg !264
  %10 = load ptr, ptr @b, align 8, !dbg !265, !tbaa !113
  tail call void @free(ptr noundef %10) #13, !dbg !266
  %11 = load ptr, ptr @c, align 8, !dbg !267, !tbaa !113
  tail call void @free(ptr noundef %11) #13, !dbg !268
  %12 = load ptr, ptr @cond, align 8, !dbg !269, !tbaa !113
  tail call void @free(ptr noundef %12) #13, !dbg !270
  %13 = load i64, ptr @CounterValues, align 8, !dbg !271, !tbaa !272
  %call41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.6, i64 noundef %13), !dbg !274
  %14 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 1), align 8, !dbg !275, !tbaa !272
  %call42 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.7, i64 noundef %14), !dbg !276
  %15 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 2), align 8, !dbg !277, !tbaa !272
  %call43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.8, i64 noundef %15), !dbg !278
  %16 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @CounterValues, i64 0, i64 3), align 8, !dbg !279, !tbaa !272
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.9, i64 noundef %16), !dbg !280
  %17 = load double, ptr @ExecutionTime, align 8, !dbg !281, !tbaa !145
  %call45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.10, double noundef %17), !dbg !282
  %18 = load i32, ptr @EventSet, align 4, !dbg !283, !tbaa !102
  %call46 = tail call i32 @PAPI_remove_events(i32 noundef %18, ptr noundef nonnull @EventCodes, i32 noundef 4) #13, !dbg !285
  call void @llvm.dbg.value(metadata i32 %call46, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp47.not = icmp eq i32 %call46, 0, !dbg !286
  br i1 %cmp47.not, label %if.end51, label %if.then49, !dbg !287

for.body33:                                       ; preds = %for.body33, %for.cond.cleanup
  %indvars.iv85 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next86, %for.body33 ]
  %sum.082 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv85, metadata !203, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata i32 %sum.082, metadata !202, metadata !DIExpression()), !dbg !217
  %arrayidx35 = getelementptr inbounds i32, ptr %8, i64 %indvars.iv85, !dbg !288
  %19 = load i32, ptr %arrayidx35, align 4, !dbg !288, !tbaa !102
  %add = add nsw i32 %19, %sum.082, !dbg !291
  call void @llvm.dbg.value(metadata i32 %add, metadata !202, metadata !DIExpression()), !dbg !217
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1, !dbg !292
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next86, metadata !203, metadata !DIExpression()), !dbg !243
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, 210, !dbg !293
  br i1 %exitcond88.not, label %for.cond.cleanup32, label %for.body33, !dbg !244, !llvm.loop !294

if.then49:                                        ; preds = %for.cond.cleanup32
  %20 = load ptr, ptr @stderr, align 8, !dbg !296, !tbaa !113
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef %call46, ptr noundef nonnull @.str.1, i32 noundef 350) #14, !dbg !296
  tail call void @exit(i32 noundef %call46) #15, !dbg !296
  unreachable, !dbg !296

if.end51:                                         ; preds = %for.cond.cleanup32
  %call52 = tail call i32 @PAPI_destroy_eventset(ptr noundef nonnull @EventSet) #13, !dbg !298
  call void @llvm.dbg.value(metadata i32 %call52, metadata !193, metadata !DIExpression()), !dbg !217
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !300
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !301

if.then55:                                        ; preds = %if.end51
  %21 = load ptr, ptr @stderr, align 8, !dbg !302, !tbaa !113
  %call56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, i32 noundef %call52, ptr noundef nonnull @.str.1, i32 noundef 353) #14, !dbg !302
  tail call void @exit(i32 noundef %call52) #15, !dbg !302
  unreachable, !dbg !302

if.end57:                                         ; preds = %if.end51
  tail call void @PAPI_shutdown() #13, !dbg !304
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %errstring) #13, !dbg !305
  ret i32 0, !dbg !306
}

declare !dbg !307 i32 @PAPI_library_init(i32 noundef) local_unnamed_addr #4

declare !dbg !308 i32 @PAPI_create_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !311 i32 @PAPI_add_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !314 void @srand(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !319 i64 @time(ptr noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !325 i32 @PAPI_remove_events(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !326 i32 @PAPI_destroy_eventset(ptr noundef) local_unnamed_addr #4

declare !dbg !327 void @PAPI_shutdown() local_unnamed_addr #4

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
!3 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "da0da693b21be36d75f7cf27de6a420a")
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
!24 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 269, type: !5, isLocal: false, isDefinition: true)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 270, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 271, type: !5, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "cond", scope: !2, file: !3, line: 272, type: !8, isLocal: false, isDefinition: true)
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
!115 = !DILocation(line: 87, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !83, file: !3, line: 87, column: 9)
!117 = !DILocation(line: 87, column: 19, scope: !116)
!118 = !DILocation(line: 87, column: 55, scope: !116)
!119 = !DILocation(line: 87, column: 9, scope: !83)
!120 = !DILocation(line: 70, column: 13, scope: !121)
!121 = distinct !DILexicalBlock(scope: !122, file: !3, line: 70, column: 13)
!122 = distinct !DILexicalBlock(scope: !109, file: !3, line: 69, column: 33)
!123 = !{!124, !124, i64 0}
!124 = !{!"_Bool", !64, i64 0}
!125 = !{i8 0, i8 2}
!126 = !DILocation(line: 70, column: 13, scope: !122)
!127 = !DILocation(line: 76, column: 13, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !3, line: 70, column: 22)
!129 = !DILocation(line: 76, column: 18, scope: !128)
!130 = !DILocation(line: 77, column: 9, scope: !128)
!131 = !DILocation(line: 78, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !3, line: 77, column: 16)
!133 = !DILocation(line: 78, column: 13, scope: !132)
!134 = !DILocation(line: 78, column: 18, scope: !132)
!135 = !DILocation(line: 69, column: 28, scope: !109)
!136 = distinct !{!136, !110, !137, !138, !139}
!137 = !DILocation(line: 83, column: 5, scope: !97)
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !DILocation(line: 87, column: 67, scope: !141)
!141 = distinct !DILexicalBlock(scope: !116, file: !3, line: 87, column: 67)
!142 = !DILocation(line: 89, column: 21, scope: !83)
!143 = !DILocation(line: 89, column: 42, scope: !83)
!144 = !DILocation(line: 89, column: 19, scope: !83)
!145 = !{!146, !146, i64 0}
!146 = !{!"double", !64, i64 0}
!147 = !DILocation(line: 90, column: 1, scope: !83)
!148 = !DISubprogram(name: "PAPI_start", scope: !149, file: !149, line: 1204, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!149 = !DIFile(filename: "PAPI/papi-install/include/papi.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation", checksumkind: CSK_MD5, checksum: "0d2c40ce608b3a2c077982ffb1e7b529")
!150 = !DISubroutineType(types: !151)
!151 = !{!6, !6}
!152 = !DISubprogram(name: "PAPI_stop", scope: !149, file: !149, line: 1206, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!153 = !DISubroutineType(types: !154)
!154 = !{!6, !6, !155}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!156 = distinct !DISubprogram(name: "checked_malloc_int_array", scope: !3, file: !3, line: 274, type: !157, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{!5, !6}
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "n", arg: 1, scope: !156, file: !3, line: 274, type: !6)
!161 = !DILocalVariable(name: "ptr", scope: !156, file: !3, line: 275, type: !5)
!162 = !DILocation(line: 0, scope: !156)
!163 = !DILocation(line: 275, column: 45, scope: !156)
!164 = !DILocation(line: 275, column: 43, scope: !156)
!165 = !DILocation(line: 275, column: 24, scope: !156)
!166 = !DILocation(line: 276, column: 13, scope: !167)
!167 = distinct !DILexicalBlock(scope: !156, file: !3, line: 276, column: 9)
!168 = !DILocation(line: 276, column: 9, scope: !156)
!169 = !DILocation(line: 277, column: 9, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 276, column: 22)
!171 = !DILocation(line: 278, column: 9, scope: !170)
!172 = !DILocation(line: 280, column: 5, scope: !156)
!173 = distinct !DISubprogram(name: "checked_malloc_bool_array", scope: !3, file: !3, line: 283, type: !174, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!8, !6}
!176 = !{!177, !178}
!177 = !DILocalVariable(name: "n", arg: 1, scope: !173, file: !3, line: 283, type: !6)
!178 = !DILocalVariable(name: "ptr", scope: !173, file: !3, line: 284, type: !8)
!179 = !DILocation(line: 0, scope: !173)
!180 = !DILocation(line: 284, column: 48, scope: !173)
!181 = !DILocation(line: 284, column: 26, scope: !173)
!182 = !DILocation(line: 285, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !173, file: !3, line: 285, column: 9)
!184 = !DILocation(line: 285, column: 9, scope: !173)
!185 = !DILocation(line: 286, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !3, line: 285, column: 22)
!187 = !DILocation(line: 287, column: 9, scope: !186)
!188 = !DILocation(line: 289, column: 5, scope: !173)
!189 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 292, type: !190, scopeLine: 292, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{!6}
!192 = !{!193, !194, !199, !200, !202, !203}
!193 = !DILocalVariable(name: "status", scope: !189, file: !3, line: 293, type: !6)
!194 = !DILocalVariable(name: "errstring", scope: !189, file: !3, line: 294, type: !195)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 1024, elements: !197)
!196 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!197 = !{!198}
!198 = !DISubrange(count: 128)
!199 = !DILocalVariable(name: "n", scope: !189, file: !3, line: 307, type: !6)
!200 = !DILocalVariable(name: "i", scope: !201, file: !3, line: 318, type: !6)
!201 = distinct !DILexicalBlock(scope: !189, file: !3, line: 318, column: 5)
!202 = !DILocalVariable(name: "sum", scope: !189, file: !3, line: 330, type: !6)
!203 = !DILocalVariable(name: "i", scope: !204, file: !3, line: 332, type: !6)
!204 = distinct !DILexicalBlock(scope: !189, file: !3, line: 332, column: 5)
!205 = !DILocation(line: 294, column: 5, scope: !189)
!206 = !DILocation(line: 294, column: 10, scope: !189)
!207 = !DILocation(line: 296, column: 9, scope: !208)
!208 = distinct !DILexicalBlock(scope: !189, file: !3, line: 296, column: 9)
!209 = !DILocation(line: 296, column: 45, scope: !208)
!210 = !DILocation(line: 296, column: 9, scope: !189)
!211 = !DILocation(line: 297, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !208, file: !3, line: 296, column: 66)
!213 = !DILocation(line: 297, column: 9, scope: !212)
!214 = !DILocation(line: 298, column: 9, scope: !212)
!215 = !DILocation(line: 302, column: 19, scope: !216)
!216 = distinct !DILexicalBlock(scope: !189, file: !3, line: 302, column: 9)
!217 = !DILocation(line: 0, scope: !189)
!218 = !DILocation(line: 302, column: 52, scope: !216)
!219 = !DILocation(line: 302, column: 9, scope: !189)
!220 = !DILocation(line: 302, column: 64, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !3, line: 302, column: 64)
!222 = !DILocation(line: 305, column: 35, scope: !223)
!223 = distinct !DILexicalBlock(scope: !189, file: !3, line: 305, column: 9)
!224 = !DILocation(line: 305, column: 19, scope: !223)
!225 = !DILocation(line: 305, column: 69, scope: !223)
!226 = !DILocation(line: 305, column: 9, scope: !189)
!227 = !DILocation(line: 305, column: 81, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !3, line: 305, column: 81)
!229 = !DILocation(line: 309, column: 9, scope: !189)
!230 = !DILocation(line: 309, column: 7, scope: !189)
!231 = !DILocation(line: 310, column: 9, scope: !189)
!232 = !DILocation(line: 310, column: 7, scope: !189)
!233 = !DILocation(line: 311, column: 9, scope: !189)
!234 = !DILocation(line: 311, column: 7, scope: !189)
!235 = !DILocation(line: 312, column: 12, scope: !189)
!236 = !DILocation(line: 312, column: 10, scope: !189)
!237 = !DILocation(line: 314, column: 13, scope: !189)
!238 = !DILocation(line: 316, column: 11, scope: !189)
!239 = !DILocation(line: 316, column: 5, scope: !189)
!240 = !DILocation(line: 0, scope: !201)
!241 = !DILocation(line: 318, column: 5, scope: !201)
!242 = !DILocation(line: 327, column: 5, scope: !189)
!243 = !DILocation(line: 0, scope: !204)
!244 = !DILocation(line: 332, column: 5, scope: !204)
!245 = !DILocation(line: 319, column: 9, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 318, column: 33)
!247 = distinct !DILexicalBlock(scope: !201, file: !3, line: 318, column: 5)
!248 = !DILocation(line: 319, column: 14, scope: !246)
!249 = !DILocation(line: 320, column: 9, scope: !246)
!250 = !DILocation(line: 320, column: 14, scope: !246)
!251 = !DILocation(line: 321, column: 9, scope: !246)
!252 = !DILocation(line: 321, column: 14, scope: !246)
!253 = !DILocation(line: 322, column: 22, scope: !246)
!254 = !DILocation(line: 322, column: 27, scope: !246)
!255 = !DILocation(line: 322, column: 9, scope: !246)
!256 = !DILocation(line: 322, column: 17, scope: !246)
!257 = !DILocation(line: 318, column: 28, scope: !247)
!258 = !DILocation(line: 318, column: 23, scope: !247)
!259 = distinct !{!259, !241, !260, !138, !139}
!260 = !DILocation(line: 323, column: 5, scope: !201)
!261 = !DILocation(line: 336, column: 5, scope: !189)
!262 = !DILocation(line: 337, column: 5, scope: !189)
!263 = !DILocation(line: 339, column: 10, scope: !189)
!264 = !DILocation(line: 339, column: 5, scope: !189)
!265 = !DILocation(line: 340, column: 10, scope: !189)
!266 = !DILocation(line: 340, column: 5, scope: !189)
!267 = !DILocation(line: 341, column: 10, scope: !189)
!268 = !DILocation(line: 341, column: 5, scope: !189)
!269 = !DILocation(line: 342, column: 10, scope: !189)
!270 = !DILocation(line: 342, column: 5, scope: !189)
!271 = !DILocation(line: 344, column: 53, scope: !189)
!272 = !{!273, !273, i64 0}
!273 = !{!"long long", !64, i64 0}
!274 = !DILocation(line: 344, column: 5, scope: !189)
!275 = !DILocation(line: 345, column: 36, scope: !189)
!276 = !DILocation(line: 345, column: 5, scope: !189)
!277 = !DILocation(line: 346, column: 50, scope: !189)
!278 = !DILocation(line: 346, column: 5, scope: !189)
!279 = !DILocation(line: 347, column: 49, scope: !189)
!280 = !DILocation(line: 347, column: 5, scope: !189)
!281 = !DILocation(line: 348, column: 40, scope: !189)
!282 = !DILocation(line: 348, column: 5, scope: !189)
!283 = !DILocation(line: 350, column: 38, scope: !284)
!284 = distinct !DILexicalBlock(scope: !189, file: !3, line: 350, column: 9)
!285 = !DILocation(line: 350, column: 19, scope: !284)
!286 = !DILocation(line: 350, column: 72, scope: !284)
!287 = !DILocation(line: 350, column: 9, scope: !189)
!288 = !DILocation(line: 333, column: 16, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 332, column: 33)
!290 = distinct !DILexicalBlock(scope: !204, file: !3, line: 332, column: 5)
!291 = !DILocation(line: 333, column: 13, scope: !289)
!292 = !DILocation(line: 332, column: 28, scope: !290)
!293 = !DILocation(line: 332, column: 23, scope: !290)
!294 = distinct !{!294, !244, !295, !138, !139}
!295 = !DILocation(line: 334, column: 5, scope: !204)
!296 = !DILocation(line: 350, column: 84, scope: !297)
!297 = distinct !DILexicalBlock(scope: !284, file: !3, line: 350, column: 84)
!298 = !DILocation(line: 353, column: 19, scope: !299)
!299 = distinct !DILexicalBlock(scope: !189, file: !3, line: 353, column: 9)
!300 = !DILocation(line: 353, column: 53, scope: !299)
!301 = !DILocation(line: 353, column: 9, scope: !189)
!302 = !DILocation(line: 353, column: 65, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 353, column: 65)
!304 = !DILocation(line: 356, column: 5, scope: !189)
!305 = !DILocation(line: 359, column: 1, scope: !189)
!306 = !DILocation(line: 358, column: 5, scope: !189)
!307 = !DISubprogram(name: "PAPI_library_init", scope: !149, file: !149, line: 1172, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!308 = !DISubprogram(name: "PAPI_create_eventset", scope: !149, file: !149, line: 1147, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!309 = !DISubroutineType(types: !310)
!310 = !{!6, !5}
!311 = !DISubprogram(name: "PAPI_add_events", scope: !149, file: !149, line: 1143, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
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
!325 = !DISubprogram(name: "PAPI_remove_events", scope: !149, file: !149, line: 1192, type: !312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!326 = !DISubprogram(name: "PAPI_destroy_eventset", scope: !149, file: !149, line: 1149, type: !309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!327 = !DISubprogram(name: "PAPI_shutdown", scope: !149, file: !149, line: 1202, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !82)
!328 = !DISubroutineType(types: !329)
!329 = !{null}
