; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/policy.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._PolicyInfo = type { ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, ptr, i64 }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }

@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/policy.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@policy_cache = internal unnamed_addr global ptr null, align 8, !dbg !0
@policy_semaphore = internal global ptr null, align 8, !dbg !360
@.str.4 = private unnamed_addr constant [40 x i8] c"Domain: %s; rights=%s; pattern=\22%s\22 ...\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"\0APath: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"  Policy: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"    name: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"    value: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"    rights: \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"None \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Read \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Write \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Execute \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"    pattern: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"policy.xml\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Loading policy file \22%s\22 ...\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"IncludeElementNestedTooDeeply\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"<policy\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"rights\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"value\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_policies, ptr noundef %exception) local_unnamed_addr #0 !dbg !369 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !387, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata ptr %number_policies, metadata !388, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata ptr %exception, metadata !389, metadata !DIExpression()), !dbg !393
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 347, ptr noundef nonnull @.str.2, ptr noundef %pattern) #10, !dbg !394
  store i64 0, ptr %number_policies, align 8, !dbg !395, !tbaa !396
  %call1 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %exception), !dbg !400
  call void @llvm.dbg.value(metadata ptr %call1, metadata !391, metadata !DIExpression()), !dbg !393
  %cmp = icmp eq ptr %call1, null, !dbg !401
  br i1 %cmp, label %cleanup, label %if.end, !dbg !403

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @policy_cache, align 8, !dbg !404, !tbaa !405
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #10, !dbg !407
  %add = add i64 %call2, 1, !dbg !408
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #11, !dbg !409
  call void @llvm.dbg.value(metadata ptr %call3, metadata !390, metadata !DIExpression()), !dbg !393
  %cmp4 = icmp eq ptr %call3, null, !dbg !410
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !412

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @policy_semaphore, align 8, !dbg !413, !tbaa !405
  tail call void @LockSemaphoreInfo(ptr noundef %1) #10, !dbg !414
  %2 = load ptr, ptr @policy_cache, align 8, !dbg !415, !tbaa !405
  tail call void @ResetLinkedListIterator(ptr noundef %2) #10, !dbg !416
  %3 = load ptr, ptr @policy_cache, align 8, !dbg !417, !tbaa !405
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #10, !dbg !418
  call void @llvm.dbg.value(metadata ptr %call7, metadata !391, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i64 0, metadata !392, metadata !DIExpression()), !dbg !393
  %cmp8.not29 = icmp eq ptr %call7, null, !dbg !419
  br i1 %cmp8.not29, label %for.end, label %for.body, !dbg !422

for.body:                                         ; preds = %if.end6, %if.end13
  %i.031 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.030 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.031, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata ptr %p.030, metadata !391, metadata !DIExpression()), !dbg !393
  %stealth = getelementptr inbounds %struct._PolicyInfo, ptr %p.030, i64 0, i32 7, !dbg !423
  %4 = load i32, ptr %stealth, align 4, !dbg !423, !tbaa !426
  %cmp9 = icmp eq i32 %4, 0, !dbg !428
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !429

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._PolicyInfo, ptr %p.030, i64 0, i32 3, !dbg !430
  %5 = load ptr, ptr %name, align 8, !dbg !430, !tbaa !431
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #10, !dbg !432
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !433
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !434

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.031, 1, !dbg !435
  call void @llvm.dbg.value(metadata i64 %inc, metadata !392, metadata !DIExpression()), !dbg !393
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.031, !dbg !436
  store ptr %p.030, ptr %arrayidx, align 8, !dbg !437, !tbaa !405
  br label %if.end13, !dbg !436

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.031, %land.lhs.true ], [ %i.031, %for.body ], !dbg !438
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !392, metadata !DIExpression()), !dbg !393
  %6 = load ptr, ptr @policy_cache, align 8, !dbg !439, !tbaa !405
  %call14 = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #10, !dbg !440
  call void @llvm.dbg.value(metadata ptr %call14, metadata !391, metadata !DIExpression()), !dbg !393
  %cmp8.not = icmp eq ptr %call14, null, !dbg !419
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !422, !llvm.loop !441

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !438
  %7 = load ptr, ptr @policy_semaphore, align 8, !dbg !445, !tbaa !405
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #10, !dbg !446
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !447
  store ptr null, ptr %arrayidx15, align 8, !dbg !448, !tbaa !405
  store i64 %i.0.lcssa, ptr %number_policies, align 8, !dbg !449, !tbaa !396
  br label %cleanup, !dbg !450

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !393
  ret ptr %retval.0, !dbg !451
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !452 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @GetPolicyInfo(ptr noundef %name, ptr noundef %exception) unnamed_addr #0 !dbg !459 {
entry:
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  %policyname = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %name, metadata !463, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata ptr %exception, metadata !464, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %policyname) #10, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %policyname, metadata !465, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.value(metadata ptr %exception, metadata !471, metadata !DIExpression()) #10, !dbg !476
  %0 = load ptr, ptr @policy_cache, align 8, !dbg !479, !tbaa !405
  %cmp.i = icmp eq ptr %0, null, !dbg !481
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !482

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @policy_semaphore, align 8, !dbg !483, !tbaa !405
  %cmp1.i = icmp eq ptr %1, null, !dbg !486
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !487

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #10, !dbg !488
  %.pre.i = load ptr, ptr @policy_semaphore, align 8, !dbg !489, !tbaa !405
  br label %if.end.i, !dbg !488

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !489
  tail call void @LockSemaphoreInfo(ptr noundef %2) #10, !dbg !490
  %3 = load ptr, ptr @policy_cache, align 8, !dbg !491, !tbaa !405
  %cmp3.i = icmp eq ptr %3, null, !dbg !493
  br i1 %cmp3.i, label %if.then4.i, label %IsPolicyCacheInstantiated.exit, !dbg !494

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !495, metadata !DIExpression()) #10, !dbg !517
  call void @llvm.dbg.value(metadata ptr %exception, metadata !500, metadata !DIExpression()) #10, !dbg !517
  %call.i.i = tail call ptr @NewLinkedList(i64 noundef 0) #10, !dbg !519
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !503, metadata !DIExpression()) #10, !dbg !517
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !520
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !521

if.then.i.i:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #10, !dbg !522
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !510, metadata !DIExpression()) #10, !dbg !522
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #10, !dbg !522
  %call2.i.i = tail call ptr @__errno_location() #12, !dbg !522
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !522, !tbaa !523
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #10, !dbg !522
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !507, metadata !DIExpression()) #10, !dbg !525
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 181, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call3.i.i) #10, !dbg !522
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #10, !dbg !522
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !507, metadata !DIExpression()) #10, !dbg !525
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #10, !dbg !522
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #10, !dbg !522
  call void @MagickCoreTerminus() #10, !dbg !522
  call void @_exit(i32 noundef 1) #13, !dbg !522
  unreachable, !dbg !522

if.end.i.i:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !504, metadata !DIExpression()) #10, !dbg !517
  %call7.i.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.16, ptr noundef %exception) #10, !dbg !526
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !502, metadata !DIExpression()) #10, !dbg !517
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #10, !dbg !527
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !501, metadata !DIExpression()) #10, !dbg !517
  %cmp9.not1.i.i = icmp eq ptr %call8.i.i, null, !dbg !528
  br i1 %cmp9.not1.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !529

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.03.i.i = phi ptr [ %call13.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  %status.02.i.i = phi i32 [ %and.i.i, %while.body.i.i ], [ 1, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.03.i.i, metadata !501, metadata !DIExpression()) #10, !dbg !517
  call void @llvm.dbg.value(metadata i32 %status.02.i.i, metadata !504, metadata !DIExpression()) #10, !dbg !517
  %call10.i.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.03.i.i) #10, !dbg !530
  %call11.i.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.03.i.i) #10, !dbg !532
  %call12.i.i = tail call fastcc i32 @LoadPolicyCache(ptr noundef nonnull %call.i.i, ptr noundef %call10.i.i, ptr noundef %call11.i.i, i64 noundef 0, ptr noundef %exception) #10, !dbg !533
  %and.i.i = and i32 %call12.i.i, %status.02.i.i, !dbg !534
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !504, metadata !DIExpression()) #10, !dbg !517
  %call13.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #10, !dbg !535
  call void @llvm.dbg.value(metadata ptr %call13.i.i, metadata !501, metadata !DIExpression()) #10, !dbg !517
  %cmp9.not.i.i = icmp eq ptr %call13.i.i, null, !dbg !528
  br i1 %cmp9.not.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !529, !llvm.loop !536

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  %status.0.lcssa.i.i = phi i32 [ 1, %if.end.i.i ], [ %and.i.i, %while.body.i.i ], !dbg !517
  %call14.i.i = tail call ptr @DestroyConfigureOptions(ptr noundef %call7.i.i) #10, !dbg !538
  call void @llvm.dbg.value(metadata ptr %call14.i.i, metadata !502, metadata !DIExpression()) #10, !dbg !517
  call void @llvm.dbg.value(metadata i64 undef, metadata !506, metadata !DIExpression()) #10, !dbg !517
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa.i.i, metadata !504, metadata !DIExpression()) #10, !dbg !517
  %call16.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 72) #14, !dbg !539
  call void @llvm.dbg.value(metadata ptr %call16.i.i, metadata !511, metadata !DIExpression()) #10, !dbg !540
  %cmp17.i.i = icmp eq ptr %call16.i.i, null, !dbg !541
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !543

if.then18.i.i:                                    ; preds = %while.end.i.i
  %call19.i.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 207, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef null) #10, !dbg !544
  br label %AcquirePolicyCache.exit.i, !dbg !546

if.end20.i.i:                                     ; preds = %while.end.i.i
  %call21.i.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call16.i.i, i32 noundef 0, i64 noundef 72) #10, !dbg !547
  store ptr @.str.19, ptr %call16.i.i, align 8, !dbg !548, !tbaa !549
  %domain22.i.i = getelementptr inbounds %struct._PolicyInfo, ptr %call16.i.i, i64 0, i32 1, !dbg !550
  %exempt.i.i = getelementptr inbounds %struct._PolicyInfo, ptr %call16.i.i, i64 0, i32 6, !dbg !551
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %domain22.i.i, i8 0, i64 32, i1 false) #10, !dbg !552
  store i32 1, ptr %exempt.i.i, align 8, !dbg !553, !tbaa !554
  %signature.i.i = getelementptr inbounds %struct._PolicyInfo, ptr %call16.i.i, i64 0, i32 10, !dbg !555
  store i64 2880220587, ptr %signature.i.i, align 8, !dbg !556, !tbaa !557
  %call28.i.i = tail call i32 @AppendValueToLinkedList(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call16.i.i) #10, !dbg !558
  %and29.i.i = and i32 %call28.i.i, %status.0.lcssa.i.i, !dbg !559
  call void @llvm.dbg.value(metadata i32 %and29.i.i, metadata !504, metadata !DIExpression()) #10, !dbg !517
  %cmp30.i.i = icmp eq i32 %and29.i.i, 0, !dbg !560
  br i1 %cmp30.i.i, label %if.then31.i.i, label %AcquirePolicyCache.exit.i, !dbg !562

if.then31.i.i:                                    ; preds = %if.end20.i.i
  %name25.i.i = getelementptr inbounds %struct._PolicyInfo, ptr %call16.i.i, i64 0, i32 3, !dbg !563
  %5 = load ptr, ptr %name25.i.i, align 8, !dbg !564, !tbaa !431
  %call33.i.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 222, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %5) #10, !dbg !565
  br label %AcquirePolicyCache.exit.i, !dbg !566

AcquirePolicyCache.exit.i:                        ; preds = %if.then31.i.i, %if.end20.i.i, %if.then18.i.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !504, metadata !DIExpression()) #10, !dbg !517
  call void @llvm.dbg.value(metadata i64 undef, metadata !506, metadata !DIExpression()) #10, !dbg !517
  store ptr %call.i.i, ptr @policy_cache, align 8, !dbg !567, !tbaa !405
  br label %IsPolicyCacheInstantiated.exit, !dbg !568

IsPolicyCacheInstantiated.exit:                   ; preds = %if.end.i, %AcquirePolicyCache.exit.i
  %6 = load ptr, ptr @policy_semaphore, align 8, !dbg !569, !tbaa !405
  tail call void @UnlockSemaphoreInfo(ptr noundef %6) #10, !dbg !570
  %.pre8.i = load ptr, ptr @policy_cache, align 8, !dbg !571, !tbaa !405
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !572
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !573

if.end:                                           ; preds = %entry, %IsPolicyCacheInstantiated.exit
  store i8 0, ptr %policyname, align 16, !dbg !574, !tbaa !575
  %cmp1.not = icmp eq ptr %name, null, !dbg !576
  br i1 %cmp1.not, label %for.end, label %if.end5, !dbg !578

if.end5:                                          ; preds = %if.end
  %call4 = call i64 @CopyMagickString(ptr noundef nonnull %policyname, ptr noundef nonnull %name, i64 noundef 4096) #10, !dbg !579
  %.pre = load i8, ptr %policyname, align 16, !dbg !580, !tbaa !575
  call void @llvm.dbg.value(metadata ptr %policyname, metadata !467, metadata !DIExpression()), !dbg !468
  %cmp7.not62 = icmp eq i8 %.pre, 0, !dbg !583
  br i1 %cmp7.not62, label %for.end, label %for.body.lr.ph, !dbg !584

for.body.lr.ph:                                   ; preds = %if.end5
  %call9 = tail call ptr @__ctype_b_loc() #12, !dbg !468
  br label %for.body, !dbg !584

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %7 = phi i8 [ %.pre, %for.body.lr.ph ], [ %12, %for.inc ]
  %q.063 = phi ptr [ %policyname, %for.body.lr.ph ], [ %incdec.ptr17, %for.inc ]
  call void @llvm.dbg.value(metadata ptr %q.063, metadata !467, metadata !DIExpression()), !dbg !468
  %8 = load ptr, ptr %call9, align 8, !dbg !585, !tbaa !405
  %9 = zext i8 %7 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %9, !dbg !585
  %10 = load i16, ptr %arrayidx, align 2, !dbg !585, !tbaa !588
  %11 = and i16 %10, 8192, !dbg !585
  %cmp12 = icmp eq i16 %11, 0, !dbg !590
  br i1 %cmp12, label %for.inc, label %if.end15, !dbg !591

if.end15:                                         ; preds = %for.body
  %add.ptr = getelementptr inbounds i8, ptr %q.063, i64 1, !dbg !592
  %call16 = call i64 @CopyMagickString(ptr noundef nonnull %q.063, ptr noundef nonnull %add.ptr, i64 noundef 4096) #10, !dbg !593
  %incdec.ptr = getelementptr inbounds i8, ptr %q.063, i64 -1, !dbg !594
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !467, metadata !DIExpression()), !dbg !468
  br label %for.inc, !dbg !595

for.inc:                                          ; preds = %for.body, %if.end15
  %q.1 = phi ptr [ %q.063, %for.body ], [ %incdec.ptr, %if.end15 ], !dbg !596
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !467, metadata !DIExpression()), !dbg !468
  %incdec.ptr17 = getelementptr inbounds i8, ptr %q.1, i64 1, !dbg !597
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !467, metadata !DIExpression()), !dbg !468
  %12 = load i8, ptr %incdec.ptr17, align 1, !dbg !580, !tbaa !575
  %cmp7.not = icmp eq i8 %12, 0, !dbg !583
  br i1 %cmp7.not, label %for.end, label %for.body, !dbg !584, !llvm.loop !598

for.end:                                          ; preds = %for.inc, %if.end, %if.end5
  %13 = load ptr, ptr @policy_semaphore, align 8, !dbg !600, !tbaa !405
  call void @LockSemaphoreInfo(ptr noundef %13) #10, !dbg !601
  %14 = load ptr, ptr @policy_cache, align 8, !dbg !602, !tbaa !405
  call void @ResetLinkedListIterator(ptr noundef %14) #10, !dbg !603
  %15 = load ptr, ptr @policy_cache, align 8, !dbg !604, !tbaa !405
  %call18 = call ptr @GetNextValueInLinkedList(ptr noundef %15) #10, !dbg !605
  call void @llvm.dbg.value(metadata ptr %call18, metadata !466, metadata !DIExpression()), !dbg !468
  br i1 %cmp1.not, label %cleanup.sink.split, label %lor.lhs.false, !dbg !606

lor.lhs.false:                                    ; preds = %for.end
  %call21 = call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str.3) #10, !dbg !608
  %cmp22 = icmp eq i32 %call21, 0, !dbg !609
  br i1 %cmp22, label %cleanup.sink.split, label %while.cond.preheader, !dbg !610

while.cond.preheader:                             ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %call18, metadata !466, metadata !DIExpression()), !dbg !468
  %cmp26.not64 = icmp eq ptr %call18, null, !dbg !611
  br i1 %cmp26.not64, label %cleanup.sink.split, label %while.body, !dbg !612

while.body:                                       ; preds = %while.cond.preheader, %if.end34
  %p.065 = phi ptr [ %call35, %if.end34 ], [ %call18, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.065, metadata !466, metadata !DIExpression()), !dbg !468
  %name29 = getelementptr inbounds %struct._PolicyInfo, ptr %p.065, i64 0, i32 3, !dbg !613
  %16 = load ptr, ptr %name29, align 8, !dbg !613, !tbaa !431
  %call30 = call i32 @LocaleCompare(ptr noundef nonnull %policyname, ptr noundef %16) #10, !dbg !616
  %cmp31 = icmp eq i32 %call30, 0, !dbg !617
  %17 = load ptr, ptr @policy_cache, align 8, !dbg !468, !tbaa !405
  br i1 %cmp31, label %if.then38, label %if.end34, !dbg !618

if.end34:                                         ; preds = %while.body
  %call35 = call ptr @GetNextValueInLinkedList(ptr noundef %17) #10, !dbg !619
  call void @llvm.dbg.value(metadata ptr %call35, metadata !466, metadata !DIExpression()), !dbg !468
  %cmp26.not = icmp eq ptr %call35, null, !dbg !611
  br i1 %cmp26.not, label %cleanup.sink.split, label %while.body, !dbg !612, !llvm.loop !620

if.then38:                                        ; preds = %while.body
  %call39 = call ptr @RemoveElementByValueFromLinkedList(ptr noundef %17, ptr noundef nonnull %p.065) #10, !dbg !622
  %call40 = call i32 @InsertValueInLinkedList(ptr noundef %17, i64 noundef 0, ptr noundef %call39) #10, !dbg !624
  br label %cleanup.sink.split, !dbg !625

cleanup.sink.split:                               ; preds = %if.end34, %if.then38, %while.cond.preheader, %for.end, %lor.lhs.false
  %retval.0.ph = phi ptr [ %call18, %lor.lhs.false ], [ %call18, %for.end ], [ %p.065, %if.then38 ], [ null, %while.cond.preheader ], [ null, %if.end34 ]
  %18 = load ptr, ptr @policy_semaphore, align 8, !dbg !468, !tbaa !405
  call void @UnlockSemaphoreInfo(ptr noundef %18) #10, !dbg !468
  br label %cleanup, !dbg !626

cleanup:                                          ; preds = %cleanup.sink.split, %IsPolicyCacheInstantiated.exit
  %retval.0 = phi ptr [ null, %IsPolicyCacheInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !468
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %policyname) #10, !dbg !626
  ret ptr %retval.0, !dbg !626
}

; Function Attrs: allocsize(0,1)
declare !dbg !627 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !631 i64 @GetNumberOfElementsInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !636 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !639 void @ResetLinkedListIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !642 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !645 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !650 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_policies, ptr noundef %exception) local_unnamed_addr #0 !dbg !651 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !655, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata ptr %number_policies, metadata !656, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata ptr %exception, metadata !657, metadata !DIExpression()), !dbg !661
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 419, ptr noundef nonnull @.str.2, ptr noundef %pattern) #10, !dbg !662
  store i64 0, ptr %number_policies, align 8, !dbg !663, !tbaa !396
  %call1 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %exception), !dbg !664
  call void @llvm.dbg.value(metadata ptr %call1, metadata !659, metadata !DIExpression()), !dbg !661
  %cmp = icmp eq ptr %call1, null, !dbg !665
  br i1 %cmp, label %cleanup, label %if.end, !dbg !667

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @policy_cache, align 8, !dbg !668, !tbaa !405
  %call2 = tail call i64 @GetNumberOfElementsInLinkedList(ptr noundef %0) #10, !dbg !669
  %add = add i64 %call2, 1, !dbg !670
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #11, !dbg !671
  call void @llvm.dbg.value(metadata ptr %call3, metadata !658, metadata !DIExpression()), !dbg !661
  %cmp4 = icmp eq ptr %call3, null, !dbg !672
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !674

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @policy_semaphore, align 8, !dbg !675, !tbaa !405
  tail call void @LockSemaphoreInfo(ptr noundef %1) #10, !dbg !676
  %2 = load ptr, ptr @policy_cache, align 8, !dbg !677, !tbaa !405
  tail call void @ResetLinkedListIterator(ptr noundef %2) #10, !dbg !678
  %3 = load ptr, ptr @policy_cache, align 8, !dbg !679, !tbaa !405
  %call7 = tail call ptr @GetNextValueInLinkedList(ptr noundef %3) #10, !dbg !680
  call void @llvm.dbg.value(metadata ptr %call7, metadata !659, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata i64 0, metadata !660, metadata !DIExpression()), !dbg !661
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !681
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !684

