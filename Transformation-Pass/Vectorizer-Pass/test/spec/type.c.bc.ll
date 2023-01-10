; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/type.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Fontmap = type { ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._TypeInfo = type { i64, ptr, ptr, ptr, ptr, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64 }

@type_semaphore = internal global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@type_cache = internal unnamed_addr global ptr null, align 8, !dbg !387
@GetTypeInfoByFamily.fontmap = internal unnamed_addr constant [8 x %struct._Fontmap] [%struct._Fontmap { ptr @.str.1, ptr @.str.2 }, %struct._Fontmap { ptr @.str.3, ptr @.str.2 }, %struct._Fontmap { ptr @.str.4, ptr @.str.2 }, %struct._Fontmap { ptr @.str.5, ptr @.str.6 }, %struct._Fontmap { ptr @.str.7, ptr @.str.2 }, %struct._Fontmap { ptr @.str.8, ptr @.str.2 }, %struct._Fontmap { ptr @.str.9, ptr @.str.10 }, %struct._Fontmap zeroinitializer], align 16, !dbg !344
@.str.1 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"courier\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"modern\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"monotype corsiva\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"news gothic\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"helvetica\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"terminal\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"wingdings\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"arial\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/type.c\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"FontSubstitutionRequired\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"\0APath: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"  Font: %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"    family: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"    style: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"    stretch: %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"    weight: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"    glyphs: %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"type.xml\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"MAGICK_FONT_PATH\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"built-in\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"Loading type configure file \22%s\22 ...\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"IncludeNodeNestedTooDeeply\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"<type\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"face\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"foundry\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"fullname\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"glyphs\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"stretch\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"bold\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.57 = private unnamed_addr constant [157 x i8] c"<?xml version=\221.0\22?><typemap>  <type stealth=\22True\22 name=\22fixed\22 family=\22helvetica\22/>  <type stealth=\22True\22 name=\22helvetica\22 family=\22helvetica\22/></typemap>\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfo(ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !398 {
entry:
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  %path.i.i = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %name, metadata !402, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %exception, metadata !403, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.value(metadata ptr %exception, metadata !406, metadata !DIExpression()) #12, !dbg !411
  %0 = load ptr, ptr @type_cache, align 8, !dbg !414, !tbaa !416
  %cmp.i = icmp eq ptr %0, null, !dbg !420
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !421

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @type_semaphore, align 8, !dbg !422, !tbaa !416
  %cmp1.i = icmp eq ptr %1, null, !dbg !425
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !426

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #12, !dbg !427
  %.pre.i = load ptr, ptr @type_semaphore, align 8, !dbg !428, !tbaa !416
  br label %if.end.i, !dbg !427

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !428
  tail call void @LockSemaphoreInfo(ptr noundef %2) #12, !dbg !429
  %3 = load ptr, ptr @type_cache, align 8, !dbg !430, !tbaa !416
  %cmp3.i = icmp eq ptr %3, null, !dbg !432
  br i1 %cmp3.i, label %if.then4.i, label %IsTypeTreeInstantiated.exit, !dbg !433

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !434, metadata !DIExpression()) #12, !dbg !459
  call void @llvm.dbg.value(metadata ptr %exception, metadata !439, metadata !DIExpression()) #12, !dbg !459
  %call.i.i = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef null, ptr noundef nonnull @DestroyTypeNode) #12, !dbg !462
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !442, metadata !DIExpression()) #12, !dbg !459
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !463
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !464

if.then.i.i:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #12, !dbg !465
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !446, metadata !DIExpression()) #12, !dbg !465
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #12, !dbg !465
  %call2.i.i = tail call ptr @__errno_location() #13, !dbg !465
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !465, !tbaa !466
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #12, !dbg !465
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !443, metadata !DIExpression()) #12, !dbg !468
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 198, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %call3.i.i) #12, !dbg !465
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #12, !dbg !465
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !443, metadata !DIExpression()) #12, !dbg !468
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #12, !dbg !465
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #12, !dbg !465
  call void @MagickCoreTerminus() #12, !dbg !465
  call void @_exit(i32 noundef 1) #14, !dbg !465
  unreachable, !dbg !465

if.end.i.i:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !440, metadata !DIExpression()) #12, !dbg !459
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path.i.i) #12, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %path.i.i, metadata !449, metadata !DIExpression()) #12, !dbg !470
  store i8 0, ptr %path.i.i, align 16, !dbg !471, !tbaa !472
  %call7.i.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.26, ptr noundef %exception) #12, !dbg !473
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !451, metadata !DIExpression()) #12, !dbg !474
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #12, !dbg !475
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !450, metadata !DIExpression()) #12, !dbg !474
  call void @llvm.dbg.value(metadata i32 poison, metadata !440, metadata !DIExpression()) #12, !dbg !459
  %cmp9.not1.i.i = icmp eq ptr %call8.i.i, null, !dbg !476
  br i1 %cmp9.not1.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !477

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.02.i.i = phi ptr [ %call16.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.02.i.i, metadata !450, metadata !DIExpression()) #12, !dbg !474
  %call11.i.i = call ptr @GetStringInfoPath(ptr noundef nonnull %option.02.i.i) #12, !dbg !478
  %call12.i.i = call i64 @CopyMagickString(ptr noundef nonnull %path.i.i, ptr noundef %call11.i.i, i64 noundef 4096) #12, !dbg !480
  %call13.i.i = call ptr @GetStringInfoDatum(ptr noundef nonnull %option.02.i.i) #12, !dbg !481
  %call14.i.i = call ptr @GetStringInfoPath(ptr noundef nonnull %option.02.i.i) #12, !dbg !482
  %call15.i.i = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %call.i.i, ptr noundef %call13.i.i, ptr noundef %call14.i.i, i64 noundef 0, ptr noundef %exception) #12, !dbg !483
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call15.i.i), metadata !440, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #12, !dbg !459
  %call16.i.i = call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #12, !dbg !484
  call void @llvm.dbg.value(metadata ptr %call16.i.i, metadata !450, metadata !DIExpression()) #12, !dbg !474
  call void @llvm.dbg.value(metadata i32 poison, metadata !440, metadata !DIExpression()) #12, !dbg !459
  %cmp9.not.i.i = icmp eq ptr %call16.i.i, null, !dbg !476
  br i1 %cmp9.not.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !477, !llvm.loop !485

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  %call17.i.i = call ptr @DestroyConfigureOptions(ptr noundef %call7.i.i) #12, !dbg !489
  call void @llvm.dbg.value(metadata ptr %call17.i.i, metadata !451, metadata !DIExpression()) #12, !dbg !474
  %call18.i.i = call ptr @GetEnvironmentValue(ptr noundef nonnull @.str.28) #12, !dbg !490
  call void @llvm.dbg.value(metadata ptr %call18.i.i, metadata !447, metadata !DIExpression()) #12, !dbg !474
  %cmp19.not.i.i = icmp eq ptr %call18.i.i, null, !dbg !491
  br i1 %cmp19.not.i.i, label %if.end34.i.i, label %if.then20.i.i, !dbg !492

if.then20.i.i:                                    ; preds = %while.end.i.i
  %call23.i.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %path.i.i, i64 noundef 4096, ptr noundef nonnull @.str.29, ptr noundef nonnull %call18.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26) #12, !dbg !493
  %call25.i.i = call ptr @FileToString(ptr noundef nonnull %path.i.i, i64 noundef -1, ptr noundef %exception) #12, !dbg !494
  call void @llvm.dbg.value(metadata ptr %call25.i.i, metadata !456, metadata !DIExpression()) #12, !dbg !495
  %cmp26.not.i.i = icmp eq ptr %call25.i.i, null, !dbg !496
  br i1 %cmp26.not.i.i, label %if.end32.i.i, label %if.then27.i.i, !dbg !498

if.then27.i.i:                                    ; preds = %if.then20.i.i
  %call29.i.i = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %call.i.i, ptr noundef nonnull %call25.i.i, ptr noundef nonnull %path.i.i, i64 noundef 0, ptr noundef %exception) #12, !dbg !499
  call void @llvm.dbg.value(metadata !DIArgList(i32 poison, i32 %call29.i.i), metadata !440, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #12, !dbg !459
  %call31.i.i = call ptr @DestroyString(ptr noundef nonnull %call25.i.i) #12, !dbg !501
  call void @llvm.dbg.value(metadata ptr %call31.i.i, metadata !456, metadata !DIExpression()) #12, !dbg !495
  br label %if.end32.i.i, !dbg !502

if.end32.i.i:                                     ; preds = %if.then27.i.i, %if.then20.i.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !440, metadata !DIExpression()) #12, !dbg !459
  %call33.i.i = call ptr @DestroyString(ptr noundef nonnull %call18.i.i) #12, !dbg !503
  call void @llvm.dbg.value(metadata ptr %call33.i.i, metadata !447, metadata !DIExpression()) #12, !dbg !474
  br label %if.end34.i.i, !dbg !504

if.end34.i.i:                                     ; preds = %if.end32.i.i, %while.end.i.i
  call void @llvm.dbg.value(metadata i32 undef, metadata !440, metadata !DIExpression()) #12, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path.i.i) #12, !dbg !505
  %call35.i.i = call i64 @GetNumberOfNodesInSplayTree(ptr noundef nonnull %call.i.i) #12, !dbg !506
  %cmp36.i.i = icmp eq i64 %call35.i.i, 0, !dbg !508
  br i1 %cmp36.i.i, label %if.then37.i.i, label %AcquireTypeCache.exit.i, !dbg !509

if.then37.i.i:                                    ; preds = %if.end34.i.i
  %call38.i.i = call fastcc i32 @LoadTypeCache(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, i64 noundef 0, ptr noundef %exception) #12, !dbg !510
  call void @llvm.dbg.value(metadata !DIArgList(i32 undef, i32 %call38.i.i), metadata !440, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)) #12, !dbg !459
  br label %AcquireTypeCache.exit.i, !dbg !511

AcquireTypeCache.exit.i:                          ; preds = %if.then37.i.i, %if.end34.i.i
  store ptr %call.i.i, ptr @type_cache, align 8, !dbg !512, !tbaa !416
  br label %IsTypeTreeInstantiated.exit, !dbg !513

IsTypeTreeInstantiated.exit:                      ; preds = %if.end.i, %AcquireTypeCache.exit.i
  %5 = load ptr, ptr @type_semaphore, align 8, !dbg !514, !tbaa !416
  call void @UnlockSemaphoreInfo(ptr noundef %5) #12, !dbg !515
  %.pre8.i = load ptr, ptr @type_cache, align 8, !dbg !516, !tbaa !416
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !517
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !518

if.end:                                           ; preds = %entry, %IsTypeTreeInstantiated.exit
  %6 = load ptr, ptr @type_semaphore, align 8, !dbg !519, !tbaa !416
  call void @LockSemaphoreInfo(ptr noundef %6) #12, !dbg !520
  %cmp1 = icmp eq ptr %name, null, !dbg !521
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !523

lor.lhs.false:                                    ; preds = %if.end
  %call2 = call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str) #12, !dbg !524
  %cmp3 = icmp eq i32 %call2, 0, !dbg !525
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !526

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %7 = load ptr, ptr @type_cache, align 8, !dbg !527, !tbaa !416
  call void @ResetSplayTreeIterator(ptr noundef %7) #12, !dbg !529
  %8 = load ptr, ptr @type_cache, align 8, !dbg !530, !tbaa !416
  %call5 = call ptr @GetNextValueInSplayTree(ptr noundef %8) #12, !dbg !531
  call void @llvm.dbg.value(metadata ptr %call5, metadata !404, metadata !DIExpression()), !dbg !405
  br label %cleanup.sink.split, !dbg !532

if.end6:                                          ; preds = %lor.lhs.false
  %9 = load ptr, ptr @type_cache, align 8, !dbg !533, !tbaa !416
  %call7 = call ptr @GetValueFromSplayTree(ptr noundef %9, ptr noundef nonnull %name) #12, !dbg !534
  call void @llvm.dbg.value(metadata ptr %call7, metadata !404, metadata !DIExpression()), !dbg !405
  br label %cleanup.sink.split, !dbg !535

cleanup.sink.split:                               ; preds = %if.then4, %if.end6
  %retval.0.ph = phi ptr [ %call7, %if.end6 ], [ %call5, %if.then4 ]
  %10 = load ptr, ptr @type_semaphore, align 8, !dbg !405, !tbaa !416
  call void @UnlockSemaphoreInfo(ptr noundef %10) #12, !dbg !405
  br label %cleanup, !dbg !536

cleanup:                                          ; preds = %cleanup.sink.split, %IsTypeTreeInstantiated.exit
  %retval.0 = phi ptr [ null, %IsTypeTreeInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !405
  ret ptr %retval.0, !dbg !536
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !537 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !541 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !544 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !547 ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !552 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !553 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfoByFamily(ptr noundef %family, i32 noundef %style, i32 noundef %stretch, i64 noundef %weight, ptr noundef %exception) local_unnamed_addr #0 !dbg !346 {
entry:
  %0 = and i32 %style, -5
  %.not = icmp eq i32 %0, 0
  %cmp44.not = icmp eq i64 %weight, 0
  %1 = and i32 %style, -2
  %2 = icmp eq i32 %1, 2
  %3 = tail call i64 @llvm.umin.i64(i64 %weight, i64 900) #12, !dbg !556
  %conv = zext i32 %stretch to i64
  br label %tailrecurse, !dbg !557

tailrecurse:                                      ; preds = %if.end179, %entry
  %family.tr = phi ptr [ %family, %entry ], [ null, %if.end179 ]
  call void @llvm.dbg.value(metadata ptr %family.tr, metadata !367, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32 %style, metadata !368, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i32 %stretch, metadata !369, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i64 %weight, metadata !370, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %exception, metadata !371, metadata !DIExpression()), !dbg !556
  %call = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !559
  %4 = load ptr, ptr @type_cache, align 8, !dbg !560, !tbaa !416
  %cmp = icmp eq ptr %4, null, !dbg !562
  br i1 %cmp, label %cleanup, label %if.end, !dbg !563

if.end:                                           ; preds = %tailrecurse
  %5 = load ptr, ptr @type_semaphore, align 8, !dbg !564, !tbaa !416
  tail call void @LockSemaphoreInfo(ptr noundef %5) #12, !dbg !565
  %6 = load ptr, ptr @type_cache, align 8, !dbg !566, !tbaa !416
  tail call void @ResetSplayTreeIterator(ptr noundef %6) #12, !dbg !567
  call void @llvm.dbg.value(metadata ptr null, metadata !372, metadata !DIExpression()), !dbg !556
  %7 = load ptr, ptr @type_cache, align 8, !dbg !568, !tbaa !416
  %call1 = tail call ptr @GetNextValueInSplayTree(ptr noundef %7) #12, !dbg !569
  call void @llvm.dbg.value(metadata ptr %call1, metadata !373, metadata !DIExpression()), !dbg !556
  %cmp2.not279 = icmp eq ptr %call1, null, !dbg !570
  br i1 %cmp2.not279, label %if.end53, label %while.body.lr.ph, !dbg !571

while.body.lr.ph:                                 ; preds = %if.end
  %cmp8 = icmp eq ptr %family.tr, null
  br label %while.body, !dbg !571

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %p.0280 = phi ptr [ %call1, %while.body.lr.ph ], [ %call6, %while.cond.backedge ]
  call void @llvm.dbg.value(metadata ptr %p.0280, metadata !373, metadata !DIExpression()), !dbg !556
  %family3 = getelementptr inbounds %struct._TypeInfo, ptr %p.0280, i64 0, i32 4, !dbg !572
  %8 = load ptr, ptr %family3, align 8, !dbg !572, !tbaa !575
  %cmp4 = icmp eq ptr %8, null, !dbg !578
  br i1 %cmp4, label %while.cond.backedge, label %if.end7, !dbg !579

while.cond.backedge:                              ; preds = %while.body, %land.lhs.true45, %land.lhs.true38, %land.lhs.true29, %if.else, %land.lhs.true
  %9 = load ptr, ptr @type_cache, align 8, !dbg !580, !tbaa !416
  %call6 = tail call ptr @GetNextValueInSplayTree(ptr noundef %9) #12, !dbg !580
  call void @llvm.dbg.value(metadata ptr %call6, metadata !373, metadata !DIExpression()), !dbg !556
  %cmp2.not = icmp eq ptr %call6, null, !dbg !570
  br i1 %cmp2.not, label %if.end53, label %while.body, !dbg !571, !llvm.loop !581

if.end7:                                          ; preds = %while.body
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !583

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull @.str.11) #12, !dbg !584
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !588
  br i1 %cmp12.not, label %if.end25, label %land.lhs.true, !dbg !589

land.lhs.true:                                    ; preds = %if.then9
  %10 = load ptr, ptr %family3, align 8, !dbg !590, !tbaa !575
  %call14 = tail call i32 @LocaleCompare(ptr noundef %10, ptr noundef nonnull @.str.6) #12, !dbg !591
  %cmp15.not = icmp eq i32 %call14, 0, !dbg !592
  br i1 %cmp15.not, label %if.end25, label %while.cond.backedge, !dbg !593

if.else:                                          ; preds = %if.end7
  %call20 = tail call i32 @LocaleCompare(ptr noundef nonnull %8, ptr noundef nonnull %family.tr) #12, !dbg !594
  %cmp21.not = icmp eq i32 %call20, 0, !dbg !596
  br i1 %cmp21.not, label %if.end25, label %while.cond.backedge, !dbg !597

if.end25:                                         ; preds = %if.else, %if.then9, %land.lhs.true
  br i1 %.not, label %if.end34, label %land.lhs.true29, !dbg !598

land.lhs.true29:                                  ; preds = %if.end25
  %style30 = getelementptr inbounds %struct._TypeInfo, ptr %p.0280, i64 0, i32 5, !dbg !600
  %11 = load i32, ptr %style30, align 8, !dbg !600, !tbaa !601
  %cmp31.not = icmp eq i32 %11, %style, !dbg !602
  br i1 %cmp31.not, label %if.end34, label %while.cond.backedge, !dbg !603

if.end34:                                         ; preds = %land.lhs.true29, %if.end25
  switch i32 %stretch, label %land.lhs.true38 [
    i32 10, label %if.end43
    i32 0, label %if.end43
  ], !dbg !604

land.lhs.true38:                                  ; preds = %if.end34
  %stretch39 = getelementptr inbounds %struct._TypeInfo, ptr %p.0280, i64 0, i32 6, !dbg !606
  %12 = load i32, ptr %stretch39, align 4, !dbg !606, !tbaa !607
  %cmp40.not = icmp eq i32 %12, %stretch, !dbg !608
  br i1 %cmp40.not, label %if.end43, label %while.cond.backedge, !dbg !609

if.end43:                                         ; preds = %if.end34, %if.end34, %land.lhs.true38
  br i1 %cmp44.not, label %while.end.thread, label %land.lhs.true45, !dbg !610

land.lhs.true45:                                  ; preds = %if.end43
  %weight46 = getelementptr inbounds %struct._TypeInfo, ptr %p.0280, i64 0, i32 7, !dbg !612
  %13 = load i64, ptr %weight46, align 8, !dbg !612, !tbaa !613
  %cmp47.not = icmp eq i64 %13, %weight, !dbg !614
  br i1 %cmp47.not, label %while.end.thread, label %while.cond.backedge, !dbg !615

while.end.thread:                                 ; preds = %land.lhs.true45, %if.end43
  call void @llvm.dbg.value(metadata ptr null, metadata !372, metadata !DIExpression()), !dbg !556
  %14 = load ptr, ptr @type_semaphore, align 8, !dbg !616, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %14) #12, !dbg !617
  br label %cleanup, !dbg !618

if.end53:                                         ; preds = %while.cond.backedge, %if.end
  call void @llvm.dbg.value(metadata ptr null, metadata !372, metadata !DIExpression()), !dbg !556
  %15 = load ptr, ptr @type_semaphore, align 8, !dbg !616, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %15) #12, !dbg !617
  call void @llvm.dbg.value(metadata i64 0, metadata !376, metadata !DIExpression()), !dbg !556
  %16 = load ptr, ptr @type_semaphore, align 8, !dbg !619, !tbaa !416
  tail call void @LockSemaphoreInfo(ptr noundef %16) #12, !dbg !620
  %17 = load ptr, ptr @type_cache, align 8, !dbg !621, !tbaa !416
  tail call void @ResetSplayTreeIterator(ptr noundef %17) #12, !dbg !622
  %18 = load ptr, ptr @type_cache, align 8, !dbg !623, !tbaa !416
  %call54 = tail call ptr @GetNextValueInSplayTree(ptr noundef %18) #12, !dbg !624
  call void @llvm.dbg.value(metadata ptr %call54, metadata !373, metadata !DIExpression()), !dbg !556
  %cmp56.not281286 = icmp eq ptr %call54, null, !dbg !625
  br i1 %cmp56.not281286, label %while.end140.thread, label %while.body57.lr.ph.lr.ph, !dbg !626

while.end140.thread:                              ; preds = %if.end53
  %19 = load ptr, ptr @type_semaphore, align 8, !dbg !627, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %19) #12, !dbg !628
  br label %for.cond.preheader, !dbg !629

while.body57.lr.ph.lr.ph:                         ; preds = %if.end53
  %cmp63 = icmp eq ptr %family.tr, null
  br label %while.body57.lr.ph, !dbg !626

while.body57.lr.ph:                               ; preds = %while.body57.lr.ph.lr.ph, %if.end134
  %max_score.0.ph291 = phi i64 [ 0, %while.body57.lr.ph.lr.ph ], [ %33, %if.end134 ]
  %p.1.ph290 = phi ptr [ %call54, %while.body57.lr.ph.lr.ph ], [ %call139, %if.end134 ]
  %type_info.1.ph287 = phi ptr [ null, %while.body57.lr.ph.lr.ph ], [ %spec.select, %if.end134 ]
  call void @llvm.dbg.value(metadata i64 %max_score.0.ph291, metadata !376, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %p.1.ph290, metadata !373, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %type_info.1.ph287, metadata !372, metadata !DIExpression()), !dbg !556
  br i1 %cmp63, label %while.body57.us, label %while.body57, !dbg !630

while.body57.us:                                  ; preds = %while.body57.lr.ph, %while.cond55.backedge.us
  %p.1282.us = phi ptr [ %call61.us, %while.cond55.backedge.us ], [ %p.1.ph290, %while.body57.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %p.1282.us, metadata !373, metadata !DIExpression()), !dbg !556
  %family58.us = getelementptr inbounds %struct._TypeInfo, ptr %p.1282.us, i64 0, i32 4, !dbg !632
  %20 = load ptr, ptr %family58.us, align 8, !dbg !632, !tbaa !575
  %cmp59.us = icmp eq ptr %20, null, !dbg !634
  br i1 %cmp59.us, label %while.cond55.backedge.us, label %if.end62.us, !dbg !635

if.end62.us:                                      ; preds = %while.body57.us
  %call66.us = tail call i32 @LocaleCompare(ptr noundef nonnull %20, ptr noundef nonnull @.str.11) #12, !dbg !636
  %cmp67.not.us = icmp eq i32 %call66.us, 0, !dbg !640
  br i1 %cmp67.not.us, label %if.end82, label %land.lhs.true68.us, !dbg !641

land.lhs.true68.us:                               ; preds = %if.end62.us
  %21 = load ptr, ptr %family58.us, align 8, !dbg !642, !tbaa !575
  %call70.us = tail call i32 @LocaleCompare(ptr noundef %21, ptr noundef nonnull @.str.6) #12, !dbg !643
  %cmp71.not.us = icmp eq i32 %call70.us, 0, !dbg !644
  br i1 %cmp71.not.us, label %if.end82, label %while.cond55.backedge.us, !dbg !645

while.cond55.backedge.us:                         ; preds = %while.body57.us, %land.lhs.true68.us
  %22 = load ptr, ptr @type_cache, align 8, !dbg !646, !tbaa !416
  %call61.us = tail call ptr @GetNextValueInSplayTree(ptr noundef %22) #12, !dbg !646
  call void @llvm.dbg.value(metadata i64 %max_score.0.ph291, metadata !376, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %call61.us, metadata !373, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %type_info.1.ph287, metadata !372, metadata !DIExpression()), !dbg !556
  %cmp56.not.us = icmp eq ptr %call61.us, null, !dbg !625
  br i1 %cmp56.not.us, label %while.end140, label %while.body57.us, !dbg !626, !llvm.loop !647

while.body57:                                     ; preds = %while.body57.lr.ph, %while.cond55.backedge
  %p.1282 = phi ptr [ %call61, %while.cond55.backedge ], [ %p.1.ph290, %while.body57.lr.ph ]
  call void @llvm.dbg.value(metadata ptr %p.1282, metadata !373, metadata !DIExpression()), !dbg !556
  %family58 = getelementptr inbounds %struct._TypeInfo, ptr %p.1282, i64 0, i32 4, !dbg !632
  %23 = load ptr, ptr %family58, align 8, !dbg !632, !tbaa !575
  %cmp59 = icmp eq ptr %23, null, !dbg !634
  br i1 %cmp59, label %while.cond55.backedge, label %if.end62, !dbg !635

