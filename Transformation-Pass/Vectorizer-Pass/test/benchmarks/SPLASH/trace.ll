; ModuleID = 'trace.c'
source_filename = "trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { [4 x double], [4 x double], [4 x [4 x double]], [4 x [4 x double]], [4 x [4 x double]], [3 x double], i64, double, [3 x double], i64, i64 }
%struct.display = type { i64, i64, i64, i64, double, i64, i64, i64, double, double, double, double, double, double, double, double, ptr }
%struct.rayjob = type { i64, i64, i64, i64, i64, i64 }
%struct.ray = type { i64, i64, i64, [3 x double], [3 x double], i64, ptr, i64, [3 x i64], [5 x %struct.rayinfo], float, float }
%struct.rayinfo = type { ptr, [3 x double], i64, double, i64, double, [3 x double], [3 x i64], i64, [3 x i64], ptr }
%struct.gmem = type { i64, i64, i64, ptr, ptr, ptr, [4096 x [256 x ptr]], %struct.anon, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, [4096 x %union.pthread_mutex_t], i64, [4096 x i64] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.irecord = type { double, ptr, double, double, double }
%struct.element = type { i64, ptr, ptr, %struct.bbox }
%struct.bbox = type { [3 x double], [3 x double] }
%struct.object = type { i64, [32 x i8], %struct.bbox, ptr, i64, ptr, ptr, ptr }
%struct.pprocs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@frand.lLastRand = internal unnamed_addr global i64 0, align 8, !dbg !0
@View = external local_unnamed_addr global %struct.view, align 8
@Display = external local_unnamed_addr global %struct.display, align 8
@NumSubRays = external local_unnamed_addr global i64, align 8
@gm = external local_unnamed_addr global ptr, align 8
@AntiAlias = external local_unnamed_addr global i64, align 8
@TraversalType = external local_unnamed_addr global i64, align 8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local double @frand() local_unnamed_addr #0 !dbg !2 {
entry:
  %0 = load i64, ptr @frand.lLastRand, align 8, !dbg !24
  %mul = mul nsw i64 %0, 214013, !dbg !25
  %add = add nsw i64 %mul, 2531011, !dbg !26
  store i64 %add, ptr @frand.lLastRand, align 8, !dbg !27
  %1 = lshr i64 %add, 16, !dbg !28
  %and = and i64 %1, 32767, !dbg !29
  %conv = sitofp i64 %and to double, !dbg !30
  %div = fmul double %conv, 0x3F00000000000000, !dbg !31
  call void @llvm.dbg.value(metadata double %div, metadata !15, metadata !DIExpression()), !dbg !32
  ret double %div, !dbg !33
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local i64 @GetRayJobFromBundle(ptr nocapture noundef %job, ptr nocapture noundef writeonly %x, ptr nocapture noundef writeonly %y) local_unnamed_addr #3 !dbg !34 {
entry:
  call void @llvm.dbg.value(metadata ptr %job, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata ptr %x, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata ptr %y, metadata !53, metadata !DIExpression()), !dbg !54
  %xcurr = getelementptr inbounds %struct.rayjob, ptr %job, i64 0, i32 4, !dbg !55
  %0 = load i64, ptr %xcurr, align 8, !dbg !55
  store i64 %0, ptr %x, align 8, !dbg !56
  %ycurr = getelementptr inbounds %struct.rayjob, ptr %job, i64 0, i32 5, !dbg !57
  %1 = load i64, ptr %ycurr, align 8, !dbg !57
  store i64 %1, ptr %y, align 8, !dbg !58
  %y1 = getelementptr inbounds %struct.rayjob, ptr %job, i64 0, i32 1, !dbg !59
  %2 = load i64, ptr %y1, align 8, !dbg !59
  %ylen = getelementptr inbounds %struct.rayjob, ptr %job, i64 0, i32 3, !dbg !61
  %3 = load i64, ptr %ylen, align 8, !dbg !61
  %add = add nsw i64 %3, %2, !dbg !62
  %4 = load i64, ptr %ycurr, align 8, !dbg !63
  %cmp = icmp eq i64 %add, %4, !dbg !64
  br i1 %cmp, label %return, label %if.end, !dbg !65

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %xcurr, align 8, !dbg !66
  %inc = add nsw i64 %5, 1, !dbg !66
  store i64 %inc, ptr %xcurr, align 8, !dbg !66
  %6 = load i64, ptr %job, align 8, !dbg !67
  %xlen = getelementptr inbounds %struct.rayjob, ptr %job, i64 0, i32 2, !dbg !69
  %7 = load i64, ptr %xlen, align 8, !dbg !69
  %add5 = add nsw i64 %7, %6, !dbg !70
  %cmp7 = icmp eq i64 %add5, %inc, !dbg !71
  br i1 %cmp7, label %if.then8, label %return, !dbg !72

if.then8:                                         ; preds = %if.end
  store i64 %6, ptr %xcurr, align 8, !dbg !73
  %inc12 = add nsw i64 %4, 1, !dbg !75
  store i64 %inc12, ptr %ycurr, align 8, !dbg !75
  br label %return, !dbg !76

return:                                           ; preds = %if.end, %if.then8, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 1, %if.then8 ], [ 1, %if.end ], !dbg !54
  ret i64 %retval.0, !dbg !77
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ConvertPrimRayJobToRayMsg(ptr nocapture noundef writeonly %ray, double noundef %x, double noundef %y) local_unnamed_addr #4 !dbg !78 {
entry:
  %dir = alloca [4 x double], align 16
  %origin = alloca [4 x double], align 16
  call void @llvm.dbg.value(metadata ptr %ray, metadata !240, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %x, metadata !241, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double %y, metadata !242, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dir) #9, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %dir, metadata !243, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %origin) #9, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %origin, metadata !248, metadata !DIExpression()), !dbg !253
  %0 = load i64, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 6), align 8, !dbg !254
  %cmp = icmp eq i64 %0, 0, !dbg !256
  br i1 %cmp, label %if.then, label %if.else, !dbg !257

if.then:                                          ; preds = %entry
  %1 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 12), align 8, !dbg !258
  %fneg = fneg double %1, !dbg !260
  %2 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 14), align 8, !dbg !261
  %3 = tail call double @llvm.fmuladd.f64(double %x, double %2, double %fneg), !dbg !262
  store double %3, ptr %dir, align 16, !dbg !263
  %4 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 13), align 8, !dbg !264
  %5 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 15), align 8, !dbg !265
  %neg = fneg double %y, !dbg !266
  %6 = tail call double @llvm.fmuladd.f64(double %neg, double %5, double %4), !dbg !266
  %arrayidx1 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 1, !dbg !267
  store double %6, ptr %arrayidx1, align 8, !dbg !268
  %7 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 9), align 8, !dbg !269
  %arrayidx2 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 2, !dbg !270
  store double %7, ptr %arrayidx2, align 16, !dbg !271
  %arrayidx3 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 3, !dbg !272
  store double 0.000000e+00, ptr %arrayidx3, align 8, !dbg !273
  call void @TransformViewRay(ptr noundef nonnull %dir) #9, !dbg !274
  call void @VecNorm(ptr noundef nonnull %dir) #9, !dbg !275
  %8 = load double, ptr %dir, align 16, !dbg !276
  %D = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, !dbg !276
  store double %8, ptr %D, align 8, !dbg !276
  %9 = load double, ptr %arrayidx1, align 8, !dbg !276
  %arrayidx9 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 1, !dbg !276
  store double %9, ptr %arrayidx9, align 8, !dbg !276
  %10 = load double, ptr %arrayidx2, align 16, !dbg !276
  %arrayidx12 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 2, !dbg !276
  store double %10, ptr %arrayidx12, align 8, !dbg !276
  %11 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 1), align 8, !dbg !278
  %12 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 0, i64 2), align 8, !dbg !278
  br label %if.end, !dbg !280