for.body:                                         ; preds = %if.end6, %if.end15
  %i.033 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !660, metadata !DIExpression()), !dbg !661
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !659, metadata !DIExpression()), !dbg !661
  %stealth = getelementptr inbounds %struct._PolicyInfo, ptr %p.032, i64 0, i32 7, !dbg !685
  %4 = load i32, ptr %stealth, align 4, !dbg !685, !tbaa !426
  %cmp9 = icmp eq i32 %4, 0, !dbg !688
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !689

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._PolicyInfo, ptr %p.032, i64 0, i32 3, !dbg !690
  %5 = load ptr, ptr %name, align 8, !dbg !690, !tbaa !431
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #10, !dbg !691
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !692
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !693

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !694, !tbaa !431
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #10, !dbg !695
  %inc = add nsw i64 %i.033, 1, !dbg !696
  call void @llvm.dbg.value(metadata i64 %inc, metadata !660, metadata !DIExpression()), !dbg !661
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !697
  store ptr %call14, ptr %arrayidx, align 8, !dbg !698, !tbaa !405
  br label %if.end15, !dbg !697

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !699
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !660, metadata !DIExpression()), !dbg !661
  %7 = load ptr, ptr @policy_cache, align 8, !dbg !700, !tbaa !405
  %call16 = tail call ptr @GetNextValueInLinkedList(ptr noundef %7) #10, !dbg !701
  call void @llvm.dbg.value(metadata ptr %call16, metadata !659, metadata !DIExpression()), !dbg !661
  %cmp8.not = icmp eq ptr %call16, null, !dbg !681
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !684, !llvm.loop !702

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !699
  %8 = load ptr, ptr @policy_semaphore, align 8, !dbg !704, !tbaa !405
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #10, !dbg !705
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !706
  store ptr null, ptr %arrayidx17, align 8, !dbg !707, !tbaa !405
  store i64 %i.0.lcssa, ptr %number_policies, align 8, !dbg !708, !tbaa !396
  br label %cleanup, !dbg !709

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !661
  ret ptr %retval.0, !dbg !710
}

declare !dbg !711 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetPolicyValue(ptr noundef %name) local_unnamed_addr #0 !dbg !714 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !716, metadata !DIExpression()), !dbg !720
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 482, ptr noundef nonnull @.str.2, ptr noundef %name) #10, !dbg !721
  %call1 = tail call ptr @AcquireExceptionInfo() #10, !dbg !722
  call void @llvm.dbg.value(metadata ptr %call1, metadata !719, metadata !DIExpression()), !dbg !720
  %call2 = tail call fastcc ptr @GetPolicyInfo(ptr noundef %name, ptr noundef %call1), !dbg !723
  call void @llvm.dbg.value(metadata ptr %call2, metadata !718, metadata !DIExpression()), !dbg !720
  %call3 = tail call ptr @DestroyExceptionInfo(ptr noundef %call1) #10, !dbg !724
  call void @llvm.dbg.value(metadata ptr %call3, metadata !719, metadata !DIExpression()), !dbg !720
  %cmp = icmp eq ptr %call2, null, !dbg !725
  br i1 %cmp, label %cleanup, label %if.end, !dbg !727

if.end:                                           ; preds = %entry
  %value4 = getelementptr inbounds %struct._PolicyInfo, ptr %call2, i64 0, i32 5, !dbg !728
  %0 = load ptr, ptr %value4, align 8, !dbg !728, !tbaa !729
  call void @llvm.dbg.value(metadata ptr %0, metadata !717, metadata !DIExpression()), !dbg !720
  %cmp5 = icmp eq ptr %0, null, !dbg !730
  br i1 %cmp5, label %cleanup, label %lor.lhs.false, !dbg !732

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i8, ptr %0, align 1, !dbg !733, !tbaa !575
  %cmp6 = icmp eq i8 %1, 0, !dbg !734
  br i1 %cmp6, label %cleanup, label %if.end9, !dbg !735

if.end9:                                          ; preds = %lor.lhs.false
  %call10 = tail call ptr @ConstantString(ptr noundef nonnull %0) #10, !dbg !736
  br label %cleanup, !dbg !737

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry, %if.end9
  %retval.0 = phi ptr [ %call10, %if.end9 ], [ null, %entry ], [ null, %lor.lhs.false ], [ null, %if.end ], !dbg !720
  ret ptr %retval.0, !dbg !738
}

declare !dbg !739 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !742 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @IsRightsAuthorized(i32 noundef %domain, i32 noundef %rights, ptr noundef %pattern) local_unnamed_addr #0 !dbg !745 {
entry:
  call void @llvm.dbg.value(metadata i32 %domain, metadata !749, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i32 %rights, metadata !750, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !751, metadata !DIExpression()), !dbg !756
  %conv = zext i32 %domain to i64, !dbg !757
  %call = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %conv) #10, !dbg !758
  %conv1 = zext i32 %rights to i64, !dbg !759
  %call2 = tail call ptr @CommandOptionToMnemonic(i32 noundef 54, i64 noundef %conv1) #10, !dbg !760
  %call3 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 4096, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 574, ptr noundef nonnull @.str.4, ptr noundef %call, ptr noundef %call2, ptr noundef %pattern) #10, !dbg !761
  %call4 = tail call ptr @AcquireExceptionInfo() #10, !dbg !762
  call void @llvm.dbg.value(metadata ptr %call4, metadata !753, metadata !DIExpression()), !dbg !756
  %call5 = tail call fastcc ptr @GetPolicyInfo(ptr noundef nonnull @.str.3, ptr noundef %call4), !dbg !763
  call void @llvm.dbg.value(metadata ptr %call5, metadata !752, metadata !DIExpression()), !dbg !756
  %call6 = tail call ptr @DestroyExceptionInfo(ptr noundef %call4) #10, !dbg !764
  call void @llvm.dbg.value(metadata ptr %call6, metadata !753, metadata !DIExpression()), !dbg !756
  %cmp = icmp eq ptr %call5, null, !dbg !765
  br i1 %cmp, label %cleanup, label %if.end, !dbg !767

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !754, metadata !DIExpression()), !dbg !756
  %0 = load ptr, ptr @policy_semaphore, align 8, !dbg !768, !tbaa !405
  tail call void @LockSemaphoreInfo(ptr noundef %0) #10, !dbg !769
  %1 = load ptr, ptr @policy_cache, align 8, !dbg !770, !tbaa !405
  tail call void @ResetLinkedListIterator(ptr noundef %1) #10, !dbg !771
  %2 = load ptr, ptr @policy_cache, align 8, !dbg !772, !tbaa !405
  %call8 = tail call ptr @GetNextValueInLinkedList(ptr noundef %2) #10, !dbg !773
  call void @llvm.dbg.value(metadata ptr %call8, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i32 1, metadata !754, metadata !DIExpression()), !dbg !756
  %cmp969.not = icmp eq ptr %call8, null, !dbg !774
  br i1 %cmp969.not, label %while.end, label %while.body.lr.ph, !dbg !775

while.body.lr.ph:                                 ; preds = %if.end
  %and = and i32 %rights, 1
  %cmp21.not = icmp eq i32 %and, 0
  %and30 = and i32 %rights, 2
  %cmp31.not = icmp eq i32 %and30, 0
  %and40 = and i32 %rights, 4
  %cmp41.not = icmp eq i32 %and40, 0
  br i1 %cmp31.not, label %while.body.lr.ph.split.us, label %while.body.lr.ph.split, !dbg !776

while.body.lr.ph.split.us:                        ; preds = %while.body.lr.ph
  br i1 %cmp41.not, label %while.body.us.us, label %while.body.us, !dbg !781

while.body.us.us:                                 ; preds = %while.body.lr.ph.split.us, %if.end50.us.us
  %p.070.us.us = phi ptr [ %call51.us.us, %if.end50.us.us ], [ %call8, %while.body.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr %p.070.us.us, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13.us.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us.us, i64 0, i32 1, !dbg !783
  %3 = load i32, ptr %domain13.us.us, align 8, !dbg !783, !tbaa !784
  %cmp14.us.us = icmp eq i32 %3, %domain, !dbg !785
  br i1 %cmp14.us.us, label %land.lhs.true.us.us, label %if.end50.us.us, !dbg !786

land.lhs.true.us.us:                              ; preds = %while.body.us.us
  %pattern16.us.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us.us, i64 0, i32 4, !dbg !787
  %4 = load ptr, ptr %pattern16.us.us, align 8, !dbg !787, !tbaa !788
  %call17.us.us = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %4, i32 noundef 0) #10, !dbg !789
  %cmp18.not.us.us = icmp eq i32 %call17.us.us, 0, !dbg !790
  %brmerge = or i1 %cmp18.not.us.us, %cmp21.not, !dbg !791
  br i1 %brmerge, label %if.end50.us.us, label %land.lhs.true23.us.us, !dbg !791

land.lhs.true23.us.us:                            ; preds = %land.lhs.true.us.us
  %rights24.us.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us.us, i64 0, i32 2, !dbg !792
  %5 = load i32, ptr %rights24.us.us, align 4, !dbg !792, !tbaa !794
  %and25.us.us = and i32 %5, 1, !dbg !795
  br label %if.end50.us.us, !dbg !796

if.end50.us.us:                                   ; preds = %land.lhs.true.us.us, %land.lhs.true23.us.us, %while.body.us.us
  %authorized.3.us.us = phi i32 [ 1, %land.lhs.true.us.us ], [ 1, %while.body.us.us ], [ %and25.us.us, %land.lhs.true23.us.us ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3.us.us, metadata !754, metadata !DIExpression()), !dbg !756
  %6 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51.us.us = tail call ptr @GetNextValueInLinkedList(ptr noundef %6) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51.us.us, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9.us.us = icmp ne ptr %call51.us.us, null, !dbg !774
  %cmp11.us.us = icmp ne i32 %authorized.3.us.us, 0
  %or.cond.us.us = and i1 %cmp11.us.us, %cmp9.us.us, !dbg !775
  br i1 %or.cond.us.us, label %while.body.us.us, label %while.end, !dbg !775, !llvm.loop !799

while.body.us:                                    ; preds = %while.body.lr.ph.split.us, %if.end50.us
  %p.070.us = phi ptr [ %call51.us, %if.end50.us ], [ %call8, %while.body.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr %p.070.us, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us, i64 0, i32 1, !dbg !783
  %7 = load i32, ptr %domain13.us, align 8, !dbg !783, !tbaa !784
  %cmp14.us = icmp eq i32 %7, %domain, !dbg !785
  br i1 %cmp14.us, label %land.lhs.true.us, label %if.end50.us, !dbg !786

land.lhs.true.us:                                 ; preds = %while.body.us
  %pattern16.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us, i64 0, i32 4, !dbg !787
  %8 = load ptr, ptr %pattern16.us, align 8, !dbg !787, !tbaa !788
  %call17.us = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %8, i32 noundef 0) #10, !dbg !789
  %cmp18.not.us = icmp eq i32 %call17.us, 0, !dbg !790
  br i1 %cmp18.not.us, label %if.end50.us, label %if.then20.us, !dbg !791

if.then20.us:                                     ; preds = %land.lhs.true.us
  %rights44.us.phi.trans.insert = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us, i64 0, i32 2
  %.pre = load i32, ptr %rights44.us.phi.trans.insert, align 4, !dbg !802, !tbaa !794
  %and25.us = and i32 %.pre, 1
  %spec.select = select i1 %cmp21.not, i32 1, i32 %and25.us, !dbg !803
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !754, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %and45.us = and i32 %.pre, 4, !dbg !804
  %cmp46.us = icmp eq i32 %and45.us, 0, !dbg !805
  %spec.select68.us = select i1 %cmp46.us, i32 0, i32 %spec.select, !dbg !806
  br label %if.end50.us, !dbg !806

if.end50.us:                                      ; preds = %if.then20.us, %land.lhs.true.us, %while.body.us
  %authorized.3.us = phi i32 [ 1, %land.lhs.true.us ], [ 1, %while.body.us ], [ %spec.select68.us, %if.then20.us ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3.us, metadata !754, metadata !DIExpression()), !dbg !756
  %9 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51.us = tail call ptr @GetNextValueInLinkedList(ptr noundef %9) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51.us, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9.us = icmp ne ptr %call51.us, null, !dbg !774
  %cmp11.us = icmp ne i32 %authorized.3.us, 0
  %or.cond.us = and i1 %cmp11.us, %cmp9.us, !dbg !775
  br i1 %or.cond.us, label %while.body.us, label %while.end, !dbg !775, !llvm.loop !799

while.body.lr.ph.split:                           ; preds = %while.body.lr.ph
  br i1 %cmp41.not, label %while.body.lr.ph.split.split.us, label %while.body.lr.ph.split.split, !dbg !781

while.body.lr.ph.split.split.us:                  ; preds = %while.body.lr.ph.split
  br i1 %cmp21.not, label %while.body.us73.us, label %while.body.us73, !dbg !803

while.body.us73.us:                               ; preds = %while.body.lr.ph.split.split.us, %if.end50.us87.us
  %p.070.us74.us = phi ptr [ %call51.us89.us, %if.end50.us87.us ], [ %call8, %while.body.lr.ph.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %p.070.us74.us, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13.us75.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74.us, i64 0, i32 1, !dbg !783
  %10 = load i32, ptr %domain13.us75.us, align 8, !dbg !783, !tbaa !784
  %cmp14.us76.us = icmp eq i32 %10, %domain, !dbg !785
  br i1 %cmp14.us76.us, label %land.lhs.true.us77.us, label %if.end50.us87.us, !dbg !786

land.lhs.true.us77.us:                            ; preds = %while.body.us73.us
  %pattern16.us78.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74.us, i64 0, i32 4, !dbg !787
  %11 = load ptr, ptr %pattern16.us78.us, align 8, !dbg !787, !tbaa !788
  %call17.us79.us = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %11, i32 noundef 0) #10, !dbg !789
  %cmp18.not.us80.us = icmp eq i32 %call17.us79.us, 0, !dbg !790
  br i1 %cmp18.not.us80.us, label %if.end50.us87.us, label %if.then20.us81.us, !dbg !791

if.then20.us81.us:                                ; preds = %land.lhs.true.us77.us
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %rights34.us.us = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74.us, i64 0, i32 2, !dbg !807
  %12 = load i32, ptr %rights34.us.us, align 4, !dbg !807, !tbaa !794
  %and35.us.us = lshr i32 %12, 1, !dbg !808
  %and35.us.us.lobit = and i32 %and35.us.us, 1, !dbg !808
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  br label %if.end50.us87.us

if.end50.us87.us:                                 ; preds = %if.then20.us81.us, %land.lhs.true.us77.us, %while.body.us73.us
  %authorized.3.us88.us = phi i32 [ %and35.us.us.lobit, %if.then20.us81.us ], [ 1, %land.lhs.true.us77.us ], [ 1, %while.body.us73.us ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3.us88.us, metadata !754, metadata !DIExpression()), !dbg !756
  %13 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51.us89.us = tail call ptr @GetNextValueInLinkedList(ptr noundef %13) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51.us89.us, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9.us90.us = icmp ne ptr %call51.us89.us, null, !dbg !774
  %cmp11.us91.us = icmp ne i32 %authorized.3.us88.us, 0
  %or.cond.us92.us = and i1 %cmp11.us91.us, %cmp9.us90.us, !dbg !775
  br i1 %or.cond.us92.us, label %while.body.us73.us, label %while.end, !dbg !775, !llvm.loop !799

while.body.us73:                                  ; preds = %while.body.lr.ph.split.split.us, %if.end50.us87
  %p.070.us74 = phi ptr [ %call51.us89, %if.end50.us87 ], [ %call8, %while.body.lr.ph.split.split.us ]
  call void @llvm.dbg.value(metadata ptr %p.070.us74, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13.us75 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74, i64 0, i32 1, !dbg !783
  %14 = load i32, ptr %domain13.us75, align 8, !dbg !783, !tbaa !784
  %cmp14.us76 = icmp eq i32 %14, %domain, !dbg !785
  br i1 %cmp14.us76, label %land.lhs.true.us77, label %if.end50.us87, !dbg !786

land.lhs.true.us77:                               ; preds = %while.body.us73
  %pattern16.us78 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74, i64 0, i32 4, !dbg !787
  %15 = load ptr, ptr %pattern16.us78, align 8, !dbg !787, !tbaa !788
  %call17.us79 = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %15, i32 noundef 0) #10, !dbg !789
  %cmp18.not.us80 = icmp eq i32 %call17.us79, 0, !dbg !790
  br i1 %cmp18.not.us80, label %if.end50.us87, label %if.then20.us81, !dbg !791

if.then20.us81:                                   ; preds = %land.lhs.true.us77
  %rights24.us83 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us74, i64 0, i32 2, !dbg !792
  %16 = load i32, ptr %rights24.us83, align 4, !dbg !792, !tbaa !794
  %and25.us84 = and i32 %16, 1, !dbg !795
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %and35.us = and i32 %16, 2, !dbg !809
  %cmp36.us = icmp eq i32 %and35.us, 0, !dbg !810
  %spec.select67.us = select i1 %cmp36.us, i32 0, i32 %and25.us84, !dbg !808
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  br label %if.end50.us87

if.end50.us87:                                    ; preds = %if.then20.us81, %land.lhs.true.us77, %while.body.us73
  %authorized.3.us88 = phi i32 [ %spec.select67.us, %if.then20.us81 ], [ 1, %land.lhs.true.us77 ], [ 1, %while.body.us73 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3.us88, metadata !754, metadata !DIExpression()), !dbg !756
  %17 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51.us89 = tail call ptr @GetNextValueInLinkedList(ptr noundef %17) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51.us89, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9.us90 = icmp ne ptr %call51.us89, null, !dbg !774
  %cmp11.us91 = icmp ne i32 %authorized.3.us88, 0
  %or.cond.us92 = and i1 %cmp11.us91, %cmp9.us90, !dbg !775
  br i1 %or.cond.us92, label %while.body.us73, label %while.end, !dbg !775, !llvm.loop !799

while.body.lr.ph.split.split:                     ; preds = %while.body.lr.ph.split
  br i1 %cmp21.not, label %while.body.us95, label %while.body, !dbg !803

while.body.us95:                                  ; preds = %while.body.lr.ph.split.split, %if.end50.us114
  %p.070.us96 = phi ptr [ %call51.us116, %if.end50.us114 ], [ %call8, %while.body.lr.ph.split.split ]
  call void @llvm.dbg.value(metadata ptr %p.070.us96, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13.us97 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us96, i64 0, i32 1, !dbg !783
  %18 = load i32, ptr %domain13.us97, align 8, !dbg !783, !tbaa !784
  %cmp14.us98 = icmp eq i32 %18, %domain, !dbg !785
  br i1 %cmp14.us98, label %land.lhs.true.us99, label %if.end50.us114, !dbg !786

land.lhs.true.us99:                               ; preds = %while.body.us95
  %pattern16.us100 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us96, i64 0, i32 4, !dbg !787
  %19 = load ptr, ptr %pattern16.us100, align 8, !dbg !787, !tbaa !788
  %call17.us101 = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %19, i32 noundef 0) #10, !dbg !789
  %cmp18.not.us102 = icmp eq i32 %call17.us101, 0, !dbg !790
  br i1 %cmp18.not.us102, label %if.end50.us114, label %if.then20.us103, !dbg !791

if.then20.us103:                                  ; preds = %land.lhs.true.us99
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %rights34.us106 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070.us96, i64 0, i32 2, !dbg !807
  %20 = load i32, ptr %rights34.us106, align 4, !dbg !807, !tbaa !794
  %and35.us107 = lshr i32 %20, 1, !dbg !808
  %and35.us107.lobit = and i32 %and35.us107, 1, !dbg !808
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %and45.us111 = and i32 %20, 4, !dbg !804
  %cmp46.us112 = icmp eq i32 %and45.us111, 0, !dbg !805
  %spec.select68.us113 = select i1 %cmp46.us112, i32 0, i32 %and35.us107.lobit, !dbg !806
  br label %if.end50.us114, !dbg !806