while.cond55.backedge:                            ; preds = %while.body57, %if.end62
  %24 = load ptr, ptr @type_cache, align 8, !dbg !646, !tbaa !416
  %call61 = tail call ptr @GetNextValueInSplayTree(ptr noundef %24) #12, !dbg !646
  call void @llvm.dbg.value(metadata i64 %max_score.0.ph291, metadata !376, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %call61, metadata !373, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %type_info.1.ph287, metadata !372, metadata !DIExpression()), !dbg !556
  %cmp56.not = icmp eq ptr %call61, null, !dbg !625
  br i1 %cmp56.not, label %while.end140, label %while.body57, !dbg !626, !llvm.loop !647

if.end62:                                         ; preds = %while.body57
  %call77 = tail call i32 @LocaleCompare(ptr noundef nonnull %23, ptr noundef nonnull %family.tr) #12, !dbg !649
  %cmp78.not = icmp eq i32 %call77, 0, !dbg !651
  br i1 %cmp78.not, label %if.end82, label %while.cond55.backedge, !dbg !652

if.end82:                                         ; preds = %if.end62, %if.end62.us, %land.lhs.true68.us
  %.us-phi = phi ptr [ %p.1282.us, %land.lhs.true68.us ], [ %p.1282.us, %if.end62.us ], [ %p.1282, %if.end62 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !377, metadata !DIExpression()), !dbg !556
  br i1 %.not, label %if.end102, label %lor.lhs.false85, !dbg !653

lor.lhs.false85:                                  ; preds = %if.end82
  %style86 = getelementptr inbounds %struct._TypeInfo, ptr %.us-phi, i64 0, i32 5, !dbg !655
  %25 = load i32, ptr %style86, align 8, !dbg !655, !tbaa !601
  %cmp87 = icmp eq i32 %25, %style, !dbg !656
  br i1 %cmp87, label %if.end102, label %if.else89, !dbg !657

if.else89:                                        ; preds = %lor.lhs.false85
  %26 = and i32 %25, -2
  %switch = icmp eq i32 %26, 2
  %or.cond = select i1 %2, i1 %switch, i1 false, !dbg !658
  %spec.select271 = select i1 %or.cond, i64 25, i64 0, !dbg !658
  br label %if.end102, !dbg !658

if.end102:                                        ; preds = %if.else89, %if.end82, %lor.lhs.false85
  %score.0 = phi i64 [ 32, %lor.lhs.false85 ], [ 32, %if.end82 ], [ %spec.select271, %if.else89 ], !dbg !646
  call void @llvm.dbg.value(metadata i64 %score.0, metadata !377, metadata !DIExpression()), !dbg !556
  br i1 %cmp44.not, label %if.then104, label %if.else106, !dbg !660

if.then104:                                       ; preds = %if.end102
  %add105 = add nuw nsw i64 %score.0, 16, !dbg !661
  call void @llvm.dbg.value(metadata i64 %add105, metadata !377, metadata !DIExpression()), !dbg !556
  br label %if.end115, !dbg !663

if.else106:                                       ; preds = %if.end102
  call void @llvm.dbg.value(metadata i64 %weight, metadata !664, metadata !DIExpression()) #12, !dbg !670
  call void @llvm.dbg.value(metadata i64 900, metadata !669, metadata !DIExpression()) #12, !dbg !670
  %weight108 = getelementptr inbounds %struct._TypeInfo, ptr %.us-phi, i64 0, i32 7, !dbg !672
  %27 = load i64, ptr %weight108, align 8, !dbg !672, !tbaa !613
  call void @llvm.dbg.value(metadata i64 %3, metadata !673, metadata !DIExpression()) #12, !dbg !677
  call void @llvm.dbg.value(metadata i64 %27, metadata !676, metadata !DIExpression()) #12, !dbg !677
  %28 = tail call i64 @llvm.umax.i64(i64 %3, i64 %27) #12, !dbg !677
  call void @llvm.dbg.value(metadata i64 %weight, metadata !664, metadata !DIExpression()) #12, !dbg !679
  call void @llvm.dbg.value(metadata i64 900, metadata !669, metadata !DIExpression()) #12, !dbg !679
  call void @llvm.dbg.value(metadata i64 %3, metadata !664, metadata !DIExpression()) #12, !dbg !681
  call void @llvm.dbg.value(metadata i64 %27, metadata !669, metadata !DIExpression()) #12, !dbg !681
  %29 = tail call i64 @llvm.umin.i64(i64 %3, i64 %27) #12, !dbg !681
  %sub.neg = sub i64 %29, %28, !dbg !683
  %sub113 = shl i64 %sub.neg, 4, !dbg !684
  %mul = add i64 %sub113, 12800, !dbg !684
  %div = sdiv i64 %mul, 800, !dbg !685
  %add114 = add nsw i64 %div, %score.0, !dbg !686
  call void @llvm.dbg.value(metadata i64 %add114, metadata !377, metadata !DIExpression()), !dbg !556
  br label %if.end115

if.end115:                                        ; preds = %if.else106, %if.then104
  %score.1 = phi i64 [ %add105, %if.then104 ], [ %add114, %if.else106 ], !dbg !687
  call void @llvm.dbg.value(metadata i64 %score.1, metadata !377, metadata !DIExpression()), !dbg !556
  switch i32 %stretch, label %if.else121 [
    i32 10, label %if.then119
    i32 0, label %if.then119
  ], !dbg !688

if.then119:                                       ; preds = %if.end115, %if.end115
  %add120 = add nsw i64 %score.1, 8, !dbg !690
  call void @llvm.dbg.value(metadata i64 %add120, metadata !377, metadata !DIExpression()), !dbg !556
  br label %if.end134, !dbg !691

if.else121:                                       ; preds = %if.end115
  call void @llvm.dbg.value(metadata i64 8, metadata !375, metadata !DIExpression()), !dbg !556
  %stretch122 = getelementptr inbounds %struct._TypeInfo, ptr %.us-phi, i64 0, i32 6, !dbg !692
  %30 = load i32, ptr %stretch122, align 4, !dbg !692, !tbaa !607
  %conv123 = zext i32 %30 to i64, !dbg !694
  call void @llvm.dbg.value(metadata i64 %conv, metadata !673, metadata !DIExpression()) #12, !dbg !695
  call void @llvm.dbg.value(metadata i64 %conv123, metadata !676, metadata !DIExpression()) #12, !dbg !695
  %31 = tail call i64 @llvm.umax.i64(i64 %conv, i64 %conv123) #12, !dbg !695
  call void @llvm.dbg.value(metadata i64 %conv, metadata !664, metadata !DIExpression()) #12, !dbg !697
  call void @llvm.dbg.value(metadata i64 %conv123, metadata !669, metadata !DIExpression()) #12, !dbg !697
  %32 = tail call i64 @llvm.umin.i64(i64 %conv, i64 %conv123) #12, !dbg !697
  %sub129.neg = add nsw i64 %score.1, 8, !dbg !699
  %sub130 = sub nsw i64 %sub129.neg, %31, !dbg !700
  %add133 = add nsw i64 %sub130, %32, !dbg !701
  call void @llvm.dbg.value(metadata i64 %add133, metadata !377, metadata !DIExpression()), !dbg !556
  br label %if.end134

if.end134:                                        ; preds = %if.else121, %if.then119
  %score.2 = phi i64 [ %add120, %if.then119 ], [ %add133, %if.else121 ], !dbg !702
  call void @llvm.dbg.value(metadata i64 %score.2, metadata !377, metadata !DIExpression()), !dbg !556
  %cmp135 = icmp ugt i64 %score.2, %max_score.0.ph291, !dbg !703
  %spec.select = select i1 %cmp135, ptr %.us-phi, ptr %type_info.1.ph287, !dbg !705
  %33 = tail call i64 @llvm.umax.i64(i64 %score.2, i64 %max_score.0.ph291), !dbg !705
  call void @llvm.dbg.value(metadata i64 %33, metadata !376, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !372, metadata !DIExpression()), !dbg !556
  %34 = load ptr, ptr @type_cache, align 8, !dbg !706, !tbaa !416
  %call139 = tail call ptr @GetNextValueInSplayTree(ptr noundef %34) #12, !dbg !707
  call void @llvm.dbg.value(metadata ptr %call139, metadata !373, metadata !DIExpression()), !dbg !556
  %cmp56.not281 = icmp eq ptr %call139, null, !dbg !625
  br i1 %cmp56.not281, label %while.end140, label %while.body57.lr.ph, !dbg !626, !llvm.loop !647

while.end140:                                     ; preds = %if.end134, %while.cond55.backedge, %while.cond55.backedge.us
  %type_info.1.ph.lcssa = phi ptr [ %type_info.1.ph287, %while.cond55.backedge.us ], [ %type_info.1.ph287, %while.cond55.backedge ], [ %spec.select, %if.end134 ]
  %35 = load ptr, ptr @type_semaphore, align 8, !dbg !627, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %35) #12, !dbg !628
  %cmp141.not = icmp eq ptr %type_info.1.ph.lcssa, null, !dbg !708
  br i1 %cmp141.not, label %for.cond.preheader, label %cleanup, !dbg !629

for.cond.preheader:                               ; preds = %while.end140.thread, %while.end140
  call void @llvm.dbg.value(metadata i64 0, metadata !374, metadata !DIExpression()), !dbg !556
  %cmp147 = icmp eq ptr %family.tr, null
  br i1 %cmp147, label %for.body.us, label %for.body, !dbg !710

for.body.us:                                      ; preds = %for.cond.preheader, %for.inc.us
  %36 = phi ptr [ %37, %for.inc.us ], [ @.str.1, %for.cond.preheader ]
  %i.0293.us = phi i64 [ %inc.us, %for.inc.us ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0293.us, metadata !374, metadata !DIExpression()), !dbg !556
  %call152.us = tail call i32 @LocaleCompare(ptr noundef nonnull %36, ptr noundef nonnull @.str.11) #12, !dbg !714
  %cmp153.not.us = icmp eq i32 %call152.us, 0, !dbg !718
  br i1 %cmp153.not.us, label %for.end, label %land.lhs.true155.us, !dbg !719

land.lhs.true155.us:                              ; preds = %for.body.us
  %call158.us = tail call i32 @LocaleCompare(ptr noundef nonnull %36, ptr noundef nonnull @.str.6) #12, !dbg !720
  %cmp159.not.us = icmp eq i32 %call158.us, 0, !dbg !721
  br i1 %cmp159.not.us, label %for.end, label %for.inc.us, !dbg !722

for.inc.us:                                       ; preds = %land.lhs.true155.us
  %inc.us = add nuw nsw i64 %i.0293.us, 1, !dbg !723
  call void @llvm.dbg.value(metadata i64 %inc.us, metadata !374, metadata !DIExpression()), !dbg !556
  %arrayidx.us = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %inc.us, !dbg !724
  %37 = load ptr, ptr %arrayidx.us, align 16, !dbg !725, !tbaa !726
  %exitcond309 = icmp eq i64 %inc.us, 7, !dbg !728
  br i1 %exitcond309, label %if.end179, label %for.body.us, !dbg !729, !llvm.loop !730

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %38 = phi ptr [ %39, %for.inc ], [ @.str.1, %for.cond.preheader ]
  %i.0293 = phi i64 [ %inc, %for.inc ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0293, metadata !374, metadata !DIExpression()), !dbg !556
  %call166 = tail call i32 @LocaleCompare(ptr noundef nonnull %38, ptr noundef nonnull %family.tr) #12, !dbg !732
  %cmp167.not = icmp eq i32 %call166, 0, !dbg !734
  br i1 %cmp167.not, label %for.end, label %for.inc, !dbg !735

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i64 %i.0293, 1, !dbg !723
  call void @llvm.dbg.value(metadata i64 %inc, metadata !374, metadata !DIExpression()), !dbg !556
  %arrayidx = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %inc, !dbg !724
  %39 = load ptr, ptr %arrayidx, align 16, !dbg !725, !tbaa !726
  %exitcond = icmp eq i64 %inc, 7, !dbg !728
  br i1 %exitcond, label %if.end179, label %for.body, !dbg !729, !llvm.loop !730

for.end:                                          ; preds = %for.body, %for.body.us, %land.lhs.true155.us
  %.us-phi295 = phi i64 [ %i.0293.us, %land.lhs.true155.us ], [ %i.0293.us, %for.body.us ], [ %i.0293, %for.body ]
  %substitute = getelementptr inbounds [8 x %struct._Fontmap], ptr @GetTypeInfoByFamily.fontmap, i64 0, i64 %.us-phi295, i32 1, !dbg !736
  %40 = load ptr, ptr %substitute, align 8, !dbg !736, !tbaa !737
  %call173 = tail call ptr @GetTypeInfoByFamily(ptr noundef %40, i32 noundef %style, i32 noundef %stretch, i64 noundef %weight, ptr noundef %exception), !dbg !738
  call void @llvm.dbg.value(metadata ptr %call173, metadata !372, metadata !DIExpression()), !dbg !556
  %cmp174.not = icmp eq ptr %call173, null, !dbg !739
  br i1 %cmp174.not, label %if.end179, label %if.then176, !dbg !741

if.then176:                                       ; preds = %for.end
  %family177 = getelementptr inbounds %struct._TypeInfo, ptr %call173, i64 0, i32 4, !dbg !742
  %41 = load ptr, ptr %family177, align 8, !dbg !742, !tbaa !575
  %call178 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 519, i32 noundef 405, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %41) #12, !dbg !744
  br label %cleanup, !dbg !745

if.end179:                                        ; preds = %for.inc, %for.inc.us, %for.end
  br i1 %cmp147, label %cleanup, label %tailrecurse, !dbg !746

cleanup:                                          ; preds = %if.end179, %while.end140, %tailrecurse, %while.end.thread, %if.then176
  %retval.0 = phi ptr [ %call173, %if.then176 ], [ %p.0280, %while.end.thread ], [ null, %if.end179 ], [ %type_info.1.ph.lcssa, %while.end140 ], [ null, %tailrecurse ], !dbg !556
  ret ptr %retval.0, !dbg !747
}

declare !dbg !748 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_fonts, ptr noundef %exception) local_unnamed_addr #0 !dbg !752 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !757, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr %number_fonts, metadata !758, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr %exception, metadata !759, metadata !DIExpression()), !dbg !763
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 594, ptr noundef nonnull @.str.16, ptr noundef %pattern) #12, !dbg !764
  store i64 0, ptr %number_fonts, align 8, !dbg !765, !tbaa !766
  %call1 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !767
  call void @llvm.dbg.value(metadata ptr %call1, metadata !761, metadata !DIExpression()), !dbg !763
  %cmp = icmp eq ptr %call1, null, !dbg !768
  br i1 %cmp, label %cleanup, label %if.end, !dbg !770

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @type_cache, align 8, !dbg !771, !tbaa !416
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #12, !dbg !772
  %add = add i64 %call2, 1, !dbg !773
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !774
  call void @llvm.dbg.value(metadata ptr %call3, metadata !760, metadata !DIExpression()), !dbg !763
  %cmp4 = icmp eq ptr %call3, null, !dbg !775
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !777

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @type_semaphore, align 8, !dbg !778, !tbaa !416
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !779
  %2 = load ptr, ptr @type_cache, align 8, !dbg !780, !tbaa !416
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #12, !dbg !781
  %3 = load ptr, ptr @type_cache, align 8, !dbg !782, !tbaa !416
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #12, !dbg !783
  call void @llvm.dbg.value(metadata ptr %call7, metadata !761, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i64 0, metadata !762, metadata !DIExpression()), !dbg !763
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !784
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !787

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !762, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !761, metadata !DIExpression()), !dbg !763
  %stealth = getelementptr inbounds %struct._TypeInfo, ptr %p.032, i64 0, i32 13, !dbg !788
  %4 = load i32, ptr %stealth, align 8, !dbg !788, !tbaa !791
  %cmp9 = icmp eq i32 %4, 0, !dbg !792
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !793

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._TypeInfo, ptr %p.032, i64 0, i32 2, !dbg !794
  %5 = load ptr, ptr %name, align 8, !dbg !794, !tbaa !795
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #12, !dbg !796
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !797
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !798

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !799
  call void @llvm.dbg.value(metadata i64 %inc, metadata !762, metadata !DIExpression()), !dbg !763
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !800
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !801, !tbaa !416
  br label %if.end13, !dbg !800

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !802
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !762, metadata !DIExpression()), !dbg !763
  %6 = load ptr, ptr @type_cache, align 8, !dbg !803, !tbaa !416
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %6) #12, !dbg !804
  call void @llvm.dbg.value(metadata ptr %call14, metadata !761, metadata !DIExpression()), !dbg !763
  %cmp8.not = icmp eq ptr %call14, null, !dbg !784
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !787, !llvm.loop !805

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !802
  %7 = load ptr, ptr @type_semaphore, align 8, !dbg !807, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #12, !dbg !808
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @TypeInfoCompare) #12, !dbg !809
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !810
  store ptr null, ptr %arrayidx15, align 8, !dbg !811, !tbaa !416
  store i64 %i.0.lcssa, ptr %number_fonts, align 8, !dbg !812, !tbaa !766
  br label %cleanup, !dbg !813

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !763
  ret ptr %retval.0, !dbg !814
}

declare !dbg !815 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !820 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !824 i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !829 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare !dbg !834 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @TypeInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !842 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !844, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr %y, metadata !845, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr %x, metadata !846, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata ptr %y, metadata !847, metadata !DIExpression()), !dbg !848
  %0 = load ptr, ptr %x, align 8, !dbg !849, !tbaa !416
  %path = getelementptr inbounds %struct._TypeInfo, ptr %0, i64 0, i32 1, !dbg !851
  %1 = load ptr, ptr %path, align 8, !dbg !851, !tbaa !852
  %2 = load ptr, ptr %y, align 8, !dbg !853, !tbaa !416
  %path1 = getelementptr inbounds %struct._TypeInfo, ptr %2, i64 0, i32 1, !dbg !854
  %3 = load ptr, ptr %path1, align 8, !dbg !854, !tbaa !852
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #12, !dbg !855
  %cmp = icmp eq i32 %call, 0, !dbg !856
  %4 = load ptr, ptr %x, align 8, !dbg !848, !tbaa !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !857

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._TypeInfo, ptr %4, i64 0, i32 2, !dbg !858
  %5 = load ptr, ptr %y, align 8, !dbg !859, !tbaa !416
  %name2 = getelementptr inbounds %struct._TypeInfo, ptr %5, i64 0, i32 2, !dbg !860
  br label %cleanup, !dbg !861

if.end:                                           ; preds = %entry
  %path4 = getelementptr inbounds %struct._TypeInfo, ptr %4, i64 0, i32 1, !dbg !862
  %6 = load ptr, ptr %y, align 8, !dbg !863, !tbaa !416
  %path5 = getelementptr inbounds %struct._TypeInfo, ptr %6, i64 0, i32 1, !dbg !864
  br label %cleanup, !dbg !865

cleanup:                                          ; preds = %if.end, %if.then
  %path5.sink = phi ptr [ %path5, %if.end ], [ %name2, %if.then ]
  %.sink.in = phi ptr [ %path4, %if.end ], [ %name, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !848, !tbaa !416
  %7 = load ptr, ptr %path5.sink, align 8, !dbg !848, !tbaa !416
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #12, !dbg !848
  ret i32 %call6, !dbg !866
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetTypeList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_fonts, ptr noundef %exception) local_unnamed_addr #0 !dbg !867 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !871, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %number_fonts, metadata !872, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %exception, metadata !873, metadata !DIExpression()), !dbg !877
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 687, ptr noundef nonnull @.str.16, ptr noundef %pattern) #12, !dbg !878
  store i64 0, ptr %number_fonts, align 8, !dbg !879, !tbaa !766
  %call1 = tail call ptr @GetTypeInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !880
  call void @llvm.dbg.value(metadata ptr %call1, metadata !875, metadata !DIExpression()), !dbg !877
  %cmp = icmp eq ptr %call1, null, !dbg !881
  br i1 %cmp, label %cleanup, label %if.end, !dbg !883

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @type_cache, align 8, !dbg !884, !tbaa !416
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #12, !dbg !885
  %add = add i64 %call2, 1, !dbg !886
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !887
  call void @llvm.dbg.value(metadata ptr %call3, metadata !874, metadata !DIExpression()), !dbg !877
  %cmp4 = icmp eq ptr %call3, null, !dbg !888
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !890

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @type_semaphore, align 8, !dbg !891, !tbaa !416
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !892
  %2 = load ptr, ptr @type_cache, align 8, !dbg !893, !tbaa !416
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #12, !dbg !894
  %3 = load ptr, ptr @type_cache, align 8, !dbg !895, !tbaa !416
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #12, !dbg !896
  call void @llvm.dbg.value(metadata ptr %call7, metadata !875, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata i64 0, metadata !876, metadata !DIExpression()), !dbg !877
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !897
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !900

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !876, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !875, metadata !DIExpression()), !dbg !877
  %stealth = getelementptr inbounds %struct._TypeInfo, ptr %p.034, i64 0, i32 13, !dbg !901
  %4 = load i32, ptr %stealth, align 8, !dbg !901, !tbaa !791
  %cmp9 = icmp eq i32 %4, 0, !dbg !904
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !905

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._TypeInfo, ptr %p.034, i64 0, i32 2, !dbg !906
  %5 = load ptr, ptr %name, align 8, !dbg !906, !tbaa !795
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #12, !dbg !907
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !908
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !909

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !910, !tbaa !795
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #12, !dbg !911
  %inc = add nsw i64 %i.035, 1, !dbg !912
  call void @llvm.dbg.value(metadata i64 %inc, metadata !876, metadata !DIExpression()), !dbg !877
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !913
  store ptr %call14, ptr %arrayidx, align 8, !dbg !914, !tbaa !416
  br label %if.end15, !dbg !913

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !915
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !876, metadata !DIExpression()), !dbg !877
  %7 = load ptr, ptr @type_cache, align 8, !dbg !916, !tbaa !416
  %call16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %7) #12, !dbg !917
  call void @llvm.dbg.value(metadata ptr %call16, metadata !875, metadata !DIExpression()), !dbg !877
  %cmp8.not = icmp eq ptr %call16, null, !dbg !897
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !900, !llvm.loop !918

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !915
  %8 = load ptr, ptr @type_semaphore, align 8, !dbg !920, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #12, !dbg !921
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @TypeCompare) #12, !dbg !922
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !923
  store ptr null, ptr %arrayidx17, align 8, !dbg !924, !tbaa !416
  store i64 %i.0.lcssa, ptr %number_fonts, align 8, !dbg !925, !tbaa !766
  br label %cleanup, !dbg !926

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !877
  ret ptr %retval.0, !dbg !927
}

declare !dbg !928 ptr @ConstantString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @TypeCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !931 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !933, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr %y, metadata !934, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr %x, metadata !935, metadata !DIExpression()), !dbg !937
  call void @llvm.dbg.value(metadata ptr %y, metadata !936, metadata !DIExpression()), !dbg !937
  %0 = load ptr, ptr %x, align 8, !dbg !938, !tbaa !416
  %1 = load ptr, ptr %y, align 8, !dbg !939, !tbaa !416
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #12, !dbg !940
  ret i32 %call, !dbg !941
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListTypeInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !942 {
entry:
  %weight = alloca [4096 x i8], align 16
  %number_fonts = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !946, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %exception, metadata !947, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %weight) #12, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %weight, metadata !948, metadata !DIExpression()), !dbg !960
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_fonts) #12, !dbg !961
  %cmp = icmp eq ptr %file, null, !dbg !962
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !964
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !946, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 0, metadata !957, metadata !DIExpression()), !dbg !958
  store i64 0, ptr %number_fonts, align 8, !dbg !965, !tbaa !766
  call void @llvm.dbg.value(metadata ptr %number_fonts, metadata !957, metadata !DIExpression(DW_OP_deref)), !dbg !958
  %call = call ptr @GetTypeInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %number_fonts, ptr noundef %exception), !dbg !966
  call void @llvm.dbg.value(metadata ptr %call, metadata !955, metadata !DIExpression()), !dbg !958
  %cmp1 = icmp eq ptr %call, null, !dbg !967
  br i1 %cmp1, label %cleanup, label %if.end3, !dbg !969