if.else:                                          ; preds = %entry
  %arrayidx19 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 1, !dbg !281
  %arrayidx20 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 2, !dbg !283
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %dir, i8 0, i64 16, i1 false), !dbg !284
  store double 1.000000e+00, ptr %arrayidx20, align 16, !dbg !285
  %arrayidx21 = getelementptr inbounds [4 x double], ptr %dir, i64 0, i64 3, !dbg !286
  store double 0.000000e+00, ptr %arrayidx21, align 8, !dbg !287
  call void @TransformViewRay(ptr noundef nonnull %dir) #9, !dbg !288
  call void @VecNorm(ptr noundef nonnull %dir) #9, !dbg !289
  %13 = load double, ptr %dir, align 16, !dbg !290
  %D25 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, !dbg !290
  store double %13, ptr %D25, align 8, !dbg !290
  %14 = load double, ptr %arrayidx19, align 8, !dbg !290
  %arrayidx29 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 1, !dbg !290
  store double %14, ptr %arrayidx29, align 8, !dbg !290
  %15 = load double, ptr %arrayidx20, align 16, !dbg !290
  %arrayidx32 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 4, i64 2, !dbg !290
  store double %15, ptr %arrayidx32, align 8, !dbg !290
  %16 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 12), align 8, !dbg !292
  %fneg33 = fneg double %16, !dbg !293
  %17 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 14), align 8, !dbg !294
  %18 = call double @llvm.fmuladd.f64(double %x, double %17, double %fneg33), !dbg !295
  store double %18, ptr %origin, align 16, !dbg !296
  %19 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 13), align 8, !dbg !297
  %20 = load double, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 15), align 8, !dbg !298
  %neg35 = fneg double %y, !dbg !299
  %21 = call double @llvm.fmuladd.f64(double %neg35, double %20, double %19), !dbg !299
  %arrayidx36 = getelementptr inbounds [4 x double], ptr %origin, i64 0, i64 1, !dbg !300
  store double %21, ptr %arrayidx36, align 8, !dbg !301
  %arrayidx37 = getelementptr inbounds [4 x double], ptr %origin, i64 0, i64 2, !dbg !302
  store double 0.000000e+00, ptr %arrayidx37, align 16, !dbg !303
  %arrayidx38 = getelementptr inbounds [4 x double], ptr %origin, i64 0, i64 3, !dbg !304
  store double 1.000000e+00, ptr %arrayidx38, align 8, !dbg !305
  call void @TransformViewRay(ptr noundef nonnull %origin) #9, !dbg !306
  %22 = load double, ptr %arrayidx36, align 8, !dbg !307
  %23 = load double, ptr %arrayidx37, align 16, !dbg !307
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink77.in = phi ptr [ @View, %if.then ], [ %origin, %if.else ]
  %.sink76 = phi double [ %11, %if.then ], [ %22, %if.else ], !dbg !309
  %.sink = phi double [ %12, %if.then ], [ %23, %if.else ], !dbg !309
  %.sink77 = load double, ptr %.sink77.in, align 8, !dbg !309
  %24 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 3, !dbg !278
  store double %.sink77, ptr %24, align 8, !dbg !278
  %25 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 3, i64 1, !dbg !278
  store double %.sink76, ptr %25, align 8, !dbg !278
  %26 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 3, i64 2, !dbg !278
  store double %.sink, ptr %26, align 8, !dbg !278
  %level = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 5, !dbg !310
  store i64 0, ptr %level, align 8, !dbg !311
  %27 = load i64, ptr @NumSubRays, align 8, !dbg !312
  %conv = sitofp i64 %27 to double, !dbg !313
  %div = fdiv double 1.000000e+00, %conv, !dbg !314
  %conv49 = fptrunc double %div to float, !dbg !315
  %weight = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 10, !dbg !316
  store float %conv49, ptr %weight, align 8, !dbg !317
  %28 = load ptr, ptr @gm, align 8, !dbg !318
  %ridlock = getelementptr inbounds %struct.gmem, ptr %28, i64 0, i32 9, !dbg !320
  %call = call i32 @pthread_mutex_lock(ptr noundef nonnull %ridlock) #9, !dbg !321
  %29 = load ptr, ptr @gm, align 8, !dbg !322
  %rid = getelementptr inbounds %struct.gmem, ptr %29, i64 0, i32 2, !dbg !323
  %30 = load i64, ptr %rid, align 8, !dbg !324
  %inc = add nsw i64 %30, 1, !dbg !324
  store i64 %inc, ptr %rid, align 8, !dbg !324
  store i64 %30, ptr %ray, align 8, !dbg !325
  %31 = load ptr, ptr @gm, align 8, !dbg !326
  %ridlock50 = getelementptr inbounds %struct.gmem, ptr %31, i64 0, i32 9, !dbg !328
  %call51 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %ridlock50) #9, !dbg !329
  %conv52 = fptosi double %x to i64, !dbg !330
  %x53 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 1, !dbg !331
  store i64 %conv52, ptr %x53, align 8, !dbg !332
  %conv54 = fptosi double %y to i64, !dbg !333
  %y55 = getelementptr inbounds %struct.ray, ptr %ray, i64 0, i32 2, !dbg !334
  store i64 %conv54, ptr %y55, align 8, !dbg !335
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %origin) #9, !dbg !336
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dir) #9, !dbg !336
  ret void, !dbg !336
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare !dbg !337 void @TransformViewRay(ptr noundef) local_unnamed_addr #5

declare !dbg !342 void @VecNorm(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !343 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !379 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @RayTrace(i64 noundef %pid) local_unnamed_addr #4 !dbg !380 {
entry:
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %N = alloca [3 x double], align 16
  %Ipoint = alloca [3 x double], align 16
  %c = alloca [3 x double], align 16
  %rmsg = alloca %struct.ray, align 8
  %job = alloca %struct.rayjob, align 8
  %hitrecord = alloca %struct.irecord, align 8
  call void @llvm.dbg.value(metadata i64 %pid, metadata !384, metadata !DIExpression()), !dbg !409
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x) #9, !dbg !410
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %y) #9, !dbg !410
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %N) #9, !dbg !411
  call void @llvm.dbg.declare(metadata ptr %N, metadata !390, metadata !DIExpression()), !dbg !412
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %Ipoint) #9, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %Ipoint, metadata !391, metadata !DIExpression()), !dbg !414
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #9, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %c, metadata !392, metadata !DIExpression()), !dbg !416
  call void @llvm.lifetime.start.p0(i64 888, ptr nonnull %rmsg) #9, !dbg !417
  call void @llvm.dbg.declare(metadata ptr %rmsg, metadata !394, metadata !DIExpression()), !dbg !418
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %job) #9, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %job, metadata !395, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hitrecord) #9, !dbg !421
  call void @llvm.dbg.declare(metadata ptr %hitrecord, metadata !400, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata ptr %rmsg, metadata !393, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata i64 undef, metadata !399, metadata !DIExpression()), !dbg !409
  %call121 = call i64 @GetJobs(ptr noundef nonnull %job, i64 noundef %pid) #9, !dbg !423
  %cmp.not122 = icmp eq i64 %call121, 0, !dbg !424
  br i1 %cmp.not122, label %while.end82, label %while.cond1.preheader.lr.ph, !dbg !425