if.end50.us114:                                   ; preds = %if.then20.us103, %land.lhs.true.us99, %while.body.us95
  %authorized.3.us115 = phi i32 [ 1, %land.lhs.true.us99 ], [ 1, %while.body.us95 ], [ %spec.select68.us113, %if.then20.us103 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3.us115, metadata !754, metadata !DIExpression()), !dbg !756
  %21 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51.us116 = tail call ptr @GetNextValueInLinkedList(ptr noundef %21) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51.us116, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9.us117 = icmp ne ptr %call51.us116, null, !dbg !774
  %cmp11.us118 = icmp ne i32 %authorized.3.us115, 0
  %or.cond.us119 = and i1 %cmp11.us118, %cmp9.us117, !dbg !775
  br i1 %or.cond.us119, label %while.body.us95, label %while.end, !dbg !775, !llvm.loop !799

while.body:                                       ; preds = %while.body.lr.ph.split.split, %if.end50
  %p.070 = phi ptr [ %call51, %if.end50 ], [ %call8, %while.body.lr.ph.split.split ]
  call void @llvm.dbg.value(metadata ptr %p.070, metadata !755, metadata !DIExpression()), !dbg !756
  %domain13 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070, i64 0, i32 1, !dbg !783
  %22 = load i32, ptr %domain13, align 8, !dbg !783, !tbaa !784
  %cmp14 = icmp eq i32 %22, %domain, !dbg !785
  br i1 %cmp14, label %land.lhs.true, label %if.end50, !dbg !786

land.lhs.true:                                    ; preds = %while.body
  %pattern16 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070, i64 0, i32 4, !dbg !787
  %23 = load ptr, ptr %pattern16, align 8, !dbg !787, !tbaa !788
  %call17 = tail call i32 @GlobExpression(ptr noundef %pattern, ptr noundef %23, i32 noundef 0) #10, !dbg !789
  %cmp18.not = icmp eq i32 %call17, 0, !dbg !790
  br i1 %cmp18.not, label %if.end50, label %if.then20, !dbg !791

if.then20:                                        ; preds = %land.lhs.true
  %rights24 = getelementptr inbounds %struct._PolicyInfo, ptr %p.070, i64 0, i32 2, !dbg !792
  %24 = load i32, ptr %rights24, align 4, !dbg !792, !tbaa !794
  %and25 = and i32 %24, 1, !dbg !795
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.value(metadata i32 undef, metadata !754, metadata !DIExpression()), !dbg !756
  %25 = and i32 %24, 6, !dbg !806
  %.not = icmp eq i32 %25, 6, !dbg !806
  %spec.select68 = select i1 %.not, i32 %and25, i32 0, !dbg !806
  br label %if.end50, !dbg !806

if.end50:                                         ; preds = %if.then20, %land.lhs.true, %while.body
  %authorized.3 = phi i32 [ 1, %land.lhs.true ], [ 1, %while.body ], [ %spec.select68, %if.then20 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %authorized.3, metadata !754, metadata !DIExpression()), !dbg !756
  %26 = load ptr, ptr @policy_cache, align 8, !dbg !797, !tbaa !405
  %call51 = tail call ptr @GetNextValueInLinkedList(ptr noundef %26) #10, !dbg !798
  call void @llvm.dbg.value(metadata ptr %call51, metadata !755, metadata !DIExpression()), !dbg !756
  %cmp9 = icmp ne ptr %call51, null, !dbg !774
  %cmp11 = icmp ne i32 %authorized.3, 0
  %or.cond = and i1 %cmp11, %cmp9, !dbg !775
  br i1 %or.cond, label %while.body, label %while.end, !dbg !775, !llvm.loop !799

while.end:                                        ; preds = %if.end50, %if.end50.us114, %if.end50.us87, %if.end50.us87.us, %if.end50.us, %if.end50.us.us, %if.end
  %authorized.0.lcssa = phi i32 [ 1, %if.end ], [ %authorized.3.us.us, %if.end50.us.us ], [ %authorized.3.us, %if.end50.us ], [ %authorized.3.us88.us, %if.end50.us87.us ], [ %authorized.3.us88, %if.end50.us87 ], [ %authorized.3.us115, %if.end50.us114 ], [ %authorized.3, %if.end50 ], !dbg !756
  %27 = load ptr, ptr @policy_semaphore, align 8, !dbg !811, !tbaa !405
  tail call void @UnlockSemaphoreInfo(ptr noundef %27) #10, !dbg !812
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %entry, %while.end
  %retval.0 = phi i32 [ %authorized.0.lcssa, %while.end ], [ 1, %entry ], !dbg !756
  ret i32 %retval.0, !dbg !814
}

declare !dbg !815 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ListPolicyInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !821 {
entry:
  %number_policies = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !826, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr %exception, metadata !827, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_policies) #10, !dbg !834
  %cmp = icmp eq ptr %file, null, !dbg !835
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !837
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !826, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr %number_policies, metadata !832, metadata !DIExpression(DW_OP_deref)), !dbg !833
  %call = call ptr @GetPolicyInfoList(ptr noundef nonnull @.str.3, ptr noundef nonnull %number_policies, ptr noundef %exception), !dbg !838
  call void @llvm.dbg.value(metadata ptr %call, metadata !830, metadata !DIExpression()), !dbg !833
  %cmp1 = icmp eq ptr %call, null, !dbg !839
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !841

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_policies, align 8, !tbaa !396
  call void @llvm.dbg.value(metadata i64 0, metadata !831, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr null, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i64 %1, metadata !832, metadata !DIExpression()), !dbg !833
  %cmp4154 = icmp sgt i64 %1, 0, !dbg !842
  br i1 %cmp4154, label %for.body, label %for.end, !dbg !845

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %i.0156 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  %path.0155 = phi ptr [ %path.1, %for.inc ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0156, metadata !831, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr %path.0155, metadata !828, metadata !DIExpression()), !dbg !833
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0156, !dbg !846
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !846, !tbaa !405
  %stealth = getelementptr inbounds %struct._PolicyInfo, ptr %2, i64 0, i32 7, !dbg !849
  %3 = load i32, ptr %stealth, align 4, !dbg !849, !tbaa !426
  %cmp5.not = icmp eq i32 %3, 0, !dbg !850
  br i1 %cmp5.not, label %if.end7, label %for.inc, !dbg !851

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.0155, null, !dbg !852
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false, !dbg !854

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !855, !tbaa !549
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %path.0155, ptr noundef %4) #10, !dbg !856
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !857
  br i1 %cmp12.not, label %if.end20, label %lor.lhs.false.land.lhs.true_crit_edge, !dbg !858

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !859, !tbaa !405
  br label %land.lhs.true, !dbg !858

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.land.lhs.true_crit_edge ], [ %2, %if.end7 ], !dbg !859
  %6 = load ptr, ptr %5, align 8, !dbg !860, !tbaa !549
  %cmp15.not = icmp eq ptr %6, null, !dbg !861
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !862

if.then16:                                        ; preds = %land.lhs.true
  %call19 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #10, !dbg !863
  br label %if.end20, !dbg !864

if.end20:                                         ; preds = %if.then16, %land.lhs.true, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !865, !tbaa !405
  %8 = load ptr, ptr %7, align 8, !dbg !866, !tbaa !549
  call void @llvm.dbg.value(metadata ptr %8, metadata !828, metadata !DIExpression()), !dbg !833
  %domain24 = getelementptr inbounds %struct._PolicyInfo, ptr %7, i64 0, i32 1, !dbg !867
  %9 = load i32, ptr %domain24, align 8, !dbg !867, !tbaa !784
  %conv = zext i32 %9 to i64, !dbg !868
  %call25 = tail call ptr @CommandOptionToMnemonic(i32 noundef 53, i64 noundef %conv) #10, !dbg !869
  call void @llvm.dbg.value(metadata ptr %call25, metadata !829, metadata !DIExpression()), !dbg !833
  %call26 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6, ptr noundef %call25) #10, !dbg !870
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !871, !tbaa !405
  %domain28 = getelementptr inbounds %struct._PolicyInfo, ptr %10, i64 0, i32 1, !dbg !873
  %11 = load i32, ptr %domain28, align 8, !dbg !873, !tbaa !784
  %.off = add i32 %11, -5, !dbg !874
  %switch = icmp ult i32 %.off, 2, !dbg !874
  br i1 %switch, label %if.then36, label %if.else, !dbg !874

if.then36:                                        ; preds = %if.end20
  %name = getelementptr inbounds %struct._PolicyInfo, ptr %10, i64 0, i32 3, !dbg !875
  %12 = load ptr, ptr %name, align 8, !dbg !875, !tbaa !431
  %cmp38.not = icmp eq ptr %12, null, !dbg !878
  br i1 %cmp38.not, label %if.end44, label %if.then40, !dbg !879

if.then40:                                        ; preds = %if.then36
  %call43 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.7, ptr noundef nonnull %12) #10, !dbg !880
  %.pre163 = load ptr, ptr %arrayidx, align 8, !dbg !881, !tbaa !405
  br label %if.end44, !dbg !883

if.end44:                                         ; preds = %if.then40, %if.then36
  %13 = phi ptr [ %.pre163, %if.then40 ], [ %10, %if.then36 ], !dbg !881
  %value = getelementptr inbounds %struct._PolicyInfo, ptr %13, i64 0, i32 5, !dbg !884
  %14 = load ptr, ptr %value, align 8, !dbg !884, !tbaa !729
  %cmp46.not = icmp eq ptr %14, null, !dbg !885
  br i1 %cmp46.not, label %for.inc, label %if.then48, !dbg !886

if.then48:                                        ; preds = %if.end44
  %call51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8, ptr noundef nonnull %14) #10, !dbg !887
  br label %for.inc, !dbg !888

if.else:                                          ; preds = %if.end20
  %call53 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.9) #10, !dbg !889
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !891, !tbaa !405
  %rights = getelementptr inbounds %struct._PolicyInfo, ptr %15, i64 0, i32 2, !dbg !893
  %16 = load i32, ptr %rights, align 4, !dbg !893, !tbaa !794
  %cmp55 = icmp eq i32 %16, 0, !dbg !894
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !895

if.then57:                                        ; preds = %if.else
  %call58 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.10) #10, !dbg !896
  %.pre157 = load ptr, ptr %arrayidx, align 8, !dbg !897, !tbaa !405
  %rights61.phi.trans.insert = getelementptr inbounds %struct._PolicyInfo, ptr %.pre157, i64 0, i32 2
  %.pre158 = load i32, ptr %rights61.phi.trans.insert, align 4, !dbg !899, !tbaa !794
  br label %if.end59, !dbg !900

if.end59:                                         ; preds = %if.then57, %if.else
  %17 = phi i32 [ %.pre158, %if.then57 ], [ %16, %if.else ], !dbg !899
  %and = and i32 %17, 1, !dbg !901
  %cmp62.not = icmp eq i32 %and, 0, !dbg !902
  br i1 %cmp62.not, label %if.end66, label %if.then64, !dbg !903

if.then64:                                        ; preds = %if.end59
  %call65 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.11) #10, !dbg !904
  %.pre159 = load ptr, ptr %arrayidx, align 8, !dbg !905, !tbaa !405
  %rights68.phi.trans.insert = getelementptr inbounds %struct._PolicyInfo, ptr %.pre159, i64 0, i32 2
  %.pre160 = load i32, ptr %rights68.phi.trans.insert, align 4, !dbg !907, !tbaa !794
  br label %if.end66, !dbg !908

if.end66:                                         ; preds = %if.then64, %if.end59
  %18 = phi i32 [ %.pre160, %if.then64 ], [ %17, %if.end59 ], !dbg !907
  %and69 = and i32 %18, 2, !dbg !909
  %cmp70.not = icmp eq i32 %and69, 0, !dbg !910
  br i1 %cmp70.not, label %if.end74, label %if.then72, !dbg !911

if.then72:                                        ; preds = %if.end66
  %call73 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.12) #10, !dbg !912
  %.pre161 = load ptr, ptr %arrayidx, align 8, !dbg !913, !tbaa !405
  %rights76.phi.trans.insert = getelementptr inbounds %struct._PolicyInfo, ptr %.pre161, i64 0, i32 2
  %.pre162 = load i32, ptr %rights76.phi.trans.insert, align 4, !dbg !915, !tbaa !794
  br label %if.end74, !dbg !916

if.end74:                                         ; preds = %if.then72, %if.end66
  %19 = phi i32 [ %.pre162, %if.then72 ], [ %18, %if.end66 ], !dbg !915
  %and77 = and i32 %19, 4, !dbg !917
  %cmp78.not = icmp eq i32 %and77, 0, !dbg !918
  br i1 %cmp78.not, label %if.end82, label %if.then80, !dbg !919

if.then80:                                        ; preds = %if.end74
  %call81 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.13) #10, !dbg !920
  br label %if.end82, !dbg !921

if.end82:                                         ; preds = %if.then80, %if.end74
  %call83 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.14) #10, !dbg !922
  %20 = load ptr, ptr %arrayidx, align 8, !dbg !923, !tbaa !405
  %pattern = getelementptr inbounds %struct._PolicyInfo, ptr %20, i64 0, i32 4, !dbg !925
  %21 = load ptr, ptr %pattern, align 8, !dbg !925, !tbaa !788
  %cmp85.not = icmp eq ptr %21, null, !dbg !926
  br i1 %cmp85.not, label %for.inc, label %if.then87, !dbg !927

if.then87:                                        ; preds = %if.end82
  %call90 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.15, ptr noundef nonnull %21) #10, !dbg !928
  br label %for.inc, !dbg !929

for.inc:                                          ; preds = %if.then48, %if.end44, %if.then87, %if.end82, %for.body
  %path.1 = phi ptr [ %path.0155, %for.body ], [ %8, %if.then48 ], [ %8, %if.end44 ], [ %8, %if.then87 ], [ %8, %if.end82 ], !dbg !833
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !828, metadata !DIExpression()), !dbg !833
  %inc = add nuw nsw i64 %i.0156, 1, !dbg !930
  call void @llvm.dbg.value(metadata i64 %inc, metadata !831, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i64 %1, metadata !832, metadata !DIExpression()), !dbg !833
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !842
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !845, !llvm.loop !931

for.end:                                          ; preds = %for.inc, %for.cond.preheader
  %call93 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #10, !dbg !933
  call void @llvm.dbg.value(metadata ptr %call93, metadata !830, metadata !DIExpression()), !dbg !833
  %call94 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !934
  br label %cleanup, !dbg !935

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !833
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_policies) #10, !dbg !936
  ret i32 %retval.0, !dbg !936
}

declare !dbg !937 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !940 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !945 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !948 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @PolicyComponentGenesis() local_unnamed_addr #0 !dbg !951 {
entry:
  %0 = load ptr, ptr @policy_semaphore, align 8, !dbg !954, !tbaa !405
  %cmp = icmp eq ptr %0, null, !dbg !956
  br i1 %cmp, label %if.then, label %if.end, !dbg !957

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #10, !dbg !958
  store ptr %call, ptr @policy_semaphore, align 8, !dbg !959, !tbaa !405
  br label %if.end, !dbg !960

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !961
}

declare !dbg !962 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @PolicyComponentTerminus() local_unnamed_addr #0 !dbg !965 {
entry:
  %0 = load ptr, ptr @policy_semaphore, align 8, !dbg !968, !tbaa !405
  %cmp = icmp eq ptr %0, null, !dbg !970
  br i1 %cmp, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @policy_semaphore) #10, !dbg !972
  %.pre = load ptr, ptr @policy_semaphore, align 8, !dbg !973, !tbaa !405
  br label %if.end, !dbg !972

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !973
  tail call void @LockSemaphoreInfo(ptr noundef %1) #10, !dbg !974
  %2 = load ptr, ptr @policy_cache, align 8, !dbg !975, !tbaa !405
  %cmp1.not = icmp eq ptr %2, null, !dbg !977
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !978

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroyLinkedList(ptr noundef nonnull %2, ptr noundef nonnull @DestroyPolicyElement) #10, !dbg !979
  store ptr %call, ptr @policy_cache, align 8, !dbg !980, !tbaa !405
  br label %if.end3, !dbg !981

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @policy_semaphore, align 8, !dbg !982, !tbaa !405
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #10, !dbg !983
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @policy_semaphore) #10, !dbg !984
  ret void, !dbg !985
}

declare !dbg !986 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !990 ptr @DestroyLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyPolicyElement(ptr noundef %policy_info) #0 !dbg !994 {
entry:
  call void @llvm.dbg.value(metadata ptr %policy_info, metadata !996, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata ptr %policy_info, metadata !997, metadata !DIExpression()), !dbg !998
  %exempt = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info, i64 0, i32 6, !dbg !999
  %0 = load i32, ptr %exempt, align 8, !dbg !999, !tbaa !554
  %cmp = icmp eq i32 %0, 0, !dbg !1001
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1002

if.then:                                          ; preds = %entry
  %value = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info, i64 0, i32 5, !dbg !1003
  %1 = load ptr, ptr %value, align 8, !dbg !1003, !tbaa !729
  %cmp1.not = icmp eq ptr %1, null, !dbg !1006
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !1007

if.then2:                                         ; preds = %if.then
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #10, !dbg !1008
  store ptr %call, ptr %value, align 8, !dbg !1009, !tbaa !729
  br label %if.end, !dbg !1010

if.end:                                           ; preds = %if.then2, %if.then
  %pattern = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info, i64 0, i32 4, !dbg !1011
  %2 = load ptr, ptr %pattern, align 8, !dbg !1011, !tbaa !788
  %cmp5.not = icmp eq ptr %2, null, !dbg !1013
  br i1 %cmp5.not, label %if.end10, label %if.then6, !dbg !1014

if.then6:                                         ; preds = %if.end
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %2) #10, !dbg !1015
  store ptr %call8, ptr %pattern, align 8, !dbg !1016, !tbaa !788
  br label %if.end10, !dbg !1017

if.end10:                                         ; preds = %if.then6, %if.end
  %name = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info, i64 0, i32 3, !dbg !1018
  %3 = load ptr, ptr %name, align 8, !dbg !1018, !tbaa !431
  %cmp11.not = icmp eq ptr %3, null, !dbg !1020
  br i1 %cmp11.not, label %if.end16, label %if.then12, !dbg !1021

if.then12:                                        ; preds = %if.end10
  %call14 = tail call ptr @DestroyString(ptr noundef nonnull %3) #10, !dbg !1022
  store ptr %call14, ptr %name, align 8, !dbg !1023, !tbaa !431
  br label %if.end16, !dbg !1024

if.end16:                                         ; preds = %if.then12, %if.end10
  %4 = load ptr, ptr %policy_info, align 8, !dbg !1025, !tbaa !549
  %cmp17.not = icmp eq ptr %4, null, !dbg !1027
  br i1 %cmp17.not, label %if.end23, label %if.then18, !dbg !1028

if.then18:                                        ; preds = %if.end16
  %call20 = tail call ptr @DestroyString(ptr noundef nonnull %4) #10, !dbg !1029
  store ptr %call20, ptr %policy_info, align 8, !dbg !1030, !tbaa !549
  br label %if.end23, !dbg !1031

if.end23:                                         ; preds = %if.end16, %if.then18, %entry
  %call24 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %policy_info) #10, !dbg !1032
  call void @llvm.dbg.value(metadata ptr %call24, metadata !997, metadata !DIExpression()), !dbg !998
  ret ptr null, !dbg !1033
}

declare !dbg !1034 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1035 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__ctype_b_loc() local_unnamed_addr #6

declare !dbg !1038 i32 @InsertValueInLinkedList(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1043 ptr @RemoveElementByValueFromLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1046 ptr @NewLinkedList(i64 noundef) local_unnamed_addr #3

declare !dbg !1049 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1052 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare !dbg !1056 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1060 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1063 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1064 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #7

declare !dbg !1066 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadPolicyCache(ptr noundef %policy_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !1068 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception116 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %policy_cache, metadata !1072, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1073, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1074, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1075, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1076, metadata !DIExpression()), !dbg !1100
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #10, !dbg !1101
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !1077, metadata !DIExpression()), !dbg !1102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #10, !dbg !1103
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 751, ptr noundef nonnull @.str.20, ptr noundef %filename) #10, !dbg !1104
  %cmp = icmp eq ptr %xml, null, !dbg !1105
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1107

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !1081, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr null, metadata !1079, metadata !DIExpression()), !dbg !1100
  %call1 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #10, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1078, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1080, metadata !DIExpression()), !dbg !1100
  store ptr %xml, ptr %q, align 8, !dbg !1109, !tbaa !405
  call void @llvm.dbg.value(metadata i32 1, metadata !1081, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr null, metadata !1079, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1080, metadata !DIExpression()), !dbg !1100
  %0 = load i8, ptr %xml, align 1, !dbg !1110, !tbaa !575
  %cmp2.not265 = icmp eq i8 %0, 0, !dbg !1111
  br i1 %cmp2.not265, label %for.end, label %for.body.lr.ph, !dbg !1112

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp69 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !1112

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %status.0267 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  %policy_info.0266 = phi ptr [ null, %for.body.lr.ph ], [ %policy_info.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata i32 %status.0267, metadata !1081, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %policy_info.0266, metadata !1079, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #10, !dbg !1113
  %2 = load i8, ptr %call1, align 1, !dbg !1114, !tbaa !575
  %cmp5 = icmp eq i8 %2, 0, !dbg !1116
  br i1 %cmp5, label %for.end, label %if.end8, !dbg !1117

if.end8:                                          ; preds = %for.body
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #10, !dbg !1118
  %call11 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.21, i64 noundef 9) #10, !dbg !1119
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1121
  br i1 %cmp12, label %while.cond.preheader, label %if.end21, !dbg !1122

