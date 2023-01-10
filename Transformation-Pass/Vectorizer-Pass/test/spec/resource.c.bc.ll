; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/resource.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@resource_semaphore = internal global ptr null, align 8, !dbg !0
@resource_info.0 = internal unnamed_addr global i64 0, align 8, !dbg !352
@resource_info.1 = internal unnamed_addr global i64 0, align 8, !dbg !353
@resource_info.2 = internal unnamed_addr global i64 0, align 8, !dbg !354
@resource_info.3 = internal unnamed_addr global i64 0, align 8, !dbg !355
@resource_info.4 = internal unnamed_addr global i64 0, align 8, !dbg !356
@resource_info.7 = internal unnamed_addr global i64 0, align 8, !dbg !357
@resource_info.8 = internal unnamed_addr global i64 -1, align 8, !dbg !358
@resource_info.9 = internal unnamed_addr global i64 -1, align 8, !dbg !359
@resource_info.10 = internal unnamed_addr global i64 -1, align 8, !dbg !360
@resource_info.11 = internal unnamed_addr global i64 -1, align 8, !dbg !361
@resource_info.12 = internal unnamed_addr global i64 -1, align 8, !dbg !362
@resource_info.13 = internal unnamed_addr global i64 -1, align 8, !dbg !363
@resource_info.14 = internal unnamed_addr global i64 -1, align 8, !dbg !364
@resource_info.15 = internal unnamed_addr global i64 -1, align 8, !dbg !365
@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resource.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%s: %s/%s/%s\00", align 1
@temporary_resources = internal unnamed_addr global ptr null, align 8, !dbg !348
@.str.3 = private unnamed_addr constant [25 x i8] c"magick-%.20gXXXXXXXXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"temporary-path\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"MAGICK_TEMPORARY_PATH\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"MAGICK_TMPDIR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%smagick-%.20gXXXXXXXXXXXX\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"%s%smagick-%.20gXXXXXXXXXXXX\00", align 1
@AcquireUniqueFileResource.portable_filename = internal unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-\00", align 16, !dbg !296
@.str.12 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@random_info = internal unnamed_addr global ptr null, align 8, !dbg !350
@.str.13 = private unnamed_addr constant [11 x i8] c"Acquire %s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.16 = private unnamed_addr constant [82 x i8] c"  File       Area     Memory        Map       Disk   Thread  Throttle       Time\0A\00", align 1
@.str.17 = private unnamed_addr constant [82 x i8] c"--------------------------------------------------------------------------------\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"%6g %10s %10s %10s %10s %8g  %8g %10s\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"Relinquish %s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"area\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"disk\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"throttle\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireMagickResource(i32 noundef %type, i64 noundef %size) local_unnamed_addr #0 !dbg !373 {
entry:
  %resource_current = alloca [4096 x i8], align 16
  %resource_limit = alloca [4096 x i8], align 16
  %resource_request = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %type, metadata !381, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata i64 %size, metadata !382, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_current) #9, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %resource_current, metadata !383, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_limit) #9, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %resource_limit, metadata !384, metadata !DIExpression()), !dbg !391
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_request) #9, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %resource_request, metadata !385, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 0, metadata !386, metadata !DIExpression()), !dbg !388
  %call = call i64 @FormatMagickSize(i64 noundef %size, i32 noundef 0, ptr noundef nonnull %resource_request) #9, !dbg !393
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !394, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !402
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !403, !tbaa !396
  br label %if.end, !dbg !402

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !403
  call void @LockSemaphoreInfo(ptr noundef %1) #9, !dbg !404
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb7
    i32 4, label %sw.bb17
    i32 2, label %sw.bb28
    i32 3, label %sw.bb39
    i32 6, label %sw.bb50
    i32 8, label %sw.bb60
    i32 7, label %sw.bb70
  ], !dbg !405

sw.bb:                                            ; preds = %if.end
  store i64 %size, ptr @resource_info.0, align 8, !dbg !406, !tbaa !409
  %2 = load i64, ptr @resource_info.8, align 8, !dbg !412, !tbaa !413
  call void @llvm.dbg.value(metadata i64 %2, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp1 = icmp eq i64 %2, -1, !dbg !414
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !415

lor.rhs:                                          ; preds = %sw.bb
  %cmp2 = icmp ugt i64 %2, %size, !dbg !416
  %phi.cast114 = zext i1 %cmp2 to i32, !dbg !415
  br label %lor.end, !dbg !415

lor.end:                                          ; preds = %lor.rhs, %sw.bb
  %3 = phi i32 [ 1, %sw.bb ], [ %phi.cast114, %lor.rhs ]
  call void @llvm.dbg.value(metadata i32 %3, metadata !386, metadata !DIExpression()), !dbg !388
  %call4 = call i64 @FormatMagickSize(i64 noundef %size, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !417
  br label %sw.epilog.sink.split, !dbg !418

sw.bb7:                                           ; preds = %if.end
  %4 = load i64, ptr @resource_info.1, align 8, !dbg !419, !tbaa !421
  %add = add i64 %4, %size, !dbg !419
  store i64 %add, ptr @resource_info.1, align 8, !dbg !419, !tbaa !421
  %5 = load i64, ptr @resource_info.9, align 8, !dbg !422, !tbaa !423
  call void @llvm.dbg.value(metadata i64 %5, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp8 = icmp eq i64 %5, -1, !dbg !424
  br i1 %cmp8, label %lor.end11, label %lor.rhs9, !dbg !425

lor.rhs9:                                         ; preds = %sw.bb7
  %cmp10 = icmp ult i64 %add, %5, !dbg !426
  %phi.cast113 = zext i1 %cmp10 to i32, !dbg !425
  br label %lor.end11, !dbg !425

lor.end11:                                        ; preds = %lor.rhs9, %sw.bb7
  %6 = phi i32 [ 1, %sw.bb7 ], [ %phi.cast113, %lor.rhs9 ]
  call void @llvm.dbg.value(metadata i32 %6, metadata !386, metadata !DIExpression()), !dbg !388
  %call14 = call i64 @FormatMagickSize(i64 noundef %add, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !427
  br label %sw.epilog.sink.split, !dbg !428

sw.bb17:                                          ; preds = %if.end
  %7 = load i64, ptr @resource_info.2, align 8, !dbg !429, !tbaa !431
  %add18 = add i64 %7, %size, !dbg !429
  store i64 %add18, ptr @resource_info.2, align 8, !dbg !429, !tbaa !431
  %8 = load i64, ptr @resource_info.10, align 8, !dbg !432, !tbaa !433
  call void @llvm.dbg.value(metadata i64 %8, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp19 = icmp eq i64 %8, -1, !dbg !434
  br i1 %cmp19, label %lor.end22, label %lor.rhs20, !dbg !435

lor.rhs20:                                        ; preds = %sw.bb17
  %cmp21 = icmp ult i64 %add18, %8, !dbg !436
  %phi.cast112 = zext i1 %cmp21 to i32, !dbg !435
  br label %lor.end22, !dbg !435

lor.end22:                                        ; preds = %lor.rhs20, %sw.bb17
  %9 = phi i32 [ 1, %sw.bb17 ], [ %phi.cast112, %lor.rhs20 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !386, metadata !DIExpression()), !dbg !388
  %call25 = call i64 @FormatMagickSize(i64 noundef %add18, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !437
  br label %sw.epilog.sink.split, !dbg !438

sw.bb28:                                          ; preds = %if.end
  %10 = load i64, ptr @resource_info.3, align 8, !dbg !439, !tbaa !441
  %add29 = add i64 %10, %size, !dbg !439
  store i64 %add29, ptr @resource_info.3, align 8, !dbg !439, !tbaa !441
  %11 = load i64, ptr @resource_info.11, align 8, !dbg !442, !tbaa !443
  call void @llvm.dbg.value(metadata i64 %11, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp30 = icmp eq i64 %11, -1, !dbg !444
  br i1 %cmp30, label %lor.end33, label %lor.rhs31, !dbg !445

lor.rhs31:                                        ; preds = %sw.bb28
  %cmp32 = icmp ult i64 %add29, %11, !dbg !446
  %phi.cast111 = zext i1 %cmp32 to i32, !dbg !445
  br label %lor.end33, !dbg !445

lor.end33:                                        ; preds = %lor.rhs31, %sw.bb28
  %12 = phi i32 [ 1, %sw.bb28 ], [ %phi.cast111, %lor.rhs31 ]
  call void @llvm.dbg.value(metadata i32 %12, metadata !386, metadata !DIExpression()), !dbg !388
  %call36 = call i64 @FormatMagickSize(i64 noundef %add29, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !447
  br label %sw.epilog.sink.split, !dbg !448

sw.bb39:                                          ; preds = %if.end
  %13 = load i64, ptr @resource_info.4, align 8, !dbg !449, !tbaa !451
  %add40 = add i64 %13, %size, !dbg !449
  store i64 %add40, ptr @resource_info.4, align 8, !dbg !449, !tbaa !451
  %14 = load i64, ptr @resource_info.12, align 8, !dbg !452, !tbaa !453
  call void @llvm.dbg.value(metadata i64 %14, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp41 = icmp eq i64 %14, -1, !dbg !454
  br i1 %cmp41, label %lor.end44, label %lor.rhs42, !dbg !455

lor.rhs42:                                        ; preds = %sw.bb39
  %cmp43 = icmp ult i64 %add40, %14, !dbg !456
  %phi.cast110 = zext i1 %cmp43 to i32, !dbg !455
  br label %lor.end44, !dbg !455

lor.end44:                                        ; preds = %lor.rhs42, %sw.bb39
  %15 = phi i32 [ 1, %sw.bb39 ], [ %phi.cast110, %lor.rhs42 ]
  call void @llvm.dbg.value(metadata i32 %15, metadata !386, metadata !DIExpression()), !dbg !388
  %call47 = call i64 @FormatMagickSize(i64 noundef %add40, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !457
  br label %sw.epilog.sink.split, !dbg !458

sw.bb50:                                          ; preds = %if.end
  %16 = load i64, ptr @resource_info.13, align 8, !dbg !459, !tbaa !461
  call void @llvm.dbg.value(metadata i64 %16, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp51 = icmp eq i64 %16, -1, !dbg !462
  br i1 %cmp51, label %lor.end54, label %lor.rhs52, !dbg !463

lor.rhs52:                                        ; preds = %sw.bb50
  %cmp53 = icmp ne i64 %16, 0, !dbg !464
  %phi.cast109 = zext i1 %cmp53 to i32, !dbg !463
  br label %lor.end54, !dbg !463

lor.end54:                                        ; preds = %lor.rhs52, %sw.bb50
  %17 = phi i32 [ 1, %sw.bb50 ], [ %phi.cast109, %lor.rhs52 ]
  call void @llvm.dbg.value(metadata i32 %17, metadata !386, metadata !DIExpression()), !dbg !388
  %call57 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !465
  br label %sw.epilog.sink.split, !dbg !466

sw.bb60:                                          ; preds = %if.end
  %18 = load i64, ptr @resource_info.14, align 8, !dbg !467, !tbaa !469
  call void @llvm.dbg.value(metadata i64 %18, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp61 = icmp eq i64 %18, -1, !dbg !470
  br i1 %cmp61, label %lor.end64, label %lor.rhs62, !dbg !471

lor.rhs62:                                        ; preds = %sw.bb60
  %cmp63 = icmp ne i64 %18, 0, !dbg !472
  %phi.cast108 = zext i1 %cmp63 to i32, !dbg !471
  br label %lor.end64, !dbg !471

lor.end64:                                        ; preds = %lor.rhs62, %sw.bb60
  %19 = phi i32 [ 1, %sw.bb60 ], [ %phi.cast108, %lor.rhs62 ]
  call void @llvm.dbg.value(metadata i32 %19, metadata !386, metadata !DIExpression()), !dbg !388
  %call67 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !473
  br label %sw.epilog.sink.split, !dbg !474

sw.bb70:                                          ; preds = %if.end
  %20 = load i64, ptr @resource_info.7, align 8, !dbg !475, !tbaa !477
  %add71 = add i64 %20, %size, !dbg !475
  store i64 %add71, ptr @resource_info.7, align 8, !dbg !475, !tbaa !477
  %21 = load i64, ptr @resource_info.15, align 8, !dbg !478, !tbaa !479
  call void @llvm.dbg.value(metadata i64 %21, metadata !387, metadata !DIExpression()), !dbg !388
  %cmp72 = icmp eq i64 %21, -1, !dbg !480
  br i1 %cmp72, label %lor.end75, label %lor.rhs73, !dbg !481

lor.rhs73:                                        ; preds = %sw.bb70
  %cmp74 = icmp ult i64 %add71, %21, !dbg !482
  %phi.cast = zext i1 %cmp74 to i32, !dbg !481
  br label %lor.end75, !dbg !481

lor.end75:                                        ; preds = %lor.rhs73, %sw.bb70
  %22 = phi i32 [ 1, %sw.bb70 ], [ %phi.cast, %lor.rhs73 ]
  call void @llvm.dbg.value(metadata i32 %22, metadata !386, metadata !DIExpression()), !dbg !388
  %call78 = call i64 @FormatMagickSize(i64 noundef %add71, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !483
  br label %sw.epilog.sink.split, !dbg !484

sw.epilog.sink.split:                             ; preds = %lor.end, %lor.end11, %lor.end22, %lor.end33, %lor.end44, %lor.end54, %lor.end64, %lor.end75
  %resource_info.15.sink = phi ptr [ @resource_info.15, %lor.end75 ], [ @resource_info.14, %lor.end64 ], [ @resource_info.13, %lor.end54 ], [ @resource_info.12, %lor.end44 ], [ @resource_info.11, %lor.end33 ], [ @resource_info.10, %lor.end22 ], [ @resource_info.9, %lor.end11 ], [ @resource_info.8, %lor.end ]
  %.sink115 = phi i32 [ 0, %lor.end75 ], [ 0, %lor.end64 ], [ 0, %lor.end54 ], [ 0, %lor.end44 ], [ 1, %lor.end33 ], [ 1, %lor.end22 ], [ 1, %lor.end11 ], [ 0, %lor.end ]
  %status.0.ph = phi i32 [ %22, %lor.end75 ], [ %19, %lor.end64 ], [ %17, %lor.end54 ], [ %15, %lor.end44 ], [ %12, %lor.end33 ], [ %9, %lor.end22 ], [ %6, %lor.end11 ], [ %3, %lor.end ]
  %23 = load i64, ptr %resource_info.15.sink, align 8, !dbg !485, !tbaa !486
  %call80 = call i64 @FormatMagickSize(i64 noundef %23, i32 noundef %.sink115, ptr noundef nonnull %resource_limit) #9, !dbg !485
  br label %sw.epilog, !dbg !487

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end
  %status.0 = phi i32 [ 0, %if.end ], [ %status.0.ph, %sw.epilog.sink.split ], !dbg !388
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !386, metadata !DIExpression()), !dbg !388
  %24 = load ptr, ptr @resource_semaphore, align 8, !dbg !487, !tbaa !396
  call void @UnlockSemaphoreInfo(ptr noundef %24) #9, !dbg !488
  %conv = zext i32 %type to i64, !dbg !489
  %call81 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %conv) #9, !dbg !490
  %call85 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 290, ptr noundef nonnull @.str.2, ptr noundef %call81, ptr noundef nonnull %resource_request, ptr noundef nonnull %resource_current, ptr noundef nonnull %resource_limit) #9, !dbg !491
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_request) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_limit) #9, !dbg !492
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_current) #9, !dbg !492
  ret i32 %status.0, !dbg !493
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !494 i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !499 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !503 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !506 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !507 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !513 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @AsynchronousResourceComponentTerminus() local_unnamed_addr #0 !dbg !519 {
entry:
  %0 = load ptr, ptr @temporary_resources, align 8, !dbg !524, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !526
  br i1 %cmp, label %cleanup, label %if.end, !dbg !527

if.end:                                           ; preds = %entry
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %0) #9, !dbg !528
  %1 = load ptr, ptr @temporary_resources, align 8, !dbg !529, !tbaa !396
  %call = tail call ptr @GetNextKeyInSplayTree(ptr noundef %1) #9, !dbg !530
  call void @llvm.dbg.value(metadata ptr %call, metadata !523, metadata !DIExpression()), !dbg !531
  %cmp1.not5 = icmp eq ptr %call, null, !dbg !532
  br i1 %cmp1.not5, label %cleanup, label %while.body, !dbg !533

while.body:                                       ; preds = %if.end, %while.body
  %path.06 = phi ptr [ %call3, %while.body ], [ %call, %if.end ]
  call void @llvm.dbg.value(metadata ptr %path.06, metadata !523, metadata !DIExpression()), !dbg !531
  %call2 = tail call i32 @ShredFile(ptr noundef nonnull %path.06) #9, !dbg !534
  %2 = load ptr, ptr @temporary_resources, align 8, !dbg !536, !tbaa !396
  %call3 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %2) #9, !dbg !537
  call void @llvm.dbg.value(metadata ptr %call3, metadata !523, metadata !DIExpression()), !dbg !531
  %cmp1.not = icmp eq ptr %call3, null, !dbg !532
  br i1 %cmp1.not, label %cleanup, label %while.body, !dbg !533, !llvm.loop !538

cleanup:                                          ; preds = %while.body, %if.end, %entry
  ret void, !dbg !542
}

declare !dbg !543 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !546 ptr @GetNextKeyInSplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !549 hidden i32 @ShredFile(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @GetPathTemplate(ptr noundef %path) local_unnamed_addr #0 !dbg !553 {
entry:
  %directory = alloca ptr, align 8
  %attributes = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %path, metadata !557, metadata !DIExpression()), !dbg !612
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %directory) #9, !dbg !613
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes) #9, !dbg !614
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !575, metadata !DIExpression()), !dbg !615
  %call = tail call i32 @getpid() #9, !dbg !616
  %conv = sitofp i32 %call to double, !dbg !617
  %call1 = tail call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %path, i64 noundef 4096, ptr noundef nonnull @.str.3, double noundef %conv) #9, !dbg !618
  %call2 = tail call ptr @AcquireExceptionInfo() #9, !dbg !619
  call void @llvm.dbg.value(metadata ptr %call2, metadata !560, metadata !DIExpression()), !dbg !612
  %call3 = tail call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull @.str.4, ptr noundef %call2) #9, !dbg !620
  call void @llvm.dbg.value(metadata ptr %call3, metadata !558, metadata !DIExpression()), !dbg !612
  store ptr %call3, ptr %directory, align 8, !dbg !621, !tbaa !396
  %call4 = tail call ptr @DestroyExceptionInfo(ptr noundef %call2) #9, !dbg !622
  call void @llvm.dbg.value(metadata ptr %call4, metadata !560, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata ptr %call3, metadata !558, metadata !DIExpression()), !dbg !612
  %cmp = icmp eq ptr %call3, null, !dbg !623
  br i1 %cmp, label %if.end, label %if.end25, !dbg !625

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.5) #9, !dbg !626
  call void @llvm.dbg.value(metadata ptr %call6, metadata !558, metadata !DIExpression()), !dbg !612
  store ptr %call6, ptr %directory, align 8, !dbg !627, !tbaa !396
  %cmp7 = icmp eq ptr %call6, null, !dbg !628
  br i1 %cmp7, label %if.end11, label %if.end25, !dbg !630

if.end11:                                         ; preds = %if.end
  %call10 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.6) #9, !dbg !631
  call void @llvm.dbg.value(metadata ptr %call10, metadata !558, metadata !DIExpression()), !dbg !612
  store ptr %call10, ptr %directory, align 8, !dbg !632, !tbaa !396
  %cmp12 = icmp eq ptr %call10, null, !dbg !633
  br i1 %cmp12, label %if.end16, label %if.end25, !dbg !635