while.cond1.preheader.lr.ph:                      ; preds = %entry
  %pelem = getelementptr inbounds %struct.irecord, ptr %hitrecord, i64 0, i32 1
  %P = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 3
  %D = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 4
  %arrayidx24 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 3, i64 1
  %arrayidx26 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 4, i64 1
  %arrayidx28 = getelementptr inbounds [3 x double], ptr %Ipoint, i64 0, i64 1
  %arrayidx30 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 3, i64 2
  %arrayidx32 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 4, i64 2
  %arrayidx34 = getelementptr inbounds [3 x double], ptr %Ipoint, i64 0, i64 2
  %arrayidx41 = getelementptr inbounds [3 x double], ptr %N, i64 0, i64 1
  %arrayidx45 = getelementptr inbounds [3 x double], ptr %N, i64 0, i64 2
  %arrayidx62 = getelementptr inbounds [3 x double], ptr %c, i64 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x double], ptr %c, i64 0, i64 2
  %weight = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 10
  %x78 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 1
  %y79 = getelementptr inbounds %struct.ray, ptr %rmsg, i64 0, i32 2
  br label %while.cond1.preheader, !dbg !425

while.cond.loopexit:                              ; preds = %while.cond1.loopexit, %while.cond1.preheader
  %hit.1.lcssa = phi i64 [ %hit.0123, %while.cond1.preheader ], [ %hit.2.lcssa, %while.cond1.loopexit ]
  call void @llvm.dbg.value(metadata i64 %hit.1.lcssa, metadata !399, metadata !DIExpression()), !dbg !409
  %call = call i64 @GetJobs(ptr noundef nonnull %job, i64 noundef %pid) #9, !dbg !423
  %cmp.not = icmp eq i64 %call, 0, !dbg !424
  br i1 %cmp.not, label %while.end82, label %while.cond1.preheader, !dbg !425, !llvm.loop !426

while.cond1.preheader:                            ; preds = %while.cond1.preheader.lr.ph, %while.cond.loopexit
  %hit.0123 = phi i64 [ undef, %while.cond1.preheader.lr.ph ], [ %hit.1.lcssa, %while.cond.loopexit ]
  call void @llvm.dbg.value(metadata i64 %hit.0123, metadata !399, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata ptr %x, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !409
  call void @llvm.dbg.value(metadata ptr %y, metadata !387, metadata !DIExpression(DW_OP_deref)), !dbg !409
  %call2117 = call i64 @GetRayJobFromBundle(ptr noundef nonnull %job, ptr noundef nonnull %x, ptr noundef nonnull %y), !dbg !430
  %tobool.not118 = icmp eq i64 %call2117, 0, !dbg !432
  br i1 %tobool.not118, label %while.cond.loopexit, label %while.body3, !dbg !432

while.cond1.loopexit:                             ; preds = %if.end80, %if.end
  %hit.2.lcssa = phi i64 [ %hit.1119, %if.end ], [ %hit.3, %if.end80 ]
  call void @llvm.dbg.value(metadata i64 %hit.2.lcssa, metadata !399, metadata !DIExpression()), !dbg !409
  call void @llvm.dbg.value(metadata ptr %x, metadata !386, metadata !DIExpression(DW_OP_deref)), !dbg !409
  call void @llvm.dbg.value(metadata ptr %y, metadata !387, metadata !DIExpression(DW_OP_deref)), !dbg !409
  %call2 = call i64 @GetRayJobFromBundle(ptr noundef nonnull %job, ptr noundef nonnull %x, ptr noundef nonnull %y), !dbg !430
  %tobool.not = icmp eq i64 %call2, 0, !dbg !432
  br i1 %tobool.not, label %while.cond.loopexit, label %while.body3, !dbg !432, !llvm.loop !433

while.body3:                                      ; preds = %while.cond1.preheader, %while.cond1.loopexit
  %hit.1119 = phi i64 [ %hit.2.lcssa, %while.cond1.loopexit ], [ %hit.0123, %while.cond1.preheader ]
  call void @llvm.dbg.value(metadata i64 %hit.1119, metadata !399, metadata !DIExpression()), !dbg !409
  %0 = load i64, ptr %x, align 8, !dbg !435
  call void @llvm.dbg.value(metadata i64 %0, metadata !386, metadata !DIExpression()), !dbg !409
  %conv = sitofp i64 %0 to double, !dbg !437
  call void @llvm.dbg.value(metadata double %conv, metadata !388, metadata !DIExpression()), !dbg !409
  %1 = load i64, ptr %y, align 8, !dbg !438
  call void @llvm.dbg.value(metadata i64 %1, metadata !387, metadata !DIExpression()), !dbg !409
  %conv4 = sitofp i64 %1 to double, !dbg !439
  call void @llvm.dbg.value(metadata double %conv4, metadata !389, metadata !DIExpression()), !dbg !409
  %2 = load i64, ptr @AntiAlias, align 8, !dbg !440
  %tobool5.not = icmp eq i64 %2, 0, !dbg !440
  br i1 %tobool5.not, label %if.else, label %for.cond.preheader, !dbg !442

for.cond.preheader:                               ; preds = %while.body3
  call void @llvm.dbg.value(metadata i64 0, metadata !385, metadata !DIExpression()), !dbg !409
  %3 = load i64, ptr @NumSubRays, align 8, !dbg !443
  %cmp6112 = icmp sgt i64 %3, 0, !dbg !446
  br i1 %cmp6112, label %for.body, label %if.end, !dbg !447

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %j.0113 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.0113, metadata !385, metadata !DIExpression()), !dbg !409
  %call8 = call double @frand(), !dbg !448
  %add = fadd double %call8, %conv, !dbg !450
  %call9 = call double @frand(), !dbg !451
  %add10 = fadd double %call9, %conv4, !dbg !452
  call void @ConvertPrimRayJobToRayMsg(ptr noundef nonnull %rmsg, double noundef %add, double noundef %add10), !dbg !453
  call void @PushRayTreeStack(ptr noundef nonnull %rmsg, i64 noundef %pid) #9, !dbg !454
  %inc = add nuw nsw i64 %j.0113, 1, !dbg !455
  call void @llvm.dbg.value(metadata i64 %inc, metadata !385, metadata !DIExpression()), !dbg !409
  %4 = load i64, ptr @NumSubRays, align 8, !dbg !443
  %cmp6 = icmp slt i64 %inc, %4, !dbg !446
  br i1 %cmp6, label %for.body, label %if.end, !dbg !447, !llvm.loop !456

if.else:                                          ; preds = %while.body3
  call void @ConvertPrimRayJobToRayMsg(ptr noundef nonnull %rmsg, double noundef %conv, double noundef %conv4), !dbg !458
  call void @PushRayTreeStack(ptr noundef nonnull %rmsg, i64 noundef %pid) #9, !dbg !460
  br label %if.end