while.cond.preheader:                             ; preds = %if.end8
  %3 = load ptr, ptr %q, align 8, !dbg !1123, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %3, metadata !1080, metadata !DIExpression()), !dbg !1100
  %call15263 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.22, i64 noundef 2) #10, !dbg !1125
  %cmp16.not264 = icmp eq i32 %call15263, 0, !dbg !1126
  br i1 %cmp16.not264, label %for.cond.backedge, label %land.rhs, !dbg !1127

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !1128, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %4, metadata !1080, metadata !DIExpression()), !dbg !1100
  %5 = load i8, ptr %4, align 1, !dbg !1129, !tbaa !575
  %cmp19.not = icmp eq i8 %5, 0, !dbg !1130
  br i1 %cmp19.not, label %for.cond.backedge, label %while.body, !dbg !1131

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #10, !dbg !1132
  %6 = load ptr, ptr %q, align 8, !dbg !1123, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %6, metadata !1080, metadata !DIExpression()), !dbg !1100
  %call15 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.22, i64 noundef 2) #10, !dbg !1125
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !1126
  br i1 %cmp16.not, label %for.cond.backedge, label %land.rhs, !dbg !1127, !llvm.loop !1133

for.cond.backedge:                                ; preds = %while.body36, %land.rhs31, %while.body, %land.rhs, %land.rhs51.us, %land.lhs.true.us, %while.cond44.us, %while.cond44, %land.lhs.true, %land.rhs51, %if.then154, %if.then163, %if.then172, %if.then180, %if.then189, %if.then197, %sw.bb, %sw.bb158, %sw.bb167, %sw.bb175, %sw.bb184, %sw.bb192, %if.end147, %if.then135, %if.then139, %while.cond27.preheader, %while.cond.preheader, %if.end122, %if.end126, %if.end142
  %policy_info.0.be = phi ptr [ %call112, %if.end122 ], [ null, %if.end126 ], [ %policy_info.0266, %if.end142 ], [ %policy_info.0266, %while.cond.preheader ], [ %policy_info.0266, %while.cond27.preheader ], [ null, %if.then139 ], [ null, %if.then135 ], [ %policy_info.0266, %if.end147 ], [ %policy_info.0266, %sw.bb192 ], [ %policy_info.0266, %sw.bb184 ], [ %policy_info.0266, %sw.bb175 ], [ %policy_info.0266, %sw.bb167 ], [ %policy_info.0266, %sw.bb158 ], [ %policy_info.0266, %sw.bb ], [ %policy_info.0266, %if.then197 ], [ %policy_info.0266, %if.then189 ], [ %policy_info.0266, %if.then180 ], [ %policy_info.0266, %if.then172 ], [ %policy_info.0266, %if.then163 ], [ %policy_info.0266, %if.then154 ], [ %policy_info.0266, %land.rhs51 ], [ %policy_info.0266, %land.lhs.true ], [ %policy_info.0266, %while.cond44 ], [ %policy_info.0266, %while.cond44.us ], [ %policy_info.0266, %land.lhs.true.us ], [ %policy_info.0266, %land.rhs51.us ], [ %policy_info.0266, %land.rhs ], [ %policy_info.0266, %while.body ], [ %policy_info.0266, %land.rhs31 ], [ %policy_info.0266, %while.body36 ]
  %status.0.be = phi i32 [ %status.0267, %if.end122 ], [ %status.0267, %if.end126 ], [ %status.0267, %if.end142 ], [ %status.0267, %while.cond.preheader ], [ %status.0267, %while.cond27.preheader ], [ 0, %if.then139 ], [ %call136, %if.then135 ], [ %status.0267, %if.end147 ], [ %status.0267, %sw.bb192 ], [ %status.0267, %sw.bb184 ], [ %status.0267, %sw.bb175 ], [ %status.0267, %sw.bb167 ], [ %status.0267, %sw.bb158 ], [ %status.0267, %sw.bb ], [ %status.0267, %if.then197 ], [ %status.0267, %if.then189 ], [ %status.0267, %if.then180 ], [ %status.0267, %if.then172 ], [ %status.0267, %if.then163 ], [ %status.0267, %if.then154 ], [ %status.1.ph.ph260, %land.rhs51 ], [ %status.1.ph.ph260, %land.lhs.true ], [ %status.1.ph.ph260, %while.cond44 ], [ %status.0267, %while.cond44.us ], [ %status.0267, %land.lhs.true.us ], [ %status.0267, %land.rhs51.us ], [ %status.0267, %land.rhs ], [ %status.0267, %while.body ], [ %status.0267, %land.rhs31 ], [ %status.0267, %while.body36 ]
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !1081, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata ptr %policy_info.0.be, metadata !1079, metadata !DIExpression()), !dbg !1100
  %7 = load ptr, ptr %q, align 8, !dbg !1135, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %7, metadata !1080, metadata !DIExpression()), !dbg !1100
  %8 = load i8, ptr %7, align 1, !dbg !1110, !tbaa !575
  %cmp2.not = icmp eq i8 %8, 0, !dbg !1111
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !1112, !llvm.loop !1136

if.end21:                                         ; preds = %if.end8
  %call23 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.23, i64 noundef 4) #10, !dbg !1138
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1140
  br i1 %cmp24, label %while.cond27.preheader, label %if.end38, !dbg !1141

while.cond27.preheader:                           ; preds = %if.end21
  %9 = load ptr, ptr %q, align 8, !dbg !1142, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %9, metadata !1080, metadata !DIExpression()), !dbg !1100
  %call28261 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.24, i64 noundef 2) #10, !dbg !1144
  %cmp29.not262 = icmp eq i32 %call28261, 0, !dbg !1145
  br i1 %cmp29.not262, label %for.cond.backedge, label %land.rhs31, !dbg !1146

land.rhs31:                                       ; preds = %while.cond27.preheader, %while.body36
  %10 = load ptr, ptr %q, align 8, !dbg !1147, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %10, metadata !1080, metadata !DIExpression()), !dbg !1100
  %11 = load i8, ptr %10, align 1, !dbg !1148, !tbaa !575
  %cmp33.not = icmp eq i8 %11, 0, !dbg !1149
  br i1 %cmp33.not, label %for.cond.backedge, label %while.body36, !dbg !1150

while.body36:                                     ; preds = %land.rhs31
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #10, !dbg !1151
  %12 = load ptr, ptr %q, align 8, !dbg !1142, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %12, metadata !1080, metadata !DIExpression()), !dbg !1100
  %call28 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.24, i64 noundef 2) #10, !dbg !1144
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !1145
  br i1 %cmp29.not, label %for.cond.backedge, label %land.rhs31, !dbg !1146, !llvm.loop !1152

if.end38:                                         ; preds = %if.end21
  %call40 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.25) #10, !dbg !1154
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1155
  br i1 %cmp41, label %while.cond44thread-pre-split.preheader, label %if.end106, !dbg !1156

while.cond44thread-pre-split.preheader:           ; preds = %if.end38
  br i1 %cmp69, label %while.cond44thread-pre-split.us, label %while.cond44thread-pre-split.outer.split, !dbg !1157

while.cond44thread-pre-split.us:                  ; preds = %while.cond44thread-pre-split.preheader, %while.cond44thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !1158, !tbaa !575
  br label %while.cond44.us, !dbg !1158

while.cond44.us:                                  ; preds = %while.body56.us, %while.cond44thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond44thread-pre-split.us ], [ %18, %while.body56.us ], !dbg !1158
  call void @llvm.dbg.value(metadata i32 %status.0267, metadata !1081, metadata !DIExpression()), !dbg !1100
  %cmp46.not.us = icmp eq i8 %13, 47, !dbg !1159
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !1160

land.lhs.true.us:                                 ; preds = %while.cond44.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !1161, !tbaa !575
  %cmp49.not.us = icmp eq i8 %14, 62, !dbg !1162
  br i1 %cmp49.not.us, label %for.cond.backedge, label %land.rhs51.us, !dbg !1163

land.rhs51.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !1164, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %15, metadata !1080, metadata !DIExpression()), !dbg !1100
  %16 = load i8, ptr %15, align 1, !dbg !1165, !tbaa !575
  %cmp53.not.us = icmp eq i8 %16, 0, !dbg !1166
  br i1 %cmp53.not.us, label %for.cond.backedge, label %while.body56.us, !dbg !1167

while.body56.us:                                  ; preds = %land.rhs51.us
  %call58.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #10, !dbg !1168
  %17 = load ptr, ptr %q, align 8, !dbg !1169, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1170
  %18 = load i8, ptr %call1, align 1, !dbg !1171, !tbaa !575
  %cmp60.not.us = icmp eq i8 %18, 61, !dbg !1173
  br i1 %cmp60.not.us, label %if.end63.us, label %while.cond44.us, !dbg !1174, !llvm.loop !1175

if.end63.us:                                      ; preds = %while.body56.us
  %19 = load ptr, ptr %q, align 8, !dbg !1177, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1178
  %call65.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.26) #10, !dbg !1179
  %cmp66.us = icmp eq i32 %call65.us, 0, !dbg !1180
  br i1 %cmp66.us, label %if.then71.us, label %while.cond44thread-pre-split.us.backedge, !dbg !1181

if.then71.us:                                     ; preds = %if.end63.us
  %call72.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 800, i32 noundef 495, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.18, ptr noundef nonnull %call1) #10, !dbg !1182
  br label %while.cond44thread-pre-split.us.backedge, !dbg !1183

while.cond44thread-pre-split.us.backedge:         ; preds = %if.then71.us, %if.end63.us
  br label %while.cond44thread-pre-split.us, !dbg !1158, !llvm.loop !1175

while.cond44thread-pre-split.outer.split:         ; preds = %while.cond44thread-pre-split.preheader, %if.end102
  %status.1.ph.ph260 = phi i32 [ %status.2, %if.end102 ], [ %status.0267, %while.cond44thread-pre-split.preheader ]
  br label %while.cond44thread-pre-split, !dbg !1167

while.cond44thread-pre-split:                     ; preds = %if.end63, %while.cond44thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !1158, !tbaa !575
  br label %while.cond44, !dbg !1158

while.cond44:                                     ; preds = %while.cond44thread-pre-split, %while.body56
  %20 = phi i8 [ %.pr, %while.cond44thread-pre-split ], [ %25, %while.body56 ], !dbg !1158
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph260, metadata !1081, metadata !DIExpression()), !dbg !1100
  %cmp46.not = icmp eq i8 %20, 47, !dbg !1159
  br i1 %cmp46.not, label %for.cond.backedge, label %land.lhs.true, !dbg !1160

land.lhs.true:                                    ; preds = %while.cond44
  %21 = load i8, ptr %add.ptr, align 1, !dbg !1161, !tbaa !575
  %cmp49.not = icmp eq i8 %21, 62, !dbg !1162
  br i1 %cmp49.not, label %for.cond.backedge, label %land.rhs51, !dbg !1163

land.rhs51:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !1164, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %22, metadata !1080, metadata !DIExpression()), !dbg !1100
  %23 = load i8, ptr %22, align 1, !dbg !1165, !tbaa !575
  %cmp53.not = icmp eq i8 %23, 0, !dbg !1166
  br i1 %cmp53.not, label %for.cond.backedge, label %while.body56, !dbg !1167

while.body56:                                     ; preds = %land.rhs51
  %call58 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #10, !dbg !1168
  %24 = load ptr, ptr %q, align 8, !dbg !1169, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1170
  %25 = load i8, ptr %call1, align 1, !dbg !1171, !tbaa !575
  %cmp60.not = icmp eq i8 %25, 61, !dbg !1173
  br i1 %cmp60.not, label %if.end63, label %while.cond44, !dbg !1174, !llvm.loop !1175

if.end63:                                         ; preds = %while.body56
  %26 = load ptr, ptr %q, align 8, !dbg !1177, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1178
  %call65 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.26) #10, !dbg !1179
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1180
  br i1 %cmp66, label %if.then68, label %while.cond44thread-pre-split, !dbg !1181, !llvm.loop !1175

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #10, !dbg !1184
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1082, metadata !DIExpression()), !dbg !1185
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #10, !dbg !1186
  %27 = load i8, ptr %path, align 16, !dbg !1187, !tbaa !575
  %cmp77.not = icmp eq i8 %27, 0, !dbg !1189
  br i1 %cmp77.not, label %if.end82, label %if.then79, !dbg !1190

if.then79:                                        ; preds = %if.then68
  %call81 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.28, i64 noundef 4096) #10, !dbg !1191
  br label %if.end82, !dbg !1192

if.end82:                                         ; preds = %if.then79, %if.then68
  %28 = load i8, ptr %call1, align 1, !dbg !1193, !tbaa !575
  %cmp85 = icmp eq i8 %28, 47, !dbg !1195
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !1196

if.then87:                                        ; preds = %if.end82
  %call89 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #10, !dbg !1197
  br label %if.end93, !dbg !1198

if.else90:                                        ; preds = %if.end82
  %call92 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #10, !dbg !1199
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.then87
  %call95 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #10, !dbg !1200
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1093, metadata !DIExpression()), !dbg !1201
  %cmp96.not = icmp eq ptr %call95, null, !dbg !1202
  br i1 %cmp96.not, label %if.end102, label %if.then98, !dbg !1204

if.then98:                                        ; preds = %if.end93
  %call100 = call fastcc i32 @LoadPolicyCache(ptr noundef %policy_cache, ptr noundef nonnull %call95, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !1205
  %and = and i32 %call100, %status.1.ph.ph260, !dbg !1207
  call void @llvm.dbg.value(metadata i32 %and, metadata !1081, metadata !DIExpression()), !dbg !1100
  %call101 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call95) #10, !dbg !1208
  call void @llvm.dbg.value(metadata ptr %call101, metadata !1093, metadata !DIExpression()), !dbg !1201
  br label %if.end102, !dbg !1209

if.end102:                                        ; preds = %if.then98, %if.end93
  %status.2 = phi i32 [ %and, %if.then98 ], [ %status.1.ph.ph260, %if.end93 ], !dbg !1100
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1081, metadata !DIExpression()), !dbg !1100
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #10, !dbg !1210
  br label %while.cond44thread-pre-split.outer.split, !dbg !1157, !llvm.loop !1175

if.end106:                                        ; preds = %if.end38
  %call108 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.29) #10, !dbg !1211
  %cmp109 = icmp eq i32 %call108, 0, !dbg !1212
  br i1 %cmp109, label %if.then111, label %if.end126, !dbg !1213

if.then111:                                       ; preds = %if.end106
  %call112 = call ptr @AcquireMagickMemory(i64 noundef 72) #14, !dbg !1214
  call void @llvm.dbg.value(metadata ptr %call112, metadata !1079, metadata !DIExpression()), !dbg !1100
  %cmp113 = icmp eq ptr %call112, null, !dbg !1215
  br i1 %cmp113, label %if.then115, label %if.end122, !dbg !1216

if.then115:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception116) #10, !dbg !1217
  call void @llvm.dbg.declare(metadata ptr %exception116, metadata !1099, metadata !DIExpression()), !dbg !1217
  call void @GetExceptionInfo(ptr noundef nonnull %exception116) #10, !dbg !1217
  %call117 = tail call ptr @__errno_location() #12, !dbg !1217
  %29 = load i32, ptr %call117, align 4, !dbg !1217, !tbaa !523
  %call118 = call ptr @GetExceptionMessage(i32 noundef %29) #10, !dbg !1217
  call void @llvm.dbg.value(metadata ptr %call118, metadata !1094, metadata !DIExpression()), !dbg !1218
  %call119 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception116, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 835, i32 noundef 700, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %call118) #10, !dbg !1217
  %call120 = call ptr @DestroyString(ptr noundef %call118) #10, !dbg !1217
  call void @llvm.dbg.value(metadata ptr %call120, metadata !1094, metadata !DIExpression()), !dbg !1218
  call void @CatchException(ptr noundef nonnull %exception116) #10, !dbg !1217
  %call121 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception116) #10, !dbg !1217
  call void @MagickCoreTerminus() #10, !dbg !1217
  call void @_exit(i32 noundef 1) #13, !dbg !1217
  unreachable, !dbg !1217

if.end122:                                        ; preds = %if.then111
  %call123 = call ptr @ResetMagickMemory(ptr noundef nonnull %call112, i32 noundef 0, i64 noundef 72) #10, !dbg !1219
  %call124 = call ptr @ConstantString(ptr noundef %filename) #10, !dbg !1220
  store ptr %call124, ptr %call112, align 8, !dbg !1221, !tbaa !549
  %exempt = getelementptr inbounds %struct._PolicyInfo, ptr %call112, i64 0, i32 6, !dbg !1222
  store i32 0, ptr %exempt, align 8, !dbg !1223, !tbaa !554
  %signature = getelementptr inbounds %struct._PolicyInfo, ptr %call112, i64 0, i32 10, !dbg !1224
  store i64 2880220587, ptr %signature, align 8, !dbg !1225, !tbaa !557
  br label %for.cond.backedge, !dbg !1226

if.end126:                                        ; preds = %if.end106
  %cmp127 = icmp eq ptr %policy_info.0266, null, !dbg !1227
  br i1 %cmp127, label %for.cond.backedge, label %if.end130, !dbg !1229

if.end130:                                        ; preds = %if.end126
  %call132 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.30) #10, !dbg !1230
  %cmp133 = icmp eq i32 %call132, 0, !dbg !1232
  br i1 %cmp133, label %if.then135, label %if.end142, !dbg !1233

if.then135:                                       ; preds = %if.end130
  %call136 = call i32 @AppendValueToLinkedList(ptr noundef %policy_cache, ptr noundef nonnull %policy_info.0266) #10, !dbg !1234
  call void @llvm.dbg.value(metadata i32 %call136, metadata !1081, metadata !DIExpression()), !dbg !1100
  %cmp137 = icmp eq i32 %call136, 0, !dbg !1236
  br i1 %cmp137, label %if.then139, label %for.cond.backedge, !dbg !1238

if.then139:                                       ; preds = %if.then135
  %name = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 3, !dbg !1239
  %30 = load ptr, ptr %name, align 8, !dbg !1239, !tbaa !431
  %call140 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 848, i32 noundef 400, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %30) #10, !dbg !1240
  br label %for.cond.backedge, !dbg !1241

if.end142:                                        ; preds = %if.end130
  %31 = load ptr, ptr %q, align 8, !dbg !1242, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %31, metadata !1080, metadata !DIExpression()), !dbg !1100
  call void @GetMagickToken(ptr noundef %31, ptr noundef null, ptr noundef nonnull %call1) #10, !dbg !1243
  %32 = load i8, ptr %call1, align 1, !dbg !1244, !tbaa !575
  %cmp144.not = icmp eq i8 %32, 61, !dbg !1246
  br i1 %cmp144.not, label %if.end147, label %for.cond.backedge, !dbg !1247

if.end147:                                        ; preds = %if.end142
  %33 = load ptr, ptr %q, align 8, !dbg !1248, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %q, metadata !1080, metadata !DIExpression(DW_OP_deref)), !dbg !1100
  call void @GetMagickToken(ptr noundef %33, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1249
  %34 = load ptr, ptr %q, align 8, !dbg !1250, !tbaa !405
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #10, !dbg !1251
  %35 = load i8, ptr %keyword, align 16, !dbg !1252, !tbaa !575
  %conv149 = sext i8 %35 to i32, !dbg !1252
  switch i32 %conv149, label %for.cond.backedge [
    i32 68, label %sw.bb
    i32 100, label %sw.bb
    i32 78, label %sw.bb158
    i32 110, label %sw.bb158
    i32 80, label %sw.bb167
    i32 112, label %sw.bb167
    i32 82, label %sw.bb175
    i32 114, label %sw.bb175
    i32 83, label %sw.bb184
    i32 115, label %sw.bb184
    i32 86, label %sw.bb192
    i32 118, label %sw.bb192
  ], !dbg !1253

sw.bb:                                            ; preds = %if.end147, %if.end147
  %call151 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.31) #10, !dbg !1254
  %cmp152 = icmp eq i32 %call151, 0, !dbg !1258
  br i1 %cmp152, label %if.then154, label %for.cond.backedge, !dbg !1259