if.end16:                                         ; preds = %if.end11
  %call15 = tail call ptr @ConstantString(ptr noundef nonnull @.str.7) #9, !dbg !636
  call void @llvm.dbg.value(metadata ptr %call15, metadata !558, metadata !DIExpression()), !dbg !612
  store ptr %call15, ptr %directory, align 8, !dbg !637, !tbaa !396
  %cmp17 = icmp eq ptr %call15, null, !dbg !638
  br i1 %cmp17, label %if.end21, label %if.end25, !dbg !640

if.end21:                                         ; preds = %if.end16
  %call20 = tail call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.8) #9, !dbg !641
  call void @llvm.dbg.value(metadata ptr %call20, metadata !558, metadata !DIExpression()), !dbg !612
  store ptr %call20, ptr %directory, align 8, !dbg !642, !tbaa !396
  %cmp22 = icmp eq ptr %call20, null, !dbg !643
  br i1 %cmp22, label %cleanup, label %if.end25, !dbg !645

if.end25:                                         ; preds = %entry, %if.end, %if.end16, %if.end11, %if.end21
  %0 = phi ptr [ %call10, %if.end11 ], [ %call20, %if.end21 ], [ %call15, %if.end16 ], [ %call3, %entry ], [ %call6, %if.end ]
  %call26 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.4) #9, !dbg !646
  call void @llvm.dbg.value(metadata ptr %call26, metadata !559, metadata !DIExpression()), !dbg !612
  %cmp27.not = icmp eq ptr %call26, null, !dbg !647
  br i1 %cmp27.not, label %if.end31, label %if.then29, !dbg !649

if.then29:                                        ; preds = %if.end25
  call void @llvm.dbg.value(metadata ptr %directory, metadata !558, metadata !DIExpression(DW_OP_deref)), !dbg !612
  %call30 = call ptr @CloneString(ptr noundef nonnull %directory, ptr noundef nonnull %call26) #9, !dbg !650
  %.pre = load ptr, ptr %directory, align 8, !dbg !651, !tbaa !396
  br label %if.end31, !dbg !653

if.end31:                                         ; preds = %if.then29, %if.end25
  %1 = phi ptr [ %.pre, %if.then29 ], [ %0, %if.end25 ], !dbg !651
  call void @llvm.dbg.value(metadata ptr %1, metadata !558, metadata !DIExpression()), !dbg !612
  %call32 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10, !dbg !654
  %cmp33 = icmp ugt i64 %call32, 4071, !dbg !655
  br i1 %cmp33, label %cleanup.sink.split, label %if.end37, !dbg !656

if.end37:                                         ; preds = %if.end31
  %call38 = call i32 @GetPathAttributes(ptr noundef %1, ptr noundef nonnull %attributes) #9, !dbg !657
  call void @llvm.dbg.value(metadata i32 %call38, metadata !574, metadata !DIExpression()), !dbg !612
  %cmp39 = icmp eq i32 %call38, 0, !dbg !658
  br i1 %cmp39, label %if.then43, label %lor.lhs.false, !dbg !660

lor.lhs.false:                                    ; preds = %if.end37
  %st_mode = getelementptr inbounds %struct.stat, ptr %attributes, i64 0, i32 3, !dbg !661
  %2 = load i32, ptr %st_mode, align 8, !dbg !661, !tbaa !662
  %and = and i32 %2, 61440, !dbg !661
  %cmp41 = icmp eq i32 %and, 16384, !dbg !661
  br i1 %cmp41, label %if.end45, label %if.then43, !dbg !667

if.then43:                                        ; preds = %lor.lhs.false, %if.end37
  %3 = load ptr, ptr %directory, align 8, !dbg !668, !tbaa !396
  call void @llvm.dbg.value(metadata ptr %3, metadata !558, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata ptr undef, metadata !558, metadata !DIExpression()), !dbg !612
  br label %cleanup.sink.split, !dbg !670

if.end45:                                         ; preds = %lor.lhs.false
  %4 = load ptr, ptr %directory, align 8, !dbg !671, !tbaa !396
  call void @llvm.dbg.value(metadata ptr %4, metadata !558, metadata !DIExpression()), !dbg !612
  %call46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #10, !dbg !673
  %sub = add i64 %call46, -1, !dbg !674
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %sub, !dbg !671
  %5 = load i8, ptr %arrayidx, align 1, !dbg !671, !tbaa !675
  %cmp49 = icmp eq i8 %5, 47, !dbg !676
  %call52 = call i32 @getpid() #9, !dbg !677
  %conv53 = sitofp i32 %call52 to double, !dbg !677
  br i1 %cmp49, label %if.then51, label %if.else, !dbg !678

if.then51:                                        ; preds = %if.end45
  %call54 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %path, i64 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %4, double noundef %conv53) #9, !dbg !679
  br label %if.end58, !dbg !680

if.else:                                          ; preds = %if.end45
  %call57 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef %path, i64 noundef 4096, ptr noundef nonnull @.str.11, ptr noundef nonnull %4, ptr noundef nonnull @.str.9, double noundef %conv53) #9, !dbg !681
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then51
  %6 = load ptr, ptr %directory, align 8, !dbg !682, !tbaa !396
  call void @llvm.dbg.value(metadata ptr %6, metadata !558, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata ptr %call59, metadata !558, metadata !DIExpression()), !dbg !612
  br label %cleanup.sink.split, !dbg !683

cleanup.sink.split:                               ; preds = %if.end31, %if.then43, %if.end58
  %.sink = phi ptr [ %6, %if.end58 ], [ %3, %if.then43 ], [ %1, %if.end31 ]
  %retval.0.ph = phi i32 [ 1, %if.end58 ], [ 0, %if.then43 ], [ 0, %if.end31 ]
  %call59 = call ptr @DestroyString(ptr noundef %.sink) #9, !dbg !612
  br label %cleanup, !dbg !684

cleanup:                                          ; preds = %cleanup.sink.split, %if.end21
  %retval.0 = phi i32 [ 1, %if.end21 ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !612
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes) #9, !dbg !684
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %directory) #9, !dbg !684
  ret i32 %retval.0, !dbg !684
}

declare !dbg !685 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !691 i32 @getpid() local_unnamed_addr #4

declare !dbg !696 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !699 ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !704 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !707 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare !dbg !710 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

declare !dbg !711 ptr @GetPolicyValue(ptr noundef) local_unnamed_addr #3

declare !dbg !713 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare !dbg !717 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !720 i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @AcquireUniqueFileResource(ptr noundef %path) local_unnamed_addr #0 !dbg !298 {
entry:
  call void @llvm.dbg.value(metadata ptr %path, metadata !303, metadata !DIExpression()), !dbg !724
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 479, ptr noundef nonnull @.str.12) #9, !dbg !725
  %0 = load ptr, ptr @random_info, align 8, !dbg !726, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !728
  br i1 %cmp, label %if.then, label %if.end, !dbg !729

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @AcquireRandomInfo() #9, !dbg !730
  store ptr %call1, ptr @random_info, align 8, !dbg !731, !tbaa !396
  br label %if.end, !dbg !732

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata i32 -1, metadata !305, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !724
  %add.ptr = getelementptr inbounds i8, ptr %path, i64 -12
  %add.ptr16 = getelementptr inbounds i8, ptr %path, i64 -12
  br label %for.body, !dbg !733

for.body:                                         ; preds = %lor.lhs.false, %if.end
  %call3 = tail call i32 @GetPathTemplate(ptr noundef %path), !dbg !735
  %1 = load ptr, ptr @random_info, align 8, !dbg !738, !tbaa !396
  %call4 = tail call ptr @GetRandomKey(ptr noundef %1, i64 noundef 6) #9, !dbg !739
  call void @llvm.dbg.value(metadata ptr %call4, metadata !308, metadata !DIExpression()), !dbg !724
  %call5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %path) #10, !dbg !740
  call void @llvm.dbg.value(metadata ptr %path, metadata !306, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)), !dbg !724
  %call7 = tail call ptr @GetStringInfoDatum(ptr noundef %call4) #9, !dbg !741
  call void @llvm.dbg.value(metadata ptr %call7, metadata !323, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %path, metadata !306, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)), !dbg !724
  %call996 = tail call i64 @GetStringInfoLength(ptr noundef %call4) #9, !dbg !742
  %cmp1097 = icmp sgt i64 %call996, 0, !dbg !745
  br i1 %cmp1097, label %for.body11.preheader, label %for.end, !dbg !746

for.body11.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !306, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)), !dbg !724
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 %call5, !dbg !747
  call void @llvm.dbg.value(metadata ptr %add.ptr6, metadata !306, metadata !DIExpression()), !dbg !724
  br label %for.body11, !dbg !746

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %i.199 = phi i64 [ %inc, %for.body11 ], [ 0, %for.body11.preheader ]
  %p.098 = phi ptr [ %incdec.ptr, %for.body11 ], [ %add.ptr6, %for.body11.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.199, metadata !307, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %p.098, metadata !306, metadata !DIExpression()), !dbg !724
  %arrayidx = getelementptr inbounds i8, ptr %call7, i64 %i.199, !dbg !748
  %2 = load i8, ptr %arrayidx, align 1, !dbg !748, !tbaa !675
  %3 = and i8 %2, 63, !dbg !750
  %4 = zext i8 %3 to i64
  call void @llvm.dbg.value(metadata i64 %4, metadata !304, metadata !DIExpression()), !dbg !724
  %arrayidx12 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %4, !dbg !751
  %5 = load i8, ptr %arrayidx12, align 1, !dbg !751, !tbaa !675
  %incdec.ptr = getelementptr inbounds i8, ptr %p.098, i64 1, !dbg !752
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !306, metadata !DIExpression()), !dbg !724
  store i8 %5, ptr %p.098, align 1, !dbg !753, !tbaa !675
  %inc = add nuw nsw i64 %i.199, 1, !dbg !754
  call void @llvm.dbg.value(metadata i64 %inc, metadata !307, metadata !DIExpression()), !dbg !724
  %call9 = tail call i64 @GetStringInfoLength(ptr noundef %call4) #9, !dbg !742
  %cmp10 = icmp slt i64 %inc, %call9, !dbg !745
  br i1 %cmp10, label %for.body11, label %for.end, !dbg !746, !llvm.loop !755

for.end:                                          ; preds = %for.body11, %for.body
  %call13 = tail call ptr @DestroyStringInfo(ptr noundef %call4) #9, !dbg !757
  call void @llvm.dbg.value(metadata ptr %call13, metadata !308, metadata !DIExpression()), !dbg !724
  %6 = load ptr, ptr @random_info, align 8, !dbg !758, !tbaa !396
  %call14 = tail call ptr @GetRandomKey(ptr noundef %6, i64 noundef 12) #9, !dbg !759
  call void @llvm.dbg.value(metadata ptr %call14, metadata !308, metadata !DIExpression()), !dbg !724
  %call15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %path) #10, !dbg !760
  call void @llvm.dbg.value(metadata ptr %path, metadata !306, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)), !dbg !724
  %call18 = tail call ptr @GetStringInfoDatum(ptr noundef %call14) #9, !dbg !761
  call void @llvm.dbg.value(metadata ptr %call18, metadata !323, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i64 0, metadata !307, metadata !DIExpression()), !dbg !724
  %call20100 = tail call i64 @GetStringInfoLength(ptr noundef %call14) #9, !dbg !762
  %cmp21101 = icmp sgt i64 %call20100, 0, !dbg !765
  br i1 %cmp21101, label %for.body23.preheader, label %for.end32, !dbg !766

for.body23.preheader:                             ; preds = %for.end
  call void @llvm.dbg.value(metadata ptr %add.ptr16, metadata !306, metadata !DIExpression(DW_OP_constu, 12, DW_OP_minus, DW_OP_stack_value)), !dbg !724
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr16, i64 %call15, !dbg !767
  call void @llvm.dbg.value(metadata ptr %add.ptr17, metadata !306, metadata !DIExpression()), !dbg !724
  br label %for.body23, !dbg !766

for.body23:                                       ; preds = %for.body23.preheader, %for.body23
  %i.2103 = phi i64 [ %inc31, %for.body23 ], [ 0, %for.body23.preheader ]
  %p.1102 = phi ptr [ %incdec.ptr29, %for.body23 ], [ %add.ptr17, %for.body23.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2103, metadata !307, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %p.1102, metadata !306, metadata !DIExpression()), !dbg !724
  %arrayidx24 = getelementptr inbounds i8, ptr %call18, i64 %i.2103, !dbg !768
  %7 = load i8, ptr %arrayidx24, align 1, !dbg !768, !tbaa !675
  %8 = and i8 %7, 63, !dbg !770
  %9 = zext i8 %8 to i64
  call void @llvm.dbg.value(metadata i64 %9, metadata !304, metadata !DIExpression()), !dbg !724
  %arrayidx28 = getelementptr inbounds [65 x i8], ptr @AcquireUniqueFileResource.portable_filename, i64 0, i64 %9, !dbg !771
  %10 = load i8, ptr %arrayidx28, align 1, !dbg !771, !tbaa !675
  %incdec.ptr29 = getelementptr inbounds i8, ptr %p.1102, i64 1, !dbg !772
  call void @llvm.dbg.value(metadata ptr %incdec.ptr29, metadata !306, metadata !DIExpression()), !dbg !724
  store i8 %10, ptr %p.1102, align 1, !dbg !773, !tbaa !675
  %inc31 = add nuw nsw i64 %i.2103, 1, !dbg !774
  call void @llvm.dbg.value(metadata i64 %inc31, metadata !307, metadata !DIExpression()), !dbg !724
  %call20 = tail call i64 @GetStringInfoLength(ptr noundef %call14) #9, !dbg !762
  %cmp21 = icmp slt i64 %inc31, %call20, !dbg !765
  br i1 %cmp21, label %for.body23, label %for.end32, !dbg !766, !llvm.loop !775

for.end32:                                        ; preds = %for.body23, %for.end
  %i.2.lcssa = phi i64 [ 0, %for.end ], [ %inc31, %for.body23 ], !dbg !777
  %call33 = tail call ptr @DestroyStringInfo(ptr noundef %call14) #9, !dbg !778
  call void @llvm.dbg.value(metadata ptr %call33, metadata !308, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata ptr %path, metadata !779, metadata !DIExpression()) #9, !dbg !788
  call void @llvm.dbg.value(metadata i32 131266, metadata !786, metadata !DIExpression()) #9, !dbg !788
  call void @llvm.dbg.value(metadata i32 384, metadata !787, metadata !DIExpression()) #9, !dbg !788
  %call.i = tail call i32 (ptr, i32, ...) @open(ptr noundef %path, i32 noundef 131266, i32 noundef 384) #9, !dbg !790
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !305, metadata !DIExpression()), !dbg !724
  %cmp35 = icmp sgt i32 %call.i, -1, !dbg !791
  br i1 %cmp35, label %for.end44.thread, label %lor.lhs.false, !dbg !793

for.end44.thread:                                 ; preds = %for.end32
  call void @llvm.dbg.value(metadata i32 undef, metadata !305, metadata !DIExpression()), !dbg !724
  %call4592 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.13, ptr noundef %path) #9, !dbg !794
  br label %if.end49, !dbg !795

lor.lhs.false:                                    ; preds = %for.end32
  %call37 = tail call ptr @__errno_location() #11, !dbg !796
  %11 = load i32, ptr %call37, align 4, !dbg !796, !tbaa !797
  %cmp38.not = icmp eq i32 %11, 17, !dbg !798
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !307, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  %cmp2 = icmp slt i64 %i.2.lcssa, 238327
  %or.cond = select i1 %cmp38.not, i1 %cmp2, i1 false, !dbg !799
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !307, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  call void @llvm.dbg.value(metadata i64 %i.2.lcssa, metadata !307, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !724
  call void @llvm.dbg.value(metadata i32 undef, metadata !305, metadata !DIExpression()), !dbg !724
  br i1 %or.cond, label %for.body, label %for.end44, !dbg !799, !llvm.loop !800

for.end44:                                        ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !305, metadata !DIExpression()), !dbg !724
  %call45 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 520, ptr noundef nonnull @.str.13, ptr noundef %path) #9, !dbg !794
  %cmp46 = icmp eq i32 %call.i, -1, !dbg !802
  br i1 %cmp46, label %cleanup, label %if.end49, !dbg !795

if.end49:                                         ; preds = %for.end44.thread, %for.end44
  %12 = load ptr, ptr @resource_semaphore, align 8, !dbg !804, !tbaa !396
  %cmp50 = icmp eq ptr %12, null, !dbg !806
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !807

if.then52:                                        ; preds = %if.end49
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !808
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !809, !tbaa !396
  br label %if.end53, !dbg !808

if.end53:                                         ; preds = %if.then52, %if.end49
  %13 = phi ptr [ %.pre, %if.then52 ], [ %12, %if.end49 ], !dbg !809
  tail call void @LockSemaphoreInfo(ptr noundef %13) #9, !dbg !810
  %14 = load ptr, ptr @temporary_resources, align 8, !dbg !811, !tbaa !396
  %cmp54 = icmp eq ptr %14, null, !dbg !813
  br i1 %cmp54, label %if.then56, label %if.end58, !dbg !814

if.then56:                                        ; preds = %if.end53
  %call57 = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @DestroyTemporaryResources, ptr noundef null) #9, !dbg !815
  store ptr %call57, ptr @temporary_resources, align 8, !dbg !816, !tbaa !396
  br label %if.end58, !dbg !817

if.end58:                                         ; preds = %if.then56, %if.end53
  %15 = load ptr, ptr @resource_semaphore, align 8, !dbg !818, !tbaa !396
  tail call void @UnlockSemaphoreInfo(ptr noundef %15) #9, !dbg !819
  %16 = load ptr, ptr @temporary_resources, align 8, !dbg !820, !tbaa !396
  %call59 = tail call ptr @ConstantString(ptr noundef %path) #9, !dbg !821
  %call60 = tail call i32 @AddValueToSplayTree(ptr noundef %16, ptr noundef %call59, ptr noundef null) #9, !dbg !822
  br label %cleanup, !dbg !823

cleanup:                                          ; preds = %for.end44, %if.end58
  ret i32 %call.i, !dbg !824
}

declare !dbg !825 ptr @AcquireRandomInfo() local_unnamed_addr #3

declare !dbg !828 ptr @GetRandomKey(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !831 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !836 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

declare !dbg !839 ptr @DestroyStringInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #6

declare !dbg !842 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @DestroyTemporaryResources(ptr noundef %temporary_resource) #0 !dbg !848 {
entry:
  call void @llvm.dbg.value(metadata ptr %temporary_resource, metadata !850, metadata !DIExpression()), !dbg !851
  %call = tail call i32 @ShredFile(ptr noundef %temporary_resource) #9, !dbg !852
  %call1 = tail call ptr @DestroyString(ptr noundef %temporary_resource) #9, !dbg !853
  call void @llvm.dbg.value(metadata ptr %call1, metadata !850, metadata !DIExpression()), !dbg !851
  ret ptr null, !dbg !854
}

declare !dbg !855 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @GetMagickResource(i32 noundef %type) local_unnamed_addr #0 !dbg !858 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !862, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i64 0, metadata !863, metadata !DIExpression()), !dbg !864
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !865, !tbaa !396
  tail call void @LockSemaphoreInfo(ptr noundef %0) #9, !dbg !866
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb1
    i32 4, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 7, label %sw.bb7
  ], !dbg !867