if.end3:                                          ; preds = %entry
  store i8 0, ptr %weight, align 16, !dbg !970, !tbaa !472
  call void @llvm.dbg.value(metadata ptr null, metadata !952, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 0, metadata !956, metadata !DIExpression()), !dbg !958
  %1 = load i64, ptr %number_fonts, align 8, !tbaa !766
  call void @llvm.dbg.value(metadata i64 0, metadata !956, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr null, metadata !952, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 %1, metadata !957, metadata !DIExpression()), !dbg !958
  %cmp4120 = icmp sgt i64 %1, 0, !dbg !971
  br i1 %cmp4120, label %for.body, label %for.end, !dbg !974

for.body:                                         ; preds = %if.end3, %for.inc
  %i.0122 = phi i64 [ %inc, %for.inc ], [ 0, %if.end3 ]
  %path.0121 = phi ptr [ %path.1, %for.inc ], [ null, %if.end3 ]
  call void @llvm.dbg.value(metadata i64 %i.0122, metadata !956, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr %path.0121, metadata !952, metadata !DIExpression()), !dbg !958
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.0122, !dbg !975
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !975, !tbaa !416
  %stealth = getelementptr inbounds %struct._TypeInfo, ptr %2, i64 0, i32 13, !dbg !978
  %3 = load i32, ptr %stealth, align 8, !dbg !978, !tbaa !791
  %cmp5.not = icmp eq i32 %3, 0, !dbg !979
  br i1 %cmp5.not, label %if.end7, label %for.inc, !dbg !980

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.0121, null, !dbg !981
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false, !dbg !983

lor.lhs.false:                                    ; preds = %if.end7
  %path10 = getelementptr inbounds %struct._TypeInfo, ptr %2, i64 0, i32 1, !dbg !984
  %4 = load ptr, ptr %path10, align 8, !dbg !984, !tbaa !852
  %call11 = call i32 @LocaleCompare(ptr noundef nonnull %path.0121, ptr noundef %4) #12, !dbg !985
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !986
  br i1 %cmp12.not, label %if.end20, label %lor.lhs.false.land.lhs.true_crit_edge, !dbg !987

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !988, !tbaa !416
  br label %land.lhs.true, !dbg !987

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.land.lhs.true_crit_edge ], [ %2, %if.end7 ], !dbg !988
  %path14 = getelementptr inbounds %struct._TypeInfo, ptr %5, i64 0, i32 1, !dbg !989
  %6 = load ptr, ptr %path14, align 8, !dbg !989, !tbaa !852
  %cmp15.not = icmp eq ptr %6, null, !dbg !990
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !991

if.then16:                                        ; preds = %land.lhs.true
  %call19 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #12, !dbg !992
  br label %if.end20, !dbg !993

if.end20:                                         ; preds = %if.then16, %land.lhs.true, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !994, !tbaa !416
  %path22 = getelementptr inbounds %struct._TypeInfo, ptr %7, i64 0, i32 1, !dbg !995
  %8 = load ptr, ptr %path22, align 8, !dbg !995, !tbaa !852
  call void @llvm.dbg.value(metadata ptr %8, metadata !952, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !951, metadata !DIExpression()), !dbg !958
  %name24 = getelementptr inbounds %struct._TypeInfo, ptr %7, i64 0, i32 2, !dbg !996
  %9 = load ptr, ptr %name24, align 8, !dbg !996, !tbaa !795
  %cmp25.not = icmp eq ptr %9, null, !dbg !998
  %spec.select117 = select i1 %cmp25.not, ptr @.str.18, ptr %9, !dbg !999
  call void @llvm.dbg.value(metadata ptr %spec.select117, metadata !951, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !949, metadata !DIExpression()), !dbg !958
  %family31 = getelementptr inbounds %struct._TypeInfo, ptr %7, i64 0, i32 4, !dbg !1000
  %10 = load ptr, ptr %family31, align 8, !dbg !1000, !tbaa !575
  %cmp32.not = icmp eq ptr %10, null, !dbg !1002
  %spec.select119 = select i1 %cmp32.not, ptr @.str.18, ptr %10, !dbg !1003
  call void @llvm.dbg.value(metadata ptr %spec.select119, metadata !949, metadata !DIExpression()), !dbg !958
  %style38 = getelementptr inbounds %struct._TypeInfo, ptr %7, i64 0, i32 5, !dbg !1004
  %11 = load i32, ptr %style38, align 8, !dbg !1004, !tbaa !601
  %conv = zext i32 %11 to i64, !dbg !1005
  %call39 = call ptr @CommandOptionToMnemonic(i32 noundef 64, i64 noundef %conv) #12, !dbg !1006
  call void @llvm.dbg.value(metadata ptr %call39, metadata !954, metadata !DIExpression()), !dbg !958
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !1007, !tbaa !416
  %stretch41 = getelementptr inbounds %struct._TypeInfo, ptr %12, i64 0, i32 6, !dbg !1008
  %13 = load i32, ptr %stretch41, align 4, !dbg !1008, !tbaa !607
  %conv42 = zext i32 %13 to i64, !dbg !1007
  %call43 = call ptr @CommandOptionToMnemonic(i32 noundef 63, i64 noundef %conv42) #12, !dbg !1009
  call void @llvm.dbg.value(metadata ptr %call43, metadata !953, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.18, metadata !950, metadata !DIExpression()), !dbg !958
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !1010, !tbaa !416
  %glyphs45 = getelementptr inbounds %struct._TypeInfo, ptr %14, i64 0, i32 12, !dbg !1012
  %15 = load ptr, ptr %glyphs45, align 8, !dbg !1012, !tbaa !1013
  %cmp46.not = icmp eq ptr %15, null, !dbg !1014
  %spec.select118 = select i1 %cmp46.not, ptr @.str.18, ptr %15, !dbg !1015
  call void @llvm.dbg.value(metadata ptr %spec.select118, metadata !950, metadata !DIExpression()), !dbg !958
  %weight54 = getelementptr inbounds %struct._TypeInfo, ptr %14, i64 0, i32 7, !dbg !1016
  %16 = load i64, ptr %weight54, align 8, !dbg !1016, !tbaa !613
  %conv55 = uitofp i64 %16 to double, !dbg !1017
  %call56 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %weight, i64 noundef 4096, ptr noundef nonnull @.str.19, double noundef %conv55) #12, !dbg !1018
  %call57 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.20, ptr noundef nonnull %spec.select117) #12, !dbg !1019
  %call58 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.21, ptr noundef nonnull %spec.select119) #12, !dbg !1020
  %call59 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.22, ptr noundef %call39) #12, !dbg !1021
  %call60 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.23, ptr noundef %call43) #12, !dbg !1022
  %call62 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.24, ptr noundef nonnull %weight) #12, !dbg !1023
  %call63 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.25, ptr noundef nonnull %spec.select118) #12, !dbg !1024
  br label %for.inc, !dbg !1025

for.inc:                                          ; preds = %for.body, %if.end20
  %path.1 = phi ptr [ %path.0121, %for.body ], [ %8, %if.end20 ], !dbg !958
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !952, metadata !DIExpression()), !dbg !958
  %inc = add nuw nsw i64 %i.0122, 1, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %inc, metadata !956, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i64 %1, metadata !957, metadata !DIExpression()), !dbg !958
  %exitcond.not = icmp eq i64 %inc, %1, !dbg !971
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !974, !llvm.loop !1027

for.end:                                          ; preds = %for.inc, %if.end3
  %call64 = call i32 @fflush(ptr noundef %spec.select), !dbg !1029
  %call65 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #12, !dbg !1030
  call void @llvm.dbg.value(metadata ptr %call65, metadata !955, metadata !DIExpression()), !dbg !958
  br label %cleanup, !dbg !1031

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ 1, %for.end ], [ 0, %entry ], !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_fonts) #12, !dbg !1032
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %weight) #12, !dbg !1032
  ret i32 %retval.0, !dbg !1032
}

declare !dbg !1033 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1038 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1044 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1048 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !1051 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @TypeComponentGenesis() local_unnamed_addr #0 !dbg !1052 {
entry:
  %0 = load ptr, ptr @type_semaphore, align 8, !dbg !1055, !tbaa !416
  %cmp = icmp eq ptr %0, null, !dbg !1057
  br i1 %cmp, label %if.then, label %if.end, !dbg !1058

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #12, !dbg !1059
  store ptr %call, ptr @type_semaphore, align 8, !dbg !1060, !tbaa !416
  br label %if.end, !dbg !1061

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !1062
}

declare !dbg !1063 ptr @AllocateSemaphoreInfo() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @TypeComponentTerminus() local_unnamed_addr #0 !dbg !1066 {
entry:
  %0 = load ptr, ptr @type_semaphore, align 8, !dbg !1069, !tbaa !416
  %cmp = icmp eq ptr %0, null, !dbg !1071
  br i1 %cmp, label %if.then, label %if.end, !dbg !1072

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @type_semaphore) #12, !dbg !1073
  %.pre = load ptr, ptr @type_semaphore, align 8, !dbg !1074, !tbaa !416
  br label %if.end, !dbg !1073

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !1074
  tail call void @LockSemaphoreInfo(ptr noundef %1) #12, !dbg !1075
  %2 = load ptr, ptr @type_cache, align 8, !dbg !1076, !tbaa !416
  %cmp1.not = icmp eq ptr %2, null, !dbg !1078
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !1079

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #12, !dbg !1080
  store ptr %call, ptr @type_cache, align 8, !dbg !1081, !tbaa !416
  br label %if.end3, !dbg !1082

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @type_semaphore, align 8, !dbg !1083, !tbaa !416
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #12, !dbg !1084
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @type_semaphore) #12, !dbg !1085
  ret void, !dbg !1086
}

declare !dbg !1087 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1091 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #3

declare !dbg !1094 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1095 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @DestroyTypeNode(ptr noundef %type_info) #0 !dbg !1098 {
entry:
  call void @llvm.dbg.value(metadata ptr %type_info, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr %type_info, metadata !1101, metadata !DIExpression()), !dbg !1102
  %path = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 1, !dbg !1103
  %0 = load ptr, ptr %path, align 8, !dbg !1103, !tbaa !852
  %cmp.not = icmp eq ptr %0, null, !dbg !1105
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1106

if.then:                                          ; preds = %entry
  %call = tail call ptr @DestroyString(ptr noundef nonnull %0) #12, !dbg !1107
  store ptr %call, ptr %path, align 8, !dbg !1108, !tbaa !852
  br label %if.end, !dbg !1109

if.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 2, !dbg !1110
  %1 = load ptr, ptr %name, align 8, !dbg !1110, !tbaa !795
  %cmp3.not = icmp eq ptr %1, null, !dbg !1112
  br i1 %cmp3.not, label %if.end8, label %if.then4, !dbg !1113

if.then4:                                         ; preds = %if.end
  %call6 = tail call ptr @DestroyString(ptr noundef nonnull %1) #12, !dbg !1114
  store ptr %call6, ptr %name, align 8, !dbg !1115, !tbaa !795
  br label %if.end8, !dbg !1116

if.end8:                                          ; preds = %if.then4, %if.end
  %description = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 3, !dbg !1117
  %2 = load ptr, ptr %description, align 8, !dbg !1117, !tbaa !1119
  %cmp9.not = icmp eq ptr %2, null, !dbg !1120
  br i1 %cmp9.not, label %if.end14, label %if.then10, !dbg !1121

if.then10:                                        ; preds = %if.end8
  %call12 = tail call ptr @DestroyString(ptr noundef nonnull %2) #12, !dbg !1122
  store ptr %call12, ptr %description, align 8, !dbg !1123, !tbaa !1119
  br label %if.end14, !dbg !1124

if.end14:                                         ; preds = %if.then10, %if.end8
  %family = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 4, !dbg !1125
  %3 = load ptr, ptr %family, align 8, !dbg !1125, !tbaa !575
  %cmp15.not = icmp eq ptr %3, null, !dbg !1127
  br i1 %cmp15.not, label %if.end20, label %if.then16, !dbg !1128

if.then16:                                        ; preds = %if.end14
  %call18 = tail call ptr @DestroyString(ptr noundef nonnull %3) #12, !dbg !1129
  store ptr %call18, ptr %family, align 8, !dbg !1130, !tbaa !575
  br label %if.end20, !dbg !1131

if.end20:                                         ; preds = %if.then16, %if.end14
  %encoding = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 8, !dbg !1132
  %4 = load ptr, ptr %encoding, align 8, !dbg !1132, !tbaa !1134
  %cmp21.not = icmp eq ptr %4, null, !dbg !1135
  br i1 %cmp21.not, label %if.end26, label %if.then22, !dbg !1136

if.then22:                                        ; preds = %if.end20
  %call24 = tail call ptr @DestroyString(ptr noundef nonnull %4) #12, !dbg !1137
  store ptr %call24, ptr %encoding, align 8, !dbg !1138, !tbaa !1134
  br label %if.end26, !dbg !1139

if.end26:                                         ; preds = %if.then22, %if.end20
  %foundry = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 9, !dbg !1140
  %5 = load ptr, ptr %foundry, align 8, !dbg !1140, !tbaa !1142
  %cmp27.not = icmp eq ptr %5, null, !dbg !1143
  br i1 %cmp27.not, label %if.end32, label %if.then28, !dbg !1144

if.then28:                                        ; preds = %if.end26
  %call30 = tail call ptr @DestroyString(ptr noundef nonnull %5) #12, !dbg !1145
  store ptr %call30, ptr %foundry, align 8, !dbg !1146, !tbaa !1142
  br label %if.end32, !dbg !1147

if.end32:                                         ; preds = %if.then28, %if.end26
  %format = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 10, !dbg !1148
  %6 = load ptr, ptr %format, align 8, !dbg !1148, !tbaa !1150
  %cmp33.not = icmp eq ptr %6, null, !dbg !1151
  br i1 %cmp33.not, label %if.end38, label %if.then34, !dbg !1152

if.then34:                                        ; preds = %if.end32
  %call36 = tail call ptr @DestroyString(ptr noundef nonnull %6) #12, !dbg !1153
  store ptr %call36, ptr %format, align 8, !dbg !1154, !tbaa !1150
  br label %if.end38, !dbg !1155

if.end38:                                         ; preds = %if.then34, %if.end32
  %metrics = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 11, !dbg !1156
  %7 = load ptr, ptr %metrics, align 8, !dbg !1156, !tbaa !1158
  %cmp39.not = icmp eq ptr %7, null, !dbg !1159
  br i1 %cmp39.not, label %if.end44, label %if.then40, !dbg !1160

if.then40:                                        ; preds = %if.end38
  %call42 = tail call ptr @DestroyString(ptr noundef nonnull %7) #12, !dbg !1161
  store ptr %call42, ptr %metrics, align 8, !dbg !1162, !tbaa !1158
  br label %if.end44, !dbg !1163

if.end44:                                         ; preds = %if.then40, %if.end38
  %glyphs = getelementptr inbounds %struct._TypeInfo, ptr %type_info, i64 0, i32 12, !dbg !1164
  %8 = load ptr, ptr %glyphs, align 8, !dbg !1164, !tbaa !1013
  %cmp45.not = icmp eq ptr %8, null, !dbg !1166
  br i1 %cmp45.not, label %if.end50, label %if.then46, !dbg !1167

if.then46:                                        ; preds = %if.end44
  %call48 = tail call ptr @DestroyString(ptr noundef nonnull %8) #12, !dbg !1168
  store ptr %call48, ptr %glyphs, align 8, !dbg !1169, !tbaa !1013
  br label %if.end50, !dbg !1170

if.end50:                                         ; preds = %if.then46, %if.end44
  %call51 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %type_info) #12, !dbg !1171
  ret ptr %call51, !dbg !1172
}

declare !dbg !1173 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1176 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #7

declare !dbg !1180 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !1183 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !1184 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !1187 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #8

declare !dbg !1189 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1193 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #3

declare !dbg !1196 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1199 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadTypeCache(ptr noundef %type_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !1202 {
entry:
  %font_path = alloca [4096 x i8], align 16
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception119 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %type_cache, metadata !1206, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1207, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1208, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %depth, metadata !1209, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %exception, metadata !1210, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %font_path) #12, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %font_path, metadata !1211, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #12, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !1212, metadata !DIExpression()), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #12, !dbg !1240
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1104, ptr noundef nonnull @.str.32, ptr noundef %filename) #12, !dbg !1241
  %cmp = icmp eq ptr %xml, null, !dbg !1242
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1244

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !1215, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr null, metadata !1216, metadata !DIExpression()), !dbg !1236
  %call1 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #12, !dbg !1245
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1213, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1214, metadata !DIExpression()), !dbg !1236
  store ptr %xml, ptr %q, align 8, !dbg !1246, !tbaa !416
  call void @llvm.dbg.value(metadata ptr null, metadata !1216, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 1, metadata !1215, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %xml, metadata !1214, metadata !DIExpression()), !dbg !1236
  %0 = load i8, ptr %xml, align 1, !dbg !1247, !tbaa !472
  %cmp2.not368 = icmp eq i8 %0, 0, !dbg !1248
  br i1 %cmp2.not368, label %for.end, label %for.body.lr.ph, !dbg !1249

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp69 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !1249

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %type_info.0370 = phi ptr [ null, %for.body.lr.ph ], [ %type_info.0.be, %for.cond.backedge ]
  %status.0369 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata ptr %type_info.0370, metadata !1216, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %status.0369, metadata !1215, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #12, !dbg !1250
  %2 = load i8, ptr %call1, align 1, !dbg !1251, !tbaa !472
  %cmp5 = icmp eq i8 %2, 0, !dbg !1253
  br i1 %cmp5, label %for.end, label %if.end8, !dbg !1254

if.end8:                                          ; preds = %for.body
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #12, !dbg !1255
  %call11 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.33, i64 noundef 9) #12, !dbg !1256
  %cmp12 = icmp eq i32 %call11, 0, !dbg !1258
  br i1 %cmp12, label %while.cond.preheader, label %if.end21, !dbg !1259

while.cond.preheader:                             ; preds = %if.end8
  %3 = load ptr, ptr %q, align 8, !dbg !1260, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %3, metadata !1214, metadata !DIExpression()), !dbg !1236
  %call15366 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.34, i64 noundef 2) #12, !dbg !1262
  %cmp16.not367 = icmp eq i32 %call15366, 0, !dbg !1263
  br i1 %cmp16.not367, label %for.cond.backedge, label %land.rhs, !dbg !1264

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !1265, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %4, metadata !1214, metadata !DIExpression()), !dbg !1236
  %5 = load i8, ptr %4, align 1, !dbg !1266, !tbaa !472
  %cmp19.not = icmp eq i8 %5, 0, !dbg !1267
  br i1 %cmp19.not, label %for.cond.backedge, label %while.body, !dbg !1268

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #12, !dbg !1269
  %6 = load ptr, ptr %q, align 8, !dbg !1260, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %6, metadata !1214, metadata !DIExpression()), !dbg !1236
  %call15 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.34, i64 noundef 2) #12, !dbg !1262
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !1263
  br i1 %cmp16.not, label %for.cond.backedge, label %land.rhs, !dbg !1264, !llvm.loop !1270

for.cond.backedge:                                ; preds = %while.body36, %land.rhs31, %while.body, %land.rhs, %land.rhs51.us, %land.lhs.true.us, %while.cond44.us, %while.cond44, %land.lhs.true, %land.rhs51, %if.then158, %if.then166, %if.then173, %if.then180, %if.then187, %if.then194, %if.then230, %if.then239, %if.then246, %if.then254, %sw.bb, %if.end189, %if.then207, %if.then202, %sw.bb197, %if.then221, %if.then216, %sw.bb211, %sw.bb225, %if.end249, %if.then274, %if.end270, %sw.bb258, %if.end151, %if.then138, %if.then142, %while.cond27.preheader, %while.cond.preheader, %if.end125, %if.end129, %if.end146
  %status.0.be = phi i32 [ %status.0369, %if.end125 ], [ %status.0369, %if.end129 ], [ %status.0369, %if.end146 ], [ %status.0369, %while.cond.preheader ], [ %status.0369, %while.cond27.preheader ], [ 0, %if.then142 ], [ %call139, %if.then138 ], [ %status.0369, %if.end151 ], [ %status.0369, %sw.bb258 ], [ %status.0369, %if.end270 ], [ %status.0369, %if.then274 ], [ %status.0369, %if.end249 ], [ %status.0369, %sw.bb225 ], [ %status.0369, %sw.bb211 ], [ %status.0369, %if.then216 ], [ %status.0369, %if.then221 ], [ %status.0369, %sw.bb197 ], [ %status.0369, %if.then202 ], [ %status.0369, %if.then207 ], [ %status.0369, %if.end189 ], [ %status.0369, %sw.bb ], [ %status.0369, %if.then254 ], [ %status.0369, %if.then246 ], [ %status.0369, %if.then239 ], [ %status.0369, %if.then230 ], [ %status.0369, %if.then194 ], [ %status.0369, %if.then187 ], [ %status.0369, %if.then180 ], [ %status.0369, %if.then173 ], [ %status.0369, %if.then166 ], [ %status.0369, %if.then158 ], [ %status.1.ph.ph363, %land.rhs51 ], [ %status.1.ph.ph363, %land.lhs.true ], [ %status.1.ph.ph363, %while.cond44 ], [ %status.0369, %while.cond44.us ], [ %status.0369, %land.lhs.true.us ], [ %status.0369, %land.rhs51.us ], [ %status.0369, %land.rhs ], [ %status.0369, %while.body ], [ %status.0369, %land.rhs31 ], [ %status.0369, %while.body36 ]
  %type_info.0.be = phi ptr [ %call115, %if.end125 ], [ null, %if.end129 ], [ %type_info.0370, %if.end146 ], [ %type_info.0370, %while.cond.preheader ], [ %type_info.0370, %while.cond27.preheader ], [ null, %if.then142 ], [ null, %if.then138 ], [ %type_info.0370, %if.end151 ], [ %type_info.0370, %sw.bb258 ], [ %type_info.0370, %if.end270 ], [ %type_info.0370, %if.then274 ], [ %type_info.0370, %if.end249 ], [ %type_info.0370, %sw.bb225 ], [ %type_info.0370, %sw.bb211 ], [ %type_info.0370, %if.then216 ], [ %call222, %if.then221 ], [ %type_info.0370, %sw.bb197 ], [ %type_info.0370, %if.then202 ], [ %call208, %if.then207 ], [ %type_info.0370, %if.end189 ], [ %type_info.0370, %sw.bb ], [ %type_info.0370, %if.then254 ], [ %type_info.0370, %if.then246 ], [ %type_info.0370, %if.then239 ], [ %type_info.0370, %if.then230 ], [ %type_info.0370, %if.then194 ], [ %type_info.0370, %if.then187 ], [ %type_info.0370, %if.then180 ], [ %type_info.0370, %if.then173 ], [ %type_info.0370, %if.then166 ], [ %type_info.0370, %if.then158 ], [ %type_info.0370, %land.rhs51 ], [ %type_info.0370, %land.lhs.true ], [ %type_info.0370, %while.cond44 ], [ %type_info.0370, %while.cond44.us ], [ %type_info.0370, %land.lhs.true.us ], [ %type_info.0370, %land.rhs51.us ], [ %type_info.0370, %land.rhs ], [ %type_info.0370, %while.body ], [ %type_info.0370, %land.rhs31 ], [ %type_info.0370, %while.body36 ]
  call void @llvm.dbg.value(metadata ptr %type_info.0.be, metadata !1216, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !1215, metadata !DIExpression()), !dbg !1236
  %7 = load ptr, ptr %q, align 8, !dbg !1272, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %7, metadata !1214, metadata !DIExpression()), !dbg !1236
  %8 = load i8, ptr %7, align 1, !dbg !1247, !tbaa !472
  %cmp2.not = icmp eq i8 %8, 0, !dbg !1248
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !1249, !llvm.loop !1273

if.end21:                                         ; preds = %if.end8
  %call23 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.35, i64 noundef 4) #12, !dbg !1275
  %cmp24 = icmp eq i32 %call23, 0, !dbg !1277
  br i1 %cmp24, label %while.cond27.preheader, label %if.end38, !dbg !1278

while.cond27.preheader:                           ; preds = %if.end21
  %9 = load ptr, ptr %q, align 8, !dbg !1279, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %9, metadata !1214, metadata !DIExpression()), !dbg !1236
  %call28364 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.36, i64 noundef 2) #12, !dbg !1281
  %cmp29.not365 = icmp eq i32 %call28364, 0, !dbg !1282
  br i1 %cmp29.not365, label %for.cond.backedge, label %land.rhs31, !dbg !1283

land.rhs31:                                       ; preds = %while.cond27.preheader, %while.body36
  %10 = load ptr, ptr %q, align 8, !dbg !1284, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %10, metadata !1214, metadata !DIExpression()), !dbg !1236
  %11 = load i8, ptr %10, align 1, !dbg !1285, !tbaa !472
  %cmp33.not = icmp eq i8 %11, 0, !dbg !1286
  br i1 %cmp33.not, label %for.cond.backedge, label %while.body36, !dbg !1287