if.then154:                                       ; preds = %sw.bb
  %call155 = call i64 @ParseCommandOption(i32 noundef 53, i32 noundef 1, ptr noundef nonnull %call1) #10, !dbg !1260
  %conv156 = trunc i64 %call155 to i32, !dbg !1262
  %domain = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 1, !dbg !1263
  store i32 %conv156, ptr %domain, align 8, !dbg !1264, !tbaa !784
  br label %for.cond.backedge, !dbg !1265

sw.bb158:                                         ; preds = %if.end147, %if.end147
  %call160 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.32) #10, !dbg !1266
  %cmp161 = icmp eq i32 %call160, 0, !dbg !1269
  br i1 %cmp161, label %if.then163, label %for.cond.backedge, !dbg !1270

if.then163:                                       ; preds = %sw.bb158
  %call164 = call ptr @ConstantString(ptr noundef nonnull %call1) #10, !dbg !1271
  %name165 = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 3, !dbg !1273
  store ptr %call164, ptr %name165, align 8, !dbg !1274, !tbaa !431
  br label %for.cond.backedge, !dbg !1275

sw.bb167:                                         ; preds = %if.end147, %if.end147
  %call169 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.33) #10, !dbg !1276
  %cmp170 = icmp eq i32 %call169, 0, !dbg !1279
  br i1 %cmp170, label %if.then172, label %for.cond.backedge, !dbg !1280

if.then172:                                       ; preds = %sw.bb167
  %call173 = call ptr @ConstantString(ptr noundef nonnull %call1) #10, !dbg !1281
  %pattern = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 4, !dbg !1283
  store ptr %call173, ptr %pattern, align 8, !dbg !1284, !tbaa !788
  br label %for.cond.backedge, !dbg !1285

sw.bb175:                                         ; preds = %if.end147, %if.end147
  %call177 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.34) #10, !dbg !1286
  %cmp178 = icmp eq i32 %call177, 0, !dbg !1289
  br i1 %cmp178, label %if.then180, label %for.cond.backedge, !dbg !1290

if.then180:                                       ; preds = %sw.bb175
  %call181 = call i64 @ParseCommandOption(i32 noundef 54, i32 noundef 1, ptr noundef nonnull %call1) #10, !dbg !1291
  %conv182 = trunc i64 %call181 to i32, !dbg !1293
  %rights = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 2, !dbg !1294
  store i32 %conv182, ptr %rights, align 4, !dbg !1295, !tbaa !794
  br label %for.cond.backedge, !dbg !1296

sw.bb184:                                         ; preds = %if.end147, %if.end147
  %call186 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.35) #10, !dbg !1297
  %cmp187 = icmp eq i32 %call186, 0, !dbg !1300
  br i1 %cmp187, label %if.then189, label %for.cond.backedge, !dbg !1301

if.then189:                                       ; preds = %sw.bb184
  %call190 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #10, !dbg !1302
  %stealth = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 7, !dbg !1304
  store i32 %call190, ptr %stealth, align 4, !dbg !1305, !tbaa !426
  br label %for.cond.backedge, !dbg !1306

sw.bb192:                                         ; preds = %if.end147, %if.end147
  %call194 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.36) #10, !dbg !1307
  %cmp195 = icmp eq i32 %call194, 0, !dbg !1310
  br i1 %cmp195, label %if.then197, label %for.cond.backedge, !dbg !1311

if.then197:                                       ; preds = %sw.bb192
  %call198 = call ptr @ConstantString(ptr noundef nonnull %call1) #10, !dbg !1312
  %value = getelementptr inbounds %struct._PolicyInfo, ptr %policy_info.0266, i64 0, i32 5, !dbg !1314
  store ptr %call198, ptr %value, align 8, !dbg !1315, !tbaa !729
  br label %for.cond.backedge, !dbg !1316

for.end:                                          ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0267, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !1100
  %call200 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #10, !dbg !1317
  call void @llvm.dbg.value(metadata ptr %call200, metadata !1078, metadata !DIExpression()), !dbg !1100
  br label %cleanup, !dbg !1318

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 0, %entry ], !dbg !1100
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #10, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #10, !dbg !1319
  ret i32 %retval.0, !dbg !1319
}

declare !dbg !1320 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !1323 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #3

declare !dbg !1326 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1329 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #8