sw.bb:                                            ; preds = %entry
  %1 = load i64, ptr @resource_info.0, align 8, !dbg !868, !tbaa !409
  call void @llvm.dbg.value(metadata i64 %1, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !871

sw.bb1:                                           ; preds = %entry
  %2 = load i64, ptr @resource_info.1, align 8, !dbg !872, !tbaa !421
  call void @llvm.dbg.value(metadata i64 %2, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !874

sw.bb2:                                           ; preds = %entry
  %3 = load i64, ptr @resource_info.2, align 8, !dbg !875, !tbaa !431
  call void @llvm.dbg.value(metadata i64 %3, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !877

sw.bb3:                                           ; preds = %entry
  %4 = load i64, ptr @resource_info.3, align 8, !dbg !878, !tbaa !441
  call void @llvm.dbg.value(metadata i64 %4, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !880

sw.bb4:                                           ; preds = %entry
  %5 = load i64, ptr @resource_info.4, align 8, !dbg !881, !tbaa !451
  call void @llvm.dbg.value(metadata i64 %5, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !883

sw.bb7:                                           ; preds = %entry
  %6 = load i64, ptr @resource_info.7, align 8, !dbg !884, !tbaa !477
  call void @llvm.dbg.value(metadata i64 %6, metadata !863, metadata !DIExpression()), !dbg !864
  br label %sw.epilog, !dbg !886

sw.epilog:                                        ; preds = %entry, %sw.bb7, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %resource.0 = phi i64 [ %6, %sw.bb7 ], [ %5, %sw.bb4 ], [ %4, %sw.bb3 ], [ %3, %sw.bb2 ], [ %2, %sw.bb1 ], [ %1, %sw.bb ], [ 0, %entry ], !dbg !864
  call void @llvm.dbg.value(metadata i64 %resource.0, metadata !863, metadata !DIExpression()), !dbg !864
  %7 = load ptr, ptr @resource_semaphore, align 8, !dbg !887, !tbaa !396
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #9, !dbg !888
  ret i64 %resource.0, !dbg !889
}

; Function Attrs: nounwind uwtable
define dso_local i64 @GetMagickResourceLimit(i32 noundef %type) local_unnamed_addr #0 !dbg !890 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !892, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata i64 0, metadata !893, metadata !DIExpression()), !dbg !894
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !895, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !897
  br i1 %cmp, label %if.then, label %if.end, !dbg !898

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !899
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !900, !tbaa !396
  br label %if.end, !dbg !899

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !900
  tail call void @LockSemaphoreInfo(ptr noundef %1) #9, !dbg !901
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb1
    i32 4, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 6, label %sw.bb5
    i32 8, label %sw.bb6
    i32 7, label %sw.bb7
  ], !dbg !902

sw.bb:                                            ; preds = %if.end
  %2 = load i64, ptr @resource_info.8, align 8, !dbg !903, !tbaa !413
  call void @llvm.dbg.value(metadata i64 %2, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !906

sw.bb1:                                           ; preds = %if.end
  %3 = load i64, ptr @resource_info.9, align 8, !dbg !907, !tbaa !423
  call void @llvm.dbg.value(metadata i64 %3, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !909

sw.bb2:                                           ; preds = %if.end
  %4 = load i64, ptr @resource_info.10, align 8, !dbg !910, !tbaa !433
  call void @llvm.dbg.value(metadata i64 %4, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !912

sw.bb3:                                           ; preds = %if.end
  %5 = load i64, ptr @resource_info.11, align 8, !dbg !913, !tbaa !443
  call void @llvm.dbg.value(metadata i64 %5, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !915

sw.bb4:                                           ; preds = %if.end
  %6 = load i64, ptr @resource_info.12, align 8, !dbg !916, !tbaa !453
  call void @llvm.dbg.value(metadata i64 %6, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !918

sw.bb5:                                           ; preds = %if.end
  %7 = load i64, ptr @resource_info.13, align 8, !dbg !919, !tbaa !461
  call void @llvm.dbg.value(metadata i64 %7, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !921

sw.bb6:                                           ; preds = %if.end
  %8 = load i64, ptr @resource_info.14, align 8, !dbg !922, !tbaa !469
  call void @llvm.dbg.value(metadata i64 %8, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !924

sw.bb7:                                           ; preds = %if.end
  %9 = load i64, ptr @resource_info.15, align 8, !dbg !925, !tbaa !479
  call void @llvm.dbg.value(metadata i64 %9, metadata !893, metadata !DIExpression()), !dbg !894
  br label %sw.epilog, !dbg !927

sw.epilog:                                        ; preds = %if.end, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %resource.0 = phi i64 [ 0, %if.end ], [ %9, %sw.bb7 ], [ %8, %sw.bb6 ], [ %7, %sw.bb5 ], [ %6, %sw.bb4 ], [ %5, %sw.bb3 ], [ %4, %sw.bb2 ], [ %3, %sw.bb1 ], [ %2, %sw.bb ], !dbg !894
  call void @llvm.dbg.value(metadata i64 %resource.0, metadata !893, metadata !DIExpression()), !dbg !894
  %10 = load ptr, ptr @resource_semaphore, align 8, !dbg !928, !tbaa !396
  tail call void @UnlockSemaphoreInfo(ptr noundef %10) #9, !dbg !929
  ret i64 %resource.0, !dbg !930
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListMagickResourceInfo(ptr noundef %file, ptr nocapture noundef readnone %exception) local_unnamed_addr #0 !dbg !931 {
entry:
  %area_limit = alloca [4096 x i8], align 16
  %disk_limit = alloca [4096 x i8], align 16
  %map_limit = alloca [4096 x i8], align 16
  %memory_limit = alloca [4096 x i8], align 16
  %time_limit = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %file, metadata !936, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr %exception, metadata !937, metadata !DIExpression()), !dbg !943
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %area_limit) #9, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %area_limit, metadata !938, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %disk_limit) #9, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %disk_limit, metadata !939, metadata !DIExpression()), !dbg !946
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %map_limit) #9, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %map_limit, metadata !940, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %memory_limit) #9, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %memory_limit, metadata !941, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %time_limit) #9, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %time_limit, metadata !942, metadata !DIExpression()), !dbg !949
  %0 = load ptr, ptr @stdout, align 8
  call void @llvm.dbg.value(metadata ptr undef, metadata !936, metadata !DIExpression()), !dbg !943
  %1 = load ptr, ptr @resource_semaphore, align 8, !dbg !950, !tbaa !396
  %cmp1 = icmp eq ptr %1, null, !dbg !952
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !953

if.then2:                                         ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !954
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !955, !tbaa !396
  br label %if.end3, !dbg !954

if.end3:                                          ; preds = %if.then2, %entry
  %2 = phi ptr [ %.pre, %if.then2 ], [ %1, %entry ], !dbg !955
  tail call void @LockSemaphoreInfo(ptr noundef %2) #9, !dbg !956
  %3 = load i64, ptr @resource_info.8, align 8, !dbg !957, !tbaa !413
  %call = call i64 @FormatMagickSize(i64 noundef %3, i32 noundef 0, ptr noundef nonnull %area_limit) #9, !dbg !958
  %4 = load i64, ptr @resource_info.9, align 8, !dbg !959, !tbaa !423
  %call5 = call i64 @FormatMagickSize(i64 noundef %4, i32 noundef 1, ptr noundef nonnull %memory_limit) #9, !dbg !960
  %5 = load i64, ptr @resource_info.10, align 8, !dbg !961, !tbaa !433
  %call7 = call i64 @FormatMagickSize(i64 noundef %5, i32 noundef 1, ptr noundef nonnull %map_limit) #9, !dbg !962
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %disk_limit, ptr noundef nonnull @.str.14, i64 noundef 4096) #9, !dbg !963
  %6 = load i64, ptr @resource_info.11, align 8, !dbg !964, !tbaa !443
  %cmp10.not = icmp eq i64 %6, -1, !dbg !966
  br i1 %cmp10.not, label %if.end14, label %if.then11, !dbg !967

if.then11:                                        ; preds = %if.end3
  %call13 = call i64 @FormatMagickSize(i64 noundef %6, i32 noundef 1, ptr noundef nonnull %disk_limit) #9, !dbg !968
  br label %if.end14, !dbg !969

if.end14:                                         ; preds = %if.then11, %if.end3
  %call16 = call i64 @CopyMagickString(ptr noundef nonnull %time_limit, ptr noundef nonnull @.str.14, i64 noundef 4096) #9, !dbg !970
  %7 = load i64, ptr @resource_info.15, align 8, !dbg !971, !tbaa !479
  %cmp17.not = icmp eq i64 %7, -1, !dbg !973
  br i1 %cmp17.not, label %if.end21, label %if.then18, !dbg !974

if.then18:                                        ; preds = %if.end14
  %conv = sitofp i64 %7 to double, !dbg !975
  %call20 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %time_limit, i64 noundef 4096, ptr noundef nonnull @.str.15, double noundef %conv) #9, !dbg !976
  br label %if.end21, !dbg !977

if.end21:                                         ; preds = %if.then18, %if.end14
  %cmp = icmp eq ptr %file, null, !dbg !978
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !980
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !936, metadata !DIExpression()), !dbg !943
  %call22 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16) #9, !dbg !981
  %call23 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.17) #9, !dbg !982
  %8 = load i64, ptr @resource_info.12, align 8, !dbg !983, !tbaa !453
  %conv24 = sitofp i64 %8 to double, !dbg !984
  %9 = load i64, ptr @resource_info.13, align 8, !dbg !985, !tbaa !461
  %conv29 = sitofp i64 %9 to double, !dbg !986
  %10 = load i64, ptr @resource_info.14, align 8, !dbg !987, !tbaa !469
  %conv30 = sitofp i64 %10 to double, !dbg !988
  %call32 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.18, double noundef %conv24, ptr noundef nonnull %area_limit, ptr noundef nonnull %memory_limit, ptr noundef nonnull %map_limit, ptr noundef nonnull %disk_limit, double noundef %conv29, double noundef %conv30, ptr noundef nonnull %time_limit) #9, !dbg !989
  %call33 = call i32 @fflush(ptr noundef %spec.select), !dbg !990
  %11 = load ptr, ptr @resource_semaphore, align 8, !dbg !991, !tbaa !396
  call void @UnlockSemaphoreInfo(ptr noundef %11) #9, !dbg !992
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %time_limit) #9, !dbg !993
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %memory_limit) #9, !dbg !993
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %map_limit) #9, !dbg !993
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %disk_limit) #9, !dbg !993
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %area_limit) #9, !dbg !993
  ret i32 1, !dbg !994
}

declare !dbg !995 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !998 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1001 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @RelinquishMagickResource(i32 noundef %type, i64 noundef %size) local_unnamed_addr #0 !dbg !1004 {
entry:
  %resource_current = alloca [4096 x i8], align 16
  %resource_limit = alloca [4096 x i8], align 16
  %resource_request = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %type, metadata !1008, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.value(metadata i64 %size, metadata !1009, metadata !DIExpression()), !dbg !1013
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_current) #9, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %resource_current, metadata !1010, metadata !DIExpression()), !dbg !1015
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_limit) #9, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %resource_limit, metadata !1011, metadata !DIExpression()), !dbg !1016
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %resource_request) #9, !dbg !1014
  call void @llvm.dbg.declare(metadata ptr %resource_request, metadata !1012, metadata !DIExpression()), !dbg !1017
  %call = call i64 @FormatMagickSize(i64 noundef %size, i32 noundef 0, ptr noundef nonnull %resource_request) #9, !dbg !1018
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !1019, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !1021
  br i1 %cmp, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !1023
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !1024, !tbaa !396
  br label %if.end, !dbg !1023

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1024
  call void @LockSemaphoreInfo(ptr noundef %1) #9, !dbg !1025
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb5
    i32 4, label %sw.bb10
    i32 2, label %sw.bb16
    i32 3, label %sw.bb22
    i32 6, label %sw.bb28
    i32 8, label %sw.bb33
    i32 7, label %sw.bb38
  ], !dbg !1026

sw.bb:                                            ; preds = %if.end
  store i64 %size, ptr @resource_info.0, align 8, !dbg !1027, !tbaa !409
  %call2 = call i64 @FormatMagickSize(i64 noundef %size, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !1030
  br label %sw.epilog.sink.split, !dbg !1031

sw.bb5:                                           ; preds = %if.end
  %2 = load i64, ptr @resource_info.1, align 8, !dbg !1032, !tbaa !421
  %sub = sub i64 %2, %size, !dbg !1032
  store i64 %sub, ptr @resource_info.1, align 8, !dbg !1032, !tbaa !421
  %call7 = call i64 @FormatMagickSize(i64 noundef %sub, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !1034
  br label %sw.epilog.sink.split, !dbg !1035

sw.bb10:                                          ; preds = %if.end
  %3 = load i64, ptr @resource_info.2, align 8, !dbg !1036, !tbaa !431
  %sub11 = sub i64 %3, %size, !dbg !1036
  store i64 %sub11, ptr @resource_info.2, align 8, !dbg !1036, !tbaa !431
  %call13 = call i64 @FormatMagickSize(i64 noundef %sub11, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !1038
  br label %sw.epilog.sink.split, !dbg !1039

sw.bb16:                                          ; preds = %if.end
  %4 = load i64, ptr @resource_info.3, align 8, !dbg !1040, !tbaa !441
  %sub17 = sub i64 %4, %size, !dbg !1040
  store i64 %sub17, ptr @resource_info.3, align 8, !dbg !1040, !tbaa !441
  %call19 = call i64 @FormatMagickSize(i64 noundef %sub17, i32 noundef 1, ptr noundef nonnull %resource_current) #9, !dbg !1042
  br label %sw.epilog.sink.split, !dbg !1043

sw.bb22:                                          ; preds = %if.end
  %5 = load i64, ptr @resource_info.4, align 8, !dbg !1044, !tbaa !451
  %sub23 = sub i64 %5, %size, !dbg !1044
  store i64 %sub23, ptr @resource_info.4, align 8, !dbg !1044, !tbaa !451
  %call25 = call i64 @FormatMagickSize(i64 noundef %sub23, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !1046
  br label %sw.epilog.sink.split, !dbg !1047

sw.bb28:                                          ; preds = %if.end
  %call30 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !1048
  br label %sw.epilog.sink.split, !dbg !1050

sw.bb33:                                          ; preds = %if.end
  %call35 = call i64 @FormatMagickSize(i64 noundef 0, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !1051
  br label %sw.epilog.sink.split, !dbg !1053

sw.bb38:                                          ; preds = %if.end
  %6 = load i64, ptr @resource_info.7, align 8, !dbg !1054, !tbaa !477
  %sub39 = sub i64 %6, %size, !dbg !1054
  store i64 %sub39, ptr @resource_info.7, align 8, !dbg !1054, !tbaa !477
  %call41 = call i64 @FormatMagickSize(i64 noundef %sub39, i32 noundef 0, ptr noundef nonnull %resource_current) #9, !dbg !1056
  br label %sw.epilog.sink.split, !dbg !1057

sw.epilog.sink.split:                             ; preds = %sw.bb, %sw.bb5, %sw.bb10, %sw.bb16, %sw.bb22, %sw.bb28, %sw.bb33, %sw.bb38
  %resource_info.15.sink = phi ptr [ @resource_info.15, %sw.bb38 ], [ @resource_info.14, %sw.bb33 ], [ @resource_info.13, %sw.bb28 ], [ @resource_info.12, %sw.bb22 ], [ @resource_info.11, %sw.bb16 ], [ @resource_info.10, %sw.bb10 ], [ @resource_info.9, %sw.bb5 ], [ @resource_info.8, %sw.bb ]
  %.sink56 = phi i32 [ 0, %sw.bb38 ], [ 0, %sw.bb33 ], [ 0, %sw.bb28 ], [ 0, %sw.bb22 ], [ 1, %sw.bb16 ], [ 1, %sw.bb10 ], [ 1, %sw.bb5 ], [ 0, %sw.bb ]
  %7 = load i64, ptr %resource_info.15.sink, align 8, !dbg !1058, !tbaa !486
  %call43 = call i64 @FormatMagickSize(i64 noundef %7, i32 noundef %.sink56, ptr noundef nonnull %resource_limit) #9, !dbg !1058
  br label %sw.epilog, !dbg !1059

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end
  %8 = load ptr, ptr @resource_semaphore, align 8, !dbg !1059, !tbaa !396
  call void @UnlockSemaphoreInfo(ptr noundef %8) #9, !dbg !1060
  %conv = zext i32 %type to i64, !dbg !1061
  %call44 = call ptr @CommandOptionToMnemonic(i32 noundef 59, i64 noundef %conv) #9, !dbg !1062
  %call48 = call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 873, ptr noundef nonnull @.str.2, ptr noundef %call44, ptr noundef nonnull %resource_request, ptr noundef nonnull %resource_current, ptr noundef nonnull %resource_limit) #9, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_request) #9, !dbg !1064
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_limit) #9, !dbg !1064
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %resource_current) #9, !dbg !1064
  ret void, !dbg !1064
}

; Function Attrs: nounwind uwtable
define dso_local i32 @RelinquishUniqueFileResource(ptr noundef %path) local_unnamed_addr #0 !dbg !1065 {
entry:
  %cache_path = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %path, metadata !1067, metadata !DIExpression()), !dbg !1072
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %cache_path) #9, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %cache_path, metadata !1068, metadata !DIExpression()), !dbg !1074
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 906, ptr noundef nonnull @.str.19, ptr noundef %path) #9, !dbg !1075
  %0 = load ptr, ptr @temporary_resources, align 8, !dbg !1076, !tbaa !396
  %cmp.not = icmp eq ptr %0, null, !dbg !1077
  br i1 %cmp.not, label %if.end11, label %if.then, !dbg !1078

if.then:                                          ; preds = %entry
  tail call void @ResetSplayTreeIterator(ptr noundef nonnull %0) #9, !dbg !1079
  %1 = load ptr, ptr @temporary_resources, align 8, !dbg !1080, !tbaa !396
  %call1 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %1) #9, !dbg !1081
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1069, metadata !DIExpression()), !dbg !1082
  %cmp2.not24 = icmp eq ptr %call1, null, !dbg !1083
  br i1 %cmp2.not24, label %if.end11, label %while.body, !dbg !1084

while.body:                                       ; preds = %if.then, %if.end
  %p.025 = phi ptr [ %call6, %if.end ], [ %call1, %if.then ]
  call void @llvm.dbg.value(metadata ptr %p.025, metadata !1069, metadata !DIExpression()), !dbg !1082
  %call3 = tail call i32 @LocaleCompare(ptr noundef nonnull %p.025, ptr noundef %path) #9, !dbg !1085
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1088
  %2 = load ptr, ptr @temporary_resources, align 8, !dbg !1082, !tbaa !396
  br i1 %cmp4, label %if.then8, label %if.end, !dbg !1089

if.end:                                           ; preds = %while.body
  %call6 = tail call ptr @GetNextKeyInSplayTree(ptr noundef %2) #9, !dbg !1090
  call void @llvm.dbg.value(metadata ptr %call6, metadata !1069, metadata !DIExpression()), !dbg !1082
  %cmp2.not = icmp eq ptr %call6, null, !dbg !1083
  br i1 %cmp2.not, label %if.end11, label %while.body, !dbg !1084, !llvm.loop !1091

if.then8:                                         ; preds = %while.body
  %call9 = tail call i32 @DeleteNodeFromSplayTree(ptr noundef %2, ptr noundef nonnull %p.025) #9, !dbg !1093
  br label %if.end11, !dbg !1095

if.end11:                                         ; preds = %if.end, %if.then, %if.then8, %entry
  %call12 = call i64 @CopyMagickString(ptr noundef nonnull %cache_path, ptr noundef %path, i64 noundef 4096) #9, !dbg !1096
  call void @AppendImageFormat(ptr noundef nonnull @.str.20, ptr noundef nonnull %cache_path) #9, !dbg !1097
  %call15 = call i32 @ShredFile(ptr noundef nonnull %cache_path) #9, !dbg !1098
  %call16 = call i32 @ShredFile(ptr noundef %path) #9, !dbg !1099
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %cache_path) #9, !dbg !1100
  ret i32 %call16, !dbg !1101
}