while.body36:                                     ; preds = %land.rhs31
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #12, !dbg !1288
  %12 = load ptr, ptr %q, align 8, !dbg !1279, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %12, metadata !1214, metadata !DIExpression()), !dbg !1236
  %call28 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.36, i64 noundef 2) #12, !dbg !1281
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !1282
  br i1 %cmp29.not, label %for.cond.backedge, label %land.rhs31, !dbg !1283, !llvm.loop !1289

if.end38:                                         ; preds = %if.end21
  %call40 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.37) #12, !dbg !1291
  %cmp41 = icmp eq i32 %call40, 0, !dbg !1292
  br i1 %cmp41, label %while.cond44thread-pre-split.preheader, label %if.end109, !dbg !1293

while.cond44thread-pre-split.preheader:           ; preds = %if.end38
  br i1 %cmp69, label %while.cond44thread-pre-split.us, label %while.cond44thread-pre-split.outer.split, !dbg !1294

while.cond44thread-pre-split.us:                  ; preds = %while.cond44thread-pre-split.preheader, %while.cond44thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !1295, !tbaa !472
  br label %while.cond44.us, !dbg !1295

while.cond44.us:                                  ; preds = %while.body56.us, %while.cond44thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond44thread-pre-split.us ], [ %18, %while.body56.us ], !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.0369, metadata !1215, metadata !DIExpression()), !dbg !1236
  %cmp46.not.us = icmp eq i8 %13, 47, !dbg !1296
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !1297

land.lhs.true.us:                                 ; preds = %while.cond44.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !1298, !tbaa !472
  %cmp49.not.us = icmp eq i8 %14, 62, !dbg !1299
  br i1 %cmp49.not.us, label %for.cond.backedge, label %land.rhs51.us, !dbg !1300

land.rhs51.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !1301, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %15, metadata !1214, metadata !DIExpression()), !dbg !1236
  %16 = load i8, ptr %15, align 1, !dbg !1302, !tbaa !472
  %cmp53.not.us = icmp eq i8 %16, 0, !dbg !1303
  br i1 %cmp53.not.us, label %for.cond.backedge, label %while.body56.us, !dbg !1304

while.body56.us:                                  ; preds = %land.rhs51.us
  %call58.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #12, !dbg !1305
  %17 = load ptr, ptr %q, align 8, !dbg !1306, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1307
  %18 = load i8, ptr %call1, align 1, !dbg !1308, !tbaa !472
  %cmp60.not.us = icmp eq i8 %18, 61, !dbg !1310
  br i1 %cmp60.not.us, label %if.end63.us, label %while.cond44.us, !dbg !1311, !llvm.loop !1312

if.end63.us:                                      ; preds = %while.body56.us
  %19 = load ptr, ptr %q, align 8, !dbg !1314, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1315
  %call65.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.38) #12, !dbg !1316
  %cmp66.us = icmp eq i32 %call65.us, 0, !dbg !1317
  br i1 %cmp66.us, label %if.then71.us, label %while.cond44thread-pre-split.us.backedge, !dbg !1318

if.then71.us:                                     ; preds = %if.end63.us
  %call72.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1161, i32 noundef 495, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.15, ptr noundef nonnull %call1) #12, !dbg !1319
  br label %while.cond44thread-pre-split.us.backedge, !dbg !1320

while.cond44thread-pre-split.us.backedge:         ; preds = %if.then71.us, %if.end63.us
  br label %while.cond44thread-pre-split.us, !dbg !1295, !llvm.loop !1312

while.cond44thread-pre-split.outer.split:         ; preds = %while.cond44thread-pre-split.preheader, %if.end105
  %status.1.ph.ph363 = phi i32 [ %status.2, %if.end105 ], [ %status.0369, %while.cond44thread-pre-split.preheader ]
  br label %while.cond44thread-pre-split, !dbg !1304

while.cond44thread-pre-split:                     ; preds = %if.end63, %while.cond44thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !1295, !tbaa !472
  br label %while.cond44, !dbg !1295

while.cond44:                                     ; preds = %while.cond44thread-pre-split, %while.body56
  %20 = phi i8 [ %.pr, %while.cond44thread-pre-split ], [ %25, %while.body56 ], !dbg !1295
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph363, metadata !1215, metadata !DIExpression()), !dbg !1236
  %cmp46.not = icmp eq i8 %20, 47, !dbg !1296
  br i1 %cmp46.not, label %for.cond.backedge, label %land.lhs.true, !dbg !1297

land.lhs.true:                                    ; preds = %while.cond44
  %21 = load i8, ptr %add.ptr, align 1, !dbg !1298, !tbaa !472
  %cmp49.not = icmp eq i8 %21, 62, !dbg !1299
  br i1 %cmp49.not, label %for.cond.backedge, label %land.rhs51, !dbg !1300

land.rhs51:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !1301, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %22, metadata !1214, metadata !DIExpression()), !dbg !1236
  %23 = load i8, ptr %22, align 1, !dbg !1302, !tbaa !472
  %cmp53.not = icmp eq i8 %23, 0, !dbg !1303
  br i1 %cmp53.not, label %for.cond.backedge, label %while.body56, !dbg !1304

while.body56:                                     ; preds = %land.rhs51
  %call58 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #12, !dbg !1305
  %24 = load ptr, ptr %q, align 8, !dbg !1306, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1307
  %25 = load i8, ptr %call1, align 1, !dbg !1308, !tbaa !472
  %cmp60.not = icmp eq i8 %25, 61, !dbg !1310
  br i1 %cmp60.not, label %if.end63, label %while.cond44, !dbg !1311, !llvm.loop !1312

if.end63:                                         ; preds = %while.body56
  %26 = load ptr, ptr %q, align 8, !dbg !1314, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1315
  %call65 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.38) #12, !dbg !1316
  %cmp66 = icmp eq i32 %call65, 0, !dbg !1317
  br i1 %cmp66, label %if.then68, label %while.cond44thread-pre-split, !dbg !1318, !llvm.loop !1312

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #12, !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1217, metadata !DIExpression()), !dbg !1322
  store i8 0, ptr %path, align 16, !dbg !1323, !tbaa !472
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #12, !dbg !1324
  %27 = load i8, ptr %path, align 16, !dbg !1325, !tbaa !472
  %cmp78.not = icmp eq i8 %27, 0, !dbg !1327
  br i1 %cmp78.not, label %if.end83, label %if.then80, !dbg !1328

if.then80:                                        ; preds = %if.then68
  %call82 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.30, i64 noundef 4096) #12, !dbg !1329
  br label %if.end83, !dbg !1330

if.end83:                                         ; preds = %if.then80, %if.then68
  %28 = load i8, ptr %call1, align 1, !dbg !1331, !tbaa !472
  %cmp86 = icmp eq i8 %28, 47, !dbg !1333
  br i1 %cmp86, label %if.then88, label %if.else91, !dbg !1334

if.then88:                                        ; preds = %if.end83
  %call90 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #12, !dbg !1335
  br label %if.end94, !dbg !1336

if.else91:                                        ; preds = %if.end83
  %call93 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #12, !dbg !1337
  br label %if.end94

if.end94:                                         ; preds = %if.else91, %if.then88
  %call95 = call ptr @AcquireExceptionInfo() #12, !dbg !1338
  call void @llvm.dbg.value(metadata ptr %call95, metadata !1229, metadata !DIExpression()), !dbg !1339
  %call97 = call ptr @FileToString(ptr noundef nonnull %path, i64 noundef -1, ptr noundef %call95) #12, !dbg !1340
  call void @llvm.dbg.value(metadata ptr %call97, metadata !1228, metadata !DIExpression()), !dbg !1339
  %call98 = call ptr @DestroyExceptionInfo(ptr noundef %call95) #12, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %call98, metadata !1229, metadata !DIExpression()), !dbg !1339
  %cmp99.not = icmp eq ptr %call97, null, !dbg !1342
  br i1 %cmp99.not, label %if.end105, label %if.then101, !dbg !1344

if.then101:                                       ; preds = %if.end94
  %call103 = call fastcc i32 @LoadTypeCache(ptr noundef %type_cache, ptr noundef nonnull %call97, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !1345
  %and = and i32 %call103, %status.1.ph.ph363, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %and, metadata !1215, metadata !DIExpression()), !dbg !1236
  %call104 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call97) #12, !dbg !1348
  call void @llvm.dbg.value(metadata ptr %call104, metadata !1228, metadata !DIExpression()), !dbg !1339
  br label %if.end105, !dbg !1349

if.end105:                                        ; preds = %if.then101, %if.end94
  %status.2 = phi i32 [ %and, %if.then101 ], [ %status.1.ph.ph363, %if.end94 ], !dbg !1236
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !1215, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #12, !dbg !1350
  br label %while.cond44thread-pre-split.outer.split, !dbg !1294, !llvm.loop !1312

if.end109:                                        ; preds = %if.end38
  %call111 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.40) #12, !dbg !1351
  %cmp112 = icmp eq i32 %call111, 0, !dbg !1352
  br i1 %cmp112, label %if.then114, label %if.end129, !dbg !1353

if.then114:                                       ; preds = %if.end109
  %call115 = call ptr @AcquireMagickMemory(i64 noundef 128) #16, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call115, metadata !1216, metadata !DIExpression()), !dbg !1236
  %cmp116 = icmp eq ptr %call115, null, !dbg !1355
  br i1 %cmp116, label %if.then118, label %if.end125, !dbg !1356

if.then118:                                       ; preds = %if.then114
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception119) #12, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %exception119, metadata !1235, metadata !DIExpression()), !dbg !1357
  call void @GetExceptionInfo(ptr noundef nonnull %exception119) #12, !dbg !1357
  %call120 = tail call ptr @__errno_location() #13, !dbg !1357
  %29 = load i32, ptr %call120, align 4, !dbg !1357, !tbaa !466
  %call121 = call ptr @GetExceptionMessage(i32 noundef %29) #12, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %call121, metadata !1230, metadata !DIExpression()), !dbg !1358
  %call122 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception119, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1202, i32 noundef 700, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %call121) #12, !dbg !1357
  %call123 = call ptr @DestroyString(ptr noundef %call121) #12, !dbg !1357
  call void @llvm.dbg.value(metadata ptr %call123, metadata !1230, metadata !DIExpression()), !dbg !1358
  call void @CatchException(ptr noundef nonnull %exception119) #12, !dbg !1357
  %call124 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception119) #12, !dbg !1357
  call void @MagickCoreTerminus() #12, !dbg !1357
  call void @_exit(i32 noundef 1) #14, !dbg !1357
  unreachable, !dbg !1357

if.end125:                                        ; preds = %if.then114
  %call126 = call ptr @ResetMagickMemory(ptr noundef nonnull %call115, i32 noundef 0, i64 noundef 128) #12, !dbg !1359
  %call127 = call ptr @ConstantString(ptr noundef %filename) #12, !dbg !1360
  %path128 = getelementptr inbounds %struct._TypeInfo, ptr %call115, i64 0, i32 1, !dbg !1361
  store ptr %call127, ptr %path128, align 8, !dbg !1362, !tbaa !852
  %signature = getelementptr inbounds %struct._TypeInfo, ptr %call115, i64 0, i32 16, !dbg !1363
  store i64 2880220587, ptr %signature, align 8, !dbg !1364, !tbaa !1365
  br label %for.cond.backedge, !dbg !1366

if.end129:                                        ; preds = %if.end109
  %cmp130 = icmp eq ptr %type_info.0370, null, !dbg !1367
  br i1 %cmp130, label %for.cond.backedge, label %if.end133, !dbg !1369

if.end133:                                        ; preds = %if.end129
  %call135 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.41) #12, !dbg !1370
  %cmp136 = icmp eq i32 %call135, 0, !dbg !1372
  br i1 %cmp136, label %if.then138, label %if.end146, !dbg !1373

if.then138:                                       ; preds = %if.end133
  %name = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 2, !dbg !1374
  %30 = load ptr, ptr %name, align 8, !dbg !1374, !tbaa !795
  %call139 = call i32 @AddValueToSplayTree(ptr noundef %type_cache, ptr noundef %30, ptr noundef nonnull %type_info.0370) #12, !dbg !1376
  call void @llvm.dbg.value(metadata i32 %call139, metadata !1215, metadata !DIExpression()), !dbg !1236
  %cmp140 = icmp eq i32 %call139, 0, !dbg !1377
  br i1 %cmp140, label %if.then142, label %for.cond.backedge, !dbg !1379

if.then142:                                       ; preds = %if.then138
  %31 = load ptr, ptr %name, align 8, !dbg !1380, !tbaa !795
  %call144 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i64 noundef 1214, i32 noundef 400, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.15, ptr noundef %31) #12, !dbg !1381
  br label %for.cond.backedge, !dbg !1382

if.end146:                                        ; preds = %if.end133
  %32 = load ptr, ptr %q, align 8, !dbg !1383, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %32, metadata !1214, metadata !DIExpression()), !dbg !1236
  call void @GetMagickToken(ptr noundef %32, ptr noundef null, ptr noundef nonnull %call1) #12, !dbg !1384
  %33 = load i8, ptr %call1, align 1, !dbg !1385, !tbaa !472
  %cmp148.not = icmp eq i8 %33, 61, !dbg !1387
  br i1 %cmp148.not, label %if.end151, label %for.cond.backedge, !dbg !1388

if.end151:                                        ; preds = %if.end146
  %34 = load ptr, ptr %q, align 8, !dbg !1389, !tbaa !416
  call void @llvm.dbg.value(metadata ptr %q, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1236
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1390
  %35 = load ptr, ptr %q, align 8, !dbg !1391, !tbaa !416
  call void @GetMagickToken(ptr noundef %35, ptr noundef nonnull %q, ptr noundef nonnull %call1) #12, !dbg !1392
  %36 = load i8, ptr %keyword, align 16, !dbg !1393, !tbaa !472
  %conv153 = sext i8 %36 to i32, !dbg !1393
  switch i32 %conv153, label %for.cond.backedge [
    i32 69, label %sw.bb
    i32 101, label %sw.bb
    i32 70, label %sw.bb161
    i32 102, label %sw.bb161
    i32 71, label %sw.bb197
    i32 103, label %sw.bb197
    i32 77, label %sw.bb211
    i32 109, label %sw.bb211
    i32 78, label %sw.bb225
    i32 110, label %sw.bb225
    i32 83, label %sw.bb234
    i32 115, label %sw.bb234
    i32 87, label %sw.bb258
    i32 119, label %sw.bb258
  ], !dbg !1394

sw.bb:                                            ; preds = %if.end151, %if.end151
  %call155 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.42) #12, !dbg !1395
  %cmp156 = icmp eq i32 %call155, 0, !dbg !1399
  br i1 %cmp156, label %if.then158, label %for.cond.backedge, !dbg !1400

if.then158:                                       ; preds = %sw.bb
  %call159 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1401
  %encoding = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 8, !dbg !1403
  store ptr %call159, ptr %encoding, align 8, !dbg !1404, !tbaa !1134
  br label %for.cond.backedge, !dbg !1405

sw.bb161:                                         ; preds = %if.end151, %if.end151
  %call163 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.43) #12, !dbg !1406
  %cmp164 = icmp eq i32 %call163, 0, !dbg !1409
  br i1 %cmp164, label %if.then166, label %if.end168, !dbg !1410

if.then166:                                       ; preds = %sw.bb161
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1411, metadata !DIExpression()) #12, !dbg !1417
  %call.i = call i64 @strtoul(ptr nocapture noundef nonnull %call1, ptr noundef null, i32 noundef 10) #12, !dbg !1420
  store i64 %call.i, ptr %type_info.0370, align 8, !dbg !1421, !tbaa !1422
  br label %for.cond.backedge, !dbg !1423

if.end168:                                        ; preds = %sw.bb161
  %call170 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.44) #12, !dbg !1424
  %cmp171 = icmp eq i32 %call170, 0, !dbg !1426
  br i1 %cmp171, label %if.then173, label %if.end175, !dbg !1427

if.then173:                                       ; preds = %if.end168
  %call174 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1428
  %family = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 4, !dbg !1430
  store ptr %call174, ptr %family, align 8, !dbg !1431, !tbaa !575
  br label %for.cond.backedge, !dbg !1432

if.end175:                                        ; preds = %if.end168
  %call177 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.45) #12, !dbg !1433
  %cmp178 = icmp eq i32 %call177, 0, !dbg !1435
  br i1 %cmp178, label %if.then180, label %if.end182, !dbg !1436

if.then180:                                       ; preds = %if.end175
  %call181 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1437
  %format = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 10, !dbg !1439
  store ptr %call181, ptr %format, align 8, !dbg !1440, !tbaa !1150
  br label %for.cond.backedge, !dbg !1441

if.end182:                                        ; preds = %if.end175
  %call184 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.46) #12, !dbg !1442
  %cmp185 = icmp eq i32 %call184, 0, !dbg !1444
  br i1 %cmp185, label %if.then187, label %if.end189, !dbg !1445

if.then187:                                       ; preds = %if.end182
  %call188 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1446
  %foundry = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 9, !dbg !1448
  store ptr %call188, ptr %foundry, align 8, !dbg !1449, !tbaa !1142
  br label %for.cond.backedge, !dbg !1450

if.end189:                                        ; preds = %if.end182
  %call191 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.47) #12, !dbg !1451
  %cmp192 = icmp eq i32 %call191, 0, !dbg !1453
  br i1 %cmp192, label %if.then194, label %for.cond.backedge, !dbg !1454

if.then194:                                       ; preds = %if.end189
  %call195 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1455
  %description = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 3, !dbg !1457
  store ptr %call195, ptr %description, align 8, !dbg !1458, !tbaa !1119
  br label %for.cond.backedge, !dbg !1459

sw.bb197:                                         ; preds = %if.end151, %if.end151
  %call199 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.48) #12, !dbg !1460
  %cmp200 = icmp eq i32 %call199, 0, !dbg !1463
  br i1 %cmp200, label %if.then202, label %for.cond.backedge, !dbg !1464

if.then202:                                       ; preds = %sw.bb197
  %glyphs = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 12, !dbg !1465
  %call204 = call fastcc i32 @SetTypeNodePath(ptr noundef %filename, ptr noundef nonnull %font_path, ptr noundef nonnull %call1, ptr noundef nonnull %glyphs), !dbg !1468
  %cmp205 = icmp eq i32 %call204, 0, !dbg !1469
  br i1 %cmp205, label %if.then207, label %for.cond.backedge, !dbg !1470

if.then207:                                       ; preds = %if.then202
  %call208 = call ptr @DestroyTypeNode(ptr noundef nonnull %type_info.0370), !dbg !1471
  call void @llvm.dbg.value(metadata ptr %call208, metadata !1216, metadata !DIExpression()), !dbg !1236
  br label %for.cond.backedge, !dbg !1472

sw.bb211:                                         ; preds = %if.end151, %if.end151
  %call213 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.49) #12, !dbg !1473
  %cmp214 = icmp eq i32 %call213, 0, !dbg !1476
  br i1 %cmp214, label %if.then216, label %for.cond.backedge, !dbg !1477

if.then216:                                       ; preds = %sw.bb211
  %metrics = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 11, !dbg !1478
  %call218 = call fastcc i32 @SetTypeNodePath(ptr noundef %filename, ptr noundef nonnull %font_path, ptr noundef nonnull %call1, ptr noundef nonnull %metrics), !dbg !1481
  %cmp219 = icmp eq i32 %call218, 0, !dbg !1482
  br i1 %cmp219, label %if.then221, label %for.cond.backedge, !dbg !1483

if.then221:                                       ; preds = %if.then216
  %call222 = call ptr @DestroyTypeNode(ptr noundef nonnull %type_info.0370), !dbg !1484
  call void @llvm.dbg.value(metadata ptr %call222, metadata !1216, metadata !DIExpression()), !dbg !1236
  br label %for.cond.backedge, !dbg !1485

sw.bb225:                                         ; preds = %if.end151, %if.end151
  %call227 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.50) #12, !dbg !1486
  %cmp228 = icmp eq i32 %call227, 0, !dbg !1489
  br i1 %cmp228, label %if.then230, label %for.cond.backedge, !dbg !1490

if.then230:                                       ; preds = %sw.bb225
  %call231 = call ptr @ConstantString(ptr noundef nonnull %call1) #12, !dbg !1491
  %name232 = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 2, !dbg !1493
  store ptr %call231, ptr %name232, align 8, !dbg !1494, !tbaa !795
  br label %for.cond.backedge, !dbg !1495

sw.bb234:                                         ; preds = %if.end151, %if.end151
  %call236 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.51) #12, !dbg !1496
  %cmp237 = icmp eq i32 %call236, 0, !dbg !1499
  br i1 %cmp237, label %if.then239, label %if.end241, !dbg !1500

if.then239:                                       ; preds = %sw.bb234
  %call240 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #12, !dbg !1501
  %stealth = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 13, !dbg !1503
  store i32 %call240, ptr %stealth, align 8, !dbg !1504, !tbaa !791
  br label %for.cond.backedge, !dbg !1505

if.end241:                                        ; preds = %sw.bb234
  %call243 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.52) #12, !dbg !1506
  %cmp244 = icmp eq i32 %call243, 0, !dbg !1508
  br i1 %cmp244, label %if.then246, label %if.end249, !dbg !1509

if.then246:                                       ; preds = %if.end241
  %call247 = call i64 @ParseCommandOption(i32 noundef 63, i32 noundef 0, ptr noundef nonnull %call1) #12, !dbg !1510
  %conv248 = trunc i64 %call247 to i32, !dbg !1512
  %stretch = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 6, !dbg !1513
  store i32 %conv248, ptr %stretch, align 4, !dbg !1514, !tbaa !607
  br label %for.cond.backedge, !dbg !1515

if.end249:                                        ; preds = %if.end241
  %call251 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.53) #12, !dbg !1516
  %cmp252 = icmp eq i32 %call251, 0, !dbg !1518
  br i1 %cmp252, label %if.then254, label %for.cond.backedge, !dbg !1519

if.then254:                                       ; preds = %if.end249
  %call255 = call i64 @ParseCommandOption(i32 noundef 64, i32 noundef 0, ptr noundef nonnull %call1) #12, !dbg !1520
  %conv256 = trunc i64 %call255 to i32, !dbg !1522
  %style = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 5, !dbg !1523
  store i32 %conv256, ptr %style, align 8, !dbg !1524, !tbaa !601
  br label %for.cond.backedge, !dbg !1525

sw.bb258:                                         ; preds = %if.end151, %if.end151
  %call260 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.54) #12, !dbg !1526
  %cmp261 = icmp eq i32 %call260, 0, !dbg !1529
  br i1 %cmp261, label %if.then263, label %for.cond.backedge, !dbg !1530

if.then263:                                       ; preds = %sw.bb258
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1411, metadata !DIExpression()) #12, !dbg !1531
  %call.i359 = call i64 @strtoul(ptr nocapture noundef nonnull %call1, ptr noundef null, i32 noundef 10) #12, !dbg !1534
  %weight = getelementptr inbounds %struct._TypeInfo, ptr %type_info.0370, i64 0, i32 7, !dbg !1535
  store i64 %call.i359, ptr %weight, align 8, !dbg !1536, !tbaa !613
  %call265 = call i32 @LocaleCompare(ptr noundef nonnull %call1, ptr noundef nonnull @.str.55) #12, !dbg !1537
  %cmp266 = icmp eq i32 %call265, 0, !dbg !1539
  br i1 %cmp266, label %if.then268, label %if.end270, !dbg !1540

if.then268:                                       ; preds = %if.then263
  store i64 700, ptr %weight, align 8, !dbg !1541, !tbaa !613
  br label %if.end270, !dbg !1542

if.end270:                                        ; preds = %if.then268, %if.then263
  %call271 = call i32 @LocaleCompare(ptr noundef nonnull %call1, ptr noundef nonnull @.str.56) #12, !dbg !1543
  %cmp272 = icmp eq i32 %call271, 0, !dbg !1545
  br i1 %cmp272, label %if.then274, label %for.cond.backedge, !dbg !1546

if.then274:                                       ; preds = %if.end270
  store i64 400, ptr %weight, align 8, !dbg !1547, !tbaa !613
  br label %for.cond.backedge, !dbg !1548

for.end:                                          ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0369, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !1236
  %call278 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #12, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %call278, metadata !1213, metadata !DIExpression()), !dbg !1236
  br label %cleanup, !dbg !1550

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 0, %entry ], !dbg !1236
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #12, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #12, !dbg !1551
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %font_path) #12, !dbg !1551
  ret i32 %retval.0, !dbg !1551
}

declare !dbg !1552 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

declare !dbg !1555 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #3

declare !dbg !1558 ptr @GetEnvironmentValue(ptr noundef) local_unnamed_addr #3

