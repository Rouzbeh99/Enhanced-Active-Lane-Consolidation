; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/distribute-cache.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/distribute-cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._DistributeCacheInfo = type { i32, i64, [4096 x i8], i32, i64, i32 }

@.str = private unnamed_addr constant [95 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/distribute-cache.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"distributed pixel cache\00", align 1
@GetHostname.id = internal unnamed_addr global i64 0, align 8, !dbg !0
@.str.5 = private unnamed_addr constant [12 x i8] c"cache:hosts\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @AcquireDistributeCacheInfo(ptr noundef %exception) local_unnamed_addr #0 !dbg !450 {
entry:
  %hosts.i = alloca ptr, align 8
  %argc.i = alloca i32, align 4
  %exception1 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %exception, metadata !454, metadata !DIExpression()), !dbg !462
  %call = tail call ptr @AcquireMagickMemory(i64 noundef 4136) #12, !dbg !463
  call void @llvm.dbg.value(metadata ptr %call, metadata !456, metadata !DIExpression()), !dbg !462
  %cmp = icmp eq ptr %call, null, !dbg !464
  br i1 %cmp, label %if.then, label %if.end, !dbg !465

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #13, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !461, metadata !DIExpression()), !dbg !466
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #13, !dbg !466
  %call2 = tail call ptr @__errno_location() #14, !dbg !466
  %0 = load i32, ptr %call2, align 4, !dbg !466, !tbaa !467
  %call3 = call ptr @GetExceptionMessage(i32 noundef %0) #13, !dbg !466
  call void @llvm.dbg.value(metadata ptr %call3, metadata !458, metadata !DIExpression()), !dbg !471
  %call4 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 321, i32 noundef 700, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call3) #13, !dbg !466
  %call5 = call ptr @DestroyString(ptr noundef %call3) #13, !dbg !466
  call void @llvm.dbg.value(metadata ptr %call5, metadata !458, metadata !DIExpression()), !dbg !471
  call void @CatchException(ptr noundef nonnull %exception1) #13, !dbg !466
  %call6 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #13, !dbg !466
  call void @MagickCoreTerminus() #13, !dbg !466
  call void @_exit(i32 noundef 1) #15, !dbg !466
  unreachable, !dbg !466

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call, i32 noundef 0, i64 noundef 4136) #13, !dbg !472
  %signature = getelementptr inbounds %struct._DistributeCacheInfo, ptr %call, i64 0, i32 4, !dbg !473
  store i64 2880220587, ptr %signature, align 8, !dbg !474, !tbaa !475
  %port = getelementptr inbounds %struct._DistributeCacheInfo, ptr %call, i64 0, i32 3, !dbg !478
  store i32 0, ptr %port, align 8, !dbg !479, !tbaa !480
  call void @llvm.dbg.value(metadata ptr %port, metadata !436, metadata !DIExpression()) #13, !dbg !481
  call void @llvm.dbg.value(metadata ptr %exception, metadata !437, metadata !DIExpression()) #13, !dbg !481
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hosts.i) #13, !dbg !483
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argc.i) #13, !dbg !484
  %call.i = tail call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef %exception) #13, !dbg !485
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !439, metadata !DIExpression()) #13, !dbg !481
  store ptr %call.i, ptr %hosts.i, align 8, !dbg !486, !tbaa !487
  %cmp.i = icmp eq ptr %call.i, null, !dbg !489
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !491

if.then.i:                                        ; preds = %if.end
  store i32 6668, ptr %port, align 4, !dbg !492, !tbaa !467
  %call1.i = tail call ptr @AcquireString(ptr noundef nonnull @.str.6) #13, !dbg !494
  br label %GetHostname.exit, !dbg !495

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %hosts.i, metadata !439, metadata !DIExpression(DW_OP_deref)) #13, !dbg !481
  %call2.i = call i32 @SubstituteString(ptr noundef nonnull %hosts.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #13, !dbg !496
  %1 = load ptr, ptr %hosts.i, align 8, !dbg !497, !tbaa !487
  call void @llvm.dbg.value(metadata ptr %1, metadata !439, metadata !DIExpression()) #13, !dbg !481
  call void @llvm.dbg.value(metadata ptr %argc.i, metadata !441, metadata !DIExpression(DW_OP_deref)) #13, !dbg !481
  %call3.i = call ptr @StringToArgv(ptr noundef %1, ptr noundef nonnull %argc.i) #13, !dbg !498
  call void @llvm.dbg.value(metadata ptr %call3.i, metadata !440, metadata !DIExpression()) #13, !dbg !481
  %2 = load ptr, ptr %hosts.i, align 8, !dbg !499, !tbaa !487
  call void @llvm.dbg.value(metadata ptr %2, metadata !439, metadata !DIExpression()) #13, !dbg !481
  %call4.i = call ptr @DestroyString(ptr noundef %2) #13, !dbg !500
  call void @llvm.dbg.value(metadata ptr %call4.i, metadata !439, metadata !DIExpression()) #13, !dbg !481
  store ptr %call4.i, ptr %hosts.i, align 8, !dbg !501, !tbaa !487
  %cmp5.i = icmp eq ptr %call3.i, null, !dbg !502
  br i1 %cmp5.i, label %if.then6.i, label %if.end8.i, !dbg !504

if.then6.i:                                       ; preds = %if.end.i
  store i32 6668, ptr %port, align 4, !dbg !505, !tbaa !467
  %call7.i = call ptr @AcquireString(ptr noundef nonnull @.str.6) #13, !dbg !507
  br label %GetHostname.exit, !dbg !508

if.end8.i:                                        ; preds = %if.end.i
  %3 = load i64, ptr @GetHostname.id, align 8, !dbg !509, !tbaa !510
  %inc.i = add i64 %3, 1, !dbg !509
  store i64 %inc.i, ptr @GetHostname.id, align 8, !dbg !509, !tbaa !510
  %4 = load i32, ptr %argc.i, align 4, !dbg !511, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %4, metadata !441, metadata !DIExpression()) #13, !dbg !481
  %sub.i = add nsw i32 %4, -1, !dbg !512
  %conv.i = sext i32 %sub.i to i64, !dbg !513
  %rem.i = urem i64 %3, %conv.i, !dbg !514
  %add.i = add nuw i64 %rem.i, 1, !dbg !515
  %arrayidx.i = getelementptr inbounds ptr, ptr %call3.i, i64 %add.i, !dbg !516
  %5 = load ptr, ptr %arrayidx.i, align 8, !dbg !516, !tbaa !487
  %call9.i = call ptr @AcquireString(ptr noundef %5) #13, !dbg !517
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !439, metadata !DIExpression()) #13, !dbg !481
  store ptr %call9.i, ptr %hosts.i, align 8, !dbg !518, !tbaa !487
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %6 = load i32, ptr %argc.i, align 4, !dbg !519, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %6, metadata !441, metadata !DIExpression()) #13, !dbg !481
  %cmp1174.i = icmp sgt i32 %6, 0, !dbg !522
  br i1 %cmp1174.i, label %for.body.i, label %for.end.i, !dbg !523