declare !dbg !1102 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1105 i32 @DeleteNodeFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1108 void @AppendImageFormat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @ResourceComponentGenesis() local_unnamed_addr #0 !dbg !1111 {
entry:
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1115, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1116, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1117, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1119, metadata !DIExpression()), !dbg !1124
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !1125, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !1127
  br i1 %cmp, label %if.then, label %if.end, !dbg !1128

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #9, !dbg !1129
  store ptr %call, ptr @resource_semaphore, align 8, !dbg !1130, !tbaa !396
  br label %if.end, !dbg !1131

if.end:                                           ; preds = %if.then, %entry
  %call2 = tail call i32 @SetMagickResourceLimit(i32 noundef 6, i64 noundef 1), !dbg !1132
  ret i32 1, !dbg !1133
}

declare !dbg !1134 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @SetMagickResourceLimit(i32 noundef %type, i64 noundef %limit) local_unnamed_addr #0 !dbg !1137 {
entry:
  %q.i.i143 = alloca ptr, align 8
  %q.i.i136 = alloca ptr, align 8
  %q.i.i129 = alloca ptr, align 8
  %q.i.i122 = alloca ptr, align 8
  %q.i.i115 = alloca ptr, align 8
  %q.i.i108 = alloca ptr, align 8
  %q.i.i101 = alloca ptr, align 8
  %q.i.i = alloca ptr, align 8
  call void @llvm.dbg.value(metadata i32 %type, metadata !1139, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %limit, metadata !1140, metadata !DIExpression()), !dbg !1142
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !1143, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !1145
  br i1 %cmp, label %if.then, label %if.end, !dbg !1146

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !1147
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !1148, !tbaa !396
  br label %if.end, !dbg !1147

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1148
  tail call void @LockSemaphoreInfo(ptr noundef %1) #9, !dbg !1149
  call void @llvm.dbg.value(metadata ptr null, metadata !1141, metadata !DIExpression()), !dbg !1142
  switch i32 %type, label %if.end68 [
    i32 1, label %sw.bb
    i32 5, label %sw.bb6
    i32 4, label %sw.bb13
    i32 2, label %sw.bb20
    i32 3, label %sw.bb27
    i32 6, label %sw.bb34
    i32 8, label %sw.bb46
    i32 7, label %sw.bb58
  ], !dbg !1150

sw.bb:                                            ; preds = %if.end
  store i64 %limit, ptr @resource_info.8, align 8, !dbg !1151, !tbaa !413
  %call = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.21) #9, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %call, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp1.not = icmp eq ptr %call, null, !dbg !1155
  br i1 %cmp1.not, label %if.end68, label %if.then2, !dbg !1157

if.then2:                                         ; preds = %sw.bb
  call void @llvm.dbg.value(metadata ptr %call, metadata !1158, metadata !DIExpression()) #9, !dbg !1166
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %call, metadata !1168, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i) #9, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %q.i.i, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1177
  %call.i.i = call double @InterpretSiPrefixValue(ptr noundef nonnull %call, ptr noundef nonnull %q.i.i) #9, !dbg !1180
  call void @llvm.dbg.value(metadata double %call.i.i, metadata !1176, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.dbg.value(metadata double %call.i.i, metadata !1176, metadata !DIExpression()) #9, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i) #9, !dbg !1181
  call void @llvm.dbg.value(metadata double %call.i.i, metadata !1165, metadata !DIExpression()) #9, !dbg !1166
  %cmp.i = fcmp ult double %call.i.i, 0x43F0000000000000, !dbg !1182
  br i1 %cmp.i, label %if.end.i, label %if.then66.sink.split, !dbg !1184

if.end.i:                                         ; preds = %if.then2
  %conv.i = fptoui double %call.i.i to i64, !dbg !1185
  br label %if.then66.sink.split, !dbg !1186

sw.bb6:                                           ; preds = %if.end
  store i64 %limit, ptr @resource_info.9, align 8, !dbg !1187, !tbaa !423
  %call7 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.22) #9, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp8.not = icmp eq ptr %call7, null, !dbg !1190
  br i1 %cmp8.not, label %if.end68, label %if.then9, !dbg !1192

if.then9:                                         ; preds = %sw.bb6
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1158, metadata !DIExpression()) #9, !dbg !1193
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %call7, metadata !1168, metadata !DIExpression()) #9, !dbg !1195
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1195
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i101) #9, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %q.i.i101, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1195
  %call.i.i102 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call7, ptr noundef nonnull %q.i.i101) #9, !dbg !1198
  call void @llvm.dbg.value(metadata double %call.i.i102, metadata !1176, metadata !DIExpression()) #9, !dbg !1195
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1195
  call void @llvm.dbg.value(metadata double %call.i.i102, metadata !1176, metadata !DIExpression()) #9, !dbg !1195
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i101) #9, !dbg !1199
  call void @llvm.dbg.value(metadata double %call.i.i102, metadata !1165, metadata !DIExpression()) #9, !dbg !1193
  %cmp.i103 = fcmp ult double %call.i.i102, 0x43F0000000000000, !dbg !1200
  br i1 %cmp.i103, label %if.end.i105, label %if.then66.sink.split, !dbg !1201

if.end.i105:                                      ; preds = %if.then9
  %conv.i104 = fptoui double %call.i.i102 to i64, !dbg !1202
  br label %if.then66.sink.split, !dbg !1203

sw.bb13:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.10, align 8, !dbg !1204, !tbaa !433
  %call14 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.23) #9, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp15.not = icmp eq ptr %call14, null, !dbg !1207
  br i1 %cmp15.not, label %if.end68, label %if.then16, !dbg !1209

if.then16:                                        ; preds = %sw.bb13
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1158, metadata !DIExpression()) #9, !dbg !1210
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1168, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i108) #9, !dbg !1214
  call void @llvm.dbg.value(metadata ptr %q.i.i108, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1212
  %call.i.i109 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call14, ptr noundef nonnull %q.i.i108) #9, !dbg !1215
  call void @llvm.dbg.value(metadata double %call.i.i109, metadata !1176, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.dbg.value(metadata double %call.i.i109, metadata !1176, metadata !DIExpression()) #9, !dbg !1212
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i108) #9, !dbg !1216
  call void @llvm.dbg.value(metadata double %call.i.i109, metadata !1165, metadata !DIExpression()) #9, !dbg !1210
  %cmp.i110 = fcmp ult double %call.i.i109, 0x43F0000000000000, !dbg !1217
  br i1 %cmp.i110, label %if.end.i112, label %if.then66.sink.split, !dbg !1218

if.end.i112:                                      ; preds = %if.then16
  %conv.i111 = fptoui double %call.i.i109 to i64, !dbg !1219
  br label %if.then66.sink.split, !dbg !1220

sw.bb20:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.11, align 8, !dbg !1221, !tbaa !443
  %call21 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.24) #9, !dbg !1223
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp22.not = icmp eq ptr %call21, null, !dbg !1224
  br i1 %cmp22.not, label %if.end68, label %if.then23, !dbg !1226

if.then23:                                        ; preds = %sw.bb20
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1158, metadata !DIExpression()) #9, !dbg !1227
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1227
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1168, metadata !DIExpression()) #9, !dbg !1229
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1229
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i115) #9, !dbg !1231
  call void @llvm.dbg.value(metadata ptr %q.i.i115, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1229
  %call.i.i116 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call21, ptr noundef nonnull %q.i.i115) #9, !dbg !1232
  call void @llvm.dbg.value(metadata double %call.i.i116, metadata !1176, metadata !DIExpression()) #9, !dbg !1229
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1229
  call void @llvm.dbg.value(metadata double %call.i.i116, metadata !1176, metadata !DIExpression()) #9, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i115) #9, !dbg !1233
  call void @llvm.dbg.value(metadata double %call.i.i116, metadata !1165, metadata !DIExpression()) #9, !dbg !1227
  %cmp.i117 = fcmp ult double %call.i.i116, 0x43F0000000000000, !dbg !1234
  br i1 %cmp.i117, label %if.end.i119, label %if.then66.sink.split, !dbg !1235

if.end.i119:                                      ; preds = %if.then23
  %conv.i118 = fptoui double %call.i.i116 to i64, !dbg !1236
  br label %if.then66.sink.split, !dbg !1237

sw.bb27:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.12, align 8, !dbg !1238, !tbaa !453
  %call28 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.25) #9, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp29.not = icmp eq ptr %call28, null, !dbg !1241
  br i1 %cmp29.not, label %if.end68, label %if.then30, !dbg !1243

if.then30:                                        ; preds = %sw.bb27
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1158, metadata !DIExpression()) #9, !dbg !1244
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1244
  call void @llvm.dbg.value(metadata ptr %call28, metadata !1168, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i122) #9, !dbg !1248
  call void @llvm.dbg.value(metadata ptr %q.i.i122, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1246
  %call.i.i123 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call28, ptr noundef nonnull %q.i.i122) #9, !dbg !1249
  call void @llvm.dbg.value(metadata double %call.i.i123, metadata !1176, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.dbg.value(metadata double %call.i.i123, metadata !1176, metadata !DIExpression()) #9, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i122) #9, !dbg !1250
  call void @llvm.dbg.value(metadata double %call.i.i123, metadata !1165, metadata !DIExpression()) #9, !dbg !1244
  %cmp.i124 = fcmp ult double %call.i.i123, 0x43F0000000000000, !dbg !1251
  br i1 %cmp.i124, label %if.end.i126, label %if.then66.sink.split, !dbg !1252

if.end.i126:                                      ; preds = %if.then30
  %conv.i125 = fptoui double %call.i.i123 to i64, !dbg !1253
  br label %if.then66.sink.split, !dbg !1254

sw.bb34:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.13, align 8, !dbg !1255, !tbaa !461
  %call35 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.26) #9, !dbg !1257
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp36.not = icmp eq ptr %call35, null, !dbg !1258
  br i1 %cmp36.not, label %if.end40thread-pre-split, label %if.then37, !dbg !1260

if.then37:                                        ; preds = %sw.bb34
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1158, metadata !DIExpression()) #9, !dbg !1261
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %call35, metadata !1168, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i129) #9, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %q.i.i129, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1263
  %call.i.i130 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call35, ptr noundef nonnull %q.i.i129) #9, !dbg !1266
  call void @llvm.dbg.value(metadata double %call.i.i130, metadata !1176, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.dbg.value(metadata double %call.i.i130, metadata !1176, metadata !DIExpression()) #9, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i129) #9, !dbg !1267
  call void @llvm.dbg.value(metadata double %call.i.i130, metadata !1165, metadata !DIExpression()) #9, !dbg !1261
  %cmp.i131 = fcmp ult double %call.i.i130, 0x43F0000000000000, !dbg !1268
  br i1 %cmp.i131, label %if.end.i133, label %StringToSizeType.exit135, !dbg !1269

if.end.i133:                                      ; preds = %if.then37
  %conv.i132 = fptoui double %call.i.i130 to i64, !dbg !1270
  br label %StringToSizeType.exit135, !dbg !1271

StringToSizeType.exit135:                         ; preds = %if.then37, %if.end.i133
  %retval.0.i134 = phi i64 [ %conv.i132, %if.end.i133 ], [ -1, %if.then37 ], !dbg !1261
  call void @llvm.dbg.value(metadata i64 %limit, metadata !1272, metadata !DIExpression()) #9, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %retval.0.i134, metadata !1277, metadata !DIExpression()) #9, !dbg !1278
  %2 = call i64 @llvm.umin.i64(i64 %limit, i64 %retval.0.i134) #9, !dbg !1278
  store i64 %2, ptr @resource_info.13, align 8, !dbg !1280, !tbaa !461
  br label %if.end40, !dbg !1281

if.end40thread-pre-split:                         ; preds = %sw.bb34
  %.pr = load i64, ptr @resource_info.13, align 8, !dbg !1282, !tbaa !461
  br label %if.end40, !dbg !1282

if.end40:                                         ; preds = %if.end40thread-pre-split, %StringToSizeType.exit135
  %3 = phi i64 [ %.pr, %if.end40thread-pre-split ], [ %2, %StringToSizeType.exit135 ], !dbg !1282
  %cmp42 = icmp ugt i64 %3, 1, !dbg !1284
  br i1 %cmp42, label %sw.epilog.sink.split, label %sw.epilog, !dbg !1285

sw.bb46:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.14, align 8, !dbg !1286, !tbaa !469
  %call47 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.27) #9, !dbg !1288
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp48.not = icmp eq ptr %call47, null, !dbg !1289
  br i1 %cmp48.not, label %if.end52thread-pre-split, label %if.then49, !dbg !1291

if.then49:                                        ; preds = %sw.bb46
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1158, metadata !DIExpression()) #9, !dbg !1292
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %call47, metadata !1168, metadata !DIExpression()) #9, !dbg !1294
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1294
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i136) #9, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %q.i.i136, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1294
  %call.i.i137 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call47, ptr noundef nonnull %q.i.i136) #9, !dbg !1297
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1294
  call void @llvm.dbg.value(metadata double %call.i.i137, metadata !1176, metadata !DIExpression()) #9, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i136) #9, !dbg !1298
  call void @llvm.dbg.value(metadata double %call.i.i137, metadata !1165, metadata !DIExpression()) #9, !dbg !1292
  %cmp.i138 = fcmp ult double %call.i.i137, 0x43F0000000000000, !dbg !1299
  br i1 %cmp.i138, label %if.end.i140, label %StringToSizeType.exit142, !dbg !1300

if.end.i140:                                      ; preds = %if.then49
  %conv.i139 = fptoui double %call.i.i137 to i64, !dbg !1301
  br label %StringToSizeType.exit142, !dbg !1302

StringToSizeType.exit142:                         ; preds = %if.then49, %if.end.i140
  %retval.0.i141 = phi i64 [ %conv.i139, %if.end.i140 ], [ -1, %if.then49 ], !dbg !1292
  call void @llvm.dbg.value(metadata i64 %limit, metadata !1272, metadata !DIExpression()) #9, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %retval.0.i141, metadata !1277, metadata !DIExpression()) #9, !dbg !1303
  %4 = call i64 @llvm.umin.i64(i64 %limit, i64 %retval.0.i141) #9, !dbg !1303
  store i64 %4, ptr @resource_info.14, align 8, !dbg !1305, !tbaa !469
  br label %if.end52, !dbg !1306

if.end52thread-pre-split:                         ; preds = %sw.bb46
  %.pr150 = load i64, ptr @resource_info.14, align 8, !dbg !1307, !tbaa !469
  br label %if.end52, !dbg !1307

if.end52:                                         ; preds = %if.end52thread-pre-split, %StringToSizeType.exit142
  %5 = phi i64 [ %.pr150, %if.end52thread-pre-split ], [ %4, %StringToSizeType.exit142 ], !dbg !1307
  %cmp54 = icmp ugt i64 %5, 1, !dbg !1309
  br i1 %cmp54, label %sw.epilog.sink.split, label %sw.epilog, !dbg !1310

sw.bb58:                                          ; preds = %if.end
  store i64 %limit, ptr @resource_info.15, align 8, !dbg !1311, !tbaa !479
  %call59 = tail call ptr @GetPolicyValue(ptr noundef nonnull @.str.28) #9, !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp60.not = icmp eq ptr %call59, null, !dbg !1314
  br i1 %cmp60.not, label %if.end68, label %if.then61, !dbg !1316

if.then61:                                        ; preds = %sw.bb58
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1158, metadata !DIExpression()) #9, !dbg !1317
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1164, metadata !DIExpression()) #9, !dbg !1317
  call void @llvm.dbg.value(metadata ptr %call59, metadata !1168, metadata !DIExpression()) #9, !dbg !1319
  call void @llvm.dbg.value(metadata double 1.000000e+02, metadata !1174, metadata !DIExpression()) #9, !dbg !1319
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q.i.i143) #9, !dbg !1321
  call void @llvm.dbg.value(metadata ptr %q.i.i143, metadata !1175, metadata !DIExpression(DW_OP_deref)) #9, !dbg !1319
  %call.i.i144 = call double @InterpretSiPrefixValue(ptr noundef nonnull %call59, ptr noundef nonnull %q.i.i143) #9, !dbg !1322
  call void @llvm.dbg.value(metadata ptr undef, metadata !1175, metadata !DIExpression()) #9, !dbg !1319
  call void @llvm.dbg.value(metadata double %call.i.i144, metadata !1176, metadata !DIExpression()) #9, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q.i.i143) #9, !dbg !1323
  call void @llvm.dbg.value(metadata double %call.i.i144, metadata !1165, metadata !DIExpression()) #9, !dbg !1317
  %cmp.i145 = fcmp ult double %call.i.i144, 0x43F0000000000000, !dbg !1324
  br i1 %cmp.i145, label %if.end.i147, label %if.then66.sink.split, !dbg !1325

if.end.i147:                                      ; preds = %if.then61
  %conv.i146 = fptoui double %call.i.i144 to i64, !dbg !1326
  br label %if.then66.sink.split, !dbg !1327

sw.epilog.sink.split:                             ; preds = %if.end52, %if.end40
  %resource_info.14.sink = phi ptr [ @resource_info.13, %if.end40 ], [ @resource_info.14, %if.end52 ]
  %value.0.ph = phi ptr [ %call35, %if.end40 ], [ %call47, %if.end52 ]
  store i64 1, ptr %resource_info.14.sink, align 8, !dbg !1328, !tbaa !486
  br label %sw.epilog, !dbg !1329

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end52, %if.end40
  %value.0 = phi ptr [ %call47, %if.end52 ], [ %call35, %if.end40 ], [ %value.0.ph, %sw.epilog.sink.split ], !dbg !1142
  call void @llvm.dbg.value(metadata ptr %value.0, metadata !1141, metadata !DIExpression()), !dbg !1142
  %cmp65.not = icmp eq ptr %value.0, null, !dbg !1329
  br i1 %cmp65.not, label %if.end68, label %if.then66, !dbg !1331

if.then66.sink.split:                             ; preds = %if.end.i147, %if.then61, %if.end.i126, %if.then30, %if.end.i119, %if.then23, %if.end.i112, %if.then16, %if.end.i105, %if.then9, %if.end.i, %if.then2
  %retval.0.i.sink = phi i64 [ %conv.i, %if.end.i ], [ -1, %if.then2 ], [ %conv.i104, %if.end.i105 ], [ -1, %if.then9 ], [ %conv.i111, %if.end.i112 ], [ -1, %if.then16 ], [ %conv.i118, %if.end.i119 ], [ -1, %if.then23 ], [ %conv.i125, %if.end.i126 ], [ -1, %if.then30 ], [ %conv.i146, %if.end.i147 ], [ -1, %if.then61 ]
  %resource_info.8.sink = phi ptr [ @resource_info.8, %if.end.i ], [ @resource_info.8, %if.then2 ], [ @resource_info.9, %if.end.i105 ], [ @resource_info.9, %if.then9 ], [ @resource_info.10, %if.end.i112 ], [ @resource_info.10, %if.then16 ], [ @resource_info.11, %if.end.i119 ], [ @resource_info.11, %if.then23 ], [ @resource_info.12, %if.end.i126 ], [ @resource_info.12, %if.then30 ], [ @resource_info.15, %if.end.i147 ], [ @resource_info.15, %if.then61 ]
  %value.0157.ph = phi ptr [ %call, %if.end.i ], [ %call, %if.then2 ], [ %call7, %if.end.i105 ], [ %call7, %if.then9 ], [ %call14, %if.end.i112 ], [ %call14, %if.then16 ], [ %call21, %if.end.i119 ], [ %call21, %if.then23 ], [ %call28, %if.end.i126 ], [ %call28, %if.then30 ], [ %call59, %if.end.i147 ], [ %call59, %if.then61 ]
  %6 = call i64 @llvm.umin.i64(i64 %limit, i64 %retval.0.i.sink) #9, !dbg !1328
  store i64 %6, ptr %resource_info.8.sink, align 8, !dbg !1328, !tbaa !486
  br label %if.then66, !dbg !1332