declare !dbg !1332 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1335 i32 @AppendValueToLinkedList(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1338 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !1339 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1342 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1345 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1349 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1350 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1354 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1357 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!362, !363, !364, !365, !366, !367}
!llvm.ident = !{!368}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "policy_cache", scope: !2, file: !235, line: 121, type: !325, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !229, globals: !345, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/policy.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "ee854e731034e0d699a9681fe1fe0d14")
!4 = !{!5, !16, !23, !28, !101, !126, !202, !217}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 28, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6242d97ee47d0d7f0e3878e07f1ce5b1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "UndefinedPolicyDomain", value: 0)
!10 = !DIEnumerator(name: "CoderPolicyDomain", value: 1)
!11 = !DIEnumerator(name: "DelegatePolicyDomain", value: 2)
!12 = !DIEnumerator(name: "FilterPolicyDomain", value: 3)
!13 = !DIEnumerator(name: "PathPolicyDomain", value: 4)
!14 = !DIEnumerator(name: "ResourcePolicyDomain", value: 5)
!15 = !DIEnumerator(name: "SystemPolicyDomain", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 39, baseType: !7, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22}
!18 = !DIEnumerator(name: "UndefinedPolicyRights", value: 0)
!19 = !DIEnumerator(name: "NoPolicyRights", value: 0)
!20 = !DIEnumerator(name: "ReadPolicyRights", value: 1)
!21 = !DIEnumerator(name: "WritePolicyRights", value: 2)
!22 = !DIEnumerator(name: "ExecutePolicyRights", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 211, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!25 = !{!26, !27}
!26 = !DIEnumerator(name: "MagickFalse", value: 0)
!27 = !DIEnumerator(name: "MagickTrue", value: 1)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 28, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!31 = !DIEnumerator(name: "UndefinedException", value: 0)
!32 = !DIEnumerator(name: "WarningException", value: 300)
!33 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!34 = !DIEnumerator(name: "TypeWarning", value: 305)
!35 = !DIEnumerator(name: "OptionWarning", value: 310)
!36 = !DIEnumerator(name: "DelegateWarning", value: 315)
!37 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!38 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!39 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!40 = !DIEnumerator(name: "BlobWarning", value: 335)
!41 = !DIEnumerator(name: "StreamWarning", value: 340)
!42 = !DIEnumerator(name: "CacheWarning", value: 345)
!43 = !DIEnumerator(name: "CoderWarning", value: 350)
!44 = !DIEnumerator(name: "FilterWarning", value: 352)
!45 = !DIEnumerator(name: "ModuleWarning", value: 355)
!46 = !DIEnumerator(name: "DrawWarning", value: 360)
!47 = !DIEnumerator(name: "ImageWarning", value: 365)
!48 = !DIEnumerator(name: "WandWarning", value: 370)
!49 = !DIEnumerator(name: "RandomWarning", value: 375)
!50 = !DIEnumerator(name: "XServerWarning", value: 380)
!51 = !DIEnumerator(name: "MonitorWarning", value: 385)
!52 = !DIEnumerator(name: "RegistryWarning", value: 390)
!53 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!54 = !DIEnumerator(name: "PolicyWarning", value: 399)
!55 = !DIEnumerator(name: "ErrorException", value: 400)
!56 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!57 = !DIEnumerator(name: "TypeError", value: 405)
!58 = !DIEnumerator(name: "OptionError", value: 410)
!59 = !DIEnumerator(name: "DelegateError", value: 415)
!60 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!61 = !DIEnumerator(name: "CorruptImageError", value: 425)
!62 = !DIEnumerator(name: "FileOpenError", value: 430)
!63 = !DIEnumerator(name: "BlobError", value: 435)
!64 = !DIEnumerator(name: "StreamError", value: 440)
!65 = !DIEnumerator(name: "CacheError", value: 445)
!66 = !DIEnumerator(name: "CoderError", value: 450)
!67 = !DIEnumerator(name: "FilterError", value: 452)
!68 = !DIEnumerator(name: "ModuleError", value: 455)
!69 = !DIEnumerator(name: "DrawError", value: 460)
!70 = !DIEnumerator(name: "ImageError", value: 465)
!71 = !DIEnumerator(name: "WandError", value: 470)
!72 = !DIEnumerator(name: "RandomError", value: 475)
!73 = !DIEnumerator(name: "XServerError", value: 480)
!74 = !DIEnumerator(name: "MonitorError", value: 485)
!75 = !DIEnumerator(name: "RegistryError", value: 490)
!76 = !DIEnumerator(name: "ConfigureError", value: 495)
!77 = !DIEnumerator(name: "PolicyError", value: 499)
!78 = !DIEnumerator(name: "FatalErrorException", value: 700)
!79 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!80 = !DIEnumerator(name: "TypeFatalError", value: 705)
!81 = !DIEnumerator(name: "OptionFatalError", value: 710)
!82 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!83 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!84 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!85 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!86 = !DIEnumerator(name: "BlobFatalError", value: 735)
!87 = !DIEnumerator(name: "StreamFatalError", value: 740)
!88 = !DIEnumerator(name: "CacheFatalError", value: 745)
!89 = !DIEnumerator(name: "CoderFatalError", value: 750)
!90 = !DIEnumerator(name: "FilterFatalError", value: 752)
!91 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!92 = !DIEnumerator(name: "DrawFatalError", value: 760)
!93 = !DIEnumerator(name: "ImageFatalError", value: 765)
!94 = !DIEnumerator(name: "WandFatalError", value: 770)
!95 = !DIEnumerator(name: "RandomFatalError", value: 775)
!96 = !DIEnumerator(name: "XServerFatalError", value: 780)
!97 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!98 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!99 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!100 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 34, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!104 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!105 = !DIEnumerator(name: "NoEvents", value: 0)
!106 = !DIEnumerator(name: "TraceEvent", value: 1)
!107 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!108 = !DIEnumerator(name: "BlobEvent", value: 4)
!109 = !DIEnumerator(name: "CacheEvent", value: 8)
!110 = !DIEnumerator(name: "CoderEvent", value: 16)
!111 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!112 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!113 = !DIEnumerator(name: "DrawEvent", value: 128)
!114 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!115 = !DIEnumerator(name: "ImageEvent", value: 512)
!116 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!117 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!118 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!119 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!120 = !DIEnumerator(name: "TransformEvent", value: 16384)
!121 = !DIEnumerator(name: "UserEvent", value: 36864)
!122 = !DIEnumerator(name: "WandEvent", value: 65536)
!123 = !DIEnumerator(name: "X11Event", value: 131072)
!124 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!125 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !127, line: 25, baseType: !128, size: 32, elements: !129)
!127 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!128 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201}
!130 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!131 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!132 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!133 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!134 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!135 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!136 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!137 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!138 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!139 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!140 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!141 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!142 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!143 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!144 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!145 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!146 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!147 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!148 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!149 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!150 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!151 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!152 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!153 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!154 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!155 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!156 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!157 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!158 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!159 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!160 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!161 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!162 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!163 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!164 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!165 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!166 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!167 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!168 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!169 = !DIEnumerator(name: "MagickListOptions", value: 38)
!170 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!171 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!172 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!173 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!174 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!175 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!176 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!177 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!178 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!179 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!180 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!181 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!182 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!183 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!184 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!185 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!186 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!187 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!188 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!189 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!190 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!191 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!192 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!193 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!194 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!195 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!196 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!197 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!198 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!199 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!200 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!201 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!202 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !203, line: 46, baseType: !7, size: 32, elements: !204)
!203 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "36575f934ef4fe7e9d50a3cb17bd5c66")
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!205 = !DIEnumerator(name: "_ISupper", value: 256)
!206 = !DIEnumerator(name: "_ISlower", value: 512)
!207 = !DIEnumerator(name: "_ISalpha", value: 1024)
!208 = !DIEnumerator(name: "_ISdigit", value: 2048)
!209 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!210 = !DIEnumerator(name: "_ISspace", value: 8192)
!211 = !DIEnumerator(name: "_ISprint", value: 16384)
!212 = !DIEnumerator(name: "_ISgraph", value: 32768)
!213 = !DIEnumerator(name: "_ISblank", value: 1)
!214 = !DIEnumerator(name: "_IScntrl", value: 2)
!215 = !DIEnumerator(name: "_ISpunct", value: 4)
!216 = !DIEnumerator(name: "_ISalnum", value: 8)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 25, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228}
!220 = !DIEnumerator(name: "UndefinedPath", value: 0)
!221 = !DIEnumerator(name: "MagickPath", value: 1)
!222 = !DIEnumerator(name: "RootPath", value: 2)
!223 = !DIEnumerator(name: "HeadPath", value: 3)
!224 = !DIEnumerator(name: "TailPath", value: 4)
!225 = !DIEnumerator(name: "BasePath", value: 5)
!226 = !DIEnumerator(name: "ExtensionPath", value: 6)
!227 = !DIEnumerator(name: "SubimagePath", value: 7)
!228 = !DIEnumerator(name: "CanonicalPath", value: 8)
!229 = !{!230, !231, !259, !260, !257, !261, !262, !238, !263, !265, !322, !252, !325, !128, !329, !296, !330, !344, !241, !243}
!230 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyInfo", file: !6, line: 49, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PolicyInfo", file: !235, line: 68, size: 576, elements: !236)
!235 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ee854e731034e0d699a9681fe1fe0d14")
!236 = !{!237, !240, !242, !244, !245, !246, !247, !249, !250, !251, !256}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !234, file: !235, line: 71, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !234, file: !235, line: 74, baseType: !241, size: 32, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyDomain", file: !6, line: 37, baseType: !5)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "rights", scope: !234, file: !235, line: 77, baseType: !243, size: 32, offset: 96)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyRights", file: !6, line: 46, baseType: !16)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !235, line: 80, baseType: !238, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !234, file: !235, line: 81, baseType: !238, size: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !235, line: 82, baseType: !238, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !234, file: !235, line: 85, baseType: !248, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !24, line: 215, baseType: !23)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !234, file: !235, line: 86, baseType: !248, size: 32, offset: 352)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !234, file: !235, line: 87, baseType: !248, size: 32, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !234, file: !235, line: 90, baseType: !252, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !254, line: 26, baseType: !255)
!254 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !254, line: 25, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !234, file: !235, line: 93, baseType: !257, size: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !258, line: 46, baseType: !230)
!258 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !268, line: 7, baseType: !269)
!268 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !270, line: 49, size: 1728, elements: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!271 = !{!272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !287, !289, !290, !291, !295, !297, !299, !303, !306, !308, !311, !314, !315, !316, !317, !318}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !269, file: !270, line: 51, baseType: !128, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !269, file: !270, line: 54, baseType: !238, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !269, file: !270, line: 55, baseType: !238, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !269, file: !270, line: 56, baseType: !238, size: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !269, file: !270, line: 57, baseType: !238, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !269, file: !270, line: 58, baseType: !238, size: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !269, file: !270, line: 59, baseType: !238, size: 64, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !269, file: !270, line: 60, baseType: !238, size: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !269, file: !270, line: 61, baseType: !238, size: 64, offset: 512)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !269, file: !270, line: 64, baseType: !238, size: 64, offset: 576)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !269, file: !270, line: 65, baseType: !238, size: 64, offset: 640)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !269, file: !270, line: 66, baseType: !238, size: 64, offset: 704)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !269, file: !270, line: 68, baseType: !285, size: 64, offset: 768)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !270, line: 36, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !269, file: !270, line: 70, baseType: !288, size: 64, offset: 832)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !269, file: !270, line: 72, baseType: !128, size: 32, offset: 896)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !269, file: !270, line: 73, baseType: !128, size: 32, offset: 928)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !269, file: !270, line: 74, baseType: !292, size: 64, offset: 960)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !293, line: 152, baseType: !294)
!293 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!294 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !269, file: !270, line: 77, baseType: !296, size: 16, offset: 1024)
!296 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !269, file: !270, line: 78, baseType: !298, size: 8, offset: 1040)
!298 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !269, file: !270, line: 79, baseType: !300, size: 8, offset: 1048)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 1)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !269, file: !270, line: 81, baseType: !304, size: 64, offset: 1088)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !270, line: 43, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !269, file: !270, line: 89, baseType: !307, size: 64, offset: 1152)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !293, line: 153, baseType: !294)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !269, file: !270, line: 91, baseType: !309, size: 64, offset: 1216)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !270, line: 37, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !269, file: !270, line: 92, baseType: !312, size: 64, offset: 1280)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !270, line: 38, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !269, file: !270, line: 93, baseType: !288, size: 64, offset: 1344)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !269, file: !270, line: 94, baseType: !259, size: 64, offset: 1408)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !269, file: !270, line: 95, baseType: !257, size: 64, offset: 1472)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !269, file: !270, line: 96, baseType: !128, size: 32, offset: 1536)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !269, file: !270, line: 98, baseType: !319, size: 160, offset: 1568)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 160, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 20)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !323, line: 77, baseType: !324)
!323 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !293, line: 193, baseType: !294)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !327, line: 34, baseType: !328)
!327 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !327, line: 33, flags: DIFlagFwdDecl)
!329 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !333, line: 40, baseType: !334)
!333 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !333, line: 29, size: 32960, elements: !335)
!335 = !{!336, !340, !342, !343}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !334, file: !333, line: 32, baseType: !337, size: 32768)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 32768, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 4096)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !334, file: !333, line: 35, baseType: !341, size: 64, offset: 32768)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !334, file: !333, line: 38, baseType: !257, size: 64, offset: 32832)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !334, file: !333, line: 39, baseType: !257, size: 64, offset: 32896)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!345 = !{!346, !0, !360}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "PolicyMap", scope: !2, file: !235, line: 114, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !301)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "PolicyMapInfo", file: !235, line: 108, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PolicyMapInfo", file: !235, line: 96, size: 256, elements: !352)
!352 = !{!353, !355, !357, !358, !359}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !351, file: !235, line: 99, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rights", scope: !351, file: !235, line: 102, baseType: !356, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !351, file: !235, line: 105, baseType: !263, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !351, file: !235, line: 106, baseType: !263, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !235, line: 107, baseType: !263, size: 64, offset: 192)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "policy_semaphore", scope: !2, file: !235, line: 124, type: !252, isLocal: true, isDefinition: true)
!362 = !{i32 7, !"Dwarf Version", i32 5}
!363 = !{i32 2, !"Debug Info Version", i32 3}
!364 = !{i32 1, !"wchar_size", i32 4}
!365 = !{i32 7, !"PIC Level", i32 2}
!366 = !{i32 7, !"PIE Level", i32 2}
!367 = !{i32 7, !"uwtable", i32 2}
!368 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!369 = distinct !DISubprogram(name: "GetPolicyInfoList", scope: !235, file: !235, line: 331, type: !370, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !386)
!370 = !DISubroutineType(types: !371)
!371 = !{!260, !263, !372, !373}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !24, line: 219, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !29, line: 102, size: 448, elements: !376)
!376 = !{!377, !379, !380, !381, !382, !383, !384, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !375, file: !29, line: 105, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !29, line: 100, baseType: !28)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !375, file: !29, line: 108, baseType: !128, size: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !375, file: !29, line: 111, baseType: !238, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !375, file: !29, line: 112, baseType: !238, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !375, file: !29, line: 115, baseType: !259, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !375, file: !29, line: 118, baseType: !248, size: 32, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !375, file: !29, line: 121, baseType: !252, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !375, file: !29, line: 124, baseType: !257, size: 64, offset: 384)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DILocalVariable(name: "pattern", arg: 1, scope: !369, file: !235, line: 331, type: !263)
!388 = !DILocalVariable(name: "number_policies", arg: 2, scope: !369, file: !235, line: 332, type: !372)
!389 = !DILocalVariable(name: "exception", arg: 3, scope: !369, file: !235, line: 332, type: !373)
!390 = !DILocalVariable(name: "policies", scope: !369, file: !235, line: 335, type: !260)
!391 = !DILocalVariable(name: "p", scope: !369, file: !235, line: 338, type: !231)
!392 = !DILocalVariable(name: "i", scope: !369, file: !235, line: 341, type: !322)
!393 = !DILocation(line: 0, scope: !369)
!394 = !DILocation(line: 347, column: 10, scope: !369)
!395 = !DILocation(line: 349, column: 19, scope: !369)
!396 = !{!397, !397, i64 0}
!397 = !{!"long", !398, i64 0}
!398 = !{!"omnipotent char", !399, i64 0}
!399 = !{!"Simple C/C++ TBAA"}
!400 = !DILocation(line: 350, column: 5, scope: !369)
!401 = !DILocation(line: 351, column: 9, scope: !402)
!402 = distinct !DILexicalBlock(scope: !369, file: !235, line: 351, column: 7)
!403 = !DILocation(line: 351, column: 7, scope: !369)
!404 = !DILocation(line: 354, column: 37, scope: !369)
!405 = !{!406, !406, i64 0}
!406 = !{!"any pointer", !398, i64 0}
!407 = !DILocation(line: 354, column: 5, scope: !369)
!408 = !DILocation(line: 354, column: 50, scope: !369)
!409 = !DILocation(line: 353, column: 34, scope: !369)
!410 = !DILocation(line: 355, column: 16, scope: !411)
!411 = distinct !DILexicalBlock(scope: !369, file: !235, line: 355, column: 7)
!412 = !DILocation(line: 355, column: 7, scope: !369)
!413 = !DILocation(line: 360, column: 21, scope: !369)
!414 = !DILocation(line: 360, column: 3, scope: !369)
!415 = !DILocation(line: 361, column: 27, scope: !369)
!416 = !DILocation(line: 361, column: 3, scope: !369)
!417 = !DILocation(line: 362, column: 51, scope: !369)
!418 = !DILocation(line: 362, column: 26, scope: !369)
!419 = !DILocation(line: 363, column: 15, scope: !420)
!420 = distinct !DILexicalBlock(scope: !421, file: !235, line: 363, column: 3)
!421 = distinct !DILexicalBlock(scope: !369, file: !235, line: 363, column: 3)
!422 = !DILocation(line: 363, column: 3, scope: !421)
!423 = !DILocation(line: 365, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !235, line: 365, column: 9)
!425 = distinct !DILexicalBlock(scope: !420, file: !235, line: 364, column: 3)
!426 = !{!427, !398, i64 44}
!427 = !{!"_PolicyInfo", !406, i64 0, !398, i64 8, !398, i64 12, !406, i64 16, !406, i64 24, !406, i64 32, !398, i64 40, !398, i64 44, !398, i64 48, !406, i64 56, !397, i64 64}
!428 = !DILocation(line: 365, column: 21, scope: !424)
!429 = !DILocation(line: 365, column: 37, scope: !424)
!430 = !DILocation(line: 366, column: 28, scope: !424)
!431 = !{!427, !406, i64 16}
!432 = !DILocation(line: 366, column: 10, scope: !424)
!433 = !DILocation(line: 366, column: 54, scope: !424)
!434 = !DILocation(line: 365, column: 9, scope: !425)
!435 = !DILocation(line: 367, column: 17, scope: !424)
!436 = !DILocation(line: 367, column: 7, scope: !424)
!437 = !DILocation(line: 367, column: 20, scope: !424)
!438 = !DILocation(line: 0, scope: !421)
!439 = !DILocation(line: 368, column: 53, scope: !425)
!440 = !DILocation(line: 368, column: 28, scope: !425)
!441 = distinct !{!441, !422, !442, !443, !444}
!442 = !DILocation(line: 369, column: 3, scope: !421)
!443 = !{!"llvm.loop.mustprogress"}
!444 = !{!"llvm.loop.unroll.disable"}
!445 = !DILocation(line: 370, column: 23, scope: !369)
!446 = !DILocation(line: 370, column: 3, scope: !369)
!447 = !DILocation(line: 371, column: 3, scope: !369)
!448 = !DILocation(line: 371, column: 14, scope: !369)
!449 = !DILocation(line: 372, column: 19, scope: !369)
!450 = !DILocation(line: 373, column: 3, scope: !369)
!451 = !DILocation(line: 374, column: 1, scope: !369)
!452 = !DISubprogram(name: "LogMagickEvent", scope: !102, file: !102, line: 83, type: !453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!453 = !DISubroutineType(types: !454)
!454 = !{!248, !455, !263, !263, !457, !263, null}
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !102, line: 58, baseType: !101)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!458 = !{}
!459 = distinct !DISubprogram(name: "GetPolicyInfo", scope: !235, file: !235, line: 253, type: !460, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !462)
!460 = !DISubroutineType(types: !461)
!461 = !{!261, !263, !373}
!462 = !{!463, !464, !465, !466, !467}
!463 = !DILocalVariable(name: "name", arg: 1, scope: !459, file: !235, line: 253, type: !263)
!464 = !DILocalVariable(name: "exception", arg: 2, scope: !459, file: !235, line: 253, type: !373)
!465 = !DILocalVariable(name: "policyname", scope: !459, file: !235, line: 256, type: !337)
!466 = !DILocalVariable(name: "p", scope: !459, file: !235, line: 259, type: !261)
!467 = !DILocalVariable(name: "q", scope: !459, file: !235, line: 262, type: !238)
!468 = !DILocation(line: 0, scope: !459)
!469 = !DILocation(line: 255, column: 3, scope: !459)
!470 = !DILocation(line: 256, column: 5, scope: !459)
!471 = !DILocalVariable(name: "exception", arg: 1, scope: !472, file: !235, line: 517, type: !373)
!472 = distinct !DISubprogram(name: "IsPolicyCacheInstantiated", scope: !235, file: !235, line: 517, type: !473, scopeLine: 518, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!248, !373}
!475 = !{!471}
!476 = !DILocation(line: 0, scope: !472, inlinedAt: !477)
!477 = distinct !DILocation(line: 265, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !459, file: !235, line: 265, column: 7)
!479 = !DILocation(line: 519, column: 7, scope: !480, inlinedAt: !477)
!480 = distinct !DILexicalBlock(scope: !472, file: !235, line: 519, column: 7)
!481 = !DILocation(line: 519, column: 20, scope: !480, inlinedAt: !477)
!482 = !DILocation(line: 519, column: 7, scope: !472, inlinedAt: !477)
!483 = !DILocation(line: 521, column: 11, scope: !484, inlinedAt: !477)
!484 = distinct !DILexicalBlock(scope: !485, file: !235, line: 521, column: 11)
!485 = distinct !DILexicalBlock(scope: !480, file: !235, line: 520, column: 5)
!486 = !DILocation(line: 521, column: 28, scope: !484, inlinedAt: !477)
!487 = !DILocation(line: 521, column: 11, scope: !485, inlinedAt: !477)
!488 = !DILocation(line: 522, column: 9, scope: !484, inlinedAt: !477)
!489 = !DILocation(line: 523, column: 25, scope: !485, inlinedAt: !477)
!490 = !DILocation(line: 523, column: 7, scope: !485, inlinedAt: !477)
!491 = !DILocation(line: 524, column: 11, scope: !492, inlinedAt: !477)
!492 = distinct !DILexicalBlock(scope: !485, file: !235, line: 524, column: 11)
!493 = !DILocation(line: 524, column: 24, scope: !492, inlinedAt: !477)
!494 = !DILocation(line: 524, column: 11, scope: !485, inlinedAt: !477)
!495 = !DILocalVariable(name: "filename", arg: 1, scope: !496, file: !235, line: 160, type: !263)
!496 = distinct !DISubprogram(name: "AcquirePolicyCache", scope: !235, file: !235, line: 160, type: !497, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!497 = !DISubroutineType(types: !498)
!498 = !{!325, !263, !373}
!499 = !{!495, !500, !501, !502, !503, !504, !506, !507, !510, !511, !515}
!500 = !DILocalVariable(name: "exception", arg: 2, scope: !496, file: !235, line: 161, type: !373)
!501 = !DILocalVariable(name: "option", scope: !496, file: !235, line: 164, type: !330)
!502 = !DILocalVariable(name: "options", scope: !496, file: !235, line: 167, type: !325)
!503 = !DILocalVariable(name: "policy_cache", scope: !496, file: !235, line: 168, type: !325)
!504 = !DILocalVariable(name: "status", scope: !496, file: !235, line: 171, type: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !24, line: 147, baseType: !7)
!506 = !DILocalVariable(name: "i", scope: !496, file: !235, line: 174, type: !322)
!507 = !DILocalVariable(name: "message", scope: !508, file: !235, line: 181, type: !238)
!508 = distinct !DILexicalBlock(scope: !509, file: !235, line: 181, column: 5)
!509 = distinct !DILexicalBlock(scope: !496, file: !235, line: 180, column: 7)
!510 = !DILocalVariable(name: "exception", scope: !508, file: !235, line: 181, type: !374)
!511 = !DILocalVariable(name: "policy_info", scope: !512, file: !235, line: 198, type: !261)
!512 = distinct !DILexicalBlock(scope: !513, file: !235, line: 196, column: 3)
!513 = distinct !DILexicalBlock(scope: !514, file: !235, line: 195, column: 3)
!514 = distinct !DILexicalBlock(scope: !496, file: !235, line: 195, column: 3)
!515 = !DILocalVariable(name: "p", scope: !512, file: !235, line: 201, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!517 = !DILocation(line: 0, scope: !496, inlinedAt: !518)
!518 = distinct !DILocation(line: 525, column: 22, scope: !492, inlinedAt: !477)
!519 = !DILocation(line: 179, column: 16, scope: !496, inlinedAt: !518)
!520 = !DILocation(line: 180, column: 20, scope: !509, inlinedAt: !518)
!521 = !DILocation(line: 180, column: 7, scope: !496, inlinedAt: !518)
!522 = !DILocation(line: 181, column: 5, scope: !508, inlinedAt: !518)
!523 = !{!524, !524, i64 0}
!524 = !{!"int", !398, i64 0}
!525 = !DILocation(line: 0, scope: !508, inlinedAt: !518)
!526 = !DILocation(line: 183, column: 11, scope: !496, inlinedAt: !518)
!527 = !DILocation(line: 184, column: 31, scope: !496, inlinedAt: !518)
!528 = !DILocation(line: 185, column: 17, scope: !496, inlinedAt: !518)
!529 = !DILocation(line: 185, column: 3, scope: !496, inlinedAt: !518)
!530 = !DILocation(line: 188, column: 7, scope: !531, inlinedAt: !518)
!531 = distinct !DILexicalBlock(scope: !496, file: !235, line: 186, column: 3)
!532 = !DILocation(line: 188, column: 34, scope: !531, inlinedAt: !518)
!533 = !DILocation(line: 187, column: 13, scope: !531, inlinedAt: !518)
!534 = !DILocation(line: 187, column: 11, scope: !531, inlinedAt: !518)
!535 = !DILocation(line: 189, column: 33, scope: !531, inlinedAt: !518)
!536 = distinct !{!536, !529, !537, !443, !444}
!537 = !DILocation(line: 190, column: 3, scope: !496, inlinedAt: !518)
!538 = !DILocation(line: 191, column: 11, scope: !496, inlinedAt: !518)
!539 = !DILocation(line: 204, column: 32, scope: !512, inlinedAt: !518)
!540 = !DILocation(line: 0, scope: !512, inlinedAt: !518)
!541 = !DILocation(line: 205, column: 21, scope: !542, inlinedAt: !518)
!542 = distinct !DILexicalBlock(scope: !512, file: !235, line: 205, column: 9)
!543 = !DILocation(line: 205, column: 9, scope: !512, inlinedAt: !518)
!544 = !DILocation(line: 207, column: 16, scope: !545, inlinedAt: !518)
!545 = distinct !DILexicalBlock(scope: !542, file: !235, line: 206, column: 7)
!546 = !DILocation(line: 209, column: 9, scope: !545, inlinedAt: !518)
!547 = !DILocation(line: 211, column: 12, scope: !512, inlinedAt: !518)
!548 = !DILocation(line: 212, column: 22, scope: !512, inlinedAt: !518)
!549 = !{!427, !406, i64 0}
!550 = !DILocation(line: 213, column: 18, scope: !512, inlinedAt: !518)
!551 = !DILocation(line: 218, column: 18, scope: !512, inlinedAt: !518)
!552 = !DILocation(line: 214, column: 24, scope: !512, inlinedAt: !518)
!553 = !DILocation(line: 218, column: 24, scope: !512, inlinedAt: !518)
!554 = !{!427, !398, i64 40}
!555 = !DILocation(line: 219, column: 18, scope: !512, inlinedAt: !518)
!556 = !DILocation(line: 219, column: 27, scope: !512, inlinedAt: !518)
!557 = !{!427, !397, i64 64}
!558 = !DILocation(line: 220, column: 13, scope: !512, inlinedAt: !518)
!559 = !DILocation(line: 220, column: 11, scope: !512, inlinedAt: !518)
!560 = !DILocation(line: 221, column: 16, scope: !561, inlinedAt: !518)
!561 = distinct !DILexicalBlock(scope: !512, file: !235, line: 221, column: 9)
!562 = !DILocation(line: 221, column: 9, scope: !512, inlinedAt: !518)
!563 = !DILocation(line: 215, column: 18, scope: !512, inlinedAt: !518)
!564 = !DILocation(line: 223, column: 73, scope: !561, inlinedAt: !518)
!565 = !DILocation(line: 222, column: 14, scope: !561, inlinedAt: !518)
!566 = !DILocation(line: 222, column: 7, scope: !561, inlinedAt: !518)
!567 = !DILocation(line: 525, column: 21, scope: !492, inlinedAt: !477)
!568 = !DILocation(line: 525, column: 9, scope: !492, inlinedAt: !477)
!569 = !DILocation(line: 526, column: 27, scope: !485, inlinedAt: !477)
!570 = !DILocation(line: 526, column: 7, scope: !485, inlinedAt: !477)
!571 = !DILocation(line: 528, column: 10, scope: !472, inlinedAt: !477)
!572 = !DILocation(line: 528, column: 23, scope: !472, inlinedAt: !477)
!573 = !DILocation(line: 265, column: 7, scope: !459)
!574 = !DILocation(line: 270, column: 14, scope: !459)
!575 = !{!398, !398, i64 0}
!576 = !DILocation(line: 271, column: 12, scope: !577)
!577 = distinct !DILexicalBlock(scope: !459, file: !235, line: 271, column: 7)
!578 = !DILocation(line: 271, column: 7, scope: !459)
!579 = !DILocation(line: 272, column: 12, scope: !577)
!580 = !DILocation(line: 273, column: 22, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !235, line: 273, column: 3)
!582 = distinct !DILexicalBlock(scope: !459, file: !235, line: 273, column: 3)
!583 = !DILocation(line: 273, column: 25, scope: !581)
!584 = !DILocation(line: 273, column: 3, scope: !582)
!585 = !DILocation(line: 275, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !235, line: 275, column: 9)
!587 = distinct !DILexicalBlock(scope: !581, file: !235, line: 274, column: 3)
!588 = !{!589, !589, i64 0}
!589 = !{!"short", !398, i64 0}
!590 = !DILocation(line: 275, column: 45, scope: !586)
!591 = !DILocation(line: 275, column: 9, scope: !587)
!592 = !DILocation(line: 277, column: 32, scope: !587)
!593 = !DILocation(line: 277, column: 12, scope: !587)
!594 = !DILocation(line: 278, column: 6, scope: !587)
!595 = !DILocation(line: 279, column: 3, scope: !587)
!596 = !DILocation(line: 0, scope: !582)
!597 = !DILocation(line: 273, column: 35, scope: !581)
!598 = distinct !{!598, !584, !599, !443, !444}
!599 = !DILocation(line: 279, column: 3, scope: !582)
!600 = !DILocation(line: 283, column: 21, scope: !459)
!601 = !DILocation(line: 283, column: 3, scope: !459)
!602 = !DILocation(line: 284, column: 27, scope: !459)
!603 = !DILocation(line: 284, column: 3, scope: !459)
!604 = !DILocation(line: 285, column: 45, scope: !459)
!605 = !DILocation(line: 285, column: 20, scope: !459)
!606 = !DILocation(line: 286, column: 37, scope: !607)
!607 = distinct !DILexicalBlock(scope: !459, file: !235, line: 286, column: 7)
!608 = !DILocation(line: 286, column: 41, scope: !607)
!609 = !DILocation(line: 286, column: 65, scope: !607)
!610 = !DILocation(line: 286, column: 7, scope: !459)
!611 = !DILocation(line: 291, column: 12, scope: !459)
!612 = !DILocation(line: 291, column: 3, scope: !459)
!613 = !DILocation(line: 293, column: 37, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !235, line: 293, column: 9)
!615 = distinct !DILexicalBlock(scope: !459, file: !235, line: 292, column: 3)
!616 = !DILocation(line: 293, column: 9, scope: !614)
!617 = !DILocation(line: 293, column: 43, scope: !614)
!618 = !DILocation(line: 293, column: 9, scope: !615)
!619 = !DILocation(line: 295, column: 22, scope: !615)
!620 = distinct !{!620, !612, !621, !443, !444}
!621 = !DILocation(line: 296, column: 3, scope: !459)
!622 = !DILocation(line: 299, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !459, file: !235, line: 297, column: 7)
!624 = !DILocation(line: 298, column: 12, scope: !623)
!625 = !DILocation(line: 298, column: 5, scope: !623)
!626 = !DILocation(line: 302, column: 1, scope: !459)
!627 = !DISubprogram(name: "AcquireQuantumMemory", scope: !628, file: !628, line: 42, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!628 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!629 = !DISubroutineType(types: !630)
!630 = !{!259, !457, !457}
!631 = !DISubprogram(name: "GetNumberOfElementsInLinkedList", scope: !327, file: !327, line: 58, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!632 = !DISubroutineType(types: !633)
!633 = !{!257, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!636 = !DISubprogram(name: "LockSemaphoreInfo", scope: !254, file: !254, line: 37, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !252}
!639 = !DISubprogram(name: "ResetLinkedListIterator", scope: !327, file: !327, line: 77, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !325}
!642 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !327, file: !327, line: 69, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!643 = !DISubroutineType(types: !644)
!644 = !{!259, !325}
!645 = !DISubprogram(name: "GlobExpression", scope: !646, file: !646, line: 36, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!646 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!647 = !DISubroutineType(types: !648)
!648 = !{!248, !263, !263, !649}
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!650 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !254, file: !254, line: 39, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!651 = distinct !DISubprogram(name: "GetPolicyList", scope: !235, file: !235, line: 403, type: !652, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!262, !263, !372, !373}
!654 = !{!655, !656, !657, !658, !659, !660}
!655 = !DILocalVariable(name: "pattern", arg: 1, scope: !651, file: !235, line: 403, type: !263)
!656 = !DILocalVariable(name: "number_policies", arg: 2, scope: !651, file: !235, line: 404, type: !372)
!657 = !DILocalVariable(name: "exception", arg: 3, scope: !651, file: !235, line: 404, type: !373)
!658 = !DILocalVariable(name: "policies", scope: !651, file: !235, line: 407, type: !262)
!659 = !DILocalVariable(name: "p", scope: !651, file: !235, line: 410, type: !231)
!660 = !DILocalVariable(name: "i", scope: !651, file: !235, line: 413, type: !322)
!661 = !DILocation(line: 0, scope: !651)
!662 = !DILocation(line: 419, column: 10, scope: !651)
!663 = !DILocation(line: 421, column: 19, scope: !651)
!664 = !DILocation(line: 422, column: 5, scope: !651)
!665 = !DILocation(line: 423, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !651, file: !235, line: 423, column: 7)
!667 = !DILocation(line: 423, column: 7, scope: !651)
!668 = !DILocation(line: 426, column: 37, scope: !651)
!669 = !DILocation(line: 426, column: 5, scope: !651)
!670 = !DILocation(line: 426, column: 50, scope: !651)
!671 = !DILocation(line: 425, column: 22, scope: !651)
!672 = !DILocation(line: 427, column: 16, scope: !673)
!673 = distinct !DILexicalBlock(scope: !651, file: !235, line: 427, column: 7)
!674 = !DILocation(line: 427, column: 7, scope: !651)
!675 = !DILocation(line: 432, column: 21, scope: !651)
!676 = !DILocation(line: 432, column: 3, scope: !651)
!677 = !DILocation(line: 433, column: 27, scope: !651)
!678 = !DILocation(line: 433, column: 3, scope: !651)
!679 = !DILocation(line: 434, column: 51, scope: !651)
!680 = !DILocation(line: 434, column: 26, scope: !651)
!681 = !DILocation(line: 435, column: 15, scope: !682)
!682 = distinct !DILexicalBlock(scope: !683, file: !235, line: 435, column: 3)
!683 = distinct !DILexicalBlock(scope: !651, file: !235, line: 435, column: 3)
!684 = !DILocation(line: 435, column: 3, scope: !683)
!685 = !DILocation(line: 437, column: 13, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !235, line: 437, column: 9)
!687 = distinct !DILexicalBlock(scope: !682, file: !235, line: 436, column: 3)
!688 = !DILocation(line: 437, column: 21, scope: !686)
!689 = !DILocation(line: 437, column: 37, scope: !686)
!690 = !DILocation(line: 438, column: 28, scope: !686)
!691 = !DILocation(line: 438, column: 10, scope: !686)
!692 = !DILocation(line: 438, column: 54, scope: !686)
!693 = !DILocation(line: 437, column: 9, scope: !687)
!694 = !DILocation(line: 439, column: 39, scope: !686)
!695 = !DILocation(line: 439, column: 21, scope: !686)
!696 = !DILocation(line: 439, column: 17, scope: !686)
!697 = !DILocation(line: 439, column: 7, scope: !686)
!698 = !DILocation(line: 439, column: 20, scope: !686)
!699 = !DILocation(line: 0, scope: !683)
!700 = !DILocation(line: 440, column: 53, scope: !687)
!701 = !DILocation(line: 440, column: 28, scope: !687)
!702 = distinct !{!702, !684, !703, !443, !444}
!703 = !DILocation(line: 441, column: 3, scope: !683)
!704 = !DILocation(line: 442, column: 23, scope: !651)
!705 = !DILocation(line: 442, column: 3, scope: !651)
!706 = !DILocation(line: 443, column: 3, scope: !651)
!707 = !DILocation(line: 443, column: 14, scope: !651)
!708 = !DILocation(line: 444, column: 19, scope: !651)
!709 = !DILocation(line: 445, column: 3, scope: !651)
!710 = !DILocation(line: 446, column: 1, scope: !651)
!711 = !DISubprogram(name: "ConstantString", scope: !333, file: !333, line: 45, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!712 = !DISubroutineType(types: !713)
!713 = !{!238, !263}
!714 = distinct !DISubprogram(name: "GetPolicyValue", scope: !235, file: !235, line: 470, type: !712, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !715)
!715 = !{!716, !717, !718, !719}
!716 = !DILocalVariable(name: "name", arg: 1, scope: !714, file: !235, line: 470, type: !263)
!717 = !DILocalVariable(name: "value", scope: !714, file: !235, line: 473, type: !263)
!718 = !DILocalVariable(name: "policy_info", scope: !714, file: !235, line: 476, type: !231)
!719 = !DILocalVariable(name: "exception", scope: !714, file: !235, line: 479, type: !373)
!720 = !DILocation(line: 0, scope: !714)
!721 = !DILocation(line: 482, column: 10, scope: !714)
!722 = !DILocation(line: 483, column: 13, scope: !714)
!723 = !DILocation(line: 484, column: 15, scope: !714)
!724 = !DILocation(line: 485, column: 13, scope: !714)
!725 = !DILocation(line: 486, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !714, file: !235, line: 486, column: 7)
!727 = !DILocation(line: 486, column: 7, scope: !714)
!728 = !DILocation(line: 488, column: 22, scope: !714)
!729 = !{!427, !406, i64 32}
!730 = !DILocation(line: 489, column: 14, scope: !731)
!731 = distinct !DILexicalBlock(scope: !714, file: !235, line: 489, column: 7)
!732 = !DILocation(line: 489, column: 38, scope: !731)
!733 = !DILocation(line: 489, column: 42, scope: !731)
!734 = !DILocation(line: 489, column: 49, scope: !731)
!735 = !DILocation(line: 489, column: 7, scope: !714)
!736 = !DILocation(line: 491, column: 10, scope: !714)
!737 = !DILocation(line: 491, column: 3, scope: !714)
!738 = !DILocation(line: 492, column: 1, scope: !714)
!739 = !DISubprogram(name: "AcquireExceptionInfo", scope: !29, file: !29, line: 146, type: !740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!740 = !DISubroutineType(types: !741)
!741 = !{!373}
!742 = !DISubprogram(name: "DestroyExceptionInfo", scope: !29, file: !29, line: 148, type: !743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!743 = !DISubroutineType(types: !744)
!744 = !{!373, !373}
!745 = distinct !DISubprogram(name: "IsRightsAuthorized", scope: !235, file: !235, line: 559, type: !746, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{!248, !354, !356, !263}
!748 = !{!749, !750, !751, !752, !753, !754, !755}
!749 = !DILocalVariable(name: "domain", arg: 1, scope: !745, file: !235, line: 559, type: !354)
!750 = !DILocalVariable(name: "rights", arg: 2, scope: !745, file: !235, line: 560, type: !356)
!751 = !DILocalVariable(name: "pattern", arg: 3, scope: !745, file: !235, line: 560, type: !263)
!752 = !DILocalVariable(name: "policy_info", scope: !745, file: !235, line: 563, type: !231)
!753 = !DILocalVariable(name: "exception", scope: !745, file: !235, line: 566, type: !373)
!754 = !DILocalVariable(name: "authorized", scope: !745, file: !235, line: 569, type: !248)
!755 = !DILocalVariable(name: "p", scope: !745, file: !235, line: 572, type: !261)
!756 = !DILocation(line: 0, scope: !745)
!757 = !DILocation(line: 576, column: 55, scope: !745)
!758 = !DILocation(line: 576, column: 5, scope: !745)
!759 = !DILocation(line: 577, column: 55, scope: !745)
!760 = !DILocation(line: 577, column: 5, scope: !745)
!761 = !DILocation(line: 574, column: 10, scope: !745)
!762 = !DILocation(line: 578, column: 13, scope: !745)
!763 = !DILocation(line: 579, column: 15, scope: !745)
!764 = !DILocation(line: 580, column: 13, scope: !745)
!765 = !DILocation(line: 581, column: 19, scope: !766)
!766 = distinct !DILexicalBlock(scope: !745, file: !235, line: 581, column: 7)
!767 = !DILocation(line: 581, column: 7, scope: !745)
!768 = !DILocation(line: 584, column: 21, scope: !745)
!769 = !DILocation(line: 584, column: 3, scope: !745)
!770 = !DILocation(line: 585, column: 27, scope: !745)
!771 = !DILocation(line: 585, column: 3, scope: !745)
!772 = !DILocation(line: 586, column: 45, scope: !745)
!773 = !DILocation(line: 586, column: 20, scope: !745)
!774 = !DILocation(line: 587, column: 13, scope: !745)
!775 = !DILocation(line: 587, column: 37, scope: !745)
!776 = !DILocation(line: 595, column: 49, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !235, line: 595, column: 13)
!778 = distinct !DILexicalBlock(scope: !779, file: !235, line: 591, column: 7)
!779 = distinct !DILexicalBlock(scope: !780, file: !235, line: 589, column: 9)
!780 = distinct !DILexicalBlock(scope: !745, file: !235, line: 588, column: 3)
!781 = !DILocation(line: 598, column: 51, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !235, line: 598, column: 13)
!783 = !DILocation(line: 589, column: 13, scope: !779)
!784 = !{!427, !398, i64 8}
!785 = !DILocation(line: 589, column: 20, scope: !779)
!786 = !DILocation(line: 589, column: 31, scope: !779)
!787 = !DILocation(line: 590, column: 36, scope: !779)
!788 = !{!427, !406, i64 24}
!789 = !DILocation(line: 590, column: 10, scope: !779)
!790 = !DILocation(line: 590, column: 57, scope: !779)
!791 = !DILocation(line: 589, column: 9, scope: !780)
!792 = !DILocation(line: 593, column: 18, scope: !793)
!793 = distinct !DILexicalBlock(scope: !778, file: !235, line: 592, column: 13)
!794 = !{!427, !398, i64 12}
!795 = !DILocation(line: 593, column: 25, scope: !793)
!796 = !DILocation(line: 592, column: 13, scope: !778)
!797 = !DILocation(line: 602, column: 47, scope: !780)
!798 = !DILocation(line: 602, column: 22, scope: !780)
!799 = distinct !{!799, !800, !801, !443, !444}
!800 = !DILocation(line: 587, column: 3, scope: !745)
!801 = !DILocation(line: 603, column: 3, scope: !745)
!802 = !DILocation(line: 0, scope: !778)
!803 = !DILocation(line: 592, column: 48, scope: !793)
!804 = !DILocation(line: 599, column: 25, scope: !782)
!805 = !DILocation(line: 599, column: 48, scope: !782)
!806 = !DILocation(line: 598, column: 13, scope: !778)
!807 = !DILocation(line: 596, column: 18, scope: !777)
!808 = !DILocation(line: 595, column: 13, scope: !778)
!809 = !DILocation(line: 596, column: 25, scope: !777)
!810 = !DILocation(line: 596, column: 46, scope: !777)
!811 = !DILocation(line: 604, column: 23, scope: !745)
!812 = !DILocation(line: 604, column: 3, scope: !745)
!813 = !DILocation(line: 605, column: 3, scope: !745)
!814 = !DILocation(line: 606, column: 1, scope: !745)
!815 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !127, file: !127, line: 157, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!816 = !DISubroutineType(types: !817)
!817 = !{!263, !818, !820}
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !127, line: 99, baseType: !126)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!821 = distinct !DISubprogram(name: "ListPolicyInfo", scope: !235, file: !235, line: 632, type: !822, scopeLine: 634, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!822 = !DISubroutineType(types: !823)
!823 = !{!248, !824, !373}
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!825 = !{!826, !827, !828, !829, !830, !831, !832}
!826 = !DILocalVariable(name: "file", arg: 1, scope: !821, file: !235, line: 632, type: !824)
!827 = !DILocalVariable(name: "exception", arg: 2, scope: !821, file: !235, line: 633, type: !373)
!828 = !DILocalVariable(name: "path", scope: !821, file: !235, line: 636, type: !263)
!829 = !DILocalVariable(name: "domain", scope: !821, file: !235, line: 637, type: !263)
!830 = !DILocalVariable(name: "policy_info", scope: !821, file: !235, line: 640, type: !260)
!831 = !DILocalVariable(name: "i", scope: !821, file: !235, line: 643, type: !322)
!832 = !DILocalVariable(name: "number_policies", scope: !821, file: !235, line: 646, type: !257)
!833 = !DILocation(line: 0, scope: !821)
!834 = !DILocation(line: 645, column: 3, scope: !821)
!835 = !DILocation(line: 651, column: 12, scope: !836)
!836 = distinct !DILexicalBlock(scope: !821, file: !235, line: 651, column: 7)
!837 = !DILocation(line: 651, column: 7, scope: !821)
!838 = !DILocation(line: 653, column: 15, scope: !821)
!839 = !DILocation(line: 654, column: 19, scope: !840)
!840 = distinct !DILexicalBlock(scope: !821, file: !235, line: 654, column: 7)
!841 = !DILocation(line: 654, column: 7, scope: !821)
!842 = !DILocation(line: 657, column: 15, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !235, line: 657, column: 3)
!844 = distinct !DILexicalBlock(scope: !821, file: !235, line: 657, column: 3)
!845 = !DILocation(line: 657, column: 3, scope: !844)
!846 = !DILocation(line: 659, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !235, line: 659, column: 9)
!848 = distinct !DILexicalBlock(scope: !843, file: !235, line: 658, column: 3)
!849 = !DILocation(line: 659, column: 25, scope: !847)
!850 = !DILocation(line: 659, column: 33, scope: !847)
!851 = !DILocation(line: 659, column: 9, scope: !848)
!852 = !DILocation(line: 661, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !848, file: !235, line: 661, column: 9)
!854 = !DILocation(line: 661, column: 40, scope: !853)
!855 = !DILocation(line: 662, column: 46, scope: !853)
!856 = !DILocation(line: 662, column: 11, scope: !853)
!857 = !DILocation(line: 662, column: 52, scope: !853)
!858 = !DILocation(line: 662, column: 59, scope: !853)
!859 = !DILocation(line: 663, column: 11, scope: !853)
!860 = !DILocation(line: 663, column: 27, scope: !853)
!861 = !DILocation(line: 663, column: 32, scope: !853)
!862 = !DILocation(line: 661, column: 9, scope: !848)
!863 = !DILocation(line: 664, column: 14, scope: !853)
!864 = !DILocation(line: 664, column: 7, scope: !853)
!865 = !DILocation(line: 665, column: 10, scope: !848)
!866 = !DILocation(line: 665, column: 26, scope: !848)
!867 = !DILocation(line: 667, column: 23, scope: !848)
!868 = !DILocation(line: 667, column: 7, scope: !848)
!869 = !DILocation(line: 666, column: 12, scope: !848)
!870 = !DILocation(line: 668, column: 12, scope: !848)
!871 = !DILocation(line: 669, column: 10, scope: !872)
!872 = distinct !DILexicalBlock(scope: !848, file: !235, line: 669, column: 9)
!873 = !DILocation(line: 669, column: 26, scope: !872)
!874 = !DILocation(line: 669, column: 58, scope: !872)
!875 = !DILocation(line: 672, column: 29, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !235, line: 672, column: 13)
!877 = distinct !DILexicalBlock(scope: !872, file: !235, line: 671, column: 7)
!878 = !DILocation(line: 672, column: 34, scope: !876)
!879 = !DILocation(line: 672, column: 13, scope: !877)
!880 = !DILocation(line: 673, column: 18, scope: !876)
!881 = !DILocation(line: 674, column: 13, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !235, line: 674, column: 13)
!883 = !DILocation(line: 673, column: 11, scope: !876)
!884 = !DILocation(line: 674, column: 29, scope: !882)
!885 = !DILocation(line: 674, column: 35, scope: !882)
!886 = !DILocation(line: 674, column: 13, scope: !877)
!887 = !DILocation(line: 675, column: 18, scope: !882)
!888 = !DILocation(line: 675, column: 11, scope: !882)
!889 = !DILocation(line: 679, column: 16, scope: !890)
!890 = distinct !DILexicalBlock(scope: !872, file: !235, line: 678, column: 7)
!891 = !DILocation(line: 680, column: 13, scope: !892)
!892 = distinct !DILexicalBlock(scope: !890, file: !235, line: 680, column: 13)
!893 = !DILocation(line: 680, column: 29, scope: !892)
!894 = !DILocation(line: 680, column: 36, scope: !892)
!895 = !DILocation(line: 680, column: 13, scope: !890)
!896 = !DILocation(line: 681, column: 18, scope: !892)
!897 = !DILocation(line: 682, column: 14, scope: !898)
!898 = distinct !DILexicalBlock(scope: !890, file: !235, line: 682, column: 13)
!899 = !DILocation(line: 682, column: 30, scope: !898)
!900 = !DILocation(line: 681, column: 11, scope: !892)
!901 = !DILocation(line: 682, column: 37, scope: !898)
!902 = !DILocation(line: 682, column: 57, scope: !898)
!903 = !DILocation(line: 682, column: 13, scope: !890)
!904 = !DILocation(line: 683, column: 18, scope: !898)
!905 = !DILocation(line: 684, column: 14, scope: !906)
!906 = distinct !DILexicalBlock(scope: !890, file: !235, line: 684, column: 13)
!907 = !DILocation(line: 684, column: 30, scope: !906)
!908 = !DILocation(line: 683, column: 11, scope: !898)
!909 = !DILocation(line: 684, column: 37, scope: !906)
!910 = !DILocation(line: 684, column: 58, scope: !906)
!911 = !DILocation(line: 684, column: 13, scope: !890)
!912 = !DILocation(line: 685, column: 18, scope: !906)
!913 = !DILocation(line: 686, column: 14, scope: !914)
!914 = distinct !DILexicalBlock(scope: !890, file: !235, line: 686, column: 13)
!915 = !DILocation(line: 686, column: 30, scope: !914)
!916 = !DILocation(line: 685, column: 11, scope: !906)
!917 = !DILocation(line: 686, column: 37, scope: !914)
!918 = !DILocation(line: 686, column: 60, scope: !914)
!919 = !DILocation(line: 686, column: 13, scope: !890)
!920 = !DILocation(line: 687, column: 18, scope: !914)
!921 = !DILocation(line: 687, column: 11, scope: !914)
!922 = !DILocation(line: 688, column: 16, scope: !890)
!923 = !DILocation(line: 689, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !890, file: !235, line: 689, column: 13)
!925 = !DILocation(line: 689, column: 29, scope: !924)
!926 = !DILocation(line: 689, column: 37, scope: !924)
!927 = !DILocation(line: 689, column: 13, scope: !890)
!928 = !DILocation(line: 690, column: 18, scope: !924)
!929 = !DILocation(line: 690, column: 11, scope: !924)
!930 = !DILocation(line: 657, column: 45, scope: !843)
!931 = distinct !{!931, !845, !932, !443, !444}
!932 = !DILocation(line: 693, column: 3, scope: !844)
!933 = !DILocation(line: 694, column: 37, scope: !821)
!934 = !DILocation(line: 696, column: 10, scope: !821)
!935 = !DILocation(line: 697, column: 3, scope: !821)
!936 = !DILocation(line: 698, column: 1, scope: !821)
!937 = !DISubprogram(name: "LocaleCompare", scope: !333, file: !333, line: 66, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!938 = !DISubroutineType(types: !939)
!939 = !{!128, !263, !263}
!940 = !DISubprogram(name: "FormatLocaleFile", scope: !941, file: !941, line: 67, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!941 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!942 = !DISubroutineType(types: !943)
!943 = !{!322, !824, !944, null}
!944 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !263)
!945 = !DISubprogram(name: "RelinquishMagickMemory", scope: !628, file: !628, line: 51, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!946 = !DISubroutineType(types: !947)
!947 = !{!259, !259}
!948 = !DISubprogram(name: "fflush", scope: !323, file: !323, line: 218, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!949 = !DISubroutineType(types: !950)
!950 = !{!128, !824}
!951 = distinct !DISubprogram(name: "PolicyComponentGenesis", scope: !235, file: !235, line: 949, type: !952, scopeLine: 950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!952 = !DISubroutineType(types: !953)
!953 = !{!248}
!954 = !DILocation(line: 951, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !235, line: 951, column: 7)
!956 = !DILocation(line: 951, column: 24, scope: !955)
!957 = !DILocation(line: 951, column: 7, scope: !951)
!958 = !DILocation(line: 952, column: 22, scope: !955)
!959 = !DILocation(line: 952, column: 21, scope: !955)
!960 = !DILocation(line: 952, column: 5, scope: !955)
!961 = !DILocation(line: 953, column: 3, scope: !951)
!962 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !254, file: !254, line: 32, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!963 = !DISubroutineType(types: !964)
!964 = !{!252}
!965 = distinct !DISubprogram(name: "PolicyComponentTerminus", scope: !235, file: !235, line: 996, type: !966, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!966 = !DISubroutineType(types: !967)
!967 = !{null}
!968 = !DILocation(line: 998, column: 7, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !235, line: 998, column: 7)
!970 = !DILocation(line: 998, column: 24, scope: !969)
!971 = !DILocation(line: 998, column: 7, scope: !965)
!972 = !DILocation(line: 999, column: 5, scope: !969)
!973 = !DILocation(line: 1000, column: 21, scope: !965)
!974 = !DILocation(line: 1000, column: 3, scope: !965)
!975 = !DILocation(line: 1001, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !965, file: !235, line: 1001, column: 7)
!977 = !DILocation(line: 1001, column: 20, scope: !976)
!978 = !DILocation(line: 1001, column: 7, scope: !965)
!979 = !DILocation(line: 1002, column: 18, scope: !976)
!980 = !DILocation(line: 1002, column: 17, scope: !976)
!981 = !DILocation(line: 1002, column: 5, scope: !976)
!982 = !DILocation(line: 1003, column: 23, scope: !965)
!983 = !DILocation(line: 1003, column: 3, scope: !965)
!984 = !DILocation(line: 1004, column: 3, scope: !965)
!985 = !DILocation(line: 1005, column: 1, scope: !965)
!986 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !254, file: !254, line: 35, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!987 = !DISubroutineType(types: !988)
!988 = !{null, !989}
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!990 = !DISubprogram(name: "DestroyLinkedList", scope: !327, file: !327, line: 42, type: !991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!991 = !DISubroutineType(types: !992)
!992 = !{!325, !325, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!994 = distinct !DISubprogram(name: "DestroyPolicyElement", scope: !235, file: !235, line: 975, type: !946, scopeLine: 976, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !995)
!995 = !{!996, !997}
!996 = !DILocalVariable(name: "policy_info", arg: 1, scope: !994, file: !235, line: 975, type: !259)
!997 = !DILocalVariable(name: "p", scope: !994, file: !235, line: 978, type: !261)
!998 = !DILocation(line: 0, scope: !994)
!999 = !DILocation(line: 981, column: 10, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !994, file: !235, line: 981, column: 7)
!1001 = !DILocation(line: 981, column: 17, scope: !1000)
!1002 = !DILocation(line: 981, column: 7, scope: !994)
!1003 = !DILocation(line: 983, column: 14, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !235, line: 983, column: 11)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !235, line: 982, column: 5)
!1006 = !DILocation(line: 983, column: 20, scope: !1004)
!1007 = !DILocation(line: 983, column: 11, scope: !1005)
!1008 = !DILocation(line: 984, column: 18, scope: !1004)
!1009 = !DILocation(line: 984, column: 17, scope: !1004)
!1010 = !DILocation(line: 984, column: 9, scope: !1004)
!1011 = !DILocation(line: 985, column: 14, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1005, file: !235, line: 985, column: 11)
!1013 = !DILocation(line: 985, column: 22, scope: !1012)
!1014 = !DILocation(line: 985, column: 11, scope: !1005)
!1015 = !DILocation(line: 986, column: 20, scope: !1012)
!1016 = !DILocation(line: 986, column: 19, scope: !1012)
!1017 = !DILocation(line: 986, column: 9, scope: !1012)
!1018 = !DILocation(line: 987, column: 14, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1005, file: !235, line: 987, column: 11)
!1020 = !DILocation(line: 987, column: 19, scope: !1019)
!1021 = !DILocation(line: 987, column: 11, scope: !1005)
!1022 = !DILocation(line: 988, column: 17, scope: !1019)
!1023 = !DILocation(line: 988, column: 16, scope: !1019)
!1024 = !DILocation(line: 988, column: 9, scope: !1019)
!1025 = !DILocation(line: 989, column: 14, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1005, file: !235, line: 989, column: 11)
!1027 = !DILocation(line: 989, column: 19, scope: !1026)
!1028 = !DILocation(line: 989, column: 11, scope: !1005)
!1029 = !DILocation(line: 990, column: 17, scope: !1026)
!1030 = !DILocation(line: 990, column: 16, scope: !1026)
!1031 = !DILocation(line: 990, column: 9, scope: !1026)
!1032 = !DILocation(line: 992, column: 20, scope: !994)
!1033 = !DILocation(line: 993, column: 3, scope: !994)
!1034 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !254, file: !254, line: 36, type: !987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1035 = !DISubprogram(name: "CopyMagickString", scope: !333, file: !333, line: 78, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!257, !238, !263, !457}
!1038 = !DISubprogram(name: "InsertValueInLinkedList", scope: !327, file: !327, line: 49, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!248, !325, !457, !1041}
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1043 = !DISubprogram(name: "RemoveElementByValueFromLinkedList", scope: !327, file: !327, line: 72, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!259, !325, !1041}
!1046 = !DISubprogram(name: "NewLinkedList", scope: !327, file: !327, line: 43, type: !1047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!325, !457}
!1049 = !DISubprogram(name: "GetExceptionInfo", scope: !29, file: !29, line: 166, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{null, !373}
!1052 = !DISubprogram(name: "GetExceptionMessage", scope: !29, file: !29, line: 137, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!238, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!1056 = !DISubprogram(name: "ThrowMagickException", scope: !29, file: !29, line: 156, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!248, !373, !263, !263, !457, !1059, !263, !263, null}
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!1060 = !DISubprogram(name: "DestroyString", scope: !333, file: !333, line: 46, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!238, !238}
!1063 = !DISubprogram(name: "CatchException", scope: !29, file: !29, line: 164, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1064 = !DISubprogram(name: "MagickCoreTerminus", scope: !1065, file: !1065, line: 147, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1065 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1066 = !DISubprogram(name: "GetConfigureOptions", scope: !1067, file: !1067, line: 60, type: !497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1067 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!1068 = distinct !DISubprogram(name: "LoadPolicyCache", scope: !235, file: !235, line: 731, type: !1069, scopeLine: 734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!248, !325, !263, !263, !457, !373}
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1093, !1094, !1099}
!1072 = !DILocalVariable(name: "policy_cache", arg: 1, scope: !1068, file: !235, line: 731, type: !325)
!1073 = !DILocalVariable(name: "xml", arg: 2, scope: !1068, file: !235, line: 732, type: !263)
!1074 = !DILocalVariable(name: "filename", arg: 3, scope: !1068, file: !235, line: 732, type: !263)
!1075 = !DILocalVariable(name: "depth", arg: 4, scope: !1068, file: !235, line: 732, type: !457)
!1076 = !DILocalVariable(name: "exception", arg: 5, scope: !1068, file: !235, line: 733, type: !373)
!1077 = !DILocalVariable(name: "keyword", scope: !1068, file: !235, line: 736, type: !337)
!1078 = !DILocalVariable(name: "token", scope: !1068, file: !235, line: 737, type: !238)
!1079 = !DILocalVariable(name: "policy_info", scope: !1068, file: !235, line: 740, type: !261)
!1080 = !DILocalVariable(name: "q", scope: !1068, file: !235, line: 743, type: !263)
!1081 = !DILocalVariable(name: "status", scope: !1068, file: !235, line: 746, type: !248)
!1082 = !DILocalVariable(name: "path", scope: !1083, file: !235, line: 805, type: !337)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !235, line: 803, column: 17)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !235, line: 799, column: 19)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !235, line: 798, column: 13)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !235, line: 797, column: 15)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !235, line: 791, column: 9)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !235, line: 786, column: 7)
!1089 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 785, column: 9)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !235, line: 759, column: 3)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !235, line: 758, column: 3)
!1092 = distinct !DILexicalBlock(scope: !1068, file: !235, line: 758, column: 3)
!1093 = !DILocalVariable(name: "xml", scope: !1083, file: !235, line: 806, type: !238)
!1094 = !DILocalVariable(name: "message", scope: !1095, file: !235, line: 835, type: !238)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !235, line: 835, column: 11)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !235, line: 834, column: 13)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !235, line: 829, column: 7)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 828, column: 9)
!1099 = !DILocalVariable(name: "exception", scope: !1095, file: !235, line: 835, type: !374)
!1100 = !DILocation(line: 0, scope: !1068)
!1101 = !DILocation(line: 735, column: 3, scope: !1068)
!1102 = !DILocation(line: 736, column: 5, scope: !1068)
!1103 = !DILocation(line: 742, column: 3, scope: !1068)
!1104 = !DILocation(line: 751, column: 10, scope: !1068)
!1105 = !DILocation(line: 753, column: 11, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1068, file: !235, line: 753, column: 7)
!1107 = !DILocation(line: 753, column: 7, scope: !1068)
!1108 = !DILocation(line: 757, column: 9, scope: !1068)
!1109 = !DILocation(line: 758, column: 9, scope: !1092)
!1110 = !DILocation(line: 758, column: 30, scope: !1091)
!1111 = !DILocation(line: 758, column: 33, scope: !1091)
!1112 = !DILocation(line: 758, column: 3, scope: !1092)
!1113 = !DILocation(line: 763, column: 5, scope: !1090)
!1114 = !DILocation(line: 764, column: 9, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 764, column: 9)
!1116 = !DILocation(line: 764, column: 16, scope: !1115)
!1117 = !DILocation(line: 764, column: 9, scope: !1090)
!1118 = !DILocation(line: 766, column: 12, scope: !1090)
!1119 = !DILocation(line: 767, column: 9, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 767, column: 9)
!1121 = !DILocation(line: 767, column: 47, scope: !1120)
!1122 = !DILocation(line: 767, column: 9, scope: !1090)
!1123 = !DILocation(line: 772, column: 32, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !235, line: 768, column: 7)
!1125 = !DILocation(line: 772, column: 17, scope: !1124)
!1126 = !DILocation(line: 772, column: 42, scope: !1124)
!1127 = !DILocation(line: 772, column: 48, scope: !1124)
!1128 = !DILocation(line: 772, column: 53, scope: !1124)
!1129 = !DILocation(line: 772, column: 52, scope: !1124)
!1130 = !DILocation(line: 772, column: 55, scope: !1124)
!1131 = !DILocation(line: 772, column: 9, scope: !1124)
!1132 = !DILocation(line: 773, column: 11, scope: !1124)
!1133 = distinct !{!1133, !1131, !1134, !443, !444}
!1134 = !DILocation(line: 773, column: 36, scope: !1124)
!1135 = !DILocation(line: 758, column: 31, scope: !1091)
!1136 = distinct !{!1136, !1112, !1137, !443, !444}
!1137 = !DILocation(line: 926, column: 3, scope: !1092)
!1138 = !DILocation(line: 776, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 776, column: 9)
!1140 = !DILocation(line: 776, column: 42, scope: !1139)
!1141 = !DILocation(line: 776, column: 9, scope: !1090)
!1142 = !DILocation(line: 781, column: 32, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !235, line: 777, column: 7)
!1144 = !DILocation(line: 781, column: 17, scope: !1143)
!1145 = !DILocation(line: 781, column: 42, scope: !1143)
!1146 = !DILocation(line: 781, column: 48, scope: !1143)
!1147 = !DILocation(line: 781, column: 53, scope: !1143)
!1148 = !DILocation(line: 781, column: 52, scope: !1143)
!1149 = !DILocation(line: 781, column: 55, scope: !1143)
!1150 = !DILocation(line: 781, column: 9, scope: !1143)
!1151 = !DILocation(line: 782, column: 11, scope: !1143)
!1152 = distinct !{!1152, !1150, !1153, !443, !444}
!1153 = !DILocation(line: 782, column: 36, scope: !1143)
!1154 = !DILocation(line: 785, column: 9, scope: !1089)
!1155 = !DILocation(line: 785, column: 43, scope: !1089)
!1156 = !DILocation(line: 785, column: 9, scope: !1090)
!1157 = !DILocation(line: 799, column: 19, scope: !1085)
!1158 = !DILocation(line: 790, column: 18, scope: !1088)
!1159 = !DILocation(line: 790, column: 25, scope: !1088)
!1160 = !DILocation(line: 790, column: 33, scope: !1088)
!1161 = !DILocation(line: 790, column: 37, scope: !1088)
!1162 = !DILocation(line: 790, column: 48, scope: !1088)
!1163 = !DILocation(line: 790, column: 57, scope: !1088)
!1164 = !DILocation(line: 790, column: 62, scope: !1088)
!1165 = !DILocation(line: 790, column: 61, scope: !1088)
!1166 = !DILocation(line: 790, column: 64, scope: !1088)
!1167 = !DILocation(line: 790, column: 9, scope: !1088)
!1168 = !DILocation(line: 792, column: 18, scope: !1087)
!1169 = !DILocation(line: 793, column: 26, scope: !1087)
!1170 = !DILocation(line: 793, column: 11, scope: !1087)
!1171 = !DILocation(line: 794, column: 15, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1087, file: !235, line: 794, column: 15)
!1173 = !DILocation(line: 794, column: 22, scope: !1172)
!1174 = !DILocation(line: 794, column: 15, scope: !1087)
!1175 = distinct !{!1175, !1167, !1176, !443, !444}
!1176 = !DILocation(line: 825, column: 9, scope: !1088)
!1177 = !DILocation(line: 796, column: 26, scope: !1087)
!1178 = !DILocation(line: 796, column: 11, scope: !1087)
!1179 = !DILocation(line: 797, column: 15, scope: !1086)
!1180 = !DILocation(line: 797, column: 45, scope: !1086)
!1181 = !DILocation(line: 797, column: 15, scope: !1087)
!1182 = !DILocation(line: 800, column: 24, scope: !1084)
!1183 = !DILocation(line: 800, column: 17, scope: !1084)
!1184 = !DILocation(line: 804, column: 19, scope: !1083)
!1185 = !DILocation(line: 805, column: 21, scope: !1083)
!1186 = !DILocation(line: 808, column: 19, scope: !1083)
!1187 = !DILocation(line: 809, column: 23, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1083, file: !235, line: 809, column: 23)
!1189 = !DILocation(line: 809, column: 29, scope: !1188)
!1190 = !DILocation(line: 809, column: 23, scope: !1083)
!1191 = !DILocation(line: 810, column: 28, scope: !1188)
!1192 = !DILocation(line: 810, column: 21, scope: !1188)
!1193 = !DILocation(line: 812, column: 23, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1083, file: !235, line: 812, column: 23)
!1195 = !DILocation(line: 812, column: 30, scope: !1194)
!1196 = !DILocation(line: 812, column: 23, scope: !1083)
!1197 = !DILocation(line: 813, column: 28, scope: !1194)
!1198 = !DILocation(line: 813, column: 21, scope: !1194)
!1199 = !DILocation(line: 815, column: 28, scope: !1194)
!1200 = !DILocation(line: 816, column: 23, scope: !1083)
!1201 = !DILocation(line: 0, scope: !1083)
!1202 = !DILocation(line: 817, column: 27, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1083, file: !235, line: 817, column: 23)
!1204 = !DILocation(line: 817, column: 23, scope: !1083)
!1205 = !DILocation(line: 819, column: 31, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !235, line: 818, column: 21)
!1207 = !DILocation(line: 819, column: 29, scope: !1206)
!1208 = !DILocation(line: 821, column: 36, scope: !1206)
!1209 = !DILocation(line: 822, column: 21, scope: !1206)
!1210 = !DILocation(line: 823, column: 17, scope: !1084)
!1211 = !DILocation(line: 828, column: 9, scope: !1098)
!1212 = !DILocation(line: 828, column: 42, scope: !1098)
!1213 = !DILocation(line: 828, column: 9, scope: !1090)
!1214 = !DILocation(line: 833, column: 36, scope: !1097)
!1215 = !DILocation(line: 834, column: 25, scope: !1096)
!1216 = !DILocation(line: 834, column: 13, scope: !1097)
!1217 = !DILocation(line: 835, column: 11, scope: !1095)
!1218 = !DILocation(line: 0, scope: !1095)
!1219 = !DILocation(line: 836, column: 16, scope: !1097)
!1220 = !DILocation(line: 837, column: 27, scope: !1097)
!1221 = !DILocation(line: 837, column: 26, scope: !1097)
!1222 = !DILocation(line: 838, column: 22, scope: !1097)
!1223 = !DILocation(line: 838, column: 28, scope: !1097)
!1224 = !DILocation(line: 839, column: 22, scope: !1097)
!1225 = !DILocation(line: 839, column: 31, scope: !1097)
!1226 = !DILocation(line: 840, column: 9, scope: !1097)
!1227 = !DILocation(line: 842, column: 21, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 842, column: 9)
!1229 = !DILocation(line: 842, column: 9, scope: !1090)
!1230 = !DILocation(line: 844, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 844, column: 9)
!1232 = !DILocation(line: 844, column: 37, scope: !1231)
!1233 = !DILocation(line: 844, column: 9, scope: !1090)
!1234 = !DILocation(line: 846, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !235, line: 845, column: 7)
!1236 = !DILocation(line: 847, column: 20, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1235, file: !235, line: 847, column: 13)
!1238 = !DILocation(line: 847, column: 13, scope: !1235)
!1239 = !DILocation(line: 850, column: 26, scope: !1237)
!1240 = !DILocation(line: 848, column: 18, scope: !1237)
!1241 = !DILocation(line: 848, column: 11, scope: !1237)
!1242 = !DILocation(line: 854, column: 20, scope: !1090)
!1243 = !DILocation(line: 854, column: 5, scope: !1090)
!1244 = !DILocation(line: 855, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 855, column: 9)
!1246 = !DILocation(line: 855, column: 16, scope: !1245)
!1247 = !DILocation(line: 855, column: 9, scope: !1090)
!1248 = !DILocation(line: 857, column: 20, scope: !1090)
!1249 = !DILocation(line: 857, column: 5, scope: !1090)
!1250 = !DILocation(line: 858, column: 20, scope: !1090)
!1251 = !DILocation(line: 858, column: 5, scope: !1090)
!1252 = !DILocation(line: 859, column: 13, scope: !1090)
!1253 = !DILocation(line: 859, column: 5, scope: !1090)
!1254 = !DILocation(line: 864, column: 13, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !235, line: 864, column: 13)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 863, column: 7)
!1257 = distinct !DILexicalBlock(scope: !1090, file: !235, line: 860, column: 5)
!1258 = !DILocation(line: 864, column: 54, scope: !1255)
!1259 = !DILocation(line: 864, column: 13, scope: !1256)
!1260 = !DILocation(line: 866, column: 48, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !235, line: 865, column: 11)
!1262 = !DILocation(line: 866, column: 33, scope: !1261)
!1263 = !DILocation(line: 866, column: 26, scope: !1261)
!1264 = !DILocation(line: 866, column: 32, scope: !1261)
!1265 = !DILocation(line: 868, column: 13, scope: !1261)
!1266 = !DILocation(line: 875, column: 13, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !235, line: 875, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 874, column: 7)
!1269 = !DILocation(line: 875, column: 52, scope: !1267)
!1270 = !DILocation(line: 875, column: 13, scope: !1268)
!1271 = !DILocation(line: 877, column: 31, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !235, line: 876, column: 11)
!1273 = !DILocation(line: 877, column: 26, scope: !1272)
!1274 = !DILocation(line: 877, column: 30, scope: !1272)
!1275 = !DILocation(line: 878, column: 13, scope: !1272)
!1276 = !DILocation(line: 885, column: 13, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !235, line: 885, column: 13)
!1278 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 884, column: 7)
!1279 = !DILocation(line: 885, column: 55, scope: !1277)
!1280 = !DILocation(line: 885, column: 13, scope: !1278)
!1281 = !DILocation(line: 887, column: 34, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1277, file: !235, line: 886, column: 11)
!1283 = !DILocation(line: 887, column: 26, scope: !1282)
!1284 = !DILocation(line: 887, column: 33, scope: !1282)
!1285 = !DILocation(line: 888, column: 13, scope: !1282)
!1286 = !DILocation(line: 895, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !235, line: 895, column: 13)
!1288 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 894, column: 7)
!1289 = !DILocation(line: 895, column: 54, scope: !1287)
!1290 = !DILocation(line: 895, column: 13, scope: !1288)
!1291 = !DILocation(line: 897, column: 48, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !235, line: 896, column: 11)
!1293 = !DILocation(line: 897, column: 33, scope: !1292)
!1294 = !DILocation(line: 897, column: 26, scope: !1292)
!1295 = !DILocation(line: 897, column: 32, scope: !1292)
!1296 = !DILocation(line: 899, column: 13, scope: !1292)
!1297 = !DILocation(line: 906, column: 13, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !235, line: 906, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 905, column: 7)
!1300 = !DILocation(line: 906, column: 55, scope: !1298)
!1301 = !DILocation(line: 906, column: 13, scope: !1299)
!1302 = !DILocation(line: 908, column: 34, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !235, line: 907, column: 11)
!1304 = !DILocation(line: 908, column: 26, scope: !1303)
!1305 = !DILocation(line: 908, column: 33, scope: !1303)
!1306 = !DILocation(line: 909, column: 13, scope: !1303)
!1307 = !DILocation(line: 916, column: 13, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !235, line: 916, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1257, file: !235, line: 915, column: 7)
!1310 = !DILocation(line: 916, column: 53, scope: !1308)
!1311 = !DILocation(line: 916, column: 13, scope: !1309)
!1312 = !DILocation(line: 918, column: 32, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !235, line: 917, column: 11)
!1314 = !DILocation(line: 918, column: 26, scope: !1313)
!1315 = !DILocation(line: 918, column: 31, scope: !1313)
!1316 = !DILocation(line: 919, column: 13, scope: !1313)
!1317 = !DILocation(line: 927, column: 18, scope: !1068)
!1318 = !DILocation(line: 928, column: 3, scope: !1068)
!1319 = !DILocation(line: 929, column: 1, scope: !1068)
!1320 = !DISubprogram(name: "GetStringInfoDatum", scope: !333, file: !333, line: 97, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!341, !330}
!1323 = !DISubprogram(name: "GetStringInfoPath", scope: !333, file: !333, line: 58, type: !1324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!263, !330}
!1326 = !DISubprogram(name: "DestroyConfigureOptions", scope: !1067, file: !1067, line: 58, type: !1327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1327 = !DISubroutineType(types: !1328)
!1328 = !{!325, !325}
!1329 = !DISubprogram(name: "AcquireMagickMemory", scope: !628, file: !628, line: 40, type: !1330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!259, !457}
!1332 = !DISubprogram(name: "ResetMagickMemory", scope: !628, file: !628, line: 52, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!259, !259, !128, !457}
!1335 = !DISubprogram(name: "AppendValueToLinkedList", scope: !327, file: !327, line: 46, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!248, !325, !1041}
!1338 = !DISubprogram(name: "AcquireString", scope: !333, file: !333, line: 43, type: !712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1339 = !DISubprogram(name: "GetMagickToken", scope: !646, file: !646, line: 45, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !263, !344, !238}
!1342 = !DISubprogram(name: "LocaleNCompare", scope: !333, file: !333, line: 67, type: !1343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!128, !263, !263, !457}
!1345 = !DISubprogram(name: "GetPathComponent", scope: !218, file: !218, line: 68, type: !1346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{null, !263, !1348, !238}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !218, line: 36, baseType: !217)
!1349 = !DISubprogram(name: "ConcatenateMagickString", scope: !333, file: !333, line: 76, type: !1036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1350 = !DISubprogram(name: "FileToXML", scope: !1351, file: !1351, line: 26, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1351 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!238, !263, !457}
!1354 = !DISubprogram(name: "ParseCommandOption", scope: !127, file: !127, line: 172, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!322, !818, !649, !263}
!1357 = !DISubprogram(name: "IsMagickTrue", scope: !646, file: !646, line: 38, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !458)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!248, !263}