for.body.i:                                       ; preds = %if.end8.i, %for.body.i
  %i.075.i = phi i64 [ %inc16.i, %for.body.i ], [ 0, %if.end8.i ]
  call void @llvm.dbg.value(metadata i64 %i.075.i, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %arrayidx13.i = getelementptr inbounds ptr, ptr %call3.i, i64 %i.075.i, !dbg !524
  %7 = load ptr, ptr %arrayidx13.i, align 8, !dbg !524, !tbaa !487
  %call14.i = call ptr @DestroyString(ptr noundef %7) #13, !dbg !525
  store ptr %call14.i, ptr %arrayidx13.i, align 8, !dbg !526, !tbaa !487
  %inc16.i = add nuw nsw i64 %i.075.i, 1, !dbg !527
  call void @llvm.dbg.value(metadata i64 %inc16.i, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %8 = load i32, ptr %argc.i, align 4, !dbg !519, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %8, metadata !441, metadata !DIExpression()) #13, !dbg !481
  %conv10.i = sext i32 %8 to i64, !dbg !528
  %cmp11.i = icmp slt i64 %inc16.i, %conv10.i, !dbg !522
  br i1 %cmp11.i, label %for.body.i, label %for.end.i, !dbg !523, !llvm.loop !529

for.end.i:                                        ; preds = %for.body.i, %if.end8.i
  %call17.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call3.i) #13, !dbg !533
  call void @llvm.dbg.value(metadata ptr %call17.i, metadata !440, metadata !DIExpression()) #13, !dbg !481
  call void @llvm.dbg.value(metadata ptr %hosts.i, metadata !439, metadata !DIExpression(DW_OP_deref)) #13, !dbg !481
  %call18.i = call i32 @SubstituteString(ptr noundef nonnull %hosts.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #13, !dbg !534
  %9 = load ptr, ptr %hosts.i, align 8, !dbg !535, !tbaa !487
  call void @llvm.dbg.value(metadata ptr %9, metadata !439, metadata !DIExpression()) #13, !dbg !481
  call void @llvm.dbg.value(metadata ptr %argc.i, metadata !441, metadata !DIExpression(DW_OP_deref)) #13, !dbg !481
  %call19.i = call ptr @StringToArgv(ptr noundef %9, ptr noundef nonnull %argc.i) #13, !dbg !536
  call void @llvm.dbg.value(metadata ptr %call19.i, metadata !440, metadata !DIExpression()) #13, !dbg !481
  %cmp20.i = icmp eq ptr %call19.i, null, !dbg !537
  br i1 %cmp20.i, label %if.then22.i, label %if.end24.i, !dbg !539

if.then22.i:                                      ; preds = %for.end.i
  store i32 6668, ptr %port, align 4, !dbg !540, !tbaa !467
  %call23.i = call ptr @AcquireString(ptr noundef nonnull @.str.6) #13, !dbg !542
  br label %GetHostname.exit, !dbg !543

if.end24.i:                                       ; preds = %for.end.i
  %arrayidx25.i = getelementptr inbounds ptr, ptr %call19.i, i64 1, !dbg !544
  %10 = load ptr, ptr %arrayidx25.i, align 8, !dbg !544, !tbaa !487
  %call26.i = call ptr @AcquireString(ptr noundef %10) #13, !dbg !545
  call void @llvm.dbg.value(metadata ptr %call26.i, metadata !438, metadata !DIExpression()) #13, !dbg !481
  %arrayidx27.i = getelementptr inbounds ptr, ptr %call19.i, i64 2, !dbg !546
  %11 = load ptr, ptr %arrayidx27.i, align 8, !dbg !546, !tbaa !487
  %cmp28.i = icmp eq ptr %11, null, !dbg !548
  br i1 %cmp28.i, label %if.end34.i, label %if.else.i, !dbg !549

if.else.i:                                        ; preds = %if.end24.i
  call void @llvm.dbg.value(metadata ptr %11, metadata !550, metadata !DIExpression()) #13, !dbg !559
  %call.i.i = call i64 @strtol(ptr nocapture noundef nonnull %11, ptr noundef null, i32 noundef 10) #13, !dbg !561
  %conv33.i = trunc i64 %call.i.i to i32, !dbg !562
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %if.end24.i
  %storemerge.i = phi i32 [ %conv33.i, %if.else.i ], [ 6668, %if.end24.i ], !dbg !563
  store i32 %storemerge.i, ptr %port, align 4, !dbg !563, !tbaa !467
  call void @llvm.dbg.value(metadata i64 0, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %12 = load i32, ptr %argc.i, align 4, !dbg !564, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %12, metadata !441, metadata !DIExpression()) #13, !dbg !481
  %cmp3777.i = icmp sgt i32 %12, 0, !dbg !567
  br i1 %cmp3777.i, label %for.body39.i, label %for.end45.i, !dbg !568

for.body39.i:                                     ; preds = %if.end34.i, %for.body39.i
  %i.178.i = phi i64 [ %inc44.i, %for.body39.i ], [ 0, %if.end34.i ]
  call void @llvm.dbg.value(metadata i64 %i.178.i, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %arrayidx40.i = getelementptr inbounds ptr, ptr %call19.i, i64 %i.178.i, !dbg !569
  %13 = load ptr, ptr %arrayidx40.i, align 8, !dbg !569, !tbaa !487
  %call41.i = call ptr @DestroyString(ptr noundef %13) #13, !dbg !570
  store ptr %call41.i, ptr %arrayidx40.i, align 8, !dbg !571, !tbaa !487
  %inc44.i = add nuw nsw i64 %i.178.i, 1, !dbg !572
  call void @llvm.dbg.value(metadata i64 %inc44.i, metadata !442, metadata !DIExpression()) #13, !dbg !481
  %14 = load i32, ptr %argc.i, align 4, !dbg !564, !tbaa !467
  call void @llvm.dbg.value(metadata i32 %14, metadata !441, metadata !DIExpression()) #13, !dbg !481
  %conv36.i = sext i32 %14 to i64, !dbg !573
  %cmp37.i = icmp slt i64 %inc44.i, %conv36.i, !dbg !567
  br i1 %cmp37.i, label %for.body39.i, label %for.end45.i, !dbg !568, !llvm.loop !574

for.end45.i:                                      ; preds = %for.body39.i, %if.end34.i
  %call46.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call19.i) #13, !dbg !576
  call void @llvm.dbg.value(metadata ptr %call46.i, metadata !440, metadata !DIExpression()) #13, !dbg !481
  br label %GetHostname.exit, !dbg !577

GetHostname.exit:                                 ; preds = %if.then.i, %if.then6.i, %if.then22.i, %for.end45.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ %call7.i, %if.then6.i ], [ %call23.i, %if.then22.i ], [ %call26.i, %for.end45.i ], !dbg !481
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argc.i) #13, !dbg !578
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hosts.i) #13, !dbg !578
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !455, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata i64 0, metadata !457, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.value(metadata ptr undef, metadata !579, metadata !DIExpression()) #13, !dbg !589
  call void @llvm.dbg.value(metadata i32 undef, metadata !586, metadata !DIExpression()) #13, !dbg !589
  call void @llvm.dbg.value(metadata ptr undef, metadata !587, metadata !DIExpression()) #13, !dbg !589
  call void @llvm.dbg.value(metadata ptr %exception, metadata !588, metadata !DIExpression()) #13, !dbg !589
  %call.i38 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 243, i32 noundef 420, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4) #13, !dbg !591
  store i32 0, ptr %call, align 8, !dbg !592, !tbaa !593
  %session_key12 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %call, i64 0, i32 1, !dbg !594
  store i64 0, ptr %session_key12, align 8, !dbg !595, !tbaa !596
  %hostname13 = getelementptr inbounds %struct._DistributeCacheInfo, ptr %call, i64 0, i32 2, !dbg !597
  %call14 = call i64 @CopyMagickString(ptr noundef nonnull %hostname13, ptr noundef %retval.0.i, i64 noundef 4096) #13, !dbg !598
  %call15 = call ptr @DestroyString(ptr noundef %retval.0.i) #13, !dbg !599
  call void @llvm.dbg.value(metadata ptr %call15, metadata !455, metadata !DIExpression()), !dbg !462
  %15 = load i32, ptr %call, align 8, !dbg !600, !tbaa !593
  %cmp17 = icmp eq i32 %15, -1, !dbg !602
  br i1 %cmp17, label %DestroyDistributeCacheInfo.exit, label %if.end20, !dbg !603

DestroyDistributeCacheInfo.exit:                  ; preds = %GetHostname.exit
  store i64 -2880220588, ptr %signature, align 8, !dbg !604, !tbaa !475
  %call2.i42 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #13, !dbg !611
  call void @llvm.dbg.value(metadata ptr %call2.i42, metadata !609, metadata !DIExpression()) #13, !dbg !612
  call void @llvm.dbg.value(metadata ptr %call2.i42, metadata !456, metadata !DIExpression()), !dbg !462
  br label %if.end20, !dbg !613

if.end20:                                         ; preds = %DestroyDistributeCacheInfo.exit, %GetHostname.exit
  %server_info.0 = phi ptr [ %call2.i42, %DestroyDistributeCacheInfo.exit ], [ %call, %GetHostname.exit ], !dbg !462
  call void @llvm.dbg.value(metadata ptr %server_info.0, metadata !456, metadata !DIExpression()), !dbg !462
  %call21 = call i32 @IsEventLogging() #13, !dbg !614
  %debug = getelementptr inbounds %struct._DistributeCacheInfo, ptr %server_info.0, i64 0, i32 5, !dbg !615
  store i32 %call21, ptr %debug, align 8, !dbg !616, !tbaa !617
  ret ptr %server_info.0, !dbg !618
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: allocsize(0)
declare !dbg !619 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #3

declare !dbg !625 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !628 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #5

declare !dbg !631 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !635 ptr @DestroyString(ptr noundef) local_unnamed_addr #4

declare !dbg !639 void @CatchException(ptr noundef) local_unnamed_addr #4

declare !dbg !640 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #4

declare !dbg !643 void @MagickCoreTerminus() local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #6

declare !dbg !647 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !650 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @DestroyDistributeCacheInfo(ptr noundef %server_info) local_unnamed_addr #0 !dbg !605 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !609, metadata !DIExpression()), !dbg !653
  %0 = load i32, ptr %server_info, align 8, !dbg !654, !tbaa !593
  %cmp = icmp sgt i32 %0, 0, !dbg !656
  br i1 %cmp, label %if.then, label %if.end, !dbg !657

if.then:                                          ; preds = %entry
  %call = tail call i32 @close(i32 noundef %0) #13, !dbg !658
  br label %if.end, !dbg !659

if.end:                                           ; preds = %if.then, %entry
  %signature = getelementptr inbounds %struct._DistributeCacheInfo, ptr %server_info, i64 0, i32 4, !dbg !660
  store i64 -2880220588, ptr %signature, align 8, !dbg !661, !tbaa !475
  %call2 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %server_info) #13, !dbg !662
  call void @llvm.dbg.value(metadata ptr %call2, metadata !609, metadata !DIExpression()), !dbg !653
  ret ptr %call2, !dbg !663
}

declare !dbg !664 i32 @IsEventLogging() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !668 i32 @close(i32 noundef) local_unnamed_addr #4

declare !dbg !672 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local void @DistributePixelCacheServer(i32 noundef %port, ptr nocapture noundef readnone %exception) local_unnamed_addr #7 !dbg !675 {
entry:
  %exception1 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata i32 %port, metadata !679, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata ptr %exception, metadata !680, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1) #13, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %exception1, metadata !683, metadata !DIExpression()), !dbg !685
  call void @GetExceptionInfo(ptr noundef nonnull %exception1) #13, !dbg !685
  %call = tail call ptr @__errno_location() #14, !dbg !685
  %0 = load i32, ptr %call, align 4, !dbg !685, !tbaa !467
  %call2 = call ptr @GetExceptionMessage(i32 noundef %0) #13, !dbg !685
  call void @llvm.dbg.value(metadata ptr %call2, metadata !681, metadata !DIExpression()), !dbg !686
  %call3 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 941, i32 noundef 420, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %call2) #13, !dbg !685
  %call4 = call ptr @DestroyString(ptr noundef %call2) #13, !dbg !685
  call void @llvm.dbg.value(metadata ptr %call4, metadata !681, metadata !DIExpression()), !dbg !686
  call void @CatchException(ptr noundef nonnull %exception1) #13, !dbg !685
  %call5 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1) #13, !dbg !685
  call void @MagickCoreTerminus() #13, !dbg !685
  call void @_exit(i32 noundef -279) #15, !dbg !685
  unreachable, !dbg !685
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define hidden i32 @GetDistributeCacheFile(ptr nocapture noundef readonly %server_info) local_unnamed_addr #8 !dbg !687 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load i32, ptr %server_info, align 8, !dbg !695, !tbaa !593
  ret i32 %0, !dbg !696
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define hidden nonnull ptr @GetDistributeCacheHostname(ptr noundef readnone %server_info) local_unnamed_addr #9 !dbg !697 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !701, metadata !DIExpression()), !dbg !702
  %hostname = getelementptr inbounds %struct._DistributeCacheInfo, ptr %server_info, i64 0, i32 2, !dbg !703
  ret ptr %hostname, !dbg !704
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define hidden i32 @GetDistributeCachePort(ptr nocapture noundef readonly %server_info) local_unnamed_addr #8 !dbg !705 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !707, metadata !DIExpression()), !dbg !708
  %port = getelementptr inbounds %struct._DistributeCacheInfo, ptr %server_info, i64 0, i32 3, !dbg !709
  %0 = load i32, ptr %port, align 8, !dbg !709, !tbaa !480
  ret i32 %0, !dbg !710
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i32 @OpenDistributePixelCache(ptr nocapture noundef readnone %server_info, ptr nocapture noundef readnone %image) local_unnamed_addr #10 !dbg !711 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !897, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr %image, metadata !898, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.declare(metadata ptr undef, metadata !899, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr undef, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata i8 undef, metadata !902, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr poison, metadata !901, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !904
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !918
  %call.i = tail call ptr @__errno_location() #14, !dbg !918
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %dpc_send.exit, !dbg !920, !llvm.loop !926