if.end:                                           ; preds = %for.body, %for.cond.preheader, %if.else
  call void @llvm.dbg.value(metadata i64 %hit.1119, metadata !399, metadata !DIExpression()), !dbg !409
  %call12114 = call i64 @PopRayTreeStack(ptr noundef nonnull %rmsg, i64 noundef %pid) #9, !dbg !461
  %cmp13.not115 = icmp eq i64 %call12114, 0, !dbg !462
  br i1 %cmp13.not115, label %while.cond1.loopexit, label %while.body15, !dbg !463

while.body15:                                     ; preds = %if.end, %if.end80
  %hit.2116 = phi i64 [ %hit.3, %if.end80 ], [ %hit.1119, %if.end ]
  call void @llvm.dbg.value(metadata i64 %hit.2116, metadata !399, metadata !DIExpression()), !dbg !409
  %5 = load i64, ptr @TraversalType, align 8, !dbg !464
  switch i64 %5, label %sw.epilog [
    i64 0, label %sw.bb
    i64 1, label %sw.bb17
  ], !dbg !466

sw.bb:                                            ; preds = %while.body15
  %call16 = call i64 @Intersect(ptr noundef nonnull %rmsg, ptr noundef nonnull %hitrecord) #9, !dbg !467
  call void @llvm.dbg.value(metadata i64 %call16, metadata !399, metadata !DIExpression()), !dbg !409
  br label %sw.epilog, !dbg !469

sw.bb17:                                          ; preds = %while.body15
  %call18 = call i64 @TraverseHierarchyUniform(ptr noundef nonnull %rmsg, ptr noundef nonnull %hitrecord, i64 noundef %pid) #9, !dbg !470
  call void @llvm.dbg.value(metadata i64 %call18, metadata !399, metadata !DIExpression()), !dbg !409
  br label %sw.epilog, !dbg !471

sw.epilog:                                        ; preds = %while.body15, %sw.bb17, %sw.bb
  %hit.3 = phi i64 [ %hit.2116, %while.body15 ], [ %call18, %sw.bb17 ], [ %call16, %sw.bb ]
  call void @llvm.dbg.value(metadata i64 %hit.3, metadata !399, metadata !DIExpression()), !dbg !409
  %tobool19.not = icmp eq i64 %hit.3, 0, !dbg !472
  br i1 %tobool19.not, label %if.else60, label %if.then20, !dbg !474

if.then20:                                        ; preds = %sw.epilog
  %6 = load ptr, ptr %pelem, align 8, !dbg !475
  %parent = getelementptr inbounds %struct.element, ptr %6, i64 0, i32 1, !dbg !477
  %7 = load ptr, ptr %parent, align 8, !dbg !477
  call void @llvm.dbg.value(metadata ptr %7, metadata !396, metadata !DIExpression()), !dbg !409
  %8 = load double, ptr %P, align 8, !dbg !478
  %9 = load double, ptr %D, align 8, !dbg !478
  %10 = load double, ptr %hitrecord, align 8, !dbg !478
  %11 = call double @llvm.fmuladd.f64(double %9, double %10, double %8), !dbg !478
  store double %11, ptr %Ipoint, align 16, !dbg !478
  %12 = load double, ptr %arrayidx24, align 8, !dbg !478
  %13 = load double, ptr %arrayidx26, align 8, !dbg !478
  %14 = call double @llvm.fmuladd.f64(double %13, double %10, double %12), !dbg !478
  store double %14, ptr %arrayidx28, align 8, !dbg !478
  %15 = load double, ptr %arrayidx30, align 8, !dbg !478
  %16 = load double, ptr %arrayidx32, align 8, !dbg !478
  %17 = call double @llvm.fmuladd.f64(double %16, double %10, double %15), !dbg !478
  store double %17, ptr %arrayidx34, align 16, !dbg !478
  %procs = getelementptr inbounds %struct.object, ptr %7, i64 0, i32 5, !dbg !480
  %18 = load ptr, ptr %procs, align 8, !dbg !480
  %normal = getelementptr inbounds %struct.pprocs, ptr %18, i64 0, i32 7, !dbg !481
  %19 = load ptr, ptr %normal, align 8, !dbg !481
  call void (ptr, ptr, ptr, ...) %19(ptr noundef nonnull %hitrecord, ptr noundef nonnull %Ipoint, ptr noundef nonnull %N) #9, !dbg !482
  %20 = load double, ptr %D, align 8, !dbg !483
  %21 = load double, ptr %N, align 16, !dbg !483
  %22 = load double, ptr %arrayidx26, align 8, !dbg !483
  %23 = load double, ptr %arrayidx41, align 8, !dbg !483
  %mul42 = fmul double %22, %23, !dbg !483
  %24 = call double @llvm.fmuladd.f64(double %20, double %21, double %mul42), !dbg !483
  %25 = load double, ptr %arrayidx32, align 8, !dbg !483
  %26 = load double, ptr %arrayidx45, align 16, !dbg !483
  %27 = call double @llvm.fmuladd.f64(double %25, double %26, double %24), !dbg !483
  %cmp46 = fcmp ogt double %27, 0.000000e+00, !dbg !485
  br i1 %cmp46, label %if.then48, label %if.end57, !dbg !486

if.then48:                                        ; preds = %if.then20
  %fneg = fneg double %21, !dbg !487
  store double %fneg, ptr %N, align 16, !dbg !487
  %fneg52 = fneg double %23, !dbg !487
  store double %fneg52, ptr %arrayidx41, align 8, !dbg !487
  %fneg55 = fneg double %26, !dbg !487
  store double %fneg55, ptr %arrayidx45, align 16, !dbg !487
  br label %if.end57, !dbg !487

if.end57:                                         ; preds = %if.then48, %if.then20
  call void @Shade(ptr noundef nonnull %Ipoint, ptr noundef nonnull %N, ptr noundef nonnull %rmsg, ptr noundef nonnull %hitrecord, i64 noundef %pid) #9, !dbg !489
  br label %if.end80, !dbg !490

if.else60:                                        ; preds = %sw.epilog
  %28 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5), align 8, !dbg !491
  %29 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 1), align 8, !dbg !491
  %30 = load double, ptr getelementptr inbounds (%struct.view, ptr @View, i64 0, i32 5, i64 2), align 8, !dbg !491
  %31 = load float, ptr %weight, align 8, !dbg !494
  %conv64 = fpext float %31 to double, !dbg !494
  %mul = fmul double %28, %conv64, !dbg !494
  store double %mul, ptr %c, align 16, !dbg !494
  %mul70 = fmul double %29, %conv64, !dbg !494
  store double %mul70, ptr %arrayidx62, align 8, !dbg !494
  %mul75 = fmul double %30, %conv64, !dbg !494
  store double %mul75, ptr %arrayidx63, align 16, !dbg !494
  %32 = load i64, ptr %x78, align 8, !dbg !496
  %33 = load i64, ptr %y79, align 8, !dbg !497
  call void @AddPixelColor(ptr noundef nonnull %c, i64 noundef %32, i64 noundef %33) #9, !dbg !498
  br label %if.end80

if.end80:                                         ; preds = %if.else60, %if.end57
  call void @llvm.dbg.value(metadata i64 %hit.3, metadata !399, metadata !DIExpression()), !dbg !409
  %call12 = call i64 @PopRayTreeStack(ptr noundef nonnull %rmsg, i64 noundef %pid) #9, !dbg !461
  %cmp13.not = icmp eq i64 %call12, 0, !dbg !462
  br i1 %cmp13.not, label %while.cond1.loopexit, label %while.body15, !dbg !463, !llvm.loop !499