if.then66:                                        ; preds = %if.then66.sink.split, %sw.epilog
  %value.0157 = phi ptr [ %value.0, %sw.epilog ], [ %value.0157.ph, %if.then66.sink.split ]
  %call67 = call ptr @DestroyString(ptr noundef nonnull %value.0157) #9, !dbg !1332
  call void @llvm.dbg.value(metadata ptr %call67, metadata !1141, metadata !DIExpression()), !dbg !1142
  br label %if.end68, !dbg !1333

if.end68:                                         ; preds = %sw.bb, %sw.bb6, %sw.bb13, %sw.bb20, %sw.bb27, %sw.bb58, %if.end, %if.then66, %sw.epilog
  %7 = load ptr, ptr @resource_semaphore, align 8, !dbg !1334, !tbaa !396
  call void @UnlockSemaphoreInfo(ptr noundef %7) #9, !dbg !1335
  ret i32 1, !dbg !1336
}

; Function Attrs: nounwind uwtable
define dso_local void @ResourceComponentTerminus() local_unnamed_addr #0 !dbg !1337 {
entry:
  %0 = load ptr, ptr @resource_semaphore, align 8, !dbg !1338, !tbaa !396
  %cmp = icmp eq ptr %0, null, !dbg !1340
  br i1 %cmp, label %if.then, label %if.end, !dbg !1341

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !1342
  %.pre = load ptr, ptr @resource_semaphore, align 8, !dbg !1343, !tbaa !396
  br label %if.end, !dbg !1342

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1343
  tail call void @LockSemaphoreInfo(ptr noundef %1) #9, !dbg !1344
  %2 = load ptr, ptr @temporary_resources, align 8, !dbg !1345, !tbaa !396
  %cmp1.not = icmp eq ptr %2, null, !dbg !1347
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1348

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #9, !dbg !1349
  store ptr %call, ptr @temporary_resources, align 8, !dbg !1350, !tbaa !396
  br label %if.end3, !dbg !1351

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @random_info, align 8, !dbg !1352, !tbaa !396
  %cmp4.not = icmp eq ptr %3, null, !dbg !1354
  br i1 %cmp4.not, label %if.end7, label %if.then5, !dbg !1355

if.then5:                                         ; preds = %if.end3
  %call6 = tail call ptr @DestroyRandomInfo(ptr noundef nonnull %3) #9, !dbg !1356
  store ptr %call6, ptr @random_info, align 8, !dbg !1357, !tbaa !396
  br label %if.end7, !dbg !1358

if.end7:                                          ; preds = %if.then5, %if.end3
  %4 = load ptr, ptr @resource_semaphore, align 8, !dbg !1359, !tbaa !396
  tail call void @UnlockSemaphoreInfo(ptr noundef %4) #9, !dbg !1360
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @resource_semaphore) #9, !dbg !1361
  ret void, !dbg !1362
}

declare !dbg !1363 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !1366 ptr @DestroyRandomInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1369 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !1370 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