declare !dbg !1559 ptr @FileToString(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1562 ptr @AcquireString(ptr noundef) local_unnamed_addr #3

declare !dbg !1563 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1566 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1569 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1573 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1574 ptr @AcquireExceptionInfo() local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare !dbg !1577 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #9

declare !dbg !1580 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1583 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @SetTypeNodePath(ptr noundef %filename, ptr noundef %font_path, ptr noundef %token, ptr nocapture noundef writeonly %target) unnamed_addr #10 !dbg !1586 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !1590, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata ptr %font_path, metadata !1591, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata ptr %token, metadata !1592, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata ptr %target, metadata !1593, metadata !DIExpression()), !dbg !1595
  %call = tail call ptr @ConstantString(ptr noundef %token) #12, !dbg !1596
  call void @llvm.dbg.value(metadata ptr %call, metadata !1594, metadata !DIExpression()), !dbg !1595
  %call1 = tail call i32 @IsPathAccessible(ptr noundef %call) #12, !dbg !1597
  %cmp = icmp eq i32 %call1, 0, !dbg !1599
  br i1 %cmp, label %if.then, label %if.end10, !dbg !1600

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @DestroyString(ptr noundef %call) #12, !dbg !1601
  call void @llvm.dbg.value(metadata ptr %call2, metadata !1594, metadata !DIExpression()), !dbg !1595
  tail call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef %font_path) #12, !dbg !1603
  %call3 = tail call i64 @ConcatenateMagickString(ptr noundef %font_path, ptr noundef nonnull @.str.30, i64 noundef 4096) #12, !dbg !1604
  %call4 = tail call i64 @ConcatenateMagickString(ptr noundef %font_path, ptr noundef %token, i64 noundef 4096) #12, !dbg !1605
  %call5 = tail call ptr @ConstantString(ptr noundef %font_path) #12, !dbg !1606
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1594, metadata !DIExpression()), !dbg !1595
  %call6 = tail call i32 @IsPathAccessible(ptr noundef %call5) #12, !dbg !1607
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1609
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !1610

if.then8:                                         ; preds = %if.then
  %call9 = tail call ptr @DestroyString(ptr noundef %call5) #12, !dbg !1611
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1594, metadata !DIExpression()), !dbg !1595
  br label %cleanup, !dbg !1613

if.end10:                                         ; preds = %if.then, %entry
  %path.0 = phi ptr [ %call5, %if.then ], [ %call, %entry ], !dbg !1595
  call void @llvm.dbg.value(metadata ptr %path.0, metadata !1594, metadata !DIExpression()), !dbg !1595
  store ptr %path.0, ptr %target, align 8, !dbg !1614, !tbaa !416
  br label %cleanup, !dbg !1615

cleanup:                                          ; preds = %if.end10, %if.then8
  %retval.0 = phi i32 [ 0, %if.then8 ], [ 1, %if.end10 ], !dbg !1595
  ret i32 %retval.0, !dbg !1616
}

declare !dbg !1617 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !1620 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