for.cond.i:                                       ; preds = %entry, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !918
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !918
  br label %for.cond.i

dpc_send.exit:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !900, metadata !DIExpression()), !dbg !904
  ret i32 0, !dbg !929
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i64 @ReadDistributePixelCacheIndexes(ptr nocapture noundef readnone %server_info, ptr nocapture noundef readnone %region, i64 noundef %length, ptr nocapture noundef readnone %indexes) local_unnamed_addr #10 !dbg !930 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !936, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr %region, metadata !937, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 %length, metadata !938, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr %indexes, metadata !939, metadata !DIExpression()), !dbg !943
  %cmp = icmp slt i64 %length, 0, !dbg !944
  br i1 %cmp, label %cleanup, label %if.end, !dbg !946

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8 undef, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i64 undef, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata ptr poison, metadata !941, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !943
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !947
  %call.i = tail call ptr @__errno_location() #14, !dbg !947
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %cleanup, !dbg !949, !llvm.loop !950

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !947
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !947
  br label %for.cond.i

cleanup:                                          ; preds = %if.end, %entry
  ret i64 -1, !dbg !953
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i64 @ReadDistributePixelCachePixels(ptr nocapture noundef readnone %server_info, ptr nocapture noundef readnone %region, i64 noundef %length, ptr noalias nocapture noundef readnone %pixels) local_unnamed_addr #10 !dbg !954 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !959, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr %region, metadata !960, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 %length, metadata !961, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !962, metadata !DIExpression()), !dbg !966
  %cmp = icmp slt i64 %length, 0, !dbg !967
  br i1 %cmp, label %cleanup, label %if.end, !dbg !969

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8 undef, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i64 undef, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr poison, metadata !964, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !966
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !970
  %call.i = tail call ptr @__errno_location() #14, !dbg !970
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %cleanup, !dbg !972, !llvm.loop !973

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !970
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !970
  br label %for.cond.i

cleanup:                                          ; preds = %if.end, %entry
  ret i64 -1, !dbg !976
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i32 @RelinquishDistributePixelCache(ptr nocapture noundef readnone %server_info) local_unnamed_addr #10 !dbg !977 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !981, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.declare(metadata ptr undef, metadata !982, metadata !DIExpression()), !dbg !987
  call void @llvm.dbg.value(metadata ptr undef, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr poison, metadata !984, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata i8 undef, metadata !985, metadata !DIExpression()), !dbg !986
  call void @llvm.dbg.value(metadata ptr poison, metadata !984, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !986
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !988
  %call.i = tail call ptr @__errno_location() #14, !dbg !988
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %dpc_send.exit, !dbg !990, !llvm.loop !991

for.cond.i:                                       ; preds = %entry, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !988
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !988
  br label %for.cond.i

dpc_send.exit:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata i64 0, metadata !983, metadata !DIExpression()), !dbg !986
  ret i32 0, !dbg !994
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i64 @WriteDistributePixelCacheIndexes(ptr nocapture noundef readnone %server_info, ptr nocapture noundef readnone %region, i64 noundef %length, ptr nocapture noundef readnone %indexes) local_unnamed_addr #10 !dbg !995 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !999, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %region, metadata !1000, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %length, metadata !1001, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %indexes, metadata !1002, metadata !DIExpression()), !dbg !1006
  %cmp = icmp slt i64 %length, 0, !dbg !1007
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1009

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8 undef, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i64 undef, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr poison, metadata !1004, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1006
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !1010
  %call.i = tail call ptr @__errno_location() #14, !dbg !1010
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %cleanup, !dbg !1012, !llvm.loop !1013

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1010
  br label %for.cond.i

cleanup:                                          ; preds = %if.end, %entry
  ret i64 -1, !dbg !1016
}

; Function Attrs: nofree nosync nounwind readonly uwtable
define hidden i64 @WriteDistributePixelCachePixels(ptr nocapture noundef readnone %server_info, ptr nocapture noundef readnone %region, i64 noundef %length, ptr noalias nocapture noundef readnone %pixels) local_unnamed_addr #10 !dbg !1017 {
entry:
  call void @llvm.dbg.value(metadata ptr %server_info, metadata !1021, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %region, metadata !1022, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 %length, metadata !1023, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr %pixels, metadata !1024, metadata !DIExpression()), !dbg !1028
  %cmp = icmp slt i64 %length, 0, !dbg !1029
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1031

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata ptr undef, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8 undef, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i64 undef, metadata !1027, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata ptr poison, metadata !1026, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1028
  call void @llvm.dbg.value(metadata i32 undef, metadata !906, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata i64 undef, metadata !914, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata ptr undef, metadata !915, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !1032
  %call.i = tail call ptr @__errno_location() #14, !dbg !1032
  %0 = load i32, ptr %call.i, align 4, !tbaa !467
  %cmp2.not.i = icmp eq i32 %0, 4
  br i1 %cmp2.not.i, label %for.cond.i, label %cleanup, !dbg !1034, !llvm.loop !1035

for.cond.i:                                       ; preds = %if.end, %for.cond.i
  call void @llvm.dbg.value(metadata i64 0, metadata !917, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1032
  call void @llvm.dbg.value(metadata i64 0, metadata !916, metadata !DIExpression()) #13, !dbg !1032
  br label %for.cond.i

cleanup:                                          ; preds = %if.end, %entry
  ret i64 -1, !dbg !1038
}

declare !dbg !1039 ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1044 ptr @AcquireString(ptr noundef) local_unnamed_addr #4

declare !dbg !1047 i32 @SubstituteString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !1050 ptr @StringToArgv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }

!llvm.dbg.cu = !{!111}
!llvm.module.flags = !{!443, !444, !445, !446, !447, !448}
!llvm.ident = !{!449}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "id", scope: !2, file: !3, line: 263, type: !108, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "GetHostname", scope: !3, file: !3, line: 249, type: !4, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !435)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/distribute-cache.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f3f3ee296433ce0ee1154c431bc76e54")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !12, line: 219, baseType: !13)
!12 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !14, line: 102, size: 448, elements: !15)
!14 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!15 = !{!16, !91, !92, !93, !94, !96, !102, !107}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !13, file: !14, line: 105, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !14, line: 100, baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 28, baseType: !19, size: 32, elements: !20)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!21 = !DIEnumerator(name: "UndefinedException", value: 0)
!22 = !DIEnumerator(name: "WarningException", value: 300)
!23 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!24 = !DIEnumerator(name: "TypeWarning", value: 305)
!25 = !DIEnumerator(name: "OptionWarning", value: 310)
!26 = !DIEnumerator(name: "DelegateWarning", value: 315)
!27 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!28 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!29 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!30 = !DIEnumerator(name: "BlobWarning", value: 335)
!31 = !DIEnumerator(name: "StreamWarning", value: 340)
!32 = !DIEnumerator(name: "CacheWarning", value: 345)
!33 = !DIEnumerator(name: "CoderWarning", value: 350)
!34 = !DIEnumerator(name: "FilterWarning", value: 352)
!35 = !DIEnumerator(name: "ModuleWarning", value: 355)
!36 = !DIEnumerator(name: "DrawWarning", value: 360)
!37 = !DIEnumerator(name: "ImageWarning", value: 365)
!38 = !DIEnumerator(name: "WandWarning", value: 370)
!39 = !DIEnumerator(name: "RandomWarning", value: 375)
!40 = !DIEnumerator(name: "XServerWarning", value: 380)
!41 = !DIEnumerator(name: "MonitorWarning", value: 385)
!42 = !DIEnumerator(name: "RegistryWarning", value: 390)
!43 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!44 = !DIEnumerator(name: "PolicyWarning", value: 399)
!45 = !DIEnumerator(name: "ErrorException", value: 400)
!46 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!47 = !DIEnumerator(name: "TypeError", value: 405)
!48 = !DIEnumerator(name: "OptionError", value: 410)
!49 = !DIEnumerator(name: "DelegateError", value: 415)
!50 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!51 = !DIEnumerator(name: "CorruptImageError", value: 425)
!52 = !DIEnumerator(name: "FileOpenError", value: 430)
!53 = !DIEnumerator(name: "BlobError", value: 435)
!54 = !DIEnumerator(name: "StreamError", value: 440)
!55 = !DIEnumerator(name: "CacheError", value: 445)
!56 = !DIEnumerator(name: "CoderError", value: 450)
!57 = !DIEnumerator(name: "FilterError", value: 452)
!58 = !DIEnumerator(name: "ModuleError", value: 455)
!59 = !DIEnumerator(name: "DrawError", value: 460)
!60 = !DIEnumerator(name: "ImageError", value: 465)
!61 = !DIEnumerator(name: "WandError", value: 470)
!62 = !DIEnumerator(name: "RandomError", value: 475)
!63 = !DIEnumerator(name: "XServerError", value: 480)
!64 = !DIEnumerator(name: "MonitorError", value: 485)
!65 = !DIEnumerator(name: "RegistryError", value: 490)
!66 = !DIEnumerator(name: "ConfigureError", value: 495)
!67 = !DIEnumerator(name: "PolicyError", value: 499)
!68 = !DIEnumerator(name: "FatalErrorException", value: 700)
!69 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!70 = !DIEnumerator(name: "TypeFatalError", value: 705)
!71 = !DIEnumerator(name: "OptionFatalError", value: 710)
!72 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!73 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!74 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!75 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!76 = !DIEnumerator(name: "BlobFatalError", value: 735)
!77 = !DIEnumerator(name: "StreamFatalError", value: 740)
!78 = !DIEnumerator(name: "CacheFatalError", value: 745)
!79 = !DIEnumerator(name: "CoderFatalError", value: 750)
!80 = !DIEnumerator(name: "FilterFatalError", value: 752)
!81 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!82 = !DIEnumerator(name: "DrawFatalError", value: 760)
!83 = !DIEnumerator(name: "ImageFatalError", value: 765)
!84 = !DIEnumerator(name: "WandFatalError", value: 770)
!85 = !DIEnumerator(name: "RandomFatalError", value: 775)
!86 = !DIEnumerator(name: "XServerFatalError", value: 780)
!87 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!88 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!89 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!90 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !13, file: !14, line: 108, baseType: !9, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !13, file: !14, line: 111, baseType: !6, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !13, file: !14, line: 112, baseType: !6, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !13, file: !14, line: 115, baseType: !95, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !13, file: !14, line: 118, baseType: !97, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !12, line: 215, baseType: !98)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 211, baseType: !19, size: 32, elements: !99)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "MagickFalse", value: 0)
!101 = !DIEnumerator(name: "MagickTrue", value: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !13, file: !14, line: 121, baseType: !103, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !105, line: 26, baseType: !106)
!105 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !105, line: 25, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !13, file: !14, line: 124, baseType: !108, size: 64, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 46, baseType: !110)
!109 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = distinct !DICompileUnit(language: DW_LANG_C99, file: !112, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !113, retainedTypes: !407, globals: !434, splitDebugInlining: false, nameTableKind: None)
!112 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/distribute-cache.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "f3f3ee296433ce0ee1154c431bc76e54")
!113 = !{!98, !18, !114, !119, !156, !181, !193, !201, !206, !241, !251, !257, !272, !343, !351, !357, !374, !388, !400}
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 204, baseType: !19, size: 32, elements: !115)
!115 = !{!116, !117, !118}
!116 = !DIEnumerator(name: "UndefinedClass", value: 0)
!117 = !DIEnumerator(name: "DirectClass", value: 1)
!118 = !DIEnumerator(name: "PseudoClass", value: 2)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !120, line: 25, baseType: !19, size: 32, elements: !121)
!120 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!122 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!123 = !DIEnumerator(name: "RGBColorspace", value: 1)
!124 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!125 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!126 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!127 = !DIEnumerator(name: "LabColorspace", value: 5)
!128 = !DIEnumerator(name: "XYZColorspace", value: 6)
!129 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!130 = !DIEnumerator(name: "YCCColorspace", value: 8)
!131 = !DIEnumerator(name: "YIQColorspace", value: 9)
!132 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!133 = !DIEnumerator(name: "YUVColorspace", value: 11)
!134 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!135 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!136 = !DIEnumerator(name: "HSBColorspace", value: 14)
!137 = !DIEnumerator(name: "HSLColorspace", value: 15)
!138 = !DIEnumerator(name: "HWBColorspace", value: 16)
!139 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!140 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!141 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!142 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!143 = !DIEnumerator(name: "LogColorspace", value: 21)
!144 = !DIEnumerator(name: "CMYColorspace", value: 22)
!145 = !DIEnumerator(name: "LuvColorspace", value: 23)
!146 = !DIEnumerator(name: "HCLColorspace", value: 24)
!147 = !DIEnumerator(name: "LCHColorspace", value: 25)
!148 = !DIEnumerator(name: "LMSColorspace", value: 26)
!149 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!150 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!151 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!152 = !DIEnumerator(name: "HSIColorspace", value: 30)
!153 = !DIEnumerator(name: "HSVColorspace", value: 31)
!154 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!155 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !157, line: 25, baseType: !19, size: 32, elements: !158)
!157 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!159 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!160 = !DIEnumerator(name: "NoCompression", value: 1)
!161 = !DIEnumerator(name: "BZipCompression", value: 2)
!162 = !DIEnumerator(name: "DXT1Compression", value: 3)
!163 = !DIEnumerator(name: "DXT3Compression", value: 4)
!164 = !DIEnumerator(name: "DXT5Compression", value: 5)
!165 = !DIEnumerator(name: "FaxCompression", value: 6)
!166 = !DIEnumerator(name: "Group4Compression", value: 7)
!167 = !DIEnumerator(name: "JPEGCompression", value: 8)
!168 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!169 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!170 = !DIEnumerator(name: "LZWCompression", value: 11)
!171 = !DIEnumerator(name: "RLECompression", value: 12)
!172 = !DIEnumerator(name: "ZipCompression", value: 13)
!173 = !DIEnumerator(name: "ZipSCompression", value: 14)
!174 = !DIEnumerator(name: "PizCompression", value: 15)
!175 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!176 = !DIEnumerator(name: "B44Compression", value: 17)
!177 = !DIEnumerator(name: "B44ACompression", value: 18)
!178 = !DIEnumerator(name: "LZMACompression", value: 19)
!179 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!180 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 75, baseType: !19, size: 32, elements: !183)
!182 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192}
!184 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!185 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!186 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!187 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!188 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!189 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!190 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!191 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!192 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!193 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !194, line: 42, baseType: !19, size: 32, elements: !195)
!194 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!195 = !{!196, !197, !198, !199, !200}
!196 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!197 = !DIEnumerator(name: "SaturationIntent", value: 1)
!198 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!199 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!200 = !DIEnumerator(name: "RelativeIntent", value: 4)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 88, baseType: !19, size: 32, elements: !202)
!202 = !{!203, !204, !205}
!203 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!204 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!205 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 32, baseType: !19, size: 32, elements: !208)
!207 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240}
!209 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!210 = !DIEnumerator(name: "PointFilter", value: 1)
!211 = !DIEnumerator(name: "BoxFilter", value: 2)
!212 = !DIEnumerator(name: "TriangleFilter", value: 3)
!213 = !DIEnumerator(name: "HermiteFilter", value: 4)
!214 = !DIEnumerator(name: "HanningFilter", value: 5)
!215 = !DIEnumerator(name: "HammingFilter", value: 6)
!216 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!217 = !DIEnumerator(name: "GaussianFilter", value: 8)
!218 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!219 = !DIEnumerator(name: "CubicFilter", value: 10)
!220 = !DIEnumerator(name: "CatromFilter", value: 11)
!221 = !DIEnumerator(name: "MitchellFilter", value: 12)
!222 = !DIEnumerator(name: "JincFilter", value: 13)
!223 = !DIEnumerator(name: "SincFilter", value: 14)
!224 = !DIEnumerator(name: "SincFastFilter", value: 15)
!225 = !DIEnumerator(name: "KaiserFilter", value: 16)
!226 = !DIEnumerator(name: "WelshFilter", value: 17)
!227 = !DIEnumerator(name: "ParzenFilter", value: 18)
!228 = !DIEnumerator(name: "BohmanFilter", value: 19)
!229 = !DIEnumerator(name: "BartlettFilter", value: 20)
!230 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!231 = !DIEnumerator(name: "LanczosFilter", value: 22)
!232 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!233 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!234 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!235 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!236 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!237 = !DIEnumerator(name: "CosineFilter", value: 28)
!238 = !DIEnumerator(name: "SplineFilter", value: 29)
!239 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!240 = !DIEnumerator(name: "SentinelFilter", value: 31)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 63, baseType: !19, size: 32, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250}
!243 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!244 = !DIEnumerator(name: "NoInterlace", value: 1)
!245 = !DIEnumerator(name: "LineInterlace", value: 2)
!246 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!247 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!248 = !DIEnumerator(name: "GIFInterlace", value: 5)
!249 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!250 = !DIEnumerator(name: "PNGInterlace", value: 7)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !252, line: 30, baseType: !19, size: 32, elements: !253)
!252 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!253 = !{!254, !255, !256}
!254 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!255 = !DIEnumerator(name: "LSBEndian", value: 1)
!256 = !DIEnumerator(name: "MSBEndian", value: 2)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !258, line: 77, baseType: !19, size: 32, elements: !259)
!258 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!260 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!261 = !DIEnumerator(name: "ForgetGravity", value: 0)
!262 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!263 = !DIEnumerator(name: "NorthGravity", value: 2)
!264 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!265 = !DIEnumerator(name: "WestGravity", value: 4)
!266 = !DIEnumerator(name: "CenterGravity", value: 5)
!267 = !DIEnumerator(name: "EastGravity", value: 6)
!268 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!269 = !DIEnumerator(name: "SouthGravity", value: 8)
!270 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!271 = !DIEnumerator(name: "StaticGravity", value: 10)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !273, line: 25, baseType: !19, size: 32, elements: !274)
!273 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!274 = !{!275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!275 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!276 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!277 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!278 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!279 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!280 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!281 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!282 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!283 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!284 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!285 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!286 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!287 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!288 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!289 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!290 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!291 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!292 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!293 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!294 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!295 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!296 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!297 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!298 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!299 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!300 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!301 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!302 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!303 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!304 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!305 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!306 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!307 = !DIEnumerator(name: "InCompositeOp", value: 32)
!308 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!309 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!310 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!311 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!312 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!313 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!314 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!315 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!316 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!317 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!318 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!319 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!320 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!321 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!322 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!323 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!324 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!325 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!326 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!327 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!328 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!329 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!330 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!331 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!332 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!333 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!334 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!335 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!336 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!337 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!338 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!339 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!340 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!341 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!342 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 25, baseType: !19, size: 32, elements: !345)
!344 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!345 = !{!346, !347, !348, !349, !350}
!346 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!347 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!348 = !DIEnumerator(name: "NoneDispose", value: 1)
!349 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!350 = !DIEnumerator(name: "PreviousDispose", value: 3)
!351 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !352, line: 25, baseType: !19, size: 32, elements: !353)
!352 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!353 = !{!354, !355, !356}
!354 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!355 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!356 = !DIEnumerator(name: "RunningTimerState", value: 2)
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !358, line: 31, baseType: !19, size: 32, elements: !359)
!358 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!359 = !{!360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!360 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!361 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!362 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!363 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!364 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!365 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!366 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!367 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!368 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!369 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!370 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!371 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!372 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!373 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!374 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !182, line: 47, baseType: !19, size: 32, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!376 = !DIEnumerator(name: "UndefinedType", value: 0)
!377 = !DIEnumerator(name: "BilevelType", value: 1)
!378 = !DIEnumerator(name: "GrayscaleType", value: 2)
!379 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!380 = !DIEnumerator(name: "PaletteType", value: 4)
!381 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!382 = !DIEnumerator(name: "TrueColorType", value: 6)
!383 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!384 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!385 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!386 = !DIEnumerator(name: "OptimizeType", value: 10)
!387 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !358, line: 67, baseType: !19, size: 32, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!390 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!391 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!392 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!393 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!394 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!395 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!396 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!397 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!398 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!399 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 25, baseType: !19, size: 32, elements: !402)
!401 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fee9ec3439d50d35877b8d14c6edadfb")
!402 = !{!403, !404, !405, !406}
!403 = !DIEnumerator(name: "UndefinedRegistryType", value: 0)
!404 = !DIEnumerator(name: "ImageRegistryType", value: 1)
!405 = !DIEnumerator(name: "ImageInfoRegistryType", value: 2)
!406 = !DIEnumerator(name: "StringRegistryType", value: 3)
!407 = !{!408, !95, !110, !9, !422, !424, !426, !6, !428, !429}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "DistributeCacheInfo", file: !410, line: 47, baseType: !411)
!410 = !DIFile(filename: "apps/538.imagick_r/src/magick/distribute-cache-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "49d7fc00e918410003b4207b0f480734")
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_DistributeCacheInfo", file: !410, line: 28, size: 33088, elements: !412)
!412 = !{!413, !414, !415, !419, !420, !421}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !411, file: !410, line: 31, baseType: !9, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "session_key", scope: !411, file: !410, line: 34, baseType: !108, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !411, file: !410, line: 37, baseType: !416, size: 32768, offset: 128)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 4096)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !411, file: !410, line: 40, baseType: !9, size: 32, offset: 32896)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !411, file: !410, line: 43, baseType: !108, size: 64, offset: 32960)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !411, file: !410, line: 46, baseType: !97, size: 32, offset: 33024)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !12, line: 150, baseType: !423)
!423 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !12, line: 151, baseType: !427)
!427 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !430, line: 77, baseType: !431)
!430 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !432, line: 193, baseType: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!433 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!434 = !{!0}
!435 = !{!436, !437, !438, !439, !440, !441, !442}
!436 = !DILocalVariable(name: "port", arg: 1, scope: !2, file: !3, line: 249, type: !8)
!437 = !DILocalVariable(name: "exception", arg: 2, scope: !2, file: !3, line: 249, type: !10)
!438 = !DILocalVariable(name: "host", scope: !2, file: !3, line: 252, type: !6)
!439 = !DILocalVariable(name: "hosts", scope: !2, file: !3, line: 253, type: !6)
!440 = !DILocalVariable(name: "hostlist", scope: !2, file: !3, line: 254, type: !428)
!441 = !DILocalVariable(name: "argc", scope: !2, file: !3, line: 257, type: !9)
!442 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 260, type: !429)
!443 = !{i32 7, !"Dwarf Version", i32 5}
!444 = !{i32 2, !"Debug Info Version", i32 3}
!445 = !{i32 1, !"wchar_size", i32 4}
!446 = !{i32 7, !"PIC Level", i32 2}
!447 = !{i32 7, !"PIE Level", i32 2}
!448 = !{i32 7, !"uwtable", i32 2}
!449 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!450 = distinct !DISubprogram(name: "AcquireDistributeCacheInfo", scope: !3, file: !3, line: 304, type: !451, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!408, !10}
!453 = !{!454, !455, !456, !457, !458, !461}
!454 = !DILocalVariable(name: "exception", arg: 1, scope: !450, file: !3, line: 305, type: !10)
!455 = !DILocalVariable(name: "hostname", scope: !450, file: !3, line: 308, type: !6)
!456 = !DILocalVariable(name: "server_info", scope: !450, file: !3, line: 311, type: !408)
!457 = !DILocalVariable(name: "session_key", scope: !450, file: !3, line: 314, type: !108)
!458 = !DILocalVariable(name: "message", scope: !459, file: !3, line: 321, type: !6)
!459 = distinct !DILexicalBlock(scope: !460, file: !3, line: 321, column: 5)
!460 = distinct !DILexicalBlock(scope: !450, file: !3, line: 320, column: 7)
!461 = !DILocalVariable(name: "exception", scope: !459, file: !3, line: 321, type: !11)
!462 = !DILocation(line: 0, scope: !450)
!463 = !DILocation(line: 319, column: 39, scope: !450)
!464 = !DILocation(line: 320, column: 19, scope: !460)
!465 = !DILocation(line: 320, column: 7, scope: !450)
!466 = !DILocation(line: 321, column: 5, scope: !459)
!467 = !{!468, !468, i64 0}
!468 = !{!"int", !469, i64 0}
!469 = !{!"omnipotent char", !470, i64 0}
!470 = !{!"Simple C/C++ TBAA"}
!471 = !DILocation(line: 0, scope: !459)
!472 = !DILocation(line: 322, column: 10, scope: !450)
!473 = !DILocation(line: 323, column: 16, scope: !450)
!474 = !DILocation(line: 323, column: 25, scope: !450)
!475 = !{!476, !477, i64 4120}
!476 = !{!"_DistributeCacheInfo", !468, i64 0, !477, i64 8, !469, i64 16, !468, i64 4112, !477, i64 4120, !469, i64 4128}
!477 = !{!"long", !469, i64 0}
!478 = !DILocation(line: 324, column: 16, scope: !450)
!479 = !DILocation(line: 324, column: 20, scope: !450)
!480 = !{!476, !468, i64 4112}
!481 = !DILocation(line: 0, scope: !2, inlinedAt: !482)
!482 = distinct !DILocation(line: 325, column: 12, scope: !450)
!483 = !DILocation(line: 251, column: 3, scope: !2, inlinedAt: !482)
!484 = !DILocation(line: 256, column: 3, scope: !2, inlinedAt: !482)
!485 = !DILocation(line: 268, column: 18, scope: !2, inlinedAt: !482)
!486 = !DILocation(line: 268, column: 8, scope: !2, inlinedAt: !482)
!487 = !{!488, !488, i64 0}
!488 = !{!"any pointer", !469, i64 0}
!489 = !DILocation(line: 269, column: 13, scope: !490, inlinedAt: !482)
!490 = distinct !DILexicalBlock(scope: !2, file: !3, line: 269, column: 7)
!491 = !DILocation(line: 269, column: 7, scope: !2, inlinedAt: !482)
!492 = !DILocation(line: 271, column: 12, scope: !493, inlinedAt: !482)
!493 = distinct !DILexicalBlock(scope: !490, file: !3, line: 270, column: 5)
!494 = !DILocation(line: 272, column: 14, scope: !493, inlinedAt: !482)
!495 = !DILocation(line: 272, column: 7, scope: !493, inlinedAt: !482)
!496 = !DILocation(line: 274, column: 10, scope: !2, inlinedAt: !482)
!497 = !DILocation(line: 275, column: 25, scope: !2, inlinedAt: !482)
!498 = !DILocation(line: 275, column: 12, scope: !2, inlinedAt: !482)
!499 = !DILocation(line: 276, column: 23, scope: !2, inlinedAt: !482)
!500 = !DILocation(line: 276, column: 9, scope: !2, inlinedAt: !482)
!501 = !DILocation(line: 276, column: 8, scope: !2, inlinedAt: !482)
!502 = !DILocation(line: 277, column: 16, scope: !503, inlinedAt: !482)
!503 = distinct !DILexicalBlock(scope: !2, file: !3, line: 277, column: 7)
!504 = !DILocation(line: 277, column: 7, scope: !2, inlinedAt: !482)
!505 = !DILocation(line: 279, column: 12, scope: !506, inlinedAt: !482)
!506 = distinct !DILexicalBlock(scope: !503, file: !3, line: 278, column: 5)
!507 = !DILocation(line: 280, column: 14, scope: !506, inlinedAt: !482)
!508 = !DILocation(line: 280, column: 7, scope: !506, inlinedAt: !482)
!509 = !DILocation(line: 282, column: 35, scope: !2, inlinedAt: !482)
!510 = !{!477, !477, i64 0}
!511 = !DILocation(line: 282, column: 41, scope: !2, inlinedAt: !482)
!512 = !DILocation(line: 282, column: 45, scope: !2, inlinedAt: !482)
!513 = !DILocation(line: 282, column: 40, scope: !2, inlinedAt: !482)
!514 = !DILocation(line: 282, column: 38, scope: !2, inlinedAt: !482)
!515 = !DILocation(line: 282, column: 49, scope: !2, inlinedAt: !482)
!516 = !DILocation(line: 282, column: 23, scope: !2, inlinedAt: !482)
!517 = !DILocation(line: 282, column: 9, scope: !2, inlinedAt: !482)
!518 = !DILocation(line: 282, column: 8, scope: !2, inlinedAt: !482)
!519 = !DILocation(line: 283, column: 27, scope: !520, inlinedAt: !482)
!520 = distinct !DILexicalBlock(scope: !521, file: !3, line: 283, column: 3)
!521 = distinct !DILexicalBlock(scope: !2, file: !3, line: 283, column: 3)
!522 = !DILocation(line: 283, column: 15, scope: !520, inlinedAt: !482)
!523 = !DILocation(line: 283, column: 3, scope: !521, inlinedAt: !482)
!524 = !DILocation(line: 284, column: 31, scope: !520, inlinedAt: !482)
!525 = !DILocation(line: 284, column: 17, scope: !520, inlinedAt: !482)
!526 = !DILocation(line: 284, column: 16, scope: !520, inlinedAt: !482)
!527 = !DILocation(line: 283, column: 34, scope: !520, inlinedAt: !482)
!528 = !DILocation(line: 283, column: 17, scope: !520, inlinedAt: !482)
!529 = distinct !{!529, !523, !530, !531, !532}
!530 = !DILocation(line: 284, column: 42, scope: !521, inlinedAt: !482)
!531 = !{!"llvm.loop.mustprogress"}
!532 = !{!"llvm.loop.unroll.disable"}
!533 = !DILocation(line: 285, column: 22, scope: !2, inlinedAt: !482)
!534 = !DILocation(line: 286, column: 10, scope: !2, inlinedAt: !482)
!535 = !DILocation(line: 287, column: 25, scope: !2, inlinedAt: !482)
!536 = !DILocation(line: 287, column: 12, scope: !2, inlinedAt: !482)
!537 = !DILocation(line: 288, column: 16, scope: !538, inlinedAt: !482)
!538 = distinct !DILexicalBlock(scope: !2, file: !3, line: 288, column: 7)
!539 = !DILocation(line: 288, column: 7, scope: !2, inlinedAt: !482)
!540 = !DILocation(line: 290, column: 12, scope: !541, inlinedAt: !482)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 289, column: 5)
!542 = !DILocation(line: 291, column: 14, scope: !541, inlinedAt: !482)
!543 = !DILocation(line: 291, column: 7, scope: !541, inlinedAt: !482)
!544 = !DILocation(line: 293, column: 22, scope: !2, inlinedAt: !482)
!545 = !DILocation(line: 293, column: 8, scope: !2, inlinedAt: !482)
!546 = !DILocation(line: 294, column: 7, scope: !547, inlinedAt: !482)
!547 = distinct !DILexicalBlock(scope: !2, file: !3, line: 294, column: 7)
!548 = !DILocation(line: 294, column: 19, scope: !547, inlinedAt: !482)
!549 = !DILocation(line: 294, column: 7, scope: !2, inlinedAt: !482)
!550 = !DILocalVariable(name: "value", arg: 1, scope: !551, file: !552, line: 68, type: !555)
!551 = distinct !DISubprogram(name: "StringToLong", scope: !552, file: !552, line: 68, type: !553, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !558)
!552 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!553 = !DISubroutineType(types: !554)
!554 = !{!433, !555}
!555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!558 = !{!550}
!559 = !DILocation(line: 0, scope: !551, inlinedAt: !560)
!560 = distinct !DILocation(line: 297, column: 11, scope: !547, inlinedAt: !482)
!561 = !DILocation(line: 70, column: 10, scope: !551, inlinedAt: !560)
!562 = !DILocation(line: 297, column: 11, scope: !547, inlinedAt: !482)
!563 = !DILocation(line: 0, scope: !547, inlinedAt: !482)
!564 = !DILocation(line: 298, column: 27, scope: !565, inlinedAt: !482)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 298, column: 3)
!566 = distinct !DILexicalBlock(scope: !2, file: !3, line: 298, column: 3)
!567 = !DILocation(line: 298, column: 15, scope: !565, inlinedAt: !482)
!568 = !DILocation(line: 298, column: 3, scope: !566, inlinedAt: !482)
!569 = !DILocation(line: 299, column: 31, scope: !565, inlinedAt: !482)
!570 = !DILocation(line: 299, column: 17, scope: !565, inlinedAt: !482)
!571 = !DILocation(line: 299, column: 16, scope: !565, inlinedAt: !482)
!572 = !DILocation(line: 298, column: 34, scope: !565, inlinedAt: !482)
!573 = !DILocation(line: 298, column: 17, scope: !565, inlinedAt: !482)
!574 = distinct !{!574, !568, !575, !531, !532}
!575 = !DILocation(line: 299, column: 42, scope: !566, inlinedAt: !482)
!576 = !DILocation(line: 300, column: 22, scope: !2, inlinedAt: !482)
!577 = !DILocation(line: 301, column: 3, scope: !2, inlinedAt: !482)
!578 = !DILocation(line: 302, column: 1, scope: !2, inlinedAt: !482)
!579 = !DILocalVariable(name: "hostname", arg: 1, scope: !580, file: !3, line: 158, type: !556)
!580 = distinct !DISubprogram(name: "ConnectPixelCacheServer", scope: !3, file: !3, line: 158, type: !581, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !585)
!581 = !DISubroutineType(types: !582)
!582 = !{!9, !556, !583, !584, !10}
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!585 = !{!579, !586, !587, !588}
!586 = !DILocalVariable(name: "port", arg: 2, scope: !580, file: !3, line: 158, type: !583)
!587 = !DILocalVariable(name: "session_key", arg: 3, scope: !580, file: !3, line: 159, type: !584)
!588 = !DILocalVariable(name: "exception", arg: 4, scope: !580, file: !3, line: 159, type: !10)
!589 = !DILocation(line: 0, scope: !580, inlinedAt: !590)
!590 = distinct !DILocation(line: 327, column: 21, scope: !450)
!591 = !DILocation(line: 243, column: 10, scope: !580, inlinedAt: !590)
!592 = !DILocation(line: 327, column: 20, scope: !450)
!593 = !{!476, !468, i64 0}
!594 = !DILocation(line: 329, column: 16, scope: !450)
!595 = !DILocation(line: 329, column: 27, scope: !450)
!596 = !{!476, !477, i64 8}
!597 = !DILocation(line: 330, column: 40, scope: !450)
!598 = !DILocation(line: 330, column: 10, scope: !450)
!599 = !DILocation(line: 331, column: 12, scope: !450)
!600 = !DILocation(line: 332, column: 20, scope: !601)
!601 = distinct !DILexicalBlock(scope: !450, file: !3, line: 332, column: 7)
!602 = !DILocation(line: 332, column: 25, scope: !601)
!603 = !DILocation(line: 332, column: 7, scope: !450)
!604 = !DILocation(line: 369, column: 25, scope: !605, inlinedAt: !610)
!605 = distinct !DISubprogram(name: "DestroyDistributeCacheInfo", scope: !3, file: !3, line: 362, type: !606, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!408, !408}
!608 = !{!609}
!609 = !DILocalVariable(name: "server_info", arg: 1, scope: !605, file: !3, line: 363, type: !408)
!610 = distinct !DILocation(line: 333, column: 17, scope: !601)
!611 = !DILocation(line: 370, column: 39, scope: !605, inlinedAt: !610)
!612 = !DILocation(line: 0, scope: !605, inlinedAt: !610)
!613 = !DILocation(line: 333, column: 5, scope: !601)
!614 = !DILocation(line: 334, column: 22, scope: !450)
!615 = !DILocation(line: 334, column: 16, scope: !450)
!616 = !DILocation(line: 334, column: 21, scope: !450)
!617 = !{!476, !469, i64 4128}
!618 = !DILocation(line: 335, column: 3, scope: !450)
!619 = !DISubprogram(name: "AcquireMagickMemory", scope: !620, file: !620, line: 40, type: !621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!620 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!621 = !DISubroutineType(types: !622)
!622 = !{!95, !623}
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!624 = !{}
!625 = !DISubprogram(name: "GetExceptionInfo", scope: !14, file: !14, line: 166, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !10}
!628 = !DISubprogram(name: "GetExceptionMessage", scope: !14, file: !14, line: 137, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!629 = !DISubroutineType(types: !630)
!630 = !{!6, !583}
!631 = !DISubprogram(name: "ThrowMagickException", scope: !14, file: !14, line: 156, type: !632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!632 = !DISubroutineType(types: !633)
!633 = !{!97, !10, !556, !556, !623, !634, !556, !556, null}
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!635 = !DISubprogram(name: "DestroyString", scope: !636, file: !636, line: 46, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!636 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!637 = !DISubroutineType(types: !638)
!638 = !{!6, !6}
!639 = !DISubprogram(name: "CatchException", scope: !14, file: !14, line: 164, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!640 = !DISubprogram(name: "DestroyExceptionInfo", scope: !14, file: !14, line: 148, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!641 = !DISubroutineType(types: !642)
!642 = !{!10, !10}
!643 = !DISubprogram(name: "MagickCoreTerminus", scope: !644, file: !644, line: 147, type: !645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!644 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!645 = !DISubroutineType(types: !646)
!646 = !{null}
!647 = !DISubprogram(name: "ResetMagickMemory", scope: !620, file: !620, line: 52, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!648 = !DISubroutineType(types: !649)
!649 = !{!95, !95, !9, !623}
!650 = !DISubprogram(name: "CopyMagickString", scope: !636, file: !636, line: 78, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!651 = !DISubroutineType(types: !652)
!652 = !{!108, !6, !556, !623}
!653 = !DILocation(line: 0, scope: !605)
!654 = !DILocation(line: 367, column: 20, scope: !655)
!655 = distinct !DILexicalBlock(scope: !605, file: !3, line: 367, column: 7)
!656 = !DILocation(line: 367, column: 25, scope: !655)
!657 = !DILocation(line: 367, column: 7, scope: !605)
!658 = !DILocation(line: 368, column: 12, scope: !655)
!659 = !DILocation(line: 368, column: 5, scope: !655)
!660 = !DILocation(line: 369, column: 16, scope: !605)
!661 = !DILocation(line: 369, column: 25, scope: !605)
!662 = !DILocation(line: 370, column: 39, scope: !605)
!663 = !DILocation(line: 371, column: 3, scope: !605)
!664 = !DISubprogram(name: "IsEventLogging", scope: !665, file: !665, line: 80, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!665 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!666 = !DISubroutineType(types: !667)
!667 = !{!97}
!668 = !DISubprogram(name: "close", scope: !669, file: !669, line: 353, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!669 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!670 = !DISubroutineType(types: !671)
!671 = !{!9, !9}
!672 = !DISubprogram(name: "RelinquishMagickMemory", scope: !620, file: !620, line: 51, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!673 = !DISubroutineType(types: !674)
!674 = !{!95, !95}
!675 = distinct !DISubprogram(name: "DistributePixelCacheServer", scope: !3, file: !3, line: 850, type: !676, scopeLine: 852, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !678)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !583, !10}
!678 = !{!679, !680, !681, !683}
!679 = !DILocalVariable(name: "port", arg: 1, scope: !675, file: !3, line: 850, type: !583)
!680 = !DILocalVariable(name: "exception", arg: 2, scope: !675, file: !3, line: 851, type: !10)
!681 = !DILocalVariable(name: "message", scope: !682, file: !3, line: 941, type: !6)
!682 = distinct !DILexicalBlock(scope: !675, file: !3, line: 941, column: 3)
!683 = !DILocalVariable(name: "exception", scope: !682, file: !3, line: 941, type: !11)
!684 = !DILocation(line: 0, scope: !675)
!685 = !DILocation(line: 941, column: 3, scope: !682)
!686 = !DILocation(line: 0, scope: !682)
!687 = distinct !DISubprogram(name: "GetDistributeCacheFile", scope: !3, file: !3, line: 968, type: !688, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !692)
!688 = !DISubroutineType(types: !689)
!689 = !{!9, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!692 = !{!693}
!693 = !DILocalVariable(name: "server_info", arg: 1, scope: !687, file: !3, line: 968, type: !690)
!694 = !DILocation(line: 0, scope: !687)
!695 = !DILocation(line: 972, column: 23, scope: !687)
!696 = !DILocation(line: 972, column: 3, scope: !687)
!697 = distinct !DISubprogram(name: "GetDistributeCacheHostname", scope: !3, file: !3, line: 999, type: !698, scopeLine: 1001, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!556, !690}
!700 = !{!701}
!701 = !DILocalVariable(name: "server_info", arg: 1, scope: !697, file: !3, line: 1000, type: !690)
!702 = !DILocation(line: 0, scope: !697)
!703 = !DILocation(line: 1004, column: 23, scope: !697)
!704 = !DILocation(line: 1004, column: 3, scope: !697)
!705 = distinct !DISubprogram(name: "GetDistributeCachePort", scope: !3, file: !3, line: 1030, type: !688, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !706)
!706 = !{!707}
!707 = !DILocalVariable(name: "server_info", arg: 1, scope: !705, file: !3, line: 1030, type: !690)
!708 = !DILocation(line: 0, scope: !705)
!709 = !DILocation(line: 1034, column: 23, scope: !705)
!710 = !DILocation(line: 1034, column: 3, scope: !705)
!711 = distinct !DISubprogram(name: "OpenDistributePixelCache", scope: !3, file: !3, line: 1062, type: !712, scopeLine: 1064, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !896)
!712 = !DISubroutineType(types: !713)
!713 = !{!97, !408, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !12, line: 221, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !182, line: 150, size: 105920, elements: !717)
!717 = !{!718, !720, !722, !724, !725, !727, !728, !729, !730, !731, !732, !733, !744, !745, !746, !747, !749, !763, !765, !766, !768, !769, !770, !771, !772, !773, !774, !782, !783, !784, !785, !786, !787, !789, !791, !793, !795, !797, !799, !801, !802, !803, !804, !805, !806, !807, !815, !830, !838, !839, !840, !841, !845, !849, !850, !851, !852, !853, !854, !855, !856, !858, !859, !867, !868, !870, !871, !872, !873, !874, !875, !877, !878, !879, !880, !881, !882, !883, !885, !886, !887, !888, !889, !893, !895}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !716, file: !182, line: 153, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !12, line: 209, baseType: !114)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !716, file: !182, line: 156, baseType: !721, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !120, line: 61, baseType: !119)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !716, file: !182, line: 159, baseType: !723, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !157, line: 49, baseType: !156)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !716, file: !182, line: 162, baseType: !108, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !716, file: !182, line: 165, baseType: !726, size: 32, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !182, line: 86, baseType: !181)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !716, file: !182, line: 168, baseType: !97, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !716, file: !182, line: 169, baseType: !97, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !716, file: !182, line: 172, baseType: !108, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !716, file: !182, line: 173, baseType: !108, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !716, file: !182, line: 174, baseType: !108, size: 64, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !716, file: !182, line: 175, baseType: !108, size: 64, offset: 512)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !716, file: !182, line: 178, baseType: !734, size: 64, offset: 576)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !358, line: 148, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !358, line: 131, size: 64, elements: !737)
!737 = !{!738, !741, !742, !743}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !736, file: !358, line: 143, baseType: !739, size: 16)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !12, line: 93, baseType: !740)
!740 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !736, file: !358, line: 144, baseType: !739, size: 16, offset: 16)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !736, file: !358, line: 145, baseType: !739, size: 16, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !736, file: !358, line: 146, baseType: !739, size: 16, offset: 48)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !716, file: !182, line: 179, baseType: !735, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !716, file: !182, line: 180, baseType: !735, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !716, file: !182, line: 181, baseType: !735, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !716, file: !182, line: 184, baseType: !748, size: 64, offset: 832)
!748 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !716, file: !182, line: 187, baseType: !750, size: 768, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !182, line: 128, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !182, line: 121, size: 768, elements: !752)
!752 = !{!753, !760, !761, !762}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !751, file: !182, line: 124, baseType: !754, size: 192)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !182, line: 101, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !182, line: 95, size: 192, elements: !756)
!756 = !{!757, !758, !759}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !755, file: !182, line: 98, baseType: !748, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !755, file: !182, line: 99, baseType: !748, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !755, file: !182, line: 100, baseType: !748, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !751, file: !182, line: 125, baseType: !754, size: 192, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !751, file: !182, line: 126, baseType: !754, size: 192, offset: 384)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !751, file: !182, line: 127, baseType: !754, size: 192, offset: 576)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !716, file: !182, line: 190, baseType: !764, size: 32, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !194, line: 49, baseType: !193)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !716, file: !182, line: 193, baseType: !95, size: 64, offset: 1728)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !716, file: !182, line: 196, baseType: !767, size: 32, offset: 1792)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !182, line: 93, baseType: !201)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !716, file: !182, line: 199, baseType: !6, size: 64, offset: 1856)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !716, file: !182, line: 200, baseType: !6, size: 64, offset: 1920)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !716, file: !182, line: 201, baseType: !6, size: 64, offset: 1984)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !716, file: !182, line: 204, baseType: !429, size: 64, offset: 2048)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !716, file: !182, line: 207, baseType: !748, size: 64, offset: 2112)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !716, file: !182, line: 208, baseType: !748, size: 64, offset: 2176)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !716, file: !182, line: 211, baseType: !775, size: 256, offset: 2240)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !258, line: 130, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !258, line: 121, size: 256, elements: !777)
!777 = !{!778, !779, !780, !781}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !776, file: !258, line: 124, baseType: !108, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !776, file: !258, line: 125, baseType: !108, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !776, file: !258, line: 128, baseType: !429, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !776, file: !258, line: 129, baseType: !429, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !716, file: !182, line: 212, baseType: !775, size: 256, offset: 2496)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !716, file: !182, line: 213, baseType: !775, size: 256, offset: 2752)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !716, file: !182, line: 216, baseType: !748, size: 64, offset: 3008)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !716, file: !182, line: 217, baseType: !748, size: 64, offset: 3072)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !716, file: !182, line: 218, baseType: !748, size: 64, offset: 3136)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !716, file: !182, line: 221, baseType: !788, size: 32, offset: 3200)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !207, line: 66, baseType: !206)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !716, file: !182, line: 224, baseType: !790, size: 32, offset: 3232)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !182, line: 73, baseType: !241)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !716, file: !182, line: 227, baseType: !792, size: 32, offset: 3264)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !252, line: 35, baseType: !251)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !716, file: !182, line: 230, baseType: !794, size: 32, offset: 3296)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !258, line: 91, baseType: !257)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !716, file: !182, line: 233, baseType: !796, size: 32, offset: 3328)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !273, line: 99, baseType: !272)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !716, file: !182, line: 236, baseType: !798, size: 32, offset: 3360)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !344, line: 32, baseType: !343)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !716, file: !182, line: 239, baseType: !800, size: 64, offset: 3392)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !716, file: !182, line: 242, baseType: !108, size: 64, offset: 3456)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !716, file: !182, line: 243, baseType: !108, size: 64, offset: 3520)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !716, file: !182, line: 246, baseType: !429, size: 64, offset: 3584)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !716, file: !182, line: 249, baseType: !108, size: 64, offset: 3648)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !716, file: !182, line: 250, baseType: !108, size: 64, offset: 3712)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !716, file: !182, line: 253, baseType: !429, size: 64, offset: 3776)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !716, file: !182, line: 256, baseType: !808, size: 192, offset: 3840)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !809, line: 68, baseType: !810)
!809 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !809, line: 62, size: 192, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !810, file: !809, line: 65, baseType: !748, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !810, file: !809, line: 66, baseType: !748, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !810, file: !809, line: 67, baseType: !748, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !716, file: !182, line: 259, baseType: !816, size: 512, offset: 4032)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !352, line: 51, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !352, line: 40, size: 512, elements: !818)
!818 = !{!819, !826, !827, !829}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !817, file: !352, line: 43, baseType: !820, size: 192)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !352, line: 38, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !352, line: 32, size: 192, elements: !822)
!822 = !{!823, !824, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !821, file: !352, line: 35, baseType: !748, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !821, file: !352, line: 36, baseType: !748, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !821, file: !352, line: 37, baseType: !748, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !817, file: !352, line: 44, baseType: !820, size: 192, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !817, file: !352, line: 47, baseType: !828, size: 32, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !352, line: 30, baseType: !351)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !817, file: !352, line: 50, baseType: !108, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !716, file: !182, line: 262, baseType: !831, size: 64, offset: 4544)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !832, line: 26, baseType: !833)
!832 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!97, !556, !836, !837, !95}
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !716, file: !182, line: 265, baseType: !95, size: 64, offset: 4608)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !716, file: !182, line: 266, baseType: !95, size: 64, offset: 4672)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !716, file: !182, line: 267, baseType: !95, size: 64, offset: 4736)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !716, file: !182, line: 270, baseType: !842, size: 64, offset: 4800)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !157, line: 52, baseType: !844)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !157, line: 51, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !716, file: !182, line: 273, baseType: !846, size: 64, offset: 4864)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !12, line: 217, baseType: !848)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !12, line: 217, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !716, file: !182, line: 276, baseType: !416, size: 32768, offset: 4928)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !716, file: !182, line: 277, baseType: !416, size: 32768, offset: 37696)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !716, file: !182, line: 278, baseType: !416, size: 32768, offset: 70464)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !716, file: !182, line: 281, baseType: !108, size: 64, offset: 103232)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !716, file: !182, line: 282, baseType: !108, size: 64, offset: 103296)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !716, file: !182, line: 285, baseType: !11, size: 448, offset: 103360)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !716, file: !182, line: 288, baseType: !97, size: 32, offset: 103808)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !716, file: !182, line: 291, baseType: !857, size: 64, offset: 103872)
!857 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !429)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !716, file: !182, line: 294, baseType: !103, size: 64, offset: 103936)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !716, file: !182, line: 297, baseType: !860, size: 256, offset: 104000)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !194, line: 40, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !194, line: 27, size: 256, elements: !862)
!862 = !{!863, !864, !865, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !194, line: 30, baseType: !6, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !861, file: !194, line: 33, baseType: !108, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !861, file: !194, line: 36, baseType: !424, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !861, file: !194, line: 39, baseType: !108, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !716, file: !182, line: 298, baseType: !860, size: 256, offset: 104256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !716, file: !182, line: 299, baseType: !869, size: 64, offset: 104512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !716, file: !182, line: 302, baseType: !108, size: 64, offset: 104576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !716, file: !182, line: 305, baseType: !108, size: 64, offset: 104640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !716, file: !182, line: 308, baseType: !800, size: 64, offset: 104704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !716, file: !182, line: 309, baseType: !800, size: 64, offset: 104768)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !716, file: !182, line: 310, baseType: !800, size: 64, offset: 104832)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !716, file: !182, line: 313, baseType: !876, size: 32, offset: 104896)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !358, line: 47, baseType: !357)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !716, file: !182, line: 316, baseType: !97, size: 32, offset: 104928)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !716, file: !182, line: 319, baseType: !735, size: 64, offset: 104960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !716, file: !182, line: 322, baseType: !800, size: 64, offset: 105024)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !716, file: !182, line: 325, baseType: !775, size: 256, offset: 105088)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !716, file: !182, line: 328, baseType: !95, size: 64, offset: 105344)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !716, file: !182, line: 329, baseType: !95, size: 64, offset: 105408)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !716, file: !182, line: 332, baseType: !884, size: 32, offset: 105472)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !182, line: 61, baseType: !374)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !716, file: !182, line: 335, baseType: !97, size: 32, offset: 105504)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !716, file: !182, line: 338, baseType: !426, size: 64, offset: 105536)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !716, file: !182, line: 341, baseType: !97, size: 32, offset: 105600)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !716, file: !182, line: 344, baseType: !108, size: 64, offset: 105664)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !716, file: !182, line: 347, baseType: !890, size: 64, offset: 105728)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !891, line: 7, baseType: !892)
!891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !432, line: 160, baseType: !433)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !716, file: !182, line: 350, baseType: !894, size: 32, offset: 105792)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !358, line: 79, baseType: !388)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !716, file: !182, line: 353, baseType: !108, size: 64, offset: 105856)
!896 = !{!897, !898, !899, !900, !901, !902}
!897 = !DILocalVariable(name: "server_info", arg: 1, scope: !711, file: !3, line: 1063, type: !408)
!898 = !DILocalVariable(name: "image", arg: 2, scope: !711, file: !3, line: 1063, type: !714)
!899 = !DILocalVariable(name: "status", scope: !711, file: !3, line: 1066, type: !97)
!900 = !DILocalVariable(name: "count", scope: !711, file: !3, line: 1069, type: !422)
!901 = !DILocalVariable(name: "p", scope: !711, file: !3, line: 1072, type: !424)
!902 = !DILocalVariable(name: "message", scope: !711, file: !3, line: 1075, type: !903)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !425, size: 32768, elements: !417)
!904 = !DILocation(line: 0, scope: !711)
!905 = !DILocation(line: 1066, column: 5, scope: !711)
!906 = !DILocalVariable(name: "file", arg: 1, scope: !907, file: !3, line: 410, type: !9)
!907 = distinct !DISubprogram(name: "dpc_send", scope: !3, file: !3, line: 410, type: !908, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !913)
!908 = !DISubroutineType(types: !909)
!909 = !{!422, !9, !837, !910}
!910 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!913 = !{!906, !914, !915, !916, !917}
!914 = !DILocalVariable(name: "length", arg: 2, scope: !907, file: !3, line: 410, type: !837)
!915 = !DILocalVariable(name: "message", arg: 3, scope: !907, file: !3, line: 411, type: !910)
!916 = !DILocalVariable(name: "count", scope: !907, file: !3, line: 414, type: !422)
!917 = !DILocalVariable(name: "i", scope: !907, file: !3, line: 417, type: !422)
!918 = !DILocation(line: 0, scope: !907, inlinedAt: !919)
!919 = distinct !DILocation(line: 1101, column: 9, scope: !711)
!920 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !919)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 433, column: 7)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 432, column: 9)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 429, column: 3)
!924 = distinct !DILexicalBlock(scope: !925, file: !3, line: 428, column: 3)
!925 = distinct !DILexicalBlock(scope: !907, file: !3, line: 428, column: 3)
!926 = distinct !{!926, !927, !928, !531, !532}
!927 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !919)
!928 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !919)
!929 = !DILocation(line: 1109, column: 1, scope: !711)
!930 = distinct !DISubprogram(name: "ReadDistributePixelCacheIndexes", scope: !3, file: !3, line: 1144, type: !931, scopeLine: 1147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !935)
!931 = !DISubroutineType(types: !932)
!932 = !{!422, !408, !933, !837, !424}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!935 = !{!936, !937, !938, !939, !940, !941, !942}
!936 = !DILocalVariable(name: "server_info", arg: 1, scope: !930, file: !3, line: 1145, type: !408)
!937 = !DILocalVariable(name: "region", arg: 2, scope: !930, file: !3, line: 1145, type: !933)
!938 = !DILocalVariable(name: "length", arg: 3, scope: !930, file: !3, line: 1146, type: !837)
!939 = !DILocalVariable(name: "indexes", arg: 4, scope: !930, file: !3, line: 1146, type: !424)
!940 = !DILocalVariable(name: "count", scope: !930, file: !3, line: 1149, type: !422)
!941 = !DILocalVariable(name: "p", scope: !930, file: !3, line: 1152, type: !424)
!942 = !DILocalVariable(name: "message", scope: !930, file: !3, line: 1155, type: !903)
!943 = !DILocation(line: 0, scope: !930)
!944 = !DILocation(line: 1164, column: 14, scope: !945)
!945 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1164, column: 7)
!946 = !DILocation(line: 1164, column: 7, scope: !930)
!947 = !DILocation(line: 0, scope: !907, inlinedAt: !948)
!948 = distinct !DILocation(line: 1180, column: 9, scope: !930)
!949 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !948)
!950 = distinct !{!950, !951, !952, !531, !532}
!951 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !948)
!952 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !948)
!953 = !DILocation(line: 1184, column: 1, scope: !930)
!954 = distinct !DISubprogram(name: "ReadDistributePixelCachePixels", scope: !3, file: !3, line: 1219, type: !955, scopeLine: 1222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !958)
!955 = !DISubroutineType(types: !956)
!956 = !{!422, !408, !933, !837, !957}
!957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !424)
!958 = !{!959, !960, !961, !962, !963, !964, !965}
!959 = !DILocalVariable(name: "server_info", arg: 1, scope: !954, file: !3, line: 1220, type: !408)
!960 = !DILocalVariable(name: "region", arg: 2, scope: !954, file: !3, line: 1220, type: !933)
!961 = !DILocalVariable(name: "length", arg: 3, scope: !954, file: !3, line: 1221, type: !837)
!962 = !DILocalVariable(name: "pixels", arg: 4, scope: !954, file: !3, line: 1221, type: !957)
!963 = !DILocalVariable(name: "count", scope: !954, file: !3, line: 1224, type: !422)
!964 = !DILocalVariable(name: "p", scope: !954, file: !3, line: 1227, type: !424)
!965 = !DILocalVariable(name: "message", scope: !954, file: !3, line: 1230, type: !903)
!966 = !DILocation(line: 0, scope: !954)
!967 = !DILocation(line: 1239, column: 14, scope: !968)
!968 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1239, column: 7)
!969 = !DILocation(line: 1239, column: 7, scope: !954)
!970 = !DILocation(line: 0, scope: !907, inlinedAt: !971)
!971 = distinct !DILocation(line: 1255, column: 9, scope: !954)
!972 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !971)
!973 = distinct !{!973, !974, !975, !531, !532}
!974 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !971)
!975 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !971)
!976 = !DILocation(line: 1259, column: 1, scope: !954)
!977 = distinct !DISubprogram(name: "RelinquishDistributePixelCache", scope: !3, file: !3, line: 1285, type: !978, scopeLine: 1287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !980)
!978 = !DISubroutineType(types: !979)
!979 = !{!97, !408}
!980 = !{!981, !982, !983, !984, !985}
!981 = !DILocalVariable(name: "server_info", arg: 1, scope: !977, file: !3, line: 1286, type: !408)
!982 = !DILocalVariable(name: "status", scope: !977, file: !3, line: 1289, type: !97)
!983 = !DILocalVariable(name: "count", scope: !977, file: !3, line: 1292, type: !422)
!984 = !DILocalVariable(name: "p", scope: !977, file: !3, line: 1295, type: !424)
!985 = !DILocalVariable(name: "message", scope: !977, file: !3, line: 1298, type: !903)
!986 = !DILocation(line: 0, scope: !977)
!987 = !DILocation(line: 1289, column: 5, scope: !977)
!988 = !DILocation(line: 0, scope: !907, inlinedAt: !989)
!989 = distinct !DILocation(line: 1309, column: 9, scope: !977)
!990 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !989)
!991 = distinct !{!991, !992, !993, !531, !532}
!992 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !989)
!993 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !989)
!994 = !DILocation(line: 1316, column: 1, scope: !977)
!995 = distinct !DISubprogram(name: "WriteDistributePixelCacheIndexes", scope: !3, file: !3, line: 1351, type: !996, scopeLine: 1354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !998)
!996 = !DISubroutineType(types: !997)
!997 = !{!422, !408, !933, !837, !911}
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1005}
!999 = !DILocalVariable(name: "server_info", arg: 1, scope: !995, file: !3, line: 1352, type: !408)
!1000 = !DILocalVariable(name: "region", arg: 2, scope: !995, file: !3, line: 1352, type: !933)
!1001 = !DILocalVariable(name: "length", arg: 3, scope: !995, file: !3, line: 1353, type: !837)
!1002 = !DILocalVariable(name: "indexes", arg: 4, scope: !995, file: !3, line: 1353, type: !911)
!1003 = !DILocalVariable(name: "count", scope: !995, file: !3, line: 1356, type: !422)
!1004 = !DILocalVariable(name: "p", scope: !995, file: !3, line: 1359, type: !424)
!1005 = !DILocalVariable(name: "message", scope: !995, file: !3, line: 1362, type: !903)
!1006 = !DILocation(line: 0, scope: !995)
!1007 = !DILocation(line: 1371, column: 14, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1371, column: 7)
!1009 = !DILocation(line: 1371, column: 7, scope: !995)
!1010 = !DILocation(line: 0, scope: !907, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 1387, column: 9, scope: !995)
!1012 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !1011)
!1013 = distinct !{!1013, !1014, !1015, !531, !532}
!1014 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !1011)
!1015 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !1011)
!1016 = !DILocation(line: 1391, column: 1, scope: !995)
!1017 = distinct !DISubprogram(name: "WriteDistributePixelCachePixels", scope: !3, file: !3, line: 1426, type: !1018, scopeLine: 1429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !111, retainedNodes: !1020)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!422, !408, !933, !837, !910}
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1021 = !DILocalVariable(name: "server_info", arg: 1, scope: !1017, file: !3, line: 1427, type: !408)
!1022 = !DILocalVariable(name: "region", arg: 2, scope: !1017, file: !3, line: 1427, type: !933)
!1023 = !DILocalVariable(name: "length", arg: 3, scope: !1017, file: !3, line: 1428, type: !837)
!1024 = !DILocalVariable(name: "pixels", arg: 4, scope: !1017, file: !3, line: 1428, type: !910)
!1025 = !DILocalVariable(name: "count", scope: !1017, file: !3, line: 1431, type: !422)
!1026 = !DILocalVariable(name: "p", scope: !1017, file: !3, line: 1434, type: !424)
!1027 = !DILocalVariable(name: "message", scope: !1017, file: !3, line: 1437, type: !903)
!1028 = !DILocation(line: 0, scope: !1017)
!1029 = !DILocation(line: 1446, column: 14, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 1446, column: 7)
!1031 = !DILocation(line: 1446, column: 7, scope: !1017)
!1032 = !DILocation(line: 0, scope: !907, inlinedAt: !1033)
!1033 = distinct !DILocation(line: 1462, column: 9, scope: !1017)
!1034 = !DILocation(line: 435, column: 13, scope: !921, inlinedAt: !1033)
!1035 = distinct !{!1035, !1036, !1037, !531, !532}
!1036 = !DILocation(line: 428, column: 3, scope: !925, inlinedAt: !1033)
!1037 = !DILocation(line: 438, column: 3, scope: !925, inlinedAt: !1033)
!1038 = !DILocation(line: 1466, column: 1, scope: !1017)
!1039 = !DISubprogram(name: "GetImageRegistry", scope: !401, file: !401, line: 44, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!95, !1042, !556, !10}
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegistryType", file: !401, line: 31, baseType: !400)
!1044 = !DISubprogram(name: "AcquireString", scope: !636, file: !636, line: 43, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!6, !556}
!1047 = !DISubprogram(name: "SubstituteString", scope: !636, file: !636, line: 73, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!97, !428, !556, !556}
!1050 = !DISubprogram(name: "StringToArgv", scope: !636, file: !636, line: 53, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !624)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!428, !556, !8}