declare !dbg !1374 double @InterpretSiPrefixValue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }
attributes #11 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!366, !367, !368, !369, !370, !371}
!llvm.ident = !{!372}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "resource_semaphore", scope: !2, file: !299, line: 132, type: !205, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !204, globals: !295, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resource.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "2a5ec17e2d02be1a700a555061de74ad")
!4 = !{!5, !11, !23, !48, !124, !197}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 211, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "MagickFalse", value: 0)
!10 = !DIEnumerator(name: "MagickTrue", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 25, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22}
!14 = !DIEnumerator(name: "UndefinedResource", value: 0)
!15 = !DIEnumerator(name: "AreaResource", value: 1)
!16 = !DIEnumerator(name: "DiskResource", value: 2)
!17 = !DIEnumerator(name: "FileResource", value: 3)
!18 = !DIEnumerator(name: "MapResource", value: 4)
!19 = !DIEnumerator(name: "MemoryResource", value: 5)
!20 = !DIEnumerator(name: "ThreadResource", value: 6)
!21 = !DIEnumerator(name: "TimeResource", value: 7)
!22 = !DIEnumerator(name: "ThrottleResource", value: 8)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 34, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!26 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!27 = !DIEnumerator(name: "NoEvents", value: 0)
!28 = !DIEnumerator(name: "TraceEvent", value: 1)
!29 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!30 = !DIEnumerator(name: "BlobEvent", value: 4)
!31 = !DIEnumerator(name: "CacheEvent", value: 8)
!32 = !DIEnumerator(name: "CoderEvent", value: 16)
!33 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!34 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!35 = !DIEnumerator(name: "DrawEvent", value: 128)
!36 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!37 = !DIEnumerator(name: "ImageEvent", value: 512)
!38 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!39 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!40 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!41 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!42 = !DIEnumerator(name: "TransformEvent", value: 16384)
!43 = !DIEnumerator(name: "UserEvent", value: 36864)
!44 = !DIEnumerator(name: "WandEvent", value: 65536)
!45 = !DIEnumerator(name: "X11Event", value: 131072)
!46 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!47 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 25, baseType: !50, size: 32, elements: !51)
!49 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!52 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!53 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!54 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!55 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!56 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!57 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!58 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!59 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!60 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!61 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!62 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!63 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!64 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!65 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!66 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!67 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!68 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!69 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!70 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!71 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!72 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!73 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!74 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!75 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!76 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!77 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!78 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!79 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!80 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!81 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!82 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!83 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!84 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!85 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!86 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!87 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!88 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!89 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!90 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!91 = !DIEnumerator(name: "MagickListOptions", value: 38)
!92 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!93 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!94 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!95 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!96 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!97 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!98 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!99 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!100 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!101 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!102 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!103 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!104 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!105 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!106 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!107 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!108 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!109 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!110 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!111 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!112 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!113 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!114 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!115 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!116 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!117 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!118 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!119 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!120 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!121 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!122 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!123 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !125, line: 28, baseType: !7, size: 32, elements: !126)
!125 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!127 = !DIEnumerator(name: "UndefinedException", value: 0)
!128 = !DIEnumerator(name: "WarningException", value: 300)
!129 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!130 = !DIEnumerator(name: "TypeWarning", value: 305)
!131 = !DIEnumerator(name: "OptionWarning", value: 310)
!132 = !DIEnumerator(name: "DelegateWarning", value: 315)
!133 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!134 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!135 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!136 = !DIEnumerator(name: "BlobWarning", value: 335)
!137 = !DIEnumerator(name: "StreamWarning", value: 340)
!138 = !DIEnumerator(name: "CacheWarning", value: 345)
!139 = !DIEnumerator(name: "CoderWarning", value: 350)
!140 = !DIEnumerator(name: "FilterWarning", value: 352)
!141 = !DIEnumerator(name: "ModuleWarning", value: 355)
!142 = !DIEnumerator(name: "DrawWarning", value: 360)
!143 = !DIEnumerator(name: "ImageWarning", value: 365)
!144 = !DIEnumerator(name: "WandWarning", value: 370)
!145 = !DIEnumerator(name: "RandomWarning", value: 375)
!146 = !DIEnumerator(name: "XServerWarning", value: 380)
!147 = !DIEnumerator(name: "MonitorWarning", value: 385)
!148 = !DIEnumerator(name: "RegistryWarning", value: 390)
!149 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!150 = !DIEnumerator(name: "PolicyWarning", value: 399)
!151 = !DIEnumerator(name: "ErrorException", value: 400)
!152 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!153 = !DIEnumerator(name: "TypeError", value: 405)
!154 = !DIEnumerator(name: "OptionError", value: 410)
!155 = !DIEnumerator(name: "DelegateError", value: 415)
!156 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!157 = !DIEnumerator(name: "CorruptImageError", value: 425)
!158 = !DIEnumerator(name: "FileOpenError", value: 430)
!159 = !DIEnumerator(name: "BlobError", value: 435)
!160 = !DIEnumerator(name: "StreamError", value: 440)
!161 = !DIEnumerator(name: "CacheError", value: 445)
!162 = !DIEnumerator(name: "CoderError", value: 450)
!163 = !DIEnumerator(name: "FilterError", value: 452)
!164 = !DIEnumerator(name: "ModuleError", value: 455)
!165 = !DIEnumerator(name: "DrawError", value: 460)
!166 = !DIEnumerator(name: "ImageError", value: 465)
!167 = !DIEnumerator(name: "WandError", value: 470)
!168 = !DIEnumerator(name: "RandomError", value: 475)
!169 = !DIEnumerator(name: "XServerError", value: 480)
!170 = !DIEnumerator(name: "MonitorError", value: 485)
!171 = !DIEnumerator(name: "RegistryError", value: 490)
!172 = !DIEnumerator(name: "ConfigureError", value: 495)
!173 = !DIEnumerator(name: "PolicyError", value: 499)
!174 = !DIEnumerator(name: "FatalErrorException", value: 700)
!175 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!176 = !DIEnumerator(name: "TypeFatalError", value: 705)
!177 = !DIEnumerator(name: "OptionFatalError", value: 710)
!178 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!179 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!180 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!181 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!182 = !DIEnumerator(name: "BlobFatalError", value: 735)
!183 = !DIEnumerator(name: "StreamFatalError", value: 740)
!184 = !DIEnumerator(name: "CacheFatalError", value: 745)
!185 = !DIEnumerator(name: "CoderFatalError", value: 750)
!186 = !DIEnumerator(name: "FilterFatalError", value: 752)
!187 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!188 = !DIEnumerator(name: "DrawFatalError", value: 760)
!189 = !DIEnumerator(name: "ImageFatalError", value: 765)
!190 = !DIEnumerator(name: "WandFatalError", value: 770)
!191 = !DIEnumerator(name: "RandomFatalError", value: 775)
!192 = !DIEnumerator(name: "XServerFatalError", value: 780)
!193 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!194 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!195 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!196 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 25, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fee9ec3439d50d35877b8d14c6edadfb")
!199 = !{!200, !201, !202, !203}
!200 = !DIEnumerator(name: "UndefinedRegistryType", value: 0)
!201 = !DIEnumerator(name: "ImageRegistryType", value: 1)
!202 = !DIEnumerator(name: "ImageInfoRegistryType", value: 2)
!203 = !DIEnumerator(name: "StringRegistryType", value: 3)
!204 = !{!205, !209, !210, !212, !214, !215, !220, !224, !227, !228, !229, !50, !233, !236, !238}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !207, line: 26, baseType: !208)
!207 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!208 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !207, line: 25, flags: DIFlagFwdDecl)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !6, line: 150, baseType: !211)
!211 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !6, line: 151, baseType: !213)
!213 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!214 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !216, line: 77, baseType: !217)
!216 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !218, line: 193, baseType: !219)
!218 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!219 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !222, line: 26, baseType: !223)
!222 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !222, line: 25, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!227 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "RandomInfo", file: !231, line: 31, baseType: !232)
!231 = !DIFile(filename: "apps/538.imagick_r/src/magick/random_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "95f31caf92e8a7cab5b1bf8cc3698f31")
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RandomInfo", file: !231, line: 30, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!209, !209}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !241, line: 7, baseType: !242)
!241 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !243, line: 49, size: 1728, elements: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!244 = !{!245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !260, !262, !263, !264, !266, !268, !270, !274, !277, !279, !282, !285, !286, !287, !290, !291}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !242, file: !243, line: 51, baseType: !50, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !242, file: !243, line: 54, baseType: !228, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !242, file: !243, line: 55, baseType: !228, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !242, file: !243, line: 56, baseType: !228, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !242, file: !243, line: 57, baseType: !228, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !242, file: !243, line: 58, baseType: !228, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !242, file: !243, line: 59, baseType: !228, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !242, file: !243, line: 60, baseType: !228, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !242, file: !243, line: 61, baseType: !228, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !242, file: !243, line: 64, baseType: !228, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !242, file: !243, line: 65, baseType: !228, size: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !242, file: !243, line: 66, baseType: !228, size: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !242, file: !243, line: 68, baseType: !258, size: 64, offset: 768)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !243, line: 36, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !242, file: !243, line: 70, baseType: !261, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !242, file: !243, line: 72, baseType: !50, size: 32, offset: 896)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !242, file: !243, line: 73, baseType: !50, size: 32, offset: 928)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !242, file: !243, line: 74, baseType: !265, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !218, line: 152, baseType: !219)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !242, file: !243, line: 77, baseType: !267, size: 16, offset: 1024)
!267 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !242, file: !243, line: 78, baseType: !269, size: 8, offset: 1040)
!269 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !242, file: !243, line: 79, baseType: !271, size: 8, offset: 1048)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 8, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 1)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !242, file: !243, line: 81, baseType: !275, size: 64, offset: 1088)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !243, line: 43, baseType: null)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !242, file: !243, line: 89, baseType: !278, size: 64, offset: 1152)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !218, line: 153, baseType: !219)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !242, file: !243, line: 91, baseType: !280, size: 64, offset: 1216)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !243, line: 37, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !242, file: !243, line: 92, baseType: !283, size: 64, offset: 1280)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !243, line: 38, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !242, file: !243, line: 93, baseType: !261, size: 64, offset: 1344)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !242, file: !243, line: 94, baseType: !209, size: 64, offset: 1408)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !242, file: !243, line: 95, baseType: !288, size: 64, offset: 1472)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 46, baseType: !214)
!289 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !242, file: !243, line: 96, baseType: !50, size: 32, offset: 1536)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !242, file: !243, line: 98, baseType: !292, size: 160, offset: 1568)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 160, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 20)
!295 = !{!296, !0, !327, !348, !350}
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "portable_filename", scope: !298, file: !299, line: 469, type: !324, isLocal: true, isDefinition: true)
!298 = distinct !DISubprogram(name: "AcquireUniqueFileResource", scope: !299, file: !299, line: 449, type: !300, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!299 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2a5ec17e2d02be1a700a555061de74ad")
!300 = !DISubroutineType(types: !301)
!301 = !{!50, !228}
!302 = !{!303, !304, !305, !306, !307, !308, !323}
!303 = !DILocalVariable(name: "path", arg: 1, scope: !298, file: !299, line: 449, type: !228)
!304 = !DILocalVariable(name: "c", scope: !298, file: !299, line: 459, type: !50)
!305 = !DILocalVariable(name: "file", scope: !298, file: !299, line: 460, type: !50)
!306 = !DILocalVariable(name: "p", scope: !298, file: !299, line: 463, type: !228)
!307 = !DILocalVariable(name: "i", scope: !298, file: !299, line: 466, type: !215)
!308 = !DILocalVariable(name: "key", scope: !298, file: !299, line: 473, type: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !311, line: 40, baseType: !312)
!311 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !311, line: 29, size: 32960, elements: !313)
!313 = !{!314, !318, !321, !322}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !312, file: !311, line: 32, baseType: !315, size: 32768)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32768, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 4096)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !312, file: !311, line: 35, baseType: !319, size: 64, offset: 32768)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !312, file: !311, line: 38, baseType: !288, size: 64, offset: 32832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !312, file: !311, line: 39, baseType: !288, size: 64, offset: 32896)
!323 = !DILocalVariable(name: "datum", scope: !298, file: !299, line: 476, type: !319)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 520, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 65)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "resource_info", scope: !2, file: !299, line: 100, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceInfo", file: !299, line: 91, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ResourceInfo", file: !299, line: 70, size: 1024, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !330, file: !299, line: 73, baseType: !210, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "memory", scope: !330, file: !299, line: 74, baseType: !210, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !330, file: !299, line: 75, baseType: !210, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !330, file: !299, line: 76, baseType: !210, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !330, file: !299, line: 77, baseType: !210, size: 64, offset: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !330, file: !299, line: 78, baseType: !210, size: 64, offset: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !330, file: !299, line: 79, baseType: !210, size: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !330, file: !299, line: 80, baseType: !210, size: 64, offset: 448)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "area_limit", scope: !330, file: !299, line: 83, baseType: !212, size: 64, offset: 512)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "memory_limit", scope: !330, file: !299, line: 84, baseType: !212, size: 64, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "map_limit", scope: !330, file: !299, line: 85, baseType: !212, size: 64, offset: 640)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "disk_limit", scope: !330, file: !299, line: 86, baseType: !212, size: 64, offset: 704)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "file_limit", scope: !330, file: !299, line: 87, baseType: !212, size: 64, offset: 768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread_limit", scope: !330, file: !299, line: 88, baseType: !212, size: 64, offset: 832)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_limit", scope: !330, file: !299, line: 89, baseType: !212, size: 64, offset: 896)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "time_limit", scope: !330, file: !299, line: 90, baseType: !212, size: 64, offset: 960)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "temporary_resources", scope: !2, file: !299, line: 135, type: !220, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "random_info", scope: !2, file: !299, line: 97, type: !229, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 0, 64))
!353 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 64, 64))
!354 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 128, 64))
!355 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 192, 64))
!356 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 256, 64))
!357 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 448, 64))
!358 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 512, 64))
!359 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 576, 64))
!360 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 640, 64))
!361 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 704, 64))
!362 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 768, 64))
!363 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 832, 64))
!364 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 896, 64))
!365 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression(DW_OP_LLVM_fragment, 960, 64))
!366 = !{i32 7, !"Dwarf Version", i32 5}
!367 = !{i32 2, !"Debug Info Version", i32 3}
!368 = !{i32 1, !"wchar_size", i32 4}
!369 = !{i32 7, !"PIC Level", i32 2}
!370 = !{i32 7, !"PIE Level", i32 2}
!371 = !{i32 7, !"uwtable", i32 2}
!372 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!373 = distinct !DISubprogram(name: "AcquireMagickResource", scope: !299, file: !299, line: 164, type: !374, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !377, !379}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !12, line: 36, baseType: !11)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!380 = !{!381, !382, !383, !384, !385, !386, !387}
!381 = !DILocalVariable(name: "type", arg: 1, scope: !373, file: !299, line: 164, type: !377)
!382 = !DILocalVariable(name: "size", arg: 2, scope: !373, file: !299, line: 165, type: !379)
!383 = !DILocalVariable(name: "resource_current", scope: !373, file: !299, line: 168, type: !315)
!384 = !DILocalVariable(name: "resource_limit", scope: !373, file: !299, line: 169, type: !315)
!385 = !DILocalVariable(name: "resource_request", scope: !373, file: !299, line: 170, type: !315)
!386 = !DILocalVariable(name: "status", scope: !373, file: !299, line: 173, type: !376)
!387 = !DILocalVariable(name: "limit", scope: !373, file: !299, line: 176, type: !212)
!388 = !DILocation(line: 0, scope: !373)
!389 = !DILocation(line: 167, column: 3, scope: !373)
!390 = !DILocation(line: 168, column: 5, scope: !373)
!391 = !DILocation(line: 169, column: 5, scope: !373)
!392 = !DILocation(line: 170, column: 5, scope: !373)
!393 = !DILocation(line: 179, column: 10, scope: !373)
!394 = !DILocation(line: 180, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !373, file: !299, line: 180, column: 7)
!396 = !{!397, !397, i64 0}
!397 = !{!"any pointer", !398, i64 0}
!398 = !{!"omnipotent char", !399, i64 0}
!399 = !{!"Simple C/C++ TBAA"}
!400 = !DILocation(line: 180, column: 26, scope: !395)
!401 = !DILocation(line: 180, column: 7, scope: !373)
!402 = !DILocation(line: 181, column: 5, scope: !395)
!403 = !DILocation(line: 182, column: 21, scope: !373)
!404 = !DILocation(line: 182, column: 3, scope: !373)
!405 = !DILocation(line: 183, column: 3, scope: !373)
!406 = !DILocation(line: 187, column: 25, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !299, line: 186, column: 5)
!408 = distinct !DILexicalBlock(scope: !373, file: !299, line: 184, column: 3)
!409 = !{!410, !411, i64 0}
!410 = !{!"_ResourceInfo", !411, i64 0, !411, i64 8, !411, i64 16, !411, i64 24, !411, i64 32, !411, i64 40, !411, i64 48, !411, i64 56, !411, i64 64, !411, i64 72, !411, i64 80, !411, i64 88, !411, i64 96, !411, i64 104, !411, i64 112, !411, i64 120}
!411 = !{!"long long", !398, i64 0}
!412 = !DILocation(line: 188, column: 27, scope: !407)
!413 = !{!410, !411, i64 64}
!414 = !DILocation(line: 189, column: 40, scope: !407)
!415 = !DILocation(line: 189, column: 67, scope: !407)
!416 = !DILocation(line: 190, column: 15, scope: !407)
!417 = !DILocation(line: 191, column: 14, scope: !407)
!418 = !DILocation(line: 195, column: 7, scope: !407)
!419 = !DILocation(line: 199, column: 27, scope: !420)
!420 = distinct !DILexicalBlock(scope: !408, file: !299, line: 198, column: 5)
!421 = !{!410, !411, i64 8}
!422 = !DILocation(line: 200, column: 27, scope: !420)
!423 = !{!410, !411, i64 72}
!424 = !DILocation(line: 201, column: 42, scope: !420)
!425 = !DILocation(line: 201, column: 69, scope: !420)
!426 = !DILocation(line: 202, column: 48, scope: !420)
!427 = !DILocation(line: 204, column: 14, scope: !420)
!428 = !DILocation(line: 208, column: 7, scope: !420)
!429 = !DILocation(line: 212, column: 24, scope: !430)
!430 = distinct !DILexicalBlock(scope: !408, file: !299, line: 211, column: 5)
!431 = !{!410, !411, i64 16}
!432 = !DILocation(line: 213, column: 27, scope: !430)
!433 = !{!410, !411, i64 80}
!434 = !DILocation(line: 214, column: 39, scope: !430)
!435 = !DILocation(line: 214, column: 66, scope: !430)
!436 = !DILocation(line: 215, column: 45, scope: !430)
!437 = !DILocation(line: 217, column: 14, scope: !430)
!438 = !DILocation(line: 221, column: 7, scope: !430)
!439 = !DILocation(line: 225, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !408, file: !299, line: 224, column: 5)
!441 = !{!410, !411, i64 24}
!442 = !DILocation(line: 226, column: 27, scope: !440)
!443 = !{!410, !411, i64 88}
!444 = !DILocation(line: 227, column: 40, scope: !440)
!445 = !DILocation(line: 227, column: 67, scope: !440)
!446 = !DILocation(line: 228, column: 46, scope: !440)
!447 = !DILocation(line: 230, column: 14, scope: !440)
!448 = !DILocation(line: 234, column: 7, scope: !440)
!449 = !DILocation(line: 238, column: 25, scope: !450)
!450 = distinct !DILexicalBlock(scope: !408, file: !299, line: 237, column: 5)
!451 = !{!410, !411, i64 32}
!452 = !DILocation(line: 239, column: 27, scope: !450)
!453 = !{!410, !411, i64 96}
!454 = !DILocation(line: 240, column: 40, scope: !450)
!455 = !DILocation(line: 240, column: 67, scope: !450)
!456 = !DILocation(line: 241, column: 46, scope: !450)
!457 = !DILocation(line: 243, column: 14, scope: !450)
!458 = !DILocation(line: 247, column: 7, scope: !450)
!459 = !DILocation(line: 251, column: 27, scope: !460)
!460 = distinct !DILexicalBlock(scope: !408, file: !299, line: 250, column: 5)
!461 = !{!410, !411, i64 104}
!462 = !DILocation(line: 252, column: 42, scope: !460)
!463 = !DILocation(line: 252, column: 69, scope: !460)
!464 = !DILocation(line: 253, column: 48, scope: !460)
!465 = !DILocation(line: 255, column: 14, scope: !460)
!466 = !DILocation(line: 259, column: 7, scope: !460)
!467 = !DILocation(line: 263, column: 27, scope: !468)
!468 = distinct !DILexicalBlock(scope: !408, file: !299, line: 262, column: 5)
!469 = !{!410, !411, i64 112}
!470 = !DILocation(line: 264, column: 44, scope: !468)
!471 = !DILocation(line: 264, column: 71, scope: !468)
!472 = !DILocation(line: 265, column: 50, scope: !468)
!473 = !DILocation(line: 267, column: 14, scope: !468)
!474 = !DILocation(line: 271, column: 7, scope: !468)
!475 = !DILocation(line: 275, column: 25, scope: !476)
!476 = distinct !DILexicalBlock(scope: !408, file: !299, line: 274, column: 5)
!477 = !{!410, !411, i64 56}
!478 = !DILocation(line: 276, column: 27, scope: !476)
!479 = !{!410, !411, i64 120}
!480 = !DILocation(line: 277, column: 40, scope: !476)
!481 = !DILocation(line: 277, column: 67, scope: !476)
!482 = !DILocation(line: 278, column: 46, scope: !476)
!483 = !DILocation(line: 280, column: 14, scope: !476)
!484 = !DILocation(line: 284, column: 7, scope: !476)
!485 = !DILocation(line: 0, scope: !408)
!486 = !{!411, !411, i64 0}
!487 = !DILocation(line: 289, column: 23, scope: !373)
!488 = !DILocation(line: 289, column: 3, scope: !373)
!489 = !DILocation(line: 291, column: 51, scope: !373)
!490 = !DILocation(line: 291, column: 5, scope: !373)
!491 = !DILocation(line: 290, column: 10, scope: !373)
!492 = !DILocation(line: 294, column: 1, scope: !373)
!493 = !DILocation(line: 293, column: 3, scope: !373)
!494 = !DISubprogram(name: "FormatMagickSize", scope: !311, file: !311, line: 83, type: !495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!495 = !DISubroutineType(types: !496)
!496 = !{!215, !379, !497, !228}
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!498 = !{}
!499 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !207, file: !207, line: 35, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!503 = !DISubprogram(name: "LockSemaphoreInfo", scope: !207, file: !207, line: 37, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !205}
!506 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !207, file: !207, line: 39, type: !504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!507 = !DISubprogram(name: "LogMagickEvent", scope: !24, file: !24, line: 83, type: !508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!508 = !DISubroutineType(types: !509)
!509 = !{!376, !510, !224, !224, !512, !224, null}
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !24, line: 58, baseType: !23)
!512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!513 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !49, file: !49, line: 157, type: !514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!514 = !DISubroutineType(types: !515)
!515 = !{!224, !516, !518}
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !49, line: 99, baseType: !48)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!519 = distinct !DISubprogram(name: "AsynchronousResourceComponentTerminus", scope: !299, file: !299, line: 316, type: !520, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{null}
!522 = !{!523}
!523 = !DILocalVariable(name: "path", scope: !519, file: !299, line: 319, type: !224)
!524 = !DILocation(line: 321, column: 7, scope: !525)
!525 = distinct !DILexicalBlock(scope: !519, file: !299, line: 321, column: 7)
!526 = !DILocation(line: 321, column: 27, scope: !525)
!527 = !DILocation(line: 321, column: 7, scope: !519)
!528 = !DILocation(line: 326, column: 3, scope: !519)
!529 = !DILocation(line: 327, column: 45, scope: !519)
!530 = !DILocation(line: 327, column: 23, scope: !519)
!531 = !DILocation(line: 0, scope: !519)
!532 = !DILocation(line: 328, column: 15, scope: !519)
!533 = !DILocation(line: 328, column: 3, scope: !519)
!534 = !DILocation(line: 330, column: 12, scope: !535)
!535 = distinct !DILexicalBlock(scope: !519, file: !299, line: 329, column: 3)
!536 = !DILocation(line: 331, column: 47, scope: !535)
!537 = !DILocation(line: 331, column: 25, scope: !535)
!538 = distinct !{!538, !533, !539, !540, !541}
!539 = !DILocation(line: 332, column: 3, scope: !519)
!540 = !{!"llvm.loop.mustprogress"}
!541 = !{!"llvm.loop.unroll.disable"}
!542 = !DILocation(line: 333, column: 1, scope: !519)
!543 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !222, file: !222, line: 55, type: !544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !220}
!546 = !DISubprogram(name: "GetNextKeyInSplayTree", scope: !222, file: !222, line: 34, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!547 = !DISubroutineType(types: !548)
!548 = !{!236, !220}
!549 = !DISubprogram(name: "ShredFile", scope: !550, file: !550, line: 30, type: !551, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!550 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f0938b0b9be15949da14cdcfd7e813d9")
!551 = !DISubroutineType(types: !552)
!552 = !{!376, !224}
!553 = distinct !DISubprogram(name: "GetPathTemplate", scope: !299, file: !299, line: 367, type: !554, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!376, !228}
!556 = !{!557, !558, !559, !560, !574, !575}
!557 = !DILocalVariable(name: "path", arg: 1, scope: !553, file: !299, line: 367, type: !228)
!558 = !DILocalVariable(name: "directory", scope: !553, file: !299, line: 370, type: !228)
!559 = !DILocalVariable(name: "value", scope: !553, file: !299, line: 371, type: !228)
!560 = !DILocalVariable(name: "exception", scope: !553, file: !299, line: 374, type: !561)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !125, line: 102, size: 448, elements: !564)
!564 = !{!565, !567, !568, !569, !570, !571, !572, !573}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !563, file: !125, line: 105, baseType: !566, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !125, line: 100, baseType: !124)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !563, file: !125, line: 108, baseType: !50, size: 32, offset: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !563, file: !125, line: 111, baseType: !228, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !563, file: !125, line: 112, baseType: !228, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !563, file: !125, line: 115, baseType: !209, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !563, file: !125, line: 118, baseType: !376, size: 32, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !563, file: !125, line: 121, baseType: !205, size: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !563, file: !125, line: 124, baseType: !288, size: 64, offset: 384)
!574 = !DILocalVariable(name: "status", scope: !553, file: !299, line: 377, type: !376)
!575 = !DILocalVariable(name: "attributes", scope: !553, file: !299, line: 380, type: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !577, line: 46, size: 1152, elements: !578)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!578 = !{!579, !581, !583, !585, !587, !589, !591, !592, !593, !594, !596, !598, !606, !607, !608}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !576, file: !577, line: 48, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !218, line: 145, baseType: !214)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !576, file: !577, line: 53, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !218, line: 148, baseType: !214)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !576, file: !577, line: 61, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !218, line: 151, baseType: !214)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !576, file: !577, line: 62, baseType: !586, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !218, line: 150, baseType: !7)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !576, file: !577, line: 64, baseType: !588, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !218, line: 146, baseType: !7)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !576, file: !577, line: 65, baseType: !590, size: 32, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !218, line: 147, baseType: !7)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !576, file: !577, line: 67, baseType: !50, size: 32, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !576, file: !577, line: 69, baseType: !580, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !576, file: !577, line: 74, baseType: !265, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !576, file: !577, line: 78, baseType: !595, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !218, line: 174, baseType: !219)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !576, file: !577, line: 80, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !218, line: 179, baseType: !219)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !576, file: !577, line: 91, baseType: !599, size: 128, offset: 576)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !600, line: 10, size: 128, elements: !601)
!600 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!601 = !{!602, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !599, file: !600, line: 12, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !218, line: 160, baseType: !219)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !599, file: !600, line: 16, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !218, line: 196, baseType: !219)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !576, file: !577, line: 92, baseType: !599, size: 128, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !576, file: !577, line: 93, baseType: !599, size: 128, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !576, file: !577, line: 106, baseType: !609, size: 192, offset: 960)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 3)
!612 = !DILocation(line: 0, scope: !553)
!613 = !DILocation(line: 369, column: 3, scope: !553)
!614 = !DILocation(line: 379, column: 3, scope: !553)
!615 = !DILocation(line: 380, column: 5, scope: !553)
!616 = !DILocation(line: 383, column: 14, scope: !553)
!617 = !DILocation(line: 383, column: 5, scope: !553)
!618 = !DILocation(line: 382, column: 10, scope: !553)
!619 = !DILocation(line: 384, column: 13, scope: !553)
!620 = !DILocation(line: 385, column: 22, scope: !553)
!621 = !DILocation(line: 385, column: 12, scope: !553)
!622 = !DILocation(line: 387, column: 13, scope: !553)
!623 = !DILocation(line: 388, column: 17, scope: !624)
!624 = distinct !DILexicalBlock(scope: !553, file: !299, line: 388, column: 7)
!625 = !DILocation(line: 388, column: 7, scope: !553)
!626 = !DILocation(line: 389, column: 15, scope: !624)
!627 = !DILocation(line: 389, column: 14, scope: !624)
!628 = !DILocation(line: 390, column: 17, scope: !629)
!629 = distinct !DILexicalBlock(scope: !553, file: !299, line: 390, column: 7)
!630 = !DILocation(line: 390, column: 7, scope: !553)
!631 = !DILocation(line: 391, column: 15, scope: !629)
!632 = !DILocation(line: 391, column: 14, scope: !629)
!633 = !DILocation(line: 403, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !553, file: !299, line: 403, column: 7)
!635 = !DILocation(line: 403, column: 7, scope: !553)
!636 = !DILocation(line: 404, column: 15, scope: !634)
!637 = !DILocation(line: 404, column: 14, scope: !634)
!638 = !DILocation(line: 406, column: 17, scope: !639)
!639 = distinct !DILexicalBlock(scope: !553, file: !299, line: 406, column: 7)
!640 = !DILocation(line: 406, column: 7, scope: !553)
!641 = !DILocation(line: 407, column: 15, scope: !639)
!642 = !DILocation(line: 407, column: 14, scope: !639)
!643 = !DILocation(line: 408, column: 17, scope: !644)
!644 = distinct !DILexicalBlock(scope: !553, file: !299, line: 408, column: 7)
!645 = !DILocation(line: 408, column: 7, scope: !553)
!646 = !DILocation(line: 410, column: 9, scope: !553)
!647 = !DILocation(line: 411, column: 13, scope: !648)
!648 = distinct !DILexicalBlock(scope: !553, file: !299, line: 411, column: 7)
!649 = !DILocation(line: 411, column: 7, scope: !553)
!650 = !DILocation(line: 412, column: 12, scope: !648)
!651 = !DILocation(line: 413, column: 14, scope: !652)
!652 = distinct !DILexicalBlock(scope: !553, file: !299, line: 413, column: 7)
!653 = !DILocation(line: 412, column: 5, scope: !648)
!654 = !DILocation(line: 413, column: 7, scope: !652)
!655 = !DILocation(line: 413, column: 25, scope: !652)
!656 = !DILocation(line: 413, column: 7, scope: !553)
!657 = !DILocation(line: 418, column: 10, scope: !553)
!658 = !DILocation(line: 419, column: 15, scope: !659)
!659 = distinct !DILexicalBlock(scope: !553, file: !299, line: 419, column: 7)
!660 = !DILocation(line: 419, column: 31, scope: !659)
!661 = !DILocation(line: 419, column: 35, scope: !659)
!662 = !{!663, !665, i64 24}
!663 = !{!"stat", !664, i64 0, !664, i64 8, !664, i64 16, !665, i64 24, !665, i64 28, !665, i64 32, !665, i64 36, !664, i64 40, !664, i64 48, !664, i64 56, !664, i64 64, !666, i64 72, !666, i64 88, !666, i64 104, !398, i64 120}
!664 = !{!"long", !398, i64 0}
!665 = !{!"int", !398, i64 0}
!666 = !{!"timespec", !664, i64 0, !664, i64 8}
!667 = !DILocation(line: 419, column: 7, scope: !553)
!668 = !DILocation(line: 421, column: 31, scope: !669)
!669 = distinct !DILexicalBlock(scope: !659, file: !299, line: 420, column: 5)
!670 = !DILocation(line: 422, column: 7, scope: !669)
!671 = !DILocation(line: 424, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !553, file: !299, line: 424, column: 7)
!673 = !DILocation(line: 424, column: 17, scope: !672)
!674 = !DILocation(line: 424, column: 34, scope: !672)
!675 = !{!398, !398, i64 0}
!676 = !DILocation(line: 424, column: 38, scope: !672)
!677 = !DILocation(line: 0, scope: !672)
!678 = !DILocation(line: 424, column: 7, scope: !553)
!679 = !DILocation(line: 425, column: 12, scope: !672)
!680 = !DILocation(line: 425, column: 5, scope: !672)
!681 = !DILocation(line: 428, column: 12, scope: !672)
!682 = !DILocation(line: 431, column: 27, scope: !553)
!683 = !DILocation(line: 446, column: 3, scope: !553)
!684 = !DILocation(line: 447, column: 1, scope: !553)
!685 = !DISubprogram(name: "FormatLocaleString", scope: !686, file: !686, line: 71, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!686 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!687 = !DISubroutineType(types: !688)
!688 = !{!215, !689, !512, !690, null}
!689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !228)
!690 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !224)
!691 = !DISubprogram(name: "getpid", scope: !692, file: !692, line: 628, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!692 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!693 = !DISubroutineType(types: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !218, line: 154, baseType: !50)
!696 = !DISubprogram(name: "AcquireExceptionInfo", scope: !125, file: !125, line: 146, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!697 = !DISubroutineType(types: !698)
!698 = !{!561}
!699 = !DISubprogram(name: "GetImageRegistry", scope: !198, file: !198, line: 44, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!700 = !DISubroutineType(types: !701)
!701 = !{!209, !702, !224, !561}
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegistryType", file: !198, line: 31, baseType: !197)
!704 = !DISubprogram(name: "DestroyExceptionInfo", scope: !125, file: !125, line: 148, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!705 = !DISubroutineType(types: !706)
!706 = !{!561, !561}
!707 = !DISubprogram(name: "GetEnvironmentValue", scope: !311, file: !311, line: 50, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!708 = !DISubroutineType(types: !709)
!709 = !{!228, !224}
!710 = !DISubprogram(name: "ConstantString", scope: !311, file: !311, line: 45, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!711 = !DISubprogram(name: "GetPolicyValue", scope: !712, file: !712, line: 52, type: !708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!712 = !DIFile(filename: "apps/538.imagick_r/src/magick/policy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6242d97ee47d0d7f0e3878e07f1ce5b1")
!713 = !DISubprogram(name: "CloneString", scope: !311, file: !311, line: 44, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!714 = !DISubroutineType(types: !715)
!715 = !{!228, !716, !224}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!717 = !DISubprogram(name: "DestroyString", scope: !311, file: !311, line: 46, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!718 = !DISubroutineType(types: !719)
!719 = !{!228, !228}
!720 = !DISubprogram(name: "GetPathAttributes", scope: !721, file: !721, line: 51, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!721 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!722 = !DISubroutineType(types: !723)
!723 = !{!376, !224, !209}
!724 = !DILocation(line: 0, scope: !298)
!725 = !DILocation(line: 479, column: 10, scope: !298)
!726 = !DILocation(line: 480, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !298, file: !299, line: 480, column: 7)
!728 = !DILocation(line: 480, column: 19, scope: !727)
!729 = !DILocation(line: 480, column: 7, scope: !298)
!730 = !DILocation(line: 481, column: 17, scope: !727)
!731 = !DILocation(line: 481, column: 16, scope: !727)
!732 = !DILocation(line: 481, column: 5, scope: !727)
!733 = !DILocation(line: 483, column: 3, scope: !734)
!734 = distinct !DILexicalBlock(scope: !298, file: !299, line: 483, column: 3)
!735 = !DILocation(line: 488, column: 12, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !299, line: 484, column: 3)
!737 = distinct !DILexicalBlock(scope: !734, file: !299, line: 483, column: 3)
!738 = !DILocation(line: 489, column: 22, scope: !736)
!739 = !DILocation(line: 489, column: 9, scope: !736)
!740 = !DILocation(line: 490, column: 12, scope: !736)
!741 = !DILocation(line: 491, column: 11, scope: !736)
!742 = !DILocation(line: 492, column: 29, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !299, line: 492, column: 5)
!744 = distinct !DILexicalBlock(scope: !736, file: !299, line: 492, column: 5)
!745 = !DILocation(line: 492, column: 17, scope: !743)
!746 = !DILocation(line: 492, column: 5, scope: !744)
!747 = !DILocation(line: 490, column: 24, scope: !736)
!748 = !DILocation(line: 494, column: 16, scope: !749)
!749 = distinct !DILexicalBlock(scope: !743, file: !299, line: 493, column: 5)
!750 = !DILocation(line: 494, column: 25, scope: !749)
!751 = !DILocation(line: 495, column: 12, scope: !749)
!752 = !DILocation(line: 495, column: 9, scope: !749)
!753 = !DILocation(line: 495, column: 11, scope: !749)
!754 = !DILocation(line: 492, column: 56, scope: !743)
!755 = distinct !{!755, !746, !756, !540, !541}
!756 = !DILocation(line: 496, column: 5, scope: !744)
!757 = !DILocation(line: 497, column: 9, scope: !736)
!758 = !DILocation(line: 506, column: 22, scope: !736)
!759 = !DILocation(line: 506, column: 9, scope: !736)
!760 = !DILocation(line: 507, column: 12, scope: !736)
!761 = !DILocation(line: 508, column: 11, scope: !736)
!762 = !DILocation(line: 509, column: 29, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !299, line: 509, column: 5)
!764 = distinct !DILexicalBlock(scope: !736, file: !299, line: 509, column: 5)
!765 = !DILocation(line: 509, column: 17, scope: !763)
!766 = !DILocation(line: 509, column: 5, scope: !764)
!767 = !DILocation(line: 507, column: 24, scope: !736)
!768 = !DILocation(line: 511, column: 16, scope: !769)
!769 = distinct !DILexicalBlock(scope: !763, file: !299, line: 510, column: 5)
!770 = !DILocation(line: 511, column: 25, scope: !769)
!771 = !DILocation(line: 512, column: 12, scope: !769)
!772 = !DILocation(line: 512, column: 9, scope: !769)
!773 = !DILocation(line: 512, column: 11, scope: !769)
!774 = !DILocation(line: 509, column: 56, scope: !763)
!775 = distinct !{!775, !766, !776, !540, !541}
!776 = !DILocation(line: 513, column: 5, scope: !764)
!777 = !DILocation(line: 0, scope: !764)
!778 = !DILocation(line: 514, column: 9, scope: !736)
!779 = !DILocalVariable(name: "path", arg: 1, scope: !780, file: !550, line: 136, type: !224)
!780 = distinct !DISubprogram(name: "open_utf8", scope: !550, file: !550, line: 136, type: !781, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !785)
!781 = !DISubroutineType(types: !782)
!782 = !{!50, !224, !50, !783}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !784, line: 59, baseType: !586)
!784 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!785 = !{!779, !786, !787}
!786 = !DILocalVariable(name: "flags", arg: 2, scope: !780, file: !550, line: 136, type: !50)
!787 = !DILocalVariable(name: "mode", arg: 3, scope: !780, file: !550, line: 136, type: !783)
!788 = !DILocation(line: 0, scope: !780, inlinedAt: !789)
!789 = distinct !DILocation(line: 515, column: 10, scope: !736)
!790 = !DILocation(line: 139, column: 10, scope: !780, inlinedAt: !789)
!791 = !DILocation(line: 517, column: 15, scope: !792)
!792 = distinct !DILexicalBlock(scope: !736, file: !299, line: 517, column: 9)
!793 = !DILocation(line: 517, column: 21, scope: !792)
!794 = !DILocation(line: 520, column: 10, scope: !298)
!795 = !DILocation(line: 521, column: 7, scope: !298)
!796 = !DILocation(line: 517, column: 25, scope: !792)
!797 = !{!665, !665, i64 0}
!798 = !DILocation(line: 517, column: 31, scope: !792)
!799 = !DILocation(line: 517, column: 9, scope: !736)
!800 = distinct !{!800, !733, !801, !540, !541}
!801 = !DILocation(line: 519, column: 3, scope: !734)
!802 = !DILocation(line: 521, column: 12, scope: !803)
!803 = distinct !DILexicalBlock(scope: !298, file: !299, line: 521, column: 7)
!804 = !DILocation(line: 523, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !298, file: !299, line: 523, column: 7)
!806 = !DILocation(line: 523, column: 26, scope: !805)
!807 = !DILocation(line: 523, column: 7, scope: !298)
!808 = !DILocation(line: 524, column: 5, scope: !805)
!809 = !DILocation(line: 525, column: 21, scope: !298)
!810 = !DILocation(line: 525, column: 3, scope: !298)
!811 = !DILocation(line: 526, column: 7, scope: !812)
!812 = distinct !DILexicalBlock(scope: !298, file: !299, line: 526, column: 7)
!813 = !DILocation(line: 526, column: 27, scope: !812)
!814 = !DILocation(line: 526, column: 7, scope: !298)
!815 = !DILocation(line: 527, column: 25, scope: !812)
!816 = !DILocation(line: 527, column: 24, scope: !812)
!817 = !DILocation(line: 527, column: 5, scope: !812)
!818 = !DILocation(line: 529, column: 23, scope: !298)
!819 = !DILocation(line: 529, column: 3, scope: !298)
!820 = !DILocation(line: 530, column: 30, scope: !298)
!821 = !DILocation(line: 530, column: 50, scope: !298)
!822 = !DILocation(line: 530, column: 10, scope: !298)
!823 = !DILocation(line: 532, column: 3, scope: !298)
!824 = !DILocation(line: 533, column: 1, scope: !298)
!825 = !DISubprogram(name: "AcquireRandomInfo", scope: !231, file: !231, line: 44, type: !826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!826 = !DISubroutineType(types: !827)
!827 = !{!229}
!828 = !DISubprogram(name: "GetRandomKey", scope: !231, file: !231, line: 48, type: !829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!829 = !DISubroutineType(types: !830)
!830 = !{!309, !229, !512}
!831 = !DISubprogram(name: "GetStringInfoDatum", scope: !311, file: !311, line: 97, type: !832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!832 = !DISubroutineType(types: !833)
!833 = !{!319, !834}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!836 = !DISubprogram(name: "GetStringInfoLength", scope: !311, file: !311, line: 80, type: !837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!837 = !DISubroutineType(types: !838)
!838 = !{!288, !834}
!839 = !DISubprogram(name: "DestroyStringInfo", scope: !311, file: !311, line: 91, type: !840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!840 = !DISubroutineType(types: !841)
!841 = !{!309, !309}
!842 = !DISubprogram(name: "NewSplayTree", scope: !222, file: !222, line: 45, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!843 = !DISubroutineType(types: !844)
!844 = !{!220, !845, !233, !233}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!50, !236, !236}
!848 = distinct !DISubprogram(name: "DestroyTemporaryResources", scope: !299, file: !299, line: 360, type: !234, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !849)
!849 = !{!850}
!850 = !DILocalVariable(name: "temporary_resource", arg: 1, scope: !848, file: !299, line: 360, type: !209)
!851 = !DILocation(line: 0, scope: !848)
!852 = !DILocation(line: 362, column: 10, scope: !848)
!853 = !DILocation(line: 363, column: 22, scope: !848)
!854 = !DILocation(line: 364, column: 3, scope: !848)
!855 = !DISubprogram(name: "AddValueToSplayTree", scope: !222, file: !222, line: 29, type: !856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!856 = !DISubroutineType(types: !857)
!857 = !{!376, !220, !236, !236}
!858 = distinct !DISubprogram(name: "GetMagickResource", scope: !299, file: !299, line: 557, type: !859, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!212, !377}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "type", arg: 1, scope: !858, file: !299, line: 557, type: !377)
!863 = !DILocalVariable(name: "resource", scope: !858, file: !299, line: 560, type: !212)
!864 = !DILocation(line: 0, scope: !858)
!865 = !DILocation(line: 563, column: 21, scope: !858)
!866 = !DILocation(line: 563, column: 3, scope: !858)
!867 = !DILocation(line: 564, column: 3, scope: !858)
!868 = !DILocation(line: 568, column: 47, scope: !869)
!869 = distinct !DILexicalBlock(scope: !870, file: !299, line: 567, column: 5)
!870 = distinct !DILexicalBlock(scope: !858, file: !299, line: 565, column: 3)
!871 = !DILocation(line: 569, column: 7, scope: !869)
!872 = !DILocation(line: 573, column: 47, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !299, line: 572, column: 5)
!874 = !DILocation(line: 574, column: 7, scope: !873)
!875 = !DILocation(line: 578, column: 47, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !299, line: 577, column: 5)
!877 = !DILocation(line: 579, column: 7, scope: !876)
!878 = !DILocation(line: 583, column: 47, scope: !879)
!879 = distinct !DILexicalBlock(scope: !870, file: !299, line: 582, column: 5)
!880 = !DILocation(line: 584, column: 7, scope: !879)
!881 = !DILocation(line: 588, column: 47, scope: !882)
!882 = distinct !DILexicalBlock(scope: !870, file: !299, line: 587, column: 5)
!883 = !DILocation(line: 589, column: 7, scope: !882)
!884 = !DILocation(line: 603, column: 47, scope: !885)
!885 = distinct !DILexicalBlock(scope: !870, file: !299, line: 602, column: 5)
!886 = !DILocation(line: 604, column: 7, scope: !885)
!887 = !DILocation(line: 609, column: 23, scope: !858)
!888 = !DILocation(line: 609, column: 3, scope: !858)
!889 = !DILocation(line: 610, column: 3, scope: !858)
!890 = distinct !DISubprogram(name: "GetMagickResourceLimit", scope: !299, file: !299, line: 635, type: !859, scopeLine: 636, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892, !893}
!892 = !DILocalVariable(name: "type", arg: 1, scope: !890, file: !299, line: 635, type: !377)
!893 = !DILocalVariable(name: "resource", scope: !890, file: !299, line: 638, type: !212)
!894 = !DILocation(line: 0, scope: !890)
!895 = !DILocation(line: 641, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !890, file: !299, line: 641, column: 7)
!897 = !DILocation(line: 641, column: 26, scope: !896)
!898 = !DILocation(line: 641, column: 7, scope: !890)
!899 = !DILocation(line: 642, column: 5, scope: !896)
!900 = !DILocation(line: 643, column: 21, scope: !890)
!901 = !DILocation(line: 643, column: 3, scope: !890)
!902 = !DILocation(line: 644, column: 3, scope: !890)
!903 = !DILocation(line: 648, column: 30, scope: !904)
!904 = distinct !DILexicalBlock(scope: !905, file: !299, line: 647, column: 5)
!905 = distinct !DILexicalBlock(scope: !890, file: !299, line: 645, column: 3)
!906 = !DILocation(line: 649, column: 7, scope: !904)
!907 = !DILocation(line: 653, column: 30, scope: !908)
!908 = distinct !DILexicalBlock(scope: !905, file: !299, line: 652, column: 5)
!909 = !DILocation(line: 654, column: 7, scope: !908)
!910 = !DILocation(line: 658, column: 30, scope: !911)
!911 = distinct !DILexicalBlock(scope: !905, file: !299, line: 657, column: 5)
!912 = !DILocation(line: 659, column: 7, scope: !911)
!913 = !DILocation(line: 663, column: 30, scope: !914)
!914 = distinct !DILexicalBlock(scope: !905, file: !299, line: 662, column: 5)
!915 = !DILocation(line: 664, column: 7, scope: !914)
!916 = !DILocation(line: 668, column: 30, scope: !917)
!917 = distinct !DILexicalBlock(scope: !905, file: !299, line: 667, column: 5)
!918 = !DILocation(line: 669, column: 7, scope: !917)
!919 = !DILocation(line: 673, column: 30, scope: !920)
!920 = distinct !DILexicalBlock(scope: !905, file: !299, line: 672, column: 5)
!921 = !DILocation(line: 674, column: 7, scope: !920)
!922 = !DILocation(line: 678, column: 30, scope: !923)
!923 = distinct !DILexicalBlock(scope: !905, file: !299, line: 677, column: 5)
!924 = !DILocation(line: 679, column: 7, scope: !923)
!925 = !DILocation(line: 683, column: 30, scope: !926)
!926 = distinct !DILexicalBlock(scope: !905, file: !299, line: 682, column: 5)
!927 = !DILocation(line: 684, column: 7, scope: !926)
!928 = !DILocation(line: 689, column: 23, scope: !890)
!929 = !DILocation(line: 689, column: 3, scope: !890)
!930 = !DILocation(line: 690, column: 3, scope: !890)
!931 = distinct !DISubprogram(name: "ListMagickResourceInfo", scope: !299, file: !299, line: 718, type: !932, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!932 = !DISubroutineType(types: !933)
!933 = !{!376, !934, !561}
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DILocalVariable(name: "file", arg: 1, scope: !931, file: !299, line: 718, type: !934)
!937 = !DILocalVariable(name: "exception", arg: 2, scope: !931, file: !299, line: 719, type: !561)
!938 = !DILocalVariable(name: "area_limit", scope: !931, file: !299, line: 722, type: !315)
!939 = !DILocalVariable(name: "disk_limit", scope: !931, file: !299, line: 723, type: !315)
!940 = !DILocalVariable(name: "map_limit", scope: !931, file: !299, line: 724, type: !315)
!941 = !DILocalVariable(name: "memory_limit", scope: !931, file: !299, line: 725, type: !315)
!942 = !DILocalVariable(name: "time_limit", scope: !931, file: !299, line: 726, type: !315)
!943 = !DILocation(line: 0, scope: !931)
!944 = !DILocation(line: 721, column: 3, scope: !931)
!945 = !DILocation(line: 722, column: 5, scope: !931)
!946 = !DILocation(line: 723, column: 5, scope: !931)
!947 = !DILocation(line: 724, column: 5, scope: !931)
!948 = !DILocation(line: 725, column: 5, scope: !931)
!949 = !DILocation(line: 726, column: 5, scope: !931)
!950 = !DILocation(line: 732, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !931, file: !299, line: 732, column: 7)
!952 = !DILocation(line: 732, column: 26, scope: !951)
!953 = !DILocation(line: 732, column: 7, scope: !931)
!954 = !DILocation(line: 733, column: 5, scope: !951)
!955 = !DILocation(line: 734, column: 21, scope: !931)
!956 = !DILocation(line: 734, column: 3, scope: !931)
!957 = !DILocation(line: 735, column: 41, scope: !931)
!958 = !DILocation(line: 735, column: 10, scope: !931)
!959 = !DILocation(line: 736, column: 41, scope: !931)
!960 = !DILocation(line: 736, column: 10, scope: !931)
!961 = !DILocation(line: 737, column: 41, scope: !931)
!962 = !DILocation(line: 737, column: 10, scope: !931)
!963 = !DILocation(line: 738, column: 10, scope: !931)
!964 = !DILocation(line: 739, column: 21, scope: !965)
!965 = distinct !DILexicalBlock(scope: !931, file: !299, line: 739, column: 7)
!966 = !DILocation(line: 739, column: 32, scope: !965)
!967 = !DILocation(line: 739, column: 7, scope: !931)
!968 = !DILocation(line: 740, column: 12, scope: !965)
!969 = !DILocation(line: 740, column: 5, scope: !965)
!970 = !DILocation(line: 741, column: 10, scope: !931)
!971 = !DILocation(line: 742, column: 21, scope: !972)
!972 = distinct !DILexicalBlock(scope: !931, file: !299, line: 742, column: 7)
!973 = !DILocation(line: 742, column: 32, scope: !972)
!974 = !DILocation(line: 742, column: 7, scope: !931)
!975 = !DILocation(line: 743, column: 64, scope: !972)
!976 = !DILocation(line: 743, column: 12, scope: !972)
!977 = !DILocation(line: 743, column: 5, scope: !972)
!978 = !DILocation(line: 730, column: 12, scope: !979)
!979 = distinct !DILexicalBlock(scope: !931, file: !299, line: 730, column: 7)
!980 = !DILocation(line: 730, column: 7, scope: !931)
!981 = !DILocation(line: 745, column: 10, scope: !931)
!982 = !DILocation(line: 747, column: 10, scope: !931)
!983 = !DILocation(line: 751, column: 48, scope: !931)
!984 = !DILocation(line: 751, column: 5, scope: !931)
!985 = !DILocation(line: 753, column: 19, scope: !931)
!986 = !DILocation(line: 752, column: 39, scope: !931)
!987 = !DILocation(line: 754, column: 19, scope: !931)
!988 = !DILocation(line: 753, column: 33, scope: !931)
!989 = !DILocation(line: 750, column: 10, scope: !931)
!990 = !DILocation(line: 755, column: 10, scope: !931)
!991 = !DILocation(line: 756, column: 23, scope: !931)
!992 = !DILocation(line: 756, column: 3, scope: !931)
!993 = !DILocation(line: 758, column: 1, scope: !931)
!994 = !DILocation(line: 757, column: 3, scope: !931)
!995 = !DISubprogram(name: "CopyMagickString", scope: !311, file: !311, line: 78, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!996 = !DISubroutineType(types: !997)
!997 = !{!288, !228, !224, !512}
!998 = !DISubprogram(name: "FormatLocaleFile", scope: !686, file: !686, line: 67, type: !999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!215, !934, !690, null}
!1001 = !DISubprogram(name: "fflush", scope: !216, file: !216, line: 218, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!50, !934}
!1004 = distinct !DISubprogram(name: "RelinquishMagickResource", scope: !299, file: !299, line: 785, type: !1005, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !377, !379}
!1007 = !{!1008, !1009, !1010, !1011, !1012}
!1008 = !DILocalVariable(name: "type", arg: 1, scope: !1004, file: !299, line: 785, type: !377)
!1009 = !DILocalVariable(name: "size", arg: 2, scope: !1004, file: !299, line: 786, type: !379)
!1010 = !DILocalVariable(name: "resource_current", scope: !1004, file: !299, line: 789, type: !315)
!1011 = !DILocalVariable(name: "resource_limit", scope: !1004, file: !299, line: 790, type: !315)
!1012 = !DILocalVariable(name: "resource_request", scope: !1004, file: !299, line: 791, type: !315)
!1013 = !DILocation(line: 0, scope: !1004)
!1014 = !DILocation(line: 788, column: 3, scope: !1004)
!1015 = !DILocation(line: 789, column: 5, scope: !1004)
!1016 = !DILocation(line: 790, column: 5, scope: !1004)
!1017 = !DILocation(line: 791, column: 5, scope: !1004)
!1018 = !DILocation(line: 793, column: 10, scope: !1004)
!1019 = !DILocation(line: 794, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1004, file: !299, line: 794, column: 7)
!1021 = !DILocation(line: 794, column: 26, scope: !1020)
!1022 = !DILocation(line: 794, column: 7, scope: !1004)
!1023 = !DILocation(line: 795, column: 5, scope: !1020)
!1024 = !DILocation(line: 796, column: 21, scope: !1004)
!1025 = !DILocation(line: 796, column: 3, scope: !1004)
!1026 = !DILocation(line: 797, column: 3, scope: !1004)
!1027 = !DILocation(line: 801, column: 25, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 800, column: 5)
!1029 = distinct !DILexicalBlock(scope: !1004, file: !299, line: 798, column: 3)
!1030 = !DILocation(line: 802, column: 14, scope: !1028)
!1031 = !DILocation(line: 806, column: 7, scope: !1028)
!1032 = !DILocation(line: 810, column: 27, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 809, column: 5)
!1034 = !DILocation(line: 811, column: 14, scope: !1033)
!1035 = !DILocation(line: 815, column: 7, scope: !1033)
!1036 = !DILocation(line: 819, column: 24, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 818, column: 5)
!1038 = !DILocation(line: 820, column: 14, scope: !1037)
!1039 = !DILocation(line: 824, column: 7, scope: !1037)
!1040 = !DILocation(line: 828, column: 25, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 827, column: 5)
!1042 = !DILocation(line: 829, column: 14, scope: !1041)
!1043 = !DILocation(line: 833, column: 7, scope: !1041)
!1044 = !DILocation(line: 837, column: 25, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 836, column: 5)
!1046 = !DILocation(line: 838, column: 14, scope: !1045)
!1047 = !DILocation(line: 842, column: 7, scope: !1045)
!1048 = !DILocation(line: 846, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 845, column: 5)
!1050 = !DILocation(line: 850, column: 7, scope: !1049)
!1051 = !DILocation(line: 854, column: 14, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 853, column: 5)
!1053 = !DILocation(line: 858, column: 7, scope: !1052)
!1054 = !DILocation(line: 862, column: 25, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1029, file: !299, line: 861, column: 5)
!1056 = !DILocation(line: 863, column: 14, scope: !1055)
!1057 = !DILocation(line: 867, column: 7, scope: !1055)
!1058 = !DILocation(line: 0, scope: !1029)
!1059 = !DILocation(line: 872, column: 23, scope: !1004)
!1060 = !DILocation(line: 872, column: 3, scope: !1004)
!1061 = !DILocation(line: 874, column: 51, scope: !1004)
!1062 = !DILocation(line: 874, column: 5, scope: !1004)
!1063 = !DILocation(line: 873, column: 10, scope: !1004)
!1064 = !DILocation(line: 876, column: 1, scope: !1004)
!1065 = distinct !DISubprogram(name: "RelinquishUniqueFileResource", scope: !299, file: !299, line: 900, type: !551, scopeLine: 901, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DILocalVariable(name: "path", arg: 1, scope: !1065, file: !299, line: 900, type: !224)
!1068 = !DILocalVariable(name: "cache_path", scope: !1065, file: !299, line: 903, type: !315)
!1069 = !DILocalVariable(name: "p", scope: !1070, file: !299, line: 910, type: !228)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !299, line: 908, column: 5)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !299, line: 907, column: 7)
!1072 = !DILocation(line: 0, scope: !1065)
!1073 = !DILocation(line: 902, column: 3, scope: !1065)
!1074 = !DILocation(line: 903, column: 5, scope: !1065)
!1075 = !DILocation(line: 906, column: 10, scope: !1065)
!1076 = !DILocation(line: 907, column: 7, scope: !1071)
!1077 = !DILocation(line: 907, column: 27, scope: !1071)
!1078 = !DILocation(line: 907, column: 7, scope: !1065)
!1079 = !DILocation(line: 912, column: 7, scope: !1070)
!1080 = !DILocation(line: 913, column: 40, scope: !1070)
!1081 = !DILocation(line: 913, column: 18, scope: !1070)
!1082 = !DILocation(line: 0, scope: !1070)
!1083 = !DILocation(line: 914, column: 16, scope: !1070)
!1084 = !DILocation(line: 914, column: 7, scope: !1070)
!1085 = !DILocation(line: 916, column: 13, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !299, line: 916, column: 13)
!1087 = distinct !DILexicalBlock(scope: !1070, file: !299, line: 915, column: 7)
!1088 = !DILocation(line: 916, column: 35, scope: !1086)
!1089 = !DILocation(line: 916, column: 13, scope: !1087)
!1090 = !DILocation(line: 918, column: 20, scope: !1087)
!1091 = distinct !{!1091, !1084, !1092, !540, !541}
!1092 = !DILocation(line: 919, column: 7, scope: !1070)
!1093 = !DILocation(line: 921, column: 16, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1070, file: !299, line: 920, column: 11)
!1095 = !DILocation(line: 921, column: 9, scope: !1094)
!1096 = !DILocation(line: 923, column: 10, scope: !1065)
!1097 = !DILocation(line: 924, column: 3, scope: !1065)
!1098 = !DILocation(line: 925, column: 10, scope: !1065)
!1099 = !DILocation(line: 926, column: 10, scope: !1065)
!1100 = !DILocation(line: 927, column: 1, scope: !1065)
!1101 = !DILocation(line: 926, column: 3, scope: !1065)
!1102 = !DISubprogram(name: "LocaleCompare", scope: !311, file: !311, line: 66, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!50, !224, !224}
!1105 = !DISubprogram(name: "DeleteNodeFromSplayTree", scope: !222, file: !222, line: 31, type: !1106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!376, !220, !236}
!1108 = !DISubprogram(name: "AppendImageFormat", scope: !721, file: !721, line: 65, type: !1109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !224, !228}
!1111 = distinct !DISubprogram(name: "ResourceComponentGenesis", scope: !299, file: !299, line: 967, type: !1112, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!376}
!1114 = !{!1115, !1116, !1117, !1118, !1119}
!1115 = !DILocalVariable(name: "limit", scope: !1111, file: !299, line: 970, type: !228)
!1116 = !DILocalVariable(name: "memory", scope: !1111, file: !299, line: 973, type: !212)
!1117 = !DILocalVariable(name: "files", scope: !1111, file: !299, line: 976, type: !215)
!1118 = !DILocalVariable(name: "pages", scope: !1111, file: !299, line: 977, type: !215)
!1119 = !DILocalVariable(name: "pagesize", scope: !1111, file: !299, line: 978, type: !215)
!1120 = !DILocation(line: 970, column: 6, scope: !1111)
!1121 = !DILocation(line: 973, column: 5, scope: !1111)
!1122 = !DILocation(line: 976, column: 5, scope: !1111)
!1123 = !DILocation(line: 977, column: 5, scope: !1111)
!1124 = !DILocation(line: 978, column: 5, scope: !1111)
!1125 = !DILocation(line: 983, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1111, file: !299, line: 983, column: 7)
!1127 = !DILocation(line: 983, column: 26, scope: !1126)
!1128 = !DILocation(line: 983, column: 7, scope: !1111)
!1129 = !DILocation(line: 984, column: 24, scope: !1126)
!1130 = !DILocation(line: 984, column: 23, scope: !1126)
!1131 = !DILocation(line: 984, column: 5, scope: !1126)
!1132 = !DILocation(line: 1055, column: 10, scope: !1111)
!1133 = !DILocation(line: 1080, column: 3, scope: !1111)
!1134 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !207, file: !207, line: 32, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!205}
!1137 = distinct !DISubprogram(name: "SetMagickResourceLimit", scope: !299, file: !299, line: 1148, type: !374, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DILocalVariable(name: "type", arg: 1, scope: !1137, file: !299, line: 1148, type: !377)
!1140 = !DILocalVariable(name: "limit", arg: 2, scope: !1137, file: !299, line: 1149, type: !379)
!1141 = !DILocalVariable(name: "value", scope: !1137, file: !299, line: 1152, type: !228)
!1142 = !DILocation(line: 0, scope: !1137)
!1143 = !DILocation(line: 1154, column: 7, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !299, line: 1154, column: 7)
!1145 = !DILocation(line: 1154, column: 26, scope: !1144)
!1146 = !DILocation(line: 1154, column: 7, scope: !1137)
!1147 = !DILocation(line: 1155, column: 5, scope: !1144)
!1148 = !DILocation(line: 1156, column: 21, scope: !1137)
!1149 = !DILocation(line: 1156, column: 3, scope: !1137)
!1150 = !DILocation(line: 1158, column: 3, scope: !1137)
!1151 = !DILocation(line: 1162, column: 31, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1161, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1137, file: !299, line: 1159, column: 3)
!1154 = !DILocation(line: 1163, column: 13, scope: !1152)
!1155 = !DILocation(line: 1164, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1152, file: !299, line: 1164, column: 11)
!1157 = !DILocation(line: 1164, column: 11, scope: !1152)
!1158 = !DILocalVariable(name: "string", arg: 1, scope: !1159, file: !299, line: 955, type: !224)
!1159 = distinct !DISubprogram(name: "StringToSizeType", scope: !299, file: !299, line: 955, type: !1160, scopeLine: 957, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1163)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!212, !224, !1162}
!1162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!1163 = !{!1158, !1164, !1165}
!1164 = !DILocalVariable(name: "interval", arg: 2, scope: !1159, file: !299, line: 956, type: !1162)
!1165 = !DILocalVariable(name: "value", scope: !1159, file: !299, line: 959, type: !227)
!1166 = !DILocation(line: 0, scope: !1159, inlinedAt: !1167)
!1167 = distinct !DILocation(line: 1165, column: 50, scope: !1156)
!1168 = !DILocalVariable(name: "string", arg: 1, scope: !1169, file: !1170, line: 27, type: !224)
!1169 = distinct !DISubprogram(name: "SiPrefixToDoubleInterval", scope: !1170, file: !1170, line: 27, type: !1171, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1173)
!1170 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!227, !224, !1162}
!1173 = !{!1168, !1174, !1175, !1176}
!1174 = !DILocalVariable(name: "interval", arg: 2, scope: !1169, file: !1170, line: 28, type: !1162)
!1175 = !DILocalVariable(name: "q", scope: !1169, file: !1170, line: 31, type: !228)
!1176 = !DILocalVariable(name: "value", scope: !1169, file: !1170, line: 34, type: !227)
!1177 = !DILocation(line: 0, scope: !1169, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1167)
!1179 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1178)
!1180 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1178)
!1181 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1178)
!1182 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1167)
!1183 = distinct !DILexicalBlock(scope: !1159, file: !299, line: 962, column: 7)
!1184 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1167)
!1185 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1167)
!1186 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1167)
!1187 = !DILocation(line: 1170, column: 33, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1169, column: 5)
!1189 = !DILocation(line: 1171, column: 13, scope: !1188)
!1190 = !DILocation(line: 1172, column: 17, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !299, line: 1172, column: 11)
!1192 = !DILocation(line: 1172, column: 11, scope: !1188)
!1193 = !DILocation(line: 0, scope: !1159, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 1173, column: 52, scope: !1191)
!1195 = !DILocation(line: 0, scope: !1169, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1194)
!1197 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1196)
!1198 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1196)
!1199 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1196)
!1200 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1194)
!1201 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1194)
!1202 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1194)
!1203 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1194)
!1204 = !DILocation(line: 1179, column: 30, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1178, column: 5)
!1206 = !DILocation(line: 1180, column: 13, scope: !1205)
!1207 = !DILocation(line: 1181, column: 17, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !299, line: 1181, column: 11)
!1209 = !DILocation(line: 1181, column: 11, scope: !1205)
!1210 = !DILocation(line: 0, scope: !1159, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 1182, column: 49, scope: !1208)
!1212 = !DILocation(line: 0, scope: !1169, inlinedAt: !1213)
!1213 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1211)
!1214 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1213)
!1215 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1213)
!1216 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1213)
!1217 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1211)
!1218 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1211)
!1219 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1211)
!1220 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1211)
!1221 = !DILocation(line: 1187, column: 31, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1186, column: 5)
!1223 = !DILocation(line: 1188, column: 13, scope: !1222)
!1224 = !DILocation(line: 1189, column: 17, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !299, line: 1189, column: 11)
!1226 = !DILocation(line: 1189, column: 11, scope: !1222)
!1227 = !DILocation(line: 0, scope: !1159, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 1190, column: 50, scope: !1225)
!1229 = !DILocation(line: 0, scope: !1169, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1228)
!1231 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1230)
!1232 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1230)
!1233 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1230)
!1234 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1228)
!1235 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1228)
!1236 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1228)
!1237 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1228)
!1238 = !DILocation(line: 1195, column: 31, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1194, column: 5)
!1240 = !DILocation(line: 1196, column: 13, scope: !1239)
!1241 = !DILocation(line: 1197, column: 17, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !299, line: 1197, column: 11)
!1243 = !DILocation(line: 1197, column: 11, scope: !1239)
!1244 = !DILocation(line: 0, scope: !1159, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 1198, column: 50, scope: !1242)
!1246 = !DILocation(line: 0, scope: !1169, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1245)
!1248 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1247)
!1249 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1247)
!1250 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1247)
!1251 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1245)
!1252 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1245)
!1253 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1245)
!1254 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1245)
!1255 = !DILocation(line: 1203, column: 33, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1202, column: 5)
!1257 = !DILocation(line: 1204, column: 13, scope: !1256)
!1258 = !DILocation(line: 1205, column: 17, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1256, file: !299, line: 1205, column: 11)
!1260 = !DILocation(line: 1205, column: 11, scope: !1256)
!1261 = !DILocation(line: 0, scope: !1159, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 1206, column: 52, scope: !1259)
!1263 = !DILocation(line: 0, scope: !1169, inlinedAt: !1264)
!1264 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1262)
!1265 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1264)
!1266 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1264)
!1267 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1264)
!1268 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1262)
!1269 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1262)
!1270 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1262)
!1271 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1262)
!1272 = !DILocalVariable(name: "x", arg: 1, scope: !1273, file: !299, line: 1140, type: !379)
!1273 = distinct !DISubprogram(name: "MagickMin", scope: !299, file: !299, line: 1140, type: !1274, scopeLine: 1142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1276)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!212, !379, !379}
!1276 = !{!1272, !1277}
!1277 = !DILocalVariable(name: "y", arg: 2, scope: !1273, file: !299, line: 1141, type: !379)
!1278 = !DILocation(line: 0, scope: !1273, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 1206, column: 36, scope: !1259)
!1280 = !DILocation(line: 1206, column: 35, scope: !1259)
!1281 = !DILocation(line: 1206, column: 9, scope: !1259)
!1282 = !DILocation(line: 1208, column: 25, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1256, file: !299, line: 1208, column: 11)
!1284 = !DILocation(line: 1208, column: 38, scope: !1283)
!1285 = !DILocation(line: 1208, column: 11, scope: !1256)
!1286 = !DILocation(line: 1214, column: 35, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1213, column: 5)
!1288 = !DILocation(line: 1215, column: 13, scope: !1287)
!1289 = !DILocation(line: 1216, column: 17, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !299, line: 1216, column: 11)
!1291 = !DILocation(line: 1216, column: 11, scope: !1287)
!1292 = !DILocation(line: 0, scope: !1159, inlinedAt: !1293)
!1293 = distinct !DILocation(line: 1217, column: 54, scope: !1290)
!1294 = !DILocation(line: 0, scope: !1169, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1293)
!1296 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1295)
!1297 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1295)
!1298 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1295)
!1299 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1293)
!1300 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1293)
!1301 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1293)
!1302 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1293)
!1303 = !DILocation(line: 0, scope: !1273, inlinedAt: !1304)
!1304 = distinct !DILocation(line: 1217, column: 38, scope: !1290)
!1305 = !DILocation(line: 1217, column: 37, scope: !1290)
!1306 = !DILocation(line: 1217, column: 9, scope: !1290)
!1307 = !DILocation(line: 1219, column: 25, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1287, file: !299, line: 1219, column: 11)
!1309 = !DILocation(line: 1219, column: 40, scope: !1308)
!1310 = !DILocation(line: 1219, column: 11, scope: !1287)
!1311 = !DILocation(line: 1225, column: 31, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1153, file: !299, line: 1224, column: 5)
!1313 = !DILocation(line: 1226, column: 13, scope: !1312)
!1314 = !DILocation(line: 1227, column: 17, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1312, file: !299, line: 1227, column: 11)
!1316 = !DILocation(line: 1227, column: 11, scope: !1312)
!1317 = !DILocation(line: 0, scope: !1159, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 1228, column: 50, scope: !1315)
!1319 = !DILocation(line: 0, scope: !1169, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 961, column: 9, scope: !1159, inlinedAt: !1318)
!1321 = !DILocation(line: 30, column: 3, scope: !1169, inlinedAt: !1320)
!1322 = !DILocation(line: 36, column: 9, scope: !1169, inlinedAt: !1320)
!1323 = !DILocation(line: 40, column: 1, scope: !1169, inlinedAt: !1320)
!1324 = !DILocation(line: 962, column: 13, scope: !1183, inlinedAt: !1318)
!1325 = !DILocation(line: 962, column: 7, scope: !1159, inlinedAt: !1318)
!1326 = !DILocation(line: 964, column: 10, scope: !1159, inlinedAt: !1318)
!1327 = !DILocation(line: 964, column: 3, scope: !1159, inlinedAt: !1318)
!1328 = !DILocation(line: 0, scope: !1153)
!1329 = !DILocation(line: 1234, column: 13, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1137, file: !299, line: 1234, column: 7)
!1331 = !DILocation(line: 1234, column: 7, scope: !1137)
!1332 = !DILocation(line: 1235, column: 11, scope: !1330)
!1333 = !DILocation(line: 1235, column: 5, scope: !1330)
!1334 = !DILocation(line: 1236, column: 23, scope: !1137)
!1335 = !DILocation(line: 1236, column: 3, scope: !1137)
!1336 = !DILocation(line: 1237, column: 3, scope: !1137)
!1337 = distinct !DISubprogram(name: "ResourceComponentTerminus", scope: !299, file: !299, line: 1101, type: !520, scopeLine: 1102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!1338 = !DILocation(line: 1103, column: 7, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !299, line: 1103, column: 7)
!1340 = !DILocation(line: 1103, column: 26, scope: !1339)
!1341 = !DILocation(line: 1103, column: 7, scope: !1337)
!1342 = !DILocation(line: 1104, column: 5, scope: !1339)
!1343 = !DILocation(line: 1105, column: 21, scope: !1337)
!1344 = !DILocation(line: 1105, column: 3, scope: !1337)
!1345 = !DILocation(line: 1106, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !299, line: 1106, column: 7)
!1347 = !DILocation(line: 1106, column: 27, scope: !1346)
!1348 = !DILocation(line: 1106, column: 7, scope: !1337)
!1349 = !DILocation(line: 1107, column: 25, scope: !1346)
!1350 = !DILocation(line: 1107, column: 24, scope: !1346)
!1351 = !DILocation(line: 1107, column: 5, scope: !1346)
!1352 = !DILocation(line: 1108, column: 7, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1337, file: !299, line: 1108, column: 7)
!1354 = !DILocation(line: 1108, column: 19, scope: !1353)
!1355 = !DILocation(line: 1108, column: 7, scope: !1337)
!1356 = !DILocation(line: 1109, column: 17, scope: !1353)
!1357 = !DILocation(line: 1109, column: 16, scope: !1353)
!1358 = !DILocation(line: 1109, column: 5, scope: !1353)
!1359 = !DILocation(line: 1110, column: 23, scope: !1337)
!1360 = !DILocation(line: 1110, column: 3, scope: !1337)
!1361 = !DILocation(line: 1111, column: 3, scope: !1337)
!1362 = !DILocation(line: 1112, column: 1, scope: !1337)
!1363 = !DISubprogram(name: "DestroySplayTree", scope: !222, file: !222, line: 44, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!220, !220}
!1366 = !DISubprogram(name: "DestroyRandomInfo", scope: !231, file: !231, line: 45, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!229, !229}
!1369 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !207, file: !207, line: 36, type: !500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1370 = !DISubprogram(name: "open", scope: !1371, file: !1371, line: 168, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1371 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!50, !224, !50, null}
!1374 = !DISubprogram(name: "InterpretSiPrefixValue", scope: !311, file: !311, line: 61, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !498)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!227, !690, !1377}
!1377 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !716)