declare !dbg !1623 i32 @IsPathAccessible(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!391, !392, !393, !394, !395, !396}
!llvm.ident = !{!397}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "type_semaphore", scope: !2, file: !347, line: 119, type: !320, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !218, globals: !343, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/type.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "3f5eb7e7cb071fcaa52e758f28cd7051")
!4 = !{!5, !14, !27, !32, !105, !130, !206}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 40, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e03df4f5f7c27edd01aa629b64253bee")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "UndefinedStyle", value: 0)
!10 = !DIEnumerator(name: "NormalStyle", value: 1)
!11 = !DIEnumerator(name: "ItalicStyle", value: 2)
!12 = !DIEnumerator(name: "ObliqueStyle", value: 3)
!13 = !DIEnumerator(name: "AnyStyle", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 25, baseType: !7, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!16 = !DIEnumerator(name: "UndefinedStretch", value: 0)
!17 = !DIEnumerator(name: "NormalStretch", value: 1)
!18 = !DIEnumerator(name: "UltraCondensedStretch", value: 2)
!19 = !DIEnumerator(name: "ExtraCondensedStretch", value: 3)
!20 = !DIEnumerator(name: "CondensedStretch", value: 4)
!21 = !DIEnumerator(name: "SemiCondensedStretch", value: 5)
!22 = !DIEnumerator(name: "SemiExpandedStretch", value: 6)
!23 = !DIEnumerator(name: "ExpandedStretch", value: 7)
!24 = !DIEnumerator(name: "ExtraExpandedStretch", value: 8)
!25 = !DIEnumerator(name: "UltraExpandedStretch", value: 9)
!26 = !DIEnumerator(name: "AnyStretch", value: 10)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 211, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "MagickFalse", value: 0)
!31 = !DIEnumerator(name: "MagickTrue", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 28, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!35 = !DIEnumerator(name: "UndefinedException", value: 0)
!36 = !DIEnumerator(name: "WarningException", value: 300)
!37 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!38 = !DIEnumerator(name: "TypeWarning", value: 305)
!39 = !DIEnumerator(name: "OptionWarning", value: 310)
!40 = !DIEnumerator(name: "DelegateWarning", value: 315)
!41 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!42 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!43 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!44 = !DIEnumerator(name: "BlobWarning", value: 335)
!45 = !DIEnumerator(name: "StreamWarning", value: 340)
!46 = !DIEnumerator(name: "CacheWarning", value: 345)
!47 = !DIEnumerator(name: "CoderWarning", value: 350)
!48 = !DIEnumerator(name: "FilterWarning", value: 352)
!49 = !DIEnumerator(name: "ModuleWarning", value: 355)
!50 = !DIEnumerator(name: "DrawWarning", value: 360)
!51 = !DIEnumerator(name: "ImageWarning", value: 365)
!52 = !DIEnumerator(name: "WandWarning", value: 370)
!53 = !DIEnumerator(name: "RandomWarning", value: 375)
!54 = !DIEnumerator(name: "XServerWarning", value: 380)
!55 = !DIEnumerator(name: "MonitorWarning", value: 385)
!56 = !DIEnumerator(name: "RegistryWarning", value: 390)
!57 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!58 = !DIEnumerator(name: "PolicyWarning", value: 399)
!59 = !DIEnumerator(name: "ErrorException", value: 400)
!60 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!61 = !DIEnumerator(name: "TypeError", value: 405)
!62 = !DIEnumerator(name: "OptionError", value: 410)
!63 = !DIEnumerator(name: "DelegateError", value: 415)
!64 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!65 = !DIEnumerator(name: "CorruptImageError", value: 425)
!66 = !DIEnumerator(name: "FileOpenError", value: 430)
!67 = !DIEnumerator(name: "BlobError", value: 435)
!68 = !DIEnumerator(name: "StreamError", value: 440)
!69 = !DIEnumerator(name: "CacheError", value: 445)
!70 = !DIEnumerator(name: "CoderError", value: 450)
!71 = !DIEnumerator(name: "FilterError", value: 452)
!72 = !DIEnumerator(name: "ModuleError", value: 455)
!73 = !DIEnumerator(name: "DrawError", value: 460)
!74 = !DIEnumerator(name: "ImageError", value: 465)
!75 = !DIEnumerator(name: "WandError", value: 470)
!76 = !DIEnumerator(name: "RandomError", value: 475)
!77 = !DIEnumerator(name: "XServerError", value: 480)
!78 = !DIEnumerator(name: "MonitorError", value: 485)
!79 = !DIEnumerator(name: "RegistryError", value: 490)
!80 = !DIEnumerator(name: "ConfigureError", value: 495)
!81 = !DIEnumerator(name: "PolicyError", value: 499)
!82 = !DIEnumerator(name: "FatalErrorException", value: 700)
!83 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!84 = !DIEnumerator(name: "TypeFatalError", value: 705)
!85 = !DIEnumerator(name: "OptionFatalError", value: 710)
!86 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!87 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!88 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!89 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!90 = !DIEnumerator(name: "BlobFatalError", value: 735)
!91 = !DIEnumerator(name: "StreamFatalError", value: 740)
!92 = !DIEnumerator(name: "CacheFatalError", value: 745)
!93 = !DIEnumerator(name: "CoderFatalError", value: 750)
!94 = !DIEnumerator(name: "FilterFatalError", value: 752)
!95 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!96 = !DIEnumerator(name: "DrawFatalError", value: 760)
!97 = !DIEnumerator(name: "ImageFatalError", value: 765)
!98 = !DIEnumerator(name: "WandFatalError", value: 770)
!99 = !DIEnumerator(name: "RandomFatalError", value: 775)
!100 = !DIEnumerator(name: "XServerFatalError", value: 780)
!101 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!102 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!103 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!104 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 34, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129}
!108 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!109 = !DIEnumerator(name: "NoEvents", value: 0)
!110 = !DIEnumerator(name: "TraceEvent", value: 1)
!111 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!112 = !DIEnumerator(name: "BlobEvent", value: 4)
!113 = !DIEnumerator(name: "CacheEvent", value: 8)
!114 = !DIEnumerator(name: "CoderEvent", value: 16)
!115 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!116 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!117 = !DIEnumerator(name: "DrawEvent", value: 128)
!118 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!119 = !DIEnumerator(name: "ImageEvent", value: 512)
!120 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!121 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!122 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!123 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!124 = !DIEnumerator(name: "TransformEvent", value: 16384)
!125 = !DIEnumerator(name: "UserEvent", value: 36864)
!126 = !DIEnumerator(name: "WandEvent", value: 65536)
!127 = !DIEnumerator(name: "X11Event", value: 131072)
!128 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!129 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 25, baseType: !132, size: 32, elements: !133)
!131 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!132 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!134 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!135 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!136 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!137 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!138 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!139 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!140 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!141 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!142 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!143 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!144 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!145 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!146 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!147 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!148 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!149 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!150 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!151 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!152 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!153 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!154 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!155 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!156 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!157 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!158 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!159 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!160 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!161 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!162 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!163 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!164 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!165 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!166 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!167 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!168 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!169 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!170 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!171 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!172 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!173 = !DIEnumerator(name: "MagickListOptions", value: 38)
!174 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!175 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!176 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!177 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!178 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!179 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!180 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!181 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!182 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!183 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!184 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!185 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!186 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!187 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!188 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!189 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!190 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!191 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!192 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!193 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!194 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!195 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!196 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!197 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!198 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!199 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!200 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!201 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!202 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!203 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!204 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!205 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 25, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DIEnumerator(name: "UndefinedPath", value: 0)
!210 = !DIEnumerator(name: "MagickPath", value: 1)
!211 = !DIEnumerator(name: "RootPath", value: 2)
!212 = !DIEnumerator(name: "HeadPath", value: 3)
!213 = !DIEnumerator(name: "TailPath", value: 4)
!214 = !DIEnumerator(name: "BasePath", value: 5)
!215 = !DIEnumerator(name: "ExtensionPath", value: 6)
!216 = !DIEnumerator(name: "SubimagePath", value: 7)
!217 = !DIEnumerator(name: "CanonicalPath", value: 8)
!218 = !{!219, !250, !251, !253, !257, !229, !258, !227, !263, !225, !264, !265, !319, !320, !324, !325, !132, !328, !237, !235}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "TypeInfo", file: !6, line: 85, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TypeInfo", file: !6, line: 49, size: 1024, elements: !223)
!223 = !{!224, !228, !231, !232, !233, !234, !236, !238, !239, !240, !241, !242, !243, !244, !246, !248, !249}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "face", scope: !222, file: !6, line: 52, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !226, line: 46, baseType: !227)
!226 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!227 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !222, file: !6, line: 55, baseType: !229, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !6, line: 56, baseType: !229, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !222, file: !6, line: 57, baseType: !229, size: 64, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !222, file: !6, line: 58, baseType: !229, size: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !222, file: !6, line: 61, baseType: !235, size: 32, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "StyleType", file: !6, line: 47, baseType: !5)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "stretch", scope: !222, file: !6, line: 64, baseType: !237, size: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "StretchType", file: !6, line: 38, baseType: !14)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !222, file: !6, line: 67, baseType: !225, size: 64, offset: 384)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !222, file: !6, line: 70, baseType: !229, size: 64, offset: 448)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "foundry", scope: !222, file: !6, line: 71, baseType: !229, size: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !222, file: !6, line: 72, baseType: !229, size: 64, offset: 576)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "metrics", scope: !222, file: !6, line: 73, baseType: !229, size: 64, offset: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "glyphs", scope: !222, file: !6, line: 74, baseType: !229, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !222, file: !6, line: 77, baseType: !245, size: 32, offset: 768)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !28, line: 215, baseType: !27)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !222, file: !6, line: 80, baseType: !247, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !6, line: 81, baseType: !247, size: 64, offset: 896)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !222, file: !6, line: 84, baseType: !225, size: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !255, line: 26, baseType: !256)
!255 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !255, line: 25, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !259, line: 77, baseType: !260)
!259 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !261, line: 193, baseType: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!262 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !267, line: 7, baseType: !268)
!267 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !269, line: 49, size: 1728, elements: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!270 = !{!271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !286, !288, !289, !290, !292, !294, !296, !300, !303, !305, !308, !311, !312, !313, !314, !315}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !268, file: !269, line: 51, baseType: !132, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !268, file: !269, line: 54, baseType: !229, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !268, file: !269, line: 55, baseType: !229, size: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !268, file: !269, line: 56, baseType: !229, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !268, file: !269, line: 57, baseType: !229, size: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !268, file: !269, line: 58, baseType: !229, size: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !268, file: !269, line: 59, baseType: !229, size: 64, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !268, file: !269, line: 60, baseType: !229, size: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !268, file: !269, line: 61, baseType: !229, size: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !268, file: !269, line: 64, baseType: !229, size: 64, offset: 576)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !268, file: !269, line: 65, baseType: !229, size: 64, offset: 640)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !268, file: !269, line: 66, baseType: !229, size: 64, offset: 704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !268, file: !269, line: 68, baseType: !284, size: 64, offset: 768)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !269, line: 36, flags: DIFlagFwdDecl)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !268, file: !269, line: 70, baseType: !287, size: 64, offset: 832)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !268, file: !269, line: 72, baseType: !132, size: 32, offset: 896)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !268, file: !269, line: 73, baseType: !132, size: 32, offset: 928)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !268, file: !269, line: 74, baseType: !291, size: 64, offset: 960)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !261, line: 152, baseType: !262)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !268, file: !269, line: 77, baseType: !293, size: 16, offset: 1024)
!293 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !268, file: !269, line: 78, baseType: !295, size: 8, offset: 1040)
!295 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !268, file: !269, line: 79, baseType: !297, size: 8, offset: 1048)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 8, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 1)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !268, file: !269, line: 81, baseType: !301, size: 64, offset: 1088)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !269, line: 43, baseType: null)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !268, file: !269, line: 89, baseType: !304, size: 64, offset: 1152)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !261, line: 153, baseType: !262)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !268, file: !269, line: 91, baseType: !306, size: 64, offset: 1216)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !269, line: 37, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !268, file: !269, line: 92, baseType: !309, size: 64, offset: 1280)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !269, line: 38, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !268, file: !269, line: 93, baseType: !287, size: 64, offset: 1344)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !268, file: !269, line: 94, baseType: !250, size: 64, offset: 1408)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !268, file: !269, line: 95, baseType: !225, size: 64, offset: 1472)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !268, file: !269, line: 96, baseType: !132, size: 32, offset: 1536)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !268, file: !269, line: 98, baseType: !316, size: 160, offset: 1568)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 160, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 20)
!319 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !322, line: 26, baseType: !323)
!322 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !322, line: 25, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!250, !250}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !331, line: 40, baseType: !332)
!331 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !331, line: 29, size: 32960, elements: !333)
!333 = !{!334, !338, !341, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !332, file: !331, line: 32, baseType: !335, size: 32768)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 32768, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4096)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !332, file: !331, line: 35, baseType: !339, size: 64, offset: 32768)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !332, file: !331, line: 38, baseType: !225, size: 64, offset: 32832)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !332, file: !331, line: 39, baseType: !225, size: 64, offset: 32896)
!343 = !{!344, !0, !387, !389}
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "fontmap", scope: !346, file: !347, line: 370, type: !378, isLocal: true, isDefinition: true)
!346 = distinct !DISubprogram(name: "GetTypeInfoByFamily", scope: !347, file: !347, line: 346, type: !348, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !366)
!347 = !DIFile(filename: "apps/538.imagick_r/src/magick/type.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3f5eb7e7cb071fcaa52e758f28cd7051")
!348 = !DISubroutineType(types: !349)
!349 = !{!219, !251, !350, !351, !352, !353}
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !28, line: 219, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !33, line: 102, size: 448, elements: !356)
!356 = !{!357, !359, !360, !361, !362, !363, !364, !365}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !355, file: !33, line: 105, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !33, line: 100, baseType: !32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !355, file: !33, line: 108, baseType: !132, size: 32, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !355, file: !33, line: 111, baseType: !229, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !355, file: !33, line: 112, baseType: !229, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !355, file: !33, line: 115, baseType: !250, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !355, file: !33, line: 118, baseType: !245, size: 32, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !355, file: !33, line: 121, baseType: !320, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !355, file: !33, line: 124, baseType: !225, size: 64, offset: 384)
!366 = !{!367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!367 = !DILocalVariable(name: "family", arg: 1, scope: !346, file: !347, line: 346, type: !251)
!368 = !DILocalVariable(name: "style", arg: 2, scope: !346, file: !347, line: 347, type: !350)
!369 = !DILocalVariable(name: "stretch", arg: 3, scope: !346, file: !347, line: 347, type: !351)
!370 = !DILocalVariable(name: "weight", arg: 4, scope: !346, file: !347, line: 347, type: !352)
!371 = !DILocalVariable(name: "exception", arg: 5, scope: !346, file: !347, line: 348, type: !353)
!372 = !DILocalVariable(name: "type_info", scope: !346, file: !347, line: 358, type: !219)
!373 = !DILocalVariable(name: "p", scope: !346, file: !347, line: 361, type: !219)
!374 = !DILocalVariable(name: "i", scope: !346, file: !347, line: 364, type: !258)
!375 = !DILocalVariable(name: "range", scope: !346, file: !347, line: 367, type: !258)
!376 = !DILocalVariable(name: "max_score", scope: !346, file: !347, line: 383, type: !225)
!377 = !DILocalVariable(name: "score", scope: !346, file: !347, line: 384, type: !225)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 1024, elements: !385)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "Fontmap", scope: !346, file: !347, line: 355, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Fontmap", scope: !346, file: !347, line: 350, size: 128, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !347, line: 353, baseType: !251, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "substitute", scope: !381, file: !347, line: 354, baseType: !251, size: 64, offset: 64)
!385 = !{!386}
!386 = !DISubrange(count: 8)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "type_cache", scope: !2, file: !347, line: 122, type: !253, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "TypeMap", scope: !2, file: !347, line: 108, type: !251, isLocal: true, isDefinition: true)
!391 = !{i32 7, !"Dwarf Version", i32 5}
!392 = !{i32 2, !"Debug Info Version", i32 3}
!393 = !{i32 1, !"wchar_size", i32 4}
!394 = !{i32 7, !"PIC Level", i32 2}
!395 = !{i32 7, !"PIE Level", i32 2}
!396 = !{i32 7, !"uwtable", i32 2}
!397 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!398 = distinct !DISubprogram(name: "GetTypeInfo", scope: !347, file: !347, line: 274, type: !399, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!219, !251, !353}
!401 = !{!402, !403, !404}
!402 = !DILocalVariable(name: "name", arg: 1, scope: !398, file: !347, line: 274, type: !251)
!403 = !DILocalVariable(name: "exception", arg: 2, scope: !398, file: !347, line: 275, type: !353)
!404 = !DILocalVariable(name: "type_info", scope: !398, file: !347, line: 278, type: !219)
!405 = !DILocation(line: 0, scope: !398)
!406 = !DILocalVariable(name: "exception", arg: 1, scope: !407, file: !347, line: 903, type: !353)
!407 = distinct !DISubprogram(name: "IsTypeTreeInstantiated", scope: !347, file: !347, line: 903, type: !408, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!245, !353}
!410 = !{!406}
!411 = !DILocation(line: 0, scope: !407, inlinedAt: !412)
!412 = distinct !DILocation(line: 281, column: 7, scope: !413)
!413 = distinct !DILexicalBlock(scope: !398, file: !347, line: 281, column: 7)
!414 = !DILocation(line: 905, column: 7, scope: !415, inlinedAt: !412)
!415 = distinct !DILexicalBlock(scope: !407, file: !347, line: 905, column: 7)
!416 = !{!417, !417, i64 0}
!417 = !{!"any pointer", !418, i64 0}
!418 = !{!"omnipotent char", !419, i64 0}
!419 = !{!"Simple C/C++ TBAA"}
!420 = !DILocation(line: 905, column: 18, scope: !415, inlinedAt: !412)
!421 = !DILocation(line: 905, column: 7, scope: !407, inlinedAt: !412)
!422 = !DILocation(line: 907, column: 11, scope: !423, inlinedAt: !412)
!423 = distinct !DILexicalBlock(scope: !424, file: !347, line: 907, column: 11)
!424 = distinct !DILexicalBlock(scope: !415, file: !347, line: 906, column: 5)
!425 = !DILocation(line: 907, column: 26, scope: !423, inlinedAt: !412)
!426 = !DILocation(line: 907, column: 11, scope: !424, inlinedAt: !412)
!427 = !DILocation(line: 908, column: 9, scope: !423, inlinedAt: !412)
!428 = !DILocation(line: 909, column: 25, scope: !424, inlinedAt: !412)
!429 = !DILocation(line: 909, column: 7, scope: !424, inlinedAt: !412)
!430 = !DILocation(line: 910, column: 11, scope: !431, inlinedAt: !412)
!431 = distinct !DILexicalBlock(scope: !424, file: !347, line: 910, column: 11)
!432 = !DILocation(line: 910, column: 22, scope: !431, inlinedAt: !412)
!433 = !DILocation(line: 910, column: 11, scope: !424, inlinedAt: !412)
!434 = !DILocalVariable(name: "filename", arg: 1, scope: !435, file: !347, line: 186, type: !251)
!435 = distinct !DISubprogram(name: "AcquireTypeCache", scope: !347, file: !347, line: 186, type: !436, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !438)
!436 = !DISubroutineType(types: !437)
!437 = !{!253, !251, !353}
!438 = !{!434, !439, !440, !442, !443, !446, !447, !449, !450, !451, !456}
!439 = !DILocalVariable(name: "exception", arg: 2, scope: !435, file: !347, line: 187, type: !353)
!440 = !DILocalVariable(name: "status", scope: !435, file: !347, line: 190, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !28, line: 147, baseType: !7)
!442 = !DILocalVariable(name: "type_cache", scope: !435, file: !347, line: 193, type: !253)
!443 = !DILocalVariable(name: "message", scope: !444, file: !347, line: 198, type: !229)
!444 = distinct !DILexicalBlock(scope: !445, file: !347, line: 198, column: 5)
!445 = distinct !DILexicalBlock(scope: !435, file: !347, line: 197, column: 7)
!446 = !DILocalVariable(name: "exception", scope: !444, file: !347, line: 198, type: !354)
!447 = !DILocalVariable(name: "font_path", scope: !448, file: !347, line: 203, type: !229)
!448 = distinct !DILexicalBlock(scope: !435, file: !347, line: 201, column: 3)
!449 = !DILocalVariable(name: "path", scope: !448, file: !347, line: 204, type: !335)
!450 = !DILocalVariable(name: "option", scope: !448, file: !347, line: 207, type: !328)
!451 = !DILocalVariable(name: "options", scope: !448, file: !347, line: 210, type: !452)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !454, line: 34, baseType: !455)
!454 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !454, line: 33, flags: DIFlagFwdDecl)
!456 = !DILocalVariable(name: "option", scope: !457, file: !347, line: 227, type: !229)
!457 = distinct !DILexicalBlock(scope: !458, file: !347, line: 225, column: 7)
!458 = distinct !DILexicalBlock(scope: !448, file: !347, line: 224, column: 9)
!459 = !DILocation(line: 0, scope: !435, inlinedAt: !460)
!460 = distinct !DILocation(line: 912, column: 22, scope: !461, inlinedAt: !412)
!461 = distinct !DILexicalBlock(scope: !431, file: !347, line: 911, column: 9)
!462 = !DILocation(line: 195, column: 14, scope: !435, inlinedAt: !460)
!463 = !DILocation(line: 197, column: 18, scope: !445, inlinedAt: !460)
!464 = !DILocation(line: 197, column: 7, scope: !435, inlinedAt: !460)
!465 = !DILocation(line: 198, column: 5, scope: !444, inlinedAt: !460)
!466 = !{!467, !467, i64 0}
!467 = !{!"int", !418, i64 0}
!468 = !DILocation(line: 0, scope: !444, inlinedAt: !460)
!469 = !DILocation(line: 202, column: 5, scope: !448, inlinedAt: !460)
!470 = !DILocation(line: 204, column: 7, scope: !448, inlinedAt: !460)
!471 = !DILocation(line: 212, column: 10, scope: !448, inlinedAt: !460)
!472 = !{!418, !418, i64 0}
!473 = !DILocation(line: 213, column: 13, scope: !448, inlinedAt: !460)
!474 = !DILocation(line: 0, scope: !448, inlinedAt: !460)
!475 = !DILocation(line: 214, column: 33, scope: !448, inlinedAt: !460)
!476 = !DILocation(line: 215, column: 19, scope: !448, inlinedAt: !460)
!477 = !DILocation(line: 215, column: 5, scope: !448, inlinedAt: !460)
!478 = !DILocation(line: 217, column: 36, scope: !479, inlinedAt: !460)
!479 = distinct !DILexicalBlock(scope: !448, file: !347, line: 216, column: 5)
!480 = !DILocation(line: 217, column: 14, scope: !479, inlinedAt: !460)
!481 = !DILocation(line: 219, column: 9, scope: !479, inlinedAt: !460)
!482 = !DILocation(line: 219, column: 36, scope: !479, inlinedAt: !460)
!483 = !DILocation(line: 218, column: 15, scope: !479, inlinedAt: !460)
!484 = !DILocation(line: 220, column: 35, scope: !479, inlinedAt: !460)
!485 = distinct !{!485, !477, !486, !487, !488}
!486 = !DILocation(line: 221, column: 5, scope: !448, inlinedAt: !460)
!487 = !{!"llvm.loop.mustprogress"}
!488 = !{!"llvm.loop.unroll.disable"}
!489 = !DILocation(line: 222, column: 13, scope: !448, inlinedAt: !460)
!490 = !DILocation(line: 223, column: 15, scope: !448, inlinedAt: !460)
!491 = !DILocation(line: 224, column: 19, scope: !458, inlinedAt: !460)
!492 = !DILocation(line: 224, column: 9, scope: !448, inlinedAt: !460)
!493 = !DILocation(line: 232, column: 16, scope: !457, inlinedAt: !460)
!494 = !DILocation(line: 234, column: 16, scope: !457, inlinedAt: !460)
!495 = !DILocation(line: 0, scope: !457, inlinedAt: !460)
!496 = !DILocation(line: 235, column: 20, scope: !497, inlinedAt: !460)
!497 = distinct !DILexicalBlock(scope: !457, file: !347, line: 235, column: 13)
!498 = !DILocation(line: 235, column: 13, scope: !457, inlinedAt: !460)
!499 = !DILocation(line: 237, column: 21, scope: !500, inlinedAt: !460)
!500 = distinct !DILexicalBlock(scope: !497, file: !347, line: 236, column: 11)
!501 = !DILocation(line: 238, column: 20, scope: !500, inlinedAt: !460)
!502 = !DILocation(line: 239, column: 11, scope: !500, inlinedAt: !460)
!503 = !DILocation(line: 240, column: 19, scope: !457, inlinedAt: !460)
!504 = !DILocation(line: 241, column: 7, scope: !457, inlinedAt: !460)
!505 = !DILocation(line: 242, column: 3, scope: !435, inlinedAt: !460)
!506 = !DILocation(line: 244, column: 7, scope: !507, inlinedAt: !460)
!507 = distinct !DILexicalBlock(scope: !435, file: !347, line: 244, column: 7)
!508 = !DILocation(line: 244, column: 47, scope: !507, inlinedAt: !460)
!509 = !DILocation(line: 244, column: 7, scope: !435, inlinedAt: !460)
!510 = !DILocation(line: 245, column: 13, scope: !507, inlinedAt: !460)
!511 = !DILocation(line: 245, column: 5, scope: !507, inlinedAt: !460)
!512 = !DILocation(line: 912, column: 21, scope: !461, inlinedAt: !412)
!513 = !DILocation(line: 921, column: 9, scope: !461, inlinedAt: !412)
!514 = !DILocation(line: 922, column: 27, scope: !424, inlinedAt: !412)
!515 = !DILocation(line: 922, column: 7, scope: !424, inlinedAt: !412)
!516 = !DILocation(line: 924, column: 10, scope: !407, inlinedAt: !412)
!517 = !DILocation(line: 924, column: 21, scope: !407, inlinedAt: !412)
!518 = !DILocation(line: 281, column: 7, scope: !398)
!519 = !DILocation(line: 283, column: 21, scope: !398)
!520 = !DILocation(line: 283, column: 3, scope: !398)
!521 = !DILocation(line: 284, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !398, file: !347, line: 284, column: 7)
!523 = !DILocation(line: 284, column: 37, scope: !522)
!524 = !DILocation(line: 284, column: 41, scope: !522)
!525 = !DILocation(line: 284, column: 65, scope: !522)
!526 = !DILocation(line: 284, column: 7, scope: !398)
!527 = !DILocation(line: 286, column: 30, scope: !528)
!528 = distinct !DILexicalBlock(scope: !522, file: !347, line: 285, column: 5)
!529 = !DILocation(line: 286, column: 7, scope: !528)
!530 = !DILocation(line: 287, column: 60, scope: !528)
!531 = !DILocation(line: 287, column: 36, scope: !528)
!532 = !DILocation(line: 289, column: 7, scope: !528)
!533 = !DILocation(line: 291, column: 54, scope: !398)
!534 = !DILocation(line: 291, column: 32, scope: !398)
!535 = !DILocation(line: 293, column: 3, scope: !398)
!536 = !DILocation(line: 294, column: 1, scope: !398)
!537 = !DISubprogram(name: "LockSemaphoreInfo", scope: !322, file: !322, line: 37, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !320}
!540 = !{}
!541 = !DISubprogram(name: "LocaleCompare", scope: !331, file: !331, line: 66, type: !542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!542 = !DISubroutineType(types: !543)
!543 = !{!132, !251, !251}
!544 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !255, file: !255, line: 55, type: !545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !253}
!547 = !DISubprogram(name: "GetNextValueInSplayTree", scope: !255, file: !255, line: 35, type: !548, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!548 = !DISubroutineType(types: !549)
!549 = !{!550, !253}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!552 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !322, file: !322, line: 39, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!553 = !DISubprogram(name: "GetValueFromSplayTree", scope: !255, file: !255, line: 36, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!554 = !DISubroutineType(types: !555)
!555 = !{!550, !253, !550}
!556 = !DILocation(line: 0, scope: !346)
!557 = !DILocation(line: 524, column: 15, scope: !558)
!558 = distinct !DILexicalBlock(scope: !346, file: !347, line: 523, column: 7)
!559 = !DILocation(line: 389, column: 10, scope: !346)
!560 = !DILocation(line: 390, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !346, file: !347, line: 390, column: 7)
!562 = !DILocation(line: 390, column: 18, scope: !561)
!563 = !DILocation(line: 390, column: 7, scope: !346)
!564 = !DILocation(line: 392, column: 21, scope: !346)
!565 = !DILocation(line: 392, column: 3, scope: !346)
!566 = !DILocation(line: 393, column: 26, scope: !346)
!567 = !DILocation(line: 393, column: 3, scope: !346)
!568 = !DILocation(line: 395, column: 48, scope: !346)
!569 = !DILocation(line: 395, column: 24, scope: !346)
!570 = !DILocation(line: 396, column: 12, scope: !346)
!571 = !DILocation(line: 396, column: 3, scope: !346)
!572 = !DILocation(line: 398, column: 12, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !347, line: 398, column: 9)
!574 = distinct !DILexicalBlock(scope: !346, file: !347, line: 397, column: 3)
!575 = !{!576, !417, i64 32}
!576 = !{!"_TypeInfo", !577, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !418, i64 40, !418, i64 44, !577, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !417, i64 88, !418, i64 96, !417, i64 104, !417, i64 112, !577, i64 120}
!577 = !{!"long", !418, i64 0}
!578 = !DILocation(line: 398, column: 19, scope: !573)
!579 = !DILocation(line: 398, column: 9, scope: !574)
!580 = !DILocation(line: 0, scope: !574)
!581 = distinct !{!581, !571, !582, !487, !488}
!582 = !DILocation(line: 436, column: 3, scope: !346)
!583 = !DILocation(line: 403, column: 9, scope: !574)
!584 = !DILocation(line: 405, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !347, line: 405, column: 13)
!586 = distinct !DILexicalBlock(scope: !587, file: !347, line: 404, column: 7)
!587 = distinct !DILexicalBlock(scope: !574, file: !347, line: 403, column: 9)
!588 = !DILocation(line: 405, column: 47, scope: !585)
!589 = !DILocation(line: 405, column: 53, scope: !585)
!590 = !DILocation(line: 406, column: 31, scope: !585)
!591 = !DILocation(line: 406, column: 14, scope: !585)
!592 = !DILocation(line: 406, column: 51, scope: !585)
!593 = !DILocation(line: 405, column: 13, scope: !586)
!594 = !DILocation(line: 413, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !587, file: !347, line: 413, column: 11)
!596 = !DILocation(line: 413, column: 43, scope: !595)
!597 = !DILocation(line: 413, column: 11, scope: !587)
!598 = !DILocation(line: 418, column: 35, scope: !599)
!599 = distinct !DILexicalBlock(scope: !574, file: !347, line: 418, column: 9)
!600 = !DILocation(line: 418, column: 65, scope: !599)
!601 = !{!576, !418, i64 40}
!602 = !DILocation(line: 418, column: 71, scope: !599)
!603 = !DILocation(line: 418, column: 9, scope: !574)
!604 = !DILocation(line: 423, column: 39, scope: !605)
!605 = distinct !DILexicalBlock(scope: !574, file: !347, line: 423, column: 9)
!606 = !DILocation(line: 424, column: 13, scope: !605)
!607 = !{!576, !418, i64 44}
!608 = !DILocation(line: 424, column: 21, scope: !605)
!609 = !DILocation(line: 423, column: 9, scope: !574)
!610 = !DILocation(line: 429, column: 23, scope: !611)
!611 = distinct !DILexicalBlock(scope: !574, file: !347, line: 429, column: 9)
!612 = !DILocation(line: 429, column: 30, scope: !611)
!613 = !{!576, !577, i64 48}
!614 = !DILocation(line: 429, column: 37, scope: !611)
!615 = !DILocation(line: 429, column: 9, scope: !574)
!616 = !DILocation(line: 437, column: 23, scope: !346)
!617 = !DILocation(line: 437, column: 3, scope: !346)
!618 = !DILocation(line: 438, column: 7, scope: !346)
!619 = !DILocation(line: 444, column: 21, scope: !346)
!620 = !DILocation(line: 444, column: 3, scope: !346)
!621 = !DILocation(line: 445, column: 26, scope: !346)
!622 = !DILocation(line: 445, column: 3, scope: !346)
!623 = !DILocation(line: 446, column: 48, scope: !346)
!624 = !DILocation(line: 446, column: 24, scope: !346)
!625 = !DILocation(line: 447, column: 12, scope: !346)
!626 = !DILocation(line: 447, column: 3, scope: !346)
!627 = !DILocation(line: 496, column: 23, scope: !346)
!628 = !DILocation(line: 496, column: 3, scope: !346)
!629 = !DILocation(line: 497, column: 7, scope: !346)
!630 = !DILocation(line: 454, column: 9, scope: !631)
!631 = distinct !DILexicalBlock(scope: !346, file: !347, line: 448, column: 3)
!632 = !DILocation(line: 449, column: 12, scope: !633)
!633 = distinct !DILexicalBlock(scope: !631, file: !347, line: 449, column: 9)
!634 = !DILocation(line: 449, column: 19, scope: !633)
!635 = !DILocation(line: 449, column: 9, scope: !631)
!636 = !DILocation(line: 456, column: 14, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !347, line: 456, column: 13)
!638 = distinct !DILexicalBlock(scope: !639, file: !347, line: 455, column: 7)
!639 = distinct !DILexicalBlock(scope: !631, file: !347, line: 454, column: 9)
!640 = !DILocation(line: 456, column: 47, scope: !637)
!641 = !DILocation(line: 456, column: 53, scope: !637)
!642 = !DILocation(line: 457, column: 31, scope: !637)
!643 = !DILocation(line: 457, column: 14, scope: !637)
!644 = !DILocation(line: 457, column: 51, scope: !637)
!645 = !DILocation(line: 456, column: 13, scope: !638)
!646 = !DILocation(line: 0, scope: !631)
!647 = distinct !{!647, !626, !648, !487, !488}
!648 = !DILocation(line: 495, column: 3, scope: !346)
!649 = !DILocation(line: 464, column: 11, scope: !650)
!650 = distinct !DILexicalBlock(scope: !639, file: !347, line: 464, column: 11)
!651 = !DILocation(line: 464, column: 43, scope: !650)
!652 = !DILocation(line: 464, column: 11, scope: !639)
!653 = !DILocation(line: 470, column: 35, scope: !654)
!654 = distinct !DILexicalBlock(scope: !631, file: !347, line: 470, column: 9)
!655 = !DILocation(line: 470, column: 65, scope: !654)
!656 = !DILocation(line: 470, column: 71, scope: !654)
!657 = !DILocation(line: 470, column: 9, scope: !631)
!658 = !DILocation(line: 473, column: 35, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !347, line: 473, column: 11)
!660 = !DILocation(line: 476, column: 9, scope: !631)
!661 = !DILocation(line: 477, column: 12, scope: !662)
!662 = distinct !DILexicalBlock(scope: !631, file: !347, line: 476, column: 9)
!663 = !DILocation(line: 477, column: 7, scope: !662)
!664 = !DILocalVariable(name: "x", arg: 1, scope: !665, file: !347, line: 339, type: !352)
!665 = distinct !DISubprogram(name: "MagickMin", scope: !347, file: !347, line: 339, type: !666, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{!225, !352, !352}
!668 = !{!664, !669}
!669 = !DILocalVariable(name: "y", arg: 2, scope: !665, file: !347, line: 339, type: !352)
!670 = !DILocation(line: 0, scope: !665, inlinedAt: !671)
!671 = distinct !DILocation(line: 479, column: 44, scope: !662)
!672 = !DILocation(line: 479, column: 69, scope: !662)
!673 = !DILocalVariable(name: "x", arg: 1, scope: !674, file: !347, line: 332, type: !352)
!674 = distinct !DISubprogram(name: "MagickMax", scope: !347, file: !347, line: 332, type: !666, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!675 = !{!673, !676}
!676 = !DILocalVariable(name: "y", arg: 2, scope: !674, file: !347, line: 332, type: !352)
!677 = !DILocation(line: 0, scope: !674, inlinedAt: !678)
!678 = distinct !DILocation(line: 479, column: 34, scope: !662)
!679 = !DILocation(line: 0, scope: !665, inlinedAt: !680)
!680 = distinct !DILocation(line: 480, column: 29, scope: !662)
!681 = !DILocation(line: 0, scope: !665, inlinedAt: !682)
!682 = distinct !DILocation(line: 480, column: 19, scope: !662)
!683 = !DILocation(line: 479, column: 76, scope: !662)
!684 = !DILocation(line: 479, column: 17, scope: !662)
!685 = !DILocation(line: 480, column: 64, scope: !662)
!686 = !DILocation(line: 479, column: 12, scope: !662)
!687 = !DILocation(line: 0, scope: !662)
!688 = !DILocation(line: 481, column: 39, scope: !689)
!689 = distinct !DILexicalBlock(scope: !631, file: !347, line: 481, column: 9)
!690 = !DILocation(line: 482, column: 12, scope: !689)
!691 = !DILocation(line: 482, column: 7, scope: !689)
!692 = !DILocation(line: 486, column: 58, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !347, line: 484, column: 7)
!694 = !DILocation(line: 486, column: 55, scope: !693)
!695 = !DILocation(line: 0, scope: !674, inlinedAt: !696)
!696 = distinct !DILocation(line: 486, column: 37, scope: !693)
!697 = !DILocation(line: 0, scope: !665, inlinedAt: !698)
!698 = distinct !DILocation(line: 487, column: 21, scope: !693)
!699 = !DILocation(line: 486, column: 66, scope: !693)
!700 = !DILocation(line: 486, column: 25, scope: !693)
!701 = !DILocation(line: 486, column: 14, scope: !693)
!702 = !DILocation(line: 0, scope: !689)
!703 = !DILocation(line: 489, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !631, file: !347, line: 489, column: 9)
!705 = !DILocation(line: 489, column: 9, scope: !631)
!706 = !DILocation(line: 494, column: 50, scope: !631)
!707 = !DILocation(line: 494, column: 26, scope: !631)
!708 = !DILocation(line: 497, column: 17, scope: !709)
!709 = distinct !DILexicalBlock(scope: !346, file: !347, line: 497, column: 7)
!710 = !DILocation(line: 504, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !347, line: 503, column: 3)
!712 = distinct !DILexicalBlock(scope: !713, file: !347, line: 502, column: 3)
!713 = distinct !DILexicalBlock(scope: !346, file: !347, line: 502, column: 3)
!714 = !DILocation(line: 506, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !347, line: 506, column: 13)
!716 = distinct !DILexicalBlock(scope: !717, file: !347, line: 505, column: 7)
!717 = distinct !DILexicalBlock(scope: !711, file: !347, line: 504, column: 9)
!718 = !DILocation(line: 506, column: 53, scope: !715)
!719 = !DILocation(line: 506, column: 59, scope: !715)
!720 = !DILocation(line: 507, column: 14, scope: !715)
!721 = !DILocation(line: 507, column: 57, scope: !715)
!722 = !DILocation(line: 506, column: 13, scope: !716)
!723 = !DILocation(line: 502, column: 48, scope: !712)
!724 = !DILocation(line: 502, column: 13, scope: !712)
!725 = !DILocation(line: 502, column: 24, scope: !712)
!726 = !{!727, !417, i64 0}
!727 = !{!"_Fontmap", !417, i64 0, !417, i64 8}
!728 = !DILocation(line: 502, column: 29, scope: !712)
!729 = !DILocation(line: 502, column: 3, scope: !713)
!730 = distinct !{!730, !729, !731, !487, !488}
!731 = !DILocation(line: 516, column: 3, scope: !713)
!732 = !DILocation(line: 511, column: 11, scope: !733)
!733 = distinct !DILexicalBlock(scope: !717, file: !347, line: 511, column: 11)
!734 = !DILocation(line: 511, column: 49, scope: !733)
!735 = !DILocation(line: 511, column: 11, scope: !717)
!736 = !DILocation(line: 513, column: 46, scope: !711)
!737 = !{!727, !417, i64 8}
!738 = !DILocation(line: 513, column: 15, scope: !711)
!739 = !DILocation(line: 517, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !346, file: !347, line: 517, column: 7)
!741 = !DILocation(line: 517, column: 7, scope: !346)
!742 = !DILocation(line: 520, column: 54, scope: !743)
!743 = distinct !DILexicalBlock(scope: !740, file: !347, line: 518, column: 5)
!744 = !DILocation(line: 519, column: 14, scope: !743)
!745 = !DILocation(line: 521, column: 7, scope: !743)
!746 = !DILocation(line: 523, column: 7, scope: !346)
!747 = !DILocation(line: 527, column: 1, scope: !346)
!748 = !DISubprogram(name: "ThrowMagickException", scope: !33, file: !33, line: 156, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!749 = !DISubroutineType(types: !750)
!750 = !{!245, !353, !251, !251, !352, !751, !251, !251, null}
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!752 = distinct !DISubprogram(name: "GetTypeInfoList", scope: !347, file: !347, line: 578, type: !753, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!753 = !DISubroutineType(types: !754)
!754 = !{!263, !251, !755, !353}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!756 = !{!757, !758, !759, !760, !761, !762}
!757 = !DILocalVariable(name: "pattern", arg: 1, scope: !752, file: !347, line: 578, type: !251)
!758 = !DILocalVariable(name: "number_fonts", arg: 2, scope: !752, file: !347, line: 579, type: !755)
!759 = !DILocalVariable(name: "exception", arg: 3, scope: !752, file: !347, line: 579, type: !353)
!760 = !DILocalVariable(name: "fonts", scope: !752, file: !347, line: 582, type: !263)
!761 = !DILocalVariable(name: "p", scope: !752, file: !347, line: 585, type: !219)
!762 = !DILocalVariable(name: "i", scope: !752, file: !347, line: 588, type: !258)
!763 = !DILocation(line: 0, scope: !752)
!764 = !DILocation(line: 594, column: 10, scope: !752)
!765 = !DILocation(line: 596, column: 16, scope: !752)
!766 = !{!577, !577, i64 0}
!767 = !DILocation(line: 597, column: 5, scope: !752)
!768 = !DILocation(line: 598, column: 9, scope: !769)
!769 = distinct !DILexicalBlock(scope: !752, file: !347, line: 598, column: 7)
!770 = !DILocation(line: 598, column: 7, scope: !752)
!771 = !DILocation(line: 601, column: 33, scope: !752)
!772 = !DILocation(line: 601, column: 5, scope: !752)
!773 = !DILocation(line: 601, column: 44, scope: !752)
!774 = !DILocation(line: 600, column: 29, scope: !752)
!775 = !DILocation(line: 602, column: 13, scope: !776)
!776 = distinct !DILexicalBlock(scope: !752, file: !347, line: 602, column: 7)
!777 = !DILocation(line: 602, column: 7, scope: !752)
!778 = !DILocation(line: 607, column: 21, scope: !752)
!779 = !DILocation(line: 607, column: 3, scope: !752)
!780 = !DILocation(line: 608, column: 26, scope: !752)
!781 = !DILocation(line: 608, column: 3, scope: !752)
!782 = !DILocation(line: 609, column: 48, scope: !752)
!783 = !DILocation(line: 609, column: 24, scope: !752)
!784 = !DILocation(line: 610, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !786, file: !347, line: 610, column: 3)
!786 = distinct !DILexicalBlock(scope: !752, file: !347, line: 610, column: 3)
!787 = !DILocation(line: 610, column: 3, scope: !786)
!788 = !DILocation(line: 612, column: 13, scope: !789)
!789 = distinct !DILexicalBlock(scope: !790, file: !347, line: 612, column: 9)
!790 = distinct !DILexicalBlock(scope: !785, file: !347, line: 611, column: 3)
!791 = !{!576, !418, i64 96}
!792 = !DILocation(line: 612, column: 21, scope: !789)
!793 = !DILocation(line: 612, column: 37, scope: !789)
!794 = !DILocation(line: 613, column: 28, scope: !789)
!795 = !{!576, !417, i64 16}
!796 = !DILocation(line: 613, column: 10, scope: !789)
!797 = !DILocation(line: 613, column: 54, scope: !789)
!798 = !DILocation(line: 612, column: 9, scope: !790)
!799 = !DILocation(line: 614, column: 14, scope: !789)
!800 = !DILocation(line: 614, column: 7, scope: !789)
!801 = !DILocation(line: 614, column: 17, scope: !789)
!802 = !DILocation(line: 0, scope: !786)
!803 = !DILocation(line: 615, column: 50, scope: !790)
!804 = !DILocation(line: 615, column: 26, scope: !790)
!805 = distinct !{!805, !787, !806, !487, !488}
!806 = !DILocation(line: 616, column: 3, scope: !786)
!807 = !DILocation(line: 617, column: 23, scope: !752)
!808 = !DILocation(line: 617, column: 3, scope: !752)
!809 = !DILocation(line: 618, column: 3, scope: !752)
!810 = !DILocation(line: 619, column: 3, scope: !752)
!811 = !DILocation(line: 619, column: 11, scope: !752)
!812 = !DILocation(line: 620, column: 16, scope: !752)
!813 = !DILocation(line: 621, column: 3, scope: !752)
!814 = !DILocation(line: 622, column: 1, scope: !752)
!815 = !DISubprogram(name: "LogMagickEvent", scope: !106, file: !106, line: 83, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!816 = !DISubroutineType(types: !817)
!817 = !{!245, !818, !251, !251, !352, !251, null}
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !106, line: 58, baseType: !105)
!820 = !DISubprogram(name: "AcquireQuantumMemory", scope: !821, file: !821, line: 42, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!821 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!822 = !DISubroutineType(types: !823)
!823 = !{!250, !352, !352}
!824 = !DISubprogram(name: "GetNumberOfNodesInSplayTree", scope: !255, file: !255, line: 49, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!825 = !DISubroutineType(types: !826)
!826 = !{!225, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!829 = !DISubprogram(name: "GlobExpression", scope: !830, file: !830, line: 36, type: !831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!830 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!831 = !DISubroutineType(types: !832)
!832 = !{!245, !251, !251, !833}
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!834 = !DISubprogram(name: "qsort", scope: !835, file: !835, line: 830, type: !836, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!835 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!836 = !DISubroutineType(types: !837)
!837 = !{null, !250, !225, !225, !838}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !835, line: 808, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!132, !550, !550}
!842 = distinct !DISubprogram(name: "TypeInfoCompare", scope: !347, file: !347, line: 561, type: !840, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!843 = !{!844, !845, !846, !847}
!844 = !DILocalVariable(name: "x", arg: 1, scope: !842, file: !347, line: 561, type: !550)
!845 = !DILocalVariable(name: "y", arg: 2, scope: !842, file: !347, line: 561, type: !550)
!846 = !DILocalVariable(name: "p", scope: !842, file: !347, line: 564, type: !263)
!847 = !DILocalVariable(name: "q", scope: !842, file: !347, line: 565, type: !263)
!848 = !DILocation(line: 0, scope: !842)
!849 = !DILocation(line: 569, column: 22, scope: !850)
!850 = distinct !DILexicalBlock(scope: !842, file: !347, line: 569, column: 7)
!851 = !DILocation(line: 569, column: 27, scope: !850)
!852 = !{!576, !417, i64 8}
!853 = !DILocation(line: 569, column: 33, scope: !850)
!854 = !DILocation(line: 569, column: 38, scope: !850)
!855 = !DILocation(line: 569, column: 7, scope: !850)
!856 = !DILocation(line: 569, column: 44, scope: !850)
!857 = !DILocation(line: 569, column: 7, scope: !842)
!858 = !DILocation(line: 570, column: 32, scope: !850)
!859 = !DILocation(line: 570, column: 38, scope: !850)
!860 = !DILocation(line: 570, column: 43, scope: !850)
!861 = !DILocation(line: 570, column: 5, scope: !850)
!862 = !DILocation(line: 571, column: 30, scope: !842)
!863 = !DILocation(line: 571, column: 36, scope: !842)
!864 = !DILocation(line: 571, column: 41, scope: !842)
!865 = !DILocation(line: 571, column: 3, scope: !842)
!866 = !DILocation(line: 572, column: 1, scope: !842)
!867 = distinct !DISubprogram(name: "GetTypeList", scope: !347, file: !347, line: 671, type: !868, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{!264, !251, !755, !353}
!870 = !{!871, !872, !873, !874, !875, !876}
!871 = !DILocalVariable(name: "pattern", arg: 1, scope: !867, file: !347, line: 671, type: !251)
!872 = !DILocalVariable(name: "number_fonts", arg: 2, scope: !867, file: !347, line: 671, type: !755)
!873 = !DILocalVariable(name: "exception", arg: 3, scope: !867, file: !347, line: 672, type: !353)
!874 = !DILocalVariable(name: "fonts", scope: !867, file: !347, line: 675, type: !264)
!875 = !DILocalVariable(name: "p", scope: !867, file: !347, line: 678, type: !219)
!876 = !DILocalVariable(name: "i", scope: !867, file: !347, line: 681, type: !258)
!877 = !DILocation(line: 0, scope: !867)
!878 = !DILocation(line: 687, column: 10, scope: !867)
!879 = !DILocation(line: 689, column: 16, scope: !867)
!880 = !DILocation(line: 690, column: 5, scope: !867)
!881 = !DILocation(line: 691, column: 9, scope: !882)
!882 = distinct !DILexicalBlock(scope: !867, file: !347, line: 691, column: 7)
!883 = !DILocation(line: 691, column: 7, scope: !867)
!884 = !DILocation(line: 694, column: 33, scope: !867)
!885 = !DILocation(line: 694, column: 5, scope: !867)
!886 = !DILocation(line: 694, column: 44, scope: !867)
!887 = !DILocation(line: 693, column: 19, scope: !867)
!888 = !DILocation(line: 695, column: 13, scope: !889)
!889 = distinct !DILexicalBlock(scope: !867, file: !347, line: 695, column: 7)
!890 = !DILocation(line: 695, column: 7, scope: !867)
!891 = !DILocation(line: 700, column: 21, scope: !867)
!892 = !DILocation(line: 700, column: 3, scope: !867)
!893 = !DILocation(line: 701, column: 26, scope: !867)
!894 = !DILocation(line: 701, column: 3, scope: !867)
!895 = !DILocation(line: 702, column: 48, scope: !867)
!896 = !DILocation(line: 702, column: 24, scope: !867)
!897 = !DILocation(line: 703, column: 15, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !347, line: 703, column: 3)
!899 = distinct !DILexicalBlock(scope: !867, file: !347, line: 703, column: 3)
!900 = !DILocation(line: 703, column: 3, scope: !899)
!901 = !DILocation(line: 705, column: 13, scope: !902)
!902 = distinct !DILexicalBlock(scope: !903, file: !347, line: 705, column: 9)
!903 = distinct !DILexicalBlock(scope: !898, file: !347, line: 704, column: 3)
!904 = !DILocation(line: 705, column: 21, scope: !902)
!905 = !DILocation(line: 705, column: 37, scope: !902)
!906 = !DILocation(line: 706, column: 28, scope: !902)
!907 = !DILocation(line: 706, column: 10, scope: !902)
!908 = !DILocation(line: 706, column: 54, scope: !902)
!909 = !DILocation(line: 705, column: 9, scope: !903)
!910 = !DILocation(line: 707, column: 36, scope: !902)
!911 = !DILocation(line: 707, column: 18, scope: !902)
!912 = !DILocation(line: 707, column: 14, scope: !902)
!913 = !DILocation(line: 707, column: 7, scope: !902)
!914 = !DILocation(line: 707, column: 17, scope: !902)
!915 = !DILocation(line: 0, scope: !899)
!916 = !DILocation(line: 708, column: 50, scope: !903)
!917 = !DILocation(line: 708, column: 26, scope: !903)
!918 = distinct !{!918, !900, !919, !487, !488}
!919 = !DILocation(line: 709, column: 3, scope: !899)
!920 = !DILocation(line: 710, column: 23, scope: !867)
!921 = !DILocation(line: 710, column: 3, scope: !867)
!922 = !DILocation(line: 711, column: 3, scope: !867)
!923 = !DILocation(line: 712, column: 3, scope: !867)
!924 = !DILocation(line: 712, column: 11, scope: !867)
!925 = !DILocation(line: 713, column: 16, scope: !867)
!926 = !DILocation(line: 714, column: 3, scope: !867)
!927 = !DILocation(line: 715, column: 1, scope: !867)
!928 = !DISubprogram(name: "ConstantString", scope: !331, file: !331, line: 45, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!929 = !DISubroutineType(types: !930)
!930 = !{!229, !251}
!931 = distinct !DISubprogram(name: "TypeCompare", scope: !347, file: !347, line: 656, type: !840, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934, !935, !936}
!933 = !DILocalVariable(name: "x", arg: 1, scope: !931, file: !347, line: 656, type: !550)
!934 = !DILocalVariable(name: "y", arg: 2, scope: !931, file: !347, line: 656, type: !550)
!935 = !DILocalVariable(name: "p", scope: !931, file: !347, line: 659, type: !324)
!936 = !DILocalVariable(name: "q", scope: !931, file: !347, line: 660, type: !324)
!937 = !DILocation(line: 0, scope: !931)
!938 = !DILocation(line: 664, column: 24, scope: !931)
!939 = !DILocation(line: 664, column: 27, scope: !931)
!940 = !DILocation(line: 664, column: 10, scope: !931)
!941 = !DILocation(line: 664, column: 3, scope: !931)
!942 = distinct !DISubprogram(name: "ListTypeInfo", scope: !347, file: !347, line: 951, type: !943, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{!245, !265, !353}
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957}
!946 = !DILocalVariable(name: "file", arg: 1, scope: !942, file: !347, line: 951, type: !265)
!947 = !DILocalVariable(name: "exception", arg: 2, scope: !942, file: !347, line: 951, type: !353)
!948 = !DILocalVariable(name: "weight", scope: !942, file: !347, line: 954, type: !335)
!949 = !DILocalVariable(name: "family", scope: !942, file: !347, line: 957, type: !251)
!950 = !DILocalVariable(name: "glyphs", scope: !942, file: !347, line: 958, type: !251)
!951 = !DILocalVariable(name: "name", scope: !942, file: !347, line: 959, type: !251)
!952 = !DILocalVariable(name: "path", scope: !942, file: !347, line: 960, type: !251)
!953 = !DILocalVariable(name: "stretch", scope: !942, file: !347, line: 961, type: !251)
!954 = !DILocalVariable(name: "style", scope: !942, file: !347, line: 962, type: !251)
!955 = !DILocalVariable(name: "type_info", scope: !942, file: !347, line: 965, type: !263)
!956 = !DILocalVariable(name: "i", scope: !942, file: !347, line: 968, type: !258)
!957 = !DILocalVariable(name: "number_fonts", scope: !942, file: !347, line: 971, type: !225)
!958 = !DILocation(line: 0, scope: !942)
!959 = !DILocation(line: 953, column: 3, scope: !942)
!960 = !DILocation(line: 954, column: 5, scope: !942)
!961 = !DILocation(line: 970, column: 3, scope: !942)
!962 = !DILocation(line: 973, column: 12, scope: !963)
!963 = distinct !DILexicalBlock(scope: !942, file: !347, line: 973, column: 7)
!964 = !DILocation(line: 973, column: 7, scope: !942)
!965 = !DILocation(line: 975, column: 15, scope: !942)
!966 = !DILocation(line: 976, column: 13, scope: !942)
!967 = !DILocation(line: 977, column: 17, scope: !968)
!968 = distinct !DILexicalBlock(scope: !942, file: !347, line: 977, column: 7)
!969 = !DILocation(line: 977, column: 7, scope: !942)
!970 = !DILocation(line: 979, column: 10, scope: !942)
!971 = !DILocation(line: 981, column: 15, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !347, line: 981, column: 3)
!973 = distinct !DILexicalBlock(scope: !942, file: !347, line: 981, column: 3)
!974 = !DILocation(line: 981, column: 3, scope: !973)
!975 = !DILocation(line: 983, column: 9, scope: !976)
!976 = distinct !DILexicalBlock(scope: !977, file: !347, line: 983, column: 9)
!977 = distinct !DILexicalBlock(scope: !972, file: !347, line: 982, column: 3)
!978 = !DILocation(line: 983, column: 23, scope: !976)
!979 = !DILocation(line: 983, column: 31, scope: !976)
!980 = !DILocation(line: 983, column: 9, scope: !977)
!981 = !DILocation(line: 985, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !977, file: !347, line: 985, column: 9)
!983 = !DILocation(line: 985, column: 40, scope: !982)
!984 = !DILocation(line: 986, column: 44, scope: !982)
!985 = !DILocation(line: 986, column: 11, scope: !982)
!986 = !DILocation(line: 986, column: 50, scope: !982)
!987 = !DILocation(line: 986, column: 57, scope: !982)
!988 = !DILocation(line: 987, column: 11, scope: !982)
!989 = !DILocation(line: 987, column: 25, scope: !982)
!990 = !DILocation(line: 987, column: 30, scope: !982)
!991 = !DILocation(line: 985, column: 9, scope: !977)
!992 = !DILocation(line: 988, column: 14, scope: !982)
!993 = !DILocation(line: 988, column: 7, scope: !982)
!994 = !DILocation(line: 989, column: 10, scope: !977)
!995 = !DILocation(line: 989, column: 24, scope: !977)
!996 = !DILocation(line: 991, column: 23, scope: !997)
!997 = distinct !DILexicalBlock(scope: !977, file: !347, line: 991, column: 9)
!998 = !DILocation(line: 991, column: 28, scope: !997)
!999 = !DILocation(line: 991, column: 9, scope: !977)
!1000 = !DILocation(line: 994, column: 23, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !977, file: !347, line: 994, column: 9)
!1002 = !DILocation(line: 994, column: 30, scope: !1001)
!1003 = !DILocation(line: 994, column: 9, scope: !977)
!1004 = !DILocation(line: 996, column: 68, scope: !977)
!1005 = !DILocation(line: 996, column: 54, scope: !977)
!1006 = !DILocation(line: 996, column: 11, scope: !977)
!1007 = !DILocation(line: 997, column: 58, scope: !977)
!1008 = !DILocation(line: 997, column: 72, scope: !977)
!1009 = !DILocation(line: 997, column: 13, scope: !977)
!1010 = !DILocation(line: 999, column: 9, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !977, file: !347, line: 999, column: 9)
!1012 = !DILocation(line: 999, column: 23, scope: !1011)
!1013 = !{!576, !417, i64 88}
!1014 = !DILocation(line: 999, column: 30, scope: !1011)
!1015 = !DILocation(line: 999, column: 9, scope: !977)
!1016 = !DILocation(line: 1002, column: 21, scope: !977)
!1017 = !DILocation(line: 1001, column: 60, scope: !977)
!1018 = !DILocation(line: 1001, column: 12, scope: !977)
!1019 = !DILocation(line: 1003, column: 12, scope: !977)
!1020 = !DILocation(line: 1004, column: 12, scope: !977)
!1021 = !DILocation(line: 1005, column: 12, scope: !977)
!1022 = !DILocation(line: 1006, column: 12, scope: !977)
!1023 = !DILocation(line: 1007, column: 12, scope: !977)
!1024 = !DILocation(line: 1008, column: 12, scope: !977)
!1025 = !DILocation(line: 1009, column: 3, scope: !977)
!1026 = !DILocation(line: 981, column: 42, scope: !972)
!1027 = distinct !{!1027, !974, !1028, !487, !488}
!1028 = !DILocation(line: 1009, column: 3, scope: !973)
!1029 = !DILocation(line: 1010, column: 10, scope: !942)
!1030 = !DILocation(line: 1011, column: 33, scope: !942)
!1031 = !DILocation(line: 1012, column: 3, scope: !942)
!1032 = !DILocation(line: 1013, column: 1, scope: !942)
!1033 = !DISubprogram(name: "FormatLocaleFile", scope: !1034, file: !1034, line: 67, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1034 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!258, !265, !1037, null}
!1037 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!1038 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !131, file: !131, line: 157, type: !1039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!251, !1041, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !131, line: 99, baseType: !130)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!1044 = !DISubprogram(name: "FormatLocaleString", scope: !1034, file: !1034, line: 71, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!258, !1047, !352, !1037, null}
!1047 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !229)
!1048 = !DISubprogram(name: "fflush", scope: !259, file: !259, line: 218, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!132, !265}
!1051 = !DISubprogram(name: "RelinquishMagickMemory", scope: !821, file: !821, line: 51, type: !326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1052 = distinct !DISubprogram(name: "TypeComponentGenesis", scope: !347, file: !347, line: 1362, type: !1053, scopeLine: 1363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!245}
!1055 = !DILocation(line: 1364, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1052, file: !347, line: 1364, column: 7)
!1057 = !DILocation(line: 1364, column: 22, scope: !1056)
!1058 = !DILocation(line: 1364, column: 7, scope: !1052)
!1059 = !DILocation(line: 1365, column: 20, scope: !1056)
!1060 = !DILocation(line: 1365, column: 19, scope: !1056)
!1061 = !DILocation(line: 1365, column: 5, scope: !1056)
!1062 = !DILocation(line: 1366, column: 3, scope: !1052)
!1063 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !322, file: !322, line: 32, type: !1064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!320}
!1066 = distinct !DISubprogram(name: "TypeComponentTerminus", scope: !347, file: !347, line: 1387, type: !1067, scopeLine: 1388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !540)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null}
!1069 = !DILocation(line: 1389, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !347, line: 1389, column: 7)
!1071 = !DILocation(line: 1389, column: 22, scope: !1070)
!1072 = !DILocation(line: 1389, column: 7, scope: !1066)
!1073 = !DILocation(line: 1390, column: 5, scope: !1070)
!1074 = !DILocation(line: 1391, column: 21, scope: !1066)
!1075 = !DILocation(line: 1391, column: 3, scope: !1066)
!1076 = !DILocation(line: 1392, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1066, file: !347, line: 1392, column: 7)
!1078 = !DILocation(line: 1392, column: 18, scope: !1077)
!1079 = !DILocation(line: 1392, column: 7, scope: !1066)
!1080 = !DILocation(line: 1393, column: 16, scope: !1077)
!1081 = !DILocation(line: 1393, column: 15, scope: !1077)
!1082 = !DILocation(line: 1393, column: 5, scope: !1077)
!1083 = !DILocation(line: 1394, column: 23, scope: !1066)
!1084 = !DILocation(line: 1394, column: 3, scope: !1066)
!1085 = !DILocation(line: 1395, column: 3, scope: !1066)
!1086 = !DILocation(line: 1396, column: 1, scope: !1066)
!1087 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !322, file: !322, line: 35, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!1091 = !DISubprogram(name: "DestroySplayTree", scope: !255, file: !255, line: 44, type: !1092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!253, !253}
!1094 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !322, file: !322, line: 36, type: !1088, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1095 = !DISubprogram(name: "NewSplayTree", scope: !255, file: !255, line: 45, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!253, !839, !325, !325}
!1098 = distinct !DISubprogram(name: "DestroyTypeNode", scope: !347, file: !347, line: 159, type: !326, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1099)
!1099 = !{!1100, !1101}
!1100 = !DILocalVariable(name: "type_info", arg: 1, scope: !1098, file: !347, line: 159, type: !250)
!1101 = !DILocalVariable(name: "p", scope: !1098, file: !347, line: 162, type: !257)
!1102 = !DILocation(line: 0, scope: !1098)
!1103 = !DILocation(line: 165, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 165, column: 7)
!1105 = !DILocation(line: 165, column: 15, scope: !1104)
!1106 = !DILocation(line: 165, column: 7, scope: !1098)
!1107 = !DILocation(line: 166, column: 13, scope: !1104)
!1108 = !DILocation(line: 166, column: 12, scope: !1104)
!1109 = !DILocation(line: 166, column: 5, scope: !1104)
!1110 = !DILocation(line: 167, column: 10, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 167, column: 7)
!1112 = !DILocation(line: 167, column: 15, scope: !1111)
!1113 = !DILocation(line: 167, column: 7, scope: !1098)
!1114 = !DILocation(line: 168, column: 13, scope: !1111)
!1115 = !DILocation(line: 168, column: 12, scope: !1111)
!1116 = !DILocation(line: 168, column: 5, scope: !1111)
!1117 = !DILocation(line: 169, column: 10, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 169, column: 7)
!1119 = !{!576, !417, i64 24}
!1120 = !DILocation(line: 169, column: 22, scope: !1118)
!1121 = !DILocation(line: 169, column: 7, scope: !1098)
!1122 = !DILocation(line: 170, column: 20, scope: !1118)
!1123 = !DILocation(line: 170, column: 19, scope: !1118)
!1124 = !DILocation(line: 170, column: 5, scope: !1118)
!1125 = !DILocation(line: 171, column: 10, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 171, column: 7)
!1127 = !DILocation(line: 171, column: 17, scope: !1126)
!1128 = !DILocation(line: 171, column: 7, scope: !1098)
!1129 = !DILocation(line: 172, column: 15, scope: !1126)
!1130 = !DILocation(line: 172, column: 14, scope: !1126)
!1131 = !DILocation(line: 172, column: 5, scope: !1126)
!1132 = !DILocation(line: 173, column: 10, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 173, column: 7)
!1134 = !{!576, !417, i64 56}
!1135 = !DILocation(line: 173, column: 19, scope: !1133)
!1136 = !DILocation(line: 173, column: 7, scope: !1098)
!1137 = !DILocation(line: 174, column: 17, scope: !1133)
!1138 = !DILocation(line: 174, column: 16, scope: !1133)
!1139 = !DILocation(line: 174, column: 5, scope: !1133)
!1140 = !DILocation(line: 175, column: 10, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 175, column: 7)
!1142 = !{!576, !417, i64 64}
!1143 = !DILocation(line: 175, column: 18, scope: !1141)
!1144 = !DILocation(line: 175, column: 7, scope: !1098)
!1145 = !DILocation(line: 176, column: 16, scope: !1141)
!1146 = !DILocation(line: 176, column: 15, scope: !1141)
!1147 = !DILocation(line: 176, column: 5, scope: !1141)
!1148 = !DILocation(line: 177, column: 10, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 177, column: 7)
!1150 = !{!576, !417, i64 72}
!1151 = !DILocation(line: 177, column: 17, scope: !1149)
!1152 = !DILocation(line: 177, column: 7, scope: !1098)
!1153 = !DILocation(line: 178, column: 15, scope: !1149)
!1154 = !DILocation(line: 178, column: 14, scope: !1149)
!1155 = !DILocation(line: 178, column: 5, scope: !1149)
!1156 = !DILocation(line: 179, column: 10, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 179, column: 7)
!1158 = !{!576, !417, i64 80}
!1159 = !DILocation(line: 179, column: 18, scope: !1157)
!1160 = !DILocation(line: 179, column: 7, scope: !1098)
!1161 = !DILocation(line: 180, column: 16, scope: !1157)
!1162 = !DILocation(line: 180, column: 15, scope: !1157)
!1163 = !DILocation(line: 180, column: 5, scope: !1157)
!1164 = !DILocation(line: 181, column: 10, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1098, file: !347, line: 181, column: 7)
!1166 = !DILocation(line: 181, column: 17, scope: !1165)
!1167 = !DILocation(line: 181, column: 7, scope: !1098)
!1168 = !DILocation(line: 182, column: 15, scope: !1165)
!1169 = !DILocation(line: 182, column: 14, scope: !1165)
!1170 = !DILocation(line: 182, column: 5, scope: !1165)
!1171 = !DILocation(line: 183, column: 10, scope: !1098)
!1172 = !DILocation(line: 183, column: 3, scope: !1098)
!1173 = !DISubprogram(name: "GetExceptionInfo", scope: !33, file: !33, line: 166, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{null, !353}
!1176 = !DISubprogram(name: "GetExceptionMessage", scope: !33, file: !33, line: 137, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!229, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1180 = !DISubprogram(name: "DestroyString", scope: !331, file: !331, line: 46, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!229, !229}
!1183 = !DISubprogram(name: "CatchException", scope: !33, file: !33, line: 164, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1184 = !DISubprogram(name: "DestroyExceptionInfo", scope: !33, file: !33, line: 148, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!353, !353}
!1187 = !DISubprogram(name: "MagickCoreTerminus", scope: !1188, file: !1188, line: 147, type: !1067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1188 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1189 = !DISubprogram(name: "GetConfigureOptions", scope: !1190, file: !1190, line: 60, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1190 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!452, !251, !353}
!1193 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !454, file: !454, line: 69, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!250, !452}
!1196 = !DISubprogram(name: "CopyMagickString", scope: !331, file: !331, line: 78, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!225, !229, !251, !352}
!1199 = !DISubprogram(name: "GetStringInfoPath", scope: !331, file: !331, line: 58, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!251, !328}
!1202 = distinct !DISubprogram(name: "LoadTypeCache", scope: !347, file: !347, line: 1083, type: !1203, scopeLine: 1086, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1205)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!245, !253, !251, !251, !352, !353}
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1228, !1229, !1230, !1235}
!1206 = !DILocalVariable(name: "type_cache", arg: 1, scope: !1202, file: !347, line: 1083, type: !253)
!1207 = !DILocalVariable(name: "xml", arg: 2, scope: !1202, file: !347, line: 1084, type: !251)
!1208 = !DILocalVariable(name: "filename", arg: 3, scope: !1202, file: !347, line: 1084, type: !251)
!1209 = !DILocalVariable(name: "depth", arg: 4, scope: !1202, file: !347, line: 1084, type: !352)
!1210 = !DILocalVariable(name: "exception", arg: 5, scope: !1202, file: !347, line: 1085, type: !353)
!1211 = !DILocalVariable(name: "font_path", scope: !1202, file: !347, line: 1088, type: !335)
!1212 = !DILocalVariable(name: "keyword", scope: !1202, file: !347, line: 1089, type: !335)
!1213 = !DILocalVariable(name: "token", scope: !1202, file: !347, line: 1090, type: !229)
!1214 = !DILocalVariable(name: "q", scope: !1202, file: !347, line: 1093, type: !251)
!1215 = !DILocalVariable(name: "status", scope: !1202, file: !347, line: 1096, type: !245)
!1216 = !DILocalVariable(name: "type_info", scope: !1202, file: !347, line: 1099, type: !257)
!1217 = !DILocalVariable(name: "path", scope: !1218, file: !347, line: 1166, type: !335)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !347, line: 1164, column: 17)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !347, line: 1160, column: 19)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !347, line: 1159, column: 13)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !347, line: 1158, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !347, line: 1152, column: 9)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !347, line: 1147, column: 7)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1146, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !347, line: 1120, column: 3)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !347, line: 1119, column: 3)
!1227 = distinct !DILexicalBlock(scope: !1202, file: !347, line: 1119, column: 3)
!1228 = !DILocalVariable(name: "xml", scope: !1218, file: !347, line: 1167, type: !229)
!1229 = !DILocalVariable(name: "sans_exception", scope: !1218, file: !347, line: 1170, type: !353)
!1230 = !DILocalVariable(name: "message", scope: !1231, file: !347, line: 1202, type: !229)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !347, line: 1202, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !347, line: 1201, column: 13)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !347, line: 1196, column: 7)
!1234 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1195, column: 9)
!1235 = !DILocalVariable(name: "exception", scope: !1231, file: !347, line: 1202, type: !354)
!1236 = !DILocation(line: 0, scope: !1202)
!1237 = !DILocation(line: 1087, column: 3, scope: !1202)
!1238 = !DILocation(line: 1088, column: 5, scope: !1202)
!1239 = !DILocation(line: 1089, column: 5, scope: !1202)
!1240 = !DILocation(line: 1092, column: 3, scope: !1202)
!1241 = !DILocation(line: 1104, column: 10, scope: !1202)
!1242 = !DILocation(line: 1106, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1202, file: !347, line: 1106, column: 7)
!1244 = !DILocation(line: 1106, column: 7, scope: !1202)
!1245 = !DILocation(line: 1110, column: 9, scope: !1202)
!1246 = !DILocation(line: 1119, column: 9, scope: !1227)
!1247 = !DILocation(line: 1119, column: 24, scope: !1226)
!1248 = !DILocation(line: 1119, column: 27, scope: !1226)
!1249 = !DILocation(line: 1119, column: 3, scope: !1227)
!1250 = !DILocation(line: 1124, column: 5, scope: !1225)
!1251 = !DILocation(line: 1125, column: 9, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1125, column: 9)
!1253 = !DILocation(line: 1125, column: 16, scope: !1252)
!1254 = !DILocation(line: 1125, column: 9, scope: !1225)
!1255 = !DILocation(line: 1127, column: 12, scope: !1225)
!1256 = !DILocation(line: 1128, column: 9, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1128, column: 9)
!1258 = !DILocation(line: 1128, column: 47, scope: !1257)
!1259 = !DILocation(line: 1128, column: 9, scope: !1225)
!1260 = !DILocation(line: 1133, column: 32, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !347, line: 1129, column: 7)
!1262 = !DILocation(line: 1133, column: 17, scope: !1261)
!1263 = !DILocation(line: 1133, column: 42, scope: !1261)
!1264 = !DILocation(line: 1133, column: 48, scope: !1261)
!1265 = !DILocation(line: 1133, column: 53, scope: !1261)
!1266 = !DILocation(line: 1133, column: 52, scope: !1261)
!1267 = !DILocation(line: 1133, column: 55, scope: !1261)
!1268 = !DILocation(line: 1133, column: 9, scope: !1261)
!1269 = !DILocation(line: 1134, column: 11, scope: !1261)
!1270 = distinct !{!1270, !1268, !1271, !487, !488}
!1271 = !DILocation(line: 1134, column: 36, scope: !1261)
!1272 = !DILocation(line: 1119, column: 25, scope: !1226)
!1273 = distinct !{!1273, !1249, !1274, !487, !488}
!1274 = !DILocation(line: 1339, column: 3, scope: !1227)
!1275 = !DILocation(line: 1137, column: 9, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1137, column: 9)
!1277 = !DILocation(line: 1137, column: 42, scope: !1276)
!1278 = !DILocation(line: 1137, column: 9, scope: !1225)
!1279 = !DILocation(line: 1142, column: 32, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !347, line: 1138, column: 7)
!1281 = !DILocation(line: 1142, column: 17, scope: !1280)
!1282 = !DILocation(line: 1142, column: 42, scope: !1280)
!1283 = !DILocation(line: 1142, column: 48, scope: !1280)
!1284 = !DILocation(line: 1142, column: 53, scope: !1280)
!1285 = !DILocation(line: 1142, column: 52, scope: !1280)
!1286 = !DILocation(line: 1142, column: 55, scope: !1280)
!1287 = !DILocation(line: 1142, column: 9, scope: !1280)
!1288 = !DILocation(line: 1143, column: 11, scope: !1280)
!1289 = distinct !{!1289, !1287, !1290, !487, !488}
!1290 = !DILocation(line: 1143, column: 36, scope: !1280)
!1291 = !DILocation(line: 1146, column: 9, scope: !1224)
!1292 = !DILocation(line: 1146, column: 43, scope: !1224)
!1293 = !DILocation(line: 1146, column: 9, scope: !1225)
!1294 = !DILocation(line: 1160, column: 19, scope: !1220)
!1295 = !DILocation(line: 1151, column: 18, scope: !1223)
!1296 = !DILocation(line: 1151, column: 25, scope: !1223)
!1297 = !DILocation(line: 1151, column: 33, scope: !1223)
!1298 = !DILocation(line: 1151, column: 37, scope: !1223)
!1299 = !DILocation(line: 1151, column: 48, scope: !1223)
!1300 = !DILocation(line: 1151, column: 57, scope: !1223)
!1301 = !DILocation(line: 1151, column: 62, scope: !1223)
!1302 = !DILocation(line: 1151, column: 61, scope: !1223)
!1303 = !DILocation(line: 1151, column: 64, scope: !1223)
!1304 = !DILocation(line: 1151, column: 9, scope: !1223)
!1305 = !DILocation(line: 1153, column: 18, scope: !1222)
!1306 = !DILocation(line: 1154, column: 26, scope: !1222)
!1307 = !DILocation(line: 1154, column: 11, scope: !1222)
!1308 = !DILocation(line: 1155, column: 15, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1222, file: !347, line: 1155, column: 15)
!1310 = !DILocation(line: 1155, column: 22, scope: !1309)
!1311 = !DILocation(line: 1155, column: 15, scope: !1222)
!1312 = distinct !{!1312, !1304, !1313, !487, !488}
!1313 = !DILocation(line: 1192, column: 9, scope: !1223)
!1314 = !DILocation(line: 1157, column: 26, scope: !1222)
!1315 = !DILocation(line: 1157, column: 11, scope: !1222)
!1316 = !DILocation(line: 1158, column: 15, scope: !1221)
!1317 = !DILocation(line: 1158, column: 45, scope: !1221)
!1318 = !DILocation(line: 1158, column: 15, scope: !1222)
!1319 = !DILocation(line: 1161, column: 24, scope: !1219)
!1320 = !DILocation(line: 1161, column: 17, scope: !1219)
!1321 = !DILocation(line: 1165, column: 19, scope: !1218)
!1322 = !DILocation(line: 1166, column: 21, scope: !1218)
!1323 = !DILocation(line: 1172, column: 24, scope: !1218)
!1324 = !DILocation(line: 1173, column: 19, scope: !1218)
!1325 = !DILocation(line: 1174, column: 23, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1218, file: !347, line: 1174, column: 23)
!1327 = !DILocation(line: 1174, column: 29, scope: !1326)
!1328 = !DILocation(line: 1174, column: 23, scope: !1218)
!1329 = !DILocation(line: 1175, column: 28, scope: !1326)
!1330 = !DILocation(line: 1175, column: 21, scope: !1326)
!1331 = !DILocation(line: 1177, column: 23, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1218, file: !347, line: 1177, column: 23)
!1333 = !DILocation(line: 1177, column: 30, scope: !1332)
!1334 = !DILocation(line: 1177, column: 23, scope: !1218)
!1335 = !DILocation(line: 1178, column: 28, scope: !1332)
!1336 = !DILocation(line: 1178, column: 21, scope: !1332)
!1337 = !DILocation(line: 1180, column: 28, scope: !1332)
!1338 = !DILocation(line: 1181, column: 34, scope: !1218)
!1339 = !DILocation(line: 0, scope: !1218)
!1340 = !DILocation(line: 1182, column: 23, scope: !1218)
!1341 = !DILocation(line: 1183, column: 34, scope: !1218)
!1342 = !DILocation(line: 1184, column: 27, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1218, file: !347, line: 1184, column: 23)
!1344 = !DILocation(line: 1184, column: 23, scope: !1218)
!1345 = !DILocation(line: 1186, column: 31, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !347, line: 1185, column: 21)
!1347 = !DILocation(line: 1186, column: 29, scope: !1346)
!1348 = !DILocation(line: 1188, column: 36, scope: !1346)
!1349 = !DILocation(line: 1189, column: 21, scope: !1346)
!1350 = !DILocation(line: 1190, column: 17, scope: !1219)
!1351 = !DILocation(line: 1195, column: 9, scope: !1234)
!1352 = !DILocation(line: 1195, column: 40, scope: !1234)
!1353 = !DILocation(line: 1195, column: 9, scope: !1225)
!1354 = !DILocation(line: 1200, column: 32, scope: !1233)
!1355 = !DILocation(line: 1201, column: 23, scope: !1232)
!1356 = !DILocation(line: 1201, column: 13, scope: !1233)
!1357 = !DILocation(line: 1202, column: 11, scope: !1231)
!1358 = !DILocation(line: 0, scope: !1231)
!1359 = !DILocation(line: 1203, column: 16, scope: !1233)
!1360 = !DILocation(line: 1204, column: 25, scope: !1233)
!1361 = !DILocation(line: 1204, column: 20, scope: !1233)
!1362 = !DILocation(line: 1204, column: 24, scope: !1233)
!1363 = !DILocation(line: 1205, column: 20, scope: !1233)
!1364 = !DILocation(line: 1205, column: 29, scope: !1233)
!1365 = !{!576, !577, i64 120}
!1366 = !DILocation(line: 1206, column: 9, scope: !1233)
!1367 = !DILocation(line: 1208, column: 19, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1208, column: 9)
!1369 = !DILocation(line: 1208, column: 9, scope: !1225)
!1370 = !DILocation(line: 1210, column: 9, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1210, column: 9)
!1372 = !DILocation(line: 1210, column: 37, scope: !1371)
!1373 = !DILocation(line: 1210, column: 9, scope: !1225)
!1374 = !DILocation(line: 1212, column: 58, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !347, line: 1211, column: 7)
!1376 = !DILocation(line: 1212, column: 16, scope: !1375)
!1377 = !DILocation(line: 1213, column: 20, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !347, line: 1213, column: 13)
!1379 = !DILocation(line: 1213, column: 13, scope: !1375)
!1380 = !DILocation(line: 1215, column: 75, scope: !1378)
!1381 = !DILocation(line: 1214, column: 18, scope: !1378)
!1382 = !DILocation(line: 1214, column: 11, scope: !1378)
!1383 = !DILocation(line: 1219, column: 20, scope: !1225)
!1384 = !DILocation(line: 1219, column: 5, scope: !1225)
!1385 = !DILocation(line: 1220, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1220, column: 9)
!1387 = !DILocation(line: 1220, column: 16, scope: !1386)
!1388 = !DILocation(line: 1220, column: 9, scope: !1225)
!1389 = !DILocation(line: 1222, column: 20, scope: !1225)
!1390 = !DILocation(line: 1222, column: 5, scope: !1225)
!1391 = !DILocation(line: 1223, column: 20, scope: !1225)
!1392 = !DILocation(line: 1223, column: 5, scope: !1225)
!1393 = !DILocation(line: 1224, column: 13, scope: !1225)
!1394 = !DILocation(line: 1224, column: 5, scope: !1225)
!1395 = !DILocation(line: 1229, column: 13, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !347, line: 1229, column: 13)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1228, column: 7)
!1398 = distinct !DILexicalBlock(scope: !1225, file: !347, line: 1225, column: 5)
!1399 = !DILocation(line: 1229, column: 56, scope: !1396)
!1400 = !DILocation(line: 1229, column: 13, scope: !1397)
!1401 = !DILocation(line: 1231, column: 33, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !347, line: 1230, column: 11)
!1403 = !DILocation(line: 1231, column: 24, scope: !1402)
!1404 = !DILocation(line: 1231, column: 32, scope: !1402)
!1405 = !DILocation(line: 1232, column: 13, scope: !1402)
!1406 = !DILocation(line: 1239, column: 13, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 1239, column: 13)
!1408 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1238, column: 7)
!1409 = !DILocation(line: 1239, column: 52, scope: !1407)
!1410 = !DILocation(line: 1239, column: 13, scope: !1408)
!1411 = !DILocalVariable(name: "value", arg: 1, scope: !1412, file: !1413, line: 73, type: !1037)
!1412 = distinct !DISubprogram(name: "StringToUnsignedLong", scope: !1413, file: !1413, line: 73, type: !1414, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1416)
!1413 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!227, !1037}
!1416 = !{!1411}
!1417 = !DILocation(line: 0, scope: !1412, inlinedAt: !1418)
!1418 = distinct !DILocation(line: 1241, column: 29, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1407, file: !347, line: 1240, column: 11)
!1420 = !DILocation(line: 75, column: 10, scope: !1412, inlinedAt: !1418)
!1421 = !DILocation(line: 1241, column: 28, scope: !1419)
!1422 = !{!576, !577, i64 0}
!1423 = !DILocation(line: 1242, column: 13, scope: !1419)
!1424 = !DILocation(line: 1244, column: 13, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 1244, column: 13)
!1426 = !DILocation(line: 1244, column: 54, scope: !1425)
!1427 = !DILocation(line: 1244, column: 13, scope: !1408)
!1428 = !DILocation(line: 1246, column: 31, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !347, line: 1245, column: 11)
!1430 = !DILocation(line: 1246, column: 24, scope: !1429)
!1431 = !DILocation(line: 1246, column: 30, scope: !1429)
!1432 = !DILocation(line: 1247, column: 13, scope: !1429)
!1433 = !DILocation(line: 1249, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 1249, column: 13)
!1435 = !DILocation(line: 1249, column: 54, scope: !1434)
!1436 = !DILocation(line: 1249, column: 13, scope: !1408)
!1437 = !DILocation(line: 1251, column: 31, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !347, line: 1250, column: 11)
!1439 = !DILocation(line: 1251, column: 24, scope: !1438)
!1440 = !DILocation(line: 1251, column: 30, scope: !1438)
!1441 = !DILocation(line: 1252, column: 13, scope: !1438)
!1442 = !DILocation(line: 1254, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 1254, column: 13)
!1444 = !DILocation(line: 1254, column: 55, scope: !1443)
!1445 = !DILocation(line: 1254, column: 13, scope: !1408)
!1446 = !DILocation(line: 1256, column: 32, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !347, line: 1255, column: 11)
!1448 = !DILocation(line: 1256, column: 24, scope: !1447)
!1449 = !DILocation(line: 1256, column: 31, scope: !1447)
!1450 = !DILocation(line: 1257, column: 13, scope: !1447)
!1451 = !DILocation(line: 1259, column: 13, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1408, file: !347, line: 1259, column: 13)
!1453 = !DILocation(line: 1259, column: 56, scope: !1452)
!1454 = !DILocation(line: 1259, column: 13, scope: !1408)
!1455 = !DILocation(line: 1261, column: 36, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !347, line: 1260, column: 11)
!1457 = !DILocation(line: 1261, column: 24, scope: !1456)
!1458 = !DILocation(line: 1261, column: 35, scope: !1456)
!1459 = !DILocation(line: 1262, column: 13, scope: !1456)
!1460 = !DILocation(line: 1269, column: 13, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !347, line: 1269, column: 13)
!1462 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1268, column: 7)
!1463 = !DILocation(line: 1269, column: 54, scope: !1461)
!1464 = !DILocation(line: 1269, column: 13, scope: !1462)
!1465 = !DILocation(line: 1271, column: 70, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !347, line: 1271, column: 17)
!1467 = distinct !DILexicalBlock(scope: !1461, file: !347, line: 1270, column: 11)
!1468 = !DILocation(line: 1271, column: 17, scope: !1466)
!1469 = !DILocation(line: 1271, column: 78, scope: !1466)
!1470 = !DILocation(line: 1271, column: 17, scope: !1467)
!1471 = !DILocation(line: 1273, column: 38, scope: !1466)
!1472 = !DILocation(line: 1273, column: 15, scope: !1466)
!1473 = !DILocation(line: 1281, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !347, line: 1281, column: 13)
!1475 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1280, column: 7)
!1476 = !DILocation(line: 1281, column: 55, scope: !1474)
!1477 = !DILocation(line: 1281, column: 13, scope: !1475)
!1478 = !DILocation(line: 1283, column: 70, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !347, line: 1283, column: 17)
!1480 = distinct !DILexicalBlock(scope: !1474, file: !347, line: 1282, column: 11)
!1481 = !DILocation(line: 1283, column: 17, scope: !1479)
!1482 = !DILocation(line: 1283, column: 79, scope: !1479)
!1483 = !DILocation(line: 1283, column: 17, scope: !1480)
!1484 = !DILocation(line: 1285, column: 38, scope: !1479)
!1485 = !DILocation(line: 1285, column: 15, scope: !1479)
!1486 = !DILocation(line: 1293, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !347, line: 1293, column: 13)
!1488 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1292, column: 7)
!1489 = !DILocation(line: 1293, column: 52, scope: !1487)
!1490 = !DILocation(line: 1293, column: 13, scope: !1488)
!1491 = !DILocation(line: 1295, column: 29, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !347, line: 1294, column: 11)
!1493 = !DILocation(line: 1295, column: 24, scope: !1492)
!1494 = !DILocation(line: 1295, column: 28, scope: !1492)
!1495 = !DILocation(line: 1296, column: 13, scope: !1492)
!1496 = !DILocation(line: 1303, column: 13, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !347, line: 1303, column: 13)
!1498 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1302, column: 7)
!1499 = !DILocation(line: 1303, column: 55, scope: !1497)
!1500 = !DILocation(line: 1303, column: 13, scope: !1498)
!1501 = !DILocation(line: 1305, column: 32, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1497, file: !347, line: 1304, column: 11)
!1503 = !DILocation(line: 1305, column: 24, scope: !1502)
!1504 = !DILocation(line: 1305, column: 31, scope: !1502)
!1505 = !DILocation(line: 1306, column: 13, scope: !1502)
!1506 = !DILocation(line: 1308, column: 13, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1498, file: !347, line: 1308, column: 13)
!1508 = !DILocation(line: 1308, column: 55, scope: !1507)
!1509 = !DILocation(line: 1308, column: 13, scope: !1498)
!1510 = !DILocation(line: 1310, column: 46, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1507, file: !347, line: 1309, column: 11)
!1512 = !DILocation(line: 1310, column: 32, scope: !1511)
!1513 = !DILocation(line: 1310, column: 24, scope: !1511)
!1514 = !DILocation(line: 1310, column: 31, scope: !1511)
!1515 = !DILocation(line: 1312, column: 13, scope: !1511)
!1516 = !DILocation(line: 1314, column: 13, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1498, file: !347, line: 1314, column: 13)
!1518 = !DILocation(line: 1314, column: 53, scope: !1517)
!1519 = !DILocation(line: 1314, column: 13, scope: !1498)
!1520 = !DILocation(line: 1316, column: 42, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !347, line: 1315, column: 11)
!1522 = !DILocation(line: 1316, column: 30, scope: !1521)
!1523 = !DILocation(line: 1316, column: 24, scope: !1521)
!1524 = !DILocation(line: 1316, column: 29, scope: !1521)
!1525 = !DILocation(line: 1318, column: 13, scope: !1521)
!1526 = !DILocation(line: 1325, column: 13, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !347, line: 1325, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1398, file: !347, line: 1324, column: 7)
!1529 = !DILocation(line: 1325, column: 54, scope: !1527)
!1530 = !DILocation(line: 1325, column: 13, scope: !1528)
!1531 = !DILocation(line: 0, scope: !1412, inlinedAt: !1532)
!1532 = distinct !DILocation(line: 1327, column: 31, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1527, file: !347, line: 1326, column: 11)
!1534 = !DILocation(line: 75, column: 10, scope: !1412, inlinedAt: !1532)
!1535 = !DILocation(line: 1327, column: 24, scope: !1533)
!1536 = !DILocation(line: 1327, column: 30, scope: !1533)
!1537 = !DILocation(line: 1328, column: 17, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !347, line: 1328, column: 17)
!1539 = !DILocation(line: 1328, column: 45, scope: !1538)
!1540 = !DILocation(line: 1328, column: 17, scope: !1533)
!1541 = !DILocation(line: 1329, column: 32, scope: !1538)
!1542 = !DILocation(line: 1329, column: 15, scope: !1538)
!1543 = !DILocation(line: 1330, column: 17, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1533, file: !347, line: 1330, column: 17)
!1545 = !DILocation(line: 1330, column: 47, scope: !1544)
!1546 = !DILocation(line: 1330, column: 17, scope: !1533)
!1547 = !DILocation(line: 1331, column: 32, scope: !1544)
!1548 = !DILocation(line: 1331, column: 15, scope: !1544)
!1549 = !DILocation(line: 1340, column: 18, scope: !1202)
!1550 = !DILocation(line: 1341, column: 3, scope: !1202)
!1551 = !DILocation(line: 1342, column: 1, scope: !1202)
!1552 = !DISubprogram(name: "GetStringInfoDatum", scope: !331, file: !331, line: 97, type: !1553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!339, !328}
!1555 = !DISubprogram(name: "DestroyConfigureOptions", scope: !1190, file: !1190, line: 58, type: !1556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!452, !452}
!1558 = !DISubprogram(name: "GetEnvironmentValue", scope: !331, file: !331, line: 50, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1559 = !DISubprogram(name: "FileToString", scope: !331, file: !331, line: 49, type: !1560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!229, !251, !352, !353}
!1562 = !DISubprogram(name: "AcquireString", scope: !331, file: !331, line: 43, type: !929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1563 = !DISubprogram(name: "GetMagickToken", scope: !830, file: !830, line: 45, type: !1564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !251, !324, !229}
!1566 = !DISubprogram(name: "LocaleNCompare", scope: !331, file: !331, line: 67, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!132, !251, !251, !352}
!1569 = !DISubprogram(name: "GetPathComponent", scope: !207, file: !207, line: 68, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{null, !251, !1572, !229}
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !207, line: 36, baseType: !206)
!1573 = !DISubprogram(name: "ConcatenateMagickString", scope: !331, file: !331, line: 76, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1574 = !DISubprogram(name: "AcquireExceptionInfo", scope: !33, file: !33, line: 146, type: !1575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!353}
!1577 = !DISubprogram(name: "AcquireMagickMemory", scope: !821, file: !821, line: 40, type: !1578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!250, !352}
!1580 = !DISubprogram(name: "ResetMagickMemory", scope: !821, file: !821, line: 52, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!250, !250, !132, !352}
!1583 = !DISubprogram(name: "AddValueToSplayTree", scope: !255, file: !255, line: 29, type: !1584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!245, !253, !550, !550}
!1586 = distinct !DISubprogram(name: "SetTypeNodePath", scope: !347, file: !347, line: 1046, type: !1587, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1589)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!245, !251, !229, !251, !264}
!1589 = !{!1590, !1591, !1592, !1593, !1594}
!1590 = !DILocalVariable(name: "filename", arg: 1, scope: !1586, file: !347, line: 1046, type: !251)
!1591 = !DILocalVariable(name: "font_path", arg: 2, scope: !1586, file: !347, line: 1047, type: !229)
!1592 = !DILocalVariable(name: "token", arg: 3, scope: !1586, file: !347, line: 1047, type: !251)
!1593 = !DILocalVariable(name: "target", arg: 4, scope: !1586, file: !347, line: 1047, type: !264)
!1594 = !DILocalVariable(name: "path", scope: !1586, file: !347, line: 1050, type: !229)
!1595 = !DILocation(line: 0, scope: !1586)
!1596 = !DILocation(line: 1052, column: 8, scope: !1586)
!1597 = !DILocation(line: 1057, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !347, line: 1057, column: 7)
!1599 = !DILocation(line: 1057, column: 30, scope: !1598)
!1600 = !DILocation(line: 1057, column: 7, scope: !1586)
!1601 = !DILocation(line: 1062, column: 12, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !347, line: 1058, column: 5)
!1603 = !DILocation(line: 1063, column: 7, scope: !1602)
!1604 = !DILocation(line: 1064, column: 14, scope: !1602)
!1605 = !DILocation(line: 1066, column: 14, scope: !1602)
!1606 = !DILocation(line: 1067, column: 12, scope: !1602)
!1607 = !DILocation(line: 1072, column: 11, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1602, file: !347, line: 1072, column: 11)
!1609 = !DILocation(line: 1072, column: 34, scope: !1608)
!1610 = !DILocation(line: 1072, column: 11, scope: !1602)
!1611 = !DILocation(line: 1074, column: 16, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1608, file: !347, line: 1073, column: 9)
!1613 = !DILocation(line: 1075, column: 11, scope: !1612)
!1614 = !DILocation(line: 1079, column: 10, scope: !1586)
!1615 = !DILocation(line: 1080, column: 3, scope: !1586)
!1616 = !DILocation(line: 1081, column: 1, scope: !1586)
!1617 = !DISubprogram(name: "IsMagickTrue", scope: !830, file: !830, line: 38, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!245, !251}
!1620 = !DISubprogram(name: "ParseCommandOption", scope: !131, file: !131, line: 172, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!258, !1041, !833, !251}
!1623 = !DISubprogram(name: "IsPathAccessible", scope: !207, file: !207, line: 53, type: !1618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !540)