while.end82:                                      ; preds = %while.cond.loopexit, %entry
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hitrecord) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %job) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 888, ptr nonnull %rmsg) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %Ipoint) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %N) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %y) #9, !dbg !501
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x) #9, !dbg !501
  ret void, !dbg !501
}

declare !dbg !502 i64 @GetJobs(ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !505 void @PushRayTreeStack(ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !508 i64 @PopRayTreeStack(ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !511 i64 @Intersect(ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !515 i64 @TraverseHierarchyUniform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !518 void @Shade(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !521 void @AddPixelColor(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "lLastRand", scope: !2, file: !3, line: 49, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "frand", scope: !3, file: !3, line: 46, type: !4, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !14)
!3 = !DIFile(filename: "trace.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "91a53dba635c5e59bfc5997f924678e5")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !7, line: 310, baseType: !8)
!7 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!8 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !10, globals: !13, splitDebugInlining: false, nameTableKind: None)
!10 = !{!6, !11}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !7, line: 297, baseType: !12)
!12 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!13 = !{!0}
!14 = !{!15}
!15 = !DILocalVariable(name: "r", scope: !2, file: !3, line: 48, type: !6)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "LONG", file: !7, line: 301, baseType: !12)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 2}
!23 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!24 = !DILocation(line: 51, column: 14, scope: !2)
!25 = !DILocation(line: 51, column: 23, scope: !2)
!26 = !DILocation(line: 51, column: 32, scope: !2)
!27 = !DILocation(line: 51, column: 12, scope: !2)
!28 = !DILocation(line: 52, column: 25, scope: !2)
!29 = !DILocation(line: 52, column: 32, scope: !2)
!30 = !DILocation(line: 52, column: 7, scope: !2)
!31 = !DILocation(line: 52, column: 41, scope: !2)
!32 = !DILocation(line: 0, scope: !2)
!33 = !DILocation(line: 53, column: 2, scope: !2)
!34 = distinct !DISubprogram(name: "GetRayJobFromBundle", scope: !3, file: !3, line: 80, type: !35, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !50)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !39, !49, !49}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "BOOL", file: !7, line: 299, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYJOB", file: !7, line: 639, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayjob", file: !7, line: 633, size: 384, elements: !42)
!42 = !{!43, !44, !45, !46, !47, !48}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !41, file: !7, line: 635, baseType: !11, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !41, file: !7, line: 635, baseType: !11, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "xlen", scope: !41, file: !7, line: 636, baseType: !11, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ylen", scope: !41, file: !7, line: 636, baseType: !11, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "xcurr", scope: !41, file: !7, line: 637, baseType: !11, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ycurr", scope: !41, file: !7, line: 637, baseType: !11, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!50 = !{!51, !52, !53}
!51 = !DILocalVariable(name: "job", arg: 1, scope: !34, file: !3, line: 80, type: !39)
!52 = !DILocalVariable(name: "x", arg: 2, scope: !34, file: !3, line: 80, type: !49)
!53 = !DILocalVariable(name: "y", arg: 3, scope: !34, file: !3, line: 80, type: !49)
!54 = !DILocation(line: 0, scope: !34)
!55 = !DILocation(line: 82, column: 12, scope: !34)
!56 = !DILocation(line: 82, column: 5, scope: !34)
!57 = !DILocation(line: 83, column: 12, scope: !34)
!58 = !DILocation(line: 83, column: 5, scope: !34)
!59 = !DILocation(line: 85, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !34, file: !3, line: 85, column: 6)
!61 = !DILocation(line: 85, column: 21, scope: !60)
!62 = !DILocation(line: 85, column: 14, scope: !60)
!63 = !DILocation(line: 85, column: 35, scope: !60)
!64 = !DILocation(line: 85, column: 27, scope: !60)
!65 = !DILocation(line: 85, column: 6, scope: !34)
!66 = !DILocation(line: 88, column: 12, scope: !34)
!67 = !DILocation(line: 89, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !34, file: !3, line: 89, column: 6)
!69 = !DILocation(line: 89, column: 20, scope: !68)
!70 = !DILocation(line: 89, column: 14, scope: !68)
!71 = !DILocation(line: 89, column: 26, scope: !68)
!72 = !DILocation(line: 89, column: 6, scope: !34)
!73 = !DILocation(line: 91, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !3, line: 90, column: 3)
!75 = !DILocation(line: 92, column: 13, scope: !74)
!76 = !DILocation(line: 93, column: 3, scope: !74)
!77 = !DILocation(line: 96, column: 2, scope: !34)
!78 = distinct !DISubprogram(name: "ConvertPrimRayJobToRayMsg", scope: !3, file: !3, line: 128, type: !79, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !239)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !6, !6}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAY", file: !7, line: 625, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ray", file: !7, line: 611, size: 7104, elements: !84)
!84 = !{!85, !86, !87, !88, !93, !94, !95, !229, !230, !231, !235, !238}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !83, file: !7, line: 613, baseType: !16, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !83, file: !7, line: 614, baseType: !11, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !83, file: !7, line: 614, baseType: !11, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !83, file: !7, line: 615, baseType: !89, size: 192, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC3", file: !7, line: 314, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 3)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !83, file: !7, line: 616, baseType: !89, size: 192, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !83, file: !7, line: 617, baseType: !11, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ri", scope: !83, file: !7, line: 618, baseType: !96, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAYINFO", file: !7, line: 603, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rayinfo", file: !7, line: 582, size: 1216, elements: !99)
!99 = !{!100, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "grid", scope: !98, file: !7, line: 584, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRID", file: !7, line: 572, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "grid", file: !7, line: 539, size: 1152, elements: !104)
!104 = !{!105, !106, !125, !128, !192, !193, !195, !196, !197, !198, !199, !216}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !7, line: 541, baseType: !11, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "hashtable", scope: !103, file: !7, line: 542, baseType: !107, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "VOXEL", file: !7, line: 405, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "voxel", file: !7, line: 394, size: 320, elements: !111)
!111 = !{!112, !113, !114, !116, !120, !121}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !110, file: !7, line: 396, baseType: !11, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !110, file: !7, line: 397, baseType: !11, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !110, file: !7, line: 398, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cell", scope: !110, file: !7, line: 399, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !7, line: 287, baseType: !119)
!119 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "celltype", scope: !110, file: !7, line: 400, baseType: !118, size: 8, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !110, file: !7, line: 403, baseType: !122, size: 56, offset: 264)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 56, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 7)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "emptycells", scope: !103, file: !7, line: 548, baseType: !126, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !7, line: 298, baseType: !38)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "pepa", scope: !103, file: !7, line: 555, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "ELEMENT", file: !7, line: 481, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "element", file: !7, line: 474, size: 576, elements: !133)
!133 = !{!134, !135, !190, !191}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !132, file: !7, line: 476, baseType: !11, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !132, file: !7, line: 477, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object", file: !7, line: 488, size: 1024, elements: !138)
!138 = !{!139, !140, !144, !150, !151, !152, !176, !189}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !137, file: !7, line: 490, baseType: !11, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !7, line: 491, baseType: !141, size: 256, offset: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !137, file: !7, line: 492, baseType: !145, size: 384, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "BBOX", file: !7, line: 418, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bbox", file: !7, line: 413, size: 384, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "dnear", scope: !146, file: !7, line: 415, baseType: !90, size: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "dfar", scope: !146, file: !7, line: 416, baseType: !90, size: 192, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !137, file: !7, line: 493, baseType: !130, size: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "numelements", scope: !137, file: !7, line: 494, baseType: !11, size: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !137, file: !7, line: 495, baseType: !153, size: 64, offset: 832)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "PPROCS", file: !7, line: 340, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pprocs", file: !7, line: 327, size: 640, elements: !156)
!156 = !{!157, !161, !165, !166, !167, !168, !172, !173, !174, !175}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !155, file: !7, line: 329, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!117, null}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "print", scope: !155, file: !7, line: 330, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, null}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !155, file: !7, line: 331, baseType: !162, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "binread", scope: !155, file: !7, line: 332, baseType: !162, size: 64, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "transform", scope: !155, file: !7, line: 333, baseType: !162, size: 64, offset: 256)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "intersect", scope: !155, file: !7, line: 334, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!11, null}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "pe_intersect", scope: !155, file: !7, line: 335, baseType: !169, size: 64, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "normal", scope: !155, file: !7, line: 336, baseType: !162, size: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "normalize", scope: !155, file: !7, line: 337, baseType: !162, size: 64, offset: 512)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !155, file: !7, line: 338, baseType: !162, size: 64, offset: 576)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "surf", scope: !137, file: !7, line: 496, baseType: !177, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "SURF", file: !7, line: 357, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "surf", file: !7, line: 347, size: 704, elements: !180)
!180 = !{!181, !183, !184, !185, !186, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "fcolor", scope: !179, file: !7, line: 349, baseType: !182, size: 192)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLOR", file: !7, line: 319, baseType: !89)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "bcolor", scope: !179, file: !7, line: 350, baseType: !182, size: 192, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kdiff", scope: !179, file: !7, line: 351, baseType: !6, size: 64, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "kspec", scope: !179, file: !7, line: 352, baseType: !6, size: 64, offset: 448)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ktran", scope: !179, file: !7, line: 353, baseType: !6, size: 64, offset: 512)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "refrindex", scope: !179, file: !7, line: 354, baseType: !6, size: 64, offset: 576)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kspecn", scope: !179, file: !7, line: 355, baseType: !6, size: 64, offset: 640)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !137, file: !7, line: 497, baseType: !136, size: 64, offset: 960)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !132, file: !7, line: 478, baseType: !117, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "bv", scope: !132, file: !7, line: 479, baseType: !145, size: 384, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "num_prims", scope: !103, file: !7, line: 556, baseType: !11, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc", scope: !103, file: !7, line: 558, baseType: !194, size: 192, offset: 320)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !91)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "num_buckets", scope: !103, file: !7, line: 562, baseType: !11, size: 64, offset: 512)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !103, file: !7, line: 563, baseType: !90, size: 192, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "cellsize", scope: !103, file: !7, line: 564, baseType: !90, size: 192, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "subdiv_level", scope: !103, file: !7, line: 566, baseType: !11, size: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bintree", scope: !103, file: !7, line: 569, baseType: !200, size: 64, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "BTNODE", file: !7, line: 535, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "btnode", file: !7, line: 522, size: 960, elements: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !202, file: !7, line: 524, baseType: !129, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !202, file: !7, line: 525, baseType: !90, size: 192, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "nprims", scope: !202, file: !7, line: 527, baseType: !11, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !202, file: !7, line: 528, baseType: !194, size: 192, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !202, file: !7, line: 529, baseType: !194, size: 192, offset: 512)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "axis", scope: !202, file: !7, line: 531, baseType: !11, size: 64, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "totalPrimsAllocated", scope: !202, file: !7, line: 532, baseType: !11, size: 64, offset: 768)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !202, file: !7, line: 533, baseType: !212, size: 128, offset: 832)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 128, elements: !214)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!214 = !{!215}
!215 = !DISubrange(count: 2)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !7, line: 570, baseType: !217, size: 64, offset: 1088)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !98, file: !7, line: 585, baseType: !90, size: 192, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "entry_plane", scope: !98, file: !7, line: 587, baseType: !11, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "t_in", scope: !98, file: !7, line: 589, baseType: !6, size: 64, offset: 320)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "exit_plane", scope: !98, file: !7, line: 591, baseType: !11, size: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "t_out", scope: !98, file: !7, line: 593, baseType: !6, size: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "delta", scope: !98, file: !7, line: 595, baseType: !90, size: 192, offset: 512)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "index3D", scope: !98, file: !7, line: 596, baseType: !194, size: 192, offset: 704)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "index1D", scope: !98, file: !7, line: 597, baseType: !11, size: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc1D", scope: !98, file: !7, line: 600, baseType: !194, size: 192, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !7, line: 601, baseType: !228, size: 64, offset: 1152)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ri_indx", scope: !83, file: !7, line: 619, baseType: !11, size: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "indx_inc3D", scope: !83, file: !7, line: 620, baseType: !194, size: 192, offset: 768)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rinfo", scope: !83, file: !7, line: 621, baseType: !232, size: 6080, offset: 960)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 6080, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 5)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !83, file: !7, line: 622, baseType: !236, size: 32, offset: 7040)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !7, line: 307, baseType: !237)
!237 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !83, file: !7, line: 623, baseType: !236, size: 32, offset: 7072)
!239 = !{!240, !241, !242, !243, !248}
!240 = !DILocalVariable(name: "ray", arg: 1, scope: !78, file: !3, line: 128, type: !81)
!241 = !DILocalVariable(name: "x", arg: 2, scope: !78, file: !3, line: 128, type: !6)
!242 = !DILocalVariable(name: "y", arg: 3, scope: !78, file: !3, line: 128, type: !6)
!243 = !DILocalVariable(name: "dir", scope: !78, file: !3, line: 130, type: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC4", file: !7, line: 315, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 4)
!248 = !DILocalVariable(name: "origin", scope: !78, file: !3, line: 131, type: !244)
!249 = !DILocation(line: 0, scope: !78)
!250 = !DILocation(line: 130, column: 2, scope: !78)
!251 = !DILocation(line: 130, column: 7, scope: !78)
!252 = !DILocation(line: 131, column: 2, scope: !78)
!253 = !DILocation(line: 131, column: 7, scope: !78)
!254 = !DILocation(line: 133, column: 11, scope: !255)
!255 = distinct !DILexicalBlock(scope: !78, file: !3, line: 133, column: 6)
!256 = !DILocation(line: 133, column: 22, scope: !255)
!257 = !DILocation(line: 133, column: 6, scope: !78)
!258 = !DILocation(line: 135, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !255, file: !3, line: 134, column: 3)
!260 = !DILocation(line: 135, column: 12, scope: !259)
!261 = !DILocation(line: 135, column: 47, scope: !259)
!262 = !DILocation(line: 135, column: 34, scope: !259)
!263 = !DILocation(line: 135, column: 10, scope: !259)
!264 = !DILocation(line: 136, column: 21, scope: !259)
!265 = !DILocation(line: 136, column: 48, scope: !259)
!266 = !DILocation(line: 136, column: 35, scope: !259)
!267 = !DILocation(line: 136, column: 3, scope: !259)
!268 = !DILocation(line: 136, column: 10, scope: !259)
!269 = !DILocation(line: 137, column: 21, scope: !259)
!270 = !DILocation(line: 137, column: 3, scope: !259)
!271 = !DILocation(line: 137, column: 10, scope: !259)
!272 = !DILocation(line: 138, column: 3, scope: !259)
!273 = !DILocation(line: 138, column: 10, scope: !259)
!274 = !DILocation(line: 141, column: 3, scope: !259)
!275 = !DILocation(line: 143, column: 3, scope: !259)
!276 = !DILocation(line: 144, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !259, file: !3, line: 144, column: 3)
!278 = !DILocation(line: 145, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !259, file: !3, line: 145, column: 3)
!280 = !DILocation(line: 146, column: 3, scope: !259)
!281 = !DILocation(line: 152, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !255, file: !3, line: 148, column: 3)
!283 = !DILocation(line: 153, column: 3, scope: !282)
!284 = !DILocation(line: 152, column: 10, scope: !282)
!285 = !DILocation(line: 153, column: 10, scope: !282)
!286 = !DILocation(line: 154, column: 3, scope: !282)
!287 = !DILocation(line: 154, column: 10, scope: !282)
!288 = !DILocation(line: 157, column: 3, scope: !282)
!289 = !DILocation(line: 158, column: 3, scope: !282)
!290 = !DILocation(line: 160, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !282, file: !3, line: 160, column: 3)
!292 = !DILocation(line: 164, column: 24, scope: !282)
!293 = !DILocation(line: 164, column: 15, scope: !282)
!294 = !DILocation(line: 164, column: 51, scope: !282)
!295 = !DILocation(line: 164, column: 38, scope: !282)
!296 = !DILocation(line: 164, column: 13, scope: !282)
!297 = !DILocation(line: 165, column: 24, scope: !282)
!298 = !DILocation(line: 165, column: 51, scope: !282)
!299 = !DILocation(line: 165, column: 38, scope: !282)
!300 = !DILocation(line: 165, column: 3, scope: !282)
!301 = !DILocation(line: 165, column: 13, scope: !282)
!302 = !DILocation(line: 166, column: 3, scope: !282)
!303 = !DILocation(line: 166, column: 13, scope: !282)
!304 = !DILocation(line: 167, column: 3, scope: !282)
!305 = !DILocation(line: 167, column: 13, scope: !282)
!306 = !DILocation(line: 171, column: 3, scope: !282)
!307 = !DILocation(line: 172, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !282, file: !3, line: 172, column: 3)
!309 = !DILocation(line: 0, scope: !255)
!310 = !DILocation(line: 178, column: 7, scope: !78)
!311 = !DILocation(line: 178, column: 14, scope: !78)
!312 = !DILocation(line: 179, column: 26, scope: !78)
!313 = !DILocation(line: 179, column: 20, scope: !78)
!314 = !DILocation(line: 179, column: 19, scope: !78)
!315 = !DILocation(line: 179, column: 16, scope: !78)
!316 = !DILocation(line: 179, column: 7, scope: !78)
!317 = !DILocation(line: 179, column: 14, scope: !78)
!318 = !DILocation(line: 181, column: 24, scope: !319)
!319 = distinct !DILexicalBlock(scope: !78, file: !3, line: 181, column: 2)
!320 = !DILocation(line: 181, column: 28, scope: !319)
!321 = !DILocation(line: 181, column: 3, scope: !319)
!322 = !DILocation(line: 182, column: 12, scope: !78)
!323 = !DILocation(line: 182, column: 16, scope: !78)
!324 = !DILocation(line: 182, column: 19, scope: !78)
!325 = !DILocation(line: 182, column: 10, scope: !78)
!326 = !DILocation(line: 183, column: 26, scope: !327)
!327 = distinct !DILexicalBlock(scope: !78, file: !3, line: 183, column: 2)
!328 = !DILocation(line: 183, column: 30, scope: !327)
!329 = !DILocation(line: 183, column: 3, scope: !327)
!330 = !DILocation(line: 185, column: 11, scope: !78)
!331 = !DILocation(line: 185, column: 7, scope: !78)
!332 = !DILocation(line: 185, column: 9, scope: !78)
!333 = !DILocation(line: 186, column: 11, scope: !78)
!334 = !DILocation(line: 186, column: 7, scope: !78)
!335 = !DILocation(line: 186, column: 9, scope: !78)
!336 = !DILocation(line: 188, column: 2, scope: !78)
!337 = !DISubprogram(name: "TransformViewRay", scope: !7, file: !7, line: 836, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!341 = !{}
!342 = !DISubprogram(name: "VecNorm", scope: !7, file: !7, line: 892, type: !338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!343 = !DISubprogram(name: "pthread_mutex_lock", scope: !344, file: !344, line: 738, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!344 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !348}
!347 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !350, line: 72, baseType: !351)
!350 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!351 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !350, line: 67, size: 320, elements: !352)
!352 = !{!353, !374, !378}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !351, file: !350, line: 69, baseType: !354, size: 320)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !355, line: 22, size: 320, elements: !356)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!356 = !{!357, !358, !360, !361, !362, !363, !365, !366}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !354, file: !355, line: 24, baseType: !347, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !354, file: !355, line: 25, baseType: !359, size: 32, offset: 32)
!359 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !354, file: !355, line: 26, baseType: !347, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !354, file: !355, line: 28, baseType: !359, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !354, file: !355, line: 32, baseType: !347, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !354, file: !355, line: 34, baseType: !364, size: 16, offset: 160)
!364 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !354, file: !355, line: 35, baseType: !364, size: 16, offset: 176)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !354, file: !355, line: 36, baseType: !367, size: 128, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !368, line: 53, baseType: !369)
!368 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !368, line: 49, size: 128, elements: !370)
!370 = !{!371, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !369, file: !368, line: 51, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !369, file: !368, line: 52, baseType: !372, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !351, file: !350, line: 70, baseType: !375, size: 320)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 40)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !351, file: !350, line: 71, baseType: !12, size: 64)
!379 = !DISubprogram(name: "pthread_mutex_unlock", scope: !344, file: !344, line: 756, type: !345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!380 = distinct !DISubprogram(name: "RayTrace", scope: !3, file: !3, line: 221, type: !381, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !11}
!383 = !{!384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !399, !400}
!384 = !DILocalVariable(name: "pid", arg: 1, scope: !380, file: !3, line: 221, type: !11)
!385 = !DILocalVariable(name: "j", scope: !380, file: !3, line: 223, type: !11)
!386 = !DILocalVariable(name: "x", scope: !380, file: !3, line: 224, type: !11)
!387 = !DILocalVariable(name: "y", scope: !380, file: !3, line: 224, type: !11)
!388 = !DILocalVariable(name: "xx", scope: !380, file: !3, line: 225, type: !6)
!389 = !DILocalVariable(name: "yy", scope: !380, file: !3, line: 225, type: !6)
!390 = !DILocalVariable(name: "N", scope: !380, file: !3, line: 226, type: !89)
!391 = !DILocalVariable(name: "Ipoint", scope: !380, file: !3, line: 227, type: !89)
!392 = !DILocalVariable(name: "c", scope: !380, file: !3, line: 228, type: !182)
!393 = !DILocalVariable(name: "ray", scope: !380, file: !3, line: 229, type: !81)
!394 = !DILocalVariable(name: "rmsg", scope: !380, file: !3, line: 230, type: !82)
!395 = !DILocalVariable(name: "job", scope: !380, file: !3, line: 231, type: !40)
!396 = !DILocalVariable(name: "po", scope: !380, file: !3, line: 232, type: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "OBJECT", file: !7, line: 499, baseType: !137)
!399 = !DILocalVariable(name: "hit", scope: !380, file: !3, line: 233, type: !37)
!400 = !DILocalVariable(name: "hitrecord", scope: !380, file: !3, line: 234, type: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRECORD", file: !7, line: 514, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irecord", file: !7, line: 506, size: 320, elements: !403)
!403 = !{!404, !405, !406, !407, !408}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "t", scope: !402, file: !7, line: 508, baseType: !6, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pelem", scope: !402, file: !7, line: 509, baseType: !130, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "b1", scope: !402, file: !7, line: 510, baseType: !6, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "b2", scope: !402, file: !7, line: 511, baseType: !6, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "b3", scope: !402, file: !7, line: 512, baseType: !6, size: 64, offset: 256)
!409 = !DILocation(line: 0, scope: !380)
!410 = !DILocation(line: 224, column: 2, scope: !380)
!411 = !DILocation(line: 226, column: 2, scope: !380)
!412 = !DILocation(line: 226, column: 7, scope: !380)
!413 = !DILocation(line: 227, column: 2, scope: !380)
!414 = !DILocation(line: 227, column: 7, scope: !380)
!415 = !DILocation(line: 228, column: 2, scope: !380)
!416 = !DILocation(line: 228, column: 8, scope: !380)
!417 = !DILocation(line: 230, column: 2, scope: !380)
!418 = !DILocation(line: 230, column: 6, scope: !380)
!419 = !DILocation(line: 231, column: 2, scope: !380)
!420 = !DILocation(line: 231, column: 9, scope: !380)
!421 = !DILocation(line: 234, column: 2, scope: !380)
!422 = !DILocation(line: 234, column: 10, scope: !380)
!423 = !DILocation(line: 238, column: 9, scope: !380)
!424 = !DILocation(line: 238, column: 28, scope: !380)
!425 = !DILocation(line: 238, column: 2, scope: !380)
!426 = distinct !{!426, !425, !427, !428, !429}
!427 = !DILocation(line: 313, column: 3, scope: !380)
!428 = !{!"llvm.loop.mustprogress"}
!429 = !{!"llvm.loop.unroll.disable"}
!430 = !DILocation(line: 240, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !380, file: !3, line: 239, column: 3)
!432 = !DILocation(line: 240, column: 3, scope: !431)
!433 = distinct !{!433, !432, !434, !428, !429}
!434 = !DILocation(line: 312, column: 4, scope: !431)
!435 = !DILocation(line: 244, column: 15, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !3, line: 241, column: 4)
!437 = !DILocation(line: 244, column: 9, scope: !436)
!438 = !DILocation(line: 245, column: 15, scope: !436)
!439 = !DILocation(line: 245, column: 9, scope: !436)
!440 = !DILocation(line: 247, column: 8, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 247, column: 8)
!442 = !DILocation(line: 247, column: 8, scope: !436)
!443 = !DILocation(line: 248, column: 21, scope: !444)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 248, column: 5)
!445 = distinct !DILexicalBlock(scope: !441, file: !3, line: 248, column: 5)
!446 = !DILocation(line: 248, column: 19, scope: !444)
!447 = !DILocation(line: 248, column: 5, scope: !445)
!448 = !DILocation(line: 250, column: 42, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 249, column: 6)
!450 = !DILocation(line: 250, column: 40, scope: !449)
!451 = !DILocation(line: 250, column: 56, scope: !449)
!452 = !DILocation(line: 250, column: 54, scope: !449)
!453 = !DILocation(line: 250, column: 6, scope: !449)
!454 = !DILocation(line: 251, column: 6, scope: !449)
!455 = !DILocation(line: 248, column: 34, scope: !444)
!456 = distinct !{!456, !447, !457, !428, !429}
!457 = !DILocation(line: 252, column: 6, scope: !445)
!458 = !DILocation(line: 255, column: 5, scope: !459)
!459 = distinct !DILexicalBlock(scope: !441, file: !3, line: 254, column: 5)
!460 = !DILocation(line: 256, column: 5, scope: !459)
!461 = !DILocation(line: 259, column: 11, scope: !436)
!462 = !DILocation(line: 259, column: 37, scope: !436)
!463 = !DILocation(line: 259, column: 4, scope: !436)
!464 = !DILocation(line: 263, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !436, file: !3, line: 260, column: 5)
!466 = !DILocation(line: 263, column: 5, scope: !465)
!467 = !DILocation(line: 266, column: 13, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 264, column: 6)
!469 = !DILocation(line: 267, column: 7, scope: !468)
!470 = !DILocation(line: 270, column: 13, scope: !468)
!471 = !DILocation(line: 271, column: 7, scope: !468)
!472 = !DILocation(line: 276, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !465, file: !3, line: 276, column: 9)
!474 = !DILocation(line: 276, column: 9, scope: !465)
!475 = !DILocation(line: 283, column: 21, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 277, column: 6)
!477 = !DILocation(line: 283, column: 28, scope: !476)
!478 = !DILocation(line: 286, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !3, line: 286, column: 6)
!480 = !DILocation(line: 289, column: 12, scope: !476)
!481 = !DILocation(line: 289, column: 19, scope: !476)
!482 = !DILocation(line: 289, column: 6, scope: !476)
!483 = !DILocation(line: 292, column: 11, scope: !484)
!484 = distinct !DILexicalBlock(scope: !476, file: !3, line: 292, column: 10)
!485 = !DILocation(line: 292, column: 30, scope: !484)
!486 = !DILocation(line: 292, column: 10, scope: !476)
!487 = !DILocation(line: 293, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !3, line: 293, column: 7)
!489 = !DILocation(line: 301, column: 6, scope: !476)
!490 = !DILocation(line: 302, column: 6, scope: !476)
!491 = !DILocation(line: 307, column: 6, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 307, column: 6)
!493 = distinct !DILexicalBlock(scope: !473, file: !3, line: 304, column: 6)
!494 = !DILocation(line: 308, column: 6, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 308, column: 6)
!496 = !DILocation(line: 309, column: 28, scope: !493)
!497 = !DILocation(line: 309, column: 36, scope: !493)
!498 = !DILocation(line: 309, column: 6, scope: !493)
!499 = distinct !{!499, !463, !500, !428, !429}
!500 = !DILocation(line: 311, column: 5, scope: !436)
!501 = !DILocation(line: 314, column: 2, scope: !380)
!502 = !DISubprogram(name: "GetJobs", scope: !7, file: !7, line: 979, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!503 = !DISubroutineType(types: !504)
!504 = !{!11, !39, !11}
!505 = !DISubprogram(name: "PushRayTreeStack", scope: !7, file: !7, line: 938, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !81, !11}
!508 = !DISubprogram(name: "PopRayTreeStack", scope: !7, file: !7, line: 939, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!509 = !DISubroutineType(types: !510)
!510 = !{!11, !81, !11}
!511 = !DISubprogram(name: "Intersect", scope: !7, file: !7, line: 883, type: !512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!512 = !DISubroutineType(types: !513)
!513 = !{!37, !81, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!515 = !DISubprogram(name: "TraverseHierarchyUniform", scope: !7, file: !7, line: 867, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!516 = !DISubroutineType(types: !517)
!517 = !{!37, !81, !514, !11}
!518 = !DISubprogram(name: "Shade", scope: !7, file: !7, line: 944, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !340, !340, !81, !514, !11}
!521 = !DISubprogram(name: "AddPixelColor", scope: !7, file: !7, line: 844, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !341)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !340, !11, !11}
